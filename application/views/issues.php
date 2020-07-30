<div class="content-wrapper">
  <!-- Content Header (Page header) -->
  <section class="content-header">
    <div class="container-fluid">
      <div class="row mb-2">
        <div class="col-sm-6">
          <h1>FEEDBACK  <b>BOX</b></h1>
        </div>
        <div class="col-sm-6">
          <ol class="breadcrumb float-sm-right">
            <li class="breadcrumb-item"><a href="<?php echo base_url();?>index.php/<?php echo $this->cache->get('User_type'.$var)['user_privilege'][0]['link']?>">Home</a></li>
            <li class="breadcrumb-item active">Feedback Box</li>
          </ol>
        </div>
      </div>
    </div><!-- /.container-fluid -->
  </section>
  <section class="content">
    <div class="container-fluid">
        <div class="card card-solid">
            <div class="card-body pb-0" style="background:#B8B0A8;">
                <div class="row d-flex align-items-stretch">

                    <?php foreach($data as $row){
                    ?>

                        <div class="col-12 col-sm-6 col-md-3 d-flex align-items-stretch">
                            <div class="card bg-light" id="<?php echo $row['issue_id_pk'];?>">
                                <div class="card-header text-muted border-bottom-0">
                                    Feedback id: <?php echo $row['issue_id_pk'];?>
                                    <button  onclick="document.getElementById('<?php echo $row['issue_id_pk'];?>').style.display='none'" class="btn btn-outline-danger float-right">
                                        <span><b>✖</b></span>
                                    </button>
                                </div>
                            <div class="card-body pt-0">
                            <div class="row">
                                <div class="col-md-12">
                                    <?php $flag=true; foreach($profile_image as $pr){
                                            if($pr['profile_id_pk']==$row['login_id_fk']){ 
                                                if($pr['image']==NULL)
                                                    echo "<img src='<?php echo base_url();?>css/dist/img/avatar04.png' alt='' class='profile-user-img img-responsive img-circle'>";
                                                else{
                                                    $image1=$pr['image'];
                                                    echo "<img src='data: image/jpeg; base64, $image1' alt='' class='profile-user-img img-responsive img-circle'>";  
                                                }
                                                $flag=false; 
                                                break;
                                            }
                                        } 
                                        if($flag==true){
                                            echo "<img src='<?php echo base_url();?>css/dist/img/avatar04.png' alt='' class='profile-user-img img-responsive img-circle'>";
                                    }?>
                                </div>
                                <div class="col-md-12">
                                    <h4><b><?php echo $row['name'];?></b></h4>
                                    <ul class="ml-4 mb-0 fa-ul text-muted">
                                        <li class="small"><span class="fa-li"><i class="fas fa-lg fa-star"></i></span><b>Rating: </b> <?php $i=0; while($i<5){if($i<$row['rating']){echo '⭐'; $i++;}else{echo '☆'; $i++;}} ?></li>
                                        <br>
                                        <li class="small"><span class="fa-li"><i class="fas fa-lg fa-envelope"></i></span><h6><b>Email:</b></h6><?php echo str_replace('@','[at]',str_replace('.','[dot]',$row['email'])); ?></li>
                                        <li class="small"><span class="fa-li"><i class="fas fa-lg fa-comments"></i></span><h6><b>Issue Description:</b></h6><?php echo $row['description'];?></li>
                                    </ul>
                                </div>
                            </div>
                            </div>
                            <div class="card-footer">
                            <div class="text-right">
                                
                                <button  id='copy<?php echo $row['issue_id_pk'];?>' class="btn btn-sm btn-primary" onclick="coopy('<?php echo $row['email'];?>','copy<?php echo $row['issue_id_pk'];?>');">
                                <i class="fas fa-clipboard"></i> Copy UID to clipboard
                                </button>
                            </div>
                            </div>
                        </div>
                    </div>
                    <?php }?>

                    

                </div>
            </div>
        </div> 

    </div>
  </section>
</div>
<script src="<?php echo base_url();?>css/plugins/overlayScrollbars/js/jquery.overlayScrollbars.min.js"></script>
<script src="<?php echo base_url();?>js/notify.js"></script>
<script>
    function coopy(text,idd) {
        navigator.clipboard.writeText(text);
        $("#"+idd).notify("Copied to clipboard",{position:"right", className: 'success'});
    }
</script>