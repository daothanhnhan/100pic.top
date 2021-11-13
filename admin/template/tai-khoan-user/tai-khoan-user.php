<?php
    if (isset($_GET['search']) && $_GET['search'] != '') {
        $rows = $action->getSearchAdmin('user',array('user_name','user_phone','user_email'), $_GET['search'],$trang,10,$_GET['page']);
    }else{
       
        $rows = $acc->getList("user","","","user_id","desc",$trang, 10, "tai-khoan-user");
    }
    


?>	
    <div class="boxPageNews">
    	<div class="searchBox">
            <form action="">
                <input type="hidden" name="page" value="tai-khoan-user">
            	<button type="submit" class="btnSearchBox" name="">Tìm kiếm</button>
                <input type="text" class="txtSearchBox" name="search" />                	                
            </form>
        </div>
        
        <table class="table table-hover">
            <thead>
                <tr>
                    <th>Mã</th>
                    <th>Tên tài khoản</th>
                    <th>Email</th>
                    <th>Ngày hết hạn</th>
                    <th>Mã ctv</th>
                    <th>Tài khoản</th>
                    <th>Hoạt động</th>
                    
                </tr>
            </thead>
            <tbody>
                <?php 
                    foreach ($rows['data'] as $row) {
                    ?>
                        <tr>
                            <td>#<?= $row['user_id']?></td>
                            <td><a href="javascrip:void(0)" title=""><?= $row['user_name']; ?></a></td>
                            <td><?= $row['user_email']?></td>
                            <td>
                               <!--  <?php 
                                    $acc = new action_account("VN");
                                    $rowRole = $acc->getDetail("admin_role","admin_role_id",$row['admin_role']);
                                    echo $rowRole['admin_role_name'];
                                ?> -->
                                <?= date('d-m-Y H:i:s', strtotime($row['time'])); ?>
                            </td>
                            <td><?= $row['code']?></td>
                            <td><?= str_replace("\r\n", "<br>", $row['tai_khoan'])?></td>
                            <!-- <td><?= $row['admin_state'] == 1 ? 'Hoạt động' : 'Khóa'?></td> -->
                            <td style="float: none;"><a href="index.php?page=xoa-user&id=<?= $row['user_id'] ?>" style="float: none;" onclick="return confirm('Bạn có chắc muốn xóa.')">Xóa</a> | <a href="index.php?page=sua-user&id=<?= $row['user_id'] ?>" style="float: none;">Đổi pass</a> | <a href="index.php?page=xoa-user-price&id=<?= $row['user_id'] ?>" style="float: none;" onclick="return confirm('Bạn có chắc muốn reset lợi nhuận về 0.')">Xóa lợi nhuận</a></td>
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
    <p class="footerWeb">Cảm ơn quý khách hàng đã tin dùng dịch vụ của chúng tôi<br />Sản phẩm thuộc Công ty TNHH Truyền Thông Và Công Nghệ GoldBridge Việt Nam</p>             