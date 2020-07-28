<?php
defined('BASEPATH') OR exit('No direct script access allowed');
class contact extends MY_Controller {
    public function index(){
        if($this->session->userdata('logged_in')==""){
			header("Location: http://localhost/NIC/index.php/Login");
			exit;
		}
		$this->cache_update();
        $this->check_privilege(21);
		$this->load->model('Crud_model');
		//mandatory requirements for pages loading nav and sidebar
		$this->load->driver('cache',array('adapter' => 'file'));
		$u_type = array('var'=>$this->cache->get('Active_status'.$this->session->userdata('loginid'))['user_type_id_fk']);
		$this->load->model('profile_model');
		$noti = array('meeting'=>$this->profile_model->meeting_notification());
		$u_type['notification'] = $noti;
		$u_type['noti1']=$this->profile_model->custom_notification();
		$this->load->view('dashboard/navbar',$u_type);
		$da = $this->profile_model->get_profile_info($this->session->userdata('uid'));
		$this->load->view('dashboard/sidebar',$da);
		//mandatory requirements end
		$this->load->view('contact');
		$this->load->view('dashboard/footer');
    }
    public function send(){
		$this->load->model('Sup_admin');
        $this->load->model('Crud_model');
        $this->load->model('profile_model');
		$csrf_token=$this->security->get_csrf_hash();
		$this->form_validation->set_rules('name', 'Name', 'required');
        $this->form_validation->set_rules('email', 'Email ID', 'required');
        $this->form_validation->set_rules('star', 'Rating', 'required');
        $this->form_validation->set_rules('text', 'Issue Description', 'required');
		if ($this->form_validation->run() == FALSE){
			$ab=array('res'=>0,'errors'=>validation_errors(),'csrf_token'=>$csrf_token);
            echo json_encode($ab);
        }else{
            $name=$this->input->post('name');
            $email=$this->input->post('email');
            $rating=$this->input->post('star');
            $description=$this->input->post('text');
			$this->db->trans_off();
            $this->db->trans_strict(FALSE);
            $this->db->trans_start();
            if($this->profile_model->save_issues($name,$email,$rating,$description)){
                $this->Crud_model->audit_upload($this->session->userdata('loginid'),
                                                current_url(),
                                                'Issues Raised',
                                                'Custom');
            }
			$this->db->trans_complete();
			$ab=array('csrf_token'=>$csrf_token,'res'=>1);
            echo json_encode($ab);
		}
	}

}