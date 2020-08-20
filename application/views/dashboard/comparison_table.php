<div class="row">
  <div class="col">
    <div class="card">
      <div class="card-header" style="background-color: #80bbff;">
        <h3 class="card-title">Comparison on Schemes</h3>
        <div class="card-tools">
          <button type="button" class="btn btn-tool" data-card-widget="collapse" style="color: black"><i class="fas fa-minus"></i></button>
          <button type="button" class="btn btn-tool"  data-toggle="modal" data-target="#comparison_filter" style="color: black"><i class="fas fa-edit"></i></button>
      </div>
      </div>
      <!-- /.card-header -->
      <div class="card-body p-0">
        <div class="table-responsive">
        <table class="table ">
          <thead>
            <tr>
              <th>Scheme Name</th>
              <th>Target</th>
              <th>Progress</th>
              <th>Percentage</th>
              <th style="width: 25px">%</th>
            </tr>
          </thead>
          <tbody>
            <?php 
              $i = 0;
              foreach ($name as $row) {
                echo "<tr>";
                echo "<td>".$name[$i]."</td>";
                if($target[$i] == 'false')
                  echo "<td>NA</td>";
                else
                  echo "<td>".$target[$i]."</td>";  
                if($progress[$i] == 'false')
                  echo "<td>NA</td>";
                else
                  echo "<td>".$progress[$i]."</td>";
                echo "<td><div class='progress progress-xs mt-2'><div class='progress-bar bg-".$sign[$i]."' style='width: ".$percentage[$i]."%; background-color: black'></div></div></td>";
                echo "<td><span class='badge bg-".$sign[$i]."'>".$percentage[$i]."%</span></td>";
                echo "</tr>";
                $i++;
              }
            ?>
            
          </tbody>
        </table>
        </div>
      </div>
      <!-- /.card-body -->
    </div>
  </div>
</div>

