<?php 
    $package = $action->getList('book_package', 'user_id', $_SESSION['user_id_gbvn'], 'id', 'asc', '', '', '');

    function edit_profile ($id) {
        global $conn_vn;
        if (isset($_POST['edit_profile'])) {
            $username = mysqli_real_escape_string($conn_vn, $_POST['username']);
            $fullname = mysqli_real_escape_string($conn_vn, $_POST['fullname']);
            $phone = mysqli_real_escape_string($conn_vn, $_POST['phone']);
            $address = mysqli_real_escape_string($conn_vn, $_POST['address']);
            $tai_khoan = mysqli_real_escape_string($conn_vn, $_POST['tai_khoan']);
            $password = $_POST['password'];

            $add = '';
            if ($password != '') {
                $pass = password_hash($password, PASSWORD_DEFAULT);
                $add = ", user_password = '$pass'";
            }

            $sql = "UPDATE user SET user_name = '$username', user_fullname = '$fullname', user_address = '$address', user_phone = '$phone', tai_khoan = '$tai_khoan' $add WHERE user_id = $id";
            $result = mysqli_query($conn_vn, $sql);
            if ($result) {
                echo '<script>alert(\'Cập nhật thông tin tài khoản thành công.\')</script>';
            } else {
                echo '<script>alert(\'Có lỗi mời thử lại.\')</script>';
            }
        }
    }
    edit_profile($_SESSION['user_id_gbvn']);

    $user_info = $action->getDetail('user', 'user_id', $_SESSION['user_id_gbvn']);//var_dump($user_info);

    ///////////////////////////
    function thanh_toan () {
        global $user_info;
        if (isset($_POST['thanh_toan_btn'])) {
            $price = $_POST['price'];
            $tai_khoan = $_POST['tai_khoan'];
            if ($price < 200000) {
                echo '<script>alert(\'Số tiền chưa đủ 200,000 đ để thanh toán.\')</script>';
            } else {
                $noi_dung = "<ul>";
                $noi_dung .= "<li>Mã Cộng tác viên: ".$user_info['user_id']."</li>";
                $noi_dung .= "<li>Email: ".$user_info['user_email']."</li>";
                $noi_dung .= "<li>Lợi nhuận: ".number_format($price)." đ</li>";
                $noi_dung .= "<li>Tài khoản: ".$tai_khoan."</li>";
                $noi_dung .= "</ul>";
                // echo $noi_dung;
                        
                $action_email = new action_email();
                $action_email->email_send('info@100pic.top', 'Yêu cầu thanh toán cộng tác viên', $noi_dung);
                echo '<script>alert(\'Yêu cầu thanh toán đã được gửi.\')</script>';
            }
        }
    }
    thanh_toan();
?>

<nav id="freepik-new-nav" class="pd-top-lv2">
    <ul class="nav">
        <li>
            <a class="link--text active" href="/my-profile">
                <i class="fa fa-user-o" aria-hidden="true"></i>
                <span class="hide-tablet">Profile</span>
            </a>
        </li>
        <!-- <li>
            <a class="link--text " href="/user-downloads">
                <i class="fa fa-download" aria-hidden="true"></i>
                <span class="hide-tablet">Downloads</span>
                <span class="hide-tablet">1</span>
            </a>
        </li>
        <li>
            <a class="link--text " href="/user-bookmarks">
                <i class="fa fa-heart-o" aria-hidden="true"></i>
                <span class="hide-tablet">Favorites</span>
                <span class="hide-tablet"></span>
            </a>
        </li> -->
        <!-- <li>
            <a class="link--text " href="/user-following">
                <i class="fa fa-user-plus" aria-hidden="true"></i>
                <span class="hide-tablet">Following</span>
                <span class="hide-tablet"></span>
            </a>
        </li>
        <li class="collections">
            <a class="link--text " href="/user-collections">
                <i class="fa fa-codepen" aria-hidden="true"></i>
                <span class="hide-tablet">Collections</span>
                <span class="hide-tablet">2</span>
            </a>
        </li> -->
        <!-- <li>
            <a class="link--text " href="https://www.freepik.com/profile/my_subscriptions">
                <i class="fa fa-columns" aria-hidden="true"></i>
                <span class="hide-tablet">Subscription</span>
            </a>
        </li> -->
    </ul>
