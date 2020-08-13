
<link rel="stylesheet" href="<?php echo base_url();?>css/sitemap.css"> 

<div class="content-wrapper">
  <!-- Content Header (Page header) -->
  <section class="content-header">
    <div class="container-fluid">
      <div class="row mb-2">
        <div class="col-sm-6">
          <h1><b>SITEMAP</b></h1>
        </div>
        <div class="col-sm-6">
          <ol class="breadcrumb float-sm-right">
            <li class="breadcrumb-item"><a href="<?php echo base_url();?><?php echo $this->cache->get('User_type'.$var)['user_privilege'][0]['link']?>">Home</a></li>
            <li class="breadcrumb-item active">Sitemap</li>
          </ol>
        </div>
      </div>
    </div><!-- /.container-fluid -->
  </section>
  <section class="content">
    <div class="container-fluid">
        <div class="row">
            <div class="col-md-5">
                <div class="card">
                  <!-- /.card-header -->
                  <div class="card-body" >

                        <div class="tree ">
                        <?php $scheme_hier=$this->cache->get('scheme_hier_'.$this->session->userdata('dept'));?>
                        <ul>

                        <li><span><a style="color:#000; text-decoration:none;" data-toggle="collapse" href="#Web" aria-expanded="true" aria-controls="Web"><i class="collapsed"><i class="fas fa-folder"></i></i>
                        <i class="expanded"><i class="far fa-folder-open"></i></i> Login</a></span>
                        <div id="Web" class="collapse show">
                        <ul>
                        <li><span><a style="color:#000; text-decoration:none;" data-toggle="collapse" href="#page1" aria-expanded="false" aria-controls="page1"><i class="collapsed"><i class="fas fa-tv"></i></i>
                        <i class="expanded"><i class="far fa-folder-open"></i></i> <a class="und" href="<?php echo base_url();?>Summary">Dashboard</a>&nbsp;&nbsp;<a data-toggle="collapse" class="mx-auto" href="#page1" aria-expanded="false" aria-controls="page1"><i class="fas fa-plus-circle"></i></a></a></span>
                        <ul><div id="page1" class="collapse">
                            <li><span><a style="color:#000; text-decoration:none;" data-toggle="collapse" href="#page23" aria-expanded="false" aria-controls="page23"><i class="collapsed"><i class="fas fa-user"></i></i>
                                <i class="expanded"><i class="far fa-folder-open"></i></i> <a class="und" href="<?php echo base_url();?>Summary/profile">Profile</a>&nbsp;&nbsp;<a data-toggle="collapse" class="mx-auto" href="#page23" aria-expanded="false" aria-controls="page23"><i class="fas fa-plus-circle"></i></a></a></span>
                                <ul><div id="page23" class="collapse">
                                    <li><span><i class="fas fa-user-edit"></i><a class="und" href="<?php echo base_url();?>Summary/edit_profile"> Edit Profile</a></span></li>
                                    <li><span><i class="fa fa-key"></i><a class="und" href="<?php echo base_url();?>Summary/profile/password_change_within"> Change Password</a></span></li></div>
                                </ul>
                            </li>
                            <li><span><i class="fas fa-edit"></i><a class="und" href="<?php echo base_url();?>Get_table/load/<?php echo $scheme_hier[0]['scheme_link']; ?>"> Input Data</a></span></li>
                            <li><span><i class="fas fa-list-alt"></i><a class="und" href="<?php echo base_url();?>View_data/load/<?php echo $scheme_hier[0]['scheme_link']; ?>"> View Data</a></span></li>
                            <li><span><i class="fas fa-check"></i><a class="und" href="<?php echo base_url();?>Nodal_check"> Nodal Check</a></span></li>
                            <li><span><a style="color:#000; text-decoration:none;" data-toggle="collapse" href="#page22" aria-expanded="false" aria-controls="page22"><i class="collapsed"><i class="fas fa-user-secret"></i></i>
                                <i class="expanded"><i class="far fa-folder-open"></i></i> <a class="und" href="<?php echo base_url();?>Super_Admin">Super Admin</a>&nbsp;&nbsp;<a data-toggle="collapse" class="mx-auto" href="#page22" aria-expanded="false" aria-controls="page22"><i class="fas fa-plus-circle"></i></a></a></span>
                                <ul><div id="page22" class="collapse">
                                    <li><span><i class="ion ion-person-add"></i><a class="und" href="<?php echo base_url();?>Super_Admin/signup"> User Registration</a></span></li>
                                    <li><span><i class="fa fa-user-times"></i><a class="und" href="<?php echo base_url();?>Super_Admin/fetch_login"> Active Users</a></span></li>
                                    <li><span><i class="fa fa-users"></i><a class="und" href="<?php echo base_url();?>Super_Admin/fetch_user_desig_type"> Active User Type</a></span></li>
                                    <li><span><i class="fa fa-user-secret"></i><a class="und" href="<?php echo base_url();?>Super_Admin/fetch_user_privilege"> Active User Privileges</a></span></li>
                                    <li><span><i class="far fa-file"></i><a class="und" href="<?php echo base_url();?>Super_Admin/page_view"> Active Pages</a></span></li>
                                    <li><span><i class="fas fa-th-list"></i><a class="und" href="<?php echo base_url();?>Super_Admin/seek_record"> Seek Record</a></span></li>
                                    <li><span><i class="fa  fa-history"></i><a class="und" href="<?php echo base_url();?>Super_Admin/audit_log"> Audit Logs</a></span></li>
                                    <li><span><i class="fa  fa-calendar"></i><a class="und" href="<?php echo base_url();?>Super_Admin/dba_fyear_range"> DBA Financial Year Range</a></span></li>
                                    <li><span><i class="fa fa-comments"></i><a class="und" href="<?php echo base_url();?>Super_Admin/issues"> Feedback Box</a></span></li>
                                    </div>
                                </ul>
                            </li>
                            <li><span><i class="fas fa-calendar-check"></i><a class="und" href="<?php echo base_url();?>Super_Admin/meeting_schedule"> Meeting Schedule</a></span></li>
                            <li><span><i class="fas fa-bell"></i><a class="und" href="<?php echo base_url();?>Super_Admin/notification"> Notification</a></span></li>
                            <li><span><i class="fas fa-rupee-sign"></i><a class="und" href="<?php echo base_url();?>fund"> Funds Allocation</a></span></li>
                            <li><span><i class="fas fa-sitemap"></i><a class="und" href="<?php echo base_url();?>Summary/sitemap"> Sitemap</a></span></li>
                            <li><span><i class="fas fa-phone"></i><a class="und" href="<?php echo base_url();?>contact"> Contact Us</a></span></li>
                            <li><span><i class="fas fa-power-off"></i> Logout</span></li>
                        </div>
                        </ul>
                        </li>

                        <li><span><i class="fas fa-lock"></i> Forgot Password</span></li>
                        <li><span><i class="fa fa-key"></i> Change Password for First Time</span></li>
                        <li><span><i class="fas fa-power-off"></i> Logout</span></li>



                        </ul>
                        </div>
                        </li>
                        </ul>

                        </div>
                    
                    </div>
                </div>




            </div>

            <div class="col-md-7">
                <div class="card">
                  <!-- /.card-header -->
                    <div class="card-body img-magnifier-container" >
                        <a>
                            <img class="cover" width="100%" id="mag" class="pstrart" id="pstr" src="<?php echo base_url();?>css/dist/img/site.png">
                        </a>
                    </div>
                </div>
            </div>
        </div>

    </div>
