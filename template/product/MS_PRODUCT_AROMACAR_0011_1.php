<?php 
    $procat_arr = explode(",", $item['productcat_ar']);
	$action_product = new action_product();
    $product_list_popup = $action_product->getProductList_byMultiLevel_orderProductId($procat_arr[0], 'desc', 1, 10, '');
?>
<!-- <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script> -->

<!-- <script src="./src/jquery-tjgallery.js"></script> -->

<div class="pictures_1 row">
    <?php 
    foreach ($product_list_popup['data'] as $item_popup) { 
        if ($item_popup['product_img'] == '') {
            $link_anh = $item_popup['product_img_1'];
        } else {
            $link_anh = '/images/'.$item_popup['product_img'];
        }
    ?>
    <div class="im ">
        <img src="<?= $link_anh ?>" alt="Avatar" onclick="load_img(<?= $item['product_id'] ?>, <?= $item_popup['product_id'] ?>)" class="image"
            style="width:100%">
        <div class="info-hover">
            <div class="middle">
                <!-- <ul>
                    <li><i class="fa fa-heart-o" aria-hidden="true"></i> </li>
                    <li><i class="fa fa-codepen" aria-hidden="true"></i> </li>
                    <li><i class="fa fa-pinterest-p" aria-hidden="true"></i> </li>
                </ul> -->
                <!-- <div class="text">John Doe</div> -->
            </div>
            <div class="tt-middle">
                <h3><?= $item_popup['product_name'] ?></h3>
            </div>
        </div>

    </div>
    <?php } ?>
    
</div>


<!-- <script>
    // waiting for loading page
    $(window).on('load', function () {
        $('.pictures_1').tjGallery();
    })

    // call desrtoy
    $('#destroy').click(function () {
        $('.pictures_1').tjGallery('clear');
        $('#build').show();
    });

    // reinit after destroy
    $('#build').click(function () {
        $('.pictures_1').tjGallery();
    })
</script> -->