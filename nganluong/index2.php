<?php 
    session_start(); 
    include_once "../functions/database.php";
    include_once "../functions/library.php";
    include_once "../functions/action.php";
    include 'config.php';
    include 'lib/nganluong.class.php';

    $action = new action();
    $goi_1 = $action->getDetail('price', 'id', 1);
    $goi_2 = $action->getDetail('price', 'id', 2);
    $goi_3 = $action->getDetail('price', 'id', 3);

    $goi_cb = $action->getDetail('package', 'id', 1);
    $goi_pt = $action->getDetail('package', 'id', 2);

    $loi_ich = $action->getList('loi_ich', '', '', 'id', 'asc', '', '', '');

    $user_info = $action->getDetail('user', 'user_id', $_SESSION['user_id_gbvn']);

    function dat_goi () {
        global $conn_vn;
        $action = new action();
        $name = $_POST['name'];
        $email = $_POST['email'];
        $address = '';
        $country = '';
        $city = '';
        $user_id = $_POST['user_id'];
        $goi_id = $_POST['goi_id'];
        $thang = $_POST['thang'];
        $state = 0;
// die('tuan');
        $insert = $action->Insert_1('book_package', 

                                       array('name', 

                                             'email', 

                                             'address', 

                                             'country', 

                                             'city', 

                                             'user_id', 

                                             'package_id',

                                             'thang',

                                             'state'), 

                                       array(&$name, 

                                             &$email, 

                                             &$address, 

                                             &$country, 

                                             &$city, 

                                             &$user_id,

                                             &$goi_id,

                                             &$thang,

                                             &$state,

                                             ),

                                       'sssssiiii');

        if($insert != ''){
            // echo 'B???n ???? ?????t g??i th??nh c??ng.';
            $_SESSION['gb_goi_mua'] = array();
            $_SESSION['gb_goi_mua']['user_id'] = $_SESSION['user_id_gbvn'];
            $_SESSION['gb_goi_mua']['package_id'] = $goi_id;
            $_SESSION['gb_goi_mua']['thang'] = $thang;
            $_SESSION['gb_goi_mua']['id'] = $insert;
            echo $insert;
        } else {
            
            // echo 'L???i, m???i b???n th??? l???i.';
            echo '<script>alert(\'???? c?? l???i m???i b???n th??? l???i.\');';die;
        }
    }

    if (isset($_POST['ngan_luong'])) {
        dat_goi();
        $receiver=RECEIVER;
        //M?? ????n h??ng 
        $order_code='NL_'.time();
        //Khai b??o url tr??? v??? 
        $return_url= "https://100pic.top/nganluong/success1.php";
        // Link nut h???y ????n h??ng
        $cancel_url= $_SERVER['HTTP_REFERER'];  
        $notify_url = "https://100pic.top/nganluong/success1.php";
        //Gi?? c???a c??? gi??? h??ng 
        $txh_name =$_POST['name'];  
        $txt_email =$_POST['email'];    
        $txt_phone =$_POST['phone'];    
        $price =(int)$_POST['price'];     
        //Th??ng tin giao d???ch
        $transaction_info="Thong tin giao dich";
        $currency= "vnd";
        $quantity=1;
        $tax=0;
        $discount=0;
        $fee_cal=0;
        $fee_shipping=0;
        $order_description="Thong tin don hang: ".$order_code;
        $buyer_info=$txh_name."*|*".$txt_email."*|*".$txt_phone;
        $affiliate_code="";
        //Khai b??o ?????i t?????ng c???a l???p NL_Checkout
        $nl= new NL_Checkout();
        $nl->nganluong_url = NGANLUONG_URL;
        $nl->merchant_site_code = MERCHANT_ID;
        $nl->secure_pass = MERCHANT_PASS;
        //T???o link thanh to??n ?????n nganluong.vn
        $url= $nl->buildCheckoutUrlExpand($return_url, $receiver, $transaction_info, $order_code, $price, $currency, $quantity, $tax, $discount , $fee_cal,    $fee_shipping, $order_description, $buyer_info , $affiliate_code);
        //$url= $nl->buildCheckoutUrl($return_url, $receiver, $transaction_info, $order_code, $price);
        
        
        //echo $url; die;
        if ($order_code != "") {
            //m???t s??? tham s??? l??u ??
            //&cancel_url=http://yourdomain.com --> Link b???m n??t h???y giao d???ch
            //&option_payment=bank_online --> M???c ?????nh forcus v??o ph????ng th???c Ng??n H??ng
            $url .='&cancel_url='. $cancel_url . '&notify_url='.$notify_url;
            //$url .='&option_payment=bank_online';
            
            echo '<meta http-equiv="refresh" content="0; url='.$url.'" >';
            //&lang=en --> Ng??n ng??? hi???n th??? google translate
        }
    }
