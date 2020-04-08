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
        Edit Profile <h2><?php echo ""."$new "?> </h2>
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
              <img id="blah" class="profile-user-img img-responsive img-circle"  src='data: image/jpeg; base64, <?php echo $image?>' alt="Upload a Profile Picture" style="display: block; margin-left: auto;  margin-right: auto; width:200px; height:200px;">
              <input type="file" name="file" id ="file" class="inputfile"  accept=".png, .jpg, .jpeg, .JFIF" /> <label for="file">CHOOSE IMAGE ⮭</label>
              
              <style>
.inputfile {
	width: 0.1px; height: 0.1px; opacity: 0; overflow: hidden; position: absolute; z-index: -1;
}
.inputfile + label {
    display: block; margin-left: auto;  margin-right: auto; width: 175px; background:#3E72D6; border-radius: 25px;
    font-size: 1.25em; color: white; padding-left:8px; padding-right:8px; text-align:center;
}
.inputfile:focus + label,
.inputfile + label:hover {
    background-color: green;
}
.inputfile + label {
	cursor: pointer; /* "hand" cursor */
}
</style>

              <h3 class="profile-username text-center"><?php echo $f_name." ".$m_name." ".$l_name;?></h3>

              <p class="text-muted text-center"><?php echo $designation;?></p>
              <div class="card-body">
                    <div class="form-group"><label>Username: <?php echo $username ?></label>
                        
                    </div>
                    <div class="form-group"><label>First Name:</label>
                        <input type="text" class="form-control" name="first" id="first"  value="<?php if(form_error('first')){echo set_value('first');}else{echo $f_name;}?>">
                        <p class="error invalid-feedback">
                        <small>
                        <?php echo form_error('first'); ?>
                        </small>
                        </p>
                    </div>
                    <div class="form-group"><label>Middle Name:</label>
                        <input type="text" class="form-control" name="mid" id="mid"  value="<?php if(form_error('mid')){echo set_value('mid');}else{echo $m_name;}?>">
                        <p class="error invalid-feedback">
                        <small>
                        <?php echo form_error('mid'); ?>
                        </small>
                        </p>
                    </div>
                    <div class="form-group"><label>Last Name:</label>
                        <input type="text" class="form-control" name="last" id = "last" value="<?php if(form_error('last')){echo set_value('last');}else{echo $l_name;}?>">
                        <p class="error invalid-feedback">
                        <small>
                        <?php echo form_error('last'); ?>
                        </small>
                        </p>
                    </div>
                    <div class="form-group"><label>Phone:</label>
                        <input type="text" class="form-control" name="mob" id="mob" value="<?php if(form_error('mob')){echo set_value('mob');}else{echo $mobile;}?>">
                        <p class="error invalid-feedback">
                        <small>
                        <?php echo form_error('mob'); ?>
                        </small>
                        </p>
                    </div>
                    <div class="form-group"><label>Email:</label>
                        <input type="text" class="form-control" name="email" id = "email"  value="<?php if(form_error('email')){echo set_value('email');}else{echo $email;}?>">
                        <p class="error invalid-feedback">
                        <small>
                        <?php echo form_error('email'); ?>
                        </small>
                        </p>
                    </div>
                    <div class="form-group"><label>Designation</label>
                        <input type="text" class="form-control" name="desig" id = "desig" value="<?php if(form_error('desig')){echo set_value('desig');}else{echo $designation;}?>">
                        <p class="error invalid-feedback">
                        <small>
                        <?php echo form_error('desig'); ?>
                        </small>
                        </p>
                    </div>
                    <div class="form-group">
                        <label>District</label>
                        <input type="text" class="form-control" name="dist" id = "dist" value="<?php if(form_error('dist')){echo set_value('dist');}else{echo $district;}?>">
                        <p class="error invalid-feedback">
                        <small>
                        <?php echo form_error('dist'); ?>
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
        document.getElementById("file").value = getSavedValue("file");
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
