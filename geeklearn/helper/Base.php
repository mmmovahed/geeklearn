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
        if(stristr($q,'insert'))
            return mysqli_insert_id($this->dbLink);
        else if(stristr($q,'update') || stristr($q,'delete'))
            return mysqli_affected_rows($this->dbLink);
        else
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

    public function setSuccessMessage($key,$message)
    {
        if ($this->get($key) == $key){
            print("<div class='alert alert-success'>$message</div>");
        }
    }

    public function setDangerMessage($key,$message)
    {
        if ($this->get($key) == $key){
            print("<div class='alert alert-danger'>$message</div>");
        }
    }



    public function __destruct()
    {
        if ($this->dblink)
            mysqli_close($this->dblink);
    }
}