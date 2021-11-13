<?php 
    function uploadPicture($src, $img_name, $img_temp){

		$src = $src.$img_name;//echo $src;

		if (!@getimagesize($src)){

			if (move_uploaded_file($img_temp, $src)) {

				return true;

			}

		}

	}

	

	function code_sale ($id) {
		global $conn_vn;
		if (isset($_POST['add_sale'])) {
			$src= "../images/";
			// $src = "uploads/";

			if(isset($_FILES['image']) && $_FILES['image']['name'] != ""){

				uploadPicture($src, $_FILES['image']['name'], $_FILES['image']['tmp_name']);

			}

			$code = $_POST['code'];
            $money = $_POST['money'];
			$percent = $_POST['percent'];
			$money = str_replace(",", "", $money);
            $money = 0;

            $name = mysqli_real_escape_string($conn_vn, $_POST['name']);
            $note = mysqli_real_escape_string($conn_vn, $_POST['note']);


			$sql = "UPDATE code_sale SET code = '$code', `money` = $money, percent = $percent, name = '$name', note = '$note' WHERE id = $id";
			$result = mysqli_query($conn_vn, $sql);
			if ($result) {
				echo '<script type="text/javascript">alert(\'Bạn đã sửa được một mã khuyến mãi.\')</script>';
			} else {
				echo '<script type="text/javascript">alert(\'Có lỗi xảy ra.\')</script>';
			}
			
		}
	}

	code_sale($_GET['id']);
    $info = $action->getDetail('code_sale', 'id', $_GET['id']);
?>

<form action="" method="post" enctype="multipart/form-data">
    <div class="rowNodeContentPage">
        <div class="leftNCP">
            <span class="titLeftNCP">Nội dung </span>
            <p class="subLeftNCP">Nhập thông tin mã khuyến mãi<br /><br /></p>     
            <p class="subLeftNCP"><a href="index.php?page=ma-khuyen-mai">Quay lại</a><br /><br /></p>     
                    
        </div>
        <div class="boxNodeContentPage">
            <p class="titleRightNCP">Tên</p>
            <input type="text" class="txtNCP1" name="name" value="<?= $info['name'] ?>" />
            <p class="titleRightNCP">Mã khuyến mãi</p>
            <input type="text" class="txtNCP1" name="code" value="<?= $info['code'] ?>" required/>
            <!-- <p class="titleRightNCP">Chiết khấu VNĐ</p>
            <input type="number" class="txtNCP1" name="money" id="money" value="<?= $info['money'] ?>" onkeyup="moneyff(this)" required/> -->
            <p class="titleRightNCP">Phần trăm</p>
            <input type="number" name="percent" min="0" max="100" class="txtNCP1" value="<?= $info['percent'] ?>" required="">
            <p class="titleRightNCP">Ghi chú</p>
            <textarea name="note" class="txtNCP1"><?= $info['note'] ?></textarea>
            
        </div>
    </div><!--end rowNodeContentPage-->
    
    <button class="btn btnSave" type="submit" name="add_sale">Lưu</button>
</form>
            
<p class="footerWeb">Cảm ơn quý khách hàng đã tin dùng dịch vụ của chúng tôi<br />Sản phẩm thuộc Công ty TNHH Truyền Thông Và Công Nghệ Cafelink Việt Nam</p>
<script>
    function moneyf (data) {
        // alert('phi');
        var so = data.value;
        var rong = data.value;
        so = so.split(",").join("");
        so = so.replace(/[^\d]/,'');
        so = Number(so);

        if (rong === "") {
            document.getElementById(data.id).value = "";
        } else {
            document.getElementById(data.id).value = number_format(so);
        }      
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