<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>MPR | Add new user</title>
  <!-- Tell the browser to be responsive to screen width -->
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <!--	Encryption-->
  <script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/crypto-js/3.1.2/rollups/aes.js"></script>
  <script type='text/javascript' src="<?php echo base_url();?>js/js-sha256-master/build/sha256.min.js"></script>
  <!-- Font Awesome -->
  <link rel="stylesheet" href="<?php echo base_url();?>css/plugins/fontawesome-free/css/all.min.css">
  <!-- Ionicons -->
  <link rel="stylesheet" href="<?php echo base_url();?>css/plugins/icheck-bootstrap/icheck-bootstrap.min.css">
  <!-- Theme style -->
  <link rel="stylesheet" href="<?php echo base_url();?>css/dist/css/adminlte.min.css">
  <!-- Google Font: Source Sans Pro -->
  <link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700" rel="stylesheet">
</head>
<body class="hold-transition login-page">
<div class="login-box">
  <div class="login-logo">
	  <a href=#><b>Add</b></a>
	  <a href=#><b></b> New </a>
	  <a href=#><b>User </b></a>
  </div>
  <div class="card">
    <div class="card-body login-card-body">
		<?php echo form_open('','id="form"');?>
<!--      <form>-->
       <b>Email</b><input id="email" type="email" name="email" class="form-control" placeholder="Email">
<!--       <b>Password</b><input id="pass" type="password" name="pass" class="form-control" placeholder="Password" onkeyup="validatePassword()"> -->
		<font color="red"><div id="field_name1"></div></font>
	   <b>User Type</b><select name ="desig" id="desig" class="form-control" ></select>
	   <b>Region Code</b><select id="region_code" name="region_code" class="form-control"></select>
	   <b>Department</b><select id="dept"  name="dept" class="form-control"  ></select>
	   <b>Office Name</b><select id="office"  name="office" class="form-control"  ></select>
	   <b>Designation Name</b><select id="desig_name"  name="desig_name" class="form-control"  ></select>
		 <font color="red"><div id="field_name"></div></font><br>
		 <center>
          <div class="col-4 ">
            <button type="button" value="Submit" class="btn btn-primary btn-block" onclick="hashPassword();">Add</button>
          </div>
		  </center>
      </form>
    </div>
  </div>
</div>
<!-- jQuery -->
<script src="../../plugins/jquery/jquery.min.js"></script>
<!-- Bootstrap 4 -->
<script src="../../plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
<!-- AdminLTE App -->
<script src="../../dist/js/adminlte.min.js"></script>

