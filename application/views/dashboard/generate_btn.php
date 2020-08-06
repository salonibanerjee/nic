<div class="card card-primary card-outline" style="width: 400px; padding: 5px">
    <div class="card-header">
        <h3 class="card-title">
        <i class="fas fa-edit"></i>
        Report Generation
        </h3>
    </div>  
    <div class="row text-center" style="padding-top: 5px">
        <div class="col-md-6">
        
            <a href="http://localhost/NIC/index.php/Report/pdfreport"><button type="button" class="btn btn-block bg-danger" style="margin-bottom:3px;"><i class="fa fa-file-pdf float-left" style="font-size:30px;"></i>PDF Format</button></a>
        </div>
        <div class="col-md-6">
            <a href="http://localhost/NIC/index.php/Report/excelreport"><button type="button" class="btn btn-block bg-success"><i class="fa fa-file-excel float-left" style="font-size:30px;",name="excel" id="excel"></i>Excel Format</button></a>
        </div>
    </div>
</div>
<script type="text/javascript">
    function generate()
    {
        window.location.href="http://localhost/NIC/index.php/Report/pdfreport";
    }
</script>