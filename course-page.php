<?php
require_once "init.php";
 $x=(isset($_GET["id"]) AND !empty($_GET["id"])) ? ($id=$_GET["id"]):($main->redirect("index.php"));
?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="./assets/css/course-page.css" />
    <link rel="stylesheet" href="./assets/font/font-awesome/all.min.css" />

    <title>title</title>
</head>

<body>
    <div class="container">
        <site-header></site-header>
        <div class="grid">
            <div class="right-side">
                <?php
                $result= $main->coursePageInformations($id);
                if ($result->num_rows > 0) {
                    $row = $result->fetch_assoc();
                    $title=$row["title"];
                    $description=$row["description"];
                    $advantages=$row["advantages"];
                    $created_at=$row["created_at"];
                    $last_update=$row["last_update"];
                    $in_advance=explode('.',$row["in_advance"]);
                    $in_advance1="";
                    for ($i=1;$i< count($in_advance);$i++)
                    {
                        $in_advance1 .= ($i)."- ".$in_advance[$i]."<br>";
                    }
                    $thumbnail=$row["thumbnail"];
                    $time=$row["time"];
                    $level=$row["level"];
                    $cost=number_format($row["cost"],0,',');
                    $discount=$row["discount"];
                    $cost_with_discount=$row["cost_with_discount"];
                    $teacher_name=$row["teacher_name"];
                    $teacher_id=$row["teacher_id"];
                    $time=$row["time"];
                    $status=$main->ascertainStatus($row["status"]);
                    $episode=$row["episode"];
                }
                if ($cost==0 or $cost == null)
                    $cost="رایگانــ";
                ?>
                <course-details price=<?php echo $cost?> teacher="<?php echo $teacher_name?>" numVideo=<?php echo $episode?> duration='<?php echo $time;?>' level='<?php echo $level?>' status='<?php echo $status?>' lastUpdate='<?php echo $last_update?>'></course-details>
                <course-labels>
<<<<<<< HEAD
                    <label-element slot="label" title="آموزش فلاتر"></label-element>
                    <label-element slot="label" title="آموزش فلاتر"></label-element>
                    <label-element slot="label" title="آموزش فلاتر"></label-element>
                   
=======
                    <?php
                    while($row = $result->fetch_assoc()){
                        echo "<label-element slot='label' title= '".$row["name"]."'></label-element>";
                    }
                    ?>
>>>>>>> 90609fa010e50a11cc98c047f2e4afbc85a32ade
                </course-labels>

            </div>
            <div class="left-side">
                <course-intro img=<?php echo $thumbnail?> title="<?php echo $title?>" requirements="<?php echo $in_advance1?>" description="<?php echo $description?>">
                </course-intro>
                <course-video duration='<?php echo $time;?>' thumbnail="<?php echo $thumbnail;?>">
                    <?php
                    $sql="SELECT * FROM tbl_courses_videos WHERE course_id=".$id;
                    $result=$main->selectData($sql);
                    $i=0;
                    if ($result->num_rows>0)
                        while($row=$result->fetch_assoc()){
                            $i++;
                            if ($row["title"]==null)
                                $row["title"]="قسمت ".$i."، ".$title;
                            if ($row["time"]<10)
                                $row["time"]="0".$row["time"];
                            $row["time"]=$row["time"].":00";
                            echo "<video-item slot='item' number=$i title='".$row["title"]."' duration='$row[time]'></video-item>";
                    }
                    ?>
                </course-video>
                <course-comments>
            </div>
        </div>

        <footer id="footer">
            <site-footer></site-footer>
        </footer>
    </div>
    <script type="module" src="./assets/js/app.js"></script>
</body>

</html>
