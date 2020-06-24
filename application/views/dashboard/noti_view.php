<div class="card mx-auto">
    <div class="card-header bg-warning mx-auto">
        <h3 class="card-title"><b>Notifications</b></h3>
    </div>
    <!-- /.card-header -->
    <div class="card-body table-responsive" style="height: 150px; max-width:400px; min-width:400px;">
        <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
            <div class="carousel-inner" >
            <?php
            if(isset($noti))
            {
                $i=0;
                foreach($noti1 as $x){
                    if($i==0)
                        echo "<div class='carousel-item active'>";
                    else
                        echo "<div class='carousel-item'>";
                    echo "<div class='col-xs-12 text-center'>";
                    echo    "<p class='d-block w-100' alt='First slide'>".$x['notification_text']."</p>";
                    echo "</div>";
                    echo "</div>";
                    $i++;
                }
            }
            ?>

                <div class="carousel-item">
                    <div class="col-xs-12 text-center">
                        <p class="d-block w-100" alt="First slide">MPR</p>
                    </div>
                </div>
            </div>
            <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                <span class="sr-only">Previous</span>
            </a>
            <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                <span class="sr-only">Next</span>
            </a>
        </div>
    </div>
    <!-- /.card-body -->
</div>
<!-- /.card -->