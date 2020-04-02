<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class summary extends CI_Controller {

	public function index()
	{	
		//$this->load->driver('cache',array('adapter' => 'file'));
		//echo ($this->cache->get('Active_status')['user_privilege'][2]['link']);
		//echo ($this->cache->get('Active_status')['username']);

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

		$progress_view = array(
			'title' => 'Example',
			'work_progress' => array(
				array('sl_no' => '1', 'p_name' => 'Body 1', 'sign' => 'success', 'progress' => 90),
				array('sl_no' => '2', 'p_name' => 'Body 2', 'sign' => 'success', 'progress' => 90),
				array('sl_no' => '3', 'p_name' => 'Body 3', 'sign' => 'danger', 'progress' => 10),
				array('sl_no' => '4', 'p_name' => 'Body 4', 'sign' => 'success', 'progress' => 90)
			)
		);

		$this->parser->parse('dashboard/progress_view', $progress_view);

		$bar_chart = array(
			'label1' => array('Scheme 1', 'Scheme 2', 'Scheme 3', 'Scheme 4', 'Scheme 5'),
			'data1_1' => array(28, 48, 40, 19, 36),
			'data1_2' => array(65, 59, 80, 81, 56),
			'block' => array('block 1', 'block 2', 'block 3', 'block 4', 'block 5'),
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
		$this->load->view('profile');
	}
}