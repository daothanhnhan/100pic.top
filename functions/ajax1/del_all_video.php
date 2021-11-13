<?php 
	include_once dirname(__FILE__) . "/../database.php";

	$sql = "DELETE FROM video WHERE id > 0";
	$result = mysqli_query($conn_vn, $sql);

	$sql = "ALTER TABLE `video` AUTO_INCREMENT=1";
	$result = mysqli_query($conn_vn, $sql);
?>