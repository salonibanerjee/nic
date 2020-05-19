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
	public function add_check_first_user($data){
		if($this->db->insert("mpr_semitrans_check_first_user",$data))
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
	public function location_data()
	{
		$query=$this->db->get_where("mpr_master_location_data");
		return $query;
	}
	public function department()
	{
		$query=$this->db->get_where("mpr_master_department");
		return $query;
	}
	public function designation()
	{
		$query=$this->db->get_where("mpr_master_designation");
		return $query;
	}
	public function fetch_login()
	{
		$query=$this->db->order_by('login_id_pk')->get_where("mpr_semitrans_login");
		return $query;
	}
	public function fetch_user_privilege()
	{
		$query=$this->db->order_by('user_priv_id_pk')->get_where("mpr_semitrans_user_privilege");
		return $query;
	}
	public function fetch_user_desig_type()
	{
		$query=$this->db->order_by('user_type_id_pk')->get_where("mpr_semitrans_user_type");
		return $query;
	}
}
	
?>