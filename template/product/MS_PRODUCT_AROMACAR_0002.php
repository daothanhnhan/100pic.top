<div class="item-price">
    <div class="row">
		<div class="col-md-8 col-sm-8 col-xs-8">
			<p class="news-price"><?= number_format($row1['product_price']) ?> VNĐ</p>
			<?php
				if($row1['product_price_sale'] != 0){
			?>
				<p class="old-price"><?= number_format($row1['product_price']-($row1['product_price']*($row1['product_price_sale']/100))) ?> VNĐ</p>	
			<?php	
				}
			?>
		</div>
		<div class="col-md-4  col-sm-4 col-xs-4">
			<p class="sale-percent">-<?= $row1['product_price_sale'] ?>%</p>
		</div>
	</div>
</div>