<div class="content-wrapper">
  <!-- Content Header (Page header) -->
  <section class="content-header">
    <div class="container-fluid">
      <div class="row mb-2">
        <div class="col-sm-6">
          <h1>ADD NEW <b>USER</b></h1>
        </div>
        <div class="col-sm-6">
          <ol class="breadcrumb float-sm-right">
            <li class="breadcrumb-item"><a href="http://localhost/NIC/index.php/Super_Admin">Super Admin</a></li>
            <li class="breadcrumb-item active">Add User</li>
          </ol>
        </div>
      </div>
    </div><!-- /.container-fluid -->
  </section>
  <section class="content">
    <div class="container-fluid">
  <!-- /.login-logo -->
  <div class="card card-primary card-outline mx-auto" style="max-width: 500px">
    <div class="card-body login-card-body">
      <p class="login-box-msg"><strong>Enter User Details</strong></p>

      <?php echo form_open('','id="form"');?>
        <div class="text-center">
          <img id='zoom' class='profile-user-img img-fluid img-circle' src='http://localhost/NIC/css/dist/img/avatar002.png' alt='User profile picture' style='width:150px; height:150px;'>  
        </div>

        <div class="input-group mb-3">
        <input id="email" type="email" name="email" class="form-control" placeholder="Email">
          <div class="input-group-append">
            <div class="input-group-text">
              <span class="fas fa-envelope"></span>
            </div>
          </div>
        </div>
        <div class="input-group mb-3">
            <select name ="desig" id="desig" class="form-control" onchange="locationData();"  ></select>
          <div class="input-group-append">
            <div class="input-group-text">
              <span class="fas fa-user-plus"></span>
            </div>
          </div>
        </div>
        <div class="input-group mb-3">
            <select id="region_code" name="region_code" class="form-control"></select>
          <div class="input-group-append">
            <div class="input-group-text">
              <span class="fas fa-map-marker"></span>
            </div>
          </div>
        </div>
		<div class="input-group mb-3">
            <select id="office"  name="office" class="form-control" onchange="department();" ></select>
          <div class="input-group-append">
            <div class="input-group-text">
              <span class="fas  fa-university"></span>
            </div>
          </div>
        </div>
        <div class="input-group mb-3">
            <select id="dept"  name="dept" class="form-control" onchange="designation();"  ></select>
          <div class="input-group-append">
            <div class="input-group-text">
              <span class="fas fa-building"></span>
            </div>
          </div>
        </div>
        
        <div class="input-group mb-3">
            <select id="desig_name"  name="desig_name" class="form-control" ></select>
          <div class="input-group-append">
            <div class="input-group-text">
              <span class="fas fa-user-secret"></span>
            </div>
          </div>
        </div>
        <font color="red"><div id="field_name1"></div></font>
        <font color="red"><div id="field_name"></div></font><br>
        <div class="row">
          <div class="col-12">
            <button type="button" value="Submit" class="btn btn-primary btn-block" onclick="hashPassword();">Add</button>
          </div>
          <!-- /.col -->
        </div>
    </div>
    <!-- /.login-card-body -->
  </div>
</div>
</section>
</div>

<script type="text/javascript">
		fetchType();
	    office();
		function hashPassword(){
			$('#field_name').html("");
			var email = $('#email').val();
			var user_type = $('#desig').val();
			var region_code = $('#region_code').val();
			var dept = $('#dept').val();
			var office = $('#office').val();
			var desig_name = $('#desig_name').val();
		
			console.log("function called:"+email+","+user_type+","+region_code+","+dept+","+office+","+desig_name);
			if(email != "" && user_type != "select" && region_code != "select"  && dept != "select"  && office != "select" && desig_name !="select"){
				signupdo(email,user_type,region_code,dept,office,desig_name);
			}else{
				$('#field_name').html("Please fill all fields*");
			}
		
		}
		
	function signupdo(email,user_type,region_code,dept,office,desig_name){
		console.log("card data:" +email+","+user_type+","+region_code+","+dept+","+office+","+desig_name);
		$.ajax({
			url: "<?php echo base_url();?>index.php/Super_Admin/signupdo",
			type: "POST",
			data:{email:email,user_type:user_type,region_code:region_code,dept:dept,office:office,desig_name:desig_name},
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
					var type_item = "<option value=" + "select" + ">" + "USER TYPE" +
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
					var type_item = "<option value=" + "select" + ">" + "OFFICE" +
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
	function department() {
		 var office = $('#office').val();
		 console.log("department"+office);
        $("#dept").empty();
        $.ajax({
            url: "<?php echo base_url();?>index.php/Super_Admin/department",
            type: "POST",
			data:
			{
				office:office
			},
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
					var type_item = "<option value=" + "select" + ">" + "DEPARTMENT" +
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
	
	function designation() {
		var dept = $('#dept').val();
		 console.log("designation"+dept);
        $("#desig_name").empty();
        $.ajax({
            url: "<?php echo base_url();?>index.php/Super_Admin/designation",
            type: "POST",
			data:
			{
				dept:dept
			},
            dataType: 'json',
            error: function (jqXHR, textStatus, errorThrown) {
                console.log("error::" + textStatus, errorThrown);
			},
            success: function (result) {
				console.log(result);
                var type_arr = result.data;
                var status = result.status;
                if (status == 1) {
					var type_item = "<option value=" + "select" + ">" + "DESIGNATION" +
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
		var desig = $('#desig').val();
		console.log("locationData"+desig);
        $("#region_code").empty();
        $.ajax({
            url: "<?php echo base_url();?>index.php/Super_Admin/location_data",
            type: "POST",
			data:
			{
				desig:desig
			},
            dataType: 'json',
            error: function (jqXHR, textStatus, errorThrown) {
                console.log("error::" + textStatus, errorThrown);
			},
            success: function (result) {
				console.log(result);
                var type_arr = result.data;
                var status = result.status;
                if (status == 1) {
					var type_item = "<option value=" + "select" + ">" + "LOCATION" +
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


