<?php
/**
 * Model Child Class
 *
 *
 * @package		CodeIgniter
 * @category	Model
 * @author		Riddhinath Ganguly,Sachin Kumar Roy
*/
if (!defined('BASEPATH')) exit('No direct script access allowed');
include 'vendor/autoload.php';
use PhpOffice\PhpSpreadsheet\IOFactory;
use PhpOffice\PhpSpreadsheet\Spreadsheet;
class Report_model extends CI_Model
{
	public function get_scheme() // fetching the schemes name
	{
		$this->db->select('name,short_name,financial_year_id_fk,desig_id_fk');
		$this->db->from('mpr_master_scheme_table');
		$this->db->order_by('scheme_id_pk','ASC');
		$query=$this->db->get();
		$da=$query->result_array();
		return $da;

	}
	public function get_desig($n) // Designations of each schemes
	{
		$this->db->select('desig_name')->from('mpr_master_designation')->where('desig_id_pk',$n);
		return $this->db->get()->result_array()[0]['desig_name'];
	}
	public function get_meeting_id() //meeting id of every meeting 
	{
		$this->db->select_max('meeting_id_pk')->from('mpr_trans_meeting_schedule');
		return $this->db->get()->result_array()[0]['meeting_id_pk'];
	}
	public function update_report_to_db($meet_id,$str,$type,$mon,$year) // pushing report as pdf or excel to mpn_trans_reort
	{
		$temp=array('meeting_id_fk'=>$meet_id,'report_data'=>$str,'report_generated_month'=>strval($mon),'report_generated_year'=>strval($year),'report_type'=>$type);
		$this->db->insert('mpr_trans_report',$temp);
	}
	public function get_loc_detail($loc) // fetching location details
	{
		$this->db->select('location_area,location_code');
		$this->db->from('mpr_master_location_data');
		$this->db->like('location_code',$loc,'after');
		$this->db->order_by('location_code');
		return $this->db->get()->result_array();
	}
	public function get_attri_actual_name($k) // fetching the name of the attributes
	{
		$this->db->select('actual_name')->from('mpr_master_attri_table')->where('attri_name',$k);
		$a= $this->db->get()->result_array();
		return $a[0]['actual_name'];
	}

	public function get_data($temp_tab,$attri,$schcd,$ses,$mon,$scheme_type) /// fetching the data
	{
		if($temp_tab=="mpr_scheme_awcc") // it is a special case for AWCC table
		{
			$array=array('location_code'=>$schcd,'session'=>strval($ses));
			$this->db->select('no_of_new_icds_building_constructed')->from($temp_tab)->where($array);
			$this->db->order_by('month','DESC');
			$a1=$this->db->get()->row_array();

			$array1=array('location_code'=>$schcd,'session'=>strval($ses-1));
			$this->db->select('no_of_new_icds_building_constructed')->from($temp_tab)->where($array1);
			$this->db->order_by('month','DESC');
			$a2=$this->db->get()->row_array();

			$this->db->select('no_of_icds_cenetres_devoid_of_own_building')->from($temp_tab)->where('location_code',$schcd);
			$this->db->order_by('month','DESC');
			$a3=$this->db->get()->row_array();

			$this->db->select('no_of_icds_centres_running_in_open_space')->from($temp_tab)->where('location_code',$schcd);
			$this->db->order_by('month','DESC');
			$a4=$this->db->get()->row_array();

			if(empty($a2))
			$a2['no_of_new_icds_building_constructed']=0;
			if(empty($a3))
			$a3['no_of_icds_cenetres_devoid_of_own_building']=0;
			if(empty($a1))
			$a1['no_of_new_icds_building_constructed']=0;
			if(empty($a4))
			$a4['no_of_icds_centres_running_in_open_space']=0;

			$arr=array();
			array_push($arr,$a3['no_of_icds_cenetres_devoid_of_own_building']);
			array_push($arr,$a2['no_of_new_icds_building_constructed']);
			array_push($arr,$a1['no_of_new_icds_building_constructed']);
			array_push($arr,$a4['no_of_icds_centres_running_in_open_space']);
			return $arr;

		}
		if(($scheme_type==1 || $scheme_type==4) && $temp_tab!="mpr_master_awcc") 
		{
			$this->db->select($attri)->from($temp_tab)->where('location_code',$schcd);
			$this->db->order_by('month','DESC');
			 return ($this->db->get()->row_array());
		}
		if($scheme_type==2)
		{
			if($mon>=1 && $mon<=3)
			{
				$array=array('location_code'=>$schcd,'session'=>strval($ses));
				$this->db->select($attri)->from($temp_tab)->where($array);
				$this->db->order_by('month','DESC');
				return $this->db->get()->row_array();
			}
			else
			{
				$array=array('location_code'=>$schcd,'session'=>strval($ses));
				$this->db->select($attri)->from($temp_tab)->where($array);
				$this->db->order_by('month','DESC');
				return $this->db->get()->row_array();
			}
		}
		if($scheme_type==3)
		{
			$array=array('location_code'=>$schcd,'session'=>strval($ses));
			$this->db->select($attri)->from($temp_tab)->where($array);
			$this->db->order_by('month','DESC');
			return $this->db->get()->row_array();
		}
		
	}
	public function get_sub_division($loc_area) //fetching the sub-division
	{
		$this->db->select('subdiv_id_fk')->from('mpr_master_block')->where('block_name',$loc_area);
		$sub_div_id=$this->db->get()->result_array()[0]['subdiv_id_fk'];
		$this->db->select('sub_div_name')->from('mpr_master_subdiv');
		$this->db->where('sub_div_id_pk',$sub_div_id);
		return $this->db->get()->result_array()[0]['sub_div_name'];
		
	}
	public function generate_table($temp,$ses,$mon,$n,$loc) 
	{

		$template = array('table_open' => '<table border="1" cellpadding="1" cellspacing="1" style="text-align:center">');
		$this->table->set_template($template);
		if($n==0) // for pdf file
			$this->table->set_caption('<br>Financial Years - '.$ses.'/'.($ses-1).'<br>'.'Reporting Month - '.$mon.', '.$ses.'<br>'.'Name of the District:- '.$loc.'<br>');
		else //for excel file
		{
			$this->table->add_row(array('data'=>'Financial Years - '.$ses.'/'.($ses-1),'colspan'=>10));
			$this->table->add_row(array('data'=>'Reporting Month - '.$mon.', '.$ses,'colspan'=>10));
			$this->table->add_row(array('data'=>'Name of the District:- '.$loc,'colspan'=>10));
		}
		$this->table->add_row($temp['header']);
		$this->table->add_row($temp['desig']);
		$this->table->add_row($temp['num']);
		$this->table->add_row($temp['attri']);
		foreach ($temp['data'] as $key ) 
		{
			$this->table->add_row($key);
		}
		$this->table->add_row($temp['total']);
		return $this->table->generate();
	}
	public function get_past_report($mon,$year,$type) // fetching the past report
	{
		$temp=array('report_type' => $type,'report_generated_month'=>$mon,'report_generated_year'=>$year);
        $this->db->select('report_data')->from('mpr_trans_report')->where($temp);
        $this->db->order_by('report_id_pk','DESC');
        return $this->db->get()->row_array()['report_data'];
	}

