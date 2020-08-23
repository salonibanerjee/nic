<!DOCTYPE html>
<html>
  <!--Password change -->
  <!---------------------------------------------------------------------------------------------------------------------------------------->
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>MPR | Log in</title>
  <!-- Tell the browser to be responsive to screen width -->
  <meta name="viewport" content="width=device-width, initial-scale=1">
	<!--	Encryption-->
	<!--	C:\xampp\htdocs\nic1\js\JavaScript_MD5\js-->
	<script type='text/javascript' src="<?php echo base_url();?>js/js-sha256-master/build/sha256.min.js"></script>
	

  <!-- Font Awesome -->
  <link rel="stylesheet" href="<?php echo base_url();?>css/plugins/fontawesome-free/css/all.min.css">
  <!-- Ionicons -->
  <link rel="stylesheet" href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">
  <!-- icheck bootstrap -->
  <link rel="stylesheet" href="<?php echo base_url();?>css/plugins/icheck-bootstrap/icheck-bootstrap.min.css">
  <!-- Theme style -->
  <link rel="stylesheet" href="<?php echo base_url();?>css/dist/css/adminlte.min.css">
  <!-- Google Font: Source Sans Pro -->
  <link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700" rel="stylesheet">
</head>
<body class="hold-transition login-page">
<div class='login-box'>
<div class='login-logo'>
<?php if($value==1){
  echo    "<a href=#><b>FORGOT </b>PASSWORD</a>";
}else{
  echo    "<a href=#>CHANGE PASSWORD FOR <b>THE FIRST TIME</b></a>";
}?>
</div>
  <!-- /.login-logo -->
  <div class="card">
    <div class="card-body login-card-body">
      <p class="login-box-msg">Change Password </p>

      <form method="POST" method="post">
        <div class="input-group mb-3">
          <input id="email" type="email" name="email" class="form-control" placeholder="Email" onkeyup='saveValue(this);'>
          <div class="input-group-append">
            <div class="input-group-text">
              <span class="fas fa-envelope"></span>
            </div>
          </div>
        </div>
        <div class="input-group mb-3">
          <input name="pass1" id="pass1" type="password" class="form-control" placeholder="New Password" onchange="validatePassword();" >
          <div class="input-group-append">
            <div class="input-group-text">
              <span class="fas fa-lock"></span>
            </div>
          </div>
        </div>
        <div class="input-group mb-3">
          <input name="pass2" id="pass2" type="password"  class="form-control" placeholder="Confirm Password" >
          <div class="input-group-append">
            <div class="input-group-text">
              <span class="fas fa-lock"></span>
            </div>
          </div>
        </div>
        <div id="errors" style="color:red;"></div>
        <div class="row">
          <div class="col-12" style="color:red;" id="div1"></div>
          <div class="col-12">
            <button type="submit" id="sub2" name="sub2" value="Login" class="btn btn-primary btn-block" >Submit</button>
          </div>
          <!-- /.col -->
        </div>
      </form>
    </div>
    <!-- /.login-card-body -->
  </div>
</div>
<!-- /.login-box -->

<!-- jQuery -->
<script src="<?php echo base_url();?>css/plugins/jquery/jquery.min.js"></script>
<!-- Bootstrap 4 -->
<script src="<?php echo base_url();?>css/plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
<!-- AdminLTE App -->
<script src="<?php echo base_url();?>css/dist/js/adminlte.min.js"></script>

<script type="text/javascript">
document.getElementById("email").value = getSavedValue("email");
function saveValue(e){
  var id = e.id;  
  var val = e.value;
  localStorage.setItem(id, val);
}
function getSavedValue  (v){
  if (!localStorage.getItem(v)){
  return "";
  }
  return localStorage.getItem(v);
}
function hashPassword(){
	var enc2 = sha256(document.getElementById('pass1').value);
	document.getElementById('pass1').value = enc2;
  enc2 = sha256(document.getElementById('pass2').value);
  document.getElementById('pass2').value = enc2;
}
//change password form submit---------------------------------------------------------------------------
$("form").on("submit", function (event){
  event.preventDefault();
  hashPassword();
  $.ajax({
    url: $('form').attr('action'),
    type: "POST",
    data: $('form').serialize(),
    //dataType: 'html',
    error: function(){
			console.log("Form cannot be submitted...");
		},
    cache: false,
    success: function(result){
      console.log(result);
      if(result[1]=='p'){
        var pos=result.indexOf('<!DOCTYPE html>');
        document.getElementById('pass1').value = "";
        document.getElementById('pass2').value = "";
        $('#errors').html(result.slice(0,pos));
      }else{
        if(result[0]=='*'){
          alert("Access Denied...");
          window.location.href = result.slice(1);
        }else{
          window.location.href = result;
        }
      }
    }
  });
});

function validatePassword()
  {
	var password = $('#pass1').val();
    if(password != "") {
     if(password.length < 8) {
        notify("Error: Password must contain at least eight characters!");
       return false;
      }
      re = /[0-9]/;
      if(!re.test(password)) {
        notify("Error: password must contain at least one number (0-9)!");
        return;
      }
	  re = /[!@#$%^&*]/;
      if(!re.test(password)) {
        notify("Error: password must contain at least one characters (!@#$%^&*)!");
        return;
      }
      re = /[a-z]/;
      if(!re.test(password)) {
        notify("Error: password must contain at least one lowercase letter (a-z)!");
        return;
      }
      re = /[A-Z]/;
      if(!re.test(password)) {
        notify("Error: password must contain at least one uppercase letter (A-Z)!");
        return;
      }
    } else {
      notify("Error: Please check that you've entered your password!");
      return;
    }
	notify("");
  }
	
	function notify(msg){
		$('#div1').html(msg);
	}
</script>
</body>
</html>


