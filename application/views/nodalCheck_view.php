<div class='content-wrapper'>
    <!-- Content Header (Page header) -->
    <section class='content-header'>
        <div class='container-fluid'>           
            <!-- TABLE: LATEST ORDERS -->
            <div class='card'>
                <div class='card-header border-transparent'>
                <h3 class='card-title'>Nodal Check</h3>

                <div class='card-tools'>
                    <button type='button' class='btn btn-tool' data-card-widget='collapse'>
                    <i class='fas fa-minus'></i>
                    </button>
                    <button type='button' class='btn btn-tool' data-card-widget='remove'>
                    <i class='fas fa-times'></i>
                    </button>
                </div>
                </div>
                <!-- /.card-header -->
                <div class='card-body p-0'>
                <div class='table-responsive'>
                    <table class='table m-0'>
                    <thead>
                    <tr>
                        <th>Scheme ID</th>
                        <th>Scheme Name</th>
                        <th>Status</th>
                        <th>Review</th>
                    </tr>
                    </thead>
                    <tbody>
                    <?php $i = 0;
                        foreach($fetch_draft as $row){
                            if($count_check[$i] == 0){
                                echo "<tr>";
                                echo     "<td><a href='pages/examples/invoice.html'>".str_replace('_draft', '', $row)."</a></td>";
                                echo    "<td>".$draft_name[$i]."</td>";
                                echo     "<td><span class='badge badge-success'>Checked</span></td>";
                                echo     "<td>";
                                echo     "<a href='javascript:void(0)' class='btn btn-xs btn-default float-left disabled'>Review</a>";
                                echo     "</td>";
                                echo "</tr>";
                            } else {
                                echo "<tr>";
                                echo     "<td><a href='pages/examples/invoice.html'>".str_replace('_draft', '', $row)."</a></td>";
                                echo     "<td>".$draft_name[$i]."</td>";
                                echo     "<td><span class='badge badge-warning'>Pending</span></td>";
                                echo     "<td>";
                                echo     "<a href='javascript:void(0)' id='".str_replace('_draft', '', $row)."' onClick='reply_click(this.id)' data-toggle='modal' data-target='#".str_replace('_draft', '', $row)."_modal' class='btn btn-xs btn-info float-left'>Review</a>";
                                echo     "</td>";
                                echo "</tr>";
                            }
                            $i++;
                        }
                    ?>
                    </tbody>
                    </table>
                </div>
                <!-- /.table-responsive -->
                </div>
                <!-- /.card-body -->
                
            </div>
            <!-- /.card -->
        </div>
    </section>
</div>


        <!-- Modal -->
<?php
foreach($fetch_draft as $sh_name){
    $temp = str_replace('_draft', '', $sh_name);
    //echo $temp;
echo "<div id='".$temp."_modal' class='modal fade' role='dialog'>
    <div class='modal-dialog'>

        <!-- Modal content-->
        <div class='modal-content'>
        <div class='modal-header'>
            <!--<button type='button' class='close' data-dismiss='modal'>&times;</button>-->
            <h4 class='modal-title'>".$temp."</h4>
        </div>
        <form role='form' method='post' id='form'>
            <div class='modal-body'>
            <div class='card'>
              <div class='card-header'>
                <h3 class='card-title'>Striped Full Width Table</h3>
              </div>
              <!-- /.card-header -->
              <div class='card-body p-0'>
                <table class='table table-striped'>
                  <thead>
                    <tr>
                      <th style='width: 10px'>#</th>
                      <th>Task</th>
                      <th>Progress</th>
                    </tr>
                    </thead>
                    <tbody>";
                        
                        $i=0; 
                        $j=0;
                        foreach($uff[$temp]['data'] as $row){
                            //echo $draft_data->$row;
                            $s_name = $uff[$temp]['s_name'];
                            if($row == 'id_pk' || $row == 'login_id_fk' || $row == 'inserted_at' ||$row=='ip' || $row=='location_code' || $row=='nodal_check'){
                                $i++;
                                continue;
                            } else {
                                if(isset($uff[$temp]['draft_data']->$row)){
                                    
                                    if($s_name[$i]=='Month'){
                                        echo '<tr>';
                                        echo '<td>'.$j.'.</td>';
                                        echo '<td>'.$s_name[$i].'</td>';
                                        echo '<td>'.$uff[$temp]['month'][$uff[$temp]['draft_data']->$row].'</td>';
                                        echo '</tr>';
                                    } else {
                                        echo '<tr>';
                                        echo '<td>'.$j.'.</td>';
                                        echo '<td>'.$s_name[$i].'</td>';
                                        echo '<td>'.$uff[$temp]['draft_data']->$row.'</td>';
                                        echo '</tr>';
                                    }
                                } else{
                                    echo '<tr>';
                                    echo '<td>'.$j.'.</td>';
                                    echo '<td>'.$s_name[$i].'</td>';
                                    echo '<td>NULL</td>';
                                    echo '</tr>';
                                }
                            }
                            $i++;
                            $j++;
                        }
                        
                        
            echo     " </tbody>
                </table>
              </div>
              <!-- /.card-body -->
              <div class='card-footer'>
              <button type='submit' class='btn btn-xs btn-primary' name='sub1' id='sub1' value='Accept'>Accept</button>
                    <button type='submit' class='btn btn-xs btn-primary' name='sub2' id='sub2' value='Reject'>Reject</button>              </div>
            </div>
            <!-- /.card -->


            </div>
            <div class='modal-footer'>
                
            </div>
        </form>
        </div>
    </div>
</div>";
}
?>


<script>
function reply_click(clicked_id)
  {
      var id = clicked_id;
      document.cookie = "jvar = " + id;
      console.log(clicked_id);
      
  }
</script>

