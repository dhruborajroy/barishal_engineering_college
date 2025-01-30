<?php
$con = mysqli_connect("localhost", "root", "", "school");

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $student_id = mysqli_real_escape_string($con, $_POST["student_id"]);
    $status = mysqli_real_escape_string($con, $_POST["status"]);
    $date = date("Y-m-d"); // Current date

    // Check if record exists
    $check_sql = "SELECT id FROM attendance WHERE student_id = '$student_id' AND date = '$date'";
    $check_res = mysqli_query($con, $check_sql);

    if (mysqli_num_rows($check_res) > 0) {
        // Update existing record
        $sql = "UPDATE attendance SET value = '$status', updated_on = UNIX_TIMESTAMP() WHERE student_id = '$student_id' AND date = '$date'";
    } else {
        // Insert new attendance record
        $sql = "INSERT INTO attendance (student_id, value, date, added_on) VALUES ('$student_id', '$status', '$date', UNIX_TIMESTAMP())";
    }

    if (mysqli_query($con, $sql)) {
        echo "Success";
    } else {
        echo "Error: " . mysqli_error($con);
    }
}

mysqli_close($con);
?>
