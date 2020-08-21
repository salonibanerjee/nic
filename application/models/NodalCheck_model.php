<?php
class NodalCheck_model extends CI_Model{    

    function fetch_draft(){
        $tables = $this->cache->get('scheme_hier_'.$this->session->userdata('dept'));
        foreach($tables as $row){
            if ($this->db->table_exists($row['scheme_link'].'_draft')){
                $draft_table[]=$row['scheme_link'].'_draft';
            }
        }
        return $draft_table;
    }

    function draft_name($tables){
        
        $table_name = array();
        foreach($tables as $row){
            $query = $this->db->get_where('mpr_master_scheme_table', array('short_name' => str_replace('_draft', '', $row)));
            $row1 = $query->row();
            array_push($table_name, $row1->name);
        }
        
        return $table_name;
    }

    function check($tables){
        $count_check = array();
        foreach($tables as $row){
            $this->db->like('location_code', $this->session->userdata('location_code'), 'after');
            $this->db->from($row);
            array_push($count_check, $this->db->count_all_results());
        }

        return $count_check;
    }

    public function alert(){
        $query = $this->db->select('*')->where('active_status',1)->order_by('meeting_id_pk',"desc")->limit(1)->get('mpr_trans_meeting_schedule')->row();
        if($query!=NULL){
            $time = $query->start_time;
            $start_time = strtotime($time);
            $end_time= strtotime('+6 hours',strtotime($query->end_time));
            $current_time = strtotime('+6 hours', now());

            if(($current_time>$start_time) && ($current_time<$end_time)){
                return true;
            }
            else
                return false;
        }else
            return false;

    }
    
}
?>