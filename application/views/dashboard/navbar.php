<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>Summary | Dashboard</title>
  <!-- Tell the browser to be responsive to screen width -->
  <meta name="viewport" content="width=device-width, initial-scale=1">
  
  <!-- Font Awesome -->
  <link rel="stylesheet" href="http://localhost/NIC/css/plugins/fontawesome-free/css/all.min.css">
  <!-- Ionicons -->
  <link rel="stylesheet" href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">
  <!-- Tempusdominus Bbootstrap 4 -->
  <link rel="stylesheet" href="http://localhost/NIC/css/plugins/tempusdominus-bootstrap-4/css/tempusdominus-bootstrap-4.min.css">
  <!-- iCheck -->
  <link rel="stylesheet" href="http://localhost/NIC/css/plugins/icheck-bootstrap/icheck-bootstrap.min.css">
  <!-- JQVMap -->
  <link rel="stylesheet" href="http://localhost/NIC/css/plugins/jqvmap/jqvmap.min.css">
  <!-- Theme style -->
  <link rel="stylesheet" href="http://localhost/NIC/css/dist/css/adminlte.min.css">
  <!-- overlayScrollbars -->
  <link rel="stylesheet" href="http://localhost/NIC/css/plugins/overlayScrollbars/css/OverlayScrollbars.min.css">
  <!-- Daterange picker -->
  <link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/npm/daterangepicker/daterangepicker.css" />
  <!-- summernote -->
  <link rel="stylesheet" href="http://localhost/NIC/css/plugins/summernote/summernote-bs4.css">
  <!-- Theme style -->
  <link rel="stylesheet" href="http://localhost/NIC/css/dist/css/adminlte.min.css">
  <!-- Google Font: Source Sans Pro -->
  <link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700" rel="stylesheet">
</head>

  <body class="hold-transition sidebar-mini layout-fixed">

    <div class="wrapper">
    <!-- Navbar -->
    <nav class="main-header navbar navbar-expand navbar-white navbar-light">
    <!-- Left navbar links -->
    <ul class="navbar-nav">
      <li class="nav-item">
        <a id="pie-btn" class="nav-link" data-widget="pushmenu" href="#"><i class="fas fa-bars"></i></a>
      </li>
      <li class="nav-item d-none d-sm-inline-block">
        <a href="http://localhost/NIC/index.php/<?php echo $this->cache->get('User_type'.$var)['user_privilege'][0]['link']?>" class="nav-link">Home</a>
      </li>
      <li class="nav-item d-none d-sm-inline-block">
        <a href="#" class="nav-link">Contact</a>
      </li>
      <li class="nav-item d-none d-sm-inline-block">
        <a href="http://localhost/NIC/index.php/Login/logout" class="nav-link">Logout</a>
      </li>
    </ul>

    <ul class="navbar-nav ml-auto">
    <li class="nav-item dropdown">
        <a class="nav-link" data-toggle="dropdown" href="#">
          <i class="far fa-bell" style="font-size:27px;"></i>
          <span class="badge badge-danger navbar-badge"><?php
          $i=0;
          foreach($noti1 as $row){
            $i++;
          }
          echo $i;
          ?></span>
        </a>
        <div class="dropdown-menu dropdown-menu-lg dropdown-menu-right" style="max-height:400px;">
          <span class="dropdown-item dropdown-header"><?php
          $i=0;
          foreach($noti1 as $row){
            $i++;
          }
          echo $i." Messages";
          ?></span>
          <div class="dropdown-divider"></div>
          <a href="#" class="dropdown-item">
            <i class="fas fa-calendar-check text-orange "></i> <?php echo $notification['meeting']['msg'];?>
            <span class="float-right text-muted text-sm"><?php echo $notification['meeting']['val'];?></span>
          </a>
          <?php
            $i=0;
            foreach($noti1 as $row){
              echo "<div class='dropdown-divider'></div>";
              echo "<a href='#' class='dropdown-item' data-toggle='modal' data-target='#modal-".$noti1[$i]['notification_id_pk']."'>";
              echo "<i class='fas fa-envelope text-blue '></i> ".$noti1[$i]['notification_head'];
              echo "<span class='float-right text-muted text-sm'>".$noti1[$i]['audience_id']."</span>";
              //echo "<span class='float-right text-muted text-sm'></span>";
              echo "</a>";
              $i++;
            }
          ?>
          <div class="dropdown-divider"></div>
          <a href="#" class="dropdown-item dropdown-footer">See All Notifications</a>
        </div>
      </li>
    </ul>
  </nav>
  <!-- /.navbar -->
      
<?php
$i=0;
foreach($noti1 as $row){
  echo "<div class='modal fade' id='modal-".$noti1[$i]['notification_id_pk']."'>
              <div class='modal-dialog'>
                <div class='modal-content'>
                  <div class='modal-header bg-warning'>
                    <h4 class='modal-title'><strong>".$noti1[$i]['notification_head']."</strong></h4>
                    <button type='button' class='close' data-dismiss='modal' aria-label='Close'>
                      <span aria-hidden='true'>&times;</span>
                    </button>
                  </div>
                  <div class='modal-body'>
                    <p>".$noti1[$i]['notification_text']."</p>
                  </div>
                  <div class='modal-footer justify-content-between'>
                    <button type='button' class='btn btn-default bg-danger' data-dismiss='modal'>Close</button>
                    <span class='float-right text-muted text-sm'><b>CODE - </b>".$noti1[$i]['audience_id']."</span>
                  </div>
                </div>
              </div>
            </div>";
      $i++;
}
?>  

    <script src="http://localhost/NIC/css/plugins/jquery/jquery.min.js"></script>
    <!-- Bootstrap 4 -->
    <script src="http://localhost/NIC/css/plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
    <!-- date-range-picker -->
    <script type="text/javascript" src="https://cdn.jsdelivr.net/jquery/latest/jquery.min.js"></script>
    <script type="text/javascript" src="https://cdn.jsdelivr.net/momentjs/latest/moment.min.js"></script>
    <script type="text/javascript" src="https://cdn.jsdelivr.net/npm/daterangepicker/daterangepicker.min.js"></script>
    
    <!-- ChartJS -->
    <script src="http://localhost/NIC/css/plugins/chart.js/Chart.min.js"></script>
    <!-- AdminLTE App -->
    <script src="http://localhost/NIC/css/dist/js/adminlte.min.js"></script>
    <!-- AdminLTE for demo purposes -->
    <script src="http://localhost/NIC/css/dist/js/demo.js"></script>
    <!-- page script -->
    
  </body>
</html>