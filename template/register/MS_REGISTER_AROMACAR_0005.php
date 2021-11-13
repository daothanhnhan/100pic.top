<div id="tab-register" class="tabs__content">
    <!-- <p class="font-lg text__scale-gray--8 alignc mg-bottom-lv1 campaign--hide">with your social network</p>
    <p class="medium text__scale-gray--8 alignc mg-bottom-lv1 campaign--show">Sign up with your social network</p>

    <div class="profile-login__social row">
        <div class="col">
            <button class="button button--md button--flat button--google button--icon button--icon--left full-width">
                <i class="icon icon--md icon--mg-md icon--google push-center-i fa fa-google"></i>
            </button>
        </div>		

        <div class="col">
            <button class="button button--md button--flat button--facebook button--icon button--icon--left full-width">
                <i class="icon icon--md icon--mg-md icon--facebook push-center-i fa fa-facebook"></i>
            </button>
        </div>
        <div class="col">
            <button class="button button--md button--flat button--twitter button--icon button--icon--left full-width">
                <i class="icon icon--md icon--mg-md icon--twitter push-center-i fa fa-twitter"></i>
            </button>
        </div>
    </div>

    <div class="profile-login__hr">
        <span>or</span>
    </div> -->
    
    <form id="register-form" class="gr-auth__register-form" action="https://www.freepik.com/profile/register" method="post" data-reload="false">
        <input type="hidden" name="captcha" value="invisible">
        <input id="token_recaptcha_register" type="hidden" name="token_recaptcha" value="">
        <input id="register-avatar" type="hidden" name="avatar" value="">

        <input type="hidden" id="register--twitter_id" name="twitter_id" value="0">
        <input type="hidden" id="register--language" name="language" value="en">

        <input type="hidden" id="register--utm_campaign" name="utm_campaign" value="">
        <input type="hidden" id="register--utm_medium" name="utm_medium" value="">
        <input type="hidden" id="register--utm_source" name="utm_source" value="">
        <input type="hidden" id="register--priority" name="priority" value="">

        <div class="group profile-login__username">
            <div class="group__context">
                <i class="icon icon--sm icon--mg-md icon--user fa fa-user-o"></i>
            </div>
            <input id="register-username" type="text" name="username" placeholder="Username" autofocus="" required="">				
        </div>

        <div class="group profile-login__username">
            <div class="group__context">
                <i class="icon icon--sm icon--mg-md icon--envelope fa fa-envelope-o"></i>
            </div>
            <input type="email" id="register-email" name="email" placeholder="Email" required="">					
        </div>

        <div class="group profile-login__password mg-none-i">
            <div class="group__context">
                <i class="icon icon--sm icon--mg-md icon--lock fa fa-lock"></i>
            </div>

            <div class="group__input password">
                <input id="register-password" type="password" name="password" placeholder="Password" required="">	

                <div class="password__toggle">
                    <i class="inactive icon icon--md icon--mg-md icon--eye"></i>
                    <i class="active icon icon--md icon--mg-md icon--eye-line-through"></i>
                </div>
            </div>
        </div>

        <!-- <label class="checkbox checkbox--sm">
			<input name="subscribe_newsletter" type="checkbox">
			<span class="checkbox__indicator">
				<i class="icon icon--xs icon--check fa fa-check"></i>
			</span>
			<span class="campaign--hide text__gray--7 checkbox__link font-xs">I do not wish to receive news and promotions from 100pic Company by email.</span>
			<span class="campaign--show text__gray--7 checkbox__link font-xs">Click here to subscribe and get an exclusive pack of 20 Premium resources for free.</span>
		</label> -->

        <div class="message mg-none-i"></div>

        <button type="submit" class="gr-auth__register-submit button button--fullwidth mg-bottom-lv3" id="gr-auth__registerHandler-submit-0" style="margin-top: 10px;"><span>Create your 100pic account</span></button>

        <!-- <p class="text__gray--7 font-sm alignc mg-none">Already have an account? <button class="tabs__link link bold" data-tab="tab-login">Sign in</button></p> -->
    </form>
</div>
<script type="text/javascript">
    $("#register-form").submit(function(e) {

    e.preventDefault(); 

    var form = $(this);
    var url = "/functions/ajax/register.php";

    // setTimeout(function(){ clear(); }, 1000);

    // $("#cafe-loading").show();

    $.ajax({
           type: "POST",
           url: url,
           data: form.serialize(), // serializes the form's elements.
           success: function(data)
           {
               // alert(data); // show response from the php script.
               if (data == 0) {
                alert('Email đã tồn tại.');
               } else if (data == 1) {
                alert('Có lỗi mời thử lại.');
               } else {
                alert('Bạn đã đăng ký thành công.');
                location.reload();
               }
           },
           complete: function(){
            // $("#cafe-loading").hide();
          }
         });

});

function clear () {
    document.getElementById("name").value = '';
    document.getElementById("birthday").value = '';
    document.getElementById("email").value = '';
    document.getElementById("phone").value = '';
}
</script>