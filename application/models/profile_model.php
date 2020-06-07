<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class profile_model extends CI_Model {
    public function upload($data){
        $this->db->insert('mpr_semitrans_profile',$data);
    }
    function update($uid,$data){
		$this->db->where('username', $uid);
		$this->db->update('mpr_semitrans_profile', $data);
    }
    public function get_f($d){
        $query = $this->db->get_where('mpr_semitrans_profile', array('username' => $d));
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
	public function get_login_details($d){
        $query = $this->db->get_where('mpr_semitrans_login', array('username' => $d));
        $row = $query->row();
        return $row;
    }
	
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
		//return $data;
	}
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
	public function get_user_id(){
		$tables = $this->db->get('mpr_master_designation');
		$desi_name = array();
        foreach($tables->result() as $desigs){
            $desi_name[] = $desigs;
        }
        return $desi_name;
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
        $query= $this->db->get_where('mpr_semitrans_check_first_user',array('user_id_pk' => $this->session->userdata('loginid')));
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
				'designation' =>$this->get_designation(),
				'district' =>$res->district,
				'department' =>$this->get_depart(),
				'office' =>$this->get_office(),
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
				'designation' =>$this->get_designation(),
				'department' =>$this->get_depart(),
				'office' =>$this->get_office(),
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

	public function custom_notification(){
		$query = $this->db->select('*')->order_by('notification_id_pk','DESC')->get_where('mpr_trans_notification', array('active_status'=>1))->result_array();
		return $query;
	}

	public function savenotifs($target_audience,$noti_text,$noti_head)
	{
		$result = $this->db->insert('mpr_trans_notification',array('audience_id'=>$target_audience,'notification_text'=>$noti_text,'notification_head'=>$noti_head,
									'active_status'=>1,'timestamp'=>date('Y-m-d H:i:s')));
		return $result;
	}

	public function scheme_under(){
		$this->load->driver('cache', array('adapter' => 'file'));
		$var = $this->cache->get('Scheme_hier_'.$this->session->userdata('dept'));
		$i=0;
		foreach($var as $row){
			$i++;
		}
		return $i;
	}
}
