<?php
class Admin_model extends CI_Model {
    public function store_cache($uname){
        $this->db->cache_on();
        //from login table
        $query = $this->db->get_where('Login',array('username'=>$uname,'active_status'=>1));
        $row = $query->row();
        if($row){
            //from user_type table
            $query_user_type = $this->db->get_where('user_type',array('user_type_id_pk'=>$row->user_type_id_fk));
            $row1 = $query_user_type->row();

            //from user_privilege table get multiple tuples referring from user_type table
            $query_user_privilege = $this->db->get_where('user_privilege',array('user_type_id_fk'=>$row1->user_type_id_pk));
            $table2 = $query_user_privilege->result();

            //joining both Privilege and user_privilege tuples
            $a = array();
            foreach($table2 as $row_out){
                $query_privilege = $this->db->get_where('Privilege',array('privilege_id_pk'=>$row_out->privilege_id_fk));
                $row3 = $query_privilege->row();
                if($row3->active_status==1){
                    $a[]=array(
                            'privilege_id_fk'=> $row_out->privilege_id_fk,
                            'user_type_id_fk'=> $row_out->user_type_id_fk,
                            'active_status'=> $row_out->active_status,

                            'parent'=> $row3->parent,
                            'link'=> $row3->link,
                            'view_sidebar'=> $row3->view_sidebar,
                            'order'=> $row3->order
                        );
                }
            }

            //user_privilege stores array for multiple tuples
            $result = array(
                'gp_id' => $row->gp_id,
                'username' => $row->username,
                'password' => $row->password,
                'designation'=> $row->designation,
                'user_type_id_fk'=> $row->user_type_id_fk,
                'id'=> $row->id,
                'active_status'=> $row->active_status,
                'desig'=>$row1->desig,
                'user_privilege'=>$a
            );
        }else{
            $result = NULL;
        }

        $this->load->driver('cache', array('adapter' => 'file'));

        if ( ! $foo = $this->cache->get('Active Status')){
            echo 'Saving to the cache!<br />';
            $foo = $result;
            // Save into the cache for 5 minutes
            $this->cache->save('Active_status', $foo, 3000);
        }
        $this->db->cache_off();
        return $result;
    }
}