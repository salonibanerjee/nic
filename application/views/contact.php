<div class="content-wrapper">
  <!-- Content Header (Page header) -->
  <section class="content-header">
    <div class="container-fluid">
      <div class="row mb-2">
        <div class="col-sm-6">
          <h1>CONTACT  <b>US</b></h1>
        </div>
        <div class="col-sm-6">
          <ol class="breadcrumb float-sm-right">
            <li class="breadcrumb-item"><a href="http://localhost/NIC/index.php/<?php echo $this->cache->get('User_type'.$var)['user_privilege'][0]['link']?>">Home</a></li>
            <li class="breadcrumb-item active">Contact Us</li>
          </ol>
        </div>
      </div>
    </div><!-- /.container-fluid -->
  </section>
  <section class="content">
    <div class="container-fluid">
  <!-- /.login-logo -->
  <div class="row">
    <div class="col-md-8">
      <section class='content'>
          <div class='container-fluid'>
            <div class='row'>
              <div class="col-md-12" id='refresh'>
                <div class="card">
                  <!-- /.card-header -->
                  <div class="card-body" >
                    <div class="row">
                        <div class="col-md-12 d-flex">
                            <div class="card">
                                <div class="card-body" style="text-align:center; background:#CDE2FF;"  >
                                    <span class="fas fa-info fa-4x circle-icon" ></span>
                                    <br></br>
                                    <h2><b>About MPR</b></h2>
                                    <h5><i>MPR is a monthly progress report web app designed by a team under NIC(National Informatics Centre) which 
                                        eases the manual work of records of schemes through out the district of howrah and boils down to a simple web app.
                                    </i></h5>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-4 d-flex">
                            <div class="card">
                                <div class="card-body" style="text-align:center; background:#CDE2FF;"  >
                                    <span class="fas fa-envelope fa-4x circle-icon" ></span>
                                    <br></br>
                                    <h2><b>Email us</b></h2>
                                    <h5><a href="mailto:abc@gmail.com"><i>abc@gmail.com</i></a></h5>
                                    
                                    <h5><b><u>Necessary Instruction</u></b><h5>
                                    <h6><i>Please mention MPR-Issues in the subject of your email for easier identification</i></h6>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-4 d-flex">
                        <div class="card">
                                <div class="card-body" style="text-align:center; background:#CDE2FF;" >
                                    <span class="fas fa-phone fa-4x circle-icon" ></span>
                                    <br></br>
                                    <h2><b>Call us</b></h2>
                                    <h5><a href="tel:+919876543210"><i>+91-9876543210</i></a></h5>
                                    
                                    <h5><b><u>Necessary Instruction</u></b><h5>
                                    <h6><i>Available on all working days from 10am to 5pm.Saturday and Sunday are holidays.</i></h6>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-4 d-flex">
                        <div class="card">
                                <div class="card-body"  style="text-align:center; background:#CDE2FF;">
                                    <span class="fas fa-map-marker fa-4x circle-icon" ></span>
                                    <br></br>
                                    <h2><b>Location</b></h2>
                                    <h5><a href="http://maps.google.com/?q=123, Rishi Bankim, Chandra Rd, Shree Market, Howrah Maidan, Howrah, West Bengal 711101" target="_blank"><i>123, Rishi Bankim, Chandra Rd, Shree Market, Howrah Maidan, Howrah, West Bengal 711101</i></a></h5>
                                    
                                    <h5><b><u>Necessary Instruction</u></b><h5>
                                    <h6><i>Available on all working days from 10am to 5pm.Saturday and Sunday are holidays.</i></h6>
                                </div>
                            </div>
                        </div>
                    </div>
                    
                  </div>
                  <!-- /.card-body -->
                </div>
              </div>
              
            <!-- right column -->
            <div class='col-md-1'>
            

            </div>
            <!--/.col (right) -->
            </div>
            <!-- /.row -->
          </div><!-- /.container-fluid -->
      </section>
    </div>
    <div class="col-md-4">
      <div class="card card-primary card-outline mx-auto">
        <div class="card-body login-card-body" Style="background:#CDE2FF;">
          <h2><strong>Facing Issues?  <br>Write us here:</br></strong></h2>
          <?php echo form_open('contact/send','id="form"');?>

            <div class="form-group">
                <input type="text" class="form-control" name = "name" id="name" placeholder="Enter your name" style="border-radius:20px;">
            </div>
            <div class="form-group">
                <input type="email" class="form-control" name = "email" id="email" placeholder="Enter your email" style="border-radius:20px;">
            </div>
            <div class="form-group">
                <div class="row">
                    <div class="col-md-4">
                        <label>Rate Our App:</label>
                    </div>
                    <div class="col-md-8">
                        <div class="card"style="border-radius:20px;" >
                        <div class="rating mx-auto" style="font-size:15px;">
                            <input id="star5" name="star" type="radio" value="5" class="radio-btn hide" />
                            <label for="star5" >☆</label>
                            <input id="star4" name="star" type="radio" value="4" class="radio-btn hide" />
                            <label for="star4" >☆</label>
                            <input id="star3" name="star" type="radio" value="3" class="radio-btn hide" />
                            <label for="star3" >☆</label>
                            <input id="star2" name="star" type="radio" value="2" class="radio-btn hide" />
                            <label for="star2" >☆</label>
                            <input id="star1" name="star" type="radio" value="1" class="radio-btn hide" />
                            <label for="star1" >☆</label>
                            <div class="clear"></div>
                        </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="form-group">
                <textarea class="form-control" name = "text" id="text" placeholder="Describe your issues" style="border-radius:20px;"></textarea>
            </div>
            <div id="errors" style="color:red;"></div>
                <div id='err'>
                <button type='submit' class='btn btn-primary' name='form_sub' id='form_sub' form="form" style="border-radius:20px; display: block; margin-left: auto;  margin-right: auto; padding-right:40px; padding-left:40px;" value="Submit">Send</button>
                </div>
            </div>
        </div>
        <!-- /.login-card-body -->
      </div>
    </div>
  </div>
