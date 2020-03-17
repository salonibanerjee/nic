<!DOCTYPE html>
<html >

<body>
<form action="reg_do" method="post">
<div class="Reg_Box">
<h2> Register Here</h2>
UserName: <input type="text"  id= "uname" name="uname" class="n1" placeholder="Enter username"><br>
Password: <input type="password" name="password" placeholder="Enter Password" class ="n2"><br>
Designation:<input type="text" id="desg" name="desg" class="n4" placeholder="Enter designation"><br>
District:
<select id="dist" name="dists" class="n5">
  <option value="Alipurduar">Alipurduar</option>
  <option value="Bankura">Bankura</option>
  <option value="Bardhaman">Bardhaman</option>
  <option value="Birbhum">Birbhum</option>
  <option value="Cooch Behar">Cooch Behar</option>
  <option value="Darjeeling">Darjeeling</option>
  <option value="Hooghly">Hooghly</option>
  <option value="Howrah">Howrah</option>
  <option value="Jalpaiguri">Jalpaiguri</option>
  <option value="Jhargram">Jhargram</option>
  <option value="Kolkata">Kolkata</option>
  <option value="Kalimpong">Kalimpong</option>
  <option value="Malda">Malda</option>
  <option value="Medinipur(East)">Medinipur(East)</option>
  <option value="Medinipur(West)">Medinipur(West)</option>
  <option value="Murshidabad">Murshidabad</option>
  <option value="Nadia">Nadia</option>
  <option value="North Dinajpur">North Dinajpur</option>
  <option value="South Dinajpur">South Dinajpur</option>
  <option value="North 24 Parganas">North 24 Parganas</option>
  <option value="South 24 Parganas">South 24 Parganas</option>
  <option value="Purulia">Purulia</option>
</select><br>

GP ID:<input type="text" name = "gp_id" class="n6"><br>
<br>
<input type="submit" name="submit" value="Submit" >
<div>
</form>


<style type="text/css">
body
.Reg_Box{
	width: 400px;
	height: 600px;
    padding: 20px;
    background: #3CFFD2;
    border-radius: 20px;
    color:#000;
    top: 50%;
    left: 50%;
    position: absolute;
    transform: translate(-50%,-50%);
    box-sizing: border-box;
}
.n1 , .n2,.n3,.n4,.n5,.n6,.n7,.upload-file{
    background-repeat:no-repeat;
    background-position:6px;
    border:1px solid #DADADA;
    margin-top:10px;
    margin-bottom:10px;
    padding-left:5px;
    width:200px;
    height:30px;
    font-size:14px;
    box-shadow:0 0 10px;
    -webkit-box-shadow:0 0 10px;
    border-radius:5px;
}
.upload-file{
    background-repeat:no-repeat;
    background-position:6px;
    border:1px solid #DADADA;
    margin-top:10px;
    margin-bottom:10px;
    padding-left:5px;
    width:310px;
    height:30px;
    font-size:14px;
    box-shadow:0 0 10px;
    -webkit-box-shadow:0 0 10px;
    border-radius: 5px;
}
</style>

</body>
</html>
