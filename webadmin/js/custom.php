<?php 
define('SECURE_ACCESS', true);
include('../../inc/connection.inc.php');
include('../../inc/function.inc.php');
?>
(function ($) {

	/*-------------------------------------
		  Doughnut Chart 
	  -------------------------------------*/
	if ($("#student-doughnut-chart").length) {
	  var doughnutChartData = {
		labels: ["Female Students", "Male Students"],
		datasets: [{
		  backgroundColor: ["#304ffe", "#ffa601"],
		  data: [<?php echo gettotalstudent('female')."," .gettotalstudent('male')?>],
		  label: "Total Students"
		}, ]
	  };
	  var doughnutChartOptions = {
		responsive: true,
		maintainAspectRatio: false,
		cutoutPercentage: 65,
		rotation: -9.4,
		animation: {
		  duration: 2000
		},
		legend: {
		  display: false
		},
		tooltips: {
		  enabled: true
		},
	  };
	  var studentCanvas = $("#student-doughnut-chart").get(0).getContext("2d");
	  var studentChart = new Chart(studentCanvas, {
		type: 'doughnut',
		data: doughnutChartData,
		options: doughnutChartOptions
	  });
	}
    /*-------------------------------------
		  Bar Chart 
	  -------------------------------------*/
	if ($("#expense-bar-chart").length) {

	  var barChartData = {
		labels: [
            <?php 
                $sql = "SELECT b.id AS batch_id, b.name AS batch_name, COUNT(s.id) AS student_count 
                FROM batch b 
                LEFT JOIN students s ON b.id = s.batch 
                GROUP BY b.id, b.name 
                ORDER BY b.numaric_value ASC";
    
                $result = mysqli_query($con, $sql);
                
                $batches = []; // Initialize an empty array
                
                // Fetch data and store in an array
                if ($result) {
                    while ($row = mysqli_fetch_assoc($result)) {
                        $batches[] = $row;
                    }
                    mysqli_free_result($result);
                } else {
                    echo "Error: " . mysqli_error($con);
                }
                
                $lastBatch = end($batches); // Get the last element

                foreach ($batches as $batch) {
                    echo $batch['batch_name'];
                    if ($batch !== $lastBatch) {
                        echo " ,";
                    }
                }
                ?>],
		datasets: [{
		  backgroundColor: ["#40dfcd", "#417dfc", "#ffaa01"],
		  data: [
            <?php
            $lastBatch = end($batches); // Get the last element
            foreach ($batches as $batch) {
                echo intval($batch['student_count']);
                if ($batch !== $lastBatch) {
                    echo " ,";
                }
            }
            ?>],
		  label: "Students (Batch Wise)"
		}, ]
	  };
	  var barChartOptions = {
		responsive: true,
		maintainAspectRatio: false,
		animation: {
		  duration: 2
		},
		scales: {

		  xAxes: [{
			display: false,
			maxBarThickness: 100,
			ticks: {
			  display: false,
			  padding: 0,
			  fontColor: "#646464",
			  fontSize: 14,
			},
			gridLines: {
			  display: true,
			  color: '#e1e1e1',
			}
		  }],
		  yAxes: [{
			display: true,
			ticks: {
			  display: true,
			  autoSkip: false,
			  fontColor: "#646464",
			  fontSize: 14,
			  stepSize: 10,
			  padding: 20,
			  beginAtZero: true,
			  callback: function (value) {
				var ranges = [{
					divider: 1e6,
					suffix: 'M'
				  },
				  {
					divider: 1e3,
					suffix: 'k'
				  }
				];

				function formatNumber(n) {
				  for (var i = 0; i < ranges.length; i++) {
					if (n >= ranges[i].divider) {
					  return (n / ranges[i].divider).toString() + ranges[i].suffix;
					}
				  }
				  return n;
				}
				return formatNumber(value);
			  }
			},
			gridLines: {
			  display: true,
			  drawBorder: true,
			  color: '#e1e1e1',
			  zeroLineColor: '#e1e1e1'

			}
		  }]
		},
		legend: {
		  display: false
		},
		tooltips: {
		  enabled: true
		},
		elements: {}
	  };
	  var expenseCanvas = $("#expense-bar-chart").get(0).getContext("2d");
	  var expenseChart = new Chart(expenseCanvas, {
		type: 'bar',
		data: barChartData,
		options: barChartOptions
	  });
	}
    
    
})(jQuery);



<?php 
    if(isset($_SESSION['PERMISSION_ERROR'])){
        echo 'toastr.error("You don\'t have permission to access that location")';
    }
    unset($_SESSION['PERMISSION_ERROR']);
    if(isset($_SESSION['UPDATE'])){
        echo 'toastr.success("Data Updated successfully")';
    }
    unset($_SESSION['UPDATE']);
    if(isset($_SESSION['INSERT'])){
        echo 'toastr.success("Data inserted successfully")';
    }
    unset($_SESSION['INSERT']);
?>

toastr.options = {
    "closeButton": true,
    "debug": true,
    "newestOnTop": true,
    "progressBar": false,
    "positionClass": "toast-top-right",
    "preventDuplicates": true,
    "onclick": null,
    "showDuration": "300",
    "hideDuration": "1000",
    "timeOut": "5000",
    "extendedTimeOut": "1000",
    "showEasing": "swing",
    "hideEasing": "linear",
    "showMethod": "fadeIn",
    "hideMethod": "fadeOut"
}
