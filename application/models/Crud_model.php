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
                $this->db->where(array('session'=>$r['session'],'schcd'=>$r['schcd'],'month'=>$r['month']));
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
                $tables = $this->db->get('mpr_master_scheme_table');
                $b = array();
                foreach($tables->result() as $row){
                        $b[] = $row->s_name;
                }
                return $b;
        }

        function fullname(){
                $this->db->select('name');
                $tables = $this->db->get('mpr_master_scheme_table');
                $b = array();
                foreach($tables->result() as $row){
                        $b[] = $row->name;
                }
                return $b;
        }

	function search_table($n){
                $query = $this->db->get_where('mpr_master_scheme_table', array('s_name' => $n));
                $row = $query->row();
                if (isset($row)){
                        return $row->name;
                }
                else{
                        return $n;
                }
        }
        function search_attri($n){
                $query = $this->db->get_where('mpr_master_attri_table', array('a_name' => $n));
                $row = $query->row();
                if (isset($row)){
                        return $row->name;
                }
                else{
                        return $n;
                }
        }
        //creating backup table & draft table
        function backup_draft_table($n,$s){
                $a = $n."_".$s;
                if($this->db->table_exists($n."_".$s)){
                }else{
                        $this->load->dbforge();
                        $fields = $this->db->field_data($n);
                        $field = $this->extract_field($fields,$a);
                        $this->dbforge->add_field($field);
                        $this->dbforge->add_key('id_pk', TRUE);
                        $this->dbforge->create_table($a);
                }
        }
        //setting fields for newly automated formed tables
        function extract_field($x,$table_name){
                $y=array();
                foreach($x as $field){
                        if($field->name == 'id_pk'){
                                $y['id_pk']=array(
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
                $query = $this->db->get_where('mpr_master_location_data',array('location_schcd'=>$n));
                $row = $query->row();
                //print_r($row);
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
                $this->db->insert('mpr_trans_audit_log', $sess_data);  
        }
        public function gp_id($n){
                $query = $this->db->get_where('mpr_semitrans_login', array('username' => $n));
                $row = $query->row();
                return $row->schcd;
        }

        //custom form validation 
        //$n->tablename, $s-> session 
        public function unique_data_entry($n,$s,$k){
                $var=$this->session->userdata('schcd');
                $query = $this->db->get_where($n, array('session' => $s,'schcd' => $var, 'month' => $k));
                $row = $query->row();
                if($row){
                        return $row; 
                }else{
                        return FALSE;
                }
        }

        public function draft_data_fetch($table_name){
                $var = $this->session->userdata('schcd');
                $last_row=$this->db->select('*')->where('schcd',$var)->order_by('id_pk','DESC')->limit(1)->get($table_name)->row();
                return $last_row;
        }
        //for tabular view
        public function data_fetch($table_name){
                $var = $this->session->userdata('schcd');
                $count=0;
                $count = $this->db->select('*')->where(['schcd'=>$var])->from($table_name)->count_all_results();
                if($count>0){
                        $query = $this->db->select('*')->where(array('nodal_check'=>1))->like('schcd', $var, 'after')->order_by('month')->get($table_name)->result_array();
                        return $query;
                }else{
                        return 0;
                }
        }
        public function filter_data($table_name,$sm,$em,$yr){
                $schcd = $this->session->userdata('schcd');
                $this->db->select('*');
                $this->db->from($table_name);
                $this->db->where('month>=',$sm);
                $this->db->where('month<=',$em);
                $this->db->where('session',$yr);
                $this->db->like('schcd', $schcd, 'after');
                $query=$this->db->order_by('month')->get()->result_array();
                if($query){
                        return $query;
                }else{
                        return 0;
                }
        }
        //tabluar data end

        function update_sub($r,$n){
                //$this->db->where('session', $r['session']);
                $this->db->where(array('session'=>$r->session,'schcd'=>$r->schcd,'month'=>$r->month));
                $this->db->update($n,$r);
        }
        function delete_sub($r,$n){
                $this->db->where('id_pk', $r);
                $this->db->delete($n);
        }

        public function draft_filter($table_name,$month,$year){
                $var = $this->session->userdata('schcd');
                $row = $this->db->select('*')->where(array('schcd'=>$var,'month'=>$month,'session'=>$year))->order_by('id_pk','DESC')->limit(1)->get($table_name)->row();
                if($row)
                        return $row;
                else
                        return NULL;
        }
}