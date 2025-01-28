<?php 
define('SECURE_ACCESS', true);
session_start();
if(!isset($_SESSION['DEPT_ID'])) {
  header("Location: /"); // Redirect if no session and no dept_id in URL
  exit();
}else{
  $dept_id=$_SESSION['DEPT_ID'];
}
include("header.php");
?>
    <!--=================================inner-header -->
    <section class="inner-banner bg-overlay-black-70 bg-holder" style="background-image: url('../images/bg/02.jpg');">
      <div class="container">
        <div class="row d-flex justify-content-center">
          <div class="col-md-12">
            <div class="text-center">
              <h1 class="text-white">Message from Head</h1>
            </div>
          </div>
        </div>
      </div>
    </section>
    <!--=================================inner-header -->

    <!--=================================HISTORY -->
    <section class="space-ptb" >
      <div class="container">
        <div class="row align-items-center">
          <div class="col-xl-12 col-lg-9">
            <div class=" mb-12">
              <p class="lead">
                <?php
                    $genereral_infores=mysqli_query($con,"select head_message.message from head_message where id=1 and  dept_id='$dept_id' ");
                    if(mysqli_num_rows($genereral_infores)>0){
                    while($genereral_infores_row=mysqli_fetch_assoc($genereral_infores)){
                    ?>
                      <?php echo $genereral_infores_row['message']?>  
                <?php } }?>
              </p>
            </div>
          </div>
        </div>
      </div>
    </section>
    <!--=================================HISTORY -->

<?php include("footer.php")?>