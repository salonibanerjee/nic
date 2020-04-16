<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class data_view extends MY_Controller {
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
            //new added for table show
            $result['backup_data'] = $this->Crud_model->backup_data_fetch($n."_backup");
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
            }
            $this->load->view('data_view',$result);
            /*if($this->input->post('sub1')=="Accept"){
                $result['draft_data']->nodal_check=1;
                $this->Crud_model->delete_sub($result['draft_data']->id_pk,$n.'_draft');
                unset($result['draft_data']->id_pk);
                if($this->Crud_model->unique_data_entry($n,$result['draft_data']->session,$result['draft_data']->Month)){
                    $this->Crud_model->update_sub($result['draft_data'],$n);
                }else{
                    $this->Crud_model->save_data($result['draft_data'],$n);
                }
                $this->Crud_model->save_data($result['draft_data'],$n.'_backup');
                ?>
                        <script type=text/javascript>
                            alert("Value accepted");
                            window.location.href = "http://localhost/NIC/index.php/Sample_d/load/<?php echo $n ?>";
                        </script>
                <?php
            }
            if($this->input->post('sub2')=="Reject"){
                $result['draft_data']->nodal_check=0;
                $this->Crud_model->delete_sub($result['draft_data']->id_pk,$n.'_draft');
                unset($result['draft_data']->id_pk);
                $this->Crud_model->save_data($result['draft_data'],$n.'_backup');
                ?>
                        <script type=text/javascript>
                            alert("Value rejected");
                            window.location.href = "http://localhost/NIC/index.php/Sample_d/load/<?php echo $n ?>";
                        </script>
                <?php
            }*/
        }
    }
}