<?php
    if (isset($_GET['search']) && $_GET['search'] != '') {
        $rows = $action->getSearchAdmin('product',array('product_name','product_code'), $_GET['search'],$trang,20,$_GET['page']);
    }else{
        $rows = $action->getList('product','','','product_id','desc',$trang,20,'san-pham');
    }
?>	
<div class="boxPageNews">
	<div class="searchBox">
        <form action="">
            <input type="hidden" name="page" value="san-pham">
            <button type="submit" class="btnSearchBox" name="">Tìm kiếm</button>
            <input type="text" class="txtSearchBox" name="search" />                                  
        </form>
    </div>
    <table class="table table-condensed table-hover">
        <thead>
            <tr>
                <th>Tên</th>
                <th>Danh mục</th>
                <th>Giá</th>
                <th>Trạng thái</th>
                <th>Xóa</th>
            </tr>
        </thead>
        <tbody>
            <?php 
                foreach ($rows['data'] as $key => $row) {
                    $danh_muc = explode(",", $row['productcat_ar']);//var_dump($danh_muc);
                    $danh_muc = array_unique($danh_muc);
                ?>
                    <tr>
                        <td><a href="index.php?page=sua-san-pham&id=<?= $row['product_id']; ?>" title=""><?= $row['product_name']; ?></a></td>
                        <td>
                            <?php 
                                $action1 = new action_page('VN');
                                foreach ($danh_muc as $item) {
                                    echo $action1->getDetail('productcat','productcat_id',$item)['productcat_name'].'<br>';
                                }
                                
                            ?>
                        </td>
                        <td><?= number_format($row['product_price'],'0','','.')?> đ</td>
                        <td><?= $row['state'] == 1 ? 'Hiển thị' : 'Không'?></td>
                        <!-- <td><input type="checkbox" value="<?= $row['product_id'] ?>" class="del-pro" /></td> -->
                        <td><a style="cursor: pointer;" onclick="del_pro(<?= $row['product_id'] ?>)">Xóa</a></td>
                    </tr>
                <?php
                }
            ?>
        </tbody>
    </table>
    <div style="text-align: right;">
        <!-- <button type="button" class="btn btn-danger" onclick="delete_pro()">Xóa</button> -->
    </div>
	
    <div class="paging">             
    	<?= $rows['paging'] ?>
	</div>
</div>
<?php  ?>
<script>
    function delete_pro () {
        // alert('a');
        var x = document.getElementsByClassName('del-pro');
        var imp = '';
        // alert(x[0].checked);
        for (var i=0;i<x.length;i++) {
            if (x[i].checked == true) {
                // alert(x[i].value);
                imp += x[i].value + ',';
            }
        }
        if (imp != '') {
            imp = imp.substring(0, imp.length-1);
            var xhttp = new XMLHttpRequest();
              xhttp.onreadystatechange = function() {
                if (this.readyState == 4 && this.status == 200) {
                 // document.getElementById("demo").innerHTML = this.responseText;
                    // alert(this.responseText);
                    location.reload();
                }
              };
              xhttp.open("GET", "/functions/ajax/del_pro.php?id="+imp, true);
              xhttp.send();
        } else {
            alert('Bạn chưa tích chọn.');
        }
        // alert(imp);
    }

    function del_pro (id) {
        // alert(id)
        var r = confirm("Bạn có chắc muốn xóa.");
        if (r == true) {
            var xhttp = new XMLHttpRequest();
              xhttp.onreadystatechange = function() {
                if (this.readyState == 4 && this.status == 200) {
                 // document.getElementById("demo").innerHTML = this.responseText;
                    location.reload();
                }
              };
              xhttp.open("GET", "/functions/ajax/del_pro_1.php?id="+id, true);
              xhttp.send();
        }
    }
</script>