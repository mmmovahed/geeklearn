<?php
//$json = '{"a":1,"b":2,"c":3,"d":4,"e":5}';
//$json=json_decode($json,true);
////var_dump($json);
////var_dump(json_decode($json, true));

 $json = file_get_contents('php://input');

// Converts it into a PHP object
$data = json_decode($json, true);

var_dump($data);