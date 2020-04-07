<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class profile_model extends CI_Model {
    //upload to database 
    public function upload($data){
        $this->db->insert('profile',$data);
    }
    function update($uid,$data){
		$this->db->where('username', $uid);
		$this->db->update('profile', $data);
    }
    public function get_f($d){
        //$query =$this->db->"SELECT 'first' from 'profile' where 'uid' => 'abc@gmail.com'";
        $query = $this->db->get_where('profile', array('username' => $d));
        $row = $query->row();
        return $row;
    }
    function get_type($type){
        if($type=="bigint" || $type=='numeric'){
                return 'numeric';
        }
        elseif($type=="character varying"){
                return 'alpha_dash';
        }
}
    //checks whether session is already present or not
    /*public function unique($a){
            $this->db->where('id',intval($a));
            $this->db->from('prac');
            $i=$this->db->count_all_results();
            if($i==0)
                return FALSE;
            else    
                return TRUE;
        
    }
    function update_id($id,$data){
		$this->db->where('id', $id);
		$this->db->update('prac', $data);
	}*/
}
?>