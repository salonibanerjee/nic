<html>
 <head>
 <link rel="stylesheet" type="text/css" href="<?php echo base_url();?>css/switch.css">
  <script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/crypto-js/3.1.2/rollups/aes.js"></script>
  <!-- Ionicons -->
  <link rel="stylesheet" href="<?php echo base_url();?>css/plugins/icheck-bootstrap/icheck-bootstrap.min.css">
  <!-- Theme style -->
  <link rel="stylesheet" href="<?php echo base_url();?>css/dist/css/adminlte.min.css">
  <!-- Google Font: Source Sans Pro -->
  <link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700" rel="stylesheet">
  <div class="login-logo">
	  <a href=#><b>User</b></a>
	  <a href=#><b></b>Type</a>
	  <a href=#><b>Table </b></a>
  </div>
	</head>
	<body style="background-color:dee2e6;">
    <center>
    <table border="1">
     <tr><th>User Type Id</th><th>Designation</th><th>Active Status</th><th>Action</th></tr>
<?php
foreach($records as $r)
{
	$chk = " checked";
	$val = "ON";
	if($r->active_status == 0){
		$chk = "";
		$val = "OFF";
	}
	 echo "<tr><td><center>".$r->user_type_id_pk."</center></td><td><center>".$r->desig."</center></td><td><center>".$r->active_status."</center></td><td><center>
	<label class='switch'>
	  <input id='switch".$r->user_type_id_pk."' type='checkbox' onclick='toggleClicked(".$r->user_type_id_pk.");' value='".$val."'".$chk.">
	  <span class='slider round'></span>
	</label></center></td></tr>";
}	
?>
   </table>
  <center>
		</center></center>
  </body>
 </html> 

<script type="text/javascript">
	function toggleClicked(userId){
		var button = document.getElementById("switch"+userId);
		toggle(button);
		console.log('clicked');
		console.log(userId);
		var state = button.value;
		console.log(state);
		var s = 1;
		if(state == "OFF"){
			s = 0;
		}
		update(userId, s);
	}
	
	
	
	function toggle(button){
		if(button.value=="OFF"){
			button.value="ON";
		}else{
			button.value="OFF";
		}
	}
	
	function update(id, state){
		$.ajax({
			url: "<?php echo base_url();?>index.php/Super_Admin/inactive_user_type",
			type: "POST",
			data:{id:id,state:state},
			error: function(jqXHR, textStatus, errorThrown){
				console.log(textStatus, errorThrown);
			},
			cache: false,
			success:function(result) 
			{  
				console.log(result);
				if(result == 'done'){
					console.log("<?php echo base_url();?>index.php/Super_Admin/fetch_user_desig_type");
					window.location="<?php echo base_url();?>index.php/Super_Admin/fetch_user_desig_type";
				}else{
					<?php echo "failed"?>
				}
			}   
		});
	}
</script>