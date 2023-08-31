<?php
header("Content-Type: application/json; charset=UTF-8");

$array=['germany' => [['benz' => 'high' , 'id' => 4], ['bmw' => 'high', 'id' => 78], ['audi' => 'low'], 'id'=>5,'name' => 'germany'], 'korea' => ['kia', 'hunday'], 'iran' => ['saipa', 'iran khodro']];

echo(json_encode($array));