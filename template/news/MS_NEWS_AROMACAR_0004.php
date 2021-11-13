<?php
    $action_news_relative = new action_news();
    $id_new_relative = $row['newscat_id'];
    $relative_news = $action_news_relative->getListNewsRelate_byIdCat_hasLimit($id_new_relative, 3);
?>
<div class="gb-tintuc-lienquan">
    <div class="title-lienquan">Tin tức liên quan</div>
    <div class="row">
        <?php
            foreach ($relative_news as $item) {
        ?>
        <div class="col-md-4 col-sm-6">
            <div class="gb-tintuc-item">
                <div class="item-img">
                    <a href="<?= $item['friendly_url'];?>"><img src="/images/<?= $item['news_img'];?>" alt="" class="img-responsive"></a>
                </div>
                <div class="item-text">
                    <h2><a href="<?= $item['friendly_url'];?>"><?= $item['news_name'];?></a></h2>
                    <time> <i class="fa fa-calendar-plus-o" aria-hidden="true"></i> <?= $item['news_created_date'] ?></time>
                    <div class="news_des">
                        <?= $item['news_des'];?>
                    </div>
                    <div class="btn-doctiep">
                        <a href="<?= $item['friendly_url'];?>">Đọc tiếp</a>
                    </div>
                </div>
            </div>
        </div>
        <?php } ?>
    </div>
</div>