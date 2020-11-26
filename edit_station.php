<?php session_start();
include('server.php');
include('menu.php'); 

$s_id = mysqli_real_escape_string($conn,$_GET['s_id']);

//2. query ข้อมูลจากตาราง: 
$sql = "SELECT * FROM station WHERE s_id='$s_id' ";
$result = mysqli_query($conn, $sql) or die ("Error in query: $sql " . mysqli_error());
$row = mysqli_fetch_array($result);
extract($row);
?>

<!DOCTYPE html>
<html>
<head>
	<title>Edit Station</title>
	<meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
	<div class="row">
	<div class="col-sm-4"></div>
	<div class="col-sm-4">
	<form action="edit_station_db.php" method="post" name="updatestation" id="updatestation" enctype="multipart/form-data" >
	  <div class="form-group">
	  	<input type="text" name="s_id" value="<?php echo $s_id; ?>" disabled='disabled' />
		<input type="hidden" name="s_id" value="<?php echo $s_id; ?>" /> 
	  </div>	
	  <div class="form-group">
	    <label for="exampleInputEmail1">ชื่อสถานี</label>
	    <input type="text" name="s_name" class="form-control"  placeholder="Name Station" value="<?=$s_name;?>">
	  </div>
	  <div class="form-group">
	    <label for="exampleInputPassword1">รายละเอียดสถานี</label>
	    <input type="text" name="s_detail" class="form-control"  placeholder="Station Detail" value="<?=$s_detail;?>">
	  </div>
	  <div class="form-group">
	    <label for="exampleInputFile">รูปภาพสถานี</label>
	    
	    <input type="file" name="s_img" id="s_img" value="<?php echo ['s_img']; ?>">
	    
	  </div>
	  <center>
	  <button type="submit" name="edit_station" class="btn btn-success" value="Submit">Edit</button>
	  </center>
	  
	</div>
	  
</form>


</body>
</html>