<?php

class mUsers extends CI_Model {
    
	protected function isAuthorized(){
	    switch ( strtolower( $this->router->class ) ){
        	case 'pages':
            	$disallowLoggedOut = array( 'dashboard' );
            	$disallowLoggedIn = array( 'index' );
        	break;

        	case 'users':
            	$disallowLoggedOut = array( 'logout' );
            	$disallowLoggedIn = array( 'register', 'login' );
	        break;
    	}

		if ( $this->session->userdata( 'loggedIn' ) ){       
        	if ( in_array( $this->router->method, $disallowLoggedIn ) ){
            	redirect( 'pages/dashboard' );
        	}
    	}
    	else{       
        	if ( in_array( $this->router->method, $disallowLoggedOut ) ){
            	redirect( 'pages/index' );
        	}
    	}
	}

    public function checkisloggin( $redirect ) {
    	if ($redirect =='') $redirect='/auth/login/';
    	if (!$this->tank_auth->is_logged_in()) {
    		redirect($redirect);
    	}else{
            return $query->row();
        }
    }
	
	public function create() {
        $data = array(
            'name'  => $this->input->post( 'cName', true ),
            'email' => $this->input->post( 'cEmail', true )
        );
        
        $this->db->insert( 'users', $data );
        return $this->db->insert_id();
    }
    
    public function getById( $id ) {
        $id = intval( $id );
        
        $query = $this->db->where( 'id', $id )->limit( 1 )->get( 'users' );
        
        if( $query->num_rows() > 0 ) {
            return $query->row();
        } else {
            return array();
        }
    }
    
    public function writefile($filename, $array) {
    		if (!file_exists($filename)){
			$fp = fopen($filename, 'w');
			fwrite($fp, json_encode($array));
			fclose($fp);
		}
    } //end writefile
    
    public function getAll($table) {
		//$page = isset($_POST['page']) ? intval($_POST['page']) : 1;  
		//$rows = isset($_POST['rows']) ? intval($_POST['rows']) : 10;
		
    	//get all records from users table
        $query = $this->db->limit(2048)-> get( $table );
		//$query = $this->db->get( $table );
        
        if( $query->num_rows() > 0 ) {
            return $query->result();
        } else {
            return array();
        }
    } //end getAll
    
    public function update() {
        $data = array(
            'name' => $this->input->post( 'name', true ),
            'email' => $this->input->post( 'email', true )
        );
        
        $this->db->update( 'users', $data, array( 'id' => $this->input->post( 'id', true ) ) );
    }
    
    public function delete( $id ) {
        /*
        * Any non-digit character will be excluded after passing $id
        * from intval function. This is done for security reason.
        */
        $id = intval( $id );
        
        $this->db->delete( 'users', array( 'id' => $id ) );
    } //end delete
    
function getj_left_danhmuc() {
        $query = $this->db->get('j_left_danhmuc');
        
        if( $query->num_rows() > 0 ) {
            return $query->result();
        } else {
            return array();
        }
    }

} //end class
