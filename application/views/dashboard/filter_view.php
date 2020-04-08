<html>
    <body>

        <!-- Modal -->
        <div id="<?php echo $filter_id?>" class="modal fade" role="dialog">
        <div class="modal-dialog">

            <!-- Modal content-->
            <div class="modal-content">
            <div class="modal-header">
                <!--<button type="button" class="close" data-dismiss="modal">&times;</button>-->
                <h4 class="modal-title">Filter View</h4>
            </div>
            <form role='form' method="post" id='form'>
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
                        echo    "<div class='form-group'>";
                                
                                    $i=0;
                                    $flag = false;
                                    foreach($c_name_right as $temp) {
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
                                        $i++;
                                    }
                        echo    "</div>";
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