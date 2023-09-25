<?php
ini_set('display_errors', 'on');
error_reporting(-1);
session_start();
date_default_timezone_set("Asia/Tehran");
require_once '../../config/config.php';
require_once '../../helper/Base.php';
require_once '../../helper/jdf.php';
require_once '../../helper/panel.php';
require_once "helper/status.php";
$status_code=new status();
$main=new Panel();
if (!(isset($_SESSION["user_id"]) AND isset($_SESSION["user_status"])))
{
    header("Location: /404.php");
}