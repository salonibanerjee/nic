<h3>Scheme Name</h3>
<form method="POST" >
<select name="selectPage">
<?php 
    foreach($data as $row){
        echo "<option value='$row'>".$row."</option>";
    }
?>
</select>
<input type="submit" id="sub1" name="sub1" value="Load Page"/>
</form>