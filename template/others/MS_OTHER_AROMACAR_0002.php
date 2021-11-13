<?php 
function set_online_total () {
	global $conn_vn;

	$sql = "SELECT * FROM online_total WHERE id = 1";
	$result = mysqli_query($conn_vn, $sql);
	$row = mysqli_fetch_assoc($result);
	$dem = $row['dem'];
	$dem++;

	$sql = "UPDATE online_total SET dem = '$dem' WHERE id = 1";
	$result = mysqli_query($conn_vn, $sql);
}

function set_online_ngay () {
	global $conn_vn;

	$sql = "SELECT * FROM online_ngay WHERE id = 1";
	$result = mysqli_query($conn_vn, $sql);
	$row = mysqli_fetch_assoc($result);//var_dump($row);

	$ngay = $row['ngay'];
	$now = date('Y-m-d');//echo $now;
	if ($ngay == $now) {
		$dem = $row['dem'];
		$dem++;

		$sql = "UPDATE online_ngay SET dem = '$dem' WHERE id = 1";
		$result = mysqli_query($conn_vn, $sql);
	} else {
		$sql = "UPDATE online_ngay SET dem = 1, ngay = '$now' WHERE id = 1";
		$result = mysqli_query($conn_vn, $sql);
	}
	
}

function del_offline () {
	global $conn_vn;
	$new = time() - 900;
	$sql = "DELETE FROM user_online WHERE tg < $new";
	$result = mysqli_query($conn_vn, $sql);
}

function get_client_ip() {
    $ipaddress = '';
    if (isset($_SERVER['HTTP_CLIENT_IP']))
        $ipaddress = $_SERVER['HTTP_CLIENT_IP'];
    else if(isset($_SERVER['HTTP_X_FORWARDED_FOR']))
        $ipaddress = $_SERVER['HTTP_X_FORWARDED_FOR'];
    else if(isset($_SERVER['HTTP_X_FORWARDED']))
        $ipaddress = $_SERVER['HTTP_X_FORWARDED'];
    else if(isset($_SERVER['HTTP_FORWARDED_FOR']))
        $ipaddress = $_SERVER['HTTP_FORWARDED_FOR'];
    else if(isset($_SERVER['HTTP_FORWARDED']))
        $ipaddress = $_SERVER['HTTP_FORWARDED'];
    else if(isset($_SERVER['REMOTE_ADDR']))
        $ipaddress = $_SERVER['REMOTE_ADDR'];
    else
        $ipaddress = 'UNKNOWN';
    return $ipaddress;
}

$address_ip = get_client_ip();

function set_online ($ip) {
	global $conn_vn;
	$sql = "SELECT * FROM user_online WHERE ip = '$ip'";//echo $sql;
	$result = mysqli_query($conn_vn, $sql);

	$num = mysqli_num_rows($result);
	if ($num == 0) {
		$tg = time();
		$sql = "INSERT INTO user_online (ip, tg) VALUES ('$ip', '$tg')";
		$result = mysqli_query($conn_vn, $sql);

		set_online_ngay();
		set_online_total();
	} else {
		$tg = time();
		$sql = "UPDATE user_online SET tg = '$tg' WHERE ip = '$ip'";
		$result = mysqli_query($conn_vn, $sql);
		// set_online_ngay();
		// set_online_total();
	}
	del_offline();
}
set_online($address_ip);

$truy_cap = $action->getList('user_online', '', '', 'id', 'asc', '', '', '');
$truy_cap = count($truy_cap);

$truy_cap_ngay = $action->getDetail('online_ngay', 'id', 1)['dem'];
$truy_cap_total = $action->getDetail('online_total', 'id', 1)['dem'];
?>
<ul>
	<li><a>Lượt truy cập: <?= $truy_cap_total ?></a></li>
	<li><a>Truy cập trong ngày: <?= $truy_cap_ngay ?></a></li>
	<li><a>Đang truy cập: <?= $truy_cap ?></a></li>
</ul>