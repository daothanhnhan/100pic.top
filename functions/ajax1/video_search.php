<?php 
	session_start();
	include_once dirname(__FILE__) . "/../vi_en.php";

	$q = $_GET['q'];
	$q = vi_en($q);
	$q = str_replace(" ", "-", $q);
	
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
	
	if (empty($q)) {
		// echo '/video-gallery';
		$q = '-';
	} else {
		// echo '/video-gallery/1/'.$q;
	}

	echo "/video-gallery/1/$q/$cat-$app-$range";
?>