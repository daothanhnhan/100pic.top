<div class="sp-uutien">


    <div class="gb-prodct-top-tab">
        <div class="panel-heading">
            <!--NAV ICONS-->

            <ul class="nav nav-tabs product-menu-content">
                <li class="active"><a href="#tab1default" data-toggle="tab">
                        <div class="menu_con1-session__display-hour">Banner</div>
                    </a></li>
                <li><a href="#tab2default" data-toggle="tab">
                        <div class="menu_con1-session__display-hour">Poster</div>
                    </a></li>
                <li><a href="#tab3default" data-toggle="tab">
                        <div class="menu_con1-session__display-hour">Cover facebook</div>
                    </a></li>
                <li><a href="#tab4default" data-toggle="tab">
                        <div class="menu_con1-session__display-hour">Member card</div>
                    </a></li>
                <li><a href="#tab5default" data-toggle="tab">
                        <div class="menu_con1-session__display-hour">Le Hoi</div>
                    </a></li>
                <li><a href="#tab6default" data-toggle="tab">
                        <div class="menu_con1-session__display-hour">Coupon</div>
                    </a></li>
                <li><a href="#tab7default" data-toggle="tab">
                        <div class="menu_con1-session__display-hour">Menu</div>
                    </a></li>
            </ul>
        </div>
    </div>

    <div class="panel-body">
        <div class="tab-content">
            <div class=" row tab-pane fade in active " id="tab1default">
                <?php include DIR_PRODUCT."MS_PRODUCT_AROMACAR_0010_1.php";?>
            </div>

            <div class="row tab-pane fade in" id="tab2default">
                <?php include DIR_PRODUCT."MS_PRODUCT_AROMACAR_0010_3.php";?>


            </div>

            <div class="row tab-pane fade in" id="tab3default">
                <?php include DIR_PRODUCT."MS_PRODUCT_AROMACAR_0010_4.php";?>


            </div>

            <div class="row tab-pane fade in" id="tab4default">
                <?php include DIR_PRODUCT."MS_PRODUCT_AROMACAR_0010_5.php";?>


            </div>

            <div class="row tab-pane fade in" id="tab5default">
                <?php include DIR_PRODUCT."MS_PRODUCT_AROMACAR_0010_6.php";?>


            </div>
        </div>
    </div>

</div>
<script>
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
</script>