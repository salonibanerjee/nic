<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class profile extends CI_Controller {
    public function index(){
        $this->load->view('profile');
       // $this->load->model('profile_model');
        //echo $this->session->userdata('uid');
       //$this->load->driver('cache', array('adapter' => 'file'));
        //echo ($this->cache->get('Active Status')['active_status']);
    }
}