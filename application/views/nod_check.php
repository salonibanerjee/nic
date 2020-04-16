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
          <div class="col-md-11">
            <!-- Widget: user widget style 2 -->
            <div class="card card-widget widget-user-2">
              <!-- Add the bg color to the header using any of the bg-* classes -->
              <div class="widget-user-header bg-warning">
                <div class="widget-user-image">
                  <img class="img-circle elevation-2" src="data: image/jpeg; base64, <?php echo $profile['image'];?>" style='width:70px; height:70px;' alt="User Avatar">
                </div>
                <!-- /.widget-user-image -->
                <h3 class="widget-user-username"><?php echo $name; ?></h3>
                <h5 class="widget-user-desc"><?php echo $f_name." ".$l_name."--";?><strong>Draft Data</strong></h5>
              </div>
              <form role='form' method="post" id='form'>
              <div class="card-footer p-0">
                <ul class="nav flex-column">
                  <?php $i=0; foreach($data as $row){
                    if($row == 'id_pk' || $row == 'user' || $row == 'tstamp' ||$row=='ip' || $row=='schcd' || $row=='nodal_check'){
                      $i++;
                      continue;
                  }else{
                      echo "<li class='nav-item'>";
                      echo "<a  class='nav-link'>";
                      if(isset($draft_data->$row)){
                        if($s_name[$i]=="month")
                        echo $s_name[$i]." <span class='float-right badge bg-primary' style='width:70px; height:20px;'>".$month[$draft_data->$row]."</span>";
                        else
                        echo $s_name[$i]." <span class='float-right badge bg-primary' style='width:70px; height:20px;'>".$draft_data->$row."</span>";
                      }
                      else
                        echo $s_name[$i]." <span class='float-right badge bg-primary' style='width:70px; height:20px;'>"."NULL"."</span>";
                      echo "</a>";
                    echo "</li>";
                  }
                    $i++;
                  }?>
                </ul>
              </div>
              <button type='submit' class='btn btn-primary' name='sub1' id='sub1' value="Accept">Accept</button>
              <button type='submit' class='btn btn-primary' name='sub2' id='sub2' value="Reject">Reject</button>
              </form>
            </div>
            <!-- /.widget-user -->
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

<script src="http://localhost/NIC/css/plugins/overlayScrollbars/js/jquery.overlayScrollbars.min.js"></script>

<script type="text/javascript">

function myFunction() {
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
}
</script>
