<?php 
    if (!isset($_SESSION['user_id_gbvn'])) {
        header('location: /');
    }
    if (!isset($_GET['trang'])) {
        header('location: /');
    }
    if (!isset($_GET['search'])) {
        header('location: /');
    }
    $country = $action->getList('country', '', '', 'id', 'asc', '', '', '');
// var_dump($_SERVER['HTTP_REFERER']);
    function dat_goi () {
        global $conn_vn;
        $action = new action();
        $name = $_POST['name'];
        $email = $_POST['email'];
        $address = $_POST['address'];
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
            // echo 'Bạn đã đặt gói thành công.';
        } else {
            
            // echo 'Lỗi, mời bạn thử lại.';
            echo '<script>alert(\'Đã có lỗi mời bạn thử lại.\');window.location.href=\'/thanh-toan\';</script>;';
        }
    }
    //////////////////////////////
    include 'nganluong/config.php';
    include 'nganluong/lib/nganluong.class.php';
    if (isset($_POST['ngan_luong'])) {
        dat_goi();
        $receiver=RECEIVER;
        //Mã đơn hàng 
        $order_code='NL_'.time();
        //Khai báo url trả về 
        $return_url= "https://100pic.top/nganluong/success1.php";
        // Link nut hủy đơn hàng
        $cancel_url= $_SERVER['HTTP_REFERER'];  
        $notify_url = "https://100pic.top/nganluong/success1.php";
        //Giá của cả giỏ hàng 
        $txh_name =$_POST['name'];  
        $txt_email =$_POST['email'];    
        $txt_phone =$_POST['phone'];    
        $price =(int)$_POST['price'];     
        //Thông tin giao dịch
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
        //Khai báo đối tượng của lớp NL_Checkout
        $nl= new NL_Checkout();
        $nl->nganluong_url = NGANLUONG_URL;
        $nl->merchant_site_code = MERCHANT_ID;
        $nl->secure_pass = MERCHANT_PASS;
        //Tạo link thanh toán đến nganluong.vn
        $url= $nl->buildCheckoutUrlExpand($return_url, $receiver, $transaction_info, $order_code, $price, $currency, $quantity, $tax, $discount , $fee_cal,    $fee_shipping, $order_description, $buyer_info , $affiliate_code);
        //$url= $nl->buildCheckoutUrl($return_url, $receiver, $transaction_info, $order_code, $price);
        
        
        //echo $url; die;
        if ($order_code != "") {
            //một số tham số lưu ý
            //&cancel_url=http://yourdomain.com --> Link bấm nút hủy giao dịch
            //&option_payment=bank_online --> Mặc định forcus vào phương thức Ngân Hàng
            $url .='&cancel_url='. $cancel_url . '&notify_url='.$notify_url;
            //$url .='&option_payment=bank_online';
            
            echo '<meta http-equiv="refresh" content="0; url='.$url.'" >';
            //&lang=en --> Ngôn ngữ hiển thị google translate
        }
    }

    $goi = $action->getDetail('package', 'id', $_GET['trang']);
    if ($_GET['search']==1) {
        $gia_goi = $goi['price_1'];
    }
    if ($_GET['search']==2) {
        $gia_goi = $goi['price_2'];
    }
    if ($_GET['search']==3) {
        $gia_goi = $goi['price_3'];
    }
?>

