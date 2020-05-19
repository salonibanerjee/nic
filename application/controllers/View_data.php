<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class View_data extends MY_Controller {
    public function index(){

    }

    public function load($n){

        //Load 'CRUD' model
        $this->load->model('profile_model');
        $this->load->model('Crud_model');
        $this->load->model('Admin_model');
        $this->Crud_model->backup_draft_table($n,'backup');
        $this->Crud_model->backup_draft_table($n,'draft');
        $this->Crud_model->audit_upload($this->session->userdata('loginid'),
                                            current_url(),
                                            'View tables- '.$n,
                                            'Custom Message here');

        $da = $this->profile_model->get_profile_info($this->session->userdata('uid'));
        $row = $row = $this->Admin_model->previous_meeting_schedule();
        $this->load->driver('cache',array('adapter' => 'file'));
        $var = $this->cache->get('Active_status'.$this->session->userdata('loginid'))['user_type_id_fk'];
        $u_type = array('var'=>$this->cache->get('Active_status'.$this->session->userdata('loginid'))['user_type_id_fk']);
        $noti = array('meeting'=>$this->profile_model->meeting_notification());
		$u_type['notification'] = $noti;
		$u_type['noti1']=$this->profile_model->custom_notification();
        $this->load->view('dashboard/navbar',$u_type);
        if((strtotime(mdate('%Y-%m-%d %H:%i', now())) >strtotime($row->start_time)) && (strtotime(mdate('%Y-%m-%d %H:%i', now())) < strtotime($row->end_time))){
            ?>
                     <script type=text/javascript>
                        alert("Meeting running");
                        window.location.href = "http://localhost/NIC/index.php/<?php echo $this->cache->get('User_type'.$var)['user_privilege'][0]['link']?>";
                    </script>
            <?php
        }else{

            //Fetch Attribute name. n - schema name
            $result['data'] =$this->Crud_model->get_table($n);
            $result['name'] =$this->Crud_model->search_table($n);
            $result['data_table']=$this->Crud_model->list_table();
            $result['s_name_table']=$this->Crud_model->fullname();
            $result['username'] = $this->session->userdata('uid');
            $result['year_range'] = $this->Crud_model->dba_fyear_range();
            //new added for table show
            $result['main_data'] = $this->Crud_model->data_fetch($n);
            //$this->form_validation->set_rules('modmonthst', 'Starting Month', 'required');
            //$this->form_validation->set_rules('modmonthend', 'Ending Month', 'required|greater_than_equal_to[modmonthst]');
            if (isset($_POST['filter_sub'])){
                    $s_month = $this->input->post('modmonthst');
                    $e_month = $this->input->post('modmonthend');
                    $yr = $this->input->post('modyear');
                    $result['main_data']=$this->Crud_model->filter_data($n,$s_month,$e_month,$yr);
            }
            $result['profile'] = $da;
            $result['month']=array("NULL","January","February","March","April","May","June","July","August","Semptember","October","November","December");
            if($da['flag']==0){
                $da['flag']=1;
                $da['data_table']=$result['data_table'];
                $da['s_name_table']=$result['s_name_table'];
            }
            $this->load->view('dashboard/sidebar',$da);
            #dynamic type checking
            $x=$this->Crud_model->get_attri($n);
            $result['s_name']=array();
            $flag=0;
            //setting array for form validations
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
            $this->load->view('data_view',$result);
        }
    }
}