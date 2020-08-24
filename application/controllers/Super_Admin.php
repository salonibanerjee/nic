<?php
/**
 * Child Class
 *
 *
 * @package		CodeIgniter
 * @category	Controller
 * @author		Riddhinath Ganguly,Sayak Das,Monilekha Ghosh,Nirvik Ranjan Das,Sachin Kumar Roy,Hriddhi Mondal
*/
//The whole Super Admin module runs through this script.It includes New User registration, user on/off, user privilege on/off,
//user type on/off, pages on/off, dba financial year set, scheme records, audit log view for SYSTEM Administrator-----------------------

//Some Super Admin sidebar functions also runs by this script like Meeting Schedule and Notification set.------------------------------

defined('BASEPATH') OR exit('No direct script access allowed');

class Super_Admin extends MY_Controller {
	//loads the Super Admin dashboard----------------------------------------------------------------------------------------------------
    public function index(){
		if($this->session->userdata('logged_in')=="")
			header("Location: ".$this->config->base_url()."Login");
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
		$data['feedback_count']= $this->Sup_admin->feedback_count();
		$data['year_range'] = $this->Crud_model->dba_fyear_range();
		$data['month']=array("NULL","January","February","March","April","May","June","July","August","September","October","November","December");
		$this->load->view('super_admin_view',$data);
		$this->db->trans_off();
	    $this->db->trans_strict(FALSE);
	    $this->db->trans_start();
        $this->Crud_model->audit_upload($this->session->userdata('loginid'),
                                            current_url(),
                                            'Super Admin Page Visited',
                                            'Custom Message here');
        $this->db->trans_complete();
		$this->load->view('dashboard/footer');
    }
	
	//loads the meeting schedule page------------------------------------------------------------------------------------------------------
    public function meeting_schedule(){
		if($this->session->userdata('logged_in')=="")
			header("Location: ".$this->config->base_url()."Login");
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
		$this->db->trans_off();
	    $this->db->trans_strict(FALSE);
	    $this->db->trans_start();
        $this->Crud_model->audit_upload($this->session->userdata('loginid'),
                                            current_url(),
                                            'Meeting Schedule Page visited',
                                            'Custom Message here');
        $this->db->trans_complete();
		$this->load->view('dashboard/footer');
	}
	
	//AJAX function to perform scheduling a new meeting------------------------------------------------------------------------------------
	public function schedule(){
		$this->load->model('Sup_admin');
		$this->load->model('Crud_model');
		$this->load->model('Admin_model');
		$this->load->model('profile_model');
		$csrf_token=$this->security->get_csrf_hash();
		//functionality
			$span = $this->input->post('date');
			$start_time = substr($span,0,16);
			$end_time=substr($span,19,35);
			$noti_head="New Meeting";
			$noti_text="The next meeting has been scheduled on ".$start_time." and it will end at ".$end_time.".";
			$target_audience="NMEET00";
				$radiosel=2;//broadcast
				$audience_ut=$this->session->userdata('user_type');	
				$audience_loc=$this->session->userdata('location_code');
				$audience_desig_only=$this->session->userdata('desig');
            //2hours relaxation on the provided time
            $start_time= mdate('%Y-%m-%d %H:%i',strtotime('-2 hours', strtotime( $start_time )));
            $end_time= mdate('%Y-%m-%d %H:%i',strtotime('+2 hours', strtotime( $end_time )));
			$data=array(
				'start_time'=> $start_time,
				'end_time'=> $end_time,
				'active_status'=>1
			);
			$this->db->trans_off();
            $this->db->trans_strict(FALSE);
            $this->db->trans_start();
			$this->Admin_model->meeting_schedule($data);
			//$this->load->view('schedule',$data);
			$this->profile_model->savenotifs($target_audience,$noti_text,$noti_head,$audience_ut,$audience_loc,$audience_desig_only,$radiosel);
			$this->Crud_model->audit_upload($this->session->userdata('loginid'),
                                            current_url(),
                                            'Meeting Schedule Updated',
											$start_time.' - '.$end_time);
			$this->db->trans_complete();

		$ab=array('csrf_token'=>$csrf_token,'res'=>1);
        echo json_encode($ab);
	}

