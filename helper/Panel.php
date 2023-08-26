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
}