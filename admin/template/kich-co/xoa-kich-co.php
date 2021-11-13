<?php 
	$id = $_GET['id'];
	$sql = "DELETE FROM product_size WHERE id = $id";
	$result = mysqli_query($conn_vn, $sql);
	header('location: index.php?page=kich-co');
?>