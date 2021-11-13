<div class="gb-addtocart">
    <button type="button" name="add-to-cart" class="single_add_to_cart_button button alt btn_addCart" onclick="load_url('<?php echo $row1['product_id'];?>', '<?php echo $row1['product_name'];?>', '<?php echo $row1['product_price']-($row1['product_price']*($row1['product_price_sale']/100));?>')"">
    	Thêm vào giỏ hàng
    </button>
</div>