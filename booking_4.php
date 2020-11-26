<?php 
session_start();
include('server.php');
include('menu.php');

	$schdule_id = $_GET['schdule_id'];
	$schdule_date = $_GET['schdule_date'];
	$seat_no = $_GET['seat_no'];
	$username = $_SESSION['username'];
	


	$query = "SELECT * FROM schdule WHERE schdule_id = '$schdule_id'";
	$result = mysqli_query($conn, $query) or die ("Error in sql : $query". mysql_error($query));


	





 ?>

 <!DOCTYPE html>
 <html>
 <head>
 	<title></title>
 </head>
 <body>


 	<div class="row">
	<div class="col-sm-2"></div>
	<div class="col-sm-8">
	<center><h2>ยืนยันข้อมูลการจอง</h2></center>
	
	<div class="table">
	
	<table class="table" border="1" >






 	<?php foreach ($result as $row ) {        ?>

 		<tr>
 			<td>From : <?php echo $row['schdule_form']; ?></td>
 			<td>To : <?php echo $row['schdule_to']; ?></td>
 		</tr>

 		<tr>
 			<td>วันที่จอง : <?php echo $schdule_date; ?></td>
 			<td>Schedule : <?php echo $row['schdule_time']; ?></td>
 		</tr>

 		<tr>
 			<td colspan="2"><h1><center>Total. <?php echo $row['price']; ?></center></h1></td>
 		</tr>
 		
 		<tr>
 			<td colspan="2"><center><a href="payment.php?schdule_id=<?php echo $row['schdule_id']; ?>& schdule_date=<?php echo $schdule_date  ?>& seat_no=<?php echo $seat_no  ?>" class="btn btn-success">Payment</a></center></td>
 		</tr>

	
	<?php } ?>


 
 </body>
 </html>