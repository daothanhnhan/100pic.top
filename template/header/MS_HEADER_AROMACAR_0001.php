<!--MENU MOBILE-->

<?php include_once DIR_MENU."MS_MENU_AROMACAR_0002.php"; ?>

<!-- End menu mobile-->



<!--MENU DESTOP-->

<header>

    <div class="gb-header">

        <div class="top-header sticky-menu">

            <div class="container">

                <div class="col-md-8">

                    <div class="top-header-left">

                    <?php include_once DIR_MENU."MS_MENU_AROMACAR_0001.php"; ?>

                    </div>

                </div>

                <div class="col-md-4">

                    <div class="top-header-right">

                        <ul>

                            <?php

                                if(isset($_SESSION['user_name_gbvn'])){

                            ?>

                                <li><i class="fa fa-user-circle-o" aria-hidden="true"></i>Xin chào <?= $_SESSION['user_name_gbvn'] ?>

                                    <ul>

                                        <li><a href="/logout"><i class="fa fa-sign-out" aria-hidden="true"></i> Đăng xuất</a></li>

                                    </ul>

                                </li>

                            <?php

                                }else{

                            ?>

                            <li><i class="fa fa-user-circle-o" aria-hidden="true"></i> Tài khoản

                                <ul>
                                    <li><a href="/login"><i class="fa fa-sign-in" aria-hidden="true"></i> Favorites</a></li>

                                    <li><a href="/register"><i class="fa fa-key" aria-hidden="true"></i> Downloads</a></li>
                                    <li><a href="/register"><i class="fa fa-key" aria-hidden="true"></i> Following</a></li>
                                    <li><a href="/register"><i class="fa fa-key" aria-hidden="true"></i> Collections</a></li>
                                </ul>
                                <ul>
                                    <li><a href="/login"><i class="fa fa-sign-in" aria-hidden="true"></i> My subcription</a></li>

                                    <li><a href="/register"><i class="fa fa-key" aria-hidden="true"></i> Support</a></li>
                                   </ul>
                                   <ul>
                                    <li><a href="/login"><i class="fa fa-sign-in" aria-hidden="true"></i> My subcription</a></li>

                                   </ul>

                            </li>

                            <?php } ?>

                            <!-- <li><a href="#"><i class="fa fa-heart" aria-hidden="true"></i> Yêu thích (0)</a></li> -->

                            <li><a href="/thanh-toan"><i class="fa fa-usd" aria-hidden="true"></i> Thanh toán</a></li>

                            <li class="icons-search" id="search-click">

                                <i class="fa fa-search" aria-hidden="true"></i>



                                <div class="search">

                                    <div class="search-frm">

                                        <form role="search" method="get" class="search-form" action="/search-product/0">

                                            <input type="search" class="search-field" placeholder="search …" value="" name="q">

                                            <button type="submit" class="close-search"><i class="fa fa-close" aria-hidden="true"></i></button>

                                        </form>

                                    </div>

                                </div>

                            </li>

                        </ul>

                    </div>

                </div>

            </div>

        </div>



        <!--HEADER between-->

        <div class="gb-header-between">

            <div class="container">

                <div class="row">

                    <div class="col-md-3 col-sm-6 col-xs-8">

                        <div class="gb-header-between-logo">

                            <h1><a href="/"><img src="/images/<?= $rowConfig['web_logo'];?>" alt="" class="img-responsive"></a></h1>

                        </div>

                    </div>

                    <div class="col-md-8">

                        <?php //include_once DIR_MENU."MS_MENU_AROMACAR_0001.php"; ?>

                    </div>

                    <div class="col-md-1">

                        <div class="gb-header-giohang">

                            <?php include DIR_CART."MS_CART_AROMACAR_0010.php";?>

                        </div>

                    </div>

                </div>

            </div>

        </div>

    </div>

    <?php include DIR_SLIDESHOW."MS_SLIDESHOW_AROMACAR_0002.php";  ?>

</header>



<script src="./plugin/sticky/jquery.sticky.js"></script>

<script>

    $(document).ready(function () {

        $(".sticky-menu").sticky({topSpacing:0});



        $('#search-click').on('click', function(e) {

        if( $(e.target).is('#search-click, i')){

            $('.close-search').fadeIn();

            $('.search').css('visibility', 'visible');

            $('.search-field').removeClass('none-search');

            $('.search-field').addClass('block-search');

            return false;

        }

    });

    $('.search-frm').on('click', function(e) {

        if($(e.target).is('.close-search, .close-search i')){

            $('.close-search').hide();

            $('.search').css('visibility', 'hidden');

            $('.search-field').removeClass('block-search');

            $('.search-field').addClass('none-search');

            return false;

        }

    });

    });

</script>