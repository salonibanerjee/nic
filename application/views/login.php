<html>
<head>
<title> Log in Form Details </title>
<link rel="stylesheet" type="text/css" href="<?php echo base_url();?>css/style.css">
<body>
	 <form action="logindo" method="POST">
		 <div class="loginbox">
         <img src="<?php echo base_url();?>logo/avatar.png" class="avatar">
           <h1>Login Here</h1>
		        <p>Username</p>
		        <input type="email" name="email" placeholder="Enter Email"><br>
		        <p>Password</p>
		        <input type="password" name="password" placeholder="Enter Password"><br>
          <input type="submit" name="" value="Login"><br>
		        <a href="#">forgot your password?</a><br>
		        <a href="<?php echo base_url();?>Get_table/register">Don't have an account?</a>
		   </form>
     </div> 

</body>
</head>
</html>
