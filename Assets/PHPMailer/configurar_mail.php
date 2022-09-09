<?php
	include('class.phpmailer.php');
	$mail = new PHPMailer(true);
	$mail->IsSMTP();
    $mail->Port = 25;
    $mail->SMTPSecure ="ssl";
    $mail->Host = "smtp.gmail.com";
	$mail->SMTPAuth = false;
	$mail->SMTPDebug  = 2;
	$mail->Timeout=30;
	$mail->Username = 'firmacalidadpublicitario@gmail.com';
	$mail->Password = 'gepgcikoidtptovu'; 
 	$mail->From = "SNU";
	$mail->FromName = "SNU";
	$mail->Subject = "Mensaje SNU";
	$mail->CharSet = 'UTF-8';
	
	
?>
