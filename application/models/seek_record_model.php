<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class seek_record_model extends CI_Model {
    public function fetch_details($d){
        
        $query = $this->db->get_where('mpr_semitrans_login', array('username' => $d));
        $row = $query->row();
        $data = $row->Login_id_pk;
        //$query = $this->db->get_where('mpr_scheme_kcc_backup', array('login_id_fk' => $data));
        //$row = $query->result();
        //$dat = array();
        //$i = 0;
        
        return $data;
    }

    public function filter_data($uname,$table,$sm,$fm,$yr){
        $data = $this->fetch_details($uname);
        $this->db->select('*');
        $this->db->from($table);
        $this->db->where('login_id_fk =',$data);
        $this->db->where('month>=',$sm);
        $this->db->where('month<=',$fm);
        $this->db->where('session',$yr);
        $query=$this->db->order_by('month')->get()->result_array();
        if($query){
                return $query;
        }else{
                return 0;
        }
}
	
}