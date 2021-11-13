<?php 
    $filter_procat = $action->getList('productcat', 'loc', '1', 'productcat_id', 'desc', '', '', '');
    $list_kichco = $action->getList('product_size', '', '', 'id', 'asc', '', '', '');
?>
<aside id="" class="search-filter  loc_2" data-permanent="true">
    <div class="scrollable">
        <div class="row row--vertical-center row--space-between row--title pd-right-lv1">
            <button class="trigger__button button button--sm button--link-dark mg-none-i font-sm uppercase loc_1" style="padding: 0 14px;">Filters
            </button>
        </div>

        <div class="container-accordion">
            <div class="accordion mg-none accordion--ready" data-closable="true" data-filter="category">
                <div class="accordion__container">
                    <button type="button" class="accordion__link semibold nostyle block cate1" data-trigger="filter-type">
                        <i class="icon icon--sm mg-right-lv1 icon--resources inline-block v-alignc fa fa-sort-desc"></i>
                        <span class="font-sm v-alignc">Category</span>
                    </button>
                    <div class="accordion__content pd-x-none cate2">
                        <div id="filter-type" class="trigger">
                            <?php 
                            $d = 0;
                            foreach ($filter_procat as $item) { 
                                $d++;
                            ?>
                            <label><input type="radio" name="procat[]" value="<?= $item['productcat_id'] ?>" <?= $d==1 ? 'checked' : '' ?> > <?= $item['productcat_name'] ?></label> <br>
                            <?php } ?>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div class="container-accordion">
            <div class="accordion mg-none accordion--ready active" data-closable="true" data-filter="license">
                <div class="accordion__container">
                    <button type="button" class="accordion__link semibold nostyle block cate_1" data-trigger="filter-type">
                        <i class="icon icon--sm mg-right-lv1 icon--crown inline-block v-alignc fa fa-sort-desc"></i>
                        <span class="font-sm v-alignc">License</span>
                    </button>
                    <div class="accordion__content pd-x-none cate_2">
                        <input type="radio" name="free" value="1"> Free <br>
                        <input type="radio" name="free" value="0" checked=""> Premium
                    </div>
                </div>
            </div>
        </div>


        <div class="container-accordion">
            <div class="accordion mg-none accordion--ready active" data-closable="true" data-filter="license">
                <div class="accordion__container">
                    <button type="button" class="accordion__link semibold nostyle block cate_1" data-trigger="filter-type">
                        <i class="icon icon--sm mg-right-lv1 icon--crown inline-block v-alignc fa fa-sort-desc"></i>
                        <span class="font-sm v-alignc">Kích cỡ</span>
                    </button>
                    <div class="accordion__content pd-x-none cate_2">
                        <?php foreach ($list_kichco as $item) { ?>
                        <input type="radio" name="size" value="<?= $item['id'] ?>"> <?= $item['name'] ?> <br>
                        <?php } ?>
                    </div>
                </div>
            </div>
        </div>


        <div class="container-accordion">
            <div class="accordion mg-none accordion--ready active" data-closable="true" data-filter="date">
                <div class="accordion__container">
                    <button type="button" class="accordion__link semibold nostyle block active">
                        <i class="icon icon--sm mg-right-lv1 icon--calendar inline-block v-alignc"></i>
                        <span class="font-sm v-alignc">Publish date</span>
                    </button>
                    <div class="">
                        <div class="">
                            <label class="filter" for="dates" data-field-name="dates" data-field-type="select">
                                <select id="cars" name="date">
                                    <option value="0">Any</option>
                                    <option value="1">Last 30 days</option>
                                    <option value="2">Last 3 months</option>
                                    <option value="3">Last year</option>
                                </select>
                            </label>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</aside>
<script>
    $(document).ready(function () {

        $('.cate1').on('click', function (e) {

            $(this).next().slideToggle('600');

            $(".cate2").not($(this).next()).slideUp('600');

            $(this).toggleClass('active').siblings().removeClass('active');

        });

    });
</script>
<script>
    $(document).ready(function () {

        $('.cate_1').on('click', function (e) {

            $(this).next().slideToggle('900');

            $(".cate_2").not($(this).next()).slideUp('900');

            $(this).toggleClass('active').siblings().removeClass('active');

        });

    });
</script>