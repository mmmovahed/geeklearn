<?php
defined("DB_HOST") or die;
class Panel extends Base
{
    public function updateCountOfTheEpisodesOfTheCourses()
    {
        $sqlforselect="
            SELECT tbl_courses.id ,COUNT(tbl_courses_videos.episode) episode
                    FROM tbl_courses 
                    INNER JOIN tbl_courses_videos ON tbl_courses.id=tbl_courses_videos.course_id";
                 #   WHERE tbl_courses.status=4";
        $result = $this->selectData($sqlforselect);

        if ($result->num_rows > 0) {
            echo "There are some course which should change the count of their episodes because they are updating...<br><br>";
            while($row = $result->fetch_assoc()) {
                echo "course id: ".$row["id"]."<br>";
                echo "episodes are ".$row["episode"];
                $episode=$row["episode"];
                $sql="UPDATE `tbl_courses` SET `episode`='$episode' WHERE `id`=".$row["id"];
                if ($this->queryForInsertData($sql) === true)
                {
                    echo "time is updated.";
                }
            }
        }
    }
    public function updateTimeOfTheCourses()
    {
        $sqlforselect="
            SELECT tbl_courses.id ,SUM(tbl_courses_videos.time) time
                    FROM tbl_courses 
                    INNER JOIN tbl_courses_videos ON tbl_courses.id=tbl_courses_videos.course_id
                    WHERE tbl_courses.status=4";
        $result = $this->selectData($sqlforselect);

        if ($result->num_rows > 0) {
            echo "There are some course which should change the time because they are updating...<br><br>";
            while($row = $result->fetch_assoc()) {
                echo "course id: ".$row["id"]."<br>";
                $hours = floor($row["time"] / 60);
                $minutes = ($row["time"] % 60);
                if ($hours < 10)
                    $hours='0'.$hours;
                if ($minutes < 10)
                    $minutes='0'.$minutes;
                $seconds=rand(10,60);
                $time = $hours.":".$minutes.":".$seconds;
                echo "time is ".$time;
                $sql="UPDATE `tbl_courses` SET `time`='$time' WHERE `id`=".$row["id"];
                if ($this->queryForInsertData($sql) === true)
                {
                    echo "time is updated.";
                }
            }
        } else {
            echo "There is nothing for update!";
        }
    }
}