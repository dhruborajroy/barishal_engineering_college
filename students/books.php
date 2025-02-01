<?php 
define('SECURE_ACCESS', true);
include("header.php");
$id="";
$name=""; 
$department_id="";
$category_id="";
?>
            <!-- MAIN CONTENT-->
            <div class="main-content">
                <div class="section__content section__content--p30">
                    <div class="container-fluid">
                                                
                        <div class="card">
                            <div class="card-header">
                                <strong>Search Book</strong>
                            </div>
                            <div class="card-body card-block">
                                <form  method="get" enctype="multipart/form-data" class="form-horizontal">
                                    <div class="row form-group col-md-12">
                                        <div class="col-sm-12 col-md-6 mt-2">
                                        <select class="form-control select2" name="department_id">
                                    <option selected disabled="disabled">Select Depertment</option>
                                    <?php
                                        $res=mysqli_query($con,"SELECT * FROM `depts_lab_list` where status='1'");
                                        while($row=mysqli_fetch_assoc($res)){
                                            if($row['short_form']==$dept){
                                                echo "<option selected='selected' value=".$row['short_form'].">".$row['name']." (".$row['short_form'].")</option>";
                                            }else{
                                                echo "<option value=".$row['short_form'].">".$row['name']." (".$row['short_form'].")</option>";
                                            }                                                        
                                        }
                                        ?>
                                </select>
                                        </div>
                                        <div class="col-sm-12 col-md-6 mt-2">
                                        <select name="course_id" id="course" class="form-control-lg form-control">
                                            <option value="">Select Course</option>
                                        </select>
                                        </div>
                                    </div>
                            </div>
                            <div class="card-footer">
                                <input type="submit" value="Get Attendance" disabled id="get_attendance"  class="btn btn-primary btn-sm">
                                <a href="attendance"> 
                                    <button type="reset" class="btn btn-danger btn-sm">
                                    <i class="fa fa-ban"></i> Reset
                                </button>
                                </a>
                            </div>
                            
                        </form>
                    </div>
                        <div class="row">
                            <div class="col-md-12">
                                <!-- DATA TABLE -->
                                <h3 class="title-5 m-b-35">data table</h3>
                                <div class="table-data__tool">
                                    <div class="table-data__tool-left">
                                        <div class="rs-select2--light rs-select2--md">
                                            <select class="js-select2" name="property">
                                                <option selected="selected">All Properties</option>
                                                <option value="">Option 1</option>
                                                <option value="">Option 2</option>
                                            </select>
                                            <div class="dropDownSelect2"></div>
                                        </div>
                                        <div class="rs-select2--light rs-select2--sm">
                                            <select class="js-select2" name="time">
                                                <option selected="selected">Today</option>
                                                <option value="">3 Days</option>
                                                <option value="">1 Week</option>
                                            </select>
                                            <div class="dropDownSelect2"></div>
                                        </div>
                                        <button class="au-btn-filter">
                                            <i class="zmdi zmdi-filter-list"></i>filters</button>
                                    </div>
                                    <div class="table-data__tool-right">
                                        <button class="au-btn au-btn-icon au-btn--green au-btn--small">
                                            <i class="zmdi zmdi-plus"></i>add item</button>
                                        <div class="rs-select2--dark rs-select2--sm rs-select2--dark2">
                                            <select class="js-select2" name="type">
                                                <option selected="selected">Export</option>
                                                <option value="">Option 1</option>
                                                <option value="">Option 2</option>
                                            </select>
                                            <div class="dropDownSelect2"></div>
                                        </div>
                                    </div>
                                </div>
                                <div class="table-responsive table-responsive-data2">
                                    <table class="table table-data2">
                                        <thead>
                                            <tr>
                                                <th>
                                                    <label class="au-checkbox">
                                                        <input type="checkbox">
                                                        <span class="au-checkmark"></span>
                                                    </label>
                                                </th>
                                                <th>Cover</th>
                                                <th>Book name</th>
                                                <th>description</th>
                                                <th></th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <?php
                                            $per_page=30;
                                            $page=0;
                                            $current_page=1;
                                            if(isset($_GET['page'])){
                                                $page=get_safe_value($_GET['page']);
                                                if($page<=0){
                                                    $page=0;
                                                    $current_page=1;
                                                }else{
                                                    $current_page=$page;
                                                    $page--;
                                                    $page=$page*$per_page;
                                                }
                                            }

                                            $record=mysqli_num_rows(mysqli_query($con,"select id from book where status='1'"));

                                            $pagi=ceil($record/$per_page);

                                            echo form_csrf();
                                            $sql="select * from book where status='1'";
                                            if($category_id!=""){
                                                $sql.=" and category_id='$category_id'";
                                            }
                                            if($department_id!=""){
                                                $sql.=" and department='$department_id'";
                                            }
                                            if($name!=""){
                                                $sql.=" and (title like '%$name%' or subtitle like '%$name%')";
                                            }
                                            $sql.=" order by id asc limit $page,$per_page";
                                            $res=mysqli_query($con,$sql);
                                            if(mysqli_num_rows($res)>0){
                                            $i=1;
                                            while($row=mysqli_fetch_assoc($res)){
                                            ?>
                                        <tr class="spacer"></tr>
                                            <tr class="tr-shadow">
                                                <td>
                                                </td>
                                                <!-- <td><img class="card-img-top rounded" src="../library/media/books/<?php echo $row['image']?>" alt="book image" style="width:30%"></td> -->
                                                <td>
                                                    <?php echo $row['title']?>  
                                                </td>
                                                <td>
                                                    <span class="status--process"><?php echo $row['copies_have']?> Copy Available</span>
                                                </td>
                                                <td>
                                                    <?php if($row['copies_have']>0){?>
                                                    <a onclick="request_book('<?php echo $row['id']?>')"
                                                       class="btn btn-success text-white"
                                                        id="requested_book_id_<?php echo $row['id']?>">Request Book</a>
                                                    <?php }?>
                                                   

                                                </td>
                                            </tr>
                                            
                                                <?php 
                                                $i++;
                                                } } else { ?>
                                                <div class="col-lg-12">
                                                    <div class="ui-grid-box rounded">
                                                        <h5 class="card-title d-flex justify-content-center">No Book Found</h5>
                                                    </div>
                                                </div>
                                                <?php } ?>
                                        </tbody>
                                    </table>
                                </div>
                                <div class="user-data__footer">
                                    <div class="col-md-12">
                                    <ul class="pagination pagination-lg">
                                        <?php 
                                        for($i=1;$i<=$pagi;$i++){
                                            $class='';
                                            if($current_page==$i){
                                                ?><li class="page-item active"><a class="page-link" href="javascript:void(0)"><?php echo $i?></a></li><?php
                                            }else{
                                        ?>
                                            <li class="page-item"><a class="page-link" href="?page=<?php echo $i?>"><?php echo $i?></a></li>
                                        <?php
                                            } 
                                        }
                                        ?>
                                    </ul>
                                    </div>
                                </div>
                                <!-- END DATA TABLE -->
                            </div>
                        </div>
<?php 
include("footer.php");
?>
<!-- Include SweetAlert from CDN -->
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>

<script>
    
function request_book(book_id) {
    var book_id = book_id;
    var csrf_token = jQuery('#csrf_token').val();
    // alert(csrf_token);
    // alert(book_id);
    jQuery.ajax({
        url: "ajax/request_book",
        data: "book_id=" + book_id + "&csrf_token=" + csrf_token,
        type: "post",
        failure: function(result) {
            alert(result);
        },
        // swal parameters are "warning", "error", "success" and "info" 
        success: function(result) {
            if (result == 'done') {
                swal("Good job!",
                    "Book requested Successfully. Please contact your librarian to get the book.",
                    "success");
                jQuery('#requested_book_id_' + book_id).html("Requested");
            }
            if (result == 'requested') {
                swal(
                    "",
                    "You Have already requested for this book. Please contact your librarian to get the book.",
                    "info"
                );
                jQuery('#requested_book_id_' + book_id).html("Requested");
            }
            if (result == 'wrong') {
                alert("Something Went wrong");
            }

        }
    });
}


</script>