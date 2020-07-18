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
            <li class="breadcrumb-item"><a href="http://localhost/NIC/index.php/<?php echo $this->cache->get('User_type'.$var)['user_privilege'][0]['link']?>"><?php echo $this->cache->get('User_type'.$var)['user_privilege'][0]['page_name']?></a></li>
            <li class="breadcrumb-item active">Meeting Schedule</li>
          </ol>
        </div>
      </div>
    </div><!-- /.container-fluid -->
  </section>
<div class="card card-primary card-outline mx-auto" style="max-width: 700px">
  <!-- Content Header (Page header) -->
  <section class="content-header">
    <div class="container-fluid">
      <?php echo form_open("Super_Admin/schedule",'id="form"');?>
      
        <div class="row">
          <div class="col-md-6">
            <div class="info-box bg-black">
              <span class="info-box-icon bg-success"><i class="far fa-calendar-alt"></i></span>
              <div class="info-box-content">
                  <span class="info-box-text"><strong>Previous Start Time</strong></span>
                  <span class="info-box-number"><small><?php echo $start_time;?></small></span>
              </div>
            </div>
          </div>
          <div class="col-md-6">
            <div class="info-box bg-black">
              <span class="info-box-icon bg-warning"><i class="far fa-calendar-alt"></i></span>

                <div class="info-box-content">
                  <span class="info-box-text"><strong>Previous End Time</strong></span>
                  <span class="info-box-number"><small><?php echo $end_time;?></small></span>
                </div>
              </div>
            </div>
          </div>
        </div>
        <div class="row">
          <div class="col-md-12">
            <div class="card card-primary ">
              <div class="card-header">
                <h1 class="card-title" style="color:white; font-size:30px;"><Strong>Schedule a Meeting</Strong></h1>
              </div>
              <div class="card-body">
                <!-- Date range -->
                <div class="form-group">
                  <label>Pick the Start time and end time from the dropdown list:</label>

                  <div class="input-group">
                    <div class="input-group-prepend">
                      <span class="input-group-text">
                        <i class="far fa-calendar-alt"></i>
                      </span>
                    </div>
                    <input type="text" name="date" class="form-control float-right" id="reservation">
                  </div>
                  <!-- /.input group -->
                </div>
                <!-- /.form group -->
                
              </div>
              <div class="card-footer">
                  <input type="submit" value="Schedule" name="sub" class="btn btn-primary "style="display: block; margin-left: auto;  margin-right: auto; background:#007BFF;"></input>
              </div>
              <!-- /.card-body -->
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
  $(function () {
    //Date picker
    $('#reservation').daterangepicker({
      timePicker: true,
      startDate: moment().startOf('hour'), 
      endDate: moment().startOf('hour').add(32, 'hour'),
      locale: {
        format: 'YYYY-MM-DD HH:mm'
      }
    })
  })
</script>
<script src="http://localhost/NIC/css/plugins/overlayScrollbars/js/jquery.overlayScrollbars.min.js"></script>
<script src="http://localhost/NIC/js/notify.js"></script>
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
        //$("form")[0].reset();
        $("#form").load(location.href+" #form>*","");
        //fetchType();
        $("#err").notify("Value accepted",{position:"left", className: 'success'});
        console.log("submit");
      }
    }
  });
});
</script>
