<?php session_start();
include('server.php');


	
	$s_name = $_POST['s_name'];
	$s_detail = $_POST['s_detail'];
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
	
	
	
	

	$sql = "INSERT INTO station(s_name, s_detail, s_img)
			 VALUES('$s_name', '$s_detail', '$newname')";

	$result = mysqli_query($conn, $sql) or die ("Error in query: $sql " . mysqli_error());

	mysqli_close($conn);

	if($result){
	echo "<script type='text/javascript'>";
	echo "alert('เพิ่มข้อมูลสำเร็จแล้ว');";
	echo "window.location = 'manage_station.php'; ";
	echo "</script>";
	}
	else{
	echo "<script type='text/javascript'>";
	echo "alert('Error!!');";
	echo "</script>";
	}


?>

