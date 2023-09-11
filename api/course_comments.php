<?php
$x= (($_GET["course"] != NULL) AND (isset($_GET["course"]))) ? $id=$_GET["course"]: header("Location: ../");

header("Content-Type: application/json; charset=UTF-8");

$mysqli = new mysqli("localhost", "root", "", "geeklearn_DB");

$query = '
SELECT c.id,parents_id,title,comment,likes,dislikes,user_id,course_id,date,u.name, u.family
FROM `tbl_courses_comments` c INNER JOIN tbl_users u
WHERE c.status=1 AND c.course_id = '.$id.' AND u.status>=1
';
$result = $mysqli->query($query);
$data = $result->fetch_all(MYSQLI_ASSOC);


$menu = [];
foreach ($data as $row) {
    if ($row['parents_id'] == 0) {
        $menu[$row['id']] = $row;
        $menu[$row['id']]['submenus'] = [];
    } else {
        $menu[$row['parents_id']]['submenus'][] = $row;
    }
}

print json_encode(($menu));
$mysqli->close();