	public function meeting_cancel(){
		$this->load->model('Crud_model');
		$this->load->model('Admin_model');
		$this->load->model('profile_model');
		$row = $this->Admin_model->previous_meeting_schedule();
		$this->db->trans_off();
        $this->db->trans_strict(FALSE);
        $this->db->trans_start();
		if($this->Admin_model->cancel_meeting($row->meeting_id_pk)){
			echo "cancelled";
			$target_audience="NMEET01";
				$radiosel=2;//broadcast
				$audience_ut=$this->session->userdata('user_type');	
				$audience_loc=$this->session->userdata('location_code');
				$audience_desig_only=$this->session->userdata('desig');
			$noti_head="Cancelled Meeting";
			$noti_text="The meeting on ".$row->start_time." has been cancelled.";
			$this->profile_model->savenotifs($target_audience,$noti_text,$noti_head,$audience_ut,$audience_loc,$audience_desig_only,$radiosel);
			$this->Crud_model->audit_upload($this->session->userdata('loginid'),
                                            current_url(),
                                            'Meeting Cancelled',
											$row->start_time.' - '.$row->end_time);
		}else{
			echo "Not cancelled";
		}
		$this->db->trans_complete();
	}
	
	//loads the set notification page-----------------------------------------------------------------------------------------------------
    public function notification(){
		if($this->session->userdata('logged_in')=="")
			header("Location: ".$this->config->base_url()."Login");
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
		$this->load->view('notify',$u_type);
		$this->db->trans_off();
	    $this->db->trans_strict(FALSE);
	    $this->db->trans_start();
        $this->Crud_model->audit_upload($this->session->userdata('loginid'),
                                            current_url(),
                                            'Notification Page visited',
                                            'Custom Message here');
        $this->db->trans_complete();
		$this->load->view('dashboard/footer');
	}

	
	public function everywhere_everyone($listloc, $audiencedesig){
		$listdesig=$this->input->post($audiencedesig);

		if($listloc=='-1' && $listdesig!='-1'){
			$this->form_validation->set_message('everywhere_everyone','Please select only 1 Location');
			return false;
		}
		else if($listdesig=='-1' && $listloc!='-1'){
			$this->form_validation->set_message('everywhere_everyone','Please select only 1 User Type or use Broadcast');
			return false;
		}
		return true;
	}
	
	//AJAX perform to set notification----------------------------------------------------------------------------------------------------
	public function notify(){
		$this->load->model('Sup_admin');
		$this->load->model('Crud_model');
		$this->load->model('Admin_model');
		$this->load->model('profile_model');
		$csrf_token=$this->security->get_csrf_hash();

		$this->form_validation->set_rules('noti_head', 'Notification Title', 'required');
		$this->form_validation->set_rules('audience_ut', 'Target User Type', 'required');
		$this->form_validation->set_rules('audience_loc', 'Target Location', 'required|callback_everywhere_everyone[audience_ut]'); 
		$this->form_validation->set_rules('audience_desig_only', 'Target Designation', 'required');
		$this->form_validation->set_rules('noti_text', 'Notification Text', 'required');
		
		if ($this->form_validation->run() == FALSE)
        {
			$ab=array('res'=>0,'errors'=>validation_errors(),'csrf_token'=>$csrf_token);
            echo json_encode($ab);
		}
		else
		{
            $noti_head = $this->input->post('noti_head');
			$audience_ut=$this->input->post('audience_ut');//----should be int
			$audience_loc=$this->input->post('audience_loc');//string
			$audience_desig_only=$this->input->post('audience_desig_only');
			$noti_text= $this->input->post('noti_text');
			$radioselect= $this->input->post('radiosel');
			if($audience_ut==-1 && $audience_loc=='-1' && $audience_desig_only==-1){//broadcast #####################################################################################################
				$radiosel=2;
				$audience_ut=$this->session->userdata('user_type');	
				$audience_loc=$this->session->userdata('location_code');
				$audience_desig_only=$this->session->userdata('desig');
			}
			else if($radioselect == "usertypelocr"){//ut+loc
				$radiosel=0;
				$audience_desig_only=$this->session->userdata('desig');
			}
			else if($radioselect == "designat"){//desig_only
				$radiosel=1;
				$audience_ut=$this->session->userdata('user_type');	
				$audience_loc=$this->session->userdata('location_code');
			}

			$this->db->trans_off();
            $this->db->trans_strict(FALSE);
			$this->db->trans_start();

			if($radiosel==2){//broadcast
				$target_audience="NBROADCAST";
			}
			else if($radiosel==1){//designation only
				$target_audience="ND".$audience_desig_only;
			}
			else if($radiosel==0){
				$target_audience="NUT".$audience_ut."L".$audience_loc;
			}

			
			$this->profile_model->savenotifs($target_audience,$noti_text,$noti_head,$audience_ut,$audience_loc,$audience_desig_only,$radiosel);
			
			$this->Crud_model->audit_upload($this->session->userdata('loginid'),
                                            current_url(),
                                            'Notification Inserted - '.$noti_head,
											'Custom Message here');
			$this->db->trans_complete();
			$ab=array('csrf_token'=>$csrf_token,'res'=>1);
            echo json_encode($ab);
		}
	}

