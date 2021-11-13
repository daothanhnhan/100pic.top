<div id="header" class="notransition">

    <div class="container-fluid">
        <div class="row mg-none">
            <a class="logo inline-block clearfix" href="/">
                <img src="/images/<?= $rowConfig['web_logo'];?>" alt="" class="img-responsive">
            </a>

            <form id="search" class="search search-filter col pd-none-i mg-left-lv2-i" action="/index.php" method="get"
                novalidate="">
                <input type="hidden" name="page" value="search">
                <div class="group overflow-visible mg-none" style="position: relative;">
                    <div
                        class="search__dropdown popover popover--mobile-fullscreen popover--bottom-left hide-mobile noscript">
                        <span class="popover__trigger dropdown__button overflow-hidden overflow-ellipsis font-sm" id="text-stick-procat" 
                            title="All resources" data-toggle="dropdown">All resources</span>

                        <div class="dropdown-menu">
                            <?php foreach ($list_procat as $item) { ?>
                            <label><input type="radio" name="procat" value="<?= $item['productcat_id'] ?>" onclick="stick_procat('<?= $item['productcat_name'] ?>')"> <?= $item['productcat_name'] ?></label><br>
                            <?php } ?>
                            <!-- <div class="trigger collection-search">
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
                            </div> -->
                        </div>
                    </div>
                    <input type="text" id="search-value" name="query" placeholder="Search all resources" value=""
                        autocomplete="off" min="2" required="">
                    <div id="" class="autocomplete" style="top: 100%; left: 0px;"></div>

                    <button class="button button--white button--icon" type="submit">
                        <i class="fa fa-search"></i>
                    </button>
                </div>
            </form>
            <form>
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
            <form action="/index.php" method="get">
                <input type="hidden" name="page" value="filter">
            <button type="button" class=" loc_1 " data-trigger="">
                <i class="fa fa-usb"></i>
                <span>Filters</span>
            </button>
            <?php include DIR_SEARCH."MS_SEARCH_AROMACAR_0004.php";?>
            </form>
        </div>
    </div>
</div>
<script>
    function stick_procat (text) {
        // alert(text);
        document.getElementById("text-stick-procat").innerHTML = text;
    }
</script>