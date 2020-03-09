<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Get_table extends CI_Controller {

	public function index()
	{
        $this->load->model('Crud_model');
        $result1['data']=$this->Crud_model->list_table();
        $result1['s_name']=array();
        foreach($result1['data'] as $row){
            $result1['s_name'][]=$this->Crud_model->search_table($row);
        }
        $this->load->view('ori',$result1);
        if(isset($_POST['sub1'])){
            $requestpage=$_POST['selectPage'];
            $r="Location: get_table/load1/".$requestpage;
            header($r);
        }
    }

    public function load1($n)
    {
       //Load 'CRUD' model
       $this->load->model('Crud_model');

       //Fetch Attribute name. n - schema name
       $result['data'] =$this->Crud_model->get_table($n);
       $result['name'] =$this->Crud_model->search_table($n);
        
       #dynamic type checking
       $x=$this->Crud_model->get_attri($n);
       $y=array();
       $result['s_name']=array();
       foreach($x as $field){
           if($field->name=="id"){
                $result['s_name'][]=$this->Crud_model->search_attri($field->name);
                continue;
           }
           $z=$field->max_length;
           $w=$this->Crud_model->get_type($field->type);
           $result['s_name'][]=$this->Crud_model->search_attri($field->name);
           
           $y[]=array(
            'field' => $field->name,
            'label' => $this->Crud_model->search_attri($field->name),
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