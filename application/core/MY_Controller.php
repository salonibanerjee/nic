<?php
//base controller from where all the controllers are extended(Parent controller)
//MAIN BASE CONTROLLER--------------------------------------------------------------------------------------------------------------
ini_set('display_errors', 1);
defined('BASEPATH') OR exit('No direct script access allowed');

class MY_Controller extends CI_Controller {
    var $node=1;
    //Constructor
    public function __construct(){
        parent::__construct();
        /*$this->output->set_header("Cache-Control: no-store, no-cache, must-revalidate, no-transform, max-age=0, post-check=0, pre-check=0");
	    $this->output->set_header("Pragma: no-cache");
	    $this->output->set_header("X-Frame-Options: SAMEORIGIN");
	    $this->output->set_header("X-Content-Type-Options: nosniff");
	    $this->output->set_header("X-XSS-Protection: 1; mode=block");
        $this->output->set_header("Referrer-Policy: same-origin");*/
        //to be modified
		//$this->output->set_header("Content-Security-Policy: default-src 'self' 'unsafe-inline' 'unsafe-eval'; img-src 'self' http://www.wbtetsd.gov.in/ data:; script-src 'self' 'unsafe-inline' 'unsafe-eval'; frame-src 'self' 'unsafe-inline' 'unsafe-eval' https://www.youtube.com https://www.facebook.com; object-src 'self' 'unsafe-inline' 'unsafe-eval'; style-src 'self' 'unsafe-inline'; connect-src 'self' 'unsafe-inline' 'unsafe-eval' https://wbkanyashree.gov.in; font-src 'self' 'unsafe-inline' 'unsafe-eval';");    
    }
    //Check privilege checks the privilege of a page based on url and prevents entry to a particular page
    //even if someone enters the url manually-------------------------------------------------------------------------------------------
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

    //loads the sidebar on the basis of user-pages mapping---------------------------------------------------------------------
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

    //Updates caches when system administrator make some changes from his control panel---------------------------------------------
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

    //deletes cache------------------------------------------------------------------------------------------------------------------
    public function del_cache(){
        $this->load->helper('file');
        $files = get_filenames('./application/cache/');
        foreach ($files as $key => $value) {
            if ($value != 'index.html' || strpos($value,'Noti')==FALSE) {
                unlink('./application/cache/'.$value);
            }
        }
    }

    //scheme privileges on the basis of dept-scheme mapping----------------------------------------------------------------------------
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

    //Gets relevant location---------------------------------------------------------------------------------------------------------
    public function getrelevantlocation()  
	{
	   $query;
       $this->load->model('profile_model');
       $ut=$this->input->post('audience_ut');
       //to get respective location for selected designation from DB
	   $query=$this->profile_model->getrelevantloc($ut); 
	   if($query->num_rows()>0){
		   $data;
           $i = 0;
	   	  foreach($query->result_array() as $r){
                 $code=$r['location_code'];
                 $area=$r['location_area'];
			  $data[$i] = array('code'=>$code,'area'=>$area);
			  $i = $i+1;
		  }
		   $ans = array('status'=>1,'message'=>'data found','data'=>$data);
	   }else{
           $ans = array('status'=>0,'message'=>'no data found');
	   }
	   echo json_encode($ans);
     }
          
    //----------------------------------------------------------------------------------------------
    public function getfetchdesig()  
	{
	    $result;
        $this->load->model('profile_model');
        $query=$this->profile_model->getfetchdesig();
		   $data;
           $i = 0;
	   	  foreach($query->result_array() as $r){
                 $code=$r['user_type_id_pk'];
                 $name=$r['desig'];
			  $data[$i] = array('code'=>$code,'name'=>$name);
			  $i = $i+1;
		  }
		   $ans = array('status'=>1,'message'=>'data found','data'=>$data);
	   echo json_encode($ans);
     }    
     //----------------------------------------------------------
     public function getfetchdesigonly()  
     {
        $result;
        $this->load->model('profile_model');
        $query=$this->profile_model->getfetchdesigonly(); 
        //if($query->num_rows()>0){
            $data;
            $i = 0;
              foreach($query->result_array() as $r){
                  $code=$r['desig_id_pk'];
                  $name=$r['desig_name'];
               $data[$i] = array('code'=>$code,'name'=>$name);
               $i = $i+1;
           }
            $ans = array('status'=>1,'message'=>'data found','data'=>$data);
        /*}else{
            $ans = array('status'=>0,'message'=>'no data found');
        }*/
        echo json_encode($ans);
      }    
    //Realtime notifcation fetch function-----------------------------------------------------------------------------------------------
    public function fetch_notifs(){

        $this->load->driver('cache', array('adapter' => 'file'));
        $this->load->model('Admin_model');
        $this->load->model('profile_model');
        $result=$this->profile_model->count_new_notifications();    
        if($this->cache->get('Noti'.$this->session->userdata('loginid'))){
            $prev_noti=$this->cache->get('Noti'.$this->session->userdata('loginid'))['noti_count'];
        }else{
            $prev_noti=0;
        }
		if($result > $prev_noti){
            unlink('./application/cache/Noti'.$this->session->userdata('loginid'));
            $this->Admin_model->noti_cache($this->session->userdata('loginid'));
			echo "Found";
		}else{
            echo "Not Found";
        }
    }
    
    //Nodal officer realtime alert before a meeting-------------------------------------------------------------------------------------
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

    //notitable
    public function getfetchnotitable()
    {
        $query;
        $this->load->model('profile_model');
        $query=$this->profile_model->fetchnotifortable();         
        $data;
            $i = 0;
              foreach($query->result_array() as $r){
                  $id=$r['audience_id'];
                  $head=$r['notification_head'];
                  $textt=$r['notification_text'];
               $data[$i] = array('ncode'=>$id,'nhead'=>$head,'ntext'=>$textt);
               $i = $i+1;
           }
            $ans = array('status'=>1,'message'=>'data found','data'=>$data);
        echo json_encode($ans);
    }

}
    
