<?php 
    $list_procat = $action->getList('productcat', '', '', 'productcat_id', 'desc', '', '', '');
    
?>
<?php include_once DIR_MENU."MS_MENU_AROMACAR_0002.php"; ?>

<div class="top-header sticky-menu">

    <div class="container">

        <div class="col-md-9">

            <div class="top-header-left">

                <?php include_once DIR_MENU."MS_MENU_AROMACAR_0001.php"; ?>

            </div>

        </div>

        <div class="col-md-3">

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
                                        src="/images/icons/default_08.png"
                                        alt=""></div>

                                <div class="">
                                    <span class="gr-auth__name block font-sm"><?= $user_info['user_name'] ?></span>
                                    
                                    <span
                                        class="gr-auth__email block mg-bottom-lv2 font-xs text__general--text-secondary"><?= $user_info['user_email'] ?></span>
                                    <span
                                        class="gr-auth__email block mg-bottom-lv2 font-xs text__general--text-secondary" style="padding-left: 50px;">#<?= $user_info['user_id'] ?></span>
                                    <a href="/my-profile" class="button button--sm button--flat">Edit profile</a>
                                </div>
                                <?php } ?>
                                <ul>
                                    <!-- <li><a href="/"><i class="fa fa-download" aria-hidden="true"></i> Favorites</a></li>

                                    <li><a href="/register"><i class="fa fa-heart-o" aria-hidden="true"></i>
                                            Downloads</a></li>
                                    <li><a href="/register"><i class="fa fa-users" aria-hidden="true"></i> Following</a>
                                    </li>
                                    <li><a href="/register"><i class="fa fa-bars" aria-hidden="true"></i>
                                            Collections</a></li>

                                    <li><a href="/login"><i class="fa fa-telegram" aria-hidden="true"></i> My
                                            subcription</a></li>

                                    <li><a href="/register"><i class="fa fa-bandcamp" aria-hidden="true"></i>
                                            Support</a></li> -->
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
                    <?php if (!isset($_SESSION['user_id_gbvn'])) { ?>
                    <li><a data-toggle="modal" data-target="#modal-6"><i class="fa fa-usd" aria-hidden="true"></i> Thanh toán</a></li>
                    <?php } else { ?>
                    <li><a onclick="thanh_toan()"><i class="fa fa-usd" aria-hidden="true"></i> Thanh toán</a></li>
                    <?php } ?>

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

<script>
function thanh_toan () {
    window.open("https://100pic.top/nganluong/index2.php", "_blank", "toolbar=yes,scrollbars=yes,resizable=yes,top=100,left=500,width=1000,height=400");
  }
</script>