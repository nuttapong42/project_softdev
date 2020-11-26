<?php 

session_start();
include('server.php');
include('server.php');
include('menu.php');


$username = $_SESSION['username'];


$query = "SELECT * FROM booking_2 WHERE user_id = '$username'";
$result = mysqli_query($conn, $query) or die ("Error in sql : $query". mysql_error($query));


 ?>

 <!DOCTYPE html>
 <html>
 <head>
 	<title>ประวัติการจอง</title>
 </head>
 	<meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <script src="/lib/jquery-1.12.2.min.js"></script>
  	<script src="/lib/bootstrap.min.js"></script>
 <body>

 	<div class="row">
	<div class="col-sm-2"></div>
	<div class="col-sm-8">
	<center>ข้อมูลประวัติการจอง</center>
	<div class="table-responsive">	
	<table class="table" border="" >

		<thread>
			<tr>			
				<th>Booking ID.</th>			
				<th><center>วันที่จอง</center></th>
				<th>ที่นั่ง</th>
				<th><center>ราคาตั๋ว</center></th>
				<th>สถานีต้นทาง</th>
				<th>สถานีปลายทาง</th>
				<th>ชำระโดย</th>
			</tr>
		</thread>
		<tbody>
		<?php foreach ($result as $row) { ?>

			<tr>
				<td><?php echo $row['booking_id']; ?></td>
				<td><?php echo $row['date_save']; ?></td>
				<td><?php echo $row['seat_no']; ?></td>

				<?php 

				$id = $row['schdule_id'];
			
			$query1 = "SELECT * FROM schdule WHERE schdule_id = '$id'";
			$result2 = mysqli_query($conn, $query1) or die ("Error in sql : $query". mysql_error($query1)); ?>

				<?php foreach ($result2 as $row2 ) {  ?>


					<td><?php echo $row2['price']; ?></td>
					<td><?php echo $row2['schdule_form']; ?></td>
					<td><?php echo $row2['schdule_to']; ?></td>
					
				<?php } ?>

				<?php 
				$date_save = $row['date_save'];
				$seat_no = $row['seat_no'];


				$query2 = "SELECT * FROM payment WHERE schdule_id = '$id' AND date_save = '$date_save' AND seat_no ='$seat_no' AND user_id = '$username'";
				$result3 = mysqli_query($conn, $query2) or die ("Error in sql : $query". mysql_error($query2)); ?>



				<?php foreach ($result3 as $row3 ) {  ?>


					<td><?php echo $row3['payment_type']; ?></td>
					
					
				<?php } ?>
				

				<?php

					 }

				 ?>

			</tr>
 
 </body>
 </html>