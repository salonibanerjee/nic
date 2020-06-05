<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>MPR | Log in</title>
  <!-- Tell the browser to be responsive to screen width -->
  <meta name="viewport" content="width=device-width, initial-scale=1">
	<!--	Encryption-->
	<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/crypto-js/3.1.2/rollups/aes.js"></script>
	<!--	C:\xampp\htdocs\nic1\js\JavaScript_MD5\js-->
	<script type='text/javascript' src="<?php echo base_url();?>js/js-sha256-master/build/sha256.min.js"></script>
	
</head>
<div class="content-wrapper">
  <!-- Content Header (Page header) -->
  <section class="content-header">
    <div class="container-fluid">
      <div class="row mb-2">
        <div class="col-sm-6">
          <h1>CHANGE YOUR <b>PASSWORD</b></h1>
        </div>
        <div class="col-sm-6">
          <ol class="breadcrumb float-sm-right">
            <li class="breadcrumb-item"><a href="http://localhost/NIC/index.php/Summary/profile">Profile</a></li>
            <li class="breadcrumb-item active">Change Password</li>
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
      <p class="login-box-msg"><strong>CHANGE PASSWORD</strong></p>

      <form method="POST" action="" id="form">
        <div class="input-group mb-3">
          <input name="pass0" id="pass0" type="password" class="form-control" placeholder="Old Password" >
          <div class="input-group-append">
            <div class="input-group-text">
              <span class="fas fa-lock"></span>
            </div>
          </div>
        </div>
        <div class="input-group mb-3">
          <input name="pass1" id="pass1" type="password" class="form-control" placeholder="New Password" >
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
          <div class="col-12">
            <button type="submit" id="submit" name="submit" value="Login" class="btn btn-primary btn-block" >Submit</button>
          </div>
          <!-- /.col -->
        </div>
      </form>
    </div>
    <!-- /.login-card-body -->
  </div>
</div>
</section>
</div>
<!-- /.login-box -->

<!-- jQuery -->
<script src="../../plugins/jquery/jquery.min.js"></script>
<!-- Bootstrap 4 -->
<script src="../../plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
<!-- AdminLTE App -->
<script src="../../dist/js/adminlte.min.js"></script>

<script type="text/javascript">
  function hashPassword(){
		var enc2 = sha256(document.getElementById('pass0').value);
		document.getElementById('pass0').value = enc2;
    enc2 = sha256(document.getElementById('pass1').value);
		document.getElementById('pass1').value = enc2;
    enc2 = sha256(document.getElementById('pass2').value);
		document.getElementById('pass2').value = enc2;
	}
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
        var pos=result.indexOf('<!DOCTYPE html>');
        if(result[1]=='p'){
          document.getElementById('pass0').value = "";
          document.getElementById('pass1').value = "";
          document.getElementById('pass2').value = "";
          $('#errors').html(result.slice(0,pos));
        }else{
          $('#errors').html("");
          //alert(result.slice(0,pos));
          window.location.href = result.slice(0,pos);
        }
      }
    });
  });
</script>
</body>
</html>


