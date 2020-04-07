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

    public function get_profile_info($username){
        $query= $this->db->get_where('check_First_User',array('user_id_pk' => $this->cache->get('Active_status')['id']));
        $row=$query->row();
		$res=$this->get_f($username);
		if($res){
			$da = array(
				'f_name' => $res->f_name,
				'l_name' => $res->l_name,
				'mobile' => $res->mobile,
				'email' =>$res->email,
				'image' => $res->image,
				'new'   =>'',
				'username' =>$this->session->userdata('uid'),
				'designation' =>$res->designation,
				'district' =>$res->district,
                'first_user'=>$row->check_if_first_user,
                'update_prof'=>$row->check_profile_updated_once
            );
        }
        
        return $da;
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
