<?php
//functionalitites related to profile details of an user and user specific domains and notifications-------------------------------------
defined('BASEPATH') OR exit('No direct script access allowed');

class profile_model extends CI_Model {
	//uploads profile data to profile table---------------------------------------------------------------------------------------------
    public function upload($data){
        $this->db->insert('mpr_semitrans_profile',$data);
	}
	//updates existing user's profile data---------------------------------------------------------------------------------------------
    function update($uid,$data){
		$this->db->where('username', $uid);
		$this->db->update('mpr_semitrans_profile', $data);
	}
	//get a persons profile details------------------------------------------------------------------------------------------------------
    public function get_f($d){
        $query = $this->db->get_where('mpr_semitrans_profile', array('username' => $d));
        $row = $query->row();
        return $row;
	}
	//get server side attribute type-----------------------------------------------------------------------------------------------------
    function get_type($type){
        if($type=="bigint" || $type=='numeric'){
                return 'numeric';
        }
        elseif($type=="character varying"){
                return 'alpha_dash';
        }
	}
	//get login details of an user-------------------------------------------------------------------------------------------------------
	public function get_login_details($d){
        $query = $this->db->get_where('mpr_semitrans_login', array('username' => $d));
        $row = $query->row();
        return $row;
    }
	
	//get designation details of an user------------------------------------------------------------------------------------------------
    public function get_designation(){
		$data = $this->get_login_details($this->session->userdata('uid'));
		$tables = $this->db->get('mpr_master_designation');
		$desi_name ;
        foreach($tables->result() as $desigs){
			if($desigs->desig_id_pk == $data->desig_id_fk){
				$desi_name= $desigs->desig_name;
			}
        }
		return $desi_name;
	}

//2 test codes for user specific notifications:
	public function get_designation_id(){
		$data = $this->get_login_details($this->session->userdata('uid'));
			return $data->desig_id_fk;//bigint
	}
	public function get_usertype_id(){
		$data = $this->get_login_details($this->session->userdata('uid'));
			return $data->user_type_id_fk;//bigint
	}

	public function get_location_code(){
		$data = $this->get_login_details($this->session->userdata('uid'));
		return $data->location_code;//character_varying
	}

	//get department details of an user---------------------------------------------------------------------------------------------
	public function get_depart(){
		$data = $this->get_login_details($this->session->userdata('uid'));
		$tables = $this->db->get('mpr_master_department');
		$dep_name;
        foreach($tables->result() as $desigs){
			if($desigs->dept_id_pk == $data->dept_id_fk){
				$dep_name = $desigs->dept_name;
			}
        }
        return $dep_name;
	}
	//get office details of an user----------------------------------------------------------------------------------------------------
	public function get_office(){
		$data = $this->get_login_details($this->session->userdata('uid'));
		$tables = $this->db->get('mpr_master_office');
		$off_name;
        foreach($tables->result() as $desigs){
			if($desigs->office_id_pk == $data->office_id_fk){
				$off_name = $desigs->office_name;
			}
        }
        return $off_name;
	}
	//get designation detailsof an user------------------------------------------------------------------------------------------------
	public function get_user_id(){
		$tables = $this->db->get('mpr_master_designation');
		$desi_name = array();
        foreach($tables->result() as $desigs){
            $desi_name[] = $desigs;
        }
        return $desi_name;
	}
	
	

	//get the whole profile details------------------------------------------------------------------------------------------------------
    public function get_profile_info($username){
        $query= $this->db->get_where('mpr_semitrans_check_first_user',array('user_id_pk' => $this->session->userdata('loginid')));
        $row=$query->row();
		$res=$this->get_f($username);
		if($res){
			$da = array(
				'f_name' => $res->f_name,
				'm_name' => $res->m_name,
				'l_name' => $res->l_name,
				'mobile' => $res->mobile,
				'email' =>$res->email,
				'image' => $res->image,
				'username' =>$this->session->userdata('uid'),
				'designation' =>$res->desig,
				'district' =>$res->district,
				'department' =>$res->department,
				'office' =>$res->office,
                'first_user'=>$row->check_if_first_user,
				'update_prof'=>$row->check_profile_updated_once,
				'flag'=> 0
            );
        }else{
            $da = array(
				'f_name' =>$this->session->userdata('uid'),
				'm_name' => '',
                'l_name' => '',
                'image'=> '',
				'designation' =>'-NA-',
                'first_user'=>$row->check_if_first_user,
				'update_prof'=>$row->check_profile_updated_once,
				'flag'=> 0
			);
        }
        return $da;
    }

