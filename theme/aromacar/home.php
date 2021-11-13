

<!--CONTENT-->
<?php include DIR_HEADER."MS_HEADER_AROMACAR_0002_2.php"; ?>

<?php include DIR_SLIDESHOW."MS_SLIDESHOW_AROMACAR_0002.php";?>
<?php 
    $arr_home = array(274, 283, 281, 277, 267, 282);
    foreach ($arr_home as $procat_id) { 
        $procat = $action->getDetail('productcat', 'productcat_id', $procat_id);
?>
<?php include DIR_PRODUCT."MS_PRODUCT_AROMACAR_0010_4_2.php";?>
<?php } ?>
<?php if (false) { ?>
<script>
    // waiting for loading page
    $(window).on('load', function () {
        $('.pictures').tjGallery();
        //setTimeout(function(){
        //    $('.pictures').tjGallery();
        //}, 1000);
    })
    //setTimeout(function(){
    //    $('.pictures').tjGallery();
    //}, 3000);
    // setTimeout(function(){
    //     $('.pictures').tjGallery();
    // }, 4000);

    // call desrtoy
    $('#destroy').click(function () {
        $('.pictures').tjGallery('clear');
        $('#build').show();
    });

    // reinit after destroy
    $('#build').click(function () {
        $('.pictures').tjGallery();
    })

    $(window).on('load', function () {
        setTimeout(function(){
            $("body > img:nth-last-child(2)").css("display", "none");
            $("body > img:last-child").css("display", "none");
        }, 300);
    })
</script>
<?php } ?>
<!-- <div class="container">
<a href="https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.sapo.vn%2Fblog%2Flam-cach-nao-de-banner-quang-cao-du-khach-hang-hieu-qua-hon%2F&psig=AOvVaw11GgfjObFH6xOY5rdE3xFl&ust=1583199261966000&source=images&cd=vfe&ved=0CA0QjhxqFwoTCOC_kv_S-ucCFQAAAAAdAAAAABAI">
<img class="imgquangcao"src="https://www.sapo.vn/blog/wp-content/uploads/2014/10/banner-quang-cao-du-khach-hang-hieu-qua-3.jpg">
</a> -->
</div>
<!-- poster, cover facebook -->
<?php //include DIR_PRODUCT."MS_PRODUCT_AROMACAR_0010_3.php";?>
<?php //include DIR_PRODUCT."MS_PRODUCT_AROMACAR_0010_1.php";?>

<div class="Content-Main">



    <!--SECTION 1-->

    <!-- <div class="gb-section-1-slidebar">

        <?php //include DIR_SLIDESHOW."MS_SLIDESHOW_AROMACAR_0001.php";?>

    </div> -->



    <!--MUA 1 THAFNG 1, HOÀN TIỀN, TƯ VẤN-->

    <div class="container">


    </div>



    <!--Sản phẩm mới nhất-->

    <div class="container">

        <?php //include DIR_PRODUCT."MS_PRODUCT_AROMACAR_0001.php";?>

    </div>



    <!--BANNER QUẢNG CÁO-->

    <div class="container">

        <?php// include DIR_BANNER."MS_BANNER_AROMACAR_0001.php";?>

    </div>



    <!--SẢN PHẨM TAB-->

    <div class="container">

        <?php //include DIR_PRODUCT."MS_PRODUCT_AROMACAR_0008.php";?>

    </div>



    <!--BANNER-->

    <?php //include DIR_BANNER."MS_BANNER_AROMACAR_0004.php";?>



    <!--BÀI VIẾT MỚI NHẤT-->

    <div class="container">

        <?php// include DIR_NEWS."MS_NEWS_AROMACAR_0003.php";?>

    </div>



</div>