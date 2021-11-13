<?php 
    if (!isset($_SESSION['user_id_gbvn'])) {
        echo '<script type="text/javascript">alert(\'Bạn không có quyền đổi mật khẩu.\'); window.location.href = "/forget-password";</script>';
    }

    $message_change = "";

    function change_password () {
        global $conn_vn;
        global $message_change;
        if (isset($_POST['send_change_password'])) {
            $pass1 = $_POST['pass1'];
            $pass2 = $_POST['pass2'];
            if ($pass1 != $pass2) {
                $message_change = "Mật khẩu nhập vào không khớp.";
            } else {
                $pass = password_hash($pass1, PASSWORD_DEFAULT);
                $sql = "UPDATE user SET user_password = '$pass' Where user_id = " . $_SESSION['user_id_gbvn'];
                $result = mysqli_query($conn_vn, $sql) or die('error: ' . mysqli_error($conn_vn));
                echo '<script type="text/javascript">alert(\'Bạn đã đổi mật khẩu thành công. Mời bạn đăng nhập\'); window.location.href = "/login";</script>';
            }
        }
    }

    change_password();
?>
<div class="gb-lost-password">
    <div class="container">
        <h1>Thay đổi mật khẩu?</h1>
        <p>Bạn hãy thay đổi mật khẩu ở đây</p>

        <form action="" method="post">
            <span style="color: red;"><?= $message_change ?></span>
            <div class="form-group">
                <div class="row">
                    <div class="col-md-2">
                        <label>Mật khẩu</label>
                    </div>
                    <div class="col-md-10">
                        <input type="password" name="pass1" class="form-control" placeholder="Nhập Mật khẩu muốn đổi...." required>
                    </div>
                </div>
            </div>
            <div class="form-group">
                <div class="row">
                    <div class="col-md-2">
                        <label>Nhập lại mật khẩu</label>
                    </div>
                    <div class="col-md-10">
                        <input type="password" name="pass2" class="form-control" placeholder="Nhập mật khẩu muốn đổi...." required>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-md-6">
                    <div class="gb-lost-password-back">
                        <a href="/dangnhap">Quay lại</a>
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="gb-lost-password-continue">
                        <button type="submit" name="send_change_password" class="btn">Tiếp tục</button>
                    </div>
                </div>
            </div>
        </form>

    </div>
</div>