<style>
.gb-breadcrum ul li a:after {
    display: none;
}
</style>
<div class="gb-breadcrum">
   <!--  <ul class="breadcrumb">
        <li><a href=""><i class="fa fa-home"></i></a></li>
        <li><a href="">Tin tức</a></li>
    </ul> -->
    <?php if ($use_breadcrumb) { ?>
        <!-- Breadcrumbs -->
        <ul class="breadcrumb">
            <li><a href="/"><i class="fa fa-home"></i></a></li>
            <li><a href="/<?= $breadcrumb_url ?>"><?= $breadcrumb_name ?></a></li>
            <li><a href="#"><?= $title ?></a></li>
        </ul>
        <!-- End breadcrumbs -->
        <?php } else { ?>
        <!-- Breadcrumbs -->
        <ul class="breadcrumb">
            <li><a href="/"><i class="fa fa-home"></i></a></li>
            <li>
            	<a href="#">
	            	<?php
	            		if($_GET['page'] == 'san-pham'){
	            			echo "Tất cả sản phẩm";
	            		}else if($_GET['page'] == 'thanh-toan'){
                            echo "Thanh toán";
                        }else if($_GET['page'] == 'tin-tuc'){
                            echo "Tin tức";
                        }else{
	            			echo $title;
	            		}
	            	?>
            	</a>
        	</li>
        </ul>
        <!-- End breadcrumbs -->
        <?php } ?>
</div>