<?php
//System Administrator module functionalities and some semitrans functionalities----------------------------------------------------
defined('BASEPATH') OR exit('No direct script access allowed');
class Sup_admin extends CI_Model {

	//base page

	//-------------------------------------------------------------------------------------------------------------------
	//-------------------------------------------------------------------------------------------------------------------

	//Counting no of users
	public function user_count(){
		return $this->db->get('mpr_semitrans_login')->num_rows();
	}
	//Counting users who are active
	public function active_user_count(){
		return $this->db->get_where('mpr_semitrans_login',array('active_status'=>1))->num_rows();
	}
	//counting active user types
	public function active_user_type_count(){
		return $this->db->get_where('mpr_semitrans_user_type',array('active_status'=>1))->num_rows();
	}
	//counting active user privileges
	public function active_user_privilege_count(){
		return $this->db->get_where('mpr_semitrans_user_privilege',array('active_status'=>1))->num_rows();
	}
	//counting active page privileges
	public function active_privilege_count(){
		return $this->db->get_where('mpr_semitrans_privilege',array('active_status'=>1))->num_rows();
	}
	//counting no of schemes
	public function schemes_count(){
		return $this->db->get('mpr_master_scheme_table')->num_rows();
	}
	//counting audit logs
	public function audit_count(){
		return $this->db->get('mpr_trans_audit_log')->num_rows();
	}
	//counting feedback
	public function feedback_count(){
		return $this->db->get('mpr_trans_issues')->num_rows();
	}




	//functionalities super admin

	//---------------------------------------------------------------------------------------------------------------------------------
	//---------------------------------------------------------------------------------------------------------------------------------
	//add user detalis 
	public function add_login($data){
		if($this->db->insert("mpr_semitrans_login",$data))
        	return true;
	}
	
	//fetch the userid of the new adding user  
	public function find_id($data){
        $query=$this->db->get_where("mpr_semitrans_login",$data);
        return $query->row();
    }
	
	//check if any username already exist
	public function exist_user($data){
        $query=$this->db->get_where("mpr_semitrans_login",$data);
        return $query;
	}
	
	//add new user details 
	public function add_check_first_user($data2){
		if($this->db->insert("mpr_semitrans_check_first_user",$data2))
        	return true;
	}
	
	//fetch loginid of a particular user
	public function Login_id_pk($dat)
	{
	 $query=$this->db->get_where("mpr_semitrans_login",$dat);
		return $query;
	}
	
	//update active status of a particular designation
	public function update_user($data,$id)
	{
	  $this->db->set($data);
	  $this->db->where("login_id_pk",$id);
	  $this->db->update("mpr_semitrans_login",$data);
		return true;
	}
	
	//fetch user privilege id of a particular 
	public function user_priv_id_pk($dat)
	{
	 $query=$this->db->get_where("mpr_semitrans_user_privilege",$dat);
		return $query;
	}
	
	//update active status of a particular user privilege id 
	public function update_user_privilege($data,$id)
	{
	  $this->db->set($data);
	  $this->db->where("user_priv_id_pk",$id);
	  $this->db->update("mpr_semitrans_user_privilege",$data);
		return true;
	}
	
	//fetch user type id
	public function user_type_id_pk($dat)
	{
	 $query=$this->db->get_where("mpr_semitrans_user_type",$dat);
		return $query;
	}
	
	//update active status of a particular user type 
	public function update_user_type($data,$id)
	{
	  $this->db->set($data);
	  $this->db->where("user_type_id_pk",$id);
	  $this->db->update("mpr_semitrans_user_type",$data);
		return true;
	}
	
	//fetch all user type 
	public function fetch_user_type()
	{
		$query=$this->db->get_where("mpr_semitrans_user_type");
		return $query;
	}
	
	//fetch all district name with location code 
	public function fetch_district()
	{   $SQL="SELECT location_code,district_name
	FROM mpr_master_district INNER JOIN mpr_master_location_data
	ON mpr_master_district.location_id_fk =  mpr_master_location_data.location_id_pk";
		$query=$this->db->query($SQL);
		return $query;
	}
	
