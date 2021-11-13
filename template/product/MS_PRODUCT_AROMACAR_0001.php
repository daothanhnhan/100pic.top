<?php
    $product_type = new action_product();
    $product_new = $product_type->getListProductNew_hasLimit(8);
?>
<div class="gb-product-home">
    <div class="title">
        <h2>Sản phẩm mới nhất</h2>
        <div class="line"></div>
    </div>
    <div class="cd-items cd-container">
        <div class="row">
            <?php 
                foreach ($product_new as $item) {
                    $rowLang = $product_type->getProductLangDetail_byId($item['product_id'], $lang);
                    $row1 = $product_type->getProductDetail_byId($item['product_id'], $lang);
            ?>
            <div class="col-md-3 col-sm-6">
                <div class="product-item">
                    <?php include DIR_PRODUCT."MS_PRODUCT_AROMACAR_0003.php";?>
                    <div class="item-img">
                        <a href="/<?= $rowLang['friendly_url'] ?>"><img src="/images/<?= $row1['product_img'] ?>" alt="Item Preview"></a>
                        <?php include DIR_CART."MS_CART_AROMACAR_0003.php";?>
                    </div>
                    <div class="item-text">
                        <h2><a href="/<?= $rowLang['friendly_url'] ?>"><?= $rowLang['lang_product_name'] ?></a></h2>
                        <!--GIÁ-->
                        <?php include DIR_PRODUCT."MS_PRODUCT_AROMACAR_0002.php";?>
                    </div>
                </div>
            </div>
            <?php } ?>
        </div>
    </div>

    <!--BUTTON XEM TẤT CẢ-->
    <div class="gb-btn-xemtatca">
        <a href="/san-pham">Xem tất cả</a>
    </div>

    <div class="clerarfix"></div>
</div>
<script type="text/javascript">
    function load_url (id, name, price) {
        var xhttp = new XMLHttpRequest();
        xhttp.onreadystatechange = function() {
        if (this.readyState == 4 && this.status == 200) {
            if (confirm('Thêm sản phẩm thành công, bạn có muốn thanh toán luôn không')) {
                window.location = '/gio-hang';
            }else{
                location.reload();
            }  
        }
        };
        xhttp.open("POST", "/functions/ajax-add-cart.php", true);
        xhttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
        xhttp.send("product_id="+id+"&product_name="+name+"&product_price="+price+"&product_quantity=1&action=add");
        xhttp.send();        
    }
</script>