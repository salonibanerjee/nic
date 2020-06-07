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
              <input type="text" name="search_text" onkeyup="myFunction()" id="myInput" placeholder="Search for E-mail ...">
              <input type="date" name="search_date" onchange="myFunction1()" id="myInputdate" placeholder="Pick Date"><br>
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
      "paging": true,
      "lengthChange": false,
      "searching": false,
      "ordering": true,
      "info": true,
      "autoWidth": false,
    });
  });
</script>

<script>
function myFunction() {
  var input, filter, table, tr, td, i, txtValue;
  input = document.getElementById("myInput");
  filter = input.value.toUpperCase();
  table = document.getElementById("myTable");
  tr = table.getElementsByTagName("tr");
  for (i = 0; i < tr.length; i++) {
    td = tr[i].getElementsByTagName("td")[1];
    if (td) {
      txtValue = td.textContent || td.innerText;
      if (txtValue.toUpperCase().indexOf(filter) > -1) {
        tr[i].style.display = "";
      } else {
        tr[i].style.display = "none";
      }
    }       
  }
}
function myFunction1() {
  var input, filter, table, tr, td, i, txtValue;
  input = document.getElementById("myInputdate");
  filter = input.value.toString();
  table = document.getElementById("myTable");
  tr = table.getElementsByTagName("tr");
  for (i = 0; i < tr.length; i++) {
    td = tr[i].getElementsByTagName("td")[7];
    if (td) {
      txtValue = td.textContent || td.innerText;
      if (txtValue.indexOf(filter) > -1) {
        tr[i].style.display = "";
      } else {
        tr[i].style.display = "none";
      }
    }       
  }
}
</script>