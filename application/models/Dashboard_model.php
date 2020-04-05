<?php
class Dashboard_model extends CI_Model{

    function get_prog($n,$num)
	{
		$this->db->select('a_progress,s_name');
		$table = $this->db->get('dashboard_info');
		$b = array();
        $i = 0;
        while($i<$num)
        { 
            foreach($table->result() as $row){    
                if($row->s_name==$n[$i]) 
                {	
                    $b[$i] = $row->a_progress;
                    $i++;
                    break;
                }
            }

        }
        $i=0;
        $d = array();
        while($i<$num)
        {
            $this->db->select($b[$i])->order_by('id',"desc")->limit(1);
            $table2 = $this->db->get($n[$i])->row();
            $temp = $b[$i];
            array_push($d, $table2->$temp);
            $i++;
        }
        return $d;
	}
    
    function get_data($n, $num)
    {
        $this->db->select('a_target, a_progress, s_name');
        $table = $this->db->get('dashboard_info');
        $b = array();
        $i=0;
        $x=0;
        while($x<$num){
            foreach($table->result() as $row){
                if($row->s_name==$n[$x]) 
                {     
                    $b[$i] = $row->a_target;
                    $b[$i+1] = $row->a_progress;
                    $i=$i+2;
                    $x=$x+1;
                    break;
                }
            }
        }
        $j = 0;
        $x = 0;
        $d = array();
        while($j<(2*$num))
        {
            $this->db->select($b[$j])->order_by('id',"desc")->limit(1);
            $this->db->select($b[$j+1])->order_by('id',"desc")->limit(1);
            $table2 = $this->db->get($n[$x])->row();
            $temp1 = $b[$j];
            $temp2 = $b[$j+1];
            array_push($d, $table2->$temp1, $table2->$temp2);
            $j=$j+2;
            $x=$x+1;
        }
        return $d;
    }
    function sch_name($n,$num)
    {
        $this->db->select('name,s_name');
        $tables = $this->db->get('dashboard_info');
        $b = array();
        $i = 0;
        while($i<$num)
        {
            foreach($tables->result() as $row){
                if($row->s_name == $n[$i])
                {
                    $temp = $row->name;
                    array_push($b, $temp);
                    $i = $i + 1;
                    break;
                } 
            }
        }
        return $b; 
    }
} 
?>