<?php 
define('SECURE_ACCESS', true);
include("header.php");
$msg="";
$id="";
$name='';
$fname='';
$mname='';
$phoneNumber='';
$presentAddress='';
$permanentAddress='';
$required='required';
$paymentStatus='';
$dob='';
$gender='';
$religion='';
$bloodGroup='';
$image='';
$email='';
$batch='';
$deptId="";
$session="";
$batch_name="";
$id=$_SESSION['FACULTY_ID'];
$sql="select * from people where id='$id' ";
$res=mysqli_query($con,$sql);
if(mysqli_num_rows($res)>0){
    $row=mysqli_fetch_assoc($res);
        // Retrieve all variables
        $name = $row['name'];
        $designation = $row['designation'];
        $phone = $row['phone'];
        $email = $row['email'];
        $research_interest = $row['research_interest'];
        $bio = $row['bio'];
        $facebook = $row['facebook'];
        $linked_in = $row['linked_in'];
        $education = $row['education'];
        $dept = $row['dept'];
        $experience = $row['experience'];
        $publication = $row['publication'];
        $scholarship_award = $row['scholarship_award'];
        $research = $row['research'];
        $teaching_supervision = $row['teaching_supervision'];
        $joined_at = $row['joined_at'];
        $visibility = $row['visibility'];
        $dept_head = $row['dept_head'];
        $image = $row['image'];
        $type = $row['type'];
        $required="";
}else{
    redirect("logout");
}
?>

            <!-- MAIN CONTENT-->
            <div class="main-content">
                <div class="section__content section__content--p30">
                    <div class="container-fluid">
                        
                    <div class="col-lg-12">
                        <div class="card">
                            <div class="card-header">
                                <strong>Student Details</strong> 
                            </div>
                            <div class="card-body card-block">
                                <form action="" method="post" enctype="multipart/form-data" class="form-horizontal">
                                    <div class="row form-group">
                                    <div class="col-3 col-md-3">
                                    </div>
                                    <div class="col-9 col-md-9">
                                            <!-- <img src="../images/students/<?php //echo $_SESSION['IMAGE']?>" alt="" srcset=""> -->
                                            <img width="300px" src="http://localhost/students/images/icon/avatar-01.jpg" alt="" srcset="">
                                        </div>
                                    </div>
                                    <div class="row form-group">
                                        <div class="col col-md-3">
                                            <label for="text-input" class=" form-control-label">Name</label>
                                        </div>
                                        <div class="col-12 col-md-9">
                                            <input type="text" disabled id="text-input" name="text-input" value="<?php echo $name?>" class="form-control">
                                        </div>
                                    </div>
                                    <div class="row form-group">
                                        <div class="col col-md-3">
                                            <label for="email-input" class=" form-control-label">Email</label>
                                        </div>
                                        <div class="col-12 col-md-9">
                                            <input type="text" disabled id="text-input" name="text-input" value="<?php echo $email?>" class="form-control">

                                        </div>
                                    </div>
                                    <div class="row form-group">
                                        <div class="col col-md-3">
                                            <label for="disabled-input" class=" form-control-label">Class Roll</label>
                                        </div>
                                        <div class="col-12 col-md-9">
                                            <input type="text" disabled id="text-input" name="text-input" value="<?php echo $class_roll?>" class="form-control">
                                        </div>
                                    </div>
                                    <div class="row form-group">
                                        <div class="col col-md-3">
                                            <label for="disabled-input" class=" form-control-label">Dhaka University Registration Number</label>
                                        </div>
                                        <div class="col-12 col-md-9">
                                            <input type="text" disabled id="text-input" name="text-input" value="<?php echo $reg_no?>" class="form-control">
                                        </div>
                                    </div>
                                    <div class="row form-group">
                                        <div class="col col-md-3">
                                            <label for="disabled-input" class=" form-control-label">Session</label>
                                        </div>
                                        <div class="col-12 col-md-9">
                                            <input type="text" disabled id="text-input" name="text-input" value="<?php echo $session?>" class="form-control">
                                        </div>
                                    </div>
                                    <div class="row form-group">
                                        <div class="col col-md-3">
                                            <label for="disabled-input" class=" form-control-label">Father's Name</label>
                                        </div>
                                        <div class="col-12 col-md-9">
                                            <input type="text" disabled id="text-input" name="text-input" value="<?php echo $fname?>" class="form-control">
                                        </div>
                                    </div>
                                    <div class="row form-group">
                                        <div class="col col-md-3">
                                            <label for="disabled-input" class=" form-control-label">Mother's Name</label>
                                        </div>
                                        <div class="col-12 col-md-9">
                                            <input type="text" disabled id="text-input" name="text-input" value="<?php echo $mname?>" class="form-control">
                                        </div>
                                    </div>
                                    <div class="row form-group">
                                        <div class="col col-md-3">
                                            <label for="disabled-input" class=" form-control-label">Phone Number</label>
                                        </div>
                                        <div class="col-12 col-md-9">
                                            <input type="text" disabled id="text-input" name="text-input" value="<?php echo $phoneNumber?>" class="form-control">
                                        </div>
                                    </div>
                                    <div class="row form-group">
                                        <div class="col col-md-3">
                                            <label for="disabled-input" class=" form-control-label">Present Address </label>
                                        </div>
                                        <div class="col-12 col-md-9">
                                            <input type="text" disabled id="text-input" name="text-input" value="<?php echo $presentAddress?>" class="form-control">
                                        </div>
                                    </div>
                                    <div class="row form-group">
                                        <div class="col col-md-3">
                                            <label for="disabled-input" class=" form-control-label">Permanent Address</label>
                                        </div>
                                        <div class="col-12 col-md-9">
                                            <input type="text" disabled id="text-input" name="text-input" value="<?php echo $permanentAddress?>" class="form-control">
                                        </div>
                                    </div>
                                    <div class="row form-group">
                                        <div class="col col-md-3">
                                            <label for="disabled-input" class=" form-control-label">Date of Birth</label>
                                        </div>
                                        <div class="col-12 col-md-9">
                                            <input type="text" disabled id="text-input" name="text-input" value="<?php echo $dob?>" class="form-control">
                                        </div>
                                    </div>
                                    <div class="row form-group">
                                        <div class="col col-md-3">
                                            <label for="disabled-input" class=" form-control-label">Gender</label>
                                        </div>
                                        <div class="col-12 col-md-9">
                                            <input type="text" disabled id="text-input" name="text-input" value="<?php echo $gender?>" class="form-control">
                                        </div>
                                    </div>
                                    <div class="row form-group">
                                        <div class="col col-md-3">
                                            <label for="disabled-input" class=" form-control-label">Religion</label>
                                        </div>
                                        <div class="col-12 col-md-9">
                                            <input type="text" disabled id="text-input" name="text-input" value="<?php echo $religion?>" class="form-control">
                                        </div>
                                    </div>
                                    <div class="row form-group">
                                        <div class="col col-md-3">
                                            <label for="disabled-input" class=" form-control-label">Blood Group</label>
                                        </div>
                                        <div class="col-12 col-md-9">
                                            <input type="text" disabled id="text-input" name="text-input" value="<?php echo $bloodGroup?>" class="form-control">
                                        </div>
                                    </div>
                                    <div class="row form-group">
                                        <div class="col col-md-3">
                                            <label for="disabled-input" class=" form-control-label">dept_id Group</label>
                                        </div>
                                        <div class="col-12 col-md-9">
                                            <input type="text" disabled id="text-input" name="text-input" value="<?php echo $dept_name?>" class="form-control">
                                        </div>
                                    </div>
                                    <div class="row form-group">
                                        <div class="col col-md-3">
                                            <label for="disabled-input" class=" form-control-label">Batch </label>
                                        </div>
                                        <div class="col-12 col-md-9">
                                            <input type="text" disabled id="text-input" name="text-input" value="<?php echo $batch_name?>" class="form-control">
                                        </div>
                                    </div>
                                    <div class="row form-group">
                                        <div class="col col-md-3">
                                            <label for="disabled-input" class=" form-control-label">Email </label>
                                        </div>
                                        <div class="col-12 col-md-9">
                                            <input type="text" disabled id="text-input" name="text-input" value="<?php echo $email?>" class="form-control">
                                        </div>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
<?php 
include("footer.php");
?>