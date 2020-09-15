<!--Meeting Schedule view-->
<!---------------------------------------------------------------------------------------------------------------------------------------->
<div class="content-wrapper">
<section class="content-header">
    <div class="container-fluid">
      <div class="row mb-2">
        <div class="col-sm-6">
          <h1>MEETING <b>SCHEDULE</b></h1>
        </div>
        <div class="col-sm-6">
          <ol class="breadcrumb float-sm-right" id="err">
            <li class="breadcrumb-item"><a href="<?php echo base_url();?><?php echo $this->cache->get('User_type'.$var)['user_privilege'][0]['link']?>"><?php echo $this->cache->get('User_type'.$var)['user_privilege'][0]['page_name']?></a></li>
            <li class="breadcrumb-item active">Meeting Schedule</li>
          </ol>
        </div>
      </div>
    </div><!-- /.container-fluid -->
  </section>
<div class="card card-primary card-outline" style="margin:10px;">
  <!-- Content Header (Page header) -->
  <section class="content-header">
    <div class="container-fluid">
      <?php echo form_open("Super_Admin/schedule",'id="form"');?>
      <div class='row'>
      
        <div class='col-md-6'>
        <div class="row">
          <div class="col-md-12">
            <div class="card card-primary ">
              <div class="card-header">
                <h1 class="card-title" style="color:white; font-size:30px;"><Strong>Schedule a Meeting</Strong></h1>
              </div>
              <div class="card-body">
                <!-- Date range -->
                <div class="form-group">
                  <label>Meeting Date</label>
                  <div class="input-group">
                    <div class="input-group-prepend">
                      <span class="input-group-text">
                        <i class="far fa-calendar-alt"></i>
                      </span>
                    </div>
                    <input name='date' id='date' style="cursor:pointer;" type='text' class='form-control'>
                  </div>
                  <!-- /.input group -->
                </div>
                <!-- /.form group -->
                <div class='row'>
                <div class="form-group col-md-6">
                  <label>Pick Start Time:</label>
                  <div class="input-group">
                    <div class="input-group-prepend">
                      <span class="input-group-text">
                        <i class="fas fa-clock"></i>
                      </span>
                    </div>
                    <input name='stime' id='stime' style="cursor:pointer;" class='form-control' type='text' >
                  </div>
                  <!-- /.input group -->
                </div>
                <div class="form-group col-md-6">
                  <label>Pick End Time:</label>
                  <div class="input-group">
                    <div class="input-group-prepend">
                      <span class="input-group-text">
                        <i class="fas fa-clock"></i>
                      </span>
                    </div>
                    <input name='etime' class='form-control' style="cursor:pointer;" id='etime' type='text'  >
                  </div>
                  <!-- /.input group -->
                </div>
              </div>
                
              </div>
              <div id="errors" style="color:red; margin:10px;"></div>
              <div class="card-footer">
                  <input type="submit" value="Schedule" name="sub" class="btn btn-primary "style="display: block; margin-left: auto;  margin-right: auto; background:#007BFF;"></input>
              </div>
              <!-- /.card-body -->
            </div>
          </div>
        </div>
      </div>
      <div class="col-md-6" id="ref">
        <div class="row justify-content-center">
          <div class="col-md-8">
            <div class="info-box bg-black">
              <span class="info-box-icon bg-success"><i class="far fa-calendar-alt"></i></span>
              <div class="info-box-content">
                  <span class="info-box-text"><strong>Previous Start Time</strong></span>
                  <span class="info-box-number"><small><?php echo $start_time;?></small></span>
              </div>
            </div>
          </div>
          <div class="col-md-8">
            <div class="info-box bg-black">
              <span class="info-box-icon bg-warning"><i class="far fa-calendar-alt"></i></span>

                <div class="info-box-content">
                  <span class="info-box-text"><strong>Previous End Time</strong></span>
                  <span class="info-box-number"><small><?php echo $end_time;?></small></span>
                </div>
              </div>
            </div>
          </div>
          <div class="row justify-content-center">
            <div class="info-box" style="background: #FFD8D8; cursor:pointer;" onmouseover="this.style.background='#FF8989'"
              onmouseout="this.style.background='#FFD8D8'" onclick="show()">
                <span class="info-box-icon bg-danger"><i class="fas fa-trash-alt"></i></span>

                  <div class="info-box-content my-auto">
                    <span class="info-box-text"><strong>Cancel Scheduled Meeting</strong></span>
                  </div>
                </div>
          </div>
          <div class="row" id='hide' style="display:none;">
            <div class="row justify-content-center">
            <h4 class="justify-content-center" style="text-align:center"><b>Are you sure you want to cancel this meeting?<b></h4>
            </div>
            <div class="row">
            <div class='col-md-6'>
                <a class="btn btn-block btn-outline-success mx-auto"  style="cursor:pointer;" onclick="deletem()">Yes</a>
            </div>
            <div class='col-md-6'>
                <a class="btn btn-block btn-outline-danger mx-auto" class="form-control"  style="cursor:pointer;" onclick="hide()">No</a>
            </div></div>
            
          </div>
        </div>
</div>
      
      </div>  
    </div>
  </section>
</div>
</div>

<!-- Page script -->
<script>
$(function() {
   $('#date').daterangepicker({
            timePicker : false,
            singleDatePicker:true,
            locale:{format: 'DD-MM-YYYY'}
   });
})
  $(function() {
   $('#stime').daterangepicker({
            timePicker : true,
            singleDatePicker:true,
            timePicker24Hour : true,
            timePickerIncrement : 1,
            locale : {
                format : 'HH:mm'
            }
        }).on('show.daterangepicker', function(ev, picker) {
            picker.container.find(".calendar-table").hide();
   });
})
$(function() {
   $('#etime').daterangepicker({
            timePicker : true,
            singleDatePicker:true,
            timePicker24Hour : true,
            timePickerIncrement : 1,
            locale : {
                format : 'HH:mm'
            }
        }).on('show.daterangepicker', function(ev, picker) {
            picker.container.find(".calendar-table").hide();
   });
})
</script>
<script src="<?php echo base_url();?>css/plugins/overlayScrollbars/js/jquery.overlayScrollbars.min.js"></script>
<script src="<?php echo base_url();?>js/notify.js"></script>
<script type="text/javascript" >
//meeting schedule form submit------------------------------------------------------------
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
        //$("#form").load(location.href+" #form>*","");
        $("#ref").load(location.href+" #ref>*","");
        //fetchType();
        //$("#err").notify("Value accepted",{position:"left", className: 'success'});
        toastr.options={"timeOut":"10000","positionClass": "toast-top-center"}
        toastr.success('Meeting Scheduled Successfully');
        console.log("submit");
      }
    }
  });
});

function deletem(){
      $.ajax({
        url: "<?php echo base_url();?>Super_Admin/meeting_cancel",
        success: function(result){
            if(result=="cancelled"){
              //$("#mssg").notify("Meeting Cancelled",{position:"right", className: 'success'});
              toastr.options={"timeOut":"10000","positionClass": "toast-top-center"}
              toastr.success('Meeting Cancelled Successfully');
              $("#ref").load(location.href+" #ref>*","");
            }else if(result=="no meeting"){
              //$("#mssg").notify("No scheduled meeting to cancel",{position:"right", className: 'info'});
              toastr.options={"timeOut":"10000","positionClass": "toast-top-center"}
              toastr.info('No scheduled meeting to cancel');
              $("#ref").load(location.href+" #ref>*","");
            }
          }
      });
}

function show(){
  document.getElementById("hide").style.display = "block";
}

function hide(){
  document.getElementById("hide").style.display = "none";
}
</script>
