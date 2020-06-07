<div class="content-wrapper">
<section class="content-header">
    <div class="container-fluid">
      <div class="row mb-2">
        <div class="col-sm-6">
          <h1>SUPER <b>ADMIN</b></h1>
        </div>
        <div class="col-sm-6">
          <ol class="breadcrumb float-sm-right">
            <li class="breadcrumb-item"><a href="http://localhost/NIC/index.php/<?php echo $this->cache->get('User_type'.$var)['user_privilege'][0]['link']?>"><?php echo $this->cache->get('User_type'.$var)['user_privilege'][0]['page_name']?></a></li>
            <li class="breadcrumb-item active">Super Admin</li>
          </ol>
        </div>
      </div>
    </div><!-- /.container-fluid -->
  </section>

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
              <a href="<?php echo base_url(); ?>index.php/Super_Admin/page_view" class="small-box-footer">Turn ON/OFF <i class="fas fa-arrow-circle-right"></i></a>
            </div>
          </div>

          <div class="col-lg-3 col-6">
            <!-- small box -->
            <div class="small-box bg-lime">
              <div class="inner">
                <h3><?php echo $schemes_count; ?></h3>

                <p>Show Schemes Record</p>
              </div>
              <div class="icon">
                <i class="fas fa-th-list"></i>
              </div>
              <a href="<?php echo base_url(); ?>index.php/Super_Admin/seek_record" class="small-box-footer bg-success">Show Record <i class="fas fa-arrow-circle-right"></i></a>
            </div>
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
                <h3><?php echo $year_range->financial_year_range;?></h3>

                <p><?php $var=$year_range->month; echo $month[$var];?></p>
              </div>
              <div class="icon">
                <i class="fa  fa-calendar"></i>
              </div>
              <a href="<?php echo base_url();?>index.php/Super_Admin/dba_fyear_range" class="small-box-footer">Enter DBA financial year<i class="fas fa-arrow-circle-right"></i></a>
            </div><!--small box-->
            </div>
        </div>
<!--------------------------------------- -->




    </div>
</section>

</div>