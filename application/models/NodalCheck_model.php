<?php
class NodalCheck_model extends CI_Model{    

    function fetch_draft(){
        $tables = $this->cache->get('scheme_hier_'.$this->session->userdata('dept'));
        foreach($tables as $row){
            if ($this->db->table_exists($row['scheme_link'].'_draft')){
                $draft_table[]=$row['scheme_link'].'_draft';
            }
        }
        //print_r($draft_table);
        return $draft_table;
    }

    function draft_name($tables){
        
        $table_name = array();
        foreach($tables as $row){
            $query = $this->db->get_where('mpr_master_scheme_table', array('short_name' => str_replace('_draft', '', $row)));
            $row1 = $query->row();
            //print_r($row1);
            array_push($table_name, $row1->name);
        }
        
        return $table_name;
    }

    function check($tables){
        $count_check = array();
        foreach($tables as $row){
            $this->db->like('location_code', $this->session->userdata('location_code'), 'after');
            array_push($count_check, $this->db->count_all($row));
        }

        return $count_check;
    }

    function alert(){
        $query = $this->db->select('start_time')->order_by('meeting_id_pk',"desc")->limit(1)->get('mpr_trans_meeting_schedule')->row();
        $time = $query->start_time;
        //$time = strtotime($start_time);
        $start_time = mdate('%Y-%m-%d %H:%i', strtotime($time));
        $current_time = mdate('%Y-%M-%d %H:%i',strtotime('+6 hours', now()));

        if($current_time > $start_time)
            return true;
        else
            return false;

    }

    /*
    str_replace('_draft', '', $row)
    str_replace($search, '', $subject)
    echo $this->db->count_all('my_table');
    */

    
}
?>