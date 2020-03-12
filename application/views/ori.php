<link rel="stylesheet" type="text/css" href="<?php echo base_url();?>css/form.css">
<div class="oridiv">
<div id="form-wrapper" style="max-width:500px;margin:auto;">
<h1>Scheme Name</h1>
<form method="POST"  >
<select name="selectPage" class="dropdown1" onchange="this.form.submit()">
<option value="">Select Scheme</option>
<?php 
    $i=0;
    foreach($data as $row){
        echo "<option value='$row'>".$s_name[$i]."</option>";
        $i++;
    }
?>
</select>
</form>
</div>
</div>