<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class summary extends MY_Controller {

	public function index()
	{	
		if(!isset($_SESSION['logged_in']))
			header("Location: http://localhost/NIC/index.php/Login");
		//$this->check_privilege(1);

		$this->load->driver('cache',array('adapter' => 'file'));
		$this->load->model('profile_model');
		$da = $this->profile_model->get_profile_info($this->session->userdata('uid'));
		//print_r($this->cache->get('Active_status'))	;	
		
		$this->load->model('Dashboard_model');
		$this->load->library('parser');

		$u_type = array('var'=>$this->cache->get('Active_status')['user_type_id_fk']);
		$this->load->view('dashboard/navbar',$u_type);
		$this->load->view('dashboard/sidebar',$da);

		$container['generate_btn'] = $this->load->view('dashboard/generate_btn',null,TRUE);

		//$this->load->view('dashboard/container');

		$info_box = array(
			'data_list' => array(
				array('num' => '42', 'desc' => 'Number of Scheme'),
				array('num' => '15', 'desc' => 'Body 2'),
				array('num' => '19', 'desc' => 'Body 3')
			)
		);
		
		$container['info_box'] = $this->parser->parse('dashboard/info_box', $info_box, TRUE);

		//============================================================

		//================PROGRESS LIST===============================

		$scheme_name = array("KCC","DOC","DOG","ANAND");

		if(isset($_POST['progress_submit'])){
			if(!empty($_POST['progress_left_check_list'])){
				$scheme_name = array();
				foreach($_POST['progress_left_check_list'] as $selected){
					array_push($scheme_name,$selected);
				}
			}
		}

		$filter_progress =array(
			'filter_id' => 'progress',
			'selected_left' => $scheme_name,
			'left' => true,
			'right' => false,
			'c_left_name' => $this->Dashboard_model->list_table('dashboard_info','s_name'),
			'f_left_name' => $this->Dashboard_model->fullname('dashboard_info','name')
		);

		//Initialising the filter
		$this->load->view('dashboard/filter_view', $filter_progress);
		
		$size_sch = sizeof($scheme_name);
		$schemename_pro = $this->Dashboard_model->sch_name($scheme_name,$size_sch);
		$data = $this->Dashboard_model->get_prog($scheme_name,$size_sch);
		$work_progress = array();
		$i=0;
		while($i<$size_sch)
		{
			if($data[$i]>60)
				$find='success';
			else if($data[$i]<60 && $data[$i]>40)
				$find='warning';
			else
				$find='danger';

			$d = array(
				'sl_no' => $i+1,
				'p_name' => $schemename_pro[$i],
				'sign' => $find,
				'progress' => $data[$i]
				);
			array_push($work_progress, $d);	
			$i++;
		}
		$progress_view = array('work_progress' => $work_progress
		);

		$container['progress_view'] = $this->parser->parse('dashboard/progress_view', $progress_view,TRUE);

		$container['noti_view'] = $this->load->view('dashboard/noti_view', null ,TRUE);

		//=========================================================

		$scheme_pie = array("KCC","DOC","DOG","ANAND");

		if(isset($_POST['pie_submit'])){
			if(!empty($_POST['pie_left_check_list'])){
				$scheme_pie = array();
				foreach($_POST['pie_left_check_list'] as $selected){
					array_push($scheme_pie, $selected);
				}
			}
		}

		$filter_pie =array(
			'filter_id' => 'pie',
			'selected_left' => $scheme_name,
			'left' => true,
			'right' => false,
			'c_left_name' => $this->Dashboard_model->list_table('dashboard_info','s_name'),
			'f_left_name' => $this->Dashboard_model->fullname('dashboard_info','name')
		);

		//Initialising the filter
		$this->load->view('dashboard/filter_view', $filter_pie);

		$n = count($scheme_pie);

		$data = $this->Dashboard_model->get_prog($scheme_pie, $n);
		$schemename_pie = $this->Dashboard_model->sch_name($scheme_pie,$n);

		$pie_view['data'] = $data;
		$pie_view['name'] = $schemename_pie;

		$container['pie_chart'] = $this->load->view('dashboard/pie_chart', $pie_view ,TRUE);


		//================BAR CHART 1===============================
		
		//Insert data for bar chart in an array format 
		$scheme_bar = array("KCC","KishanM","ANAND","DOC","DOG");
		$result = $this->Dashboard_model->get_data($scheme_bar,sizeof($scheme_bar));
		$schemename_bar = $this->Dashboard_model->sch_name($scheme_bar,sizeof($scheme_bar));

		$target = array();
		$progress = array();
		for($i=0;$i<10;$i++){
			if($i%2==0)
				array_push($target, $result[$i]);
			else
				array_push($progress, $result[$i]);
		}

		$bar_chart1 = array(
			'id' => 'bar1',
			'title' => 'Example',
			'block' => $schemename_bar,
			'no_bar' => 2,
			'bar' => array('Fund Received','Fund Utilised'),
			'data' => array()
		);

		array_push($bar_chart1['data'],$target);
		array_push($bar_chart1['data'],$progress);

		$container['bar_chart1'] = $this->load->view('dashboard/bar_chart', $bar_chart1, TRUE);

		//==============================================================


		//==============BAR CHART 2=====================================

		$scheme_pro = array("KCC","DOC","DOG","ANAND");
		$location = array("191601","191612","191607");
		
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
		}

		$bar2_filter_progress =array(
			'filter_id' => 'bar2',
			'selected_left' => $scheme_pro,
			'selected_right' => $location,
			'left' => true,
			'right' => true,
			'c_name_left' => $this->Dashboard_model->list_table('dashboard_info','s_name'),
			'f_name_left' => $this->Dashboard_model->fullname('dashboard_info','name'),
			'c_name_right' => $this->Dashboard_model->list_table('location_data','location_schcd'),
			'f_name_right' => $this->Dashboard_model->fullname('location_data','location_area')
		);

		//Initialising the filter
		$this->load->view('dashboard/filter_view', $bar2_filter_progress);
		
		$schemename_bar = $this->Dashboard_model->sch_name($scheme_bar,sizeof($scheme_bar));
		//We can choice here blocks with there particular sgfs
		
		$loc = $this->Dashboard_model->get_loc($location,sizeof($location));
		//We can choice different schemes to show int the bar chart
		
		$size_sch = sizeof($scheme_pro);
		$schemename_pro = $this->Dashboard_model->sch_name($scheme_pro,$size_sch);

		$matrix_data = $this->Dashboard_model->matrix($location,$scheme_pro,sizeof($location),sizeof($scheme_pro));

		$bar_chart2 = array(
			'id' => 'bar2',
			'title' => 'Example 1',
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

		$scheme_alert = array("KCC","KishanM","ANAND","DOC","DOG");
		$result_alert = $this->Dashboard_model->get_data($scheme_bar,sizeof($scheme_bar));
		$schemename_alert = $this->Dashboard_model->sch_name($scheme_bar,sizeof($scheme_bar));
		$data = array();
		for($i=0;$i<2*sizeof($scheme_bar);$i+=2)
		{
			$per=(int)($result_alert[$i+1]/$result_alert[$i]*100);
			array_push($data, $per);
		}
		$fits = array();
		$j=0;
		for($i=0;$i<sizeof($data);$i++,$j+=2)
		{
			$eachbar = array('c1'=>$i+1,'c2'=>$schemename_alert[$i], 'c3'=>$result_alert[$j], 'c4'=>$result_alert[$j+1], 'c5'=>$data[$i] );
			array_push($fits, $eachbar);
		}
		$table_data = array('data' => $fits );

		$container['alert_table'] = $this->parser->parse('dashboard/alert_table', $table_data, TRUE);

		//======================================================================
		//=========== PASSING ALL DATA TO CONTAINER ============================

		$this->load->view('dashboard/container',$container);
		
	}
	
	public function profile(){
		//mandatory requirements for pages loading nav and sidebar
		$this->load->driver('cache',array('adapter' => 'file'));
		$u_type = array('var'=>$this->cache->get('Active_status')['user_type_id_fk']);
		$this->load->view('dashboard/navbar',$u_type);
		$this->load->model('profile_model');
		$da = $this->profile_model->get_profile_info($this->session->userdata('uid'));
		$this->load->view('dashboard/sidebar',$da);
		//mandatory requirements end

		$data=$this->profile_model->get_profile($this->session->userdata('uid'));
		$this->load->view('profile_view',$data);
	}

	public function edit_profile(){
		$this->load->driver('cache',array('adapter' => 'file'));
		$this->load->model('profile_model');
		$da = $this->profile_model->get_profile_info($this->session->userdata('uid'));
		$u_type = array('var'=>$this->cache->get('Active_status')['user_type_id_fk']);
		$this->load->view('dashboard/navbar',$u_type);
		$this->load->view('dashboard/sidebar',$da);
		$this->load->model('profile_model');
		$this->load->model('Admin_model');
		$dat=$this->profile_model->get_profile($this->session->userdata('uid'));
		
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
			array(
				'field' => 'desig',
				'label' => 'Designation',
				'rules' => 'required'
			),
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
				$desig = $this->input->post('desig');
				$dist = $this->input->post('dist');
				$image = base64_encode(file_get_contents($_FILES['file']['tmp_name']));
				$res=$this->profile_model->get_f($this->session->userdata('uid'));
				if ($image == NULL){
					$image = $res->image;	
				}
				$data = array(
					'f_name' => $first,
					'm_name' => $mid,
					'l_name' => $last,
					'mobile' => $mobile,
					'username' =>$this->session->userdata('uid'),
					'email' => $email,
					'image' => $image,
					'designation' =>$desig,
					'district' =>$dist,
				);
				if($res){
					$this->profile_model->update($this->session->userdata('uid'),$data);
					header("location: http://localhost/NIC/index.php/Summary/profile");
				}else{
					$this->profile_model->upload($data);
					$this->Admin_model->update_first_profile();
					header("location: http://localhost/NIC/index.php/Summary/profile");
				}
			}
		} //validation else brace ending 
	}

}