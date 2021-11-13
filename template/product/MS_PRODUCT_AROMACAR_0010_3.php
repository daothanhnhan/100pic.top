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
<div class="pictures_tab3 row">
    <h2 class="tag-h2">Poster</h2>
    <div class="im ">
        <img src="/images/i_1.jpg" alt="Avatar" data-toggle="modal" data-target="#popup1" onclick="" class="image"
            style="width:100%">
        <div class="info-hover">
            <div class="middle">
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
                <!-- <div class="text">John Doe</div> -->
            </div>
            <div class="tt-middle">
                <h3>Icons collection for business card</h3>
            </div>
        </div>

    </div>
    <div class="im ">
        <img src="https://image.freepik.com/free-vector/infographic-with-details-about-coronavirus-with-illustrated-sick-man_23-2148438094.jpg"
             alt="Avatar" data-toggle="modal" data-target="#popup1" onclick="" class="image" style="width:100%">
        <div class="info-hover">
            <div class="middle">
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
                <!-- <div class="text">John Doe</div> -->
            </div>
            <div class="tt-middle">
                <h3>Icons collection for business card</h3>
            </div>
        </div>
    </div>
    <div class="im ">
        <img src="https://product.hstatic.net/1000090040/product/poster-tranh-doanh-nghiep-sticker-factory-bc2_c2ee7d54bf4c4c6d985a84d9e35ce4e6_master.png"
             alt="Avatar" data-toggle="modal" data-target="#popup1" onclick="" class="image" style="width:100%">
        <div class="info-hover">
            <div class="middle">
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
                <!-- <div class="text">John Doe</div> -->
            </div>
            <div class="tt-middle">
                <h3>Icons collection for business card</h3>
            </div>
        </div>
    </div>
    <div class="im ">
        <img src="https://upload.wikimedia.org/wikipedia/vi/3/32/Poster_phim_T%C3%AAn_b%E1%BA%A1n_l%C3%A0_g%C3%AC.jpg"
             alt="Avatar" data-toggle="modal" data-target="#popup1" onclick="" class="image" style="width:100%">
        <div class="info-hover">
            <div class="middle">
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
                <!-- <div class="text">John Doe</div> -->
            </div>
            <div class="tt-middle">
                <h3>Icons collection for business card</h3>
            </div>
        </div>
    </div>
    <div class="im ">
        <img src="https://www.monsterlab.vn/wp-content/uploads/2017/12/4c806fcae99504986fc4b952b8027236.jpg"
             alt="Avatar" data-toggle="modal" data-target="#popup1" onclick="" class="image" style="width:100%">
        <div class="info-hover">
            <div class="middle">
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
                <!-- <div class="text">John Doe</div> -->
            </div>
            <div class="tt-middle">
                <h3>Icons collection for business card</h3>
            </div>
        </div>
    </div>
    <div class="im ">
        <img src="https://ae01.alicdn.com/kf/HTB1tONzOVXXXXbdXXXXq6xXFXXXH/Game-Anime-Undertale-Sans-Papyrus-T-ng-Scroll-Trang-Tr-N-i-Th-t-Poster-Sinh.jpg_640x640q70.jpg"
             alt="Avatar" data-toggle="modal" data-target="#popup1" onclick="" class="image" style="width:100%">
        <div class="info-hover">
            <div class="middle">
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
                <!-- <div class="text">John Doe</div> -->
            </div>
            <div class="tt-middle">
                <h3>Icons collection for business card</h3>
            </div>
        </div>
    </div>
    <div class="im ">
        <img src="https://iweb.tatthanh.com.vn/pic/3/blog/phan-mem-thiet-ke-poster-online.jpg" alt="Avatar"
            class="image" style="width:100%">
        <div class="info-hover">
            <div class="middle">
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
                <!-- <div class="text">John Doe</div> -->
            </div>
            <div class="tt-middle">
                <h3>Icons collection for business card</h3>
            </div>
        </div>
    </div>
    <div class="im ">
        <img src="https://sackim.com/wp-content/uploads/2018/08/poster-phim-thuong-lam-co-kich-thuoc-40-x-60-va-thuong-duoc-lam-duoi-dang-hop-den.jpg"
             alt="Avatar" data-toggle="modal" data-target="#popup1" onclick="" class="image" style="width:100%">
        <div class="info-hover">
            <div class="middle">
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
                <!-- <div class="text">John Doe</div> -->
            </div>
            <div class="tt-middle">
                <h3>Icons collection for business card</h3>
            </div>
        </div>
    </div>
    <div class="im ">
        <img src="https://kenh14cdn.com/2019/9/30/71120771631182220747990387285275618836480n-15698554976812076051192.jpg"
             alt="Avatar" data-toggle="modal" data-target="#popup1" onclick="" class="image" style="width:100%">
        <div class="info-hover">
            <div class="middle">
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
                <!-- <div class="text">John Doe</div> -->
            </div>
            <div class="tt-middle">
                <h3>Icons collection for business card</h3>
            </div>
        </div>
    </div>
    <div class="im ">
        <img src="https://about.canva.com/vi_vn/wp-content/uploads/sites/3/2017/09/music-poster.png" alt="Avatar"
            class="image" style="width:100%">
        <div class="info-hover">
            <div class="middle">
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
                <!-- <div class="text">John Doe</div> -->
            </div>
            <div class="tt-middle">
                <h3>Icons collection for business card</h3>
            </div>
        </div>
    </div>
    <div class="im ">
        <img src="/images/i_11.jpg"  alt="Avatar" data-toggle="modal" data-target="#popup1" onclick="" class="image" style="width:100%">
        <div class="info-hover">
            <div class="middle">
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
                <!-- <div class="text">John Doe</div> -->
            </div>
            <div class="tt-middle">
                <h3>Icons collection for business card</h3>
            </div>
        </div>
    </div>
    <div class="im ">
        <img src="/images/i_12.jpg"  alt="Avatar" data-toggle="modal" data-target="#popup1" onclick="" class="image" style="width:100%">
        <div class="info-hover">
            <div class="middle">
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
                <!-- <div class="text">John Doe</div> -->
            </div>
            <div class="tt-middle">
                <h3>Icons collection for business card</h3>
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
<div class="modal fade" id="popup1" role="dialog">
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
<script>
    // waiting for loading page
    $(window).on('load', function () {
        $('.pictures_tab3').tjGallery();
    })

    // call desrtoy
    $('#destroy').click(function () {
        $('.pictures_tab3').tjGallery('clear');
        $('#build').show();
    });

    // reinit after destroy
    $('#build').click(function () {
        $('.pictures_tab3').tjGallery();
    })
</script>