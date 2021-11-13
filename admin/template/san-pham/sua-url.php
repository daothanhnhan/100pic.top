<?php 
	function vi_en1($str)
    {
        if (!$str)
            return '';
        $coDau = array("à", "á", "ạ", "ả", "ã", "â", "ầ", "ấ", "ậ", "ẩ", "ẫ", "ă", "ằ",
            "ắ", "ặ", "ẳ", "ẵ", "è", "é", "ẹ", "ẻ", "ẽ", "ê", "ề", "ế", "ệ", "ể", "ễ", "ì",
            "í", "ị", "ỉ", "ĩ", "ò", "ó", "ọ", "ỏ", "õ", "ô", "ồ", "ố", "ộ", "ổ", "ỗ", "ơ",
            "ờ", "ớ", "ợ", "ở", "ỡ", "ù", "ú", "ụ", "ủ", "ũ", "ư", "ừ", "ứ", "ự", "ử", "ữ",
            "ỳ", "ý", "ỵ", "ỷ", "ỹ", "đ", "À", "Á", "Ạ", "Ả", "Ã", "Â", "Ầ", "Ấ", "Ậ", "Ẩ",
            "Ẫ", "Ă", "Ằ", "Ắ", "Ặ", "Ẳ", "Ẵ", "È", "É", "Ẹ", "Ẻ", "Ẽ", "Ê", "Ề", "Ế", "Ệ",
            "Ể", "Ễ", "Ì", "Í", "Ị", "Ỉ", "Ĩ", "Ò", "Ó", "Ọ", "Ỏ", "Õ", "Ô", "Ồ", "Ố", "Ộ",
            "Ổ", "Ỗ", "Ơ", "Ờ", "Ớ", "Ợ", "Ở", "Ỡ", "Ù", "Ú", "Ụ", "Ủ", "Ũ", "Ư", "Ừ", "Ứ",
            "Ự", "Ử", "Ữ", "Ỳ", "Ý", "Ỵ", "Ỷ", "Ỹ", "Đ", "ê", "ù", "à");
        $khongDau = array("a", "a", "a", "a", "a", "a", "a", "a", "a", "a", "a", "a",
            "a", "a", "a", "a", "a", "e", "e", "e", "e", "e", "e", "e", "e", "e", "e", "e",
            "i", "i", "i", "i", "i", "o", "o", "o", "o", "o", "o", "o", "o", "o", "o", "o",
            "o", "o", "o", "o", "o", "o", "u", "u", "u", "u", "u", "u", "u", "u", "u", "u",
            "u", "y", "y", "y", "y", "y", "d", "A", "A", "A", "A", "A", "A", "A", "A", "A",
            "A", "A", "A", "A", "A", "A", "A", "A", "E", "E", "E", "E", "E", "E", "E", "E",
            "E", "E", "E", "I", "I", "I", "I", "I", "O", "O", "O", "O", "O", "O", "O", "O",
            "O", "O", "O", "O", "O", "O", "O", "O", "O", "U", "U", "U", "U", "U", "U", "U",
            "U", "U", "U", "U", "Y", "Y", "Y", "Y", "Y", "D", "e", "u", "a");
        $str = str_replace($coDau, $khongDau, $str);
        $str = str_replace(' ', '-', $str);
        $str = preg_replace('/[^a-zA-Z0-9--]/', '', $str);
        //$str = preg_replace('/(---|--)/', '-', $str);
            $str = strtolower($str);
            // $str = str_replace(' ', '-', $str);
        return $str;
    }

	$sql = "SELECT * FROM product WHERE friendly_url is NULL";
	$result = mysqli_query($conn_vn, $sql);

	// if ($result) {
	// 	echo 'ok';
	// } else {
	// 	echo 'false';
	// }

	// $row = mysqli_fetch_assoc($result);var_dump($row);

	while ($row = mysqli_fetch_assoc($result)) {
		$name = $row['product_name'];
		$name = vi_en1($name);
		$pro_id = $row['product_id'];

		$sql1 = "UPDATE product SET friendly_url = '$name' WHERE product_id = $pro_id";
		$result1 = mysqli_query($conn_vn, $sql1);
		echo $pro_id;echo '<br>';
	}
	echo 'success';
?>