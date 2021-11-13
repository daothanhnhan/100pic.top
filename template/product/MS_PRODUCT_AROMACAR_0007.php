<?php 
    $action = new action();
    $action_product = new action_product();                                                                                
    if (isset($_GET['slug']) && $_GET['slug'] != '') {
        $slug = $_GET['slug'];

        $rowCatLang = $action_product->getProductCatLangDetail_byUrl($slug,$lang);
        $rowCat = $action_product->getProductCatDetail_byId($rowCatLang[$nameColIdProductCat_productCatLanguage],$lang);
        $rows = $action_product->getProductList_byMultiLevel_orderProductId($rowCat[$nameColId_productCat],'desc',$trang,9,$slug);
    }else{
        $rows = $action->getList($nameTable_product,'','',$nameColId_product,'desc',$trang,9,'san-pham');
        
    }
    $_SESSION['sidebar'] = 'productCat';

    $action_lang = new action_lang();
    $url_lang = $action_lang->get_url_lang_productcat($slug, $lang);
?>
<div class="gb-sanpham-home-right">
    <div class="row">
         <?php
            $d = 0;
            foreach ($rows['data'] as $row) {
                $d++;
                $action_product1 = new action_product(); 
                $rowLang1 = $action_product1->getProductLangDetail_byId($row['product_id'],$lang);
                $row1 = $action_product1->getProductDetail_byId($row['product_id'],$lang); 
            ?>
        <div class="col-md-4 col-sm-6">
            <div class="product-item">
                <?php include DIR_PRODUCT."MS_PRODUCT_AROMACAR_0003.php";?>
                <div class="item-img">
                    <a href="/<?= $rowLang1[$nameColUrlProduct_productLanguage] ?>">
                        <img src="/images/<?= $row1['product_img'] ?>" alt="" class="img-responsive">
                    </a>
                    <?php include DIR_CART."MS_CART_AROMACAR_0003.php";?>
                </div>
                <div class="item-text">
                    <h2>
                        <a href="/<?= $rowLang1[$nameColUrlProduct_productLanguage] ?>">
                            <?= $rowLang1[$nameColLangProductName_productLanguage] ?> 
                        </a>
                    </h2>
                    <!--GIÁ-->
                    <?php include DIR_PRODUCT."MS_PRODUCT_AROMACAR_0002.php";?>
                </div>
            </div>
        </div>
        <?php if($d%3==0){echo "<hr style='width:100%;border:1px solid #fff;'>";} ?>
        <?php } ?>
    </div>
</div>
<?php include DIR_PAGINATION."MS_PAGINATION_AROMACAR_0001.php";?>
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