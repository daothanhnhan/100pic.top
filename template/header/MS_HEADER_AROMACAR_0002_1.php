<?php include_once DIR_MENU."MS_MENU_AROMACAR_0002.php"; ?>

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

                    <li><i class="fa fa-user-circle-o" aria-hidden="true"></i>Xin chào
                        <?= $_SESSION['user_name_gbvn'] ?>

                        <ul>

                            <li><a href="/logout"><i class="fa fa-sign-out" aria-hidden="true"></i> Đăng
                                    xuất</a></li>

                        </ul>

                    </li>

                    <?php

            }else{

        ?>

                    <li><i class="fa fa-user-circle-o" aria-hidden="true"></i> Tài khoản

                        <ul>
                            <li>
                                <?php 
                                if (isset($_SESSION['user_id_gbvn'])) { 
                                    $user_info = $action->getDetail('user', 'user_id', $_SESSION['user_id_gbvn']);
                                ?>
                                <div class="my-avata"><img class="gr-auth__avatar"
                                        src="https://www.freepik.com/profile/accounts/avatar/default_08.png?1582099460"
                                        alt="huyen3098"></div>

                                <div class="">
                                    <span class="gr-auth__name block font-sm"><?= $user_info['user_name'] ?></span>
                                    <span
                                        class="gr-auth__email block mg-bottom-lv2 font-xs text__general--text-secondary"><?= $user_info['user_email'] ?></span>
                                    <a href="/my-profile" class="button button--sm button--flat">Edit profile</a>
                                </div>
                                <?php } ?>
                                <ul>
                                    <li><a href="/"><i class="fa fa-download" aria-hidden="true"></i> Favorites</a></li>

                                    <li><a href="/register"><i class="fa fa-heart-o" aria-hidden="true"></i>
                                            Downloads</a></li>
                                    <li><a href="/register"><i class="fa fa-users" aria-hidden="true"></i> Following</a>
                                    </li>
                                    <li><a href="/register"><i class="fa fa-bars" aria-hidden="true"></i>
                                            Collections</a></li>

                                    <li><a href="/login"><i class="fa fa-telegram" aria-hidden="true"></i> My
                                            subcription</a></li>

                                    <li><a href="/register"><i class="fa fa-bandcamp" aria-hidden="true"></i>
                                            Support</a></li>
                                    <?php if (!isset($_SESSION['user_id_gbvn'])) { ?>
                                            <li><a  data-toggle="modal" data-target="#modal-6" onclick=""  ><i class="fa fa-sign-out" aria-hidden="true"></i> Đăng nhập/Đăng ký</a>
                                    </li>
                                    <?php } ?>
                                    <li><a href="/logout"><i class="fa fa-sign-out" aria-hidden="true"></i> Logout</a>
                                    </li>
                                </ul>
                            </li>
                        </ul>

                    </li>

                    <?php } ?>

                    <!-- <li><a href="#"><i class="fa fa-heart" aria-hidden="true"></i> Yêu thích (0)</a></li> -->

                    <li><a href="/thanh-toan"><i class="fa fa-usd" aria-hidden="true"></i> Thanh toán</a></li>

                    <!-- <li class="icons-search" id="search-click">

                        <i class="fa fa-search" aria-hidden="true"></i>

                        <div class="search">

                            <div class="search-frm">

                                <form role="search" method="get" class="search-form" action="/search-product/0">

                                    <input type="search" class="search-field" placeholder="search …" value="" name="q">

                                    <button type="submit" class="close-search"><i class="fa fa-close"
                                            aria-hidden="true"></i></button>

                                </form>

                            </div>

                        </div>

                    </li> -->

                </ul>

            </div>

        </div>

    </div>

