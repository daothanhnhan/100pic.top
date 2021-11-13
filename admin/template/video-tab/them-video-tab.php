<?php 
    function uploadPicture($src, $img_name, $img_temp){

		$src = $src.$img_name;//echo $src;

		if (!@getimagesize($src)){

			if (move_uploaded_file($img_temp, $src)) {

				return true;

			}

		}

	}

	

	function video_tab () {
		global $conn_vn;
		if (isset($_POST['add_video_cat'])) {
			$src= "../images/";
			// $src = "uploads/";

			$image = '';
			if(isset($_FILES['image']) && $_FILES['image']['name'] != ""){

				uploadPicture($src, $_FILES['image']['name'], $_FILES['image']['tmp_name']);
				$image = $_FILES['image']['name'];

			}

			$name = mysqli_real_escape_string($conn_vn, $_POST['name']);
			$link = mysqli_real_escape_string($conn_vn, $_POST['link']);

			$sql = "INSERT INTO video_tab (name, link) VALUES ('$name', '$link')";
			$result = mysqli_query($conn_vn, $sql);
			if ($result) {
				echo '<script type="text/javascript">alert(\'Bạn đã thêm được một loại video.\');window.location.href="index.php?page=video-tab"</script>';
			} else {
				echo '<script type="text/javascript">alert(\'Có lỗi xảy ra.\')</script>';
			}
			
		}
	}

	video_tab();
?>

<form action="" method="post" enctype="multipart/form-data">
    <div class="rowNodeContentPage">
        <div class="leftNCP">
            <span class="titLeftNCP">Nội dung </span>
            <p class="subLeftNCP">Nhập thông tin loại video<br /><br /></p>     
            <p class="subLeftNCP"><a href="index.php?page=video-tab">Quay lại</a><br /><br /></p>     
                    
        </div>
        <div class="boxNodeContentPage">
            <p class="titleRightNCP">Tên</p>
            <input type="text" class="txtNCP1" name="name" id="title" onchange="ChangeToSlug()" required/>
            <p class="titleRightNCP">Link</p>
            <input type="text" class="txtNCP1" name="link" id="slug1" required/>
            <input type="hidden" name="seo" id="title_seo">
            
        </div>
    </div><!--end rowNodeContentPage-->
    
    <button class="btn btnSave" type="submit" name="add_video_cat">Lưu</button>
</form>
            
<p class="footerWeb">Cảm ơn quý khách hàng đã tin dùng dịch vụ của chúng tôi<br />Sản phẩm thuộc Công ty TNHH Truyền Thông Và Công Nghệ Cafelink Việt Nam</p>