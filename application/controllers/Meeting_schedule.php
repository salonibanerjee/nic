<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Meeting_schedule extends CI_Controller {
    public function index(){
        echo mdate('%Y-%m-%d %H:%i',NOW());
		$this->load->driver('cache',array('adapter' => 'file'));
		$this->load->model('profile_model');
		$da = $this->profile_model->get_profile_info($this->session->userdata('uid'));
		$this->load->view('dashboard/navbar');
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
			$start_time = substr($span,1,16);
            $end_time=substr($span,22,-1);
            //2hours relaxation on the provided time
            $start_time= mdate('%Y-%m-%d %H:%i',strtotime('-2 hours', strtotime( $start_time )));
            $end_time= mdate('%Y-%m-%d %H:%i',strtotime('+2 hours', strtotime( $end_time )));
			$data=array(
				'start_time'=> $start_time,
				'end_time'=> $end_time
			);
			$this->Admin_model->meeting_schedule($data);
			?>
				<script type=text/javascript>
                    alert("Scheduled Successfully...");
                    windows.location.href="http://localhost/NIC/index.php/Meeting_schedule";
                </script>
			<?php
		}
	}

}