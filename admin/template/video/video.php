<?php
    $rows = $acc->getList("video","","","id","asc",$trang, 20, "video");//var_dump($rows);
?>	
    <div class="boxPageNews">
        <h1><a href="index.php?page=them-video">Thêm video</a></h1>
		<h1 style="float: right;cursor: pointer;" onclick="del_all_video()">Xóa tất cả video</h1>
        <table class="table table-hover">
            <thead>
                <tr>
                    <th>STT</th>
                    <th>Tên</th>
                    <th>Video</th>
                    <th>Hoạt động</th>
                </tr>
            </thead>
            <tbody>
                <?php 
                    $d = 0;
                    foreach ($rows['data'] as $row) {
                        $d++;
                    ?>
                        <tr>
                            <td><?= $d ?></td>
                            <td><?= $row['name']?></td>
                            <td>
                                <video controls muted style="width: 200px;">
                                  <source src="/images/video/<?= $row['image'] ?>" type="video/mp4">
                                  <source src="movie.ogg" type="video/ogg">
                                  Your browser does not support the video tag.
                                </video>
                            </td>
                            <td style="float: none;"><a href="index.php?page=xoa-video&id=<?= $row['id'] ?>" style="float: none;" onclick="return confirm('Bạn có chắc muốn xóa.')">Xóa</a> | <a href="index.php?page=sua-video&id=<?= $row['id'] ?>" style="float: none;">Sửa</a></td>
                        </tr>
                    <?php
                    }
                ?>
            </tbody>
        </table>
    	
        <div class="paging">             
        	<?= $rows['paging'] ?>
		</div>
    </div>
    <p class="footerWeb">Cảm ơn quý khách hàng đã tin dùng dịch vụ của chúng tôi<br />Sản phẩm thuộc Công ty TNHH Truyền Thông Và Công Nghệ Cafelink Việt Nam</p>      
<script>
    function del_all_video () {
        var r = confirm("Bạn có chắc muốn xóa tất cả video.");
        if (r == true) {
              var xhttp = new XMLHttpRequest();
              xhttp.onreadystatechange = function() {
                if (this.readyState == 4 && this.status == 200) {
                 // document.getElementById("demo").innerHTML = this.responseText;
                    location.reload();
                }
              };
              xhttp.open("GET", "/functions/ajax1/del_all_video.php", true);
              xhttp.send();
        } else {
        
        }
    }
</script>