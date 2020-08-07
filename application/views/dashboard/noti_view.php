<div class="card mx-auto">
    <div class="card-header bg-warning">
        <h3 class="card-title text-center"><b>Notifications</b></h3>
    </div>
    <!-- /.card-header -->
    <div class="card-body p-0" style="max-height: 300px; overflow-y: scroll; min-width: 330px">
        <table class="table table-bordered">
            <tbody>
                <?php
                if(isset($noti))
                {
                    $i=0;
                    foreach($noti1 as $x){

                        echo "<tr><td><p class='m-0'>".$x['notification_text']."</p></td></tr>";
                        $i++;
                    }
                }
                ?>
            </tbody>
        </table>
    </div>
    <!-- /.card-body -->
</div>
<!-- /.card -->