<?php
//custom Error 404 page ----------------------------------------------------------------------------------------------------------------------------
class My404 extends CI_Controller
{
    //constructor---------------------------------------------------------------------------------------------------------------
    public function __construct(){
        parent::__construct();
    }
    //loads custom Error 404 page-----------------------------------------------------------------------------------------------------s
    public function index(){
        if($this->session->userdata('logged_in')=="")
			header("Location: http://localhost/NIC/index.php/Login");
        $this->load->driver('cache',array('adapter' => 'file'));
        $this->output->set_status_header('404');
        $this->load->view('my404');    
    }
}