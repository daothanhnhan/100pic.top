<?php 
	$id = $_GET['id'];
	$sql = "DELETE FROM news WHERE news_id = $id";
	$result = mysqli_query($conn_vn, $sql);
	header('location: index.php?page=tin-tuc');
?>