<script src=""></script>

<!-- <script src="/js/jquery-tjgallery-1.min.js"></script> -->
<!-- <script src="https://www.jqueryscript.net/demo/Responsive-Justified-Gallery-jQuery-TJ-gallery/jquery-tjgallery.min.js"></script> -->
<?php 
    $action_product = new action_product();
    $product_list = $action_product->getProductList_byMultiLevel_orderProductId($procat_id, 'rand', 1, 10, '');
?>
<link rel="stylesheet" href="/plugin/owl-carouse/owl.carousel.min.css">
<link rel="stylesheet" href="/plugin/owl-carouse/owl.theme.default.min.css">
<style>
.owl-prev {
    position: absolute;
    top: 45%;
    left: 10px;
}

.owl-next {
    position: absolute;
    top: 45%;
    right: 10px;
}
.owl-stage-outer {
    height: 350px;
}
</style>
<div class="pictures-1 row">
    <h2 class="tag-h2"><?= $procat['productcat_name'] ?></h2>
    <div class="listHomeProductDetail001 owl-carousel owl-theme">
    <?php 
    foreach ($product_list['data'] as $item) { 
        if ($item['product_img'] == '') {
            $link_anh = $item['product_img_1'];
        } else {
            $link_anh = '/images/'.$item['product_img'];
        }
        ?>
    <a href="/<?= $item['friendly_url'] ?>" style="position: relative;">
    <div class="im " data-toggle="modal"
            data-target="#1popup-<?= $procat_id ?>-<?= $item['product_id'] ?>" onclick="img_sort(<?= $item['product_id'] ?>)">
        <img data-src="<?= $link_anh ?>" alt="Avatar" class="image "
            style="width:auto;height: 300px;">
        <div class="info-hover">
            
            <div class="tt-middle">
                <h3><?= $item['product_name'] ?></h3>
            </div>
        </div>
    </div>
    </a>
    <?php } ?>
    </div>
    
</div>
    <div style="text-align: center;width: 100%;">
        <div class="xem-them" style="width: 200px;">
            <a href="/<?= $procat['friendly_url'] ?>"> <p>+ See more</p></a>
        </div>
    </div>
<?php 
    foreach ($product_list['data'] as $item) { 
?>
<div class="modal fade" id="popup-<?= $procat_id ?>-<?= $item['product_id'] ?>" role="dialog">
    <div class="modal-dialog info_popup">
        <!-- Modal content-->
        <div class="modal-content">

            <div class="modal-body">
                <div class="gb-bonshe-products-item">

                    <?php include DIR_PRODUCT."MS_PRODUCT_AROMACAR_0011.php";?>

                    <?php //include DIR_PRODUCT."MS_PRODUCT_AROMACAR_0019.php";?>

                </div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
            </div>
        </div>

    </div>
</div>
<?php } ?>
<div class="modal fade" id="modal-3" role="dialog">
    <div class="modal-dialog1 info_popup">
        <!-- Modal content-->
        <div class="modal-content">

            <div class="modal-body">
                <div class="gb-bonshe-products-item">

                    <?php include DIR_PRODUCT."MS_PRODUCT_AROMACAR_0013.php";?>
                </div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
            </div>
        </div>

    </div>
</div>


<script src="/plugin/owl-carouse/owl.carousel.min.js"></script>
<!-- <script src="/plugin/waypoint/jquery.waypoints.min.js"></script> -->
<!-- <script src="/plugin/wow/wow.min.js"></script> -->
<script src="/plugin/animsition/css/animate.css"></script>
<!-- <script>
    new WOW().init();
</script> -->
<script>
    $(document).ready(function (){
        $('.listHomeProductDetail001').owlCarousel({
            loop:true,
            // lazyLoad:true,
            margin:0,
            navSpeed:500,
            dots: false,
            autoplay: true,
            autoWidth:true,
            rewind: true,
            navText:['<i class="fa fa-angle-left" aria-hidden="true"></i>','<i class="fa fa-angle-right" aria-hidden="true"></i>'],
            responsive:{
                0:{
                    items:2,
                    nav:true
                },
                767:{
                    items: 4,
                    nav:true
                }
            }
        });
    });
</script>