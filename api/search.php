<?php
require_once "../init.php";

$x= (($_GET["q"] != NULL) AND (isset($_GET["q"]))) ? $q=$_GET["q"]: $main->redirect("../");

$sql="SELECT id, title FROM tbl_courses WHERE title LIKE '%$q%'";

$result=$main->selectData($sql);
$i=0;
$array=array();
if ($result->num_rows>0) {
    while ($row = $result->fetch_assoc())
    {
        $array[$i][0]=array('id'=>$row["id"], 'title'=>$row["title"]);
        $i++;
    }
    echo json_encode($array);
}
else
    echo "موردی یافت نشد";