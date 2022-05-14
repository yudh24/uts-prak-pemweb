<?php
include "dbconnect.php";
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Panji Yudha Tama</title>

    <link rel="stylesheet" href="css/fontawesome.min.css">
    <link rel="stylesheet" href="css/brands.min.css">
    <link rel="stylesheet" href="css/solid.min.css">
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link href='https://fonts.googleapis.com/css?family=El Messiri' rel='stylesheet'>
    <script src="js/bootstrap.min.js"></script>

    <style>
        body {
            background-image: url(image/wall.webp);
            font-family: 'El Messiri';
            font-size: 20px;
        }
        #name{
            font-family: 'El Messiri';
            font-size: 30px;
            text-align: center;
        }
        a {
            color: black;
            text-decoration: none;
        }
    </style>
</head>
<body>
    <div class="container">
        <div class="row">
            <div class="col-4"></div>
            <div class="col-4" style="text-align: center;">
                <img style="border-radius: 50%; height: auto; width: 50%; margin-top: 30px;" src="image/profile2.jpg" alt="Foto Profile">
                <p id="name">Panji Yudha Tama <br> Network Trainer & Engineer</p>
            </div>
            <div class="col-4"></div>
        </div>
        <div class="row h-100">
            <div class="col-5">
                <p style="font-size: 25px;">Pekerjaan    :</p>
                <hr style="margin-top: -1em;">
                <ul style="margin-left: -0.5em;">
                    <li>
                        <?php
                            $sql = "SELECT * FROM job";
                            $result = $conn->query($sql);

                            while ($row = $result->fetch_assoc()) {
                                echo $row['perusahaan']."<br>";
                                echo $row['posisi']."<br>";
                                echo $row['masa']."<br>";
                                echo "<div>Job Desc :</div>";
                                echo "<ul>";
                                    $sql1 = "SELECT * FROM jobdesc WHERE idj=".$row['id'];
                                    $result1 = $conn->query($sql1);

                                    while ($row1 = $result1->fetch_assoc()) {
                                        echo "<li>".$row1["joblist"]."</li>";
                                    }
                                echo "</ul>";
                            }
                        ?>
                    </li>
                </ul>
                <p style="font-size: 25px;">Education    :</p>
                <hr style="margin-top: -1em;">
                <ul style="margin-left: -0.5em;">
                    <?php
                        $sql = "SELECT * FROM pendidikan";
                        $result = $conn->query($sql);

                        while ($row = $result->fetch_assoc()) {
                            echo "<li>".$row["sekolah"]."</li>";
                        }
                    ?>
                </ul>
            </div>
            <div class="col-2" style="text-align: center;">
                <div class="vr h-100" style="border: 2px solid black;"></div>
            </div>
            <div class="col-5">
                <p style="font-size: 25px;">Skill    :</p>
                <hr style="margin-top: -1em;">
                <ul style="margin-left: -0.5em;">
                    <?php
                        $sql = "SELECT * FROM skill";
                        $result = $conn->query($sql);

                        while ($row = $result->fetch_assoc()) {
                            echo "<li>".$row["skill"]."</li>";
                        }
                    ?>
                </ul>
                <p style="font-size: 25px;">Certification</p>
                <hr style="margin-top: -1em;">
                <ul style="margin-left: -0.5em;">
                    <?php
                        $sql = "SELECT * FROM certification";
                        $result = $conn->query($sql);

                        while ($row = $result->fetch_assoc()) {
                            echo "<li>".$row["certification"]."</li>";
                        }
                    ?>
                </ul>
            </div>
        </div>
        <div class="row" style="text-align: center;">
            <span style="margin-top: 1em;">
                <a href="https://web.facebook.com/panji.yudha.338"><span class="fa-brands fa-facebook"></span></a>
                <a href="https://twitter.com/panjiiyudhaa"><span class="fa-brands fa-twitter"></span></a>
                <a href="https://www.linkedin.com/in/panji-yudha-tama-554a4b1b5/"><span class="fa-brands fa-linkedin-in"></span></a>
                <a href="https://github.com/yudh24"><span class="fa-brands fa-github"></span></a>
                <a href="mailto:yudha.mawon24@gmail.com"><i class="fa-solid fa-at"></i></a>
            </span>
        </div>
    </div>
</body>
</html>