<?php
defined("DB_HOST") or die;
class Frontend extends base
{
    public function login($username,$password)
    {
        $sql = "SELECT `email`, `password` FROM `tbl_users` WHERE `email`='$username' AND `password`='$password' ";
        $result = $this->selectData($sql);
        if ($result->num_rows > 0) {
            #$row = $result->fetch_assoc();
            $this->redirect("/login.php?login_status=successfully");
            } else {
            $this->redirect("/login.php?login_status=failed");

        }
    }
}