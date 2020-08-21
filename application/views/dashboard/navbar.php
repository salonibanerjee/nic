<!DOCTYPE html>
<html > 
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <?php
    $varx=$this->cache->get('User_type'.$var)['user_privilege'];
    $var1=current_url();
    $m=0;
    foreach($varx as $x){
      $var2 = base_url().''.$x['link'];
      if($var1 == $var2 ){
        echo "<title>".$x['page_name']."</title>";
      }else{
        $m=1;
      }
    }
    if($m==1){
      if(strpos($var1,'load')!=FALSE){
        if(strpos($var1,'Get_table')!=FALSE)
          echo "<title>Input Data</title>";
        if(strpos($var1,'View_data')!=FALSE)
        echo "<title>View Data</title>";
      }elseif(strpos($var1,'profile')!=FALSE){
        echo "<title>Profile</title>";
      }elseif(strpos($var1,'password')!=FALSE){
        echo "<title>Password Change</title>";
      }elseif(strpos($var1,'Super_Admin')!=FALSE){
        echo "<title>Super Admin</title>";
      }else
        echo "<title>".$this->cache->get('User_type'.$var)['user_privilege'][0]['page_name']."</title>";
    }
  ?>
  <!-- Tell the browser to be responsive to screen width -->
  <meta name="viewport" content="width=device-width, initial-scale=1">
  
  <!-- Font Awesome -->
  <link rel="stylesheet" href="<?php echo base_url();?>css/plugins/fontawesome-free/css/all.min.css">
  <!-- Ionicons -->
  <link rel="stylesheet" href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">
  <!-- Tempusdominus Bbootstrap 4 -->
  <link rel="stylesheet" href="<?php echo base_url();?>css/plugins/tempusdominus-bootstrap-4/css/tempusdominus-bootstrap-4.min.css">
  <!-- iCheck -->
  <link rel="stylesheet" href="<?php echo base_url();?>css/plugins/icheck-bootstrap/icheck-bootstrap.min.css">
  <!-- JQVMap -->
  <link rel="stylesheet" href="<?php echo base_url();?>css/plugins/jqvmap/jqvmap.min.css">
  <!-- Theme style -->
  <link rel="stylesheet" href="<?php echo base_url();?>css/dist/css/adminlte.min.css">
  <!-- overlayScrollbars -->
  <link rel="stylesheet" href="<?php echo base_url();?>css/plugins/overlayScrollbars/css/OverlayScrollbars.min.css">
  <!-- Daterange picker -->
  <link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/npm/daterangepicker/daterangepicker.css" />
  <!-- summernote -->
  <link rel="stylesheet" href="<?php echo base_url();?>css/plugins/summernote/summernote-bs4.css">
  <!-- Theme style -->
  <link rel="stylesheet" href="<?php echo base_url();?>css/dist/css/adminlte.min.css">
  <!-- Google Font: Source Sans Pro -->
  <link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700" rel="stylesheet">
