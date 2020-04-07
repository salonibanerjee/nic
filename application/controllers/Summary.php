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


		//$this->load->view('dashboard/container');

		$info_box = array(
			'data_list' => array(
				array('num' => '10', 'desc' => 'Body 1'),
				array('num' => '15', 'desc' => 'Body 2'),
				array('num' => '19', 'desc' => 'Body 3'),
				array('num' => '324', 'desc' => 'Body 4')
			)
		);
		
		$this->parser->parse('dashboard/info_box', $info_box);

		//-----------------------------------------------------------------------------------------

		//Insert data for progressbar in an array format

		$scheme_pro = array("KCC","DOC","DOG","ANAND");

		if(isset($_POST['progress_filter_submit'])){//to run PHP script on submit
			if(!empty($_POST['check_list'])){
				$scheme_pro = array();
				//Loop to store and display values of individual checked checkbox.
				foreach($_POST['check_list'] as $selected){
					array_push($scheme_pro,$selected);
				}
			}
		}

		$filter_progress =array(
			'filter_id' => 'progress_filter',
			'selected' => $scheme_pro,
			'c_name' => $this->Dashboard_model->list_table(),
			'f_name' => $this->Dashboard_model->fullname()
		);

		$this->load->view('dashboard/filter_view', $filter_progress);
	

		
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
		$progress_view = array('work_progress' => $work_progress
		);

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
			'data1_1' => $target,
			'data1_2' => $progress,
			//-------------------------------
			'block' => $schemename_bar,
			'no_bar' => 2,
			'bar' => array('Fund Received','Fund Utilised'),
			'data' => array()
		);

		array_push($bar_chart['data'],$target);
		array_push($bar_chart['data'],$progress);

		$this->load->view('dashboard/bar_chart', $bar_chart);

		$this->load->view('dashboard/pie_chart', $bar_chart);

		$this->load->view('dashboard/line_chart', $bar_chart);

		$scheme_alert = array("KCC","KishanM","ANAND","DOC","DOG");
		$result_alert = $this->Dashboard_model->get_data($scheme_bar,sizeof($scheme_bar));
		$schemename_alert = $this->Dashboard_model->sch_name($scheme_bar,sizeof($scheme_bar));
		$data = array();
		for($i=0;$i<2*sizeof($scheme_bar);$i+=2)
		{
			$per=(int)($result_alert[$i+1]/$result_alert[$i]*100);
			array_push($data, $per);
		}
		$fits = array();
		$j=0;
		for($i=0;$i<sizeof($data);$i++,$j+=2)
		{
			$eachbar = array('c1'=>$i+1,'c2'=>$schemename_alert[$i], 'c3'=>$result_alert[$j], 'c4'=>$result_alert[$j+1], 'c5'=>$data[$i] );
			array_push($fits, $eachbar);
		}
		$table_data = array('data' => $fits );

		/*$table_data = array(
			'data' => array(
				array('c1' => '1', 'c2' => 'Yubashree', 'c3' => '150', 'c4' => '50', 'c5' => '10'),
				array('c1' => '1', 'c2' => 'Yubashree', 'c3' => '150', 'c4' => '50', 'c5' => '10'),
				array('c1' => '1', 'c2' => 'Yubashree', 'c3' => '150', 'c4' => '50', 'c5' => '10'),
				array('c1' => '1', 'c2' => 'Yubashree', 'c3' => '150', 'c4' => '50', 'c5' => '10')
			)
		);
*/
		$this->parser->parse('dashboard/alert_table', $table_data);
		
		
	}
	
	public function profile_LTE(){
		$this->load->driver('cache',array('adapter' => 'file'));
		$this->load->view('dashboard/navbar');
		$this->load->view('dashboard/sidebar');
		$this->load->model('profile_model');
		$res = $this->profile_model->get_f($this->session->userdata('uid'));
		$flag = 'False';
		if($res){
			$da = array(
				'f_name' => $res->f_name,
				//'m_name' => $mid,
				'l_name' => $res->l_name,
				'mobile' => $res->mobile,
				'email' =>$res->email,
				'image' => $res->image,
				'username' =>$res->username,
				'designation' =>$res->designation,
				'district' =>$res->district,
				//'img_dir' => $img_dir,
				//'image' => $img_dir,

			);
			$flag = 'True';
		}
		else{
			$da = array(
				'f_name' =>'',
				//'m_name' => $mid,
				'l_name' => '',
				'mobile' =>'',
				'email' =>'',
				'image' => '',
				'username' =>'',
				'designation' =>'',
				'district' =>'',
				//'img_dir' => $img_dir,
				//'image' => $img_dir,
			);
			$flag = 'False';
		}
		$this->load->view('profile_LTE',$da);
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
		
		
		//$this->load->view('edit_profile');
		$this->load->model('profile_model');
		$res = $this->profile_model->get_f($this->session->userdata('uid'));
		$flag = 'False';
		if($res){
			$da = array(
				'f_name' => $res->f_name,
				//'m_name' => $mid,
				'l_name' => $res->l_name,
				'mobile' => $res->mobile,
				'email' =>$res->email,
				'image' => $res->image,
				'username' =>$res->username,
				'designation' =>$res->designation,
				'district' =>$res->district,
				//'img_dir' => $img_dir,
				//'image' => $img_dir,

			);
			$flag = 'True';
		}
		else{
			$da = array(
				'f_name' =>'',
				//'m_name' => $mid,
				'l_name' => '',
				'mobile' =>'',
				'email' =>'',
				'image' => '',
				'username' =>'',
				'designation' =>'',
				'district' =>'',
				//'img_dir' => $img_dir,
				//'image' => $img_dir,
			);
			$flag = 'False';
		}
		
		/*$config = array(
			array(
					'field' => 'first',
					'label' => 'First Name',
					'rules' => 'required|max_length[50]',
			),
			array(
					'field' => 'last',
					'label' => 'Last Name',
					'rules' => 'required|max_length[50]',
					'errors' => array(
							'required' => 'You must provide a %s.',
					),
			),
			array(
					'field' => 'mob',
					'label' => 'Mobile',
					'rules' => 'required|numeric|less_than[10]'
			),
			array(
					'field' => 'email',
					'label' => 'Email',
					'rules' => 'required|valid_email'
			),
			array(
				'field' => 'desig',
				'label' => 'Designation',
				'rules' => 'required|max_length[50]'
			),
			array(
				'field' => 'dist',
				'label' => 'District',
				'rules' => 'required|max_length[50]'
			)
	);
	$this->form_validation->set_rules($config);
	if ($this->form_validation->run() == FALSE)
	{
		$this->load->view('edit_profile',$da);
	}
	else{*/
		$this->load->view('edit_profile',$da);
		if(isset($_POST['sub1'])){
            $first = $this->input->post('first');
            $last = $this->input->post('last');
            $mobile = $this->input->post('mob');
            $email = $this->input->post('email');
            $desig = $this->input->post('desig');
			$dist = $this->input->post('dist');
			$image = base64_encode(file_get_contents($_FILES['file']['tmp_name']));
			
            $data = array(
				'f_name' => $first,
				'm_name' => "",
                'l_name' => $last,
				'mobile' => $mobile,
				'username' =>$this->session->userdata('uid'),
                'email' => $email,
                'image' => $image,
                'designation' =>$desig,
                'district' =>$dist,
                //'img_dir' => $img_dir,
                //'image' => $img_dir,
			);
			


			
			//$query = $this->db->get_where('profile', array('username' => $this->session->userdata('uid')));
			//$row = $query->row();
			if($res){
				$this->profile_model->update($this->session->userdata('uid'),$data);
			}else
				$this->profile_model->upload($data);
			
			
            ?>
                <script type="text/javascript">
                    alert("Updated Successfully...");
					window.location.href="http://localhost/NIC/index.php/Summary/profile_LTE";
                </script>
            <?php
		}
	//}
		 
	   ////echo $first;
            //$file = $this->input->post('file');
            //$file = ($_POST['file']);
            //echo $image;
            //echo "<img src = "data:image/jpeg;base64,$image" alt = "Red dot">";
            //echo "<img src ='{data:image/jpeg;base64,$image}' width = '40%' height = '40%'>";

            //echo $file;
 
	   
	   //$this->load->model('profile_model');
        //echo $this->session->userdata('uid');
       //$this->load->driver('cache', array('adapter' => 'file'));
		//echo ($this->cache->get('Active Status')['active_status']);
		//<script type = "text/javascript">
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
            //</script>
	}
	

	public function edit_profile(){
		$this->load->view('edit_profile');
		$this->load->model('profile_model');
		
}
}