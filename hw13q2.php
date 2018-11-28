<?php
  $ProductID = 0;
  $ProductName = "";
  $SupplierID = 0;
  $CategoryID = 0;
  $UnitPrice = 0;
  $err = false;

  if (isset($_POST["submit"])) {
    if(isset($_POST["ProductID"])) $ProductID = $_POST["ProductID"];
    if(isset($_POST["ProductName"])) $ProductName = $_POST["ProductName"];
    if(isset($_POST["SupplierID"])) $SupplierID = $_POST["SupplierID"];
    if(isset($_POST["CategoryID"])) $CategoryID = $_POST["CategoryID"];
    if(isset($_POST["UnitPrice"])) $UnitPrice = $_POST["UnitPrice"];

    if (!empty($ProductName) && !empty($SupplierID) && !empty($CategoryID) && !empty($UnitPrice) && $UnitPrice >= 0)
    {
      session_start();
      $_SESSION["ProductID"] = $ProductID;
      $_SESSION["ProductName"] = $ProductName;
      $_SESSION["SupplierID"] = $SupplierID;
      $_SESSION["CategoryID"] = $CategoryID;
      $_SESSION["UnitPrice"] = $UnitPrice;
      header("Location: hw13q3.php");
    }
    else
    {
      $err = true;
    }
  }
?>

<!doctype html>

<head>
  <title>Submit Product</title>
  <style>
    .errlabel {color:red;}
  </style>
</head>
<body>
  <form method="post" action="<?php echo $_SERVER['PHP_SELF']?>"
    <label>Product ID:
      <input type="number" name="ProductID" value="<?php if(!empty($ProductID) && $ProductID>0) echo $ProductID; ?>" />

    </label>
    <br />

    <label>Product Name:
      <input type="text" name="ProductName" value="<?php echo $ProductName; ?>" />
      <?php
        if ($err && empty($ProductName)) {
          echo "<label class='errlabel'>Please enter a product name.</label>";
        }
      ?>
    </label>
    <br />

    <label>Supplier ID:
      <select name="SupplierID">
        <?php
          for ($i=1; $i <= 29 ; $i++) {
            echo "<option>$i</option>";
          }
        ?>
      </select>
    </label>
    <br />

    <label>Category ID:
      <select name="CategoryID">
        <?php
          for ($j=1; $j <= 8 ; $j++) {
            echo "<option>$j</option>";
          }
        ?>
      </select>
    </label>
    <br />

    <label>Unit Price:
      <input type="decimal" name="UnitPrice" value="<?php echo $UnitPrice; ?>" />
      <?php
        if ($err && (is_null($UnitPrice) || $UnitPrice<=0)) {
          echo "<label class='errlabel'>Please enter a valid UnitPrice.</label>";
        }
      ?>
    </label>
    <br />

    <input type="submit" name="submit" value="Submit" />
</body>
