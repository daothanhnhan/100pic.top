<?php
// Đường dẫn lưu IMAGE
define('DIR_IMAGE','/img/');
// Đường dẫn chứa các hàm chức năng
define('DIR_FUNCTIONS','/functions/');
// Đường dẫn chứa các chức năng phân trang
define('DIR_FUNCTIONS_PAGING','functions/pagination/');
// Đường dẫn chứa các chức năng thanh toán trực tuyển NGÂN LƯỢNG
define('DIR_FUNCTIONS_NGANLUONG','/functions/nganLuong/');
// Đường dẫn chức năng đa ngôn ngữ
define('DIR_FUNCTIONS_LANGUAGE','/functions/language/');
// Đường dẫn chức năng đường dẫn thân thiện
define('DIR_FUNCTIONS_URL','/functions/urlFriendly/');

// Đường dẫn chứa thư viện
define('DIR_LIB','/libs/');
// Tên theme
define('N_THEME','aromacar');
// Đường dẫn chứa themes
define('DIR_THEMES','/theme/aromacar/');
// Đường dẫn chứa templates

define('DIR_TEMPLATES_HEADER','template/header/');
define('DIR_TEMPLATES_SLIDESHOW','template/slideShow/');
define('DIR_TEMPLATES_SIDEBAR','template/sideBar/');
define('DIR_TEMPLATES_SERVICE','template/service/');
define('DIR_TEMPLATES_SEARCH','template/search/');
define('DIR_TEMPLATES_PROJECT','template/project/');
define('DIR_TEMPLATES_PRODUCT','template/product/');
define('DIR_TEMPLATES_PAGINATION','template/pagination/');
define('DIR_TEMPLATES_NEWS','template/news/');
define('DIR_TEMPLATES_MENU','template/menu/');
define('DIR_TEMPLATES_INTRODUCE','template/introduce/');
define('DIR_TEMPLATES_FOOTER','template/footer/');
define('DIR_TEMPLATES_CUSTOMER','template/customer/');
define('DIR_TEMPLATES_CONTACT','template/contact/');
define('DIR_TEMPLATES_BREADCRUMBS','template/breadcrums/');
define('DIR_TEMPLATES_OTHERS','template/others/');
define('DIR_TEMPLATES_LANGUAGE','template/language/');
define('DIR_TEMPLATES_CART','template/cart/');
define('DIR_TEMPLATES_VIDEO','template/video/');
define('DIR_TEMPLATES_TEAM','template/team/');
define('DIR_TEMPLATES_EMAIL', 'template/email/');
define('DIR_TEMPLATES_SOCIAL', 'template/social/');
define('DIR_TEMPLATES_PAGE', 'template/page/');
define('DIR_TEMPLATES_BANNER', 'template/banner/');
define('DIR_TEMPLATES_REGISTER', 'template/register/');

// Tên tempalte

//--------------TEMPLATE CMS---------------- bỏ chỗ này và lấy tên trực tiếp
define('N_HEADER_1','MS_HEADER_0001');
define('N_FOOTER_1','MS_FOOTER_0001');
define('N_OTHER_1','MS_OTHER_0001');
define('N_INTRODUCE_1','MS_INTRODUCE_0001');
define('N_NEWS_1','MS_NEWS_0001');
define('N_NEWS_2','MS_NEWS_0002');
define('N_SIDEBAR_1','MS_SIDEBAR_0001');
define('N_SIDEBAR_2','MS_SIDEBAR_0002');
define('N_SERVICE_2','MS_SERVICE_0002');
define('N_VIDEO_1','MS_VIDEO_0001');
define('N_PRODUCT_1','MS_PRODUCT_0001');
define('N_PRODUCT_2','MS_PRODUCT_0002');
define('N_CART_2','MS_CART_0002');
define('N_CART_3','MS_CART_0003');
define('N_CART_4','MS_CART_0004');
define('N_CART_5','MS_CART_0005');
define('N_CART_6','MS_CART_0006');
define('N_CONTACT_1','MS_CONTACT_0001');
define('N_CONTACT_2','MS_CONTACT_0002');
define('N_SLIDESHOW','MS_SLIDESHOW_0001');



