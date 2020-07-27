<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Report extends MY_Controller 
{
    public function index()
    {
    }

    //pdfreport is for creating pdf of mpr report.

    public function pdfreport()
    {
        $this->load->model('Report_model');
        $mydate=getdate();
        $month=date('m', strtotime($mydate['month']));
        $ses=$mydate['year'];
        $month_name=$mydate['month'];


        $sub_div=$this->Report_model->get_sub_division();

    	$data1=$this->Report_model->get_scheme();
    	$colspan=$this->Report_model->get_colspan();
    	$location_data=$this->Report_model->get_loc_detail();
        $attri_detail=$this->Report_model->get_attri();
    	$scheme_name=array();
    	$scheme_table_name=array();
        $scheme_year_type=array();
        $scheme_desig=array();
    	$i=0;
    	$temp1=array();
        $temp2=array();
        $templ=array();
        $tempm=array();
        
    	foreach ($data1 as $key)
    	{
    		if($i==2)
    		{
    			array_push($scheme_name, $temp1);
                array_push($scheme_table_name, $temp2);
                array_push($scheme_year_type,$templ);
                array_push($scheme_desig,$tempm);
    			$temp1=array();
                $temp2=array();
                $templ=array();
                $tempm=array();
    			$i=0;
    		}
    		array_push($temp1, $key['name']);
    		array_push($temp2, $key['short_name']);
            array_push($templ, $key['financial_year_id_fk']);
            array_push($tempm, $key['desig_id_fk']);
    		$i++;
    	}
        array_push($scheme_name, $temp1);
        array_push($scheme_table_name, $temp2);
        array_push($scheme_year_type,$templ);
        array_push($scheme_desig,$tempm);

    	$loc_area=array();   //location name
    	$loc_schcd=array();  //location code
    	foreach ($location_data as $key ) 
    	{
    		array_push($loc_area, $key['location_area']);
    		array_push($loc_schcd, $key['location_code']);
    	}
    	$i=0;
        $h=0;
        $k=0;
        $r=0;
    	$scheme_header=array();
    	foreach ($scheme_name as $key) 
    	{
            $h1=0;
            $h2=0;
    		$temp3['header']=array(); //Header array to store scheme names.
            $temp_t=array('data'=>'Reported by -> ','colspan'=>2);
            $temp3['desig']=array(' ',$temp_t);//Designation array to store designation of each scheme.
            $temp3['num']=array(); //cell count.
            $temp3['attri']=array();//Attribute of each scheme.
            $temp3['data']=array(); //Attribute data.
            $temp_t=array('data'=>'Grand Total of District','colspan'=>2);
            $temp3['total']=array(' ',$temp_t);
            array_push($temp3['total'],'');
            $temp4=array('data'=> 'Name of the Block/Municipality', 'colspan' => 2);
            $temp5=array('data'=> ' ', 'colspan' => 2);
            array_push($temp3['desig'],'');
    		array_push($temp3['header'], 'SI. NO.');
    		array_push($temp3['header'], $temp5);
            array_push($temp3['header'], '');
            array_push($temp3['num'], ' ');
            array_push($temp3['num'], $temp5);
            array_push($temp3['num'], '');
            array_push($temp3['attri'], ' ');
            array_push($temp3['attri'], $temp4);
            array_push($temp3['attri'],'Name of Sub-Division');
    		foreach ($key as $k1) 
    		{
                if($scheme_year_type[$k][$h2]==2 || $scheme_year_type[$k][$h2]==3)
                {
                    $t1=array();
                    $data=$this->db->list_fields($scheme_table_name[$k][$h2]);
                    $r++;
                    foreach ($data as $field ) 
                    {
                        if($field=="id_pk" || $field=="login_id_fk" || $field=="inserted_at" || $field=="ip" || $field=='nodal_check' || $field=='session' || $field=='month' || $field=='location_code' || $field=='date_of_inception' || $field=='date_of_inspection' || $field=='till_date'||$field=='date' || $field=='completed_till_date'||$field=='designation_of_officers' || $field=='projects_name')
                        continue;
                        else
                        {
                            array_push($t1,$this->Report_model->get_attri_actual_name($field));
                        }
                    }
                    foreach ($t1 as $ky) 
                    {
                        array_push($temp3['attri'], $ky.'<br>('.($ses-1).')');
                        array_push($temp3['attri'], $ky.'<br>('.($ses).')');
                        $h1+=2;

                    }
                    array_push($temp3['desig'],array('data'=>$this->Report_model->get_desig($scheme_desig[$k][$h2]),'colspan'=>2*count($t1)));
                    array_push($temp3['header'],array('data' => $k1, 'colspan' => 2*count($t1)));
                    for ($j=0; $j < 2*count($t1) ; $j++) 
                    { 
                        array_push($temp3['num'],$j+1);
                    }

                }
                else
                {
                    $t1=array();
                    $data=$this->db->list_fields($scheme_table_name[$k][$h2]);
                    $r++;
                    foreach ($data as $field ) 
                    {
                        if($field=="id_pk" || $field=="login_id_fk" || $field=="inserted_at" || $field=="ip" || $field=='nodal_check' || $field=='session' || $field=='month' || $field=='location_code' || $field=='date_of_inception' || $field=='date_of_inspection' || $field=='till_date'||$field=='date' || $field=='completed_till_date'||$field=='designation_of_officers' || $field=='projects_name')
                        continue;
                        else
                        {
                            $nk=$this->Report_model->get_attri_actual_name($field);
                            if($nk=="No of new ICDS building constructed")
                            {
                                array_push($t1, $nk.'<br>('.($ses-1).')');
                                array_push($t1, $nk.'<br>('.($ses).')');
                            }
                            else
                            array_push($t1,$nk);
                        }
                    }
                    foreach ($t1 as $ky) 
                    {
                        array_push($temp3['attri'], $ky);
                        $h1++;

                    }
                    array_push($temp3['desig'],array('data'=>$this->Report_model->get_desig($scheme_desig[$k][$h2]),'colspan'=>count($t1)));
                    array_push($temp3['header'],array('data' => $k1, 'colspan' => count($t1)));
                    for ($j=0; $j < count($t1) ; $j++) 
                    { 
                        array_push($temp3['num'],$j+1);
                    }
                }
                $h2++;
                $i++;
    		}
            $sum=array();
            for($j=0;$j<$h1;$j++)
            array_push($sum,0);
            $l=0;
            foreach ($loc_area as $k1)
            {
                if($k1=="SADAR" || $k1=="ULUBERIA")
                    continue;
                $temp4=array();
                array_push($temp4,$l+1);
                array_push($temp4,array('data'=> $k1, 'colspan' => 2));
                array_push($temp4,$sub_div[$l]);
                $w=0;
                foreach ($scheme_table_name[$k] as $e) 
                {
                    $t=array();
                    $m=0;
                    $m1=0;
                    $data=$this->db->list_fields($e);
                    if($scheme_year_type[$k][$w]==2 || $scheme_year_type[$k][$w]==3)
                        $m=1;
                    foreach ($data as $field ) 
                    {
                        if($field=="id_pk" || $field=="login_id_fk" || $field=="inserted_at" || $field=="ip" || $field=='nodal_check' || $field=='session' || $field=='month' || $field=='location_code' || $field=='date_of_inception' || $field=='date_of_inspection' || $field=='till_date'||$field=='date' || $field=='completed_till_date'||$field=='designation_of_officers' || $field=='projects_name')
                        continue;
                        else
                        {
                            array_push($t,$field);
                        }
                    }
                    $temp5['ses1']=$this->Report_model->get_data($e,$t,$loc_schcd[$l],$ses,$month,$scheme_year_type[$k][$w]);
                    if($m==1)
                    $temp5['ses2']=$this->Report_model->get_data($e,$t,$loc_schcd[$l],$ses-1,$month,$scheme_year_type[$k][$w]);
                    $temp5['ses_temp1']=array();
                    $temp5['ses_temp2']=array();
                    if(empty($temp5['ses1']))
                    {
                        if(in_array("no_of_new_icds_building_constructed", $t))
                        {
                            for($j=0;$j<count($t)+1;$j++)
                                array_push($temp5['ses_temp1'],0);
                        }
                        else
                            for($j=0;$j<count($t);$j++)
                                array_push($temp5['ses_temp1'],0);
                    }
                    else
                    {
                        foreach ($temp5['ses1'] as $y1)
                        {
                            array_push($temp5['ses_temp1'],$y1);
                        }
                    }
                    if($m==1)
                    if(empty($temp5['ses2']))
                    {
                        for($j=0;$j<count($t);$j++)
                            array_push($temp5['ses_temp2'],0);
                    }
                    else
                    {
                        foreach ($temp5['ses2'] as $y1) 
                        {
                            array_push($temp5['ses_temp2'],$y1);
                        }
                    }
                    for($j=0;$j<count($t);$j++)
                    {
                        if($m==1)
                        array_push($temp4, $temp5['ses_temp2'][$j]);
                        array_push($temp4,$temp5['ses_temp1'][$j]);
                    }
                    if(in_array("no_of_new_icds_building_constructed", $t))
                    array_push($temp4,$temp5['ses_temp1'][$j]);
                    $w++;
                }
                for($j=0;$j<$h1;$j++)
                {
                    if(($k==0 && ($j==3)) || ($k==1 && ($j==3 || $j==3 || $j==7 || $j==8)) || ($k==4 && ($j==5 || $j==6)) || ($k==5 && ($j==13 || $j==14)) || ($k==6 && ($j==1 || $j==2)))
                    {
                        $sum[$j]=$sum[$j]+($temp4[$j+3]/17);
                    }
                    else
                        $sum[$j]=$sum[$j]+$temp4[$j+3];
                }
                array_push($temp3['data'],$temp4);
                $l++;
            }

            foreach ($sum as $y2 ) 
            {
               array_push($temp3['total'], $y2);
            }
            $k++;
            //Each page's table of report is generated and store the html object of the table in an array.

    		array_push($scheme_header,$this->Report_model->generate_table($temp3,$ses,$month_name));
    	}
       $this->Report_model->generate_pdf($scheme_header);
        
    }

    //Excel report generation function.
    public function excelreport()
    {
        $this->load->model('Report_model');
        $mydate=getdate();
        $month=date('m', strtotime($mydate['month']));
        $ses=$mydate['year'];
        $month_name=$mydate['month'];

        $sub_div=$this->Report_model->get_sub_division();
        $data1=$this->Report_model->get_scheme();
        $colspan=$this->Report_model->get_colspan();
        $location_data=$this->Report_model->get_loc_detail();
        $attri_detail=$this->Report_model->get_attri();
        
        $loc_area=array();//location name
        $loc_schcd=array(); // location code
        foreach ($location_data as $key ) 
        {
            array_push($loc_area, $key['location_area']);
            array_push($loc_schcd, $key['location_code']);
        }

        $scheme_name=array(); // scheme name
        $scheme_table_name=array(); //scheme name in database
        $scheme_year_type=array(); //year type of each scheme
        $scheme_desig=array(); //designation of each scheme
        foreach ($data1 as $key) 
        {
            array_push($scheme_name, $key['name']);
            array_push($scheme_table_name, $key['short_name']);
            array_push($scheme_year_type,$key['financial_year_id_fk']);
            array_push($scheme_desig,$key['desig_id_fk']);
        }
        $temp['header']=array(); //header for table - scheme name
        $temp['desig']=array(); //designation of scheme
        $temp['num']=array(); //count of number of cells
        $temp['attri']=array(); //scheme's attribute
        $temp['data']=array(); //scheme's data
        $temp['total']=array(); //Average of data of scheme

        $temp5=array('data'=> ' ', 'colspan' => 2);
        array_push($temp['header'], 'SI. NO.');
        array_push($temp['header'], $temp5);
        array_push($temp['header'],'');

        array_push($temp['num'], ' ');
        array_push($temp['num'], $temp5);
        array_push($temp['num'],'');

        $temp5=array('data'=> 'Name of the Block/Municipality', 'colspan' => 2);
        array_push($temp['attri'], '');
        array_push($temp['attri'], $temp5);
        array_push($temp['attri'],'Name of Sub-Division');

        $temp5=array('data'=> 'Grand Total of District', 'colspan' => 2);
        array_push($temp['total'], '');
        array_push($temp['total'], $temp5);
        array_push($temp['total'],'');

        $temp5=array('data'=> 'Reported by :-', 'colspan' => 2);
        array_push($temp['desig'], '');
        array_push($temp['desig'], $temp5);
        array_push($temp['desig'],'');

        $k=0;
        $h1=0;
        // Header,cell's cont,designation and scheme's attribute insertation start...
        foreach ($scheme_name as $k1) 
        {
            $t1=array();
            if($scheme_year_type[$k]==2 || $scheme_year_type[$k]==3)
            {
                $data=$this->db->list_fields($scheme_table_name[$k]);
                foreach ($data as $field ) 
                {
                    if($field=="id_pk" || $field=="login_id_fk" || $field=="inserted_at" || $field=="ip" || $field=='nodal_check' || $field=='session' || $field=='month' || $field=='location_code' || $field=='date_of_inception' || $field=='date_of_inspection' || $field=='till_date'||$field=='date' || $field=='completed_till_date'||$field=='designation_of_officers' || $field=='projects_name')
                    continue;
                    else
                    {
                        array_push($t1,$this->Report_model->get_attri_actual_name($field));
                    }
                }
                foreach ($t1 as $ky) 
                {
                    array_push($temp['attri'], $ky.'<br>('.($ses-1).')');
                    array_push($temp['attri'], $ky.'<br>('.($ses).')');
                    $h1+=2;
                }
                 array_push($temp['desig'],array('data'=>$this->Report_model->get_desig($scheme_desig[$k]),'colspan'=>2*count($t1)));
                array_push($temp['header'],array('data' => $k1, 'colspan' => 2*count($t1)));

            }
            else
            {
                $data=$this->db->list_fields($scheme_table_name[$k]);
                    foreach ($data as $field ) 
                    {
                    if($field=="id_pk" || $field=="login_id_fk" || $field=="inserted_at" || $field=="ip" || $field=='nodal_check' || $field=='session' || $field=='month' || $field=='location_code' || $field=='date_of_inception' || $field=='date_of_inspection' || $field=='till_date'||$field=='date' || $field=='completed_till_date'||$field=='designation_of_officers' || $field=='projects_name')
                    continue;
                    else
                    {
                        $nk=$this->Report_model->get_attri_actual_name($field);
                        if($nk=="No of new ICDS building constructed")
                        {
                            array_push($t1, $nk.'<br>('.($ses-1).')');
                            array_push($t1, $nk.'<br>('.($ses).')');
                        }
                        else
                        array_push($t1,$nk.'<br>');
                    }
                }
                foreach ($t1 as $ky) 
                {
                    array_push($temp['attri'], $ky);
                    $h1++;
                }
                 array_push($temp['desig'],array('data'=>$this->Report_model->get_desig($scheme_desig[$k]),'colspan'=>count($t1)));
                array_push($temp['header'],array('data' => $k1, 'colspan' => count($t1)));
            }
            $k++;
        }
        // Header,cell's cont,designation and scheme's attribute insertation finished...



        $tem=array();
        for($j=0;$j<$h1;$j++)
        {
            array_push($temp['num'],$j+1);
            array_push($tem,0);
        }
        $h=0;


        //Data insertion....
        foreach ($loc_area as $key ) 
        {
            if($key=="SADAR" || $key=="ULUBERIA")
                    continue;
            $data1=array();
            array_push($data1,$h+1);
            array_push($data1,array('data'=>$key,'colspan'=>2));
            array_push($data1,$sub_div[$h]);

            $su=0;
            $i=0;
            $k=0;
            foreach ($scheme_table_name as $e) 
            {
                $t=array();
                $m=0;
                $m1=0;
                $data=$this->db->list_fields($e);
                if($scheme_year_type[$k]==2 || $scheme_year_type[$k]==3)
                    $m=1;
                foreach ($data as $field ) 
                {
                    if($field=="id_pk" || $field=="login_id_fk" || $field=="inserted_at" || $field=="ip" || $field=='nodal_check' || $field=='session' || $field=='month' || $field=='location_code' || $field=='date_of_inception' || $field=='date_of_inspection' || $field=='till_date'||$field=='date' || $field=='completed_till_date'||$field=='designation_of_officers' || $field=='projects_name')
                    continue;
                    else
                    {
                        array_push($t,$field);
                    }
                }
                $temp5['ses1']=$this->Report_model->get_data($e,$t,$loc_schcd[$h],$ses,$month,$scheme_year_type[$k]);
                if($m==1)
                $temp5['ses2']=$this->Report_model->get_data($e,$t,$loc_schcd[$h],$ses-1,$month,$scheme_year_type[$k]);
                $temp5['ses_temp1']=array();
                $temp5['ses_temp2']=array();
                if(empty($temp5['ses1']))
                {
                    if(in_array("no_of_new_icds_building_constructed", $t))
                    {
                        for($j=0;$j<count($t)+1;$j++)
                            array_push($temp5['ses_temp1'],0);
                    }
                    else
                        for($j=0;$j<count($t);$j++)
                            array_push($temp5['ses_temp1'],0);
                }
                else
                {
                    foreach ($temp5['ses1'] as $y1)
                    {
                        array_push($temp5['ses_temp1'],$y1);
                    }
                }
                if($m==1)
                if(empty($temp5['ses2']))
                {
                    for($j=0;$j<count($t);$j++)
                        array_push($temp5['ses_temp2'],0);
                }
                else
                {
                    foreach ($temp5['ses2'] as $y1) 
                    {
                        array_push($temp5['ses_temp2'],$y1);
                    }
                }
                for($j=0;$j<count($t);$j++)
                {
                    if($m==1)
                    array_push($data1, $temp5['ses_temp2'][$j]);
                    array_push($data1,$temp5['ses_temp1'][$j]);
                }
                if(in_array("no_of_new_icds_building_constructed", $t))
                array_push($data1,$temp5['ses_temp1'][$j]);
                $k++;
            }
            //data insertion finished...

            //Average calculation....
            $tk=array(4,10,11,14,15,42,43,56,57,58,59);
            for($j=2;$j<$h1+2;$j++)
            {
                if(in_array($j, $tk))
                $tem[$j-2]=$tem[$j-2]+$data1[$j]/17;
                else
                $tem[$j-2]=$tem[$j-2]+$data1[$j];
            }
            array_push($temp['data'], $data1);
            //Average calculation finished.
            $h++;
        }
        foreach ($tem as $key )
        {
            array_push($temp['total'],$key);
        }
       $this->Report_model->export_csv($this->Report_model->generate_table($temp,$ses,$month_name,1));
    }

}