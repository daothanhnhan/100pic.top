<?php 
	
	function delete_all_product () {
		global $conn_vn;
		if (isset($_POST['del_all'])) {
			$sql = "DELETE FROM code_sale WHERE id > 0";
			$result = mysqli_query($conn_vn, $sql);

			$sql = "ALTER TABLE `code_sale` AUTO_INCREMENT=1";
			$result = mysqli_query($conn_vn, $sql);

			// $sql = "ALTER TABLE `product_languages` AUTO_INCREMENT=4090";
			// $result = mysqli_query($conn_vn, $sql);

			echo '<script>alert(\'Đã xóa hết mã khuyến mãi.\')</script>';
		}
	}

	delete_all_product();
?>

<form action="" method="post">
  
  <button type="submit" name="del_all" class="btn btn-default">Xóa toàn bộ mã khuyến mãi</button>
</form>