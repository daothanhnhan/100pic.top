<?php 
	session_start();
	include dirname(__FILE__) . "/../database.php";
    include_once dirname(__FILE__) . "/../library.php";
    include_once dirname(__FILE__) . "/../action.php";

	$username = $_POST['username'];
	$email = $_POST['email'];
	$password = $_POST['password'];
	$time = date('Y-m-d');//echo $time;die;
	
	// Check email isset
    $sql_email = "SELECT * FROM user Where user_email = '$email'";
    $result_email = mysqli_query($conn_vn, $sql_email);
    $row_email = mysqli_num_rows($result_email);

    if ($row_email > 0) {
        echo "0";
        die;
    }

    $password = password_hash($password, PASSWORD_DEFAULT);
    $sql = "INSERT INTO user (user_name, user_email, user_password, `time`, state) VALUES ('$username', '$email', '$password', '$time', 1)";
    $result = mysqli_query($conn_vn, $sql);
    if ($result) {
    	$_SESSION['user_id_gbvn'] = mysqli_insert_id($conn_vn);
    	echo '2';
    } else {
    	echo '1';
    }
?>