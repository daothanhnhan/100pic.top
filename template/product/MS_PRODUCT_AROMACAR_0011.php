<?php 
    
?>
<section class="detail detail--l" id="detail-<?= $item['product_id'] ?>">
    <section class="detail__preview">
        <div class="container-fluid">
            <div class="social">
                <!-- <button class="button button--sm button--pinterest floatl mg-none-i mg-right-lv1-i"
                        data-network="pinterest">
                        <i class="icon--pinterest"></i>
                        <span>Save</span>
                    </button> -->
                <div>
                    <div class="copy copy--reduced mg-y-none-i">
                        <!-- <button class="copy__trigger button button--sm button--white track"
                                data-track-arguments="event,detail-url-copy,sidebar"
                                data-copy="https://www.freepik.com/free-vector/icons-collection-business-card_5548812.htm#page=2&amp;position=0">
                                <i class="icon--duplicate"></i>
                                <span>Copy link</span>
                            </button> -->
                    </div>
                </div>
            </div>

            <img src="/images/<?= $item['product_img'] ?>">
        </div>
    </section>

    <div class="download">1111
        <img src="https://tpc.googlesyndication.com/simgad/12282975691820385389">
        <div class="detail__download detail__group">
            <div class="container-fluid">
                <div>
                    <?php 
                    if (isset($_SESSION['user_id_gbvn'])) { 
                        $now = date('Y-m-d');
                        $date = $user_info['time'];
                        if ($date > $now || $item['product_new'] == 1) { 
                    ?>
                    <?php if (empty($item['product_des2'])) { ?>
                    <a href="/images/<?= $item['product_img'] ?>" download>
                    <?php } else { ?>
                    <a href="<?= $item['product_des2'] ?>" download>
                    <?php } ?>
                        <button class="button button--lg button--green l__trigger button--fullwidth mg-none"
                        data-l="l-download" data-toggle="modal" data-target="#popup5" onclick="" >
                        <i class="fa fa-download icon--download"></i>
                        <span>Download</span>
                        <!-- <span class="badge badge--green badge--outline badge--absolute badge--top-right">82k</span> -->
                    </button></a>
                        <?php } else { ?>
                    <button class="button button--lg button--green l__trigger button--fullwidth mg-none"
                        data-l="l-download" data-toggle="modal" data-target="#popup5" onclick="alert('Bạn phải mua gói để download.');window.location.href='/thanh-toan';" >
                        <i class="fa fa-download icon--download"></i>
                        <span>Download</span>
                        <!-- <span class="badge badge--green badge--outline badge--absolute badge--top-right">82k</span> -->
                    </button>
                        <?php } ?>
                    <?php } else { ?>
                    <button class="button button--lg button--green l__trigger button--fullwidth mg-none"
                        data-l="l-download" data-toggle="modal" data-target="#popup5" onclick="alert('Bạn chưa đăng nhập.')" >
                        <i class="fa fa-download icon--download"></i>
                        <span>Download</span>
                        <!-- <span class="badge badge--green badge--outline badge--absolute badge--top-right">82k</span> -->
                    </button>
                    <?php } ?>
                </div>

            </div>
        </div>
        <h4 style=""><?= $item['product_name'] ?></h4>
        <div class="detail__license detail__group">

            <div class="container-fluid">
                
                <!-- <div class="detail__file-type">
                    <h6 class="row row--vertical-center mg-x-none-i first ff--title font-sm">
                        <i
                            class=" fa fa-crosshairs icon icon--sm icon--vector text__general--text bold mg-none-i mg-right-lv1-i"></i>
                        <span class="mg-right-lv2-i">Vector in .EPS format</span>
                        <a href="//support.freepik.com/hc/en-us/articles/203578042-How-to-edit-a-vector-file-from-Freepik-"
                            target="_blank" class="how-edit push-left track link medium"
                            data-track-arguments="event, click-detail, click_how_edit_vector, 5548812">
                            How to edit?
                        </a>
                    </h6>
                </div>
                <h6 class="font-sm mg-none inline">Freepik License</h6>
                <p class="font-xs">Free for personal and commercial purpose with attribution. <a
                        class="l__trigger medium" data-l="l-license"
                        href="https://www.freepik.com/standard-license-freepik">More info</a></p>

                <h6 class="font-sm mg-none inline">Attribution is required</h6>
                <a href="//support.freepik.com/hc/en-us/articles/208976585-Attribution-How-when-and-where-"
                    class="l__trigger track link font-xs medium"
                    data-track-arguments="event, attribution-link, detail-link-click" data-l="l-attribute">How to
                    attribute?</a> -->

                <?= $item['product_content'] ?>
            </div>
        </div>

        <!-- <div class="">
            <a href="/tac-gia">
                <span class="avatar avatar--sm avatar--circle col--center">
                    <img src="https://avatar.cdnpk.net/23.jpg" alt="" onerror="this.src = randomAvatar('freepik')">
                </span>
                <div class="col col--center line-height-extra-small mg-none pd-none-i pd-left-lv2-i">
                    <div class="author font-base">
                        <span class="author__name medium">freepik</span>
                        <span class="block font-xs regular text__scale-gray--6">931k resources</span>
                    </div>
                </div>
            </a> -->
            <!-- <button class="follow follow--sm noscript active" data-active="Following" data-active-hover="Unfollow"
                data-author-id="23" data-author-name="freepik" data-base="Follow"></button> -->
        <!-- </div> -->
    </div>



</section>
<div>
    <?php include DIR_PRODUCT."MS_PRODUCT_AROMACAR_0011_1.php";?>
</div>