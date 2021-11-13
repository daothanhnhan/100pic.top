<?php 
	$id = $_GET['id'];
	$sql = "DELETE FROM productcat WHERE productcat_id = $id";
	$result = mysqli_query($conn_vn, $sql);
	header('location: index.php?page=danh-muc-san-pham');
?>