<?php
    $product_type = new action_product();
    // $product_hot = $product_type->getListProductHot_hasLimit(8);
    $product_new = $product_type->getProductList_byMultiLevel_orderProductId(237, 'desc', 1, 8, '');//var_dump($product_new['data']);die;
?>
<link rel="stylesheet" href="./plugin/owl-carouse/owl.carousel.min.css">
<link rel="stylesheet" href="./plugin/owl-carouse/owl.theme.default.min.css">
<div class="gb-product-home">
    <div class="title">
        <h2>Sản phẩm bán chạy nhất</h2>
        <div class="line"></div>
    </div>
    <div class="cd-items cd-container">
        <div class="gb-product-show">
            <div class="gb-product-four-item owl-carousel owl-theme">
                <?php 
                    foreach ($product_new['data'] as $item) {
                        $rowLang = $product_type->getProductLangDetail_byId($item['product_id'], $lang);
                        $row1 = $product_type->getProductDetail_byId($item['product_id'], $lang);
                ?>
                <div class="item">
                    <div class="product-item">
                        <?php include DIR_PRODUCT."MS_PRODUCT_AROMACAR_0003.php";?>
                        <div class="item-img">
                            <a href="/<?= $rowLang['friendly_url'] ?>"><img src="images/<?= $row1['product_img'] ?>" alt="Item Preview"></a>
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
    </div>
    <div class="clerarfix"></div>
</div>
<script src="/plugin/quickview/js/main.js"></script>
<script src="./plugin/owl-carouse/owl.carousel.min.js"></script>
<script>
    $(document).ready(function () {
        $('.gb-product-four-item').owlCarousel({
            autoplay:true,
            loop:true,
            responsiveClass:true,
            nav:true,
            navText:[],
            dots:false,
            margin:30,
            responsive:{
                0:{
                    items:1
                },
                768:{
                    items:4
                }
            }
        });
    });
</script>