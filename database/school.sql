-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 27, 2025 at 09:06 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `school`
--

-- --------------------------------------------------------

--
-- Table structure for table `about_us`
--

CREATE TABLE `about_us` (
  `id` varchar(20) NOT NULL,
  `title` varchar(100) NOT NULL,
  `details` text NOT NULL,
  `added_on` varchar(15) NOT NULL,
  `updated_on` varchar(15) NOT NULL,
  `added_by` varchar(15) NOT NULL,
  `status` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `about_us`
--

INSERT INTO `about_us` (`id`, `title`, `details`, `added_on`, `updated_on`, `added_by`, `status`) VALUES
('1', 'Brief Introduction', '<p style=\" text-align: justify;text-justify: inter-word;\"><b>Barishal Engineering College </b>is located on an 8-acre plot about 13 km east of the divisional city of Barisal, near the Barishal-Bhola highway in North Duragpur, under the Banaripara police station. This college has been approved for student enrollment from the current (2017-18) session under the affiliation of the University of Dhaka since November 16, 2017. The construction and completion of this institution are expected to be finished by June 2018, under a project implemented by the Ministry of Education’s Directorate of Technical Education, which operates under the Technical and Madrasa Education Division, aiming to expand engineering education in the country. The academic activities of this institution will be conducted under the Faculty of Engineering and Technology of the University of Dhaka. Currently, the college will enroll students in two departments: (1) Electrical and Electronics Engineering (EEE) and (2) Civil Engineering (CE). In each academic session, a total of 120 students, 60 from each department, will be admitted. The college features an administrative building, four academic buildings, a 400-seat male dormitory, and a 100-seat female dormitory, as well as residential facilities for teachers and staff. This institution also has a spacious playground, a library with subject-based books, modern computer labs with high-speed internet, and state-of-the-art labs/workshops, providing modern educational facilities. 50% of the admitted students will receive semester-based merit scholarships at the rate determined by the government. For more information about the college, please call: 02-9103956.</p><p><br><br><br>&nbsp;</p>', '1682185673', '1737805671', '1', 1);

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phoneNumber` varchar(15) NOT NULL,
  `password` varchar(100) NOT NULL,
  `last_notification` varchar(10) NOT NULL,
  `image` varchar(255) NOT NULL,
  `status` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `name`, `email`, `phoneNumber`, `password`, `last_notification`, `image`, `status`) VALUES
(1, 'Dhrubo Raj Roy', 'Dhruborajroy3@gmail.com', '01705927257', '$2y$10$3xSV8g1xd.7b6leqDI08MOZS6CMMiYKfsL32wzasO7Sp9BqqF92im', '', '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `batch`
--

CREATE TABLE `batch` (
  `id` int(11) NOT NULL,
  `name` varchar(10) NOT NULL,
  `session` varchar(20) NOT NULL,
  `numaric_value` int(5) NOT NULL,
  `status` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `batch`
--

INSERT INTO `batch` (`id`, `name`, `session`, `numaric_value`, `status`) VALUES
(1, '04 ', '2020-2021', 4, 1),
(2, '03', '2019-2020', 3, 1),
(3, '05', '2021-2022', 5, 1),
(4, '01', '2016-2018', 1, 1),
(5, '02', '2018-2019', 2, 1),
(6, '06', '2022-2023', 6, 1),
(7, '07', '2023-2024', 7, 1),
(8, '08', '2024-2025', 8, 1);

-- --------------------------------------------------------

--
-- Table structure for table `depts_lab_list`
--

CREATE TABLE `depts_lab_list` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `image` varchar(255) NOT NULL,
  `name_bn` text NOT NULL,
  `short_form` varchar(20) NOT NULL,
  `public_view` int(2) NOT NULL,
  `status` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `depts_lab_list`
--

INSERT INTO `depts_lab_list` (`id`, `name`, `image`, `name_bn`, `short_form`, `public_view`, `status`) VALUES
(1, 'Civil Engineering', 'ce.jpg', 'সিভিল ইঞ্জিনিয়ারিং', 'CE', 1, 1),
(2, 'Electrical and Electronics Engineering', 'eee.jpg', 'ইলেকট্রিক্যাল এন্ড ইলেকট্রনিক ইঞ্জিনিয়ারিং', 'EEE', 1, 1),
(3, 'Naval Architecture & Marine Engineering (Proposed)', '01.jpg', 'নেভাল আর্কিটেকচার এন্ড মেরিন ইঞ্জিনিয়ারিং', 'NAME ', 0, 1),
(4, 'General Science & Humanities', 'gsh.jpg', 'জেনারেল সায়েন্স এন্ড হিউম্যানিটিস\r\n', 'GSH', 1, 1),
(5, 'Hostels', '01.jpg', 'হোস্টেল সুপার', 'HS', 0, 1),
(6, 'Cenreal Computer Center', '1737785513', 'সেন্ট্রাল কম্পিউটার সেন্টার', 'CCC', 0, 1),
(7, 'Office', '01.jpg', 'অফিস', 'Office', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `dept_general_info`
--

CREATE TABLE `dept_general_info` (
  `id` varchar(20) NOT NULL,
  `dept_id` varchar(20) NOT NULL,
  `dept_publication` text DEFAULT NULL,
  `dept_research` text DEFAULT NULL,
  `dept_scholarships` text DEFAULT NULL,
  `dept_about` text DEFAULT NULL,
  `dept_vision_mission` text DEFAULT NULL,
  `dept_head_msg` text DEFAULT NULL,
  `dept_booklet` text DEFAULT NULL,
  `status` enum('active','inactive') DEFAULT 'active'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `dept_general_info`
--

INSERT INTO `dept_general_info` (`id`, `dept_id`, `dept_publication`, `dept_research`, `dept_scholarships`, `dept_about`, `dept_vision_mission`, `dept_head_msg`, `dept_booklet`, `status`) VALUES
('1', 'CE', 'Publication What is Lorem Ipsum?\r\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'What is Lorem Ipsum?\r\nReseatch Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'What is Lorem Ipsum?\r\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'What is Lorem Ipsum?\r\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'What is Lorem Ipsum?\r\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'What is Lorem Ipsum?\r\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'What is Lorem Ipsum?\r\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'active'),
('2', 'EEE', 'Publication What is Lorem Ipsum?\r\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'What is Lorem Ipsum?\r\nReseatch Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'What is Lorem Ipsum?\r\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'What is Lorem Ipsum?\r\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'What is Lorem Ipsum?\r\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'What is Lorem Ipsum?\r\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'What is Lorem Ipsum?\r\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'active'),
('3', 'GSH', 'Publication What is Lorem Ipsum?\r\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'What is Lorem Ipsum?\r\nReseatch Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'What is Lorem Ipsum?\r\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'What is Lorem Ipsum?\r\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'What is Lorem Ipsum?\r\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'What is Lorem Ipsum?\r\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'What is Lorem Ipsum?\r\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'active');

-- --------------------------------------------------------

--
-- Table structure for table `dept_sliders`
--

CREATE TABLE `dept_sliders` (
  `id` varchar(20) NOT NULL,
  `image` varchar(50) NOT NULL,
  `title` varchar(100) NOT NULL,
  `dept` varchar(20) NOT NULL,
  `sub_title` varchar(100) NOT NULL,
  `button_text` varchar(20) NOT NULL,
  `button_link` text NOT NULL,
  `added_by` varchar(20) NOT NULL,
  `added_on` varchar(15) NOT NULL,
  `updated_on` varchar(15) NOT NULL,
  `status` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `dept_sliders`
--

INSERT INTO `dept_sliders` (`id`, `image`, `title`, `dept`, `sub_title`, `button_text`, `button_link`, `added_by`, `added_on`, `updated_on`, `status`) VALUES
('67939eafd3ade', '1737727663.jpg', '', 'CE', '', '', '', '1', '1737727663', '1737727976', 1),
('67939ec1e574b', '1737727681.jpg', '', 'EEE', '', '', '', '1', '1737727681', '', 1),
('67939ece0c034', '1737727694.jpg', '', 'GSH', '', '', '', '1', '1737727694', '1737727847', 1),
('6794cee7d17f4', '1737805543.jpg', '', 'EEE', '', '', '', '1', '1737805543', '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `faculty`
--

CREATE TABLE `faculty` (
  `id` varchar(20) NOT NULL,
  `name` varchar(255) NOT NULL,
  `image` varchar(50) NOT NULL,
  `designation` varchar(255) NOT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `dept` varchar(50) NOT NULL,
  `research_interest` text DEFAULT NULL,
  `bio` text DEFAULT NULL,
  `facebook` varchar(255) DEFAULT NULL,
  `linked_in` varchar(255) DEFAULT NULL,
  `education` text DEFAULT NULL,
  `experience` text DEFAULT NULL,
  `publication` text DEFAULT NULL,
  `scholarship_award` text DEFAULT NULL,
  `research` text DEFAULT NULL,
  `teaching_supervision` text DEFAULT NULL,
  `joined_at` date NOT NULL,
  `visibility` enum('public','private') DEFAULT 'public',
  `type` varchar(20) NOT NULL,
  `dept_head` tinyint(1) DEFAULT 0,
  `status` enum('active','inactive','retired') DEFAULT 'active'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `general_info`
--

CREATE TABLE `general_info` (
  `id` int(1) NOT NULL,
  `history` text NOT NULL,
  `vision_mission` text NOT NULL,
  `organogram` text NOT NULL,
  `bec_at_a_glance` text NOT NULL,
  `bec_monogram` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `general_info`
--

INSERT INTO `general_info` (`id`, `history`, `vision_mission`, `organogram`, `bec_at_a_glance`, `bec_monogram`) VALUES
(1, '<span id=\"docs-internal-guid-b8ca6853-7fff-7f65-433b-1b7528b23dd2\"><p dir=\"ltr\" style=\"line-height:1.38;margin-right: 4pt;text-align: justify;margin-top:0pt;margin-bottom:0pt;\"><span style=\"font-size: 10.5pt; font-family: Arial, sans-serif; color: rgb(51, 51, 51); background-color: transparent; font-weight: 700; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; font-variant-emoji: normal; vertical-align: baseline; white-space-collapse: preserve;\">বরিশাল ইঞ্জিনিয়ারিং কলেজটি</span><span style=\"font-size: 10.5pt; font-family: Arial, sans-serif; color: rgb(68, 68, 68); background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; font-variant-emoji: normal; vertical-align: baseline; white-space-collapse: preserve;\"> ৮ একর জায়গার উপর বরিশাল বিভাগীয় শহর থেকে প্রায় ১৩ কিঃমিঃ পূর্বে বন্দর থানাধীন উত্তর দূর্গাপুরে বরিশাল-ভোলা মহাসড়কের পাশে অবস্থিত। অত্র কলেজটি ১৬ নভেম্বর ২০১৭ খ্রিঃ হতে ঢাকা বিশ্ববিদ্যালয়ের অধিভূক্ত হয়ে চলতি (২০১৭-১৮) সেশনে ছাত্র/ছাত্রী ভর্তির অনুমোদন প্রাপ্ত হয়েছে। দেশে প্রকৌশল শিক্ষা বিস্তারের লক্ষ্যে শিক্ষা মন্ত্রণালয়, কারিগরি ও মাদ্রাসা শিক্ষা বিভাগের নিয়ন্ত্রনাধীন কারিগরি শিক্ষা অধিদপ্তরের বাস্তবায়নাধীন&nbsp; জুন ২০১৮ পর্যন্ত প্রকল্প মেয়াদে এর নির্মাণ ও পূর্ত কাজ সম্পন্ন হবে। উক্ত প্রতিষ্ঠানটির একাডেমিক কার্যক্রম&nbsp; ঢাকা বিশ্ববিদ্যালয়ের ইঞ্জিনিয়ারিং এন্ড টেকনোলজি অনুষদের অধীনে পরিচালিত হবে । কলেজটিতে বর্তমানে দুইটি বিভাগে ছাত্র-ছাত্রী ভর্তি করা হবেঃ (১) ইলেকট্রিক্যাল এন্ড ইলেকট্রনিক্স ইঞ্জিনিয়ারিং (ইইই) বিভাগ (২) সিভিল ইঞ্জিনিয়ারিং (সিই)বিভাগ। প্রতি একাডেমিক সেশনে প্রতি বিভাগে ৬০ জন করে মোট ১২০ জন ছাত্র-ছাত্রী ভর্তি করা হবে। কলেজটিতে একটি প্রশাসনিক ভবন, চারটি একাডেমিক ভবন, একটি ৪০০ সিটের ছাত্রাবাস ও একটি ১০০ সিটের ছাত্রীনিবাস সহ শিক্ষক ও কর্মচারীদের জন্য আবাসিক ভবন রয়েছে। অত্র প্রতিষ্ঠানে সুবিশাল খেলার মাঠ, বিষয় ভিত্তিক বই সম্বলিত লাইব্রেরি, দ্রুত গতির ইন্টারনেট সুবিধা সহ আধুনিক কম্পিউটার ল্যাব এবং অত্যাধুনিক ল্যাব/ওয়ার্কশপসহ শিক্ষার আধুনিক সুযোগ সুবিধা রয়েছে। ভর্তিকৃত ছাত্র-ছাত্রীদের মধ্যে ৫০% ছাত্র/ছাত্রীকে সরকার নির্ধারিত হারে সেমিস্টার ভিত্তিক মেধা বৃত্তি প্রদান করা হবে। কলেজ সম্পর্কে বিস্তারিত তথ্যের জন্যঃ ফোন নং ০২-৯১০৩৯৫৬</span></p><div><span style=\"font-size: 10.5pt; font-family: Arial, sans-serif; color: rgb(68, 68, 68); background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; font-variant-emoji: normal; vertical-align: baseline; white-space-collapse: preserve;\"><br></span></div></span>', '<div class=\"body-section mt-2 mb-2\">\r\n  <div class=\"container text-justfy mb-5\">\r\n    <h1 class=\"text-center text-center shadow-sm p-3 mb-5  bg-light rounded\">The Vision Statement</h1>\r\n    <div class=\"row\">\r\n      <div class=\"d-flex\">\r\n        <div class=\"\">\r\n          <i class=\"fa-solid fa-diamond\"></i>\r\n        </div>\r\n        <div class=\"mission-vision-text ps-1\"> To be center of excellence in education, research, and innovation to meet the national and international requirements in engineering and technology. </div>\r\n      </div>\r\n    </div>\r\n    <h1 class=\"text-center text-center shadow-sm p-3 mb-5 mt-5  bg-light rounded\">The Mission Statement</h1>\r\n    <div class=\"row\">\r\n      <div class=\"d-flex\">\r\n        <div class=\"\">\r\n          <i class=\"fa-solid fa-diamond\"></i>\r\n        </div>\r\n        <div class=\"mission-vision-text ps-1\"> To create leaders in different branches of engineering and technology with high ethical standard and professionalism through its proper education, research, an innovation in a congenial environment. </div>\r\n      </div>\r\n      <div class=\"py-2\">\r\n        <div class=\"d-flex\">\r\n          <div class=\"\">\r\n            <i class=\"fa-solid fa-diamond\"></i>\r\n          </div>\r\n          <div class=\"ps-1\"> To play a leading role in the socio-economic, environmental, and technological development of the country. </div>\r\n        </div>\r\n      </div>\r\n      <div class=\"\">\r\n        <div class=\"d-flex \">\r\n          <div class=\"\">\r\n            <i class=\"fa-solid fa-diamond\"></i>\r\n          </div>\r\n          <div class=\"ps-1\"> To undertake collaborative research and projects that offer opportunities for sustainable connectivity with academia and industry. </div>\r\n        </div>\r\n      </div>\r\n    </div>\r\n  </div>\r\n</div>', '', '<div class=\"body-section mt-2 mb-2\">\r\n    \r\n    <div class=\"container text-justfy mb-5\">\r\n        <h1 class=\"text-center text-center shadow-sm p-3 mb-5  bg-light rounded\">BEC AT A GLANCE</h1>\r\n        <div class=\"\">\r\n            <table class=\"table table-bordered\" style=\"\">\r\n                <tbody class=\"\" style=\" face=\" arial\"=\"\"><tr>\r\n                  <td><p><font color=\"#000\">1</font></p></td>\r\n                  <td><p align=\"center\"><font color=\"#000\">Barishal Engineering College</font></p></td>\r\n                  <td><p align=\"center\"><font color=\"#000000\">2018</font></p></td>\r\n                  </tr>\r\n                  <tr>\r\n                  <td><p><font color=\"#000\">2</font></p></td>\r\n                  <td><p align=\"center\"><font color=\"#000\">Initiation of Academic Activities</font></p></td>\r\n                  <td><p align=\"center\"><font color=\"#000\">2018</font></p></td>\r\n                  </tr>\r\n                  \r\n                  \r\n                  <tr>\r\n                  <td><p><font color=\"#000\">5</font></p></td>\r\n                  <td><p align=\"center\"><font color=\"#000\">Campus Area</font></p></td>\r\n                  <td><p align=\"center\"><font color=\"#000\">8 acre</font></p></td>\r\n                  </tr>\r\n                  <tr><td><p><font color=\"#000\">7</font></p></td>\r\n                  <td><p align=\"center\"><font color=\"#000\">Number of Faculties</font></p></td>\r\n                  <td><p align=\"center\"><font color=\"#000\">1</font></p></td>\r\n                  </tr>\r\n                  <tr>\r\n                  <td><p><font color=\"#000\">6</font></p></td>\r\n                  <td><p align=\"center\"><font color=\"#000\">Number of Institutes</font></p></td>\r\n                  <td><p align=\"center\"><font color=\"#000\">03</font></p></td>\r\n                  </tr>\r\n                  <!-- <tr>\r\n                  <td><p><font color=\"#000\">7</p></td>\r\n                  <td><p align=\"center\"><font color=\"#000\">Number of Faculties</p></td>\r\n                  <td><p align=\"center\"><font color=\"#000\">03</p></td>\r\n                  </tr> -->\r\n                  <tr>\r\n                  <td><p><font color=\"#000\">8</font></p></td>\r\n                  <td><p align=\"center\"><font color=\"#000\">Number of Departments</font></p></td>\r\n                  <td><p align=\"center\"><font color=\"#000\">2</font></p></td>\r\n                  </tr>\r\n                  <tr>\r\n                  <td><p><font color=\"#000\">9</font></p></td>\r\n                  <td><p align=\"center\"><font color=\"#000\">Degrees Offered</font></p></td>\r\n                  <td><p align=\"center\"><font color=\"#000\">B.Sc. Engg.</font></p></td>\r\n                  </tr>\r\n\r\n                  \r\n                  </tbody>\r\n            </table>\r\n        </div>\r\n\r\n    </div>\r\n\r\n  </div>', '');

-- --------------------------------------------------------

--
-- Table structure for table `head_message`
--

CREATE TABLE `head_message` (
  `id` varchar(20) NOT NULL,
  `dept_id` varchar(20) NOT NULL,
  `message` text NOT NULL,
  `status` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `head_message`
--

INSERT INTO `head_message` (`id`, `dept_id`, `message`, `status`) VALUES
('1', 'ce', 'Dr. Abu Zakir Morshed\r\n\r\nWelcome to the Department of Civil Engineering. Nowadays, sustainable infrastructures are essential parts for the overall development of a nation and to make a country liveable.\r\n\r\nOur department is one of the most leading and prosperous branches of this university, as well as of this country. We do have a bunch of faculty members who are competitive in their research and teaching in different fields of Civil Engineering. Our department has a set of laboratories, which are enriched with modern equipments and facilities. We are dedicated to provide innovative and high-quality opportunities for our students to acquire the fundamental knowledge, skills and attitudes necessary for entry and success in the professional practice of Civil Engineering fields.\r\n\r\nGraduates from the Department of Civil Engineering are trained to think critically and able to conduct research/real work, both in self-regulating and collaborative environment. They are capable to solve challenging problems with innovative ideas, as well as, the technological challenges they need to address in the future. With our quality education, real problem based learning, and collaborative environment, our graduates have a multitude of options after graduation.\r\n\r\nThe prospects for Civil Engineers are exciting, and can appear forward to have success after receiving their degrees. We invite all of you to join in our family and explore the excellent opportunities in the department and contact us if you would like more information.\r\n\r\n\r\n\r\nDr. Abu Zakir Morshed\r\nProfessor and Head\r\nDepartment of Civil Engineering', 1);

-- --------------------------------------------------------

--
-- Table structure for table `lab_list`
--

CREATE TABLE `lab_list` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `name_bn` text NOT NULL,
  `dept_id` varchar(20) NOT NULL,
  `status` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `lab_list`
--

INSERT INTO `lab_list` (`id`, `name`, `name_bn`, `dept_id`, `status`) VALUES
(1, 'Geo-Technical Engineeirng Labratory', 'জিওটেক ', '1', 1),
(2, 'Structural Engineering Labratory', ' ', '1', 1),
(3, 'Geo-Technical Engineeirng Labratory', 'জিওটেক ', '2', 1),
(4, 'Structural Engineering Labratory', ' ', '2', 1),
(5, 'Geo-Technical Engineeirng Labratory', 'জিওটেক ', '2', 1),
(6, 'Structural Engineering Labratory', ' ', '2', 1),
(7, 'Geo-Technical Engineeirng Labratory', 'জিওটেক ', '6', 1),
(8, 'Structural Engineering Labratory', ' ', '3', 1),
(9, 'Geo-Technical Engineeirng Labratory', 'জিওটেক ', '4', 1),
(10, 'Structural Engineering Labratory', ' ', '3', 1),
(11, 'Geo-Technical Engineeirng Labratory', 'জিওটেক ', '5', 1),
(12, 'Structural Engineering Labratory', ' ', '6', 1),
(13, 'Geo-Technical Engineeirng Labratory', 'জিওটেক ', '7', 1),
(14, 'Structural Engineering Labratory', ' ', '2', 1),
(15, 'Geo-Technical Engineeirng Labratory', 'জিওটেক ', '7', 1),
(16, 'Structural Engineering Labratory', ' ', '4', 1);

-- --------------------------------------------------------

--
-- Table structure for table `login_attempts`
--

CREATE TABLE `login_attempts` (
  `id` int(11) NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `attempts` int(11) DEFAULT 0,
  `last_attempt` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `login_logs`
--

CREATE TABLE `login_logs` (
  `id` int(11) NOT NULL,
  `admin_id` varchar(25) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `status` enum('Success','Failed') NOT NULL,
  `timestamp` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `login_logs`
--

INSERT INTO `login_logs` (`id`, `admin_id`, `email`, `ip_address`, `status`, `timestamp`) VALUES
(1, '1', 'dhruborajroy3@gmail.com', '::1', 'Success', '2025-01-18 13:49:14'),
(2, '1', 'dhruborajroy3@gmail.com', '::1', 'Success', '2025-01-18 13:49:19'),
(3, NULL, 'dhruborajroy3@gmail.com', '::1', 'Failed', '2025-01-18 13:49:28'),
(4, NULL, 'dhruborajroy3@gmail.com', '::1', 'Failed', '2025-01-18 13:49:55'),
(5, NULL, 'dhruborajroy3@gmail.com', '::1', 'Failed', '2025-01-18 13:49:59'),
(6, NULL, 'dhruborajroy3@gmail.com', '::1', 'Failed', '2025-01-18 13:50:02'),
(7, NULL, 'dhruborajroy3@gmail.com', '::1', 'Failed', '2025-01-18 13:50:35'),
(8, '1', 'dhruborajroy3@gmail.com', '::1', 'Success', '2025-01-18 13:51:55'),
(9, '1', 'dhruborajroy3@gmail.com', '::1', 'Success', '2025-01-18 13:53:29'),
(10, '1', 'dhruborajroy3@gmail.com', '::1', 'Success', '2025-01-18 13:53:47'),
(11, '1', 'dhruborajroy3@gmail.com', '::1', 'Success', '2025-01-18 13:55:29'),
(12, '1', 'dhruborajroy3@gmail.com', '::1', 'Success', '2025-01-18 14:12:16'),
(13, '1', 'dhruborajroy3@gmail.com', '::1', 'Success', '2025-01-18 14:12:29'),
(14, '1', 'dhruborajroy3@gmail.com', '::1', 'Success', '2025-01-18 14:13:01'),
(15, '1', 'dhruborajroy3@gmail.com', '::1', 'Success', '2025-01-18 14:13:33'),
(16, '1', 'dhruborajroy3@gmail.com', '::1', 'Success', '2025-01-18 14:18:15'),
(17, '1', 'dhruborajroy3@gmail.com', '::1', 'Success', '2025-01-18 14:20:12'),
(18, '1', 'dhruborajroy3@gmail.com', '::1', 'Success', '2025-01-18 14:21:05'),
(19, '1', 'dhruborajroy3@gmail.com', '::1', 'Success', '2025-01-18 14:25:40'),
(20, '1', 'dhruborajroy3@gmail.com', '::1', 'Success', '2025-01-18 17:00:14'),
(21, '1', 'dhruborajroy3@gmail.com', '::1', 'Success', '2025-01-18 17:00:32'),
(22, '1', 'dhruborajroy3@gmail.com', '::1', 'Success', '2025-01-21 22:43:30'),
(23, '1', 'dhruborajroy3@gmail.com', '::1', 'Success', '2025-01-23 19:58:57'),
(24, '1', 'dhruborajroy3@gmail.com', '::1', 'Success', '2025-01-24 10:14:54'),
(25, '1', 'Dhruborajroy3@gmail.com', '172.29.41.164', 'Success', '2025-01-24 15:11:11'),
(26, '1', 'Dhruborajroy3@gmail.com', '172.29.41.171', 'Success', '2025-01-24 19:03:03'),
(27, '1', 'dhruborajroy3@gmail.com', '::1', 'Success', '2025-01-24 21:33:46'),
(28, '1', 'Dhruborajroy3@gmail.com', '172.29.41.171', 'Success', '2025-01-24 23:33:10'),
(29, '1', 'dhruborajroy3@gmail.com', '::1', 'Success', '2025-01-25 09:12:12'),
(30, '1', 'dhruborajroy3@gmail.com', '::1', 'Success', '2025-01-25 15:37:55'),
(31, '1', 'dhruborajroy3@gmail.com', '::1', 'Success', '2025-01-25 19:55:12'),
(32, '1', 'dhruborajroy3@gmail.com', '::1', 'Success', '2025-01-25 19:55:17'),
(33, '1', 'dhruborajroy3@gmail.com', '::1', 'Success', '2025-01-25 19:55:36'),
(34, '1', 'dhruborajroy3@gmail.com', '::1', 'Success', '2025-01-25 19:55:52'),
(35, '1', 'dhruborajroy3@gmail.com', '::1', 'Success', '2025-01-25 19:56:47'),
(36, '1', 'dhruborajroy3@gmail.com', '::1', 'Success', '2025-01-26 09:05:00'),
(37, '1', 'dhruborajroy3@gmail.com', '::1', 'Success', '2025-01-26 09:47:26'),
(38, '1', 'dhruborajroy3@gmail.com', '::1', 'Success', '2025-01-26 14:01:45');

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `id` varchar(20) NOT NULL,
  `name` varchar(50) NOT NULL,
  `status` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `id` varchar(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `title` text NOT NULL,
  `details` text NOT NULL,
  `dept` varchar(20) NOT NULL,
  `added_on` varchar(20) NOT NULL,
  `added_by` varchar(10) NOT NULL,
  `status` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `notice`
--

CREATE TABLE `notice` (
  `id` varchar(20) NOT NULL,
  `title` varchar(255) NOT NULL,
  `details` text NOT NULL,
  `dept` varchar(20) NOT NULL,
  `reference` text NOT NULL,
  `link` text NOT NULL,
  `added_on` varchar(20) NOT NULL,
  `updated_on` varchar(20) NOT NULL,
  `user_id` varchar(11) NOT NULL,
  `upload_status` int(3) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `notice`
--

INSERT INTO `notice` (`id`, `title`, `details`, `dept`, `reference`, `link`, `added_on`, `updated_on`, `user_id`, `upload_status`, `status`) VALUES
('679396512ee21', '২০২৪-২০২৫ শিক্ষাবর্ষে ভর্তির বিজ্ঞপ্তি', '<p style=\"text-align: justify !important;text-justify: inter-word  !important;\"><p class=\"MsoTitle\" style=\"text-align: center;text-align: justify !important;text-justify: inter-word  !important; \">TO WHOM&nbsp; IT&nbsp; MAY&nbsp;\nCONCERN<o:p></o:p></p><p class=\"MsoNormal\" align=\"center\" style=\"text-align:center\"><b><u><span style=\"font-size:16.0pt;line-height:115%;font-family:&quot;Times New Roman&quot;,serif\">&nbsp;</span></u></b></p><p class=\"MsoNormal\" style=\"text-align:justify;text-justify:inter-ideograph;\nline-height:150%\"><span style=\"font-size:14.0pt;line-height:150%;font-family:\n&quot;Times New Roman&quot;,serif\">This is to certify that <b>DEWAN TANJEEM AHAMMED\nTONMOY</b>, bearing Reg No. 1073, Session 2021-22, &nbsp;father name: Dewan Osman Goni is a current student\nat the Department of Civil Engineering of Barishal Engineering College,\nBarishal under the affiliation of University of Dhaka.<o:p></o:p></span></p><p class=\"MsoNormal\" style=\"line-height:150%\"><span style=\"font-size:14.0pt;\nline-height:150%;font-family:&quot;Times New Roman&quot;,serif\">&nbsp;He bears a good moral character. He did not\ntake part in any activity subversive to the state or discipline.<o:p></o:p></span></p><p class=\"MsoNormal\" style=\"line-height:150%\"><span style=\"font-size:14.0pt;\nline-height:150%;font-family:&quot;Times New Roman&quot;,serif\">&nbsp;</span></p><p>\n\n\n\n\n\n\n\n\n\n</p><p class=\"MsoNormal\" style=\"line-height:150%\"><span style=\"font-size:14.0pt;\nline-height:150%;font-family:&quot;Times New Roman&quot;,serif\">&nbsp;I wish every success in his life.<o:p></o:p></span></p> </p>', '', 'TEs', '679396512ee21_1737725521.pdf', '1737725521', '1737740887', '1', 1, 1),
('6793d32168f95', '1', '<p>1</p>', '', '1', '6793d32168f95_1737741089.pdf', '1737741089', '', '1', 0, 1),
('6793d358addfc', '1', '<p style=\"text-align: justify !important;text-justify: inter-word  !important;\"><p class=\"MsoTitle\" style=\"text-align: center;text-align: justify !important;text-justify: inter-word  !important; \">TO WHOM&nbsp; IT&nbsp; MAY&nbsp;\nCONCERN<o:p></o:p></p><p class=\"MsoNormal\" align=\"center\" style=\"text-align:center\"><b><u><span style=\"font-size:16.0pt;line-height:115%;font-family:&quot;Times New Roman&quot;,serif\">&nbsp;</span></u></b></p><p class=\"MsoNormal\" style=\"text-align:justify;text-justify:inter-ideograph;\nline-height:150%\"><span style=\"font-size:14.0pt;line-height:150%;font-family:\n&quot;Times New Roman&quot;,serif\">This is to certify that <b>DEWAN TANJEEM AHAMMED\nTONMOY</b>, bearing Reg No. 1073, Session 2021-22, &nbsp;father name: Dewan Osman Goni is a current student\nat the Department of Civil Engineering of Barishal Engineering College,\nBarishal under the affiliation of University of Dhaka.<o:p></o:p></span></p><p class=\"MsoNormal\" style=\"line-height:150%\"><span style=\"font-size:14.0pt;\nline-height:150%;font-family:&quot;Times New Roman&quot;,serif\">&nbsp;He bears a good moral character. He did not\ntake part in any activity subversive to the state or discipline.<o:p></o:p></span></p><p class=\"MsoNormal\" style=\"line-height:150%\"><span style=\"font-size:14.0pt;\nline-height:150%;font-family:&quot;Times New Roman&quot;,serif\">&nbsp;</span></p><p>\n\n\n\n\n\n\n\n\n\n</p><p class=\"MsoNormal\" style=\"line-height:150%\"><span style=\"font-size:14.0pt;\nline-height:150%;font-family:&quot;Times New Roman&quot;,serif\">&nbsp;I wish every success in his life.<o:p></o:p></span></p> </p>', '', '1', '6793d358addfc_1737781789.pdf', '1737741144', '1737741579', '1', 0, 1),
('6793d3b6749ca', '1', '<p class=\"MsoNormal\" style=\"text-align:justify;text-justify:inter-ideograph;\r\nline-height:150%\"><span style=\"font-size:14.0pt;line-height:150%;font-family:\r\n&quot;Times New Roman&quot;,serif\">This is to certify that DEWAN TANJEEM AHAMMED TONMOY, bearing Reg No. 1073, Session 2021-22,&nbsp; father name: Dewan Osman Goni is a current student at the Department of Civil Engineering of Barishal Engineering College, Barishal under the affiliation of University of Dhaka.<o:p></o:p></span></p>', '', '1', '6793d3b6749ca_1737774946.pdf', '1737741238', '', '1', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `notice_referance`
--

CREATE TABLE `notice_referance` (
  `id` varchar(20) NOT NULL,
  `notice_id` varchar(20) NOT NULL,
  `referance_id` varchar(20) NOT NULL,
  `status` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `notice_referance`
--

INSERT INTO `notice_referance` (`id`, `notice_id`, `referance_id`, `status`) VALUES
('6793d257f3bd2', '679396512ee21', 'dfgddfv', 1),
('6793d25800007', '679396512ee21', 'fdgdfg', 1),
('6793d2580191b', '679396512ee21', '677cea5825d80', 1),
('6793d25801f0d', '679396512ee21', '677ceafcacdae', 1),
('6793d2580245c', '679396512ee21', 'dfbddb', 1),
('6793d3216a747', '6793d32168f95', '677cea5825d80', 1),
('6793d3216ae5e', '6793d32168f95', '677ceafcacdae', 1),
('6793d358af295', '6793d358addfc', '677cea5825d80', 1),
('6793d358af7ca', '6793d358addfc', '677ceafcacdae', 1),
('6793d3b675157', '6793d3b6749ca', 'fdgdfg', 1),
('6793d3b675688', '6793d3b6749ca', '677cea5825d80', 1),
('6793d3b675e69', '6793d3b6749ca', '677ceafcacdae', 1),
('6793d50b55de5', '6793d358addfc', 'dfgddfv', 1),
('6793d50b565ac', '6793d358addfc', 'fdgdfg', 1),
('6793d50b57009', '6793d358addfc', 'dfbddb', 1),
('6793d50b58a64', '6793d358addfc', 'dfdfbfdgdfg', 1),
('6793d50b59092', '6793d358addfc', 'dfeggegxdv', 1),
('6793d50b59639', '6793d358addfc', 'DFGDFVDFBB', 1),
('6793d50b59d1e', '6793d358addfc', 'dfbdfbergfdrv', 1);

-- --------------------------------------------------------

--
-- Table structure for table `otp_verification`
--

CREATE TABLE `otp_verification` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `otp_code` varchar(6) NOT NULL,
  `expires_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `people`
--

CREATE TABLE `people` (
  `id` varchar(20) NOT NULL,
  `name` varchar(255) NOT NULL,
  `image` varchar(50) NOT NULL,
  `designation` varchar(255) NOT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `dept` varchar(50) NOT NULL,
  `bio` text DEFAULT NULL,
  `facebook` varchar(255) DEFAULT NULL,
  `linked_in` varchar(255) DEFAULT NULL,
  `education` text DEFAULT NULL,
  `experience` text DEFAULT NULL,
  `teaching_supervision` text NOT NULL,
  `research_interest` text NOT NULL,
  `publication` text NOT NULL,
  `scholarship_award` text NOT NULL,
  `research` text NOT NULL,
  `dept_head` text NOT NULL,
  `type` varchar(20) NOT NULL,
  `joined_at` date NOT NULL,
  `visibility` enum('public','private') DEFAULT 'public',
  `status` enum('active','inactive','retired') DEFAULT 'active'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `people`
--

INSERT INTO `people` (`id`, `name`, `image`, `designation`, `phone`, `email`, `dept`, `bio`, `facebook`, `linked_in`, `education`, `experience`, `teaching_supervision`, `research_interest`, `publication`, `scholarship_award`, `research`, `dept_head`, `type`, `joined_at`, `visibility`, `status`) VALUES
('677d27ac4b681', 'Dhruboraj Roy', '1737775419.jpg', 'Professor ', '01705927257', 'dhruborajroy3@gmail.com', 'ce', 'gf\r\n\r\n', 'ert', 'ert', 'et\r\n\r\n', 'et\r\n\r\n', 'erter \r\n\r\n', 'df\r\n\r\n', 'ertert\r\n\r\n', 'ertet\r\n\r\n', 'ertertdd\r\n\r\n', '0', 'facultya', '2025-01-25', 'public', ''),
('677d4edca3a2c', 'Dr. Abu Zakir Morshedss', 'rabbani.jpg', 'Professor ', ' +88041769471', 'azmorshed@ce.kuet.ac.bd', 'ce', '<p><strong>Dr. Abu Zakir Morshed </strong>completed his B.Sc. Engineering degree from Department of Civil Engineering, KUET (erstwhile BIT Khulna), Bangladesh in 1999, M.Sc. Engineering degree from University of Tokyo, Japan in 2003 and his Ph.D. from McGill University, Canada in 2013. Dr. Morshed started his career in the Department of Civil Engineering, KUET, Bangladesh as a lecturer in 1999 and later promoted to the position of a Professor in 2015. He has been involved in active teaching and research. Dr. Morshedâ€™s expertise is in the area of structural engineering, civil engineering materials and their structural applications. His research area is involved with cement &amp; concrete technology, accelerated curing of cement-based precast products, recycling and reuse of demolished building wastes, environment friendly building materials, and durability design of structures, etc. He also has expertise in structural design of high-rise buildings, capacity assessment of existing structures, renovation and retrofitting of old structures.</p>', '#', '#', '<p><strong>Ph. D.</strong></p><p>McGill University, Montreal,Canada (2013)</p><p><strong>M.Sc. Engg.</strong></p><p>University of Tokyo, Tokyo,Japan (2003)</p><p><strong>B.Sc. Engineering (Civil)</strong></p><p>Khulna University of Engineering &amp;Technology (KUET),Bangladesh (1999)</p>', '<p><strong>Service Records</strong></p><p><strong>Professor</strong></p><p>Department/Section: Department of Civil Engineering</p><ul><li>Khulna University of Engineering &amp; Technology(07 -Jan-2025 to 07-Jan-2025)&nbsp;</li></ul><p>Professional Body Membership</p><p><strong>Institution of Engineers, Bangladesh (IEB)</strong></p><p>Member Type: Fellow<br>Member ID: F-11143</p>', '', '', '', '', '', '', 'faculty', '2018-06-07', 'public', 'active'),
('677d4f0f2bdde', 'Dr. Abu Zakir Morshedss', 'rabbani.jpg', 'Professor ', ' +88041769471', 'azmorshed@ce.kuet.ac.bd', 'ce', '<p><strong>Dr. Abu Zakir Morshed </strong>completed his B.Sc. Engineering degree from Department of Civil Engineering, KUET (erstwhile BIT Khulna), Bangladesh in 1999, M.Sc. Engineering degree from University of Tokyo, Japan in 2003 and his Ph.D. from McGill University, Canada in 2013. Dr. Morshed started his career in the Department of Civil Engineering, KUET, Bangladesh as a lecturer in 1999 and later promoted to the position of a Professor in 2015. He has been involved in active teaching and research. Dr. Morshedâ€™s expertise is in the area of structural engineering, civil engineering materials and their structural applications. His research area is involved with cement &amp; concrete technology, accelerated curing of cement-based precast products, recycling and reuse of demolished building wastes, environment friendly building materials, and durability design of structures, etc. He also has expertise in structural design of high-rise buildings, capacity assessment of existing structures, renovation and retrofitting of old structures.</p>', '#', '#', '<p><strong>Ph. D.</strong></p><p>McGill University, Montreal,Canada (2013)</p><p><strong>M.Sc. Engg.</strong></p><p>University of Tokyo, Tokyo,Japan (2003)</p><p><strong>B.Sc. Engineering (Civil)</strong></p><p>Khulna University of Engineering &amp;Technology (KUET),Bangladesh (1999)</p>', '<p><strong>Service Records</strong></p><p><strong>Professor</strong></p><p>Department/Section: Department of Civil Engineering</p><ul><li>Khulna University of Engineering &amp; Technology(07 -Jan-2025 to 07-Jan-2025)&nbsp;</li></ul><p>Professional Body Membership</p><p><strong>Institution of Engineers, Bangladesh (IEB)</strong></p><p>Member Type: Fellow<br>Member ID: F-11143</p>', '', '', '', '', '', '', 'faculty', '2018-06-07', 'public', 'active'),
('677d4f74a7ebd', 'Dr. Abu Zakir Morshedss', 'rabbani.jpg', 'Professor ', ' +88041769471', 'azmorshed@ce.kuet.ac.bd', 'eee', '<p><strong>Dr. Abu Zakir Morshed </strong>completed his B.Sc. Engineering degree from Department of Civil Engineering, KUET (erstwhile BIT Khulna), Bangladesh in 1999, M.Sc. Engineering degree from University of Tokyo, Japan in 2003 and his Ph.D. from McGill University, Canada in 2013. Dr. Morshed started his career in the Department of Civil Engineering, KUET, Bangladesh as a lecturer in 1999 and later promoted to the position of a Professor in 2015. He has been involved in active teaching and research. Dr. Morshedâ€™s expertise is in the area of structural engineering, civil engineering materials and their structural applications. His research area is involved with cement &amp; concrete technology, accelerated curing of cement-based precast products, recycling and reuse of demolished building wastes, environment friendly building materials, and durability design of structures, etc. He also has expertise in structural design of high-rise buildings, capacity assessment of existing structures, renovation and retrofitting of old structures.</p>', '#', '#', '<p><strong>Ph. D.</strong></p><p>McGill University, Montreal,Canada (2013)</p><p><strong>M.Sc. Engg.</strong></p><p>University of Tokyo, Tokyo,Japan (2003)</p><p><strong>B.Sc. Engineering (Civil)</strong></p><p>Khulna University of Engineering &amp;Technology (KUET),Bangladesh (1999)</p>', '<p><strong>Service Records</strong></p><p><strong>Professor</strong></p><p>Department/Section: Department of Civil Engineering</p><ul><li>Khulna University of Engineering &amp; Technology(07 -Jan-2025 to 07-Jan-2025)&nbsp;</li></ul><p>Professional Body Membership</p><p><strong>Institution of Engineers, Bangladesh (IEB)</strong></p><p>Member Type: Fellow<br>Member ID: F-11143</p>', '', '', '', '', '', '', 'faculty', '2018-06-07', 'public', 'active'),
('679392b49bac6', 'demo teacher', '1737724596.jpg', 'no ', '01882874194', 'nhj@gmail.com', '', '<p>asdfghjkl</p>', 'https://www.facebook.com/', 'https://www.facebook.com/', '<p>asdfghjkl</p>', '<p>asdfghjkl</p>', '<p>asdfghjkl</p>', '<p>asdfghjkl</p>', '<p>asdfghjkl</p>', '<p>asdfghjkl</p>', '<p>asdfghjkl</p>', '0', '', '2025-01-24', 'public', ''),
('67945ab2c44ad', 'NH Jahid', '1737775794.jpg', 'Professor ', '017', 'sdf@fg.c', '', '<p>dgfdgdfg</p>', 'ert', '#', '<p>dfgdg</p>', '<p>gfdfg</p>', '<p>geeg</p>', '<p>dfgdfg</p>', '<p>dfgdfg s</p>', '<p>dfgdert</p>', '<p>sgbv</p>', '0', '', '2025-01-25', 'public', ''),
('67945ae589ea2', 'Dhruboraj Roy', '1737775845.jpg', 'A.professor', '01705927257', 'dhruborajroy3@gmail.com', '', '<p>345345</p>', '345', '34545', '<p>345345</p>', '<p>34534534</p>', '<p>234234</p>', '<p>34535</p>', '<p>34535</p>', '<p>345435</p>', '<p>345345</p>', '1', '', '2025-01-25', 'public', ''),
('67945affce2b4', 'Dhruboraj Roy', '1737775871.jpg', 'A.professor', '01705927257', 'dhruborajroy3@gmail.com', '', '<p>345345</p>', '345', '34545', '<p>345345</p>', '<p>34534534</p>', '<p>234234</p>', '<p>34535</p>', '<p>34535</p>', '<p>345435</p>', '<p>345345</p>', '1', '', '2025-01-25', 'public', 'active');

-- --------------------------------------------------------

--
-- Table structure for table `referances`
--

CREATE TABLE `referances` (
  `id` varchar(20) NOT NULL,
  `name` varchar(250) NOT NULL,
  `priority` int(3) NOT NULL,
  `status` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `referances`
--

INSERT INTO `referances` (`id`, `name`, `priority`, `status`) VALUES
('677cea5825d80', 'জনাব লিটন রাব্বানী, অধ্যক্ষ(অতিরিক্ত দায়িত্ব) , বরিশাল ইঞ্জিনিয়ারিং কলেজ', 3, 1),
('677ceafcacdae', 'জনাব লিটন রাব্বানী,অধ্যক্ষ,বরিশাল ইঞ্জিনিয়ারিং কলেজ', 4, 1),
('dfbddb', 'বিভাগীয় প্রধান: সকল, অত্র কলেজ।', 5, 1),
('dfbdfbergfdrv', 'সংরক্ষণ নথি।', 9, 1),
('dfdfbfdgdfg', ' শাখা প্রধান: সকল, অত্র কলেজ।', 6, 1),
('dfeggegxdv', 'জনাব লিটন রাব্বানী', 7, 1),
('dfgddfv', 'মহাপরিচালক, কারিগরি শিক্ষা অধিদপ্তর, আগারগাঁও, শেরেবাংলা নগর, ঢাকা-১২০৭।', 1, 1),
('DFGDFVDFBB', 'নোটিশ বোর্ড: সকল, অত্র কলেজ।', 8, 1),
('fdgdfg', 'পরিচালক (প্রশাসন), কারিগরি শিক্ষা অধিদপ্তর, আগারগাঁও, শেরেবাংলা নগর, ঢাকা-১২০৭।', 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id` int(3) NOT NULL,
  `name` text NOT NULL,
  `link` varchar(55) NOT NULL,
  `status` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`id`, `name`, `link`, `status`) VALUES
(1, 'Testimonial(Running Student)', 'testimonial_current', 1),
(2, 'Testimonial(Graduate Student)', 'testimonial_graduate', 1),
(3, 'Medium of Instruction(MOI)', 'moi', 1),
(4, 'Recomendation Letter', 'recomendation_letter', 1),
(5, 'Hall Clearance', 'clearance', 1),
(6, 'Course Completion Certificate', 'course_completion', 1),
(7, 'Certificate Withdrawal', 'certificate_withdrawal', 1),
(8, 'Character Certificate', 'character_certificate', 1);

-- --------------------------------------------------------

--
-- Table structure for table `services_request`
--

CREATE TABLE `services_request` (
  `id` varchar(20) NOT NULL,
  `student_id` varchar(20) NOT NULL,
  `reason` text NOT NULL,
  `type` text NOT NULL,
  `public_access` int(3) NOT NULL,
  `downloadable` int(2) NOT NULL,
  `added_on` int(10) NOT NULL,
  `status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `services_request`
--

INSERT INTO `services_request` (`id`, `student_id`, `reason`, `type`, `public_access`, `downloadable`, `added_on`, `status`) VALUES
('6795032ef1555', '1', 'sdfdsvsdvss', '1', 1, 1, 1737818926, 'Approved'),
('67952853d9584', '1', 'sdfdsf', '2', 0, 0, 1737828435, 'Approved'),
('6795f7618ee81', '1', 'dfgfdg', '4', 0, 0, 1737881441, 'Approved'),
('6796691e6655f', '1', 'sdf', '1', 1, 1, 1737910558, 'Approved'),
('67966a3f54eb3', '1', 'ki', '2', 0, 0, 1737910847, 'Approved');

-- --------------------------------------------------------

--
-- Table structure for table `site_details`
--

CREATE TABLE `site_details` (
  `id` varchar(20) NOT NULL,
  `name` text NOT NULL,
  `site_logo` text NOT NULL,
  `bd_logo` text NOT NULL,
  `email` text NOT NULL,
  `smtp_username` varchar(50) NOT NULL,
  `smtp_password` varchar(50) NOT NULL,
  `address` text NOT NULL,
  `signature_name` text NOT NULL,
  `signature_image` text NOT NULL,
  `phone` varchar(20) NOT NULL,
  `facebook_link` text NOT NULL,
  `twitter_link` text NOT NULL,
  `youtube_link` text NOT NULL,
  `instagram_link` text NOT NULL,
  `short_details` varchar(255) NOT NULL,
  `updated_on` varchar(20) NOT NULL,
  `status` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `site_details`
--

INSERT INTO `site_details` (`id`, `name`, `site_logo`, `bd_logo`, `email`, `smtp_username`, `smtp_password`, `address`, `signature_name`, `signature_image`, `phone`, `facebook_link`, `twitter_link`, `youtube_link`, `instagram_link`, `short_details`, `updated_on`, `status`) VALUES
('1', '\nগণপ্রজাতন্ত্রী বাংলাদেশ সরকার \n<br>\nঅধ্যক্ষের কার্যালয়\n<br>\nবরিশাল ইঞ্জিনিয়ারিং কলেজ', '../images/gallery/logo.png', '../images/bd.png', 'contact@bec.edu.com', 'hackerdhrubo99@gmail.com', 'xnkbvrpvlmedwgtl', 'দুর্গাপুর, বরিশাল', 'জনাব মোঃ লিটন রাব্বানী <br> অধ্যক্ষ(অতিরিক্ত দায়িত্ব) <br> বরিশাল ইঞ্জিনিয়ারিং কলেজ', 'https://static.vecteezy.com/system/resources/thumbnails/023/264/092/small_2x/fake-hand-drawn-autographs-set-handwritten-signature-scribble-for-business-certificate-or-letter-isolated-illustration-vector.jpg', '০১৭০৫৫৫৫৫৫৫৫', '#', '#', '#', '#', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut consequat mauris Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut consequat mauris</p>', '1', 1);

-- --------------------------------------------------------

--
-- Table structure for table `sliders`
--

CREATE TABLE `sliders` (
  `id` varchar(20) NOT NULL,
  `image` varchar(50) NOT NULL,
  `title` varchar(100) NOT NULL,
  `sub_title` varchar(100) NOT NULL,
  `button_text` varchar(20) NOT NULL,
  `button_link` text NOT NULL,
  `added_by` varchar(20) NOT NULL,
  `added_on` varchar(15) NOT NULL,
  `updated_on` varchar(15) NOT NULL,
  `status` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sliders`
--

INSERT INTO `sliders` (`id`, `image`, `title`, `sub_title`, `button_text`, `button_link`, `added_by`, `added_on`, `updated_on`, `status`) VALUES
('644418d0c8a24', '2.jpg', '', '', 'Get Started', '#', '1', '1682184400', '1737045928', 1),
('6793d05e60a1d', '1737740382.jpg', '', '', '', '', '1', '1737740382', '', 1),
('6793d7ee49b32', '1737742318.jpg', '', '', '', '', '1', '1737742318', '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `class_roll` varchar(10) NOT NULL,
  `reg_no` varchar(11) NOT NULL,
  `session` varchar(20) NOT NULL,
  `fName` varchar(50) NOT NULL,
  `mName` varchar(50) NOT NULL,
  `phoneNumber` varchar(15) NOT NULL,
  `presentAddress` varchar(255) NOT NULL,
  `permanentAddress` varchar(255) NOT NULL,
  `dob` varchar(20) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `religion` varchar(20) NOT NULL,
  `bloodGroup` varchar(20) NOT NULL,
  `dept_id` varchar(25) NOT NULL,
  `batch` varchar(20) NOT NULL,
  `password` varchar(100) NOT NULL,
  `email` varchar(50) NOT NULL,
  `image` varchar(255) NOT NULL,
  `status` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `name`, `class_roll`, `reg_no`, `session`, `fName`, `mName`, `phoneNumber`, `presentAddress`, `permanentAddress`, `dob`, `gender`, `religion`, `bloodGroup`, `dept_id`, `batch`, `password`, `email`, `image`, `status`) VALUES
(1, 'Dhruboraj Roy4', '2001304', '862', '', 'D4', 'M4', '017059272574', 'Adarsopara, Sadar, Lalmonirhat', '114', '08/01/2025', 'Female', 'Hinduism', 'A+', '1', '3', '$2y$10$3xSV8g1xd.7b6leqDI08MOZS6CMMiYKfsL32wzasO7Sp9BqqF92im', 'dhruborajroy3@gmail.com', '1737740643.jpg', 1),
(4, 'Dhruboraj Roy', '3704923', '835', '', 'Asd', 'Asd', '0', 'Adarsopara, Sadar, Lalmonirhat', 'sdf', '17/01/2025', 'Male', 'Islam', 'A+', '2', '1', '$2y$10$609IBIfAj2xz9oJIUDNnt.X.ioM4VY26Z0omxMZNzrQ7GT9L4quLm', 'nhjahid202@gmail.com', '1737740649.jpg', 1),
(5, 'Dhruboraj Roy4', '2001304', '862', '', 'D4', 'M4', '017059272574', 'Adarsopara, Sadar, Lalmonirhat', '114', '08/01/2025', 'Female', 'Hinduism', 'A+', '4', '4', '$2y$10$3xSV8g1xd.7b6leqDI08MOZS6CMMiYKfsL32wzasO7Sp9BqqF92im', 'thedhruborajroy@gmail.com', '1737740643.jpg', 1),
(6, 'Dhruboraj Roy', '3704923', '835', '', 'Asd', 'Asd', '0', 'Adarsopara, Sadar, Lalmonirhat', 'sdf', '17/01/2025', 'Male', 'Islam', 'A+', '2', '2', '$2y$10$609IBIfAj2xz9oJIUDNnt.X.ioM4VY26Z0omxMZNzrQ7GT9L4quLm', 'nhjahid2002@gmail.com', '1737740649.jpg', 1),
(7, 'Dhruboraj Roy4', '2001304', '862', '', 'D4', 'M4', '017059272574', 'Adarsopara, Sadar, Lalmonirhat', '114', '08/01/2025', 'Female', 'Hinduism', 'A+', '1', '1', '$2y$10$3xSV8g1xd.7b6leqDI08MOZS6CMMiYKfsL32wzasO7Sp9BqqF92im', 'dhruborajroy3@gmail.com', '1737740643.jpg', 1),
(8, 'Dhruboraj Roy', '3704923', '835', '', 'Asd', 'Asd', '0', 'Adarsopara, Sadar, Lalmonirhat', 'sdf', '17/01/2025', 'Male', 'Islam', 'A+', '2', '6', '$2y$10$609IBIfAj2xz9oJIUDNnt.X.ioM4VY26Z0omxMZNzrQ7GT9L4quLm', 'nhjahid202@gmail.com', '1737740649.jpg', 1),
(9, 'Dhruboraj Roy4', '2001304', '862', '', 'D4', 'M4', '017059272574', 'Adarsopara, Sadar, Lalmonirhat', '114', '08/01/2025', 'Female', 'Hinduism', 'A+', '4', '5', '$2y$10$3xSV8g1xd.7b6leqDI08MOZS6CMMiYKfsL32wzasO7Sp9BqqF92im', 'dhruborajroy3@gmail.com', '1737740643.jpg', 1),
(10, 'Dhruboraj Roy', '3704923', '835', '', 'Asd', 'Asd', '0', 'Adarsopara, Sadar, Lalmonirhat', 'sdf', '17/01/2025', 'Male', 'Islam', 'A+', '2', '2', '$2y$10$609IBIfAj2xz9oJIUDNnt.X.ioM4VY26Z0omxMZNzrQ7GT9L4quLm', 'nhjahid202@gmail.com', '1737740649.jpg', 1);

-- --------------------------------------------------------

--
-- Table structure for table `sub_menu`
--

CREATE TABLE `sub_menu` (
  `id` varchar(20) NOT NULL,
  `menu_id` varchar(20) NOT NULL,
  `name` varchar(50) NOT NULL,
  `status` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sub_menu`
--

INSERT INTO `sub_menu` (`id`, `menu_id`, `name`, `status`) VALUES
('677c09ebbd7da', '677c01f572783', '', 1),
('677c0a3f57a62', '677c09660d0b3', '', 1),
('677c0a5d5c31a', '677c09660d0b3', 'cvb', 1),
('677c20cfb6078', '677c09660d0b3', 'cvbc', 1),
('677c20d23100a', '677c09660d0b3', 'cvbcv', 1),
('677c20d3a387a', '677c09660d0b3', 'cvbcvd', 1),
('677c20d62aef6', '677c013fd247f', 'cvbcvd', 1),
('677c20d7bc99e', '677c013fd247f', 'cvbddcvd', 1),
('677c20d8e7dbd', '677c013fd247f', 'cvbddcvfd', 1),
('677c220ad301e', '677c214080922', 'sf', 1),
('677c2ad97b448', '677c2ac74af0a', 'Faculty', 1),
('677c2ae46ba64', '677c2ac74af0a', 'Staff', 1),
('677d4e1ea8030', '677d4e0da4275', 'cvbcvd', 1),
('677d4e23a7794', '677d4e0da4275', 'cvbcvd', 1),
('67935d681ae7b', '67935d579e697', 'Demo', 1),
('6794d167396af', '6794d15f9567e', 'test ', 1);

-- --------------------------------------------------------

--
-- Table structure for table `useful_links`
--

CREATE TABLE `useful_links` (
  `id` int(20) NOT NULL,
  `link_text` text NOT NULL,
  `link` text NOT NULL,
  `added_on` varchar(20) NOT NULL,
  `updated_on` varchar(20) NOT NULL,
  `added_by` varchar(20) NOT NULL,
  `visibility` int(2) NOT NULL,
  `status` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `useful_links`
--

INSERT INTO `useful_links` (`id`, `link_text`, `link`, `added_on`, `updated_on`, `added_by`, `visibility`, `status`) VALUES
(1, 'Mymensingh Engineering College ', 'https://www.mec.ac.bd', '', '', '', 1, 1),
(2, 'Faridpur Engineering College ', 'https://www.fec.ac.bd', '', '', '', 1, 1),
(3, 'Sylhet Engineering College ', 'https://www.sec.ac.bd', '', '', '', 1, 1),
(4, 'কারিগরি শিক্ষা অধিদপ্তর', 'https://techedu.gov.bd/', '', '', '', 1, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `about_us`
--
ALTER TABLE `about_us`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `batch`
--
ALTER TABLE `batch`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `depts_lab_list`
--
ALTER TABLE `depts_lab_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dept_general_info`
--
ALTER TABLE `dept_general_info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dept_sliders`
--
ALTER TABLE `dept_sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `faculty`
--
ALTER TABLE `faculty`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `general_info`
--
ALTER TABLE `general_info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lab_list`
--
ALTER TABLE `lab_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `login_attempts`
--
ALTER TABLE `login_attempts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ip_address` (`ip_address`);

--
-- Indexes for table `login_logs`
--
ALTER TABLE `login_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notice`
--
ALTER TABLE `notice`
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `otp_verification`
--
ALTER TABLE `otp_verification`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `people`
--
ALTER TABLE `people`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `referances`
--
ALTER TABLE `referances`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `services_request`
--
ALTER TABLE `services_request`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `site_details`
--
ALTER TABLE `site_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `useful_links`
--
ALTER TABLE `useful_links`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `batch`
--
ALTER TABLE `batch`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `depts_lab_list`
--
ALTER TABLE `depts_lab_list`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67950;

--
-- AUTO_INCREMENT for table `general_info`
--
ALTER TABLE `general_info`
  MODIFY `id` int(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `lab_list`
--
ALTER TABLE `lab_list`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `login_attempts`
--
ALTER TABLE `login_attempts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `login_logs`
--
ALTER TABLE `login_logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `otp_verification`
--
ALTER TABLE `otp_verification`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `useful_links`
--
ALTER TABLE `useful_links`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `otp_verification`
--
ALTER TABLE `otp_verification`
  ADD CONSTRAINT `otp_verification_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `students` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
