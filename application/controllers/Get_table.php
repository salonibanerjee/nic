<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Get_table extends MY_Controller {
    /*
    public function __construct(){
        parent::__construct();
        //$this->check_privilege(1);
        //date_default_timezone_set('Asia/Kolkata');
    }*/
    

    //loads the Main login page
    public function index(){
		//$this->load->view('login');
    }

    public function load($n){
        $this->check_privilege(3);
        //Load 'CRUD' model
        $query = $this->db->get_where('meeting_schedule', array('id' => 1));
        $row = $query->row();
        $this->load->driver('cache',array('adapter' => 'file'));
        $var = $this->cache->get('Active_status')['user_type_id_fk'];
        if((strtotime(mdate('%Y-%m-%d %H:%i', now())) >strtotime($row->start_time)) && (strtotime(mdate('%Y-%m-%d %H:%i', now())) < strtotime($row->end_time))){
            ?>
                     <script type=text/javascript>
                        alert("Meeting running");
                        window.location.href = "http://localhost/NIC/index.php/<?php echo $this->cache->get('User_type'.$var)['user_privilege'][0]['link']?>";
                    </script>
            <?php
        }else{
        $this->load->model('Crud_model');

        //Fetch Attribute name. n - schema name
        $result['data'] =$this->Crud_model->get_table($n);
        $result['name'] =$this->Crud_model->search_table($n);
        $result['data_table']=$this->Crud_model->list_table();
        $result['s_name_table']=$this->Crud_model->fullname();
        $result['username'] = $this->session->userdata('uid');
        
        #dynamic type checking
        $x=$this->Crud_model->get_attri($n);
        $y=array();
        $result['s_name']=array();
        $result['region']=$this->Crud_model->region_name($this->session->userdata('gp_id'));
        $flag=0;

        //setting array for form validations
        foreach($x as $field){
            if($field->name=="id" || $field->name=="user" || $field->name=="tstamp" || $field->name=="ip"){
                $result['s_name'][]=$this->Crud_model->search_attri($field->name);
                continue;
            }
            $z=$field->max_length;
            $w=$this->Crud_model->get_type($field->type);
            $ij=$this->Crud_model->search_attri($field->name);
            $result['s_name'][]=$ij;

            if($field->name=="session"){
                //$ik="is_unique[".$n.".session]";
                $ik="callback_input_data_unique_check[".$n.".".$field->name."]";
                $y[]=array(
                    'field' => $field->name,
                    'label' => $ij,
                    'rules' => $ik,
                    'errors' => array('input_data_unique_check'=>'This %s already exists.')
                );
                $flag=1;
            }
            elseif($field->name=="schcd" && $flag==0){
                $ik="is_unique[".$n.".schcd]";
                //$ik="callback_input_data_unique_check[".$n."]";
                $y[]=array(
                    'field' => $field->name,
                    'label' => "Region's",
                    'rules' => $ik,
                    'errors' => array('is_unique'=>'This %s value already exists.')
                );
            }
            else{
                $y[]=array(
                    'field' => $field->name,
                    'label' => $ij,
                    'rules' => "required|max_length[$z]|$w"
                );
            }
        }

        $this->form_validation->set_rules($y);

        //checking form validation
        if($this->form_validation->run()==FALSE){
            $this->load->view('get_table',$result);

            //submitting form while updating data
            if($this->input->post('save')=='Update data'){
                $r=array();
                foreach($result['data'] as $row){
                    if($row=="id" || $row=="schcd"){
                        continue;
                    }
                    if($this->input->post($row)!==''){
                        $r[$row]=$this->input->post($row);
                    }
                }

                $r['user'] = $this->session->userdata('uid');
                $r['tstamp'] = date('Y-m-d H:i:s');
                $r['ip'] = $this->input->ip_address();
                $r['schcd'] = $this->session->userdata('gp_id');
                if($flag==0){
                    $this->Crud_model->update_schcd($r,$n);
                }else{
                    $this->Crud_model->update($r,$n);
                }
                $this->Crud_model->audit_upload($this->session->userdata('uid'),
                                            current_url(),
                                            'Update - '.$n,
                                            'Custom Message here');
                $this->Crud_model->backup_table($n);
                $this->Crud_model->audit_upload($this->session->userdata('uid'),
                                            current_url(),
                                            'Backup - '.$n,
                                            'Custom Message here');
                if($flag==1){
                    $data_b = $this->Crud_model->get($n,$r['session'],$r['schcd']);
                }else{
                    $data_b = $this->Crud_model->get_schcd($n,$r['schcd']);
                }
                
                unset($data_b->id);
                $this->Crud_model->save_data($data_b,$n."_backup"); 
                //commit and rollback
                if($this->db->trans_status()==FALSE){
                    $this->db->trans_rollback();
                }
                else{
                    $this->db->trans_commit();
                ?>
                     <script type=text/javascript>
                        alert("Updated Successfully...");
                        window.location.href = "http://localhost/NIC/index.php/Get_table/load/<?php echo $n ?>";
                    </script>
                <?php
                }
            }
        }else{
            #Submitting form while saving data
            if($this->input->post('save'))
            {
                $r=array();
                foreach($result['data'] as $row){
                    if($row=="id" || $row=="schcd"){
                        continue;
                    }
                    $r[$row]=$this->input->post($row);
                }
                $r['user'] = $this->session->userdata('uid');
                $r['tstamp'] = date('Y-m-d H:i:s');
                $r['ip'] = $this->input->ip_address();
                $r['schcd'] = $this->session->userdata('gp_id');
                $this->Crud_model->save_data($r,$n);
                $this->Crud_model->audit_upload($this->session->userdata('uid'),
                                            current_url(),
                                            'Insert - '.$n,
                                            'Custom Message here');
                $this->Crud_model->backup_table($n);
                $this->Crud_model->save_data($r,$n."_backup");
                $this->Crud_model->audit_upload($this->session->userdata('uid'),
                                            current_url(),
                                            'Backup - '.$n,
                                            'Custom Message here');
                echo "Records Saved Successfully";

                //commit and rollback
                if($this->db->trans_status()==FALSE)
                    $this->db->trans_rollback();
                else{
                    $this->db->trans_commit();
                ?>
                     <script type=text/javascript>
                        alert("Saved Successfully...");
                        window.location.href = "http://localhost/NIC/index.php/Get_table/load/<?php echo $n ?>";
                    </script>
                <?php
                }
            }
        }
    }
    }
    function input_data_unique_check($str,$table_name) {           
        //$this->CI->form_validation->set_message('input_data_unique_check', $this->CI->lang->line('access_code_invalid'));
        $var=explode('.',$table_name);
        if($str) { 
           // do your validations
           $this->load->model('Crud_model');
           if($this->Crud_model->unique_data_entry($var[0],$str,$var[1]))
              return FALSE;
           else
              return TRUE;
        } else {
             return FALSE;
        }
    }
}