<div class="container">
    <div class="row">
        <div class="col-md-12">
            <h2 class="tt-chuyenkhoan">Enter your payment details</h2>
            <p class="p-chuyenkhoan"><b>Basic information on Data Protection </b>100pic Company collects your data for
                the management and
                execution of your subscription. This data will not be given to third parties from the company, only in
                cases of legal requirement.</p>
            <div class="preagreement__billing-information mg-bottom-lv3">
                <h4 class="font-lg mg-bottom-lv3">Billling information</h4>
                <form action="" method="post" id="order-form">
                    <input type="hidden" name="user_id" value="<?= $_SESSION['user_id_gbvn'] ?>">
                    <input type="hidden" name="goi_id" value="<?= $_GET['trang'] ?>">
                    <input type="hidden" name="thang" value="<?= $_GET['search'] ?>">
                    <fieldset class="fieldset">
                        <label for="customer_name">
							<span>Customer code</span>
                            <input type="text" name="name" id="customer_name" class="field" tabindex="1"
                                placeholder="John Smith" value="<?= $user_info['user_id'] ?>" >
                        </label>

                        <label for="billing_email">
                            <span>*Billing email</span>
                            <input type="email" name="email" id="billing_email" class="field"
                                value="<?= $user_info['user_email'] ?>" tabindex="2"
                                placeholder="john.smith@example.com" required="">
                        </label>

                        <label for="billing_address1" style="display:none;">
                            <span>*Billing address</span>
                            <input type="text" name="address" id="billing_address1" class="field " value="" tabindex="3"
                                placeholder="5th Avenue" >
                        </label>

                        <!-- <label for="country" class="select">
                            <span>*Country</span>
                            <div id="country" class="field US">
                                <select id="country_code_user" name="country" tabindex="5" class="field VN">
                                    <?php foreach ($country as $item) { ?>
                                    <option value="<?= $item['name'] ?>"><?= $item['name'] ?></option>
                                    <?php } ?>
                                </select>
                            </div>
                        </label>

                        <label for="city">
                            <span>*City</span>
                            <input type="text" name="city" id="city" class="field " value="" required="" tabindex="6"
                                placeholder="New York">
                        </label> -->

                        <!-- <label for="special_tax" class="checkbox checkbox--sm es_data" style="display: none;">
                        <span for="special_tax">Fiscal residency in Canary Island, Ceuta or Melilla.</span>
                        <input type="checkbox" name="special_tax" id="special_tax" class="field">
                        <div class="checkbox__indicator"><i class="flaticon-check icon"></i></div>
                    </label>

                    <label for="special_tax_company" class="checkbox checkbox--sm" id="special_tax_company_wrapper"
                        style="display: none;">
                        <span for="special_tax_company">Are you a company?</span>
                        <input type="checkbox" name="special_tax_company" id="special_tax_company" class="field"
                            value="on">
                        <div class="checkbox__indicator"><i class="flaticon-check icon"></i></div>
                    </label>

                    <label for="vat_number" class="eu_data" style="display: none;">
                        <span data-label-for="ES" style="display: none">*NIF/CIF/NIE <i>(ES)</i></span>
                        <span data-label-for="EU" style="display: none">*VIES VAT number (Optional) <i
                                id="country_code_vat"></i></span> 
                        <input type="text" name="vat_number" id="vat_number" class="field " value="" tabindex="7">
                    </label>-->
                    </fieldset>
                </form>

                <form action="" method="post" id="order-form-2" style="display: none;">
                    <input type="hidden" name="user_id" value="<?= $_SESSION['user_id_gbvn'] ?>">
                    <input type="hidden" name="goi_id" value="<?= $_GET['trang'] ?>">
                    <input type="hidden" name="thang" value="<?= $_GET['search'] ?>">
                    <input type="hidden" name="price" value="<?= $gia_goi ?>">
                    <input type="hidden" name="phone" value="0933335554">
                    <fieldset class="fieldset">
                        <label for="customer_name">
                            <span>Customer code</span>
                            <input type="text" name="name" id="customer_name" class="field" tabindex="1"
                                placeholder="John Smith" value="<?= $user_info['user_id'] ?>" >
                        </label>

                        <label for="billing_email">
                            <span>*Billing email</span>
                            <input type="email" name="email" id="billing_email" class="field"
                                value="<?= $user_info['user_email'] ?>" tabindex="2"
                                placeholder="john.smith@example.com" required="">
                        </label>

                        <label for="billing_address1" style="display:none;">
                            <span>*Billing address</span>
                            <input type="text" name="address" id="billing_address1" class="field " value="" tabindex="3"
                                placeholder="5th Avenue" >
                        </label>

                        
                    </fieldset>
                </form>

                <p class="error error--message payment-errors" id="billing-errors">
                </p>
            </div>
            <div class="preagreement__billing-information mg-bottom-lv3">
                <h4 class="font-lg mg-bottom-lv3">Payment information</h4>


                <div class="gb-prodct-top-tab">
                    <div class="panel-heading">
                        <!--NAV ICONS-->

                        <ul class="nav nav-tabs product-menu-content">
                            <li>
                                <a href="#tab2default" data-toggle="tab">
                                    <div class="menu_con1-session__display-hour"></div>
                                </a>
                            </li>
                            <li class="active" onclick="nut_pay(1)">
                                <a href="#tab3default" data-toggle="tab">
                                    <div class="menu_con1-session__display-hour">Chuyển khoản</div>
                                </a>
                            </li>
                            <li onclick="nut_pay(1)">
                                <a href="#tab4default" data-toggle="tab">
                                    <div class="menu_con1-session__display-hour">Momo</div>
                                </a>
                            </li>
                            <li onclick="nut_pay(2)">
                                <a href="#tab5default" data-toggle="tab">
                                    <div class="menu_con1-session__display-hour">Thanh toán online</div>
                                </a>
                            </li>
                        </ul>
                    </div>
                </div>

                <div class="panel-body">
                    <div class="tab-content">
                        <div class="row tab-pane fade in " id="tab2default">
                            <h4 class="chuyenkhoan-tt">Thông tin chuyển khoản</h4>
                            <p>
                                Người nhận1: Công ty Cổ Phần Chứng Khoán Đà Nẵng<br>
                                Số tài khoản nhận: 5611.0000.867<br>
                                Tại ngân hàng BIDV – Chi nhánh Đà Nẵng<br>
                                Nội dung: Chuyen tien 024C00XXXX, [Tên khách hàng] tai DNSC
                            </p>
                            <!-- <fieldset class="fieldset">
                                <label for="customer_name">
                                    <span>Số tài khoản</span>
                                    <input type="number" name="customer_name" id="customer_name" class="field" value=""
                                        tabindex="1" placeholder="John Smith" required="">
                                </label>

                                <label for="billing_email">
                                    <span>Ngày mở thẻ</span>
                                    <input type="date" name="" id="" class="field" value="XX/YY/ZZZZ" tabindex="2"
                                        placeholder="john.smith@example.com" required="">
                                </label>
                            </fieldset> -->
                        </div>

                        <div class="row tab-pane fade in active" id="tab3default">
                        <div class="info-tab">
                            <h4 class="chuyenkhoan-tt">Thông tin chuyển khoản</h4>
                            <p>
                                <?= str_replace("\r\n", "<br>", $rowConfig['content_home8']) ?>
                            </p>
                        </div>
                            <!-- <fieldset class="fieldset">
                                <label for="customer_name">
                                    <span>Số tài khoản</span>
                                    <input type="number" name="customer_name" id="customer_name" class="field" value=""
                                        tabindex="1" placeholder="John Smith" required="">
                                </label>

                                <label for="billing_email">
                                    <span>Ngày mở thẻ</span>
                                    <input type="date" name="" id="" class="field" value="XX/YY/ZZZZ" tabindex="2"
                                        placeholder="john.smith@example.com" required="">
                                </label>
                            </fieldset> -->


                        </div>
                        <div class="row tab-pane fade in" id="tab4default">
                            <!--  -->
                            <div class="info-tab">
                            <img src="/images/<?= $rowConfig['banner1'] ?>" style="height: 250px;">

                            </div>
                        </div>
                        <div class="row tab-pane fade in" id="tab5default">
                            <p>Thanh toán online qua Ngân Lượng</p>
                        </div>
                    </div>
                </div>

            </div>
            <button type="submit" class="btn btn-success" form="order-form" id="nut-1">Mua gói</button>
            <button type="submit" class="btn btn-success" form="order-form-2" id="nut-2" name="ngan_luong" style="display: none;">Mua gói</button>
        </div>
        <div class="col-md-5" style="display: none;">
            <div class="preagreement__billing-information mg-bottom-lv3">
                <h4 class="font-lg mg-bottom-lv3">You're buying:</h4>
                <div class="box box--plan mg-bottom-lv3">
                    <div class="box__group">
                        <div class="row">
                            <img class="block logo mg-bottom-lv2 mg-right-lv3-i" width="136"
                                src="https://fpprofile.cdnpk.net/img/preagreement-products/isotipes/fr-premium-1.svg?key=11ff77964068337ce12e113fef40d9fe2020022910"
                                alt="Logo">
                            <div class="col mg-none-i pd-none-i">
                                <label class="dropdown dropdown--no-border dropdown--width-auto mg-none">
                                    <select name="payment-plan" id="payment-plan">
                                        <option value="annual" selected="">Annual Premium Plan</option>
                                        <option value="monthly">Monthly Premium Plan</option>
                                    </select>
                                    <div class="dropdown__container">
                                        <p class="dropdown__button">
                                            Annual Premium Plan
                                        </p>
                                        <div class="dropdown__select">
                                            <div class="scrollable">
                                                <ul>
                                                    <li data-value="annual">Annual Premium Plan</li>
                                                    <li data-value="monthly">Monthly Premium Plan</li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                </label>
                                <a href="#" id="payment-coupon-button" class="toggleClass link bold"
                                    data-toggle="#payment-coupon" data-toggle-class="hidden">Do you have a coupon?</a>
                            </div>
                        </div>

                        <div id="payment-coupon" class="payment-coupon mg-top-lv2 hidden">
                            <input type="text" data-frequency="annual" name="coupon" id="coupon" value=""
                                placeholder="Insert your coupon here."
                                class="hascontent uppercase font-md regular text__gray--8">
                            <span class="payment-coupon__close" id="payment-coupon-close"></span>
                        </div>

                        <div id="payment-coupon-applied-message"
                            class="payment-coupon__message notification notification--success hide">
                            <button id="payment-coupon-remove" class="notification__close button floatr"
                                style="background-color: transparent; color: white">
                                <i class="flaticon-cross"></i>
                            </button>
                            <div class="notification__state">
                                <i class="flaticon-check"></i>
                            </div>
                            <div class="notification__content">
                            </div>
                        </div>

                        <div class="error error--message hide" id="payment-coupon-error-message" style="margin: 0px">
                        </div>
                    </div>

                    <div class="box__group">
                        <div class="row row--vertical-center">
                            <div class="col__xs--12 clearfix bold" id="total-payment">
                                <span class="font-md text__gray--8" data-frequency="annual">Annual payment</span>
                                <span class="font-md text__gray--8 hide" data-frequency="monthly">Monthly payment</span>
                                <span class="font-md text__gray--8 floatr" data-frequency="annual">89.99 EUR</span>
                                <span class="font-md text__gray--8 floatr hide" data-frequency="monthly">9.99 EUR</span>
                            </div>

                            <div class="col__xs--12 mg-none-i clearfix hide bold" id="total-first-payment">
                                <span class="font-md text__gray--8" id="total-first-payment-text">First payment</span>
                                <span class="font-md text__gray--8 floatr" id="total-first-payment-amount"></span>
                            </div>
                        </div>
                    </div>
                </div>

            </div>
        </div>
    </div>
