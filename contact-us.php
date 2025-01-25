<?php
define('SECURE_ACCESS', true);
include("header.php");
?>
    <!--=================================inner-header -->
    <section class="inner-banner bg-overlay-black-70 bg-holder" style="background-image: url('images/bg/06.jpg');">
      <div class="container">
        <div class="row d-flex justify-content-center">
          <div class="col-md-12">
            <div class="text-center">
              <h1 class="text-white">Contact Us</h1>
            </div>
            <div class="d-flex justify-content-center ">
              <ol class="breadcrumb mb-0 p-0">
              <li class="breadcrumb-item"><a href="index-2.html">Home</a></li>
              <li class="breadcrumb-item active"><span>Contact Us</span></li>
            </ol>
            </div>
          </div>
        </div>
      </div>
    </section>
    <!--=================================inner-header -->

    <!--=================================contact -->
    <section class="space-ptb">
      <div class="container">
        <div class="row">
          <div class="col-lg-7 mb-4 mb-lg-0">
            <h4 class="mb-4">Need Assistance? Please Complete The Contact Form</h4>
            <form>
              <div class="form-row">
                <div class="form-group col-md-6">
                  <input type="text" class="form-control bg-white border" id="Website" placeholder="Website URL">
                </div>
                <div class="form-group col-md-6">
                  <input type="text" class="form-control bg-white border" id="name" placeholder="Your Name">
                </div>
                <div class="form-group col-md-6">
                  <input type="email" class="form-control bg-white border" id="inputEmail4" placeholder="Email Address">
                </div>
                <div class="form-group col-md-6">
                  <input type="text" class="form-control bg-white border" id="number" placeholder="Phone Number">
                </div>
                <div class="form-group col-md-12">
                  <textarea class="form-control bg-white border" rows="4" placeholder="Message"></textarea>
                </div>
                <div class="col-md-12">
                  <a class="btn btn-primary" href="#">Send Message</a>
                </div>
              </div>
            </form>
          </div>
          <div class="col-lg-4">
            <div class="row">
              <div class="col-lg-12">
                  <div class="d-flex mb-3 bg-primary p-4 border-radius mb-4">
                    <div class="text-primary mr-3">
                      <i class="fas fa-3x fa-map-signs text-white"></i>
                    </div>
                    <div class="recent-post-info">
                      <span class="text-white">17504 Carlton Cuevas Rd Gulfport, MS, 39503</span>
                    </div>
                  </div>
                </div>
              <div class="col-lg-12">
                  <div class="d-flex mb-3 bg-light p-4 border-radius mb-4">
                    <div class="text-primary mr-3">
                      <i class="far fa-3x fa-envelope"></i>
                    </div>
                    <div class="recent-post-info">
                      <span>letstalk@academic.com<br> Mon-Fri 8:30am-6:30pm</span>
                    </div>
                  </div>
                </div>
              <div class="col-lg-12">
                  <div class="d-flex bg-dark p-4 border-radius">
                    <div class="text-white mr-3">
                      <i class="fas fa-3x fa-headphones-alt"></i>
                    </div>
                    <div class="recent-post-info">
                      <span class="text-white">+(704) 279-1249<br> 24 X 7 online support</span>
                    </div>
                  </div>
                </div>
              </div>
          </div>
        </div>
      </div>
    </section>
    <!--=================================contact -->

    <!--=================================Map -->
    <section class="map">
      <div class="container-fluid p-0">
        <div class="row no-gutters">
          <div class="col-sm-12">
            <div class="map h-500">
              <!-- iframe START -->
              <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2188.551920194701!2d90.41733456827511!3d22.702546755403468!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3755322e1f183329%3A0x79268f9b32b5cd60!2z4Kas4Kaw4Ka_4Ka24Ka-4KayIOCmh-CmnuCnjeCmnOCmv-CmqOCmv-Cnn-CmvuCmsOCmv-CmgiDgppXgprLgp4fgppw!5e0!3m2!1sbn!2sbd!4v1736091714687!5m2!1sbn!2sbd" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
              <!-- iframe END -->
            </div>
          </div>
        </div>
      </div>
    </section>
    <!--=================================
    Map -->


<?php include("footer.php")?>