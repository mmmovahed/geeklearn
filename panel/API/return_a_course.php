<?php
require_once "init.php";
$per=6;
//$main->check_permission($per);

$json = file_get_contents('php://input');
if (empty($json) or $json == null)
    $main->redirect("../../not_found");

$data = json_decode($json, true);

if (isset($data["id"])) {
    $id=$data["id"];
    $sql = "
        SELECT *
        FROM `tbl_courses`
        WHERE id=".$id;
    $result = $main->selectData($sql);
    $data = $result->fetch_assoc();
    echo json_encode($data);
}