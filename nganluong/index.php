<?php
	session_start(); 
	include_once "../functions/database.php";
	include_once "../functions/library.php";
	include_once "../functions/action.php";

	function code_sale_month ($code, $gia_goc, $gia_giam) {
		global $conn_vn;
		$ngay = date('Y-m-d H:i:s');

		if (!empty($code)) {
			$sql = "INSERT INTO code_sale_month (code, ngay, gia_goc, gia_giam) VALUES ('$code', '$ngay', '$gia_goc', '$gia_giam')";
			$result = mysqli_query($conn_vn, $sql);
		}
	}

	$action = new action();
	$id = $_GET['id'];

	$rowConfig = $action->getDetail('config', 'config_id', 1);

	$anh = $action->getDetail('product', 'product_id', $id);//var_dump($anh['product_name']);die;
	$download = $anh['product_des2'];
	$_SESSION['anh_order'] = array($id, 0, $download);
	// var_dump($anh['productcat_ar']);
	// echo 'acb';
	$cat = explode(",", $anh['productcat_ar']);
	$cat_id = $cat[0];//echo $cat;
	$productcat = $action->getDetail('productcat', 'productcat_id', $cat_id);//var_dump($productcat);
	$price_cat = (int)$productcat['productcat_sub_info1'];//echo $price_cat;
	/////////////////////////
	if (isset($_COOKIE['ma_ctv'])) {
		$user = $action->getDetail('user', 'code', $_COOKIE['ma_ctv']);
		if (!empty($user)) {
			$price_ctv = $price_cat * 0.1;
			$price_ctv = (int)$price_ctv;
			$user_code = $_COOKIE['ma_ctv'];
			$price_ctv_giam = $price_cat * 0.05;
			$price_ctv_giam = (int)$price_ctv_giam;
			$_SESSION['nl_user_info'] = array($user['user_id'], $price_ctv, $price_ctv_giam, $user_code);
			// var_dump($_SESSION['nl_user_info']);//die;
			$ctv_ma = 1;
		} else {
			$_SESSION['nl_user_info'] = '';
			$ctv_ma = 0;
		}
	} else {
		$_SESSION['nl_user_info'] = '';
		$ctv_ma = 0;
	}
?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Thanh toán trực tuyến bằng thẻ ATM, internetbanking, Visa, Master Card;... qua NgânLượng.vn</title>
</head>
<?php

include 'config.php';
include 'lib/nganluong.class.php';
if (isset($_POST['submit'])) {
	// Lấy các tham số để chuyển sang Ngânlượng thanh toán:
	code_sale_month($_POST['code_sale'], $_POST['gia_goc'], $_POST['txt_gia']);
 //$ten= $_POST["txt_test"];
    $receiver=RECEIVER;
	//Mã đơn hàng 
	$order_code='NL_'.time();
	//Khai báo url trả về 
	$return_url= "https://100pic.top/nganluong/success.php";
	// Link nut hủy đơn hàng
	$cancel_url= $_SERVER['HTTP_REFERER'];	
	$notify_url = "https://100pic.top/nganluong/success.php";
	//Giá của cả giỏ hàng 
	$txh_name =$_POST['txh_name']; 	
	$txt_email =$_POST['txt_email']; 	
	$txt_phone =$_POST['txt_phone']; 	
	$price =(int)$_POST['txt_gia'];
	if ($ctv_ma == 1) {
		$price = $price * 0.95;
	} 	
	//Thông tin giao dịch
	$transaction_info="Thong tin giao dich";
	$currency= "vnd";
	$quantity=1;
	$tax=0;
	$discount=0;
	$fee_cal=0;
	$fee_shipping=0;
	$order_description="Thong tin don hang: ".$order_code;
	$buyer_info=$txh_name."*|*".$txt_email."*|*".$txt_phone;
	$affiliate_code="";
    //Khai báo đối tượng của lớp NL_Checkout
	$nl= new NL_Checkout();
	$nl->nganluong_url = NGANLUONG_URL;
	$nl->merchant_site_code = MERCHANT_ID;
	$nl->secure_pass = MERCHANT_PASS;
	//Tạo link thanh toán đến nganluong.vn
	$url= $nl->buildCheckoutUrlExpand($return_url, $receiver, $transaction_info, $order_code, $price, $currency, $quantity, $tax, $discount , $fee_cal,    $fee_shipping, $order_description, $buyer_info , $affiliate_code);
	//$url= $nl->buildCheckoutUrl($return_url, $receiver, $transaction_info, $order_code, $price);
	
	
	//echo $url; die;
	if ($order_code != "") {
		//một số tham số lưu ý
		//&cancel_url=http://yourdomain.com --> Link bấm nút hủy giao dịch
		//&option_payment=bank_online --> Mặc định forcus vào phương thức Ngân Hàng
		$url .='&cancel_url='. $cancel_url . '&notify_url='.$notify_url;
		//$url .='&option_payment=bank_online';
		
		echo '<meta http-equiv="refresh" content="0; url='.$url.'" >';
		//&lang=en --> Ngôn ngữ hiển thị google translate
	}
}
?>
<script type="text/javascript">
function check(){
		var price = document.Test.txt_gia.value;
		
		if (price < 2000) {
		
		alert('Minimum amount is 2000 VNĐ');
		return false;
		}
		
	return true;	
}
</script>
<style>
.split {
  height: 100%;
  width: 100%;
  position: fixed;
  z-index: 1;
  top: 0;
  overflow-x: hidden;
  padding-top: 20px;
}

