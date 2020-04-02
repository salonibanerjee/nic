<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class MY_Controller extends CI_Controller {
    public function abc(){
        echo "abc";
    }
    public function check_privilege($page_id = NULL){
        $this->load->driver('cache', array('adapter' => 'file'));
        $data=$this->cache->get('Active_status')['user_type_id_fk'];
        $var=$this->cache->get('User_type'.$data)['user_privilege'];
        $flag=0;
        if($page_id){
            foreach($var as $x){
                if($page_id==$x['privilege_id_fk']){
                    $flag=1;
                }
            }
            if($flag==0){
                show_404();
            }
        } 
        else{
            show_404();
        }
    }


}
    
