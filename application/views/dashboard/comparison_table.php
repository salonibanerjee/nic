<div class="row">
  <div class="col">
    <div class="card">
      <div class="card-header bg-light">
        <h3 class="card-title">Comparison on Schemes (<?php $month = array('Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun', 'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec'); echo $month[$this->cache->get('dashboard_cache_comparison'.$this->session->userdata('loginid'))[2] - 1]."/".$this->cache->get('dashboard_cache_comparison'.$this->session->userdata('loginid'))[3]; ?>)</h3>
        <div class="card-tools">
          <button type="button" class="btn btn-tool" data-card-widget="collapse" style="color: black"><i class="fas fa-minus"></i></button>
          <button type="button" class="btn btn-tool"  data-toggle="modal" data-target="#comparison_filter" style="color: black"><i class="fas fa-edit"></i></button>
      </div>
      <!-- /.card-header -->
      <div class="card-body p-0">
        <table class="table table-condensed">
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
                echo "<td><div class='progress progress-xs'><div class='progress-bar bg-".$sign[$i]."' style='width: ".$percentage[$i]."%; background-color: black'></div></div></td>";
                echo "<td>".$percentage[$i]."</td>";
                echo "</tr>";
                $i++;
              }
            ?>
            
          </tbody>
        </table>
      </div>
      <!-- /.card-body -->
    </div>
  </div>
</div>

<!-- Modal -->
<div id="comparison_filter" class="modal fade" role="dialog">
  <div class="modal-dialog modal-sm modal-dialog-centered">
      <!-- Modal content-->
      <div class="modal-content">
      <?php echo form_open('','role="form" method="POST" id="form"');?>
      <!--<form role='form' method="post" id='form'>-->
            <div class="modal-body">   
                <div class="form-group">
                    <label>Select First Scheme</label>
                    <select class='form-control' name='scheme1'>
                    <?php 
                        $i = 0;
                        foreach ($scheme_name as $name) {
                          if($this->cache->get('dashboard_cache_comparison'.$this->session->userdata('loginid'))[0] == $scheme_link[$i])
                            echo "<option value=".$scheme_link[$i]." selected>".$name."</option>";
                          else
                            echo "<option value=".$scheme_link[$i].">".$name."</option>";
                          $i++;
                        }
                    ?>
                    </select>
                </div>
                <div class="form-group">
                    <label>Select Second Scheme</label>
                    <select class='form-control' name='scheme2'>
                    <?php 
                        $i = 0;
                        foreach ($scheme_name as $name) {
                            if($this->cache->get('dashboard_cache_comparison'.$this->session->userdata('loginid'))[1] == $scheme_link[$i])
                              echo "<option value=".$scheme_link[$i]." selected>".$name."</option>";
                            else
                              echo "<option value=".$scheme_link[$i].">".$name."</option>";
                            $i++;
                        }
                    ?>
                    </select>
                </div>
                <div class="form-group">
                    <label>Select Month</label>
                    <select class='form-control' name='month'>
                    <?php 
                        $i = 1;
                        $month = array('Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun', 'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec');
                        foreach ($month as $m) {
                          if($this->cache->get('dashboard_cache_comparison'.$this->session->userdata('loginid'))[2] == "".$i."")
                            echo "<option value=".$i++." selected>".$m."</option>";
                          else
                            echo "<option value=".$i++.">".$m."</option>";
                        }
                    ?>
                    </select>
                </div>
                <div class="form-group">
                    <label>Select Year</label>
                    <select class='form-control' name='year'>
                    <?php 
                        $year = array("2019", "2020");
                        foreach ($year as $y) {
                          if($this->cache->get('dashboard_cache_comparison'.$this->session->userdata('loginid'))[3] == $y)
                            echo "<option value=".$y." selected>".$y."</option>";
                          else
                            echo "<option value=".$y.">".$y."</option>";
                        }
                    ?>
                    </select>
                </div>
            </div>
            <div class="modal-footer">
                <button type="submit" name="comp_submit" id="comp_submit" class="btn btn-block btn-outline-success btn-sm">Apply Filter</button>
            </div>
      </form>
      </div>
  </div>
</div> 