	//fetch all office name 
	public function office()
	{
		$query=$this->db->get_where("mpr_master_office");
		return $query;
	}
	
	//fetch location area on basis of user level and district location code
	public function mapping($level,$district)
	{ 
		
		if($level == 1){
		  $district = $district.'_';
		} else if($level == 2){
		  $district = $district.'___';
		}
		$SQL="SELECT * FROM mpr_master_location_data
		WHERE location_code LIKE '$district'";
		$query = $this->db->query($SQL);
		return $query;
	 }
	//fetch location data for showing the real location istead of code-----------------------------------------------------------------
	public function location_data()
	{
		$query=$this->db->select('*')->get("mpr_master_location_data")->result_array();
		return $query;
	}
	//fetch real scheme name for corressponding table names---------------------------------------------------------------------------
	public function search_table(){
		$query=$this->db->select('*')->get("mpr_master_scheme_table")->result_array();
		return $query;
	}
	//get location name---------------------------------------------------------------------------------------------------------------
	public function location_name($n)
	{
		$query=$this->db->select('location_area')->get_where("mpr_master_location_data",array('location_id_pk'=>$n))->result_array();
		return $query;
	}
	//fetch table names --------------------------------------------------------------------------------------------------------------
	public function table_name($n){
		$query=$this->db->select('name')->get_where("mpr_master_scheme_table",array("scheme_id_pk"=>$n))->result_array();
		return $query;
	}
	//fetch the fund details from funds table-----------------------------------------------------------------------------------------
	public function funds_table($data){
		$row=$this->db->get_where('mpr_trans_fundalloc',array('scheme_id_fk'=>$data['scheme_id_fk'],'location_id_fk'=>$data['location_id_fk']))->row();
		if($row){
			$update=$this->db->where('fundalloc_id_pk',$row->fundalloc_id_pk)->update('mpr_trans_fundalloc',$data);
			return $update;
		}else{
			$query=$this->db->insert('mpr_trans_fundalloc',$data);
			return $query;
		}
	}

	//fetch fund details-------------------------------------------------------------------------------------------------------------
	public function fetch_funds(){
		$funds=$this->db->select('*')->get('mpr_trans_fundalloc')->result_array();
		return $funds;
	}
    
	//fetch department name on the basis of selected office name
	public function department($dat)
	{
		$query=$this->db->get_where("mpr_master_department",$dat);
		return $query;
	}
	
	//fetch designation name on the basis of selected department name
	public function designation($dat)
	{
		$query=$this->db->get_where("mpr_master_designation",$dat);
		return $query;
	}
	
	//fetch all user except the current user
	public function fetch_login($check)
	{   
		$SQL="SELECT username, password, user_type_id_fk,login_id_pk,  mpr_semitrans_login.location_code,mpr_semitrans_login.active_status, mpr_semitrans_login.dept_id_fk, mpr_semitrans_login.office_id_fk, mpr_semitrans_login.desig_id_fk,desig, location_area,dept_name, office_name,desig_name
		FROM public.mpr_semitrans_login
	    INNER JOIN public.mpr_semitrans_user_type  
		ON mpr_semitrans_user_type.user_type_id_pk = mpr_semitrans_login.user_type_id_fk 
		INNER JOIN public.mpr_master_location_data 
		ON mpr_master_location_data.location_code = mpr_semitrans_login.location_code
		INNER JOIN public.mpr_master_department 
		ON mpr_master_department.dept_id_pk = mpr_semitrans_login.dept_id_fk
		INNER JOIN public.mpr_master_office 
		ON mpr_master_office.office_id_pk = mpr_semitrans_login.office_id_fk
		INNER JOIN public.mpr_master_designation 
		ON mpr_master_designation.desig_id_pk = mpr_semitrans_login.desig_id_fk
		WHERE login_id_pk!=".$check."
		ORDER BY login_id_pk ASC";
	 $query = $this->db->query($SQL);
	 return $query;
	}
	
