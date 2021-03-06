<!DOCTYPE html>
<html>
  <!--Login view page-->
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
<div class="login-box">
  <div class="login-logo">
    <a href=#><b>MPR</b></a>
  </div>
  <!-- /.login-logo -->
  <div class="card text-center">
      <div class="card-header bg-primary">
        <b>MPR</b> LOG IN
      </div>
    <div class="card-body login-card-body">
    <?php
          $attributes = array('id' => 'form');
          echo form_open("Login/login_MPR", $attributes); 
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
          <input id="pass" type="password" name="pass" class="form-control" placeholder="Password" >
          <div class="input-group-append">
            <div class="input-group-text">
              <span class="fas fa-eye toggle-password" style="cursor:pointer;"></span>
            </div>
          </div>
        </div>
        <div id="div123">
        <p id="captcha-img"><?php echo $image; ?>
        <img src="<?php echo base_url();?>css/dist/img/refresh.gif" alt="Smiley face" height="42" width="42" onclick="captchaChange();" style="cursor:pointer;">
        <input type="hidden" id="salt" name="salt" value="<?php echo $_SESSION['salt']; ?>">
        </div>
          <div class="input-group mb-3">
          <input id="captcha" name="captcha" class="form-control" type="text" placeholder="Captcha" >
          </div>
          <div id="errors" style="color:red; font-weight: bold;"></div>
        <div class="row">
          <div class="col-8">
            <div class="icheck-primary float-left text-yellow">
              <input type="checkbox" id="remember">
              <label for="remember">
                Remember Me
              </label>
            </div>
          </div>
          <!-- /.col -->
          <div class="col-4">
            <button type="submit" name='submit' id='submit' value="Login" class="btn btn-success btn-block" >Sign In</button>
          </div>
          <!-- /.col -->
        </div>
      </form>
    </div>
    <!-- /.login-card-body -->
  </div>
  <div id="link_container">
      <a href="Login/forget" id="forgot" class="text-danger"><b>Forgot your Password?</b></a>
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
        function getSavedValue(v){
            if (!localStorage.getItem(v)) {
                return "";
            }
            return localStorage.getItem(v);
        }
		function hashPassword(){
			var enc2 = sha256(sha256(document.getElementById('pass').value)+document.getElementById('salt').value);
			document.getElementById('pass').value = enc2;
		}
    //changes captcha
function captchaChange(){
  $("#div123").load(location.href + " #div123");
}
var csrf_token='';
//login form submit---------------------------------------------------------------------------------
$("form").on("submit", function (event){
  event.preventDefault();
  hashPassword();
  if(csrf_token==''){
    csrf_token='<?php echo $this->security->get_csrf_hash(); ?>';
  }
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
      //console.log(result);
      var k=JSON.parse(result);
      if (k.csrf_token){
        csrf_token=k.csrf_token;
      }
      if(k.res==0){
        document.getElementById('pass').value = "";
        document.getElementById('captcha').value = "";
        $("#div123").load(location.href + " #div123");
        $('#errors').html(k.data);
      }else{
        window.location.href = k.data;
      }
    }
  });
});
//makes password visible/invisible by eye button------------------------------------------------------------------
$("body").on('click', '.toggle-password', function() {
  $(this).toggleClass("fa-eye fa-eye-slash");
  var input = $("#pass");
  if (input.attr("type") === "password") {
    input.attr("type", "text");
  } else {
    input.attr("type", "password");
  }

});
</script>
</body>
</html>


