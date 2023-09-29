<?php
require_once "../init.php";
$json = file_get_contents('php://input');
$data = json_decode($json, true);
if (!empty($json) || $json != null)
{
    $sql="INSERT INTO `tbl_logs`(`user_id`, `title`, `ip`, `date`)  VALUES (5,'5','5','5')";
    $main->queryForInsertData($sql);
}
header("Content-Type: application/json; charset=UTF-8");
echo json_encode($data);