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
            return mysqli_insert_id($this->dbLink);
        else if(stristr($q,'UPDATE') || stristr($q,'DELETE'))
            return mysqli_affected_rows($this->dbLink);
        else
            return $result;
    }

    public function queryForInsertData($q)
    {
//        $result = $this->dblink->query($q);
        $result=mysqli_query($this->dblink,$q);
        return $result;
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


    public function __destruct()
    {
        if ($this->dblink)
            mysqli_close($this->dblink);
    }
}