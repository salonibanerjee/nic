<?php
class Admin_model extends CI_Model {
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
                'active_status'=> $row->active_status
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

    public function store_profile($uname){
        //$this->db->cache_on();
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

    function sort($a, $b) {
        if ($a['order'] == $b['order']) return 0;
        return ($a['order'] > $b['order']) ? 1 : -1;
    }


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
            //}
            $result = array(
                'user_type_id_pk'=>$var,
               // 'desig' => $row->desig,
                'active_status'=> $user_type,
                'user_privilege'=>$a
            );
    
            $this->load->driver('cache', array('adapter' => 'file'));
    
            if ( ! $foo = $this->cache->get('User_type'.$var)){
                $foo = $result;
                $this->cache->save('User_type'.$var, $foo, 3000);
            }
            //$u += 1;
        //}
        $this->db->cache_off();
    }

    public function check_first_user(){
        $query= $this->db->get_where('mpr_semitrans_check_first_user',array('user_id_pk' => $this->cache->get('Active_status'.$this->session->userdata('loginid'))['login_id_pk']));
        $row=$query->row();
        return $row->check_if_first_user;
    }
    
    public function check_user($n){
        return $this->db->get_where('mpr_semitrans_login',array('username'=>$n))->row();
    }

    public function update_login($user,$password){
        $this->db->where('username',$user);
        $this->db->update('mpr_semitrans_login',array('password'=>$password));
    }
    public function update_first_profile(){
        $this->db->where('user_id_pk',$this->cache->get('Active_status'.$this->session->userdata('loginid'))['login_id_pk']);
        $this->db->update('mpr_semitrans_check_first_user',array('check_profile_updated_once' => 0 ));
    }
    public function update_first_pass($username){
        $row=$this->db->get_where('mpr_semitrans_login',array('username'=>$username))->row();
        $this->db->where('user_id_pk',$row->login_id_pk);
        $this->db->update('mpr_semitrans_check_first_user',array('check_if_first_user' => 0 ));
    }
    public function meeting_schedule($data){
        //$this->db->where('meeting_id_pk', 1);
		$this->db->insert('mpr_trans_meeting_schedule', $data);
    }

    public function previous_meeting_schedule(){
        //$query = $this->db->get_where('mpr_trans_meeting_schedule',array('meeting_id_pk'=>1));
        //$row=$query->row();
        $last_row=$this->db->select('*')->order_by('meeting_id_pk',"desc")->limit(1)->get('mpr_trans_meeting_schedule')->row();
        return $last_row;
    }

    public function _generateCaptcha(){
        $vals = array(
            //'word'          => rand(1000, 9999),
            'word'          => $this->getName(5,8),
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

    public function getName($x,$y) {
        $length = rand($x,$y);
        $characters = '0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ';
        $randomString = '';
    
        for ($i = 0; $i < $length; $i++) {
            $randomString .= $characters[rand(0, strlen($characters) - 1)];
        }
    
        return $randomString;
    }

    public function findpass($n){
        $query=$this->db->get_where("mpr_semitrans_login",array('username'=>$n));
        return $query->row();
    }
}