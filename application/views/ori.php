<div>
<h1>Scheme Name</h1>
<form method="POST" >
<select name="selectPage">
<?php 
    $i=0;
    foreach($data as $row){
        echo "<option value='$row'>".$s_name[$i]."</option>";
        $i++;
    }
?>
</select>
<input type="submit" id="sub1" name="sub1" value="Load Page"/>
</form>
</div>