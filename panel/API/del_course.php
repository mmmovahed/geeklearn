<?php
require_once "init.php";
$per=5;
//$main->check_permission($per);

$json = file_get_contents('php://input');
if (empty($json) OR $json == null)
    $main->redirect("../../not_found");

$data = json_decode($json, true);
if (isset($data["id"]))
{
    $id= $data["id"];

    $sql="DELETE FROM `tbl_courses` WHERE id=".$id;
    $res=$main->query($sql);

    $sql="DELETE FROM `tbl_labels` WHERE course_id=".$id;
    $res=$main->query($sql);

    $sql="DELETE FROM `tbl_courses_booklets` WHERE course_id=".$id;
    $res=$main->query($sql);

    $sql="DELETE FROM `tbl_courses_comments` WHERE course_id=".$id;
    $res=$main->query($sql);

    $sql="DELETE FROM `tbl_courses_scores` WHERE course_id=".$id;
    $res=$main->query($sql);

    $sql="DELETE FROM `tbl_courses_videos` WHERE course_id=".$id;
        $res=$main->query($sql);


    if ($res)
        http_response_code(200);
    else
        http_response_code(500);
}
