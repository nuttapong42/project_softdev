<?php  
session_start();
include('server.php');
include('menu.php');

    $schdule_form = $_POST['b_form'];
	$schdule_to = $_POST['b_to'];
	$schdule_date = $_POST['booking_date'];

    $query = "SELECT * FROM schdule WHERE schdule_form = '$schdule_form' AND schdule_to = '$schdule_to'";
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

 </head>
 <body>
 	<div class="row">
	<div class="col-sm-4"></div>
	<div class="col-sm-4">
 	<div class="table">
	
		<table class="table" border=""  >

			
			<thread>
				<tr>
					<th>สถานีต้นทาง</th>
					<th>สถานีปลายทาง</th>						
				</tr>
			</thread>
			<tbody>

				<tr>
					<td><?php echo $schdule_form; ?></td>
					<td><?php echo $schdule_to; ?></td>		
					
				</tr>
			
			</div>
			</tbody>
		</table>

		<div class="table">

		<table class="table">
			<thread>
				<tr>
					<th>เวลาออกรถ</th>
					<th>จำนวนที่นั่ง</th>
					<th>จอง</th>						
				</tr>
			</thread>
				<?php foreach ($result as $row) { ?>
				<tr>
					<td><?php echo $row['schdule_time']; ?></td>
					<td><?php echo $row['seat']; ?></td>
					<td><center><a href="booking_3.php?schdule_id=<?php echo $row['schdule_id']; ?>& schdule_date=<?php echo $schdule_date  ?>" class="btn btn-success">Booking</a></center></td>	
					
				</tr>

			
			<?php } ?>


		</table>
		</div>




 
 </body>
 </html>