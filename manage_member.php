<?php session_start();
include('menu.php');





?>

<!DOCTYPE html>
<html>
<head>
    

	<meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title>Bootstrap 101 Template</title>

    <!-- Bootstrap -->
    <link href="css/bootstrap.min.css" rel="stylesheet">


    <title>Home Page</title>

    
</head>
<body>
   
    




<?php
include 'server.php';
$query = "SELECT * FROM user";
$result = mysqli_query($conn, $query) or die ("Error in sql : $query". mysql_error($query));




?>
	<div class="row">
	<div class="col-sm-2"></div>
	<div class="col-sm-8">
	<center><h2>ข้อมูลสมาชิก</h2></center>
	
	<div class="table">
	
	<table class="table" border="1" >

		
		<thread>
			<tr>
				<th>id</th>
				<th>username</th>
				
				<th>email</th>
				<th>tel</th>
				<th><center>แก้ไขข้อมูล</center></th>
				<th><center>ลบข้อมูล</center></th>
			</tr>
		</thread>
		<tbody>
			<?php foreach ($result as $row) { ?>
			<tr>
				<td><?php echo $row['id']; ?></td>
				<td><?php echo $row['username']; ?></td>
				
				<td><?php echo $row['email']; ?></td>
				<td><?php echo $row['tel']; ?></td>
				<td><center><a href="edit_member.php?id=<?php echo $row['id']; ?>" class="btn btn-warning">edit</a></center></td>
				<td><center><a onclick="return confirm('ต้องการลบข้อมูลหรือไม่ ?')" href='del_member.php?id=<?php echo $row['id']; ?>" ' class="btn btn-danger"  >del</a></center></td>

			</tr>

		<?php } ?>
		
		</div>
			


		</tbody>
	</table>

	</div>
<?php mysqli_close($conn)   ?>


</body>
</html>