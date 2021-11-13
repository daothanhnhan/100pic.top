<?php

//phpinfo();die;

session_start();

ob_start();

$actual_link = "http://$_SERVER[HTTP_HOST]$_SERVER[REQUEST_URI]";

$folder = dirname(__FILE__);

include_once('config.php');

include_once('__autoload.php');

$action = new action();

include_once dirname(__FILE__).DIR_FUNCTIONS."database.php";

// $urlAnalytic = $action->showabc();    

include_once dirname(__FILE__).DIR_FUNCTIONS_PAGING."pagination.php";

include_once 'functions/phpmailer/class.smtp.php';

include_once 'functions/phpmailer/class.phpmailer.php';

include_once "functions/vi_en.php";

// // LÀM RÕ NHỮNG THƯ VIỆN NÀY

// // include_once('lib/vi_en.php');

// // include_once('lib/nganLuong/NL_Checkoutv3.php');

// include_once "functions/nganLuong/config.php";
// include_once "functions/nganLuong/NL_Checkoutv3.php";



// // LÀM RÕ Install Cart



// Install MultiLanguage

include_once dirname(__FILE__).DIR_FUNCTIONS_LANGUAGE."lang_config.php";

include_once dirname(__FILE__).DIR_FUNCTIONS_LANGUAGE.$lang_file;

// Install Friendly Url

include_once dirname(__FILE__).DIR_FUNCTIONS_URL."url_config.php";

// Configure Website

include_once dirname(__FILE__).DIR_FUNCTIONS."website_config.php";

// echo $translate['link_contact'];die;

$trang = isset($_GET['trang']) ? $_GET['trang'] : '1';

$action = new action();

$cart = new action_cart();

$menu = new action_menu();

$action_product = new action_product();

$action_news = new action_news();



$rowConfig = $action->getDetail('config','config_id',1);

?>



<!doctype html>

<html lang="en">

<head>
<!-- Google Tag Manager -->
<script>(function(w,d,s,l,i){w[l]=w[l]||[];w[l].push({'gtm.start':
new Date().getTime(),event:'gtm.js'});var f=d.getElementsByTagName(s)[0],
j=d.createElement(s),dl=l!='dataLayer'?'&l='+l:'';j.async=true;j.src=
'https://www.googletagmanager.com/gtm.js?id='+i+dl;f.parentNode.insertBefore(j,f);
})(window,document,'script','dataLayer','GTM-P2SBC6Z');</script>
<!-- End Google Tag Manager -->
<!-- Global site tag (gtag.js) - Google Analytics -->
<script async src="https://www.googletagmanager.com/gtag/js?id=UA-181766547-1">
</script>
<script>
  window.dataLayer = window.dataLayer || [];
  function gtag(){dataLayer.push(arguments);}
  gtag('js', new Date());

  gtag('config', 'UA-181766547-1');
