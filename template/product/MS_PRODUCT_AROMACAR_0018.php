<?php                                                                        
    if (isset($_GET['slug']) && $_GET['slug'] != '') {
        $slug = $_GET['slug'];
		$action_product = new action_product();
        $rowCatLang = $action_product->getProductCatLangDetail_byUrl($slug,$lang);
		$action_product = new action_product();
        $rowCat = $action_product->getProductCatDetail_byId($rowCatLang['productcat_id'],$lang);
		$action_product = new action_product();
        $rows = $action_product->getProductList_byMultiLevel_orderProductId_filter($rowCat['productcat_id'],'desc',$trang,10,$slug);//var_dump($rows);
    }else{
        $rows = $action->getList('product','','','product_id','desc',$trang,10,'san-pham');
    }
    
    $_SESSION['sidebar'] = 'productCat';
?>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

<script src="/src/jquery-tjgallery.js"></script>
<style>
    .image {
        opacity: 1;
        display: block;
        width: 100%;
        height: auto;
        transition: .5s ease;
        backface-visibility: hidden;
    }

    .tt-middle {
        opacity: 0;
        position: absolute;
        bottom: 10px;
        padding: 0px 15px;
    }

    .tt-middle h3 {
        display: -webkit-box;
        -webkit-box-orient: vertical;
        -webkit-line-clamp: 1;
        overflow: hidden;
        color: #fff;
    }

    .im:hover .tt-middle {
        opacity: 1;
    }

    .middle {
        transition: .5s ease;
        opacity: 0;
        position: absolute;
        top: 41%;
        left: 92%;
        float: right;
        transform: translate(-50%, -50%);
        -ms-transform: translate(-50%, -50%);
        text-align: center;
    }

    .im {
        position: relative;
    }

    .im:hover .image {
        opacity: 0.3;
    }

    .im:hover .middle {
        opacity: 1;
    }

    .middle ul li {
        padding: 3px;
        margin-bottom: 10px;
        border: 1px solid #fff;
        background: #fff;
    }

    .text {
        background-color: #4CAF50;
        color: white;
        font-size: 16px;
        padding: 16px 32px;
    }

    .tjGalleryItem {
        background: transparent;
        background-image: linear-gradient(rgba(255, 255, 255, 0), rgb(8, 25, 43));
        float: none !important;
    }

    .middle .tooltip__conten,
    .middle .tooltip__conten2,
    .middle .tooltip__conten1 {
        display: none;
    }

    .middle .fa:hover>.tooltip__conten,
    .middle .fa:hover>.tooltip__conten1,
    .middle .fa:hover>.tooltip__conten2 {
        display: block;
    }

    .tooltip__conten {
        position: absolute;
        padding: 10px;
        border-radius: 3px;
        background-color: #fff;
        box-shadow: 0 0 60px rgba(34, 34, 34, 0.25);
        color: #374957;
        font-size: 13px;
        right: 32px;
        top: -5px;
        line-height: 1.66;
    }

    .tooltip__conten1 {
        position: absolute;
        padding: 10px;
        border-radius: 3px;
        background-color: #fff;
        box-shadow: 0 0 60px rgba(34, 34, 34, 0.25);
        color: #374957;
        font-size: 13px;
        right: 32px;
        top: 27px;
        line-height: 1.66;
    }

    .tooltip__conten2 {
        position: absolute;
        padding: 10px;
        border-radius: 3px;
        background-color: #fff;
        box-shadow: 0 0 60px rgba(34, 34, 34, 0.25);
        color: #374957;
        font-size: 13px;
        right: 32px;
        top: 63px;
        line-height: 1.66;
    }

    .tooltip__conten::before,
    .tooltip__conten1::before,
    .tooltip__conten2::before {
        position: absolute;
        content: '';
    }

    .tooltip__conten::before,
    .tooltip__conten1::before,
    .tooltip__conten2::before {
        -webkit-transform: translateY(-50%);
        -moz-transform: translateY(-50%);
        -ms-transform: translateY(-50%);
        -o-transform: translateY(-50%);
        transform: translateY(-50%);
        height: 0;
        width: 0;
        border-bottom: 4px solid rgba(0, 0, 0, 0);
        border-left: 4px solid #fff;
        border-top: 4px solid rgba(0, 0, 0, 0);
        top: 50%;
        left: 100%;
    }
