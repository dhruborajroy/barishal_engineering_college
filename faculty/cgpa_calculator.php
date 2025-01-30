<?php 
define('SECURE_ACCESS', true);
include("header.php");


// Handle AJAX request for fetching courses
if (isset($_POST['action']) && $_POST['action'] == "fetch_courses") {
    $semester = mysqli_real_escape_string($con, $_POST['semester']);
    $dept_id = mysqli_real_escape_string($con, $_POST['dept_id']);

    $sql = "SELECT * FROM courses WHERE semester = '$semester' AND dept_id = '$dept_id' ORDER BY course_code";
    $result = mysqli_query($con, $sql);

    while ($row = mysqli_fetch_assoc($result)) {
        echo "<tr>
                <td>{$row['course_name']}</td>
                <td><input type='number' class='form-control credit' value='{$row['credit']}' readonly></td>
                <td><input type='number' class='form-control grade' step='0.01' min='0' max='4' required></td>
              </tr>";
    }
    exit();
}

// Fetch unique departments

?>
            <!-- MAIN CONTENT-->
            <div class="main-content">
                <div class="section__content section__content--p30">
                    <div class="container-fluid">
                        <div class="row m-t-25">
                            <div class="container mt-5">
                                    <h2 class="text-center mb-4">CGPA Calculator</h2>
                                    <!-- Department Selection -->
                                    <div class="mb-3">
                                        <label for="deptSelect" class="form-label">Select Department:</label>
                                        <select id="deptSelect" class="form-select">
                                            <option value="">-- Select Department --</option>
                                            <?php 
                                            $deptQuery = "SELECT DISTINCT dept_id FROM courses ORDER BY dept_id";
                                            $deptResult = mysqli_query($con, $deptQuery);
                                            while ($row = mysqli_fetch_assoc($deptResult)): ?>
                                                <option value="<?php echo $row['dept_id']; ?>"><?php echo $row['dept_id']; ?></option>
                                            <?php endwhile; ?>
                                        </select>
                                    </div>

                                    <!-- Semester Selection -->
                                    <div class="mb-3">
                                        <label for="semesterSelect" class="form-label">Select Semester:</label>
                                        <select id="semesterSelect" class="form-select">
                                            <option value="">-- Select Semester --</option>
                                            <?php for ($i = 1; $i <= 8; $i++): ?>
                                                <option value="<?php echo $i; ?>">Semester <?php echo $i; ?></option>
                                            <?php endfor; ?>
                                        </select>
                                    </div>

                                    <!-- Course Table -->
                                    <form id="cgpaForm">
                                        <table class="table table-bordered">
                                            <thead>
                                                <tr>
                                                    <th>Course</th>
                                                    <th>Credit</th>
                                                    <th>Grade (0-4 Scale)</th>
                                                </tr>
                                            </thead>
                                            <tbody id="courseTable">
                                                <!-- Courses will be loaded dynamically -->
                                            </tbody>
                                        </table>
                                        <button type="button" class="btn btn-primary w-100" onclick="calculateCGPA()">Calculate CGPA</button>
                                    </form>

                                    <div class="mt-4 text-center">
                                        <h4>CGPA: <span id="cgpaResult">0.00</span></h4>
                                    </div>
                                </div>

                        </div>
<?php 
include("footer.php");
?>

<script>
                                    $(document).ready(function () {
                                        // Load Courses when Semester & Department are selected
                                        $("#semesterSelect, #deptSelect").change(function () {
                                            let semester = $("#semesterSelect").val();
                                            let dept_id = $("#deptSelect").val();
                                            $("#courseTable").html("");

                                            if (semester !== "" && dept_id !== "") {
                                                $.ajax({
                                                    url: "cgpa_calculator",
                                                    type: "POST",
                                                    data: { action: "fetch_courses", semester: semester, dept_id: dept_id },
                                                    success: function (response) {
                                                        $("#courseTable").html(response);
                                                    }
                                                });
                                            }
                                        });
                                    });

                                    // Calculate CGPA
                                    function calculateCGPA() {
                                        let totalCredit = 0, weightedGrade = 0;

                                        $("#courseTable tr").each(function () {
                                            let credit = parseFloat($(this).find(".credit").val());
                                            let grade = parseFloat($(this).find(".grade").val()) || 0;

                                            totalCredit += credit;
                                            weightedGrade += grade * credit;
                                        });

                                        let cgpa = totalCredit ? (weightedGrade / totalCredit).toFixed(2) : "0.00";
                                        $("#cgpaResult").text(cgpa);
                                    }
                                </script>