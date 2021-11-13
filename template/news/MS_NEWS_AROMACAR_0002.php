<?php 
    $action_lang = new action_lang();
    $url_lang = $action_lang->get_url_lang_newsDetail($slug, $lang);
?>
<style>
	.gb-chitiet-tintuc-body ol, .gb-chitiet-tintuc-body ul {
		list-style: revert;
	}
	.gb-chitiet-tintuc-body table td {
		border: 1px solid black;
	}
	.gb-chitiet-tintuc-body strong {
		font-weight: bold;
	}
	.gb-chitiet-tintuc-body em {
		font-style: italic;
	}
	.gb-chitiet-tintuc-body img {
		max-width: 100%;
		height: auto;
	}
</style>
<input type="hidden" name="lang_current" id="lang_current" value="<?php echo $lang;?>">
<input type="hidden" name="url_lang" value="<?php echo $url_lang;?>" id="url_lang">
<div class="gb-chitiet-tintuc-content">
    <h2 style="margin: 0"><?= $rowLang_news['lang_news_name'] ?></h2>
    <div class="gb-author-time">
        <ul>
            <li class="time"><i class="fa fa-calendar-check-o" aria-hidden="true"></i> <?= $row['news_created_date'] ?></li>
            <li class="author"><i class="fa fa-user-o" aria-hidden="true"></i> admin</li>
        </ul>
    </div>
    <div class="gb-chitiet-tintuc-body">
         <?= $rowLang_news['lang_news_content'] ?>
    </div>
</div>