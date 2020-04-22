
<div class="content-wrapper">
<h2> SCHEDULE A </b>MEETING</b></h2>
<div class="card card-primary card-outline mx-auto" style="max-width: 700px">
  <!-- Content Header (Page header) -->
  <section class="content-header">
    <div class="container-fluid">
      <?php echo form_open_multipart("");?>
      
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
