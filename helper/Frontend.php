<?php
defined("DB_HOST") or die;
class Frontend extends base
{
    public function checkForExisted($email, $phone)
    {
        $sql = "SELECT `email`,`phone` FROM `tbl_users` WHERE `email`='$email' OR `phone`='$phone'";
        $result = $this->selectData($sql);
        if ($result->num_rows > 0)
            return true;
    }
    public function login($username,$password)
    {
        $sql = "SELECT `email`, `password` FROM `tbl_users` WHERE `email`='$username' AND `password`='$password' ";
        $result = $this->selectData($sql);
        if ($result->num_rows > 0) {
            #$row = $result->fetch_assoc();
            $this->redirect("/login&register/login.php?login_status=successfully");
            } else {
            $this->redirect("/login&register/login.php?login_status=failed");
        }
    }
    public function createUser($phone, $email, $password)
    {
        if (!($this->checkForExisted($email,$phone)))
        {
            $date=$this->currentTime();
            $sql = "INSERT INTO `tbl_users`(`email`, `phone`, `password`, `created-at`, `last-login`, `privillage-id`, `status`)
            VALUES ('$email','$phone','$password','$date','$date',1,0)";
            if ($this->queryForInsertData($sql) === TRUE) {
                $this->redirect("/login&register/register.php?register_status=successfully");
            }
            else
            {
                $this->redirect("/login&register/register.php?register_status=failed");
            }
        }
        else
        {
            $this->redirect("/login&register/register.php?register_status=failed");
        }

    }
}