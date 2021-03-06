<?php
/**
 * Model Child Class
 *
 *
 * @package		CodeIgniter
 * @category	Model
 * @author		Riddhinath Ganguly,Sayak Das,hriddhi Mondal,Saloni Banerjee
*/

//All Login, User details, caching , captcha, password, update user details functionalities----------------------------------------------


class Admin_model extends CI_Model {
    //stores a user cache naming convention like <Active_status><login_id> for each and every user--------------------------------------
    public function store_cache($uname){
        //$this->db->cache_on();
        //from login table
        $query = $this->db->get_where('mpr_semitrans_login',array('username'=>$uname,'active_status'=>1));
        $row = $query->row();
        if($row){
            //user_privilege stores array for multiple tuples
            $result = array(
                'schcd' => $row->location_code,
                'username' => $row->username,
                'password' => $row->password,
                'desig_id_fk'=> $row->desig_id_fk,
                'office_id_fk'=> $row->office_id_fk,
                'dept_id_fk'=> $row->dept_id_fk,
                'user_type_id_fk'=> $row->user_type_id_fk,
                'login_id_pk'=> $row->login_id_pk,
                'active_status'=> $row->active_status,
            );
        }else{
            //to remove the null object error when access denied
            $result = array(
                'username'=>'--',
                'active_status'=>0,
                'user_type_id_fk'=>1
            );
        }

        $this->load->driver('cache', array('adapter' => 'file'));

        if ( ! $foo = $this->cache->get('Active_status'.$this->session->userdata('loginid'))){
            $foo = $result;
            $this->cache->save('Active_status'.$this->session->userdata('loginid'), $foo, 3000);
        }
        $this->db->cache_off();
        return $result;
    }
    //cache for scheme privileges
    public function scheme_hier_cache(){
        $loginid = $this->session->userdata('loginid');
        $dept = $this->session->userdata('dept');
        $query = $this->db->get_where('mpr_master_scheme_dept',array('dept_id_fk'=>$dept))->result_array();
        foreach($query as $row){
            $scheme = $this->db->get_where('mpr_master_scheme_table',array('scheme_id_pk'=>$row['scheme_id_fk']))->row();
            $result[]=array(
                'scheme_name' => $scheme->name,
                'scheme_link' => $scheme->short_name
            );
        }
        $this->load->driver('cache', array('adapter' => 'file'));
        if ( ! $foo = $this->cache->get('scheme_hier_'.$dept)){
            $foo = $result;
            $this->cache->save('scheme_hier_'.$dept, $foo, 3000);
        }
    }

    //stores dashboard data cache for faster loading-------------------------------------------------------------------------------------
    public function dashboard_cache(){
        $dept = $this->session->userdata('dept');
        $query = $this->db->get_where('mpr_master_scheme_dept',array('dept_id_fk'=>$dept))->result_array();

        $result_progress = array();
        $result_pie = array();
        $result_bar = array();
        $result_bar2 = array();
        foreach($query as $row){
            $scheme = $this->db->get_where('mpr_master_scheme_table',array('scheme_id_pk'=>$row['scheme_id_fk']))->row();

            array_push($result_progress,$scheme->short_name);
            array_push($result_bar,$scheme->short_name);
            array_push($result_pie,$scheme->short_name);
            array_push($result_bar2,$scheme->short_name);
        }
        $this->load->driver('cache', array('adapter' => 'file'));
        if ( ! $foo = $this->cache->get('dashboard_cache_progress'.$this->session->userdata('loginid'))){
            $foo = $result_progress;
            $this->cache->save('dashboard_cache_progress'.$this->session->userdata('loginid'), $foo, 3000);
        }
        if ( ! $foo = $this->cache->get('dashboard_cache_bar'.$this->session->userdata('loginid'))){
            $foo = $result_bar;
            $this->cache->save('dashboard_cache_bar'.$this->session->userdata('loginid'), $foo, 3000);
        }
        if ( ! $foo = $this->cache->get('dashboard_cache_pie'.$this->session->userdata('loginid'))){
            $foo = $result_pie;
            $this->cache->save('dashboard_cache_pie'.$this->session->userdata('loginid'), $foo, 3000);
        }
        if ( ! $foo = $this->cache->get('dashboard_cache_bar2'.$this->session->userdata('loginid'))){
            $foo = $result_bar2;
            $this->cache->save('dashboard_cache_bar2'.$this->session->userdata('loginid'), $foo, 3000);
        }
    }

