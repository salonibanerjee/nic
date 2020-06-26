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
                  <div class="card-body" >
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
                      </tbody>
                      <tfoot>
                      <tr>
                      <div id='refresh'></div>
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
<script src="http://localhost/NIC/css/plugins/datatables/jquery.dataTables.js"></script>
<script src="http://localhost/NIC/css/plugins/datatables-bs4/js/dataTables.bootstrap4.js"></script>
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
        $('#example1').DataTable().ajax.reload();
        $("#err").notify("Value accepted",{position:"right", className: 'success'});
        console.log("submit");
      }
    }
  });
});
$(document).ready(function() {
  var table=$('#example1').DataTable( {
    ajax: {
        url: "<?php echo base_url();?>index.php/Fund/fetchdata",
        dataSrc: 'data'
    },
    columns: [
                        { data: 'location' },
                        { data: 'scheme' },
                        { data: 'funds_allocated' },
                        { data: 'funds_utilised' },
                        { data: 'threshold'}
                      ],
                      "paging": true,
                    "lengthChange": true,
                    "searching": true,
                    "ordering": true,
                    "info": true,
                    "autoWidth": false
} );
     
$('#example1 tbody').on('click', 'tr', function () {
        var data = table.row(this).data();
        console.log(data.scheme);
        var objSelect1 = document.getElementById("loc");
        for (var i = 0; i < objSelect1.options.length; i++) {
          if (objSelect1.options[i].text== data.location) {
            objSelect1.options[i].selected = true;
        }
        }
        var objSelect1 = document.getElementById("scheme");
        for (var i = 0; i < objSelect1.options.length; i++) {
          if (objSelect1.options[i].text== data.scheme) {
            objSelect1.options[i].selected = true;
        }
        }
        var objSelect1 = document.getElementById("funa");
        objSelect1.value=data.funds_allocated;
        var objSelect1 = document.getElementById("funu");
        objSelect1.value=data.funds_utilised;
        var objSelect1 = document.getElementById("thsd");
        objSelect1.value=data.threshold;
        return;
    });
} );


</script>