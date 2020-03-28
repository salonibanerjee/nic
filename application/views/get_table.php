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
    <div class="wrapper">
    <!-- Navbar -->
  <nav class="main-header navbar navbar-expand navbar-white navbar-light">
    <!-- Left navbar links -->
    <ul class="navbar-nav">
      <li class="nav-item">
        <a class="nav-link" data-widget="pushmenu" href="#"><i class="fas fa-bars"></i></a>
      </li>
      <li class="nav-item d-none d-sm-inline-block">
<<<<<<< HEAD
        <a href="<?php echo base_url();?>Get_table/ind" class="nav-link">Home</a>
=======
        <a href="http://localhost/NIC/index.php/summary" class="nav-link">Home</a>
>>>>>>> 994352d273125cb80cee732bafab9f0864f8dee7
      </li>
      <li class="nav-item d-none d-sm-inline-block">
        <a href="#" class="nav-link">Contact</a>
      </li>
      <li class="nav-item d-none d-sm-inline-block">
        <a href="http://localhost/NIC/index.php/get_table/log34" class="nav-link">Logout</a>
      </li>
    </ul>

    
  </nav>
  <!-- /.navbar -->

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
            <div class="col-sm-9">
                <h1>Scheme Form</h1>
            </div>
            <div class="col-sm-3">
            <div class="dropdown">
                <div id="myDropdown" class="dropdown-content">
                  <input type="text" placeholder="Search Scheme" id="myInput">
                  <span><button class="btn btn-navbar" type="submit" id="search">
            <i class="fas fa-search"></i>
          </button></span>
                </div>
              </div>
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
    
    <script type="text/javascript">
        var table_name = <?php echo json_encode($s_name_table); ?>;
        var table_id = <?php echo json_encode($data_table); ?>;

        document.getElementById("search").onclick = function () {
          
          var result = document.getElementById("myInput").value;
          //alert(table_id[table_name.indexOf(result)]);
          window.location.replace(table_id[table_name.indexOf(result)]);
        };

        function autocomplete(inp, arr) {
        /*the autocomplete function takes two arguments,
        the text field element and an array of possible autocompleted values:*/
        var currentFocus;
        /*execute a function when someone writes in the text field:*/
        inp.addEventListener("input", function(e) {
            var a, b, i, val = this.value;
            /*close any already open lists of autocompleted values*/
            closeAllLists();
            if (!val) { return false;}
            currentFocus = -1;
            /*create a DIV element that will contain the items (values):*/
            a = document.createElement("DIV");
            a.setAttribute("id", this.id + "autocomplete-list");
            a.setAttribute("class", "autocomplete-items");
            /*append the DIV element as a child of the autocomplete container:*/
            this.parentNode.appendChild(a);
            /*for each item in the array...*/
            for (i = 0; i < arr.length; i++) {
              /*check if the item starts with the same letters as the text field value:*/
              if (arr[i].substr(0, val.length).toUpperCase() == val.toUpperCase()) {
                /*create a DIV element for each matching element:*/
                b = document.createElement("DIV");
                /*make the matching letters bold:*/
                b.innerHTML = "<strong>" + arr[i].substr(0, val.length) + "</strong>";
                b.innerHTML += arr[i].substr(val.length);
                /*insert a input field that will hold the current array item's value:*/
                b.innerHTML += "<input type='hidden' value='" + arr[i] + "'>";
                /*execute a function when someone clicks on the item value (DIV element):*/
                    b.addEventListener("click", function(e) {
                    /*insert the value for the autocomplete text field:*/
                    inp.value = this.getElementsByTagName("input")[0].value;
                    /*close the list of autocompleted values,
                    (or any other open lists of autocompleted values:*/
                    closeAllLists();
                });
                a.appendChild(b);
              }
            }
        });
        /*execute a function presses a key on the keyboard:*/
        inp.addEventListener("keydown", function(e) {
            var x = document.getElementById(this.id + "autocomplete-list");
            if (x) x = x.getElementsByTagName("div");
            if (e.keyCode == 40) {
              /*If the arrow DOWN key is pressed,
              increase the currentFocus variable:*/
              currentFocus++;
              /*and and make the current item more visible:*/
              addActive(x);
            } else if (e.keyCode == 38) { //up
              /*If the arrow UP key is pressed,
              decrease the currentFocus variable:*/
              currentFocus--;
              /*and and make the current item more visible:*/
              addActive(x);
            } else if (e.keyCode == 13) {
              /*If the ENTER key is pressed, prevent the form from being submitted,*/
              e.preventDefault();
              if (currentFocus > -1) {
                /*and simulate a click on the "active" item:*/
                if (x) x[currentFocus].click();
              }
            }
        });
        function addActive(x) {
          /*a function to classify an item as "active":*/
          if (!x) return false;
          /*start by removing the "active" class on all items:*/
          removeActive(x);
          if (currentFocus >= x.length) currentFocus = 0;
          if (currentFocus < 0) currentFocus = (x.length - 1);
          /*add class "autocomplete-active":*/
          x[currentFocus].classList.add("autocomplete-active");
        }
        function removeActive(x) {
          /*a function to remove the "active" class from all autocomplete items:*/
          for (var i = 0; i < x.length; i++) {
            x[i].classList.remove("autocomplete-active");
          }
        }
        function closeAllLists(elmnt) {
          /*close all autocomplete lists in the document,
          except the one passed as an argument:*/
          var x = document.getElementsByClassName("autocomplete-items");
          for (var i = 0; i < x.length; i++) {
            if (elmnt != x[i] && elmnt != inp) {
            x[i].parentNode.removeChild(x[i]);
          }
        }
      }
      /*execute a function when someone clicks in the document:*/
      document.addEventListener("click", function (e) {
          closeAllLists(e.target);
      });
      }

      autocomplete(document.getElementById("myInput"), table_name);
    </script>
    
    </script>
    </body>
</html>
