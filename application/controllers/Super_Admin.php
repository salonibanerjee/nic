<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Super_Admin extends MY_Controller {
    public function index(){
		if($this->session->userdata('logged_in')=="")
			header("Location: http://localhost/NIC/index.php/Login");
		$this->cache_update();
		$this->check_privilege(8);
        $this->load->driver('cache',array('adapter' => 'file'));
		$u_type = array('var'=>$this->cache->get('Active_status'.$this->session->userdata('loginid'))['user_type_id_fk']);
		$this->load->model('profile_model');
		$noti = array('meeting'=>$this->profile_model->meeting_notification());
		$u_type['notification'] = $noti;
		$u_type['noti1']=$this->profile_model->custom_notification();
		$this->load->view('dashboard/navbar',$u_type);
		$da = $this->profile_model->get_profile_info($this->session->userdata('uid'));
        $this->load->view('dashboard/sidebar',$da);
        //mandatory requirements end
		$this->load->model('Sup_admin');
		$this->load->model('Crud_model');
        $data['login_count']= $this->Sup_admin->user_count();
        $data['active_user_count']= $this->Sup_admin->active_user_count();
        $data['active_user_type_count']= $this->Sup_admin->active_user_type_count();
        $data['active_user_privilege_count']= $this->Sup_admin->active_user_privilege_count();
        $data['active_privilege_count']= $this->Sup_admin->active_privilege_count();
		$data['schemes_count']= $this->Sup_admin->schemes_count();
		$data['audit_count']= $this->Sup_admin->audit_count();
		$data['year_range'] = $this->Crud_model->dba_fyear_range();
		$data['month']=array("NULL","January","February","March","April","May","June","July","August","September","October","November","December");
		$this->load->view('super_admin_view',$data);
		$this->load->view('dashboard/footer');
    }
    
    public function meeting_schedule(){
		if($this->session->userdata('logged_in')=="")
			header("Location: http://localhost/NIC/index.php/Login");
		$this->cache_update();
		$this->load->model('Crud_model');
		$this->check_privilege(17);
		$this->load->driver('cache',array('adapter' => 'file'));
		$this->load->model('profile_model');
		$da = $this->profile_model->get_profile_info($this->session->userdata('uid'));
		//$this->load->view('dashboard/navbar');
		$u_type = array('var'=>$this->cache->get('Active_status'.$this->session->userdata('loginid'))['user_type_id_fk']);
		$noti = array('meeting'=>$this->profile_model->meeting_notification());
		$noti = array('meeting'=>$this->profile_model->meeting_notification());
		$u_type['notification'] = $noti;
		$u_type['noti1']=$this->profile_model->custom_notification();
		$this->load->view('dashboard/navbar',$u_type);
		$this->load->view('dashboard/sidebar',$da);
        $this->load->model('Admin_model');
        $row = $this->Admin_model->previous_meeting_schedule();
        $data=array(
                'start_time'=> mdate('%Y-%M-%d %H:%i',strtotime('+2 hours', strtotime( $row->start_time ))),
                'end_time'=> mdate('%Y-%M-%d %H:%i',strtotime('-2 hours', strtotime( $row->end_time ))),
			);
		$this->load->view('schedule',$data);
		
		if(isset($_POST['sub'])){
			$span = $this->input->post('date');
			$start_time = substr($span,0,16);
			$end_time=substr($span,19,35);
			$noti_head="New Meeting";
			$noti_text="The next meeting has been scheduled on ".$start_time." and it will end at ".$end_time.".";
			$target_audience="NMEET00";

            //2hours relaxation on the provided time
            $start_time= mdate('%Y-%m-%d %H:%i',strtotime('-2 hours', strtotime( $start_time )));
            $end_time= mdate('%Y-%m-%d %H:%i',strtotime('+2 hours', strtotime( $end_time )));
			$data=array(
				'start_time'=> $start_time,
				'end_time'=> $end_time
			);
			$this->db->trans_off();
            $this->db->trans_strict(FALSE);
            $this->db->trans_start();
			$this->Admin_model->meeting_schedule($data);
			//$this->load->view('schedule',$data);
			$this->profile_model->savenotifs($target_audience,$noti_text,$noti_head);
			$this->Crud_model->audit_upload($this->session->userdata('loginid'),
                                            current_url(),
                                            'Meeting Schedule Updated',
											$start_time.' - '.$end_time);
			$this->db->trans_complete();
		}

		$this->load->view('dashboard/footer');
    }
    
    public function notification(){
		if($this->session->userdata('logged_in')=="")
			header("Location: http://localhost/NIC/index.php/Login");
		$this->cache_update();
		$this->load->model('Crud_model');
		$this->check_privilege(18);
        $this->load->driver('cache',array('adapter' => 'file'));
		$u_type = array('var'=>$this->cache->get('Active_status'.$this->session->userdata('loginid'))['user_type_id_fk']);
		$this->load->model('profile_model');
		$noti = array('meeting'=>$this->profile_model->meeting_notification());
		$u_type['notification'] = $noti;
		$u_type['noti1']=$this->profile_model->custom_notification();
		$this->load->view('dashboard/navbar',$u_type);
		$da = $this->profile_model->get_profile_info($this->session->userdata('uid'));
        $this->load->view('dashboard/sidebar',$da);

        $this->form_validation->set_rules('noti_head', 'Notification head', 'required');
        $this->form_validation->set_rules('noti_text', 'Notification text', 'required');
        $this->form_validation->set_rules('audience_id', 'Notification Code', 'required');
        if ($this->form_validation->run() == FALSE)
        {
			echo validation_errors();
			$this->load->view('notify',$u_type);
        }else{
            $noti_head = $this->input->post('noti_head');
            $noti_text= $this->input->post('noti_text');
			$target_audience=$this->input->post('audience_id');
			$this->db->trans_off();
            $this->db->trans_strict(FALSE);
            $this->db->trans_start();
			$this->profile_model->savenotifs($target_audience,$noti_text,$noti_head);
			
			$this->Crud_model->audit_upload($this->session->userdata('loginid'),
                                            current_url(),
                                            'Notification Inserted - '.$noti_head,
											'Custom Message here');
			$this->db->trans_complete();
		}
		
		$this->load->view('dashboard/footer');
	}
	
	public function dba_fyear_range(){
		if($this->session->userdata('logged_in')=="")
			header("Location: http://localhost/NIC/index.php/Login");
		$this->cache_update();
		$this->check_privilege(15);
		$this->load->driver('cache',array('adapter' => 'file'));
		$u_type = array('var'=>$this->cache->get('Active_status'.$this->session->userdata('loginid'))['user_type_id_fk']);
		$this->load->model('profile_model');
		$noti = array('meeting'=>$this->profile_model->meeting_notification());
		$u_type['notification'] = $noti;
		$u_type['noti1']=$this->profile_model->custom_notification();
		$this->load->view('dashboard/navbar',$u_type);
		$da = $this->profile_model->get_profile_info($this->session->userdata('uid'));
		$this->load->view('dashboard/sidebar',$da);
		
		$this->load->model('Crud_model');
		$u_type['year_range'] = $this->Crud_model->dba_fyear_range();
		$u_type['month']=array("NULL","January","February","March","April","May","June","July","August","September","October","November","December");

		$this->form_validation->set_rules('year', 'Year', 'required');
		$this->form_validation->set_rules('month', 'Month', 'required');
		if ($this->form_validation->run() == FALSE){
			echo validation_errors();
			$this->load->view('dba_fyear_range',$u_type);
        }else{
			$a=array('financial_year_range'=>$this->input->post('year'),'month'=>$this->input->post('month'));
			$this->db->trans_off();
            $this->db->trans_strict(FALSE);
            $this->db->trans_start();
			$this->Crud_model->audit_upload($this->session->userdata('loginid'),
                                            current_url(),
                                            'DBA Financial Year Updated',
                                            $a['financial_year_range'].' - '.$a['month']);
			$suc=$this->Crud_model->dba_fyear_update($a);
			$this->db->trans_complete();
			
		}

		$this->load->view('dashboard/footer');
	}


    //Super Admin functionalities
    //------------------------------------------------------------------------------------------------------------------------------
    //-------------------------------------------------------------------------------------------------------------------------------
    public function signup(){
		if($this->session->userdata('logged_in')=="")
			header("Location: http://localhost/NIC/index.php/Login");
		//mandatory requirements for pages loading nav and sidebar
		$this->cache_update();
		$this->check_privilege(9);
		$this->load->driver('cache',array('adapter' => 'file'));
		$u_type = array('var'=>$this->cache->get('Active_status'.$this->session->userdata('loginid'))['user_type_id_fk']);
		$this->load->model('profile_model');
		$noti = array('meeting'=>$this->profile_model->meeting_notification());
		$u_type['notification'] = $noti;
		$u_type['noti1']=$this->profile_model->custom_notification();
		$this->load->view('dashboard/navbar',$u_type);
		$da = $this->profile_model->get_profile_info($this->session->userdata('uid'));
		$this->load->view('dashboard/sidebar',$da);
		//mandatory requirements end
		$this->load->model('Crud_model');
		$this->db->trans_off();
        $this->db->trans_strict(FALSE);
        $this->db->trans_start();
		$this->Crud_model->audit_upload($this->session->userdata('loginid'),
                                            current_url(),
                                            'Create New User',
                                            $this->session->userdata('uid'));
		$this->db->trans_complete();
		$this->load->view('signup');

		$this->load->view('dashboard/footer');
    }
	public function signupdo(){
		$chars_min=8;
		$chars_mix=10; 
		$use_upper_case=false;
		$include_numbers=true; 
		$include_special_chars=true;
		$length = rand($chars_min,$chars_mix);
		$selection = 'ABCDEFGHIJKLMNOPQRSTUVWXYZaeuoyibcdfghjklmnpqrstvwxz';
		if($include_numbers) {
			$selection .= "1234567890";
		}
		if($include_special_chars) {
			$selection .= "!@\#$%&";
		}

		$password = "";
		for($i=0; $i<$length; $i++) {
			$current_letter = $use_upper_case ? (rand(0,1) ? strtoupper($selection[(rand() % strlen($selection))]) : $selection[(rand() % strlen($selection))]) : $selection[(rand() % strlen($selection))];            
			$password .=  $current_letter;
		}
		//echo $password;
		$exist = 0;
		$this->load->model('Sup_admin');
		$uname=$this->input->post('email');
		$data=array("username"=>$uname);
	    $query=$this->Sup_admin->exist_user($data);
        $res=$query->result_array();
		if ($res){
			foreach($res as $r){
				$exist = 1;
			}
		}
		if($exist == 1){
			echo "This user already exist";
		}else{
			echo $this->input->post('id1');
			//$id1 = $this->input->post('id1');
			$pass=hash('sha256',$password);
			$data=array("username"=>$this->input->post('email'),"password"=>$pass,"user_type_id_fk"=>$this->input->post('user_type'),"location_code"=>$this->input->post('region_code'),"active_status"=>1,"dept_id_fk"=>$this->input->post('dept'),"office_id_fk"=>$this->input->post('office'),"desig_id_fk"=>$this->input->post('desig_name'));
			$this->db->trans_off();
            $this->db->trans_strict(FALSE);
			$this->db->trans_start();
			$subject = "One Time Password For Login";
		    $body = "Greetings,\n\n\tTo login in MPR portal your password is:\n\t".$password."\n\nThank you!\nHave a nice day.";
            $headers = "From: MPR Portal";
            if($xy=mail($uname, $subject, $body, $headers)){
				if($this->Sup_admin->add_login($data)){
					$res=$this->Sup_admin->find_id($data);
					$id =$res->login_id_pk;
					$data1=array("user_id_pk"=>$id,"check_if_first_user"=>1,"check_profile_updated_once"=>1);
					if($this->Sup_admin->add_check_first_user($data1)){
						echo "<font color=green>Data Added Successfully</font>";
					}else
						echo "Data is not Added";
				}else
					echo "Data is not Added";
			}else{
				echo "Data is not Added";
			}
			$this->db->trans_complete();
		}
    }
    function fetch_user_type()  //get all records from database  
	{
	   $result;
	   $this->load->model('Sup_admin');
	   $query=$this->Sup_admin->fetch_user_type();
		  $res=$query->result();
	   if($res){
		   $data;
		   $i = 0;
	   	  foreach($res as $r){
			  $code = $r->user_type_id_pk;
			  $type = $r->desig;
			  $data[$i] = array('code'=>$code,'type'=>$type);
			  $i = $i+1;
		  }
		   $result = array('status'=>1,'message'=>'data found','data'=>$data);
	   }else{
		   $result = array('status'=>0,'message'=>'no data found');

	   }
	   echo json_encode($result);
	 }
	 
	 function location_data()  //get all records from database  
	 {
		$result;
			$this->load->model('Sup_admin');
		   $desig=$this->input->post('desig');
		   //$dat=array("user_type_id_fk"=>$desig);
		$query=$this->Sup_admin->mapping($desig);
		   //$query=$this->db->get_where("mpr_master_location_mapping");
		   $res=$query->result();
		if($res){
			$data;
			$i = 0;
			  foreach($res as $r){
			   $code = $r->location_code;
			   $type = $r->location_area;
			   $data[$i] = array('code'=>$code,'type'=>$type);
			   $i = $i+1;
		   }
			$result = array('status'=>1,'message'=>'data found','data'=>$data);
			}
		 else{
			$result = array('status'=>0,'message'=>'no data found');
 
			}
		echo json_encode($result);
	  }
	
	function office()  //get all records from database  
	{
	   $result;
	   $this->load->model('Sup_admin');
	   $query=$this->Sup_admin->office(); 
	   $res=$query->result();
	   if($res){
		   $data;
		   $i = 0;
	   	  foreach($res as $r){
			  $code = $r->office_id_pk;
			  $type = $r->office_name;
			  $data[$i] = array('code'=>$code,'type'=>$type);
			  $i = $i+1;
		  }
		   $result = array('status'=>1,'message'=>'data found','data'=>$data);
	   	}
		else{
		   $result = array('status'=>0,'message'=>'no data found');

	   	}
	   echo json_encode($result);
     }
	function department()  //get all records from database  
	{
	   $result;
		  $this->load->model('Sup_admin');
		  $office=$this->input->post('office');
	      $dat=array("office_id_fk"=>$office);
	   $query=$this->Sup_admin->department($dat);
		  $res=$query->result();
	   if($res){
		   $data;
		   $i = 0;
	   	  foreach($res as $r){
			  $code = $r->dept_id_pk;
			  $type = $r->dept_name;
			  $data[$i] = array('code'=>$code,'type'=>$type);
			  $i = $i+1;
		  }
		   $result = array('status'=>1,'message'=>'data found','data'=>$data);
	   	}
		else{
		   $result = array('status'=>0,'message'=>'no data found');

	   	}
	   echo json_encode($result);
     }
	function designation()  //get all records from database  
	{
	   $result;
		$this->load->model('Sup_admin');
		$dept=$this->input->post('dept');
	    $dat=array("dept_id_fk"=>$dept);
	   $query=$this->Sup_admin->designation($dat);
		  $res=$query->result();
	   if($res){
		   $data;
		   $i = 0;
	   	  foreach($res as $r){
			  $code = $r->desig_id_pk;
			  $type = $r->desig_name;
			  $data[$i] = array('code'=>$code,'type'=>$type);
			  $i = $i+1;
		  }
		   $result = array('status'=>1,'message'=>'data found','data'=>$data);
	   	}
		else{
		   $result = array('status'=>0,'message'=>'no data found');

	   	}
	   echo json_encode($result);
     }
	function fetch_login(){  //get all records from database    
		//mandatory requirements for pages loading nav and sidebar
		if($this->session->userdata('logged_in')=="")
			header("Location: http://localhost/NIC/index.php/Login");
		$this->cache_update();
		$this->check_privilege(10);
		$this->load->driver('cache',array('adapter' => 'file'));
		$u_type = array('var'=>$this->cache->get('Active_status'.$this->session->userdata('loginid'))['user_type_id_fk']);
		$check=$this->session->userdata('loginid');
		$this->load->model('profile_model');
		$noti = array('meeting'=>$this->profile_model->meeting_notification());
		$u_type['notification'] = $noti;
		$u_type['noti1']=$this->profile_model->custom_notification();
		$this->load->view('dashboard/navbar',$u_type);
		$da = $this->profile_model->get_profile_info($this->session->userdata('uid'));
		$this->load->view('dashboard/sidebar',$da);
		//mandatory requirements end
		$this->load->model('Sup_admin');
	   	$query=$this->Sup_admin->fetch_login($check);
		$data['records']=$query->result();
		  //print_r($data);
		$this->load->model('Crud_model');
		$this->db->trans_off();
        $this->db->trans_strict(FALSE);
        $this->db->trans_start();
		$this->Crud_model->audit_upload($this->session->userdata('loginid'),
							current_url(),
							'Active user visited',
							'Custom message here');
		$this->db->trans_complete();
		$this->load->view('view_user',$data); 
		$this->load->view('dashboard/footer');
  	}
	function inactive_login() //load a form with data to be updated
 	{
	 $this->load->model('Sup_admin');
	 $id=$this->uri->segment('3');
	 $dat=array("login_id_pk"=>$id);
	 $query=$this->Sup_admin->Login_id_pk($dat);
	// $query=$this->db->get_where("mpr_semitrans_login",$dat);
	 $da['records']=$query->result();
	// $this->load->view('update',$data);
	 $data=array("active_status"=>$this->input->post('state'));
	 $id=$this->input->post('id');
	 $this->load->model('Sup_admin');
	 $this->db->trans_off();
     $this->db->trans_strict(FALSE);
     $this->db->trans_start();
	 $res = $this->Sup_admin->update_user($data,$id);
	 $this->db->trans_complete();
	 if($res){
		 echo 'done';
		 $this->del_cache();
	 }else{
		 echo 'failed';
	 }
//	 redirect("/Admin/fetch_login");
	}
	function fetch_user_privilege(){  //get all records from database  
		//mandatory requirements for pages loading nav and sidebar
		if($this->session->userdata('logged_in')=="")
			header("Location: http://localhost/NIC/index.php/Login");
		$this->cache_update();
		$this->check_privilege(12);
		$this->load->driver('cache',array('adapter' => 'file'));
		$u_type = array('var'=>$this->cache->get('Active_status'.$this->session->userdata('loginid'))['user_type_id_fk']);
		$this->load->model('profile_model');
		$noti = array('meeting'=>$this->profile_model->meeting_notification());
		$u_type['notification'] = $noti;
		$u_type['noti1']=$this->profile_model->custom_notification();
		$this->load->view('dashboard/navbar',$u_type);
		$da = $this->profile_model->get_profile_info($this->session->userdata('uid'));
		$this->load->view('dashboard/sidebar',$da);
		//mandatory requirements end
		 
		$this->load->model('Sup_admin');
	   	$query=$this->Sup_admin->fetch_user_privilege();
		$data['records']=$query->result();
		$this->load->model('Crud_model');
		$this->db->trans_off();
        $this->db->trans_strict(FALSE);
        $this->db->trans_start();
		$this->Crud_model->audit_upload($this->session->userdata('loginid'),
							current_url(),
							'Visited User Privilage Active page',
							'Custom message here');
		$this->db->trans_complete();
		  //print_r($data);
		$this->load->view('view_user_privilege',$data); 
		$this->load->view('dashboard/footer');
  	}
	function inactive_user_privilege() //load a form with data to be updated
 	{
	 $this->load->model('Sup_admin');
	 $id=$this->uri->segment('3');
	 $dat=array("user_priv_id_pk"=>$id);
	 $query=$this->Sup_admin->user_priv_id_pk($dat);
	 //$query=$this->db->get_where("mpr_semitrans_user_privilege",array("user_priv_id_pk"=>$id));
	 $da['records']=$query->result();
	// $this->load->view('update',$data);
	 $data=array("active_status"=>$this->input->post('state'));
	 $id=$this->input->post('id');
	 $this->load->model('Sup_admin');
	 $this->db->trans_off();
     $this->db->trans_strict(FALSE);
     $this->db->trans_start();
		$res = $this->Sup_admin->update_user_privilege($data,$id);
	 $this->db->trans_complete();
	 if($res){
		 echo 'done';
		 $this->del_cache();
	 }else{
		 echo 'failed';
	 }
	}
	
	function fetch_user_desig_type()  //get all records from database  
	{      
		//mandatory requirements for pages loading nav and sidebar
		if($this->session->userdata('logged_in')=="")
			header("Location: http://localhost/NIC/index.php/Login");
		$this->cache_update();
		$this->check_privilege(11);
		$this->load->driver('cache',array('adapter' => 'file'));
		$u_type = array('var'=>$this->cache->get('Active_status'.$this->session->userdata('loginid'))['user_type_id_fk']);
		$this->load->model('profile_model');
		$noti = array('meeting'=>$this->profile_model->meeting_notification());
		$u_type['notification'] = $noti;
		$u_type['noti1']=$this->profile_model->custom_notification();
		$this->load->view('dashboard/navbar',$u_type);
		$da = $this->profile_model->get_profile_info($this->session->userdata('uid'));
		$this->load->view('dashboard/sidebar',$da);
		//mandatory requirements end

		$this->load->model('Sup_admin');
	   	$query=$this->Sup_admin->fetch_user_desig_type();
		$data['records']=$query->result();
		//print_r($data);

		$this->load->model('Crud_model');
		$this->db->trans_off();
        $this->db->trans_strict(FALSE);
        $this->db->trans_start();
		$this->Crud_model->audit_upload($this->session->userdata('loginid'),
							current_url(),
							'User type active page visited',
							'Custom message here');
		$this->db->trans_complete();
		$this->load->view('view_user_type',$data); 
		$this->load->view('dashboard/footer');
  	}
	function inactive_user_type() //load a form with data to be updated
 	{
	 $this->load->model('Sup_admin');
	 $id=$this->uri->segment('3');
	 $dat=array("user_type_id_pk"=>$id);
	 $query=$this->Sup_admin->user_type_id_pk($dat);
//	 $query=$this->db->get_where("mpr_semitrans_user_type",array("user_type_id_pk"=>$id));
	 $da['records']=$query->result();
	// $this->load->view('update',$data);
	 $data=array("active_status"=>$this->input->post('state'));
	 $id=$this->input->post('id');
	 $this->load->model('Sup_admin');
	 $this->db->trans_off();
     $this->db->trans_strict(FALSE);
     $this->db->trans_start();
		$res = $this->Sup_admin->update_user_type($data,$id);
	 $this->db->trans_complete();
	 if($res){
		 echo 'done';
		 $this->del_cache();
	 }else{
		 echo 'failed';
	 }
	}
	function page_view()  //get all records from database  
	{      
		if($this->session->userdata('logged_in')=="")
			header("Location: http://localhost/NIC/index.php/Login");
		$this->cache_update();
		$this->check_privilege(13);
		//mandatory requirements for pages loading nav and sidebar
		$this->load->driver('cache',array('adapter' => 'file'));
		$u_type = array('var'=>$this->cache->get('Active_status'.$this->session->userdata('loginid'))['user_type_id_fk']);
		$this->load->model('profile_model');
		$noti = array('meeting'=>$this->profile_model->meeting_notification());
		$u_type['notification'] = $noti;
		$u_type['noti1']=$this->profile_model->custom_notification();
		$this->load->view('dashboard/navbar',$u_type);
		$da = $this->profile_model->get_profile_info($this->session->userdata('uid'));
		$this->load->view('dashboard/sidebar',$da);
		//mandatory requirements end

		$this->load->model('Sup_admin');
	   	$query=$this->Sup_admin->page_view();
		  $data['records']=$query->result();

		  $this->load->model('Crud_model');
		  $this->db->trans_off();
          $this->db->trans_strict(FALSE);
          $this->db->trans_start();
		  $this->Crud_model->audit_upload($this->session->userdata('loginid'),
							  current_url(),
							  'Pages active page visited',
							  'Custom message here');
		  $this->db->trans_complete();
		 $this->load->view('page_view',$data); 
		 $this->load->view('dashboard/footer');
  	}
	function inactive_page_view() //load a form with data to be updated
 	{
	 $this->load->model('Sup_admin');
	 $id=$this->uri->segment('3');
	 $dat=array("privilege_id_pk"=>$id);
	 $query=$this->Sup_admin->privilege_id_pk($dat);
//	 $query=$this->db->get_where("mpr_semitrans_user_type",array("user_type_id_pk"=>$id));
	 $da['records']=$query->result();
	// $this->load->view('update',$data);
	 $data=array("active_status"=>$this->input->post('state'));
	 $id=$this->input->post('id');
	 $this->load->model('Sup_admin');
	 $this->db->trans_off();
	 $this->db->trans_strict(FALSE);
	 $this->db->trans_start();
		$res = $this->Sup_admin->update_page_view($data,$id);
	 $this->db->trans_complete();
	 if($res){
		 echo 'done';
		 $this->del_cache();
	 }else{
		 echo 'failed';
	 }
	}	   
//---------------------------------------------------------------------------------------------------------
function seek_record(){
	if($this->session->userdata('logged_in')=="")
			header("Location: http://localhost/NIC/index.php/Login");
		$this->cache_update();
		$this->check_privilege(16);
		//mandatory requirements for pages loading nav and sidebar
	//mandatory
		$this->load->driver('cache',array('adapter' => 'file'));
		$u_type = array('var'=>$this->cache->get('Active_status'.$this->session->userdata('loginid'))['user_type_id_fk']);
		$this->load->model('profile_model');
		$noti = array('meeting'=>$this->profile_model->meeting_notification());
		$u_type['notification'] = $noti;
		$u_type['noti1']=$this->profile_model->custom_notification();
		$this->load->view('dashboard/navbar',$u_type);
		$da = $this->profile_model->get_profile_info($this->session->userdata('uid'));
		$this->load->view('dashboard/sidebar',$da);
	// ends here
	$this->load->model('Sup_admin');
	$schme = $this->Sup_admin->get_scheme();
	$this->load->model('Crud_model');
	$dam['year_range'] = $this->Crud_model->dba_fyear_range();
	$dam['month']=array("NULL","January","February","March","April","May","June","July","August","September","October","November","December");
	$dam['fields'] = "";
	$dam['scheme'] = $schme;
	$dam['dad'] = "";
	$data;
	$dam['check'] = "false";
	$validate = array(
		array(
				'field' => 'uname',
				'label' => 'Username',
				'rules' => 'required|valid_email',
				'errors' => array(
						'required' => 'You must provide a %s.',
				)
		),
		array(
				'field' => 'scheme',
				'label' => 'Scheme Name',
				'rules' => 'required|max_length[50]',
				'errors' => array(
						'required' => 'You must provide a %s.',
				),
		),
		array(
				'field' => 'nodal',
				'label' => 'Nodal',
				'rules' => 'required|integer',
				'errors' => array(
					'required' => 'You must provide a %s.',
			),
		),
		array(
				'field' => 'year',
				'label' => 'Year',
				'rules' => 'required|numeric|exact_length[4]',
				'errors' => array(
					'required' => 'You must provide a %s.',
			),
		),
		array(
			'field' => 'smonth',
			'label' => 'Starting Month',
			'rules' => 'required|max_length[2]',
			'errors' => array(
				'required' => 'You must provide a %s.',
		),
		),
		array(
			'field' => 'fmonth',
			'label' => 'Final Month',
			'rules' => 'required|max_length[2]',
			'errors' => array(
				'required' => 'You must provide a %s.',
		),
		),
	);
	$this->form_validation->set_rules($validate);
	if ($this->form_validation->run() == FALSE){

		$this->load->view('seek_record',$dam);
	}else{
			//if ($da['check'] == 'false'){
				$dam['check'] = "false";
				$schme = $this->Sup_admin->get_scheme();
				$dam['fields'] = "";
				$dam['scheme'] = $schme;
				$dam['dad'] = "";
				if(isset($_POST['sub1'])){
					$username = $this->input->post('uname');
					$scheme = $this->input->post('scheme');
					$nodal = $this->input->post('nodal');
					$year = $this->input->post('year');
					$smonth = $this->input->post('smonth');
					$fmonth = $this->input->post('fmonth');
					$dam['check'] = 'true';
					$dam['scheme_name']=$scheme;
					$dam['scheme_attri']=$this->Sup_admin->attri($scheme);
					$dam['nodal']=$nodal;
					$i=0;
					$fields = array();

					$table =$scheme.'_backup';  
					$fields = $this->db->list_fields($table);
					$d = $this->Sup_admin->filter_data($username,$table,$smonth,$fmonth,$year,$nodal);
					if($d == NULL){ ?>
						<script> alert("No record found")</script> <?php
						
						header("Location: http://localhost/NIC/index.php/Super_Admin/seek_record");
						//$this->load->view('seek_record',$da);
						exit();
					}else{
						if($d != 0){
							$dat = array();
							$dad = array();
							foreach($fields as $da){
								$dat[]= $da;
							}
							foreach($d as $da){
								$dad[]= $da;
							}
							$dam['fields'] = $dat;
							$dam['dad'] = $dad;
							$this->load->view('seek_record',$dam);
							$this->load->view('dashboard/footer');
						}	
					}
				}
			}
	}
	function audit_log()
	{
		if($this->session->userdata('logged_in')=="")
			header("Location: http://localhost/NIC/index.php/Login");
			$this->cache_update();
			$this->check_privilege(14);
		//mandatory
		$this->load->driver('cache',array('adapter' => 'file'));
		$u_type = array('var'=>$this->cache->get('Active_status'.$this->session->userdata('loginid'))['user_type_id_fk']);
		$this->load->model('profile_model');
		$noti = array('meeting'=>$this->profile_model->meeting_notification());
		$u_type['notification'] = $noti;
		$u_type['noti1']=$this->profile_model->custom_notification();
		$this->load->view('dashboard/navbar',$u_type);
		$da = $this->profile_model->get_profile_info($this->session->userdata('uid'));
		$this->load->view('dashboard/sidebar',$da);
	// ends here
		$this->load->model('Sup_Admin');
		$data['audit']=$this->Sup_Admin->get_user_details();
		$data['login_as']=array();
		foreach ($data['audit'] as $key) 
		{
			array_push($data['login_as'],$this->Sup_Admin->get_log_id($key['login_id_fk']));
		}
		$this->load->view('audit_view',$data);
		$this->load->view('dashboard/footer');

	}
}