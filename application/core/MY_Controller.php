<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class MY_Controller extends CI_Controller {
    public function abc(){
        echo "abc";
    }
    public function check_privilege($page_id = NULL){
        if($page_id){

        } else {
            show_404();
        }
    }
}
    
