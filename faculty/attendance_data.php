<?php 
define('SECURE_ACCESS', true);
include("header.php");
?>
<!-- MAIN CONTENT-->
<div class="main-content">
            <div class="col-12">
                        <div class="card">
                            <div class="card-body">
                                <div class="heading-layout1">
                                    <div class="item-title">
                                        <h3>Attendence Sheet Of Class One: Section A, April 2019</h3>
                                    </div>
                                </div>
                                <div class="table-responsive"><?php
// Assuming the database connection is established as $con

// Get the course_id and student_id (you can pass these via GET or POST as needed)
$course_id = '3';  // Example course_id, replace it dynamically
$student_id = $user_id;           // The specific student ID

// Query to fetch attendance data for the specific course and student
$query = "
    SELECT * 
    FROM attendance 
    WHERE course_id = '$course_id' 
    AND student_id = '$student_id'
    ORDER BY date ASC";  // Sorting by date ascending (can be DESC if you prefer)
$result = mysqli_query($con, $query);

// Check if attendance data is found
if (mysqli_num_rows($result) > 0) {
    // Initialize an array to hold the dates
    $dates = [];
    $attendance_data = [];

    // Loop through the records to fetch all unique dates and attendance values
    while ($row = mysqli_fetch_assoc($result)) {
        $attendance_data[$row['date']] = $row['value'];  // Store attendance values by date
        $dates[] = $row['date'];  // Collect all unique dates
    }

    // Create the attendance table
    echo '<table class="table table-striped table-bordered text-nowrap">';
    echo '<thead>';
    echo '<tr><th class="text-left">Student</th>';  // First column for student name
    foreach (array_unique($dates) as $date) {
        echo '<th>' . $date . '</th>';  // Create a column for each date
    }
    echo '<th>Attendance Percentage</th>';  // Add an extra column for percentage
    echo '</tr>';
    echo '</thead>';
    echo '<tbody>';

    // Fetch student name for the specific student_id
    $student_name = "Unknown Student"; // Default value in case of missing data
    $student_query = "SELECT name FROM students WHERE id = '$student_id'"; // Replace with your student table and field
    $student_result = mysqli_query($con, $student_query);
    if ($student_row = mysqli_fetch_assoc($student_result)) {
        $student_name = $student_row['name'];
    }

    // Output the row for this student
    echo '<tr>';
    echo '<td class="text-left">' . $student_name . '</td>';  // Display student name
    $present_days = 0; // Initialize present days count
    foreach (array_unique($dates) as $date) {
        // Check if the student has an attendance value for this date
        $attendance_status = isset($attendance_data[$date]) && $attendance_data[$date] == 1
            ? '<i class="fas fa-check text-success"></i>' 
            : (isset($attendance_data[$date]) && $attendance_data[$date] == 0
                ? '<i class="fas fa-times text-danger"></i>' 
                : '');
        echo '<td class="status-column">' . $attendance_status . '</td>';  // Display attendance status
        
        // Increment the present days count if the student is marked as present (value = 1)
        if (isset($attendance_data[$date]) && $attendance_data[$date] == 1) {
            $present_days++;
        }
    }
    
    // Calculate the attendance percentage
    $total_days = count(array_unique($dates));  // Total number of dates (columns)
    $attendance_percentage = ($total_days > 0) ? ($present_days / $total_days) * 100 : 0;

    // Display the attendance percentage in the last column
    echo '<td class="text-center">' . number_format($attendance_percentage, 2) . '%</td>';
    echo '</tr>';

    echo '</tbody>';
    echo '</table>';
} else {
    echo "No attendance records found for this student and course.";
}
?>

<style>
    .status-column {
        text-align: center; /* Center align the content */
        vertical-align: middle; /* Vertically align the icons */
        padding: 15px; /* Optional: to adjust spacing */
    }

    .table td, .table th {
        vertical-align: middle; /* Ensure all table cells are vertically aligned */
    }

    .table th {
        text-align: center;
    }

    .table td {
        text-align: center;
    }
</style>

                                </div>
                            </div>
                        </div>
                    </div>
                </div>
<?php 
include("footer.php");
?>
