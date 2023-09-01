<?php
//header("Content-Type: application/json; charset=UTF-8");
//
////echo(json_encode($array));
//$a=array(['برنامه نویسی'=>array(["title"=>"php",'id'=>5],["title"=>"js",'id'=>7],["title"=>"py",'id'=>8])],'امنیت','گرافیک');
////echo(json_encode($a));
//
//
//$conn = new mysqli("localhost", "root", "", "geeklearn_DB");
//$stmt = $conn->prepare("SELECT id, parents_id, name FROM tbl_courses_categories");
//$stmt->execute();
//$result = $stmt->get_result();
////$outp = $result->fetch_all(MYSQLI_ASSOC);
//$parents=array();
//
//while ($row=$result->fetch_assoc())
//{
//    if ($row["parents_id"] == 0)
//        array_push($parents, [$row["id"], $row["parents_id"],$row["name"]]);
//}
//
//
//for ($i=0; $i < count($parents);$i++)
//    echo $parents[$i][2]."<br>";
//
////echo json_encode($outp);
//$conn->close();















$mysqli = new mysqli("localhost", "root", "", "geeklearn_DB");

// fetch all menu items
$query = 'select id, parents_id, name from tbl_courses_categories order by parents_id';
$result = $mysqli->query($query);
$data = $result->fetch_all(MYSQLI_ASSOC);

//var_dump($data);

// build menu with menus and their submenus
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

// now display it in html or however you want
//foreach ($menu as $item) {
//    echo $item['name'].PHP_EOL;
//    foreach ($item['submenus'] as $subitem) {
//        echo '  '.$subitem['name'].PHP_EOL."<br>";
//    }
//}