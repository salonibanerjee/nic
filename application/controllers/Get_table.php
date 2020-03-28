<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Get_table extends MY_Controller {
    
    //loads the Main login page
    public function index(){
		//$this->load->view('login');
    }

    public function load($n){

        //Load 'CRUD' model
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

        //setting array for form validations
        foreach($x as $field){
            if($field->name=="id" || $field->name=="user" || $field->name=="tstamp" || $field->name=="ip" ||$field->name=='gp_id'){
                $result['s_name'][]=$this->Crud_model->search_attri($field->name);
                continue;
            }
            $z=$field->max_length;
            $w=$this->Crud_model->get_type($field->type);
            $ij=$this->Crud_model->search_attri($field->name);
            $result['s_name'][]=$ij;

            if($field->name=="session"){
                $ik="is_unique[".$n.".session]";
                $y[]=array(
                    'field' => $field->name,
                    'label' => $ij,
                    'rules' => $ik,
                    'errors' => array('is_unique'=>'This %s already exists.')
                );
            }else{
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
                    if($row=="id"){
                        continue;
                    }
                    if($this->input->post($row)!==''){
                        $r[$row]=$this->input->post($row);
                    }
                }

                $r['user'] = $this->session->userdata('uid');
                $r['tstamp'] = date('Y-m-d H:i:s');
                $r['ip'] = $this->input->ip_address();
                $r['gp_id'] = $this->session->userdata('gp_id');

                $this->Crud_model->update($r,$n);
                $this->Crud_model->audit_upload($this->session->userdata('uid'),
                                            current_url(),
                                            'Update - '.$n,
                                            'Custom Message here');
                $this->Crud_model->backup_table($n);
                $this->Crud_model->audit_upload($this->session->userdata('uid'),
                                            current_url(),
                                            'Backup - '.$n,
                                            'Custom Message here');
                $data_b = $this->Crud_model->get($n,$r['session']);
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
                    if($row=="id"){
                        continue;
                    }
                    $r[$row]=$this->input->post($row);
                }
                $r['user'] = $this->session->userdata('uid');
                $r['tstamp'] = date('Y-m-d H:i:s');
                $r['ip'] = $this->input->ip_address();
                $r['gp_id'] = $this->session->userdata('gp_id');
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
                else
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