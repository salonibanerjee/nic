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
        <!-- left column -->
        <div class='col-md-11'>
          <div class='card card-primary'>
            <div class='card-header'>
              <h3 class='card-title'><?php echo $name; ?></h3>
            </div>
          <!-- /.card-header -->
          <!-- form start -->
            <form role='form' method="post" id='form'>
              <div class='card-body'>
                <?php
                  $i=0;
                  foreach($data as $row){
                    if($row == 'id' || $row == 'user' || $row == 'tstamp' ||$row=='ip'){
                          $i++;
                          continue;
                      }
                      elseif($row == 'session'){
                          $year=intval(date('Y'));
                          echo "<div class='form-group'>";
                          echo    "<label>$s_name[$i]</label>";
                          echo    "<select name='$row' id='$row' class='form-control select2 select2-hidden-accessible' style='width: 100%;' data-select2-id='1' tabindex='-1' aria-hidden='true'>";
                                  for($x=$year;$x>=2019;$x--){
                                      echo "<option value='$x'".set_select($row,$x).">".$x."</option>";
                                  }
                          echo    "</select>";
                          echo "<p class='error invalid-feedback'><small>".form_error($row)."</small></p>";
                          //echo  "<span class='select2 select2-container select2-container--default select2-container--below' dir='ltr' data-select2-id='2' style='width: 100%;'><span class='selection'><span class='select2-selection select2-selection--single' role='combobox' aria-haspopup='true' aria-expanded='false' tabindex='0' aria-disabled='false' aria-labelledby='select2-u66w-container'><span class='select2-selection__rendered' id='select2-u66w-container' role='textbox' aria-readonly='true' title='Enter Session'>Alabama</span><span class='select2-selection__arrow' role='presentation'><b role='presentation'></b></span></span></span><span class='dropdown-wrapper' aria-hidden='true'></span></span>";
                          echo "</div>";
                          $i++;
                      }
                      elseif($row == 'date' || $row == 'Till_date' || $row == 'Date_of_Inception' || $row == 'Date_of_Inspection'){
                          $year=date('Y-m-d');
                          echo "<div class='form-group'>";
                          echo "<label>$s_name[$i]</label>";
                          echo "<input name='$row' id='$row' type='date' class='form-control' data-inputmask-alias='datetime' data-inputmask-inputformat='dd/mm/yyyy' data-mask='' im-insert='false' style='width:200;'>";
                          echo "<p class='error invalid-feedback'><small>".form_error($row)."</small></p>";
                          echo "</div>";
                          $i++;
                      }
                      elseif($row == 'schcd'){
                        echo "<div class='form-group'>";
                        echo    "<label>Region</label>";
                        echo    "<input type='hidden' name='$row' id='$row' placeholder='Enter Value' value='".$this->session->userdata('gp_id')."'>";
                        echo    "<input type='text' class='form-control' name='dude' id='dude' placeholder='Enter Value' value='".$region."' readonly>";
                        echo    "<p class='error invalid-feedback'><small>".form_error($row)."</small></p>";
                        echo "</div>";
                        $i++;
                      } 
                      else{
                          echo "<div class='form-group'>";
                          echo    "<label>$s_name[$i]</label>";
                          echo    "<input type='text' class='form-control' name='$row' id='$row' placeholder='Enter Value' value='".set_value($row)."'>";
                          echo    "<p class='error invalid-feedback'><small>".form_error($row)."</small></p>";
                          echo "</div>";
                          $i++;
                      }
                  }
              
                ?>
              </div>
              <!-- /.card-body -->
              <div class='card-footer'>
                <button type='submit' class='btn btn-primary' name='save' id='save' value="<?php 
                  if(form_error('session')||form_error('schcd')){
                      echo 'Update data';
                  }else{
                      echo 'Save data';
                  }
                  ?>"><?php 
                  if(form_error('session')||form_error('schcd')){
                      echo 'Update';
                  }else{
                      echo 'Save';
                  }
                  ?></button>
              </div>
          </form>
          </div>
          <!-- /.card -->
          </div>
      <!--/.col (left) -->
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
