<?php
header("Content-Type: application/json; charset=UTF-8");

$mysqli = new mysqli("localhost", "root", "", "geeklearn_DB");

$query = 'select id, parents_id, name from tbl_courses_categories order by parents_id';
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

echo json_encode(array($menu));

$mysqli->close();

?>