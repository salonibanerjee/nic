<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class MY_Controller extends CI_Controller {
    var $node=1;
    public function __construct(){
        parent::__construct();
		//sif($this->session->userdata('logged_in')==""){
          //  header("Location: http://localhost/NIC/index.php/Login"); 
        //}
	}
    public function check_privilege($page_id = NULL){
        $this->load->driver('cache', array('adapter' => 'file'));
        $data=$this->cache->get('Active_status'.$this->session->userdata('loginid'))['user_type_id_fk'];
        $var=$this->cache->get('User_type'.$data)['user_privilege'];
        $flag=0;
        $privilege_active_status=0;
        $user_privilege_active_status=0;
        if($page_id){
            foreach($var as $x){
                if($page_id==$x['privilege_id_fk']){
                    $flag=1;
                    $privilege_active_status=$x['privilege_active_status'];
                    $user_privilege_active_status=$x['user_privilege_active_status'];
                }
            }
            if($flag==0 || $privilege_active_status==0 || $user_privilege_active_status==0){
                show_404();
            }
        } 
        else{
            show_404();
        }
    }

    public function sidebar_load($upid){
        $this->load->driver('cache', array('adapter' => 'file'));
        $data=$this->cache->get('Active_status'.$this->session->userdata('loginid'))['user_type_id_fk'];
        $var=$this->cache->get('User_type'.$data)['user_privilege'];
        $flag=0;
        foreach($var as $x){
            if($upid == $x['privilege_id_pk']){
                $flag=1;
            }
        }
        if($flag==1)
            return 1;
        else
            return 0;
    }

    public function cache_update(){
        $this->load->model('Admin_model');
        $this->load->driver('cache', array('adapter' => 'file'));
        if(isset($_SESSION['logged_in'])){
            if ( ! $foo = $this->cache->get('Active_status'.$this->session->userdata('loginid'))){
                $this->Admin_model->store_cache($this->session->userdata('uid'));
                $this->Admin_model->store_profile($this->session->userdata('uid'));
                $this->Admin_model->scheme_hier_cache();
                $var = $this->cache->get('Active_status'.$this->session->userdata('loginid'))['user_type_id_fk'];
                if(!$this->cache->get('User_type'.$var)){
                    $this->Admin_model->user_type_cache($var);
                }

                $data=$this->cache->get('Active_status'.$this->session->userdata('loginid'))['active_status'];
                if($data==0){
                    unset($_SESSION['logged_in']);
                }
            }
        }
    }

    public function del_cache(){
        $this->load->helper('file');
        $files = get_filenames('./application/cache/');
        foreach ($files as $key => $value) {
            if ($value != 'index.html' || strpos($value,'Noti')==FALSE) {
                unlink('./application/cache/'.$value);
            }
        }
    }

    public function scheme_privilege(){
        $this->load->driver('cache', array('adapter' => 'file'));
        $var = $this->cache->get('Scheme_hier_'.$this->session->userdata('dept'));
        $currentURL = current_url();
        $check=0;
        if(strpos($currentURL,'/load/')!=FALSE){
            foreach($var as $link){
                if(strpos($currentURL,$link['scheme_link'])!=FALSE){
                    $check=1;
                }
            }
        }
        if($check==0){
            show_404();
        }
    }

    public function fetch_notifs(){
        $this->load->model('Admin_model');
        $this->load->driver('cache', array('adapter' => 'file'));
		$q = "SELECT * FROM mpr_trans_notification WHERE active_status=1";
        $result = $this->db->query($q);	
        if($this->cache->get('Noti'.$this->session->userdata('loginid'))){
            $prev_noti=$this->cache->get('Noti'.$this->session->userdata('loginid'))['noti_count'];
        }else{
            $prev_noti=0;
        }
		if($result->num_rows() > $prev_noti){
			//$update_query = "UPDATE mpr_trans_notification SET active_status = 0 WHERE active_status = 1";
            //$this->db->query($update_query);
            unlink('./application/cache/Noti'.$this->session->userdata('loginid'));
            $this->Admin_model->noti_cache($this->session->userdata('loginid'));
			echo "Found";
		}else{
            echo "Not Found";
        }
    }
    
    public function nodal_alert(){
        $this->load->driver('cache', array('adapter' => 'file'));
        $this->load->model('NodalCheck_model');
        $this->load->model('profile_model');
        $result_main['fetch_draft'] = $this->NodalCheck_model->fetch_draft();
        if($result_main['fetch_draft']!=NULL){
            $scheme_cnt = $this->NodalCheck_model->check($result_main['fetch_draft']);
            $flag = 0;
            foreach ($scheme_cnt as $val) {
                if($val != 0){
                    $flag = 1;
                    break;
                }
            }
            $result = $this->NodalCheck_model->alert();
            $users=['1','2','9'];
            if($result == true && $flag == 1 && $this->node==1 && in_array($this->session->userdata('user_type'),$users)){
                echo "found";
                $this->node=0;
            }
        }
    }

}
    