</head>

  <body class="hold-transition sidebar-mini layout-fixed" onload="start()">

    <div class="wrapper">
    <!-- Navbar -->
    <nav class="main-header navbar navbar-expand navbar-white navbar-light">
    <!-- Left navbar links -->
    <ul class="navbar-nav">
      <li class="nav-item">
        <a id="pie-btn" class="nav-link" data-widget="pushmenu" href="#"><i class="fas fa-bars"></i></a>
      </li>
      <li class="nav-item d-none d-sm-inline-block">
        <a href="<?php echo base_url();?><?php echo $this->cache->get('User_type'.$var)['user_privilege'][0]['link']?>" class="nav-link">Home</a>
      </li>
      <li class="nav-item d-none d-sm-inline-block">
        <a href="<?php echo base_url();?>contact" class="nav-link">Contact</a>
      </li>
      <li class="nav-item d-none d-sm-inline-block">
        <a href="<?php echo base_url();?>Login/logout" class="nav-link">Logout</a>
      </li>
    </ul>
    

    <ul class="navbar-nav ml-auto">
    <li class="nav-item">
    <div id="alertsfrommydb">
    </div>
    </li>

    <li class="nav-item">
      <a class="nav-link" href="<?php echo base_url();?><?php echo $this->cache->get('User_type'.$var)['user_privilege'][0]['link']?>">
        <i class="fas fa-home" style="font-size:27px;"></i>
      </a>
    </li>

    <li class="nav-item" >
        <a class="nav-link" href="<?php echo base_url();?>Summary/sitemap">
          <i class="fas fa-sitemap" style="font-size:27px;"></i>
        </a>
    </li>
    <div id="refresh1">
    <li class="nav-item dropdown">
        <a class="nav-link" data-toggle="dropdown" href="#">
          <i class="far fa-bell" style="font-size:27px;"></i>
          <span class="badge badge-danger navbar-badge w3-badge" style="font-size:12px; border-radius:50%; font-weight:bold;"><?php
          $i=0;
          foreach($noti1 as $row){
            $i++;
          }
          echo $i;
          ?></span>
        </a>
        <div class="dropdown-menu dropdown-menu-lg dropdown-menu-right" style="max-height:500px;">
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
          <div id="noti" style="overflow:scroll; height:350px;">
          <?php
            $i=0;
            foreach($noti1 as $row){
              echo "<div class='dropdown-divider'></div>";
              echo "<a href='#' class='dropdown-item' data-toggle='modal' data-target='#modal-".$noti1[$i]['notification_id_pk']."'>";
              echo "<i class='fas fa-envelope text-blue '></i> ".$noti1[$i]['notification_head'];
              echo "<span class='float-right text-muted text-sm'>".$noti1[$i]['audience_id']."</span>";
              echo "</a>";
              $i++;
            }
          ?>
          </div>
          <div class="dropdown-divider"></div>
          <a href="#" class="dropdown-item dropdown-footer">See All Notifications</a>
        </div>
      </li>
      </div>

      <li class="nav-item dropdown" >
        <a class="nav-link" data-toggle="dropdown" href="#">
          <i class="fas fa-cog" style="font-size:27px;"></i>
        </a>
        <div class="dropdown-menu dropdown-menu-lg dropdown-menu-right " >
        <a href='<?php echo base_url();?>contact' class='dropdown-item'>
          <i class="fas fa-phone text-green "></i> Contact
        </a>
        <div class="dropdown-divider"></div>
        <a href='<?php echo base_url();?>Login/logout' class='dropdown-item'>
          <i class="fas fa-power-off text-danger "></i> Logout
        </a>
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

    <script src="<?php echo base_url();?>css/plugins/jquery/jquery.min.js"></script>
    <!-- Bootstrap 4 -->
    <script src="<?php echo base_url();?>css/plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
    <!-- date-range-picker -->
    <script type="text/javascript" src="https://cdn.jsdelivr.net/jquery/latest/jquery.min.js"></script>
    <script type="text/javascript" src="https://cdn.jsdelivr.net/momentjs/latest/moment.min.js"></script>
    <script type="text/javascript" src="https://cdn.jsdelivr.net/npm/daterangepicker/daterangepicker.min.js"></script>
    
    <!-- ChartJS -->
    <script src="<?php echo base_url();?>css/plugins/chart.js/Chart.min.js"></script>
    <!-- AdminLTE App -->
    <script src="<?php echo base_url();?>css/dist/js/adminlte.min.js"></script>
    <!-- AdminLTE for demo purposes -->
    <script src="<?php echo base_url();?>css/dist/js/demo.js"></script>
    <!-- page script -->
    
    <script>
	$(document).ready(function(){
		$("#zoom").hover(function(){
			$(this).animate({width:'700px',height:'700px'});
			$(this).css("opacity","1");
		}, function(){
			$(this).animate({width:'150px',height:'150px'});
			$(this).css("opacity","1");
		});
  });
</script>

<!--for realtime notifs fetching-->
<!-- for toastr-->
<link href="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/toastr.min.css" rel="stylesheet"/>  
<script src="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/toastr.min.js"></script>

<!-- for sweetalerts-->
<link href="https://cdn.jsdelivr.net/npm/@sweetalert2/theme-dark@3/dark.css" rel="stylesheet">  
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@9/dist/sweetalert2.min.js"></script>


<script type='text/javascript'>
function sendRequest(){ //requests for new notifs every 2 seconds
	  
	    setInterval(function(){        
			  $.ajax({
          url: "<?php echo base_url();?>Summary/fetch_notifs",
          type: 'post',
          success: function(result){
				    if(result == "Found"){
              //toastr.remove() //without animation
              toastr.clear() //with animation
              toastr.options={"timeOut":"10000","positionClass": "toast-top-center"}             
              toastr.warning('New Notification');              
              $("#refresh1").load(location.href+" #refresh1>*","");
				    }
				  } 
			  });
		  },2000);
}

function send_nodal(){ //requests for new notifs every 10 seconds
  setInterval(function(){
      $.ajax({
        url: "<?php echo base_url();?>Summary/nodal_alert",
        type: 'post',
        success: function(result){
            if(result=="found")
              toastr.info("Please finish the remaining Nodal Checks before the next meeting.");
          }
      });
    },10000);
}

function start(){
    //sendRequest();
    send_nodal();
}

</script>
  </body>
</html>

