<?php 
	include_once dirname(__FILE__) . "/../database.php";

	$code = $_GET['code'];
	$sql = "SELECT * FROM code_sale WHERE code = '$code'";
	$result = mysqli_query($conn_vn, $sql);

	$num = mysqli_num_rows($result);

	if ($num == 0) {
		echo 0;
	} else {
		$row = mysqli_fetch_assoc($result);
		echo $row['percent'];
	}
?>