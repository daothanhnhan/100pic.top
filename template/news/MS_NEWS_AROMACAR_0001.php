<?php 
    $action = new action();
    $action_news = new action_news();     
    if (isset($_GET['slug']) && $_GET['slug'] != '') {
        $slug = $_GET['slug'];//echo 'tuan';die;                    
        $rowCatLang = $action_news->getNewsCatLangDetail_byUrl($slug,$lang);
        $rowCat = $action_news->getNewsCatDetail_byId($rowCatLang[$nameColIdNewsCat_newsCatLanguage],$lang);
        if (newsCatPageHasSub) {
            $rows = $action_news->getNewsList_byMultiLevel_orderNewsId($rowCat[$nameColId_newsCat],'desc',$trang,15,$slug);
        } else {
            $rows = $action_news->getNewsCat_byNewsCatIdParentHighest($rowCat[$nameColId_newsCat],'asc');//var_dump($rows);die;
        }        
    }
    else $rows = $action->getList($nameTable_news,'','',$nameColId_news,'asc',$trang,9,'news-cat'); 

    // $action_lang = new action_lang();
    // $url_lang = $action_lang->get_url_lang_newscat($slug, $lang);
?>


<?php if(newsCatPageHasSub){?>
    <input type="hidden" name="lang_current" id="lang_current" value="<?php echo $lang;?>">
    <input type="hidden" name="url_lang" value="<?php echo $url_lang;?>" id="url_lang"> 
<div class="gb-tintuc-right">
    <div class="row">
        <?php 
            $d = 0;
            foreach ($rows['data'] as $item) { 
                $d++;
                $action_news1 = new action_news(); 
                $rowLang1 = $action_news1->getNewsLangDetail_byId($item['news_id'],$lang);
                $row1 = $action_news1->getNewsDetail_byId($item['news_id'],$lang);
        ?>
        <div class="col-md-4 col-sm-6">
            <div class="gb-tintuc-item">
                <div class="item-img">
                    <a href="<?= $rowLang1['friendly_url'] ?>"><img src="/images/<?= $row1['news_img'];?>" alt="" class="img-responsive"></a>
                </div>
                <div class="item-text">
                    <h2><a href="<?= $rowLang1['friendly_url'] ?>"> <?= $rowLang1['lang_news_name'];?></a></h2>
                    <time> <i class="fa fa-calendar-plus-o" aria-hidden="true"></i> <?= date("d-m-Y", strtotime($row1['news_created_date']));?></time>
                    <div class="news_des">
                        <?= $rowLang1['lang_news_des'];?>
                    </div>
                    <div class="btn-doctiep">
                        <a href="<?= $rowLang1['friendly_url'] ?>">Đọc tiếp</a>
                    </div>
                </div>
            </div>
        </div>
        <?php } ?>
    </div>
    <?php include DIR_PAGINATION."MS_PAGINATION_AROMACAR_0001.php"; ?>
</div>
<?php } else{ ?>
    <div class="gb-tintuc-right">
        <div class="row">
            <?php 
                $d = 0;
                foreach ($rows['data'] as $item) { 
                    $d++;
                    $action_news1 = new action_news(); 
                    $rowLang1 = $action_news1->getNewsLangDetail_byId($item['news_id'],$lang);
                    $row1 = $action_news1->getNewsDetail_byId($item['news_id'],$lang);
            ?>
            <div class="col-md-4 col-sm-6">
                <div class="item-img">
                    <a href="<?= $rowLang1['friendly_url'] ?>"><img src="/images/<?= $row1['news_img'];?>" alt="" class="img-responsive"></a>
                </div>
                <div class="item-text">
                    <h2><a href="<?= $rowLang1['friendly_url'] ?>"> <?= $rowLang1['lang_news_name'];?></a></h2>
                    <time> <i class="fa fa-calendar-plus-o" aria-hidden="true"></i> <?= date("d-m-Y", strtotime($row1['news_created_date']));?></time>
                    <div class="news_des">
                        <?= $rowLang1['lang_news_des'];?>
                    </div>
                    <div class="btn-doctiep">
                        <a href="<?= $rowLang1['friendly_url'] ?>">Đọc tiếp</a>
                    </div>
                </div>
            </div>
            <?php } ?>
        </div>
        <?php include DIR_PAGINATION."MS_PAGINATION_AROMACAR_0001.php"; ?>
    </div>
<?php
    }
?>