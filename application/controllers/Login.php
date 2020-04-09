<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Login extends CI_Controller {    
    public function index(){
        //to create the captcha folder automatically
        $path = './captcha';
        if(!is_dir($path)) {
            mkdir($path);
        } 
        $captcha = $this->_generateCaptcha();
        $this->session->set_userdata('captchaWord', $captcha['word']);
        $_SESSION['salt'] = hash('sha256',microtime());
        $this->load->view('login', $captcha);
    }

    //Performs Login and if successful redirects to scheme picker page
	public function login_MPR(){
        $this->db->cache_off();
        $this->form_validation->set_rules('captcha', "Captcha", 'required');
        $userCaptcha = $this->input->post('captcha');

        if ($this->form_validation->run() == true && strcmp(strtolower($userCaptcha), strtolower($this->session->userdata('captchaWord'))) == 0) {
            $this->session->unset_userdata('captchaWord');
            $this->load->helper('file');
            delete_files('./captcha/');

            $this->load->driver('cache',array('adapter' => 'file'));
            $this->load->model('Crud_model');
            $this->load->model('Admin_model');
			$uname = $this->input->post('email');
			$hash = $this->input->post('pass');
			//$salt = substr($hash, -64);
			//$pass = substr($hash, 0, -64);
            $data=array("username"=>$uname);
            $this->db->cache_off();
            $query=$this->db->get_where("Login",$data);
            $res=$query->result_array();
			$passInDb = "";
            if ($res){
				foreach($res as $r){
					$passInDb =$r['password'];
					
				}
                $hashPassInDb = hash('sha256',$passInDb.$_SESSION['salt']);
				if($hashPassInDb == $hash){
                    $this->session->set_userdata('uid',$this->input->post('email'));
                    $this->session->set_userdata('logged_in', TRUE);
                    $this->session->set_userdata('gp_id',$this->Crud_model->gp_id($this->input->post('email')));
                    $this->Admin_model->store_cache($this->session->userdata('uid'));
                    $this->Admin_model->store_profile($this->session->userdata('uid'));
                    //checking whether user type cache present or not
                    $var = $this->cache->get('Active_status')['user_type_id_fk'];
                    if(!$this->cache->get('User_type'.$var)){
                        $this->Admin_model->user_type_cache();
                    }

                    if($this->cache->get('Active_status')['active_status']==1){
                    $this->Crud_model->audit_upload($this->session->userdata('uid'),
                                                        current_url(),
                                                        'Login',
                                                        'Logging in as '.$this->session->userdata('uid'));
                        //user_type_cache
                        unset($_SESSION['salt']);
                        if($this->Admin_model->check_first_user()==1){
                            header("Location: http://localhost/NIC/index.php/Login/password_change_first_user");
                        }else
                            header("Location: ".$this->config->base_url()."index.php/".$this->cache->get('User_type'.$var)['user_privilege'][0]['link']);
                    }else{
						unset($_SESSION['salt']);
                        $_SESSION['salt'] = hash('sha256',microtime());
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
					unset($_SESSION['salt']);
                    $_SESSION['salt'] = hash('sha256',microtime());	
					?>
						<script type=text/javascript>
							alert("Invalid Password");
							window.location.href = "http://localhost/NIC/index.php/Login";
							//windows.history.go(-2);
						</script>
					<?php
				}			
            }
            else{
				unset($_SESSION['salt']);
                $_SESSION['salt'] = hash('sha256',microtime());		
                ?>
                    <script type=text/javascript>
                        alert("Invalid Username");
                        window.location.href = "http://localhost/NIC/index.php/Login";
                        //windows.history.go(-2);
                    </script>
                <?php
            }
        } else {
			unset($_SESSION['salt']);
            $_SESSION['salt'] = hash('sha256',microtime());
						
            $captcha = $this->_generateCaptcha();
            $this->session->set_userdata('captchaWord', $captcha['word']);
            
            ?>
                <script type=text/javascript>
                    alert("Invalid captcha...");
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

    private function _generateCaptcha(){
        $vals = array(
            'word'          => rand(1000, 9999),
            //'word'          => $this->getName(5,8),
            'img_path'      => './captcha/',
            'img_url'       => 'http://localhost/NIC/captcha/',
            'font_path'     => './path/to/fonts/texb.ttf',
            'img_width'     => '200',
            'img_height'    => 40,
            'expiration'    => 7200,
            'word_length'   => 8,
            'font_size'     => 50,
            'img_id'        => 'Imageid',
            'pool'          => '0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ',
    
            // White background and border, black text and red grid
            'colors'        => array(
                    'background' => array(255, 255, 255),
                    'border' => array(255, 255, 255),
                    'text' => array(0, 0, 0),
                    'grid' => array(51, 153, 255)
            )
        );
        /* Generate the captcha */
        return create_captcha($vals);
    }

    public function getName($x,$y) {
        $length = rand($x,$y);
        $characters = '0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ';
        $randomString = '';
    
        for ($i = 0; $i < $length; $i++) {
            $randomString .= $characters[rand(0, strlen($characters) - 1)];
        }
    
        return $randomString;
    }

    public function forget()
	{
        $this->load->model('Admin_model');
        $this->form_validation->set_rules('email', 'Username', 'required|valid_email|callback_username_check');
        if ($this->form_validation->run() == FALSE)
        {
            $this->load->view('login-forget');
        }
        else
        {
            if($this->input->post('sub')){
                $email= $this->input->post('email');
                $subject = "New password request";
	    	    $body = "Greetings,\nClick on the link below to change your password\n".base_url().index_page()."/Login/password_change/".hash('sha256',now())."/".hash('sha256',$email)."\nHave a nice day!";
                $headers = "From: MPR Portal";
                $xy=mail($email, $subject, $body, $headers);
                if ($xy)
	    	    {
		    	    ?>
                        <script type=text/javascript>
                            alert("Success. New Password sent to your registered email !");
                            window.location.href = "http://localhost/nic/index.php/Login";
                        </script>
                    <?php
		        }
                else
                {
			        ?>
                        <script type=text/javascript>
                            alert("Could not send recovery email");
                            window.location.href = "http://localhost/nic/index.php/Login";
                        </script>
                    <?php
                }
            }
        }
    }
    public function password_change(){
        $this->load->model('Admin_model');
        //echo now()."<br>";
        //echo now()+4000;
        $this->form_validation->set_rules('email', 'Username', 'required|valid_email');
        $this->form_validation->set_rules('pass1', 'Password', 'required');
        $this->form_validation->set_rules('pass2', 'Password Confirmation', 'required|matches[pass1]');
        if ($this->form_validation->run() == FALSE)
        {
            $this->load->view('login_reset');
        }else{
            $enc = $this->uri->segment(4);
            $user=$this->input->post('email');
            $encuser=hash('sha256',$user);
            if($this->input->post('sub2')){
                if($enc==$encuser){
                    $password=hash('sha256',$this->input->post('pass1'));
                    $this->Admin_model->update_login($user,$password);
                    ?>
                        <script type=text/javascript>
                            alert("Password succesfully changed...");
                            window.location.href = "http://localhost/nic/index.php/Login";
                        </script>
                    <?php
                }else{
                    ?>
                        <script type=text/javascript>
                            alert("Access denied...");
                            window.location.href = "http://localhost/nic/index.php/Login";
                        </script>
                    <?php
                }
            }
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

    public function password_change_first_user(){
        $this->load->model('Admin_model');
        //echo now()."<br>";
        //echo now()+4000;
        $this->form_validation->set_rules('email', 'Username', 'required|valid_email|callback_username_check');
        $this->form_validation->set_rules('pass1', 'Password', 'required');
        $this->form_validation->set_rules('pass2', 'Password Confirmation', 'required|matches[pass1]');
        if ($this->form_validation->run() == FALSE)
        {
            $this->load->view('login_reset');
        }else{
            $user=$this->input->post('email');
            $encuser=hash('sha256',$user);
            if($this->input->post('sub2')){
                    $password=hash('sha256',$this->input->post('pass1'));
                    $this->Admin_model->update_login($user,$password);
                    $this->Admin_model->update_first_pass($user);
                    ?>
                        <script type=text/javascript>
                            alert("First Time password succesfully changed...");
                            window.location.href = "http://localhost/nic/index.php/Login";
                        </script>
                    <?php
            }
        }
    }
}