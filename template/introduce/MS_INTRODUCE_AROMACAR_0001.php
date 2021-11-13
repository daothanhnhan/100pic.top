<?php 
    $action_page = new action_page(); 
    $slug = isset($_GET['slug']) ? $_GET['slug'] : '';

    $rowLang = $action_page->getPageLangDetail_byUrl($slug,$lang);
    $row = $action_page->getPageDetail_byId($rowLang['news_id'],$lang);
    $_SESSION['sidebar'] = 'pageDetail';

    $action_lang = new action_lang();
    $url_lang = $action_lang->get_url_lang_page($slug, $lang);
?>
<style>
	.gb-gioithieu-page ol, .gb-gioithieu-page ul {
		list-style: revert;
	}
	.gb-gioithieu-page table td {
		border: 1px solid black;
	}
	.gb-gioithieu-page strong {
		font-weight: bold;
	}
	.gb-gioithieu-page em {
		font-style: italic;
	}
</style>
<div class="gb-gioithieu-page">
    <div class="container">
        <?php include_once DIR_BREADCRUMS."MS_BREADCRUMS_AROMACAR_0001.php";?>
        <div class="box_about">
            <div class="content_about">
                <h1><?= $rowLang['lang_page_name'] ?></h1>
                <?= $rowLang['lang_page_content'] ?>  
            </div>
        </div>
    </div>
</div><!--end WrapperContent-->