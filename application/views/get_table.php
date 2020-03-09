<body>
<div>
    <h3><?php echo $name; ?></h3>
    <form method="post">
        <table >
        <?php
            foreach($data as $row){
                if($row == 'id'){
                    continue;
                }
                elseif($row == 'year' || $row == 'date'){
                    echo "<tr>";
                    $year=intval(date("Y"));
                    echo "<td>".$row."</td>";
                    echo "<td>";
                    echo "<select name='$row' id='$row'>";
                    for($x=$year;$x>=2019;$x--){
                        echo "<option value='$x'>".$x."</option>";
                    }
                    echo "</select>";
                    echo "</td>";
                    echo "</tr>";
                }
                else{
                echo "<tr>";
                echo     "<td>".$row."</td>";
                echo     "<td><input type='text' name='$row' id='$row' value='".set_value($row)."'/>";
                echo "</tr>";
                echo "<tr>";
                echo "<td>".form_error($row)."</td>";
                echo "</tr>";
                }
            }
        ?>
        <td colspan="2"><input type="submit" name="save" id="save" value="Save Data"/></td>
        </table>
    </form>
</div>
</body>