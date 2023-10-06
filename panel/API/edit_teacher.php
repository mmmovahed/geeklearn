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
 *  email
 *  telegram_id
 *  picture
 *  description
 *  status
 */
if (
    isset($data["id"]) and
    isset($data["name"]) and
    isset($data["family"]) and
    isset($data["email"]) and
    isset($data["telegram_id"]) and
    isset($data["picture"]) and
    isset($data["description"]) and
    isset($data["status"])
) {
    $id = $data["id"];
    $name = $data["name"];
    $family = $data["family"];
    $email = $data["email"];
    $telegram_id = $data["telegram_id"];
    $picture = $data["picture"];
    $description = $data["description"];
    $status=$data["status"];
    $time = $main->time();

    $sql="
    UPDATE `tbl_teachers` SET `name`='".$name."',`family`='".$family."',`email`='".$email."',`telegram-id`='".$telegram_id."',`picture`='".$picture."',
                              `description`='".$description."',`status`='".$status."' WHERE id=".$id;
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