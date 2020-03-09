<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Get_table extends CI_Controller {

	public function index()
	{
        $this->load->model('Crud_model');
        $result1['data']=$this->Crud_model->list_table();
        $this->load->view('get_table',$result1);
        /*if(isset($_POST['sub1'])){
            $requestpage=$_POST['selectPage'];
            $r="Location: get_table/load1/".$requestpage;
            header($r);
        }*/
    }

    public function load1($n)
    {
       //Load 'CRUD' model
       $this->load->model('Crud_model');

       //Fetch Attribute name. n - schema name
       $result['data'] =$this->Crud_model->get_table($n);
       $result['name'] =$n;
        
       #dynamic type checking
       $x=$this->Crud_model->get_attri($n);
       $y=array();
       foreach($x as $field){
           if($field->name=="id"){
               continue;
           }
           $z=$field->max_length;
           $w=$this->Crud_model->get_type($field->type);
           
           $y[]=array(
            'field' => $field->name,
            'label' => $field->name,
            'rules' => "required|max_length[$z]|$w"
           );
       }
       $this->form_validation->set_rules($y);
       
       if($this->form_validation->run()==FALSE){
            #Load view
            $this->load->view('get_table',$result);
       }
       else
       {
            #Submitting form
            if($this->input->post('save'))
            {
                $r=array();
                foreach($result['data'] as $row){
                    if($row=="id"){
                        continue;
                    }
                    $r[$row]=$this->input->post($row);
                }
                $this->Crud_model->save_data($r,$n);
                echo "Records Saved Successfully";
            }
        }
    }
}