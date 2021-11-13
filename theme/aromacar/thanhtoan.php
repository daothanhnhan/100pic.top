<?php 
    $goi_1 = $action->getDetail('price', 'id', 1);
    $goi_2 = $action->getDetail('price', 'id', 2);
    $goi_3 = $action->getDetail('price', 'id', 3);

    $goi_cb = $action->getDetail('package', 'id', 1);
    $goi_pt = $action->getDetail('package', 'id', 2);

    $loi_ich = $action->getList('loi_ich', '', '', 'id', 'asc', '', '', '');
?>
<div class="banner">
    <h3 class="tt-banner">Create your own limits</h3>
    <p class="paragraph-readable--lg text-inverted font-lg">
        Gain access to over 6,136,000 <span class="premium premium--text inline-block medium"><i
                class="icon--sm icon icon--inverted icon--premium"></i> Premium</span> resources <b
            class="block">Download what you want, cancel when you want</b>
    </p>
</div>
<div class="container">
    <div class="col-md-6">
        <div class="box table table1">
            <table>
                <thead>
                    <tr>
                        <th></th>
                        <th>
                            <font style="vertical-align: inherit;">
                                <font style="vertical-align: inherit;">Phổ thông</font>
                            </font>
                        </th>
                        <th>
                            <font style="vertical-align: inherit;">
                                <font style="vertical-align: inherit;">Cao cấp</font>
                            </font>
                        </th>
                    </tr>
                </thead>
                <tbody>
                    <?php foreach ($loi_ich as $item) { ?>
                    <tr>
                        <td>
                            <font style="vertical-align: inherit;">
                                <font style="vertical-align: inherit;"><?= $item['name'] ?></font>
                            </font>
                        </td>
                        <td><img src="/img/icon-<?= $item['mien_phi']==1 ? 'tick' : 'cross' ?>.svg" width="24" height="24"></td>
                        <td><img src="/img/icon-<?= $item['cao_cap']==1 ? 'tick' : 'cross' ?>.svg" width="24" height="24"></td>
                    </tr>
                    <?php } ?>
                </tbody>
            </table>
        </div>
    </div>
    <div class="col-md-6 omega">
        <div id="box-annual" data-plan="annual" class="box plans">
            <a class="btn-selection" data-frequency="year" data-coupon="" data-code="FR-PREMIUM-1" <?= isset($_SESSION['user_id_gbvn']) ? 'href="/chuyen-khoan/1/3"' : '' ?>
                onclick="on_click_select_product_plan(this.dataset.frequency, this.dataset.coupon, this.dataset.code, 'https://www.freepik.com/profile/preagreement/payment/?opt=year&amp;landing=getstarted&amp;product_code=FR-PREMIUM-1');" <?= isset($_SESSION['user_id_gbvn']) ? '' : 'data-toggle="modal" data-target="#modal-6"' ?> >
                <span class="badge badge-blue">Gói phổ thông<br><?= $goi_cb['num'] ?> lần tải mỗi ngày</span>
                <div class="content">
                    <span class="title">6 months</span>
                    <span class="price"><strong><?= number_format($goi_cb['price_3']) ?> VNĐ</strong><!-- <small>/month</small> --></span>
                    <!-- <span class="info"><b><?= number_format($goi_3['total']) ?></b> every <b>12</b> months</span> -->
                    <span class="btn btn-subscribe">Đăng ký</span>
                </div>
            </a>
        </div>
        <div id="box-annual" data-plan="annual" class="box plans">
            <a class="btn-selection" data-frequency="year" data-coupon="" data-code="FR-PREMIUM-1" <?= isset($_SESSION['user_id_gbvn']) ? 'href="/chuyen-khoan/1/2"' : '' ?>
                onclick="on_click_select_product_plan(this.dataset.frequency, this.dataset.coupon, this.dataset.code, 'https://www.freepik.com/profile/preagreement/payment/?opt=year&amp;landing=getstarted&amp;product_code=FR-PREMIUM-1');" <?= isset($_SESSION['user_id_gbvn']) ? '' : 'data-toggle="modal" data-target="#modal-6"' ?> >
                
                <div class="content">
                    <span class="title">3 months</span>
                    <span class="price"><strong><?= number_format($goi_cb['price_2']) ?> VNĐ</strong><!-- <small>/month</small> --></span>
                    <!-- <span class="info"><b><?= number_format($goi_2['total']) ?> EUR</b> every <b>6</b> months</span> -->
                    <span class="btn btn-subscribe">Đăng ký</span>
                </div>
            </a>
        </div>
        <div id="box-monthly" data-plan="monthly" class="box plans">
            <a class="btn-selection" data-frequency="month" data-coupon="" data-code="FR-PREMIUM-1"  <?= isset($_SESSION['user_id_gbvn']) ? 'href="/chuyen-khoan/1/1"' : '' ?>
                onclick="on_click_select_product_plan(this.dataset.frequency, this.dataset.coupon, this.dataset.code, 'https://www.freepik.com/profile/preagreement/payment/?opt=monthly&amp;landing=getstarted&amp;product_code=FR-PREMIUM-1');" <?= isset($_SESSION['user_id_gbvn']) ? '' : 'data-toggle="modal" data-target="#modal-6"' ?> >
                <div class="content">
                    <span class="title">1 month</span>
                    <span class="price"><strong><?= number_format($goi_cb['price_1']) ?> VNĐ</strong><!-- <small>/month</small> --></span>
                    <!-- <span class="info"><b><?= number_format($goi_1['total']) ?> EUR</b> every month</span> -->
                    <span class="btn btn-subscribe">Đăng ký</span>
                </div>
            </a>
        </div>

        <div id="box-annual" data-plan="annual" class="box plans">
            <a class="btn-selection" data-frequency="year" data-coupon="" data-code="FR-PREMIUM-1" <?= isset($_SESSION['user_id_gbvn']) ? 'href="/chuyen-khoan/2/3"' : '' ?>
                onclick="on_click_select_product_plan(this.dataset.frequency, this.dataset.coupon, this.dataset.code, 'https://www.freepik.com/profile/preagreement/payment/?opt=year&amp;landing=getstarted&amp;product_code=FR-PREMIUM-1');" <?= isset($_SESSION['user_id_gbvn']) ? '' : 'data-toggle="modal" data-target="#modal-6"' ?> >
                <span class="badge badge-blue">Gói nâng cao<br><?= $goi_pt['num'] ?> lần tải mỗi ngày</span>
                <div class="content">
                    <span class="title">6 months</span>
                    <span class="price"><strong><?= number_format($goi_pt['price_3']) ?> VNĐ</strong><!-- <small>/month</small> --></span>
                    <!-- <span class="info"><b><?= number_format($goi_3['total']) ?></b> every <b>12</b> months</span> -->
                    <span class="btn btn-subscribe">Đăng ký</span>
                </div>
            </a>
        </div>
        <div id="box-annual" data-plan="annual" class="box plans">
            <a class="btn-selection" data-frequency="year" data-coupon="" data-code="FR-PREMIUM-1" <?= isset($_SESSION['user_id_gbvn']) ? 'href="/chuyen-khoan/2/2"' : '' ?>
                onclick="on_click_select_product_plan(this.dataset.frequency, this.dataset.coupon, this.dataset.code, 'https://www.freepik.com/profile/preagreement/payment/?opt=year&amp;landing=getstarted&amp;product_code=FR-PREMIUM-1');" <?= isset($_SESSION['user_id_gbvn']) ? '' : 'data-toggle="modal" data-target="#modal-6"' ?> >
                
                <div class="content">
                    <span class="title">3 months</span>
                    <span class="price"><strong><?= number_format($goi_pt['price_2']) ?> VNĐ</strong><!-- <small>/month</small> --></span>
                    <!-- <span class="info"><b><?= number_format($goi_2['total']) ?> EUR</b> every <b>6</b> months</span> -->
                    <span class="btn btn-subscribe">Đăng ký</span>
                </div>
            </a>
        </div>
        <div id="box-monthly" data-plan="monthly" class="box plans">
            <a class="btn-selection" data-frequency="month" data-coupon="" data-code="FR-PREMIUM-1"  <?= isset($_SESSION['user_id_gbvn']) ? 'href="/chuyen-khoan/2/1"' : '' ?>
                onclick="on_click_select_product_plan(this.dataset.frequency, this.dataset.coupon, this.dataset.code, 'https://www.freepik.com/profile/preagreement/payment/?opt=monthly&amp;landing=getstarted&amp;product_code=FR-PREMIUM-1');" <?= isset($_SESSION['user_id_gbvn']) ? '' : 'data-toggle="modal" data-target="#modal-6"' ?> >
                <div class="content">
                    <span class="title">1 month</span>
                    <span class="price"><strong><?= number_format($goi_pt['price_1']) ?> VNĐ</strong><!-- <small>/month</small> --></span>
                    <!-- <span class="info"><b><?= number_format($goi_1['total']) ?> EUR</b> every month</span> -->
                    <span class="btn btn-subscribe">Đăng ký</span>
                </div>
            </a>
        </div>
    </div>
</div>