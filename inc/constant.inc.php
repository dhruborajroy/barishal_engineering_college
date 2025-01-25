<?php

if (!defined('SECURE_ACCESS')) {
	die("Direct access not allowed!");
  }
require('connection.inc.php');
$site_res=mysqli_query($con,"SELECT * FROM `site_details` where id='1'");
if(mysqli_num_rows($site_res)>0){
	$site_res_row=mysqli_fetch_assoc($site_res);
	define('LOGO',$site_res_row['site_logo']);	
	define('BD_LOGO',$site_res_row['bd_logo']);
	define('NAME',$site_res_row['name']);
	define('EMAIL',$site_res_row['email']);
	define('TEL',$site_res_row['phone']);
	define('ADDRESS',$site_res_row['address']);
	define('SIGNATURE_NAME',$site_res_row['signature_name']);
	define('DESIGNATION',$site_res_row['name']);
	define('SIGNATURE_IMAGE',$site_res_row['signature_image']);
	define('SMTP_USERNAME',$site_res_row['smtp_username']);
	define('SMTP_PASSWORD',$site_res_row['smtp_password']);
	
}else{	
	define('LOGO','../images/gallery/logo.png');
	define('BD_LOGO','../images/bd.png');
	define('NAME',"
	গণপ্রজাতন্ত্রী বাংলাদেশ সরকার 
	<br>
	অধ্যক্ষের কার্যালয়
	<br>
	বরিশাল ইঞ্জিনিয়ারিং কলেজ");
	define('TAGLINE','');
	define('EMAIL','contact@bec.edu.com');
	define('TEL','০১৭০৫৫৫৫৫৫৫৫');
	define('ADDRESS','দুর্গাপুর, বরিশাল');		
	define('SIGNATURE_NAME','জনাব মোঃ লিটন রাব্বানী <br> অধ্যক্ষ <br> বরিশাল ইঞ্জিনিয়ারিং কলেজ');
	define('DESIGNATION','');
	define('SIGNATURE_IMAGE','');
	define('SMTP_USERNAME',"");
	define('SMTP_PASSPORT',"");
}





define('FRONT_SITE_PATH','http://localhost/');
define('SLIDER_IMAGE',FRONT_SITE_PATH."/images/sliders/");
define('DEPT_SLIDER_IMAGE',FRONT_SITE_PATH."/images/dept/sliders/");
define('UPLOAD_SLIDER_IMAGE',$_SERVER['DOCUMENT_ROOT']."/images/sliders/");
define('UPLOAD_DEPT_SLIDER_IMAGE',$_SERVER['DOCUMENT_ROOT']."/images/dept/sliders/");
define('UPLOAD_FACULTY_IMAGE',$_SERVER['DOCUMENT_ROOT']."/images/teachers/");
define('UPLOAD_NOTICE_PDF',$_SERVER['DOCUMENT_ROOT']."/notice_files/");
define('UPLOAD_NEWS_IMAGE',$_SERVER['DOCUMENT_ROOT']."/images/news/");
define('UPLOAD_STUDENT_IMAGE',$_SERVER['DOCUMENT_ROOT']."/images/students/");




$curStr=$_SERVER['REQUEST_URI'];
$curArr=explode('/',$curStr);
$cur_path=$curArr[count($curArr)-1];
$dashboard_active="";
$payments_active="";
$profile_active="";

if($cur_path=='' || $cur_path=='dashboard'){
	$dashboard_active="active";
}elseif($cur_path=='' || $cur_path=='payments'){
	$payments_active="active";
}elseif($cur_path=='' || $cur_path=='profile'){
	$profile_active="active";
}else{

}
?>