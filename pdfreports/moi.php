<?php
define('SECURE_ACCESS', true);
include("../inc/constant.inc.php");
include("../inc/connection.inc.php");
include("../inc/function.inc.php");
include("../inc/en2bn.php");
require('../inc/vendor/autoload.php');
require_once("../inc/phpqrcode/qrlib.php");
$filepath = "../images/qr_code/qrcode.png";
QRcode::png("Demo QR code.", $filepath);

// Set character set to support Bangla (Bengali)
mysqli_set_charset($con, "utf8");

// Fetch student records from the database
$query = "SELECT name, reg_no, session FROM students"; // Update table/column names
$result = mysqli_query($con, $query);


// Prepare student data array
$students = [];
while ($row = mysqli_fetch_assoc($result)) {
    $students[] = $row;
}

// Create MPDF instance
$mpdf = new \Mpdf\Mpdf([
    'tempDir' => __DIR__ . '/custom',
    'default_font_size' => 12,
    'default_font' => 'FreeSerif',
    'margin_left' => 20,
    'margin_right' => 20,
    'margin_top' => 10,
    'margin_bottom' => 10,
]);

$mpdf->SetTitle('MOI - Barishal Engineering College');
$mpdf->SetFooter('<div style="text-align:center;">Developed By The Web Divers</div>');

// Loop through students and create a page for each
foreach ($students as $index => $student) {
    if ($index > 0) {
        $mpdf->AddPage(); // Add a new page for each student (except the first one)
    }

    // Generate MOI certificate HTML
    $html = '<table width="100%" style="border-collapse: collapse;">';

    // Header section
    $html .= '
        <tr>
            <td align="left" colspan="3" style="font-size:20px; font-family: Siyam Rupali;">                    
                <span  style="font-size:25px; font-family: Siyam Rupali;">সিভিল ইঞ্জিনিয়ারিং বিভাগ</span><br>
                বরিশাল ইঞ্জিনিয়ারিং কলেজ<br>
                বরিশাল - ৮২০০, বাংলাদেশ<br>
                Email: ' . EMAIL . '
            </td>
            <td align="center" colspan="1">
                <img src="' . LOGO . '" width="100" height="100" alt="Logo" /> 
            </td>
            <td align="right" colspan="3" style="font-size:20px; font-family: Siyam Rupali;">                    
                <strong>Department of Civil Engineering</strong><br>
                Barishal Engineering College<br>
                Barishal-8200, Bangladesh<br>
                Email: ' . EMAIL . '
            </td>
        </tr>';

    // Horizontal line
    $html .= '
        <tr>
            <td colspan="7">
                <hr style="border: 1px solid black;">
            </td>
        </tr>';

    // Reference Number and Date
    $html .= '
        <tr>
            <td align="left" colspan="4">                    
                <strong>Ref No: BEC/MOI/' . ($index + 1) . '</strong>
            </td>
            <td align="right" colspan="3">
                <strong>Date: ' . date('d M Y') . '</strong>
            </td>
        </tr>';

    // Title
    $html .= '
        <tr>
            <td colspan="7" align="center" style="padding-top:30px; font-size:35px; text-decoration: underline;">                    
                <strong>TO WHOM IT MAY CONCERN</strong>
            </td>
        </tr>';

    // Certificate Content
    $html .= '<tr>
            <td colspan="7" style="text-align: justify; padding-top: 10px; font-size: 20px; line-height: 1.8;">
                <p style="margin-bottom: 15px;">
                    This is to certify that <strong>' . $student['name'] . '</strong>, bearing Reg No. <strong>' . $student['reg_no'] . '</strong>, 
                    Session <strong>' . $student['session'] . '</strong>, was a student of Barishal Engineering College, Barishal, 
                    at the Department of Civil Engineering affiliated with the University of Dhaka from 
                    <strong>' . $student['study_period'] . '</strong>.
                </p>
                <p>
                    The medium of instruction and examination in this college is <strong>English</strong>.
                </p>
            </td>
        </tr>';

    // Signature & Student Photo
    $html .= '
        <tr>
            <td align="left" style="padding-top:100px" colspan="5">
                <div>
                    <p style="font-size:20px; margin-top:10px;">
                        <strong>Md. Liton Rabbani</strong> <br>
                        Assistant Professor &amp; Head <br>
                        Department of Civil Engineering <br>
                        Barishal Engineering College, Barishal, Bangladesh. <br>
                        Cell: +8801745599180 <br>
                        E-mail: litonkce01@gmail.com 
                    </p>
                </div>
            </td>
            <td align="right" colspan="2">
                <img src="' . $filepath . '" width="150" height="150" alt="Student Photo" />
            </td>
        </tr>';

    $html .= '</table>';

    $mpdf->WriteHTML($html);
}

// Close database connection
mysqli_close($con);

// Save and Output the final PDF
$file = 'MOI_Certificates.pdf';
$mpdf->Output("../notice_files/" . $file, 'F'); // Save the file
$mpdf->Output($file, 'I'); // Display in browser
?>