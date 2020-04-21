<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class broadcast_notification extends MY_Controller
{
    public function create_notifs(){

        $this->load->driver('cache',array('adapter' => 'file'));
		$u_type = array('var'=>$this->cache->get('Active_status')['user_type_id_fk']);
		$this->load->model('profile_model');
		$noti = array('meeting'=>$this->profile_model->meeting_notification());
		$u_type['notification'] = $noti;
		$u_type['noti1']=$this->profile_model->custom_notification();
		$this->load->view('dashboard/navbar',$u_type);
		$da = $this->profile_model->get_profile_info($this->session->userdata('uid'));
        $this->load->view('dashboard/sidebar',$da);

        $this->form_validation->set_rules('noti_head', 'Notification head', 'required');
        $this->form_validation->set_rules('noti_text', 'Notification text', 'required');
        $this->form_validation->set_rules('audience_id', 'Notification Code', 'required');
        if ($this->form_validation->run() == FALSE)
        {
			echo validation_errors();
			$this->load->view('notify',$u_type);
        }else{
            if($this->session->userdata('schcd') != 19161)
            {
                ?>
                    <script type=text/javascript>
                        alert("You are Not Authorized to Broadcast Notifications");
                        window.location.href = "http://localhost/NIC/index.php/Summary";
                    </script>
                <?php
            }
            else
            {
                $noti_head = $this->input->post('noti_head');
                $noti_text= $this->input->post('noti_text');
                $target_audience=$this->input->post('audience_id');
                $this->profile_model->savenotifs($target_audience,$noti_text,$noti_head);
            }
        }
    }
}