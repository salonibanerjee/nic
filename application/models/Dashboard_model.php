<?php
class Dashboard_model extends CI_Model{

    function matrix($block,$sch,$nblo,$nsch)
    {
        $i=0;
        $this->db->select('a_progress,s_name');
        $table = $this->db->get('mpr_master_dashboard_info');
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
                //print_r($this->db->select($b[$j]));
                //echo $b[$j]."<br>";
                $this->db->select($b[$j])->where('location_code',$block[$i])->order_by('id_pk','desc')->limit(1);
                $table = $this->db->get($sch[$j])->row();
                //print_r($table);
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
        $this->db->select('location_area,location_code');
        $table = $this->db->get('mpr_master_location_data');
        $b = array();
        $i = 0;
        while($i<$num)
        {
            foreach($table->result() as $row){
                if($row->location_code == $n[$i])
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
    function get_progress($n,$num,$loc,$m,$y)
    {
        
        $this->db->select('a_target,a_progress,s_name');
        $table = $this->db->get('mpr_master_dashboard_info');
        $b = array();
        $a = array();
        $i = 0;
        while($i<$num)
        { 
            foreach($table->result() as $row){    
                if($row->s_name==$n[$i]) 
                {       
                    $b[$i] = $row->a_progress;
                    $a[$i] = $row->a_target;
                    $i++;
                    break;
                }
            }

        }
        //return $a;
        $i=0;
        $pro = array();
        $tar = array();
        while($i<$num)
        {
            $this->db->select('*')->where(array('month'=>$m,'session'=>$y,'location_code'=>$loc))->order_by('id_pk',"desc")->limit(1);
            $table1 = $this->db->get($n[$i])->row();
            $temp1 = $b[$i];
            $temp2 = $a[$i];
            if($table1)
            {
                array_push($pro, $table1->$temp1);
                array_push($tar, $table1->$temp2);
                $i++;
            }else
            {
                array_push($pro, "false");
                array_push($tar, "false");
                $i++;
            }
        }
        $ans=array();
        for($i=0;$i<sizeof($tar);$i++){
            if($tar[$i]=="false"){
                $temp="false";
            }
            else if($tar[$i]!=0){
                $temp=(int)($pro[$i]/$tar[$i]*100);
            }
            else
                $temp=0;
            array_push($ans, $temp);
        }
        return $ans;
    }

    function get_prog($n,$num,$loc,$m,$y)
	{
        
		$this->db->select('a_target,a_progress,s_name');
		$table = $this->db->get('mpr_master_dashboard_info');
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
            $this->db->select($b[$i])->where(array('month'=>$m,'session'=>$y,'location_code'=>$loc))->order_by('id_pk',"desc")->limit(1);
            $table2 = $this->db->get($n[$i])->row();
            $temp = $b[$i];
            if($table2)
            {
                array_push($d, $table2->$temp);
                $i++;
            }else
            {
                array_push($d, "false");
                $i++;
            }
        }
        return $d;
	}
    
    function get_data($n, $num,$loc,$m,$y)
    {
        $this->db->select('a_target, a_progress, s_name');
        $table = $this->db->get('mpr_master_dashboard_info');
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
        //$m = (int)date('m');
        //$y = date('Y');
        while($j<(2*$num))
        {
            $this->db->select($b[$j])->where(array('month'=>$m,'session'=>$y,'location_code'=>$loc))->order_by('id_pk',"desc")->limit(1);
            $this->db->select($b[$j+1])->where(array('month'=>$m,'session'=>$y,'location_code'=>$loc))->order_by('id_pk',"desc")->limit(1);
            $table2 = $this->db->get($n[$x])->row();
            $temp1 = $b[$j];
            $temp2 = $b[$j+1];
            if($table2)
                array_push($d, $table2->$temp1, $table2->$temp2);
            else
                array_push($d, "false", "false");
            $j=$j+2;
            $x=$x+1;
        }
        return $d;
    }

    function sch_name($n,$num)
    {
        $this->db->select('name,s_name');
        $tables = $this->db->get('mpr_master_scheme_table');
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

function list_table_withloc($n,$m){
        $this->db->select($m);
        $this->db->like($m,'19161', $this->session->userdata('location_code'), 'after');
        $tables = $this->db->get($n);
        $b = array();
        foreach($tables->result() as $row){
                $b[] = $row->$m;
        }
        return $b;
    }

    function fullname_withloc($n,$m){
        $this->db->select($m);
        $this->db->like('location_code',$this->session->userdata('location_code'), 'after');
        $tables = $this->db->get($n);
        $b = array();
        foreach($tables->result() as $row){
                $b[] = $row->$m;
        }
        return $b;
    }

} 
?>