<?php
header("Content-Type: application/json; charset=UTF-8");

$mysqli = new mysqli("localhost", "root", "", "geeklearn_DB");

$query = "SELECT  s.name id, s.value count, c.title, c.thumbnail, CONCAT(t.name,' ',t.family) teacher_name, t.id teacher_id
FROM `tbl_statistics` s INNER JOIN tbl_courses c ON s.name=c.id INNER JOIN tbl_teachers t ON c.teacher_id=t.id
WHERE `type_code`= 1111 AND c.status > 1 AND t.status=1
ORDER by `value` DESC;
";
$result = $mysqli->query($query);
$data = $result->fetch_all(MYSQLI_ASSOC);
echo json_encode($data);
