<?php 
    function uploadPicture($src, $img_name, $img_temp){

		$src = $src.$img_name;//echo $src;

		if (!@getimagesize($src)){

			if (move_uploaded_file($img_temp, $src)) {

				return true;

			}

		}

	}

	

	function loi_ich ($id) {
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

			$sql = "UPDATE loi_ich SET name = '$name', mien_phi = $mien_phi, cao_cap = $cao_cap WHERE id = $id";
			$result = mysqli_query($conn_vn, $sql);
			if ($result) {
				echo '<script type="text/javascript">alert(\'Bạn đã sửa được một mục lợi ích.\')</script>';
			} else {
				echo '<script type="text/javascript">alert(\'Có lỗi xảy ra.\')</script>';
			}
			
		}
	}

	loi_ich($_GET['id']);

	$info = $action->getDetail('loi_ich', 'id', $_GET['id']);
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
            <input type="text" class="txtNCP1" name="name" value="<?= $info['name'] ?>" required/>
            <p class="titleRightNCP" style="float: none;">Miễn phí</p>
            <input type="checkbox" class="txtNCP1" name="mien_phi" <?= $info['mien_phi']==1 ? 'checked' : '' ?> />
            <p class="titleRightNCP" style="float: none;">Cao cấp</p>
            <input type="checkbox" class="txtNCP1" name="cao_cap" <?= $info['cao_cap']==1 ? 'checked' : '' ?> />
        </div>
    </div><!--end rowNodeContentPage-->
    
    <button class="btn btnSave" type="submit" name="add_trademark">Lưu</button>
</form>
            
<p class="footerWeb">Cảm ơn quý khách hàng đã tin dùng dịch vụ của chúng tôi<br />Sản phẩm thuộc Công ty TNHH Truyền Thông Và Công Nghệ Cafelink Việt Nam</p>