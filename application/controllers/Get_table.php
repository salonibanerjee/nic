<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Get_table extends CI_Controller {

	public function ind()
	{
        $this->load->view('header');
        $this->load->model('Crud_model');
        $result1['data']=$this->Crud_model->list_table();
        $result1['s_name']=$this->Crud_model->fullname();
        $this->load->view('ori',$result1);
        if(isset($_POST['sub1'])){
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
        $this->load->view('header');
       //Load 'CRUD' model
       $this->load->model('Crud_model');

       //Fetch Attribute name. n - schema name
       $result['data'] =$this->Crud_model->get_table($n);
       $result['name'] =$this->Crud_model->search_table($n);
        
       #dynamic type checking
       $x=$this->Crud_model->get_attri($n);
       $y=array();
       $result['s_name']=array();
       foreach($x as $field){
            if($field->name=="id" || $field->name=="user" || $field->name=="tstamp" || $field->name=="ip"){
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
       
       if($this->form_validation->run()==FALSE){
            #Load view
            $this->load->view('get_table',$result);
            if($this->input->post('save') && ($this->input->post('hid')!="")){
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
                
                //$this->load->view('success');
                redirect("https://localhost/NIC/index.php/Get_table/ind");
            }
       }
       else
       {
            #Submitting form
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
                redirect("https://localhost/NIC/index.php/Get_table/ind");
            }
        }
    }
    public function index(){
			//$this->load->view('header');
			$this->load->view('login');
    }
	public function logindo(){
        $this->load->model('Crud_model');
  		$data=array("email"=>$this->input->post('email'),"password"=>$this->input->post('password'));
  		$query=$this->db->get_where("login",$data);
  		$res=$query->result_array();
    	if ($res){
  	  			echo "Login Successful";
                $this->session->set_userdata('uid',$this->input->post('email'));
                
                $this->Crud_model->audit_upload($this->session->userdata('uid'),
                                            current_url(),
                                            'Login',
                                            'Logging in as '.$this->session->userdata('uid'));
      			
	  			header("Location: ./ind");
			}
    		else{
                echo "Invalid Name";
            }  
    }
    
    public function log34(){
        $this->load->model('Crud_model');
        $this->Crud_model->audit_upload($this->session->userdata('uid'),
                                            current_url(),
                                            'Logout',
                                            'Custom Message here');
        $this->session->sess_destroy();
        redirect(base_url()."index.php/Get_table/");
    }
}