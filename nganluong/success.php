<?php 
	session_start();
	include_once "../functions/database.php";
	include_once "../functions/library.php";
	include_once "../functions/action.php";
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
		echo '<h1 style="text-align: center;">Bạn đã thanh toán thành công đơn hàng, File sẽ tự động tải về hoặc bấm vào đây</h1>'; 
		// bạn viết code vào đây để cung cấp sản phẩm cho người mua		
		// print_r($_GET);
		echo '<p style="text-align: center;"><a href="'.$_SESSION['anh_order'][2].'" id="tai" title="" download >Download</a></p>';

		////////////////////////
		$action = new action();
		if (!empty($_SESSION['nl_user_info'])) {
			$user_id = $_SESSION['nl_user_info'][0];
			$price = $_SESSION['nl_user_info'][1];
			$price_giam = $_SESSION['nl_user_info'][2];
			$code = $_SESSION['nl_user_info'][3];
			$ngay = date('Y-m-d H:i:s');

			$user = $action->getDetail('user', 'user_id', $user_id);
			$price_ctv = $user['price'];
			$price_ctv += $price;

			$sql = "UPDATE user SET price = '$price_ctv' WHERE user_id = $user_id";
			$result = mysqli_query($conn_vn, $sql);

			$sql = "INSERT INTO user_code (code, ngay, tien_giam, tien_hoa_hong) VALUES ('$code', '$ngay', '$price_giam', '$price')";
			$result = mysqli_query($conn_vn, $sql);
		}
	}else{
		echo "payment failed";
	}
	
} else {
	echo 'failed';
}
?>


<script>
	setTimeout(function(){ document.getElementById('tai').click(); }, 2000);
</script>