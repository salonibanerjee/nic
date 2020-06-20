<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class summary extends MY_Controller {

	public function index()
	{	
		if($this->session->userdata('logged_in')=="")
			header("Location: http://localhost/NIC/index.php/Login");
		$this->cache_update();
		$this->check_privilege(1);
		$this->load->model('profile_model');
		$this->load->driver('cache',array('adapter' => 'file'));
		$u_type = array('var'=>$this->cache->get('Active_status'.$this->session->userdata('loginid'))['user_type_id_fk']);
		$noti = array('meeting'=>$this->profile_model->meeting_notification());
		$u_type['notification'] = $noti;
		$u_type['noti1']=$this->profile_model->custom_notification();
		$this->load->view('dashboard/navbar',$u_type);
		
		$da = $this->profile_model->get_profile_info($this->session->userdata('uid'));
		//print_r($this->cache->get('Active_status'.$this->session->userdata('loginid')))	;	
		
		$this->load->model('Dashboard_model');
		$this->load->library('parser');

		$this->load->view('dashboard/sidebar',$da);

		//--------------------------------------------------------------------------
		$scheme_hier=$this->cache->get('scheme_hier_'.$this->session->userdata('dept'));
		//--------------------------------------------------------------------------
		
		$scheme_link = array();
		$scheme_link_name = array();

		foreach($scheme_hier as $row){
			array_push($scheme_link, $row['scheme_link']);
			array_push($scheme_link_name, $row['scheme_name']);
		}


		//print_r($scheme_hier['scheme_link']);

		$container['generate_btn'] = $this->load->view('dashboard/generate_btn',null,TRUE);

		//$this->load->view('dashboard/container');
		
		//IMP: INFO BOX MOVED AFTER ALERT

		//============================================================

		//================PROGRESS LIST===============================

		//change here
		$loc_schcd = $this->session->userdata('location_code');

		$scheme_name = $scheme_link;

		$progress_m = 0;
		$progress_y = 0;
		
		$progress_location = array($loc_schcd);

		if(isset($_POST['progress_submit'])){
			if(!empty($_POST['progress_left_check_list'])){
				$scheme_name = array();
				foreach($_POST['progress_left_check_list'] as $selected){
					array_push($scheme_name,$selected);
				}
			}

			if(!empty($_POST['progress_right_check_list'])){
				$progress_location = array();
				foreach($_POST['progress_right_check_list'] as $selected){
					array_push($progress_location,$selected);
				}
			}

			$progress_m = $_POST['progress_month'];
			$progress_y = $_POST['progress_year'];
		}

		$filter_progress =array(
			'filter_id' => 'progress',
			'selected_left' => $scheme_name,
			'selected_right' => $progress_location,
			'm' => $progress_m,
			'y' => $progress_y,
			'left' => true,
			'right' => true,
			'type' => 0,
			'session' => true,
			'c_left_name' => $scheme_link,
			'f_left_name' => $scheme_link_name,
			'c_name_right' => $this->Dashboard_model->list_table_withloc('mpr_master_location_data','location_code'),
			'f_name_right' => $this->Dashboard_model->fullname_withloc('mpr_master_location_data','location_area')
		);
		//print_r($progress_location);

		//Initialising the filter
		$this->load->view('dashboard/filter_view', $filter_progress);
		
		$size_sch = sizeof($scheme_name);
		$scheme_location = $this->Dashboard_model->get_loc($progress_location,sizeof($progress_location));
		//$test = $this->Dashboard_model->get_progress($scheme_name,$size_sch,$loc_schcd,$progress_m,$progress_y);
		//print_r($test);
		$schemename_pro = $this->Dashboard_model->sch_name($scheme_name,$size_sch);
		//$data = $this->Dashboard_model->get_prog($scheme_name,$size_sch,$loc_schcd,$progress_m,$progress_y);
		
		$work_progress = array();
		$j=0;
		while($j<sizeof($progress_location)){
			$data = $this->Dashboard_model->get_progress($scheme_name,$size_sch,$progress_location[$j],$progress_m,$progress_y);
			//print_r($data);
			$i=0;
			while($i<sizeof($data))
			{
				if($data[$i]=="false")
				{
					$i++;
					continue;
				}
				else if($data[$i]>60)
					$find='success';
				else if($data[$i]<60 && $data[$i]>40)
					$find='warning';
				else
					$find='danger';

				$d = array(
					'location' => $scheme_location[$j],
					'p_name' => $schemename_pro[$i],
					'sign' => $find,
					'progress' => $data[$i]
					);
				array_push($work_progress, $d);	
				$i++;
			}
			$j++;
		}
		$progress_view = array('work_progress' => $work_progress);

		$container['progress_view'] = $this->parser->parse('dashboard/progress_view', $progress_view,TRUE);

		$gp=$this->session->userdata('location_code');
        $q="SELECT notification_text FROM mpr_trans_notification WHERE audience_id = '$gp' ORDER BY notification_id_pk DESC LIMIT 10";
        $res = $this->db->query($q)->result();
		$data['noti']=$res;
		$container['noti_view'] = $this->load->view('dashboard/noti_view', $data ,TRUE);

		//============================ PIE CHART =============================

		$scheme_pie = $scheme_link;

		$pie_location = $loc_schcd;

		$pie_m = 0;
		$pie_y = 0;
		
		if(isset($_POST['pie_submit'])){
			if(!empty($_POST['pie_left_check_list'])){
				$scheme_pie = array();
				foreach($_POST['pie_left_check_list'] as $selected){
					array_push($scheme_pie,$selected);
				}
			}

			$pie_location = $_POST['pie_right_check_list'];

			$pie_m = $_POST['pie_month'];
			$pie_y = $_POST['pie_year'];
		}

		$filter_pie =array(
			'filter_id' => 'pie',
			'selected_left' => $scheme_pie,
			'selected_right' => $pie_location,
			'm' => $pie_m,
			'y' => $pie_y,
			'left' => true,
			'right' => true,
			'type' => 1,
			'session' => true,
			'c_left_name' => $scheme_link,
			'f_left_name' => $scheme_link_name,
			'c_name_right' => $this->Dashboard_model->list_table_withloc('mpr_master_location_data','location_code'),
			'f_name_right' => $this->Dashboard_model->fullname_withloc('mpr_master_location_data','location_area')
		);

		//Initialising the filter
		$this->load->view('dashboard/filter_view', $filter_pie);

		$n = count($scheme_pie);

		$tempdata = $this->Dashboard_model->get_prog($scheme_pie, $n, $pie_location, $pie_m, $pie_y);
		$tempschemename_pie = $this->Dashboard_model->sch_name($scheme_pie,$n);
		$data= array();
		$schemename_pie=array();
		$i=0;
		while($i<sizeof($tempdata)){
			if($tempdata[$i]=="false"){
				$i++;continue;
			}
			else{
				array_push($data, $tempdata[$i]);
				array_push($schemename_pie, $tempschemename_pie[$i]);
				$i++;
			}
		}
		
		$pie_view['data'] = $data;
		$pie_view['name'] = $schemename_pie;

		$container['pie_chart'] = $this->load->view('dashboard/pie_chart', $pie_view ,TRUE);

		//================BAR CHART 1===============================
		
		//Insert data for bar chart in an array format
		$scheme_bar1 = $scheme_link;
		$bar1_location = $loc_schcd;

		$bar1_m = 0;
		$bar1_y = 0;
		
		if(isset($_POST['bar1_submit'])){
			if(!empty($_POST['bar1_left_check_list'])){
				$scheme_pro = array();
				foreach($_POST['bar1_left_check_list'] as $selected){
					array_push($scheme_pro,$selected);
				}
			}

			$bar1_location = $_POST['bar1_right_check_list'];

			$bar1_m = $_POST['bar1_month'];
			$bar1_y = $_POST['bar1_year'];
		}

		$bar1_filter_progress = array(
			'filter_id' => 'bar1',
			'selected_left' => $scheme_bar1,
			'selected_right' => $bar1_location,
			'm' => $bar1_m,
			'y' => $bar1_y,
			'left' => true,
			'right' => true,
			'type' => 1,
			'session' => true,
			'c_left_name' => $scheme_link,
			'f_left_name' => $scheme_link_name,
			'c_name_right' => $this->Dashboard_model->list_table_withloc('mpr_master_location_data','location_code'),
			'f_name_right' => $this->Dashboard_model->fullname_withloc('mpr_master_location_data','location_area')
		);

		//Initialising the filter
		$this->load->view('dashboard/filter_view', $bar1_filter_progress);

		$result = $this->Dashboard_model->get_data($scheme_bar1,sizeof($scheme_bar1),$loc_schcd,$bar1_m,$bar1_y);
		$tempschemename_bar = $this->Dashboard_model->sch_name($scheme_bar1,sizeof($scheme_bar1));

		$schemename_bar=array();
		$target = array();
		$progress = array();
		for($i=0,$j=0;$i<2*sizeof($scheme_bar1);$i+=2,$j++){
			if($result[$i]=="false"){
				continue;
			}
			array_push($target, $result[$i]);
			array_push($progress, $result[$i+1]);
			array_push($schemename_bar, $tempschemename_bar[$j]);
		}

		$bar_chart1 = array(
			'id' => 'bar1',
			'title' => 'Fund Utilised',
			'block' => $schemename_bar,
			'no_bar' => 2,
			'bar' => array('Fund Received','Fund Utilised'),
			'data' => array()
		);

		array_push($bar_chart1['data'],$target);
		array_push($bar_chart1['data'],$progress);

		$container['bar_chart1'] = $this->load->view('dashboard/bar_chart', $bar_chart1, TRUE);

		//==============================================================


		//============== BAR CHART 2=====================================

		$scheme_pro = array();
		$location = array($loc_schcd);

		$bar2_m = 0;
		$bar2_y = 0;

		if(isset($_POST['bar2_submit'])){
			if(!empty($_POST['bar2_left_check_list'])){
				$scheme_pro = array();
				foreach($_POST['bar2_left_check_list'] as $selected){
					array_push($scheme_pro,$selected);
				}
			}

			if(!empty($_POST['bar2_right_check_list'])){
				$location = array();
				foreach($_POST['bar2_right_check_list'] as $selected){
					array_push($location,$selected);
				}
			}

			$bar2_m = $_POST['bar2_month'];
			$bar2_y = $_POST['bar2_year'];
		}

		$bar2_filter_progress =array(
			'filter_id' => 'bar2',
			'selected_left' => $scheme_pro,
			'selected_right' => $location,
			'm' => $bar2_m,
			'y' => $bar2_y,
			'left' => true,
			'right' => true,
			'type' => 0,
			'c_left_name' => $scheme_link,
			'f_left_name' => $scheme_link_name,
			'c_name_right' => $this->Dashboard_model->list_table_withloc('mpr_master_location_data','location_code'),
			'f_name_right' => $this->Dashboard_model->fullname_withloc('mpr_master_location_data','location_area')
		);

		//Initialising the filter
		$this->load->view('dashboard/filter_view', $bar2_filter_progress);
		
		$schemename_bar = $this->Dashboard_model->sch_name($scheme_bar1,sizeof($scheme_bar1));
		//We can choice here blocks with there particular sgfs
		
		$loc = $this->Dashboard_model->get_loc($location,sizeof($location));
		//We can choice different schemes to show int the bar chart
		
		$size_sch = sizeof($scheme_pro);
		$schemename_pro = $this->Dashboard_model->sch_name($scheme_pro,$size_sch);

		$matrix_data = $this->Dashboard_model->matrix($location,$scheme_pro,sizeof($location),sizeof($scheme_pro));

		$bar_chart2 = array(
			'id' => 'bar2',
			'title' => 'Area Wise Progress',
			'block' => $loc,
			'no_bar' => $size_sch,
			'bar' => $schemename_pro,
			'data' => array()
		);
		for($i=0;$i<$size_sch;$i++)
		{
			array_push($bar_chart2['data'],$matrix_data[$i]);
			//array_push($bar_chart['data'],$progress);
		}

		$container['bar_chart2'] =  $this->load->view('dashboard/bar_chart', $bar_chart2, TRUE);

		$container['line_chart'] = $this->load->view('dashboard/line_chart', null, TRUE);

		//====================================== ALERT VIEW =============================================

		$alert_m = 0;
		$alert_y = 0;

		$tempresult_alert = $this -> Dashboard_model -> get_data($scheme_bar1,sizeof($scheme_bar1),$loc_schcd,$alert_m,$alert_y);
		$tempschemename_alert = $this -> Dashboard_model -> sch_name($scheme_bar1,sizeof($scheme_bar1));
		$data = array();
		$schemename_alert=array();
		$result_alert=array();
		for($i=0,$j=0;$i<2*sizeof($scheme_bar1);$i+=2,$j++){
			if($tempresult_alert[$i]=="false")
				continue;
			if($tempresult_alert[$i]!=0)
				$per=(int)($tempresult_alert[$i+1]/$tempresult_alert[$i]*100);
			else
				$per=0;
			array_push($result_alert,$tempresult_alert[$i],$tempresult_alert[$i+1]);
			array_push($data, $per);
			array_push($schemename_alert,$tempschemename_alert[$j]);
		}
		$fits = array();
		$j = 0;
		for($i=0;$i<sizeof($data);$i++,$j+=2){
			$eachbar = array('c1'=>$i+1,'c2'=>$schemename_alert[$i], 'c3'=>$result_alert[$j], 'c4'=>$result_alert[$j+1], 'c5'=>$data[$i]);
			array_push($fits, $eachbar);
		}
		$table_data = array('data' => $fits );

		$container['alert_table'] = $this->parser->parse('dashboard/alert_table', $table_data, TRUE);

		//==================== INFO BOX =====================================

		$max_scheme;
		$min_scheme;
		$best_scheme;
		$worst_scheme;
		if(sizeof($data) != 0){
			$best_scheme = $schemename_alert[0];
			$worst_scheme = $schemename_alert[0];
			$max_scheme = $data[0];
			$min_scheme = $data[0];
			for($i=1;$i<sizeof($data);$i++){
				if($max_scheme<$data[$i]){
					$max_scheme=$data[$i];
					$best_scheme=$schemename_alert[$i];
				}
				if($min_scheme>$data[$i]){
					$min_scheme=$data[$i];
					$worst_scheme=$schemename_alert[$i];
				}
			}
			
			$max_scheme = $max_scheme.'%';
			$min_scheme = $min_scheme.'%';
		}
		else{
			$max_scheme = "NA";
			$min_scheme = "NA";
			$best_scheme = "No Active Scheme Found";
			$worst_scheme = "No Active Scheme Found";
		}

		$this->load->model('Sup_admin');
		$scheme_count = $this->Sup_admin->schemes_count();
		$s_count = $this->profile_model->scheme_under();
		$pec = ($s_count / $scheme_count) * 100;
		$info_box = array(
			'data_list' => array(
				array('num' => $s_count, 'desc' => 'Number of Schemes for Current User','color'=>'yellow','icon'=>'ion-stats-bars','tot' =>$pec.'%','text'=>$s_count.' Out of '.$scheme_count.' schemes'),
				array('num' => $max_scheme, 'desc' => $best_scheme,'color'=>'success','icon'=>'ion-checkmark','tot'=>$max_scheme, 'text'=>'Best Scheme Performance: '.$max_scheme),
				array('num' => $min_scheme, 'desc' => $worst_scheme,'color'=>'danger','icon'=>'ion-close','tot'=>$min_scheme, 'text'=>'Worst Scheme Performance: '.$min_scheme)
			)
		);
		
		$container['info_box'] = $this->parser->parse('dashboard/info_box', $info_box, TRUE);

		//======================================================================
		//=========== PASSING ALL DATA TO CONTAINER ============================

		$this->load->view('dashboard/container',$container);
		$this->load->view('dashboard/footer');
		
	}
	
	public function profile(){
		if($this->session->userdata('logged_in')==""){
			header("Location: http://localhost/NIC/index.php/Login");
			exit;
		}
		$this->cache_update();
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
		$this->db->trans_off();
        $this->db->trans_strict(FALSE);
        $this->db->trans_start();
		$this->Crud_model->audit_upload($this->session->userdata('loginid'),
                                            current_url(),
                                            'View Profile',
                                            $this->session->userdata('uid'));
		$this->db->trans_complete();
		$data=$this->profile_model->get_profile($this->session->userdata('uid'));
		$this->load->view('profile_view',$data);
		$this->load->view('dashboard/footer');
	}

	public function edit_profile(){
		if($this->session->userdata('logged_in')=="")
			header("Location: http://localhost/NIC/index.php/Login");
		$this->load->model('Crud_model');
		$this->cache_update();
		$this->check_privilege(4);
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
		$this->load->model('profile_model');
		$this->load->model('Admin_model');
		$dat=$this->profile_model->get_profile($this->session->userdata('uid'));
		$desi=$this->profile_model->get_designation();
		$dep=$this->profile_model->get_depart();
		$off=$this->profile_model->get_office();
		$user = array();
		$user = $this->profile_model->get_user_id();
		//print_r($user);
		$dat['desi']=$desi;
		$dat['dep']=$dep;
		$dat['off']=$off;
		/*
		$dat = array(
			'desi' =>$desi,
			'dep' =>$dep,
			'off' =>$off,
			'user' =>$user,
		);*/
		//print_r($desi);
		$validate = array(
			array(
					'field' => 'first',
					'label' => 'First Name',
					'rules' => 'required|alpha|max_length[50]',
					'errors' => array(
							'required' => 'You must provide a %s.',
					)
			),
			array(
					'field' => 'last',
					'label' => 'Last Name',
					'rules' => 'required|alpha|max_length[50]',
					'errors' => array(
							'required' => 'You must provide a %s.',
					),
			),
			array(
					'field' => 'mob',
					'label' => 'Mobile',
					'rules' => 'required|numeric|exact_length[10]'
			),
			array(
					'field' => 'email',
					'label' => 'Email',
					'rules' => 'required|valid_email'
			),
			//array(
			//	'field' => 'desig',
			//	'label' => 'Designation',
			//	'rules' => 'required'
			//),
			array(
				'field' => 'dist',
				'label' => 'District',
				'rules' => 'required'
			),
		);
		$this->form_validation->set_rules($validate);
		//Validation check
		if ($this->form_validation->run() == FALSE){
			$this->load->view('edit_profile',$dat);
		}else{
			if(isset($_POST['sub1'])){
				$first = $this->input->post('first');
				$mid = $this->input->post('mid');
				$last = $this->input->post('last');
				$mobile = $this->input->post('mob');
				$email = $this->input->post('email');
				$dist = $this->input->post('dist');
				$image = base64_encode(file_get_contents($_FILES['file']['tmp_name']));
				$res=$this->profile_model->get_f($this->session->userdata('uid'));
				if ($image == NULL){
					$image = $res->image;	
				}
				$data = array(
					'f_name' => $first,
					'profile_id_pk' => $this->session->userdata('loginid'),
					'm_name' => $mid,
					'l_name' => $last,
					'mobile' => $mobile,
					'username' =>$this->session->userdata('uid'),
					'email' => $email,
					'image' => $image,
					'desig' =>$desi,
					'dept' =>$dep,
					'office' =>$off,
					'district' =>$dist,
				);
				$this->db->trans_off();
                $this->db->trans_strict(FALSE);
                $this->db->trans_start();
				$this->Crud_model->audit_upload($this->session->userdata('loginid'),
                                            current_url(),
                                            'Profile Updated Successfully',
                                            $this->session->userdata('uid'));

				if($res){
					$this->profile_model->update($this->session->userdata('uid'),$data);
					header("location: http://localhost/NIC/index.php/Summary/profile");
				}else{
					$this->profile_model->upload($data);
					$this->Admin_model->update_first_profile();
					header("location: http://localhost/NIC/index.php/Summary/profile");
				}
				$this->db->trans_complete();
			}
		} //validation else brace ending 
	}

	public function password_change_within(){
		if($this->session->userdata('logged_in')=="")
			header("Location: http://localhost/NIC/index.php/Login");
		$this->cache_update();
		$this->load->model('Crud_model');
		$this->check_privilege(3);
		//mandatory requirements for pages loading nav and sidebar
		$this->load->driver('cache',array('adapter' => 'file'));
		$this->load->model('profile_model');
		$u_type = array('var'=>$this->cache->get('Active_status'.$this->session->userdata('loginid'))['user_type_id_fk']);
		$noti = array('meeting'=>$this->profile_model->meeting_notification());
		$u_type['notification'] = $noti;
		$u_type['noti1']=$this->profile_model->custom_notification();
		$u_type['notification'] = $noti;
		$this->load->view('dashboard/navbar',$u_type);
		
		$da = $this->profile_model->get_profile_info($this->session->userdata('uid'));
		$this->load->view('dashboard/sidebar',$da);
		//mandatory requirements end
        $this->load->model('Admin_model');
        $this->form_validation->set_rules('pass0', 'Password', 'required');
        $this->form_validation->set_rules('pass1', 'Password', 'required');
        $this->form_validation->set_rules('pass2', 'Password Confirmation', 'required|matches[pass1]');
        if ($this->form_validation->run() == FALSE)
        {
			echo validation_errors();
			$this->load->view('change_pass');
        }else{
            $user=$this->session->userdata('uid');
            $old_pass = $this->input->post('pass0');
            $res=$this->Admin_model->findpass($user);
			$passInDb =$res->password;
            if($passInDb === $old_pass){
				$password=$this->input->post('pass1');
				$this->db->trans_off();
                $this->db->trans_strict(FALSE);
                $this->db->trans_start();
				$this->Admin_model->update_login($user,$password);
				$this->Crud_model->audit_upload($this->session->userdata('loginid'),
                                            current_url(),
                                            'Password Updated Successfully',
											$this->session->userdata('uid'));
				$this->db->trans_complete();
				echo "http://localhost/nic/index.php/Summary/profile";
            }else{
				echo "<p>Old Password is wrong.</p>\n";
            }
        }
	}
}