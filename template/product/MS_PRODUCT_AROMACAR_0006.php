<!--SẢN PHẨM LIÊN QUAN-->
<?php 
    $product_related1 = $action_product->getListProductRelate_byIdCat_hasLimit($row['productcat_id'], 3);//var_dump($product_related1);die;
?>
<div class="gb-sanphamlienquan">
    <div class="title">
        <h3>SẢN PHẨM LIÊN QUAN</h3>
    </div>
    <div class="row">
         <?php 
            foreach ($product_related1 as $row) { 
                $action_product1 = new action_product(); 
                $rowLang1 = $action_product1->getProductLangDetail_byId($row['product_id'],$lang);
                $row1 = $action_product1->getProductDetail_byId($row['product_id'],$lang); 
        ?>
        <div class="col-md-4">
            <div class="product-item">
                <?php include DIR_PRODUCT."MS_PRODUCT_AROMACAR_0003.php";?>
                <div class="item-img">
                    <a href="/<?= $rowLang1['friendly_url'] ?>"><img src="/images/<?= $row1['product_img'] ?>" alt="" class="img-responsive"></a>
                </div>
                <div class="item-text">
                    <h3><a href="/<?= $rowLang1['friendly_url'] ?>"><?= $rowLang1['lang_product_name'] ?></a></h3>
                    <!--GIÁ-->
                    <?php include DIR_PRODUCT."MS_PRODUCT_AROMACAR_0002.php";?>
                    <div class="gb-product-des">
                        <?= $rowLang1['lang_product_des'] ?>
                    </div>
                    <!--GIỎ HÀNG-->
                    <?php include DIR_CART."MS_CART_AROMACAR_0003.php";?>
                </div>
            </div>
        </div>
        <?php } ?>
    </div>
</div>