</div>
</section>
</div>


<style>
    .circle-icon {
    background: #5FA0F9;
    width: 100px;
    height: 100px;
    border-radius: 50%;
    text-align: center;
    line-height: 100px;
    vertical-align: middle;
}
 .txt-center {
      text-align: center;
    }
    .hide {
      display: none;
    }

    .clear {
      float: none;
      clear: both;
    }

.rating {
        width: 90px;
        unicode-bidi: bidi-override;
        direction: rtl;
        text-align: center;
        position: relative;
    }

    .rating > label {
        float: right;
        display: inline;
        padding: 0;
        margin: 0;
        position: relative;
        width: 1.1em;
        cursor: pointer;
        color: #000;
    }

    .rating > label:hover,
    .rating > label:hover ~ label,
    .rating > input.radio-btn:checked ~ label {
        color: transparent;
    }

    .rating > label:hover:before,
    .rating > label:hover ~ label:before,
    .rating > input.radio-btn:checked ~ label:before,
    .rating > input.radio-btn:checked ~ label:before {
        content: "\2605";
        position: absolute;
        left: 0;
        color: #FF3D3D;
    }
</style>

<script src="http://localhost/NIC/css/plugins/overlayScrollbars/js/jquery.overlayScrollbars.min.js"></script>
<script src="http://localhost/NIC/js/notify.js"></script>
<script type="text/javascript" >
//form submit for issues---------------------------------------------------------------------------------
var csrf_token='';
$("#form").on("submit", function (event) {
  event.preventDefault();
  if(csrf_token==''){
    csrf_token='<?php echo $this->security->get_csrf_hash(); ?>';
  }
  $.ajax({
    url: $('#form').attr('action'),
    type: "POST",
    data: $('#form').serialize()+"&<?php echo $this->security->get_csrf_token_name(); ?>="+csrf_token,
    //dataType: 'html',
    error: function(){
			console.log("Form cannot be submitted...");
		},
    cache: false,
    success: function(result){
      var k=JSON.parse(result);
      if (k.csrf_token){
        csrf_token=k.csrf_token;
      }
      if(k.res==0){
        $('#errors').html(k.errors);
        console.log("error");
      }else{ 
        $('#errors').html("");
        $("form")[0].reset();
        $("#form_sub").notify("Value accepted",{position:"right", className: 'success'});
        console.log("submit");
      }
    }
  });
});
</script>