.left {
  left: 0;
  background-color: #37eac9;
}

.right {
  right: 0;
  background-color: #fff;
}

.centered {
  position: absolute;
  top: 50%;
  left: 50%;
  transform: translate(-50%, -50%);
  text-align: center;
}

.centered img {
  width: 150px;
  border-radius: 50%;
}
iframe {
	max-width: 90%;
}
::placeholder { /* Chrome, Firefox, Opera, Safari 10.1+ */
  color: #37eac9;
  opacity: 1; /* Firefox */
}
</style>
<body>

<!-- <form name="Test"  method="post" action="" onsubmit="return check();">
<table>
	<tr><th><strong>Họ Tên:</strong></th><td><input  type="text" name="txh_name" size="28" placeholder="Họ tên" /></td></tr>
	<tr><th><strong>Email:</strong></th><td><input  type="text" name="txt_email" size="28" placeholder="địa chỉ email" /></td></tr>
	<tr><th><strong>Số điện thoại:</strong></th><td><input  type="text" name="txt_phone" size="28" placeholder="Số điện thoại" /></td></tr>
	<tr><th><strong>Số tền thanh toán:</strong></th><td><input name="txt_gia" type="text" size="28" placeholder="Số tiền quyên góp" /></td></tr>	
	<tr><th></th><td><input  type="submit" name="submit" value="Thanh Toán"></td></tr>	
</table>
</form> -->
<div class="split left" style="display: none;">
  <div class="centered" style="width: 90%;">
    <img src="https://100pic.top/images/logo-chinh-100-pic-320.png" alt="Avatar woman">
    <h2 style="font-size: 30px;text-transform: uppercase;color: #fff;margin-top: 0;">Hướng dẫn thanh toán</h2>
    <p>
    	<button type="" style="color: #2ec5a9;border-radius: 50px;background: #fff;padding: 5px 20px;border: 0;font-size: 20px;">QR Code</button>
    	<button type="" style="color: #2ec5a9;border-radius: 50px;background: #fff;padding: 5px 20px;border: 0;font-size: 20px;">Ngân hàng</button>
    </p>
    <?= $rowConfig['content_home5'] ?>
  </div>
</div>

