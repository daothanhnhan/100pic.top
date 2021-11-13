<script src=""></script>

<script src="./src/jquery-tjgallery-2.js"></script><?php 
    $action_product = new action_product();
    $product_list = $action_product->getProductList_byMultiLevel_orderProductId($procat_id, 'desc', 1, 10, '');
?>

<style>
    
</style>
<div class="pictures row">
    <h2 class="tag-h2"><?= $procat['productcat_name'] ?></h2>
    <?php 
    foreach ($product_list['data'] as $item) { 
        if ($item['product_img'] == '') {
            $link_anh = $item['product_img_1'];
        } else {
            $link_anh = '/images/'.$item['product_img'];
        }
    ?>
    <div class="im " >
        <img src="<?= $link_anh ?>" alt="Avatar" class="image"  data-toggle="modal"
            data-target="#popup-<?= $procat_id ?>-<?= $item['product_id'] ?>" onclick="img_sort(<?= $item['product_id'] ?>)"
            style="width:100%">
        <div class="info-hover">
            <!-- <div class="middle">
                <ul>
                       <li><i class="fa fa-heart-o" aria-hidden="true">
                            <div class="tooltip__conten">Like</div>
                        </i>
                    </li>
                    <li><i class="fa fa-download" aria-hidden="true">
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
    <?php } ?>
    
</div><div class="xem-them">
        <a href="/<?= $procat['friendly_url'] ?>"> <p>+ See more</p></a></div>
<?php 
    foreach ($product_list['data'] as $item) { 
?>
<div class="modal fade" id="popup-<?= $procat_id ?>-<?= $item['product_id'] ?>" role="dialog">
    <div class="modal-dialog info_popup">
        <!-- Modal content-->
        <div class="modal-content">
            <div style="text-align: right;cursor: pointer;padding-right: 10px;padding-top: 5px;" data-dismiss="modal">
                &#x2573;
            </div>
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
<!-- <script>
    // waiting for loading page
    $(window).on('load', function () {
        $('.pictures').tjGallery();
    })

    // call desrtoy
    $('#destroy').click(function () {
        $('.pictures').tjGallery('clear');
        $('#build').show();
    });

    // reinit after destroy
    $('#build').click(function () {
        $('.pictures').tjGallery();
    })
</script> -->