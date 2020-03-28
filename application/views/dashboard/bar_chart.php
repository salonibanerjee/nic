<html>
<body>
    <section class="content">
      <div class="container-fluid">
        <div class="row">
          <div class="col">
            <!-- BAR CHART -->
            <div class="card card-success">
              <div class="card-header">
                <h3 class="card-title">Top 5 Projects with Respect to Financial Progress</h3>
                <div class="card-tools">
                  <button type="button" class="btn btn-tool" data-card-widget="collapse" style="color: black"><i class="fas fa-minus"></i>
                  </button>
                  <button type="button" class="btn btn-tool" data-card-widget="remove" style="color: black"><i class="fas fa-times"></i></button>
                </div>
              </div>
              <div class="card-body">
                <div class="chart">
                  <canvas id="barChart" style="height:230px; min-height:230px"></canvas>
                </div>
              </div>
              <!-- /.card-body -->
            </div>
          </div>
        </div>
      </div>
    </section>
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

        var areaChartData = {
          labels  : <?php echo json_encode($label1); ?>,
          datasets: [
            {
              label               : 'Fund Utilised',
              backgroundColor     : 'rgba(60,141,188,0.9)',
              borderColor         : 'rgba(60,141,188,0.8)',
              pointRadius          : false,
              pointColor          : '#3b8bba',
              pointStrokeColor    : 'rgba(60,141,188,1)',
              pointHighlightFill  : '#fff',
              pointHighlightStroke: 'rgba(60,141,188,1)',
              data                : <?php echo json_encode($data1_1);?>
            },
            {
              label               : 'Fund Recived',
              backgroundColor     : 'rgba(210, 214, 222, 0.9)',
              borderColor         : 'rgba(210, 214, 222, 0.8)',
              pointRadius         : false,
              pointColor          : 'rgba(210, 214, 222, 1)',
              pointStrokeColor    : '#c1c7d1',
              pointHighlightFill  : '#fff',
              pointHighlightStroke: 'rgba(220,220,220,1)',
              data                : <?php echo json_encode($data1_2);?>
            },
          ]
        }

        var proChartData = {
          labels  : <?php echo json_encode($block);?>,
          datasets: [
            {
              label               : '<?php echo $bar_1; ?>',
              backgroundColor     : 'rgba(60,141,188,0.9)',
              borderColor         : 'rgba(60,141,188,0.8)',
              pointRadius          : false,
              pointColor          : '#3b8bba',
              pointStrokeColor    : 'rgba(60,141,188,1)',
              pointHighlightFill  : '#fff',
              pointHighlightStroke: 'rgba(60,141,188,1)',
              data                : <?php echo json_encode($data_1);?>
            },
            {
              label               : '<?php echo $bar_2; ?>',
              backgroundColor     : 'rgba(210, 214, 222, 0.9)',
              borderColor         : 'rgba(210, 214, 222, 0.8)',
              pointRadius         : false,
              pointColor          : 'rgba(210, 214, 222, 1)',
              pointStrokeColor    : '#c1c7d1',
              pointHighlightFill  : '#fff',
              pointHighlightStroke: 'rgba(220,220,220,1)',
              data                : <?php echo json_encode($data_2);?>
            },
            {
              label               : '<?php echo $bar_3; ?>',
              backgroundColor     : 'rgba(50,180,20,0.9)',
              borderColor         : 'rgba(50,180,20,0.8)',
              pointRadius          : false,
              pointColor          : '#3b8bba',
              pointStrokeColor    : 'rgba(50,180,20,1)',
              pointHighlightFill  : '#fff',
              pointHighlightStroke: 'rgba(50,180,20,1)',
              data                : <?php echo json_encode($data_3);?>
            },
            {
              label               : '<?php echo $bar_4; ?>',
              backgroundColor     : 'rgba(236,195,23, 0.9)',
              borderColor         : 'rgba(236,195,23, 0.8)',
              pointRadius         : false,
              pointColor          : 'rgba(236,195,23, 1)',
              pointStrokeColor    : '#c1c7d1',
              pointHighlightFill  : '#fff',
              pointHighlightStroke: 'rgba(236,195,23,1)',
              data                : <?php echo json_encode($data_4);?>
            },
            {
              label               : '<?php echo $bar_5; ?>',
              backgroundColor     : 'rgba(227,37,37, 0.9)',
              borderColor         : 'rgba(227,37,37, 0.8)',
              pointRadius         : false,
              pointColor          : 'rgba(227,37,37, 1)',
              pointStrokeColor    : '#c1c7d1',
              pointHighlightFill  : '#fff',
              pointHighlightStroke: 'rgba(227,37,37,1)',
              data                : <?php echo json_encode($data_5);?>
            },
          ]
        }

        //-------------
        //- BAR CHART -
        //-------------
        var barChartCanvas = $('#barChart').get(0).getContext('2d')
        var barChartData = jQuery.extend(true, {}, areaChartData)
        var temp0 = areaChartData.datasets[0]
        var temp1 = areaChartData.datasets[1]
        barChartData.datasets[0] = temp1
        barChartData.datasets[1] = temp0

        var barChartOptions = {
          responsive              : true,
          maintainAspectRatio     : false,
          datasetFill             : false
        }

        var barChart = new Chart(barChartCanvas, {
          type: 'bar', 
          data: barChartData,
          options: barChartOptions
        })

        var proChartCanvas = $('#proChart').get(0).getContext('2d')
        var proChartData = jQuery.extend(true, {}, proChartData)
        var temp0 = proChartData.datasets[0]
        var temp1 = proChartData.datasets[1]
        var temp2 = proChartData.datasets[2]
        var temp3 = proChartData.datasets[3]
        var temp4 = proChartData.datasets[4]
        proChartData.datasets[1] = temp0
        proChartData.datasets[0] = temp1
        proChartData.datasets[2] = temp2
        proChartData.datasets[3] = temp3
        proChartData.datasets[4] = temp4

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