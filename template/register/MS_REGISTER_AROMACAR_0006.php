<div id="tab-login" class="tabs__content">
    <!-- <p class="font-lg text__scale-gray--8 alignc mg-bottom-lv1">with your social network</p>

    <div class="profile-login__social row">
        <div class="col">
            <button class="button button--md button--flat button--google button--icon button--icon--left full-width">
                <i class="icon icon--md icon--mg-md icon--google push-center-i  fa fa-google"></i>
            </button>
        </div>		

        <div class="col">
            <button class="button button--md button--flat button--facebook button--icon button--icon--left full-width">
                <i class="icon icon--md icon--mg-md icon--facebook push-center-i  fa fa-facebook"></i>
            </button>
        </div>

        <div class="col">
            <button class="button button--md button--flat button--twitter button--icon button--icon--left full-width">
                <i class="icon icon--md icon--mg-md icon--twitter push-center-i  fa fa-twitter"></i>
            </button>
        </div>
    </div>

    <div class="profile-login__hr">
        <span>or</span>
    </div> -->

    <form id="login-form" class="gr-auth__login-form" action="https://www.freepik.com/profile/login" method="post">
        <input type="hidden" name="captcha" value="invisible">

        <div class="group profile-login__username">
            <div class="group__context">
                <i class="icon icon--sm icon--mg-md icon--user  fa fa-user-o"></i>
            </div>
            <input id="login-username" type="email" name="email" placeholder="Email" autofocus="">					
        </div>

        <div class="group profile-login__password">
            <div class="group__context">
                <i class="icon icon--sm icon--mg-md icon--lock  fa fa-lock"></i>
            </div>
            <div class="group__input password">
                <input id="login-password" type="password" name="password" placeholder="Password">

                <div class="password__toggle">
                    <i class="inactive icon icon--md icon--mg-md icon--eye fa fa-eye"></i>
                    <i class="active icon icon--md icon--mg-md icon--eye-line-through fa fa-eye-slash"></i>
                </div>
            </div>
        </div>

        <div class="message"></div>

        <div class="row row--vertical-center row--space-between mg-none">
            <label class="checkbox checkbox--sm">
                <input type="checkbox" name="rememberme">
                <span class="checkbox__indicator"><i class="icon icon--check fa fa-check"></i></span>              
                <span class="checkbox__link font-sm">Remember me</span>
            </label>

            <!-- <a class="font-sm text__general--text-secondary" href="#"><span class="medium tabs__link" data-tab="tab-forgot-password">Forgot your password?</span></a> -->
        </div>

        <div class="recaptcha" wid=""></div>

        <button type="submit" class="gr-auth__login-submit button button--fullwidth mg-bottom-lv2"><span>Log in</span></button>
        
        <p style="text-align: center;"><a href="/forget-pass" title="">Quên mật khẩu</a></p>
    </form>
</div>
<script type="text/javascript">
    $("#login-form").submit(function(e) {

    e.preventDefault(); 

    var form = $(this);
    var url = "/functions/ajax/login.php";

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
                alert('Email hoặc mật khẩu không đúng');
               } else {
                alert('Bạn đã đăng nhập thành công');
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