?>
<link rel="stylesheet" type="text/css" href="/css/style-aromacar.css">
<link href="https://fonts.googleapis.com/css?family=Pacifico&amp;display=swap" rel="stylesheet">
<link rel="stylesheet" href="/plugin/bootstrap/css/bootstrap.css">
<link rel="stylesheet" type="text/css" href="/css/freepik.css">
<style>
.table tbody tr {
    border-bottom: 0;
}
</style>
<form action="" method="post" accept-charset="utf-8" id="order-form-1">
    <input type="hidden" name="user_id" value="<?= $_SESSION['user_id_gbvn'] ?>">
    
    <input type="hidden" name="name" value="<?= $user_info['user_id'] ?>" >
    <input type="hidden" name="email" value="<?= $user_info['user_email'] ?>">
    
    <input type="hidden" name="phone" value="0933335554">
</form>
<form action="" method="post" accept-charset="utf-8" id="order-form-2">
    <input type="hidden" name="user_id" value="<?= $_SESSION['user_id_gbvn'] ?>">
    
    <input type="hidden" name="name" value="<?= $user_info['user_id'] ?>" >
    <input type="hidden" name="email" value="<?= $user_info['user_email'] ?>">
    
    <input type="hidden" name="phone" value="0933335554">
</form>
<form action="" method="post" accept-charset="utf-8" id="order-form-3">
    <input type="hidden" name="user_id" value="<?= $_SESSION['user_id_gbvn'] ?>">
    
    <input type="hidden" name="name" value="<?= $user_info['user_id'] ?>" >
    <input type="hidden" name="email" value="<?= $user_info['user_email'] ?>">
    
    <input type="hidden" name="phone" value="0933335554">
</form>
<form action="" method="post" accept-charset="utf-8" id="order-form-4">
    <input type="hidden" name="user_id" value="<?= $_SESSION['user_id_gbvn'] ?>">
    
    <input type="hidden" name="name" value="<?= $user_info['user_id'] ?>" >
    <input type="hidden" name="email" value="<?= $user_info['user_email'] ?>">
    
    <input type="hidden" name="phone" value="0933335554">
</form>
<form action="" method="post" accept-charset="utf-8" id="order-form-5">
    <input type="hidden" name="user_id" value="<?= $_SESSION['user_id_gbvn'] ?>">
    
    <input type="hidden" name="name" value="<?= $user_info['user_id'] ?>" >
    <input type="hidden" name="email" value="<?= $user_info['user_email'] ?>">
    
    <input type="hidden" name="phone" value="0933335554">
</form>
<form action="" method="post" accept-charset="utf-8" id="order-form-6">
    <input type="hidden" name="user_id" value="<?= $_SESSION['user_id_gbvn'] ?>">
    
    <input type="hidden" name="name" value="<?= $user_info['user_id'] ?>" >
    <input type="hidden" name="email" value="<?= $user_info['user_email'] ?>">
    
    <input type="hidden" name="phone" value="0933335554">
