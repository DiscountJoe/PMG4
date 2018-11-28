<!doctype html>
<html>
<head>
  <title>Pamplin Advising Tool</title>
</head>

<body>
  <nav>

    <img src="vt.svg" height="15%" width="15%">
    <a href="landing.php">Home</a> |
    <a href="timetable.php">Timetable of Classes</a> |
    <a href="record.php">Your Record</a> |
    <a href="advising.php">Advising</a>
  </br>
</br>

</nav>

</body>

</html>

<?php
require_once("db.php");
session_start();

//$clientName=$_SESSION['clientName'];
//$clientID=$_SESSION['clientID'];

$sql = "select * from classes";
$result = $mydb->query($sql);
echo
"<table>
    <tr>
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
  }
  echo "</table>"


?>
