<?php 
    $action_product = new action_product(); 
    $slug = isset($_GET['slug']) ? $_GET['slug'] : '';

    $rowLang = $action_product->getProductLangDetail_byUrl($slug,$lang);
    $row1 = $action_product->getProductDetail_byId($rowLang[$nameColIdProduct_productLanguage],$lang);
    $_SESSION['productcat_id_relate'] = $row1[$nameColIdProductCat_product];
    $_SESSION['sidebar'] = 'productDetail';
    $arr_id = $row1['productcat_ar'];
    $arr_id = explode(',', $arr_id);
    $productcat_id = (int)$arr_id[0];
    $product_breadcrumb = $action_product->getProductCatLangDetail_byId($productcat_id, $lang);
    $breadcrumb_url = $product_breadcrumb['friendly_url'];
    $breadcrumb_name = $product_breadcrumb['lang_productcat_name'];
    $use_breadcrumb = true;

    $img_sub = json_decode($row1['product_sub_img']);
    //print_r($img_sub);die;
?>
<?php 
    $action_lang = new action_lang();
    $url_lang = $action_lang->get_url_lang_productDetail($slug, $lang);
?>
<script type="text/javascript">
   $(document).ready(function(data){  
      $('.btn_addCart').click(function(){  
         // var product_id = $(this).attr("id");
           var product_id = $('#product_id').val();
           var product_name = $('#product_name').val();  
           var product_price = $('#product_price').val();  
           var product_quantity = $('.number_cart').val();  
           var action = "add";
           // var a = {a : 'a'};
           if(product_quantity > 0)  
           {                  
                 $.ajax({  
                     url:"/functions/ajax.php?action=add_cart",  
                     method:"POST",  
                     dataType:"json",  
                     data:{  
                          product_id:product_id,   
                          product_name:product_name,   
                          product_price:product_price,   
                          product_quantity:product_quantity,   
                          action:action  
                     },  
                     success:function(data)  
                     {  
                          // $('#order_table').html(data.order_table);  
                          // $('.badge').text(data.cart_item);  
                          if (confirm('Thêm sản phẩm thành công, bạn có muốn thanh toán luôn không?')) {
                              window.location = '/gio-hang';
                          }else{
                              location.reload();
                          }  
                     },
                     error: function () {
                        alert('loi');
                     }  
                });  

           }  
           else  
           {  
                alert("Mời bạn nhập số lượng sản phẩm!")  
           }  
      });
   });
 </script>  
<link rel="stylesheet" href="./plugin/slickNav/slicknav.css"/>
<link rel="stylesheet" href="./plugin/slick/slick.css"/>
<link rel="stylesheet" href="./plugin/slick/slick-theme.css"/>

