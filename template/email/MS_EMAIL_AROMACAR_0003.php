<?php 
    $lien_he1 = new action_email();
    $lien_he1->lien_he();
?>
<div class="gb-form-lienhe">
    <h3>Thông tin liên hệ</h3>
    <form action="" method="post">
        <div class="form-group">
            <label>Họ và tên</label>
            <input type="text" name="name" class="form-control">
        </div>
        <div class="form-group">
            <label>Email</label>
            <input type="email" name="email" class="form-control">
        </div>
        <div class="form-group">
            <label>Nội dung</label>
            <textarea class="input-xlarge form-control" name="note" rows="6"></textarea>
        </div>

        <button name="lien_he" class="btn btn-gui">Gửi thông điệp</button>
    </form>
</div>