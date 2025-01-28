<?php
define('SECURE_ACCESS', true);
if (!defined('SECURE_ACCESS')) {
  die("Direct access not allowed!");
}
require('../inc/constant.inc.php');
require('../inc/connection.inc.php');
require('../inc/function.inc.php');

// Fetch unique departments
$deptQuery = "SELECT DISTINCT name,id FROM depts_lab_list ORDER BY id";
$deptResult = mysqli_query($con, $deptQuery);
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>CGPA Calculator</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body class="bg-light">
    <div class="container mt-5">
        <h2 class="text-center mb-4">CGPA Calculator</h2>

        <!-- Department Selection -->
        <div class="mb-3">
            <label for="deptSelect" class="form-label">Select Department:</label>
            <select id="deptSelect" class="form-select" onchange="loadSemesters()">
                <option value="">-- Select Department --</option>
                <?php while ($row = mysqli_fetch_assoc($deptResult)): ?>
                    <option value="<?php echo $row['id']; ?>">Department <?php echo $row['name']; ?></option>
                <?php endwhile; ?>
            </select>
        </div>

        <!-- Semester Selection -->
        <div class="mb-3">
            <label for="semesterSelect" class="form-label">Select Semester:</label>
            <select id="semesterSelect" class="form-select" onchange="loadCourses()" disabled>
            <?php
                $data=[
                    'name'=>[
                        '1st',
                        '2nd',
                        '3rd',
                        '4th',
                        '5th',
                        'AB-',
                        'O+',
                        'O-',
                    ]
                ];
                $count=count($data['name']);
                for($i=0;$i<$count;$i++){
                    if($data['name'][$i]==$bloodGroup){
                        echo "<option selected='selected' value=".$data['name'][$i].">".$data['name'][$i]."</option>";
                    }else{
                        echo "<option value=".$data['name'][$i].">".$data['name'][$i]."</option>";
                    }                                                        
                }
                ?>
            </select>
        </div>

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

    <script>
        function loadSemesters() {
            let dept_id = document.getElementById("deptSelect").value;
            let semesterSelect = document.getElementById("semesterSelect");
            semesterSelect.innerHTML = "<option value=''>-- Select Semester --</option>";
            semesterSelect.disabled = true;

            if (dept_id === "") return;

            let xhr = new XMLHttpRequest();
            xhr.open("GET", "fetch_semesters.php?dept_id=" + dept_id, true);
            xhr.onreadystatechange = function () {
                if (xhr.readyState === 4 && xhr.status === 200) {
                    semesterSelect.innerHTML += xhr.responseText;
                    semesterSelect.disabled = false;
                }
            };
            xhr.send();
        }

        function loadCourses() {
            let semester = document.getElementById("semesterSelect").value;
            let dept_id = document.getElementById("deptSelect").value;
            if (semester === "" || dept_id === "") {
                document.getElementById("courseTable").innerHTML = "";
                return;
            }

            let xhr = new XMLHttpRequest();
            xhr.open("GET", "fetch_courses.php?semester=" + semester + "&dept_id=" + dept_id, true);
            xhr.onreadystatechange = function () {
                if (xhr.readyState === 4 && xhr.status === 200) {
                    document.getElementById("courseTable").innerHTML = xhr.responseText;
                }
            };
            xhr.send();
        }

        function calculateCGPA() {
            let totalCredit = 0, weightedGrade = 0;

            document.querySelectorAll("tbody tr").forEach(row => {
                let credit = parseFloat(row.querySelector(".credit").value);
                let grade = parseFloat(row.querySelector(".grade").value) || 0;

                totalCredit += credit;
                weightedGrade += grade * credit;
            });

            let cgpa = totalCredit ? (weightedGrade / totalCredit).toFixed(2) : "0.00";
            document.getElementById("cgpaResult").innerText = cgpa;
        }
    </script>

</body>
</html>

<?php mysqli_close($con); ?>
