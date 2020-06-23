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
            echo "<img src='http://localhost/NIC/css/dist/img/avatar00.png' class='img-circle elevation-2' alt='User Image' style='width:35px; height:35px;'>";
          }else{
            echo "<img src='data: image/jpeg; base64, $image' class='img-circle elevation-2' alt='User Image' style='width:35px; height:35px;'>";
          }?>
        </div>
        <div style="margin-left:10px; margin-top:-7px;" id="x" class="x">
          <a href="http://localhost/NIC/index.php/Summary/profile" class="d-block"><strong><?php echo $f_name." ".$m_name." ".$l_name?></strong></a>
          <a href="http://localhost/NIC/index.php/Summary/profile" class="d-block"><small><?php echo $username ?></small></a>
          <?php if($update_prof==1){
            echo "<a href='http://localhost/NIC/index.php/Summary/edit_profile' style='color:#E57777;'><i class='fa fa-circle text-danger fa-xs ' style='margin-right:3px;'></i><small><strong>COMPLETE YOUR PROFILE</strong></small></a>";
          }?>
          </div>
                  
      </div>
      <nav class="mt-2">
        <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu" data-accordion="false">
          <!-- Add icons to the links using the .nav-icon class
               with font-awesome or any other icon font library -->
          <?php
            $icon[1] = 'fa-tv text-purple';
            $icon[2] = 'fa-user text-blue';
            $icon[5] = 'fa-edit text-maroon';
            $icon[6] = 'fa-list-alt text-info';
            $icon[7] = 'fa-check text-green';
            $icon[8] = 'fa-user-secret text-orange';
            $icon[17] = 'fa-calendar-check text-teal';
            $icon[18] = 'fa-bell text-yellow';
            $icon[20] = 'fa-power-off text-danger';

            $data=$this->cache->get('Active_status'.$this->session->userdata('loginid'))['user_type_id_fk'];
            $var=$this->cache->get('User_type'.$data)['user_privilege'];
            $scheme_hier=$this->cache->get('scheme_hier_'.$this->session->userdata('dept'));
            $i=0;
            foreach($var as $x){
              if($x['view_sidebar']==1){
                $var1=current_url();
                $var2= 'http://localhost/NIC/index.php/'.$x['link'];
                echo "<li class='nav-item'>";
                if($var1==$var2){
                    echo "<a href='http://localhost/NIC/index.php/".$x['link']."' class='nav-link bg-black' style='border-bottom: 0.4px solid gray;'>";
                }elseif(strpos($var1,'load')!=FALSE){
                  if(strpos($var1,'Get_table')!=FALSE){
                    if($x['privilege_id_fk']==5){
                      echo "<a href='http://localhost/NIC/index.php/".$x['link']."/".$scheme_hier[0]['scheme_link']."' class='nav-link bg-black' style='border-bottom: 0.4px solid gray;'>";
                    }elseif($x['privilege_id_fk']==6){
                      echo "<a href='http://localhost/NIC/index.php/".$x['link']."/".$scheme_hier[0]['scheme_link']."' class='nav-link' style='border-bottom: 0.4px solid gray;'>";
                    }else
                      echo "<a href='http://localhost/NIC/index.php/".$x['link']."' class='nav-link' style='border-bottom: 0.4px solid gray;'>";
                  }elseif(strpos($var1,'View_data')!=FALSE){
                    if($x['privilege_id_fk']==6){
                      echo "<a href='http://localhost/NIC/index.php/".$x['link']."/".$scheme_hier[0]['scheme_link']."' class='nav-link bg-black' style='border-bottom: 0.4px solid gray;'>";
                    }elseif($x['privilege_id_fk']==5){
                      echo "<a href='http://localhost/NIC/index.php/".$x['link']."/".$scheme_hier[0]['scheme_link']."' class='nav-link' style='border-bottom: 0.4px solid gray;'>";
                    }else
                      echo "<a href='http://localhost/NIC/index.php/".$x['link']."' class='nav-link' style='border-bottom: 0.4px solid gray;'>";
                  }
                }else
                  if($x['privilege_id_fk']==5 || $x['privilege_id_fk']== 6 ){
                    echo "<a href='http://localhost/NIC/index.php/".$x['link']."/".$scheme_hier[0]['scheme_link']."' class='nav-link' style='border-bottom: 0.4px solid gray;'>";
                  }else
                    echo "<a href='http://localhost/NIC/index.php/".$x['link']."' class='nav-link' style='border-bottom: 0.4px solid gray;'>";
        
                  echo "<i class='nav-icon fas ".$icon[$x['privilege_id_fk']]."'></i>";
                echo "<p>";
                echo $x['page_name'];
                echo "</p>";
                echo "</a>";
                echo "</li>";
                $i++;
              }
            }
          ?>
          </script>
          <?php if($flag==1){
            $scheme_hier=$this->cache->get('scheme_hier_'.$this->session->userdata('dept'));
            echo "<li id='hulala' class='nav-item has-treeview menu-open'>";
              echo "<a href='#' class='nav-link active bg-black'>";
                echo "<i class='nav-icon fas fa-circle'></i>";
                echo "<p>";
                echo  "All Scheme";
                  echo "<i class='right fas fa-angle-left'></i>";
                echo "</p>";
              echo "</a>";
              echo "<ul class='nav nav-treeview' id='myUL'>";
                echo "<input id='schemeSearch' onkeyup='myFunction()' class='form-control' type='text' placeholder='Search' style='height:30px; width:92%; margin-left:10px'>";
                    $i=0;
                    $var1=current_url();
                    foreach($scheme_hier as $row){
                        $var2= $row['scheme_link'];
                        $str = $row['scheme_name'];

                        if(strpos($var1,$var2)!=False){
                            echo "<li class='nav-item bg-black' style='max-width: 230px; border-radius:5px;'><a style='word-wrap: break-word;' href='./".$row['scheme_link']."' class='nav-link'>".substr($str,0,30)."<br>".substr($str,30)."</a></li>";
                        }else{
                            echo "<li class='nav-item' style='max-width: 230px; '><a style='word-wrap: break-word;' href='./".$row['scheme_link']."' class='nav-link'>".substr($str,0,30)."<br>".substr($str,30)."</a></li>";
                        }
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

  <style>
.x {
  width:200px;
  overflow-x:scroll;
}
.x::-webkit-scrollbar {
    height: 7px;
}

.x::-webkit-scrollbar-track {
  box-shadow: inset 0 0 7px black;
  border-radius: 5px;
  height:5px;
}

.x::-webkit-scrollbar-thumb {
  background: grey;
  border-radius: 5px;
  height: 2px;
}
.x::-webkit-scrollbar-thumb:hover {
  background: #555; 
}
  </style>