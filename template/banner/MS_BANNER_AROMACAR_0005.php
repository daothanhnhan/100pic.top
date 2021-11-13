<?php 
	$khuyen_mai = $action->getList('product', 'product_hot', '1', 'product_id', 'desc', '', '', '');//var_dump($khuyen_mai);//die('tuan');
?>
<style>
.gb-sale {
	position: fixed;
	bottom: 0;
	left: 0;
	width: 300px
}
.gb-close {
	position: absolute;
	right: 10px;
	top: 0;
	color: #fff;
	font-size: 38px;
	cursor: pointer;
}
</style>
<?php 
if (!empty($khuyen_mai)) { 
	$item = $khuyen_mai[0];
    if ($khuyen_mai[0]['product_img'] == '') {
        $link_anh_sale = $khuyen_mai[0]['product_img_1'];
    } else {
        $link_anh_sale = '/images/'.$khuyen_mai[0]['product_img'];
    }
?>
<div class="gb-sale" id="popup-sale">
	<span class="gb-close" onclick="closef()">&times</span>
	<img src="<?= $link_anh_sale ?>" alt="" style="width: 100%;" data-toggle="modal" data-target="#popup-sale-img" onclick="img_sort_sale(<?= $item['product_id'] ?>)">
</div>
<?php } ?>
<?php 
if (!empty($khuyen_mai)) { 
	$item = $khuyen_mai[0];
?>
<div class="modal fade" id="popup-sale-img" role="dialog">
    <div class="modal-dialog info_popup">
        <!-- Modal content-->
        <div class="modal-content">

            <div class="modal-body">
                <div class="gb-bonshe-products-item">

                    <?php include DIR_PRODUCT."MS_PRODUCT_AROMACAR_0020.php";?>


                </div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
            </div>
        </div>

    </div>
</div>
<?php } ?>
<script>
	function closef () {
		document.getElementById("popup-sale").style.display = "none";
	}
</script>
<script>
    function img_sort_sale (id) {
        load_img_sale(id)
        setTimeout(function(){ $('.pictures_1').tjGallery(); }, 1000);
    }
    function load_img_sale (id_2) {
        // alert(id_2);
        var xhttp = new XMLHttpRequest();
          xhttp.onreadystatechange = function() {
            if (this.readyState == 4 && this.status == 200) {
             document.getElementById("detail-sale").innerHTML = this.responseText;
            }
          };
          xhttp.open("GET", "/functions/ajax/load_img.php?id="+id_2, true);
          xhttp.send();
    }
</script>