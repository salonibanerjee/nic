<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Login extends CI_Controller {    
    public function index(){
        //to create the captcha folder automatically
        $path = './captcha';
        if(!is_dir($path)) {
            mkdir($path);
        } 
        $this->load->model('Admin_model');
        $captcha = $this->Admin_model->_generateCaptcha();
        $this->session->set_userdata('captchaWord', $captcha['word']);
        $this->session->set_userdata('salt',hash('sha256',microtime()));
        $this->load->view('login', $captcha);
    }
    //Performs Login and if successful redirects to scheme picker page
	public function login_MPR(){
        $this->db->cache_off();
        $this->form_validation->set_rules('captcha', "Captcha", 'required');
        $this->form_validation->set_rules('email', 'Username', 'required|valid_email|callback_username_check');
        $this->form_validation->set_rules('pass','Password','required');

        if ($this->form_validation->run() == true) {
            $userCaptcha = $this->input->post('captcha');
            if(strcmp(strtolower($userCaptcha), strtolower($this->session->userdata('captchaWord'))) == 0){
                $this->session->unset_userdata('captchaWord');
                $this->load->helper('file');
                delete_files('./captcha/');
                $this->load->driver('cache',array('adapter' => 'file'));
                $this->load->model('Crud_model');
                $this->load->model('Admin_model');
			    $uname = $this->input->post('email');
			    $hash = $this->input->post('pass');
                $this->db->cache_off();
                $res=$this->Admin_model->findpass($uname);
			    $passInDb =$res->password;
                $hashPassInDb = hash('sha256',$passInDb.$_SESSION['salt']);
			    if($hashPassInDb == $hash){
                    $this->session->set_userdata('uid',$this->input->post('email'));
                    $this->session->set_userdata('logged_in', TRUE);
                    $this->session->set_userdata('location_code',$this->Crud_model->gp_id($this->input->post('email')));
                    $this->session->set_userdata('loginid',$res->Login_id_pk);
                    $this->session->set_userdata('dept',$res->dept_id_fk);
                    $this->Admin_model->store_cache($this->session->userdata('uid'));
                    $this->Admin_model->store_profile($this->session->userdata('uid'));
                    $this->Admin_model->scheme_hier_cache();
                    //checking whether user type cache present or not
                    $var = $this->cache->get('Active_status')['user_type_id_fk'];
                    if(!$this->cache->get('User_type'.$var)){
                        $this->Admin_model->user_type_cache($var);
                    }
                    if($this->cache->get('Active_status')['active_status']==1){
                        $this->Crud_model->audit_upload($this->session->userdata('uid'),
                                                        current_url(),
                                                        'Login',
                                                        'Logging in as '.$this->session->userdata('uid'));
                            //user_type_cache
                        unset($_SESSION['salt']);
                        if($this->Admin_model->check_first_user()==1){
                            echo "http://localhost/NIC/index.php/Login/password_change_first_user";
                        }else
                            echo $this->config->base_url()."index.php/".$this->cache->get('User_type'.$var)['user_privilege'][0]['link'];
                    }else{
                        echo "<p>Access Denied</p>";
                    }
                }
			    else{
                    echo "<p>Invalid Password</p>";
			    }
            }else{
                echo "<p>Invalid Captcha</p>";
            }
        }else{
            echo validation_errors();  
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

    public function forget()
	{
        $this->load->model('Admin_model');
        $this->form_validation->set_rules('email', 'Username', 'required|valid_email|callback_username_check');
        if ($this->form_validation->run() == FALSE)
        {
            echo validation_errors();
            $this->load->view('login-forget');
        }
        else
        {
            $email= $this->input->post('email');
            $subject = "New password request";
		    $body = "Greetings,\nClick on the link below to change your password\n".base_url().index_page()."/Login/password_change/".hash('sha256',now())."/".hash('sha256',$email)."\nHave a nice day!";
            $headers = "From: MPR Portal";
            $xy=mail($email, $subject, $body, $headers);
            if($xy)
                echo "http://localhost/nic/index.php/Login";
            else
                echo "*http://localhost/nic/index.php/Login";
        }
    }
    public function password_change(){
        $this->load->model('Admin_model');
        $var = array('value'=>1);
        $this->form_validation->set_rules('email', 'Username', 'required|valid_email');
        $this->form_validation->set_rules('pass1', 'Password', 'required');
        $this->form_validation->set_rules('pass2', 'Password Confirmation', 'required|matches[pass1]');
        if ($this->form_validation->run() == FALSE)
        {
            echo validation_errors();
            $this->load->view('login_reset',$var);
        }else{
            $enc = $this->uri->segment(4);
            $user=$this->input->post('email');
            $encuser=hash('sha256',$user);
            if($enc==$encuser){
                $password=$this->input->post('pass1');
                $this->Admin_model->update_login($user,$password);
                echo "http://localhost/nic/index.php/Login";
            }else{
                echo "*http://localhost/nic/index.php/Login";
            }
        }
    }

    public function password_change_first_user(){
        $this->load->model('Admin_model');
        $var = array('value'=>2);
        $this->form_validation->set_rules('email', 'Username', 'required|valid_email|callback_username_check');
        $this->form_validation->set_rules('pass1', 'Password', 'required');
        $this->form_validation->set_rules('pass2', 'Password Confirmation', 'required|matches[pass1]');
        if ($this->form_validation->run() == FALSE)
        {
            echo validation_errors();
            $this->load->view('login_reset',$var);
        }else{
            $user=$this->input->post('email');
            $password=$this->input->post('pass1');
            $this->Admin_model->update_login($user,$password);
            $this->Admin_model->update_first_pass($user);
            echo "http://localhost/nic/index.php/Login";
        }
    }

    public function username_check($str)
    {
        $this->load->model('Admin_model');
        if ($this->Admin_model->check_user($str))
        {
            return TRUE;
        }
        else
        {
            $this->form_validation->set_message('username_check', 'This username does not exist');
            return FALSE;
        }
    }
}