	//get the whole profile details------------------------------------------------------------------------------------------------------
    public function get_profile($username){
        $res=$this->get_f($username);
		$da=array();
        if($res){
			$da = array(
				'f_name' => $res->f_name,
				'm_name' => $res->m_name,
				'l_name' => $res->l_name,
				'mobile' => $res->mobile,
				'email' =>$res->email,
				'image' => $res->image,
				'username' =>$this->session->userdata('uid'),
				'designation' =>$res->desig,
				'department' =>$res->dept,
				'office' =>$res->office,
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
	
	//custom meeting notification show in bell's dropdown menu-------------------------------------------------------------------------
	public function meeting_notification(){
		$last_row=$this->db->select('*')->order_by('meeting_id_pk',"desc")->limit(1)->get('mpr_trans_meeting_schedule')->row();
		$s_time = strtotime($last_row->start_time);
		$e_time = strtotime($last_row->end_time);
		$now = strtotime(mdate('%Y-%m-%d %H:%i', now()));
		$noti=array();
		if(($now > $s_time) && ($now < $e_time)){
			$noti['msg']="Meeting Ongoing";
			$noti['val']=mdate('%H:%i',$s_time)."-".mdate('%H:%i',$e_time);
		}
		else if($now > $e_time){
			$noti['msg']="Meeting Expired";
			$noti['val']=mdate('%M-%d %H:%i',$e_time);
		}
		else if($now < $s_time){
			$noti['msg']="Upcoming Meeting";
			$noti['val']=mdate('%M-%d %H:%i',$s_time);
		}
		return $noti;
	}

	public function custom_notification1(){
		$query = $this->db->select('*')->order_by('notification_id_pk','DESC')->get_where('mpr_trans_notification', array('active_status'=>1))->result_array();
		return $query;
	}

	public function getrelevantloc($desig){		//gets respective location for selected designation from database  
		if($desig == -1){
			$q="SELECT * FROM public.mpr_master_location_data ORDER BY location_area ASC";
			$result=$this->db->query($q);
		}
		else{
		$q="SELECT * FROM public.mpr_master_location_data WHERE location_code IN(SELECT location_code FROM public.mpr_semitrans_login WHERE user_type_id_fk=$desig) ORDER BY location_area ASC";
		$result=$this->db->query($q);
		}
        return $result;
	}

	public function custom_notification(){
		
		$mydesigid=$this->session->userdata('desig');
		$myloccode=$this->session->userdata('location_code');
		$myusertype=$this->session->userdata('user_type');

		$query = $this->db->select('*')->from('mpr_trans_notification')
		->where('active_status',1)
			->group_start()
				->where(array('audience_desig'=>$myusertype,'audience_loc'=>$myloccode,'audience_desig_only'=>$mydesigid))
				->or_where(array('audience_desig'=>$myusertype,'audience_loc'=>$myloccode,'audience_desig_only'=>-1))
				->or_where(array('audience_desig'=>$myusertype,'audience_loc'=>'-1','audience_desig_only'=>$mydesigid))
				->or_where(array('audience_desig'=>$myusertype,'audience_loc'=>'-1','audience_desig_only'=>-1))
				->or_where(array('audience_desig'=>-1,'audience_loc'=>$myloccode,'audience_desig_only'=>$mydesigid))
				->or_where(array('audience_desig'=>-1,'audience_loc'=>$myloccode,'audience_desig_only'=>-1))
				->or_where(array('audience_desig'=>-1,'audience_loc'=>'-1','audience_desig_only'=>$mydesigid))
				->or_where(array('audience_desig'=>-1,'audience_loc'=>'-1','audience_desig_only'=>-1))
			->group_end()
		->order_by('notification_id_pk','DESC')
		->get()
		->result_array();
			return $query;
	}

	public function savenotifs($target_audience,$noti_text,$noti_head,$audience_desig,$audience_loc,$audience_desig_only)
	{
		$result = $this->db->insert('mpr_trans_notification',array('audience_id'=>$target_audience,'notification_text'=>$noti_text,'notification_head'=>$noti_head,
									'active_status'=>1,'timestamp'=>date('Y-m-d H:i:s'), 'audience_desig'=>$audience_desig, 'audience_loc'=>$audience_loc, 'audience_desig_only'=>$audience_desig_only));
		return $result;
	}

	//counts the number of schemes for a user-------------------------------------------------------------------------------------------
	public function scheme_under(){
		$this->load->driver('cache', array('adapter' => 'file'));
		$var = $this->cache->get('Scheme_hier_'.$this->session->userdata('dept'));
		$i=0;
		foreach($var as $row){
			$i++;
		}
		return $i;
	}

	public function save_issues($name,$email,$rating,$description){
		$result = $this->db->insert('mpr_trans_issues',array('name'=>$name,'email'=>$email,'rating'=>$rating,'description'=>$description,
									'login_id_fk'=>$this->session->userdata('loginid'),'timestamp'=>date('Y-m-d H:i:s')));
		return $result;
	}
}
