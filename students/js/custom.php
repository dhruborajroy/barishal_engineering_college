<?php
define('SECURE_ACCESS', true);
require('../../inc/connection.inc.php');
require('../../inc/function.inc.php');
?>

(function ($) {
  // USE STRICT
  "use strict";

  try {

// single bar chart
var ctx = document.getElementById("singelBarChart");
if (ctx) {
  ctx.height = 150;
  var myChart = new Chart(ctx, {
    type: 'bar',
    data: {
      labels: ["1st", "2nd", "3rd", "4th", "5th", "6th", "7th", "8th"],
      datasets: [
        {
          label: "Semester wise GPA ",
          data: [3.36,3.30,3.46,3.47,4,4,4],
          borderColor: "rgba(0, 123, 255, 0.9)",
          borderWidth: "0",
          backgroundColor: "rgba(0, 204, 255, 0.5)"
        }
      ]
    },
    options: {
      legend: {
        position: 'top',
        labels: {
          fontFamily: 'Poppins'
        }

      },
      scales: {
        xAxes: [{
          ticks: {
            fontFamily: "Poppins"

          }
        }],
        yAxes: [{
          ticks: {
            beginAtZero: true,
            fontFamily: "Poppins"
          }
        }]
      }
    }
  });
}

} catch (error) {
console.log(error);
}

  try {
    //bar chart
    var ctx = document.getElementById("barChart");
    if (ctx) {
      ctx.height = 200;
      var myChart = new Chart(ctx, {
        type: 'bar',
        defaultFontFamily: 'Poppins',
        data: {
          labels: [<?php echo getDeptBatchList(1);?>],
          datasets: [
            {
              label: "Students of CE",
              data: [<?php echo getDeptStudentCount(1);?>],
              borderColor: "rgba(0, 123, 255, 0.9)",
              borderWidth: "0",
              backgroundColor: "rgba(0, 123, 255, 0.5)",
              fontFamily: "Poppins"
            },
            {
              label: "Students of EEE",
              data: [<?php echo getDeptStudentCount(2);?>],
              borderColor: "rgba(0,0,0,0.09)",
              borderWidth: "0",
              backgroundColor: "rgba(0,0,0,0.07)",
              fontFamily: "Poppins"
            }
          ]
        },
        options: {
          legend: {
            position: 'top',
            labels: {
              fontFamily: 'Poppins'
            }

          },
          scales: {
            xAxes: [{
              ticks: {
                fontFamily: "Poppins"

              }
            }],
            yAxes: [{
              ticks: {
                beginAtZero: true,
                fontFamily: "Poppins"
              }
            }]
          }
        }
      });
    }


  } catch (error) {
    console.log(error);
  }


})(jQuery);