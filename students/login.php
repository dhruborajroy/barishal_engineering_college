<?php 
session_start();
define('SECURE_ACCESS', true);
include('../inc/function.inc.php');
include('../inc/connection.inc.php');
include('../inc/constant.inc.php');
require_once("../inc/smtp/class.phpmailer.php");

$msg = "";

// if(isset($_SESSION['ADMIN_LOGIN'])){
//     redirect('index.php');
// }

if(isset($_POST['submit'])){
    $email = mysqli_real_escape_string($con, trim($_POST['email']));
    $password = trim($_POST['password']);
    $ip_address = $_SERVER['REMOTE_ADDR'];
    $time = time();
    $limit = 3; 
    $lockout_time = 900; 

    $sql_attempts = "SELECT attempts, last_attempt FROM login_attempts WHERE ip_address='$ip_address'";
    $res_attempts = mysqli_query($con, $sql_attempts);
    if($res_attempts && mysqli_num_rows($res_attempts) > 0){
        $row_attempts = mysqli_fetch_assoc($res_attempts);
        if ($row_attempts['attempts'] >= $limit && ($time - $row_attempts['last_attempt']) < $lockout_time) {
            $msg = "Too many failed login attempts. Try again later.";
        } else {
            if (($time - $row_attempts['last_attempt']) >= $lockout_time) {
                mysqli_query($con, "DELETE FROM login_attempts WHERE ip_address='$ip_address'");
            }
        }
    }

    if(empty($msg)){ 
        $sql = "SELECT id, name, email, password, status FROM students WHERE email='$email'";
        $res = mysqli_query($con, $sql);
        if(mysqli_num_rows($res) > 0){
            $row = mysqli_fetch_assoc($res);

            if($row['status'] != 1){
                $msg = "You haven't verified your email yet. Please verify your email.";
            } else {
                if(password_verify($password, $row['password'])){
                    $_SESSION['USER_LOGIN']=true;
                    $_SESSION['USER_ID']=$row['id'];
                    $_SESSION['USER_NAME']=$row['name'];
                    $_SESSION['IMAGE']=$row['image'];
                    $_SESSION['EMAIL']=$row['email'];
                    mysqli_query($con, "INSERT INTO login_logs (admin_id, email, ip_address, status, timestamp) 
                    VALUES ('{$row['id']}', '$email', '$ip_address', 'Success', NOW())");
                    mysqli_query($con, "DELETE FROM login_attempts WHERE ip_address='$ip_address'");
                    redirect('./index.php');
                    die();
                } else {
                    $msg = "Incorrect login details.";

                    // Track failed login attempts
                    mysqli_query($con, "INSERT INTO login_attempts (ip_address, attempts, last_attempt) 
                    VALUES ('$ip_address', 1, '$time') 
                    ON DUPLICATE KEY UPDATE attempts = attempts + 1, last_attempt = '$time'");

                    // Log failed login
                    mysqli_query($con, "INSERT INTO login_logs (admin_id, email, ip_address, status, timestamp) 
                    VALUES (NULL, '$email', '$ip_address', 'Failed', NOW())");
                }
            }
        } else {
            $msg = "Incorrect login details.";
        }
    }
}
?>

<!DOCTYPE html>
<html lang="en">

<head>
    <!-- Required meta tags-->
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="au theme template">
    <meta name="author" content="Hau Nguyen">
    <meta name="keywords" content="au theme template">

    <!-- Title Page-->
    <title>Login</title>

    <!-- Fontfaces CSS-->
    <link href="css/font-face.css" rel="stylesheet" media="all">
    <link href="vendor/font-awesome-4.7/css/font-awesome.min.css" rel="stylesheet" media="all">
    <link href="vendor/font-awesome-5/css/fontawesome-all.min.css" rel="stylesheet" media="all">
    <link href="vendor/mdi-font/css/material-design-iconic-font.min.css" rel="stylesheet" media="all">

    <!-- Bootstrap CSS-->
    <link href="vendor/bootstrap-4.1/bootstrap.min.css" rel="stylesheet" media="all">

    <!-- Vendor CSS-->
    <link href="vendor/animsition/animsition.min.css" rel="stylesheet" media="all">
    <link href="vendor/bootstrap-progressbar/bootstrap-progressbar-3.3.4.min.css" rel="stylesheet" media="all">
    <link href="vendor/wow/animate.css" rel="stylesheet" media="all">
    <link href="vendor/css-hamburgers/hamburgers.min.css" rel="stylesheet" media="all">
    <link href="vendor/slick/slick.css" rel="stylesheet" media="all">
    <link href="vendor/select2/select2.min.css" rel="stylesheet" media="all">
    <link href="vendor/perfect-scrollbar/perfect-scrollbar.css" rel="stylesheet" media="all">

    <!-- Main CSS-->
    <link href="css/theme.css" rel="stylesheet" media="all">

</head>

<body class="animsition">
    <div class="page-wrapper">
        <div class="page-content--bge5">
            <div class="container">
                <div class="login-wrap">
                    <div class="login-content">
                        <div class="login-logo">
                            <a href="#">
                                <img src="images/icon/logo.png" alt="CoolAdmin">
                            </a>
                        </div>
                        <div class="login-form">
                            <?php echo $msg?>
                            <form method="post">
                                <div class="form-group">
                                    <label>Email Address</label>
                                    <input class="au-input au-input--full" type="email" required name="email" placeholder="Email">
                                </div>
                                <div class="form-group">
                                    <label>Password</label>
                                    <input class="au-input au-input--full" type="password" required name="password" placeholder="Password">
                                </div>
                                <div class="login-checkbox">
                                    <label>
                                        <input type="checkbox" name="remember">Remember Me
                                    </label>
                                    <label>
                                        <a href="#">Forgotten Password?</a>
                                    </label>
                                </div>
                                <button class="au-btn au-btn--block au-btn--green m-b-20" name="submit" type="submit">sign in</button>
                            </form>
                            <!-- <div class="register-link">
                                <p>
                                    Don't you have account?
                                    <a href="#">Sign Up Here</a>
                                </p>
                            </div> -->
                        </div>
                    </div>
                </div>
            </div>
        </div>

    </div>

    <!-- Jquery JS-->
    <script src="vendor/jquery-3.2.1.min.js"></script>
    <!-- Bootstrap JS-->
    <script src="vendor/bootstrap-4.1/popper.min.js"></script>
    <script src="vendor/bootstrap-4.1/bootstrap.min.js"></script>
    <!-- Vendor JS       -->
    <script src="vendor/slick/slick.min.js">
    </script>
    <script src="vendor/wow/wow.min.js"></script>
    <script src="vendor/animsition/animsition.min.js"></script>
    <script src="vendor/bootstrap-progressbar/bootstrap-progressbar.min.js">
    </script>
    <script src="vendor/counter-up/jquery.waypoints.min.js"></script>
    <script src="vendor/counter-up/jquery.counterup.min.js">
    </script>
    <script src="vendor/circle-progress/circle-progress.min.js"></script>
    <script src="vendor/perfect-scrollbar/perfect-scrollbar.js"></script>
    <script src="vendor/chartjs/Chart.bundle.min.js"></script>
    <script src="vendor/select2/select2.min.js">
    </script>

    <!-- Main JS-->
    <script src="js/main.js"></script>

</body>

</html>
<!-- end document-->