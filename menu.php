<?php 
   if(!isset($_SESSION)) 
    { 
        session_start(); 
    }
    $status = $_SESSION['status_m'];
 ?>
<!DOCTYPE html>

<html>
<head>
	<title></title>
	<meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title>Bootstrap 101 Template</title>

    <!-- Bootstrap -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
</head>
<body>


<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="#">TRTSF</a>
    </div>
    <ul class="nav navbar-nav">
      <li class="active"><a href="index.php">Home</a></li>

  
         
        <?php  ?>
          
          <?php if ($status == 1) { ?>
            
          
          <li><a href="manage_member.php">จัดการสมาชิก</a></li>
        
          <li><a href="manage_booking.php">Manage Booking</a></li> 
        <?php  } ?>

          <li><a href="booking_history.php">ประวัติการจอง</a></li>
          
        
          
      
    </ul>
    
    <ul class="nav navbar-nav navbar-right">
      
      <li><a href="index.php?logout='1'" ><span class="glyphicon glyphicon-log-in"></span></a></li>
    </ul>
  </div>
</nav>
</body>
</html>