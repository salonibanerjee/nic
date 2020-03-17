<link rel="stylesheet" type="text/css" href="<?php echo base_url();?>css/form.css">
<link href='https://fonts.googleapis.com/css?family=Acme' rel='stylesheet'>
<meta http-equiv="refresh" content="20;URL=https://localhost/NIC/index.php/Get_table/" />
<div class="outerdiv">
    <h2 class="hh"><?php echo $name; ?></h2>
    <form method="post">
        <table >
        <?php
            $i=0;
            foreach($data as $row){
                if($row == 'id' || $row == 'user' || $row == 'tstamp' ||$row=='ip'){
                    $i++;
                    continue;
                }
                elseif($row == 'session'){
                    echo "<tr>";
                    $year=intval(date("Y"));
                    echo "<td>".$s_name[$i]."</td>";
                    echo "<td>";
                    echo "<select class='sess' name='$row' id='$row' >";
                    for($x=$year;$x>=2019;$x--){
                        echo "<option value='$x'".set_select($row,$x).">".$x."</option>";
                    }
                    echo "</select>";
                    echo "</td>";
                    echo "</tr>";
                    echo "<tr>";
                    echo "<td>".form_error($row)."</td>";
                    echo "</tr>";
                    $i++;
                }
                elseif($row == 'date' || $row == 'Till_date' || $row == 'Date_of_Inception' || $row == 'Date_of_Inspection'){
                    $year=date("Y-m-d");
                    echo "<tr>";
                    echo     "<td>".$s_name[$i]."</td>";
                    echo     "<td><input type='date' class='dte' name='$row' id='$row' max='$year' value='".set_value($row)."'/>";
                    echo "</tr>";
                    echo "<tr>";
                    echo "<td>".form_error($row)."</td>";
                    echo "</tr>";
                    $i++;
                }
                else{
                    echo "<tr>";
                    echo     "<td>".$s_name[$i]."</td>";
                    echo     "<td><input type='text' class='inp' name='$row' id='$row' value='".set_value($row)."'/>";
                    echo "</tr>";
                    echo "<tr>";
                    echo "<td>".form_error($row)."</td>";
                    echo "</tr>";
                    $i++;
                }
            }
        ?>
        <td><input type="submit" class="but" name="save" id="save" value="<?php 
        if(form_error('session')){
            echo "Update data";
        }else{
            echo "Save data";
        }
        ?>">
        <input type="hidden" name="hid" id="hid" value="<?php echo form_error('session');?>"/></td>
        </table>
    </form>
</div>
