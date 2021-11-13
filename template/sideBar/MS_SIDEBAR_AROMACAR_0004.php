<link rel="stylesheet" href="./plugin/owl-carouse/owl.carousel.min.css">
<link rel="stylesheet" href="./plugin/owl-carouse/owl.theme.default.min.css">
<?php
    $product_sidebar = new action_product();
    $product_promotions = $product_sidebar->getListProductSaleOff_hasLimit(4);
?>
<div class="gb-sanpham-khuyenmai">
    <aside class="widget">
        <h3 class="widget-title">sản phẩm khuyến mại</h3>
        <div class="widget-content">
            <div class="list_product_slide list_product owl-carousel owl-theme">
                <?php 
                    foreach ($product_promotions as $item) {
                        $rowLang = $product_sidebar->getProductLangDetail_byId($item['product_id'], $lang);
                        $row1 = $product_sidebar->getProductDetail_byId($item['product_id'], $lang);
                ?>
                <div class="item">
                    <div class="product-item">
                        <?php include DIR_PRODUCT."MS_PRODUCT_AROMACAR_0003.php";?>
                        <div class="item-img">
                            <a href="/<?= $rowLang['friendly_url'] ?>">
                                <img src="/images/<?= $row1['product_img'] ?>" alt="" class="img-responsive">
                            </a>
                        </div>
                        <div class="item-text">
                            <h3>
                                <a href="/<?= $rowLang['friendly_url'] ?>"><?= $rowLang['lang_product_name'] ?></a>
                            </h3>
                            <!--GIÁ-->
                            <?php include DIR_PRODUCT."MS_PRODUCT_AROMACAR_0002.php";?>
                            <!--GIỎ HÀNG-->
                            <?php include DIR_CART."MS_CART_AROMACAR_0003.php";?>
                        </div>
                    </div>
                </div>
                <?php } ?>
            </div>
        </div>
    </aside>
</div>

<script src="./plugin/owl-carouse/owl.carousel.min.js"></script>
<script>
    $(document).ready(function () {
        $('.list_product_slide').owlCarousel({
            loop:true,
            responsiveClass:true,
            nav:false,
            navText:[],
            dots:true,
            responsive:{
                0:{
                    items:1
                }
            }
        });
    });
</script>