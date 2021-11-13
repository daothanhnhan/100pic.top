<?php 
	$id = $_GET['id'];
	$sql = "DELETE FROM loi_ich WHERE id = $id";
	$result = mysqli_query($conn_vn, $sql);
	header('location: index.php?page=loi-ich');
?>