<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
  <!-- Content Header (Page header) -->
  <section class="content-header">
    <div class="container-fluid">
      <div class="row mb-2">
        <div class="col-sm-6">
          <h1>FUND <b>ALLOCATE</b></h1>
        </div>
        <div class="col-sm-6">
          <ol class="breadcrumb float-sm-right">
            <li class="breadcrumb-item"><a href="http://localhost/NIC/index.php/Super_Admin">Super Admin</a></li>
            <li class="breadcrumb-item active">Fund</li>
          </ol>
        </div>
      </div>
    </div><!-- /.container-fluid -->
  </section>
 

  <section class="content">
  <div class="row">
        <div class="col-md-4">
    <div class="container-fluid">
      <!-- general form elements -->
      <div class="card card-primary mx-auto">
        
        <!-- form start -->
          <div class="card-body">
            <?php
              echo form_open("Fund/fund_submit",'id="form"');
            ?>
              <h3 class="profile-username text-center"><b><?php echo "Enter Fund Related Details";?></b></h3>
              <div class="form-group">
                <label>Location</label>
                <select class="form-control" id ="loc" name= "loc" >
                  <?php  foreach($loc as $key){ 
                   echo "<option value=".$key['location_id_pk'].">".$key['location_area']."</option>";
                  } ?>
                </select>
              </div>
              <div class="form-group">
                <label>Scheme Name</label>
                <select class="form-control" id ="scheme" name= "scheme" >
                  <?php  foreach($scheme as $key){ 
                   echo "<option value=".$key['scheme_id_pk'].">".$key['name']."</option>";
                  } ?>
                </select>
              </div>
              <div class="form-group">
                <label>Funds Allocated</label>
                <input type="text" class="form-control" name = "funa" id="funa" placeholder="Enter Fund Allocated">
              </div>
              <div class="form-group">
                <label>Funds Utilised</label>
                <input type="text" class="form-control" name = "funu" id="funu" placeholder="Enter Fund Utilised">
              </div>
              <div class="form-group">
                <label>Threshold %</label>
                <input type="text" class="form-control" name = "thsd" id="thsd" placeholder="Enter threshold percentage">
              </div>
            </div>
          <!-- /.card-body -->
          <?php //echo validation_errors();?>
          <div class="card-footer">
          <div id="errors" style="color:red;"></div>
                <div id='err' style="max-width:80px">
                <button type='submit' class='btn btn-primary' name='form_sub' id='form_sub' form="form" value="Submit">Submit</button>
                </div>
          </div>
      </div>
    </div>
  </div>


<div class="col-md-8">
                <div class="card">
                  <div class="card-header bg-primary">
                    <h3 class="card-title">Previous Notifications</strong></h3>
                  </div>
                  <!-- /.card-header -->
                  <div class="card-body" id='refresh'>
                    <table id="example1" class="table table-bordered table-striped table-hover equal-width">
                      <thead class="bg-lime">
                      <tr>
                        <th>Location</th>
                        <th>Scheme</th>
                        <th>Fund Alloted</th>
                        <th>Fund Utilised</th>
                        <th>Threshold</th>
                      </tr>
                      </thead>
                      <tbody>
                      <?php
                          
                          $i=1;
                          foreach($funds as $row){
                            echo "<tr>";
                            foreach($loc as $l){
                              if($row['location_id_fk']==$l['location_id_pk']){
                                echo "<td>".$l['location_area']."</td>";
                              }
                            }
                            foreach($scheme as $l){
                              if($row['scheme_id_fk']==$l['scheme_id_pk']){
                                echo "<td>".$l['name']."</td>";
                              }
                            }
                            echo "<td>".$row['funds_allocated']."</td>";
                            echo "<td>".$row['funds_utilised']."</td>";
                            echo "<td>".$row['threshold']."</td>";
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
            </div>
          </div>
</section>

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
        $("#err").notify("Value accepted",{position:"right", className: 'success'});
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
      "lengthChange": true,
      "searching": true,
      "ordering": true,
      "info": true,
      "autoWidth": false,
    });
  });
</script>