<?php 
    $message = "";

    function dangky () {
        global $conn_vn;
        global $message;
        if (isset($_POST['register'])) {
            $ok = 'true';
            $name = ($_POST['name']==NULL) ? '' : trim($_POST['name']);
            // $first_name = ($_POST['first_name']==NULL) ? '' : trim($_POST['first_name']);
            // $last_name = ($_POST['last_name']==NULL) ? '' : trim($_POST['last_name']);
            // $alias = ($_POST['alias']==NULL) ? '' : trim($_POST['alias']);
            $email = ($_POST['email']==NULL) ? '' : $_POST['email'];
            $pass1 = ($_POST['pass1']==NULL) ? '' : $_POST['pass1'];
            $pass2 = ($_POST['pass2']==NULL) ? '' : $_POST['pass2'];
            $time = time();
            $ask = password_hash(trim($_POST['ask']), PASSWORD_DEFAULT);

            // $sql_nick = "SELECT * FROM user Where name = '$name'";
            // $result_nick = mysqli_query($conn_vn, $sql_nick);
            // $row_nick = mysqli_num_rows($result_nick);
            // if ($row_nick > 0) {
            //     $ok = "false";
            //     $message .= "Tên đăng nhập đã tồn tại. ";
            // }

            // kiem tra email ton tai.
            $sql_email = "SELECT * FROM user Where user_email = '$email'";
            $result_email = mysqli_query($conn_vn, $sql_email);
            $row_email = mysqli_num_rows($result_email);
            if ($row_email > 0) {
                $ok = "false";
                $message .= "Email đã tồn tại. ";
            }

            if ($pass1 != $pass2) {
                $ok = "false";
                $message .= "Mật khẩu không khớp.";
            }

            if ($ok == "true") {
                $pass = password_hash($pass1, PASSWORD_DEFAULT);
                $sql = "INSERT INTO user (user_name, user_email, user_password, time, ask) VALUES ('$name', '$email', '$pass', $time, '$ask')";
                //echo $sql;die;
                $result = mysqli_query($conn_vn, $sql) or die('error :');
                $sql_user = "SELECT * FROM user Where user_email = '$email'";
                $result_user = mysqli_query($conn_vn, $sql_user);
                $row_user = mysqli_fetch_assoc($result_user);
                $_SESSION['user_id_gbvn'] = $row_user['id'];
                echo '<script type="text/javascript">alert(\'Bạn đã đăng ký thành công! Mời bạn đăng nhập\'); window.location.href = "/login";</script>';
            }
        }
    }

    dangky();
?>
<div class="gb-register">
    <div class="container">
        <div class="row">
            <div class="col-md-8 col-md-offset-2">
                <div class="gb-register-body">
                    <h1>Đăng ký tài khoản </h1>
                    <div class="row">
                        <div class="col-md-8  col-md-offset-2">
                            <form action="" method="post">
                                <label style="color: red;"><?= $message ?></label>
                                <div class="form-group">
                                    <label>Họ và tên:</label>
                                    <input type="text" class="form-control" name="name" placeholder="Họ và tên" required>
                                </div>
                                <div class="form-group">
                                        <label>Email:</label>
                                    <input type="email" class="form-control" name="email" placeholder="Nhập địa chỉ Email." required>
                                </div>
                                <div class="form-group">
                                    <label>Mật khẩu:</label>
                                    <input type="password" class="form-control" name="pass1" placeholder="Nhập mật khẩu" required>
                                </div>
                                <div class="form-group">
                                    <label>Nhập lại mật khẩu:</label>
                                    <input type="password" class="form-control" name="pass2" placeholder="Nhập lại mật khẩu" required>
                                </div>
                                <div class="form-group">
                                    <label>Bạn thích con gì:</label>
                                    <input type="text" class="form-control" name="ask" placeholder="Dùng cho quên mật khẩu" required>
                                </div>
                                <button type="submit" name="register" class="btn">Đăng ký</button>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>