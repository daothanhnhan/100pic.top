<?php 
	include_once dirname(__FILE__)."/../database.php";
	include_once dirname(__FILE__)."/../library.php";
	include_once dirname(__FILE__)."/../action.php";

	$action = new action();
	$user_id = $_GET['user_id'];

	function randomString($length = 10) {
        $str = "";
        $characters = array_merge(range('A','Z'), range('a','z'), range('0','9'));
        $max = count($characters) - 1;
        for ($i = 0; $i < $length; $i++) {
            $rand = mt_rand(0, $max);
            $str .= $characters[$rand];
        }
        return $str;
    }

    $user = $action->getDetail('user', 'user_id', $user_id);
    if (empty($user['code'])) {
    	do {
		  $code = randomString();
		  $sql = "SELECT * FROM user WHERE code = '$code'";
		  $result = mysqli_query($conn_vn, $sql);
		  $num = mysqli_num_rows($result);
		} while ($num != 0);


		$sql = "UPDATE user SET code = '$code' WHERE user_id = $user_id";
		$result = mysqli_query($conn_vn, $sql);
		echo 'Mã cộng tác viên đã được tạo';
    } else {
    	echo 'Mã code cộng tác viên đã tồn tại.';
    }

	
?>