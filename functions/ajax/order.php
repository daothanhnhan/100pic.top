<?php 
	include_once dirname(__FILE__) . "/../database.php";
	include dirname(__FILE__) . "/../library.php";
	include dirname(__FILE__) . "/../action.php";

	$action = new action();
	$name = $_POST['name'];
	$email = $_POST['email'];
	$address = $_POST['address'];
	$country = '';
	$city = '';
	$user_id = $_POST['user_id'];
	$goi_id = $_POST['goi_id'];
	$thang = $_POST['thang'];
	$state = 0;

	$insert = $action->Insert_1('book_package', 

	    							   array('name', 

	    							   		 'email', 

	    							   		 'address', 

	    							   		 'country', 

	    							   		 'city', 

	    							   		 'user_id', 

	    							   		 'package_id',

	    							   		 'thang',

	    							   		 'state'), 

	    							   array(&$name, 

	    							   		 &$email, 

	    							   		 &$address, 

	    							   		 &$country, 

	    							   		 &$city, 

	    							   		 &$user_id,

	    							   		 &$goi_id,

	    							   		 &$thang,

	    							   		 &$state,

	    							   		 ),

	    							   'sssssiiii');

	if($insert != ''){
		echo 'Bạn đã đặt gói thành công.';
	} else {
		
		echo 'Lỗi, mời bạn thử lại.';
	}
?>