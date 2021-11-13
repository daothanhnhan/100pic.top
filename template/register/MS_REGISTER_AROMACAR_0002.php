<div class="sp-uutien">


    <div class="gb-prodct-top-tab">
        <div class="panel-heading">
            <!--NAV ICONS-->

            <ul class="nav nav-tabs product-menu-content">
                <li class="active"><a href="#tab1default" data-toggle="tab">
                        <div class="menu_con1-session__display-hour">Đăng ký</div>
                    </a></li>
                <li><a href="#tab2default" data-toggle="tab">
                        <div class="menu_con1-session__display-hour">Đăng nhập</div>
                    </a></li>
            </ul>
        </div>
    </div>

    <div class="panel-body">
        <div class="tab-content">
            <div class=" row tab-pane fade in active " id="tab1default">
            <?php include_once DIR_REGISTER . "MS_REGISTER_AROMACAR_0005.php"; ?>            </div>

            <div class="row tab-pane fade in" id="tab2default">
            <?php include_once DIR_REGISTER . "MS_REGISTER_AROMACAR_0006.php"; ?>

            </div>
        </div>
    </div>

</div>
<div class="modal fade" id="modal-2" role="dialog">
    <div class="modal-dialog info_popup">
        <!-- Modal content-->
        <div class="modal-content">

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