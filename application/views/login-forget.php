<!DOCTYPE html>
<html>
  <!--Forget password view page-->
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
    <a href=#><b>M</b>PR</a>
  </div>
  <!-- /.login-logo -->
  <div class="card">
    <div class="card-body login-card-body">
      <p class="login-box-msg">Email for Change Password</p>

      <form  method="POST" method="post">
        <div class="input-group mb-3">
          <input id="email" type="text" name="email" class="form-control" placeholder="Email" onkeyup='saveValue(this);'>
          <div class="input-group-append">
            <div class="input-group-text">
              <span class="fas fa-envelope"></span>
            </div>
          </div>
        </div>
        <div id="errors" style="color:red;"></div>
        <div class="row">
          <!-- /.col -->
          <div class="col-12">
            <button type="submit" value="Login" name="sub" id="sub" class="btn btn-primary btn-block" >Send</button>
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
function getSavedValue(v){
  if (!localStorage.getItem(v)){
    return "";
  }
  return localStorage.getItem(v);
}
//forget password form submit-------------------------------------------------------------------------------
$("form").on("submit", function (event){
  event.preventDefault();
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
      if(result[1]=='p'){
        var pos=result.indexOf('<!DOCTYPE html>');
        $('#errors').html(result.slice(0,pos));
      }else{
        if(result[0]=='*'){
          alert("Email is not sent...");
          window.location.href = result.slice(1);
        }else{
          window.location.href = result;
        }
      }
    }
  });
});
</script>