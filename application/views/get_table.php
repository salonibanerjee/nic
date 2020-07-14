<div class="content-wrapper">
  <div class="content-header">
    <div class="container-fluid">
      <div class="row mb-2">
        <div class="col-sm-6">
            <h1>SCHEME <b>DATA ENTRY</b></h1>
        </div>
        <div class="col-sm-6">
          <ol class="breadcrumb float-sm-right">
            <li class="breadcrumb-item"><a href="http://localhost/NIC/index.php/<?php echo $this->cache->get('User_type'.$var)['user_privilege'][0]['link']?>"><?php echo $this->cache->get('User_type'.$var)['user_privilege'][0]['page_name']?></a></li>
            <li class="breadcrumb-item active">Data Entry</li>
          </ol>
        </div>
      </div>
    </div>
  </div>
  <section class='content'>
    <div class='container-fluid '>
      <div class='row'>
      <div class="col-md-6">
            <div class="info-box bg-gradient-warning">
              <span class="info-box-icon"><i class="far fa-calendar-alt"></i></span>

              <div class="info-box-content">
                <span class="info-box-text"><b> Data can be inserted from:</b></span>
                <span class="info-box-number"><?php echo $month[$year_range->month].",".$year_range->financial_year_range;?></span>
              </div>
              <!-- /.info-box-content -->
            </div>
            <!-- /.info-box -->
          </div>
      </div>
      <div class='row'>
      <div class='col-md-6'>
          <div class='card card-indigo'>
            <div class='card-header'>
              <h3 class='card-title'><?php echo $name; ?></h3>
            </div>
          <!-- /.card-header -->
          <!-- form start -->
          <?php
          $attributes = array('id' => 'form');
          echo form_open('Get_table/submit/'.$n, $attributes); 
          ?>
            <!--<form role='form' method="post" id='form' action="http://localhost/NIC/index.php/Get_table/submit/<?php //echo $n;?>">-->
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
                                    for($x=$year;$x>=$year_range->financial_year_range;$x--){
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
                        echo    "<label>Month</label>";
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
                      elseif($row == 'date' || $row == 'till_date' || $row == 'date_of_inception' || $row == 'date_of_inspection'){
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
                <div id='err' style="max-width:80px">
                <button type='submit' class='btn btn-primary' name='form_sub' id='form_sub' form="form" value="Submit">Submit</button>
                  </div>
              </div>
          </form>
        </div>
        <!-- /.card -->
      </div>
        <!-- left column -->
        
      <!--/.col (left) -->
      <div class="col-md-6">
          <!-- Widget: user widget style 2 -->
          <div class="card card-widget widget-user">
            <!-- Add the bg color to the header using any of the bg-* classes -->
            <div class="widget-user-header bg-indigo">
              <button type="button" class="btn btn-tool float-right"  data-toggle="modal" data-target="#modal-sm"style="color: white; font-size:30px;"><i class="fas fa-edit"></i></button>
                <div class="widget-user-image">
                  <?php if($profile['image']!=NULL){?>
                    <img class="img-circle elevation-2" src="data: image/jpeg; base64, <?php echo $profile['image'];?>" style='width:70px; height:70px;' alt="User Avatar">
                  <?php }else{?>
                    <img class="img-circle elevation-2" src="http://localhost/NIC/css/dist/img/avatar00.png" style='width:70px; height:70px;' alt="User Avatar">
                  <?php }?>  
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
                                  if($s_name[$i]=="month")
                                      echo "Month"." <span class='float-right badge bg-primary' style='width:70px; height:20px;'>".$month[$draft_data->$row]."</span>";
                                  else
                                      echo "$s_name[$i]"." <span class='float-right badge bg-primary' style='width:70px; height:20px;'>".$draft_data->$row."</span>";
                              }
                              else{
                                if($s_name[$i]=="month"){
                                  echo "Month"." <span class='float-right badge bg-primary' style='width:70px; height:20px;'>"."NULL"."</span>";
                                }else{
                                  echo $s_name[$i]." <span class='float-right badge bg-primary' style='width:70px; height:20px;'>"."NULL"."</span>";
                                }
                              }
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
      <!--/.col (right) -->
        
      </div>
      <!-- /.row -->
    </div><!-- /.container-fluid -->
  </section>
</div>

<div class="modal fade" id="modal-sm">
<?php
  $attri1 = array('method' => 'POST', 'id' => 'draft'); 
  echo form_open("",$attri1);?>
      <!--<form method="POST" id='draft' action="">-->
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
            for($x=$year-1;$x>=$year_range->financial_year_range;$x--){
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
      <!--</form>-->
      <?php //echo form_close('');?>
        <!-- /.modal-dialog -->
      </div>

<script src="http://localhost/NIC/css/plugins/overlayScrollbars/js/jquery.overlayScrollbars.min.js"></script>
<script src="http://localhost/NIC/js/notify.js"></script>
<script type="text/javascript" >

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
        $("#div123").load(location.href + " #div123");
        $("#err").notify("Value accepted",{position:"right", className: 'success'});
        console.log("submit");
      }
    }
  });
});
</script>