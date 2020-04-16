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

    public function get_profile_info($username){
        $query= $this->db->get_where('check_First_User',array('user_id_pk' => $this->cache->get('Active_status')['Login_id_pk']));
        $row=$query->row();
		$res=$this->get_f($username);
		if($res){
			$da = array(
				'f_name' => $res->f_name,
				'l_name' => $res->l_name,
				'mobile' => $res->mobile,
				'email' =>$res->email,
				'image' => $res->image,
				'username' =>$this->session->userdata('uid'),
				'designation' =>$res->designation,
				'district' =>$res->district,
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
				'designation' =>$res->designation,
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
				'district' =>'',
			);
        }
        return $da;
	}
	
	public function meeting_notification(){
		$last_row=$this->db->select('*')->order_by('meeting_id_pk',"desc")->limit(1)->get('meeting_schedule')->row();
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

	public function custom_notification(){
		$query = $this->db->select('*')->get_where('notification', array('active_status'=>1))->result_array();
		return $query;
	}

	public function update_active_noti($var){
		$a=array('active_status'=>0);
		$this->db->where(array('notification_id_pk'=>$var));
		$this->db->update('notification',$a);
	}
    
}
