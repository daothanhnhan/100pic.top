<?php 
	session_start();
	include_once dirname(__FILE__) . "/../database.php";
	include_once dirname(__FILE__) . "/../library.php";
	include_once dirname(__FILE__) . "/../action.php";
	$action = new action();

	$user_info = $action->getDetail('user', 'user_id', $_SESSION['user_id_gbvn']);
	$goi = $action->getDetail('package', 'id', $user_info['goi']);
	$now = date('Y-m-d');

	if ($user_info['goi'] == 0) {
        $goi['num'] = 5;
    }

	if ($user_info['num'] >= $goi['num']) {
		echo 'max';die;
	}
	
	if ($user_info['now'] == $now) {
		$num = $user_info['num'];
		$num++;
		$sql = "UPDATE user SET num = $num WHERE user_id = ".$_SESSION['user_id_gbvn'];
	} else {
		$sql = "UPDATE user SET num = 1, now = '$now' WHERE user_id = ".$_SESSION['user_id_gbvn'];
	}
	$result = mysqli_query($conn_vn, $sql);
?>