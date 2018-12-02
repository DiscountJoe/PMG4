<!doctype html>
<html>
<head>
  <title>Success</title>
    <link rel="stylesheet" type="text/css" href="mystyle.css">
</head>
<body>
  <?php

    session_start();
  /*  $destination = $_SESSION["destination"];
    $dateListed = $_SESSION["dateListed"];
    $weight = $_SESSION["weight"];
    $origin = $_SESSION["origin"];
    $rate=$_SESSION["rate"];
    $clientID=$_SESSION['clientID'];//for integration with login page
    $miles=$_SESSION['miles'];
    $ratePerMile=($rate/$miles); */
    $CRN=$_SESSION['CRN'];

      echo "<a href='advising.php'>Back to Registration</a>";


    $sid=$_SESSION['student_ID']; //for integration with login page
    //$clientName="Pedros inconspicuous shipping crates"; //placeholder until login integration

    require_once("db.php");

    $sql = "insert into enrollments (CRN, student_ID) value ('$CRN','$sid')";

    /*"insert into listing
            (       origin,     destination,   dateListed,     weight,    rate,   state,    CDL,    dateFufilled,    clientID,    miles,    ratePerMile,    clientName)
            values ('$origin', '$destination', '$dateListed', '$weight', '$rate','$state', '$CDL', '$dateFufilled', '$clientID', '$miles', '$ratePerMile', '$clientName')";
            */
         $result=$mydb->query($sql);

         if ($result==1) {

           $sql2 = "select * from enrollments where CRN=$CRN";
                $result=$mydb->query($sql2);
                while($row = mysqli_fetch_array($result)){
           echo "<p>The following enrollment has been added:</p></br>";

           echo "<table>
              <tr>
                <th>  CRN </th>
                <th>  Student ID  </th>
              </tr>
              <tr>
                <td>".$row['CRN']."</td>
                <td>".$row['student_ID']."</td>
              </tr>
            </table>";
                   }
         }
         else
         {
           echo "an error occured, please try again and ensure that the data is valid.";
         }
  ?>

</body>
</html>
