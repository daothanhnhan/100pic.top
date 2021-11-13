<?php 
	$id = $_GET['id'];
	$sql = "DELETE FROM video_cat WHERE id = $id";
	$result = mysqli_query($conn_vn, $sql);
	header('location: index.php?page=video-cat');
?>