<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>MPR | DBA YEAR RANGE</title>
  <!-- Tell the browser to be responsive to screen width -->
  <meta name="viewport" content="width=device-width, initial-scale=1">
	<!--	Encryption-->
	<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/crypto-js/3.1.2/rollups/aes.js"></script>
	<!--	C:\xampp\htdocs\nic1\js\JavaScript_MD5\js-->
	<script type='text/javascript' src="<?php echo base_url();?>js/js-sha256-master/build/sha256.min.js"></script>
	
</head>
<div class="content-wrapper">
  <!-- Content Header (Page header) -->
  <section class="content-header">
    <div class="container-fluid">
      <div class="row mb-2">
        <div class="col-sm-6">
          <h1>SET  <b>YEAR RANGE</b></h1>
        </div>
        <div class="col-sm-6">
          <ol class="breadcrumb float-sm-right">
            <li class="breadcrumb-item"><a href="#">Super Admin</a></li>
            <li class="breadcrumb-item active">year range</li>
          </ol>
        </div>
      </div>
    </div><!-- /.container-fluid -->
  </section>
  <section class="content">
    <div class="container-fluid">
  <!-- /.login-logo -->
  <div class="row">
    <div class="col-md-6">
      <section class='content'>
          <div class='container-fluid'>
            <div class='row'>

              <div class="col-md-12" id='refresh'>
                <div class="card">
                  <div class="card-header bg-info">
                    <h3 class="card-title">Financial Year Range</strong></h3>
                  </div>
                  <!-- /.card-header -->
                  <div class="card-body" >
                    <table id="example1" class="table table-bordered table-striped table-hover" style="max-height:500px;">
                      <thead class="bg-warning">
                      <tr>
                        <th><center>Year</center></th>
                        <th><center>Month</center></th>
                      </tr>
                      </thead>
                        <tbody>
                            <th><center><?php echo $year_range->financial_year_range;?></center></th>
                            <th><center><?php echo $month[$year_range->month];?></center></th>
                        </tbody>
                      
                    </table>
                  </div>
                  <!-- /.card-body -->
                </div>
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
    <div class="col-md-6">
      <div class="card card-primary card-outline mx-auto" style="max-width: 500px">
        <div class="card-body login-card-body">
          <p class="login-box-msg"><strong>ENTER FINANCIAL YEAR RANGE DETAILS</strong></p>
          <?php echo form_open('Super_Admin/dba_fyear_range','id="form"');?>
          <!--<form method="POST" action="" id="form"> -->
            <div class="input-group mb-3">
            <select id='year' name="year" class="form-control">
                <?php $year=intval(date('Y')); 
                    echo "<option value='".$year."' selected>".$year."</option>";
                    for($x=$year-1;$x>=1950;$x--){
                                echo "<option value='".$x."'>".$x."</option>";
                        }?>
            </select>
              <div class="input-group-append">
                <div class="input-group-text">
                  <span class="fas fa-calendar"></span>
                </div>
              </div>
            </div>
            <div class="input-group mb-3">
            <select id='month' name="month" class="form-control">
                    <option value='1' selected>January</option>
                    <?php for($x=2;$x<=12;$x++){
                                  echo "<option value='".$x."'>".$month[$x]."</option>";
                                }?>
                    </select>
            </select>    
                <div class="input-group-append">
                <div class="input-group-text">
                  <span class="fas fa-calendar"></span>
                </div>
              </div>
            </div>
            <div id="errors" style="color:red;"></div>
            <div class="row">
              <div class="col-12">
                <button type="submit" id="submit" name="submit" value="Submit" class="btn btn-primary float-right" style="border-radius: 50%;" ><span class="fas fa-paper-plane"></span></button>
              </div>
              <!-- /.col -->
            </div>
          <!--</form>-->
        </div>
        <!-- /.login-card-body -->
      </div>
    </div>
  </div>
</div>
</section>
</div>
<!-- /.login-box -->

<!-- jQuery -->
<script src="../../plugins/jquery/jquery.min.js"></script>
<!-- Bootstrap 4 -->
<script src="../../plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
<!-- AdminLTE App -->
<script src="../../dist/js/adminlte.min.js"></script>


<script type="text/javascript">
  $("form").on("submit", function (event){
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
        var pos=result.indexOf('<!DOCTYPE html>');
        if(result[1]=='p'){
          $('#errors').html(result.slice(0,pos));
        }else{
          $('#errors').html("");
          //alert(result.slice(0,pos));
          window.location.href = result.slice(0,pos);
        }
      }
    });
  });
</script>
</body>
</html>


