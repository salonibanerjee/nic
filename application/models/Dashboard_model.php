<?php
class Dashboard_model extends CI_Model{

    function matrix($block,$sch,$nblo,$nsch){
        $i=0;
        $this->db->select('attri_progress,sch_tab_name');
        $table = $this->db->get('mpr_master_dashboard_info');
        $b = array();
        while($i<$nsch){
            foreach($table->result() as $row){    
                if($row->sch_tab_name==$sch[$i]) 
                {   
                    $b[$i] = $row->attri_progress;
                    $i++;
                    break;
                }
            }
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

    function get_alert($loc,$scheme){

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
        
        $this->db->select('attr_target,attri_progress,sch_tab_name');
        $table = $this->db->get('mpr_master_dashboard_info');
        $b = array();
        $a = array();
        $i = 0;
        while($i<$num)
        { 
            foreach($table->result() as $row){    
                if($row->sch_tab_name==$n[$i]) 
                {       
                    $b[$i] = $row->attri_progress;
                    $a[$i] = $row->attr_target;
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
            if($m != 0)
                $this->db->select('*')->where(array('month'=>$m,'session'=>$y,'location_code'=>$loc))->order_by('month',"desc")->order_by('session',"desc")->limit(1);
            else   
                $this->db->select('*')->where(array('location_code'=>$loc))->order_by('month',"desc")->order_by('session',"desc")->limit(1);
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

    function getlocID($loc){
        $this->db->select('location_id_pk')->where(array('location_code'=>$loc));
        $table = $this->db->get('mpr_master_location_data')->row();
        return $table->location_id_pk;
    }

    function get_prog($n,$num,$loc,$m,$y){
		$this->db->select('attr_target,attri_progress,sch_tab_name');
		$table = $this->db->get('mpr_master_dashboard_info');
		$b = array();
        $i = 0;
        while($i<$num){
            foreach($table->result() as $row){    
                if($row->sch_tab_name==$n[$i]){	    
                    $b[$i] = $row->attri_progress;
                    $i++;
                    break;
                }
            }
        }

        $i=0;
        $d = array();
        while($i<$num)
        {
            if($m != 0)
                $this->db->select($b[$i])->where(array('month'=>$m,'session'=>$y,'location_code'=>$loc))->order_by('month',"desc")->order_by('session',"desc")->limit(1);
            else
                $this->db->select($b[$i])->where(array('location_code'=>$loc))->order_by('month',"desc")->order_by('session',"desc")->limit(1);
            $table2 = $this->db->get($n[$i])->row();
            $temp = $b[$i];
            if($table2)
            {
                array_push($d, $table2->$temp);
                $i++;
            }else{
                array_push($d, "false");
                $i++;
            }
        }
        return $d;
    }
    
    function get_alertdata($n, $num,$loc,$m,$y)
    {
        $this->db->select('attr_target, attri_progress, sch_tab_name');
        $table = $this->db->get('mpr_master_dashboard_info');
        $b = array();
        $i=0;
        $x=0;
        while($x<$num){
            foreach($table->result() as $row){
                if($row->sch_tab_name==$n[$x]) 
                {     
                    $b[$i] = $row->attr_target;
                    $b[$i+1] = $row->attri_progress;
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
            if($m != 0){
                $this->db->select($b[$j])->where(array('month'=>$m,'session'=>$y))->like('location_code',$loc,'after')->order_by('month',"desc")->order_by('session',"desc");
                $this->db->select($b[$j+1])->where(array('month'=>$m,'session'=>$y))->like('location_code',$loc,'after')->order_by('month',"desc")->order_by('session',"desc");
            } else {
                $this->db->select($b[$j])->like('location_code',$loc,'after')->order_by('month',"desc")->order_by('session',"desc");
                $this->db->select($b[$j+1])->like('location_code',$loc,'after')->order_by('month',"desc")->order_by('session',"desc");
            }

            $table2 = $this->db->get($n[$x])->result();
            
            $te1 = $b[$j];
            $te2 = $b[$j+1];
            $temp1=0;
            $temp2=0; 
            $testing = array();

            if(sizeof($table2)!=0){
                foreach ($table2 as $row ){
                    $atripro=$row->$te1;
                    $atritar=$row->$te2;
                    array_push($testing,$atripro);
                    array_push($testing,$atritar);
                }
                for($i=0;$i<sizeof($testing);$i+=2){
                    $temp1+=$testing[$i];
                    $temp2+=$testing[$i+1];
                }
                array_push($d, $temp1,$temp2);
            }
            else
                array_push($d, "false", "false");
            $j=$j+2;
            $x=$x+1;

        }
        return $d;
    }

    
    function get_data($n, $num,$loc,$m,$y)
    {
        $this->db->select('attr_target, attri_progress, sch_tab_name');
        $table = $this->db->get('mpr_master_dashboard_info');
        $b = array();
        $i=0;
        $x=0;
        while($x<$num){
            foreach($table->result() as $row){
                if($row->sch_tab_name==$n[$x]) 
                {     
                    $b[$i] = $row->attr_target;
                    $b[$i+1] = $row->attri_progress;
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
            if($m != 0){
                $this->db->select($b[$j])->where(array('month'=>$m,'session'=>$y,'location_code'=>$loc))->order_by('month',"desc")->order_by('session',"desc")->limit(1);
                $this->db->select($b[$j+1])->where(array('month'=>$m,'session'=>$y,'location_code'=>$loc))->order_by('month',"desc")->order_by('session',"desc")->limit(1);
            } else {
                $this->db->select($b[$j])->where(array('location_code'=>$loc))->order_by('month',"desc")->order_by('session',"desc")->limit(1);
                $this->db->select($b[$j+1])->where(array('location_code'=>$loc))->order_by('month',"desc")->order_by('session',"desc")->limit(1);
            }

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

    function schID($sch,$n,$loc){
        $i=0;
        $res = array();
        while($i<$n){
            $this->db->select('scheme_id_pk,short_name')->where(array('short_name' => $sch[$i]));
            $table=$this->db->get('mpr_master_scheme_table')->row();
            array_push($res, $table->scheme_id_pk);
            $i++;
        }
        return $res;
    }

    function alert_data($loc,$sch,$n){
        $i=0;
        $result=array();
        while($i<$n){
            $this->db->select('*')->where(array('scheme_id_fk'=>$sch[$i],'location_id_fk'=>$loc));
            $table=$this->db->get('mpr_trans_fundalloc')->row();
            //return table
            if($table){
                //$fundall='funds_allocated';
                //$funduti='funds-utilised';
                array_push($result, $table->funds_allocated);
                array_push($result, $table->funds_utilised);
                $i++;
            }
            else{
                array_push($result, 'false');
                array_push($result, 'false');
                $i++;
            }
        }
        return $result;
    }

    function sch_name($n,$num)
    {
        $this->db->select('name,short_name');
        $tables = $this->db->get('mpr_master_scheme_table');
        $b = array();
        $i = 0;
        while($i<$num)
        {
            foreach($tables->result() as $row){
                if($row->short_name == $n[$i])
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
        $this->db->like($m, $this->session->userdata('location_code'), 'after');
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