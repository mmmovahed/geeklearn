<?php
require_once "init.php";
$per=5;
$json = file_get_contents('php://input');
if (empty($json) OR $json == null)
    $main->redirect("../../not_found");

$data = json_decode($json, true);
//$main->check_permission($per);
/*
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
 *  [label in array]
 */
if (
    isset($data["title"]) AND
    isset($data["description"]) AND
    isset($data["thumbnail"]) AND
    isset($data["teacher_id"]) AND
    isset($data["advantages"]) AND
    isset($data["category_id"]) AND
    isset($data["cost"]) AND
    isset($data["in_advance"]) AND
    isset($data["level"]) AND
    isset($data["labels"])
){
    $title= $data["title"];
    $description= $data["description"];
    $thumbnail= $data["thumbnail"];
    $teacher_id= $data["teacher_id"];
    $advantages= $data["advantages"];
    $category_id= $data["category_id"];
    $cost= $data["cost"];
    $in_advance= $data["in_advance"];
    $level= $data["level"];
    $labels=$data["labels"];
    $time=$main->time();


    $sql_for_course="
    INSERT INTO `tbl_courses`(`title`, `description`, `thumbnail`, `teacher_id`, `advantages`, `category_id`, `created_at`, `last_update`, 
                              `cost`, `in_advance`, `level`)
    VALUES('".$title."', '".$description."', '".$thumbnail."',".$teacher_id.", '".$advantages."', ".$category_id.",'".$time."', '".$time."'
    ,".$cost.", ".$in_advance.", '".$level."') 
    ";
    $result=$main->queryForInsertData($sql_for_course);
    $last_id=$main->last_id();
    if ($result==true) {
        $i=0;
        foreach($labels as $x => $x_value) {
            $sql_for_labels = "INSERT INTO `tbl_labels`(`course_id`, `name`) VALUES(" . $last_id . ", '" . $x_value . "')";
            $res=$main->queryForInsertData($sql_for_labels);
            if ($res != true)
            {
                break;
                $respond=["status"=>500];
                http_response_code(500);
            }
        }
        $respond = ["status" => 200];
        http_response_code(200);

    }
    else{
        $respond=["status"=>500];
        http_response_code(500);
    }
}
else
{
    echo "Not complete or unset";
}
