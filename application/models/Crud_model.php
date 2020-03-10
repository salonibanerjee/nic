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
                $this->db->where('session', $r['session']);
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
                $tables = $this->db->list_tables();
                return $tables;
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
}