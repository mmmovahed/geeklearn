<?php
require_once "../init.php";

$x= (($_GET["q"] != NULL) AND (isset($_GET["q"]))) ? $q=$_GET["q"]: $main->redirect("../");

$sql="SELECT id, title FROM tbl_courses WHERE title LIKE '%$q%'";

$result=$main->selectData($sql);
$i=0;
$array=array();
if ($result->num_rows>0) {
    //return json_encode($row);
    while ($row = $result->fetch_assoc())
    {
        $array[$i][0]=$row["id"];
        $array[$i][1]=$row["title"];
        $i++;
    }
    echo json_encode($array);
}
else
    echo "[موردی یافت نشد]";