</form>
<div class="container">
    <div class="col-md-6">
        <div class="box table table1">
            <table>
                <thead>
                    <tr>
                        <th></th>
                        <th>
                            <font style="vertical-align: inherit;">
                                <font style="vertical-align: inherit;">Ph??? th??ng</font>
                            </font>
                        </th>
                        <th>
                            <font style="vertical-align: inherit;">
                                <font style="vertical-align: inherit;">Cao c???p</font>
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
            
                <span class="badge badge-blue">G??i ph??? th??ng<br><?= $goi_cb['num'] ?> l???n t???i m???i ng??y</span>
                <div class="content">
                    <span class="title" style="margin-bottom: 0;">6 months</span>
                    <span class="price"><strong><?= number_format($goi_cb['price_3']) ?> VN??</strong><!-- <small>/month</small> --></span>
                    <!-- <span class="info"><b><?= number_format($goi_3['total']) ?></b> every <b>12</b> months</span> -->
                    <input type="hidden" name="goi_id" value="1" form="order-form-1">
                    <input type="hidden" name="thang" value="3" form="order-form-1">
                    <input type="hidden" name="price" value="<?= $goi_cb['price_3'] ?>" form="order-form-1">
                    <button type="submit" name="ngan_luong" class="btn btn-subscribe" form="order-form-1">????ng k??</button>
                </div>
            
        </div>
        <div id="box-annual" data-plan="annual" class="box plans">
            
                
                <div class="content">
                    <span class="title" style="margin-bottom: 0;">3 months</span>
                    <span class="price"><strong><?= number_format($goi_cb['price_2']) ?> VN??</strong><!-- <small>/month</small> --></span>
                    <!-- <span class="info"><b><?= number_format($goi_2['total']) ?> EUR</b> every <b>6</b> months</span> -->
                    <input type="hidden" name="goi_id" value="1" form="order-form-2">
                    <input type="hidden" name="thang" value="2" form="order-form-2">
                    <input type="hidden" name="price" value="<?= $goi_cb['price_2'] ?>" form="order-form-2">
                    <button type="submit" name="ngan_luong" class="btn btn-subscribe" form="order-form-2">????ng k??</button>
                </div>
            
        </div>
        <div id="box-monthly" data-plan="monthly" class="box plans">
            
                <div class="content">
                    <span class="title" style="margin-bottom: 0;">1 month</span>
                    <span class="price"><strong><?= number_format($goi_cb['price_1']) ?> VN??</strong><!-- <small>/month</small> --></span>
                    <!-- <span class="info"><b><?= number_format($goi_1['total']) ?> EUR</b> every month</span> -->
                    <input type="hidden" name="goi_id" value="1" form="order-form-3">
                    <input type="hidden" name="thang" value="1" form="order-form-3">
                    <input type="hidden" name="price" value="<?= $goi_cb['price_1'] ?>" form="order-form-3">
                    <button type="submit" name="ngan_luong" class="btn btn-subscribe" form="order-form-3">????ng k??</button>
                </div>
            
        </div>

        <div id="box-annual" data-plan="annual" class="box plans">
            
                <span class="badge badge-blue">G??i n??ng cao<br><?= $goi_pt['num'] ?> l???n t???i m???i ng??y</span>
                <div class="content">
                    <span class="title" style="margin-bottom: 0;">6 months</span>
                    <span class="price"><strong><?= number_format($goi_pt['price_3']) ?> VN??</strong><!-- <small>/month</small> --></span>
                    <!-- <span class="info"><b><?= number_format($goi_3['total']) ?></b> every <b>12</b> months</span> -->
                    <input type="hidden" name="goi_id" value="2" form="order-form-4">
                    <input type="hidden" name="thang" value="3" form="order-form-4">
                    <input type="hidden" name="price" value="<?= $goi_pt['price_3'] ?>" form="order-form-4">
                    <button type="submit" name="ngan_luong" class="btn btn-subscribe" form="order-form-4">????ng k??</button>
                </div>
            
        </div>
        <div id="box-annual" data-plan="annual" class="box plans">
            
                
                <div class="content">
                    <span class="title" style="margin-bottom: 0;">3 months</span>
                    <span class="price"><strong><?= number_format($goi_pt['price_2']) ?> VN??</strong><!-- <small>/month</small> --></span>
                    <!-- <span class="info"><b><?= number_format($goi_2['total']) ?> EUR</b> every <b>6</b> months</span> -->
                    <input type="hidden" name="goi_id" value="2" form="order-form-5">
                    <input type="hidden" name="thang" value="2" form="order-form-5">
                    <input type="hidden" name="price" value="<?= $goi_pt['price_2'] ?>" form="order-form-5">
                    <button type="submit" name="ngan_luong" class="btn btn-subscribe" form="order-form-5">????ng k??</button>
                </div>
            
        </div>
        <div id="box-monthly" data-plan="monthly" class="box plans">
            
                <div class="content">
                    <span class="title" style="margin-bottom: 0;">1 month</span>
                    <span class="price"><strong><?= number_format($goi_pt['price_1']) ?> VN??</strong><!-- <small>/month</small> --></span>
                    <!-- <span class="info"><b><?= number_format($goi_1['total']) ?> EUR</b> every month</span> -->
                    <input type="hidden" name="goi_id" value="2" form="order-form-6">
                    <input type="hidden" name="thang" value="1" form="order-form-6">
                    <input type="hidden" name="price" value="<?= $goi_pt['price_1'] ?>" form="order-form-6">
                    <button type="submit" name="ngan_luong" class="btn btn-subscribe" form="order-form-6">????ng k??</button>
                </div>
            
        </div>
    </div>
</div>