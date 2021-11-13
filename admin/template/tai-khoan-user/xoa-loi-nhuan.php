<?php 
	$id = $_GET['id'];
	$sql = "UPDATE user SET price = 0 WHERE user_id = $id";
	$result = mysqli_query($conn_vn, $sql);
	header('location: index.php?page=tai-khoan-user');
?>