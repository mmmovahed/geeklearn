<?php
defined("DB_HOST") or die;
abstract class Base
{
    protected $dblink=null;
    public function __construct()
    {
        $this->dblink=mysqli_connect(DB_HOST,DB_USERNAME,DB_PASSWORD) or die;
        mysqli_select_db($this->dblink,DB_NAME) or die;
    }
    public function query($q)
    {
        $result=mysqli_query($this->dblink,$q);
        if(stristr($q,'INSERT'))
            return mysqli_insert_id($this->dblink);
        else if(stristr($q,'UPDATE') || stristr($q,'DELETE'))
            return mysqli_affected_rows($this->dblink);
        else
            return $result;
    }

    public function showTime()
    {
        $time=date("Y-m-d--H:i:s");
        return $time;
    }
    public function queryForInsertData($q)
    {
//        $result = $this->dblink->query($q);
        $result=mysqli_query($this->dblink,$q);
        return $result;
    }

    public function last_id()
    {
        return mysqli_insert_id($this->dblink);
    }
    public function selectData($q)
    {
        $result = mysqli_query($this->dblink,$q);
        return $result;
    }

    public function post($key)
    {
        if (isset($_POST[$key]))
            return(trim($key));
        else
            return '';
    }
    public function get($key)
    {
        if (isset($_GET[$key]))
            return(trim($key));
        else
            return '';
    }

    public function setSuccessMessage($message)
    {
            print("<my-alert title='$message' icon='fa-check'></my-alert>");
    }

    public function setDangerMessage($message)
    {
        print("<my-alert title='$message' icon='fa-xmark'></my-alert>");
    }
    public function redirect($url)
    {
        header("location:$url");
        die;//security fix bug
    }

    public function currentTime()
    {
        $date=date("Y-m-d H:i:s");
        return $date;
    }

    public function showTheLatestCourses()
    {
        $query="
        SELECT tbl_courses.id, tbl_courses.title, tbl_courses.thumbnail,tbl_courses.time, tbl_courses.cost, tbl_courses.discount,
               (tbl_courses.cost-(tbl_courses.cost*tbl_courses.discount)) cost_with_discount, CONCAT(tbl_teachers.name,' ',
                tbl_teachers.family) teacher_name, tbl_teachers.id teacher_id
        FROM tbl_courses
        INNER JOIN tbl_teachers ON tbl_courses.teacher_id = tbl_teachers.id
        WHERE tbl_courses.status >= 1
        ORDER BY created_at DESC
        LIMIT 10
        ";
        $result = $this->selectData($query);
        return $result;
    }

    public function __destruct()
    {
        if ($this->dblink)
            mysqli_close($this->dblink);
    }


    public function logger($userid, $title)
    {
        $ipaddress = getenv("REMOTE_ADDR");
        $time=$this->showTime();
        $sql="INSERT INTO `tbl_logs` (`user_id`, `title`, `ip`, `date`) VALUES($userid, '$title', '$ipaddress','$time')";
        $this->queryForInsertData($sql);
    }

    public function not_found()
    {
        header("Location:/Not_found/");
    }

    public function time()
    {
        $TIME = date("Y-m-d--H:i:s");
        return $TIME;
    }
}