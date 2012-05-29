<?php if (!defined('BASEPATH')) exit('No direct script access allowed');
//$username = $this->tank_auth->get_username();
//$user_id =  $this->tank_auth->get_user_id();

class Welcome extends CI_Controller
{
	function __construct()
	{
		parent::__construct();

		$this->load->helper('url');
		$this->load->library('tank_auth');
	}

	function index()
	{
		if (!$this->tank_auth->is_logged_in()) {
			redirect('/auth/login/');
		} else {
			//$data['user_id']	= $this->tank_auth->get_user_id();
			//$data['username']	= $this->tank_auth->get_username();
			$data['title']	= "Chào mừng đến với chương trình Quản lý kỹ thuật điện - dung059@gmail.com";
			
			$this->username = $this->tank_auth->get_username();
			$this->load->view('contanner', $data);
		}
	}
}

/* End of file welcome.php */
/* Location: ./application/controllers/welcome.php */