<!--Profile view -->
<!---------------------------------------------------------------------------------------------------------------------------------------->
<div class="content-wrapper">
  <!-- Content Header (Page header) -->
  <section class="content-header">
    <div class="container-fluid">
      <div class="row mb-2">
        <div class="col-sm-6">
          <h1>Profile</h1>
        </div>
        <div class="col-sm-6">
          <ol class="breadcrumb float-sm-right">
            <li class="breadcrumb-item"><a href="http://localhost/NIC/index.php/<?php echo $this->cache->get('User_type'.$var)['user_privilege'][0]['link']?>">Home</a></li>
            <li class="breadcrumb-item active">Profile</li>
          </ol>
        </div>
      </div>
    </div><!-- /.container-fluid -->
  </section>


  <?php  //to change '@' to [at] & '.' to [dot] 
        $temp="";
        $t="";
        for($i=0; $i<strlen($email); $i++){
          if($email[$i]== "@"){
            $t = "[at]";
            $temp= $temp.$t;
          }
          else if($email[$i]== "."){
            $t = "[dot]";
            $temp=$temp.$t;
          }
          else{
            $t = $email[$i];
            $temp = $temp.$t;
          }
        }
        $email= $temp;
        ?>

  <!-- Main content -->
  <section class="content">
    <div class="container-fluid">
          <!-- Profile Image -->
          <div class="card card-primary card-outline mx-auto" style="max-width: 700px">
            <div class="card-body box-profile">
              <div class="text-center">
                <?php if($image==""||$image==NULL){
                  echo "<img id='zoom' name='zoom' class='profile-user-img img-fluid img-circle' src='http://localhost/NIC/css/dist/img/avatar00.png' alt='User profile picture' style='width:150px; height:150px;'>";
                }else{
                  echo "<img id='zoom' name='zoom' class='profile-user-img img-fluid img-circle' src='data:image/jpeg;base64,$image' alt='User profile picture' style='width:150px; height:150px;'>";
                }?>   
              </div>

              <h3 class="profile-username text-center"><b><?php echo $f_name." ".$m_name." ".$l_name;?></b></h3>

              <p class="text-muted text-center"><?php echo $designation;?></p>

              <ul class="list-group list-group-unbordered mb-3">
                <li class="list-group-item">
                  <b>Name </b> <a class="float-right"><?php echo $f_name." ".$m_name." ".$l_name;?></a>
                </li>
                <li class="list-group-item">
                  <b>Username</b> <a class="float-right"><?php echo $username;?></a>
                </li>
                <li class="list-group-item">
                  <b>Office</b> <a class="float-right"><?php echo $office; ?></a>
                </li>
                <li class="list-group-item">
                  <b>Department</b> <a class="float-right"><?php echo $department; ?></a>
                </li>
                <li class="list-group-item">
                  <b>Designation</b> <a class="float-right"><?php echo $designation; ?></a>
                </li>
                <li class="list-group-item">
                  <b>Email</b> <a class="float-right"><?php echo $email; ?></a>
                </li>
                <li class="list-group-item">
                  <b>Phone</b> <a class="float-right"><?php echo $mobile; ?></a>
                </li>
                <li class="list-group-item">
                  <b>District</b> <a class="float-right"><?php echo $district ?></a>
                </li>
                
              </ul>
              
              <div class="row">
                <div class="col-md-6">
                <a href="http://localhost/NIC/index.php/Summary/edit_profile" class="btn btn-block btn-outline-primary mx-auto" style="max-width: 400px"><b>Edit Profile</b></a>
                </div>
                <div class="col-md-6">
                <a href="http://localhost/NIC/index.php/Summary/password_change_within" class="btn btn-block btn-outline-primary mx-auto" style="max-width: 400px"><b>Change Password</b></a>
                </div>
              </div>
              
            </div>
            <!-- /.card-body -->
          </div>
          <!-- /.card -->
        
    </div>
  </section>
</div>

	
<script>
$(document).on('mouseenter','#zoom', function (event) {
  $(this).animate({width:'400px',height:'400px'});
	$(this).css("opacity","1");
  }).on('mouseleave','#zoom',  function(){
    $(this).animate({width:'150px',height:'150px'});
		$(this).css("opacity","1");
  });
</script>

