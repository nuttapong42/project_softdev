<?php 
session_start();
include('server.php');
include('menu.php');



	$schdule_id = $_GET['schdule_id'];
	$schdule_date = $_GET['schdule_date'];
	$seat_no = $_GET['seat_no'];
	//$username = $_SESSION['username'];






 ?>

<!DOCTYPE html>
<html>
<head>
	<title>PAYMENT</title>
</head>
	<meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Bootstrap -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
	<body>
	<div class="row">
	<div class="col-sm-2"></div>
	<div class="col-sm-2"></div>
	<div class="col-sm-3">

	<form action="booking_db.php" method="post" enctype="multipart/form-data">

		<div class="form-group">
	    
	    <input type="hidden" name="schdule_id" value="<?php  echo  $schdule_id  ?>" class="form-control"  placeholder="" id="train_no">
	  	
	     
	    <input type="hidden" name="schdule_date" value="<?php  echo  $schdule_date  ?>" class="form-control"  placeholder="" id="train_no">
	  	
	    
	    <input type="hidden" name="seat_no" value="<?php  echo  $seat_no  ?>" class="form-control"  placeholder="" id="train_no">

	  </div>
	  <div class="form-group">
	    <label for="exampleInputPassword1">เลือกประเภทการชำระเงิน</label></br>
	  	<select class="form-control" name="payment_type" id="payment_type">
	  	<option value="KBANK">--กรุณาเลือก--</option>
	  	<option value="KBANK">KBANK</option>
	  	<option value="VISA">VISA</option>
	  	<option value="Mastercard">Master Card</option>
	 	</select>
	  </div>
	  <div class="form-group">
	    <label for="exampleInputPassword1">Address Detail.</label>
	    <input type="textarea" name="payment_detail" id="payment_detail" class="form-control"  placeholder="">
	  </div>
	  <div class="form-group">
	  	<label for="exampleInputFile">Payment for</label>
	  	<select class="form-group"> 
	  		<option value="TRTSF" name="TRTSF">TRTSF</option>
	  	</select>
	    
	    
	  </div>
	  
	  <center><button type="submit" name="add_payment" class="btn btn-success" value="Submit">ยืนยันการชำระเงิน</button></center>

		

	</form>



</body>
</html>



