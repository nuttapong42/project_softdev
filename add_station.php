<?php session_start();
include('server.php');
include('menu.php'); ?>


<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Bootstrap -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
	<title>เพิ่มสถานี</title>
</head>
<body>
	<div class="row">
	<div class="col-sm-4"></div>
	<div class="col-sm-4">
	<form action="add_station_db.php" method="post" enctype="multipart/form-data">

	  <div class="form-group">
	    <label for="exampleInputEmail1">ชื่อสถานี</label>
	    <input type="text" name="s_name" class="form-control"  placeholder="Name Station">
	  </div>
	  <div class="form-group">
	    <label for="exampleInputPassword1">รายละเอียดสถานี</label>
	    <input type="text" name="s_detail" class="form-control"  placeholder="Station Detail">
	  </div>
	  <div class="form-group">
	    <label for="exampleInputFile">รูปภาพสถานี</label>
	    <input type="file" name="s_img" id="s_img">
	    
	  </div>
	  <center>
	  <button type="submit" name="add_station" class="btn btn-success" value="Submit">Add</button>
	  </center>
	  
	</div>
	  
</form>


</body>
</html>