<?php 
    function uploadPicture($src, $img_name, $img_temp){

		$src = $src.$img_name;//echo $src;

		if (!@getimagesize($src)){

			if (move_uploaded_file($img_temp, $src)) {

				return true;

			}

		}

	}

	

	function video ($id) {
		global $conn_vn;
		if (isset($_POST['add_video'])) {
			$src= "../images/video/";
			// $src = "uploads/";

			$image = '';
			if(isset($_FILES['image']) && $_FILES['image']['name'] != ""){

				uploadPicture($src, $_FILES['image']['name'], $_FILES['image']['tmp_name']);
				$image = $_FILES['image']['name'];

			}

            $name = mysqli_real_escape_string($conn_vn, $_POST['name']);
            $link = mysqli_real_escape_string($conn_vn, $_POST['link']);
            $download = mysqli_real_escape_string($conn_vn, $_POST['download']);
            $link_video = mysqli_real_escape_string($conn_vn, $_POST['link_video']);
            $des = mysqli_real_escape_string($conn_vn, $_POST['des']);
            $content = mysqli_real_escape_string($conn_vn, $_POST['content']);
            $video_cat_id = mysqli_real_escape_string($conn_vn, $_POST['video_cat_id']);
            $video_tab_id = mysqli_real_escape_string($conn_vn, $_POST['video_tab_id']);
            $video_app_id = mysqli_real_escape_string($conn_vn, $_POST['video_app_id']);
            $range = mysqli_real_escape_string($conn_vn, $_POST['range']);
			$goi = mysqli_real_escape_string($conn_vn, $_POST['goi']);

            $add = '';
            if ($image != '') {
                $add = ", image = '$image'";
            }

			$sql = "UPDATE video SET name = '$name', link = '$link', download = '$download', des = '$des', content = '$content', video_cat_id = $video_cat_id, video_tab_id = $video_tab_id, video_app_id = $video_app_id, `range` = $range, link_video = '$link_video', goi = $goi $add WHERE id = $id";
			$result = mysqli_query($conn_vn, $sql);
			if ($result) {
				echo '<script type="text/javascript">alert(\'Bạn đã sửa được một video.\')</script>';
			} else {
				echo '<script type="text/javascript">alert(\'Có lỗi xảy ra.\')</script>';
                echo mysqli_error($conn_vn);
			}
			
		}
	}

	video($_GET['id']);

    $info = $action->getDetail('video', 'id', $_GET['id']);

	$danh_muc = $action->getList('video_cat', '', '', 'id', 'asc', '', '', '');
	$loai = $action->getList('video_tab', '', '', 'id', 'asc', '', '', '');
	$app = $action->getList('video_app', '', '', 'id', 'asc', '', '', '');

    $range = $action->getList('rang_video', '', '', 'id', 'asc', '', '', '');
?>

<form action="" method="post" enctype="multipart/form-data">
    <div class="rowNodeContentPage">
        <div class="leftNCP">
            <span class="titLeftNCP">Nội dung </span>
            <p class="subLeftNCP">Nhập thông tin video<br /><br /></p>     
            <p class="subLeftNCP"><a href="index.php?page=video">Quay lại</a><br /><br /></p>     
                    
        </div>
        <div class="boxNodeContentPage">
            <p class="titleRightNCP">Tên</p>
            <input type="text" class="txtNCP1" name="name" id="title" value="<?= $info['name'] ?>" onchange="ChangeToSlug()" required/>
            <p class="titleRightNCP">Link</p>
            <input type="text" class="txtNCP1" name="link" id="slug1" value="<?= $info['link'] ?>" required/>
            <input type="hidden" name="seo" id="title_seo">
            <p class="titleRightNCP">Link download</p>
            <input type="text" class="txtNCP1" name="download" value="<?= $info['download'] ?>" required/>
            <p class="titleRightNCP">Độ phân giải</p>
            <select name="range" class="txtNCP1">
                <option value="0">Chọn độ phân giải</option>
                <?php foreach ($range as $item) { ?>
                <option value="<?= $item['id'] ?>" <?= $item['id']==$info['range'] ? 'selected' : '' ?> ><?= $item['name'] ?></option>
                <?php } ?>
            </select>
            <p class="titleRightNCP">Gói</p>
            <select name="goi" class="txtNCP1">
                <option value="0">Gói miễn phí</option>
                <option value="1" <?= $info['goi']==1 ? 'selected' : '' ?> >Gói phổ thông</option>
                <option value="2" <?= $info['goi']==2 ? 'selected' : '' ?> >Gói nâng cao</option>
                
            </select>
            <p class="titleRightNCP">Danh mục</p>
            <select name="video_cat_id" class="txtNCP1">
            	<option value="0">Chọn danh mục</option>
            	<?php foreach ($danh_muc as $item) { ?>
            	<option value="<?= $item['id'] ?>" <?= $item['id']==$info['video_cat_id'] ? 'selected' : '' ?> ><?= $item['name'] ?></option>
            	<?php } ?>
            </select>
            <p class="titleRightNCP">Loại</p>
            <select name="video_tab_id" class="txtNCP1">
            	<option value="0">Chọn loại</option>
            	<?php foreach ($loai as $item) { ?>
            	<option value="<?= $item['id'] ?>" <?= $item['id']==$info['video_tab_id'] ? 'selected' : '' ?> ><?= $item['name'] ?></option>
            	<?php } ?>
            </select>
            <p class="titleRightNCP">App</p>
            <select name="video_app_id" class="txtNCP1">
            	<option value="0">Chọn app</option>
            	<?php foreach ($app as $item) { ?>
            	<option value="<?= $item['id'] ?>" <?= $item['id']==$info['video_app_id'] ? 'selected' : '' ?> ><?= $item['name'] ?></option>
            	<?php } ?>
            </select>
            <p class="titleRightNCP">Mô tả ngắn</p>
            <textarea name="des" class="longtxtNCP1 ckeditor" id="editor1"><?= $info['des'] ?></textarea>
            <p class="titleRightNCP">Nội dung</p>
            <textarea name="content" class="longtxtNCP1 ckeditor" id="editor2"><?= $info['content'] ?></textarea>
            <p class="titleRightNCP">Link video đại diện</p>
            <input type="text" class="txtNCP1" name="link_video" value="<?= $info['link_video'] ?>" />
            <p class="titleRightNCP">Video</p>
            <input type="file" class="txtNCP1" name="image" />
            <video controls muted style="width: 300px;">
              <source src="/images/video/<?= $info['image'] ?>" type="video/mp4">
              <source src="movie.ogg" type="video/ogg">
              Your browser does not support the video tag.
            </video>
        </div>
    </div><!--end rowNodeContentPage-->
    
    <button class="btn btnSave" type="submit" name="add_video">Lưu</button>
</form>
            
<p class="footerWeb">Cảm ơn quý khách hàng đã tin dùng dịch vụ của chúng tôi<br />Sản phẩm thuộc Công ty TNHH Truyền Thông Và Công Nghệ Cafelink Việt Nam</p>