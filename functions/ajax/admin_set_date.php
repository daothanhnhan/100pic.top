<?php 
	include_once dirname(__FILE__) . "/../database.php";
	include_once dirname(__FILE__) . "/../library.php";
	include_once dirname(__FILE__) . "/../action.php";
	$action = new action();

	$user_id = $_GET['user_id'];
	$package_id = $_GET['package_id'];
	$thang = $_GET['thang'];//die($thang);
	$id = $_GET['id'];
	$now = date('Y-m-d');

	$user = $action->getDetail('user', 'user_id', $user_id);
	if (!isset($user)) {
		echo 'Tài khoản đã bị xóa.';die;
	}
	$date = $user['time'];
	$goi = $user['goi'];

	$book = $action->getDetail('book_package', 'id', $id);

	if ($book['state']==1) {
		echo 'Gói này đã được kích hoạt.';die;
	}

	if ($package_id==1) {

	} elseif ($package_id==2) {
		
	} else {

	}

	// tính ngày gia hạn.
	if ($date >= $now) {

		if ($package_id == $goi) {
			$date = strtotime($date);

			if ($thang==1) {
				$date_add = strtotime("+1 month", $date);
			} elseif ($thang==2) {
				$date_add = strtotime("+3 months", $date);
			} else {
				$date_add = strtotime("+6 months", $date);
			}

			$date_add = date("Y-m-d", $date_add);
	
			$sql = "UPDATE user SET `time` = '$date_add' WHERE user_id = $user_id";
			$result = mysqli_query($conn_vn, $sql);
		} else {
			$now = strtotime($now);
		
			if ($thang==1) {
				$date_add = strtotime("+1 month", $now);
			} elseif ($thang==2) {
				$date_add = strtotime("+3 months", $now);
			} else {
				$date_add = strtotime("+6 months", $now);
			}

			$date_add = date("Y-m-d", $date_add);
		
			$sql = "UPDATE user SET `time` = '$date_add', goi = $package_id WHERE user_id = $user_id";
			$result = mysqli_query($conn_vn, $sql);
		}

		
	} else {
		$now = strtotime($now);
		
		if ($thang==1) {
			$date_add = strtotime("+1 month", $now);
		} elseif ($thang==2) {
			$date_add = strtotime("+3 months", $now);
		} else {
			$date_add = strtotime("+6 months", $now);
		}

		$date_add = date("Y-m-d", $date_add);
	
		$sql = "UPDATE user SET `time` = '$date_add', goi = $package_id WHERE user_id = $user_id";
		$result = mysqli_query($conn_vn, $sql);
	}


	$sql = "UPDATE book_package SET state = 1 WHERE id = $id";
	$result = mysqli_query($conn_vn, $sql);

	if ($result) {
		echo 'Bạn đã kích hoạt thành công.';
	} else {
		echo 'Có lỗi xảy ra.';
	}
	// echo $date_add;
?>