<div class="gb-chitiet_sanpham">

    <div class="gb-chitiet_sanpham-body">
        <div class="container">
            <?php include DIR_BREADCRUMS."MS_BREADCRUMS_AROMACAR_0001.php";?>
            <div class="row">
                <div class="col-md-9">
                    <div class="gb-chitiet_sanpham-left">

                        <!--chi titest sản phẩm-->
                        <div class="row">
                            <div class="col-md-6">
                                <div class="gb-chitiet_sanpham_left-img">
                                    <div class="uni-single-car-gallery-images">
                                        <div class="slider slider-for">
                                            <?php 
                                                $d = 0;
                                                foreach ($img_sub as $item) {
                                                $d++;
                                                $image = json_decode($item, true);
                                            ?>
                                            <div class="slide-item"><img src="/images/<?= $image['image'] ?>" alt="" class="img-responsive img1" data-zoom-image="/images/<?= $image['image'] ?>"></div>
                                            <?php }?>
                                        </div>
                                        <div class="slider slider-nav">
                                            <?php 
                                                $d = 0;
                                                foreach ($img_sub as $item) {
                                                $d++;
                                                $image = json_decode($item, true);
                                            ?>
                                            <div class="slide-item-nav"><img src="/images/<?= $image['image'] ?>" alt="" class="img-responsive" data-zoom-image="/images/<?= $image['image'] ?>"></div>
                                            <?php } ?>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="gb-chitiet_sanpham_left-info">
                                    <h1 class="product_title entry-title"><?= $rowLang[$nameColLangProductName_productLanguage] ?></h1>
                                    <!-- .description -->
                                    <div class="description">
                                       <?= $rowLang['lang_product_des'] ?>
                                    </div>

                                    <!--GIÁ-->
                                    <?php include DIR_PRODUCT."MS_PRODUCT_AROMACAR_0002.php";?>
                                    <!--SỐ LƯỢNG VÀ ADD TO CART-->
                                    <?php include DIR_CART."MS_CART_AROMACAR_0008.php";?>

                                    <!--Thông tin liên hệ-->
                                    <?php include DIR_CONTACT."MS_CONTACT_AROMACAR_0003.php"; ?>
                                </div>
                            </div>
                        </div>

                        <!--THÔNG SỐ VÀ MÔ TẢ-->
                        <div class="gb-thongso-mota">
                            <div class="uni-shortcode-tabs-default">
                                <div class="uni-shortcode-tab-3">
                                    <div class="tabbable-panel">
                                        <div class="tabbable-line">
                                            <ul class="nav nav-tabs ">
                                                <li  class="active">
                                                    <a href="#tab_default_32" data-toggle="tab">
                                                        Mô tả sản phẩm</a>
                                                </li>
                                                <li>
                                                    <a href="#tab_default_33" data-toggle="tab">
                                                        Bình luận</a>
                                                </li>
                                            </ul>
                                            <div class="tab-content">
                                                <div class="tab-pane active" id="tab_default_32">
                                                    <?= $rowLang['lang_product_content'] ?>
                                                </div>
                                                <div class="tab-pane" id="tab_default_33">
                                                    <div id="fb-root"></div>
                                                    <script>(function(d, s, id) {
                                                      var js, fjs = d.getElementsByTagName(s)[0];
                                                      if (d.getElementById(id)) return;
                                                      js = d.createElement(s); js.id = id;
                                                      js.src = 'https://connect.facebook.net/en_US/sdk.js#xfbml=1&version=v2.12&appId=176177179839531&autoLogAppEvents=1';
                                                      fjs.parentNode.insertBefore(js, fjs);
                                                    }(document, 'script', 'facebook-jssdk'));</script>
                                                    <div class="fb-comments" data-href="http://aromacar.thietkewebsitegbvn.com" data-width="845px" data-numposts="5"></div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <?php include DIR_PRODUCT."MS_PRODUCT_AROMACAR_0006.php";?>

                    </div>
                </div>
                <div class="col-md-3">
                    <div class="gb-chitiet_sanpham-right">
                        <?php include DIR_SIDEBAR."MS_SIDEBAR_AROMACAR_0004.php";?>
                        <?php include DIR_SIDEBAR."MS_SIDEBAR_AROMACAR_0003.php";?>
                        <?php include DIR_BANNER."MS_BANNER_AROMACAR_0002.php"; ?>
                        <?php include DIR_BANNER."MS_BANNER_AROMACAR_0003.php"; ?>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<script src="./plugin/slick/scripts.js"></script>
<script src="./plugin/slick/slick.js"></script>
<script src="./plugin/slickNav/jquery.slicknav.js"></script>

<div id="fb-root"></div>
<script>(function(d, s, id) {
        var js, fjs = d.getElementsByTagName(s)[0];
        if (d.getElementById(id)) return;
        js = d.createElement(s); js.id = id;
        js.src = "https://connect.facebook.net/en_US/sdk.js#xfbml=1&version=v2.6";
        fjs.parentNode.insertBefore(js, fjs);
    }(document, 'script', 'facebook-jssdk'));</script>

<script type="text/javascript">
    $(document).ready(function() {
        $('.slider-for').slick({
            slidesToShow: 1,
            slidesToScroll: 1,
            speed: 500,
            arrows: false,
            fade: true,
            asNavFor: '.slider-nav'
        });
        $('.slider-nav').slick({
            slidesToShow: 4,
            slidesToScroll: 1,
            speed: 500,
            asNavFor: '.slider-for',
            dots: false,
            focusOnSelect: true,
            slide: 'div'
        });
    });
</script>