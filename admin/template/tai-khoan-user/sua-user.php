<?php 
  function edit_pass ($id) {
    global $conn_vn;
    if (isset($_POST['edit'])) {
      $pass1 = $_POST['pass1'];
      $pass2 = $_POST['pass2'];

      if ($pass1 != $pass2) {
        echo '<script>alert(\'Mật khẩu không khớp.\');</script>';
        return false;
      }

      $pass = password_hash($pass1, PASSWORD_DEFAULT);
      $sql = "UPDATE user SET user_password = '$pass' WHERE user_id = $id";
      $result = mysqli_query($conn_vn, $sql);

      if ($result) {
        echo '<script>alert(\'Đổi mật khẩu thành công.\');</script>';
      } else {
        echo '<script>alert(\'Có lỗi xảy ra.\');</script>';
      }
    }
  }
  edit_pass($_GET['id']);
?>

<form action="" method="post">
  
  <div class="form-group">
    <label for="pwd1">Password:</label>
    <input type="password" class="form-control" id="pwd1" name="pass1" required="">
  </div>

  <div class="form-group">
    <label for="pwd2">Password Confirm:</label>
    <input type="password" class="form-control" id="pwd2" name="pass2" required="">
  </div>
  
  <button type="submit" name="edit" class="btn btn-default">Đổi mật khẩu</button>
</form>