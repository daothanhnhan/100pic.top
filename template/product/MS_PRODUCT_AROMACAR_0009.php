<div class="uni-shop-siderbar-right">
    <!-- .product item -->
    <div class="category-product uni-product-wapper">
        <div class="row">
            <?php 
            foreach ($rows['data'] as $row) {
                $action_product1 = new action_product(); 
                $rowLang1 = $action_product1->getProductLangDetail_byId($row['product_id'],$lang);
                $row1 = $action_product1->getProductDetail_byId($row['product_id'],$lang); 
            ?>
            <div class="col-md-4">
                <div class="product-item">
                    <!--BOX SALE-->
                    <?php include DIR_PRODUCT."MS_PRODUCT_AROMACAR_0003.php";?>
                    <div class="item-img">
                        <a href="/<?= $rowLang1[$nameColUrlProduct_productLanguage] ?>"><img src="/images/<?= $row1['product_img'] ?>" alt="" class="img-responsive"></a>
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
           
            <?php } ?>
        </div>
    </div>

    <!--PAGINATION-->
    <?php //include_once DIR_PAGINATION.'MS_PAGINATION_0001.php';?>
    <?php 
                    $config = array(
                        'current_page'  => $trang+1, // Trang hiện tại
                        'total_record'  => $rows['count'], // Tổng số record
                        'total_page'    => 1, // Tổng số trang
                        'limit'         => $limit,// limit
                        'start'         => 0, // start
                        'link_full'     => '',// Link full có dạng như sau: domain/com/page/{page}
                        'link_first'    => '',// Link trang đầu tiên
                        'range'         => 9, // Số button trang bạn muốn hiển thị 
                        'min'           => 0, // Tham số min
                        'max'           => 0,  // tham số max, min và max là 2 tham số private
                        'search'        => str_replace(' ', '-', $rows['q'])

                    );

                    $pagination = new Pagination;
                    $pagination->init($config);
                    echo $pagination->htmlPaging1();
                ?>

    <div class="clearfix"></div>
</div>
<script type="text/javascript">
    function load_url (id, name, price) {
        var xhttp = new XMLHttpRequest();
        xhttp.onreadystatechange = function() {
        if (this.readyState == 4 && this.status == 200) {
            if (confirm('Thêm sản phẩm thành công, bạn có muốn thanh toán luôn không?')) {
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