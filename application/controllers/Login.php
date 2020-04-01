<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Login extends CI_Controller {
    public function index(){
        $vals = array(
            'word'          => 'Random word',
            'img_path'      => './captcha/',
            'img_url'       => 'http://localhost/NIC/captcha/',
            'font_path'     => './path/to/fonts/texb.ttf',
            'img_width'     => '150',
            'img_height'    => 30,
            'expiration'    => 7200,
            'word_length'   => 8,
            'font_size'     => 16,
            'img_id'        => 'Imageid',
            'pool'          => '0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ',
    
            // White background and border, black text and red grid
            'colors'        => array(
                    'background' => array(255, 255, 255),
                    'border' => array(255, 255, 255),
                    'text' => array(0, 0, 0),
                    'grid' => array(255, 40, 40)
            )
    );
    
    $cap = create_captcha($vals);
    echo $cap['image'];
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
                $this->session->set_userdata('uid',$this->input->post('email'));
                $this->session->set_userdata('logged_in', TRUE);
                $this->session->set_userdata('gp_id',$this->Crud_model->gp_id($this->input->post('email')));
                $this->Admin_model->store_cache($this->session->userdata('uid'));
                $this->Admin_model->store_profile($this->session->userdata('uid'));
                if($this->cache->get('Active_status')['active_status']==1){
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
                        //windows.history.back();
                    </script>
                <?php
                }
                
			}
    		else{
                ?>
                    <script type=text/javascript>
                        alert("Invalid Username or Password...");
                        window.location.href = "http://localhost/NIC/index.php/Login";
                        //windows.history.go(-2);
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