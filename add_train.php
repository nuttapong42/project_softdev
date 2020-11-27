<?php session_start();
include('server.php');
include('menu.php');
$train_hour = date("H") ;
$train_min = date("i") ;
$query = "SELECT * FROM train";
$result = mysqli_query($conn, $query) or die ("Error in sql : $query". mysql_error($query));
//$query2 = "SELECT * FROM station";
//$result2 = mysqli_query($conn, $query) or die ("Error in sql : $query". mysql_error($query));
 ?>


<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Bootstrap -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
	<title>เพิ่มรถไฟ</title>
</head>
<body>
	<center>เพิ่มรถไฟ</center>
	<div class="row">
	<div class="col-sm-4"></div>
	<div class="col-sm-4">
	<form action="add_train_db.php" method="post" enctype="multipart/form-data">

	  <div class="form-group">
	    <label for="exampleInputEmail1">Train No.</label>
	    <input type="text" name="train_no" class="form-control"  placeholder="" id="train_no">
	  </div>
	  <div class="form-group">
	    <label for="exampleInputPassword1">วันที่ออก</label>
	    <input type="date" name="train_datetime" id="train_datetime" class="form-control"  placeholder="">
	  </div>
	  <div class="form-group">
	    <label for="exampleInputFile">ชั่วโมงที่ออก</label>
	    <input type="text" name="train_hour" id="train_hour" class="form-control">    
	  </div>
	  <div class="form-group">
	    <label for="exampleInputFile">นาทีที่ออก</label>
	    <input type="text" name="train_min" id="train_min" class="form-control">    
	  </div>
	  <!--
	  <div class="form-group">
	    <label for="exampleInputFile">Station</label>
	    <input type="text" name="s_id" id="s_id" class="form-control">    
	  </div>
	  -->

	  <div>

	  	<select class="form-group" name="s_id">
	  		<option>---กรุณาเลือกสถานี---</option>
	  		<?php $query2 = "SELECT * FROM station"  ;
	  		$result2 = mysqli_query($conn, $query2) or die ("Error in sql : $query2". mysql_error($query2));
	  		?>

	  		<?php foreach ($result2 as $row2) { ?>   <option value="<?php echo $row2['s_id'] ?>"><?php echo $row2['s_name']; ?> </option> <?php } ?>


	  	</select>
	
	  </div>
	  <?
		$query = "select * from movieCategory order by description;";
		$result = mysql_query ($query,$dbcon);
		if (!$result) ;
		?>
		

	  	<label for="station_name">To</label>
	  	

	  <div class="table">
	
		<table class="table" border="1"  >

			
			<thread>
				<tr>
					<th>id</th>
					<th>Train No.</th>			
					<th>วันที่ออก</th>
					<th>ชั่วโมงที่ออก</th>
					<th><center>นาทีที่ออก</center></th>
					<th><center>Station</center></th>
				</tr>
			</thread>
			<tbody>
				<?php foreach ($result as $row) { ?>
				<tr>
					<td><?php echo $row['id_train']; ?></td>
					<td><?php echo $row['train_no']; ?></td>	
					<td><?php echo $row['train_datetime']; ?></td>	
					<td><?php echo $row['train_hour']; ?></td>
					<td><?php echo $row['train_min']; ?></td>


					<?php $query2 = "SELECT * FROM station where s_id = ".$row['s_id']." "  ;
						  $result2 = mysqli_query($conn, $query2) or die ("Error in sql : $query2". mysql_error($query2));
 					?>
					<?php foreach ($result2 as $row2) { ?> <td><?php echo $row2['s_name']; ?></td> <?php } ?>
				</tr>
				<?php } ?>

			</tbody>
		</table>

		<?php foreach ($result2 as $row2) { ?>
				<tr>
					
					<td><?php echo $row2['s_name']; ?></td>
				</tr>
		<?php } ?>

		


	  <center>
	  <button type="submit" name="add_train" class="btn btn-success" value="Submit">Add</button>
	  </center>
	  
	</div>
	  
</form>


</body>
</html>