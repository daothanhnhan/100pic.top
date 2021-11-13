<?php 
	include_once dirname(__FILE__) . "/../database.php";
	$id = $_GET['id'];

	$sql = "DELETE FROM product WHERE product_id = $id";
	$result = mysqli_query($conn_vn, $sql);
?>