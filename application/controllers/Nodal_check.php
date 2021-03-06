<?php
/**
 * Child Class
 *
 *
 * @package		CodeIgniter
 * @category	Controller
 * @author		Hriddhi Mondal
*/
//NODAL CHECK PAGE---------------------------------------------------------------------------------------------------------------------
defined('BASEPATH') OR exit('No direct script access allowed');

class Nodal_check extends MY_Controller {

	//loads the nodal check page for the nodal officers----------------------------------------------------------------------------------
	public function index(){	
		if($this->session->userdata('logged_in')=="")
			header("Location: ".$this->config->base_url()."Login");
		$this->cache_update();
		$this->check_privilege(7);
        $this->load->driver('cache',array('adapter' => 'file'));
		$this->load->model('profile_model');
		$this->load->model('Crud_model');
		$this->load->model('NodalCheck_model');
		$this->load->model('Admin_model');
        $da = $this->profile_model->get_profile_info($this->session->userdata('uid'));
        $row = $row = $this->Admin_model->previous_meeting_schedule();
        $this->load->driver('cache',array('adapter' => 'file'));
        $var = $this->cache->get('Active_status'.$this->session->userdata('loginid'))['user_type_id_fk'];
		$u_type = array('var'=>$this->cache->get('Active_status'.$this->session->userdata('loginid'))['user_type_id_fk']);
		$noti = array('meeting'=>$this->profile_model->meeting_notification());
		$noti = array('meeting'=>$this->profile_model->meeting_notification());
		$u_type['notification'] = $noti;
		$u_type['noti1']=$this->profile_model->custom_notification();
		$this->load->view('dashboard/navbar',$u_type);
		$this->load->view('dashboard/sidebar',$da);
        if((strtotime(mdate('%Y-%m-%d %H:%i', now())) >strtotime($row->start_time)) && (strtotime(mdate('%Y-%m-%d %H:%i', now())) < strtotime($row->end_time))){
            ?>
                     <script type=text/javascript>
                        alert("Meeting running");
                        window.location.href = "<?php echo $this->config->base_url();?><?php echo $this->cache->get('User_type'.$var)['user_privilege'][0]['link']?>";
                    </script>
            <?php
		
		} else {
			$result_main['fetch_draft'] = $this->NodalCheck_model->fetch_draft();
			$result_main['draft_name'] = $this->NodalCheck_model->draft_name($result_main['fetch_draft']);
			$result_main['count_check'] = $this->NodalCheck_model->check($result_main['fetch_draft']);
			
			$i = 0;
			foreach($result_main['fetch_draft'] as $row){
				$n1 = str_replace('_draft', '', $row);								
				//Fetch Attribute name. n - schema name
				$result['data'] =$this->Crud_model->get_table($n1);
				$result['draft_data'] = $this->Crud_model->draft_data_fetch($n1."_draft");
				$result['month']=array("NULL","January","February","March","April","May","June","July","August","September","October","November","December");
				$x=$this->Crud_model->get_attri($n1);
				$result['s_name']=array();
				
				foreach($x as $field){
					if($field->name=="id_pk" || $field->name=="login_id_fk" || $field->name=="inserted_at" || $field->name=="ip" || $field->name=='nodal_check'){
						$result['s_name'][]=$this->Crud_model->search_attri($field->name);
						continue;
					}
					$z=$field->max_length;
					$w=$this->Crud_model->get_type($field->type);
					$ij=$this->Crud_model->search_attri($field->name);
					$result['s_name'][]=$ij;
				}

				$result_1[$n1] = $result;
				$i++;
			}

			$result_main['uff'] = $result_1;

			$this->load->view('nodalCheck_view',$result_main);
			$this->db->trans_off();
        	$this->db->trans_strict(FALSE);
        	$this->db->trans_start();
			$this->Crud_model->audit_upload($this->session->userdata('loginid'),
                                                current_url(),
                                                'Nodal Check Page Visited',
												'Custom');
			$this->db->trans_complete();

			if($this->input->post('sub1')=="Accept"){

				$n = $_COOKIE['jvar'];
				$this->db->trans_off();
                $this->db->trans_strict(FALSE);
                $this->db->trans_start();
				$this->Crud_model->audit_upload($this->session->userdata('loginid'),
                                            current_url(),
                                            'Nodal Check Accepted - '.$n,
                                            'Custom Message here');

                $result_main['uff'][$n]['draft_data']->nodal_check=1;
                $this->Crud_model->delete_sub($result_main['uff'][$n]['draft_data']->id_pk,$n.'_draft');
                unset($result_main['uff'][$n]['draft_data']->id_pk);
                if($this->Crud_model->unique_data_entry($n,$result_main['uff'][$n]['draft_data']->session,$result_main['uff'][$n]['draft_data']->month)){
                    $this->Crud_model->update_sub($result_main['uff'][$n]['draft_data'],$n);
                }else{
                    $this->Crud_model->save_data($result_main['uff'][$n]['draft_data'],$n);
                }
				$this->Crud_model->save_data($result_main['uff'][$n]['draft_data'],$n.'_backup');
				$this->db->trans_complete();
				

                ?>
                        <script type=text/javascript>
                            alert("Value accepted");
                            window.location.href = "<?php echo $this->config->base_url();?>Nodal_check";
                        </script>
                <?php
            }
            if($this->input->post('sub2')=="Reject"){
				$n = $_COOKIE['jvar'];
				$this->db->trans_off();
                $this->db->trans_strict(FALSE);
                $this->db->trans_start();
				$this->Crud_model->audit_upload($this->session->userdata('loginid'),
                                            current_url(),
                                            'Nodal Check Rejected - '.$n,
                                            'Custom Message here');

                $result_main['uff'][$n]['draft_data']->nodal_check=0;
                $this->Crud_model->delete_sub($result_main['uff'][$n]['draft_data']->id_pk,$n.'_draft');
                unset($result_main['uff'][$n]['draft_data']->id_pk);
                $this->Crud_model->save_data($result_main['uff'][$n]['draft_data'],$n.'_backup');
				$this->db->trans_complete();
				?>
                        <script type=text/javascript>
                            alert("Value rejected");
                            window.location.href = "<?php echo $this->config->base_url();?>Nodal_check";
                        </script>
                <?php
            }

		}

		$this->load->view('dashboard/footer');
	}
}