<?php
defined('BASEPATH') OR exit('No direct script access allowed');
class Fund extends MY_Controller {
    public function index(){
		if($this->session->userdata('logged_in')=="")
			header("Location: http://localhost/NIC/index.php/Login");
		$this->cache_update();
        $this->check_privilege(1);
        $this->load->driver('cache',array('adapter' => 'file'));
		$u_type = array('var'=>$this->cache->get('Active_status'.$this->session->userdata('loginid'))['user_type_id_fk']);
		$this->load->model('profile_model');
		$noti = array('meeting'=>$this->profile_model->meeting_notification());
		$u_type['notification'] = $noti;
		$u_type['noti1']=$this->profile_model->custom_notification();
		$this->load->view('dashboard/navbar',$u_type);
		$da = $this->profile_model->get_profile_info($this->session->userdata('uid'));
		$this->load->view('dashboard/sidebar',$da);
        $this->load->model('Sup_admin');
        $resloc=$this->Sup_admin->location_data();
        //print_r($resloc);
        //echo("<br>");
        //echo("<br>");
        //echo("<br>");
        $resscheme=$this->Sup_admin->search_table();
        //print_r($resscheme);
        $data["loc"]=$resloc;
        $data["scheme"]=$resscheme;
        $data['funds']=$this->Sup_admin->fetch_funds();
        $this->load->view('fund',$data);
        $this->load->view('dashboard/footer');
    }
    public function fund_submit(){
        $this->load->model('Sup_admin');
        $this->load->model('Crud_model');
        $csrf_token=$this->security->get_csrf_hash();
        $validate = array(
            array(
                    'field' => 'funa',
                    'label' => 'Funds Allocated',
                    'rules' => 'required|numeric|max_length[15]',
                    'errors' => array(
                            'required' => 'You must provide a value in %s.',
                    )
            ),
            array(
                    'field' => 'funu',
                    'label' => 'Funds Utilised',
                    'rules' => 'required|numeric|max_length[15]',
                    'errors' => array(
                            'required' => 'You must provide a value in %s.',
                    )
            ),
            array(
                'field' => 'thsd',
                'label' => 'Funds Threshold Percentage',
                'rules' => 'required|numeric|max_length[3]',
                'errors' => array(
                        'required' => 'You must provide a value in %s.',
                )
            )
                    );
        $this->form_validation->set_rules($validate);
        if ($this->form_validation->run() == FALSE){
            $ab=array('res'=>0,'errors'=>validation_errors(),'csrf_token'=>$csrf_token);
            echo json_encode($ab);
        }else{
            $data['scheme_id_fk'] = $this->input->post('scheme');
            $data['funds_allocated'] = $this->input->post('funa');
            $data['funds_utilised'] = $this->input->post('funu');
            $data['location_id_fk'] = $this->input->post('loc');
            $data['threshold'] = $this->input->post('thsd');
            $this->db->trans_off();
            $this->db->trans_strict(FALSE);
            $this->db->trans_start();
            $res=$this->Sup_admin->funds_table($data);
            $this->Crud_model->audit_upload($this->session->userdata('loginid'),
                                            current_url(),
                                            'Funds Inserted',
                                            'Custom Message here');
            $this->db->trans_complete();
            $ab=array('csrf_token'=>$csrf_token,'res'=>1);
            echo json_encode($ab);
        }
    }
}