	//loads the dba financial year range page----------------------------------------------------------------------------------------------
	public function dba_fyear_range(){
		if($this->session->userdata('logged_in')=="")
			header("Location: ".$this->config->base_url()."Login");
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
		$this->load->view('dba_fyear_range',$u_type);
		$this->db->trans_off();
	    $this->db->trans_strict(FALSE);
	    $this->db->trans_start();
        $this->Crud_model->audit_upload($this->session->userdata('loginid'),
                                            current_url(),
                                            'DBA FInancial Year Page visited',
                                            'Custom Message here');
        $this->db->trans_complete();
		$this->load->view('dashboard/footer');
	}

	//AJAX function to set new dba Financial year range-------------------------------------------------------------------------------
	public function dba_year(){
		$this->load->model('Sup_admin');
		$this->load->model('Crud_model');
		$this->load->model('Admin_model');
		$this->load->model('profile_model');
		$csrf_token=$this->security->get_csrf_hash();
		$this->form_validation->set_rules('year', 'Year', 'required');
		$this->form_validation->set_rules('month', 'Month', 'required');
		if ($this->form_validation->run() == FALSE){
			$ab=array('res'=>0,'errors'=>validation_errors(),'csrf_token'=>$csrf_token);
            echo json_encode($ab);
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
			$ab=array('csrf_token'=>$csrf_token,'res'=>1);
            echo json_encode($ab);
		}
	}

	public function issues(){
		if($this->session->userdata('logged_in')==""){
			header("Location: ".$this->config->base_url()."Login");
			exit;
		}
		$this->cache_update();
		$this->check_privilege(23);
		$this->load->model('Crud_model');
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
		$res['data']=$this->Sup_admin->issues_fetch();
		$res['profile_image']=$this->Sup_admin->profile_image();
		//print_r($res['profile_image']);
		$this->load->view('issues',$res);
		$this->db->trans_off();
	    $this->db->trans_strict(FALSE);
	    $this->db->trans_start();
        $this->Crud_model->audit_upload($this->session->userdata('loginid'),
                                            current_url(),
                                            'Issues Page visited',
                                            'Custom Message here');
        $this->db->trans_complete();
		$this->load->view('dashboard/footer');
	}


