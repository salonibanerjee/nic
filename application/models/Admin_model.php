<?php
class Admin_model extends CI_Model {
    public function store_cache($uname){
        //$this->db->cache_on();
        //from login table
        $query = $this->db->get_where('Login',array('username'=>$uname,'active_status'=>1));
        $row = $query->row();
        if($row){
            //user_privilege stores array for multiple tuples
            $result = array(
                'gp_id' => $row->gp_id,
                'username' => $row->username,
                'password' => $row->password,
                'designation'=> $row->designation,
                'user_type_id_fk'=> $row->user_type_id_fk,
                'id'=> $row->id,
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

        if ( ! $foo = $this->cache->get('Active Status')){
            $foo = $result;
            $this->cache->save('Active_status', $foo, 3000);
        }elseif($this->cache->get('Active Status')['username']!=$uname){
            $this->cache->delete('Active_status');
            $this->cache->save('Active_status', $result, 3000);
        }
        $this->db->cache_off();
        return $result;
    }

    public function store_profile($uname){
        //$this->db->cache_on();
        $query = $this->db->get_where('profile',array('username'=>$uname));
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


    public function user_type_cache(){
        //from login table
        $a = array();
        $u = 1;
        $this->db->select('*');
        $this->db->from('user_type');
        $query= $this->db->get();
        foreach ($query->result() as $row){
            //if($row){
                //from user_privilege table get multiple tuples referring from user_type table
                $query_user_privilege = $this->db->get_where('user_privilege',array('user_type_id_fk'=>$row->user_type_id_pk));
                $table2 = $query_user_privilege->result();
    
                //joining both Privilege and user_privilege tuples
                foreach($table2 as $row_out){
                    $query_privilege = $this->db->get_where('Privilege',array('privilege_id_pk'=>$row_out->privilege_id_fk));
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
                                'privilege_active_status'=>$row3->active_status
                            );
                    }
                }
            //}

            $result = array(
                'user_type_id_pk'=>$row->user_type_id_pk,
                'desig' => $row->desig,
                'active_status'=> $row->active_status,
                'user_privilege'=>$a
            );
    
            $this->load->driver('cache', array('adapter' => 'file'));
    
            if ( ! $foo = $this->cache->get('User_type'.$u)){
                $foo = $result;
                $this->cache->save('User_type'.$u, $foo, 3000);
            }
            $u += 1;
        }
        $this->db->cache_off();
    }

    public function check_first_user(){
        $query= $this->db->get_where('check_First_User',array('user_id_pk' => $this->cache->get('Active_status')['id']));
        $row=$query->row();
        return $row->check_if_first_user;
    }
    
    public function check_user($n){
        return $this->db->get_where('Login',array('username'=>$n))->row();
    }

    public function update_login($user,$password){
        $this->db->where('username',$user);
        $this->db->update('Login',array('password'=>$password));
    }
}