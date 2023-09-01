<?php

header("Content-Type: application/json; charset=UTF-8");

$conn = new mysqli("localhost", "root", "", "geeklearn_DB");
$stmt = $conn->prepare("SELECT id, parents_id, name FROM tbl_courses_categories");
$stmt->execute();
$result = $stmt->get_result();
$outp = $result->fetch_all(MYSQLI_ASSOC);

//var ($outp);
echo json_encode($outp);
$conn->close();
?>