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
      <?php
          $attributes = array('id' => 'form');
          if($value==1){
            echo    form_open("Login/password_change_submit/".$this->uri->segment(3)."/".$this->uri->segment(4), $attributes);
          }else{
            echo    form_open("Login/password_change_first_user_submit", $attributes);
          } 
          ?>
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
var csrf_token='';
//change password form submit---------------------------------------------------------------------------
$("form").on("submit", function (event){
  event.preventDefault();
  if(csrf_token==''){
    csrf_token='<?php echo $this->security->get_csrf_hash(); ?>';
  }
  hashPassword();
  $.ajax({
    url: $('form').attr('action'),
    type: "POST",
    data: $('form').serialize()+"&<?php echo $this->security->get_csrf_token_name(); ?>="+csrf_token,
    //dataType: 'html',
    error: function(){
			console.log("Form cannot be submitted...");
		},
    cache: false,
    success: function(result){
      var k=JSON.parse(result);
      if (k.csrf_token){
        csrf_token=k.csrf_token;
      }
      //console.log(result);
      if(k.res==0){
        document.getElementById('pass1').value = "";
        document.getElementById('pass2').value = "";
        $('#errors').html(k.data);
      }else{
        if(k.data[0]=='*'){
          alert("Access Denied...");
          window.location.href = k.data.slice(1);
        }else{
          window.location.href = k.data;
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
        document.getElementById("sub2").disabled=true;
       return false;
      }
      re = /[0-9]/;
      if(!re.test(password)) {
        notify("Error: password must contain at least one number (0-9)!");
        document.getElementById("sub2").disabled=true;
        return;
      }
	  re = /[!@#$%^&*]/;
      if(!re.test(password)) {
        notify("Error: password must contain at least one characters (!@#$%^&*)!");
        document.getElementById("sub2").disabled=true;
        return;
      }
      re = /[a-z]/;
      if(!re.test(password)) {
        notify("Error: password must contain at least one lowercase letter (a-z)!");
        document.getElementById("sub2").disabled=true;
        return;
      }
      re = /[A-Z]/;
      if(!re.test(password)) {
        notify("Error: password must contain at least one uppercase letter (A-Z)!");
        document.getElementById("sub2").disabled=true;
        return;
      }
    } else {
      notify("Error: Please check that you've entered your password!");
      document.getElementById("sub2").disabled=true;
      return;
    }
  notify("");
  document.getElementById("sub2").disabled=false;
  }
	
	function notify(msg){
		$('#div1').html(msg);
	}
</script>
</body>
</html>


