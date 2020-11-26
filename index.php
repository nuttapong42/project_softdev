<?php
    include('server.php');
    include('menu.php');
   

   if(!isset($_SESSION)) 
    { 
        session_start(); 
    }
    $status = $_SESSION['status_m'];

  
  



    if (!isset($_SESSION['username'])) {
        $_SESSION['msg'] = "You must log in first";
        header('location: login.php');
    }

    if (isset($_GET['logout'])) {
        session_destroy();
        unset($_SESSION['username']);
        header('location: login.php');
    }





?>

<style>
body {
  background-color: black;
}
</style>

<!DOCTYPE html>
<html>
<head>

    <div class="row">
    
    <div class="col-sm-12">
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <meta name="og:type" content="website" />
    <meta name="twitter:card" content="photo" />
    <link rel="stylesheet" type="text/css" href="css/dashboard.css" />
    <link rel="stylesheet" type="text/css" href="css/log-out-pop-up.css" />
        <style>
        body {
          background-color: #292727;

      }
      .wallpaper {
        background-image: url("img/mask-group-1-2@1x.png");
      }
      .align-self-flex-start {
        align-self: flex-start;
      }
      .align-self-flex-end {
        align-self: flex-end;
      }
      .align-self-flex-center {
        align-self: center;
      }
      .anima-valign-text-middle {
        display: flex;
        flex-direction: column;
        justify-content: center;
      }
      .anima-valign-text-bottom {
        display: flex;
        flex-direction: column;
        justify-content: flex-end;
      }
      .anima-component-wrapper,
      .anima-component-wrapper * {
        pointer-events: none;
      }

      .anima-component-wrapper a *,
      .anima-component-wrapper a,
      .anima-component-wrapper input,
      .anima-component-wrapper video,
      .anima-component-wrapper iframe,
      .anima-listeners-active,
      .anima-listeners-active * {
        pointer-events: auto;
      }

      .anima-hidden,
      .anima-hidden * {
        visibility: hidden;
        pointer-events: none;
      }

      .anima-smart-layers-pointers,
      .anima-smart-layers-pointers * {
        pointer-events: auto;
        visibility: visible;
      }

      .anima-component-wrapper.anima-not-ready,
      .anima-component-wrapper.anima-not-ready * {
        visibility: hidden !important;
      }

      .anima-listeners-active-click,
      .anima-listeners-active-click * {
        cursor: pointer;
      }
        }
    </style>
    <title>Home Page</title>

    
</head>
<body style="margin: 0; background: rgba()">    
    
    
    

    <div class="homecontent">
        <!--  notification message -->
        <?php if (isset($_SESSION['success'])) : ?>
            
        <?php endif ?>
        
        <center>
        <table>
            <tr>    <td>  <?php if (isset($_SESSION['username'])) : ?>
            <h2><p style="color: white"> Hi, <strong><?php echo $_SESSION['username']; ?></strong></h2></p></h2></br>
        
            <?php endif ?>  </td></tr>
            


            <tr>

                <td><h3 style="color: white">Recently Boarding</h3></br>
                    <p style="color: white">With Boarding Pass, you tickets include BTS,MRT,ARL all of them in one place.</p>
                    <a href="booking_history.php"><img src="img/mask-group-1-1@1x.png" width="650" height=""></a> 
                </td>
            </tr>

            </tr>
                <td><h3 style="color: white">Booking</h3></br>
                    <p style="color: white">Keep track of the latest fare, time table
                    station, etc all in one app</p>

                    <a href="booking.php"><img src="img/mask-group-1-2@1x.png" width="650" height=""></a>
                </td>
            </tr>

            </tr>
                <td><h3 style="color: white">Maptro Maps</h3></br>
                    <p style="color: white">Complete Bangkok Metro Public Transportation Network BTS Skytrain,MRT,Airport Rail Link</p>
                    <a href="maps.php"><img src="img/mask-group-1-3@1x.png" width="650" height=""></a>
                </td>
            </tr>
            
        </table></center>

    </div>
    </div>




    
        <! logged in user information -->
        
    </div>

    <script>
      var overlay_id = "overlay-log-out-pop-up";
      document.getElementById(overlay_id).addEventListener(
        "click",
        function (event) {
          var e = event || window.event;
          var clickedDiv = e.toElement || e.target;
          if (clickedDiv.parentElement.id == overlay_id) {
            AnimaHideOverlay("log-out-pop-up", "anima-animate-disappear");
          }
        },
        false
      );
    </script>
    <script>
      AnimaShowOverlay = function (overlayName, animationName) {
        overlayName = "overlay-" + overlayName;
        var cssClasses = document.getElementById(overlayName).className.split(" ");
        var last = cssClasses.slice(-1)[0];
        if (last.lastIndexOf("anima-animate") == -1) {
          document.getElementById(overlayName).className =
            document.getElementById(overlayName).className + " " + animationName;
        }
        if (window.AnimaloadAsyncSrc != undefined) {
          AnimaloadAsyncSrc();
        }
      };
      AnimaHideOverlay = function (overlayName, animationName) {
        overlayName = "overlay-" + overlayName;
        var cssClasses = document.getElementById(overlayName).className.split(" ");
        var last = cssClasses.slice(-1)[0];
        if (last.lastIndexOf("anima-animate") != -1) {
          cssClasses.splice(-1);
          cssClasses.push(animationName);
          document.getElementById(overlayName).className = cssClasses.join(" ");

          cssClasses.splice(-1);
          setTimeout(function () {
            document.getElementById(overlayName).className = cssClasses.join(" ");
          }, 1100);
        }
        var vids = document.getElementsByTagName("video");
        if (vids) {
          for (var i = 0; i < vids.length; i++) {
            var video = vids.item(i);
            video.pause();
          }
        }
      };
    </script>
   

</body>
</html>