</script>
	<meta name="p:domain_verify" content="fd7bfb19e123714120ec12eaf0d29ac7"/>

    <!-- start - cấu hình cơ bản, dùng chung cho tất cả các website chuẩn seo -->

    <meta charset="UTF-8">

    <meta name="viewport"
        content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">

    <meta http-equiv="X-UA-Compatible" content="ie=edge">

    <!-- cần cấu hình linh hoạt -->

    <meta name="description" content="<?= $meta_des ?>">

    <!-- cần cấu hình linh hoạt -->

    <meta name="keywords" content="<?= $meta_key ?>">
	
	<meta id="meta_topic_id" property="og:id" content="1139">



    <?php 
    if ($urlAnalytic == 'news_languages' && isset($_GET['page'])) { 
      $slug = isset($_GET['slug']) ? $_GET['slug'] : '';
      $rowLang = $action_news->getNewsLangDetail_byUrl($slug,$lang);
      $row = $action_news->getNewsDetail_byId($rowLang['news_id'],$lang);
    ?>
    <meta property="og:image" content="<?= $action->curPageURL() ?>/images/<?= $row['news_img'] ?>" />
    <?php } ?>

    <?php 
    if ($urlAnalytic == 'product' && isset($_GET['page'])) {
        $url_pro = $_GET['page'];
        // $action = new action();
        $item_mau_anh = $action->getDetail('product', 'friendly_url', $url_pro);
    ?>
    <meta property="og:image" content="<?= $item_mau_anh['product_img_1'] ?>" />
    <?php } ?>

    <!-- cần cấu hình linh hoạt -->

    <title><?= $title ?></title>

    <!-- cần cấu hình linh hoạt -->

    <link rel="icon" href="/images/<?= $rowConfig['icon_web'] ?>" type="image/gif" sizes="16x16">
    <link href="https://fonts.googleapis.com/css?family=Pacifico&display=swap" rel="stylesheet">


    <link rel="stylesheet" href="/plugin/bootstrap/css/bootstrap.css">

    <link rel="stylesheet" href="/plugin/bootstrap/css/bootstrap-theme.css">

    <link rel='stylesheet prefetch' href='https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css'>

    <link rel='stylesheet prefetch'
        href='https://cdnjs.cloudflare.com/ajax/libs/bootstrap-select/1.6.2/css/bootstrap-select.min.css'>

    <link rel="stylesheet" href="/plugin/fonts/font-awesome/css/font-awesome.min.css">

    <script src="/plugin/jquery/jquery-2.0.2.min.js"></script>

    <script src="/plugin/bootstrap/js/bootstrap.js"></script>

    <!-- <link rel="stylesheet" href="/css/style.css"> -->
    <link href="https://fonts.googleapis.com/css?family=Roboto+Mono&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Roboto&display=swap" rel="stylesheet">

    <link rel="stylesheet" type="text/css" href="/css/freepik.css">
    <!-- <link rel="stylesheet" type="text/css" href="/css/fp-profile-css.css"> -->

    <!-- <link rel="stylesheet" type="text/css" href="/css/style-ico.css"> -->

    <link rel="stylesheet" type="text/css" href="/css/style-aromacar.css">
    <link rel="stylesheet" type="text/css" href="/css/respon.css">
    <!-- end - cấu hình cơ bản, dùng chung cho tất cả các website chuẩn seo -->

<!-- Facebook Pixel Code -->
<script>
!function(f,b,e,v,n,t,s)
{if(f.fbq)return;n=f.fbq=function(){n.callMethod?
n.callMethod.apply(n,arguments):n.queue.push(arguments)};
if(!f._fbq)f._fbq=n;n.push=n;n.loaded=!0;n.version='2.0';
n.queue=[];t=b.createElement(e);t.async=!0;
t.src=v;s=b.getElementsByTagName(e)[0];
s.parentNode.insertBefore(t,s)}(window, document,'script',
'https://connect.facebook.net/en_US/fbevents.js');
fbq('init', '320058038600134');
fbq('track', 'PageView');
</script>
<noscript><img height="1" width="1" style="display:none"
src="https://www.facebook.com/tr?id=320058038600134&ev=PageView&noscript=1"
/></noscript>
<!-- End Facebook Pixel Code -->
<meta property = "fb: pages" content = "101708778405811" />   
</head>
<style>
body {
    -webkit-touch-callout: none;
    -webkit-user-select: none;
    -moz-user-select: none;
    -ms-user-select: none;
    -o-user-select: none;
    user-select: none;
}
img {
    max-width: 100%;
    height: auto;
}
iframe {
    max-width: 100%;
}
</style>
<script>
function killCopy(e){ 
    return false } 
function reEnable(){ 
    return true } 
document.onselectstart = new Function (“return false”) 

if (window.sidebar){  
    document.onmousedown=killCopy 
    document.onclick=reEnable 
}
</script>
<script language="JavaScript">
    window.onload = function() {
        document.addEventListener("contextmenu", function(e) {
            e.preventDefault();
        }, false);
        document.addEventListener("keydown", function(e) {
            //document.onkeydown = function(e) {
            // "I" key
            if (e.ctrlKey && e.shiftKey && e.keyCode == 73) {
                disabledEvent(e);
            }
            // "J" key
            if (e.ctrlKey && e.shiftKey && e.keyCode == 74) {
                disabledEvent(e);
            }
            // "S" key + macOS
            if (e.keyCode == 83 && (navigator.platform.match("Mac") ? e.metaKey : e.ctrlKey)) {
                disabledEvent(e);
            }
            // "U" key
            if (e.ctrlKey && e.keyCode == 85) {
                disabledEvent(e);
            }
            // "F12" key
            if (event.keyCode == 123) {
                disabledEvent(e);
            }
        }, false);
 
        function disabledEvent(e) {
            if (e.stopPropagation) {
                e.stopPropagation();
            } else if (window.event) {
                window.event.cancelBubble = true;
            }
            e.preventDefault();
            return false;
        }
    };
