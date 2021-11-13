<?php 
  function price () {
    global $conn_vn;
    if (isset($_POST['cap_nhat'])) {
      $price_1 = $_POST['price-1'];
      $price_2 = $_POST['price-2'];
      $price_3 = $_POST['price-3'];

      $total_1 = $_POST['total-1'];
      $total_2 = $_POST['total-2'];
      $total_3 = $_POST['total-3'];

      $sql = "UPDATE price SET price = $price_1, total = $total_1 WHERE id = 1";
      $result = mysqli_query($conn_vn, $sql);

      $sql = "UPDATE price SET price = $price_2, total = $total_2 WHERE id = 2";
      $result = mysqli_query($conn_vn, $sql);

      $sql = "UPDATE price SET price = $price_3, total = $total_3 WHERE id = 3";
      $result = mysqli_query($conn_vn, $sql);
      echo '<script>alert(\'Bạn đã cập nhật thành công.\')</script>';
    }
  }
  price();
  $info_1 = $action->getDetail('price', 'id', 1);
  $info_2 = $action->getDetail('price', 'id', 2);
  $info_3 = $action->getDetail('price', 'id', 3);
?>

<div class="container">
  <form action="" method="post">
    <div class="form-group">
      <label for="email">Gói 1 tháng:</label><br>
      <label for="email">chỉ 1 tháng:</label>
      <input type="number" name="price-1" class="form-control" id="email" value="<?= $info_1['price'] ?>" required >
      <label for="email">Cả gói:</label>
      <input type="number" name="total-1" class="form-control" id="email" value="<?= $info_1['total'] ?>" required >
    </div>
    <hr>
    <div class="form-group">
      <label for="pwd">Gói 6 tháng:</label><br>
      <label for="email">chỉ 1 tháng:</label>
      <input type="number" name="price-2" class="form-control" id="pwd" value="<?= $info_2['price'] ?>" required >
      <label for="email">Cả gói:</label>
      <input type="number" name="total-2" class="form-control" id="email" value="<?= $info_2['total'] ?>" required >
    </div>
    <hr>
    <div class="form-group">
      <label for="pwd1">Gói 12 tháng:</label><br>
      <label for="email">chỉ 1 tháng:</label>
      <input type="number" name="price-3" class="form-control" id="pwd1" value="<?= $info_3['price'] ?>" required >
      <label for="email">Cả gói:</label>
      <input type="number" name="total-3" class="form-control" id="email" value="<?= $info_3['total'] ?>" required >
    </div>
    
    <button type="submit" name="cap_nhat" class="btn btn-default">Cập nhật</button>
  </form>
</div>
