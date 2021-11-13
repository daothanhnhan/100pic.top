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
			$time = date('Y-m-d');

			$sql = "SELECT * FROM user WHERE user_email = '$email'";
			$result = mysqli_query($conn_vn, $sql);
			$num = mysqli_num_rows($result);
			$ok = 1;
			if ($num != 0) {
				$ok = 0;
				echo '<script>alert(\'Email đã tồn tại.\')</script>';
			}

			// $code = randomString();
			do {
			  $code = randomString();
			  $sql = "SELECT * FROM user WHERE code = '$code'";
			  $result = mysqli_query($conn_vn, $sql);
			  $num = mysqli_num_rows($result);
			} while ($num != 0);

			if ($ok == 1) {
				$pass = password_hash($pass, PASSWORD_DEFAULT);
				$sql = "INSERT INTO user (user_name, user_email, user_phone, user_password, code, `time`, state) VALUES ('$name', '$email', '$phone', '$pass', '$code', '$time', 1)";
				$result = mysqli_query($conn_vn, $sql);
				if ($result) {
					$_SESSION['user_id_gbvn'] = mysqli_insert_id($conn_vn);
					echo '<script>alert(\'Bạn đã đăng ký cộng tác viên thành công.\');window.location.href="/congtacvien-user"</script>';
				} else {
					echo '<script>alert(\'Có lỗi xảy ra.\')</script>';
				}
			}
			
		}
	}
	dang_ky();
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
			<h1 style="font-size: 24px;font-weight: bold;">Bạn đã ở đây, hãy đăng ký để bắt đầu tìm lợi nhuận với vốn 0 đồng</h1>
			<br>
			<br>
			<hr style="width: 100%;">
			<p style="font-weight: bold;font-style: italic;">Vui lòng nhập thông tin đăng ký tại đây</p>
			<br>
			<form action="" method="post">
			  <div class="form-group">
			    <input type="text" class="form-control" id="text" name="name" placeholder="Tên đăng nhập" required="">
			  </div>
			  <div class="form-group">
			    <input type="email" class="form-control" id="email" name="email" placeholder="Email" required="">
			  </div>
			  <div class="form-group">
			    <input type="password" class="form-control" id="pwd" name="password" placeholder="Password" required="">
			  </div>
			  <p style="font-weight: bold;font-style: italic;">Vui lòng cập nhật số điện thoại để nhận thông tin thanh toán khi cần thiết</p>
			  <br>
			  <div class="form-group">
			    <input type="test" class="form-control" id="email" name="phone" placeholder="Số điện thoại">
			  </div>
			  <button type="submit" name="dk-ctv" class="btn btn-default">Next</button>
			</form>
		</div>
	</div>
</div>