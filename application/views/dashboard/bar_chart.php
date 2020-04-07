<html>
<body>

    <section class="content">
      <div class="container-fluid">
        <div class="row">
          <div class="col">
            <!-- BAR CHART -->
            <div class="card card-success">
              <div class="card-header">
                <h3 class="card-title">Progress Report of Blocks</h3>
                <div class="card-tools">
                  <button type="button" class="btn btn-tool" data-card-widget="collapse" style="color: black"><i class="fas fa-minus"></i>
                  </button>
                  <button type="button" class="btn btn-tool" data-card-widget="remove" style="color: black"><i class="fas fa-times"></i></button>
                </div>
              </div>
              <div class="card-body">
                <div class="chart">
                  <canvas id="proChart" style="height:230px; min-height:230px"></canvas>
                </div>
              </div>
              <!-- /.card-body -->
            </div>
          </div>
        </div>
      </div>
    </section>
</body>
</html>

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
              $color = array('#007bff','#28a745','#ffc107','#dc3545');
              for ($i=0; $i < $no_bar; $i++) { 
                $j = $i % 4;
                echo "{";
                echo  "label: '$bar[$i]',";
                echo  "backgroundColor: '$color[$j]',";
                //echo  "borderColor: 'rgba(60,141,188,0.8)',";
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

        var proChartCanvas = $('#proChart').get(0).getContext('2d')
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