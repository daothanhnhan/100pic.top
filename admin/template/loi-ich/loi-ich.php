<?php
    $rows = $acc->getList("loi_ich","","","id","asc",$trang, 20, "loi-ich");//var_dump($rows);
?>	
<style>
    .boxPageNews a {
        float: none;
    }
</style>
    <div class="boxPageNews">
        <h1><a href="index.php?page=them-loi-ich">Thêm lợi ích</a></h1>
        <table class="table table-hover">
            <thead>
                <tr>
                    <th>STT</th>
                    <th>Mục</th>
                    <th>Miễn phí</th>
                    <th>Cao cấp</th>
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
                            <td><?= $row['mien_phi']?></td>
                            <td><?= $row['cao_cap']?></td>
                           <!--  <td>
                                <img src="/images/<?= $row['image'] ?>" width="100">
                            </td> -->
                            <td style="float: none;"><a href="index.php?page=xoa-loi-ich&id=<?= $row['id'] ?>" style="float: none;" onclick="return confirm('Bạn có chắc muốn xóa.')">Xóa</a> | <a href="index.php?page=sua-loi-ich&id=<?= $row['id'] ?>" style="float: none;">Sửa</a></td>
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