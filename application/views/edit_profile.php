<!--Edit profile view page-->
<!---------------------------------------------------------------------------------------------------------------------------------------->
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
            <li class="breadcrumb-item"><a href="http://localhost/NIC/index.php/Summary/profile">Profile</a></li>
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
              echo form_open_multipart('Summary/edit','id="form" method="post"');
            ?>
            <div class="box-body box-profile">
              <?php
                if($image==""||$image==NULL){
                  echo "<img id='blah' src='http://localhost/NIC/css/dist/img/avatar00.png' class='profile-user-img img-responsive img-circle' alt='User Image' style='display: block; margin-left: auto;  margin-right: auto; width:200px; height:200px; margin-bottom: 10px;'>";
                }
                else{
                  echo "<img id ='blah' src='data:image/jpeg;base64,$image' class='profile-user-img img-responsive img-circle'alt='User profile picture' style='display: block; margin-left: auto;  margin-right: auto; width:200px; height:200px; margin-bottom: 10px;'>";
                }
              ?>
              <input type="file" name="file" id ="file" class="inputfile"  accept="image/*" /> <label for="file"><span class="fas fa-upload"></label> 
              <input name="but1" id="but1" class="delfile" ><label for="but1"><span class="fas fa-trash"></label></input>
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
                <input type="text" class="form-control" id="email" name="email" placeholder="Enter Email Address" value="<?php echo $username;?>" disabled>
                <p class='error invalid-feedback'><small><?php echo form_error('email'); ?></small></p>
              </div>
              <div class="form-group">
                <label for="office">Office</label>
                <input type="text" class="form-control" id="office" name="office" placeholder="Enter Office" value="<?php echo $off;?>" disabled>
                <p class='error invalid-feedback'><small></small></p>
              </div>
              <div class="form-group">
                <label for="department">Department</label>
                <input type="text" class="form-control" id="department" name="department" placeholder="Enter Department" value="<?php echo $dep;?>" disabled>
                <p class='error invalid-feedback'><small></small></p>
              </div>
              <div class="form-group">
                <label for="designation">Designation</label>
                <input type="text" class="form-control" id="designation" name="designation" placeholder="Enter Designation" value="<?php echo $desi;?>" disabled>
                <p class='error invalid-feedback'><small></small></p>
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
          <div id="errors" style="color:red;"></div>
          <div class="card-footer">
            <button type="submit" name= "submit" id="submit" class="btn btn-primary" style="display: block; margin-left: auto;  margin-right: auto;">Save Profile Details</button>
          </div>
      </div>
    </div>
  </div>
  <section>
</div>
<script src="http://localhost/NIC/css/plugins/overlayScrollbars/js/jquery.overlayScrollbars.min.js"></script>
<script src="http://localhost/NIC/js/notify.js"></script>
<script type="text/javascript" >
//makes generic or editable fields enabled so that userr can edit them----------------------------------------------
var input=document.getElementsByClassName('form-control');
for(var i=0;i<input.length;i++){
  if(input[i].value=='GENERIC' || input[i].value=='EDITABLE'){
    input[i].disabled=false;
    //input[i].placeholder="Enter";
    if(input[i].name=="office")
      input[i].value="<?php echo $office; ?>";
    if(input[i].name=="department")
      input[i].value="<?php echo $department; ?>";
    if(input[i].name=="designation")
      input[i].value="<?php echo $designation; ?>";
  }
}
//file(image) entry---------------------------------------------------------------------------------------------
var x=1;
if($('#blah').attr('src')=="http://localhost/NIC/css/dist/img/avatar00.png")
  x="";
function toDataURL(url, callback) {
  var xhr = new XMLHttpRequest();
  xhr.onload = function() {
    var reader = new FileReader();
    reader.onloadend = function() {
      $('#blah').attr('src', reader.result);
      callback(reader.result);
    }
    reader.readAsDataURL(xhr.response);
  };
  xhr.open('GET', url);
  xhr.responseType = 'blob';
  xhr.send();
}
$("#file").change(function(){
    toDataURL(URL.createObjectURL(this.files[0]), function(dataUrl) {
  });
  x=1;
  $('#but1').val(0);
});
$("#but1").on("click",function(event){
  $('#blah').attr('src','http://localhost/NIC/css/dist/img/avatar00.png');
  $('#but1').val(1);
  x="";
});
//form submit for edit profile--------------------------------------------------------------------------------------
var csrf_token='';
$("#form").on("submit", function (event) {
  event.preventDefault();
  if(csrf_token==''){
    csrf_token='<?php echo $this->security->get_csrf_hash(); ?>';
  }
  var formData = new FormData(this);
  formData.append('<?php echo $this->security->get_csrf_token_name(); ?>',csrf_token);
  if(x=""){
    formData.delete('file');
  }
  console.log(formData);
  $.ajax({
    url: $('#form').attr('action'),
    type: "POST",
    data: formData,
    contentType: false,
    processData: false,
    cache: false,
    //dataType: 'html',
    error: function(){
			console.log("Form cannot be submitted...");
		},
    cache: false,
    success: function(result){
      console.log(result);
      var k=JSON.parse(result);
      //console.log(k);
      if (k.csrf_token){
        csrf_token=k.csrf_token;
      }
      if(k.res==0){
        $('#errors').html(k.errors);
        console.log("error");
      }else{ 
        $('#errors').html("");
        $("#form")[0].reset();
        //$("#form").load(location.href+" #refresh>*","");
        //$('#example1').DataTable().ajax.reload();
        //$("#submit").notify("Value accepted",{position:"left", className: 'success'});
        alert("Profile Updated Successfully");
        window.location.assign("http://localhost/NIC/index.php/Summary/profile")
        console.log("submit");
      }
    }
  });
});
</script>

<style>
.inputfile {
  width: 0.1px; height: 0.1px; opacity: 0; overflow: hidden; position: absolute; z-index: -1;
}
.inputfile + label {
  display: block; margin-left: auto;  margin-right: auto; width: 50px; background:#3E72D6; border-radius: 10px;
  font-size: 1.25em; color: white; padding-left:8px; padding-right:8px; text-align:center;
}
.inputfile:focus + label,
.inputfile + label:hover {
  background-color: green;
}
.inputfile + label {
  cursor: pointer; /* "hand" cursor */
}

.delfile {
  width: 0.1px; height: 0.1px; opacity: 0; overflow: hidden; position: absolute; z-index: -1;
}
.delfile + label {
  display: block; margin-left: auto;  margin-right: auto; width: 50px; background:#3E72D6; border-radius: 10px;
  font-size: 1.25em; color: white; padding-left:8px; padding-right:8px; text-align:center;
}
.delfile:focus + label,
.delfile + label:hover {
  background-color: red;
}
.delfile + label {
  cursor: pointer; /* "hand" cursor */
}
</style>