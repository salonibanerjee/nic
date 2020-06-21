<?php
if (!defined('BASEPATH')) exit('No direct script access allowed');
include 'vendor/autoload.php';
use PhpOffice\PhpSpreadsheet\IOFactory;
use PhpOffice\PhpSpreadsheet\Spreadsheet;
class Report_model extends CI_Model
{
	public function get_scheme()
	{
		$this->db->select('name,short_name,financial_year_id_fk,desig_id_fk');
		$this->db->from('mpr_master_scheme_table');
		$this->db->order_by('scheme_id_pk','ASC');
		$query=$this->db->get();
		$da=$query->result_array();
		return $da;

	}
	public function get_desig($n)
	{
		$this->db->select('desig_name')->from('mpr_master_designation')->where('desig_id_pk',$n);
		return $this->db->get()->result_array()[0]['desig_name'];
	}
	public function get_colspan()
	{
		$this->db->select('count(scheme_id_fk)');
		$this->db->from('mpr_master_attri_table');
		$this->db->where('scheme_id_fk!=',0);
		$this->db->group_by('scheme_id_fk');
		$this->db->order_by('scheme_id_fk');
		return $this->db->get()->result_array();
	}
	public function get_loc_detail()
	{
		$this->db->select('location_area,location_code');
		$this->db->from('mpr_master_location_data');
		$this->db->where('location_id_pk !=',1);
		return $this->db->get()->result_array();
	}
	public function get_attri()
	{
		$this->db->select('attri_name,actual_name');
		$this->db->from('mpr_master_attri_table');
		$this->db->where('scheme_id_fk !=',0);
		$this->db->order_by('attri_id_pk');
		$query=$this->db->get()->result_array();
		$temp['a_n']=array();
		$temp['n']=array();
		foreach ($query as $key) 
		{
			array_push($temp['a_n'],$key['attri_name']);
			array_push($temp['n'],$key['actual_name']);
		}
		return $temp;
	}
	public function get_attri_name($k)
	{
		$this->db->select('attri_name')->from('mpr_master_attri_table');
		$this->db->where('scheme_id_fk',$k);
		$this->db->order_by('id');
		return $this->db->get()->result_array();
	}
	public function get_attri_actual_name($k)
	{
		$this->db->select('actual_name')->from('mpr_master_attri_table')->where('attri_name',$k);
		$a= $this->db->get()->result_array();
		return $a[0]['actual_name'];
	}

	public function get_data($temp_tab,$attri,$schcd,$ses,$mon,$scheme_type)
	{
		if($temp_tab=="mpr_scheme_awcc")
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




	public function generate_table($temp,$ses,$mon,$n=0)
	{

		$template = array('table_open' => '<table border="0.1" cellpadding="" cellspacing="" style="text-align:center">');
		$this->table->set_template($template);
		if($n==0)
			$this->table->set_caption('<br>Financial Years - '.$ses.'/'.($ses-1).'<br>'.'Reporting Month - '.$mon.', '.$ses.'<br>'.'Name of the District:- HOWRAH <br>');
		else
		{
			$this->table->add_row(array('data'=>'Financial Years - '.$ses.'/'.($ses-1),'colspan'=>10));
			$this->table->add_row(array('data'=>'Reporting Month - '.$mon.', '.$ses,'colspan'=>10));
			$this->table->add_row(array('data'=>'Name of the District:- HOWRAH' ,'colspan'=>10));
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
	public function generate_pdf($temp) 
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
		$pdf->Output(md5(time()).'.pdf', 'D');
	}
	public function export_csv($temp)
	{ 
		$temporary_html_file = time() . '.html';
		file_put_contents($temporary_html_file, $temp);

		$reader = IOFactory::createReader('Html');

		$spreadsheet = $reader->load($temporary_html_file);

		$writer = IOFactory::createWriter($spreadsheet, 'Xlsx');

		$filename = time() . '.xlsx';

		$writer->save($filename);

		header('Content-Type: application/x-www-form-urlencoded');

		header('Content-Transfer-Encoding: Binary');

		header("Content-disposition: attachment; filename=\"".$filename."\"");

		readfile($filename);

		unlink($temporary_html_file);

		unlink($filename);

		exit;
	}
}