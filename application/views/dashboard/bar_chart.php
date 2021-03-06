
  
<!-- BAR CHART -->
<div class="card card-teal">
  <div class="card-header">
    <h3 class="card-title" style="margin-top: 2px;"><?php echo $title; ?></h3>
    <?php
      if($id == "bar1")
        echo "<button class='btn btn-secondary ml-2 btn-sm pt-0 pb-0' data-toggle='modal' data-target='#bar1_expand'>Expand</button>";
    ?>
    <div class="card-tools">
      <button type="button" class="btn btn-tool" data-card-widget="collapse" style="color: black"><i class="fas fa-minus"></i></button>
      
      <button type="button" class="btn btn-tool"  data-toggle="modal" data-target="#<?php echo $id; ?>" style="color: black"><i class="fas fa-edit"></i></button>
    </div>
  </div>
  <div class="card-body" style="height: 290px;">
    <div class="chart">
      <canvas id="<?php echo $id; ?>_canvas" style="height:230px; min-height:230px"></canvas>
    </div>
  </div>
  <!-- /.card-body -->
</div>

<!-- Modal -->
<div id="bar1_expand" class="modal" role="dialog">
  <div class="modal-dialog modal-lg modal-dialog-centered">
    <!-- Modal content-->
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
          <canvas id="<?php echo $id; ?>_canvas_expand" style="min-height:230px;"></canvas>
      </div>
    </div>
  </div>
</div> 

<script>
      $(function () {
        /* ChartJS
        * -------
        * Here we will create a few charts using ChartJS
        */
        //var areaChartCanvas = $('#areaChart').get(0).getContext('2d')

          var proChartData = {
          labels  : <?php echo json_encode($block);?>,
          datasets: [
            <?php
              $i=0;
              $color = array('#007bff','#28a745','#ffc107','#dc3545','#c603fc','#fcf803','#fca103','#03e7fc','#03fc98','#fc0398');
              for ($i=0; $i < $no_bar; $i++) { 
                $j = $i % 10;
                echo "{";
                echo  "label: '$bar[$i]',";
                echo  "backgroundColor: '$color[$j]',";
                echo  "pointRadius: false,";
                echo  "pointColor: '#3b8bba',";
                echo  "pointStrokeColor: 'rgba(60,141,188,1)',";
                echo  "pointHighlightFill: '#fff',";
                echo  "pointHighlightStroke: 'rgba(60,141,188,1)',";
                echo  "data: [";
                echo  implode(",",$data[$i]);
                echo "]},";
              }
            ?>
          ]
        }

        //-------------
        //- BAR CHART -
        //------------

        var proChartCanvas = $('#<?php echo $id; ?>_canvas').get(0).getContext('2d')
        var proChartData = jQuery.extend(true, {}, proChartData)
        <?php
          $i=0;
          for ($i=0; $i < $no_bar; $i++) {
            echo "var temp = proChartData.datasets[$i]\n";
            echo "proChartData.datasets[$i] = temp\n";
          }
        ?>

        var proChartOptions = {
          responsive              : true,
          maintainAspectRatio     : false,
          datasetFill             : false
        }

        var proChart = new Chart(proChartCanvas, {
          type: 'bar', 
          data: proChartData,
          options: proChartOptions
        })
    })
</script>


<script>
      $(function () {
        /* ChartJS
        * -------
        * Here we will create a few charts using ChartJS
        */
        //var areaChartCanvas = $('#areaChart').get(0).getContext('2d')

          var proChartData = {
          labels  : <?php echo json_encode($block);?>,
          datasets: [
            <?php
              $i=0;
              $color = array('#007bff','#28a745','#ffc107','#dc3545','#c603fc','#fcf803','#fca103','#03e7fc','#03fc98','#fc0398');
              for ($i=0; $i < $no_bar; $i++) { 
                $j = $i % 10;
                echo "{";
                echo  "label: '$bar[$i]',";
                echo  "backgroundColor: '$color[$j]',";
                echo  "pointRadius: false,";
                echo  "pointColor: '#3b8bba',";
                echo  "pointStrokeColor: 'rgba(60,141,188,1)',";
                echo  "pointHighlightFill: '#fff',";
                echo  "pointHighlightStroke: 'rgba(60,141,188,1)',";
                echo  "data: [";
                echo  implode(",",$data[$i]);
                echo "]},";
              }
            ?>
          ]
        }

        //-------------
        //- BAR CHART -
        //------------

        var proChartCanvas = $('#<?php echo $id; ?>_canvas_expand').get(0).getContext('2d')
        var proChartData = jQuery.extend(true, {}, proChartData)
        <?php
          $i=0;
          for ($i=0; $i < $no_bar; $i++) {
            echo "var temp = proChartData.datasets[$i]\n";
            echo "proChartData.datasets[$i] = temp\n";
          }
        ?>

        var proChartOptions = {
          responsive              : true,
          maintainAspectRatio     : false,
          datasetFill             : false
        }

        var proChart = new Chart(proChartCanvas, {
          type: 'bar', 
          data: proChartData,
          options: proChartOptions
        })
    })
</script>

</body>
</html>
