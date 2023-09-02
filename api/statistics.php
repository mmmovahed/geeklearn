<?php
/*
 * type code instructions
 * 1010: sum of courses times
 * 1011: sum of teachers
 * 1012: sum of users
 */
if (isset($_GET["type"]) AND !empty($_GET["type"]))
{
    $type=$_GET["type"];
    switch ($type){
        case $type=1010:
            $sql="SELECT `name`, `value` FROM `tbl_statistics` WHERE type_code=1010";
            break;

        case $type=1011:
            $sql="SELECT `name`, `value` FROM `tbl_statistics` WHERE `type_code`= 1011";
            break;

        case $type=1012:
            $sql="SELECT `name`, `value` FROM `tbl_statistics` WHERE `type_code`= 1012";
            break;
        default:
            header("Location: ../");
    }
}
else
{
    header("Location: ../");
}
$mysqli = new mysqli("localhost", "root", "", "geeklearn_DB");

$result = $mysqli->query($sql);
if ($result->num_rows>0) {
    $row = $result->fetch_assoc();
    echo json_encode($row);
}
else
    echo "موردی یافت نشد";

$mysqli->close();
?>