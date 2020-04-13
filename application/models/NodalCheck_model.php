<?php
class NodalCheck_model extends CI_Model{    

    function fetch_draft(){
        $tables = $this->db->list_tables();
        $draft_table = array();
        foreach($tables as $row){
            if(strpos($row, "_draft"))
                array_push($draft_table, $row);
        }

        return $draft_table;
    }

    function draft_name($tables){
        
        $table_name = array();
        foreach($tables as $row){
            $query = $this->db->get_where('scheme_table', array('s_name' => str_replace('_draft', '', $row)));
            $row1 = $query->row();
            array_push($table_name, $row1->name);
        }
        
        return $table_name;
    }

    function check($tables){
        $count_check = array();
        foreach($tables as $row){
            array_push($count_check, $this->db->count_all($row));
        }

        return $count_check;
    }

    /*
    str_replace('_draft', '', $row)
    str_replace($search, '', $subject)
    echo $this->db->count_all('my_table');
    */
}
?>