<?php
$name = trim($_POST["name"]);
$email = trim($_POST["email"]);
$message = trim($_POST["message"]);

$EmailTo = "bayduzh89@gmail.com";
$Subject = "Новое сообщение с сайта andreishostak.com.ua";

// готовим тело электронного письма

mail($EmailTo, $Subject, $message, "Content-type: text/plain; charset=\"utf-8\"\n From: $EmailTo");