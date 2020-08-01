<!--Nodal check view-->
<!---------------------------------------------------------------------------------------------------------------------------------------->
<div class='content-wrapper'>
    <!-- Content Header (Page header) -->
    <section class="content-header">
    <div class="container-fluid">
      <div class="row mb-2">
        <div class="col-sm-6">
          <h1><b>NODAL CHECK</b></h1>
        </div>
        <div class="col-sm-6">
          <ol class="breadcrumb float-sm-right">
            <li class="breadcrumb-item"><a href="<?php echo base_url();?><?php echo $this->cache->get('User_type'.$var)['user_privilege'][0]['link']?>"><?php echo $this->cache->get('User_type'.$var)['user_privilege'][0]['page_name']?></a></li>
            <li class="breadcrumb-item active">Nodal Check</li>
          </ol>
        </div>
      </div>
    </div><!-- /.container-fluid -->
  </section>
    <section class='content-header'>
        <div class='container-fluid'>           
            <!-- TABLE: LATEST ORDERS -->
            <div class='card'>
                <div class='card-header border-transparent bg-purple'>
                <h3 class='card-title'>Nodal Check</h3>

                <div class='card-tools'>
                    <button type='button' class='btn btn-tool' data-card-widget='collapse'>
                    <i class='fas fa-minus'></i>
                    </button>
                </div>
                </div>
                <!-- /.card-header -->
                <div class='card-body p-0'>
                <div class='table-responsive'>
                    <table class='table m-0'>
                    <thead >
                    <tr>
                        <!--<th>Scheme ID</th>-->
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
                                
                                echo    "<td style='font-size:17px;'>".$draft_name[$i]."</td>";
                                echo     "<td><span class='badge badge-success' style='font-size:17px;'>Checked</span></td>";
                                echo     "<td>";
                                echo     "<a href='javascript:void(0)' style='font-size:17px;' class='btn btn-xs btn-default float-left disabled'>Review</a>";
                                echo     "</td>";
                                echo "</tr>";
                            } else {
                                echo "<tr>";
                                
                                echo     "<td style='font-size:17px;'>".$draft_name[$i]."</td>";
                                echo     "<td><span class='badge badge-warning' style='font-size:17px;'>Pending</span></td>";
                                echo     "<td>";
                                echo     "<a href='javascript:void(0)' style='font-size:17px;' id='".str_replace('_draft', '', $row)."' onClick='reply_click(this.id)' data-toggle='modal' data-target='#".str_replace('_draft', '', $row)."_modal' class='btn btn-xs btn-primary float-left'>Review</a>";
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
$i1=0;
foreach($fetch_draft as $sh_name){
    $temp = str_replace('_draft', '', $sh_name);
    
echo "<div id='".$temp."_modal' class='modal fade' role='dialog'>
    <div class='modal-dialog'>

        <!-- Modal content-->
        <div class='modal-content'>
        <div class='modal-header bg-lime'>
            <h4 class='modal-title'>".$draft_name[$i1]."</h4>
            <button type='button' class='close' data-dismiss='modal'>&times;</button>
        </div>";
  $attri = array('method' => 'POST', 'id' => 'form','role'=>'form'); 
  echo form_open("",$attri);
        echo"
            <div class='modal-body'>
            <div class='card'>
              <div class='card-header bg-primary'>
                <h3 class='card-title'>Data to be Checked</h3>
              </div>
              <!-- /.card-header -->
              <div class='card-body p-0'>
                <table class='table table-striped table-responsive'>
                  <thead>
                    <tr>
                      <th style='width: 10px'>Sl.No.</th>
                      <th>Particulars</th>
                      <th>Values</th>
                    </tr>
                    </thead>
                    <tbody>";
                        
                        $i=0; 
                        $j=0;
                        foreach($uff[$temp]['data'] as $row){
                            $s_name = $uff[$temp]['s_name'];
                            if($row == 'id_pk' || $row == 'login_id_fk' || $row == 'inserted_at' ||$row=='ip' || $row=='location_code' || $row=='nodal_check'){
                                $i++;
                                continue;
                            } else {
                                if(isset($uff[$temp]['draft_data']->$row)){
                                    $j++;
                                    if($s_name[$i]=='month'){
                                        echo '<tr>';
                                        echo '<td>'.$j.'.</td>';
                                        echo '<td>'."Month".'</td>';
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
                            
                        }
                        
                        
            echo     " </tbody>
                </table>
              </div>
              <!-- /.card-body -->
              <div class='card-footer'>
              <button type='submit' class='btn btn-xs btn-primary bg-success mx-success' style='width:48%;font-size:20px;' name='sub1' id='sub1' value='Accept'><i class='fa fa-check float-left' style='padding-top:5px;'></i>Accept</button>
                <button type='submit' class='btn btn-xs btn-primary bg-danger mx-auto' style='width:48%; font-size:20px;' name='sub2' id='sub2' value='Reject'><i class='fa fa-trash float-left' style='padding-top:5px;'></i>Reject</button>              </div>
            </div>
            <!-- /.card -->
            </div>
        </form>
        </div>
    </div>
</div>";
$i1++;
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

