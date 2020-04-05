<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class profile_model extends CI_Model {
    //upload to database 
    public function upload($data){
        $this->db->insert('profile1',$data);
    }
    function update($uid,$data){
		$this->db->where('uid', $uid);
		$this->db->update('profile1', $data);
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