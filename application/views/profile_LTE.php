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
<body class="hold-transition skin-blue sidebar-mini">
<div class="wrapper">
<div class="content-wrapper">
    <section class="content-header">
      <h1>
        User Profile
      </h1>
      <ol class="breadcrumb">
        <li><a href="http://localhost/NIC/index.php/summary"><i class="fa fa-dashboard"></i> Home</a></li>
        <li><a >/</a></li>
        <li><a >Dashboard/</a></li>
        <li class="active">User profile</li>
      </ol>
    </section>

    <!-- Main content -->
    <section class="content">

      <div class="row">
        <div class="col-md-8">

          <!-- Profile Image -->
          <div class="box box-primary">
            <div class="box-body box-profile">
            <?php
            if($image==""||$image==NULL){
              echo "<img src='http://localhost/NIC/css/dist/img/avatar04.png' class='profile-user-img img-responsive img-circle' alt='User Image' style='width:35px; height:35px;'>";
            }
            else{
              echo "<img id ='zoom' src='data: image/jpeg; base64, $image' class='profile-user-img img-responsive img-circle'alt='User profile picture' style='display: block; margin-left: auto;  margin-right: auto; width:200px; height:200px;'>";
            }?><?php
            // if($image==''||$image==NULL){
              //echo "imagenull";
              //echo "<img id='zoom' class='profile-user-img img-responsive img-circle' src='http://localhost/NIC/css/dist/img/avatar04.png' alt='User profile picture' style='display: block; margin-left: auto;  margin-right: auto; width:200px; height:200px;'>";
          //}else{
            //echo "imagefound";
              //echo "<img id='zoom' class='profile-user-img img-responsive img-circle' src='data: image/jpeg; base64, <?php echo $image?><!--' alt='User profile picture' style='display: block; margin-left: auto;  margin-right: auto; width:200px; height:200px;'>";-->
         <?php// }?>
            
             
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>	
<script>
	$(document).ready(function(){
		$("#zoom").hover(function(){
			$(this).animate({width:'500px',height:'500px'});
			$(this).css("opacity","1");
		}, function(){
			$(this).animate({width:'200px',height:'200px'});
			$(this).css("opacity","1");
		});
	});
</script>
              <h3 class="profile-username text-center"><?php echo $f_name." ".$m_name." ".$l_name;?></h3>

              <p class="text-muted text-center"><?php echo $designation;?></p>

              <ul class="list-group list-group-unbordered">
                <li class="list-group-item">
                  <b>Name: </b> <a class="pull-right"><?php echo $f_name." ".$m_name." ".$l_name;?></a>
                </li>
                <li class="list-group-item">
                  <b>Username:</b> <a class="pull-right"><?php echo $username;?></a>
                </li>
                <li class="list-group-item">
                  <b>Designation:</b> <a class="pull-right"><?php echo $designation; ?></a>
                </li>
                <li class="list-group-item">
                  <b>Email:</b> <a class="pull-right"><?php echo $email; ?></a>
                </li>
                <li class="list-group-item">
                  <b>Phone:</b> <a class="pull-right"><?php echo $mobile; ?></a>
                </li>
                <li class="list-group-item">
                  <b>District:</b> <a class="pull-right"><?php echo $district ?></a>
                </li>
              </ul>

              <a href="http://localhost/NIC/index.php/Summary/edit_prof_lte" class="btn btn-primary btn-block" ><b>Edit Profile</b></a>
            </div>

            <label><a href="http://localhost/NIC/index.php/summary"><i class="fa fa-dashboard"></i>Click to Change your Password </a></label>
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
<p></p>
<p></p>
<p></p>
<!-- ./wrapper -->

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
</body>
</html>