<script type="text/javascript">
		fetchType();
        locationData();
	    department();
	    office();
	    designation();
		function hashPassword(){
			$('#field_name').html("");
			var email = $('#email').val();
			var password = $('#pass').val();
			var user_type = $('#desig').val();
			var region_code = $('#region_code').val();
			var dept = $('#dept').val();
			var office = $('#office').val();
			var desig_name = $('#desig_name').val();
		
			console.log("function called:"+email+","+password+","+user_type+","+region_code+","+dept+","+office+","+desig_name);
			if(email != "" && password != "" && user_type != "select" && region_code != "select"  && dept != "select"  && office != "select" && desig_name !="select"){
				signupdo(email,password,user_type,region_code,dept,office,desig_name);
			}else{
				$('#field_name').html("Please fill all fields*");
			}
		
		}
		
	function signupdo(email,password,user_type,region_code,dept,office,desig_name){
		console.log("card data");
		$.ajax({
			url: "<?php echo base_url();?>index.php/Super_Admin/signupdo",
			type: "POST",
			data:{email:email,password:password,user_type:user_type,region_code:region_code,dept:dept,office:office,desig_name:desig_name},
			error: function(jqXHR, textStatus, errorThrown){
				console.log(textStatus, errorThrown);
			},
			cache: false,
			success:function(result) 
			{
				$('#email').val("");
				$('#pass').val("");
				$('#desig').val("select");
				$('#region_code').val("select");
				$('#dept').val("select");
				$('#office').val("select");
				$('#desig_name').val("select");
				$('#field_name').html(result);
				//alert(result);
				console.log("result");
			}   
		});
	}
	   function fetchType() {
		 console.log("fetchType");
        $("#desig").empty();
        $.ajax({
            url: "<?php echo base_url();?>index.php/Super_Admin/fetch_user_type",
            type: "POST",
            dataType: 'json',
            error: function (jqXHR, textStatus, errorThrown) {
                console.log("error::" + textStatus, errorThrown);
			},
            success: function (result) {
				console.log(result);
                var type_arr = result.data;
                var status = result.status;
                if (status == 1) {
					var type_item = "<option value=" + "select" + ">" + "SELECT" +
                            "</option>";
                        $("#desig").append(type_item);
                    $.each(type_arr, function (idx, val) {
                        var type_item = "<option value=" + val['code'] + ">" + val['type'] +
                            "</option>";
                        $("#desig").append(type_item);
                    });
                }
            }
        });
	  }
	function department() {
		 console.log("department");
        $("#dept").empty();
        $.ajax({
            url: "<?php echo base_url();?>index.php/Super_Admin/department",
            type: "POST",
            dataType: 'json',
            error: function (jqXHR, textStatus, errorThrown) {
                console.log("error::" + textStatus, errorThrown);
			},
            success: function (result) {
				console.log(result);
                var type_arr = result.data;
                var status = result.status;
                // console.log(type_arr)
                // console.log(success)
                if (status == 1) {
					var type_item = "<option value=" + "select" + ">" + "SELECT" +
                            "</option>";
                        $("#dept").append(type_item);
                    $.each(type_arr, function (idx, val) {
                        var type_item = "<option value=" + val['code'] + ">" + val['type'] +
                            "</option>";
                        $("#dept").append(type_item);
                    });
                }
            }
        });
	  }
	function office() {
		 console.log("office");
        $("#office").empty();
        $.ajax({
            url: "<?php echo base_url();?>index.php/Super_Admin/office",
            type: "POST",
            dataType: 'json',
            error: function (jqXHR, textStatus, errorThrown) {
                console.log("error::" + textStatus, errorThrown);
			},
            success: function (result) {
				console.log(result);
                var type_arr = result.data;
                var status = result.status;
                if (status == 1) {
					var type_item = "<option value=" + "select" + ">" + "SELECT" +
                            "</option>";
                        $("#office").append(type_item);
                    $.each(type_arr, function (idx, val) {
                        var type_item = "<option value=" + val['code'] + ">" + val['type'] +
                            "</option>";
                        $("#office").append(type_item);
                    });
                }
            }
        });
	  }
	function designation() {
		 console.log("designation");
        $("#desig_name").empty();
        $.ajax({
            url: "<?php echo base_url();?>index.php/Super_Admin/designation",
            type: "POST",
            dataType: 'json',
            error: function (jqXHR, textStatus, errorThrown) {
                console.log("error::" + textStatus, errorThrown);
			},
            success: function (result) {
				console.log(result);
                var type_arr = result.data;
                var status = result.status;
                if (status == 1) {
					var type_item = "<option value=" + "select" + ">" + "SELECT" +
                            "</option>";
                        $("#desig_name").append(type_item);
                    $.each(type_arr, function (idx, val) {
                        var type_item = "<option value=" + val['code'] + ">" + val['type'] +
                            "</option>";
                        $("#desig_name").append(type_item);
                    });
                }
            }
        });
	  }
	
	function locationData() {
        $("#region_code").empty();
        $.ajax({
            url: "<?php echo base_url();?>index.php/Super_Admin/location_data",
            type: "POST",
            dataType: 'json',
            error: function (jqXHR, textStatus, errorThrown) {
                console.log("error::" + textStatus, errorThrown);
			},
            success: function (result) {
				console.log(result);
                var type_arr = result.data;
                var status = result.status;
                if (status == 1) {
					var type_item = "<option value=" + "select" + ">" + "SELECT" +
                            "</option>";
                        $("#region_code").append(type_item);
                    $.each(type_arr, function (idx, val) {
                        var type_item = "<option value=" + val['code'] + ">" + val['type'] +
                            "</option>";
                        $("#region_code").append(type_item);
                    });
                }
            }
        });
	  }
	
//  function validatePassword()
//  {
//	var password = $('#pass').val();
//    if(password != "") {
//      if(password.length < 8) {
//        notify("Error: Password must contain at least eight characters!");
//        return false;
//      }
//      re = /[0-9]/;
//      if(!re.test(password)) {
//        notify("Error: password must contain at least one number (0-9)!");
//        return;
//      }
//	  re = /[!@#$%^&*]/;
//      if(!re.test(password)) {
//        notify("Error: password must contain at least one characters (!@#$%^&*)!");
//        return;
//      }
//      re = /[a-z]/;
//      if(!re.test(password)) {
//        notify("Error: password must contain at least one lowercase letter (a-z)!");
//        return;
//      }
//      re = /[A-Z]/;
//      if(!re.test(password)) {
//        notify("Error: password must contain at least one uppercase letter (A-Z)!");
//        return;
//      }
//    } else {
//      notify("Error: Please check that you've entered your password!");
//      return;
//    }
//	notify("");
//  }
//	
//	function notify(msg){
//		$('#field_name1').html(msg);
//	}

</script>
</body>
</html>


