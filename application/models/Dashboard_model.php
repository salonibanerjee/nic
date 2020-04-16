<?php
class Dashboard_model extends CI_Model{

    function matrix($block,$sch,$nblo,$nsch)
    {
        $i=0;
        $this->db->select('a_progress,s_name');
        $table = $this->db->get('dashboard_info');
        $b = array();
        while($i<$nsch){
            foreach($table->result() as $row){    
                if($row->s_name==$sch[$i]) 
                {   
                    $b[$i] = $row->a_progress;
                    $i++;
                    break;
                }
            }
            //return $b;
        }
        $j=0;
        $result=array();
        while($j<$nsch)
        {
            $d=array();
            $i=0;
            while($i<$nblo)
            {
                $this->db->select($b[$j])->where('schcd',$block[$i])->order_by('id_pk','desc')->limit(1);
                $table = $this->db->get($sch[$j])->row();
                $count = 0;
                $temp = $b[$j];
                if($table){
                    $value=$table->$temp;
                    array_push($d, $value);
                    $i++;
                }
                else
                {
                    array_push($d, 0);
                    $i++;
                }
            }
            array_push($result, $d);
            $j++;
        }
        return $result;
    }

    function get_loc($n,$num)
    {
        $this->db->select('location_area,location_schcd');
        $table = $this->db->get('location_data');
        $b = array();
        $i = 0;
        while($i<$num)
        {
            foreach($table->result() as $row){
                if($row->location_schcd == $n[$i])
                {
                    $temp = $row->location_area;
                    array_push($b, $temp);
                    $i = $i + 1;
                    break;
                } 
            }
        }
        return $b; 
    }

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
            $this->db->select($b[$i])->order_by('id_pk',"desc")->limit(1);
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
            $this->db->select($b[$j])->order_by('id_pk',"desc")->limit(1);
            $this->db->select($b[$j+1])->order_by('id_pk',"desc")->limit(1);
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

    function list_table($n,$m){
        $this->db->select($m);
        $tables = $this->db->get($n);
        $b = array();
        foreach($tables->result() as $row){
                $b[] = $row->$m;
        }
        return $b;
    }

    function fullname($n,$m){
        $this->db->select($m);
        $tables = $this->db->get($n);
        $b = array();
        foreach($tables->result() as $row){
                $b[] = $row->$m;
        }
        return $b;
    }

} 
?>