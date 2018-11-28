<?php
  $pid="";
  $password="";
  $remember="no";
  $error = false;
  $loginOK = null;
  $student_ID = "";

  if(isset($_POST["submit"])){
    if(isset($_POST["pid"])) $pid=$_POST["pid"];
    if(isset($_POST["password"])) $password=$_POST["password"];
    if(isset($_POST["remember"])) $remember=$_POST["remember"];

    //echo ($pid.".".$password.".".$remember);
    if(empty($pid) || empty($password)) {
      $error=true;
    }

    //set cookies for remembering the user name
    if(!empty($pid) && $remember=="yes"){
      setcookie("pid", $pid, time()+60*60*24, "/");
    }


    if(!$error){
      //check pid and password with the database record
      require_once("db.php");
      $sql = "select password, student_ID from student where pid='$pid'";
      $result = $mydb->query($sql);

      $row=mysqli_fetch_array($result);
      if ($row){
        if(strcmp($password, $row["password"]) ==0 ){
          $loginOK=true;
        } else {
          $loginOK = false;
        }
      }

      if($loginOK) {
        //set session variable to remember the pid
        session_start();
        $_SESSION["pid"] = $pid;
        $_SESSION["student_ID"] = $row["student_ID"];
        setcookie("password", $password, time()+86400*3);

        Header("Location:landing.php");
      }
    }
  }

 ?>
<!doctype html>
<html>
<head>
  <title>Login</title>
  <style>
    .errlabel {color:red};
  </style>
</head>
<body>
  <img src="vt.svg" height="15%" width="15%">
  <form method="post" action="<?php echo $_SERVER['PHP_SELF']; ?>" >
    <table>
      <tr>
        <td>pid</td>
      </tr>
      <tr>
        <td><input type="text" name="pid" value="<?php
          if(!empty($pid))
            echo $pid;
          else if(isset($_COOKIE['pid'])) {
            echo $_COOKIE['pid'];
          }
        ?>" /><?php if($error && empty($pid)) echo "<span class='errlabel'> please enter a pid</span>"; ?></td>
      </tr>
      <tr>
        <td>password</td>
      </tr>
      <tr>
        <td><input type="password" name="password" value="<?php if(!empty($password)) echo $password; ?>" /><?php if($error && empty($password)) echo "<span class='errlabel'> please enter a password</span>"; ?></td>
      </tr>
    </table>


    <table>
      <tr>
        <td><input type="checkbox" name="remember" value="yes"/><label>Remember me</label></td>
      </tr>
      <tr>
        <td><?php if(!is_null($loginOK) && $loginOK==false) echo "<span class='errlabel'>pid and password do not match.</span>"; ?></td>
      </tr>
      <tr>
        <td><input type="submit" name="submit" value="Login" /></td>
      </tr>
    </table>
  </form>

</body>
</html>
