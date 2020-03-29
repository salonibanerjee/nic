<?php
class Admin_model extends CI_Model {
    public function store_cache($uname){
        $this->db->cache_on();
        //$this->db->where('email', $uname);
        //$this->db->select("gp_id");
        //$this->db->from("login");
        //$result = $this->db->get()->result()[0]->row();

        $query = $this->db->get_where('login',array('email'=>$uname));
        $row = $query->row();
        $result = $row->gp_id;

        $this->load->driver('cache', array('adapter' => 'file'));

        if ( ! $foo = $this->cache->get('Active Status')){
            echo 'Saving to the cache!<br />';
            $foo = $result;

            // Save into the cache for 5 minutes
            $this->cache->save('Active_status', $foo, 300);
        }
        $this->db->cache_off();
        return $result;
    }
}