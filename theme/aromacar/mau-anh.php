<?php 
    // $video = $action->getDetail('video', 'link', $_GET['page']);
    // $list_video_cat = $action->getList('video', 'video_cat_id', $video['video_cat_id'], 'id', 'desc', '', '4', '');
    // $list_video_tab = $action->getList('video', 'video_tab_id', $video['video_tab_id'], 'id', 'desc', '', '4', '');

    // $video_cat_item = $action->getDetail('video_cat', 'id', $video['video_cat_id']);
    // $video_tab_item = $action->getDetail('video_tab', 'id', $video['video_tab_id']);
    if (isset($_GET['trang'])) {
        if (isset($_COOKIE['ma_ctv'])) {
            // $_COOKIE['ma_ctv'] = $_GET['trang'];
            setcookie('ma_ctv', $_GET['trang'], time() + (86400 * 30 * 12), "/");
        } else {
            setcookie('ma_ctv', $_GET['trang'], time() + (86400 * 30 * 12), "/");
        }
    }
    // var_dump($_COOKIE['ma_ctv']);
    //////////////////////////

    $url = $_GET['page'];
    $action = new action();
    $item = $action->getDetail('product', 'friendly_url', $url);
    $id = $item['product_id'];

    $now = date("Y-m-d");
    $date = $now;
    if (isset($_SESSION['user_id_gbvn'])) {
        $date = $user_info['time'];
    }
    //////////////////////////////
    function views ($id) {
        global $conn_vn;
        $sql = "SELECT * FROM video WHERE id = $id";
        $result = mysqli_query($conn_vn, $sql);
        $row = mysqli_fetch_assoc($result);

        $views = $row['views'];
        $views++;
        // echo $views;

        $sql = "UPDATE video SET views = $views WHERE id = $id";
        $result = mysqli_query($conn_vn, $sql);
    }
    // views($video['id']);

    // $link_video_page = "/images/video/".$video['image'];
    // if (!empty($video['link_video'])) {
    //     $link_video_page = $video['link_video'];
    // }

    if ($item['product_img'] == '') {
            $link_anh = $item['product_img_1'];
        } else {
            $link_anh = '/images/'.$item['product_img'];
        }
    // echo $link_anh;
    // $procat_arr = explode(",", $item['productcat_ar']);
    if (isset($_SESSION['user_id_gbvn'])) {

        $user_info = $action->getDetail('user', 'user_id', $_SESSION['user_id_gbvn']);

        // echo $user_info['time'];

        $max = 0;

        $max = $action->getDetail('package', 'id', $user_info['goi'])['num'];

        if ($user_info['goi'] == 0) {
            $max = 5;
        }

        $num = $user_info['num'];
        // echo $num;
        // var_dump($max);
        // var_dump($user_info);

    }
?>
<?php 
    $procat_arr = explode(",", $item['productcat_ar']);
    $action_product = new action_product();
    $product_list_popup = $action_product->getProductList_byMultiLevel_orderProductId($procat_arr[0], 'rand', 1, 10, '');//var_dump($product_list_popup);
    $productcat = $action->getDetail('productcat', 'productcat_id', $procat_arr[0]);
?>
<link rel="stylesheet" href="/plugin/owl-carouse/owl.carousel.min.css">
<link rel="stylesheet" href="/plugin/owl-carouse/owl.theme.default.min.css">
<style>
.owl-prev {
    position: absolute;
    top: 35%;
    left: 10px;
}

