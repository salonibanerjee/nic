<?php
class Dashboard_model extends CI_Model{

    //Matrix data for Physical progress view bar chart
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

    //Alert filter data with there respective filters
    function alert_filter($loc,$sch,$n){
        $i=0;
        $result=array();
        while($i<$n){
            $this->db->select('*')->where(array('scheme_id_fk'=>$sch[$i],'location_id_fk'=>$loc));
            $table=$this->db->get('mpr_trans_fundalloc')->row();
            if($table){
                $fundallocated=$table->funds_allocated;
                $fundutillised=$table->funds_utilised;
                $thre=$table->threshold;
                if($fundallocated==0){
                    array_push($result, 'false');
                    array_push($result, 'false');
                }
                else{
                    $ans=($fundutillised/$fundallocated)*100;
                    if($ans<$thre){
                        array_push($result, $fundallocated);
                        array_push($result, $fundutillised);
                    }
                    else{
                        array_push($result, 'false');
                        array_push($result, 'false');
                    }
                }
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

    //get location Name repective to there code
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

    //location ID for current login
    function getlocID($loc){
        $this->db->select('location_id_pk')->where(array('location_code'=>$loc));
        $table = $this->db->get('mpr_master_location_data')->row();
        return $table->location_id_pk;
    }

    
    //geting progress data
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

    //get location scheme id for fund allocation
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

    //data for pie chart
    function alert_data($loc,$sch,$n){
        $i=0;
        $result=array();
        while($i<$n){
            $this->db->select('*')->where(array('scheme_id_fk'=>$sch[$i],'location_id_fk'=>$loc));
            $table=$this->db->get('mpr_trans_fundalloc')->row();
            if($table){
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

    //getting the actual names of schemes
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
            if($row->$m == "1911")
                continue;
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
            if($row->$m == "HOWRAH")
                continue;
            $b[] = $row->$m;
        }
        return $b;
    }

} 
?>