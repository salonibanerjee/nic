<div class="content-wrapper">
  <!-- Content Header (Page header) -->
  <section class="content-header">
    <div class="container-fluid">
      <div class="row mb-2">
        <div class="col-sm-6">
          <h1>BROADCAST <b>NOTIFICATION</b></h1>
        </div>
        <div class="col-sm-6">
          <ol class="breadcrumb float-sm-right">
            <li class="breadcrumb-item"><a href="http://localhost/NIC/index.php/<?php echo $this->cache->get('User_type'.$var)['user_privilege'][0]['link']?>"><?php echo $this->cache->get('User_type'.$var)['user_privilege'][0]['page_name']?></a></li>
            <li class="breadcrumb-item active">Notification</li>
          </ol>
        </div>
      </div>
    </div><!-- /.container-fluid -->
  </section>
  <section class="content">
    <div class="container-fluid">
  <!-- /.login-logo -->
  <div class="row">
    <div class="col-md-6">
      <section class='content'>
          <div class='container-fluid'>
            <div class='row'>

              <div class="col-md-12" id='refresh'>
                <div class="card">
                  <div class="card-header bg-info">
                    <h3 class="card-title">Previous Five Notifications</strong></h3>
                  </div>
                  <!-- /.card-header -->
                  <div class="card-body" >
                    <table id="example1" class="table table-bordered table-striped table-hover table-responsive" style="max-height:500px;">
                      <thead class="bg-warning">
                      <tr>
                        <th>ID</th>
                        <th>Title</th>
                        <th>Notification Body</th>
                      </tr>
                      </thead>
                      <?php
                          $i=1;
                          foreach($noti1 as $row){
                            echo "<tbody>";
                            echo "<th>".$row['audience_id']."</th>";
                            echo "<th>".$row['notification_head']."</th>";
                            echo "<th>".$row['notification_text']."</th>";
                            echo "</tbody>";
                            $i++;
                            if($i>5)
                              break;
                          }
                      ?>
                      
                      <tfoot>
                      <tr>
                        <!-- nothing for footer now -->
                      </tr>
                      </tfoot>
                    </table>
                  </div>
                  <!-- /.card-body -->
                </div>
              </div>
              
            <!-- right column -->
            <div class='col-md-1'>
            

            </div>
            <!--/.col (right) -->
            </div>
            <!-- /.row -->
          </div><!-- /.container-fluid -->
      </section>
    </div>
    <div class="col-md-6">
      <div class="card card-primary card-outline mx-auto" style="max-width: 500px">
        <div class="card-body login-card-body">
          <p class="login-box-msg"><strong>ENTER NOTIFICATION DETAILS</strong></p>
          <?php echo form_open('Super_Admin/notification','id="form"');?>
          <!--<form method="POST" action="" id="form"> -->
            <div class="input-group mb-3">
              <input name="noti_head" id="noti_head" type="text" class="form-control" placeholder="Notification Title" >
              <div class="input-group-append">
                <div class="input-group-text">
                  <span class="fas fa-quote-right"></span>
                </div>
              </div>
            </div>
            <div class="input-group mb-3">
                    <textarea name="noti_text" id="noti_text" class="form-control" rows="3" placeholder="Enter Notification body..."></textarea>
              <div class="input-group-append">
                <div class="input-group-text">
                  <span class="fas fa-bell"></span>
                </div>
              </div>
            </div>
            <div class="input-group mb-3">
              <input name="audience_id" id="audience_id" type="text"  class="form-control" placeholder="Notification code" >
              <div class="input-group-append">
                <div class="input-group-text">
                  <span class="fas fa-envelope"></span>
                </div>
              </div>
            </div>
            <div id="errors" style="color:red;"></div>
            <div class="row">
              <div class="col-12">
                <button type="submit" id="submit" name="submit" value="Submit" class="btn btn-primary float-right" style="border-radius: 50%;" ><span class="fas fa-paper-plane"></span></button>
              </div>
              <!-- /.col -->
            </div>
          <!--</form>-->
        </div>
        <!-- /.login-card-body -->
      </div>
    </div>
  </div>
</div>
</section>
</div>
<!-- /.login-box -->

<!-- jQuery -->
<script src="../../plugins/jquery/jquery.min.js"></script>
<!-- Bootstrap 4 -->
<script src="../../plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
<!-- AdminLTE App -->
<script src="../../dist/js/adminlte.min.js"></script>


<script type="text/javascript">
  $("form").on("submit", function (event){
    event.preventDefault();
    $.ajax({
      url: $('form').attr('action'),
      type: "POST",
      data: $('form').serialize(),
      //dataType: 'html',
      error: function(){
			  console.log("Form cannot be submitted...");
		  },
      cache: false,
      success: function(result){
        var pos=result.indexOf('<!DOCTYPE html>');
        if(result[1]=='p'){
          $('#errors').html(result.slice(0,pos));
        }else{
          $('#errors').html("");
          //alert(result.slice(0,pos));
          window.location.href = result.slice(0,pos);
        }
      }
    });
  });
</script>
</body>
</html>


