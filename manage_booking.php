<?php 
session_start();
include ('server.php');
include('menu.php');

$query = "SELECT * FROM booking_2";
$result = mysqli_query($conn, $query) or die ("Error in sql : $query". mysql_error($query));



 ?>

 <!DOCTYPE html>
 <html>
 <head>
 	<title></title>
 	<meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <script src="/lib/jquery-1.12.2.min.js"></script>
  	<script src="/lib/bootstrap.min.js"></script>
 </head>
 <body>

 	<div class="row">
	<div class="col-sm-2"></div>
	<div class="col-sm-8">
	<center><h2>ข้อมูลการจอง</h2></center>
	
	<div class="table">
	
	<table class="table" border="1" >

		<thread>
			<tr>
				<th>Booking ID</th>
				<th>Date Save</th>
				
				<th>Seat NO.</th>
				<th>SCHDULE ID</th>
				<th>User</th>
				
				<th><center>ลบข้อมูล</center></th>
			</tr>

			<tbody>
			<?php foreach ($result as $row) { ?>
			<tr>
				<td><?php echo $row['booking_id']; ?></td>
				<td><?php echo $row['date_save']; ?></td>
				
				<td><?php echo $row['seat_no']; ?></td>
				<td><?php echo $row['schdule_id']; ?></td>
				<td><?php echo $row['user_id']; ?></td>
				<td><center><a onclick="return confirm('ต้องการลบข้อมูลหรือไม่ ?')" href='del_booking.php?booking_id=<?php echo $row['booking_id']; ?>" ' class="btn btn-danger"  >del</a></center></td>

			</tr>
		</thread>


	<?php } ?>
 
 </body>
 </html>