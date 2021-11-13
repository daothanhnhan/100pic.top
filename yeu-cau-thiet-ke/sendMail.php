<?php
use PHPMailer\PHPMailer\PHPMailer;
if(isset($_POST['name']) && isset($_POST['email']){
  $name = $_POST['name'];
  $email = $_POST['email'];
  $subject = $_POST['subject'];
  $body = $_POST['body'];

  require_once 'phpmailer/Exception.php';
  require_once 'phpmailer/PHPMailer.php';
  require_once 'phpmailer/SMTP.php';

  $mail = new PHPMailer(true);

//smtp setting
                $nFrom = "Yeu Cau Thiet Ke 100pic";    //mail duoc gui tu dau, thuong de ten cong ty ban
                $mFrom = 'kiosk.comq@gmail.com';  //dia chi email cua ban 
                $mPass = 'trieuvy761988';       //mat khau email cua ban
                $nTo = 'YOU'; //Ten nguoi nhan
                //$mTo = $_POST['email_dichvu'];   //dia chi nhan mail
                $mTo = $email_to;
                $mail             = new PHPMailer();
                $mail->IsSMTP();             
                $mail->CharSet  = "utf-8";
                $mail->SMTPDebug  = 0;   // enables SMTP debug information (for testing)
                $mail->SMTPAuth   = true;    // enable SMTP authentication
                $mail->SMTPSecure = "tls";   // sets the prefix to the servier
                $mail->Host       = "smtp.gmail.com";    // sever gui mail.
                $mail->Port       = 587;         // cong gui mail de nguyen
                // xong phan cau hinh bat dau phan gui mail
                $mail->Username   = $mFrom;  // khai bao dia chi email
                $mail->Password   = $mPass;              // khai bao mat khau
                $mail->SetFrom($mFrom, $nFrom);
                $mail->AddReplyTo('info@100pic.top', 'me'); //khi nguoi dung phan hoi se duoc gui den email nay
                $mail->Subject    = $title;// tieu de email 
                $mail->MsgHTML($content);// noi dung chinh cua mail se nam o day.
                $mail->AddAddress('kiosk.comq@gmail.com');
                $mail->Send();
    
    if($mail->send()){
 	$status = "Thành công"
	$response = "Đã đăng ký"
    }
    else
    {
                $status = "Không thành công"
     	$response = "Phát sinh lỗi: <br>" . $mail->ErrorInfo;
  }
	exit(json_encode(array("status" => $status, "response" => $response)));
}
?>