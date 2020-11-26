<?php 
session_start();
include('server.php');


	
	$schdule_id = $_POST['schdule_id'];
	$schdule_date = $_POST['schdule_date'];
	$seat_no = $_POST['seat_no'];
	$username = $_SESSION['username'];

	$payment_type = $_POST['payment_type'];
	$payment_detail = $_POST['payment_detail'];
	$payment_for = $_POST['payment_for'];

	





	$sql = "INSERT INTO booking_2(date_save, seat_no, schdule_id, user_id)
			 VALUES('$schdule_date', '$seat_no', '$schdule_id', '$username')";
			 

	$result = mysqli_query($conn, $sql) or die ("Error in query: $sql " . mysqli_error());

	$sql = "INSERT INTO payment(payment_type, payment_detail, payment_for, schdule_id, date_save, seat_no, user_id)
			 VALUES('$payment_type', '$payment_detail', '$payment_for', '$schdule_id', '$schdule_date', '$seat_no', '$username')";
			 

	$result = mysqli_query($conn, $sql) or die ("Error in query: $sql " . mysqli_error());

	mysqli_close($conn);

	if($result){
	echo "<script type='text/javascript'>";
	echo "alert('จองสำเร็จ');";
	echo "window.location = 'index.php'; ";
	echo "</script>";
	}
	else{
	echo "<script type='text/javascript'>";
	echo "alert('Error!!');";
	echo "</script>";
	}

 ?>