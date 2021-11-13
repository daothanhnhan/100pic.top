<?php 
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

	function dang_ky () {
		global $conn_vn;
		if (isset($_POST['dk-ctv'])) {
			$name = mysqli_real_escape_string($conn_vn, $_POST['name']);
			$email = mysqli_real_escape_string($conn_vn, $_POST['email']);
			$phone = mysqli_real_escape_string($conn_vn, $_POST['phone']);
			$pass = mysqli_real_escape_string($conn_vn, $_POST['password']);

			// $code = randomString();
			do {
			  $code = randomString();
			  $sql = "SELECT * FROM congtacvien WHERE code = '$code'";
			  $result = mysqli_query($conn_vn, $sql);
			  $num = mysqli_num_rows($result);
			} while ($num != 0);

			$sql = "INSERT INTO congtacvien (name, email, phone, password, code) VALUES ('$name', '$email', '$phone', '$pass', '$code')";
			$result = mysqli_query($conn_vn, $sql);
			if ($result) {
				$_SESSION['congtacvien_gb_id'] = mysqli_insert_id($conn_vn);
				echo '<script>alert(\'Bạn đã đăng ký cộng tác viên thành công.\');window.location.href="/congtacvien-user"</script>';
			} else {
				echo '<script>alert(\'Có lỗi xảy ra.\')</script>';
			}
		}
	}
	dang_ky();

	$ctv = $action->getDetail('user', 'user_id', $_SESSION['user_id_gbvn']);//var_dump($ctv);

	$tai_lieu_huong_dan = $action->getDetail('page', 'page_id', 57);
?>

<style>
.form-dang-ky-ctv {
	padding: 50px 100px;
}
@media screen and (max-width: 991px) {
	.form-dang-ky-ctv {
		padding: 10px;
	}
}
</style>
<div class="container">
	<div class="row">
		<div class="col-xs-12 col-sm-12 col-md-6 col-lg-6">
			<img src="/images/icons/100pic-ctv.PNG" alt="">
		</div>
		<div class="col-xs-12 col-sm-12 col-md-6 col-lg-6 form-dang-ky-ctv">
			<h1 style="font-weight: bold;">Cảm ơn bạn đã đăng ký thông tin. Từ giờ bạn có thể bắt đầu ngay kế hoạch kiếm lợi nhuận cho chính bạn.</h1>
			<br>
			<br>
			<hr style="width: 100%;">
			<p style="font-weight: bold;font-style: italic;">Đây là mã cộng tác viên của chính bạn</p>
			<br>
			<p style="font-weight: bold;font-size: 18px;"><input type="text" name="" value="<?= $ctv['code'] ?>"></p>
			<br>
			<p style="font-weight: bold;font-style: italic;">Hãy gắn nó vào link mà bạn muốn chia sẻ</p>
			<!-- <br>
			<p><span style="color: #ccc;">https://100pic.top/?id=</span><span style="font-weight: bold;font-size: 18px;"><?= $ctv['code'] ?></span></p> -->
			<br>
			<p><span style="color: #ccc;">https://100pic.top/100pic-wordpress-theme-1334/</span><span style="font-weight: bold;font-size: 18px;"><?= $ctv['code'] ?></span></p>
			<br>
			<p style="font-weight: bold;font-style: italic;">Sau khi chia sẻ, mã của bạn sẽ được lưu vào đường link của khách hàng và bạn sẽ nhận được lợi nhuận khi họ thanh toán.<br>Chúc bạn may mắn và thành công nhé.</p>
			<br>
			<span style="font-weight: bold;font-weight: 20px;color: #fff;padding: 5px 10px;background: #10b543;border-radius: 3px;"><a href="<?= $tai_lieu_huong_dan['page_des'] ?>" style="color: #fff;">Tải về tài liệu hướng dẫn</a></span>
			<br>
			<br>
			<br>
			<span style="font-weight: bold;font-weight: 20px;color: #fff;padding: 5px 10px;background: #10b543;border-radius: 3px;"><a href="/my-profile" style="color: #fff;">Đăng nhập vào tài khoản</a></span>
		</div>
	</div>
</div>