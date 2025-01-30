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
            <div class="table-responsive">
            <table class="table bs-table table-striped table-bordered text-nowrap">
                <?php 
                    // Fetch all distinct dates
                    $date_query = "SELECT DISTINCT date FROM attendance ORDER BY date ASC";
                    $date_result = mysqli_query($con, $date_query);
                    $dates = [];
                    while ($row = mysqli_fetch_assoc($date_result)) {
                        $dates[] = $row['date'];
                    }

                    // Fetch student data and their attendance records
                    $student_query = "SELECT s.id, s.name, s.class_roll FROM students s ORDER BY s.class_roll ASC";
                    $student_result = mysqli_query($con, $student_query);
                    $students = [];
                    while ($row = mysqli_fetch_assoc($student_result)) {
                        $students[$row['id']] = [
                            'name' => $row['name'], 
                            'class_roll' => $row['class_roll'], 
                            'attendance' => array_fill_keys($dates, '<i class="fas fa-times text-danger"></i>') // Default absent
                        ];
                    }

                    // Fetch attendance records
                    $attendance_query = "SELECT student_id, date, value FROM attendance";
                    $attendance_result = mysqli_query($con, $attendance_query);
                    while ($row = mysqli_fetch_assoc($attendance_result)) {
                        // Make sure the value is either '1' or '0'
                        $attendance_value = $row['value'] == 1 ? '<i class="fas fa-check text-success"></i>' : '<i class="fas fa-times text-danger"></i>';
                        $students[$row['student_id']]['attendance'][$row['date']] = $attendance_value;
                    }

                    $total_days = count($dates);
                ?>
                <thead>
                    <tr>
                        <th class="text-left">Students</th>
                        <?php foreach ($dates as $date) { echo "<th>$date</th>"; } ?>
                        <th>Attendance %</th>
                    </tr>
                </thead>
                <tbody>
                    <?php foreach ($students as $student) { 
                        $present_count = substr_count(implode('', $student['attendance']), 'fa-check');
                    ?>
                        <tr>
                            <td class="text-left"><?php echo $student['name']; ?></td>
                            <?php foreach ($dates as $date) {
                                echo "<td>" . $student['attendance'][$date] . "</td>";
                            } ?>
                            <td><?php echo $total_days > 0 ? round(($present_count / $total_days) * 100, 2) . '%' : '0%'; ?></td>
                        </tr>
                    <?php } ?>
                </tbody>
            </table>
            </div>
         </div>
      </div>
   </div>
</div>
<?php 
   include("footer.php");
   ?>