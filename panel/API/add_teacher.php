<?php
require_once "init.php";
$per=6;
$json = file_get_contents('php://input');
if (empty($json) OR $json == null)
    $main->redirect("../../not_found");

$data = json_decode($json, true);
//$main->check_permission($per);

/*
 * user_id = user table => id
 *  name
 *  family
 *  email
 *  teacher_id
 *  telegram-id
 *  picture
 *  description
 */
if (
    isset($data["user_id"]) and
    isset($data["name"]) and
    isset($data["family"]) and
    isset($data["email"]) and
    isset($data["telegram_id"]) and
    isset($data["picture"]) and
    isset($data["description"])
)
{
    $id=$data["user_id"];
    $name=$data["name"];
    $family=$data["family"];
    $email=$data["email"];
    $telegram=$data["telegram_id"];
    $picture=$data["picture"];
    $description=$data["description"];


    $sql="
    INSERT INTO `tbl_teachers`(`user_id`, `name`, `family`, `email`, `telegram-id`, `picture`, `description`, `status`) VALUES
                (".$id.", '".$name."', '".$family."', '".$email."', '".$telegram."', 
                 '".$picture."', '".$description."', 1);";

    echo $sql;
    $res=$main->queryForInsertData($sql);
    if ($res){
        $sql="UPDATE `tbl_users` SET `status`=5 WHERE id=".$id;
        $res=$main->query($sql);

        if ($res)
            http_response_code(200);
        else
            http_response_code(500);
    }
    else
        http_response_code(500);

}
else
{
    http_response_code(406);
}