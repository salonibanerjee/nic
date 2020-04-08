
    <div class="wrapper">
        <div class="row">
            <div class="col-md-12">
                <?php echo $info_box; ?>
            </div>
        </div>
        <div class="row">
            <div class="col-md-8">
                <?php echo $progress_view ?>
            </div>
            <div class="col-md-4">
                <div class="row" >
                    <?php echo $noti_view  ?>
                </div>
                <div class="row">
                <section class="content">
                    <div class="container-fluid">
                        
                            <div class="card card-primary card-outline" style="min-width: 300px; padding: 5px">
                                <div class="card-header">
                                    <h3 class="card-title">
                                    <i class="fas fa-edit"></i>
                                    Report Generation
                                    </h3>
                                </div>  
                                <div class="row text-center" style="padding-top: 5px">
                                    <div class="col-md-6">
                                    
                                        <button type="button" class="btn btn-block btn-outline-primary btn-sm">PDF format</button>
                                    </div>
                                    <div class="col-md-6">
                                        <button type="button" class="btn btn-block btn-outline-success btn-sm">Excel format</button>
                                    </div>
                                </div>
                                <div class="row text-center align-items-center">
                                    <div class="col-md-12" style="padding-top: 5px">
                                        <div class="btn-group">
                                            <button type="button" class="btn btn-default">Current Year</button>
                                            <button type="button" class="btn btn-default dropdown-toggle dropdown-icon" data-toggle="dropdown">
                                            <span class="sr-only">Toggle Dropdown</span>
                                            <div class="dropdown-menu" role="menu">
                                                <a class="dropdown-item" href="#">Current Year</a>
                                                <div class="dropdown-divider"></div>
                                                <a class="dropdown-item" href="#">Last year</a>
                                            </div>
                                            </button>
                                        </div>
                                    </div>
                                </div>
                                
                            </div>
                        
                    </div>
                    </section>
                </div>
                    
            </div>
        </div>
        <div class="row">
            <div class="col-md-6">
                <?php echo $bar_chart1 ?>
            </div>
            <div class="col-md-6">
                <?php echo $pie_chart  ?>
            </div>
        </div>
        <div class="row">
            <div class="col-md-12">
                <?php echo $bar_chart2; ?>
            </div>
        </div>
        <div class="row">
            <div class="col-md-12">
                <?php echo $alert_table; ?>
            </div>
        </div>
    </div>
</div>
    