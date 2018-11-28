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
 <a href="advising.php">Advising</a> |
</nav>
<?php
  require_once("db.php");

 $sql = "select *
          from classes, majors
          where classes.major_ID = majors.major_ID";

 $result = $mydb->query($sql);
 //$result should be a resultset
 echo '<table style= "background-color:papayawhip"><tr style= "background-color:darkorange; color:white;">'.'<th>CRN</th>'.'<th>Class Number</th>'.'<th>Name</th>'.'<th>Major ID</th></tr>';

 while($row = mysqli_fetch_array($result)){
 echo '<tr>
          <td style= "background-color:darkorange; color:white;>'.$row["CRN"].'</td>
          <td>'.$row["class_Number"].'</td>
          <td>'.$row["name"].'</td>
          <td>'.$row["major_Name"].'</td>
       </tr>';
 }
 echo '</table>';

?>

</body>
</html>