</script>
<!-- Google Tag Manager (noscript) -->
<noscript><iframe src="https://www.googletagmanager.com/ns.html?id=GTM-P2SBC6Z"
height="0" width="0" style="display:none;visibility:hidden"></iframe></noscript>
<!-- End Google Tag Manager (noscript) -->

<body>
<style>
	@media screen and (max-width:767px) {
		.button--fullwidth {
			display: flex;
			margin-top: 20px !important;
		}
	}
</style>
    <!--Start of Tawk.to Script-->
<script type="text/javascript">
var Tawk_API=Tawk_API||{}, Tawk_LoadStart=new Date();
(function(){
var s1=document.createElement("script"),s0=document.getElementsByTagName("script")[0];
s1.async=true;
s1.src='https://embed.tawk.to/5fec4b44df060f156a921cd8/1eqpgc14a';
s1.charset='UTF-8';
s1.setAttribute('crossorigin','*');
s0.parentNode.insertBefore(s1,s0);
})();
</script>
<!--End of Tawk.to Script-->

    <!--Start of Tawk.to Script-->

    <!-- <script type="text/javascript">
        var Tawk_API = Tawk_API || {},
            Tawk_LoadStart = new Date();

        (function () {

            var s1 = document.createElement("script"),
                s0 = document.getElementsByTagName("script")[0];

            s1.async = true;

            s1.src = 'https://embed.tawk.to/5af2964c227d3d7edc2515cf/default';

            s1.charset = 'UTF-8';

            s1.setAttribute('crossorigin', '*');

            s0.parentNode.insertBefore(s1, s0);

        })();
    </script> -->

    <!--End of Tawk.to Script-->

    <!--HEADER-->

    <?php include_once dirname(__FILE__).DIR_THEMES."header.php"; ?>

    <!--CONTENT-->

    <div class="gb-content">

        <?php

    if (isset($_GET['page'])){



        $urlAnalytic = $action->getTypePage_byUrl($_GET['page'],$lang);    

        // echo $urlAnalytic;

        switch ($urlAnalytic) {

        	case 'newscat_languages':

                include_once dirname(__FILE__).DIR_THEMES."tintuc.php"; break;

            case 'tin-tuc':

                include_once dirname(__FILE__).DIR_THEMES."tintuc.php"; break;

            case 'news_languages':               

                include_once dirname(__FILE__).DIR_THEMES."chitiet_tintuc.php"; break;

            case 'servicecat_languages':

                include_once dirname(__FILE__) . DIR_THEMES . "dichvu.php";break;

            case 'service_languages':

                include_once dirname(__FILE__) . DIR_THEMES . "chitiet_dichvu.php";break;

            case 'page_language':

                include_once dirname(__FILE__) . DIR_THEMES . "gioithieu.php";break;

    		case 'productcat_languages':              

                include_once dirname(__FILE__).DIR_THEMES."sanpham.php"; break;

            case 'products':              

                include_once dirname(__FILE__).DIR_THEMES."sanpham.php"; break;

            case 'san-pham':              

                include_once dirname(__FILE__).DIR_THEMES."sanpham.php"; break;

            case 'product':

                include_once dirname(__FILE__).DIR_THEMES."mau-anh.php"; break;	

            // start - chưa hoàn thiện - url địa chỉ trang website

            case 'gio-hang':               

                include_once dirname(__FILE__).DIR_THEMES."giohang.php"; break;            

            case 'thanh-toan':           

                include_once dirname(__FILE__).DIR_THEMES."thanhtoan.php"; break;

            case 'xac-nhan-don-hang':           

                include_once dirname(__FILE__).DIR_THEMES."xacnhandonhang.php"; break;

            case 'huy-don-hang':           

                include_once dirname(__FILE__).DIR_THEMES."huydonhang.php"; break;

            case 'contact':           

                include_once dirname(__FILE__).DIR_THEMES."contact.php"; break;

            case 'lien-he':

                include_once dirname(__FILE__).DIR_THEMES."lienhe.php"; break;

            case 'search-news':

                include_once dirname(__FILE__) . DIR_THEMES . "search-news.php";break;

            case 'search-product':

                include_once dirname(__FILE__) . DIR_THEMES . "search-product.php";break;

            case 'search-service':

                include_once dirname(__FILE__) . DIR_THEMES . "search-service.php";break;

            case 'register':

                include_once dirname(__FILE__) . DIR_THEMES . "dang-ky.php";break;

            case 'login':

                include_once dirname(__FILE__) . DIR_THEMES . "dang-nhap.php";break;

            case 'logout':

                include_once dirname(__FILE__) . DIR_THEMES . "dang-xuat.php";break;

            case 'forget-pass':

                include_once dirname(__FILE__) . DIR_THEMES . "forget-pass.php";break;

            case 'change-password':

                include_once dirname(__FILE__) .DIR_THEMES . "change-password.php";break;
            case 'thong-tin-anh':

                include_once dirname(__FILE__) .DIR_THEMES . "taianh.php";break;
            case 'tac-gia':

                include_once dirname(__FILE__) .DIR_THEMES . "tacgia.php";break;
            case 'my-profile':

                include_once dirname(__FILE__) .DIR_THEMES . "profile.php";break;
            case 'user-downloads':

                include_once dirname(__FILE__) .DIR_THEMES . "download.php";break;
            case 'user-bookmarks':

                include_once dirname(__FILE__) .DIR_THEMES . "favorites.php";break;
            case 'user-following':

                include_once dirname(__FILE__) .DIR_THEMES . "flow.php";break;
            case 'user-collections':

                include_once dirname(__FILE__) .DIR_THEMES . "collections.php";break;
            case 'chuyen-khoan':

                include_once dirname(__FILE__) .DIR_THEMES . "chuyenkhoan.php";break;
            case 'search':
                include_once dirname(__FILE__) . DIR_THEMES . "search.php";break;
            case 'filter':
                include_once dirname(__FILE__) . DIR_THEMES . "filter.php";break;
				
			case 'video-gallery':
                include_once dirname(__FILE__) . DIR_THEMES . "video.php";break;

            case 'video_cat':
                include_once dirname(__FILE__) . DIR_THEMES . "video-cat.php";break;

            case "video_tab":
                include_once dirname(__FILE__) . DIR_THEMES . "video-tab.php";break;

            case 'video_app':
                include_once dirname(__FILE__) . DIR_THEMES . "video-app.php";break;

            case 'video-item-page':
                include_once dirname(__FILE__) . DIR_THEMES . "video-item-page.php";break;

            case 'ngan-luong':
                include_once dirname(__FILE__) . DIR_THEMES . 'ngan-luong.php';break;

            case 'mau-anh':
                include_once dirname(__FILE__) . DIR_THEMES . 'mau-anh.php';break;

            case 'test-send-email':
                include_once dirname(__FILE__) . DIR_THEMES . 'test-send-email.php';break;

            case 'congtacvien':
                include_once dirname(__FILE__) . DIR_THEMES . "congtacvien.php";break;

            case 'congtacvien-user':
                include_once dirname(__FILE__) . DIR_THEMES . "congtacvien-user.php";break;
            // end - chưa hoàn thiện - url địa chỉ trang website

        }

    }

    else include_once dirname(__FILE__).DIR_THEMES."home.php";

    ?>

    </div>



    <!--FOOTER-->

    <div class="gb-footer">

        <?php include_once dirname(__FILE__).DIR_THEMES."footer.php"; ?>

    </div>

    <script type="text/javascript" src="/functions/language/lang.js"></script>
<?php include DIR_BANNER."MS_BANNER_AROMACAR_0005.php"; ?>
<?php include DIR_BANNER."MS_BANNER_AROMACAR_0006.php"; ?>
</body>



</html>