	public function generate_pdf($temp,$type,$month,$ses) 
	{
		$this->load->library('Pdf');
	
		$pdf = new Pdf('landscape', PDF_UNIT, PDF_PAGE_FORMAT, true, 'UTF-8', false);
		
		$pdf->SetCreator(PDF_CREATOR);
		$pdf->SetTitle('54 point Report');

		$pdf->setHeaderFont(Array(PDF_FONT_NAME_MAIN, '', PDF_FONT_SIZE_MAIN));
		$pdf->setFooterFont(Array(PDF_FONT_NAME_DATA, '', PDF_FONT_SIZE_DATA));

		$pdf->SetDefaultMonospacedFont(PDF_FONT_MONOSPACED);

		$pdf->SetMargins(PDF_MARGIN_LEFT,"10", PDF_MARGIN_RIGHT);
		$pdf->SetHeaderMargin(PDF_MARGIN_HEADER);
		$pdf->SetFooterMargin(PDF_MARGIN_FOOTER);

		$pdf->SetAutoPageBreak(TRUE, PDF_MARGIN_BOTTOM);

		$pdf->setImageScale(PDF_IMAGE_SCALE_RATIO);

		$pdf->SetFont('times', '', 10);
		foreach ($temp as $html) 
		{
			$pdf->AddPage('L');
			$pdf->writeHTML($html, true, false, true, false, '');
			$pdf->lastPage();
		}
		$var = $pdf->Output('MPR_Report_'.$month.'_'.$ses.'.pdf','S');
		header('aplication/pdf');
		$meet_id=$this->get_meeting_id();
        $this->update_report_to_db($meet_id,base64_encode($var),$type,$month,$ses);
		$pdf->Output('MPR_Report_'.$month.'_'.$ses.'.pdf','D');
	}


	public function export_excel($temp,$month,$ses)
	{ 
		$temporary_html_file = time() . '.html';
		file_put_contents($temporary_html_file, $temp);

		$reader = IOFactory::createReader('Html');

		$spreadsheet = $reader->load($temporary_html_file);

		$writer = IOFactory::createWriter($spreadsheet, 'Xlsx');

		$filename = 'MPR_Report_'.$month.'_'.$ses. '.xlsx';

		$writer->save($filename);
		

		header('Content-Type: application/x-www-form-urlencoded\text');

		header('Content-Transfer-Encoding: Binary');

		header("Content-disposition: attachment; filename=\"".$filename."\"");

		readfile($filename);
		
		
		unlink($temporary_html_file);
		unlink($filename);


		exit;
	}
}