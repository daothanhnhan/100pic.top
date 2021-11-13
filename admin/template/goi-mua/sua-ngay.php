<?php 
  function datef ($user_id) {
    global $conn_vn;
    if (isset($_POST['update'])) {
      $date = $_POST['date'];
      $goi = $_POST['goi'];
      $sql = "UPDATE user SET `time` = '$date', goi = $goi WHERE user_id = $user_id";
      $result = mysqli_query($conn_vn, $sql);
      if ($result) {
        echo '<script>alert(\'Bạn đã cập nhật ngày thành công.\');</script>';
      } else {
        echo '<script>alert(\'Có lỗi xảy ra.\');</script>';
      }
    }
  }
  datef($_GET['user_id']);
  $info = $action->getDetail('user', 'user_id', $_GET['user_id']);
  if (!isset($info)) {
    echo 'Tài khoản này không tồn tại.';
  }
?>

<div class="container">
  <form action="" method="post">
    <div class="form-group">
      <label for="date">Ngày dùng gói:</label>
      <input type="date" class="form-control" id="date" name="date" value="<?= $info['time'] ?>">
    </div>

    <div class="form-group">
      <label for="date">Chọn gói:</label>
      <select name="goi" class="form-control">
        <option value="1" <?= $info['goi']==1 ? 'selected' : '' ?> >Gói phổ thông</option>
        <option value="2" <?= $info['goi']==2 ? 'selected' : '' ?> >Gói nâng cao</option>
      </select>
    </div>
    
    <button type="submit" class="btn btn-default" name="update">Cập nhật</button>
  </form>
</div>
