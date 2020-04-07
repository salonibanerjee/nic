<html>
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>AdminLTE 2 | User Profile</title>
  <!-- Tell the browser to be responsive to screen width -->
  <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
  <!-- Bootstrap 3.3.7 -->
  <link rel="stylesheet" href="../../bower_components/bootstrap/dist/css/bootstrap.min.css">
  <!-- Font Awesome -->
  <link rel="stylesheet" href="../../bower_components/font-awesome/css/font-awesome.min.css">
  <!-- Ionicons -->
  <link rel="stylesheet" href="../../bower_components/Ionicons/css/ionicons.min.css">
  <!-- Theme style -->
  <link rel="stylesheet" href="../../dist/css/AdminLTE.min.css">
  <!-- AdminLTE Skins. Choose a skin from the css/skins
       folder instead of downloading all of them to reduce the load. -->
  <link rel="stylesheet" href="../../dist/css/skins/_all-skins.min.css">

  <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
  <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
  <!--[if lt IE 9]>
  <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
  <![endif]-->

  <!-- Google Font -->
  <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700,300italic,400italic,600italic">
</head>
<?php
        echo form_open_multipart("");
    ?>
    <?php
      $this->load->model('profile_model');
      ?>
<body class="hold-transition skin-blue sidebar-mini">
<div class="wrapper">
<div class="content-wrapper">
    <section class="content-header">
      <h1>
        Edit Profile
      </h1>
      <ol class="breadcrumb">
        <li><a href="http://localhost/NIC/index.php/summary"><i class="fa fa-dashboard"></i> Home</a></li>
        <li><a >/</a></li>
        <li><a >Dashboard/</a></li>
        <li class="active">Edit profile</li>
      </ol>
    </section>

    <!-- Main content -->
    <section class="content">

      <div class="row">
        <div class="col-md-8">

          <!-- Profile Image -->
          <div class="box box-primary">
            <div class="box-body box-profile">
        
              <img id="blah" class="profile-user-img img-responsive img-circle" src='data: image/jpeg; base64, <?php echo $image?>' alt="User profile picture" style="display: block; margin-left: auto;  margin-right: auto; width:200px; height:200px;">
              <h3>Upload Photo...</h3>
         
              <input type="file" name="file" id ="file" accept=".png, .jpg, .jpeg, .JFIF" />



              <h3 class="profile-username text-center"><?php echo $f_name." ".$l_name;?></h3>

              <p class="text-muted text-center"><?php echo $designation;?></p>
              <div class="card-body">
                    <div class="form-group"><label>Username: <?php echo $username ?></label>
                        
                    </div>
                    <div class="form-group"><label>First Name:</label>
                        <input type="text" class="form-control" name="first" id="first" onkeyup='saveValue(this);' value="<?php echo $f_name;?>">
                    </div>
                    <div class="form-group"><label>Last Name:</label>
                        <input type="text" class="form-control" name="last" id = "last" value="<?php echo $l_name;?>">
                        <p class="error invalid-feedback">
                        <small>
                        </small>
                        </p>
                    </div>
                    <div class="form-group"><label>Phone:</label>
                        <input type="text" class="form-control" name="mob" id="mob" value="<?php echo $mobile;?>">
                        <p class="error invalid-feedback">
                        <small>
                        </small>
                        </p>
                    </div>
                    <div class="form-group"><label>Email:</label>
                        <input type="text" class="form-control" name="email" id = "email"  value="<?php echo $email;?>">
                        <p class="error invalid-feedback">
                        <small>
                        </small>
                        </p>
                    </div>
                    <div class="form-group"><label>Designation</label>
                        <input type="text" class="form-control" name="desig" id = "desig" value="<?php echo $designation;?>">
                        <p class="error invalid-feedback">
                        <small>
                        </small>
                        </p>
                    </div>
                    <div class="form-group">
                        <label>District</label>
                        <input type="text" class="form-control" name="dist" id = "dist" value="<?php echo $district;?>">
                        <p class="error invalid-feedback">
                        <small>
                        </small>
                        </p>
                    </div>
                    
                </div>             
              <input class="btn btn-primary btn-block" type = "submit" name = "sub1" id= "sub1" ></input>

             <!-- <a href="http://localhost/NIC/index.php/Summary/profile" class="btn btn-primary btn-block" ><b></b></a> -->
            </div>
            <!-- /.box-body -->
          </div>
          <!-- /.box -->

          <!-- About Me Box -->
          <!-- /.box -->
        </div>
        <!-- /.col -->
      </div>
      <!-- /.tab-pane -->
    </section>
  </div>
</div>
<!-- ./wrapper -->
<script>
function readURL(input) {
        if (input.files && input.files[0]) {
            var reader = new FileReader();
            
            reader.onload = function (e) {
                $('#blah').attr('src', e.target.result);
            }
            
            reader.readAsDataURL(input.files[0]);
        }
    }
    
    $("#file").change(function(){
        readURL(this);
    });
</script>
<!-- jQuery 3 -->
<script src="../../bower_components/jquery/dist/jquery.min.js"></script>
<!-- Bootstrap 3.3.7 -->
<script src="../../bower_components/bootstrap/dist/js/bootstrap.min.js"></script>
<!-- FastClick -->
<script src="../../bower_components/fastclick/lib/fastclick.js"></script>
<!-- AdminLTE App -->
<script src="../../dist/js/adminlte.min.js"></script>
<!-- AdminLTE for demo purposes -->
<script src="../../dist/js/demo.js"></script>
<script type="text/javascript">
        document.getElementById("first").value = getSavedValue("first");
        function saveValue(e){
            var id = e.id;  
            var val = e.value;
            localStorage.setItem(id, val);
        }
        function getSavedValue  (v){
            if (!localStorage.getItem(v)) {
                return val;
            }
            return localStorage.getItem(v);
        }
</script>
</body>
</html>