<div class="split right">
  <div class="centered" style="width: 90%">
    
    <h2 style="font-size: 30px;text-transform: uppercase;color: #217969;">Tải nhanh:<br>(<?= $anh['product_name'] ?>)</h2>
    
    <br>
    <!-- <button type="" style="color: #2ec5a9;border-radius: 50px;background: #fff;padding: 5px 20px;border: 0;font-size: 20px;">Thanh toán</button> -->
    <form name="Test"  method="post" action="" onsubmit="return check();">
		<table style="margin-right: auto;margin-left: auto;">
			<tr><td><input  type="hidden" name="txh_name" size="28" placeholder="Họ tên" value="ảnh sản phẩm" /></td></tr>
			<tr><td><input  type="hidden" name="txt_email" size="28" placeholder="địa chỉ email" value="info@100pic.top" /></td></tr>
			<tr><td><input  type="hidden" name="txt_phone" size="28" placeholder="Số điện thoại" value="0933335554" /></td></tr>
			<?php if (empty($price_cat)) { ?>
			<tr><td><input name="txt_gia" id="gia_nl" type="hidden" size="28" placeholder="Số tiền quyên góp" value="15000" /></td></tr>	
			<?php } else { ?>
			<tr><td><input name="txt_gia" id="gia_nl" type="hidden" size="28" placeholder="Số tiền quyên góp" value="<?= $price_cat ?>" /></td></tr>
			<?php } ?>
			<tr><td><input  type="text" name="code_sale" size="28" placeholder="Nhập Mã Giảm Giá" value="<?= $_COOKIE['ma_ctv'] ?>" style="height: 30px;text-align: center;border-radius: 12px;border: 2px solid #37eac9;width: 290px;font-style: italic;font-size: 18px;color: #37eac9;font-weight: bold;" onkeyup="code_salef(this.value)" onchange="code_salef(this.value)" /></td></tr>
			<tr><td>
				<?php if (empty($price_cat)) { ?>
			    <button type="" id="gia_show" style="color: #fff;border-radius: 12px;background: #37eac9;padding: 5px 30px;border: 0;font-size: 20px;font-weight: bold;font-style: italic;width: 300px;"><?= $ctv_ma==1 ? '14,250' : '15,000' ?> vnđ</button>
				<?php } else { ?>
				<button type="" id="gia_show" style="color: #fff;border-radius: 12px;background: #37eac9;padding: 5px 30px;border: 0;font-size: 20px;font-weight: bold;font-style: italic;width: 300px;"><?= $ctv_ma==1 ? number_format($price_cat*0.95) : number_format($price_cat) ?> vnđ</button>
				<?php } ?>
			</td></tr>
			<tr><td><input  type="submit" name="submit" value="Thanh Toán & Tải" style="color: #fff;border-radius: 14px;background: #37eac9;padding: 5px 20px;border: 0;font-size: 22px;font-style: italic;font-weight: bold;text-transform: revert;width: 300px;"></td></tr>	
			<tr><td><input name="gia_goc" id="gia_goc" type="hidden" size="28" placeholder="Số tiền quyên góp" value="<?= empty($price_cat) ? 15000 : $price_cat ?>" /></td></tr>
		</table>
	</form>
  </div>
</div>
</body>
<script>
	function code_salef (code) {
		var price = document.getElementById("gia_goc").value;
		// alert(price);
		var xhttp = new XMLHttpRequest();
		  xhttp.onreadystatechange = function() {
		    if (this.readyState == 4 && this.status == 200) {
		    	// alert(this.responseText);
		    	var percent = this.responseText;
		    	var gia_giam = price - (price * percent/100);
		     	document.getElementById("gia_nl").value = gia_giam;
		     	document.getElementById("gia_show").innerHTML = number_format(gia_giam) + ' vnđ';
		    }
		  };
	  	xhttp.open("GET", "/functions/ajax1/code_sale.php?code="+code, true);
	  	xhttp.send();
	}

	function number_format (number, decimals, dec_point, thousands_sep) {
        var n = number, prec = decimals;

        var toFixedFix = function (n,prec) {
            var k = Math.pow(10,prec);
            return (Math.round(n*k)/k).toString();
        };

        n = !isFinite(+n) ? 0 : +n;
        prec = !isFinite(+prec) ? 0 : Math.abs(prec);
        var sep = (typeof thousands_sep === 'undefined') ? ',' : thousands_sep;
        var dec = (typeof dec_point === 'undefined') ? '.' : dec_point;

        var s = (prec > 0) ? toFixedFix(n, prec) : toFixedFix(Math.round(n), prec); 
        //fix for IE parseFloat(0.55).toFixed(0) = 0;

        var abs = toFixedFix(Math.abs(n), prec);
        var _, i;

        if (abs >= 1000) {
            _ = abs.split(/\D/);
            i = _[0].length % 3 || 3;

            _[0] = s.slice(0,i + (n < 0)) +
                   _[0].slice(i).replace(/(\d{3})/g, sep+'$1');
            s = _.join(dec);
        } else {
            s = s.replace('.', dec);
        }

        var decPos = s.indexOf(dec);
        if (prec >= 1 && decPos !== -1 && (s.length-decPos-1) < prec) {
            s += new Array(prec-(s.length-decPos-1)).join(0)+'0';
        }
        else if (prec >= 1 && decPos === -1) {
            s += dec+new Array(prec).join(0)+'0';
        }
        return s; 
        // alert(s);
    }
</script>
</html>

