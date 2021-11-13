<?php 
	include_once dirname(__FILE__) . "/../database.php";

	$id = $_GET['id'];

	$sql = "DELETE FROM product WHERE product_id IN ($id)";
	// echo $sql;
	$result = mysqli_query($conn_vn, $sql);
?>