<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');
 
class MY_Form_validation extends CI_Form_validation {
     protected $CI;
     function __construct() {
        parent::__construct();
                // reference to the CodeIgniter super object 
         $this->CI =& get_instance();
    }
       function input_data_unique_check($str,$table_name,$session) {           
         $this->CI->form_validation->set_message('input_data_unique_check', $this->CI->lang->line('access_code_invalid'));
         if($str) { // do your validations
            $this->load->model('Crud_model');
            if($this->Crud_model->unique_data_entry($table_name,$session))
               return FALSE;
            else
               return TRUE;
         } else {
              return FALSE;
         }
       }
}