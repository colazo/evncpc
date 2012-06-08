<?php

class jquery extends CI_Controller {

	function __construct()
    {
        parent::__construct();       
        	// add this to check user is loggin
        	$this->load->library('tank_auth');
			$this->load->model( 'mUsers' );
        	$this->mUsers->checkisloggin();
        	$this->username = $this->tank_auth->get_username();
			
        	//$data['user_id']	= $this->tank_auth->get_user_id();
			//$data['username']	= $this->tank_auth->get_username();
			//$data['title']	= "Chào mừng đến với chương trình Quản lý kỹ thuật điện - dung059@gmail.com";
    }

    public function index()
    {
   		$data['title']="QHOnline Layout 1";
   		$this->load->view('contanner',$data);
    }

    public function layout()
    {
    	$data['title']="QHOnline Layout layout";
    	//$data['template']='index_layout layout';
    	//$data['data']['info']="Welcome to CI Layout layout - QHOnline.Info";
    	 
    	//Phần này của mình viết thêm (windy)
    	//$this->load->model("Category");
    	//$temp['menu'] = $this->Category->getMenuData();
    	//Kết thúc phần viết thêm
    	$data['j_left']=$this->mUsers->getj_left_danhmuc();
    	$this->load->view('contanner',$data);
    }
    
//================================================ 
//tongketru 
//phần khung nhìn chính của màn hình
//================================================
	public function read_countries() {
		echo json_encode( $this->mUsers->getAll('tongketru') );
		//$this->mUsers->writefile('tongketru.json', $this->mUsers->getAll('tongketru'));
	}
	
	public function read_tongketrudata2() {
		$row = $this->mUsers->getAll('tongketru');
                    //while ($row = mysql_fetch_array($result)) {
                    echo "<tr>
                            <td>".$row['stt']."</td>
                            <td>".$row['trụ']."</td>
                            <td>".$row['loại cột']."</td>
                            <td>".$row['công dụng']."</td>
                            <td>".$row['khoảng cột']."</td>
                        </tr>";
                    //}
	}

}