</div>
<script type="text/javascript">
    $("#order-form").submit(function (e) {

        e.preventDefault();

        var form = $(this);
        var url = "/functions/ajax/order.php";

        setTimeout(function () {
            clear();
        }, 1000);

        // $("#cafe-loading").show();

        $.ajax({
            type: "POST",
            url: url,
            data: form.serialize(), // serializes the form's elements.
            success: function (data) {
                alert(data); // show response from the php script.
                // if (data == 0) {
                //  alert('Email hoặc mật khẩu không đúng');
                // } else {
                //  alert('Bạn đã đăng nhập thành công');
                //  location.reload();
                // }
            },
            complete: function () {
                // $("#cafe-loading").hide();
            }
        });

    });

    function clear() {
        document.getElementById("customer_name").value = '';
        // document.getElementById("birthday").value = '';
        // document.getElementById("email").value = '';
        // document.getElementById("phone").value = '';
    }
</script>

<script>
    function nut_pay (d) {
        // alert(d);
        if (d == 1) {
            document.getElementById('nut-1').style.display = 'block';
            document.getElementById('nut-2').style.display = 'none';
            document.getElementById('order-form').style.display = 'block';
            document.getElementById('order-form-2').style.display = 'none';
        } else {
            document.getElementById('nut-1').style.display = 'none';
            document.getElementById('nut-2').style.display = 'block';
            document.getElementById('order-form').style.display = 'none';
            document.getElementById('order-form-2').style.display = 'block';
        }
    }
</script>