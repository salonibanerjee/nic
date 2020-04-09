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
            $data=array("username"=>$this->input->post('email'),"password"=>$this->input->post('password'));
            $this->db->cache_off();
            $query=$this->db->get_where("Login",$data);
            $res=$query->result_array();
            if ($res){
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
                        if($this->Admin_model->check_first_user()==1){
                            header("Location: http://localhost/NIC/index.php/Summary/edit_profile");
                        }else
                            header("Location: ".$this->config->base_url()."index.php/".$this->cache->get('User_type'.$var)['user_privilege'][0]['link']);
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
        } else {
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
}