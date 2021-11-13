<div class="container">

    <div class="hero__content">

        <p class="mg-none ff--title font-h3 medium line-height-md mg-bottom-lv2-i">Graphic
            resources for everyone</p>
        <h1 class="mg-none mg-bottom-lv4-i regular ff--base font-xl line-height-sm">Find Free
            Vectors, Stock Photos, PSD and Icons</h1>

        <form id="search-fake" class="search search--lg mg-bottom-lv2" action="/search" method="get">
            <div class="group mg-none" style="position: relative;">
                <div
                    class="search__dropdown popover popover--mobile-fullscreen popover--bottom-left hide-mobile noscript">
                    <span class="popover__trigger dropdown__button overflow-hidden overflow-ellipsis font-sm"
                        title="All resources">All resources</span>

                    <div class="popover__container pd-lv2">
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
                            <label for="selection-1" class="filter checkbox checkbox--sm pd-none-i mg-bottom-lv2"
                                data-field-name="selection" onclick="return false;">
                                <span class="checkbox__indicator">
                                    <i class="icon icon--check"></i>
                                </span>

                                <span class="checkbox__link font-sm selection selection--text">Free</span>
                            </label>
                        </div>

                        <div class="trigger">
                            <label for="premium-1" class="filter checkbox checkbox--sm pd-none-i mg-bottom-lv2"
                                data-field-name="premium" onclick="return false;">
                                <span class="checkbox__indicator">
                                    <i class="icon icon--check"></i>
                                </span>

                                <span class="checkbox__link font-sm premium premium--text">
                                    <i class="icon icon--premium"></i>
                                    Premium
                                </span>
                            </label>
                        </div>

                        <div class="trigger">
                            <label for="type-vector" class="filter checkbox checkbox--sm pd-none-i mg-bottom-lv2"
                                data-field-name="type" onclick="return false;">
                                <span class="checkbox__indicator"><i class="icon icon--check"></i></span>
                                <span class="checkbox__link font-sm">Vectors</span>
                            </label>

                            <label for="type-photo" class="filter checkbox checkbox--sm pd-none-i mg-bottom-lv2"
                                data-field-name="type" onclick="return false;">
                                <span class="checkbox__indicator"><i class="icon icon--check"></i></span>
                                <span class="checkbox__link font-sm">Photos</span>
                            </label>

                            <label for="type-psd" class="filter checkbox checkbox--sm pd-none-i mg-bottom-lv2"
                                data-field-name="type" onclick="return false;">
                                <span class="checkbox__indicator"><i class="icon icon--check"></i></span>
                                <span class="checkbox__link font-sm">Psd</span>
                            </label>

                            <label for="type-icon" class="filter checkbox checkbox--sm pd-none-i mg-none-i"
                                data-field-name="type" onclick="return false;">
                                <span class="checkbox__indicator"><i class="icon icon--check"></i></span>
                                <span class="checkbox__link font-sm">Icons</span>
                            </label>
                        </div>
                    </div>
                </div>
                <input id="search-value-fake" type="text" class="size--lg" name="query"
                    placeholder="Search all resources" value="" autocomplete="off" min="2" required="">
                <div id="" class="autocomplete" style="top: 100%; left: 0px;"></div>

                <button class="button button--lg button--white button--icon" type="submit">
                    <i class="icon--search"></i>
                </button>
            </div>
        </form>
        <div id="example-keywords">
            <div class="row row--horizontal-center row--vertical-center mg-bottom-lv4-i font-sm">
                <span class="opacity-7">Examples:</span>
                <div>
                    <ul class="row row--horizontal-center mg-none-i pd-left-lv2 list--comma-separated">
                        <li><a class="track search__link link-inverted"
                                href="Https://www.freepik.com/free-photos-vectors/poster"
                                data-track-arguments="event,portada,click_palabra_buscador"
                                data-filter="format=search&amp;query=Poster&amp;sort=popular">Poster</a>
                        </li>
                        <li><a class="track search__link link-inverted"
                                href="Https://www.freepik.com/free-photos-vectors/abstract-background"
                                data-track-arguments="event,portada,click_palabra_buscador"
                                data-filter="format=search&amp;query=Abstract background&amp;sort=popular">Abstract
                                background</a></li>
                        <li><a class="track search__link link-inverted"
                                href="Https://www.freepik.com/free-photos-vectors/flower"
                                data-track-arguments="event,portada,click_palabra_buscador"
                                data-filter="format=search&amp;query=Flower&amp;sort=popular">Flower</a>
                        </li>
                    </ul>
                </div>
            </div>
        </div>

        <div class="row row--horizontal-center">
            <a href="/popular" class="search__link track button mg-lv1"
                data-track-arguments="event, portada, click_boton_vectores_populares"
                data-filter="format=search&amp;page=1&amp;sort=popular">Popular</a>
            <a href="/search?dates=30d&amp;format=search&amp;page=1&amp;sort=popular"
                class="search__link track button button--inverted button--outline mg-lv1"
                data-track-arguments="event, portada, click_boton_vectores_premium"
                data-filter="dates=30d&amp;format=search&amp;page=1&amp;sort=popular">Recent</a>
        </div>

    </div>

