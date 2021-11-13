<?php 

	session_start();

	include_once dirname(__FILE__) . "/../database.php";

	include_once dirname(__FILE__) . "/../library.php";

	include_once dirname(__FILE__) . "/../action.php";

	$action = new action();



	$id = $_GET['id'];

	$item = $action->getDetail('product', 'product_id', $id);

    if ($item['product_img'] == '') {
        $link_anh = $item['product_img_1'];
    } else {
        $link_anh = '/images/'.$item['product_img'];
    }

	if (isset($_SESSION['user_id_gbvn'])) {

		$user_info = $action->getDetail('user', 'user_id', $_SESSION['user_id_gbvn']);

		// echo $user_info['time'];

        $max = 0;

        $max = $action->getDetail('package', 'id', $user_info['goi'])['num'];

        $num = $user_info['num'];

	}

	$rowConfig = $action->getDetail('config','config_id',1);

?>

<section class="detail__preview">

        <div class="container-fluid">

            <div class="social">

                <div>

                    <div class="copy copy--reduced mg-y-none-i">

                    </div>

                </div>

            </div>



            <img src="<?= $link_anh ?>">

        </div>

    </section>



    <div class="download">

        <div class="detail__download detail__group">
        <a href="https://100pic.top/pts/"><img class="quangcao" src="/images/<?= $rowConfig['banner2'] ?>"></a>

            <div class="container-fluid">

                <div>

                    <?php 

                    if (isset($_SESSION['user_id_gbvn'])) { 

                        $now = date('Y-m-d');

                        $date = $user_info['time'];

                        if ($date > $now || $item['product_new'] == 1) { 

                            if ($num < $max) { 

                    ?>

                    <?php if (empty($item['product_des2'])) { ?>

                    <a href="/images/<?= $item['product_img'] ?>" onclick="numf()" download>

                    <?php } else { ?>

                    <a href="<?= $item['product_des2'] ?>" onclick="numf()" download>

                    <?php } ?>

                        <button class="button button--lg button--green l__trigger button--fullwidth mg-none"

                        data-l="l-download" data-toggle="modal" data-target="#popup5" onclick="" >

                        <i class="fa fa-download icon--download"></i>

                        <span>Download</span>

                        

                    </button></a>

                            <?php } else { ?>
                                <button class="button button--lg button--green l__trigger button--fullwidth mg-none"

                                data-l="l-download" data-toggle="modal" data-target="#popup5" onclick="alert('Bạn đã download đủ số lượng trong ngày.')" >

                                <i class="fa fa-download icon--download"></i>

                                <span>Download</span>

                                

                                </button>
                            <?php } ?>

                        <?php } else { ?>

                    <button class="button button--lg button--green l__trigger button--fullwidth mg-none"

                        data-l="l-download" data-toggle="modal" data-target="#popup5" onclick="alert('Bạn phải mua gói để download.');window.location.href='/thanh-toan';" >

                        <i class="fa fa-download icon--download"></i>

                        <span>Download</span>

                        

                    </button>

                        <?php } ?>

                    <?php } else { ?>

                    <button class="button button--lg button--green l__trigger button--fullwidth mg-none"

                        data-l="l-download" data-toggle="modal" data-target="#popup5" onclick="alert('Bạn chưa đăng nhập.')" >

                        <i class="fa fa-download icon--download"></i>

                        <span>Download</span>

                        

                    </button>

                    <?php } ?>

                </div>



            </div>

        </div>

        <h4 style="text-align: center;font-size: 34px;"><?= $item['product_name'] ?></h4>

        <div class="detail__license detail__group">

            <div class="container-fluid">

                <?= $item['product_content'] ?>

            </div>

        </div>

        

    </div>