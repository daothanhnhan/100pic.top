<footer class="site-footer footer-default">

    <div class="footer-main-content">

        <div class="container">

            <!--FOOTER HEADE-->

            <div class="row">

                <div class="col-md-3">

                    <?php include DIR_CONTACT."MS_CONTACT_AROMACAR_0001.php";?>

                </div>

                <div class="col-md-3">

                    <div class="footer-3">

                        <h3>Thông tin</h3>

                        <ul>

                            <?= $rowConfig['content_home6'] ?>

                        </ul>

                    </div>

                </div>

                <div class="col-md-2">

                    <div class="footer-4">

                        <h3>Lượt truy cập</h3>

                        <!-- <ul>

                            <li><a href="/lien-he">Liên hệ</a></li>

                            <li><a href="#">Đổi trả hàng</a></li>

                            <li><a href="#">Sơ đồ trang</a></li>

                        </ul> -->

                        <!-- Histats.com  (div with counter) -->
                        <div id="histats_counter"></div>

                        <!-- Histats.com  START  (aync)-->

                        <!-- <script type="text/javascript">
                            var _Hasync = _Hasync || [];

                            _Hasync.push(['Histats.start', '1,4055086,4,438,112,75,00011111']);

                            _Hasync.push(['Histats.fasi', '1']);

                            _Hasync.push(['Histats.track_hits', '']);

                            (function () {

                                var hs = document.createElement('script');
                                hs.type = 'text/javascript';
                                hs.async = true;

                                hs.src = ('//s10.histats.com/js15_as.js');

                                (document.getElementsByTagName('head')[0] || document.getElementsByTagName('body')[
                                    0]).appendChild(hs);

                            })();
                        </script> -->
						<?php include DIR_OTHER."MS_OTHER_AROMACAR_0002.php";?>
                        <noscript><a href="/" target="_blank"><img src="//sstatic1.histats.com/0.gif?4055086&101" alt=""
                                    border="0"></a></noscript>

                        <!-- Histats.com  END  -->



                    </div>

                </div>

                <div class="col-md-4">

                    <div class="footer-3 ">
                        <h3>Phân Nhóm</h3>
                        <!-- <iframe src="https://www.facebook.com/plugins/page.php?href=https%3A%2F%2Fwww.facebook.com%2FAromaCarVietnam%2F&tabs=timeline&width=340&height=200&small_header=true&adapt_container_width=true&hide_cover=false&show_facepile=true&appId=115637562511563" width="100%" height="200" style="border:none;overflow:hidden" scrolling="no" frameborder="0" allowTransparency="true" allow="encrypted-media"></iframe> -->
                        <div class="row">
                            <div class="col-md-6 col-sm-6 col-xs-6">
                                <ul>

                                    <li><a href="/">Banner</a></li>

                                    <li><a href="#">Poster</a></li>

                                    <li><a href="#">Cover Facbook</a></li>

                                    <li><a href="#">Coupon</a></li>

                                </ul>
                            </div>
                            <div class="col-md-6 col-sm-6 col-xs-6">
                                <ul>

                                    <li><a href="/">Slide</a></li>

                                    <li><a href="#">Link Game</a></li>

                                    <li><a href="#">Member card</a></li>

                                    <li><a href="#">Menu</a></li>

                                </ul>
                            </div>
                        </div>
                    </div>

                </div>

            </div>



            <!--FOOTER BOTTOM-->

            <div class="gb-footer-bottom">

                <div class="row">

                    <div class="col-md-6">

                        <div class="footer-6">

                            <ul>

                                <li><img src="../../images/thanhtoan/skrill.png" alt="" class="img-responsive"></li>

                                <li><img src="../../images/thanhtoan/master.png" alt="" class="img-responsive"></li>

                                <li><img src="../../images/thanhtoan/visa.png" alt="" class="img-responsive"></li>

                                <li><img src="../../images/thanhtoan/american.png" alt="" class="img-responsive"></li>

                            </ul>

                        </div>

                    </div>

                    <div class="col-md-6">

                        <div class="footer-7">

                            <?php include DIR_SOCIAL."MS_SOCIAL_AROMACAR_0001.php";?>

                        </div>

                    </div>

                </div>

            </div>

        </div>

    </div>

    <!-- <div class="copyright-area">

        <div class="container">

            <div class="copyright-content">

                <p class="copyright-text">@ 2017 Copyright Aroma Car Vietnam</p>

            </div>

        </div>

    </div> -->

</footer>
<script>
    function img_sort (id) {
        load_img(id, id)
        setTimeout(function(){ $('.pictures_1').tjGallery(); }, 1000);
    }
    function load_img (id_1, id_2) {
        // alert(id_2);
        var xhttp = new XMLHttpRequest();
          xhttp.onreadystatechange = function() {
            if (this.readyState == 4 && this.status == 200) {
             document.getElementById("detail-"+id_1).innerHTML = this.responseText;
            }
          };
          xhttp.open("GET", "/functions/ajax/load_img.php?id="+id_2, true);
          xhttp.send();
    }

    function numf () {
        var xhttp = new XMLHttpRequest();
          xhttp.onreadystatechange = function() {
            if (this.readyState == 4 && this.status == 200) {
             var max = this.responseText;

                if (max == 'max') {
                    alert('Bạn đã hết quyền download.');
                    location.reload();
                }
            }
          };
          xhttp.open("GET", "/functions/ajax/check_max.php", true);
          xhttp.send();
    }

    $(window).on('load', function () {
        setTimeout(function(){
            $("body > img:nth-last-child(3)").css("display", "none");
			$("body > img:nth-last-child(2)").css("display", "none");
            $("body > img:last-child").css("display", "none");
        }, 1000);
    })
</script>

<?php 
    if (isset($_SESSION['user_id_gbvn'])) {
        $_SESSION['login'] = 'roi';
    } else {
        $_SESSION['login'] = 'chua';
    }
?>