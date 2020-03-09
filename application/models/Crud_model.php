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
                        return 'alpha_numeric';
                }
        }
        function save_data($data,$n){
                $this->db->insert($n,$data);
        }
        
        function list_table(){
                $tables = $this->db->list_tables();
                return $tables;
        }
	
}