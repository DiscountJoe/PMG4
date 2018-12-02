<?php
session_start();
if (isset($_POST["submit"])) {
    if(isset($_POST["CRN"])) $_SESSION['CRN']=$_POST["CRN"];
    Header("Location:  addClass.php");
  }
?>
<!doctype html>
<html>
<head>
  <link rel="stylesheet" type="text/css" href="mystyle.css">
  <title>Pamplin Advising Tool</title>
</head>

<body>
  <nav>

    <img src="vt.svg" height="15%" width="15%">
    <a href="landing.php">Home</a> |
    <a href="timetable.php">Course Catalog</a> |
    <a href="record.php">Registration Record</a> |
    <a href="advising.php">Registration</a>

</nav>
</br>
</br>

</body>

</html>

<?php
require_once("db.php");

echo "Based on which classes you've already taken, ".$_SESSION["student_ID"]." Here are the classes still needed for graduation.</br></br>";
$student_ID =  $_SESSION["student_ID"];

$sql = "select * from classes where CRN not in(select CRN from enrollments where student_ID=$student_ID) order by class_Number asc";
$result = $mydb->query($sql);

echo
"<table  align = 'center' style= 'background-color:papayawhip;'>
    <tr style= 'background-color:#cc6600; color:white;'>
      <th>  CRN </th>
      <th>  Class Number  </th>
      <th>  Name </th>
      <th>  Professor </th>
      <th>  Time Start  </th>
      <th>  Time End  </th>
      <th>  Days </th>
      <th>  Major ID </th>

    </tr>";

  while($row = mysqli_fetch_array($result)) {
      $CRN=$row['CRN'];
    echo
    "<tr>
        <td>".$row['CRN']."</td>
        <td>".$row['class_Number']."</td>
        <td>".$row['name']."</td>
        <td>".$row['professor']."</td>
        <td>".$row['time_start']."</td>
        <td>".$row['time_End']."</td>
        <td>".$row['days']."</td>
        <td>".$row['major_ID']."</td>

      </tr>";
      echo"<td><form method='post'
      action='".$_SERVER['PHP_SELF']."'>
      <input type='hidden' name='CRN' value=".$CRN." />
      <input type='submit' name='submit' value='Add Class' />
      </form></td>
    </tr>";
  }
  echo "</table>"

?>
