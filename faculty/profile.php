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
                <div class="section_content section_content--p30">
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
                                            <label for="email-input" class=" form-control-label">Image</label>
                                        </div>
                                        <div class="col-12 col-md-9">
                                            <input type="text" disabled id="text-input" name="text-input" value="<?php echo $image?>" class="form-control">

                                        </div>
                                    </div>
                                    <div class="row form-group">
                                        <div class="col col-md-3">
                                            <label for="disabled-input" class=" form-control-label">Designation</label>
                                        </div>
                                        <div class="col-12 col-md-9">
                                            <input type="text" disabled id="text-input" name="text-input" value="<?php echo $designation?>" class="form-control">
                                        </div>
                                    </div>
                                    <div class="row form-group">
                                        <div class="col col-md-3">
                                            <label for="disabled-input" class=" form-control-label"> Phone</label>
                                        </div>
                                        <div class="col-12 col-md-9">
                                            <input type="text" disabled id="text-input" name="text-input" value="<?php echo $phone?>" class="form-control">
                                        </div>
                                    </div>
                                    <div class="row form-group">
                                        <div class="col col-md-3">
                                            <label for="disabled-input" class=" form-control-label"> Password</label>
                                        </div>
                                        <div class="col-12 col-md-9">
                                            <input type="text" disabled id="text-input" name="text-input" value="<?php echo $password?>" class="form-control">
                                        </div>
                                    </div>
                                    <div class="row form-group">
                                        <div class="col col-md-3">
                                            <label for="disabled-input" class=" form-control-label">Email</label>
                                        </div>
                                        <div class="col-12 col-md-9">
                                            <input type="text" disabled id="text-input" name="text-input" value="<?php echo $email?>" class="form-control">
                                        </div>
                                    </div>
                                    <div class="row form-group">
                                        <div class="col col-md-3">
                                            <label for="disabled-input" class=" form-control-label">Dept</label>
                                        </div>
                                        <div class="col-12 col-md-9">
                                            <input type="text" disabled id="text-input" name="text-input" value="<?php echo $dept?>" class="form-control">
                                        </div>
                                    </div>
                                    <div class="row form-group">
                                        <div class="col col-md-3">
                                            <label for="disabled-input" class=" form-control-label">Bio</label>
                                        </div>
                                        <div class="col-12 col-md-9">
                                            <input type="text" disabled id="text-input" name="text-input" value="<?php echo $bio?>" class="form-control">
                                        </div>
                                    </div>
                                    <div class="row form-group">
                                        <div class="col col-md-3">
                                            <label for="disabled-input" class=" form-control-label">Facebook </label>
                                        </div>
                                        <div class="col-12 col-md-9">
                                            <input type="text" disabled id="text-input" name="text-input" value="<?php echo $facebook?>" class="form-control">
                                        </div>
                                    </div>
                                    <div class="row form-group">
                                        <div class="col col-md-3">
                                            <label for="disabled-input" class=" form-control-label">Linkedin</label>
                                        </div>
                                        <div class="col-12 col-md-9">
                                            <input type="text" disabled id="text-input" name="text-input" value="<?php echo $linked_in?>" class="form-control">
                                        </div>
                                    </div>
                                    <div class="row form-group">
                                        <div class="col col-md-3">
                                            <label for="disabled-input" class=" form-control-label">Education</label>
                                        </div>
                                        <div class="col-12 col-md-9">
                                            <input type="text" disabled id="text-input" name="text-input" value="<?php echo $education?>" class="form-control">
                                        </div>
                                    </div>
                                    <div class="row form-group">
                                        <div class="col col-md-3">
                                            <label for="disabled-input" class=" form-control-label">Experience</label>
                                        </div>
                                        <div class="col-12 col-md-9">
                                            <input type="text" disabled id="text-input" name="text-input" value="<?php echo $experience?>" class="form-control">
                                        </div>
                                    </div>
                                    <div class="row form-group">
                                        <div class="col col-md-3">
                                            <label for="disabled-input" class=" form-control-label">Teaching Supervision</label>
                                        </div>
                                        <div class="col-12 col-md-9">
                                            <input type="text" disabled id="text-input" name="text-input" value="<?php echo $teaching_supervision?>" class="form-control">
                                        </div>
                                    </div>
                                    <div class="row form-group">
                                        <div class="col col-md-3">
                                            <label for="disabled-input" class=" form-control-label">Research Interest</label>
                                        </div>
                                        <div class="col-12 col-md-9">
                                            <input type="text" disabled id="text-input" name="text-input" value="<?php echo $research_interest?>" class="form-control">
                                        </div>
                                    </div>
                                    <div class="row form-group">
                                        <div class="col col-md-3">
                                            <label for="disabled-input" class=" form-control-label">Publication</label>
                                        </div>
                                        <div class="col-12 col-md-9">
                                            <input type="text" disabled id="text-input" name="text-input" value="<?php echo $publication?>" class="form-control">
                                        </div>
                                    </div>
                                    <div class="row form-group">
                                        <div class="col col-md-3">
                                            <label for="disabled-input" class=" form-control-label">Scholarship Award </label>
                                        </div>
                                        <div class="col-12 col-md-9">
                                            <input type="text" disabled id="text-input" name="text-input" value="<?php echo $scholarship_award?>" class="form-control">
                                        </div>
                                    </div>
                                    <div class="row form-group">
                                        <div class="col col-md-3">
                                            <label for="disabled-input" class=" form-control-label">Scholarship Award </label>
                                        </div>
                                        <div class="col-12 col-md-9">
                                            <input type="text" disabled id="text-input" name="text-input" value="<?php echo $scholarship_award?>" class="form-control">
                                        </div>
                                    </div>
                                    <div class="row form-group">
                                        <div class="col col-md-3">
                                            <label for="disabled-input" class=" form-control-label">Research</label>
                                        </div>
                                        <div class="col-12 col-md-9">
                                            <input type="text" disabled id="text-input" name="text-input" value="<?php echo $research?>" class="form-control">
                                        </div>
                                    </div>
                                    <div class="row form-group">
                                        <div class="col col-md-3">
                                            <label for="disabled-input" class=" form-control-label">Dept Head </label>
                                        </div>
                                        <div class="col-12 col-md-9">
                                            <input type="text" disabled id="text-input" name="text-input" value="<?php echo $dept_head?>" class="form-control">
                                        </div>
                                    </div>
                                    <div class="row form-group">
                                        <div class="col col-md-3">
                                            <label for="disabled-input" class=" form-control-label">Type </label>
                                        </div>
                                        <div class="col-12 col-md-9">
                                            <input type="text" disabled id="text-input" name="text-input" value="<?php echo $type?>" class="form-control">
                                        </div>
                                    </div>
                                    <div class="row form-group">
                                        <div class="col col-md-3">
                                            <label for="disabled-input" class=" form-control-label">Joined At </label>
                                        </div>
                                        <div class="col-12 col-md-9">
                                            <input type="text" disabled id="text-input" name="text-input" value="<?php echo $joined_at?>" class="form-control">
                                        </div>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
<?php 
include("footer.php");
?>