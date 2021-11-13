<?php 
	$id = $_GET['id'];
	$sql = "DELETE FROM page WHERE page_id = $id";
	$result = mysqli_query($conn_vn, $sql);
	header('location: index.php?page=bai-viet');
?>