</div>
<div id="header" class="notransition">

    <div class="container-fluid">
        <div class="row mg-none">
            <a class="logo inline-block clearfix" href="/">
                <img src="/images/<?= $rowConfig['web_logo'];?>" alt="" class="img-responsive">
            </a>

            <form id="search" class="search search-filter col pd-none-i mg-left-lv2-i" action="/search" method="get"
                novalidate="">
                <div class="group overflow-visible mg-none" style="position: relative;">
                    <div
                        class="search__dropdown popover popover--mobile-fullscreen popover--bottom-left hide-mobile noscript">
                        <span class="popover__trigger dropdown__button overflow-hidden overflow-ellipsis font-sm"
                            title="All resources" data-toggle="dropdown">All resources</span>

                        <div class="dropdown-menu">
                            <div class="trigger collection-search">
                                <label for="format-search" class="filter radio radio--sm pd-none-i mg-bottom-lv2 active"
                                    data-field-name="format" onclick="return false;">
                                    <span class="radio__indicator"></span>
                                    <span class="radio__link font-sm">Resources</span>
                                </label>

                                <label for="format-collections" class="filter radio radio--sm pd-none-i mg-bottom-lv2"
                                    data-field-name="format" onclick="return false;">
                                    <span class="radio__indicator"></span>
                                    <span class="radio__link font-sm">Collections</span>
                                </label>
                            </div>

                            <div class="trigger">
                                <label for="selection-1"
                                    class="filter checkbox checkbox--sm pd-none-i mg-bottom-lv2 active"
                                    data-field-name="selection" onclick="return false;">
                                    <span class="checkbox__indicator">
                                        <i class="icon icon--check fa fa-check"></i>
                                    </span>

                                    <span class="checkbox__link font-sm selection selection--text">Free</span>
                                </label>
                            </div>

                            <div class="trigger">
                                <label for="premium-1" class="filter checkbox checkbox--sm pd-none-i mg-bottom-lv2"
                                    data-field-name="premium" onclick="return false;">
                                    <span class="checkbox__indicator">
                                        <i class="icon icon--check fa fa-check"></i>
                                    </span>

                                    <span class="checkbox__link font-sm premium premium--text">
                                        <i class="icon icon--premium"></i>
                                        Premium
                                    </span>
                                </label>
                            </div>

                            <div class="trigger">
                                <label for="type-vector"
                                    class="filter checkbox checkbox--sm pd-none-i mg-bottom-lv2 active"
                                    data-field-name="type" onclick="return false;">
                                    <span class="checkbox__indicator"><i class="icon icon--check fa fa-check"></i></span>
                                    <span class="checkbox__link font-sm">Vectors</span>
                                </label>

                                <label for="type-photo" class="filter checkbox checkbox--sm pd-none-i mg-bottom-lv2"
                                    data-field-name="type" onclick="return false;">
                                    <span class="checkbox__indicator"><i class="icon icon--check fa fa-check"></i></span>
                                    <span class="checkbox__link font-sm">Photos</span>
                                </label>

                                <label for="type-psd" class="filter checkbox checkbox--sm pd-none-i mg-bottom-lv2"
                                    data-field-name="type" onclick="return false;">
                                    <span class="checkbox__indicator"><i class="icon icon--check fa fa-check"></i></span>
                                    <span class="checkbox__link font-sm">Psd</span>
                                </label>

                                <label for="type-icon" class="filter checkbox checkbox--sm pd-none-i mg-none-i"
                                    data-field-name="type" onclick="return false;">
                                    <span class="checkbox__indicator"><i class="icon icon--check fa fa-check"></i></span>
                                    <span class="checkbox__link font-sm">Icons</span>
                                </label>
                            </div>
                        </div>
                    </div>
                    <input type="text" id="search-value" name="query" placeholder="Search all resources" value=""
                        autocomplete="off" min="2" required="">
                    <div id="" class="autocomplete" style="top: 100%; left: 0px;"></div>

                    <button class="button button--white button--icon" type="submit">
                        <i class="fa fa-search"></i>
                    </button>
                </div>


                <div class="hide">
                    <input id="dates" name="dates" type="hidden" value="any">

                    <input id="format-author" type="radio" name="format" value="author">

                    <input id="format-collections" type="radio" name="format" value="collections">

                    <input id="format-search" type="radio" name="format" value="search" checked="">

                    <input id="selection-1" type="checkbox" name="selection" value="1" checked="">

                    <input id="premium-1" type="checkbox" name="premium" value="1">

                    <input id="freepik_choice-1" type="checkbox" name="freepik_choice" value="1">

                    <input id="author" type="text" name="author" value="">
                    <input id="author-name" type="text" name="authorSlug" value="">

                    <input id="sort-recent" type="radio" name="sort" value="recent">

                    <input id="sort-popular" type="radio" name="sort" value="popular" checked="">

                    <input id="type-vector" type="checkbox" name="type" value="vector" checked="">

                    <input id="type-photo" type="checkbox" name="type" value="photo">

                    <input id="type-psd" type="checkbox" name="type" value="psd">

                    <input id="type-icon" type="checkbox" name="type" value="icon">

                    <input id="people-exclude" type="radio" name="people" value="exclude">

                    <input id="people-include" type="radio" name="people" value="include">

                    <input id="orientation-landscape" type="checkbox" name="orientation" value="landscape">

                    <input id="orientation-portrait" type="checkbox" name="orientation" value="portrait">

                    <input id="orientation-square" type="checkbox" name="orientation" value="square">

                    <input id="orientation-panoramic" type="checkbox" name="orientation" value="panoramic">

                    <input id="color-red" type="radio" name="color" value="red">

                    <input id="color-orange" type="radio" name="color" value="orange">

                    <input id="color-yellow" type="radio" name="color" value="yellow">

                    <input id="color-green" type="radio" name="color" value="green">

                    <input id="color-cyan" type="radio" name="color" value="cyan">

                    <input id="color-blue" type="radio" name="color" value="blue">

                    <input id="color-purple" type="radio" name="color" value="purple">

                    <input id="color-white" type="radio" name="color" value="white">

                    <input id="color-gray" type="radio" name="color" value="gray">

                    <input id="color-black" type="radio" name="color" value="black">

                    <input id="pagination-page" type="number" name="page" max="2000" value="2">
                    <span id="pagination-pages">2000</span>
                </div>
            </form>

            <button class=" loc_1 " data-trigger="">
                <i class="fa fa-usb"></i>
                <span>Filters</span>
            </button>
            <?php include DIR_SEARCH."MS_SEARCH_AROMACAR_0004.php";?>

        </div>
    </div>
