
<div class="uni-cart-body">
    <div id="post" class="container">
        <?php include DIR_BREADCRUMS."MS_BREADCRUMS_AROMACAR_0001.php";?>
        <div class="entry-content">
            <form class="woocommerce-cart-form" method="post">
                <table class="woocommerce-cart-form__contents table shop_table_responsive">
                    <thead>
                    <tr>
                        <th class="product-remove">Action</th>
                        <th class="product-name">Tên sản phẩm</th>
                        <th class="product-price">Giá</th>
                        <th class="product-quantity">Số lượng</th>
                        <th class="product-subtotal">Tổng tiền</th>
                    </tr>
                    </thead>

                    <tbody>
                    <?php
                        if(!empty($_SESSION["shopping_cart"])){  
                            $total = 0;  

                            foreach($_SESSION["shopping_cart"] as $keys => $values){  
                    ?>
                    <tr class="woocommerce-cart-form__cart-item cart_item">
                        <td class="product-remove">
                            <button name="delete" class="btn btn-danger btn-xs delete" id="<?php echo $values["product_id"]; ?>" style="margin: 0px;">Remove</button>
                        </td>
                        <td class="product-name">
                            <a href="#"><?php echo $values["product_name"]; ?></a>
                        </td>
                        <td class="product-price">
                                <span class="woocommerce-Price-amount amount">
                                    <?php echo number_format($values["product_price"]); ?> VNĐ
                                </span>
                        </td>
                        <td class="product-quantity">
                            <div class="quantity">
                                <input type="text" name="quantity[]" id="quantity<?php echo $values["product_id"]; ?>" value="<?php echo $values["product_quantity"]; ?>" data-product_id="<?php echo $values["product_id"]; ?>" class="form-control quantity" />
                            </div>
                        </td>
                        <td class="product-subtotal">
                            <div class="woocommerce-Price-amount amount">
                                <?php echo number_format($values["product_quantity"] * $values["product_price"], 2); ?> VNĐ
                            </div>
                        </td>
                    </tr>
                    <?php  
                        $total = $total + ($values["product_quantity"] * $values["product_price"]);  
                        }  }
                    ?>  
                    </tbody>
                </table>
            </form>

            <div class="cart-collaterals">
                <div class="row">
                    <div class="col-md-6">
                        <div class="cart_totals">
                            <h2>tổng đơn hàng</h2>
                            <table class="shop_table shop_table_responsive">
                                <tbody>
                                <tr class="order-total">
                                    <th>Tổng tiền</th>
                                    <td><strong><span class="woocommerce-Price-amount amount"><span class="woocommerce-Price-currencySymbol"></span><?php echo number_format($total, 2); ?> VNĐ</span></strong> </td>
                                </tr>
                                </tbody>
                            </table>
                            <form method="post" action="/thanh-toan">  
                                <div class="wc-proceed-to-checkout">
                                    <input type="submit" name="place_order" class="checkout-button button alt wc-forward thanh-toan" value="TIẾN HÀNH THANH TOÁN"/> 
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<script>  
 $(document).ready(function(data){  
      $('.add_to_cart').click(function(){  
           var product_id = $(this).attr("id");  
           var product_name = $('#name'+product_id).val();  
           var product_price = $('#price'+product_id).val();  
           var product_quantity = $('#quantity'+product_id).val();  
           var action = "add";  
           if(product_quantity > 0)  
           {  
                $.ajax({  
                     url:"../functions/action_cart_tmp.php",  
                     method:"POST",  
                     dataType:"json",  
                     data:{  
                          product_id:product_id,   
                          product_name:product_name,   
                          product_price:product_price,   
                          product_quantity:product_quantity,   
                          action:action  
                     },  
                     success:function(data)  
                     {  
                          $('#order_table').html(data.order_table);  
                          $('.badge').text(data.cart_item);  
                          alert("Product has been Added into Cart");  
                     }  
                });  
           }  
           else  
           {  
                alert("Please Enter Number of Quantity")  
           }  
      });  
      $(document).on('click', '.delete', function(){  
           var product_id = $(this).attr("id");  
           var action = "remove";  
           if(confirm("Are you sure you want to remove this product?"))  
           {  
                $.ajax({  
                     url:"../functions/action_cart_tmp.php",  
                     method:"POST",  
                     dataType:"json",  
                     data:{product_id:product_id, action:action},  
                     success:function(data){  
                          $('#order_table').html(data.order_table);  
                          $('.badge').text(data.cart_item);
                          // alert(data.order_table);
                          // alert('success');
                     },
                     error:function(){
                        alert('loi.');
                     }  
                });  


           }  
           else  
           {  
                return false;  
           }  
      });  
      $(document).on('keyup', '.quantity', function(){  
           var product_id = $(this).data("product_id");  
           var quantity = $(this).val();  
           var action = "quantity_change";  
           if(quantity != '')  
           {  
                $.ajax({  
                     url :"../functions/action_cart_tmp.php",  
                     method:"POST",  
                     dataType:"json",  
                     data:{product_id:product_id, quantity:quantity, action:action},  
                     success:function(data){  
                          $('#order_table').html(data.order_table);  
                     }  
                });  


           }  
      });  
 });  
 </script>