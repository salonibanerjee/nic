<?php
class Crud_model extends CI_Model {
        function get_table($n){
                $fields = $this->db->list_fields($n);
                return $fields;
        }
        function get_attri($n){
                $fields = $this->db->field_data($n);
                return $fields;
        }
        function get_type($type){
                if($type=="bigint" || $type=='numeric'){
                        return 'numeric';
                }
                elseif($type=="character varying"){
                        return 'alpha_dash';
                }
        }
        function save_data($data,$n){
                $this->db->insert($n,$data,TRUE);
        }
        function update($r,$n){
                //$this->db->where('session', $r['session']);
                $this->db->where(array('session'=>$r['session'],'schcd'=>$r['schcd']));
                $this->db->update($n,$r);
        }
        function update_schcd($r,$n){
                //$this->db->where('session', $r['session']);
                $this->db->where(array('schcd'=>$r['schcd']));
                $this->db->update($n,$r);
        }
        function isempty($a){
                foreach($a as $key=>$val){
                        if($key !== 'session' && $val !== '')
                                return false;
                }
                return true;
        }
        
        function list_table(){
                $this->db->select('s_name');
                $tables = $this->db->get('scheme_table');
                $b = array();
                foreach($tables->result() as $row){
                        $b[] = $row->s_name;
                }
                return $b;
        }

        function fullname(){
                $this->db->select('name');
                $tables = $this->db->get('scheme_table');
                $b = array();
                foreach($tables->result() as $row){
                        $b[] = $row->name;
                }
                return $b;
        }

	function search_table($n){
                $query = $this->db->get_where('scheme_table', array('s_name' => $n));
                $row = $query->row();
                if (isset($row)){
                        return $row->name;
                }
                else{
                        return $n;
                }
        }
        function search_attri($n){
                $query = $this->db->get_where('attri_table', array('a_name' => $n));
                $row = $query->row();
                if (isset($row)){
                        return $row->name;
                }
                else{
                        return $n;
                }
        }
        //creating backup table
        function backup_table($n){
                $a = $n."_backup";
                if($this->db->table_exists($n."_backup")){
                }else{
                        $this->load->dbforge();
                        $fields = $this->db->field_data($n);
                        $field = $this->extract_field($fields);
                        $this->dbforge->add_field($field);
                        $this->dbforge->add_key('id', TRUE);
                        $this->dbforge->create_table($a);
                }
        }
        function extract_field($x){
                $y=array();
                foreach($x as $field){
                        if($field->name == 'id'){
                                $y[$field->name]=array(
                                        'type' => $field->type,
                                        'max_length' => $field->max_length,
                                        'auto_increment' => TRUE
                                );
                        }else{
                                $y[$field->name]=array(
                                        'type' => $field->type,
                                        'max_length' => $field->max_length,
                                );
                        }
                }
                return $y;
        }
        public function get($n,$v,$v1){	
		$query = $this->db->select('*')
			->from($n)
			->where(array('session'=>$v,'schcd'=>$v1))
			->get();
		return $query->result()[0];
        }
        public function get_schcd($n,$v){	
		$query = $this->db->select('*')
			->from($n)
			->where(array('schcd'=>$v))
			->get();
		return $query->result()[0];
        }
        public function region_name($n){
                $query = $this->db->get_where('location_data',array('location_schcd'=>$n));
                $row = $query->row();
                return $row->location_area;
        }
        public function audit_upload($user,$section,$action,$request){
                $sess_data = array(
                        'user' => $user,
                        'section' => $section,
                        'action' => $action,
                        'request' => $request,
                        'stamp' => date('Y-m-d H:i:s'),
                        'ip_addr' => $this->input->ip_address()
                    );
                $this->db->insert('audit_log', $sess_data);  
        }
        public function gp_id($n){
                $query = $this->db->get_where('Login', array('username' => $n));
                $row = $query->row();
                return $row->gp_id;
        }

        //custom form validation 
        //$n->tablename, $s-> session
        public function unique_data_entry($n,$s){
                $var=$this->session->userdata('gp_id');
                $query = $this->db->get_where($n, array('session' => $s,'schcd' => $var));
                $row = $query->row();
                if($row){
                        return TRUE; 
                }else{
                        return FALSE;
                }
        }
}