// ON/OFF bàn giao website
define('finishedWeb',true);
if (finishedWeb) {
	define('DIR_HEADER',DIR_TEMPLATES_HEADER);
	define('DIR_FOOTER',DIR_TEMPLATES_FOOTER);
	define('DIR_OTHER',DIR_TEMPLATES_OTHERS);
	define('DIR_INTRODUCE',DIR_TEMPLATES_INTRODUCE);
	define('DIR_NEWS',DIR_TEMPLATES_NEWS);
	define('DIR_SIDEBAR',DIR_TEMPLATES_SIDEBAR);
	define('DIR_SERVICE',DIR_TEMPLATES_SERVICE);
	define('DIR_VIDEO',DIR_TEMPLATES_VIDEO);
	define('DIR_PRODUCT',DIR_TEMPLATES_PRODUCT);
	define('DIR_CART',DIR_TEMPLATES_CART);
	define('DIR_CONTACT',DIR_TEMPLATES_CONTACT);
	define('DIR_LANGUAGE',DIR_TEMPLATES_LANGUAGE);
	define('DIR_MENU',DIR_TEMPLATES_MENU);
	define('DIR_SEARCH',DIR_TEMPLATES_SEARCH);
	define('DIR_PAGINATION',DIR_TEMPLATES_PAGINATION);
	define('DIR_EMAIL', DIR_TEMPLATES_EMAIL);
	define('DIR_BREADCRUMS', DIR_TEMPLATES_BREADCRUMBS);
	define('DIR_SOCIAL', DIR_TEMPLATES_SOCIAL);
	define('DIR_PAGE', DIR_TEMPLATES_PAGE);
	define('DIR_SLIDESHOW', DIR_TEMPLATES_SLIDESHOW);
	define('DIR_BANNER', DIR_TEMPLATES_BANNER);
	define('DIR_REGISTER', DIR_TEMPLATES_REGISTER);
}
else {
	define('DIR_HEADER',DIR_THEMES);
	define('DIR_SLIDESHOW',DIR_THEMES);
}


// WEBSITE có đa ngôn ngữ không?
define('langMulti',true);
// Trang Catalogy của Product có gồm các Catalogy con?
define ('productCatPageHasSub',true);
// Trang Catalogy của News có gồm các Catalogy con?
define ('newsCatPageHasSub',true);
// Trang Catalogy của Service có gồm các Catalogy con?
define ('serviceCatPageHasSub',true);
// Có giỏ hàng hay không?
define('cartHas',true);
// Có chức năng thanh toán trực tuyến hay không?
define('onlinePaymentHas',true);


/*--- thao tác trên table config và config_languages ---*/
$nameTable_config = 'config';
$nameColId_config = 'config_id';
$nameColWebName_config = 'web_name';
$nameColWebDes_config = 'web_des';
$nameColWebKeyword_config = 'web_keyword';
$nameColWebLogo_config = 'web_logo';
$nameColWebHotline_config = 'web_hotline';
$nameColWebPhone_config = 'web_phone';

$nameTable_configLanguage = 'config_languages';
$nameColId_configLanguage = 'config_id';
$nameColType_configLanguage = 'languages_code';
$nameColWebName_configLanguage = 'lang_web_name';
$nameColWebDes_configLanguage = 'lang_web_des';
$nameColWebKeyword_configLanguage = 'lang_web_keyword';
$nameColWebLogo_configLanguage = 'lang_web_logo';
$nameColWebHotline_configLanguage = 'lang_web_hotline';
$nameColWebPhone_configLanguage = 'lang_web_phone';

/*--- thao tác trên table menu ---*/
$nameTable_menu = 'menu';
$nameColParent_menu = 'menu_parent'; 
$nameColID_menu = 'menu_id';
$nameColTitle_menu = 'menu_name';
$nameColStateEnable_menu = 'state';
$nameColTypeId_menu = 'menu_type_id';
$nameColOrder_menu='menu_sort_order';
$nameColProductCatId_menu='productcat_id';    
$nameColProductId_menu='product_id';
$nameColNewsCatId_menu='newscat_id';    
$nameColNewsId_menu='news_id';
$nameColPageId_menu='page_id';
$nameColServiceId_menu='service_id';
$nameColServiceCatId_menu='servicecat_id';  
$nameColStateMain_menu='state';
$nameColStateHeader_menu='state_menuHeader';

/*--- thao tác trên table menu_languages---*/
$nameColTitle_menuLanguage = 'lang_menu_name';
$nameColUrl_menuLanguage = 'urlFriendly_menu';
$nameTable_menuLanguage = 'menu_languages';
$nameColType_menuLanguage= 'languages_code';
$nameColIdMenu_menuLanguage= 'menu_id';

/*--- thao tác trên table menu_type_languages---*/
$nameTable_menuTypeLanguage = 'menu_type_languages';
$nameColType_menuTypeLanguage= 'languages_code';

$nameColIdMenuType_menuTypeLanguage= 'menu_type_id';
$nameColMenuTypeName_menuTypeLanguage= 'menu_type_name';
$nameColUrl_menuTypeLanguage= 'friendly_url';



