<?php
    $product_selling = new action_product();
    $product_hot = $product_selling->getListProductNew_hasLimit(5);
?>
<div class="uni-best-seller">
    <aside class="widget">
        <h3 class="widget-title">sản phẩm bán chạy</h3>
        <div class="widget-content">
            <div class="gb-newlist-details">
                <?php
                    foreach ($product_hot as $item) {
                        $rowLang = $product_selling->getProductLangDetail_byId($item['product_id'], $lang);
                        $row1 = $product_selling->getProductDetail_byId($item['product_id'], $lang);
                ?>  
                <div class="gb-newlist-details-newlist1 gb-book-details">
                    <div class="gb-best-seller-img">
                        <a href="/<?= $rowLang['friendly_url'] ?>">
                            <img src="/images/<?= $row1['product_img'] ?>" alt="review" class="img-responsive">
                        </a>
                    </div>
                    <div class="gb-best-seller-info">
                        <h4><a href="/<?= $rowLang['friendly_url'] ?>"><?= $rowLang['lang_product_name'] ?></a></h4>
                        <?php include DIR_PRODUCT."MS_PRODUCT_AROMACAR_0002.php";?>
                        <div class="clearfix"></div>
                    </div>
                </div>
                <?php
                    }
                ?>
            </div>
        </div>
    </aside>
</div>