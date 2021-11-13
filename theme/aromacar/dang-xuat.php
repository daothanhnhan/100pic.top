<?php 
	// session_destroy();
	// if(session_destroy()){echo "ok";die;}
	unset($_SESSION['user_id_gbvn']);
	// if(unset($_SESSION['user_id_gbvn'])){
	// 	echo "ok";die;
	// }
	// if (isset($_COOKIE['user_id_trichdan'])) {
	// 	setcookie('user_id_trichdan', '', time() - 2592000);
	// }
	header('location: /');
?>