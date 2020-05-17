<div class="content-wrapper">
<h1 style="padding-left:10px; padding-top:5px;"></b>SUPER ADMIN</b></h1>

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
              <a href="<?php echo base_url(); ?>index.php/Super_Admin/signup" class="small-box-footer bg-orange">Create New User <i class="fas fa-arrow-circle-right"></i></a>
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
            <div class="small-box bg-gray">
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

            <div class="col-lg-3 col-6">
            <!-- small box -->
            <div class="small-box bg-purple">
              <div class="inner">
                <h3><?php echo $audit_count; ?></h3>

                <p>Audit Log Count</p>
              </div>
              <div class="icon">
                <i class="fa  fa-history"></i>
              </div>
              <a href="#" class="small-box-footer">View Particular Audit Log <i class="fas fa-arrow-circle-right"></i></a>
            </div><!--small box-->
            </div>

            <div class="col-lg-3 col-6">
            <!-- small box -->
            <div class="small-box bg-teal">
              <div class="inner">
                <h3>Year</h3>

                <p>Month</p>
              </div>
              <div class="icon">
                <i class="fa  fa-calendar"></i>
              </div>
              <a href="<?php echo base_url();?>index.php/Super_Admin/dba_fyear_range" class="small-box-footer">Enter DBA financial year<i class="fas fa-arrow-circle-right"></i></a>
            </div><!--small box-->
            </div>
        </div>




    </div>
</section>

</div>