    //stores profile data cache -----------------------------------------------------------------------------------------------------
    public function store_profile($uname){
        $query = $this->db->get_where('mpr_semitrans_profile',array('username'=>$uname));
        $row = $query->row();
        if($row){
            $result=array(
                'username'=> $uname,
                'f_name'=>$row->f_name,
                'm_name'=>$row->m_name,
                'l_name'=>$row->l_name,
                'mobile'=>$row->mobile
            );
        }else{
            $result=NULL;
        }
        $this->load->driver('cache', array('adapter' => 'file'));

        if ( ! $foo = $this->cache->get('Profile')){
            $foo = $result;
            $this->cache->save('Profile', $foo, 3000);
        }
        $this->db->cache_off();
    }

    function array_sort_by_column(&$arr, $col, $dir = SORT_ASC) {
        $sort_col = array();
        foreach ($arr as $key=> $row) {
            $sort_col[$key] = $row[$col];
        }
    
        array_multisort($sort_col, $dir, $arr);
    }

    //stores user type cache naming convention <User_type><user_type_id>------------------------------------------------------------------
    public function user_type_cache($var){
        //from login table
        $user_type=$this->db->get_where('mpr_semitrans_user_type',array('user_type_id_pk'=>$var))->row()->active_status;
        $a = array();
        $query_user_privilege = $this->db->order_by('user_priv_id_pk')->get_where('mpr_semitrans_user_privilege',array('user_type_id_fk'=>$var));
        $table2 = $query_user_privilege->result();
    
                //joining both Privilege and user_privilege tuples
        foreach($table2 as $row_out){
            $query_privilege = $this->db->get_where('mpr_semitrans_privilege',array('privilege_id_pk'=>$row_out->privilege_id_fk));
            $row3 = $query_privilege->row();
            if($row3->active_status==1){
                $a[]=array(
                    'privilege_id_fk'=> $row_out->privilege_id_fk,
                    'user_type_id_fk'=> $row_out->user_type_id_fk,
                    'user_privilege_active_status'=> $row_out->active_status,
    
                                'parent'=> $row3->parent,
                                'link'=> $row3->link,
                                'view_sidebar'=> $row3->view_sidebar,
                                'order'=> $row3->order,
                                'page_name'=>$row3->page_name,
                                'privilege_active_status'=>$row3->active_status
                            );
                    }
                }
            $this->array_sort_by_column($a,"order");
            $result = array(
                'user_type_id_pk'=>$var,
                'active_status'=> $user_type,
                'user_privilege'=>$a
            );
    
            $this->load->driver('cache', array('adapter' => 'file'));
    
            if ( ! $foo = $this->cache->get('User_type'.$var)){
                $foo = $result;
                $this->cache->save('User_type'.$var, $foo, 3000);
            }
        $this->db->cache_off();
    }

    //checks whether user is logging in for the first time-------------------------------------------------------------------------
    public function check_first_user(){
        $query= $this->db->get_where('mpr_semitrans_check_first_user',array('user_id_pk' => $this->cache->get('Active_status'.$this->session->userdata('loginid'))['login_id_pk']));
        $row=$query->row();
        return $row->check_if_first_user;
    }
    
    //checks the user details trying to logging in-----------------------------------------------------------------------------------
    public function check_user($n){
        return $this->db->get_where('mpr_semitrans_login',array('username'=>$n))->row();
    }