</section>


<script>
    // magnify hover
function magnify(imgID, zoom) {
  var img, glass, w, h, bw;
  img = document.getElementById(imgID);
  /*create magnifier glass:*/
  glass = document.createElement("DIV");
  glass.setAttribute("class", "img-magnifier-glass");
  /*insert magnifier glass:*/
  img.parentElement.insertBefore(glass, img);
  /*set background properties for the magnifier glass:*/
  glass.style.backgroundImage = "url('" + img.src + "')";
  glass.style.backgroundRepeat = "no-repeat";
  glass.style.backgroundSize = (img.width * zoom) + "px " + (img.height * zoom) + "px";
  bw = 3;
  w = glass.offsetWidth / 2;
  h = glass.offsetHeight / 2;
  /*execute a function when someone moves the magnifier glass over the image:*/
  glass.addEventListener("mousemove", moveMagnifier);
  img.addEventListener("mousemove", moveMagnifier);
  /*and also for touch screens:*/
  glass.addEventListener("touchmove", moveMagnifier);
  img.addEventListener("touchmove", moveMagnifier);
  function moveMagnifier(e) {
    var pos, x, y;
    /*prevent any other actions that may occur when moving over the image*/
    e.preventDefault();
    /*get the cursor's x and y positions:*/
    pos = getCursorPos(e);
    x = pos.x;
    y = pos.y;
    /*prevent the magnifier glass from being positioned outside the image:*/
    if (x > img.width - (w / zoom)) {x = img.width - (w / zoom);}
    if (x < w / zoom) {x = w / zoom;}
    if (y > img.height - (h / zoom)) {y = img.height - (h / zoom);}
    if (y < h / zoom) {y = h / zoom;}
    /*set the position of the magnifier glass:*/
    glass.style.left = (x - w) + "px";
    glass.style.top = (y - h) + "px";
    /*display what the magnifier glass "sees":*/
    glass.style.backgroundPosition = "-" + ((x * zoom) - w + bw) + "px -" + ((y * zoom) - h + bw) + "px";
  }
  function getCursorPos(e) {
    var a, x = 0, y = 0;
    e = e || window.event;
    /*get the x and y positions of the image:*/
    a = img.getBoundingClientRect();
    /*calculate the cursor's x and y coordinates, relative to the image:*/
    x = e.pageX - a.left;
    y = e.pageY - a.top;
    /*consider any page scrolling:*/
    x = x - window.pageXOffset;
    y = y - window.pageYOffset;
    return {x : x, y : y};
  }
}
/* Initiate Magnify Function
with the id of the image, and the strength of the magnifier glass:*/
magnify("mag",2);
</script>