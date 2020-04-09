<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
  <!-- Content Header (Page header) -->
  <section class="content-header">
    <div class="container-fluid">
      <div class="row mb-2">
        <div class="col-sm-6">
          <h1>Edit Profile</h1>
        </div>
        <div class="col-sm-6">
          <ol class="breadcrumb float-sm-right">
            <li class="breadcrumb-item"><a href="#">Dashboard</a></li>
            <li class="breadcrumb-item active">Edit Profile</li>
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
              $this->load->model('profile_model');
            ?>
            <div class="box-body box-profile">
              <?php
                if($image==""||$image==NULL){
                  echo "<img id='blah' src='http://localhost/NIC/css/dist/img/avatar04.png' class='profile-user-img img-responsive img-circle' alt='User Image' style='display: block; margin-left: auto;  margin-right: auto; width:200px; height:200px; margin-bottom: 10px;'>";
                }
                else{
                  echo "<img id ='blah' src='data: image/jpeg; base64, $image' class='profile-user-img img-responsive img-circle'alt='User profile picture' style='display: block; margin-left: auto;  margin-right: auto; width:200px; height:200px; margin-bottom: 10px;'>";
                }
              ?>
              <input type="file" name="file" id ="file" class="inputfile"  accept=".png, .jpg, .jpeg, .JFIF" /> <label for="file">CHOOSE IMAGE ⮭</label> 
              <style>
                .inputfile {
                  width: 0.1px; height: 0.1px; opacity: 0; overflow: hidden; position: absolute; z-index: -1;
                }
                .inputfile + label {
                    display: block; margin-left: auto;  margin-right: auto; width: 175px; background:#3E72D6; border-radius: 25px;
                    font-size: 1.25em; color: white; padding-left:8px; padding-right:8px; text-align:center;
                }
                .inputfile:focus + label,
                .inputfile + label:hover {
                    background-color: green;
                }
                .inputfile + label {
                  cursor: pointer; /* "hand" cursor */
                }
              </style>
              <h3 class="profile-username text-center"><b><?php echo $f_name." ".$m_name." ".$l_name;?></b></h3>
              <div class="form-group">
                <label for="username">Username</label>
                <input type="text" class="form-control" id="username" value="<?php echo $username ?>" disabled>
                <p class='error invalid-feedback'><small></small></p>
              </div>
              <div class="form-group">
                <label for="first">First Name</label>
                <input type="text" class="form-control" name="first" id="first" placeholder="Enter First Name" value="<?php if(form_error('first')){echo set_value('first');}else{echo $f_name;}?>">
                <p class='error invalid-feedback'><small><?php echo form_error('first'); ?></small></p>
              </div>
              <div class="form-group">
                <label for="mid">Middle Name</label>
                <input type="text" class="form-control" name="mid" id="mid" placeholder="Enter Middle Name" value="<?php if(form_error('mid')){echo set_value('mid');}else{echo $m_name;}?>">
                <p class='error invalid-feedback'><small><?php echo form_error('mid'); ?></small></p>
              </div>
              <div class="form-group">
                <label for="last">Last Name</label>
                <input type="text" name="last" class="form-control" id="last" placeholder="Enter Last Name" value="<?php if(form_error('last')){echo set_value('last');}else{echo $l_name;}?>">
                <p class='error invalid-feedback'><small><?php echo form_error('last'); ?></small></p>
              </div>
              <div class="form-group">
                <label for="mob">Phone</label>
                <input type="text" class="form-control" id="mob" name="mob" placeholder="Enter Phone Number" value="<?php if(form_error('mob')){echo set_value('mob');}else{echo $mobile;}?>">
                <p class='error invalid-feedback'><small><?php echo form_error('mob'); ?></small></p>
              </div>
              <div class="form-group">
                <label for="email">Email</label>
                <input type="text" class="form-control" id="email" name="email" placeholder="Enter Email Address" value="<?php if(form_error('email')){echo set_value('email');}else{echo $email;}?>">
                <p class='error invalid-feedback'><small><?php echo form_error('email'); ?></small></p>
              </div>
              <div class="form-group">
                <label>Designation</label>
                <select class="form-control" id="desig" name="desig">
                  <option><?php if(form_error('desg')){echo set_value('desig');}else{echo $designation;}?></option>
                  <option>District Magistrate</option>
                  <option>Additional District Magistrate(G)</option>
                  <option>Additional District Magistrate</option>
                  <option>Sub-Divisional Officer</option>
                  <option>Block Development Officer</option>
                  <option>Asst. Manager</option>
                </select>
                <p class='error invalid-feedback'><small><?php echo form_error('desig'); ?></small></p>
              </div>
              <div class="form-group">
                <label>District</label>
                <select class="form-control" id ="dist" name= "dist" >
                  <option><?php if(form_error('dist')){echo set_value('dist');}else{echo $district;}?></option>
                  <option value="Alipurduar">Alipurduar</option>
                  <option value="Bankura">Bankura</option>
                  <option value="Bardhaman">Bardhaman</option>
                  <option value="Birbhum">Birbhum</option>
                  <option value="Cooch Behar">Cooch Behar</option>
                  <option value="Darjeeling">Darjeeling</option>
                  <option value="Hooghly">Hooghly</option>
                  <option value="Howrah">Howrah</option>
                  <option value="Jalpaiguri">Jalpaiguri</option>
                  <option value="Jhargram">Jhargram</option>
                  <option value="Kolkata">Kolkata</option>
                  <option value="Kalimpong">Kalimpong</option>
                  <option value="Malda">Malda</option>
                  <option value="Medinipur(East)">Medinipur(East)</option>
                  <option value="Medinipur(West)">Medinipur(West)</option>
                  <option value="Murshidabad">Murshidabad</option>
                  <option value="Nadia">Nadia</option>
                  <option value="North Dinajpur">North Dinajpur</option>
                  <option value="South Dinajpur">South Dinajpur</option>
                  <option value="North 24 Parganas">North 24 Parganas</option>
                  <option value="South 24 Parganas">South 24 Parganas</option>
                  <option value="Purulia">Purulia</option>
                </select>
                <p class='error invalid-feedback'><small><?php echo form_error('dist'); ?></small></p>
              </div>
            </div>
          <!-- /.card-body -->
          <?php echo validation_errors();?>
          <div class="card-footer">
          
            <button type="submit" name= "sub1" id="sub1" class="btn btn-primary">Submit</button>
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