<?php

require_once "init.php";
$per = 6;
$json = file_get_contents('php://input');
if (empty($json) or $json == null)
    $main->redirect("../../not_found");

$data = json_decode($json, true);
//$main->check_permission($per);

if (isset($data["id"]))
{
    $id=$data["id"];

    $sql="UPDATE `tbl_courses` SET `status` = 0 WHERE `id`=".$id;

    $res=$main->query($sql);

    if ($res)
        http_response_code(200);
    else
        http_response_code(500);
}
else
{
    http_response_code(301);
    echo "Something did not posted.";
}