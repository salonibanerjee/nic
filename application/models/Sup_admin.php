<?php
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




	//functionalities super admin

	//---------------------------------------------------------------------------------------------------------------------------------
	//---------------------------------------------------------------------------------------------------------------------------------
	public function add_login($data){
		if($this->db->insert("mpr_semitrans_login",$data))
        	return true;
	}
	public function find_id($data){
        $query=$this->db->get_where("mpr_semitrans_login",$data);
        return $query->row();
    }
	public function exist_user($data){
        $query=$this->db->get_where("mpr_semitrans_login",$data);
        return $query;
	}
	public function add_check_first_user($data2){
		if($this->db->insert("mpr_semitrans_check_first_user",$data2))
        	return true;
	}
	public function Login_id_pk($dat)
	{
	 $query=$this->db->get_where("mpr_semitrans_login",$dat);
		return $query;
	}
	public function update_user($data,$id)
	{
	  $this->db->set($data);
	  $this->db->where("login_id_pk",$id);
	  $this->db->update("mpr_semitrans_login",$data);
		return true;
	}
	public function user_priv_id_pk($dat)
	{
	 $query=$this->db->get_where("mpr_semitrans_user_privilege",$dat);
		return $query;
	}
	
	public function update_user_privilege($data,$id)
	{
	  $this->db->set($data);
	  $this->db->where("user_priv_id_pk",$id);
	  $this->db->update("mpr_semitrans_user_privilege",$data);
		return true;
	}
	public function user_type_id_pk($dat)
	{
	 $query=$this->db->get_where("mpr_semitrans_user_type",$dat);
		return $query;
	}
	public function update_user_type($data,$id)
	{
	  $this->db->set($data);
	  $this->db->where("user_type_id_pk",$id);
	  $this->db->update("mpr_semitrans_user_type",$data);
		return true;
	}
	public function fetch_user_type()
	{
		$query=$this->db->get_where("mpr_semitrans_user_type");
		return $query;
	}
	public function office()
	{
		$query=$this->db->get_where("mpr_master_office");
		return $query;
	}
	public function mapping($desig)
	{
		$SQL="SELECT mpr_master_location_data.location_area, mpr_master_location_data.location_code
	FROM mpr_master_location_data INNER JOIN mpr_semitrans_location_mapping 
	ON mpr_master_location_data.location_id_pk = mpr_semitrans_location_mapping.location_id_fk
	WHERE mpr_semitrans_location_mapping.user_type_id_fk =".$desig;
		$query = $this->db->query($SQL);
		return $query;
	}
	public function location_data()
	{
		$query=$this->db->get_where("mpr_master_location_data");
		return $query;
	}
	public function department($dat)
	{
		$query=$this->db->get_where("mpr_master_department",$dat);
		return $query;
	}
	public function designation($dat)
	{
		$query=$this->db->get_where("mpr_master_designation",$dat);
		return $query;
	}
	public function fetch_login()
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
		ORDER BY login_id_pk ASC";
	 $query = $this->db->query($SQL);
	 return $query;
	}
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
	public function fetch_user_desig_type()
	{
		$query=$this->db->order_by('user_type_id_pk')->get_where("mpr_semitrans_user_type");
		return $query;
	}
	public function page_view()
	{
		$query=$this->db->order_by('privilege_id_pk')->get_where("mpr_semitrans_privilege");
		return $query;
	}
	public function privilege_id_pk($dat)
	{
	 $query=$this->db->get_where("mpr_semitrans_privilege",$dat);
		return $query;
	}
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
		$this->db->select($attri)->from('mpr_trans_audit_log')->order_by('audit_id_pk',"DESC");
		return $this->db->get()->result_array();
	}
	public function get_log_id($name)
	{
		return $this->db->select('username')->from('mpr_semitrans_login')->where('login_id_pk',$name)->get()->result_array()[0]['username'];
	}
}
	
?>