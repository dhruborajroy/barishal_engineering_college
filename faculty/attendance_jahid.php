<?php 
define('SECURE_ACCESS', true);
include("header.php");

?>
<!-- MAIN CONTENT--><div class="main-content">
    <div class="section__content section__content--p30">
        <div class="container-fluid">
            <div class="row">
            <div class="col-lg-12">
                    <div class="card">
                        <div class="card-header">
                            <strong>Students Attandance</strong>
                        </div>
                        <div class="card-body card-block">
                            <form method="post" enctype="multipart/form-data" class="form-horizontal">
                                <div class="row form-group col-md-12">
                                    <div class="col-sm-12 col-md-4 mt-2">
                                        <input type="date" id="dateInput" name="dateInput" class="form-control-lg form-control" select="">
                                        <input type="hidden" value="67989c0243271" id="faculty_id" name="faculty_id" class="form-control-lg form-control">
                                    </div>
                                    <div class="col-sm-12 col-md-4 mt-2">
                                        <select name="semester" id="semester" class="form-control-lg form-control">
                                            <option value="0">Select Semester</option>
                                            <option value="1">1st</option><option value="2">2nd</option><option value="3">3rd</option><option value="4">4th</option><option value="5">5th</option><option value="6">6th</option><option value="7">7th</option><option value="8">8th</option>                                        </select>
                                    </div>
                                    <div class="col-sm-12 col-md-4 mt-2">
                                        <select name="course" id="course" class="form-control-lg form-control"><option value="">Select Course</option><option value="3">Chemistry-I</option></select>
                                    </div>
                                </div>
                            </form>
                        </div>
                        <div class="card-footer">
                            <input type="submit" value="Get Students" id="get_students" name="submit" class="btn btn-primary btn-sm">
                               
                            <a href="attendance"> 
                                <button type="reset" class="btn btn-danger btn-sm">
                                    <i class="fa fa-ban"></i> Reset
                                </button>
                            </a>
                        </div>
                    </div>
                </div>
            <div class="col-md-12">
                <div class="card">
                    <div class="card-header">
                        <strong class="card-title">Attendance List</strong>
                    </div>
                    <div id="students-container">

                            <div class="d-flex align-items-center justify-content-between flex-wrap p-2 border-bottom">
                                <div class="flex-grow-1 text-start">
                                    <span>Dhruboraj Roy</span>
                                </div>
                                <div class="flex-grow-1 text-center">
                                    <span>862</span>
                                </div>
                                <div class="flex-grow-1 text-end">
                                    <label class="switch switch-3d switch-success">
                                        <input type="checkbox" class="switch-input attendance-toggle" data-id="9" checked="">
                                        <span class="switch-label"></span>
                                        <span class="switch-handle"></span>
                                    </label>
                                </div>
                            </div>

                            <div class="d-flex align-items-center justify-content-between flex-wrap p-2 border-bottom">
                                <div class="flex-grow-1 text-start">
                                    <span>Dhruboraj Roy</span>
                                </div>
                                <div class="flex-grow-1 text-center">
                                    <span>544</span>
                                </div>
                                <div class="flex-grow-1 text-end">
                                    <label class="switch switch-3d switch-success">
                                        <input type="checkbox" class="switch-input attendance-toggle" data-id="12">
                                        <span class="switch-label"></span>
                                        <span class="switch-handle"></span>
                                    </label>
                                </div>
                            </div>

                            <div class="d-flex align-items-center justify-content-between flex-wrap p-2 border-bottom">
                                <div class="flex-grow-1 text-start">
                                    <span>Maria Khan</span>
                                </div>
                                <div class="flex-grow-1 text-center">
                                    <span>727</span>
                                </div>
                                <div class="flex-grow-1 text-end">
                                    <label class="switch switch-3d switch-success">
                                        <input type="checkbox" class="switch-input attendance-toggle" data-id="107">
                                        <span class="switch-label"></span>
                                        <span class="switch-handle"></span>
                                    </label>
                                </div>
                            </div></div>
                                </div>
                                </div>
                            </div>
                            </div>

                        <div class="row">
                        <div class="col-md-12">
                            <div class="copyright">
                                <p>© Copyrights <a href="http://bec.edu.bd" target="blank">Barishal Engineering College </a> 2018-2025.| P-1102 | V-1.1.2 |
    All
    rights reserved. Developed by <a href="https://dhruborajroy.github.io/myPortfollioWebsite">The Web Divers</a></p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>