.owl-next {
    position: absolute;
    top: 35%;
    right: 10px;
}
.owl-next i, .owl-prev i {
    margin-top: 0 !important;
}
.owl-stage-outer {
    height: 230px;
}
</style>
<link rel="stylesheet" type="text/css" href="/css/video.css">
<div class="container video-page-item">
    <div class="row">
        <div class="col-md-8">
            <img src="<?= $link_anh ?>" alt="" width="100%">
        </div>
        <div class="col-md-4">
            <h1><?= $item['product_name'] ?></h1>
            <p style="margin-top: 10px;">Image / <a href="/<?= $productcat['friendly_url'] ?>"><?= $productcat['productcat_name'] ?></a></p>
            <div class="des" style="display: none;">
                <?= $item['product_des'] ?>
            </div>
            <div class="download">
                <?php if ($item['product_new'] == 1) { ?>
                <p style="font-weight: bold;text-transform: uppercase;text-align: center;margin-bottom: 5px;">Tải miễn phí</p>
                <?php } else { ?>
                <p style="font-weight: bold;text-transform: uppercase;text-align: center;margin-bottom: 5px;">Dành cho đăng ký theo tháng</p>
                <?php } ?>



                <?php 

                    if (isset($_SESSION['user_id_gbvn'])) { 

                        $now = date('Y-m-d');

                        $date = $user_info['time'];

                        if ($date > $now || $item['product_new'] == 1) { 

                            if ($num < $max) { 

                    ?>

                    <?php if (empty($item['product_des2'])) { ?>

                    <a href="/images/<?= $item['product_img'] ?>" onclick="numf()" download>

                    <?php } else { ?>

                    <a href="<?= $item['product_des2'] ?>" onclick="numf()" download>

                    <?php } ?>
                        <button>Download</button></a>
                            <?php } else { ?>
                                <button onclick="alert('Bạn đã download đủ số lượng trong ngày.')">Download</button>
                            <?php } ?>

                        <?php } else { ?>
                            <button onclick="alert('Bạn phải mua gói để download.');thanh_toan();">Download</button>
                        <?php } ?>

                    <?php } else { ?>
                        <button data-toggle="modal" data-target="#modal-6">Download</button>
                    <?php } ?>
                
            </div>
            <div class="download" style="padding-top: 30px;">
                <p style="font-weight: bold;text-transform: uppercase;text-align: center;margin-bottom: 5px;">Tải về không cần đăng ký</p>
                <button style="background: #38c14f;" onclick="ngan_luong(<?= $id ?>)">Tải Nhanh</button>
            </div>
            <div class="download" style="padding-top: 30px;">
                <button style="background: #3875c1;" onclick="yeu_cau('<?= $rowConfig['content_home10'] ?>')">Yêu Cầu Thiết Kế Riêng</button>
            </div>
            <div style="display: none;">
                <button id="popup-thanh-toan" onclick="thanh_toan()">thanh toan</button>
            </div>
        </div>
    </div>
    <div class="row">
        <div class="col-md-12">
            <div class="video-content">
                <?php
                $content = $item['product_content'];
                $http = strpos($content, 'https://drive');
                $arr_content = explode("/", $content);
                ?>
                <?php if ($http!==false) { ?>
                    <iframe src="https://docs.google.com/viewer?srcid=<?= $arr_content[5] ?>&pid=explorer&efh=false&a=v&chrome=false&embedded=true" width="100%" height="480px"></iframe>
                <?php } else { ?>
                    <?=  $content ?>
                <?php } ?>
            </div>
        </div>
        
    </div>

    <div class="row">
        <div class="col-md-12 page-video">
            <h2 onclick="next_cat1(<?= $video['video_cat_id'] ?>)" style="cursor: pointer;"><a href="/<?= $productcat['friendly_url'] ?>" style="color:#000;">Cùng Danh Mục</a></h2>
            <div class="listHomeProductDetail001 owl-carousel owl-theme">
                <?php 
                foreach ($product_list_popup['data'] as $item) { 
                    // $tab = $action->getDetail('video_tab', 'id', $item['video_tab_id']);
                    // $link_video = "/images/video/".$item['image'];
                    // if (!empty($item['link_video'])) {
                    //     $link_video = $item['link_video'];
                    // }
                    if ($item['product_img'] == '') {
                        $link_anh = $item['product_img_1'];
                    } else {
                        $link_anh = '/images/'.$item['product_img'];
                    }
                ?>
                <a href="/<?= $item['friendly_url'] ?>" style="position: relative;">
                <div class="">
                    <div class="video-item" style="">
                        <img src="<?= $link_anh ?>" alt="" style="height: 200px;width: auto;">
                    </div>
                </div>
            </a>
                <?php } ?>
            </div>
        </div>
    </div>

    <iframe width="100%" height="700" src="https://www.photopea.com"></iframe>

    <div class="row" style="margin-bottom: 20px;display: none;">
        <div class="col-md-12 page-video">
            <h2><a href="/<?= $video_tab_item['link'] ?>" style="color: #000;">Video Cùng Loại</a></h2>
            <div>
                <?php 
                foreach ($list_video_tab as $item) { 
                    $tab = $action->getDetail('video_tab', 'id', $item['video_tab_id']);
                    $link_video = "/images/video/".$item['image'];
                    if (!empty($item['link_video'])) {
                        $link_video = $item['link_video'];
                    }
                ?>
                <div class="col-md-3 col-sm-6 col-xs-12">
                    <div class="video-item">
                        <div>
                            <a href="/<?= $item['link'] ?>" title="" class="aspect-a">
                                <video controls muted style="width: 100%;" class="video-play aspect-img">
                                  <source src="<?= $link_video ?>" type="video/mp4">
                                  <source src="movie.ogg" type="video/ogg">
                                  Your browser does not support the video tag.
                                </video>
                            </a>
                        </div>
                        <div class="row">
                            <div class="col-xs-10">
                                <p class="video-name"><a href="/<?= $item['link'] ?>" title=""><?= $item['name'] ?></a></p>
                                <p class="video-tab"><a href="/<?= $tab['link'] ?>" title=""><?= $tab['name'] ?></a></p>
                            </div>
                            <div class="col-xs-2" style="padding-left: 10px;padding-right: 5px;">
                                <?php if ($item['goi']==0) { ?>
                                    <a href="<?= $item['download'] ?>" title="" download="" style="color:#000;"><i class="fa fa-download"></i></a>
                                <?php } else { ?>
                                    <?php if (!isset($_SESSION['user_id_gbvn'])) { ?>
                                        <i class="fa fa-download" onclick="alert('Bạn chưa đăng nhập')"></i>
                                    <?php } else { 
                                        if ($date > $now) {
                                            if ($user_info['goi']==2) { 
                                        ?>
                                            <a href="<?= $item['download'] ?>" title="" download="" style="color:#000;"><i class="fa fa-download"></i></a>
                                            <?php } elseif ($user_info['goi']==1) { ?>
                                                <?php if ($item['goi']==1) { ?>
                                                    <a href="<?= $item['download'] ?>" title="" download="" style="color:#000;"><i class="fa fa-download"></i></a>
                                                <?php } else { ?>
                                                    <i class="fa fa-download" onclick="alert('Bạn cần nâng cấp lên gói nâng cao.')"></i>
                                                <?php } ?>
                                        <?php } } else { ?>
                                        <i class="fa fa-download" onclick="alert('Bạn phải mua gói để download.');window.location.href='/thanh-toan';"></i>
                                    <?php } } ?>
                                <?php } ?>
                            </div>
                        </div>
                    </div>
                </div>
                <?php } ?>
            </div>
        </div>
    </div>

    <div class="row">
        <div id="fb-root"></div>
        <script async defer crossorigin="anonymous" src="https://connect.facebook.net/vi_VN/sdk.js#xfbml=1&version=v10.0&appId=484851048588987&autoLogAppEvents=1" nonce="77L7uXA0"></script>
        <div class="fb-comments" data-href="https://100pic.top" data-width="100%" data-numposts="5"></div>
    </div>
