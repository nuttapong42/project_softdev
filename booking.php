<?php session_start();
include('server.php');
include('menu.php');
	
	date_default_timezone_set('Asia/Bangkok');



  $query = "SELECT * FROM station";
  $result = mysqli_query($conn, $query) or die ("Error in sql : $query". mysql_error($query));

?>




<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Bootstrap -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
	<title>Booking</title>
</head>
<body>
	<center><h2>Booking</h2></center>
	<div class="row">
	<div class="col-sm-4"></div>
	<div class="col-sm-4">
  <div class="form-group">

      
  <label for="cars">กรุณาเลือกวันที่ที่ต้องการจอง</label>
	<form action="booking_2.php" method="post" enctype="multipart/form-data">

	
	<input type="date" name="booking_date" class="form-control" id="ex1" type="date" min="2020-11-28" max="2020-12-28"></br></br>
	
	<label for="">Form</label>
  	<select class="form-control" id="cars" name="b_form">
  	<option value="">--กรุณาเลือก--</option>
    <option value="Suvarnabhumi">Suvarnabhumi</option>
    <option value="Lat krabang">Lat krabang</option>
    <option value="Ban Thap Chang">Ban Thap Chang</option>
    <option value="Hua Mak">Hua Mak</option>
    <option value="Ramkhamhaeng">Ramkhamhaeng</option>
    <option value="Makkasan - Phetchaburi">Makkasan - Phetchaburi</option>
    <option value="Ratchaprarop">Ratchaprarop</option>
    <option value="Phayathai">Phayathai</option>
    


  	</select></br>

  	
	 <label for="cars">To</label>
  	<select class="form-control" id="" name="b_to">
  	<option value="">--กรุณาเลือก--</option>
    <option value="Suvarnabhumi">Suvarnabhumi</option>
    <option value="Lat krabang">Lat krabang</option>
    <option value="Ban Thap Chang">Ban Thap Chang</option>
    <option value="Hua Mak">Hua Mak</option>
    <option value="Ramkhamhaeng">Ramkhamhaeng</option>
    <option value="Makkasan - Phetchaburi">Makkasan - Phetchaburi</option>
    <option value="Ratchaprarop">Ratchaprarop</option>
    <option value="Phayathai">Phayathai</option>
  	</select></br>
  	
  	<input type="submit" name="" class="btn btn-success" value="Next" title="Booking"></input>
    <div class="form-group">

      
  
	  
</form>




</body>
</html>