<?php 
	session_start();
	include('server.php');
	include('menu.php');

	$schdule_id = $_GET['schdule_id'];
	$schdule_date = $_GET['schdule_date'];
	//echo $_GET['schdule_date'];



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
	<div class="col-sm-4"></div>
	<div class="col-sm-4">


 	<div class="table" >
	
		<table class="table" border="1"  >

			
			<thread>
				<tr>
					<th>สถานีต้นทาง</th>
					<th>สถานีปลายทาง</th>						
				</tr>
			</thread>
			<tbody>
				<?php foreach ($result as $row ) {
					
				 ?>
				<tr>
					<td><?php echo $row['schdule_form']; ?></td>
					<td><?php echo $row['schdule_to']; ?></td>		
					
				</tr>

				<?php } ?>
				
			</div>
			</tbody>
		</table></br>

		<table class="table" >
			* เลขที่นั่ง
			<thread>
				<tr>
					<?php for ($i = 1; $i <= 47; $i++) 
					{  echo "<tr>"; 
						$check_query = "SELECT seat_no FROM booking_2 WHERE date_save = '$schdule_date' AND schdule_id = '$schdule_id' AND seat_no = '$i' ";
						$result2 =  mysqli_query($conn, $check_query) or die ("Error in sql : $query". mysql_error($query2));



						if (mysqli_num_rows($result2) == 1) {
			                echo "<td><a class='btn btn-danger disabled'>ไม่ว่าง</a></td>";
			            } else {   ?>

			            	<td><a href="booking_4.php?schdule_id=<?php echo $row['schdule_id']; ?>& schdule_date=<?php echo $schdule_date  ?>& seat_no=<?php echo $i  ?>" class="btn btn-warning"><?php echo $i;  ?></a></td>
			            	<?php 
			            	 
			            }

			            $i = $i+1;
			            $check_query = "SELECT seat_no FROM booking_2 WHERE date_save = '$schdule_date' AND schdule_id = '$schdule_id' AND seat_no = '$i' ";
						$result2 =  mysqli_query($conn, $check_query) or die ("Error in sql : $query". mysql_error($query2));



						if (mysqli_num_rows($result2) == 1) {
			                echo "<td><a class='btn btn-danger disabled'>ไม่ว่าง</a></td>";
			            } else { ?>

			            	<td><a href="booking_4.php?schdule_id=<?php echo $row['schdule_id']; ?>& schdule_date=<?php echo $schdule_date  ?>& seat_no=<?php echo $i  ?>" class="btn btn-warning"><?php echo $i;  ?></a></td>
			            	<?php
			            	
			            }

			            $i = $i+1;
			            $check_query = "SELECT seat_no FROM booking_2 WHERE date_save = '$schdule_date' AND schdule_id = '$schdule_id' AND seat_no = '$i' ";
						$result2 =  mysqli_query($conn, $check_query) or die ("Error in sql : $query". mysql_error($query2));

						echo "<td> </td><td> </td><td> </td>";



						if (mysqli_num_rows($result2) == 1) {
			                echo "<td><a class='btn btn-danger disabled'>ไม่ว่าง</a></td>";
			            } else {
			            	?>

			            	<td><a href="booking_4.php?schdule_id=<?php echo $row['schdule_id']; ?>& schdule_date=<?php echo $schdule_date  ?>& seat_no=<?php echo $i  ?>" class="btn btn-warning"><?php echo $i;  ?></a></td>
			            	<?php
			            }

			            $i = $i+1;
			            $check_query = "SELECT seat_no FROM booking_2 WHERE date_save = '$schdule_date' AND schdule_id = '$schdule_id' AND seat_no = '$i' ";
						$result2 =  mysqli_query($conn, $check_query) or die ("Error in sql : $query". mysql_error($query2));



						if (mysqli_num_rows($result2) == 1) {
			                echo "<td><a class='btn btn-danger disabled'>ไม่ว่าง</a></td>";
			            } else {
			            	?>

			            	<td><a href="booking_4.php?schdule_id=<?php echo $row['schdule_id']; ?>& schdule_date=<?php echo $schdule_date  ?>& seat_no=<?php echo $i  ?>" class="btn btn-warning"><?php echo $i;  ?></a></td>
			            	<?php
			            }


         
			            echo "</tr>";
					} 









					?>





				</tr>
			</thread>
				

			
			

		</table>
	</div>


		


 



 </body>
 </html>