/*--- thao tác trên các table product va product languages ---*/
$nameTable_product = 'product';
$nameColId_product = 'product_id';
$nameColIdProductCat_product = 'productcat_id';
$nameColPriceSale_product = 'product_price_sale';
$nameColHot_product = 'product_hot';
$nameColNew_product = 'product_new';

$nameTable_productLanguage = 'product_languages';
$nameColType_productLanguage = 'languages_code';
$nameColIdProduct_productLanguage = 'product_id';
$nameColUrlProduct_productLanguage = 'friendly_url';
$nameColLangProductName_productLanguage = 'lang_product_name';

/*--- thao tác trên các table productCat va productCat languages ---*/
$nameTable_productCat = 'productcat';
$nameColId_productCat = 'productcat_id';
$nameColId_productCatParent = 'productcat_parent';
$nameColStateProductCat_productCat  = 'state';
$nameColOrder_productCat = 'productcat_sort_order';
$nameColParent_productCat = 'productcat_parent';
// $nameColIdParent_productCat = 'productcat_parent';

$nameTable_productCatLanguage = 'productcat_languages';
$nameColTitle_productCatLanguage = 'lang_productcat_name';
$nameColType_productCatLanguage = 'languages_code';
$nameColIdProductCat_productCatLanguage = 'productcat_id';
$nameColUrlProductCat_productCatLanguage = 'friendly_url';    

/*--- thao tác trên các table producer và producer languages ---*/
$nameTable_producer = 'product_producer';
$nameColOrder_producer = 'producer_sort_order';
$nameColParent_producer = 'producer_parent';
$nameColId_producer = 'producer_id';    
$nameColTitle_producer = 'producer_name'; 
$nameColStateProducer_producer = 'state';
$nameTable_producerLanguage = 'product_producer_languages';
$nameColType_producerLanguage = 'languages_code';
$nameColTitle_producerLanguage = 'lang_producer_name';
$nameColUrlProducer_producerLanguage = 'friendly_url';
$nameColIdProducer_producerLanguage = 'producer_id';

/*--- thao tác trên các table News va News languages ---*/
$nameTable_news = 'news';
$nameColId_news = 'news_id';
$nameTable_newsLanguage = 'news_languages';
$nameColType_newsLanguage = 'languages_code';
$nameColIdNews_newsLanguage = 'news_id';
$nameColUrlNews_newsLanguage = 'friendly_url'; 
$nameColIdNewsCat_news = 'newscat_id';
$nameColLangNewsName_newsLanguage = 'lang_news_name';

/*--- thao tác trên các table News CAT va News CAT languages ---*/
$nameTable_newsCat = 'newscat';
$nameColId_newsCat = 'newscat_id';
$nameColId_newsCatParent = 'newscat_parent';

$nameTable_newsCatLanguage = 'newscat_languages';
$nameColType_newsCatLanguage = 'languages_code';
$nameColIdNewsCat_newsCatLanguage = 'newscat_id';
$nameColUrlNewsCat_newsCatLanguage = 'friendly_url'; 
$nameColLangNewsCatName_newsCatLanguage = 'lang_newscat_name';

/*--- thao tác trên các table Service va Service languages ---*/
$nameTable_service = 'service';
$nameColId_service = 'service_id';

$nameTable_serviceLanguage = 'service_languages';
$nameColType_serviceLanguage = 'languages_code';
$nameColIdService_serviceLanguage = 'service_id';
$nameColUrlService_serviceLanguage = 'friendly_url';
$nameColLangServiceName_serviceLanguage = 'lang_service_name';

/*--- thao tác trên các table Service Cat va Service Cat languages ---*/
$nameTable_serviceCat = 'servicecat';

$nameColId_serviceCat = 'servicecat_id';
$nameColId_serviceCatParent = 'servicecat_parent';

$nameTable_serviceCatLanguage = 'servicecat_languages';
$nameColType_serviceCatLanguage = 'languages_code';
$nameColIdServiceCat_serviceCatLanguage = 'servicecat_id';
$nameColUrlServiceCat_serviceCatLanguage = 'friendly_url'; 
$nameColLangServiceCatName_serviceCatLang = 'lang_servicecat_name';

/*--- thao tác trên các table page va page languages ---*/
$nameTable_page = 'page';
$nameColId_page = 'page_id';

$nameTable_pageLanguage = 'page_languages';
$nameColType_pageLanguage = 'languages_code';
$nameColId_pageLanguage = 'page_id';
$nameColUrl_pageLanguage = 'friendly_url'; 
$nameColLangPageName_pageLanguage = 'lang_page_name';
?>