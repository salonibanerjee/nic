<?php
/**
 *Child Class
 *
 *
 * @package		CodeIgniter
 * @category	Controller
 * @author		Riddhinath Ganguly,Sayak Das,Hriddhi Mondal
*/
//performs data entry on the basis of schemes selected by the data entry operator-------------------------------------------------
//only those schemes will be loaded which the DEO has access to-------------------------------------------------------------------
defined('BASEPATH') OR exit('No direct script access allowed');

class Get_table extends MY_Controller {
    //invalid link----------------------------------------------------------------------------------------------------------------
    public function index(){
        show_404();
    }

    //loads the input data entry form , the arguments provides the scheme and loads a dynamic form----------------------------------
    public function load($n=""){
        if($this->session->userdata('logged_in')=="")
			header("Location: ".$this->config->base_url()."Login");
        $this->cache_update();
        $this->check_privilege(5);
        $this->scheme_privilege();
        //Load 'CRUD' model
        $this->load->model('profile_model');
        $this->load->model('Crud_model');
        $this->load->model('Admin_model');
        $this->Crud_model->backup_draft_table($n,'backup');
        $this->Crud_model->backup_draft_table($n,'draft');
        $this->Crud_model->audit_upload($this->session->userdata('loginid'),
                                            current_url(),
                                            'Backup & draft create- '.$n,
                                            'Custom Message here');
        $da = $this->profile_model->get_profile_info($this->session->userdata('uid'));
        $row = $this->Admin_model->previous_meeting_schedule();
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
                        window.location.href = "<?php echo $this->config->base_url();?><?php echo $this->cache->get('User_type'.$var)['user_privilege'][0]['link']?>";
                    </script>
            <?php
        }else{
            //Fetch Attribute name. n - schema name
            $result['n']=$n;
            $result['data'] =$this->Crud_model->get_table($n);
            $result['name'] =$this->Crud_model->search_table($n);
            $result['username'] = $this->session->userdata('uid');
            $result['year_range'] = $this->Crud_model->dba_fyear_range();
            $mon=$this->input->post('modmonth');
            $yr = $this->input->post('modyear');
            if(isset($mon) && isset($yr)){
                if($this->Crud_model->draft_filter($n."_draft",$mon,$yr)==NULL){
                    $arr=array('month'=>$mon,'session'=>$yr);
                    $object = (object) $arr;
                    $result['draft_data']=$object;
                }else{
                    $result['draft_data'] = $this->Crud_model->draft_filter($n."_draft",$mon,$yr);
                } 
            }else{
                $result['draft_data'] = $this->Crud_model->draft_data_fetch($n."_draft");
            }
            $result['profile'] = $da;
            $result['month']=array("NULL","January","February","March","April","May","June","July","August","September","October","November","December");
            $da['flag']=1;
            $da['data_table']=$this->Crud_model->list_table();
            $da['s_name_table']=$this->Crud_model->fullname();
            $this->load->view('dashboard/sidebar',$da);
            #dynamic type checking
            $x=$this->Crud_model->get_attri($n);
            $y=array();
            $result['s_name']=array();
            $result['region']=$this->Crud_model->region_name($this->session->userdata('location_code'));
            $flag=0;
            //setting array for form validations
            foreach($x as $field){
                $result['s_name'][]=$this->Crud_model->search_attri($field->name);
            }
            $this->load->view('get_table',$result);
            $this->db->trans_off();
            $this->db->trans_strict(FALSE);
            $this->db->trans_start();
		    $this->Crud_model->audit_upload($this->session->userdata('loginid'),
                                                current_url(),
                                                'Input Data Page Visited of Scheme'.$n,
												'Custom');
		    $this->db->trans_complete();
        }

