<?php
    session_start();
    include('server.php'); 

?>

<!DOCTYPE html>
<html lang="en">
<head >
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Bootstrap -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
</head>
<body background="img/bgnew.jpg">

    <div class="row">
    <div class="col-sm-4"></div>
    <div class="col-sm-4">
  
    
        <br>        <br>         <br>         <br>         <br>
       <center><h2><font color="white">LOGIN</font></h2></center>
        
    

    <form action="login_db.php" method="post" >

        
        <?php if (isset($_SESSION['error'])) : ?>
            <div class="error">
                <h3>
                    <?php 
                        echo $_SESSION['error'];
                        unset($_SESSION['error']);
                    ?>
                </h3>
            </div>
        <?php endif ?>
     
        <div >
            <label for="username" ><font color="white">Username : </font></label>
            <input type="text" name="username" class="form-control">
      
        </div>
        
        <div >
            <label for="password"><font color="white">Password : </font></label>
            <input type="password" name="password" class="form-control">
        </div>

        <div >
            
            
        </div>

        </br>

        
        <div >
           <center> <button type="submit" name="login_user" class="btn btn-success">Sign in</button></center>
        </div>
       
        </br>
        <p><font color="white">Not yet a member ? <a href="register.php">Sign Up</a></p></font>
    </form>

</body>
</html>