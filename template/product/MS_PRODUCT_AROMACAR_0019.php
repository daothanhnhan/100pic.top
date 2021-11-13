

<div class="pictures_tab row">
    <h2 class="tag-h2">Cover facebook</h2>
    <div class="img_sub">
        <img src="/images/i_1.jpg" alt="Avatar"class="image_sub"
            style="width:100%">
        <div class="info-hover">
        
            <div class="tt-middle">
                <h3>Icons collection for business card</h3>
            </div>
        </div>

    </div>

    <div class="img_sub">
        <img src="/images/i_1.jpg" alt="Avatar"class="image_sub" style="width:100%">
        <div class="info-hover">
            <div class="middle">
                <ul>
                    <li><i class="fa fa-heart-o" aria-hidden="true">
                            <div class="tooltip__conten">Like</div>
                        </i>


                    </li>
                    <li>
                        <i class="fa fa-download" aria-hidden="true" data-toggle="modal" data-target="#modal-3"
                            onclick="">
                            <div class="tooltip__conten1">11.1k</div>
                        </i>

                    </li>
                    <li><i class="fa fa-pinterest-p" aria-hidden="true">
                            <div class="tooltip__conten2">Save</div>
                        </i> </li>
                </ul>
                <!-- <div class="text">John Doe</div> -->
            </div>
            <div class="tt-middle">
                <h3>Icons collection for business card</h3>
            </div>
        </div>
    </div>
    <div class="img_sub">
        <img src="/images/i_2.jpg" alt="Avatar"class="image_sub" style="width:100%">
        <div class="info-hover">
            
            <div class="tt-middle">
                <h3>Icons collection for business card</h3>
            </div>
        </div>
    </div>
    <div class="img_sub">
        <img src="/images/i_3.jpg" alt="Avatar"class="image_sub" style="width:100%">
        <div class="info-hover">
            
            <div class="tt-middle">
                <h3>Icons collection for business card</h3>
            </div>
        </div>
    </div>
    <div class="img_sub">
        <img src="/images/i_4.jpg" alt="Avatar"class="image_sub" style="width:100%">
        <div class="info-hover">
            
            <div class="tt-middle">
                <h3>Icons collection for business card</h3>
            </div>
        </div>
    </div>
    <div class="img_sub">
        <img src="/images/i_5.jpg" alt="Avatar"class="image_sub" style="width:100%">
        <div class="info-hover">
            
            <div class="tt-middle">
                <h3>Icons collection for business card</h3>
            </div>
        </div>
    </div>
    <div class="img_sub">
        <img src="/images/i_6.jpg" alt="Avatar"class="image_sub" style="width:100%">
        <div class="info-hover">
            
            <div class="tt-middle">
                <h3>Icons collection for business card</h3>
            </div>
        </div>
    </div>
    <div class="img_sub">
        <img src="/images/i_7.jpg" alt="Avatar"class="image_sub" style="width:100%">
        <div class="info-hover">
            
            <div class="tt-middle">
                <h3>Icons collection for business card</h3>
            </div>
        </div>
    </div>
    <div class="img_sub">
        <img src="/images/i_8.jpg" alt="Avatar"class="image_sub" style="width:100%">
        <div class="info-hover">
            
            <div class="tt-middle">
                <h3>Icons collection for business card</h3>
            </div>
        </div>
    </div>

</div>
<div class="modal fade" id="popup3" role="dialog">
    <div class="modal-dialog info_popup">
        <!-- Modal content-->
        <div class="modal-content">

            <div class="modal-body">
                <div class="gb-bonshe-products-item">

                    <?php include DIR_PRODUCT."MS_PRODUCT_AROMACAR_0011.php";?>


                </div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
            </div>
        </div>

    </div>
</div>
<div class="modal fade" id="modal-3" role="dialog">
    <div class="modal-dialog1 info_popup">
        <!-- Modal content-->
        <div class="modal-content">

            <div class="modal-body">
                <div class="gb-bonshe-products-item">

                    <?php include DIR_PRODUCT."MS_PRODUCT_AROMACAR_0013.php";?>


                </div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
            </div>
        </div>

    </div>
</div>
<script>
    // waiting for loading page
    $(window).on('load', function () {
        $('.pictures_tab').tjGallery();
    })

    // call desrtoy
    $('#destroy').click(function () {
        $('.pictures_tab').tjGallery('clear');
        $('#build').show();
    });

    // reinit after destroy
    $('#build').click(function () {
        $('.pictures_tab').tjGallery();
    })
</script>