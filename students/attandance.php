<?php 
define('SECURE_ACCESS', true);
include("header.php");
if(isset($_POST['submit'])){

$sql = "SELECT s.id, s.name, s.reg_no, 
(SELECT value FROM attendance a WHERE a.student_id = s.id ORDER BY a.id DESC LIMIT 1) AS attendance_status 
FROM students s where semester = '$semester'";

$res = mysqli_query($con, $sql);

}
?>
            <!-- MAIN CONTENT-->
            <div class="main-content">
                <div class="section__content section__content--p30">
                    <div class="container-fluid">
                        <div class="row">
                        <div class="col-lg-12">
                                <div class="card">
                                    <div class="card-header">
                                        <strong>Students Attandance</strong>
                                    </div>
                                    <div class="card-body card-block">
                                        <form action="" method="post" enctype="multipart/form-data" class="form-horizontal">
                                            <div class="row form-group col-md-12">
                                                <div class="col col-md-2">
                                                    <label for="selectLg" class=" form-control-label">Select Course</label>
                                                </div>
                                                <div class="col-6 col-md-5">
                                                <select name="semester" id="semester" class="form-control-lg form-control">
                                                    <?php 
                                                    $semesters = ['1st', '2nd', '3rd']; 
                                                    foreach ($semesters as $sem) {
                                                        echo "<option value='$sem'>$sem</option>";
                                                    }
                                                    ?>
                                                </select>
                                                </div>
                                                <div class="col-6 col-md-5">
                                                    <select name="course" id="course" class="form-control-lg form-control">
                                                        <option value="">Select Course</option>
                                                    </select>
                                                </div>
                                            </div>
                                        </form>
                                    </div>
                                    <div class="card-footer">
                                        <button type="submit" name="submit" class="btn btn-primary btn-sm">
                                            <i class="fa fa-dot-circle-o"></i> Submit
                                        </button>
                                        <button type="reset" class="btn btn-danger btn-sm">
                                            <i class="fa fa-ban"></i> Reset
                                        </button>
                                    </div>
                                </div>
                            </div>
                        <div class="col-md-12">
                            <div class="card">
                                <div class="card-header">
                                    <strong class="card-title">Attendance List</strong>
                                </div>
                                <div id="students-container">
                                    <p class="text-center">Select a semester to view students.</p>
                                </div>
                            </div>

                                <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
                                <script>
                                    $(document).ready(function () {
                                        $(".attendance-toggle").change(function () {
                                            let student_id = $(this).data("id"); // Get student ID
                                            let status = $(this).is(":checked") ? 1 : 0; // 1 for present, 0 for absent
                                            $.post("insert_attendance", { student_id: student_id, status: status }, function (response) {
                                                console.log(response); // Log response (optional);
                                                toastr.success(student_id+'sMeal status updated successfully!', 'Success');
                                            });
                                        });
                                    });
                                </script>

                            </div>
                        </div>
                        </div>
<?php 
include("footer.php");
?>

<script>
    $(document).ready(function() {
    $("#semester").change(function() {
        var semester = $(this).val();
        
        // Fetch courses dynamically
        $.ajax({
            url: "ajax/fetch_courses",
            method: "POST",
            data: { semester: semester },
            success: function(response) {
                $("#course").html(response);
            }
        });

        // Fetch students dynamically
        $.ajax({
            url: "ajax/fetch_students",
            method: "POST",
            data: { semester: semester },
            success: function(response) {
                $("#students-container").html(response);
            }
        });
    });

    // Handle attendance toggle
    $(document).on("change", ".attendance-toggle", function() {
        let student_id = $(this).data("id");
        let status = $(this).is(":checked") ? 1 : 0;

        $.post("insert_attendance", { student_id: student_id, status: status }, function(response) {
            console.log(response);
            toastr.success('Attendance updated successfully!', 'Success');
        });
    });
});

// Success message

// // Error message
// toastr.error('sThere was an error updating the meal status.', 'Error');

// // Warning message
// toastr.warning('sPlease check your input.', 'Warning');

// // Info message
// toastr.info('sTshis is an informational message.', 'Info');
// toastr.info('sTshis is an informational message.', 'Info');

</script>