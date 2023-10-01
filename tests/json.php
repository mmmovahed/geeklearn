<?php
//$json = '{"a":1,"b":2,"c":3,"d":4,"e":5}';
//$json=json_decode($json,true);
////var_dump($json);
////var_dump(json_decode($json, true));

$json = file_get_contents('php://input');

$data = json_decode($json, true);

require_once "../init.php";

$sql="INSERT INTO tbl_logs (`user_id`, `title`, `ip`, `date`) VALUES('5','".$data["id"]."', '".$data["name"]."','5')";

$main->queryForInsertData($sql);

