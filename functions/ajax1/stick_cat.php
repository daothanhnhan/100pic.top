<?php 
	session_start();
	if (isset($_SESSION['cat'])) {
		if ($_SESSION['cat'] == $_GET['id']) {
			unset($_SESSION['cat']);
		}
	} else {
		$_SESSION['cat'] = $_GET['id'];
	}

	if (isset($_SESSION['cat'])) {
		$cat = $_SESSION['cat'];
	} else {
		$cat = 0;
	}

	if (isset($_SESSION['app'])) {
		$app = $_SESSION['app'];
	} else {
		$app = 0;
	}

	$range = 5 - $_SESSION['range'];

	echo "$cat-$app-$range";
?>