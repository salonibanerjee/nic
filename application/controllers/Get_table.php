<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Get_table extends MY_Controller {
    public function index(){

    }

    public function load($n){
        $this->check_privilege(3);


        //Load 'CRUD' model
        $this->load->model('profile_model');
        $this->load->model('Crud_model');
        $this->Crud_model->backup_draft_table($n,'backup');
        $this->Crud_model->backup_draft_table($n,'draft');
        $this->Crud_model->audit_upload($this->session->userdata('uid'),
                                            current_url(),
                                            'Backup & draft create- '.$n,
                                            'Custom Message here');

        $da = $this->profile_model->get_profile_info($this->session->userdata('uid'));
        $query = $this->db->get_where('meeting_schedule', array('meeting_id_pk' => 1));
        $row = $query->row();
        $this->load->driver('cache',array('adapter' => 'file'));
        $var = $this->cache->get('Active_status')['user_type_id_fk'];
        $u_type = array('var'=>$this->cache->get('Active_status')['user_type_id_fk']);
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
            $result['draft_data'] = $this->Crud_model->draft_data_fetch($n."_draft");
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
            $y=array();
            $result['s_name']=array();
            $result['region']=$this->Crud_model->region_name($this->session->userdata('schcd'));
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

                $y[]=array(
                    'field' => $field->name,
                    'label' => $ij,
                    'rules' => "required|max_length[$z]|$w"
                );
            }

            $this->form_validation->set_rules($y);

            if($this->form_validation->run()==TRUE){
                #Submitting form while saving data
                //if($this->input->post('save')){
                    $r=array();
                    foreach($result['data'] as $row){
                        if($row=="id_pk" || $row=="schcd"){
                            continue;
                        }
                        $r[$row]=$this->input->post($row);
                    }
                    $r['login_id_fk'] = $this->cache->get('Active_status')['Login_id_pk'];
                    $r['inserted_at'] = date('Y-m-d H:i:s');
                    $r['ip'] = $this->input->ip_address();
                    $r['schcd'] = $this->session->userdata('schcd');
                    $r['nodal_check'] = -1;
                    $old_value=$this->Crud_model->unique_data_entry($n.'_draft',$r['session'],$r['month']);
                    if($old_value){
                        $this->Crud_model->update($r,$n.'_draft');
                        unset($old_value->id_pk);
                        $this->Crud_model->save_data($old_value,$n.'_backup');
                        $this->Crud_model->audit_upload($this->session->userdata('uid'),
                                                    current_url(),
                                                    'Update - into '.$n.'_draft',
                                                    'Custom Message here');
                        //echo "Updated Successfully";
                    }else{
                        $this->Crud_model->save_data($r,$n.'_draft');
                        $this->Crud_model->audit_upload($this->session->userdata('uid'),
                                                    current_url(),
                                                    'Insert - into '.$n.'_draft',
                                                    'Custom Message here');
                        //echo "Records Saved Successfully";
                    }

                    //commit and rollback
                    if($this->db->trans_status()==FALSE)
                        $this->db->trans_rollback();
                    else{
                        $this->db->trans_commit();
                    }
                //}
            }else{
                $this->load->view('get_table',$result);
                echo validation_errors();
            }
        }
    }
}