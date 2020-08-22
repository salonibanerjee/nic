<div class="card card-primary" style="padding: 5px">
    <div class="row">
        <div class="col-md-3">
            <h5 class="ml-2 p-0" style="margin-top: 10px;">
                <i class="fas fa-paste pr-1"></i>
                Report Generation
            </h5>
        </div>
        <div class="col-md-3">
            <a href="http://localhost/NIC/index.php/Report/pdfreport"><button type="button" class="btn btn-block bg-danger"><i class="fa fa-file-pdf float-left" style="font-size:30px;"></i><p class="m-0" style="padding-top: 3px;">PDF Format</p></button></a>
        </div>
        <div class="col-md-3">
            <a href="http://localhost/NIC/index.php/Report/excelreport"><button type="button" class="btn btn-block bg-success"><i class="fa fa-file-excel float-left" style="font-size:30px;" name="excel" id="excel"></i><p class="m-0" style="padding-top: 3px;">Excel Format</p></button></a>
        </div>
        <div class="col-md-3">
            <a href="http://localhost/NIC/index.php/Report"><button type="button" class="btn btn-block bg-warning"><i class="fa fa-history float-left" style="font-size:30px;"></i><p class="m-0" style="padding-top: 3px;">Generate Past Report</p></button></a>
        </div>
    </div>
</div>
<script type="text/javascript">
    function generate()
    {
        window.location.href="http://localhost/NIC/index.php/Report/pdfreport";
    }
</script>