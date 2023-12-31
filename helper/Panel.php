<?php
defined("DB_HOST") or die;
class Panel extends Base
{
    public function updateCountOfTheEpisodesOfTheCourses()
    {
        $sqlforselect="
            SELECT DISTINCT(tbl_courses.id)
            FROM tbl_courses INNER join tbl_courses_videos ON tbl_courses_videos.course_id = tbl_courses.id
            WHERE tbl_courses.status=4";
        $resultforquery = $this->selectData($sqlforselect);

        if ($resultforquery->num_rows > 0) {
            echo "There are some courses which should change the count of their episodes because they are updating...<br><br>";
            while($row = $resultforquery->fetch_assoc()) {
                echo "course id: ".$row["id"]."<br>";
                $sql="
                    SELECT count(tbl_courses_videos.episode) episode
                    FROM tbl_courses INNER join tbl_courses_videos ON tbl_courses_videos.course_id = tbl_courses.id
                    WHERE tbl_courses_videos.course_id=".$row["id"];
                $result = $this->selectData($sql);
                if ($result->num_rows > 0)
                {
                    while ($row1=$result->fetch_assoc())
                    {
                        $episode=$row1["episode"];
                        $sql="UPDATE `tbl_courses` SET `episode`='$episode' WHERE `id`=".$row["id"];
                        if ($this->queryForInsertData($sql) === true)
                        {
                            echo "episode count is updated.";
                        }
                    }
                }
                else
                    echo"0 is back";
            }
        }
    }
    public function updateTimeOfTheCourses()
    {
        $sqlforselect="
            SELECT DISTINCT(tbl_courses.id)
            FROM tbl_courses INNER join tbl_courses_videos ON tbl_courses_videos.course_id = tbl_courses.id
            WHERE tbl_courses.status=4";
        $resultforquery = $this->selectData($sqlforselect);

        if ($resultforquery->num_rows > 0) {
            echo "There are some courses which should change the time of their episodes because they are updating...<br><br>";
            while($row = $resultforquery->fetch_assoc()) {
                echo "course id: ".$row["id"]."<br>";
                $sql="
                    SELECT sum(tbl_courses_videos.time) episode
                    FROM tbl_courses INNER join tbl_courses_videos ON tbl_courses_videos.course_id = tbl_courses.id
                    WHERE tbl_courses_videos.course_id=".$row["id"];
                $result = $this->selectData($sql);
                if ($result->num_rows > 0)
                {
                    while ($row1=$result->fetch_assoc())
                    {
                        $episode=$row1["episode"];
                        $hours = floor($episode / 60);
                        $minutes = ($episode % 60);
                        if ($hours < 10)
                            $hours='0'.$hours;
                        if ($minutes < 10)
                            $minutes='0'.$minutes;
                        $seconds=rand(10,60);
                        $time = $hours.":".$minutes.":".$seconds;
                        $sql="UPDATE `tbl_courses` SET `time`='$time' WHERE `id`=".$row["id"];
                        if ($this->queryForInsertData($sql) === true)
                        {
                            echo "episode time is updated.";
                        }
                    }
                }
                else
                    echo"0 is back";
            }
        }
    }

    public function insertCountOfCoursesToStatisticsTable()
    {
        $date=$this->showTime();
        $sql="SELECT id, title FROM tbl_courses";
        $result=$this->selectData($sql);
        if ($result->num_rows>0)
        {
            while($row=$result->fetch_assoc()){
                $title=$row["title"];
                $q="SELECT COUNT(`course_id`) AS `count` FROM `tbl_carts` WHERE `status`=2 AND `course_id`=".$row["id"].";";
                $result1=$this->selectData($q);
                if ($result1->num_rows>0) {
                    while ($row1 = $result1->fetch_assoc()) {
                        $count = $row1["count"];
                        $sql1 = "INSERT INTO `tbl_statistics`(`type_code`, `hint`, `name`, `value`, `date`, `status`)
                    VALUES (1111, '$title', '$row[id]', '$count', '$date' ,1)";

                        $this->queryForInsertData($sql1);
                    }
                }
            }
        }
    }

    public function check_permission($per)
    {
        if ($_SESSION["user_status"]<$per)
            header("Location: /not_found/");
    }

    public function all_Posts()
    {
        $sql = "
        SELECT c.id, c.title, c.thumbnail, c.last_update, cc.name category, c.cost, c.discount, CONCAT(t.name, ' ', t.family) teacher_name, c.status
        FROM `tbl_courses` c INNER JOIN `tbl_teachers` t ON c.teacher_id = t.id LEFT JOIN tbl_courses_categories cc ON c.category_id = cc.id;";
        $result = $this->selectData($sql);
        $data = $result->fetch_all(MYSQLI_ASSOC);
        return json_encode($data);
        }

    public function all_teachers()
    {
        $sql = "
        SELECT *
        FROM `tbl_teachers`
        ";
        $result = $this->selectData($sql);
        $data = $result->fetch_all(MYSQLI_ASSOC);
        return json_encode($data);
    }

    public function all_users()
    {
        $sql = "
        SELECT id, name, family, age, email, phone, `created-at`, `last-login`, `privillage-id`
        FROM `tbl_users`
        ";
        $result = $this->selectData($sql);
        $data = $result->fetch_all(MYSQLI_ASSOC);
        return json_encode($data);
    }
}