<?php
class MY_Exceptions extends CI_Exceptions {

    function show_404($page = '', $log_error = TRUE)
    {

        $CI =& get_instance();
        $CI->load->view('my404');
        echo $CI->output->get_output();
        exit;
    }
}