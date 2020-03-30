<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Login extends CI_Controller {
    public function index(){
        $this->load->view('login');
    }

    //Performs Login and if successful redirects to scheme picker page
	public function login_MPR(){
        $this->db->cache_off();
        $this->load->driver('cache',array('adapter' => 'file'));
        $this->load->model('Crud_model');
        $this->load->model('Admin_model');
  		$data=array("username"=>$this->input->post('email'),"password"=>$this->input->post('password'));
  		$query=$this->db->get_where("Login",$data);
  		$res=$query->result_array();
    	if ($res){
  	  			echo "Login Successful";
                $this->session->set_userdata('uid',$this->input->post('email'));
                $this->session->set_userdata('logged_in', TRUE);
                $this->session->set_userdata('gp_id',$this->Crud_model->gp_id($this->input->post('email')));
                $this->Admin_model->store_cache($this->session->userdata('uid'));
                if($this->cache->get('Active_status')){
                    $this->Crud_model->audit_upload($this->session->userdata('uid'),
                                                    current_url(),
                                                    'Login',
                                                    'Logging in as '.$this->session->userdata('uid'));
                    //$this->Admin_model->store_cache($this->session->userdata('uid'));
                    header("Location: http://localhost/NIC/index.php/".$this->cache->get('Active_status')['user_privilege'][0]['link']);
                }else{
                    ?>
                    <script type=text/javascript>
                        alert("Access Denied...");
                        window.location.href = "http://localhost/NIC/index.php/Login";
                    </script>
                <?php
                }
                
			}
    		else{
                ?>
                    <script type=text/javascript>
                        alert("Invalid Username or Password...");
                        window.location.href = "http://localhost/NIC/index.php/Login";
                    </script>
                <?php
            }
    }

    //to logout and destroy the session and redirects back to login page
    public function logout(){
        $this->load->model('Crud_model');
        $this->Crud_model->audit_upload($this->session->userdata('uid'),
                                            current_url(),
                                            'Logout',
                                            'Custom Message here');
        $this->session->set_userdata('logged_in', FALSE);
        $this->session->sess_destroy();
        redirect(base_url()."index.php/Login");
    }
}