<?php 
    function uploadPicture($src, $img_name, $img_temp){

		$src = $src.$img_name;//echo $src;

		if (!@getimagesize($src)){

			if (move_uploaded_file($img_temp, $src)) {

				return true;

			}

		}

	}

	

	function loi_ich () {
		global $conn_vn;
		if (isset($_POST['add_trademark'])) {
			$src= "../images/";
			// $src = "uploads/";

			$image = '';
			if(isset($_FILES['image']) && $_FILES['image']['name'] != ""){

				uploadPicture($src, $_FILES['image']['name'], $_FILES['image']['tmp_name']);
				$image = $_FILES['image']['name'];

			}

			$name = mysqli_real_escape_string($conn_vn, $_POST['name']);
			$mien_phi = isset($_POST['mien_phi']) ? 1 : 0;
			$cao_cap = isset($_POST['cao_cap']) ? 1 : 0;

			$sql = "INSERT INTO loi_ich (name, mien_phi, cao_cap) VALUES ('$name', '$mien_phi', '$cao_cap')";
			$result = mysqli_query($conn_vn, $sql);
			if ($result) {
				echo '<script type="text/javascript">alert(\'Bạn đã thêm được một mục lợi ích.\');window.location.href="index.php?page=loi-ich"</script>';
			} else {
				echo '<script type="text/javascript">alert(\'Có lỗi xảy ra.\')</script>';
			}
			
		}
	}

	loi_ich();
?>

<form action="" method="post" enctype="multipart/form-data">
    <div class="rowNodeContentPage">
        <div class="leftNCP">
            <span class="titLeftNCP">Nội dung </span>
            <p class="subLeftNCP">Nhập thông tin lợi ích<br /><br /></p>     
            <p class="subLeftNCP"><a href="index.php?page=loi-ich">Quay lại</a><br /><br /></p>     
                    
        </div>
        <div class="boxNodeContentPage">
            <p class="titleRightNCP">Mục</p>
            <input type="text" class="txtNCP1" name="name" required/>
            <p class="titleRightNCP" style="float: none;">Miễn phí</p>
            <input type="checkbox" class="txtNCP1" name="mien_phi" />
            <p class="titleRightNCP" style="float: none;">Cao cấp</p>
            <input type="checkbox" class="txtNCP1" name="cao_cap" />
        </div>
    </div><!--end rowNodeContentPage-->
    
    <button class="btn btnSave" type="submit" name="add_trademark">Lưu</button>
</form>
            
<p class="footerWeb">Cảm ơn quý khách hàng đã tin dùng dịch vụ của chúng tôi<br />Sản phẩm thuộc Công ty TNHH Truyền Thông Và Công Nghệ Cafelink Việt Nam</p>