<?php 
	$mesage = '';
	function email_pass () {
		global $conn_vn;
		global $mesage;
		$action_email = new action_email();

		if (isset($_POST['email_pass'])) {
			$email = $_POST['email'];
			$sql = "SELECT * FROM user WHERE user_email = '$email'";
			$result = mysqli_query($conn_vn, $sql);
			if ($result) {
				$num = mysqli_num_rows($result);
				if ($num == 0) {
					$mesage = 'Email này không tồn tại.';
				} else {
					$row = mysqli_fetch_assoc($result);
					$user_id = $row['user_id'];

					$noi_dung = '<p>Xin chào bạn</p>';
					$noi_dung .= '<p>Bạn hoặc ai đó đã yêu cầu đổi mật khẩu đăng nhập trên website 100pic.top</p>';
					$noi_dung .= '<p>Nếu đã yêu cầu, vui lòng click vào đường link dưới đây còn nếu bạn không yêu cầu vui lòng bỏ qua thư này</p>';
					$noi_dung .= '<p>Link: <a href="https://100pic.top/change-password/'.$user_id.'">100pic.top/change-password/'.$user_id.'</a></p>';
					// echo $noi_dung;
					$action_email->email_send($email, 'Đổi mật khẩu tài khoản 100pic.top', $noi_dung);
					$mesage = 'Bạn vào Email để đổi mật khẩu nhé.';
				}
			} else {
				$mesage = 'Có lỗi xảy ra.';
			}
		}
	}
	email_pass();
?>
<div class="container" style="margin-top: 50px;margin-bottom: 20px;">
	<h1 style="font-size: 30px;margin-bottom: 20px;">Quên mật khẩu</h1>
	<div class="col-lg-3 col-md-3 col-sm-12 col-xs-12">
		
	</div>
	<div class="col-lg-6 col-md-6 col-sm-12 col-xs-12">
		<form action="" method="post">
		  <div class="form-group">
		  	<span style="color: red;"><?= $mesage ?></span><?= empty($mesage) ? '' : '<br><br>' ?>
		    <label for="email">Nhập địa chỉ Email:</label>
		    <input type="email" class="form-control" id="email" name="email" required="">
		  </div>
		  <button type="submit" class="btn btn-default" name="email_pass">Gửi email</button>
		</form>
	</div>
	<div class="col-lg-3 col-md-3 col-sm-12 col-xs-12">
		
	</div>
	

</div>
