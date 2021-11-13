<?php 
	include_once dirname(__FILE__) . "/../database.php";
	$row = $_GET['row'];
	$col = $_GET['col'];
	$val = $_GET['val'];

	if ($col == 1) {
		$sql = "UPDATE package SET num = $val WHERE id = $row";
	}
	if ($col == 2) {
		$sql = "UPDATE package SET price_1 = $val WHERE id = $row";
	}
	if ($col == 3) {
		$sql = "UPDATE package SET price_2 = $val WHERE id = $row";
	}
	if ($col == 4) {
		$sql = "UPDATE package SET price_3 = $val WHERE id = $row";
	}

	$result = mysqli_query($conn_vn, $sql);
?>