        $this->load->view('dashboard/footer');
    }
    //AJAX function for draft data filter for the user currently entering data--------------------------------------------------------
    function submit_draft($n){
        $this->load->model('Crud_model');
        $mon=$this->input->get('modmonth');
        $yr = $this->input->get('modyear');
        if(isset($mon) && isset($yr)){
            $ab=$this->Crud_model->draft_filter($n."_draft",$mon,$yr);
            echo json_encode($ab);
        }else{
            $ab=$this->Crud_model->draft_data_fetch2($n."_draft");
            echo json_encode($ab);
        }
    }

    //AJAX function to perform data entry---------------------------------------------------------------------------------------------
    function submit($n){
        $this->load->driver('cache',array('adapter' => 'file'));
        $this->load->model('Crud_model');
        $result['data'] =$this->Crud_model->get_table($n);
        $result['year_range'] = $this->Crud_model->dba_fyear_range();
        $result['month']=array("NULL","January","February","March","April","May","June","July","August","September","October","November","December");
        $x=$this->Crud_model->get_attri($n);
        $y=array();
        $csrf_token=$this->security->get_csrf_hash();
        foreach($x as $field){
            if($field->name=="id_pk" || $field->name=="login_id_fk" || $field->name=="inserted_at" || $field->name=="ip" || $field->name=='nodal_check'){
                continue;
            }
            if($field->name=="month"){
                if($this->input->post('session')<=$result['year_range']->financial_year_range){
                    $var=$result['year_range']->month;
                    $ij=$this->Crud_model->search_attri($field->name);
                    $y[]=array(
                        'field' => $field->name,
                        'label' => $ij,
                        'rules' => "required|greater_than_equal_to[$var]",
                        'errors'=>array('greater_than_equal_to' => 'The Month should be from on and after '.$result['month'][$var])
                    );
                }
                if($this->input->post('session')>=$year=intval(date('Y'))){
                    $ij=$this->Crud_model->search_attri($field->name);
                    $month=intval(date('n'));
                    $y[]=array(
                        'field' => $field->name,
                        'label' => $ij,
                        'rules' => "required|less_than_equal_to[$month]",
                        'errors'=>array('less_than_equal_to' => 'The Month should be before '.$result['month'][$month])
                    );
                }
            }else{
                $z=$field->max_length;
                $w=$this->Crud_model->get_type($field->type);
                $ij=$this->Crud_model->search_attri($field->name);
                $y[]=array(
                    'field' => $field->name,
                    'label' => $ij,
                    'rules' => "required|max_length[$z]|$w"
                );
            }
        }
        $this->form_validation->set_rules($y);
        if($this->form_validation->run()==TRUE){
            $r=array();
            foreach($result['data'] as $row){
                if($row=="id_pk" || $row=="location_code"){
                    continue;
                }
                $r[$row]=$this->input->post($row);
            }
            $r['login_id_fk'] = $this->cache->get('Active_status'.$this->session->userdata('loginid'))['login_id_pk'];
            $r['inserted_at'] = date('Y-m-d H:i:s');
            $r['ip'] = $this->input->ip_address();
            $r['location_code'] = $this->session->userdata('location_code');
            $r['nodal_check'] = -1;
            $old_value=$this->Crud_model->unique_data_entry($n.'_draft',$r['session'],$r['month']);
            $this->db->trans_off();
            $this->db->trans_strict(FALSE);
            $this->db->trans_start();
            if($old_value){
                $this->Crud_model->update($r,$n.'_draft');
                unset($old_value->id_pk);
                $this->Crud_model->save_data($old_value,$n.'_backup');
                $this->Crud_model->audit_upload($this->session->userdata('loginid'),
                                            current_url(),
                                            'Update - into '.$n.'_draft',
                                            'Custom Message here');
            }else{
                $this->Crud_model->save_data($r,$n.'_draft');
                $this->Crud_model->audit_upload($this->session->userdata('loginid'),
                                            current_url(),
                                            'Insert - into '.$n.'_draft',
                                            'Custom Message here');
            }
            //commit and rollback
            $this->db->trans_complete();
            $ab=array('csrf_token'=>$csrf_token,'res'=>1);
            echo json_encode($ab);
        }else{
            $ab=array('res'=>0,'errors'=>validation_errors(),'csrf_token'=>$csrf_token);
            echo json_encode($ab);
        }
    }
}