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
    <div class='container-fluid '>
      <div class='row'>
      <div class='col-md-7'>
          <div class='card card-primary'>
            <div class='card-header'>
              <h3 class='card-title'><?php echo $name; ?></h3>
            </div>
          <!-- /.card-header -->
          <!-- form start -->
            <form role='form' method="post" id='form' action="http://localhost/NIC/index.php/Get_table/submit/<?php echo $n;?>">
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
                      elseif($row == 'month'){
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
                      elseif($row == 'location_code'){
                        echo "<div class='form-group'>";
                        echo    "<label>Region</label>";
                        echo    "<input type='hidden' name='$row' id='$row' placeholder='Enter Value' value='".$this->session->userdata('location_code')."'>";
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
                <button type='submit' class='btn btn-primary' name='form_sub' id='form_sub' form="form" value="Submit">Submit</button>
              </div>
          </form>
        </div>
        <!-- /.card -->
      </div>
        <!-- left column -->
        
      <!--/.col (left) -->
      <div class="col-md-5">
          <!-- Widget: user widget style 2 -->
          <div class="card card-widget widget-user">
            <!-- Add the bg color to the header using any of the bg-* classes -->
            <div class="widget-user-header bg-indigo">
              <button type="button" class="btn btn-tool float-right"  data-toggle="modal" data-target="#modal-sm"style="color: white; font-size:30px;"><i class="fas fa-edit"></i></button>
                <div class="widget-user-image">
                  <img class="img-circle elevation-2" src="data: image/jpeg; base64, <?php echo $profile['image'];?>" style='width:70px; height:70px;' alt="User Avatar">
                </div>
                <!-- /.widget-user-image -->
                <h1 class="widget-user-username"><strong><?php echo $name; ?></strong></h1>
                <h5 class="widget-user-desc"><?php echo $f_name." ".$l_name." ";?><strong>Last Entry</strong></h5>
              </div>
              <div class="card-footer p-0" id="div123">
                <ul class="nav flex-column">
                  <?php
                      $i=0;
                      foreach($data as $row){
                          if($row == 'id_pk' || $row == 'login_id_fk' || $row == 'inserted_at' ||$row=='ip' || $row=='location_code' || $row=='nodal_check'){
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
                      }
                  ?>
                </ul>
              </div>
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

<div class="modal fade" id="modal-sm">
      <form method="POST" id='draft' action="">
        <div class="modal-dialog modal-sm" >
          <div class="modal-content">
            <div class="modal-header">
              <h4 class="modal-title">Choose Filter</h4>
              <button type="button" id="hi" class="close" data-dismiss="modal" aria-label="Close">
                <span aria-hidden="true">&times;</span>
              </button>
            </div>
            <div class="modal-body">
            <select id='modmonth' name="modmonth" class="form-control select2 select2-hidden-accessible">
            <option value='1' selected>January</option>
            <?php for($x=2;$x<=12;$x++){
                          echo "<option value='".$x."'>".$month[$x]."</option>";
                        }?>
            </select>

            <select id='modyear' name="modyear" class="form-control select2 select2-hidden-accessible">
            <?php $year=intval(date('Y')); 
            echo "<option value='".$year."' selected>".$year."</option>";
            for($x=$year-1;$x>=2019;$x--){
                          echo "<option value='".$x."'>".$x."</option>";
                        }?>
            </select>
            </div>
            <div class="modal-footer justify-content-between">
              <button type="submit" id="draft_sub" name="draft_sub" class="btn btn-primary" form="draft">Apply</button>
            </div>
          </div>
          <!-- /.modal-content -->
        </div>
      </form>
        <!-- /.modal-dialog -->
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

$("#draft").on("submit",function(e){
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
            document.getElementById("hi").click();
            $("#div123").load(location.href + " #div123");
            console.log(data);
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
}); 
$("#form").on("submit", function (event) {
  event.preventDefault();
  $.ajax({
    url: $('#form').attr('action'),
    type: "POST",
    data: $('#form').serialize(),
    //dataType: 'html',
    error: function(){
			console.log("Form cannot be submitted...");
		},
    cache: false,
    success: function(result){
      if(result[1]=='p'){
        $('#errors').html(result);
        console.log("error");
      }else{ 
        $('#errors').html("");
        $("#form")[0].reset();
        $("#div123").load(location.href + " #div123");
        console.log("submit");
      }
    }
  });
});
</script>