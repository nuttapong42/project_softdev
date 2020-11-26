<?php 
    session_start();
    include('server.php'); 
?>

<!DOCTYPE html>
<html lang="en">
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
        <h2>Register</h2>
    </div>

    <form action="register_db.php" method="post">
        <div class="input-group">
        <?php include('errors.php'); ?>
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

        <div>
     
            <label for="username">Username</label>
            <input type="text" name="username" class="form-control">

        </div>
      
        <div>
            <label for="email">Email</label>
            <input type="email" name="email" class="form-control">
        </div>
        <div >
            <label for="tel">Tel. (+66)</label>
            <input type="tel" maxlength="10"  name="tel" class="form-control">
        </div>
        <div>
            <label for="password_1">Password</label>
            <input type="password" name="password_1" class="form-control">
        </div>
        <div>
            <label for="password_2">Confirm Password</label>
            <input type="password" name="password_2" class="form-control">
        </div>

        </br></br>

        <div>
            <center><button type="submit" name="reg_user" class="btn btn-success">Register</button></center>
        </div>


        <div></br>
        <p>Already a member? <a href="login.php">Sign in</a></p>
        </div>
        
    </form>

</body>
</html>