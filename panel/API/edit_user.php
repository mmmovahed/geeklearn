<?php
require_once "init.php";
$per = 5;
$json = file_get_contents('php://input');
if (empty($json) or $json == null)
    $main->redirect("../../not_found");

$data = json_decode($json, true);
//$main->check_permission($per);

/*
 *  id
 *  name
 *  family
 *  age
 *  email
 *  phone
 *  wallet_id
 *  privilege_id
 *  status
 */
if (
    isset($data["id"]) and
    isset($data["name"]) and
    isset($data["family"]) and
    isset($data["age"]) and
    isset($data["email"]) and
    isset($data["phone"]) and
    isset($data["wallet_id"]) and
    isset($data["privilege_id"]) and
    isset($data["status"])
) {
    $id = $data["id"];
    $name = $data["name"];
    $family = $data["family"];
    $age = $data["age"];
    $email = $data["email"];
    $phone = $data["phone"];
    $wallet_id = $data["wallet_id"];
    $privilege_id = $data["privilege_id"];
    $status = $data["status"];
    $time = $main->time();

    $sql="
    UPDATE `tbl_courses` SET `name`='".$name."',`family`='".$family."',`age`='".$age."',`email`=".$email.",`phone`='".$phone."',
                             `wallet_id`=".$wallet_id.",`last_update`='".$time."',`privilege_id`=".$privilege_id.", `status`=".$status."
                         WHERE `id` = ".$id;
    $res=$main->query($sql);

    if ($res==true)
        http_response_code(200);
    else
        http_response_code(500);
}
else
{
    http_response_code(406);
}