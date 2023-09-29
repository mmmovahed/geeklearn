<?php
//require_once "init.php";
//$per=5;
////$main->check_permission($per);
///*
// *  title
// *  description
// *  thumbnail
// *  teacher_id
// *  advantages
// *  category_id
// *  created_at
// *  cost
// *  in_advance
// *  level
// *  [label in array]
// */
//$data = json_decode(file_get_contents('php://input'), true);
//print_r($data);
//echo $data["operacion"];
//if (
//    isset($_POST["title"])
//){
//    $title= $_POST["title"];
////    $description= $_POST["description"];
////    $thumbnail= $_POST["thumbnail"];
////    $teacher_id= $_POST["teacher_id"];
////    $advantages= $_POST["advantages"];
////    $category_id= $_POST["category_id"];
////    $cost= $_POST["cost"];
////    $in_advance= $_POST["in_advance"];
////    $level= $_POST["level"];
////    $labels= $_POST["labels"];
//
//    echo "love";
//
//
//    $sql_for_course="";
//}
//else
//{
//    echo "NOt";
//}

header("Access-Control-Allow-Origin: *");
header("Content-Type: application/json; charset=UTF-8");
header("Access-Control-Allow-Methods: POST");
header("Access-Control-Allow-Headers: Content-Type, Access-Control-Allow-Headers, Authorization, X-Requested-With");

$data = array(
    array(
        'id' => '1',
        'name' => 'Bandung'
    ),
    array(
        'id' => '2',
        'name' => 'Jakarta'
    ),
    array(
        'id' => '3',
        'name' => 'Surabaya'
    ),
);

if(!empty($_POST['name']) && !empty($_POST['id'])) {
// New Data Input
    $newdata = array(
        'id' => $_POST['id'],
        'name' => $_POST['name']
    );
// Add Data
    $data[] = $newdata;
// New Data
    foreach($data as $d) {
        $result['city'][] = array(
            'id' => $d['id'],
            'name' => $d['name'],
        );
    }
    $result['status'] = 'success';
} else {
    foreach($data as $d) {
        $result['city'][] = array(
            'id' => $d['id'],
            'name' => $d['name'],
        );
    }
    $result['status'] = 'success';
}

http_response_code(200);
echo json_encode($result);