	//fetch user privilege table
	public function fetch_user_privilege()
	{ 
		$SQL="SELECT user_priv_id_pk, privilege_id_fk, user_type_id_fk, 	mpr_semitrans_user_privilege.active_status, desig, page_name
		FROM public.mpr_semitrans_user_privilege
		INNER JOIN public.mpr_semitrans_user_type  
		ON mpr_semitrans_user_privilege.user_type_id_fk = mpr_semitrans_user_type.user_type_id_pk 
		INNER JOIN public.mpr_semitrans_privilege 
		ON mpr_semitrans_user_privilege.privilege_id_fk = mpr_semitrans_privilege.privilege_id_pk
		ORDER BY user_priv_id_pk ASC";
	  $query = $this->db->query($SQL);
      return $query;
//		$query=$this->db->select('user_priv_id_pk, privilege_id_fk, user_type_id_fk, mpr_semitrans_user_privilege.active_status, desig, page_name')
//     ->from('mpr_semitrans_user_privilege')
//     ->join('mpr_semitrans_user_type', 'mpr_semitrans_user_privilege.user_type_id_fk = mpr_semitrans_user_type.user_type_id_pk ', 'INNER')
//     ->join('mpr_semitrans_privilege ', 'mpr_semitrans_user_privilege.privilege_id_fk= t3.id', 'INNER')
//     ->get();
//		return $query;
	}
	
	//fetch user type table
	public function fetch_user_desig_type()
	{
		$query=$this->db->order_by('user_type_id_pk')->get_where("mpr_semitrans_user_type");
		return $query;
	}
	
	//fetch privilege table
	public function page_view()
	{
		$query=$this->db->order_by('privilege_id_pk')->get_where("mpr_semitrans_privilege");
		return $query;
	}
	
	//fetch privilege id of a particular designation
	public function privilege_id_pk($dat)
	{
	 $query=$this->db->get_where("mpr_semitrans_privilege",$dat);
		return $query;
	}
	
	//update active status of a particular privilege id 
	public function update_page_view($data,$id)
	{
	  $this->db->set($data);
	  $this->db->where("privilege_id_pk",$id);
	  $this->db->update("mpr_semitrans_privilege",$data);
		return true;
	}
	public function get_user_details()
	{
		$attri=array('section','action','request','comment','ip_addr','timestamp','login_id_fk');
		$this->db->select($attri)->from('mpr_trans_audit_log')->order_by('audit_id_pk','DESC');
		return $this->db->get()->result_array();
	}
	public function get_log_id($name)
	{
		return $this->db->select('username')->from('mpr_semitrans_login')->where('login_id_pk',$name)->get()->result_array()[0]['username'];
	}


	//seek record---------------------------------------------------------------------------------------------------------------------
	public function fetch_details($d){
        
        $query = $this->db->get_where('mpr_semitrans_login', array('username' => $d));
        $row = $query->row();
        $data = $row->login_id_pk;
        return $data;
    }
    public function get_scheme(){

        $this->db->select('*');
        $this->db->from('mpr_master_scheme_table');
        $query=$this->db->get()->result_array();
        return $query;

    }

    public function filter_data($uname,$table,$sm,$fm,$yr,$nodal){
        $data = $this->fetch_details($uname);
        $this->db->select('*');
        $this->db->from($table);
        $this->db->where('login_id_fk =',$data);
        $this->db->where('month>=',$sm);
        $this->db->where('month<=',$fm);
        $this->db->where('session',$yr);
        $this->db->where('nodal_check',$nodal);
        $query=$this->db->order_by('month')->get()->result_array();
        if($query){
                return $query;
        }else{
                return 0;
        }
    }

    public function attri($name){
        $var = $this->get_scheme();
        $scheme_id=0;
        foreach($var as $row){
            if($row['short_name']==$name)
                $scheme_id=$row['scheme_id_pk'];
        }
        $query=$this->db->select('*')->from('mpr_master_attri_table')->where('scheme_id_fk',$scheme_id)->get()->result_array();
        return $query;
	}
	//seek record end------------------------------------------------------------------------------------------------------------

	public function issues_fetch(){
		$result=$this->db->select('*')->from('mpr_trans_issues')->order_by('issue_id_pk','desc')->get()->result_array();
		return $result;
	}
}
	
?>