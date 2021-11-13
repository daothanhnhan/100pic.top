<?php
    $rows = $acc->getList("video_cat","","","id","asc",$trang, 20, "video-cat");//var_dump($rows);
?>	
    <div class="boxPageNews">
        <h1><a href="index.php?page=them-video-cat">Thêm danh mục video</a></h1>
        <table class="table table-hover">
            <thead>
                <tr>
                    <th>STT</th>
                    <th>Tên</th>
                    <th>Giá</th>
                    <th>Hoạt động</th>
					<th>Mã</th>
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
                            <td><?= number_format($row['price']) ?></td>
                            
                            <td style="float: none;"><a href="index.php?page=xoa-video-cat&id=<?= $row['id'] ?>" style="float: none;" onclick="return confirm('Bạn có chắc muốn xóa.')">Xóa</a> | <a href="index.php?page=sua-video-cat&id=<?= $row['id'] ?>" style="float: none;">Sửa</a></td>
							<td><?= $row['id']?></td>
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