</style>
<!-- <div class="carousel">
    <ul id="related-carousel" class="carousel__container tags tags--related">
        <li class="carousel__item nostyle">
            <span class="font-sm">Related:</span>
        </li>
        <li class="carousel__item">
            <a href="https://www.freepik.com/free-photos-vectors/independence-day" class="search__link font-xs"
                data-filter="query=independence-day&amp;format=keyword&amp;sort=popular">
                Independence day
            </a>
        </li>
        <li class="carousel__item">
            <a href="https://www.freepik.com/free-photos-vectors/mothers-day" class="search__link font-xs"
                data-filter="query=mothers-day&amp;format=keyword&amp;sort=popular">
                Mothers day
            </a>
        </li>
        <li class="carousel__item">
            <a href="https://www.freepik.com/free-photos-vectors/children-day" class="search__link font-xs"
                data-filter="query=children-day&amp;format=keyword&amp;sort=popular">
                Children day
            </a>
        </li>
        <li class="carousel__item">
            <a href="https://www.freepik.com/free-photos-vectors/india-independence-day" class="search__link font-xs"
                data-filter="query=india-independence-day&amp;format=keyword&amp;sort=popular">
                India independence day
            </a>
        </li>
        <li class="carousel__item">
            <a href="https://www.freepik.com/free-photos-vectors/mother-day" class="search__link font-xs"
                data-filter="query=mother-day&amp;format=keyword&amp;sort=popular">
                Mother day
            </a>
        </li>
        <li class="carousel__item">
            <a href="https://www.freepik.com/free-photos-vectors/teachers-day" class="search__link font-xs"
                data-filter="query=teachers-day&amp;format=keyword&amp;sort=popular">
                Teachers day
            </a>
        </li>
        <li class="carousel__item">
            <a href="https://www.freepik.com/free-photos-vectors/childrens-day" class="search__link font-xs"
                data-filter="query=childrens-day&amp;format=keyword&amp;sort=popular">
                Childrens day
            </a>
        </li>
        <li class="carousel__item">
            <a href="https://www.freepik.com/free-photos-vectors/fathers-day" class="search__link font-xs"
                data-filter="query=fathers-day&amp;format=keyword&amp;sort=popular">
                Fathers day
            </a>
        </li>
        <li class="carousel__item">
            <a href="https://www.freepik.com/free-photos-vectors/indian-independence-day" class="search__link font-xs"
                data-filter="query=indian-independence-day&amp;format=keyword&amp;sort=popular">
                Indian independence day
            </a>
        </li>

    </ul>
</div> -->
<div class="pictures_tab row">
<?php 
foreach ($rows['data'] as $item) { 
    if ($item['product_img'] == '') {
        $link_anh = $item['product_img_1'];
    } else {
        $link_anh = '/images/'.$item['product_img'];
    }
?>
<a href="/<?= $item['friendly_url'] ?>" style="position: relative;">
    <div class="im ">
        <img src="<?= $link_anh ?>"
            alt="Avatar" data-toggle="modal" data-target="#1modal-<?= $item['product_id'] ?>" onclick="img_sort(<?= $item['product_id'] ?>)"  data-toggle="modal" data-target="#modal-<?= $item['product_id'] ?>" onclick="" class="image" style="width:100%">
        <div class="info-hover">
            <!-- <div class="middle">
                <ul>
                                       <li><i class="fa fa-heart-o" aria-hidden="true">
                            <div class="tooltip__conten">Like</div>
                        </i>
                    </li>
                    <li><i class="fa fa-download" aria-hidden="true" >
                            <div class="tooltip__conten1">11.1k</div>
                        </i></li>
                        <li><i class="fa fa-pinterest-p" aria-hidden="true">
                            <div class="tooltip__conten2">Save</div>
                        </i> </li>
                </ul>
                <div class="text">John Doe</div>
            </div> -->
            <div class="tt-middle">
                <h3><?= $item['product_name'] ?></h3>
            </div>
        </div>

    </div>
</a>
<?php } ?>
    

    
    <?php include DIR_PAGINATION."MS_PAGINATION_AROMACAR_0001.php";?>


</div>
<?php 
    foreach ($rows['data'] as $item) { 
?>
<div class="modal fade" id="modal-<?= $item['product_id'] ?>" role="dialog">
    <div class="modal-dialog info_popup">
        <!-- Modal content-->
        <div class="modal-content">
            <div style="text-align: right;cursor: pointer;padding-right: 10px;padding-top: 5px;" data-dismiss="modal">
                &#x2573;
            </div>
            <div class="modal-body">
                <div class="gb-bonshe-products-item">

                    <?php include DIR_PRODUCT."MS_PRODUCT_AROMACAR_0011.php";?>


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
            <div style="text-align: right;cursor: pointer;padding-right: 10px;padding-top: 5px;" data-dismiss="modal">
                &#x2573;
            </div>
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
<script>
    // waiting for loading page
    $(window).on('load', function () {
        $('.pictures_tab').tjGallery();
    })
    //setTimeout(function(){
    //    $('.pictures_tab').tjGallery();
    //}, 3000);
    //setTimeout(function(){
    //    $('.pictures_tab').tjGallery();
    //}, 4000);

    // call desrtoy
    $('#destroy').click(function () {
        $('.pictures_tab').tjGallery('clear');
        $('#build').show();
    });

    // reinit after destroy
    $('#build').click(function () {
        $('.pictures_tab').tjGallery();
    })

    $(window).on('load', function () {
        setTimeout(function(){
            $("body > img:nth-last-child(2)").css("display", "none");
            $("body > img:last-child").css("display", "none");
        }, 300);
    })
</script>