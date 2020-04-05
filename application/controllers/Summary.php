<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class summary extends CI_Controller {

	public function index()
	{	

		$this->load->driver('cache',array('adapter' => 'file'));
		//print_r($this->cache->get('Active_status'))	;	
		
		$this->load->model('Dashboard_model');

		$this->load->library('parser');

		$this->load->view('dashboard/navbar');

		$this->load->view('dashboard/sidebar');

		$info_box = array(
			'data_list' => array(
				array('num' => '10', 'desc' => 'Body 1'),
				array('num' => '15', 'desc' => 'Body 2'),
				array('num' => '19', 'desc' => 'Body 3'),
				array('num' => '324', 'desc' => 'Body 4')
			)
		);
		
		$this->parser->parse('dashboard/info_box', $info_box);

		//Insert data for progressbar in an array format
		$scheme_pro = array("KCC","DOC","DOG","ANAND");
		$size_sch = sizeof($scheme_pro);
		$schemename_pro = $this->Dashboard_model->sch_name($scheme_pro,$size_sch);
		$data = $this->Dashboard_model->get_prog($scheme_pro,$size_sch);
		$work_progress = array();
		$i=0;
		while($i<$size_sch)
		{
			if($data[$i]>60)
				$find='success';
			else if($data[$i]<60&&$data[$i]>40)
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
		$progress_view = array('work_progress' => $work_progress);

		$this->parser->parse('dashboard/progress_view', $progress_view);
		
		//Insert data for bar chart in an array format 
		$scheme_bar = array("KCC","KishanM","ANAND","DOC","DOG");
		$result = $this->Dashboard_model->get_data($scheme_bar,sizeof($scheme_bar));
		$schemename_bar = $this->Dashboard_model->sch_name($scheme_bar,sizeof($scheme_bar));

		$target = array();
		$progress = array();
		for($i=0;$i<10;$i++)
		{
			if($i%2==0)
				array_push($target, $result[$i]);
			else
				array_push($progress, $result[$i]);
		}

		$bar_chart = array(
			'label1' => $schemename_bar,
			'data1_1' => $progress,
			'data1_2' => $target,
			'block' => array('Block 1', 'Block 2', 'Block 3', 'Block 4', 'Block 5'),
			'bar_1' => 'Scheme 1',
			'data_1' => array(34, 64, 32, 27, 47),
			'bar_2' => 'Scheme 2',
			'data_2' => array(65, 59, 80, 81, 56),
			'bar_3' => 'Scheme 3',
			'data_3' => array(43, 67, 15, 32, 30),
			'bar_4' => 'Scheme 4',
			'data_4' => array(75,34,35,52,41),
			'bar_5' => 'Scheme 5',
			'data_5' => array(34,64,25,84,19)
		);

		$this->load->view('dashboard/bar_chart', $bar_chart);

		$table_data = array(
			'data' => array(
				array('c1' => '1', 'c2' => 'Yubashree', 'c3' => '150', 'c4' => '50', 'c5' => '10'),
				array('c1' => '1', 'c2' => 'Yubashree', 'c3' => '150', 'c4' => '50', 'c5' => '10'),
				array('c1' => '1', 'c2' => 'Yubashree', 'c3' => '150', 'c4' => '50', 'c5' => '10'),
				array('c1' => '1', 'c2' => 'Yubashree', 'c3' => '150', 'c4' => '50', 'c5' => '10')
			)
		);

		$this->parser->parse('dashboard/alert_table', $table_data);
		
	}

	public function profile(){
		$this->load->driver('cache',array('adapter' => 'file'));
		$this->load->view('dashboard/navbar');

		$this->load->view('dashboard/sidebar');
		$this->load->view('profile');
	}
	
}