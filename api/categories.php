<?php
//require_once "../init.php";
//
//$sql="SELECT id, parents_id, name FROM tbl_courses_categories";
//
//$result=$main->selectData($sql);
//
////while($row=$result->fetch_assoc()){
////    print $row["id"]."<br>";
////}
//$myObj = new stdClass();
//$myObj->name = "John";
//$myObj->age = 30;
//$myObj->city = "New York";
//
//$myJSON = json_encode($myObj);
//
//echo $myJSON;
//
//
//$myArr = array("John", "Mary", "Peter", "Sally");
//
//$myJSON = json_encode($myArr);
//
//echo $myJSON;


header("Content-Type: application/json; charset=UTF-8");

$conn = new mysqli("localhost", "root", "", "geeklearn_DB");
$stmt = $conn->prepare("SELECT id, parents_id, name FROM tbl_courses_categories");
$stmt->execute();
$result = $stmt->get_result();
$outp = $result->fetch_all(MYSQLI_ASSOC);

echo json_encode($outp);