<?php
session_start();
if (isset($_SESSION["user_id"]) AND isset($_SESSION["user_status"]))
{
    echo json_encode(["status"=>"Yes"]);
}
else{
    echo json_encode(["status"=>"No"]);
}