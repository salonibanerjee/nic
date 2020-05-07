<div class="content-wrapper">
<h2> </b>SUPER ADMIN</b></h2>

<section class="content">
      <div class="container-fluid"> 
        <!-- Small boxes (Stat box) -->
        <div class="row">
          <div class="col-lg-3 col-6">
            <!-- small box -->
            <div class="small-box bg-yellow">
              <div class="inner">
                <h3><?php echo $login_count; ?></h3>

                <p>User Registrations</p>
              </div>
              <div class="icon">
                <i class="ion ion-person-add"></i>
              </div>
              <a href="<?php echo base_url(); ?>index.php/Super_Admin/signup" class="small-box-footer">Create New User <i class="fas fa-arrow-circle-right"></i></a>
            </div>
          </div>

          <div class="col-lg-3 col-6">
            <!-- small box -->
            <div class="small-box bg-danger">
              <div class="inner">
                <h3><?php echo $active_user_count; ?></h3>

                <p>ACTIVE Users</p>
              </div>
              <div class="icon">
                <i class="fa fa-user-times"></i>
              </div>
              <a href="<?php echo base_url(); ?>index.php/Super_Admin/fetch_login" class="small-box-footer">Turn ON/OFF <i class="fas fa-arrow-circle-right"></i></a>
            </div>
            </div>

          <div class="col-lg-3 col-6">
            <!-- small box -->
            <div class="small-box bg-blue">
              <div class="inner">
                <h3><?php echo $active_user_type_count; ?></h3>

                <p>User Types Active</p>
              </div>
              <div class="icon">
                <i class="fa fa-users"></i>
              </div>
              <a href="<?php echo base_url(); ?>index.php/Super_Admin/fetch_user_desig_type" class="small-box-footer">Turn ON/OFF <i class="fas fa-arrow-circle-right"></i></a>
            </div>
          </div>

          <div class="col-lg-3 col-6">
            <!-- small box -->
            <div class="small-box bg-green">
              <div class="inner">
                <h3><?php echo $active_user_privilege_count; ?></h3>

                <p>User Privileges Active</p>
              </div>
              <div class="icon">
                <i class="fa fa-user-secret"></i>
              </div>
              <a href="<?php echo base_url(); ?>index.php/Super_Admin/fetch_user_privilege" class="small-box-footer">Turn ON/OFF <i class="fas fa-arrow-circle-right"></i></a>
            </div><!--small box-->
            </div>
        </div>


        <div class="row">
          <div class="col-lg-3 col-6">
            <!-- small box -->
            <div class="small-box bg-orange">
              <div class="inner">
                <h3><?php echo $active_privilege_count; ?></h3>

                <p>Pages Active</p>
              </div>
              <div class="icon">
                <i class="fa fa-file"></i>
              </div>
              <a href="#" class="small-box-footer">Turn ON/OFF <i class="fas fa-arrow-circle-right"></i></a>
            </div>
          </div>

          <div class="col-lg-3 col-6">
            <!-- small box -->
            <div class="small-box bg-pink">
              <div class="inner">
                <h3><?php echo $schemes_count; ?></h3>

                <p>Schemes Active</p>
              </div>
              <div class="icon">
                <i class="fa  fa-strikethrough"></i>
              </div>
              <a href="#" class="small-box-footer">Add More <i class="fas fa-arrow-circle-right"></i></a>
            </div><!--small box-->
            </div>
        </div>




    </div>
</section>

</div>