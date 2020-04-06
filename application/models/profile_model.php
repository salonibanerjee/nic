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
}
?>