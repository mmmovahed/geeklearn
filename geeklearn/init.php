<?php
ini_set('display_errors','on');
error_reporting(-1);
ob_start();
//session_start();
date_default_timezone_set("Asia/Tehran");

if (stristr($_SERVER["REQUEST_URI"],"/panel/"))
    require_once "helper/panel.php";
else
    require_once "helper/frontend.php";
?>