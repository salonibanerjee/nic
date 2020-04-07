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
                    <div class="form-group">
                        <?php 
                            $i=0;
                            $flag = false;
                            foreach($c_name as $temp) {
                                foreach ($selected as $sel) {
                                    if($temp == $sel) {
                                        $flag = true;
                                        break;
                                    } else {
                                        $flag = false;
                                    }
                                }
                                echo "<div class='custom-control custom-checkbox'>";
                                if($flag) echo    "<input class='custom-control-input' name='check_list[]' type='checkbox' id='$temp' value='$temp' checked>";
                                else echo    "<input class='custom-control-input' name='check_list[]' type='checkbox' id='$temp' value='$temp'>";
                                echo    "<label for='$temp' class='custom-control-label'>$f_name[$i]</label>";
                                echo "</div>";
                                $i++;
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