<?php 
include('server.php');
session_start();


	$s_id = $_POST["s_id"];
	$s_name = $_POST["s_name"];
	$s_detail = $_POST["s_detail"];
	
	$s_img = (isset($_POST['s_img']) ? $_POST['s_img'] : '');
	//สุ่มตัวเลข
	
	$date = date("Ymd");
	$numrand = (mt_rand());
	
	$upload = $_FILES['s_img'];

	if($upload != '' ){
		
		$path = "img/";
		$type = strrchr($_FILES['s_img']['name'],"."); 	
		$newname = $date."-".$numrand.$type;
		$path_copy = $path.$newname;
		

	move_uploaded_file($_FILES['s_img']['tmp_name'],$path_copy);
	}
	


	
	$sql = "UPDATE station SET  
			
			s_name='$s_name' ,
			s_detail='$s_detail' , 
			s_img='$newname' 
			
			 
			WHERE s_id='$s_id' ";
 
$result = mysqli_query($conn, $sql) or die ("Error in query: $sql " . mysqli_error($conn). "<br>$sql");
 
mysqli_close($conn); //ปิดการเชื่อมต่อ database



	if($result){
	echo "<script type='text/javascript'>";
	echo "alert('แก้ไขข้อมูลสำเร็จ');";
	echo "window.location = 'manage_station.php'; ";
	echo "</script>";
	}
	else{
	echo "<script type='text/javascript'>";
	echo "alert('Error back to Update again');";
        echo "window.location = 'manage_station.php'; ";
	echo "</script>";
} 

 ?>