    //Super Admin dashboard functionalities
    //------------------------------------------------------------------------------------------------------------------------------
    //-------------------------------------------------------------------------------------------------------------------------------
	//loads the signup page 
	//------------------------------------------------------------------------ 
    public function signup(){
		if($this->session->userdata('logged_in')=="")
			header("Location: ".$this->config->base_url()."Login");
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
	//Performs to create a random password and take user details form signup page and also sent a mail to the user with this password 
	//--------------------------------------------------------------
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
		$this->load->model('Crud_model');
		$uname=$this->input->post('email');
		$data=array("username"=>$uname);
	    $query=$this->Sup_admin->exist_user($data);
        $res=$query->result_array();
		if ($res){
			foreach($res as $r){
				$exist = 1;
			}
		}
		$csrf_token=$this->security->get_csrf_hash();
		if($exist == 1){
			$result = array('message'=>"This user already exist",'csrf_token'=>$csrf_token);
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
				$result = array('message'=>"Data Added Successfully",'csrf_token'=>$csrf_token);
        		$this->Crud_model->audit_upload($this->session->userdata('loginid'),
                                            current_url(),
                                           'New User Registered with username - '.$data['username'],
                                           'Custom Message here');
						
				}else
			 			$result = array('message'=>"Data is not Added",'csrf_token'=>$csrf_token);
						
				}else
			 		$result = array('message'=>"Data is not Added",'csrf_token'=>$csrf_token);
						
			 }
			else{
				 $result = array('message'=>"Data is not Added",'csrf_token'=>$csrf_token);
						
			}
			$this->db->trans_complete();
		}
		 echo json_encode($result);
    }
	
	//Fetch user type id ,deignation and user level for signup page 
	//--------------------------------------------------------------
    function fetch_user_type()  //get all records from database  
	{
	   $result;
	   $csrf_token=$this->security->get_csrf_hash();
	   $this->load->model('Sup_admin');
	   $query=$this->Sup_admin->fetch_user_type();
		  $res=$query->result();
	   if($res){
		   $data;
		   $i = 0;
	   	  foreach($res as $r){
			  $code = $r->user_type_id_pk;
			  $type = $r->desig;
			  $level= $r->user_level;
			  $data[$i] = array('code'=>$code,'type'=>$type,'level'=>$level);
			  $i = $i+1;
		  }
		   $result = array('status'=>1,'message'=>'data found','data'=>$data,'csrf_token'=>$csrf_token);
	   }else{
		   $result = array('status'=>0,'message'=>'no data found','csrf_token'=>$csrf_token);

	   }
	   echo json_encode($result);
	 }
	
	//Fetch district name and location code for signup page 
	//--------------------------------------------------------------
	 function fetch_district()  //get all records from database  
	{
	   $result;
	   $csrf_token=$this->security->get_csrf_hash();
	   $this->load->model('Sup_admin');
	   $query=$this->Sup_admin->fetch_district();
		  $res=$query->result();
	   if($res){
		   $data;
		   $i = 0;
	   	  foreach($res as $r){
			  $code = $r->location_code;
			  $type = $r->district_name;
			  $data[$i] = array('code'=>$code,'type'=>$type);
			  $i = $i+1;
		  }
		   $result = array('status'=>1,'message'=>'data found','data'=>$data,'csrf_token'=>$csrf_token);
	   }else{
		   $result = array('status'=>0,'message'=>'no data found','csrf_token'=>$csrf_token);

	   }
	   echo json_encode($result);
	 }
	
	 //Fetch location code and location area for signup page on the of user level and district location code
	//--------------------------------------------------------------
	 function location_data()  //get all records from database  
	 {
		$result;
		   $csrf_token=$this->security->get_csrf_hash();
		   $this->load->model('Sup_admin');
		   $level=$this->input->post('level');
		   $district=$this->input->post('district');
		   //$dat=array("user_type_id_fk"=>$desig);
		$query=$this->Sup_admin->mapping($level,$district);
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
			$result = array('status'=>1,'message'=>'data found','data'=>$data,'csrf_token'=>$csrf_token);
			}
		 else{
			$result = array('status'=>0,'message'=>'no data found','csrf_token'=>$csrf_token);
 
			}
		echo json_encode($result);
	  }
	
	//Fetch office id and office name for signup page 
	//--------------------------------------------------------------
	function office()  //get all records from database  
	{
	   $result;
	   $csrf_token=$this->security->get_csrf_hash();
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
		   $result = array('status'=>1,'message'=>'data found','data'=>$data,'csrf_token'=>$csrf_token);
	   	}
		else{
		   $result = array('status'=>0,'message'=>'no data found','csrf_token'=>$csrf_token);

	   	}
	   echo json_encode($result);
     }
	
	//Fetch department id and department name for signup page on the basis of selected office name
	//--------------------------------------------------------------
	function department()  //get all records from database  
	{
	   $result;
		  $csrf_token=$this->security->get_csrf_hash();
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
		   $result = array('status'=>1,'message'=>'data found','data'=>$data,'csrf_token'=>$csrf_token);
	   	}
		else{
		   $result = array('status'=>0,'message'=>'no data found','csrf_token'=>$csrf_token);

	   	}
	   echo json_encode($result);
     }
	
	//Fetch designation id and designation name for signup page on the basis of selected department name
	//--------------------------------------------------------------
	function designation()  //get all records from database  
	{
	   $result;
		$csrf_token=$this->security->get_csrf_hash();
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
		   $result = array('status'=>1,'message'=>'data found','data'=>$data,'csrf_token'=>$csrf_token,'csrf_token'=>$csrf_token);
	   	}
		else{
		   $result = array('status'=>0,'message'=>'no data found','csrf_token'=>$csrf_token);

	   	}
	   echo json_encode($result);
     }
	
	//Load view user page with all user data
	//--------------------------------------------------------------
	function fetch_login(){  //get all records from database    
		//mandatory requirements for pages loading nav and sidebar
		if($this->session->userdata('logged_in')=="")
			header("Location: ".$this->config->base_url()."Login");
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
	
	//Grant and revoke permission to a perticular user for login
	//--------------------------------------------------------------
	function inactive_login() //load a form with data to be updated
 	{
	 $this->load->model('Crud_model');
	 $this->load->model('Sup_admin');
	 $csrf_token=$this->security->get_csrf_hash();
	 $id=$this->uri->segment('3');
	 $dat=array("login_id_pk"=>$id);
	 $query=$this->Sup_admin->Login_id_pk($dat);

	 $da['records']=$query->result();
	
	 $data=array("active_status"=>$this->input->post('state'));
	 $id=$this->input->post('id');
	 $this->load->model('Sup_admin');
	 $this->db->trans_off();
     $this->db->trans_strict(FALSE);
     $this->db->trans_start();
	 $res = $this->Sup_admin->update_user($data,$id);
	 if($res){
		 $result = array('message'=>"done",'csrf_token'=>$csrf_token);
		 $this->Crud_model->audit_upload($this->session->userdata('loginid'),
                                            current_url(),
                                            'Login Table Updated',
                                            'Custom Message here');
		 $this->del_cache();
	 }else{
		 $result = array('message'=>"failed",'csrf_token'=>$csrf_token);
						
	 }
	 $this->db->trans_complete();
		 echo json_encode($result);

	}

	//Load view user privilege page
	//--------------------------------------------------------------	 
	function fetch_user_privilege(){  //get all records from database  
		//mandatory requirements for pages loading nav and sidebar
		if($this->session->userdata('logged_in')=="")
			header("Location: ".$this->config->base_url()."Login");
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
		$this->load->view('view_user_privilege',$data); 
		$this->load->view('dashboard/footer');
  	}
	
	
	//Grant and revoke a particular designation users permission for perticular page access  
	//--------------------------------------------------------------
	function inactive_user_privilege() //load a form with data to be updated
 	{
	 $this->load->model('Crud_model');
	 $this->load->model('Sup_admin');
	 $csrf_token=$this->security->get_csrf_hash();
	 $id=$this->uri->segment('3');
	 $dat=array("user_priv_id_pk"=>$id);
	 $query=$this->Sup_admin->user_priv_id_pk($dat);
	 $da['records']=$query->result();
	 $data=array("active_status"=>$this->input->post('state'));
	 $id=$this->input->post('id');
	 $this->load->model('Sup_admin');
	 $this->load->model('Crud_model');
	 $this->db->trans_off();
     $this->db->trans_strict(FALSE);
     $this->db->trans_start();
		$res = $this->Sup_admin->update_user_privilege($data,$id);
	 
	 if($res){
		 $result = array('message'=>"done",'csrf_token'=>$csrf_token);
		 $this->Crud_model->audit_upload($this->session->userdata('loginid'),
							current_url(),
							'User Privilege table updated',
							'Custom message here');
		     $this->del_cache();
	 }else{
		 $result = array('message'=>"failed",'csrf_token'=>$csrf_token);
			
	 }
		echo json_encode($result);
		$this->db->trans_complete();
	}
	
	
	//Load view user type page with all user type table data
	//--------------------------------------------------------------
	function fetch_user_desig_type()  //get all records from database  
	{      
		//mandatory requirements for pages loading nav and sidebar
		if($this->session->userdata('logged_in')=="")
			header("Location: ".$this->config->base_url()."Login");
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
	
	//Grant and revoke permission to a whole user type for login
	//--------------------------------------------------------------
	function inactive_user_type() //load a form with data to be updated
 	{
	 $this->load->model('Sup_admin');
	 $this->load->model('Crud_model');
	 $csrf_token=$this->security->get_csrf_hash();
	 $id=$this->uri->segment('3');
	 $dat=array("user_type_id_pk"=>$id);
	 $query=$this->Sup_admin->user_type_id_pk($dat);
	 $da['records']=$query->result();
	 $data=array("active_status"=>$this->input->post('state'));
	 $id=$this->input->post('id');
	 $this->load->model('Sup_admin');
	 $this->load->model('Crud_model');
	 $this->db->trans_off();
     $this->db->trans_strict(FALSE);
     $this->db->trans_start();
		$res = $this->Sup_admin->update_user_type($data,$id);
	 if($res){
		$this->Crud_model->audit_upload($this->session->userdata('loginid'),
							current_url(),
							'User type table updated',
							'Custom message here');
		 $result = array('message'=>"done",'csrf_token'=>$csrf_token);
		 $this->del_cache();
	 }else{
		 $result = array('message'=>"failed",'csrf_token'=>$csrf_token);
			
	 }
	 $this->db->trans_complete();
		echo json_encode($result);
	}
	
	//Load page view page with all page detalis
	//--------------------------------------------------------------
	function page_view()  //get all records from database  
	{      
		if($this->session->userdata('logged_in')=="")
			header("Location: ".$this->config->base_url()."Login");
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
	
	//Grant and revoke permission to a whole page acces for everyone
	//--------------------------------------------------------------
	function inactive_page_view() //load a form with data to be updated
 	{
	 $this->load->model('Sup_admin');
	 $this->load->model('Crud_model');
		$csrf_token=$this->security->get_csrf_hash();
	 $id=$this->uri->segment('3');
	 $dat=array("privilege_id_pk"=>$id);
	 $query=$this->Sup_admin->privilege_id_pk($dat);
	 $da['records']=$query->result();
	 $data=array("active_status"=>$this->input->post('state'));
	 $id=$this->input->post('id');
	 $this->load->model('Sup_admin');
	 $this->db->trans_off();
	 $this->db->trans_strict(FALSE);
	 $this->db->trans_start();
		$res = $this->Sup_admin->update_page_view($data,$id);
	 if($res){
		  $result = array('message'=>"done",'csrf_token'=>$csrf_token);
		  $this->Crud_model->audit_upload($this->session->userdata('loginid'),
							  current_url(),
							  'Pages privilege table updated',
							  'Custom message here');
		 $this->del_cache();
	 }else{
		 $result = array('message'=>"failed",'csrf_token'=>$csrf_token);
			
	 }
		echo json_encode($result);
		$this->db->trans_complete();
	}	   
//Scheme Records show page---------------------------------------------------------------------------------------------------------
function seek_record(){
	if($this->session->userdata('logged_in')=="")
			header("Location: ".$this->config->base_url()."Login");
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
		$this->db->trans_off();
	 	$this->db->trans_strict(FALSE);
		$this->db->trans_start();
		$this->Crud_model->audit_upload($this->session->userdata('loginid'),
							  current_url(),
							  'Seek Records Page Visited',
							  'Custom message here');
		$this->db->trans_complete();
	}else{
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
					if($d == NULL || $fields == NULL){ ?>
						<script> alert("No record found")</script> <?php
						
						header("Location: ".$this->config->base_url()."Super_Admin/seek_record");
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
						}	
					}
				}
			}
		$this->load->view('dashboard/footer');
	}
	//audit log recordds view-------------------------------------------------------------------------------------------------------------
	function audit_log()
	{
		if($this->session->userdata('logged_in')=="")
			header("Location: ".$this->config->base_url()."Login");
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
		$this->load->model('Crud_model');
		$data['audit']=$this->Sup_Admin->get_user_details();
		$data['login_as']=array();
		foreach ($data['audit'] as $key) 
		{
			array_push($data['login_as'],$this->Sup_Admin->get_log_id($key['login_id_fk']));
		}
		$this->load->view('audit_view',$data);
		$this->db->trans_off();
	 	$this->db->trans_strict(FALSE);
		$this->db->trans_start();
		$this->Crud_model->audit_upload($this->session->userdata('loginid'),
							  current_url(),
							  'Audit Log Page Visited',
							  'Custom message here');
		$this->db->trans_complete();
		$this->load->view('dashboard/footer');

	}
}