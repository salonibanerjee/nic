<?php
/**
 * Model Child Class
 *
 *
 * @package	CodeIgniter
 * @category	Model
 * @author	Riddhinath Ganguly,Sayak Das,Hriddhi Mondal
*/

//related to all data entry functionalities and their storage, table creation etc.-----------------------------------------------------
class Crud_model extends CI_Model {
        //get all the scheme tables--------------------------------------------------------------------------------------------------
        function get_table($n){
                $fields = $this->db->list_fields($n);
                return $fields;
        }
        //get all the attributes------------------------------------------------------------------------------------------------------
        function get_attri($n){
                $fields = $this->db->field_data($n);
                return $fields;
        }
        //get the attributes data type in the database tables--------------------------------------------------------------------------
        function get_type($type){
                if($type=="bigint" || $type=='numeric'){
                        return 'numeric';
                }
                elseif($type=="character varying"){
                        return 'alpha_dash';
                }
        }
        //ssave the entered data in those tables---------------------------------------------------------------------------------------
        function save_data($data,$n){
                $this->db->insert($n,$data,TRUE);
        }
        //updates data on the basis of location for same user--------------------------------------------------------------------------
        function update($r,$n){
                $this->db->where(array('session'=>$r['session'],'location_code'=>$r['location_code'],'month'=>$r['month']));
                $this->db->update($n,$r);
        }
        //updates the scheme data location---------------------------------------------------------------------------------------------
        function update_location_code($r,$n){
                $this->db->where(array('location_code'=>$r['location_code']));
                $this->db->update($n,$r);
        }
        //check if table is empty------------------------------------------------------------------------------------------------------
        function isempty($a){
                foreach($a as $key=>$val){
                        if($key !== 'session' && $val !== '')
                                return false;
                }
                return true;
        }
        //check all tables wrt to scheme table master------------------------------------------------------------------------------------
        function list_table(){
                $this->db->select('short_name');
                $tables = $this->db->get('mpr_master_scheme_table');
                $b = array();
                foreach($tables->result() as $row){
                        $b[] = $row->short_name;
                }
                return $b;
        }
        //get full names of the scheme tables---------------------------------------------------------------------------------------------
        function fullname(){
                $this->db->select('name');
                $tables = $this->db->get('mpr_master_scheme_table');
                $b = array();
                foreach($tables->result() as $row){
                        $b[] = $row->name;
                }
                return $b;
        }
        //search a particular table on demand--------------------------------------------------------------------------------------------
	function search_table($n){
                $query = $this->db->get_where('mpr_master_scheme_table', array('short_name' => $n));
                $row = $query->row();
                if (isset($row)){
                        return $row->name;
                }
                else{
                        return $n;
                }
        }
        //search a particular tables attri to fetch their actual string values-----------------------------------------------------------
        function search_attri($n){
                $query = $this->db->get_where('mpr_master_attri_table', array('attri_name' => $n));
                $row = $query->row();
                if (isset($row)){
                        return $row->actual_name;
                }
                else{
                        return $n;
                }
        }
        //creating backup table & draft table--------------------------------------------------------------------------------------------
        function backup_draft_table($n,$s){
                $a = $n."_".$s;
                if($this->db->table_exists($n."_".$s)){
                }
                else{
                        $this->load->dbforge();
                        $fields = $this->db->field_data($n);
                        $field = $this->extract_field($fields,$a);
                        $this->dbforge->add_field($field);
                        $this->dbforge->add_key('id_pk', TRUE);
                        $this->dbforge->create_table($a);
                }
        }
        //setting fields for newly automated formed tables--------------------------------------------------------------------------------
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
			->where(array('session'=>$v,'location_code'=>$v1))
			->get();
		return $query->result()[0];
        }
        public function get_location_code($n,$v){	
		$query = $this->db->select('*')
			->from($n)
			->where(array('location_code'=>$v))
			->get();
		return $query->result()[0];
        }
        public function region_name($n){
                $query = $this->db->get_where('mpr_master_location_data',array('location_code'=>$n));
                $row = $query->row();
                return $row->location_area;
        }
        public function audit_upload($user,$section,$action,$request){
                $sess_data = array(
                        'login_id_fk' => $user,
                        'section' => $section,
                        'action' => $action,
                        'request' => $request,
                        'timestamp' => date('Y-m-d H:i:s'),
                        'ip_addr' => $this->input->ip_address()
                    );
                $this->db->insert('mpr_trans_audit_log', $sess_data);  
        }
        public function gp_id($n){
                $query = $this->db->get_where('mpr_semitrans_login', array('username' => $n));
                $row = $query->row();
                return $row->location_code;
        }

        //custom form validation ------------------------------------------------------------------------------------------------ 
        public function unique_data_entry($n,$s,$k){
                $var=$this->session->userdata('location_code');
                $query = $this->db->get_where($n, array('session' => $s,'location_code' => $var, 'month' => $k));
                $row = $query->row();
                if($row){
                        return $row; 
                }else{
                        return FALSE;
                }
        }
        //draft data fetch from draft table foe current user-------------------------------------------------------------------------
        public function draft_data_fetch($table_name){
                $var = $this->session->userdata('location_code');
                $last_row=$this->db->select('*')->where('location_code',$var)->order_by('id_pk','DESC')->limit(1)->get($table_name)->row();
                return $last_row;
        }
        public function draft_data_fetch2($table_name){
                $var = $this->session->userdata('location_code');
                $last_row=$this->db->select('*')->where('location_code',$var)->order_by('id_pk','DESC')->limit(1)->get($table_name)->row_array();
                return $last_row;
        }
        //for tabular view----------------------------------------------------------------------------------------------------------------
        public function data_fetch($table_name){
                $var = $this->session->userdata('location_code');
                $count=0;
                $count = $this->db->select('*')->like('location_code', $var, 'after')->from($table_name)->count_all_results();
                if($count>0){
                        $query = $this->db->select('*')->where(array('nodal_check'=>1))->like('location_code', $var, 'after')->order_by("session DESC,month DESC")->get($table_name)->result_array();
                        return $query;
                }else{
                        return 0;
                }
        }
        //filtering the data ----------------------------------------------------------------------------------------------------------
        public function filter_data($table_name,$sm,$em,$yr){
                $location_code = $this->session->userdata('location_code');
                $this->db->select('*');
                $this->db->from($table_name);
                $this->db->where('month>=',$sm);
                $this->db->where('month<=',$em);
                $this->db->where('session',$yr);
                $this->db->like('location_code', $location_code, 'after');
                $query=$this->db->order_by('month')->get()->result_array();
                if($query){
                        return $query;
                }else{
                        return 0;
                }
        }
        //tabluar data end

        //
        function update_sub($r,$n){
                $this->db->where(array('session'=>$r->session,'location_code'=>$r->location_code,'month'=>$r->month));
                $this->db->update($n,$r);
        }
        function delete_sub($r,$n){
                $this->db->where('id_pk', $r);
                $this->db->delete($n);
        }

        //draft data filter----------------------------------------------------------------------------------------------------------
        public function draft_filter($table_name,$month,$year){
                $var = $this->session->userdata('location_code');
                $row = $this->db->select('*')->where(array('location_code'=>$var,'month'=>$month,'session'=>$year))->order_by('id_pk','DESC')->limit(1)->get($table_name)->row_array();
                if($row)
                        return $row;
                else
                        return NULL;
        }

        //dba financial year fetch for legacy data entry--------------------------------------------------------------------------
        public function dba_fyear_range(){
                $row = $this->db->select('*')->order_by('dba_financial_range_table_id_pk')->limit(1)->get('mpr_semitrans_dba_financial_range')->row();
                return $row;
        }

        //dba fyear update------------------------------------------------------------------------------------------------------------
        public function dba_fyear_update($var){
                $result = $this->db->where(array('dba_financial_range_table_id_pk'=>1))->update('mpr_semitrans_dba_financial_range',$var);
                return $result;
        }

        //check the current deo------------------------------------------------------------------------------------------------------
        public function deo($n){
                return $this->db->select('username')->where('login_id_pk',$n)->get('mpr_semitrans_login')->row();
        }
}