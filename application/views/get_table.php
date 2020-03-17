<html>
    <head>
    <meta charset='utf-8'>
    <meta http-equiv='X-UA-Compatible' content='IE=edge'>
    <title>AdminLTE 3 | Validation Form</title>
    <!-- Tell the browser to be responsive to screen width -->
    <meta name='viewport' content='width=device-width, initial-scale=1'>

    <!-- Font Awesome -->
    <link rel='stylesheet' href='<?php echo base_url();?>css/plugins/fontawesome-free/css/all.min.css'>
    <!-- Ionicons -->
    <link rel='stylesheet' href='https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css'>
    <!-- Theme style -->
    <link rel='stylesheet' href='<?php echo base_url();?>css/dist/css/adminlte.min.css'>
    <!-- Google Font: Source Sans Pro -->
    <link href='https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700' rel='stylesheet'>
    </head>

    <body>
    <aside class="main-sidebar sidebar-dark-primary elevation-4">
    <!-- Brand Logo -->
    <a href="index3.html" class="brand-link">
      <img src="<?php echo base_url();?>logo/logo2.png" alt="Logo" class="brand-image img-circle elevation-3"
           style="opacity: .8">
      <span class="brand-text font-weight-light">MPR</span>
    </a>

    <!-- Sidebar -->
    <div class="sidebar">
      

      <!-- Sidebar Menu -->
      <nav class="mt-2">
        <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu" data-accordion="false">
          <!-- Add icons to the links using the .nav-icon class
               with font-awesome or any other icon font library -->
          <li class="nav-item has-treeview menu-open">
            <a href="#" class="nav-link active">
              <i class="nav-icon fas fa-tachometer-alt"></i>
              <p>
                All Scheme
                <i class="right fas fa-angle-left"></i>
              </p>
            </a>
            <ul class="nav nav-treeview">
                <li class="nav-item">
                    <?php 
                        $i=0;
                        foreach($data_table as $row){
                            echo "<a href='./$row' class='nav-link'>";
                            echo "<p>".$s_name_table[$i]."</p>";
                            echo "</a>";
                            $i++;
                        }
                    ?>
                </li>
            </ul>
          </li>
        </ul>
      </nav>
      <!-- /.sidebar-menu -->
    </div>
    <!-- /.sidebar -->
  </aside>

    <div class="content-wrapper">

        <section class="content-header">
        <div class="container-fluid">
            <div class="row mb-2">
            <div class="col-sm-6">
                <h1>Scheme Form</h1>
            </div>
            <div class="col-sm-6">
                <ol class="breadcrumb float-sm-right">
                <li class="breadcrumb-item"><a href="#">Home</a></li>
                <li class="breadcrumb-item active">Scheme Form</li>
                </ol>
            </div>
            </div>
        </div>

        </section>
        <section class='content'>
        <div class='container-fluid'>
            <div class='row'>
            <!-- left column -->
            <div class='col-md-11'>
                
                <div class='card card-primary'>
                <div class='card-header'>
                    <h3 class='card-title'><?php echo $name; ?></h3>
                </div>
                <!-- /.card-header -->
                <!-- form start -->
                <form role='form' method="post" id='form'>
                    <div class='card-body'>
                    <?php
                        $i=0;
                        foreach($data as $row){
                            if($row == 'id' || $row == 'user' || $row == 'tstamp' ||$row=='ip' ||$row=='gp_id'){
                                $i++;
                                continue;
                            }
                            elseif($row == 'session'){
                                $year=intval(date('Y'));
                                echo "<div class='form-group'>";
                                echo    "<label>$s_name[$i]</label>";
                                echo    "<select name='$row' id='$row' class='form-control select2 select2-hidden-accessible' style='width: 100%;' data-select2-id='1' tabindex='-1' aria-hidden='true'>";
                                        for($x=$year;$x>=2019;$x--){
                                            echo "<option value='$x'".set_select($row,$x).">".$x."</option>";
                                        }
                                echo    "</select>";
                                echo "<p class='error invalid-feedback'><small>".form_error($row)."</small></p>";
                                //echo  "<span class='select2 select2-container select2-container--default select2-container--below' dir='ltr' data-select2-id='2' style='width: 100%;'><span class='selection'><span class='select2-selection select2-selection--single' role='combobox' aria-haspopup='true' aria-expanded='false' tabindex='0' aria-disabled='false' aria-labelledby='select2-u66w-container'><span class='select2-selection__rendered' id='select2-u66w-container' role='textbox' aria-readonly='true' title='Enter Session'>Alabama</span><span class='select2-selection__arrow' role='presentation'><b role='presentation'></b></span></span></span><span class='dropdown-wrapper' aria-hidden='true'></span></span>";
                                echo "</div>";
                                $i++;
                            }
                            elseif($row == 'date' || $row == 'Till_date' || $row == 'Date_of_Inception' || $row == 'Date_of_Inspection'){
                                $year=date('Y-m-d');
                                echo "<div class='form-group'>";
                                echo "<label>$s_name[$i]</label>";
                                echo "<input name='$row' id='$row' type='date' class='form-control' data-inputmask-alias='datetime' data-inputmask-inputformat='dd/mm/yyyy' data-mask='' im-insert='false' style='width:200;'>";
                                echo "<p class='error invalid-feedback'><small>".form_error($row)."</small></p>";
                                echo "</div>";
                                $i++;
                            } else{
                                echo "<div class='form-group'>";
                                echo    "<label>$s_name[$i]</label>";
                                echo    "<input type='text' class='form-control' name='$row' id='$row' placeholder='Enter Value' value='".set_value($row)."'>";
                                echo    "<p class='error invalid-feedback'><small>".form_error($row)."</small></p>";
                                echo "</div>";
                                $i++;
                            }
                        }
                    
                    ?>
                    </div>
                    <!-- /.card-body -->
                    <div class='card-footer'>
                    <button type='submit' class='btn btn-primary' name='save' id='save' value="<?php 
                        if(form_error('session')){
                            echo 'Update data';
                        }else{
                            echo 'Save data';
                        }
                        ?>"><?php 
                        if(form_error('session')){
                            echo 'Update';
                        }else{
                            echo 'Save';
                        }
                        ?></button>
                    <input type='hidden' name='hid' id='hid' value="<?php 
                        form_error('session');
                        ?>">
                    </div>
                </form>
                </div>
                <!-- /.card -->
                </div>
            <!--/.col (left) -->
            <!-- right column -->
            <div class='col-md-6'>

            </div>
            <!--/.col (right) -->
            </div>
            <!-- /.row -->
            </div><!-- /.container-fluid -->
        </section>
    </div>
    <!-- jQuery -->
    <script src='<?php echo base_url();?>css/plugins/jquery/jquery.min.js'></script>
    <!-- Bootstrap 4 -->
    <script src='<?php echo base_url();?>css/plugins/bootstrap/js/bootstrap.bundle.min.js'></script>
    <!-- jquery-validation -->
    <script src='<?php echo base_url();?>css/plugins/jquery-validation/jquery.validate.min.js'></script>
    <script src='<?php echo base_url();?>css/plugins/jquery-validation/additional-methods.min.js'></script>
    <!-- AdminLTE App -->
    <script src='<?php echo base_url();?>css/dist/js/adminlte.min.js'></script>
    <!-- AdminLTE for demo purposes -->
    <script src='<?php echo base_url();?>css/dist/js/demo.js'></script>
    <script type='text/javascript'>

    <script>
    
    $(function() {
    $('form').submit(function() {
        $.ajax({
            type: 'POST',
            url: 'submit.php',
            data: { username: $(this).name.value, 
                    password: $(this).password.value }
            data: {
                foreach($data as $row){

                }
            }
        });
        return false;
    }); 
})
    
    </script>
    </body>
</html>
