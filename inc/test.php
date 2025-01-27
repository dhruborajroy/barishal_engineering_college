<?php


define('SECURE_ACCESS', true);
require('connection.inc.php');
require('function.inc.php');

echo getDeptStudentCount(1);
echo getDeptStudentCount(2)
?>
