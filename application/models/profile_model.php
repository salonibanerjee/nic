<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class profile_model extends CI_Model {
    public function upload($data){
        $this->db->insert('profile',$data);
    }
    function update($uid,$data){
		$this->db->where('username', $uid);
		$this->db->update('profile', $data);
    }
    public function get_f($d){
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
	
    public function get_designation(){
		$tables = $this->db->get('designation_master');
		$desi_name = array();
        foreach($tables->result() as $desigs){
            $desi_name[] = $desigs->Designation_employee;
        }
        return $desi_name;
	}
	public function get_user_id(){
		$tables = $this->db->get('designation_master');
		$desi_name = array();
        foreach($tables->result() as $desigs){
            $desi_name[] = $desigs;
        }
        return $desi_name;
	}
	public function get_depart(){
		$tables = $this->db->get('department_master');
		$dep_name = array();
        foreach($tables->result() as $desigs){
            $dep_name[] = $desigs->department;
        }
        return $dep_name;
	}
	public function get_office(){
		$tables = $this->db->get('office_master');
		$off_name = array();
        foreach($tables->result() as $desigs){
            $off_name[] = $desigs->office;
        }
        return $off_name;
	}
	/*public function get_desi_code(){
		$tables = $this->db->get('designation_master');
		$desi_code = array();
        foreach($tables->result() as $desigs){
            $desi_code[] = $desigs->Designation_code;
        }
        return $desi_code;
	}*/

    public function get_profile_info($username){
        $query= $this->db->get_where('check_First_User',array('user_id_pk' => $this->cache->get('Active_status')['id']));
        $row=$query->row();
		$res=$this->get_f($username);
		//$r = $this->get_designation($username);
		if($res){
			$da = array(
				'f_name' => $res->f_name,
				'm_name' => $res->m_name,
				'l_name' => $res->l_name,
				'mobile' => $res->mobile,
				'email' =>$res->email,
				'image' => $res->image,
				'username' =>$this->session->userdata('uid'),
				'designation' =>$res->designation,
				'district' =>$res->district,
				'department' =>$res->department,
				'office' =>$res->office,
                'first_user'=>$row->check_if_first_user,
                'update_prof'=>$row->check_profile_updated_once
            );
        }else{
            $da = array(
				'f_name' =>$this->session->userdata('uid'),
				'm_name' => '',
                'l_name' => '',
                'image'=> '',
				'designation' =>'-NA-',
                'first_user'=>$row->check_if_first_user,
                'update_prof'=>$row->check_profile_updated_once
			);
        }
        return $da;
    }

    public function get_profile($username){
        $res=$this->get_f($username);
		$da=array();
		//$r = $this->get_designation($username);
        if($res){
			//$des_code=$this->profile_model->get_desi_code();
			$da = array(
				'f_name' => $res->f_name,
				'm_name' => $res->m_name,
				'l_name' => $res->l_name,
				'mobile' => $res->mobile,
				'email' =>$res->email,
				'image' => $res->image,
				'username' =>$this->session->userdata('uid'),
				'designation' =>$res->designation,
				'department' =>$res->department,
				'office' =>$res->office,
				//'desi_code' =>$
				'district' =>$res->district,
			);
		}
		else{
			$da = array(
				'f_name' =>'',
				'm_name' => '',
				'l_name' => '',
				'mobile' =>'',
				'email' =>'',
				'image' => '',
				'username' =>$this->session->userdata('uid'),
				'designation' =>'',
				'department' =>'',
				'office' =>'',
				'district' =>'',
			);
        }
        return $da;
    }
    
}
