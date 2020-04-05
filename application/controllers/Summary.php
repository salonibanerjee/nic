<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class summary extends CI_Controller {

	public function index()
	{	

		$this->load->driver('cache',array('adapter' => 'file'));
		//print_r($this->cache->get('Active_status'))	;	
		
		$this->load->model('Dashboard_model');

		$this->load->library('parser');

		$this->load->view('dashboard/navbar');

		$this->load->view('dashboard/sidebar');

		$info_box = array(
			'data_list' => array(
				array('num' => '10', 'desc' => 'Body 1'),
				array('num' => '15', 'desc' => 'Body 2'),
				array('num' => '19', 'desc' => 'Body 3'),
				array('num' => '324', 'desc' => 'Body 4')
			)
		);
		
		$this->parser->parse('dashboard/info_box', $info_box);

		//Insert data for progressbar in an array format
		$scheme_pro = array("KCC","DOC","DOG","ANAND");
		$size_sch = sizeof($scheme_pro);
		$schemename_pro = $this->Dashboard_model->sch_name($scheme_pro,$size_sch);
		$data = $this->Dashboard_model->get_prog($scheme_pro,$size_sch);
		$work_progress = array();
		$i=0;
		while($i<$size_sch)
		{
			if($data[$i]>60)
				$find='success';
			else if($data[$i]<60&&$data[$i]>40)
				$find='warning';
			else
				$find='danger';

			$d = array(
				'sl_no' => $i+1,
				'p_name' => $schemename_pro[$i],
				'sign' => $find,
				'progress' => $data[$i]
				);
			array_push($work_progress, $d);	
			$i++;
		}
		$progress_view = array('work_progress' => $work_progress);

		$this->parser->parse('dashboard/progress_view', $progress_view);
		
		//Insert data for bar chart in an array format 
		$scheme_bar = array("KCC","KishanM","ANAND","DOC","DOG");
		$result = $this->Dashboard_model->get_data($scheme_bar,sizeof($scheme_bar));
		$schemename_bar = $this->Dashboard_model->sch_name($scheme_bar,sizeof($scheme_bar));

		$target = array();
		$progress = array();
		for($i=0;$i<10;$i++)
		{
			if($i%2==0)
				array_push($target, $result[$i]);
			else
				array_push($progress, $result[$i]);
		}

		$bar_chart = array(
			'label1' => $schemename_bar,
			'data1_1' => $progress,
			'data1_2' => $target,
			'block' => array('Block 1', 'Block 2', 'Block 3', 'Block 4', 'Block 5'),
			'bar_1' => 'Scheme 1',
			'data_1' => array(34, 64, 32, 27, 47),
			'bar_2' => 'Scheme 2',
			'data_2' => array(65, 59, 80, 81, 56),
			'bar_3' => 'Scheme 3',
			'data_3' => array(43, 67, 15, 32, 30),
			'bar_4' => 'Scheme 4',
			'data_4' => array(75,34,35,52,41),
			'bar_5' => 'Scheme 5',
			'data_5' => array(34,64,25,84,19)
		);

		$this->load->view('dashboard/bar_chart', $bar_chart);

		$table_data = array(
			'data' => array(
				array('c1' => '1', 'c2' => 'Yubashree', 'c3' => '150', 'c4' => '50', 'c5' => '10'),
				array('c1' => '1', 'c2' => 'Yubashree', 'c3' => '150', 'c4' => '50', 'c5' => '10'),
				array('c1' => '1', 'c2' => 'Yubashree', 'c3' => '150', 'c4' => '50', 'c5' => '10'),
				array('c1' => '1', 'c2' => 'Yubashree', 'c3' => '150', 'c4' => '50', 'c5' => '10')
			)
		);

		$this->parser->parse('dashboard/alert_table', $table_data);
		
	}
	
	public function profile_LTE(){
		$this->load->driver('cache',array('adapter' => 'file'));
		$this->load->view('dashboard/navbar');
		$this->load->view('dashboard/sidebar');
		$this->load->view('profile_LTE');
	}

	public function profile(){
		$this->load->driver('cache',array('adapter' => 'file'));
		$this->load->view('dashboard/navbar');

		$this->load->view('dashboard/sidebar');
		$this->load->view('profile');
	}
	public function edit_prof_lte(){
		$this->load->driver('cache',array('adapter' => 'file'));
		$this->load->view('dashboard/navbar');
		$this->load->view('dashboard/sidebar');
		$this->load->view('edit_profile');
	}

	public function edit_profile(){
		$this->load->view('edit_pro_m');
        $this->load->model('profile_model');
        if(isset($_POST['sub1'])){
            $first = $this->input->post('first');
            $last = $this->input->post('last');
            $mobile = $this->input->post('mob');
            $email = $this->input->post('email');
            $uid = $this->input->post('uid');
            $desig = $this->input->post('desig');
            $dist = $this->input->post('dist');
            //$file = $this->input->post('file');
            //$file = ($_POST['file']);
            $image = base64_encode(file_get_contents($_FILES['file']['tmp_name']));
            //echo $image;
            //echo "<img src = "data:image/jpeg;base64,$image" alt = "Red dot">";
            //echo "<img src ='{data:image/jpeg;base64,$image}' width = '40%' height = '40%'>";

            //echo $file;
            /*$extension = array('jpg','png','gif','jpeg');
            $file_ext = explode ('.',$file);

            $name = $file_ext[0];
            //echo $name;
            $name = preg_replace("!-!"," ",$name);
            $name= ucwords($name);

            $img_dir = 'web/'.$file;
            //echo $img_dir;
            move_uploaded_file($file,$img_dir);



            //echo ($file_ext[1]);


            $file_ext = end($file_ext);*/

            ?>
            <script type = "text/javascript">
/*$(document).ready(function(){
                $(document).on('change','#file', function(){
                    var property = document.getElementById("file").files[0];
                    var image_name = property.name;
                    var image_ext = image_name.spilt('.').pop().toLowerCase();
                    if(jQuery.inArray(image_ext,['gif','png','jpg','jpeg']) == -1)
                    {
                        alert ("Invalid IMAGE FILE");
                    }
                    var image_size = property.size;
                    if(image_size > 10000000)
                    {
                        alert("Image File Larger, Should be within 10Mb");
                    }
                    else
                    {
                        var form_data = new FormData();
                        form_data.append("file",property);
                        $.ajax({
                            url:"upload.php",
                            method:"POST",
                            data:form_data,
                            contentType:false,
                            cache:false,
                            processData:false,
                            beforeSend:function(){
                                $('#uploaded_image').html("<label class= 'text-success'>Image
                                Uploading....</label> ");

                            },
                            success:function(data)
                            {
                                $('#uploaded_image').html(data);
                            }
                        })
            
                    }
            
                });
            });*/
            <script>

<?php
            $data = array(
                'first' => $first,
                'last' => $last,
                'mobile' => $mobile,
                'email' => $email,
                'image' => $image,
                'uid' => $uid,
                'desig' =>$desig,
                'dist' =>$dist,
                //'img_dir' => $img_dir,
                //'image' => $img_dir,
            );
            $this->profile_model->update($uid,$data);
            ?>
                <script type="text/javascript">
                    alert("Updated Successfully...");
                </script>
                <?php
         }
       // $this->load->model('profile_model');
        //echo $this->session->userdata('uid');
       //$this->load->driver('cache', array('adapter' => 'file'));
        //echo ($this->cache->get('Active Status')['active_status']);
	}
	
}