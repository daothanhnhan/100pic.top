<?php
    $news = new action_news();
    $list_news_home = $news->getListNewsNew_hasLimit(6);
?>
<link rel="stylesheet" href="./plugin/owl-carouse/owl.carousel.min.css">
<link rel="stylesheet" href="./plugin/owl-carouse/owl.theme.default.min.css">
<link rel="stylesheet" href="./plugin/fonts/fontello/css/fontello.css">
<div class="gb-latest-post">
    <div class="title">
        <h2>Bài viết mới nhất</h2>
        <div class="line"></div>
    </div>
    <div class="gb-latest-post-body">
        <!--LASTEST POST DESKTOP-->
        <div class="gb-latest-post-body-desktop">
            <div class="owl-three-item-dotted owl-carousel owl-theme">
                <?php
                    foreach ($list_news_home as $item) {
                        $newsLang = $news->getNewsLangDetail_byId($item['news_id'], $lang);
                        $news_rows = $news->getNewsDetail_byId($item['news_id'], $lang);
                ?>
                <div class="item">
                    <div class="blog-grid-item">
                        <article class="post type-post">
                            <div class="content-inner">
                                <div class="gb-entry-top">
                                    <div class="thumbnail-img">
                                        <a href="/<?= $newsLang['friendly_url'] ?>" title="">
                                            <img src="/images/<?= $news_rows['news_img'] ?>" alt="" title="" class="img-responsive">
                                        </a>
                                    </div>
                                </div>
                                <div class="gb-divider"></div>
                                <div class="gb-entry-content">
                                    <header class="gb-entry-header">
                                        <h2 class="gb-entry-title">
                                            <a href="/<?= $newsLang['friendly_url'] ?>" rel=""><?= $newsLang['lang_news_name'] ?></a>
                                        </h2>
                                    </header>

                                    <div class="gb-divider"></div>

                                    <div class="gb-entry-meta">
                                            <span class="gb-author">
                                                <a href="" rel="author"><i class="icon-user"></i> <?= $news_rows['news_author'] ?></a>
                                            </span>
                                        <span class="gb-entry-time"><i class="icon-calendar-empty"></i>
                                            <?= date("d-m-Y", strtotime($news_rows['news_created_date'])) ?>
                                        </span>
                                        <!-- <span class="gb-comment-total">
                                            <a href="" class="comments-link"><i class="icon-comment-alt"></i> 2 Comments</a>
                                        </span> -->
                                    </div>
                                </div>
                            </div>
                        </article>
                    </div>
                </div>
                <?php } ?>
            </div>
        </div>
    </div>
</div>

<script src="./plugin/owl-carouse/owl.carousel.min.js"></script>
<script>
    $(document).ready(function () {
        $('.owl-three-item-dotted').owlCarousel({
            loop:true,
            margin:30,
            nav:false,
            dots:true,
            autoplay:true,
            responsive:{
                0:{
                    items:1
                },
                768:{
                    items:3
                }
            }
        });
    });
</script>