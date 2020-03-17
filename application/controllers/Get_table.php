<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Get_table extends CI_Controller {
    //loads the Main login page
    public function index(){
		$this->load->view('login');
    }

    //loads the scheme picker page
	public function ind(){
        /* if ($this->session->userdata['logged_in'] == TRUE){
            //do something
        }
        else{
            ?>
                <script type=text/javascript>
                    alert("Session Timed Out...");
                    window.location.href = "https://localhost/NIC/index.php/Get_table/";
                </script>
            <?php
            //redirect(base_url()."index.php/Get_table/"); //if session is not there, redirect to login page
        }  */
        $this->load->view('header');
        $this->load->model('Crud_model');
        $result1['data']=$this->Crud_model->list_table();
        $result1['s_name']=$this->Crud_model->fullname();
        $this->load->view('ori',$result1);
        if(isset($_POST['selectPage'])){
            $requestpage=$_POST['selectPage'];
            $this->Crud_model->audit_upload($this->session->userdata('uid'),
                                            current_url(),
                                            'Select Form - '.$requestpage,
                                            'Custom Message here');
            $r="Location: load1/".$requestpage;
            header($r);
        }
    }
    public function load1($n)
    {
        //$this->load->view('header'); 
        //Load 'CRUD' model
        $this->load->model('Crud_model');

        //Fetch Attribute name. n - schema name
        $result['data'] =$this->Crud_model->get_table($n);
        $result['name'] =$this->Crud_model->search_table($n);
        $result['data_table']=$this->Crud_model->list_table();
        $result['s_name_table']=$this->Crud_model->fullname();
        $result['username'] = $this->session->userdata('uid');
        
        #dynamic type checking
        $x=$this->Crud_model->get_attri($n);
        $y=array();
        $result['s_name']=array();

        //setting array for form validations
        foreach($x as $field){
            if($field->name=="id" || $field->name=="user" || $field->name=="tstamp" || $field->name=="ip" ||$field->name=='gp_id'){
                $result['s_name'][]=$this->Crud_model->search_attri($field->name);
                continue;
            }
            $z=$field->max_length;
            $w=$this->Crud_model->get_type($field->type);
            $ij=$this->Crud_model->search_attri($field->name);
            $result['s_name'][]=$ij;
            if($field->name=="session"){
                $ik="is_unique[".$n.".session]";
                $y[]=array(
                    'field' => $field->name,
                    'label' => $ij,
                    'rules' => $ik,
                    'errors' => array('is_unique'=>'This %s already exists.')
                );
            }
            else{
                $y[]=array(
                    'field' => $field->name,
                    'label' => $ij,
                    'rules' => "required|max_length[$z]|$w"
                );
            }
        }
        $this->form_validation->set_rules($y);
        //checking form validation
        if($this->form_validation->run()==FALSE){
            $this->load->view('get_table',$result);
            //submitting form while updating data
            if($this->input->post('save')=='Update data'){
                $r=array();
                foreach($result['data'] as $row){
                    if($row=="id"){
                        continue;
                    }
                    if($this->input->post($row)!==''){
                        $r[$row]=$this->input->post($row);
                    }
                }
                $r['user'] = $this->session->userdata('uid');
                $r['tstamp'] = date('Y-m-d H:i:s');
                $r['ip'] = $this->input->ip_address();
                $r['gp_id'] = $this->session->userdata('gp_id');
                $this->Crud_model->update($r,$n);
                $this->Crud_model->audit_upload($this->session->userdata('uid'),
                                            current_url(),
                                            'Update - '.$n,
                                            'Custom Message here');
                $this->Crud_model->backup_table($n);
                $this->Crud_model->audit_upload($this->session->userdata('uid'),
                                            current_url(),
                                            'Backup - '.$n,
                                            'Custom Message here');
                $data_b = $this->Crud_model->get($n,$r['session']);
                unset($data_b->id);
                $this->Crud_model->save_data($data_b,$n."_backup"); 
                //commit and rollback
                if($this->db->trans_status()==FALSE)
                    $this->db->trans_rollback();
                else
                    $this->db->trans_commit();
                ?>
                     <script type=text/javascript>
                        alert("Updated Successfully...");
                        window.location.href = "https://localhost/NIC/index.php/Get_table/ind";
                    </script>
                <?php
            }
        }
        else
        {
            #Submitting form while saving data
            if($this->input->post('save'))
            {
                $r=array();
                foreach($result['data'] as $row){
                    if($row=="id"){
                        continue;
                    }
                    $r[$row]=$this->input->post($row);
                }
                $r['user'] = $this->session->userdata('uid');
                $r['tstamp'] = date('Y-m-d H:i:s');
                $r['ip'] = $this->input->ip_address();
                $r['gp_id'] = $this->session->userdata('gp_id');
                $this->Crud_model->save_data($r,$n);
                $this->Crud_model->audit_upload($this->session->userdata('uid'),
                                            current_url(),
                                            'Insert - '.$n,
                                            'Custom Message here');
                $this->Crud_model->backup_table($n);
                $this->Crud_model->save_data($r,$n."_backup");
                $this->Crud_model->audit_upload($this->session->userdata('uid'),
                                            current_url(),
                                            'Backup - '.$n,
                                            'Custom Message here');
                echo "Records Saved Successfully";

                //commit and rollback
                if($this->db->trans_status()==FALSE)
                    $this->db->trans_rollback();
                else
                    $this->db->trans_commit();
                ?>
                     <script type=text/javascript>
                        alert("Saved Successfully...");
                        window.location.href = "https://localhost/NIC/index.php/Get_table/ind";
                    </script>
                <?php
            }
        }
    }

    //Performs Login and if successful redirects to scheme picker page
	public function logindo(){
        //$this->session->sess_destroy();//********************************************************** */
        $this->load->model('Crud_model');
  		$data=array("email"=>$this->input->post('email'),"password"=>$this->input->post('password'));
  		$query=$this->db->get_where("login",$data);
  		$res=$query->result_array();
    	if ($res){
  	  			echo "Login Successful";
                $this->session->set_userdata('uid',$this->input->post('email'));
                $this->session->set_userdata('logged_in', TRUE);
                $this->session->set_userdata('gp_id',$this->Crud_model->gp_id($this->input->post('email')));
                
                $this->Crud_model->audit_upload($this->session->userdata('uid'),
                                            current_url(),
                                            'Login',
                                            'Logging in as '.$this->session->userdata('uid'));
      			
	  			header("Location: ./ind");
			}
    		else{
                ?>
                     <script type=text/javascript>
                        alert("Invalid Username or Password...");
                        window.location.href = "./";
                    </script>
                <?php
            }
    }

    //to logout and destroy the session and redirects back to login page
    public function log34(){
        $this->load->model('Crud_model');
        $this->Crud_model->audit_upload($this->session->userdata('uid'),
                                            current_url(),
                                            'Logout',
                                            'Custom Message here');
        $this->session->set_userdata('logged_in', FALSE);
        $this->session->sess_destroy();
        redirect(base_url()."index.php/Get_table/");
    }

    public function register(){
        $this->load->view('reg_view.php');
    }

    public function reg_do(){
        $uname = $this->input->post('uname');
        $pass = $this->input->post('password');
        $desg = $this->input->post('desg');
        $gp_id = $this->input->post('gp_id');

        $data = array(
            'email' => $uname,
            'password' => $pass,
            'designation_supplied' => $desg,
            'gp_id' => $gp_id,
        );

        $this->db->insert('login',$data);
        if($this->db->trans_status()==FALSE)
            $this->db->trans_rollback();
        else{
            $this->db->trans_commit();
            redirect(base_url()."index.php/Get_table/");
        }

    }

}