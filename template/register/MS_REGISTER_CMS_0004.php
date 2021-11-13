<?php 
	$mesage = '';
	function edit_pass ($id) {
		global $conn_vn;
		global $mesage;
		// $action_email = new action_email();

		if (isset($_POST['edit_pass'])) {
			$ok = 1;
			$pass1 = $_POST['pass1'];
			$pass2 = $_POST['pass2'];

			if ($pass1 != $pass2) {
				$ok = 0;
				$mesage = 'Mật khẩu không khớp.';
			}

			if ($ok == 1) {
				$pass = password_hash($pass1, PASSWORD_DEFAULT);
				$sql = "UPDATE user SET user_password = '$pass' WHERE user_id = $id";
				$result = mysqli_query($conn_vn, $sql);
				if ($result) {
					echo '<script>alert(\'Bạn đã đổi mật khẩu thành công.\');</script>';
				} else {
					echo 'Có lỗi xảy ra.';
				}
			}
			
		}
	}
	edit_pass($_GET['trang']);
?>

<div class="container" style="margin-top: 50px;margin-bottom: 20px;">
	<h1 style="font-size: 30px;margin-bottom: 20px;">Đổi mật khẩu</h1>
	<div class="col-lg-3 col-md-3 col-sm-12 col-xs-12">
		
	</div>
	<div class="col-lg-6 col-md-6 col-sm-12 col-xs-12">
		<form action="" method="post">
		  <div class="form-group">
		  	<span style="color: red;"><?= $mesage ?></span><?= empty($mesage) ? '' : '<br><br>' ?>
		    <label for="pass1">Nhập mật khẩu:</label>
		    <input type="password" class="form-control" id="pass1" name="pass1" required=""><br>
		    <label for="pass2">Nhập lại mật khẩu:</label>
		    <input type="password" class="form-control" id="pass2" name="pass2" required="">
		  </div>
		  <button type="submit" class="btn btn-default" name="edit_pass">Đổi mật khẩu</button>
		</form>
	</div>
	<div class="col-lg-3 col-md-3 col-sm-12 col-xs-12">
		
	</div>
	

</div>
