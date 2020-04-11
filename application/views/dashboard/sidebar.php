<aside class="main-sidebar sidebar-dark-primary elevation-4">
    <!-- Brand Logo -->
    <a href="index3.html" class="brand-link bg-primary">
      <img src="<?php echo base_url();?>logo/wb_logo.png" alt="Logo" class="brand-image">
      <span class="brand-text font-weight-light"><b>MPR</b></span>
    </a>
    <!-- Sidebar -->
    <div class="sidebar"> 
      <!-- Sidebar Menu -->
      <div class="user-panel mt-3 pb-3 mb-3 d-flex" >
        <div class="image">
          <?php if($image==""||$image==NULL){
            echo "<img src='http://localhost/NIC/css/dist/img/avatar04.png' class='img-circle elevation-2' alt='User Image' style='width:35px; height:35px;'>";
          }else{
            echo "<img src='data: image/jpeg; base64, $image' class='img-circle elevation-2' alt='User Image' style='width:35px; height:35px;'>";
          }?>
        </div>
        <div style="margin-left:10px; margin-top:-7px;">
          <a href="http://localhost/NIC/index.php/Summary/profile" class="d-block"><strong><?php echo $f_name." ".$l_name?></strong></a>
          <a href="http://localhost/NIC/index.php/Summary/profile" class="d-block"><small><?php echo $designation ?></small></a>
          <?php if($update_prof==1){
          echo "<a href='http://localhost/NIC/index.php/Summary/edit_profile' style='color:#E57777;'><i class='fa fa-circle text-danger fa-xs ' style='margin-right:3px;'></i><small><strong>COMPLETE YOUR PROFILE</strong></small></a>";
          }?>
          </div>
        
      </div>
      <nav class="mt-2">
        <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu" data-accordion="false"">
          <!-- Add icons to the links using the .nav-icon class
               with font-awesome or any other icon font library -->
          <?php
            $data=$this->cache->get('Active_status')['user_type_id_fk'];
            $var=$this->cache->get('User_type'.$data)['user_privilege'];
            foreach($var as $x){
              if($x['view_sidebar']==1){
                echo "<li class='nav-item'>";
                echo "<a href='http://localhost/NIC/index.php/".$x['link']."' class='nav-link'>";
                echo "<i class='nav-icon fas fa-circle'></i>";
                echo "<p>";
                echo $x['page_name'];
                echo "</p>";
                echo "</a>";
                echo "</li>";
              }
            }
          ?>
          <li class="nav-item">
            <a href="http://localhost/NIC/index.php/Meeting_schedule" class="nav-link">
              <i class="nav-icon fas fa-circle"></i>
              <p>Schedule a Meeting</p>
            </a>
          </li>

          <?php if($flag==1){
            echo "<li id='hulala' class='nav-item has-treeview menu-open'>";
              echo "<a href='#' class='nav-link'>";
                echo "<i class='nav-icon fas fa-circle'></i>";
                echo "<p>";
                echo  "All Scheme";
                  echo "<i class='right fas fa-angle-left'></i>";
                echo "</p>";
              echo "</a>";
              echo "<ul class='nav nav-treeview' id='myUL'>";
                echo "<input id='schemeSearch' onkeyup='myFunction()' class='form-control' type='text' placeholder='Search' style='height:30px; width:92%; margin-left:10px'>";
                    $i=0;
                    foreach($data_table as $row){
                        echo "<li class='nav-item' style='max-width: 230px; '><a style='word-wrap: break-word;' href='./$row' class='nav-link'>".$s_name_table[$i]."</a></li>";
                        $i++;
                    }
              echo "</ul>";
            echo "</li>";
          }?>
        </ul>
      </nav>
      <!-- /.sidebar-menu -->
    </div>
    <!-- /.sidebar -->
</aside>

<script>

    var btnContainer = document.getElementById("pie-btn");

      btnContainer.addEventListener("click", function() {
        var current = document.getElementById("hulala");
        if(current.classList.contains("menu-open")){
          current.style.display = "none";
          current.classList.remove("menu-open");
        }
        else{
          current.style.display = "block";
          current.classList.add("menu-open");
        }
        
      });
    

  </script>