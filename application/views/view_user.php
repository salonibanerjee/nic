<html>
	<head>
	    <link rel="stylesheet" type="text/css" href="<?php echo base_url();?>css/switch.css">
		<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
		<script src="https://cdnjs.cloudflare.com/ajax/libs/crypto-js/3.1.2/rollups/aes.js"></script>
	    <link rel="stylesheet" href="<?php echo base_url();?>css/plugins/fontawesome-free/css/all.min.css">
		<!-- Ionicons -->
		<link rel="stylesheet" href="<?php echo base_url();?>css/plugins/icheck-bootstrap/icheck-bootstrap.min.css">
		<!-- Theme style -->
		<link rel="stylesheet" href="<?php echo base_url();?>css/dist/css/adminlte.min.css">
		<!-- Google Font: Source Sans Pro -->
		<link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700" rel="stylesheet">
		<div class="login-logo">
	    <a href=#><b>User</b></a>
	    <a href=#><b></b> Table </a>
      </div>
	</head>
	<body style="background-color:dee2e6;">
		<center>
		<table border="1">
   		<tr><th>ID</th><th>Email</th><th>Password</th><th>User Type</th><th>Location Code</th><th>Status</th><th>Department ID </th><th>Office Id</th><th>Designation</th><th>Action</th></tr>
<?php
foreach($records as $r)
{
	$chk = " checked";
	$val = "ON";
	if($r->active_status == 0){
		$chk = "";
		$val = "OFF";
	}
	 echo "<tr><td><center>".$r->Login_id_pk."</center></td><td><center>".$r->username."</center></td><td>".$r->password."</td><td><center>".$r->user_type_id_fk."</center></td><td><center>".$r->location_code."</center></td><td><center>".$r->active_status."</center></td><td><center>".$r->dept_id_fk."</center></td><td><center>".$r->office_id_fk."</center></td><td><center>".$r->desig_id_fk."</center></td><td><center>
	<label class='switch'>
	  <input id='switch".$r->Login_id_pk."' type='checkbox' onclick='toggleClicked(".$r->Login_id_pk.");' value='".$val."'".$chk.">
	  <span class='slider round'></span>
	</label><center></td></tr>";
}	
?>
   </table>
	</center>
	</body>
 </html> 

<script type="text/javascript">
	function toggleClicked(loginId){
		var button = document.getElementById("switch"+loginId);
		toggle(button);
		console.log('clicked');
		console.log(loginId);
		var state = button.value;
		console.log(state);
		var s = 1;
		if(state == "OFF"){
			s = 0;
		}
		update(loginId, s);
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
			url: "<?php echo base_url();?>index.php/Super_Admin/inactive_login",
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
					console.log("<?php echo base_url();?>index.php/Super_Admin/fetch_login");
					window.location="<?php echo base_url();?>index.php/Super_Admin/fetch_login";
				}else{
					<?php echo "failed"?>
				}
			}   
		});
	}
</script>