<?php
class Dashboard_model extends CI_Model{

	/*
    function test($n)
	{
		$this->db->select('a_target');
		$table = $this->db->get('dashboard_info');
		$b = array();
        foreach($table->result() as $row){     	
            $b['a_target'] = $row->a_target;
        }
        $this->db->select($b['a_target'])->order_by('id',"desc")->limit(1);
        $table2 = $this->db->get($n)->row();
        $temp = $b['a_target'];
        //$d['data'] = $table2->result();
        //foreach($table2->result() as $row){
        //	$d['data'] = $row->$b['a_target'];
        //}
        return $table2->$temp;
	}
    */
    function test2($n, $num)
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
        //return $b;
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
    function name($n,$num)
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