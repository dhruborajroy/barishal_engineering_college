<?php
define('SECURE_ACCESS', true);
if (!defined('SECURE_ACCESS')) {
  die("Direct access not allowed!");
}
require('../inc/constant.inc.php');
require('../inc/connection.inc.php');
require('../inc/function.inc.php');

// Check connection
if (!$con) {
    die("Connection failed: " . mysqli_connect_error());
}

function randomPhone() {
    return "+8801" . rand(500000000, 999999999);
}

$designations = ["Lecturer", "Assistant Professor", "Associate Professor", "Professor"];
$departments = ["CE", "EEE", "ME", "CSE", "IPE", "URP"];
$research_interests = [
    "Structural Engineering", "Geotechnical Engineering", "Water Resources Engineering",
    "Transportation Engineering", "Environmental Engineering", "Construction Management",
    "Material Science", "Earthquake Engineering", "Coastal Engineering"
];

// Base64 image placeholder
$base64_image = "data:image/png;base64,UklGRnR/BABXRUJQVlA4IOw0AwAQfAmdASoABAAEPjEWiEMiISMkqBj7EJAGCWdqWXRdrtz/2BkaVq";

$sql = "INSERT INTO faculty (id, name, image, designation, phone, email, dept, research_interest, bio, facebook, linked_in, education, experience, publication, scholarship_award, research, teaching_supervision, joined_at, visibility, type, dept_head, status) VALUES ";

$values = [];
for ($i = 0; $i < 100; $i++) {
    $id = substr(md5(uniqid(mt_rand(), true)), 0, 13);
    $name = randomBangladeshiName();
    $image = $base64_image;
    $designation = $designations[array_rand($designations)];
    $phone = randomPhone();
    $email = randomEmail($name);
    $dept = $departments[array_rand($departments)];
    $research_interest = $research_interests[array_rand($research_interests)];
    $bio = "<p><strong>$name</strong> is an esteemed faculty member specializing in $research_interest.</p>";
    $education = "<p><strong>Ph.D. in Civil Engineering</strong></p><p>Renowned University, Year</p>";
    $experience = "<p><strong>Professor</strong></p><p>Department of Civil Engineering</p>";
    $publication = "<p>10+ publications in peer-reviewed journals.</p>";
    $scholarship_award = "<ul><li><strong>International Research Scholarship</strong></li></ul>";
    $research = "<ul><li><strong>$research_interest</strong></li></ul>";
    $teaching_supervision = "<p>#Course Conduction and Supervision</p>";
    $joined_at = date("Y-m-d", rand(strtotime("2000-01-01"), strtotime("2023-12-31")));
    $visibility = "public";
    $dept_head = rand(0, 1);
    $status = "";
    
    $values[] = "('$id', '$name', '$image', '$designation', '$phone', '$email', '$dept', '$research_interest', '$bio', '#', '#', '$education', '$experience', '$publication', '$scholarship_award', '$research', '$teaching_supervision', '$joined_at', '$visibility', '', $dept_head, '$status')";
}

$sql .= implode(", ", $values) . ";";

if (mysqli_query($con, $sql)) {
    echo "100 faculty members inserted successfully!";
} else {
    echo "Error: " . mysqli_error($con);
}

mysqli_close($con);
?>
