<?php
/**
 * Model Child Class
 *
 *
 * @package		CodeIgniter
 * @category	Model
 * @author		Hriddhi Mondal,Dipak Gupta
*/

class Dashboard_model extends CI_Model{

    //Matrix data for Physical progress view bar chart
    /*
        block -> Locations selected by users
        sch -> Scheme tables name
        nblo -> sizeof(block)
        nsch -> sizeof(sch)
    */
    function matrix($block,$sch,$nblo,$nsch,$month,$ses){
        $i=0;
        $this->db->select('attri_progress,sch_tab_name');
        $table = $this->db->get('mpr_master_dashboard_info');
        $b = array();
        $scheme_type=array();
        while($i<$nsch){
            foreach($table->result() as $row){    
                if($row->sch_tab_name==$sch[$i]) 
                {   
                    $this->db->select('financial_year_id_fk')->where(array('short_name'=>$sch[$i]));
                    $temptable = $this->db->get('mpr_master_scheme_table')->row();
                    array_push($scheme_type,$temptable->financial_year_id_fk);
                    $b[$i] = $row->attri_progress;
                    $i++;
                    break;
                }
            }
        }
        //return $scheme_type;
        /*
            b array consist of "progress attribute" of each scheme
            Example: 
            scheme = "mpr_scheme_kcc" & progress atribute = "no_of_agricultural_families_covered_by_kcc" 
        */

        $j=0;
        $result=array();
        while($j<$nsch)
        {
            $d=array();
            $i=0;
            while($i<$nblo)
            {
                //this lines of code is similar to get_data function int Report_model.php
                if($scheme_type[$j]==1||$scheme_type[$j]==4){
                    $this->db->select($b[$j])->where('location_code',$block[$i])->order_by('id_pk','desc')->limit(1);
                }
                else if($scheme_type[$j]==2){
                    if($month>=1&&$month<=3){
                        $array=array('location_code'=>$block[$i],'session'=>strval($ses));
                        $this->db->select($b[$j])->where($array)->order_by('id_pk','desc')->limit(1);
                    }
                    else{
                        $array=array('location_code'=>$block[$i],'session'=>strval($ses));
                        $this->db->select($b[$j])->where($array)->order_by('id_pk','desc')->limit(1);
                    }
                }
                else if($scheme_type[$j]==3){
                    $array=array('location_code'=>$block[$i],'session'=>strval($ses));
                    $this->db->select($b[$j])->where($array)->order_by('id_pk','desc')->limit(1);
                }
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
        /*
            result array formation
                        sch1        sch2        sch3
            loc1        pl1s1       pl1s2       pl1s3
            loc2        pl2s1       pl2s2       pl2s3
            loc3        pl3s1       pl3s2       pl3s3
        */
        return $result;
    }

    

    //Alert filter data with there respective filters
    /*
        loc -> location of login user (code)
        sch -> short names of schemes
        n -> sizof(sch)
    */
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
                //handling divided by zero condition
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
        /*
            Filtered data according to there schemes thresholds
            result array formation
            [sch1 allocated,sch1 utillised,sch2 allocated,sch2 utillised,...]
            and if we can't find any data we push "false" keyword to filter the data in summary
        */
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
        /*
            [HOWRAH,BAGNAN-I,DOMJUR]
            [1911,1911205,1911103]
            b array formation 
            b = [1,6,9]
        */
        return $b; 
    }

    //location ID for current login
    function getlocID($loc){
        $this->db->select('location_id_pk')->where(array('location_code'=>$loc));
        $table = $this->db->get('mpr_master_location_data')->row();
        return $table->location_id_pk;
    }

    function get_schemetype($sch){
        $d=array();
        foreach($sch as $scheme){
            $this->db->select('financial_year_id_fk')->where(array('short_name'=>$scheme));
            $table = $this->db->get('mpr_master_scheme_table')->row();
            array_push($d,$table->financial_year_id_fk);
        }
        return $d;
    }

    
    //geting progress data
    function get_alertdata($n, $num,$loc,$m,$y,$flag)
    {
        $this->db->select('attr_target, attri_progress, sch_tab_name');
        $table = $this->db->get('mpr_master_dashboard_info');
        $b = array();
        $i=0;
        $x=0;
        $scheme_type=array();
        while($x<$num){
            foreach($table->result() as $row){
                if($row->sch_tab_name==$n[$x]) 
                {     
                    $this->db->select('financial_year_id_fk')->where(array('short_name'=>$n[$x]));
                    $temptable = $this->db->get('mpr_master_scheme_table')->row();
                    array_push($scheme_type,$temptable->financial_year_id_fk);
                    $b[$i] = $row->attr_target;
                    $b[$i+1] = $row->attri_progress;
                    $i=$i+2;
                    $x=$x+1;
                    break;
                }
            }
        }
        /*
            b array formation
            [sch1 target,sch1 progress,sch2 target,sch2 progress,...]
        */
        $j = 0;
        $x = 0;
        $d = array();
        
    
        while($j<(2*$num))
        {
            if($flag==0){
                if($scheme_type[$x]==1||$scheme_type[$x]==4){
                    $this->db->select($b[$j])->like('location_code',$loc,'after')->order_by('id_pk','ASC');
                    $this->db->select($b[$j+1])->like('location_code',$loc,'after')->order_by('id_pk','ASC');
                }
                else if($scheme_type[$x]==2){
                    if($m>=1 && $m<=3)
                    {
                        $this->db->select($b[$j])->like('location_code',$loc,'after')->order_by('id_pk','ASC');
                        $this->db->select($b[$j+1])->like('location_code',$loc,'after')->order_by('id_pk','ASC');
                    }
                    else
                    {
                        $this->db->select($b[$j])->like('location_code',$loc,'after')->order_by('id_pk','ASC');
                        $this->db->select($b[$j+1])->like('location_code',$loc,'after')->order_by('id_pk','ASC');
                    }
                }
                else if($scheme_type[$x]==3){
                    $this->db->select($b[$j])->like('location_code',$loc,'after')->order_by('id_pk','ASC');
                    $this->db->select($b[$j+1])->like('location_code',$loc,'after')->order_by('id_pk','ASC');
                }
            }
            else{
                if($scheme_type[$x]==1||$scheme_type[$x]==4){
                    $this->db->select($b[$j])->like('location_code',$loc,'after')->order_by('month','DESC')->order_by('id_pk',"desc");
                    $this->db->select($b[$j+1])->like('location_code',$loc,'after')->order_by('month','DESC')->order_by('id_pk',"desc");
                }
                else if($scheme_type[$x]==2){
                    if($m[$x]>=1 && $m[$x]<=3)
                    {
                        $this->db->select($b[$j])->like('location_code',$loc,'after')->like('session',$y[$x])->order_by('id_pk','DESC');
                        $this->db->select($b[$j+1])->like('location_code',$loc,'after')->like('session',$y[$x])->order_by('id_pk','DESC');
                    }
                    else
                    {
                        $this->db->select($b[$j])->like('location_code',$loc,'after')->like('session',$y[$x])->order_by('id_pk','DESC');
                        $this->db->select($b[$j+1])->like('location_code',$loc,'after')->like('session',$y[$x])->order_by('id_pk','DESC');
                    }
                }
                else if($scheme_type[$x]==3){
                    $this->db->select($b[$j])->like('location_code',$loc,'after')->like('session',$y[$x])->order_by('id_pk','DESC');
                    $this->db->select($b[$j+1])->like('location_code',$loc,'after')->like('session',$y[$x])->order_by('id_pk','DESC');
                } 
            }
            if($flag==0){
                $table2 = $this->db->get($n[$x])->result();
                //return $table2;
            }
            else{
                $this->db->where('month',$m[$x]);
                $table2=$this->db->get($n[$x])->result();
            }
            
            
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
                    $temp1=$testing[$i];
                    $temp2=$testing[$i+1];
                }
                array_push($d, $temp1,$temp2);
            }
            else
                array_push($d, "false", "false");
            $j=$j+2;
            $x=$x+1;
        }
        /*
            array d formation
            d = [sch1 progress,sch1 target,sch2 progress,sch2 target]
            if data we can't find then we push "false" keyword to filter those data in summary controller 
        */
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
        /*
            result array formation
            result = [sch1 allocated,sch1 target,sch2 allocated,sch2 target,...]
            if we can't find the scheme we push "false" keyword and filter those data in summary controller
        */
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
        /*
            b array formation
            b = [Anandadhara,Kanyashree]
        */
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