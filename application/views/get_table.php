<div>
    <h3><?php echo $name; ?></h3>
    <form method="post">
        <table >
        <?php
            $i=0;
            foreach($data as $row){
                if($row == 'id' || $row == 'user' || $row == 'tstamp'){
                    $i++;
                    continue;
                }
                elseif($row == 'session'){
                    echo "<tr>";
                    $year=intval(date("Y"));
                    echo "<td>".$s_name[$i]."</td>";
                    echo "<td>";
                    echo "<select name='$row' id='$row' >";
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
                elseif($row == 'date'){
                    $year=date("Y-m-d");
                    echo "<tr>";
                    echo     "<td>".$s_name[$i]."</td>";
                    echo     "<td><input type='date' name='$row' id='$row' max='$year' value='".set_value($row)."'/>";
                    echo "</tr>";
                    echo "<tr>";
                    echo "<td>".form_error($row)."</td>";
                    echo "</tr>";
                    $i++;
                }
                else{
                    echo "<tr>";
                    echo     "<td>".$s_name[$i]."</td>";
                    echo     "<td><input type='text' name='$row' id='$row' value='".set_value($row)."'/>";
                    echo "</tr>";
                    echo "<tr>";
                    echo "<td>".form_error($row)."</td>";
                    echo "</tr>";
                    $i++;
                }
            }
        ?>
        <td colspan="2"><input type="submit" name="save" id="save" value="<?php 
        if(form_error('session')){
            echo "Update data";
        }else{
            echo "Save data";
        }
        ?>"/>
        <td colspan="2"><input type="hidden" name="hid" id="hid" value="<?php echo form_error('session');?>"/>
        </table>
    </form>
</div>