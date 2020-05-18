<div class="content-wrapper">
  <div class="content-header">
    <div class="container-fluid">
      <div class="row mb-2">
        <div class="col-sm-9">
            <h1>CHANGE USER ACTIVE STATUS</h1>
        </div>
      </div>
    </div>
  </div>
  <section class='content'>
    <div class='container-fluid'>
      <div class='row'>
	  <link rel="stylesheet" type="text/css" href="<?php echo base_url();?>css/switch.css">
        <div class="col-md-11" id='refresh'>
          <div class="card">
            <div class="card-header">
              <h3 class="card-title"><strong>USER Datatable</strong></h3>
              <button type="button" class="btn btn-tool float-right"  data-toggle="modal" data-target="#modal-sm"style="color: black"><i class="fas fa-edit"></i></button>
            </div>
            <!-- /.card-header -->
            <div class="card-body">
              <table id="example1" class="table table-bordered table-striped table-hover">
                <thead>
                <tr>
					<th><center>ID</center></th>
					<th><center>Email</center></th>
					<th><center>User Type</center></th>
					<th><center>Location Code</center></th>
					<th><center>Status</center></th>
					<th><center>Department ID</center> </th>
					<th><center>Office Id</center></th>
					<th><center>Designation</center></th>
					<th><center>Turn ON/OFF</center></th>
                </tr>
                </thead>
                <tbody>
                <?php
					foreach($records as $r)
					{
						$chk = " checked";
						$val = "ON";
						if($r->active_status == 0){
							$chk = "";
							$val = "OFF";
						}
						echo "<tr><td><center>".$r->Login_id_pk."</center></td><td><center>".$r->username."</center></td><td><center>".$r->user_type_id_fk."</center></td><td><center>".$r->location_code."</center></td><td><center>".$r->active_status."</center></td><td><center>".$r->dept_id_fk."</center></td><td><center>".$r->office_id_fk."</center></td><td><center>".$r->desig_id_fk."</center></td><td><center>
						<label class='switch'>
						<input id='switch".$r->Login_id_pk."' type='checkbox' onclick='toggleClicked(".$r->Login_id_pk.");' value='".$val."'".$chk.">
						<span class='slider round'></span>
						</label><center></td></tr>";
					}	
				?>
                </tbody>
                <tfoot>
                <tr>
                  
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

<script type="text/javascript">
	function toggleClicked(loginId){
		var button = document.getElementById("switch"+loginId);
		toggle(button);
		console.log('clicked');
		console.log(loginId);
		var state = button.value;
		console.log(state);
		var s = 1;
		if(state == "OFF"){
			s = 0;
		}
		update(loginId, s);
	}
	
	function toggle(button){
		if(button.value=="OFF"){
			button.value="ON";
		}else{
			button.value="OFF";
		}
	}
	
	function update(id, state){
		$.ajax({
			url: "<?php echo base_url();?>index.php/Super_Admin/inactive_login",
			type: "POST",
			data:{id:id,state:state},
			error: function(jqXHR, textStatus, errorThrown){
				console.log(textStatus, errorThrown);
			},
			cache: false,
			success:function(result) 
			{  
				console.log(result);
				if(result == 'done'){
					console.log("<?php echo base_url();?>index.php/Super_Admin/fetch_login");
					window.location="<?php echo base_url();?>index.php/Super_Admin/fetch_login";
				}else{
					<?php echo "failed"?>
				}
			}   
		});
	}
</script>