<?php
class My404 extends CI_Controller
{
    public function __construct(){
        parent::__construct();
    }
    public function index(){
        if(!isset($_SESSION['logged_in']))
			header("Location: http://localhost/NIC/index.php/Login");
        $this->load->driver('cache',array('adapter' => 'file'));
        $this->output->set_status_header('404');
        $this->load->view('my404');    
    }
}