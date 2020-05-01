<div class="content-wrapper">
  <div class="content-header">
    <div class="container-fluid">
      <div class="row mb-2">
        <div class="col-sm-9">
            <h1>Scheme Form</h1>
        </div>
      </div>
    </div>
  </div>
  <section class='content'>
    <div class='container-fluid'>
      <div class='row'>

        <div class="col-md-11" id='refresh'>
          <div class="card">
            <div class="card-header">
              <h3 class="card-title"><strong><?php echo $name.' ';?>Datatable</strong></h3>
              <button type="button" class="btn btn-tool float-right"  data-toggle="modal" data-target="#modal-sm"style="color: black"><i class="fas fa-edit"></i></button>
            </div>
            <!-- /.card-header -->
            <div class="card-body">
              <table id="example1" class="table table-bordered table-striped table-hover">
                <thead>
                <tr>
                  <?php $i=0; foreach($data as $row){
                      if($row == 'id_pk' || $row == 'login_id_fk' || $row == 'inserted_at' ||$row=='ip' || $row=='schcd' || $row=='nodal_check'){
                        $i++;
                        continue;
                      }else{
                        echo "<th>".$s_name[$i]."</th>";
                        $i++;
                      }
                  }?>
                </tr>
                </thead>
                <tbody>
                <?php
                    if($main_data!=0){
                    $i=0;
                    foreach($main_data as $row){
                        echo "<tr>";
                        foreach($row as $key=>$row1){
                            if($key == 'id_pk' || $key == 'login_id_fk' || $key == 'inserted_at' ||$key=='ip' || $key=='schcd' || $key=='nodal_check'){
                                continue;
                            }else if($key == 'month'){
                                echo "<td>".$month[$row1]."</td>";
                            }else{
                                echo "<td>".$row1."</td>";
                            }
                        }
                        echo "<tr>";
                        $i++;
                    }
                }
                ?>
                </tbody>
                <tfoot>
                <tr>
                  <th>Rendering engine</th>
                  <th>Browser</th>
                  <th>Platform(s)</th>
                  <th>Engine version</th>
                  <th>CSS grade</th>
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

<div class="modal fade" id="modal-sm">
      <form method="POST" id='draft' action="">
        <div class="modal-dialog modal-default" >
          <div class="modal-content">
            <div class="modal-header bg-blue">
              <h4 class="modal-title">Choose Month and Year Range</h4>
              <button type="button" id="hi" class="close" data-dismiss="modal" aria-label="Close">
                <span aria-hidden="true">&times;</span>
              </button>
            </div>
            <div class="modal-body">

              <div class="row">
                <div class="col-md-6">
                  <label>Start Month</label>
                  <select id='modmonthst' name="modmonthst" class="form-control select2 select2-hidden-accessible">
                  <option value='1' selected>January</option>
                  <?php for($x=2;$x<=12;$x++){
                                echo "<option value='".$x."'>".$month[$x]."</option>";
                              }?>
                  </select>
                </div>
                <div class="col-md-6">
                  <label>Ending Month</label>
                  <select id='modmonthend' name="modmonthend" class="form-control select2 select2-hidden-accessible">
                  <option value='1' selected>January</option>
                  <?php for($x=2;$x<=12;$x++){
                                echo "<option value='".$x."'>".$month[$x]."</option>";
                              }?>
                  </select>
                </div>
                
                <div class="col-md-12">      
                  <label style="margin-top:10px;">Choose Year</label>
                  <select id='modyear' name="modyear" class="form-control select2 select2-hidden-accessible">
                  <?php $year=intval(date('Y')); 
                  echo "<option value='".$year."' selected>".$year."</option>";
                  for($x=$year-1;$x>=2019;$x--){
                                echo "<option value='".$x."'>".$x."</option>";
                              }?>
                  </select>
                </div>
                <div id="errors" style="color:red;"></div>
              </div>
            </div>
            <div class="modal-footer justify-content-between">
              <button type="submit" id="filter_sub" name="filter_sub" class="btn btn-outline-primary" style="display: block; margin-left: auto;  margin-right: auto;" form="draft" >Apply</button>
            </div>
          </div>
          <!-- /.modal-content -->
        </div>
      </form>
        <!-- /.modal-dialog -->
      </div>

<script src="http://localhost/NIC/css/plugins/overlayScrollbars/js/jquery.overlayScrollbars.min.js"></script>
<!-- jQuery -->
<script src="../../plugins/jquery/jquery.min.js"></script>
<!-- Bootstrap 4 -->
<script src="../../plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
<!-- DataTables -->
<script src="../../plugins/datatables/jquery.dataTables.min.js"></script>
<script src="../../plugins/datatables-bs4/js/dataTables.bootstrap4.min.js"></script>
<script src="../../plugins/datatables-responsive/js/dataTables.responsive.min.js"></script>
<script src="../../plugins/datatables-responsive/js/responsive.bootstrap4.min.js"></script>
<!-- AdminLTE App -->
<script src="../../dist/js/adminlte.min.js"></script>
<!-- AdminLTE for demo purposes -->
<script src="../../dist/js/demo.js"></script>
<!-- page script -->


<script type="text/javascript">

/*function myFunction() {
// Declare variables
var input, filter, ul, li, a, i, txtValue;
input = document.getElementById('schemeSearch');
filter = input.value.toUpperCase();
ul = document.getElementById("myUL");
li = ul.getElementsByTagName('li');

// Loop through all list items, and hide those who don't match the search query
for (i = 0; i < li.length; i++) {
  a = li[i].getElementsByTagName("a")[0];
  txtValue = a.textContent || a.innerText;
  if (txtValue.toUpperCase().indexOf(filter) > -1) {
    li[i].style.display = "";
  } else {
    li[i].style.display = "none";
  }
}
}*/

/*$("#draft").on("submit",function(e){
    var postData = $(this).serialize();
    var formURL = $(this).attr("action");
    console.log(postData);
    $.ajax(
    {
        url : formURL,
        type: "POST",
        data : postData,
        success:function(data, textStatus, jqXHR) 
        {
            if(data[1]=='p'){
              var pos=data.indexOf('<!DOCTYPE html>');
              $("#error").html(data.slice(0,pos));
              console.log('errors');
            }else{
              document.getElementById("hi").click();
              console.log('errorfree');
              $("#refresh").load(location.href + " #refresh");
            }
            
            //data: return data from server
        },
        error: function(jqXHR, textStatus, errorThrown) 
        {
            console.log("Form cannot be submitted...");
            //if fails      
        }
    });
    //e.preventDefault(); //STOP default action
    //e.unbind(); //unbind. to stop multiple form submit.
});*/
</script>
