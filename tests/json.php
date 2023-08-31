<?php
header("Content-Type: application/json; charset=UTF-8");

$array=array('germany' => array('benz'=>['benz' => 'high' , 'id' => 4]), ['bmw' => 'high', 'id' => 78], ['audi' => 'low'], 'id'=>5,'name' => 'germany', 'korea' => ['kia', 'hunday'], 'iran' => ['saipa', 'iran khodro']);

var_dump(json_encode($array));