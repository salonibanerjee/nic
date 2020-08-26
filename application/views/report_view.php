<div class="content-wrapper">
	<section class="content pt-5">
		<div class="container-fluid">
			<div class="card card-primary mx-auto" style="max-width: 50%">
				<div class="card-header">
					Generate Report
				</div>
				<div class="card-body">
					<?php echo form_open('','role="form" method="POST" id="form"');?>
					<!-- <form method="post" action="<?php //echo base_url();?>" id="form"> -->
						<div class="form-group">
							<div class="row">
								<div class="col-md-6">
									<label class="m-0 ml-1">Select Month</label>
									<select name="month" class="form-control form-control-sm m-1">
										<option value="01" selected>January</option>
										<option value="02">Febuary</option>
										<option value="03">March</option>
										<option value="04">April</option>
										<option value="05">May</option>
										<option value="06">June</option>
										<option value="07">July</option>
										<option value="08">August</option>
										<option value="09">September</option>
										<option value="10">October</option>
										<option value="11">November</option>
										<option value="12">December</option>
									</select>
								</div>
								<div class="col-md-6">
									<label class="m-0 ml-1">Enter Year</label>
									<input class="form-control form-control-sm m-1" type="text" name="year" placeholder="Enter Year" required="" maxlength="4" size="4" minlength="4">
									<p style="background-color: red "><?php echo form_error('year');?></p>
								</div>
							</div>
							<label class="m-0 ml-1">Select Format</label>
							<div class="row">
								<div class="col-md-6">	
									<select class="form-control form-control-sm m-1" name="type">
										<option value="0" selected>PDF Format</option>
										<option value="1">Excel Fromat</option>
									</select>
								</div>
								<div class="col-md-6">
									<input class="btn btn-primary btn-sm m-1" type="submit">
								</div>
							</div>
						</div>
					</form>
				</div>
			</div>
		</div>
	</section>
</div>
	
		
	
