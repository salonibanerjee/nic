<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Super_Admin extends CI_Controller {
    public function index(){

    }
    
    public function meeting_schedule(){
		$this->load->driver('cache',array('adapter' => 'file'));
		$this->load->model('profile_model');
		$da = $this->profile_model->get_profile_info($this->session->userdata('uid'));
		//$this->load->view('dashboard/navbar');
		$u_type = array('var'=>$this->cache->get('Active_status')['user_type_id_fk']);
		$noti = array('meeting'=>$this->profile_model->meeting_notification());
		$noti = array('meeting'=>$this->profile_model->meeting_notification());
		$u_type['notification'] = $noti;
		$u_type['noti1']=$this->profile_model->custom_notification();
		$this->load->view('dashboard/navbar',$u_type);
		$this->load->view('dashboard/sidebar',$da);
        $this->load->model('Admin_model');
        $row = $this->Admin_model->previous_meeting_schedule();
        $data=array(
                'start_time'=> mdate('%Y-%M-%d %H:%i',strtotime('+2 hours', strtotime( $row->start_time ))),
                'end_time'=> mdate('%Y-%M-%d %H:%i',strtotime('-2 hours', strtotime( $row->end_time ))),
			);
		$this->load->view('schedule',$data);
		
		if(isset($_POST['sub'])){
			$span = $this->input->post('date');
			$start_time = substr($span,0,16);
			$end_time=substr($span,19,35);
			
            //2hours relaxation on the provided time
            $start_time= mdate('%Y-%m-%d %H:%i',strtotime('-2 hours', strtotime( $start_time )));
            $end_time= mdate('%Y-%m-%d %H:%i',strtotime('+2 hours', strtotime( $end_time )));
			$data=array(
				'start_time'=> $start_time,
				'end_time'=> $end_time
			);
			$this->Admin_model->meeting_schedule($data);
			$this->load->view('schedule',$data);
		}
    }
    
    public function notification(){

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
            if($this->session->userdata('location_code') != 19161)
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