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
        $sql = "SELECT id, `email`, `password` FROM `tbl_users` WHERE `email`='$username' AND `password`='$password' ";
        $result = $this->selectData($sql);
        if ($result->num_rows > 0) {
            $row=$result->fetch_assoc();
            $id=$row["id"];
            $_SESSION["id"]=$id;
            $this->logger($id, "ورود کاربر");
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
                $this->logger(0,"عضویت کاربر با ایمیل $email");
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

    public function coursePageInformations($id)
    {
        $query="
        SELECT tbl_courses.id, tbl_courses.title, tbl_courses.description,tbl_courses.advantages , tbl_courses.created_at,
               tbl_courses.last_update, tbl_courses.in_advance,  tbl_courses.thumbnail, tbl_courses.time, tbl_courses.level,
               tbl_courses.status,  tbl_courses.cost, tbl_courses.discount, tbl_courses.episode, 
               (tbl_courses.cost-(tbl_courses.cost*tbl_courses.discount)) cost_with_discount,
               CONCAT(tbl_teachers.name,' ',tbl_teachers.family) teacher_name, tbl_teachers.id teacher_id, tbl_labels.name
       FROM tbl_courses
        INNER JOIN tbl_teachers ON tbl_courses.teacher_id = tbl_teachers.id
        INNER JOIN tbl_labels ON tbl_courses.id = tbl_labels.course_id
        WHERE tbl_courses.status >= 1 AND tbl_courses.id=".$id
        ;
        $result = $this->selectData($query);
        return $result;
    }

    function getComments( $parent = null)
    {
        $sql = "SELECT * FROM `tbl_courses_comments`";
        $sql .= $parent ? " WHERE `parents_id`=" . (int)$parent : null;

        $query = $this->selectData($sql);
        $results = array();
        while ($result = mysqli_fetch_assoc($query)) {
            if ($children = $this->getComments($result['id'])) {
                $result['children'] = $children;
            }
            $results[] = $result;
        }
        return $results;
    }

    function renderComments(array $comments)
    {
        $output = '';
        foreach ($comments as $comment) {
            $output .= $comment['comment'];
            if (isset($comment['children'])) {
                $output .= $this->renderComments($comment['children']);
            }
        }
        return $output;
    }
}