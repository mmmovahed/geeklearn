<?php
ini_set('display_errors','on');
error_reporting(-1);
ob_start();
session_start();
date_default_timezone_set("Asia/Tehran");
require_once 'config/config.php';
require_once 'helper/Base.php';
require_once 'helper/jdf.php';
if (stristr($_SERVER["REQUEST_URI"],"/panel/")){
    require_once "helper/Panel.php";
    $main=new Panel();
}
else{
    require_once "helper/Frontend.php";
    $main = new Frontend();
}
require_once "helper/status.php";
$status_code=new status();
?>
