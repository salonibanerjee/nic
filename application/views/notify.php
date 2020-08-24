<!--Notification view page-->
<!---------------------------------------------------------------------------------------------------------------------------------------->
<div class="content-wrapper">
  <!-- Content Header (Page header) -->
  <section class="content-header">
    <div class="container-fluid">
      <div class="row mb-2">
        <div class="col-sm-6">
          <h1>SEND <b>NOTIFICATIONS</b></h1>
        </div>
        <div class="col-sm-6">
          <ol class="breadcrumb float-sm-right">
            <li class="breadcrumb-item"><a href="<?php echo base_url();?><?php echo $this->cache->get('User_type'.$var)['user_privilege'][0]['link']?>"><?php echo $this->cache->get('User_type'.$var)['user_privilege'][0]['page_name']?></a></li>
            <li class="breadcrumb-item active">Notification</li>
          </ol>
        </div>
      </div>
    </div><!-- /.container-fluid -->
  </section>
  <section class="content">
    <div class="container-fluid">
  <!-- /.login-logo -->
  <div class="row">
    <div class="col-md-8">
      <section class='content'>
          <div class='container-fluid'>
            <div class='row'>

              <div class="col-md-12">
                <div class="card">
                  <div class="card-header bg-info">
                    <h3 class="card-title">Received Notifications</strong></h3>
                  </div>
                  <!-- /.card-header -->
                  <div class="card-body" id="refresh">
                    <table id="example1" class="table table-bordered table-striped table-hover equal-width">
                      <thead class="bg-warning">
                      <tr>
                        <th>ID</th>
                        <th>Title</th>
                        <th>Notification Body</th>
                      </tr>
                      </thead>
                      <tbody>
                      <?php
                          
                          $i=1;
                          foreach($noti1 as $row){
                            echo "<tr>";
                            echo "<td>".$row['audience_id']."-".$row['notification_id_pk']."</td>";
                            echo "<td>".$row['notification_head']."</td>";
                            echo "<td>".$row['notification_text']."</td>";
                            echo "</tr>";
                            $i++;
                          }
                      ?>
                      </tbody>
                      <tfoot>
                      <tr>
                        <!-- nothing for footer now -->
                      </tr>
                      </tfoot>
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
    <div class="col-md-4">
      <div class="card card-primary card-outline mx-auto" >
        <div class="card-body login-card-body">
        <p class="login-box-msg">
        <strong>
          <heading_noti>
            CUSTOM NOTIFICATIONS
          </heading_noti>
          </strong>
          </p>
          <?php echo form_open('Super_Admin/notify','id="form"');?>
          <!--<form method="POST" action="" id="form"> -->
            <div class="input-group mb-3">
              <input name="noti_head" id="noti_head" type="text" class="form-control" placeholder="Notification Title" >
              <div class="input-group-append">
                <div class="input-group-text">
                  <span class="fas fa-quote-right"></span>
                </div>
              </div>
            </div>
