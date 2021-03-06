<?php
/**
 * Child Class
 *
 *
 * @package		CodeIgniter
 * @category	Controller
 * @author		Riddhinath Ganguly,Sachin Kumar Roy
*/
defined('BASEPATH') OR exit('No direct script access allowed');


class Report extends MY_Controller 
{
    /// Load the generate past button view
    public function index()
    {
        if($this->session->userdata('logged_in')=="")
			header("Location: ".$this->config->base_url()."Login");
		$this->cache_update();
		$this->check_privilege(1);
		$this->load->driver('cache',array('adapter' => 'file'));
        $this->load->helper('cookie');
        $this->load->model('profile_model');
		$u_type = array('var'=>$this->cache->get('Active_status'.$this->session->userdata('loginid'))['user_type_id_fk']);
		$noti = array('meeting'=>$this->profile_model->meeting_notification());
		$u_type['notification'] = $noti;
		$u_type['noti1']=$this->profile_model->custom_notification();
        $this->load->view('dashboard/navbar',$u_type);
        $da = $this->profile_model->get_profile_info($this->session->userdata('uid'));	
        $this->load->view('dashboard/sidebar',$da);
        $this->load->model('Report_model');
        

        $validate = array(
            array(
                    'field' => 'year',
                    'label' => 'Year',
                    'rules' => 'required|numeric|max_length[4]|min_length[4]|callback_check_data',
                    'errors' => array(
                            'required' => 'You must provide a value in %s.')
                            )        
                    );
        $this->form_validation->set_rules($validate);
        if($this->form_validation->run()==TRUE) //handling null value
        {
            $mon=$this->input->post('month');
            $year=$this->input->post('year');
            $type=$this->input->post('type');
            $data=$this->Report_model->get_past_report($mon,$year,$type);/// fetching report from data base
            if($type==0) /// for pdf type
            {
                $var=base64_decode($data);
                file_put_contents("MPR_Report_".$mon."_".$year.".pdf", $var);
                header("Location: ".$this->config->base_url()."MPR_Report_".$mon."_".$year.".pdf");
            }
            else if($type==1) // for excel type
            {
                $var=base64_decode($data);
                $this->Report_model->export_excel($var,$mon,$year);

            } 
        }
        else
            $this->load->view('report_view');
            //header('Location:'. $this->config->base_url()."Report");


    }

    //pdfreport is for creating pdf of mpr report.

