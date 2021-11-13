<?php 
  $goi_co_ban = $action->getDetail('package', 'id', 1);//var_dump($goi_co_ban);
  $goi_pho_thong = $action->getDetail('package', 'id', 2);//var_dump($goi_co_ban);
?>
<h2>Các loại gói</h2>
             
  <table class="table table-striped">
    <thead>
      <tr>
        <th>Tên gói</th>
        <th>Số lần tải trong ngày</th>
        <th>1 tháng</th>
        <th>3 tháng</th>
        <th>6 tháng</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td>Gói phổ thông</td>
        <td><input type="number" name="" value="<?= $goi_co_ban['num'] ?>" onchange="goi(1, 1, this.value)" onkeyup="goi(1, 1, this.value)"></td>
        <td><input type="number" name="" value="<?= $goi_co_ban['price_1'] ?>" onchange="goi(1, 2, this.value)" onkeyup="goi(1, 2, this.value)"></td>
        <td><input type="number" name="" value="<?= $goi_co_ban['price_2'] ?>" onchange="goi(1, 3, this.value)" onkeyup="goi(1, 3, this.value)"></td>
        <td><input type="number" name="" value="<?= $goi_co_ban['price_3'] ?>" onchange="goi(1, 4, this.value)" onkeyup="goi(1, 4, this.value)"></td>
      </tr>
      <tr>
        <td>Gói nâng cao</td>
        <td><input type="number" name="" value="<?= $goi_pho_thong['num'] ?>" onchange="goi(2, 1, this.value)" onkeyup="goi(2, 1, this.value)"></td>
        <td><input type="number" name="" value="<?= $goi_pho_thong['price_1'] ?>" onchange="goi(2, 2, this.value)" onkeyup="goi(2, 2, this.value)"></td>
        <td><input type="number" name="" value="<?= $goi_pho_thong['price_2'] ?>" onchange="goi(2, 3, this.value)" onkeyup="goi(2, 3, this.value)"></td>
        <td><input type="number" name="" value="<?= $goi_pho_thong['price_3'] ?>" onchange="goi(2, 4, this.value)" onkeyup="goi(2, 4, this.value)"></td>
      </tr>
      
    </tbody>
  </table>
<script>
  function goi (row, col, val) {
    // alert(val);
    var xhttp = new XMLHttpRequest();
    xhttp.onreadystatechange = function() {
      if (this.readyState == 4 && this.status == 200) {
       // document.getElementById("demo").innerHTML = this.responseText;
      }
    };
    xhttp.open("GET", "/functions/ajax/goi.php?col="+col+"&row="+row+"&val="+val, true);
    xhttp.send();
  }
</script>