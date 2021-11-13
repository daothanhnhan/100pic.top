<div id="tab-register" class="tabs__content">
    <p class="font-lg text__scale-gray--8 alignc mg-bottom-lv1 campaign--hide">with your social network</p>
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
    </div>
    
    <form id="gr-auth__register-form" class="gr-auth__register-form" action="https://www.freepik.com/profile/register" method="post" data-reload="false">
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
            <input id="register-username" type="text" name="username" placeholder="Username" autofocus="">				
        </div>

        <div class="group profile-login__username">
            <div class="group__context">
                <i class="icon icon--sm icon--mg-md icon--envelope fa fa-envelope-o"></i>
            </div>
            <input type="text" name="email" placeholder="Email">					
        </div>

        <div class="group profile-login__password mg-none-i">
            <div class="group__context">
                <i class="icon icon--sm icon--mg-md icon--lock fa fa-lock"></i>
            </div>

            <div class="group__input password">
                <input id="register-password" type="password" name="password" placeholder="Password">	

                <div class="password__toggle">
                    <i class="inactive icon icon--md icon--mg-md icon--eye"></i>
                    <i class="active icon icon--md icon--mg-md icon--eye-line-through"></i>
                </div>
            </div>
        </div>

        <label class="checkbox checkbox--sm">
			<input name="subscribe_newsletter" type="checkbox">
			<span class="checkbox__indicator">
				<i class="icon icon--xs icon--check fa fa-check"></i>
			</span>
			<span class="campaign--hide text__gray--7 checkbox__link font-xs">I do not wish to receive news and promotions from Freepik Company by email.</span>
			<span class="campaign--show text__gray--7 checkbox__link font-xs">Click here to subscribe and get an exclusive pack of 20 Premium resources for free.</span>
		</label>

        <div class="message mg-none-i"></div>

        <div><div class="grecaptcha-badge" data-style="bottomright" style="width: 256px; height: 60px; display: block; transition: right 0.3s ease 0s; position: fixed; bottom: 14px; right: -186px; box-shadow: gray 0px 0px 5px; border-radius: 2px; overflow: hidden;"><div class="grecaptcha-logo"><iframe src="https://www.google.com/recaptcha/api2/anchor?ar=1&amp;k=6LfEmSMUAAAAAEDmOgt1G7o7c53duZH2xL_TXckC&amp;co=aHR0cHM6Ly93d3cuZnJlZXBpay5jb206NDQz&amp;hl=vi&amp;v=61bII03-TtCmSUR7dw9MJF9q&amp;size=invisible&amp;cb=fj5qkk51bm0u" width="256" height="60" role="presentation" name="a-jlfj3pwcq0gx" frameborder="0" scrolling="no" sandbox="allow-forms allow-popups allow-same-origin allow-scripts allow-top-navigation allow-modals allow-popups-to-escape-sandbox"></iframe></div><div class="grecaptcha-error"></div><textarea id="g-recaptcha-response" name="g-recaptcha-response" class="g-recaptcha-response" style="width: 250px; height: 40px; border: 1px solid rgb(193, 193, 193); margin: 10px 25px; padding: 0px; resize: none; display: none;"></textarea></div></div><button type="submit" class="gr-auth__register-submit button button--fullwidth mg-bottom-lv3" id="gr-auth__registerHandler-submit-0"><span>Create your Freepik account</span></button>

        <p class="text__gray--7 font-sm alignc mg-none">Already have an account? <button class="tabs__link link bold" data-tab="tab-login">Sign in</button></p>
    </form>
</div>