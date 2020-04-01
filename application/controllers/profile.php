<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class profile extends CI_Controller {
    public function index(){
        $this->load->driver('cache', array('adapter' => 'file'));
        
        $this->load->view('profile');
       // $this->load->model('profile_model');
        //echo $this->session->userdata('uid');
        //echo ($this->cache->get('Profile')['f_name']);
    }
}