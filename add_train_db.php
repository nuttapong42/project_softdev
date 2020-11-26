<?php 
session_start();
include('server.php');
include('menu.php');


	$train_no = $_POST['train_no'];
	$train_datetime = $_POST['train_datetime'];
	$train_hour = $_POST['train_hour'];
	$train_min = $_POST['train_min'];
	$s_id = $_POST['s_id'];
	$s_name = $_POST['s_name'];

	$sql = "INSERT INTO train(train_no, train_datetime, train_hour, train_min, s_id)
			 VALUES('$train_no', '$train_datetime', '$train_hour', '$train_min', $s_id)";

	$result = mysqli_query($conn, $sql) or die ("Error in query: $sql " . mysqli_error($conn) . "<br>$sql");

	mysqli_close($conn);

	if($result){
	echo "<script type='text/javascript'>";
	echo "alert('เพิ่มข้อมูลสำเร็จแล้ว');";
	echo "window.location = 'add_train.php'; ";
	echo "</script>";
	}
	else{
	echo "<script type='text/javascript'>";
	echo "alert('Error!!');";
	echo "</script>";
	}





 ?>