<?php 
	session_start();
	include dirname(__FILE__) . "/../database.php";

	$email = $_POST['email'];
	$password = $_POST['password'];

	$sql = "SELECT * FROM user Where user_email = '$email'";
    $result = mysqli_query($conn_vn, $sql);
    $num = mysqli_num_rows($result);
    if ($num == 0) {
        echo "0";
    } else {
    	$row = mysqli_fetch_assoc($result);
        $pass_hash = $row['user_password'];
        if (password_verify($password, $pass_hash)) {
        	$_SESSION['user_id_gbvn'] = $row['user_id'];
            echo "1";
        } else {
            echo "0";
        }
    }
?>