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
    <a href="advising.php">Prepare for Registration</a>
  </br>
</br>

</nav>

</body>

</html>

<?php
session_start();
require_once("db.php");

echo "Record of classes for student ".$_SESSION["student_ID"].".</br></br>";
$student_ID =  $_SESSION["student_ID"];

$sql = "select * from enrollments where student_ID = $student_ID";
$result = $mydb->query($sql);
echo
"<table align='center'>
    <tr>
      <th>  Enrollment ID </th>
      <th>  CRN  </th>
      <th>  student_ID </th>
    </tr>";

  while($row = mysqli_fetch_array($result)) {
    echo
    "<tr>
        <td>".$row['enrollment_ID']."</td>
        <td>".$row['CRN']."</td>
        <td>".$row['student_ID']."</td>

      </tr>";
  }
  echo "</table>"

?>
