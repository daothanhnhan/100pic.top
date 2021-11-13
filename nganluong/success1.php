<?php 
	session_start();
	include_once "../functions/database.php";
    include_once "../functions/library.php";
    include_once "../functions/action.php";
    $action = new action();
?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>payment success</title>
</head>
<?php
include 'config.php';
include 'lib/nganluong.class.php';
if (isset($_GET['payment_id'])) {
	// Lấy các tham số để chuyển sang Ngânlượng thanh toán:
// die('tuan');
	$transaction_info =$_GET['transaction_info'];
	$order_code =$_GET['order_code'];
	$price =$_GET['price'];
	$payment_id =$_GET['payment_id'];
	$payment_type =$_GET['payment_type'];
	$error_text =$_GET['error_text'];
	$secure_code =$_GET['secure_code'];
    //Khai báo đối tượng của lớp NL_Checkout
	$nl= new NL_Checkout();
	$nl->merchant_site_code = MERCHANT_ID;
	$nl->secure_pass = MERCHANT_PASS;
	//Tạo link thanh toán đến nganluong.vn
	$checkpay= $nl->verifyPaymentUrl($transaction_info, $order_code, $price, $payment_id, $payment_type, $error_text, $secure_code);
	
    if ($checkpay) {	
		// echo 'Payment success: <pre>'; 
		echo '<h1 style="text-align: center;">Bạn đã mua gói thành công</h1>'; 
		// bạn viết code vào đây để cung cấp sản phẩm cho người mua		
		// print_r($_GET);
		// echo '<a href="https://100pic.top" title="">Tiếp tục</a>';
		$user_id = $_SESSION['gb_goi_mua']['user_id'];
		$package_id = $_SESSION['gb_goi_mua']['package_id'];
		$thang = $_SESSION['gb_goi_mua']['thang'];//die($thang);
		$id = $_SESSION['gb_goi_mua']['id'];
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
	}else{
		echo "payment failed";
	}
	
}
?>