<!-- Modal -->
<div id="comparison_filter" class="modal fade" role="dialog">
  <div class="modal-dialog modal modal-dialog-centered">
      <!-- Modal content-->
      <div class="modal-content">
      <div class="modal-header">
            <h5 class="modal-title">Filter</h5>
            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                <span aria-hidden="true">&times;</span>
            </button>
          </div>
      <?php echo form_open('','role="form" method="POST" id="form"');?>
      <!--<form role='form' method="post" id='form'>-->
            <div class="modal-body">
              <div class="row">
                <div class="col-sm-6">
                  <label>Select First Scheme</label>
                  <select class='form-control' name='s1'>
                    <?php
                      $i = 0;
                      foreach ($scheme_name as $name) {
                        if($comp_array[0] == $scheme_link[$i])
                          echo "<option value=".$scheme_link[$i]." selected>".$name."</option>";
                        else
                          echo "<option value=".$scheme_link[$i].">".$name."</option>";
                        $i++;
                      }
                    ?>
                  </select>
                  <div class="input-group">
                    <select class='form-control' name='m1'>
                    <?php 
                        $i = 1;
                        $month = array('Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun', 'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec');
                        foreach ($month as $m) {
                          if($comp_array[4] == "".$i."")
                            echo "<option value=".$i++." selected>".$m."</option>";
                          else
                            echo "<option value=".$i++.">".$m."</option>";
                        }
                    ?>
                    </select>
                    <select class='form-control' name='y1'>
                      <?php 
                        $year = array("2019", "2020");
                        foreach ($year as $y) {
                          if($comp_array[8] == $y)
                            echo "<option value=".$y." selected>".$y."</option>";
                          else
                            echo "<option value=".$y.">".$y."</option>";
                        }
                      ?>
                    </select>
                  </div>
                </div>
                <div class="col-sm-6">
                  <label>Select Second Scheme</label>
                  <select class='form-control' name='s2'>
                    <?php 
                      $i = 0;
                      foreach ($scheme_name as $name) {
                        if($comp_array[1] == $scheme_link[$i])
                          echo "<option value=".$scheme_link[$i]." selected>".$name."</option>";
                        else
                          echo "<option value=".$scheme_link[$i].">".$name."</option>";
                        $i++;
                      }
                    ?>
                  </select>
                  <div class="input-group">
                    <select class='form-control' name='m2'>
                    <?php 
                        $i = 1;
                        $month = array('Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun', 'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec');
                        foreach ($month as $m) {
                          if($comp_array[5] == "".$i."")
                            echo "<option value=".$i++." selected>".$m."</option>";
                          else
                            echo "<option value=".$i++.">".$m."</option>";
                        }
                    ?>
                    </select>
                    <select class='form-control' name='y2'>
                      <?php 
                        $year = array("2019", "2020");
                        foreach ($year as $y) {
                          if($comp_array[9] == $y)
                            echo "<option value=".$y." selected>".$y."</option>";
                          else
                            echo "<option value=".$y.">".$y."</option>";
                        }
                      ?>
                    </select>
                  </div>
                </div>
                <div class="col-sm-6">
                  <label>Select Third Scheme</label>
                  <select class='form-control' name='s3'>
                    <?php 
                      $i = 0;
                      foreach ($scheme_name as $name) {
                        if($comp_array[2] == $scheme_link[$i])
                          echo "<option value=".$scheme_link[$i]." selected>".$name."</option>";
                        else
                          echo "<option value=".$scheme_link[$i].">".$name."</option>";
                        $i++;
                      }
                    ?>
                  </select>
                  <div class="input-group">
                    <select class='form-control' name='m3'>
                    <?php 
                        $i = 1;
                        $month = array('Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun', 'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec');
                        foreach ($month as $m) {
                          if($comp_array[6] == "".$i."")
                            echo "<option value=".$i++." selected>".$m."</option>";
                          else
                            echo "<option value=".$i++.">".$m."</option>";
                        }
                    ?>
                    </select>
                    <select class='form-control' name='y3'>
                      <?php 
                        $year = array("2019", "2020");
                        foreach ($year as $y) {
                          if($comp_array[10] == $y)
                            echo "<option value=".$y." selected>".$y."</option>";
                          else
                            echo "<option value=".$y.">".$y."</option>";
                        }
                      ?>
                    </select>
                  </div>
                </div>
                <div class="col-sm-6">
                  <label>Select Fourth Scheme</label>
                  <select class='form-control' name='s4'>
                    <?php 
                      $i = 0;
                      foreach ($scheme_name as $name) {
                        if($comp_array[3] == $scheme_link[$i])
                          echo "<option value=".$scheme_link[$i]." selected>".$name."</option>";
                        else
                          echo "<option value=".$scheme_link[$i].">".$name."</option>";
                        $i++;
                      }
                    ?>
                  </select>
                  <div class="input-group">
                    <select class='form-control' name='m4'>
                    <?php 
                        $i = 1;
                        $month = array('Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun', 'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec');
                        foreach ($month as $m) {
                          if($comp_array[7] == "".$i."")
                            echo "<option value=".$i++." selected>".$m."</option>";
                          else
                            echo "<option value=".$i++.">".$m."</option>";
                        }
                    ?>
                    </select>
                    <select class='form-control' name='y4'>
                      <?php 
                        $year = array("2019", "2020");
                        foreach ($year as $y) {
                          if($comp_array[11] == $y)
                            echo "<option value=".$y." selected>".$y."</option>";
                          else
                            echo "<option value=".$y.">".$y."</option>";
                        }
                      ?>
                    </select>
                  </div>
                </div>
              </div>
            </div>
            <div class="modal-footer">
                <button type="submit" name="comp_submit" id="comp_submit" class="btn btn-block btn-outline-success btn-sm">Apply Filter</button>
            </div>
      </form>
      </div>
  </div>
</div> 