    //updates the password for change password and forget password---------------------------------------------------------------------
    public function update_login($user,$password){
        $this->db->where('username',$user);
        $this->db->update('mpr_semitrans_login',array('password'=>$password));
    }
    //updates the user editing profile for the first time status in the database-------------------------------------------------------
    public function update_first_profile(){
        $this->db->where('user_id_pk',$this->cache->get('Active_status'.$this->session->userdata('loginid'))['login_id_pk']);
        $this->db->update('mpr_semitrans_check_first_user',array('check_profile_updated_once' => 0 ));
    }
    //updates the user logging in for the first time status in the database------------------------------------------------------------
    public function update_first_pass($username){
        $row=$this->db->get_where('mpr_semitrans_login',array('username'=>$username))->row();
        $this->db->where('user_id_pk',$row->login_id_pk);
        $this->db->update('mpr_semitrans_check_first_user',array('check_if_first_user' => 0 ));
    }
    
    //inserts new meeting in the database----------------------------------------------------------------------------------------------
    public function meeting_schedule($data){
		$this->db->insert('mpr_trans_meeting_schedule', $data);
    }

    //loads latest meeting data constantly in the notification bell--------------------------------------------------------------------
    public function previous_meeting_schedule(){
        $last_row=$this->db->select('*')->order_by('meeting_id_pk',"desc")->limit(1)->get_where('mpr_trans_meeting_schedule',array('active_status'=>1))->row();
        return $last_row;
    }

    public function cancel_meeting($mid){
        $query=$this->db->where('meeting_id_pk',$mid)->update('mpr_trans_meeting_schedule',array('active_status'=>0));
        return $query;
    }

    //function to generate captcha and reconfigurable----------------------------------------------------------------------------------
    public function _generateCaptcha(){
        $vals = array(
            'word'          => $this->getName(),
            'img_path'      => './captcha/',
            'img_url'       => 'http://localhost/NIC/captcha/',
            'font_path'     => './path/to/fonts/texb.ttf',
            'img_width'     => '200',
            'img_height'    => 40,
            'expiration'    => 7200,
            'word_length'   => 8,
            'font_size'     => 50,
            'img_id'        => 'Imageid',
            'pool'          => '0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ',
    
            // White background and border, black text and red grid
            'colors'        => array(
                    'background' => array(255, 255, 255),
                    'border' => array(255, 255, 255),
                    'text' => array(0, 0, 0),
                    'grid' => array(51, 153, 255)
            )
        );
        /* Generate the captcha */
        return create_captcha($vals);
    }

    //captcha string characters which is reconfigurable-------------------------------------------------------------------------------
    public function getName() {
        $length = 6;
        $characters = '0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ';
        $randomString = '';
    
        for ($i = 0; $i < $length; $i++) {
            $randomString .= $characters[rand(0, strlen($characters) - 1)];
        }
    
        return $randomString;
    }

    //checks the password of an user trying to log in---------------------------------------------------------------------------------
    public function findpass($n){
        $query=$this->db->get_where("mpr_semitrans_login",array('username'=>$n));
        return $query->row();
    }

    //creates a notification cache for every user naming convention <Noti><login_id> for storing counts and realtime prompts----------
    public function noti_cache($id){
        $mydesig=$this->session->userdata('desig'); //fetching user desig_id_fk
        $myloc=$this->session->userdata('location_code');
        $mydesig_only=$this->session->userdata('desig');
        $q = "SELECT * FROM mpr_trans_notification WHERE active_status=1 AND (radiosel=2 OR (radiosel=1 AND audience_desig_only=$mydesig_only) OR (radiosel=0 AND audience_ut=".$mydesig." AND audience_loc='$myloc'))";
        $noti=$this->db->query($q)->num_rows();
        $result=array('noti_count'=>$noti);
        $this->load->driver('cache', array('adapter' => 'file'));

        if ( ! $foo = $this->cache->get('Noti'.$this->session->userdata('loginid'))){
            $foo = $result;
            $this->cache->save('Noti'.$this->session->userdata('loginid'), $foo, 3000);
        }
    }

    //deletes notification active status
    public function noti_status(){
        $query=$this->db->query('CALL notification_status();');
        return $query;
    }
}