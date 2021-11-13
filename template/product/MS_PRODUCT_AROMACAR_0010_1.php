<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

<script src="./src/jquery-tjgallery.js"></script>
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
<div class="pictures_tab row">
    <h2 class="tag-h2">Cover facebook</h2>
    <div class="im ">
        <img src="/images/i_1.jpg" alt="Avatar" data-toggle="modal" data-target="#popup3" onclick="" class="image"
            style="width:100%">
        <div class="info-hover">
            <div class="middle">
                <ul>
                    <li><i class="fa fa-heart-o" aria-hidden="true"></i> </li>
                    <li><i class="fa fa-download" aria-hidden="true"></i> </li>
                    <li><i class="fa fa-pinterest-p" aria-hidden="true"></i> </li>
                </ul>
                <!-- <div class="text">John Doe</div> -->
            </div>
            <div class="tt-middle">
                <h3>Icons collection for business card</h3>
            </div>
        </div>

    </div>

    <div class="im ">
        <img src="/images/i_1.jpg" alt="Avatar" data-toggle="modal" data-target="#popup3" onclick="" class="image" style="width:100%">
        <div class="info-hover">
            <div class="middle">
                <ul>
                    <li><i class="fa fa-heart-o" aria-hidden="true">
                            <div class="tooltip__conten">Like</div>
                        </i>


                    </li>
                    <li>
                        <i class="fa fa-download" aria-hidden="true" data-toggle="modal" data-target="#modal-3"
                            onclick="">
                            <div class="tooltip__conten1">11.1k</div>
                        </i>

                    </li>
                    <li><i class="fa fa-pinterest-p" aria-hidden="true">
                            <div class="tooltip__conten2">Save</div>
                        </i> </li>
                </ul>
                <!-- <div class="text">John Doe</div> -->
            </div>
            <div class="tt-middle">
                <h3>Icons collection for business card</h3>
            </div>
        </div>
    </div>
    <div class="im ">
        <img src="/images/i_2.jpg" alt="Avatar" data-toggle="modal" data-target="#popup3" onclick="" class="image" style="width:100%">
        <div class="info-hover">
            <div class="middle">
                <ul>
                    <li><i class="fa fa-heart-o" aria-hidden="true"></i> </li>
                    <li><i class="fa fa-download" aria-hidden="true"></i> </li>
                    <li><i class="fa fa-pinterest-p" aria-hidden="true"></i> </li>
                </ul>
                <!-- <div class="text">John Doe</div> -->
            </div>
            <div class="tt-middle">
                <h3>Icons collection for business card</h3>
            </div>
        </div>
    </div>
    <div class="im ">
        <img src="/images/i_3.jpg" alt="Avatar" data-toggle="modal" data-target="#popup3" onclick="" class="image" style="width:100%">
        <div class="info-hover">
            <div class="middle">
                <ul>
                    <li><i class="fa fa-heart-o" aria-hidden="true"></i> </li>
                    <li><i class="fa fa-download" aria-hidden="true"></i> </li>
                    <li><i class="fa fa-pinterest-p" aria-hidden="true"></i> </li>
                </ul>
                <!-- <div class="text">John Doe</div> -->
            </div>
            <div class="tt-middle">
                <h3>Icons collection for business card</h3>
            </div>
        </div>
    </div>
    <div class="im ">
        <img src="/images/i_4.jpg" alt="Avatar" data-toggle="modal" data-target="#popup3" onclick="" class="image" style="width:100%">
        <div class="info-hover">
            <div class="middle">
                <ul>
                    <li><i class="fa fa-heart-o" aria-hidden="true"></i> </li>
                    <li><i class="fa fa-download" aria-hidden="true"></i> </li>
                    <li><i class="fa fa-pinterest-p" aria-hidden="true"></i> </li>
                </ul>
                <!-- <div class="text">John Doe</div> -->
            </div>
            <div class="tt-middle">
                <h3>Icons collection for business card</h3>
            </div>
        </div>
    </div>
    <div class="im ">
        <img src="/images/i_5.jpg" alt="Avatar" data-toggle="modal" data-target="#popup3" onclick="" class="image" style="width:100%">
        <div class="info-hover">
            <div class="middle">
                <ul>
                    <li><i class="fa fa-heart-o" aria-hidden="true"></i> </li>
                    <li><i class="fa fa-download" aria-hidden="true"></i> </li>
                    <li><i class="fa fa-pinterest-p" aria-hidden="true"></i> </li>
                </ul>
                <!-- <div class="text">John Doe</div> -->
            </div>
            <div class="tt-middle">
                <h3>Icons collection for business card</h3>
            </div>
        </div>
    </div>
    <div class="im ">
        <img src="/images/i_6.jpg" alt="Avatar" data-toggle="modal" data-target="#popup3" onclick="" class="image" style="width:100%">
        <div class="info-hover">
            <div class="middle">
                <ul>
                    <li><i class="fa fa-heart-o" aria-hidden="true"></i> </li>
                    <li><i class="fa fa-download" aria-hidden="true"></i> </li>
                    <li><i class="fa fa-pinterest-p" aria-hidden="true"></i> </li>
                </ul>
                <!-- <div class="text">John Doe</div> -->
            </div>
            <div class="tt-middle">
                <h3>Icons collection for business card</h3>
            </div>
        </div>
    </div>
    <div class="im ">
        <img src="/images/i_7.jpg" alt="Avatar" data-toggle="modal" data-target="#popup3" onclick="" class="image" style="width:100%">
        <div class="info-hover">
            <div class="middle">
                <ul>
                    <li><i class="fa fa-heart-o" aria-hidden="true"></i> </li>
                    <li><i class="fa fa-download" aria-hidden="true"></i> </li>
                    <li><i class="fa fa-pinterest-p" aria-hidden="true"></i> </li>
                </ul>
                <!-- <div class="text">John Doe</div> -->
            </div>
            <div class="tt-middle">
                <h3>Icons collection for business card</h3>
            </div>
        </div>
    </div>
    <div class="im ">
        <img src="/images/i_8.jpg" alt="Avatar" data-toggle="modal" data-target="#popup3" onclick="" class="image" style="width:100%">
        <div class="info-hover">
            <div class="middle">
                <ul>
                    <li><i class="fa fa-heart-o" aria-hidden="true"></i> </li>
                    <li><i class="fa fa-download" aria-hidden="true"></i> </li>
                    <li><i class="fa fa-pinterest-p" aria-hidden="true"></i> </li>
                </ul>
                <!-- <div class="text">John Doe</div> -->
            </div>
            <div class="tt-middle">
                <h3>Icons collection for business card</h3>
            </div>
        </div>
    </div>

</div>
<div class="modal fade" id="popup3" role="dialog">
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
<script>
    // waiting for loading page
    $(window).on('load', function () {
        $('.pictures_tab').tjGallery();
    })

    // call desrtoy
    $('#destroy').click(function () {
        $('.pictures_tab').tjGallery('clear');
        $('#build').show();
    });

    // reinit after destroy
    $('#build').click(function () {
        $('.pictures_tab').tjGallery();
    })
</script>