<aside class="main-sidebar sidebar-dark-primary elevation-4">
    <!-- Brand Logo -->
    <a href="index3.html" class="brand-link bg-primary">
      <img src="<?php echo base_url();?>logo/wb_logo.png" alt="Logo" class="brand-image">
      <span class="brand-text font-weight-light"><b>MPR</b></span>
    </a>
    <!-- Sidebar -->
    <div class="sidebar">
      <!-- Sidebar Menu -->
      <div class="user-panel mt-3 pb-3 mb-3 d-flex">
        <div class="image">
          <?php if($image==""||$image==NULL){
            echo "<img src='http://localhost/NIC/css/dist/img/avatar04.png' class='img-circle elevation-2' alt='User Image' style='width:35px; height:35px;'>";
          }else{
            echo "<img src='data: image/jpeg; base64, $image' class='img-circle elevation-2' alt='User Image' style='width:35px; height:35px;'>";
          }?>
        </div>
        <div style="margin-left:10px; margin-top:-7px;">
          <a href="http://localhost/NIC/index.php/Summary/profile_LTE" class="d-block"><strong><?php echo $f_name." ".$l_name?></strong></a>
          <a href="http://localhost/NIC/index.php/Summary/profile_LTE" class="d-block"><small><?php echo $designation ?></small></a>
          <?php if($update_prof==1){
          echo "<a href='http://localhost/NIC/index.php/Summary/edit_prof_lte' style='color:#E57777;'><i class='fa fa-circle text-danger fa-xs ' style='margin-right:3px;'></i><small><strong>COMPLETE YOUR PROFILE</strong></small></a>";
          }?>
          </div>
        
      </div>
      <nav class="mt-2">
        <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu" data-accordion="false">
          <!-- Add icons to the links using the .nav-icon class
               with font-awesome or any other icon font library -->
          <li class="nav-item">
            <a href="http://localhost/NIC/index.php/summary" class="nav-link">
              <i class="nav-icon fas fa-circle"></i>
              <p>
                Dashboard
              </p>
            </a>
          </li>
          <li class="nav-item">
            <a href="http://localhost/NIC/index.php/Summary/profile_LTE" class="nav-link">
              <i class="nav-icon fas fa-circle"></i>
              <p>
                Profile
              </p>
            </a>
          </li>
          <li class="nav-item">
            <a href="http://localhost/NIC/index.php/get_table/load/KCC" class="nav-link">
              <i class="nav-icon fas fa-circle"></i>
              <p>
                Input Data
              </p>
            </a>
          </li>
          <li class="nav-item">
            <a href="http://localhost/NIC/index.php/Login/logout" class="nav-link">
              <i class="nav-icon fas fa-circle"></i>
              <p>
                Logout
              </p>
            </a>
          </li>
        </ul>
      </nav>
      <!-- /.sidebar-menu -->
    </div>
    <!-- /.sidebar -->
  </aside>