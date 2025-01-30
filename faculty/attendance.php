<?php 
define('SECURE_ACCESS', true);
include("header.php");

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
                            <form  method="post" enctype="multipart/form-data" class="form-horizontal">
                                <div class="row form-group col-md-12">
                                    <div class="col-sm-12 col-md-4 mt-2">
                                        <input type="date" id="dateInput" name="dateInput" class="form-control-lg form-control" select>
                                        <input  type="hidden" value="67989c0243271"  id="faculty_id" name="faculty_id" class="form-control-lg form-control">
                                    </div>
                                    <div class="col-sm-12 col-md-4 mt-2">
                                        <select name="semester" id="semester" class="form-control-lg form-control">
                                            <option value='0'>Select Semester</option>
                                            <?php 
                                            $semesters = [
                                                '1' => '1st',
                                                '2' => '2nd',
                                                '3' => '3rd',
                                                '4' => '4th',
                                                '5' => '5th',
                                                '6' => '6th',
                                                '7' => '7th',
                                                '8' => '8th',
                                            ];
                                            foreach ($semesters as $key=>$sem) {
                                                echo "<option value='$key'>$sem</option>";
                                            }
                                            ?>
                                        </select>
                                    </div>
                                    <div class="col-sm-12 col-md-4 mt-2">
                                        <select name="course" id="course" class="form-control-lg form-control">
                                            <option value="">Select Course</option>
                                        </select>
                                    </div>
                                </div>
                            </form>
                        </div>
                        <div class="card-footer">
                            <input type="submit" value="Get Students" id="get_students"  name="submit" class="btn btn-primary btn-sm">
                               
                            <a href="attendance"> 
                                <button type="reset" class="btn btn-danger btn-sm">
                                    <i class="fa fa-ban"></i> Reset
                                </button>
                            </a>
                        </div>
                    </div>
                </div>
            <div class="col-md-12">
                <div class="card">
                    <div class="card-header">
                        <strong class="card-title">Attendance List</strong>
                    </div>
                    <div id="students-container">
                        <p class="text-center">Select date, semester, course to view students.</p>
                    </div>
                </div>
                </div>
            </div>
            </div>
<?php 
include("footer.php");
?>

<script>

$(document).ready(function() {
    // Function to check if all fields are filled
    function checkFormFields() {
        var dateInput = $('#dateInput').val();
        var semester = $('#semester').val();
        var course = $('#course').val();

        // if (dateInput !== "" && semester !== "0" && course !== "") {
        //     // $('#get_students').prop('disabled', false); 
        // } else {
        //     // $('#get_students').prop('disabled', true); 
        // }
    }


    $("#dateInput").change(function() {
        checkFormFields();
    });


    $("#semester").change(function() {
        checkFormFields();
        
        var semester = $(this).val();
        var faculty_id = $('#faculty_id').val();

        $.ajax({
            url: "ajax/fetch_courses",
            method: "POST",
            data: { semester: semester ,
                faculty_id:faculty_id
            },
            success: function(response) {
                $("#course").html(response);
                checkFormFields();  
            }
        });

    });

    $("#course").change(function() {
        checkFormFields();
    });

    $(document).on("change", ".attendance-toggle", function() {
        let student_id = $(this).data("id");
        let status = $(this).is(":checked") ? 1 : 0;

        var selectedDate = $('#dateInput').val();
        var faculty_id = $('#faculty_id').val();
        var semester = $('#semester').val();
        var course = $('#course').val();

        $.post("ajax/insert_attendance", { 
            student_id: student_id, 
            status: status ,
            semester: semester,
            selectedDate: selectedDate,
            course:course,
            faculty_id:faculty_id
        }, function(response) {
            if(response == "success") {
                toastr.success('Attendance updated successfully!', 'Success');
            } else {
                toastr.warning('Something went wrong.', 'Warning');
            }
        });
    });

    // Handle submit action
    $(document).on("click", "#get_students", function() {

        var selectedDate = $('#dateInput').val();
        var semester = $('#semester').val();
        var course = $('#course').val();
        
        $.ajax({
            url: "ajax/fetch_students",
            method: "POST",
            data: { 
                selectedDate:selectedDate,
                semester: semester,
                course:course  
            },
            success: function(response) {
                $("#students-container").html(response);
            }
        });
    });
});


</script>