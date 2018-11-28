<!doctype html>
<html>
<head>
  <title>Success</title>
  <style>
    table, td {
      border: 1px solid white;
    }
    table {
      border-collapse: collapse;
      empty-cells: show;
      display:
    }
    th, td:first-child{
      color: white;
      background-color: Coral;
    }
    td {
      width: 15em;
      height: 20px;
      color: black;
      background-color: Bisque;
    }
  </style>
</head>
<body>
  <?php
    session_start();
    $ProductID = $_SESSION["ProductID"];
    $ProductName = $_SESSION["ProductName"];
    $SupplierID = $_SESSION["SupplierID"];
    $CategoryID = $_SESSION["CategoryID"];
    $UnitPrice = $_SESSION["UnitPrice"];

    require_once("db.php");

    echo "<table>";
    echo "<thead>";
    echo "<th>Product ID</th><th>Product Name</th><th>Supplier ID</th><th>Category ID</th>
          <th>Unit Price</th>";
    echo "</thead>";
    echo "<td>$ProductID</td><td>$ProductName</td><td>$SupplierID</td><td>$CategoryID</td>
          <td>$UnitPrice</td>";

    if ($ProductID == "") {
      $sql = "insert into products(ProductName, SupplierID, CategoryID,
              UnitPrice)
              values('$ProductName', $SupplierID, $CategoryID,
               $UnitPrice)";
      $result=$mydb->query($sql);

      if ($result==1) {
        echo "<p>A new product record has been added.</p>";
      }
    } else {
      $sql = "update products set ProductName='$ProductName', SupplierID=$SupplierID, CategoryID=$CategoryID,
               UnitPrice=$UnitPrice
               where ProductID=$ProductID";
      $result=$mydb->query($sql);

      if ($result==1) {
        echo "<p>A product record has been updated.</p>";
      }
    }
  ?>

</body>
</html>