</div>
<style>
    .container {
    padding: 0 20px;
    text-align:center;
}
.hero__content,{
    max-width: 767px;
}
.hero__content {
    position: relative;
    margin: auto;
    z-index: 2;
}
.mg-none {
    margin: 0;
}
.mg-bottom-lv2-i {
    margin-bottom: 10px !important;
}
.line-height-md {
    line-height: 44px;
}
@media screen and (min-width: 480px){
.font-h3 {
    font-size: calc(32px + 6 * (100vw - 480px) / 920);
}}
 .hero h1 {
    color: #fff;
}
.mg-bottom-lv4-i {
    margin-bottom: 30px !important;
}
.line-height-sm {
    line-height: 34px;
}
.font-xl {
    font-size: 22px;
}
.mg-bottom-lv2 {
    margin-bottom: 10px;
}
.search {
    position: relative;
}
.row--vertical-center, .checkbox, .radio, .groups__item, .group, .switch, .notification--alert .notification__content, .shutterstock__row, .nav a, .premium {
    align-items: center;
}
.checkbox, .radio, .group, .switch, .row, .groups__item, .notification--alert .notification__content, .pagination ul, .shutterstock__row, .copy, .nav a, .premium, .notification-center__list a, .notification-center__menu, .notification-center__notification .link:last-child, .notification-center__notification a:last-child, .keyword-list__box--top ul {
    display: flex;
    flex-wrap: wrap;
    align-items: flex-start;
}
.group {
    overflow: hidden;
    position: relative;
    border-radius: 3px;
    box-sizing: border-box;
    background-color: #1d262d;
}
.group::before {
    position: absolute;
    top: 0;
    left: 0;
    width: 100%;
    height: 100%;
    pointer-events: none;
    border-radius: 3px;
    box-shadow: inset 0 0 0 1px #bac8d3;
    content: '';
    z-index: 2;
}
.group::before {
    box-shadow: inset 0 0 0 1px #cfd9e0;
}
.search:not(#search) .group {
    background-color: #fff;
}
.search .group {
    color: #374957;
}
.search .group .popover {
    position: relative;
    border-right: none;
    text-align: left;
}
.search .group .popover::before {
    position: absolute;
    top: 50%;
    right: 0;
    width: 1px;
    height: 60%;
    transform: translateY(-50%);
    background-color: #cfd9e0;
    content: '';
}
.dropdown__button {
    -webkit-transition: 1ms cubic-bezier(1, 0, 0, 1);
    -moz-transition: 1ms cubic-bezier(1, 0, 0, 1);
    transition: 1ms cubic-bezier(1, 0, 0, 1);
    height: 44px;
    position: relative;
    margin: 0;
    padding: 0 38px 0 20px;
    border: 1px solid #cfd9e0;
    border-color: #91a8b8;
    border-radius: 3px;
    background-color: #fff;
    line-height: 42px;
}
.dropdown__button::after {
    position: absolute;
    top: 50%;
    right: 20px;
    -webkit-transform: translateY(-50%);
    -moz-transform: translateY(-50%);
    -ms-transform: translateY(-50%);
    -o-transform: translateY(-50%);
    transform: translateY(-50%);
    height: 0;
    width: 0;
    border-left: 4px solid rgba(0,0,0,0);
    border-right: 4px solid rgba(0,0,0,0);
    border-top: 4px solid #374957;
    content: '';
}
.search .group .popover .dropdown__button {
    display: block;
    min-width: 180px;
    max-width: 180px;
    border: none;
    background-color: transparent;
}
.search--lg .group .dropdown__button {
    height: 56px;
    line-height: 56px;
}
.font-sm {
    font-size: 14px;
}
.search .group .popover .popover__container {
    width: 100%;
    min-width: inherit;
}
.popover--bottom .popover__container, .popover--bottom-left .popover__container, .popover--bottom-right .popover__container {
    top: 100%;
    margin-left: 0;
    margin-right: 0;
}
.pd-lv2 {
    padding: 10px;
}
.popover__container {
    -webkit-transition: opacity 1ms cubic-bezier(1, 0, 0, 1),margin 1ms cubic-bezier(1, 0, 0, 1);
    -moz-transition: opacity 1ms cubic-bezier(1, 0, 0, 1),margin 1ms cubic-bezier(1, 0, 0, 1);
    transition: opacity 1ms cubic-bezier(1, 0, 0, 1),margin 1ms cubic-bezier(1, 0, 0, 1);
    position: absolute;
    overflow: hidden;
    opacity: 0;
    display: none;
    width: 80vw;
    min-width: 320px;
    max-width: 640px;
    padding: 20px;
    border-radius: 3px;
    background-color: #fff;
    box-shadow: 0 0 60px rgba(34,34,34,0.25);
    font-size: 14px;
    z-index: 20;
}
.collections--search .collection-search {
    display: inherit !important;
}
.pd-none-i {
    padding: 0 !important;
}
.search .group .popover [for='premium-1'], .search .group .popover [for='format-collections'] {
    position: relative;
    padding: 0 0 10px !important;
}
.radio .radio__indicator {
    border-radius: 50%;
}
.checkbox__indicator, .radio__indicator {
    display: block;
    width: 24px;
    height: 24px;
    border-radius: 3px;
    background-color: #fff;
    box-shadow: inset 0 0 0 1px #91a8b8;
}
.checkbox--sm .checkbox__indicator, .checkbox--sm .radio__indicator, .radio--sm .checkbox__indicator, .radio--sm .radio__indicator {
    width: 20px;
    height: 20px;
}
.checkbox__indicator, .radio__indicator {
    box-shadow: inset 0 0 0 1px #cfd9e0;
}
.icon--check::before, .notification--success .notification__state .icon:not(.nostyle)::before, .notification--success .notification__state .collections__actions button[class*="collection-"] [class*="icon"]:not(.nostyle)::before, .collections__actions button[class*="collection-"] .notification--success .notification__state [class*="icon"]:not(.nostyle)::before, .notification--success .notification__state .collections__actions button[class~="collection-"] [class*="icon"]:not(.nostyle)::before, .collections__actions button[class~="collection-"] .notification--success .notification__state [class*="icon"]:not(.nostyle)::before, .notification--success .notification__state .collection-edit button[class*="collection-"] [class*="icon"]:not(.nostyle)::before, .collection-edit button[class*="collection-"] .notification--success .notification__state [class*="icon"]:not(.nostyle)::before, .notification--success .notification__state .collection-edit button[class~="collection-"] [class*="icon"]:not(.nostyle)::before, .collection-edit button[class~="collection-"] .notification--success .notification__state [class*="icon"]:not(.nostyle)::before, .notification--success .notification__state .detail-series__navigation button:not(.nostyle)::before, .detail-series__navigation .notification--success .notification__state button:not(.nostyle)::before, .list--check li::before, .list--check-relative li::before {
    content: "\f117";
}
.button i::before, .icon::before, .collections__actions button[class*="collection-"] [class*="icon"]::before, .collections__actions button[class~="collection-"] [class*="icon"]::before, .collection-edit button[class*="collection-"] [class*="icon"]::before, .collection-edit button[class~="collection-"] [class*="icon"]::before, .detail-series__navigation button::before {
    font-family: "bobjoll";
    font-style: normal;
    font-weight: normal;
    font-variant: normal;
}
.active.popover--bottom::after, .active.popover--bottom-left::after, .active.popover--bottom-right::after {
    position: absolute;
    top: 100%;
    left: 50%;
    -webkit-transform: translateX(-50%);
    -moz-transform: translateX(-50%);
    -ms-transform: translateX(-50%);
    -o-transform: translateX(-50%);
    transform: translateX(-50%);
    height: 0;
    width: 0;
    border-bottom: 4px solid #fff;
    border-left: 4px solid rgba(0,0,0,0);
    border-right: 4px solid rgba(0,0,0,0);
    margin: 6px 0 0;
    content: '';
}
.popover.active::after {
    opacity: 1;
}
.search .group input {
    min-width: 64px;
    background-color: transparent;
}
.size--lg {
    height: 56px;
    font-size: 18px;
    line-height: 56px;
}
.autocomplete {
    position: absolute;
    overflow: auto;
    display: none;
    width: 100%;
    border-bottom-left-radius: 3px;
    border-bottom-right-radius: 3px;
    transform: translateY(-1px);
    background-color: #fff;
    box-shadow: 0 0 60px rgba(34,34,34,0.25);
    z-index: 100;
}
.search .group .button {
    background-color: #fff;
}
.group [class^="button"], .group [class*="button"] {
    line-height: 44px;
}
.group>*:last-child {
    border: none;
    border-top-right-radius: 3px;
    border-bottom-right-radius: 3px;
}
.group>button {
    position: relative;
    margin: 0;
    border-radius: 0;
    z-index: 1;
}
.button--lg i {
    font-size: 20px;
}
.button--icon i, .premium--icon i {
    float: inherit !important;
    margin: 0 auto;
}
.row--horizontal-center, .nav a, .table--comparison .premium {
    justify-content: center;
}
</style>