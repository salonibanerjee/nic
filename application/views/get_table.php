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
            <div class="card card-widget widget-user">
              <!-- Add the bg color to the header using any of the bg-* classes -->
              <div class="widget-user-header bg-orange">
                <div class="widget-user-image">
                  <img class="img-circle elevation-2" src="data: image/jpeg; base64, <?php echo $profile['image'];?>" style='width:100px; height:100px;' alt="User Avatar">
                </div>
                <!-- /.widget-user-image -->
                <h1 class="widget-user-username"><strong><?php echo $name; ?></strong></h1>
                <h5 class="widget-user-desc"><?php echo $f_name." ".$l_name." ";?><strong>Last Entry</strong></h5>
              </div>
              <div class="card-footer p-0" id="div123">
                <ul class="nav flex-column">
                  <?php $i=0; foreach($data as $row){
                    if($row == 'id_pk' || $row == 'login_id_fk' || $row == 'inserted_at' ||$row=='ip' || $row=='schcd' || $row=='nodal_check'){
                      $i++;
                      continue;
                  }else{
                      echo "<li class='nav-item'>";
                      echo "<a  class='nav-link'>";
                      if(isset($draft_data->$row)){
                        if($s_name[$i]=="Month")
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
            </div>
            <!-- /.widget-user -->
          </div>
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
                    if($row == 'id_pk' || $row == 'login_id_fk' || $row == 'inserted_at' ||$row=='ip' ||$row=='nodal_check'){
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
                      elseif($row == 'Month'){
                        $year=intval(date('Y'));
                        echo "<div class='form-group'>";
                        echo    "<label>$s_name[$i]</label>";
                        echo    "<select name='$row' id='$row' class='form-control select2 select2-hidden-accessible' style='width: 100%;' data-select2-id='1' tabindex='-1' aria-hidden='true'>";
                        for($x=1;$x<=12;$x++){
                          echo "<option value='$x'".set_select($row,$x).">".$month[$x]."</option>";
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
                          echo    "<p class='error invalid-feedback '><small>".form_error($row)."</small></p>";
                          echo "</div>";
                          $i++;
                      }
                  }
              
                ?>
              </div>
              <!-- /.card-body -->
              <div class='card-footer'>
              <div id="errors" style="color:red;"></div>
                <button type='submit' class='btn btn-primary' name='submit' id='submit' value="Submit">Submit</button>
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

$("form").on("submit", function (event) {
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
      if(result[1]=='p'){
        var pos=result.indexOf('<!DOCTYPE html>');
        $('#errors').html(result.slice(0,pos));
        //alert("Form error...");
        console.log("error");
      }else{ 
        $('#errors').html("");
        $("form")[0].reset();
        $("#div123").load(location.href + " #div123");
        //alert("Form submitted...");
        console.log("submit");
      }
    }
  });
});
</script>
