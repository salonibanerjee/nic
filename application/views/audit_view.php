<!--The audit log records for system administrator-->
<!---------------------------------------------------------------------------------------------------------------------------------------->

<div class="content-wrapper">
  <div class="content-header">
    <div class="container-fluid">
      <div class="row mb-2">
        <div class="col-sm-6">
            <h1>AUDIT <b>LOG</b></h1>
        </div>
        <div class="col-sm-6">
          <ol class="breadcrumb float-sm-right">
            <li class="breadcrumb-item"><a href="http://localhost/NIC/index.php/<?php echo $this->cache->get('User_type'.$var)['user_privilege'][0]['link']?>"><?php echo $this->cache->get('User_type'.$var)['user_privilege'][0]['page_name']?></a></li>
            <li class="breadcrumb-item active">Audit Log</li>
          </ol>
        </div>
      </div>
    </div>
  </div>

  <section class="content">
    <div class="row">
      <div class="col-12">
        <div class="card">
          <div class="card-header">
            <h3 class="card-title">Audit Log Data</h3>
            <form class="float-sm-right" method="post">
              <input type="text" name="search_text" onkeyup="myFunction()" id="myInput" placeholder="Search for E-mail...">
              <input type="date" name="search_date" onchange="myFunction()" id="myInputdate" placeholder="Pick Date">
              <input type="button" name="reset" value="Clear" onclick="window.location.reload()">
            </form>
          </div>
          <!-- /.card-header -->
          <div class="card-body">
            <table id="myTable" class="table table-bordered table-hover table-responsive equal-width">
              <thead>
              <tr>
              <th>#</th>
              <th>Login As</th>
              <th>Section</th>
              <th>Action</th>
              <th>Request</th>
              <th>Comment</th>
              <th>IP Address</th>
              <th style="white-space: nowrap">Time Stamp</th>
              </tr>
              </thead>
              <tbody>
              <?php 
              $i=0;
              foreach ($audit as $key) 
              {
                  echo "<tr>";
                  echo "<td>".strval($i+1)."</td>";
                  echo "<td>".$login_as[$i]."</td>";
                  echo "<td>".$key['section']."</td>";
                  echo "<td>".$key['action']."</td>";
                  echo "<td>".$key['request']."</td>";
                  echo "<td>".$key['comment']."</td>";
                  echo "<td>".$key['ip_addr']."</td>";
                  echo "<td>".$key['timestamp']."</td>";
                  echo "</tr>";
                  $i++;   
              }
              ?>
              </tbody>
            </table>
          </div>
          <!-- /.card-body -->
        </div>
        <!-- /.card -->
      </div>
    </div>
  </section>
</div>

<!-- DataTables -->
<script src="http://localhost/NIC/css/plugins/datatables/jquery.dataTables.js"></script>
<script src="http://localhost/NIC/css/plugins/datatables-bs4/js/dataTables.bootstrap4.js"></script>   

<!-- page script -->
<script>
  $(function () {
    //$("#myTable").DataTable();
    $('#myTable').DataTable({
      "paging": false,
      "lengthChange": false,
      "searching": false,
      "ordering": true,
      "info": true,
      "autoWidth": true,
    });
  });
</script>

<script>
//loads the audit logs table with data----------------------------------------------------------------------------------------------
function myFunction() {
  var input, filter, table, tr, td,td2, i, txtValue,txtValue2,input2,filter2;
  input = document.getElementById("myInput");
  filter = input.value.toString();
  input2 = document.getElementById("myInputdate");
  filter2 = input2.value.toString();
  table = document.getElementById("myTable");
  tr = table.getElementsByTagName("tr");
  for (i = 0; i < tr.length; i++) 
  {
    td = tr[i].getElementsByTagName("td")[1];
    td2= tr[i].getElementsByTagName("td")[7];
    if (td || td2) 
    {
      txtValue = td.textContent || td.innerText;
      txtValue2 = td2.textContent || td2.innerText;
      if (txtValue.indexOf(filter) > -1 && txtValue2.indexOf(filter2) > -1) {
        tr[i].style.display = "";
      } else {
        tr[i].style.display = "none";
      }
    } 
  }
}
</script>