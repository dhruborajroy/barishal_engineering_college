<?php


define('SECURE_ACCESS', true);
require('connection.inc.php');
require('function.inc.php');
$name="s";
$otp=11;
echo send_email_using_tamplate($name,$otp);
?>
