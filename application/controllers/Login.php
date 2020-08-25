<?php
/**
 * Landing Page
 *
 *
 * @package		CodeIgniter
 * @category	Controller
 * @author		Riddhinath Ganguly,Sayak Das,Monilekha Ghosh
*/
//Performs all Login related controller works along with captcha, forget password, 
//password change, password change for the first time--------------------------------------------------------------------------------

defined('BASEPATH') OR exit('No direct script access allowed');

class Login extends MY_Controller {   
    
    //loads the login page with a function generated captcha------------------------------------------------------------------------ 
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

    //Performs Login and if successful redirects to scheme picker page--------------------------------------------------------------
	public function login_MPR(){
        $this->db->cache_off();
        $this->load->helper('cookie');
        $this->form_validation->set_rules('captcha', "Captcha", 'required');
        $this->form_validation->set_rules('email', 'Username', 'required|valid_email|callback_username_check');
        $this->form_validation->set_rules('pass','Password','required');
        $csrf_token=$this->security->get_csrf_hash();
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
                    $this->session->set_userdata('loginid',$res->login_id_pk);
                    $this->session->set_userdata('user_type',$res->user_type_id_fk);
                    $this->session->set_userdata('dept',$res->dept_id_fk);
                    $this->session->set_userdata('desig',$res->desig_id_fk);
                    $this->Admin_model->store_cache($this->session->userdata('uid'));
                    $this->Admin_model->store_profile($this->session->userdata('uid'));
                    //$this->Admin_model->dashboard_cache();
                    $this->Admin_model->scheme_hier_cache();
                    
                    //checking whether user type cache present or not
                    $var = $this->cache->get('Active_status'.$this->session->userdata('loginid'))['user_type_id_fk'];
                    if(!$this->cache->get('User_type'.$var)){
                        $this->Admin_model->user_type_cache($var);
                    }
                    if($this->cache->get('Active_status'.$this->session->userdata('loginid'))['active_status']==1 && $this->cache->get('User_type'.$var)['active_status']==1){
                        $this->db->trans_off();
                        $this->db->trans_strict(FALSE);
                        $this->db->trans_start();
                        $this->Crud_model->audit_upload($this->session->userdata('loginid'),
                                                        current_url(),
                                                        'Login',
                                                        'Logging in as '.$this->session->userdata('uid'));
                        $this->db->trans_complete();    
                            //user_type_cache
                        unset($_SESSION['salt']);
                        if($this->Admin_model->check_first_user()==1){
                            $ab=array('csrf_token'=>$csrf_token,'res'=>1,'data'=>$this->config->base_url()."Login/password_change_first_user");
                            echo json_encode($ab);
                        }else
                            $ab=array('csrf_token'=>$csrf_token,'res'=>1,'data'=>$this->config->base_url()."".$this->cache->get('User_type'.$var)['user_privilege'][0]['link']);
                            echo json_encode($ab);
                    }else{
                        $ab=array('csrf_token'=>$csrf_token,'res'=>0,'data'=>"<p>Access Denied</p>");
                        echo json_encode($ab);
                    }
                }
			    else{
                    $ab=array('csrf_token'=>$csrf_token,'res'=>0,'data'=>"<p>Invalid Password</p>");
                    echo json_encode($ab);
			    }
            }else{
                $ab=array('csrf_token'=>$csrf_token,'res'=>0,'data'=>"<p>Invalid Captcha</p>");
                echo json_encode($ab);
            }
        }else{
            $ab=array('csrf_token'=>$csrf_token,'res'=>0,'data'=>validation_errors());
            echo json_encode($ab);  
        }
    }

    //to logout and destroy the session and redirects back to login page----------------------------------------------------------------
    public function logout(){
        if($this->session->userdata('logged_in')=="")
            header("Location: ".$this->config->base_url()."Login");
        else{
            $this->load->model('Crud_model');
            $this->db->trans_off();
            $this->db->trans_strict(FALSE);
            $this->db->trans_start();
            $this->Crud_model->audit_upload($this->session->userdata('loginid'),
                                                current_url(),
                                                'Logout',
                                                'Custom Message here');
            $this->db->trans_complete();
            $this->session->set_userdata('logged_in', FALSE);
            $this->session->sess_destroy();
            redirect(base_url()."Login");
        }
    }

    //loads 'link send to email' page for forget password-------------------------------------------------------------------------------
    public function forget()
	{
        //$this->load->model('Admin_model');
        $this->load->view('login-forget');
    }
    public function forget_submit()
	{
        //$this->load->model('Admin_model');
        $this->form_validation->set_rules('email', 'Username', 'required|valid_email|callback_username_check');
        $csrf_token=$this->security->get_csrf_hash();
        if ($this->form_validation->run() == FALSE)
        {
            $ab=array('csrf_token'=>$csrf_token,'res'=>0,'data'=>validation_errors());
            echo json_encode($ab);
        }
        else
        {
            $email= $this->input->post('email');
            $subject = "New password request";
		    $body = "Greetings,\nClick on the link below to change your password\n".base_url().index_page()."/Login/password_change/".hash('sha256',now())."/".hash('sha256',$email)."\nHave a nice day!";
            $headers = "From: MPR Portal";
            $xy=mail($email, $subject, $body, $headers);
            if($xy){
                $ab=array('csrf_token'=>$csrf_token,'res'=>1,'data'=>$this->config->base_url()."Login");
                echo json_encode($ab);
            }
            else{
                $ab=array('csrf_token'=>$csrf_token,'res'=>1,'data'=>"*".$this->config->base_url()."Login");
                echo json_encode($ab);
            }
        }
    }


    //loads password change page from the hashed link sent to email in forget password------------------------------------------------------
    public function password_change(){
        //$this->load->model('Admin_model');
        $var = array('value'=>1);
        $this->load->view('login_reset',$var);
    }
    public function password_change_submit(){
        $this->load->model('Admin_model');
        $csrf_token=$this->security->get_csrf_hash();
        $this->form_validation->set_rules('email', 'Username', 'required|valid_email');
        $this->form_validation->set_rules('pass1', 'Password', 'required');
        $this->form_validation->set_rules('pass2', 'Password Confirmation', 'required|matches[pass1]');
        if ($this->form_validation->run() == FALSE)
        {
            $ab=array('csrf_token'=>$csrf_token,'res'=>0,'data'=>validation_errors());
            echo json_encode($ab);
        }else{
            $enc = $this->uri->segment(4);
            $user=$this->input->post('email');
            $encuser=hash('sha256',$user);
            if($enc==$encuser){
                $password=$this->input->post('pass1');
                $this->db->trans_off();
                $this->db->trans_strict(FALSE);
                $this->db->trans_start();
                $this->Admin_model->update_login($user,$password);
                $this->db->trans_complete();
                $ab=array('csrf_token'=>$csrf_token,'res'=>1,'data'=>$this->config->base_url()."Login");
                echo json_encode($ab);
            }else{
                $ab=array('csrf_token'=>$csrf_token,'res'=>1,'data'=>"*".$this->config->base_url()."Login");
                echo json_encode($ab);
            }
        }
    }

    //Loads the one time password change page for the users logging in for the first time---------------------------------------------------
    public function password_change_first_user(){
        //$this->load->model('Admin_model');
        $var = array('value'=>2);
        $this->load->view('login_reset',$var);
    }
    public function password_change_first_user_submit(){
        $this->load->model('Admin_model');
        $csrf_token=$this->security->get_csrf_hash();
        $this->form_validation->set_rules('email', 'Username', 'required|valid_email|callback_username_check');
        $this->form_validation->set_rules('pass1', 'Password', 'required');
        $this->form_validation->set_rules('pass2', 'Password Confirmation', 'required|matches[pass1]');
        if ($this->form_validation->run() == FALSE)
        {
            $ab=array('csrf_token'=>$csrf_token,'res'=>0,'data'=>validation_errors());
            echo json_encode($ab);
        }else{
            $user=$this->input->post('email');
            $password=$this->input->post('pass1');
            $this->db->trans_off();
            $this->db->trans_strict(FALSE);
            $this->db->trans_start();
            $this->Admin_model->update_login($user,$password);
            $this->Admin_model->update_first_pass($user);
            $this->db->trans_complete();
            $ab=array('csrf_token'=>$csrf_token,'res'=>1,'data'=>$this->config->base_url()."Login");
            echo json_encode($ab);
        }
    }

    //AJAX function to check whether a user providing username for login exists or not---------------------------------------------------
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

    public function valid_password($password)
	{
        $ret=TRUE;
        $regex_lowercase = '/[a-z]/';
        $regex_special = '/[!@#$%^&*()\-_=+{};:,<.>§~]/';
        $regex_uppercase = '/[A-Z]/';
		$regex_number = '/[0-9]/';
		if (!preg_match_all($regex_special, $password)){
			$this->form_validation->set_message('valid_password', 'The {field} field must have at least one special character.');
			$ret=FALSE;
		}
		else if (!preg_match_all($regex_lowercase, $password)){
			$this->form_validation->set_message('valid_password', 'The {field} field must be at least one lowercase letter.');
			$ret=FALSE;
        }
        else if (!preg_match_all($regex_uppercase, $password)){
			$this->form_validation->set_message('valid_password', 'The {field} field must be at least one uppercase letter.');
			$ret=FALSE;
		}
		else if (!preg_match_all($regex_number, $password)){
			$this->form_validation->set_message('valid_password', 'The {field} field must have at least one number.');
			$ret=FALSE;
		}
		return $ret;
    }
}