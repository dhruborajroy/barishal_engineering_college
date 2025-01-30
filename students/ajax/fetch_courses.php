<?php 

define('SECURE_ACCESS', true);
require('../../inc/constant.inc.php');
require('../../inc/connection.inc.php');
require_once("../../inc/smtp/class.phpmailer.php");
require('../../inc/function.inc.php');

if (isset($_POST['semester'])) {
    $semester = mysqli_real_escape_string($con, $_POST['semester']);

    // Fetch courses based on semester
    $query = "SELECT id, course_name FROM courses WHERE semester = '$semester'";
    $result = mysqli_query($con, $query);

    echo "<option value=''>Select Course</option>";
    
    if (mysqli_num_rows($result) > 0) {
        while ($row = mysqli_fetch_assoc($result)) {
            echo "<option value='".$row['id']."'>".$row['course_name']."</option>";
        }
    } else {
        echo "<option value=''>No courses found</option>";
    }
}

?>