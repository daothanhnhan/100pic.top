<?php
    if (isset($_POST['filter'])) {
        $_SESSION['check_in'] = $_POST['check_in'];
        $_SESSION['check_out'] = $_POST['check_out'];
    }
    if (isset($_GET['search']) && $_GET['search'] != '') {
        $rows = $action->getSearchAdmin('code_sale',array('code', 'name'), $_GET['search'],$trang,20,$_GET['page']);
    }else{
        $rows = $acc->getList("code_sale","","","id","asc",$trang, 20, "ma-khuyen-mai");
    }
    //var_dump($rows);
    // unset($_SESSION['month']);
    // $code_sale_month = $acc->getList("code_sale_month","","","id","asc",$trang, 20, "ma-khuyen-mai");var_dump($code_sale_month);
    function code_sale_num ($code) {
        global $conn_vn;
        $month = date('Y-m');
        if (isset($_SESSION['month'])) {
            $month = $_SESSION['month'];
        }
        // $month = '2021-01';

        if (isset($_SESSION['check_in'])) {
            $check_in = $_SESSION['check_in'];
            $check_in_arr = explode("/", $check_in);
            $check_in = $check_in_arr[2].'-'.$check_in_arr[0].'-'.$check_in_arr[1];

            $check_out = $_SESSION['check_out'];
            $check_out_arr = explode("/", $check_out);
            $check_out = $check_out_arr[2].'-'.$check_out_arr[0].'-'.$check_out_arr[1];
            $sql = "SELECT * FROM code_sale_month WHERE code = '$code' AND ngay >= '$check_in' AND ngay <= '$check_out'";//echo $sql;
        } else {
            $sql = "SELECT * FROM code_sale_month WHERE code = '$code' AND ngay LIKE '$month%'";
        }

        
        $result = mysqli_query($conn_vn, $sql);
        $num = mysqli_num_rows($result);

        $tien = 0;
        if ($num != 0) {
            while ($row = mysqli_fetch_assoc($result)) {
                $tien += $row['gia_goc'] - $row['gia_giam'];
            }
        }

        return array(
            'tong' => $num,
            'tien' => $tien
        );
    }
?>	
<link href="/datepicker/css/bootstrap.min.css" rel="stylesheet" />
    <link href="/datepicker/css/datepicker.css" rel="stylesheet" />
    <div class="boxPageNews">
        <h1><a href="index.php?page=them-ma-khuyen-mai">Th??m m??</a></h1>
        <!-- <div>
            <input type="month" name="month" onchange="monthf(this.value)" value="<?= $_SESSION['month'] ?>">
        </div> -->
        <div class="panel-body">
            <form action="" method="post" >
                        <table class="table">
                            <tr>
                                <td>Check In:</td>
                                <td>
                                    <input type="text" id="timeCheckIn" class="form-control" name="check_in" required="" value="<?= $_SESSION['check_in'] ?>" autocomplete="off" />
                                </td>
                                <td>Check Out:</td>
                                <td>
                                    <input type="text" id="timeCheckOut" class="form-control" name="check_out" required="" value="<?= $_SESSION['check_out'] ?>" autocomplete="off" />
                                </td>
                            </tr>
                            <tr><td><button name="filter">Filter</button></td></tr>
                        </table>
                    </form>
                </div>
        <div class="searchBox">
            <form action="">
                <input type="hidden" name="page" value="ma-khuyen-mai">
                <button type="submit" class="btnSearchBox">T??m ki???m</button>
                <input type="text" class="txtSearchBox" name="search" />                                    
            </form>
        </div>
        <table class="table table-hover">
            <thead>
                <tr>
                    <th>STT</th>
                    <th>T??n</th>
                    <th>M??</th>
                    <!-- <th>Chi??t kh???u</th> -->
                    <th>Ph???n tr??m</th>
                    <th>S??? l?????ng</th>
                    <th>S??? ti???n</th>
                    <th>Ho???t ?????ng</th>
                </tr>
            </thead>
            <tbody>
                <?php 
                    $d = 0;
                    foreach ($rows['data'] as $row) {
                        $d++;
                    ?>
                        <tr>
                            <td><?= $d ?></td>
                            <td><?= $row['name']?></td>
                            <td><?= $row['code']?></td>
                            <!-- <td>
                                <?= number_format($row['money']) ?>
                            </td> -->

                            <td><?= $row['percent']?></td>
                            <td><?= code_sale_num($row['code'])['tong'] ?></td>
                            <td><?= number_format(code_sale_num($row['code'])['tien']) ?> ??</td>
                            <td style="float: none;"><a href="index.php?page=xoa-ma-khuyen-mai&id=<?= $row['id'] ?>" style="float: none;" onclick="return confirm('B???n c?? ch???c mu???n x??a.')">X??a</a> | <a href="index.php?page=sua-ma-khuyen-mai&id=<?= $row['id'] ?>" style="float: none;">S???a</a></td>
                        </tr>
                    <?php
                    }
                ?>
            </tbody>
        </table>
    	
        <div class="paging">             
        	<?= $rows['paging'] ?>
		</div>
    </div>
    <p class="footerWeb">C???m ??n qu?? kh??ch h??ng ???? tin d??ng d???ch v??? c???a ch??ng t??i<br />S???n ph???m thu???c C??ng ty TNHH Truy???n Th??ng V?? C??ng Ngh??? Cafelink Vi???t Nam</p>             

<script>
    function monthf (thang) {
        var xhttp = new XMLHttpRequest();
          xhttp.onreadystatechange = function() {
            if (this.readyState == 4 && this.status == 200) {
             // document.getElementById("demo").innerHTML = this.responseText;
                // alert(thang);
                location.reload();
            }
          };
          xhttp.open("GET", "/functions/ajax1/filter_month.php?month="+thang, true);
          xhttp.send();
    }
</script>
<script src="/datepicker/js/jquery.min.js"></script>
    <script src="/datepicker/js/bootstrap.min.js"></script>
    <script src="/datepicker/js/bootstrap-datepicker.js"></script>
    <script>
        $(function () {
            'use strict';
            var nowTemp = new Date();
            var now = new Date(nowTemp.getFullYear(), nowTemp.getMonth(), nowTemp.getDate(), 0, 0, 0, 0);
            now = 0;

            var checkin = $('#timeCheckIn').datepicker({
                onRender: function (date) {
                    return date.valueOf() < now.valueOf() ? 'disabled' : '';
                }
            }).on('changeDate', function (ev) {
                if (ev.date.valueOf() > checkout.date.valueOf()) {
                    var newDate = new Date(ev.date)
                    newDate.setDate(newDate.getDate() + 1);
                    checkout.setValue(newDate);
                }
                checkin.hide();
                $('#timeCheckOut')[0].focus();
            }).data('datepicker');
            var checkout = $('#timeCheckOut').datepicker({
                onRender: function (date) {
                    return date.valueOf() <= checkin.date.valueOf() ? '' : '';
                }
            }).on('changeDate', function (ev) {
                checkout.hide();
            }).data('datepicker');
        });
    </script>