</div>

<script>
$('.video-play').mouseover(function(){
    $(this).get(0).play();
}).mouseout(function(){
    $(this).get(0).pause();
})
</script>

<script>
    function next_cat (id) {
        // alert(id);
        var xhttp = new XMLHttpRequest();
        xhttp.onreadystatechange = function() {
            if (this.readyState == 4 && this.status == 200) {
                // document.getElementById("demo").innerHTML = this.responseText;
                window.location.href = "/video-gallery";
            }
        };
        xhttp.open("GET", "/functions/ajax1/next_cat.php?id="+id, true);
        xhttp.send();
    }
</script>

<script src="/plugin/owl-carouse/owl.carousel.min.js"></script>
<script src="/plugin/waypoint/jquery.waypoints.min.js"></script>
<script src="/plugin/wow/wow.min.js"></script>
<script src="/plugin/animsition/css/animate.css"></script>
<script>
    new WOW().init();
</script>
<script>
    $(document).ready(function (){
        $('.listHomeProductDetail001').owlCarousel({
            loop:true,
            margin:0,
            navSpeed:500,
            dots: false,
            autoplay: true,
            rewind: true,
            autoWidth:true,
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

<script type="text/javascript">

  function ngan_luong (id) {

    // alert(id);
    var code = '';
    <?php if (isset($_GET['trang'])) { ?>
        code = '&code=<?= $_GET['trang'] ?>';
    <?php } ?>

    var link = 'https://100pic.top/nganluong/index.php?id='+id+code;

    window.open(link, "_blank", "toolbar=yes,scrollbars=yes,resizable=yes,top=100,left=500,width=1000,height=400");

  }


  function yeu_cau (link) {

    // alert(id);

    // var link = 'https://100pic.top/nganluong/index.php?id='+id;

    window.open(link, "_blank", "toolbar=yes,scrollbars=yes,resizable=yes,top=100,left=500,width=1000,height=400");

  }

  

</script>
<?php 
    if (!isset($_SESSION['login'])) {
        $_SESSION['login'] = 'chua';
    }

    // if (isset($_SESSION['user_id_gbvn'])) {
    //     $_SESSION['login'] = 'roi';
    // } else {
    //     $_SESSION['login'] = 'chua';
    // }

    if (isset($_SESSION['user_id_gbvn']) && $_SESSION['login'] == 'chua') {
        $_SESSION['login'] = 'roi';
        // echo '<script>alert(\'thanh toan\');</script>';
        // echo '<script>setTimeout(function(){ document.getElementById(\'popup-thanh-toan\').click(); }, 1000);</script>';
    }
?>

<script>
    
</script>