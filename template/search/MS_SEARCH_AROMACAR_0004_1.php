<aside id="" class="search-filter  loc_2" data-permanent="true">
    <div class="scrollable">
        <div class="row row--vertical-center row--space-between row--title pd-right-lv1">
            <h6 class="trigger__button button button--sm button--link-dark mg-none-i font-sm uppercase loc_1">Filters
            </h6>
        </div>

        <div class="container-accordion">
            <div class="accordion mg-none accordion--ready" data-closable="true" data-filter="category">
                <div class="accordion__container">
                    <button class="accordion__link semibold nostyle block cate1" data-trigger="filter-type">
                        <i class="icon icon--sm mg-right-lv1 icon--resources inline-block v-alignc fa fa-sort-desc"></i>
                        <span class="font-sm v-alignc">Category</span>
                    </button>
                    <div class="accordion__content pd-x-none cate2">
                        <div id="filter-type" class="trigger">
                            <label for="type-vector" class="filter checkbox checkbox--xs active" data-field-name="type">
                                <span class="checkbox__indicator"><i class="icon icon--check fa fa-check "></i></span>
                                <span class="checkbox__link font-sm">Vectors</span>
                            </label>

                            <label for="type-photo" class="filter checkbox checkbox--xs" data-field-name="type">
                                <span class="checkbox__indicator"><i class="icon icon--check fa fa-check "></i></span>
                                <span class="checkbox__link font-sm">Photos</span>
                            </label>

                            <label for="type-psd" class="filter checkbox checkbox--xs" data-field-name="type">
                                <span class="checkbox__indicator"><i class="icon icon--check fa fa-check "></i></span>
                                <span class="checkbox__link font-sm">Psd</span>
                            </label>

                            <label for="type-icon" class="filter checkbox checkbox--xs" data-field-name="type">
                                <span class="checkbox__indicator"><i class="icon icon--check fa fa-check "></i></span>
                                <span class="checkbox__link font-sm">Icons</span>
                            </label>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div class="container-accordion">
            <div class="accordion mg-none accordion--ready active" data-closable="true" data-filter="license">
                <div class="accordion__container">
                    <button class="accordion__link semibold nostyle block cate_1" data-trigger="filter-type">
                        <i class="icon icon--sm mg-right-lv1 icon--crown inline-block v-alignc fa fa-sort-desc"></i>
                        <span class="font-sm v-alignc">License</span>
                    </button>
                    <div class="accordion__content pd-x-none cate_2">
                        <div id="filter-selection" class="trigger">
                            <label for="selection-1" class="filter checkbox checkbox--xs active"
                                data-field-name="selection">
                                <span class="checkbox__indicator">
                                    <i class="icon icon--check fa fa-check "></i>
                                </span>

                                <span class="checkbox__link font-sm selection selection--text">Free</span>
                            </label>
                        </div>

                        <div id="filter-premium" class="trigger">
                            <label for="premium-1" class="filter checkbox checkbox--xs" data-field-name="premium">
                                <span class="checkbox__indicator">
                                    <i class="icon icon--check fa fa-check "></i>
                                </span>

                                <span class="checkbox__link font-sm premium ">
                                    <i class="fa fa-star-half-o" style="padding-right:5px"></i>
                                    Premium
                                </span>
                            </label>
                        </div>
                    </div>
                </div>
            </div>
        </div>


        <div class="container-accordion">
            <div class="accordion mg-none accordion--ready active" data-closable="true" data-filter="date">
                <div class="accordion__container">
                    <button class="accordion__link semibold nostyle block active">
                        <i class="icon icon--sm mg-right-lv1 icon--calendar inline-block v-alignc"></i>
                        <span class="font-sm v-alignc">Publish date</span>
                    </button>
                    <div class="">
                        <div class="">
                            <label class="filter" for="dates" data-field-name="dates" data-field-type="select">
                                <select id="cars">
                                    <option value="volvo">Any</option>
                                    <option value="saab">Last 30 days</option>
                                    <option value="mercedes">Last 3 months</option>
                                    <option value="audi">Last year</option>
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