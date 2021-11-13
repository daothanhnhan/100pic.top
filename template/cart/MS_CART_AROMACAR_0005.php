<?php
    define('SITE_NAME', $_SERVER["HTTP_HOST"]);
    $products = $cart->getCart();
    $totalPrice = 0;
?>
<?php 
if (isset($_POST['send_mail'])){
    $email = $_POST['txtEmail'];
    $phone = $_POST['txtPhone'];
    $name = $_POST['txtName'];
    $address = $_POST['txtAddress'];
    $note = $_POST['txtNote'];
    $cart->payment1();
    $mail = new action_email();
    $title = 'Thông tin đơn hàng từ '.SITE_NAME;
    $content = 'Thông tin đặt hàng từ :<br>'.$name.'<br>Số điện thoại:  '.$phone.'<br>Email:  '.$email.'<br>Địa chỉ:  '.$address.'<br>Ghi chú:  '.$note;
    $gui_mail = $mail->email_send($email, $title,$content);
?>

    <script type="text/javascript">
        alert('Đặt hàng thành công');
        window.location.href="/";
    </script>
<?php } ?>
<div class="uni-checkout-body">
    <div class="container">
         <?php include DIR_BREADCRUMS."MS_BREADCRUMS_AROMACAR_0001.php";?>
        <div class="tg-container">
            <div id="primary">
                <div class="entry-thumbnail">
                    <div class="entry-content-text-wrapper clearfix">
                        <div class="entry-content-wrapper">
                            <div class="entry-content">
                                <div class="woocommerce">
                                    <div class="row">
                                        <form action="" method="POST" role="form" id="formPayment">
                                        <div class="vk-checkout-billing-left">
                                            <div class="col-md-6">
                                                <div class="woocommerce-billing-fields">
                                                    <h3>Thông tin thanh toán và nhận hàng</h3>
                                                    <div class="woocommerce-billing-fields__field-wrapper">
                                                        <div class="row">
                                                            <div class="col-md-12">
                                                                <p class="form-row form-row-last" >
                                                                    <label class=""><?php if($lang == "vn"){echo "Họ tên";}else{echo "Name";}?> <abbr class="required" title="required">*</abbr></label>
                                                                    <input type="text" class="input-text " name="txtName" id="inputTxtName"  placeholder="" value="">
                                                                </p>
                                                            </div>
                                                            <div class="col-md-12">
                                                                <p class="form-row form-row-last">
                                                                    <label class=""><?php if($lang == "vn"){echo "Số điện thoại";}else{echo "Phone";}?><abbr class="required" title="required">*</abbr></label>
                                                                    <input type="tel" class="input-text" name="txtPhone" id="inputTxtPhone" placeholder="" value="">
                                                                </p>
                                                            </div>
                                                            <div class="col-md-12">
                                                                <p class="form-row form-row-last">
                                                                    <label class="">Email <abbr class="required" title="required">*</abbr></label>
                                                                    <input type="email" class="input-text" name="txtEmail" id="inputTxtEmail" placeholder="" value="">
                                                                </p>
                                                            </div>
                                                        </div>
                                                        <p class="form-row form-row-last">
                                                            <label class=""><?php if($lang == "vn"){echo "Địa chỉ";}else{echo "Address";}?><abbr class="required" title="required">*</abbr></label>
                                                            <input type="text" class="input-text" name="txtAddress" id="inputTxtAddress" placeholder="" value="">
                                                        </p>
                                                        <p class="form-row form-row-last">
                                                            <label class=""><?php if($lang == "vn"){echo "Ghi chú";}else{echo "Notes";}?></label>
                                                            <textarea class="input-text" name="txtNote" id="inputTxtNote" placeholder="" ></textarea>
                                                        </p>
                                                    </div>
                                                </div>
                                            </div>

                                            <div class="col-md-6">
                                                <div class="vk-checkout-order-paypal">
                                                    <div id="order_review" class="woocommerce-checkout-review-order">
                                                        <div class="vk-checkout-order-left">
                                                            <h3><?php if($lang == "vn"){echo "Thông tin giỏ hàng";}else{echo "Cart Information";}?></h3>
                                                            <table class="shop_table woocommerce-checkout-review-order-table">
                                                                <thead>
                                                                    <tr>
                                                                        <th class="product-name"><?php if($lang == "vn"){echo "Sản phẩm";}else{echo "Product";}?></th>
                                                                        <th class="product-total"><?php if($lang == "vn"){echo "Đơn giá";}else{echo "Order";}?></th>
                                                                    </tr>
                                                                </thead>
                                                                <tbody>
                                                                    <?php
                                                                    if(!empty($_SESSION["shopping_cart"])){  
                                                                        $total = 0;  
                                                                        foreach($_SESSION["shopping_cart"] as $keys => $values){                             
                                                                    ?>
                                                                    <tr class="cart_item">
                                                                        <td class="product-name">
                                                                            <?php echo $values["product_name"]; ?>
                                                                        </td>
                                                                        <td class="product-total">
                                                                            <span class="woocommerce-Price-amount amount"><?php echo number_format($values["product_price"]); ?> VNĐ</span>
                                                                        </td>
                                                                    </tr>
                                                                    <?php 
                                                                        $total = $total + ($values["product_quantity"] * $values["product_price"]);  
                                                                    }
                                                                    ?>
                                                                </tbody>
                                                                <tfoot>
                                                                    <tr class="order-total">
                                                                        <th style="font-weight: bold;">Tổng tiền</th>
                                                                        <th style="font-weight: bold;">
                                                                            <span class="woocommerce-Price-amount amount">
                                                                                <?php echo number_format($total, 2); ?> VNĐ
                                                                            </span>
                                                                        </th>
                                                                    </tr>
                                                                    </tfoot>
                                                                        <?php } ?>
                                                            </table>
                                                        </div>

                                                        <div id="payment" class="woocommerce-checkout-payment">
                                                            <div class="img-thanhtoan">
                                                                <img src="/images/Radiance-8366-3-2.jpg" alt="">
                                                            </div>
                                                            <div class="form-row place-order">
                                                                <noscript>
                                                                    Since your browser does not support JavaScript, or it is disabled, please ensure you click the &lt;em&gt;Update Totals&lt;/em&gt; button before placing your order. You may be charged more than the amount stated above if you fail to do so.          &lt;br/&gt;&lt;input type="submit" class="button alt" name="woocommerce_checkout_update_totals" value="Update totals" /&gt;
                                                                </noscript>

                                                                <button type="submit" name="send_mail" class="btn btn-primary" id="submitPayment" style="padding:3px 30px; font-weight:bold; font-size:16px; margin-bottom:15px;    background-color: #33cccc;
    border-color: #33cccc;" ><?php if($lang == "vn"){echo "Hoàn tất mua hàng";}else{echo "Complete Shopping";}?></button>

                                                                <input type="hidden" id="wpnonce" name="_wpnonce" value="341d89a24a"><input type="hidden" name="_wp_http_referer" value="/structure-contruction/checkout/?wc-ajax=update_order_review">
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        </form>
                                        <div class="clearfix"></div>
                                    </div>
                                
                                </div>
                            </div><!-- .entry-content -->
                        </div>
                    </div>
                </div>
            </div> <!-- Primary end -->
        </div>
    </div>
</div>

<script>
    $(document).ready(function () {
        //------------------------checkout-----------------------------
        $('.woocommerce-info').on('click', function (e) {
            if($(e.target).is('.click-here-to-login')){
                $('.vk-form-woo-login').slideToggle();
                return false;
            }
            if($(e.target).is('.click-here-entry-code')){
                $('.vk-check-coupon').slideToggle();
                return false;
            }
        });
        $('.vk-checkout-billing-left').on('click', function (e) {
            if($(e.target).is('.checkbox-create-account')){
                $('.checkbox-create-account-form').slideToggle();
            }
        });
    });
</script>