<!doctype html>
<html>
<head>
  <title>Pamplin Advising Tool</title>
</head>
<body>
  <nav>
    <img src="vt.svg" height="15%" width="15%">
    <a href="landing.php">Home</a> |
 <a href="timetable.php">Course Catalog</a> |
 <a href="record.php">Registration Record</a> |
 <a href="advising.php">Prepare for Registration</a> |
</nav>
  <?php
    //resume the session variable on this page
    session_start();
    $timeString = "";
    $currentTime = date("a");
    if ($currentTime == "am") {
      $timeString = "morning";
    } else {
      $timeString = "afternoon";
    }

    echo "<p>Good ".$timeString.", ".$_SESSION["pid"]."!</p>";

   ?>
   <p><a href="logout.php">Click here to log out</a></p>
</body>
</html>
