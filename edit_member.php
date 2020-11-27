<?php 
session_start();
include ('server.php');
include ('menu.php');
$id = mysqli_real_escape_string($conn,$_GET['id']);

//2. query ข้อมูลจากตาราง: 
$sql = "SELECT * FROM user WHERE id='$id' ";
$result = mysqli_query($conn, $sql) or die ("Error in query: $sql " . mysqli_error());
$row = mysqli_fetch_array($result);
extract($row);
 ?>

 <!DOCTYPE html>
 <html>
 <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Bootstrap -->
    <link href="css/bootstrap.min.css" rel="stylesheet">


		
 </head>
 <body>
    <div class="row">
    <div class="col-sm-4"></div>
    <div class="col-sm-4">
    
    <div class="header">
    

    <form action="editmember_db.php" method="post" name="updateuser" id="updateuser">
    
    	<p><input type="hidden" name="id" value="<?php echo $id; ?>" disabled='disabled' />
		<input type="hidden" name="id" value="<?php echo $id; ?>" /><br>
            <label for="username">Username</label>
            <input class="form-control" type="text" name="username" value="<?=$username;?>">
        </div>
        <div>
            <label for="email">Email</label>
            <input class="form-control" type="email" name="email" value="<?=$email;?>">
        </div>
        <div>
            <label for="tel">Tel. (+66)</label>
            <input class="form-control" type="tel" name="tel" value="<?=$tel;?>" >
        </div>
        <div>
            <label for="password_1">Password</label>
            <input class="form-control" type="password" name="password" value="<?=$password;?>" >
        </div>
        <div>
            <label for="status_m">สถานะผู้ใช้</label>   <font color="red">*0 = user / 1 = admin </font>
            <input class="form-control" type="number" name="status_m" min="0" max="1" value="<?=$status_m;?>" >
        </div>
        
        <div ></br><center>
            <button type="submit" name="edit_member" class="btn btn-success">แก้ไขข้อมูล</button>
                    </center>
        </div>
    
	
 </body>
 </html>