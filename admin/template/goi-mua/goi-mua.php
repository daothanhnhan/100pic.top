<?php
    $rows = $acc->getList("book_package","","","id","desc",$trang, 20, "goi-mua");//var_dump($rows);
?>	
    <div class="boxPageNews">
        <!-- <h1><a href="index.php?page=them-thuong-hieu">Thêm</a></h1> -->
        <table class="table table-hover">
            <thead>
                <tr>
                    <th>STT</th>
                    <th>Mã</th>
                    <th>Name</th>
                    <th>Email</th>
                    <th>Address</th>
                    <!-- <th>Country</th>
                    <th>City</th> -->
                    <th>Package</th>
                    <th>Tháng</th>
                    <th>Kích hoạt</th>
                    <th>Hoạt động</th>
                </tr>
            </thead>
            <tbody>
                <?php 
                    $d = 0;
                    foreach ($rows['data'] as $row) {
                        $d++;
                        if ($row['thang'] == 1) {
                            $thang = '1 Tháng';
                        } elseif ($row['thang'] == 2) {
                            $thang = '3 Tháng';
                        } else {
                            $thang = '6 Tháng';
                        }

                        $package = '';
                        if ($row['package_id']==1) {
                            $package = 'Gói phổ thông';
                        }

                        if ($row['package_id']==2) {
                            $package = 'Gói nâng cao';
                        }
                        
                    ?>
                        <tr>
                            <td><?= $d ?></td>
                            <td>#<?= $row['user_id'] ?></td>
                            <td><?= $row['name']?></td>
                            <td><?= $row['email']?></td>
                            <td><?= $row['address']?></td>
                            
                            <td><?= $package ?></td>
                            <td><?= $thang ?></td>
                            <td><input type="checkbox" name="state" <?= $row['state']==1 ? 'checked' : '' ?> onclick="set_date(<?= $row['user_id'] ?>, <?= $row['package_id'] ?>, <?= $row['thang'] ?>, <?= $row['id'] ?>)" ></td>
                            
                            <!-- <td style="float: none;"><a href="index.php?page=xoa-thuong-hieu&id=<?= $row['id'] ?>" style="float: none;" onclick="return confirm('Bạn có chắc muốn xóa.')">Xóa</a> | <a href="index.php?page=sua-thuong-hieu&id=<?= $row['id'] ?>" style="float: none;">Sửa</a></td> -->
                            <td><a href="index.php?page=sua-ngay&user_id=<?= $row['user_id'] ?>">Sửa ngày</a></td>
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
    function set_date (user_id, package_id, thang, id) {
        // alert('a');
        var xhttp = new XMLHttpRequest();
          xhttp.onreadystatechange = function() {
            if (this.readyState == 4 && this.status == 200) {
             // document.getElementById("demo").innerHTML = this.responseText;
                alert(this.responseText);
            }
          };
          xhttp.open("GET", "/functions/ajax/admin_set_date.php?user_id="+user_id+"&package_id="+package_id+"&id="+id+"&thang="+thang, true);
          xhttp.send();
    }
</script>