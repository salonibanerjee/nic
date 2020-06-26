<html>
    <body>

        <!-- Modal -->
        <div id="<?php echo $filter_id?>" class="modal fade" role="dialog">
        <div class="modal-dialog modal-dialog-centered">

            <!-- Modal content-->
            <div class="modal-content">
            <div class="modal-header">
                <!--<button type="button" class="close" data-dismiss="modal">&times;</button>-->
                <h4 class="modal-title">Filter View</h4>
            </div>
            <?php echo form_open('','role="form" method="POST" id="form"');?>
            <!--<form role='form' method="post" id='form'>-->
                <div class="modal-body">
                    <div class="row">
                        <?php 
                        if($left) {
                        echo "<div class='col-md-6'>";
                        echo    "<div class='form-group'>";
                                    $i=0;
                                    $flag = false;
                                    foreach($c_left_name as $temp) {
                                        foreach ($selected_left as $sel) {
                                            if($temp == $sel) {
                                                $flag = true;
                                                break;
                                            } else {
                                                $flag = false;
                                            }
                                        }
                                        echo "<div class='custom-control custom-checkbox'>";
                                        if($flag) echo    "<input class='custom-control-input' name='".$filter_id."_left_check_list[]' type='checkbox' id='$temp".$filter_id."' value='$temp' checked>";
                                        else echo    "<input class='custom-control-input' name='".$filter_id."_left_check_list[]' type='checkbox' id='$temp".$filter_id."' value='$temp'>";
                                        echo    "<label for='$temp".$filter_id."' class='custom-control-label'>$f_left_name[$i]</label>";
                                        echo "</div>";
                                        $i++;
                                    }
                        echo    "</div>";
                        echo "</div>";
                        }
                        if($right){
                        echo "<div class='col-md-6'>";
                        echo "<div class='row'>";
                        echo    "<div class='form-group'>";
                                
                            $i=0;
                            $flag = false;
                            foreach($c_name_right as $temp) {
                                if($type == 0){
                                    foreach ($selected_right as $sel) {
                                        if($temp == $sel) {
                                            $flag = true;
                                            break;
                                        } else {
                                            $flag = false;
                                        }
                                    }

                                    echo "<div class='custom-control custom-checkbox'>";
                                    if($flag) echo    "<input class='custom-control-input' name='".$filter_id."_right_check_list[]' type='checkbox' id='$temp".$filter_id."' value='$temp' checked>";
                                    else echo    "<input class='custom-control-input' name='".$filter_id."_right_check_list[]' type='checkbox' id='$temp".$filter_id."' value='$temp'>";
                                    echo    "<label for='$temp".$filter_id."' class='custom-control-label'>$f_name_right[$i]</label>";
                                    echo "</div>";

                                } else if($type == 1){

                                    echo "<div class='custom-control custom-radio'>";
                                    if($temp == $selected_right) echo    "<input class='custom-control-input' name='".$filter_id."_right_check_list' type='radio' id='$temp".$filter_id."' value='$temp' checked>";
                                    else echo    "<input class='custom-control-input' name='".$filter_id."_right_check_list' type='radio' id='$temp".$filter_id."' value='$temp'>";
                                    echo    "<label for='$temp".$filter_id."' class='custom-control-label'>$f_name_right[$i]</label>";
                                    echo "</div>";
                                    
                                }
                                $i++;
                            }
                        echo "</div>";
                        echo    "</div>";
                        if(!$session){
                            echo "</div>";
                        }
                        }
                        if($session) {
                        if(!$right)
                        echo "<div class='col-md-6'>";
                            echo "<div class='row'>";
                                echo "<div class='form-group'>";
                                    echo "<label>Select Month & Year: </label>";
                                        echo "<select class='form-control' name='".$filter_id."_month'>";
                                            if($m == "0") echo "<option value='0' selected>Latest Entry</option>";
                                            else echo "<option value='0'>Latest Entry</option>";
                                            if($m == "1") echo "<option value='1' selected>Jan</option>";
                                            else echo "<option value='1'>Jan</option>";
                                            if($m == "2") echo "<option value='2' selected>Feb</option>";
                                            else echo "<option value='2'>Feb</option>";
                                            if($m == "3") echo "<option value='3' selected>Mar</option>";
                                            else echo "<option value='3'>Mar</option>";
                                            if($m == "4") echo "<option value='4' selected>Arp</option>";
                                            else echo "<option value='4'>Arp</option>";
                                            if($m == "5") echo "<option value='5' selected>May</option>";
                                            else echo "<option value='5'>May</option>";
                                            if($m == '6') echo "<option value='6' selected>Jun</option>";
                                            else echo "<option value='6'>Jun</option>";
                                            if($m == '7') echo "<option value='7' selected>Jul</option>";
                                            else echo "<option value='7'>Jul</option>";
                                            if($m == '8') echo "<option value='8' selected>Aug</option>";
                                            else echo "<option value='8'>Aug</option>";
                                            if($m == '9') echo "<option value='9' selected>Sep</option>";
                                            else echo "<option value='9'>Sep</option>";
                                            if($m == '10') echo "<option value='10' selected>Oct</option>";
                                            else echo "<option value='10'>Oct</option>";
                                            if($m == '11') echo "<option value='11' selected>Nov</option>";
                                            else echo "<option value='11'>Nov</option>";
                                            if($m == '12') echo "<option value='12' selected>Dec</option>";
                                            else echo "<option value='12'>Dec</option>";
                                        echo "</select>";
                                        
                                        echo "<select class='form-control' name='".$filter_id."_year'>";
                                            if($m=='0') echo "<option value='0' selected>Latest Entry</option>";
                                            else echo "<option value='0'>Latest Entry</option>";
                                            if($y=='2019') echo "<option value='2019' selected>2019</option>";
                                            else echo "<option value='2019'>2019</option>";
                                            if($y=='2020') echo "<option value='2020' selected>2020</option>";
                                            else echo "<option value='2020'>2020</option>";
                                        echo "</select>";
                                echo "</div>";
                            echo "</div>";
                        echo "</div>";
                        }
                        ?>
                    </div>
                </div>
                <div class="modal-footer">
                <button type="submit" name="<?php echo $filter_id.'_submit'?>" id="<?php echo $filter_id.'_submit'?>" class="btn btn-block btn-outline-success btn-sm">Apply Filter</button>
                </div>
            </form>
            </div>
        </div>
        </div>

    </body>
</html>