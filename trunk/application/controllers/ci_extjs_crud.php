<?php

class Ci_extjs_crud extends CI_Controller {

    public function  __construct()
    {
        parent::__construct();
    }

    public function index()
    {
        $this->load->view('data_view');
    }

	public function login()
	{
		// 	if user already logged in, redirect to user index
		if ($this->my_usession->logged_in)
		{
			redirect('data_view');
		}
		else
		{
			$this->load->view('user/login');
		}
	}

	public function register()
	{
		// if user already logged in, redirect to user index
		if ($this->my_usession->logged_in)
		{
			redirect('data_view');
		}
		else
		{
			$this->load->view('user/register');
		}
	}

	public function ext_get_all()
	{
	    $start = isset($_REQUEST['start']) ? $_REQUEST['start'] : 0;
	    $limit = isset($_REQUEST['limit']) ? $_REQUEST['limit'] : 10;

	    if (isset($_POST['query']))
	    {
	        $this->db->like('users.username', $_POST['query']);
	        $this->db->or_like('users.password', $_POST['query']);
	        $this->db->or_like('users.email', $_POST['query']);
	        $this->db->or_like('users.occupation', $_POST['query']);
	        $this->db->or_like('users.birthdate', $_POST['query']);
	        $this->db->or_like('countries.country_name', $_POST['query']);
	    }

	    $this->db->select('users.*, countries.country_name');
	    $this->db->from('users');
	    $this->db->join('countries', 'countries.id = users.country_id');
	    $this->db->order_by('users.username');

	    $this->db->limit($limit, $start);

	    $query = $this->db->get();
	    $results = $this->db->count_all('users');
	    $arr = array();
	    foreach ($query->result() as $obj)
	    {
	        $arr[] = $obj;
	    }
	    echo '{success:true,results:'. $results . ',rows:'.json_encode($arr).'}';
    }	

    public function ext_get_all_countries()
    {
        $this->db->order_by('country_name');
        $query = $this->db->get('countries');
        
        /* dài dòng quá, chỉ cần 1 dòng
        $json = "{'countries':[";
        foreach($query->result() as $data)
        {
            $json .= '{"id":"'.$data->id .
                    '", "country_name":"' . $data->country_name.
            		'", "abc":"' . $data->abc.
            		'", "vietnamese":"' . $data->vietnamese.
            		'", "CountryCode":"' . $data->CountryCode.'"},';
        }
        $json .= "]}";
        echo $json;
        */
        echo "{'countries':".json_encode( $query->result() )."}";
    }

    public function ext_update()
    {
        /* ex ext date: 1899-11-27T00:00:00
           mysql : YYYY-MM-DD */

        $records = explode('||', $_POST['postdata']);

        foreach ($records as $row)
        {
            $field = explode(';', $row);

            $birthdate = substr($field[5], 0, 10);

            $data = array(
                'username' => $field[1],
                'email' => $field[2],
                'occupation' => $field[4],
                'birthdate' => $birthdate
            );

            if (is_numeric($field[3]))
            {
                $data['country_id'] = $field[3];
            }
            else
            {
                $data['country_id'] = 1;
            }

            if (is_numeric($field[0]))
            {
                $this->db->where('id', $field[0]);
                $this->db->update('users', $data);
            }
            else
            {
                $this->db->insert('users', $data);
            }
        }
    }

    public function ext_delete()
    {
        $records = explode(';', $_POST['postdata']);
        foreach($records as $id)
        {
            $this->db->where('id', $id);
            $this->db->delete('users');
        }
    }
}