<script>
  $(document).ready(function () {
    openingstatus();

    function openingstatus(){
      $("radiobuttonsel").show();
      fetchDesig();
      fetchDesigonly();
      $('#audience_ut').val('');
      $('#audience_loc').val('');
      $('#audience_desig_only').val('');

      $("choose_desigloc").hide();//--------------------------------------------DONE--------------------------------------
      $("choose_desig_only").hide();
    }

    $("Hide_desig_loc").click(function () {//Toggle bar

      if($("Hide_desig_loc").text() == 'Click here to Broadcast to All')//BRD
      {    
        $('#audience_ut').val('-1');
        $('#audience_loc').val('-1');
        $('#audience_desig_only').val('-1');

        document.querySelector('input[name="radiosel"]').checked = false;
        $("radiobuttonsel").hide();
        
        $("choose_desigloc").hide();
        $("choose_desig_only").hide();
      }
      else if($("Hide_desig_loc").text() == 'Click here for Custom notification')//CST
      {     
        $('#audience_ut').val('');
        $('#audience_loc').val('');
        $('#audience_desig_only').val('');

        $("radiobuttonsel").show();        
        document.querySelector('input[name="radiosel"]').checked = false;        
      }

        $("Hide_desig_loc").fadeOut(function () {
            $("Hide_desig_loc").text(($("Hide_desig_loc").text() == 'Click here to Broadcast to All') ? 'Click here for Custom notification' : 'Click here to Broadcast to All').fadeIn();
        })

        $("heading_noti").fadeOut(function () {
            $("heading_noti").text(($("Hide_desig_loc").text() == 'Click here to Broadcast to All') ? 'CUSTOM NOTIFICATION':'BROADCAST NOTIFICATION').fadeIn();
        })

    })

    $("Refresh_page_after_submit").click(function () {//after submit js refresh
      if($("Hide_desig_loc").text() == 'Click here for Custom notification')//BRD
      {
        $('#audience_ut').val('-1');
        $('#audience_loc').val('-1');
        $('#audience_desig_only').val('-1');
        $("choose_desigloc").hide();  
      }      
    })


    function fetchType() {
      var audience_ut=$('#audience_ut').val()
      //console.log("fetchType"+audience_ut);
		  $("#audience_loc").empty();
		   if(csrf_token==""){
			   csrf_token = "<?php echo $this->security->get_csrf_hash();?>";
		   }
        $.ajax({
            url: "<?php echo base_url();?>Summary/getrelevantlocation",
			      data:{
				            "<?php echo $this->security->get_csrf_token_name();?>": csrf_token,
                    audience_ut:audience_ut
			      },
            type: "POST",
            dataType: 'json',
            error: function (jqXHR, textStatus, errorThrown) {
                console.log("error::" + textStatus, errorThrown);
			      },
            success: function (result){
				    console.log(result);
                var type_arr = result.data;
                var status = result.status;
				    if(result.csrf_token){
				    	csrf_token = result.csrf_token;
			  	  }
                if (status == 1) {
					          var type_item = "<option value=''  selected>" + "Select a Location" + "</option>";
                        $("#audience_loc").append(type_item);
                    $.each(type_arr, function (idx, val) {
                        var type_item = "<option value=" + val['code'] + ">" + val['area'] + "</option>";
                        $("#audience_loc").append(type_item);
                    });
                    var type_item = "<option value=" + "-1" + ">" + "Everywhere" + "</option>";
                        $("#audience_loc").append(type_item);
                }
            }
        });
	  }

    function fetchDesig() {
      $("#audience_ut").empty();
		   if(csrf_token==""){
			   csrf_token = "<?php echo $this->security->get_csrf_hash();?>";
		   }

       $.ajax({
            url: "<?php echo base_url();?>Summary/getfetchdesig",
			      data:{
				            "<?php echo $this->security->get_csrf_token_name();?>": csrf_token
			      },
            type: "POST",
            dataType: 'json',
            error: function (jqXHR, textStatus, errorThrown) {
                console.log("error::" + textStatus, errorThrown);
			      },
            success: function (result){
				    console.log(result);
                var type_arr = result.data;
                var status = result.status;
				    if(result.csrf_token){
				    	csrf_token = result.csrf_token;
			  	  }
                if (status == 1) {
					          var type_item = "<option value=''  selected>" + "Select User Type" + "</option>";
                        $("#audience_ut").append(type_item);
                    $.each(type_arr, function (idx, val) {
                        var type_item = "<option value=" + val['code'] + ">" + val['name'] + "</option>";
                        $("#audience_ut").append(type_item);
                    });
                    var type_item = "<option value=" + "-1" + ">" + "Everyone" + "</option>";
                        $("#audience_ut").append(type_item);

               }
            }
        });
    }

    function fetchDesigonly() {
      $("#audience_desig_only").empty();
		   if(csrf_token==""){
			   csrf_token = "<?php echo $this->security->get_csrf_hash();?>";
		   }

       $.ajax({
            url: "<?php echo base_url();?>Summary/getfetchdesigonly",
			      data:{
				            "<?php echo $this->security->get_csrf_token_name();?>": csrf_token
			      },
            type: "POST",
            dataType: 'json',
            error: function (jqXHR, textStatus, errorThrown) {
                console.log("error::" + textStatus, errorThrown);
			      },
            success: function (result){
				    console.log(result);
                var type_arr = result.data;
                var status = result.status;
				    if(result.csrf_token){
				    	csrf_token = result.csrf_token;
			  	  }
                if (status == 1) {
					          var type_item = "<option value='' selected>" + "Select Designation" + "</option>";
                        $("#audience_desig_only").append(type_item);
                    $.each(type_arr, function (idx, val) {
                        var type_item = "<option value=" + val['code'] + ">" + val['name'] + "</option>";
                        $("#audience_desig_only").append(type_item);
                    });
                    var type_item = "<option value=" + "-1" + ">" + "Everyone" + "</option>";
                        $("#audience_desig_only").append(type_item);

                }
            }
        });
    }

    $("#audience_ut").change(function () {     //userType on change
        var val = $(this).val();
        if(val == ""){
          $("choose_loc").hide();
          $('#audience_loc').val('');
        }
        else if(val != ""){
          $('#audience_loc').val('');
          $("choose_loc").show();
          fetchType();
			  }
    });
  });
