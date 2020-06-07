<!DOCTYPE html>
<html>
<head>
  <title>Audit view</title>
</head>
<body>
      <h1>Audit view</h1>
      <div align="center">
        <form method="post">
          <input type="text" name="search_text" onkeyup="myFunction()" id="myInput" placeholder="Search for E-mail ...">
          <input type="date" name="search_date" onchange="myFunction1()" id="myInputdate" placeholder="Pick Date"><br>
        </form>
      </div><br>
      <div align="center">
        <table border="1" cellpadding="1" cellspacing="1" style="text-align:center" id="myTable">
          <tr>
            <th>S.NO</th>
            <th>Login As</th>
            <th>Section</th>
            <th>Action</th>
            <th>Request</th>
            <th>Comment</th>
            <th>IP Address</th>
            <th>Time Stamp</th>
          </tr>
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
        </table>
      </div>
</body>
</html>
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