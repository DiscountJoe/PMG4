<!doctype html>
<html>
<head>
  <title>Log out page</title>
    <link rel="stylesheet" type="text/css" href="mystyle.css">
</head>
<body>
  <img src="vt.svg" height="15%" width="15%">
  <?php
    session_start();

    //unset($_SESSION["SupplierID"]);
  $SupplierID = $_SESSION["pid"];
    $_SESSION = array();

    session_destroy();



    echo "<p>Goodbye, ".$SupplierID."</p>";
    echo "You have successfully logged out. Please <a href='login.php'>click here to login again</a>";

  ?>


</body>
</html>
