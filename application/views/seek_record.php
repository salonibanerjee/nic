<?php if($check == 'false')
{ ?>
<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
  <!-- Content Header (Page header) -->
  <section class="content-header">
    <div class="container-fluid">
      <div class="row mb-2">
        <div class="col-sm-6">
          <h1>Show Record</h1>
        </div>
        <div class="col-sm-6">
          <ol class="breadcrumb float-sm-right">
            <li class="breadcrumb-item"><a href="#">Dashboard</a></li>
            <li class="breadcrumb-item active">Show Record</li>
          </ol>
        </div>
      </div>
    </div><!-- /.container-fluid -->
  </section>
 

  <section class="content">
    <div class="container-fluid">
      <!-- general form elements -->
      <div class="card card-primary mx-auto" style="max-width: 700px">
        
        <!-- form start -->
        
          <div class="card-body">
            <?php
              echo form_open_multipart("");
            ?>
              <h3 class="profile-username text-center"><b><?php echo "Fill up the details to see record";?></b></h3>
              <div class="form-group">
                <label for="uname">Username</label>
                <input type="text" class="form-control" name = "uname" id="uname" value="<?php echo $username ?>" >
                <p class='error invalid-feedback'><small></small></p>
              </div>
              <div class="form-group">
                <label for="scheme">Scheme Name</label>
                <input type="text" class="form-control" name="scheme" id="scheme" placeholder="Enter Scheme Name" value="<?php if(form_error('scheme')){echo set_value('scheme');}else{echo $f_name;}?>">
                <p class='error invalid-feedback'><small><?php echo form_error('scheme'); ?></small></p>
              </div>
              <div class="form-group">
                <label for="nodal">Nodal value</label>
                <input type="text" class="form-control" name="nodal" id="nodal" placeholder="Enter Nodal Value" value="<?php if(form_error('nodal')){echo set_value('nodal');}else{echo $m_name;}?>">
                <p class='error invalid-feedback'><small><?php echo form_error('nodal'); ?></small></p>
              </div>
              <div class="form-group">
                <label for="year">Year</label>
                <input type="text" name="year" class="form-control" id="year" placeholder="Enter Year" value="<?php if(form_error('year')){echo set_value('year');}else{echo $l_name;}?>">
                <p class='error invalid-feedback'><small><?php echo form_error('year'); ?></small></p>
              </div>
              <div class="form-group">
                <label for="smonth"> Starting Month</label>
                <input type="text" class="form-control" id="smonth" name="smonth" placeholder="Enter Starting Month" value="<?php if(form_error('smonth')){echo set_value('smonth');}else{echo $mobile;}?>">
                <p class='error invalid-feedback'><small><?php echo form_error('smonth'); ?></small></p>
              </div>
              <div class="form-group">
                <label for="fmonth">Final Month</label>
                <input type="text" class="form-control" id="fmonth" name="fmonth" placeholder="Enter Final Month" value="<?php if(form_error('fmonth')){echo set_value('fmonth');}else{echo $mobile;}?>">
                <p class='error invalid-feedback'><small><?php echo form_error('fmonth'); ?></small></p>
              </div>
            </div>
          <!-- /.card-body -->
          <?php echo validation_errors();?>
          <div class="card-footer">
            <button type="submit" name= "sub1" id="sub1" class="btn btn-primary" style="display: block; margin-left: auto;  margin-right: auto;">Show Details</button>
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
<?php } 

if($check == 'true') { 
  //------------------------------------------------------------------------------
  ?>
  <!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
  <!-- Content Header (Page header) -->
  <section class="content-header">
    <div class="container-fluid">
      <div class="row mb-2">
        <div class="col-sm-6">
          <h1>Record-------------------</h1>
        </div>
        <div class="col-sm-6">
          <ol class="breadcrumb float-sm-right">
            <li class="breadcrumb-item"><a href="#">Dashboard</a></li>
            <li class="breadcrumb-item active">Show Record</li>
          </ol>
        </div>
      </div>
    </div><!-- /.container-fluid -->
  </section>
 

  <section class="content">
    <div class="container-fluid">
      <!-- general form elements -->
      <div class="card card-primary mx-auto" style="max-width: 700px">
        
        <!-- form start -->
        
          <div class="card-body">
            <?php
              echo form_open_multipart("");
            ?>
              <h3 class="profile-username text-center"><b><?php echo "Fill up the details to see record";?></b></h3>
              <div class="form-group">
                <label for="uname">Username</label>
                <input type="text" class="form-control" name = "uname" id="uname" value="<?php echo $username ?>" >
                <p class='error invalid-feedback'><small></small></p>
              </div>
              <div class="form-group">
                <label for="scheme">Scheme Name</label>
                <input type="text" class="form-control" name="scheme" id="scheme" placeholder="Enter Scheme Name" value="<?php if(form_error('scheme')){echo set_value('scheme');}else{echo $f_name;}?>">
                <p class='error invalid-feedback'><small><?php echo form_error('scheme'); ?></small></p>
              </div>
              <div class="form-group">
                <label for="nodal">Nodal value</label>
                <input type="text" class="form-control" name="nodal" id="nodal" placeholder="Enter Nodal Value" value="<?php if(form_error('nodal')){echo set_value('nodal');}else{echo $m_name;}?>">
                <p class='error invalid-feedback'><small><?php echo form_error('nodal'); ?></small></p>
              </div>
              <div class="form-group">
                <label for="year">Year</label>
                <input type="text" name="year" class="form-control" id="year" placeholder="Enter Year" value="<?php if(form_error('year')){echo set_value('year');}else{echo $l_name;}?>">
                <p class='error invalid-feedback'><small><?php echo form_error('year'); ?></small></p>
              </div>
              <div class="form-group">
                <label for="smonth"> Starting Month</label>
                <input type="text" class="form-control" id="smonth" name="smonth" placeholder="Enter Starting Month" value="<?php if(form_error('smonth')){echo set_value('smonth');}else{echo $mobile;}?>">
                <p class='error invalid-feedback'><small><?php echo form_error('smonth'); ?></small></p>
              </div>
              <div class="form-group">
                <label for="fmonth">Final Month</label>
                <input type="text" class="form-control" id="fmonth" name="fmonth" placeholder="Enter Final Month" value="<?php if(form_error('fmonth')){echo set_value('fmonth');}else{echo $mobile;}?>">
                <p class='error invalid-feedback'><small><?php echo form_error('fmonth'); ?></small></p>
              </div>
            </div>
          <!-- /.card-body -->
          <?php echo validation_errors();?>
          <div class="card-footer">
            <button type="submit" name= "sub1" id="sub1" class="btn btn-primary" style="display: block; margin-left: auto;  margin-right: auto;">Show Details</button>
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
  <?php } ?>