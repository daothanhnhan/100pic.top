<?php 
	
	function delete_all_product () {
		global $conn_vn;
		if (isset($_POST['del_all'])) {
			$sql = "DELETE FROM product WHERE product_id > 373";
			$result = mysqli_query($conn_vn, $sql);

			$sql = "ALTER TABLE `product` AUTO_INCREMENT=374";
			$result = mysqli_query($conn_vn, $sql);

			$sql = "ALTER TABLE `product_languages` AUTO_INCREMENT=748";
			$result = mysqli_query($conn_vn, $sql);

			echo '<script>alert(\'Đã xóa hết.\')</script>';
		}
	}

	delete_all_product();
?>

<form action="" method="post">
  
  <button type="submit" name="del_all" class="btn btn-default">Xóa toàn bộ sản phẩm</button>
</form>