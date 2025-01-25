<?php 
define('SECURE_ACCESS', true);
include("header.php");
?>
<div class="dashboard-content-one">
    <!-- Breadcubs Area Start Here -->
    <div class="breadcrumbs-area">
        <h3>Reports</h3>
        <ul>
            <li>
                <a href="index">Home</a>
            </li>
            <li>Reports</li>
        </ul>
    </div>
    <!-- Breadcubs Area End Here -->
    <!-- Class Routine Area Start Here -->
    <div class="row">
        <div class="col-12-xxxl col-12">
            <div class="card height-auto">
                <div class="card-body">
                    <div class="heading-layout1">
                        <div class="item-title">
                            <h3>Testimonials</h3>
                        </div>
                    </div>
                    <form class="new-added-form" action="../pdfreports/moi.php">
                        <div class="row">
                            <div class="col-xl-3 col-lg-6 col-12 form-group">
                                <label>Student *</label>
                                <select class="form-control select2" name="reg_no">
                                    <option>Select Student</option>
                                    <?php
                                    $res=mysqli_query($con,"SELECT * FROM `students` ");
                                    while($row=mysqli_fetch_assoc($res)){
                                        echo "<option value=".$row['reg_no'].">".$row['name']."(".$row['reg_no'].")</option>";                                                        
                                    }
                                    ?>
                                </select>
                            </div>
                            <div class="col-6 form-group mg-t-8">
                                <label></label>
                                <button type="submit" class="btn-fill-lg btn-gradient-yellow btn-hover-bluedark">Generate</button>
                                <a href="../pdfreports/testimonial.php" class="btn-fill-lg bg-blue-dark btn-hover-yellow">Generate All</a>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
        <div class="col-12-xxxl col-12">
            <div class="card height-auto">
                <div class="card-body">
                    <div class="heading-layout1">
                        <div class="item-title">
                            <h3>Generate Monthly Bill</h3>
                        </div>
                    </div>
                    <form class="new-added-form" action="../pdfreports/testimonial.php">
                        <div class="row">
                            <div class="col-xl-3 col-lg-6 col-12 form-group">
                                <label>Student *</label>
                                <select class="form-control select2" name="reg_no">
                                    <option>Select Student</option>
                                    <?php
                                    $res=mysqli_query($con,"SELECT * FROM `students` ");
                                    while($row=mysqli_fetch_assoc($res)){
                                        echo "<option value=".$row['reg_no'].">".$row['name']."(".$row['reg_no'].")</option>";                                                        
                                    }
                                    ?>
                                </select>
                            </div>
                            <div class="col-6 form-group mg-t-8">
                                <label></label>
                                <button type="submit" class="btn-fill-lg btn-gradient-yellow btn-hover-bluedark">Generate</button>
                                <a href="../pdfreports/testimonial.php" class="btn-fill-lg bg-blue-dark btn-hover-yellow">Generate All</a>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
    <!-- Class Routine Area End Here -->
<?php include("footer.php")?>