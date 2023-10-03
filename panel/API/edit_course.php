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
 *  title
 *  description
 *  thumbnail
 *  teacher_id
 *  advantages
 *  category_id
 *  created_at
 *  cost
 *  in_advance
 *  level
 */
if (
    isset($data["id"]) and
    isset($data["title"]) and
    isset($data["description"]) and
    isset($data["thumbnail"]) and
    isset($data["teacher_id"]) and
    isset($data["advantages"]) and
    isset($data["category_id"]) and
    isset($data["cost"]) and
    isset($data["in_advance"]) and
    isset($data["level"])
) {
    $id = $data["id"];
    $title = $data["title"];
    $description = $data["description"];
    $thumbnail = $data["thumbnail"];
    $teacher_id = $data["teacher_id"];
    $advantages = $data["advantages"];
    $category_id = $data["category_id"];
    $cost = $data["cost"];
    $in_advance = $data["in_advance"];
    $discount = $data["discount"];
    $level = $data["level"];
    $status=$data["status"];
    $time = $main->time();

    $sql="
    UPDATE `tbl_courses` SET `title`='".$title."',`description`='".$description."',`thumbnail`='".$thumbnail."',`teacher_id`=".$teacher_id.",`advantages`='".$advantages."',
                             `category_id`=".$category_id.",`last_update`='".$time."',`cost`=".$cost.",`discount`=".$discount.",`in_advance`='".$in_advance."',
                             `level`='".$level."',`status`=".$status."
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