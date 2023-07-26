<?php
defined("DB_HOST") or die;
class Frontend extends base
{
    public function login($username,$password)
    {
        $sql = "SELECT email, password FROM users WHERE email=".'$email'." AND password=".'$password';
        $result = $this->query($sql);

        if ($result->num_rows > 0) {
            // output data of each row
            while($row = $result->fetch_assoc()) {
                $this->redirect("../login&register/login/login.php?login_status=true");
            }
        } else {
            $this->redirect("../login&register/login/login.php?login_status=false");

        }
    }
}