</nav>

<div class="container">
    <div class="col-md-3">
        <div class="info-profile">
            <img src="/images/icons/default_08.png">
            <h2 style="padding-bottom: 0;">@<?= $user_info['user_name'] ?></h2>
            <h2>#<?= $user_info['user_id'] ?></h2>
            <p class="fa fa-link"><?= $user_info['user_name'] ?></p>
        </div>
    </div>
    <div class="col-md-9">
        <div class="dien-thongtin">
            <!-- <h2>Connect</h2>
            <div class="row social">
                <div class="col-md-4">
                    <button
                        onclick="track('send', 'event', 'profile', 'social', 'facebook_connect'); gr.facebook.connect();"
                        class="facebook flaticon-facebook fa fa-facebook">
                        <span>Connect with Facebook</span>
                    </button>
                </div>
                <div class="col-md-4">
                    <button
                        onclick="track('send', 'event', 'profile', 'social', 'google_connect'); gr.google.connect();"
                        class="google flaticon-google fa fa-google">
                        <span>Connect with Google</span>
                    </button>
                </div>
                <div class="col-md-4"><button
                        onclick="track('send', 'event', 'profile', 'social', 'twitter_connect'); gr.twitter.connect();"
                        class="twitter flaticon-twitter fa fa-twitter">
                        <span>Connect with Twitter</span>
                    </button>

                </div>
            </div> -->
            <form action="" method="post" id="profile">
            <div class="row info-ketnoi">
                <div class="col-md-6">
                    <h3>Account data</h3>
                    <span class="input-group">
                        <input type="text" name="username" id="username" value="<?= $user_info['user_name'] ?>"
                            class="hascontent" required>
                        <label for="username">Username</label>
                        <a href="#" class="reset-input"></a>
                    </span>
                    <span class="input-group">
                        <input type="text" name="email" id="email" value="<?= $user_info['user_email'] ?>"
                            data-value="nguyenhuyen3098@gmail.com" tabindex="2" class="hascontent" readonly >
                        <label for="email">Email</label>
                        <a href="#" class="reset-input"></a>
                    </span>
                    <span class="input-group">
                        <input type="password" name="password" id="password" autocomplete="off" maxlength="40"
                            >
                        <label for="password">New password</label>
                        <a href="#" class="reset-input"></a>
                    </span>
                    <span class="input-group">
                        <textarea name="tai_khoan"><?= $user_info['tai_khoan'] ?></textarea>
                        <label for="tai-khoan">Tài khoản</label>
                        <a href="#" class="reset-input"></a>
                    </span>
                </div>
                <div class="col-md-6">
                    <h3>Personal data</h3>
                    <span class="input-group">
                        <input type="text" name="fullname" id="website"  value="<?= $user_info['user_fullname'] ?>">
                        <label for="website">Real Name</label>
                        <a href="#" class="reset-input"></a>
                    </span>
                    <span class="input-group">
                        <input type="text" name="address" id="website"  value="<?= $user_info['user_address'] ?>">
                        <label for="website">Address</label>
                        <a href="#" class="reset-input"></a>
                    </span>
                    <span class="input-group">
                        <input type="text" name="phone" value="<?= $user_info['user_phone'] ?>">
                        <label for="password">Phone</label>
                        <a href="#" class="reset-input"></a>
                    </span>
                    
                </div>
            </div>
            </form>
            <div class="row info-ketnoi mangxahoi" style="display: none;">
                <h3 class="tt-social">Social</h2>
                    <div class="col-md-6">
                        <span class="input-group social_googleplus">
                            <div class="input-addon"><i class="flaticon-googleplus icon-google fa fa-google"></i></div>
                            <span class="text-helper">https://plus.google.com/</span>
                            <input type="text" name="googleplus" id="googleplus" value="" data-value="" tabindex="11">
                            <label for="googleplus">Google+</label>
                            <a href="#" class="reset-input"></a>
                        </span>
                        <span class="input-group social_facebook">
                            <div class="input-addon"><i class="flaticon-facebook icon-facebook fa fa-facebook"></i>
                            </div>
                            <span class="text-helper">https://www.facebook.com/</span>
                            <input type="text" name="facebook" id="facebook" maxlength="50" value="" data-value=""
                                tabindex="12">
                            <label for="facebook">Facebook</label>
                            <a href="#" class="reset-input"></a>
                        </span>
                        <span class="input-group social_twitter">
                            <div class="input-addon"><i class="flaticon-twitter icon-twitter fa fa-twitter"></i></div>
                            <span class="text-helper">https://twitter.com/</span>
                            <input type="text" name="twitter" id="twitter" maxlength="50" value="" data-value=""
                                tabindex="13">
                            <label for="twitter">Twitter</label>
                            <a href="#" class="reset-input"></a>
                        </span>
                        <span class="input-group social_instagram">
                            <div class="input-addon"><i class="flaticon-instagram icon-instagram fa fa-instagram"></i>
                            </div>
                            <span class="text-helper">https://www.instagram.com/</span>
                            <input type="text" name="instagram" id="instagram" maxlength="50" value="" data-value=""
                                tabindex="14">
                            <label for="instagram">Instagram</label>
                            <a href="#" class="reset-input"></a>
                        </span>
                        <span class="input-group social_pinterest">
                            <div class="input-addon"><i class="flaticon-pinterest icon-pinterest fa fa-pinterest-p"></i>
                            </div>
                            <span class="text-helper">https://www.pinterest.com/</span>
                            <input type="text" name="pinterest" id="pinterest" value="" data-value="" tabindex="15">
                            <label for="pinterest">Pinterest</label>
                            <a href="#" class="reset-input"></a>
                        </span>
                    </div>
                    <div class="col-md-6">
                        <span class="input-group social_youtube">
                            <div class="input-addon"><i class="flaticon-youtube icon-youtube fa fa-youtube-play"></i>
                            </div>
                            <span class="text-helper">https://www.youtube.com/user/</span>
                            <input type="text" name="youtube" id="youtube" maxlength="50" value="" data-value=""
                                tabindex="16">
                            <label for="youtube">YouTube</label>
                            <a href="#" class="reset-input"></a>
                        </span>
                        <span class="input-group social_dribbble">
                            <div class="input-addon"><i class="flaticon-dribbble icon-dribbble fa fa-dribbble"></i>
                            </div>
                            <span class="text-helper">https://dribbble.com/</span>
                            <input type="text" name="dribbble" id="dribbble" maxlength="50" value="" data-value=""
                                tabindex="17">
                            <label for="dribbble">Dribbble</label>
                            <a href="#" class="reset-input"></a>
                        </span>
                        <span class="input-group social_behance">
                            <div class="input-addon"><i class="flaticon-behance icon-behance fa fa-behance-square"></i>
                            </div>
                            <span class="text-helper">https://www.behance.net/</span>
                            <input type="text" name="behance" id="behance" maxlength="90" value="" data-value=""
                                tabindex="18">
                            <label for="behance">Behance</label>
                            <a href="#" class="reset-input"></a>
                        </span>
                        <span class="input-group social_vimeo">
                            <div class="input-addon"><i class="flaticon-vimeo icon-vimeo fa fa-vimeo"></i></div>
                            <span class="text-helper">https://vimeo.com/</span>
                            <input type="text" name="vimeo" id="vimeo" value="" data-value="" tabindex="19">
                            <label for="vimeo">Vimeo</label>
                            <a href="#" class="reset-input"></a>
                        </span>
                    </div>
            </div>
             <div class="row">
                <div class="profile-block" style="width: 100%;">
                    <h3>Cộng tác viên</h3>
                    <span class="input-group">
                        <input type="text" name="code" value="<?= $user_info['code'] ?>">
                        <label for="password">Code</label>
                        <a href="#" class="reset-input"></a>
                    </span>
                    <p>Lợi nhuận: <?= number_format($user_info['price']) ?> đ</p>
                    <button type="button" class="btn-success" style="padding: 10px;" onclick="user_code(<?= $user_info['user_id'] ?>)">Tạo mã</button>
                    <form action="" method="post" accept-charset="utf-8" style="display: inline-block;">
                        <input type="hidden" name="price" value="<?= $user_info['price'] ?>">
                        <input type="hidden" name="tai_khoan" value="<?= $user_info['tai_khoan'] ?>">
                        <button type="submit" name="thanh_toan_btn" class="btn-danger" style="padding: 10px;">Thanh toán</button>
                    </form>
                </div>
            </div>
            <div class="row">
                <div class="profile-block" style="width: 100%;">
                    <h3>Notifications</h3>
                    <!-- <div class="switch-container">
                        <label for="unsubscribe_weekly">
                            <span><i class="flaticon-bell"></i>I wish to receive newsletters, promotions and news from
                                Freepik Company</span>
                            <span class="label-switch">
                                <input type="checkbox" name="unsubscribe_weekly" id="unsubscribe_weekly"
                                    checked="checked" data-value="1" tabindex="20"
                                    class="qa-unsubscribe-weekly hascontent">
                                <div class="checkbox"></div>
                            </span>
                        </label>
                    </div>

                    <div class="switch-container  qa-switch-container-disable-notification-new-content">
                        <label for="disable_notification_new_content">
                            <span><i class="flaticon-bell"></i>Notify me when someone I follow uploads new work</span>
                            <span class="label-switch">
                                <input type="checkbox" name="disable_notification_new_content"
                                    id="disable_notification_new_content" checked="checked" data-value="1" tabindex="22"
                                    class="qa-disable-notification-new-content hascontent">
                                <div class="checkbox"></div>
                            </span>
                        </label>
                    </div> -->
                    <table class="table">
                        <thead>
                          <tr>
                            <th>Package</th>
                            <th>Months</th>
                            <th>Active</th>
                            <th>Expired</th>
                          </tr>
                        </thead>
                        <tbody>
                        <?php 
                        foreach ($package as $item) { 
                            if ($item['package_id'] == 1) {
                                $package = 'Gói cơ bản';
                            }
                            if ($item['package_id'] == 2) {
                                $package = 'Gói phổ thông';
                            }

                            if ($item['thang']==1) {
                                $thang = '1 tháng';
                            }
                            if ($item['thang']==2) {
                                $thang = '3 tháng';
                            }
                            if ($item['thang']==3) {
                                $thang = '6 tháng';
                            }
                        ?>
                          <tr>
                            <td><?= $package ?></td>
                            <td><?= $thang ?></td>
                            <td><?= $item['state']==1 ? 'Đã kích hoạt' : 'Chưa kích hoạt' ?></td>
                            <td><?= $user_info['time'] ?></td>
                          </tr>
                        <?php } ?>
                        </tbody>
                      </table>
                </div>
            </div>
            <!-- <div class="profile-block">
                <p><b>Basic information on Data Protection:</b> Freepik Company stores your data to improve the service
                    and, with your consent, offers news, promotions and raffles, as well as projects and releases from
                    Freepik Company. <a href="https://www.freepikcompany.com/privacy" class="text-link"
                        target="_blank">More information</a></p>
            </div> -->
            <div class="row">
                <div class="profile-block">
                    <button type="submit" name="edit_profile" class="btn pull-right" tabindex="25" id="updateProfileBtn" form="profile">Save
                        changes</button>

                    <!-- <a href="javascript:;" class="danger cancel-account cancel_account">Close my account</a>  -->
                </div>
            </div>
        </div>
    </div>
</div>

<script>
    function user_code (user_id) {
        var xhttp = new XMLHttpRequest();
          xhttp.onreadystatechange = function() {
            if (this.readyState == 4 && this.status == 200) {
             // document.getElementById("demo").innerHTML = this.responseText;
                alert(this.responseText);
                window.location.reload();
            }
          };
          xhttp.open("GET", "/functions/ajax1/user_code.php?user_id="+user_id, true);
          xhttp.send();
    }
</script>