</script>

<hr/>
<div>
  <Hide_desig_loc class="bg-purple" style="text-align:center; padding:10px; border-radius:5px; cursor:pointer; display:block;">Click here to Broadcast to All</Hide_desig_loc>
</div>
<hr/>
<radiobuttonsel>
  <p>Send Notifications depending on:</p>
  
  <input type="radio" id="usertypelocr" name="radiosel" value="usertypelocr" style="cursor:pointer">
  <label for="usertypelocr">User Type and Location</label>
  <br>
  <input type="radio" id="designat" name="radiosel" value="designat" style="cursor:pointer">
  <label for="designat">Designation</label>
  <br>
</radiobuttonsel>

        <choose_desigloc id="rdd1">
          <choose_desig>                          <!--  usertype + location  -->
            <div class="col-md-8">
              <div class="form-group">
              <label>Target UserType</label>      
                <select name="audience_ut" id="audience_ut" class="form-control">      
                  <option value="" selected>Select User Type:</option>
                  
                  
                    <option value="-1">Everyone</option>
                </select>

              </div>
            </div>
          </choose_desig>
          <choose_loc>
            <div class="col-md-8">
              <div class="form-group">
                
                <label>Target Location</label>

                <select name="audience_loc" id="audience_loc" class="form-control"> 
                  <option value="" selected>Select Location</option>
                  
                    
                    <option value="-1">Everywhere</option>
                </select>

              </div>
            </div>
          </choose_loc>
        </choose_desigloc>





        <choose_desig_only id="rdd2">

        <div class="col-md-8">
              <div class="form-group">
              <label>Target Designation</label>      
                <select name="audience_desig_only" id="audience_desig_only" class="form-control">      
                  <option value="" selected>Select Designation:</option>
                 
                    <option value="-1">Everyone</option>
                </select>
                    
              </div>
            </div>


        </choose_desig_only>



            <div class="input-group mb-3">
                    <textarea name="noti_text" id="noti_text" class="form-control" rows="3" placeholder="Enter Notification body..."></textarea>
              <div class="input-group-append">
                <div class="input-group-text">
                  <span class="fas fa-bell"></span>
                </div>
              </div>
            </div>
            
            <div id="errors" style="color:red;"></div>
            <div class="row">
              <div class="col-12">
              <Refresh_page_after_submit>
                <button type="submit" id='err' id="submit" name="submit" value="Submit" class="btn btn-primary float-right" style="border-radius: 50%;" ><span class="fas fa-paper-plane"></span></button>
              </Refresh_page_after_submit>
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

<script src="<?php echo base_url();?>css/plugins/overlayScrollbars/js/jquery.overlayScrollbars.min.js"></script>
<script src="<?php echo base_url();?>js/notify.js"></script>
<script type="text/javascript" >
//notification form submit---------------------------------------------------------------------------------------
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
      //console.log(k);
      if (k.csrf_token){
        csrf_token=k.csrf_token;
      }
      if(k.res==0){
        $('#errors').html(k.errors);
        console.log("error");
      }else{ 
        $('#errors').html("");
        $("form")[0].reset();
        $("#refresh").load(location.href+" #refresh>*","");
        $("#err").notify("Value accepted",{position:"left", className: 'success'});
        console.log("submit");
      }
    }
  });
});
</script>

<!-- DataTables -->
<script src="<?php echo base_url();?>css/plugins/datatables/jquery.dataTables.js"></script>
<script src="<?php echo base_url();?>css/plugins/datatables-bs4/js/dataTables.bootstrap4.js"></script>   

<!-- page script -->
<script>
  $(function () {
    //$("#myTable").DataTable();
    $('#notitable').DataTable({
      "paging": true,
      "lengthChange": false,
      "searching": false,
      "ordering": false,
      "info": true,
      "autoWidth": false,
    });
  });
</script>

<script>
//Radio button select makes different divisions to load in the form------------------------------------------------------------------
  $(document).ready(function () {
       $('#usertypelocr').click(function () {
          $("choose_desigloc").show();
          $("choose_loc").hide();
          $("choose_desig_only").hide();
          $("#audience_loc").val('');
          $("#audience_ut").val('');
          $("#audience_desig_only").val('-1');
       });
  });

  $(document).ready(function () {
       $('#designat').click(function () {
          $("choose_desigloc").hide();
          $("choose_desig_only").show();
          $("#audience_loc").val('-1');
          $("#audience_ut").val('-1');
          $("#audience_desig_only").val('');
       });
  });
</script>
</body>
</html>


