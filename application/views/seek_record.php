<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
  <!-- Content Header (Page header) -->
  <section class="content-header">
    <div class="container-fluid">
      <div class="row mb-2">
        <div class="col-sm-6">
          <h1>SHOW <b>RECORD</b></h1>
        </div>
        <div class="col-sm-6">
          <ol class="breadcrumb float-sm-right">
            <li class="breadcrumb-item"><a href="http://localhost/NIC/index.php/Super_Admin">Super Admin</a></li>
            <li class="breadcrumb-item active">Show Record</li>
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
              echo form_open_multipart("");
            ?>
              <h3 class="profile-username text-center"><b><?php echo "Enter Record Details";?></b></h3>
              <div class="form-group">
                <label for="uname">Username</label>
                <input type="text" class="form-control" name = "uname" id="uname" placeholder="Enter Username" value="<?php if(form_error('uname')){echo set_value('uname');}else{echo "";}?>">
                <p class='error invalid-feedback'><small></small></p>
              </div>
              <div class="form-group">
                <label>Scheme Name</label>
                <select class="form-control" id ="scheme" name= "scheme" >
                  <?php  foreach($scheme as $key){ 
                   echo "<option value=".$key['short_name'].">".$key['name']."</option>";
                  } ?>
                </select>
              </div>
              <div class="form-group">
                <label>Nodal Value</label>
                <select class="form-control" id ="nodal" name= "nodal" >
                  <option value="1">Accepted Data</option>
                  <option value="0">Data that is never checked</option>
                  <option value="-1">Discarded Data</option>
                  </select>
                  </div>
              <div class="form-group">
                <label for="year">Year</label>
                <select name="year" class="form-control" id="year">
                <?php $year=intval(date('Y')); 
                echo "<option value='".$year."' selected>".$year."</option>";
                for($x=$year-1;$x>=$year_range->financial_year_range;$x--){
                              echo "<option value='".$x."'>".$x."</option>";
                            }?>
                </select>
                <p class='error invalid-feedback'><small><?php echo form_error('year'); ?></small></p>
              </div>
              <div class="form-group">
                <label for="smonth"> Starting Month</label>
                <select class="form-control" id="smonth" name="smonth">
                <option value='1' selected>January</option>
                <?php for($x=2;$x<=12;$x++){
                            echo "<option value='".$x."'>".$month[$x]."</option>";
                          }?>
                </select>
                <p class='error invalid-feedback'><small><?php echo form_error('smonth'); ?></small></p>
              </div>
              <div class="form-group">
                <label for="fmonth">Final Month</label>
                <select class="form-control" id="fmonth" name="fmonth">
                <option value='1' selected>January</option>
                <?php for($x=2;$x<=12;$x++){
                            echo "<option value='".$x."'>".$month[$x]."</option>";
                          }?>
                </select>
                <p class='error invalid-feedback'><small><?php echo form_error('fmonth'); ?></small></p>
              </div>
            </div>
          <!-- /.card-body -->
          <?php //echo validation_errors();?>
          <div class="card-footer">
            <button type="submit" name= "sub1" id="sub1" class="btn btn-primary" style="display: block; margin-left: auto;  margin-right: auto;">Show Details</button>
          </div>
      </div>
    </div>
  </div>
  <div class="col-md-8">
    <div class="card card-primary mx-auto">
    <?php if ($fields != NULL){ 
            $i =0;?>
            <div class="card-header">
              <h2 class="card-title"><?php foreach($scheme as $row){if($scheme_name==$row['short_name']) echo $row['name'];}?></h2>
            </div>
            <div class="card-body">
              <h4><b>Nodal Check: </b><?php if($nodal==1){echo 'Accepted';}elseif($nodal==-1){echo "Rejected";}else{echo "Never Checked";}?></h4>
              <table class="table table-bordered table-striped table-hover table-responsive">
                <thead>
                <tr>
      <?php foreach($fields as $key){
                if($key == 'id_pk' || $key == 'login_id_fk' || $key == 'inserted_at' ||$key=='ip' || $key=='location_code' || $key=='nodal_check'){
                  $i++;
                  continue;
                }else if($key=='month'){
                  echo "<th>"."Month"."</th>";
                  $i++;
                }
                else if($key=='session'){
                  echo "<th>"."Session"."</th>";
                  $i++;
                }
                else{
                  foreach($scheme_attri as $row){
                    if($key==$row['attri_name'])
                      echo "<th>".$row['actual_name']."</th>";
                  }
                  $i++;
                }
            } 
            

      ?>

      
      </tr>
      </thead>
      <tbody>
              <?php foreach($dad as $row){
                        $mnth = array('5','January','February','March','April','May','June','July','August','September','October','November','December');
                        echo "<tr>";
                        foreach($row as $key=>$value){
                            if($key == 'id_pk' || $key == 'login_id_fk' || $key == 'inserted_at' ||$key=='ip' || $key=='location_code' || $key=='nodal_check'){
                                continue;
                            }else if($key == 'month'){
                                echo "<td>".$mnth[$value]."</td>";
                            }else{
                                echo "<td>".$value."</td>";
                            }
                        }
                        echo "</tr>";
                        $i++;
                    } ?>
      </tbody>
                  </table>

      <?php } ?>
            <?php if ($fields == NULL){ ?>
              <div class="card-body">
              <table class="table table-bordered table-striped table-hover">
              <thead><tr><th><center>Records Table</center></th></tr></thead>
              <tbody><tr><td><center>No Records To Show</center></td></tr><tbody></table>
              </div>
      
            <?php } ?>
            </div>
            </div>
            </div>
            </div>
          
  <section>
</div>
<script>
function readURL(input) {
        if (input.files && input.files[0]) {
            var reader = new FileReader();
            
            reader.onload = function (e) {
                $('#blah').attr('src', e.target.result);
            }
            
            reader.readAsDataURL(input.files[0]);
        }
    }
    
    $("#file").change(function(){
        readURL(this);
    });
</script>
<script type="text/javascript">
        document.getElementById("file").value = getSavedValue("file");
        function saveValue(e){
            var id = e.id;  
            var val = e.value;
            localStorage.setItem(id, val);
        }
        function getSavedValue  (v){
            if (!localStorage.getItem(v)) {
                return val;
            }
            return localStorage.getItem(v);
        }
</script>