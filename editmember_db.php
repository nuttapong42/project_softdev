<?php 
include('server.php');
session_start();


	$id = $_POST["id"];
	$username = $_POST["username"];
	$password = $_POST["password"];
	$email = $_POST["email"];
	$tel = $_POST["tel"];
	$status_m = $_POST["status_m"];
	


	
	$sql = "UPDATE user SET  
			username ='$username' ,
			password='$password' ,
			email='$email' , 
			tel='$tel' ,
			status_m='$status_m' 
			
			 
			WHERE id='$id' ";
 
$result = mysqli_query($conn, $sql) or die ("Error in query: $sql " . mysqli_error($conn). "<br>$sql");
 
mysqli_close($conn); //ปิดการเชื่อมต่อ database



	if($result){
	echo "<script type='text/javascript'>";
	echo "alert('แก้ไขข้อมูลสำเร็จ');";
	echo "window.location = 'manage_member.php'; ";
	echo "</script>";
	}
	else{
	echo "<script type='text/javascript'>";
	echo "alert('Error back to Update again');";
        echo "window.location = 'manage_member.php'; ";
	echo "</script>";
} 

 ?>

