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
    <div class="col-md-8">
      <section class='content'>
          <div class='container-fluid'>
            <div class='row'>

              <div class="col-md-12">
                <div class="card">
                  <div class="card-header bg-info">
                    <h3 class="card-title">Previous Notifications</strong></h3>
                  </div>
                  <!-- /.card-header -->
                  <div class="card-body" id="refresh">
                    <table id="example1" class="table table-bordered table-striped table-hover equal-width">
                      <thead class="bg-warning">
                      <tr>
                        <th>ID</th>
                        <th>Title</th>
                        <th>Notification Body</th>
                      </tr>
                      </thead>
                      <tbody>
                      <?php
                          
                          $i=1;
                          foreach($noti1 as $row){
                            echo "<tr>";
                            echo "<td>".$row['audience_id']."</td>";
                            echo "<td>".$row['notification_head']."</td>";
                            echo "<td>".$row['notification_text']."</td>";
                            echo "</tr>";
                            $i++;
                          }
                      ?>
                      </tbody>
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
    <div class="col-md-4">
      <div class="card card-primary card-outline mx-auto" >
        <div class="card-body login-card-body">
          <p class="login-box-msg"><strong>ENTER NOTIFICATION DETAILS</strong></p>
          <?php echo form_open('Super_Admin/notify','id="form"');?>
          <!--<form method="POST" action="" id="form"> -->
            <div class="input-group mb-3">
              <input name="noti_head" id="noti_head" type="text" class="form-control" placeholder="Notification Title" >
              <div class="input-group-append">
                <div class="input-group-text">
                  <span class="fas fa-quote-right"></span>
                </div>
              </div>
            </div>

            <!--Newly added div for restricting target audience-->                        
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script>
$(document).ready(function () {
/*
  //event listener
    document.addEventListener("click", function(){
      if(document.getElementById("audience_desig").value == "1"){
        $('#audience_loc').val('1');
      }
      if(document.getElementById("audience_loc").value == "1"){
        $('#audience_desig').val('1');
      }
    }
*/
    $("Hide_desig_loc").click(function () {

      if($("Hide_desig_loc").text() == 'Click here to Broadcast to All')
      {
        $('#audience_desig').val('-1');
        $('#audience_loc').val('-1');
        $("choose_desigloc").hide();
      }
      else
      {
        $('#audience_desig').val('');
        $('#audience_loc').val('');
        $("choose_desigloc").show();
      }

        $("Hide_desig_loc").fadeOut(function () {
            $("Hide_desig_loc").text(($("Hide_desig_loc").text() == 'Click here to Broadcast to All') ? 'Click here for Custom notification' : 'Click here to Broadcast to All').fadeIn();
        })

    })
  });
</script>

<hr/>
<div align="right" style="color:green;text-align:center">
  <Hide_desig_loc>Click here to Broadcast to All</Hide_desig_loc>
</div>
<hr/>
        <choose_desigloc>

            <div class="col-md-6">
              <div class="form-group">
              <label>Target Designation</label>      
                <select name="audience_desig" id="audience_desig" class="form-control">      
                  <option value="" selected>Select a Designation</option>
                  
                  <?php
                    $resdes=$this->db->query("SELECT * FROM public.mpr_master_designation ORDER BY desig_name ASC");
                    //pg_fetch_assoc()
                    foreach($resdes->result_array() as $desig){ //foreach($resdes->result() as $design)
                      echo "<option value='".$desig['desig_id_pk']."'>".$desig['desig_name']."</option>";
                      //echo "<option value=".$design->desig_id_pk.">".$design->desig_name."</option>";
                    } ?>
                    <option value="-1">Everyone</option>
                </select>

              </div>
            </div>

            <div class="col-md-6">
              <div class="form-group">

                <label>Target Location</label>

                <select name="audience_loc" id="audience_loc" class="form-control"> 
                  <option value="" selected>Select a location</option>
                  
                  <?php
                    $resloc=$loc=$this->db->query("SELECT * FROM public.mpr_master_location_data ORDER BY location_area ASC");
                    foreach($resloc->result_array() as $loc){
                      echo "<option value=".$loc['location_code'].">".$loc['location_area']."</option>";                                        
                    } ?>  
                    <option value="-1">Everywhere</option>
                </select>

              </div>
            </div>

        </choose_desigloc>

        
            
            <div class="input-group mb-3">
                    <textarea name="noti_text" id="noti_text" class="form-control" rows="3" placeholder="Enter Notification body..."></textarea>
              <div class="input-group-append">
                <div class="input-group-text">
                  <span class="fas fa-bell"></span>
                </div>
              </div>
            </div>
            <!--
            <div class="input-group mb-3">
              <input name="audience_id" id="audience_id" type="text"  class="form-control" placeholder="Notification code" >
              <div class="input-group-append">
                <div class="input-group-text">
                  <span class="fas fa-envelope"></span>
                </div>
              </div>
            </div>-->
            <div id="errors" style="color:red;"></div>
            <div class="row">
              <div class="col-12">
                <button type="submit" id='err' id="submit" name="submit" value="Submit" class="btn btn-primary float-right" style="border-radius: 50%;" ><span class="fas fa-paper-plane"></span></button>
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

<script src="http://localhost/NIC/css/plugins/overlayScrollbars/js/jquery.overlayScrollbars.min.js"></script>
<script src="http://localhost/NIC/js/notify.js"></script>
<script type="text/javascript" >
var csrf_token='';
$("#form").on("submit", function (event) {
  event.preventDefault();
  if(csrf_token==''){
    csrf_token='<?php echo $this->security->get_csrf_hash(); ?>';
  }
  $.ajax({
    url: $('#form').attr('action'),
    type: "POST",
    data: $('#form').serialize()+"&<?php echo $this->security->get_csrf_token_name(); ?>="+csrf_token,
    //dataType: 'html',
    error: function(){
			console.log("Form cannot be submitted...");
		},
    cache: false,
    success: function(result){
      var k=JSON.parse(result);
      //console.log(k);
      if (k.csrf_token){
        csrf_token=k.csrf_token;
      }
      if(k.res==0){
        $('#errors').html(k.errors);
        console.log("error");
      }else{ 
        $('#errors').html("");
        $("form")[0].reset();
        $("#refresh").load(location.href+" #refresh>*","");
        //$('#example1').DataTable().ajax.reload();
        $("#err").notify("Value accepted",{position:"left", className: 'success'});
        console.log("submit");
      }
    }
  });
});
</script>

<!-- DataTables -->
<script src="http://localhost/NIC/css/plugins/datatables/jquery.dataTables.js"></script>
<script src="http://localhost/NIC/css/plugins/datatables-bs4/js/dataTables.bootstrap4.js"></script>   

<!-- page script -->
<script>
  $(function () {
    //$("#myTable").DataTable();
    $('#example1').DataTable({
      "paging": true,
      "lengthChange": false,
      "searching": false,
      "ordering": false,
      "info": true,
      "autoWidth": false,
    });
  });
</script>
</body>
</html>


