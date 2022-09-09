<?php
ini_set( 'display_errors', 1 );
error_reporting( E_ALL );

$from = "test@hostinger-tutorials.com";
$to = "alexsanderorejuela@gmail.com";
$subject = "Checking PHP mail";

// Message
$message = '
<html>
<head>
  <title>Birthday Reminders for August</title>
</head>
<body>
  <p>Here are the birthdays upcoming in August!</p>
  <table>
    <tr>
      <th>Person</th><th>Day</th><th>Month</th><th>Year</th>
    </tr>
    <tr>
      <td>Johny</td><td>10th</td><td>August</td><td>1970</td>
    </tr>
    <tr>
      <td>Sally</td><td>17th</td><td>August</td><td>1973</td>
    </tr>
  </table>
</body>
</html>
';

// To send HTML mail, the Content-type header must be set
$headers[] = 'MIME-Version: 1.0';
$headers[] = 'Content-type: text/html; charset=iso-8859-1';

// Additional headers
$headers[] = 'To: Mary <mary@example.com>, Kelly <kelly@example.com>';
$headers[] = 'From: Birthday Reminder <birthday@example.com>';
$headers[] = 'Cc: birthdayarchive@example.com';
$headers[] = 'Bcc: birthdaycheck@example.com';



mail($to,$subject,$message, implode("\r\n", $headers));
echo "The email message was sent.";


// //Recipiente
// $to = 'alexsanderorejuela@gmail.com';

// //remitente del correo
// $from = 'alexsanderorejuela@gmail.com';
// $fromName = 'BaulPHP';

// //Asunto del email
// $subject = 'Correo electrónico PHP con datos adjuntos de BaulPHP'; 

// //Ruta del archivo adjunto
// $file = "Assets\img\snu.png";

// //Contenido del Email
// $htmlContent = '<h1>Correo electrónico PHP con datos adjuntos de BaulPHP</h1>
//     <p>Este correo electrónico ha enviado desde script PHP con datos adjuntos.</p>';

// //Encabezado para información del remitente
// $headers = "De: $fromName"." <".$from.">";

// //Limite Email
// $semi_rand = md5(time()); 
// $mime_boundary = "==Multipart_Boundary_x{$semi_rand}x"; 

// //Encabezados para archivo adjunto 
// $headers .= "\nMIME-Version: 1.0\n" . "Content-Type: multipart/mixed;\n" . " boundary=\"{$mime_boundary}\""; 

// //límite multiparte
// $message = "--{$mime_boundary}\n" . "Content-Type: text/html; charset=\"UTF-8\"\n" .
// "Content-Transfer-Encoding: 7bit\n\n" . $htmlContent . "\n\n"; 

// //preparación de archivo
// if(!empty($file) > 0){
//     if(is_file($file)){
//         $message .= "--{$mime_boundary}\n";
//         $fp =    @fopen($file,"rb");
//         $data =  @fread($fp,filesize($file));

//         @fclose($fp);
//         $data = chunk_split(base64_encode($data));
//         $message .= "Content-Type: application/octet-stream; name=\"".basename($file)."\"\n" . 
//         "Content-Description: ".basename($files[$i])."\n" .
//         "Content-Disposition: attachment;\n" . " filename=\"".basename($file)."\"; size=".filesize($file).";\n" . 
//         "Content-Transfer-Encoding: base64\n\n" . $data . "\n\n";
//     }
// }
// $message .= "--{$mime_boundary}--";
// $returnpath = "-f" . $from;

// //Enviar EMail
// $mail = @mail($to, $subject, $message, $headers, $returnpath); 

// //Estado de envío de correo electrónico
// echo $mail?"<h1>Correo enviado.</h1>":"<h1>El envío de correo falló.</h1>";