</div>
<div class="modal fade" id="modal-6" role="dialog">
    <div class="modal-dialog info_popup info_popup1">
        <!-- Modal content-->
        <div class="modal-content">

            <div class="modal-body">
                <div class="gb-bonshe-products-item">

                <?php include_once DIR_REGISTER . "MS_REGISTER_AROMACAR_0002.php"; ?>

                </div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
            </div>
        </div>

    </div>
</div>
<script>
    document.body.classList.remove('noscript');

    function checkIfGrLibraryLoaded() {
        return ('undefined' !== typeof gr) && (null !== gr);
    }

    if (checkIfGrLibraryLoaded() && gr.isLogged()) {
        document.body.classList.add('logged-user');
    }

    if (checkIfGrLibraryLoaded() && gr.isPremium()) {
        document.body.classList.add('premium-user');
    }

    if (checkIfGrLibraryLoaded() && gr.user && gr.user.email.match(/\@freepik.com/)) {
        document.body.classList.add('admin-user');
    }
</script>
<script>
    if (typeof gr !== 'undefined' && gr.updateUI) {
        gr.updateUI();
    }
</script>
<script>
    if ('function' === typeof window.setupFilters) {
        window.setupFilters();
    }
</script>

<script>

    $(document).ready(function () {

        $('.loc_1').on('click', function (e) {

            $(this).next().slideToggle('600');

            $(".loc_2").not($(this).next()).slideUp('600');

            $(this).toggleClass('active').siblings().removeClass('active');

        });

    });

</script>