    public function pdfreport()
    {
        $this->load->model('Report_model');
        //Fetching current date 
        $mydate=getdate();
        $month=date('m', strtotime($mydate['month']));
        $ses=$mydate['year'];
        $month_name=$mydate['month'];

        $loc=$this->session->userdata('location_code');//fetch the current location of operation form session

    	$data1=$this->Report_model->get_scheme(); //fecth all the schemes
    	$location_data=$this->Report_model->get_loc_detail(substr($loc,0,3));//fetching the blocks of a particular location
    	$scheme_name=array();
    	$scheme_table_name=array();//name of each table
        $scheme_year_type=array();//financial year type of each scheme
        $scheme_desig=array();//designation of each scheme
    	$i=0;
    	$temp1=array();
        $temp2=array();
        $templ=array();
        $tempm=array();
        
        /*partitioning the schemes of set 2 for a single page*/
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
        /* end of partitation ------------------------*/

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
        /* fetching of data start according to scheme name ----------------------------------------*/
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
            $temp3['total']=array(' ',$temp_t);// for Grand total
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
            /* fetching info for coloum 1,2,3,4 for per block for each scheme------------------------*/
    		foreach ($key as $k1) 
    		{
                if($scheme_year_type[$k][$h2]==2 || $scheme_year_type[$k][$h2]==3)
                {
                    $t1=array();
                    $data=$this->db->list_fields($scheme_table_name[$k][$h2]);// fetching attributes of schemes
                    $r++;
                    foreach ($data as $field ) 
                    {
                        if($field=="id_pk" || $field=="login_id_fk" || $field=="inserted_at" || $field=="ip" || $field=='nodal_check' || $field=='session' || $field=='month' || $field=='location_code' || $field=='date_of_inception' || $field=='date_of_inspection' || $field=='till_date'||$field=='date' || $field=='completed_till_date'||$field=='designation_of_officers')
                        continue;
                        else
                        {
                            array_push($t1,$this->Report_model->get_attri_actual_name($field));// fetching actual name of each attributes
                        }
                    }
                    foreach ($t1 as $ky) 
                    {
                        array_push($temp3['attri'], $ky.'<br>('.($ses-1).')');
                        array_push($temp3['attri'], $ky.'<br>('.($ses).')');
                        $h1+=2;

                    }
                    array_push($temp3['desig'],array('data'=>$this->Report_model->get_desig($scheme_desig[$k][$h2]),'colspan'=>2*count($t1)));/// fetching designation of each scheme
                    array_push($temp3['header'],array('data' => $k1, 'colspan' => 2*count($t1)));
                    for ($j=0; $j < 2*count($t1) ; $j++) 
                    { 
                        array_push($temp3['num'],$j+1);//inserting numbering 
                    }
                }
                else
                {
                    $t1=array();
                    $data=$this->db->list_fields($scheme_table_name[$k][$h2]);//fetching attribute of schemes
                    $r++;
                    foreach ($data as $field ) 
                    {
                        if($field=="id_pk" || $field=="login_id_fk" || $field=="inserted_at" || $field=="ip" || $field=='nodal_check' || $field=='session' || $field=='month' || $field=='location_code' || $field=='date_of_inception' || $field=='date_of_inspection' || $field=='till_date'|| $field=='date'||$field=='designation_of_officers')
                        continue;
                        else
                        {
                            $nk=$this->Report_model->get_attri_actual_name($field); //fetching actial name of each attributes
                            if($nk=="No of new ICDS building constructed")
                            {
                                array_push($t1, $nk.'<br>('.($ses-1).')');  // adding attribute of previous session 
                                array_push($t1, $nk.'<br>('.($ses).')');// adding attribute of current session
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
                    array_push($temp3['desig'],array('data'=>$this->Report_model->get_desig($scheme_desig[$k][$h2]),'colspan'=>count($t1))); // adding designation to the designation table
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
            $l1=0;
            /* fetching data for each location ---------------*/
            foreach ($loc_area as $k1)
            {
                if(strlen($loc_schcd[$l])<=5) //scaping location code having length less than 6
                {
                    $l++;
                    continue;
                }
                $temp4=array();
                array_push($temp4,$l1+1);
                array_push($temp4,array('data'=> $k1, 'colspan' => 2));
                
                array_push($temp4,$this->Report_model->get_sub_division($k1));
                $l1++;
                $w=0;
                foreach ($scheme_table_name[$k] as $e) 
                {
                    $t=array();
                    $m=0;
                    $m1=0;
                    $data=$this->db->list_fields($e); // fetching the attribute of each scheme
                    if($scheme_year_type[$k][$w]==2 || $scheme_year_type[$k][$w]==3)
                        $m=1;
                    foreach ($data as $field ) 
                    {
                        if($field=="id_pk" || $field=="login_id_fk" || $field=="inserted_at" || $field=="ip" || $field=='nodal_check' || $field=='session' || $field=='month' || $field=='location_code' || $field=='date_of_inception' || $field=='date_of_inspection' || $field=='till_date'||$field=='date'||$field=='designation_of_officers')
                        continue;
                        else
                        {
                            array_push($t,$field);
                        }
                    }
                    $temp5['ses1']=$this->Report_model->get_data($e,$t,$loc_schcd[$l],$ses,$month,$scheme_year_type[$k][$w]);// data for current session
                    if($m==1)
                    $temp5['ses2']=$this->Report_model->get_data($e,$t,$loc_schcd[$l],$ses-1,$month,$scheme_year_type[$k][$w]);// data for previous session
                    $temp5['ses_temp1']=array();
                    $temp5['ses_temp2']=array();
                    if(empty($temp5['ses1'])) // handling null data
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
                    if(empty($temp5['ses2'])) // handiling null data
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
                    for($j=0;$j<count($t);$j++)  // synchronizing data of each each session
                    {
                        if($m==1)
                        array_push($temp4, $temp5['ses_temp2'][$j]);
                        array_push($temp4,$temp5['ses_temp1'][$j]);
                    }
                    if(in_array("no_of_new_icds_building_constructed", $t))
                    array_push($temp4,$temp5['ses_temp1'][$j]);
                    $w++;
                }
                // claculation the averge
                for($j=0;$j<$h1;$j++)
                {
                    if(is_numeric($temp4[$j+3]))
                    {
                        if(($k==0 && $j==2) || ($k==1 && ($j==2 || $j==7 || $j==6)) || ($k==4 && ($j==5 || $j==4)) || ($k==5 && ($j==13 || $j==12)) || ($k==6 && ($j==1 || $j==0)))
                        {
                            $sum[$j]=$sum[$j]+($temp4[$j+3]/16);
                        }
                        else
                        $sum[$j]=$sum[$j]+$temp4[$j+3];
                    }

                }
                array_push($temp3['data'],$temp4);/// pushing the data in the final array
                $l++;
            }

            foreach ($sum as $y2 ) 
            {
               array_push($temp3['total'], $y2);
            }
            $k++;
            //Each page's table of report is generated and store the html object of the table in an array.
    		array_push($scheme_header,$this->Report_model->generate_table($temp3,$ses,$month_name,0,$loc_area[0]));// pushing each partitation of page an array
    	}
       $this->Report_model->generate_pdf($scheme_header,0,$month,$ses); /// generation report
    }







    //Excel report generation function.
    public function excelreport()
    {
        $this->load->model('Report_model');
        $mydate=getdate();
        $month=date('m', strtotime($mydate['month']));
        $ses=$mydate['year'];
        $month_name=$mydate['month'];
        $loc=$this->session->userdata('location_code');

        $data1=$this->Report_model->get_scheme();
        $location_data=$this->Report_model->get_loc_detail(substr($loc,0,4)); //fetching the block location
        $loc_area=array();//location name
        $loc_schcd=array(); // location code
        foreach ($location_data as $key ) //seprating the location code and location name
        {
            array_push($loc_area, $key['location_area']);
            array_push($loc_schcd, $key['location_code']);
        }

        $scheme_name=array(); // scheme name
        $scheme_table_name=array(); //scheme name from database
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
                    if($field=="id_pk" || $field=="login_id_fk" || $field=="inserted_at" || $field=="ip" || $field=='nodal_check' || $field=='session' || $field=='month' || $field=='location_code' || $field=='date_of_inception' || $field=='date_of_inspection' || $field=='till_date'||$field=='date' ||$field=='designation_of_officers')
                    continue;
                    else
                    {
                        array_push($t1,$this->Report_model->get_attri_actual_name($field)); //fetching the actual name of attribute
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
                    if($field=="id_pk" || $field=="login_id_fk" || $field=="inserted_at" || $field=="ip" || $field=='nodal_check' || $field=='session' || $field=='month' || $field=='location_code' || $field=='date_of_inception' || $field=='date_of_inspection' || $field=='till_date'||$field=='date' || $field=='designation_of_officers' )
                    continue;
                    else
                    {
                        $nk=$this->Report_model->get_attri_actual_name($field);
                        if($nk=="No of new ICDS building constructed")
                        {
                            array_push($t1, $nk.'<br>('.($ses-1).')');//pushing attribute for previous year
                            array_push($t1, $nk.'<br>('.($ses).')');//pushing attribute for curent year
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
        $h2=0;
        //Data insertion....
        foreach ($loc_area as $key ) 
        {
            if(strlen($loc_schcd[$h])<=5)
            {
                $h++;
                continue;
            }
            $data1=array();
            array_push($data1,$h2+1);
            array_push($data1,array('data'=>$key,'colspan'=>2));
            array_push($data1,$this->Report_model->get_sub_division($key)); // pushing the subdivision
            

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
                    if($field=="id_pk" || $field=="login_id_fk" || $field=="inserted_at" || $field=="ip" || $field=='nodal_check' || $field=='session' || $field=='month' || $field=='location_code' || $field=='date_of_inception' || $field=='date_of_inspection' || $field=='till_date'||$field=='date' || $field=='designation_of_officers')
                    continue;
                    else
                    {
                        array_push($t,$field);
                    }
                }
                $temp5['ses1']=$this->Report_model->get_data($e,$t,$loc_schcd[$h],$ses,$month,$scheme_year_type[$k]); //for curent year
                if($m==1)
                $temp5['ses2']=$this->Report_model->get_data($e,$t,$loc_schcd[$h],$ses-1,$month,$scheme_year_type[$k]);//for previous year
                $temp5['ses_temp1']=array();
                $temp5['ses_temp2']=array();
                if(empty($temp5['ses1'])) // handling null values
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
                if(empty($temp5['ses2'])) //handling null data
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
            $tk=array(5,11,12,15,16,43,44,57,58,60,59);
            for($j=3;$j<$h1+3;$j++)
            {
                if(is_numeric($data1[$j]))
                {
                    if(in_array($j, $tk))
                    $tem[$j-3]=$tem[$j-3]+$data1[$j]/16;
                    else
                    $tem[$j-3]=$tem[$j-3]+$data1[$j];
                }
            }
            array_push($temp['data'], $data1);
            //Average calculation finished.
            $h++;
        }
        foreach ($tem as $key )
        {
            array_push($temp['total'],$key);
        }
        $meet_id=$this->Report_model->get_meeting_id();
        $excel_table=$this->Report_model->generate_table($temp,$ses,$month_name,1,$loc_area[0]); // generating table for excel
        header('text/html');
        $this->Report_model->update_report_to_db($meet_id,base64_encode($excel_table),1,$month,$ses); // pushing data to report_table
        $this->Report_model->export_excel($excel_table,$month,$ses); //generating table

    }
    function check_data($str) {
            $this->load->model('Report_model');
           $month = $this->input->post('month');
           $type= $this->input->post('type');
           
           $data=$this->Report_model->get_past_report($month,$str,$type);
           // do some database things you need to do e.g.
           if ($data) {
               return TRUE;
           }
           else
           {
            $this->form_validation->set_message('check_data','Data is not present');
            return FALSE;
           }
    }
}