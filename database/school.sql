-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 30, 2025 at 11:05 AM
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
('1', 'Brief Introduction', '<p style=\" text-align: justify;text-justify: inter-word;\"><b>Barishal Engineering College&nbsp;&nbsp;</b>located on an 8-acre plot about 13 km east of the divisional city of Barisal, near the Barishal-Bhola highway in North Duragpur, under the Banaripara police station. This college has been approved for student enrollment from the current (2017-18) session under the affiliation of the University of Dhaka since November 16, 2017. The construction and completion of this institution are expected to be finished by June 2018, under a project implemented by the Ministry of Education’s Directorate of Technical Education, which operates under the Technical and Madrasa Education Division, aiming to expand engineering education in the country. The academic activities of this institution will be conducted under the Faculty of Engineering and Technology of the University of Dhaka. Currently, the college will enroll students in two departments: (1) Electrical and Electronics Engineering (EEE) and (2) Civil Engineering (CE). In each academic session, a total of 120 students, 60 from each department, will be admitted. The college features an administrative building, four academic buildings, a 400-seat male dormitory, and a 100-seat female dormitory, as well as residential facilities for teachers and staff. This institution also has a spacious playground, a library with subject-based books, modern computer labs with high-speed internet, and state-of-the-art labs/workshops, providing modern educational facilities. 50% of the admitted students will receive semester-based merit scholarships at the rate determined by the government. For more information about the college, please call: 02-9103956.</p><p><br><br><br>&nbsp;</p>', '1682185673', '1738048305', '1', 1);

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
-- Table structure for table `attendance`
--

CREATE TABLE `attendance` (
  `id` int(11) NOT NULL,
  `student_id` varchar(20) NOT NULL,
  `value` int(2) NOT NULL,
  `date` varchar(10) NOT NULL,
  `faculty_id` varchar(20) NOT NULL,
  `added_on` int(10) NOT NULL,
  `updated_on` int(10) NOT NULL,
  `course_id` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `attendance`
--

INSERT INTO `attendance` (`id`, `student_id`, `value`, `date`, `faculty_id`, `added_on`, `updated_on`, `course_id`) VALUES
(1, '862', 0, '2025-01-30', 'FAC123', 1738206318, 1738206329, 'COURSE101'),
(2, '9', 0, '2025-01-30', '', 1738206550, 1738231412, ''),
(3, '11', 0, '2025-01-30', '', 1738206552, 1738231412, '');

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
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `id` int(11) NOT NULL,
  `course_name` varchar(255) NOT NULL,
  `course_code` varchar(50) NOT NULL,
  `credit` float NOT NULL,
  `semester` int(11) NOT NULL,
  `type` varchar(20) NOT NULL,
  `credit_hour` tinyint(4) NOT NULL,
  `dept_id` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`id`, `course_name`, `course_code`, `credit`, `semester`, `type`, `credit_hour`, `dept_id`) VALUES
(1, 'Physical Optics, Heat, Waves and Oscillation', 'PHY 101', 3, 1, 'Theory', 3, 'CE'),
(2, 'Physics Sessional', 'PHY 102', 1.5, 1, 'Sessional', 3, 'CE'),
(3, 'Chemistry-I', 'Chem 101', 3, 1, 'Theory', 3, 'CE'),
(4, 'Inorganic Quantitative Analysis', 'Chem 102', 1.5, 1, 'Sessional', 3, 'CE'),
(5, 'Differential and Integral Calculus', 'Math 101', 3, 1, 'Theory', 3, 'CE'),
(6, 'English', 'Hum 101', 2, 1, 'Theory', 2, 'CE'),
(7, 'Developing English Language Skills', 'Hum 102', 0.75, 1, 'Sessional', 3, 'CE'),
(8, 'Civil Engineering Drawing -I', 'CE 101', 1.5, 1, 'Sessional', 3, 'CE'),
(9, 'Engineering Mechanics', 'CE 102', 4, 1, 'Theory', 4, 'CE');

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
  `print` tinyint(2) NOT NULL,
  `status` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `depts_lab_list`
--

INSERT INTO `depts_lab_list` (`id`, `name`, `image`, `name_bn`, `short_form`, `public_view`, `print`, `status`) VALUES
(1, 'Civil Engineering', 'ce.jpg', 'সিভিল ইঞ্জিনিয়ারিং', 'CE', 1, 0, 1),
(2, 'Electrical and Electronics Engineering', 'eee.jpg', 'ইলেকট্রিক্যাল এন্ড ইলেকট্রনিক ইঞ্জিনিয়ারিং', 'EEE', 1, 0, 1),
(3, 'Naval Architecture & Marine Engineering (Proposed)', '01.jpg', 'নেভাল আর্কিটেকচার এন্ড মেরিন ইঞ্জিনিয়ারিং', 'NAME ', 0, 0, 1),
(4, 'General Science & Humanities', 'gsh.jpg', 'জেনারেল সায়েন্স এন্ড হিউম্যানিটিস\r\n', 'GSH', 1, 0, 1),
(5, 'Hostels', '01.jpg', 'হোস্টেল সুপার', 'HS', 0, 1, 1),
(6, 'Cenreal Computer Center', '1737785513', 'সেন্ট্রাল কম্পিউটার সেন্টার', 'CCC', 0, 1, 1),
(7, 'Office', '01.jpg', 'অফিস', 'Office', 0, 1, 1);

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
('1', 'CE', '<b>Publication What is Lorem Ipsum?\r\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</b>', '<span style=\"font-weight: bolder;\">Publication What is Lorem Ipsum? Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</span>', '<span style=\"font-weight: bolder;\">Publication What is Lorem Ipsum? Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</span>', '<span style=\"font-weight: bolder;\">Publication What is Lorem Ipsum? Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</span>', '<span style=\"font-weight: bolder;\">Publication What is Lorem Ipsum? Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</span>', '<span style=\"font-weight: bolder;\">Publication What is Lorem Ipsum? Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</span>', '<span style=\"font-weight: bolder;\">Publication What is Lorem Ipsum? Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</span>', 'active'),
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
('67939ece0c034', '1737727694.jpg', '', 'GSH', '', '', '', '1', '1737727694', '1737727847', 1);

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
(1, '<span id=\"docs-internal-guid-b8ca6853-7fff-7f65-433b-1b7528b23dd2\"><p dir=\"ltr\" style=\"line-height:1.38;margin-right: 4pt;text-align: justify;margin-top:0pt;margin-bottom:0pt;\"><span style=\"font-size: 10.5pt; font-family: Arial, sans-serif; color: rgb(51, 51, 51); background-color: transparent; font-weight: 700; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; font-variant-emoji: normal; vertical-align: baseline; white-space-collapse: preserve;\">বরিশাল ইঞ্জিনিয়ারিং কলেজটি</span><span style=\"font-size: 10.5pt; font-family: Arial, sans-serif; color: rgb(68, 68, 68); background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; font-variant-emoji: normal; vertical-align: baseline; white-space-collapse: preserve;\"> ৮ একর জায়গার উপর বরিশাল বিভাগীয় শহর থেকে প্রায় ১৩ কিঃমিঃ পূর্বে বন্দর থানাধীন উত্তর দূর্গাপুরে বরিশাল-ভোলা মহাসড়কের পাশে অবস্থিত। অত্র কলেজটি ১৬ নভেম্বর ২০১৭ খ্রিঃ হতে ঢাকা বিশ্ববিদ্যালয়ের অধিভূক্ত হয়ে চলতি (২০১৭-১৮) সেশনে ছাত্র/ছাত্রী ভর্তির অনুমোদন প্রাপ্ত হয়েছে। দেশে প্রকৌশল শিক্ষা বিস্তারের লক্ষ্যে শিক্ষা মন্ত্রণালয়, কারিগরি ও মাদ্রাসা শিক্ষা বিভাগের নিয়ন্ত্রনাধীন কারিগরি শিক্ষা অধিদপ্তরের বাস্তবায়নাধীন  জুন ২০১৮ পর্যন্ত প্রকল্প মেয়াদে এর নির্মাণ ও পূর্ত কাজ সম্পন্ন হবে। উক্ত প্রতিষ্ঠানটির একাডেমিক কার্যক্রম  ঢাকা বিশ্ববিদ্যালয়ের ইঞ্জিনিয়ারিং এন্ড টেকনোলজি অনুষদের অধীনে পরিচালিত হবে । কলেজটিতে বর্তমানে দুইটি বিভাগে ছাত্র-ছাত্রী ভর্তি করা হবেঃ (১) ইলেকট্রিক্যাল এন্ড ইলেকট্রনিক্স ইঞ্জিনিয়ারিং (ইইই) বিভাগ (২) সিভিল ইঞ্জিনিয়ারিং (সিই)বিভাগ। প্রতি একাডেমিক সেশনে প্রতি বিভাগে ৬০ জন করে মোট ১২০ জন ছাত্র-ছাত্রী ভর্তি করা হবে। কলেজটিতে একটি প্রশাসনিক ভবন, চারটি একাডেমিক ভবন, একটি ৪০০ সিটের ছাত্রাবাস ও একটি ১০০ সিটের ছাত্রীনিবাস সহ শিক্ষক ও কর্মচারীদের জন্য আবাসিক ভবন রয়েছে। অত্র প্রতিষ্ঠানে সুবিশাল খেলার মাঠ, বিষয় ভিত্তিক বই সম্বলিত লাইব্রেরি, দ্রুত গতির ইন্টারনেট সুবিধা সহ আধুনিক কম্পিউটার ল্যাব এবং অত্যাধুনিক ল্যাব/ওয়ার্কশপসহ শিক্ষার আধুনিক সুযোগ সুবিধা রয়েছে। ভর্তিকৃত ছাত্র-ছাত্রীদের মধ্যে ৫০% ছাত্র/ছাত্রীকে সরকার নির্ধারিত হারে সেমিস্টার ভিত্তিক মেধা বৃত্তি প্রদান করা হবে। কলেজ সম্পর্কে বিস্তারিত তথ্যের জন্যঃ ফোন নং ০২-৯১০৩৯৫৬</span></p><div><span style=\"font-size: 10.5pt; font-family: Arial, sans-serif; color: rgb(68, 68, 68); background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; font-variant-emoji: normal; vertical-align: baseline; white-space-collapse: preserve;\"><br></span></div></span>', '<div class=\"body-section mt-2 mb-2\">\r\n  <div class=\"container text-justfy mb-5\">\r\n    <h1 class=\"text-center text-center shadow-sm p-3 mb-5  bg-light rounded\">The Vision Statement</h1>\r\n    <div class=\"row\">\r\n      <div class=\"d-flex\">\r\n        <div class=\"\">\r\n          <i class=\"fa-solid fa-diamond\"></i>\r\n        </div>\r\n        <div class=\"mission-vision-text ps-1\"> To be center of excellence in education, research, and innovation to meet the national and international requirements in engineering and technology. </div>\r\n      </div>\r\n    </div>\r\n    <h1 class=\"text-center text-center shadow-sm p-3 mb-5 mt-5  bg-light rounded\">The Mission Statement</h1>\r\n    <div class=\"row\">\r\n      <div class=\"d-flex\">\r\n        <div class=\"\">\r\n          <i class=\"fa-solid fa-diamond\"></i>\r\n        </div>\r\n        <div class=\"mission-vision-text ps-1\"> To create leaders in different branches of engineering and technology with high ethical standard and professionalism through its proper education, research, an innovation in a congenial environment. </div>\r\n      </div>\r\n      <div class=\"py-2\">\r\n        <div class=\"d-flex\">\r\n          <div class=\"\">\r\n            <i class=\"fa-solid fa-diamond\"></i>\r\n          </div>\r\n          <div class=\"ps-1\"> To play a leading role in the socio-economic, environmental, and technological development of the country. </div>\r\n        </div>\r\n      </div>\r\n      <div class=\"\">\r\n        <div class=\"d-flex \">\r\n          <div class=\"\">\r\n            <i class=\"fa-solid fa-diamond\"></i>\r\n          </div>\r\n          <div class=\"ps-1\"> To undertake collaborative research and projects that offer opportunities for sustainable connectivity with academia and industry. </div>\r\n        </div>\r\n      </div>\r\n    </div>\r\n  </div>\r\n</div>', '', '<div class=\"body-section mt-2 mb-2\">\r\n    \r\n    <div class=\"container text-justfy mb-5\">\r\n        <h1 class=\"text-center text-center shadow-sm p-3 mb-5  bg-light rounded\">BEC AT A GLANCE</h1>\r\n        <div class=\"\">\r\n            <table class=\"table table-bordered\" style=\"\">\r\n                <tbody class=\"\" style=\" face=\" arial\"=\"\"><tr>\r\n                  <td><p><font color=\"#000\">1</font></p></td>\r\n                  <td><p align=\"center\"><font color=\"#000\">Barishal Engineering College</font></p></td>\r\n                  <td><p align=\"center\"><font color=\"#000000\">2018</font></p></td>\r\n                  </tr>\r\n                  <tr>\r\n                  <td><p><font color=\"#000\">2</font></p></td>\r\n                  <td><p align=\"center\"><font color=\"#000\">Initiation of Academic Activities</font></p></td>\r\n                  <td><p align=\"center\"><font color=\"#000\">2018</font></p></td>\r\n                  </tr>\r\n                  \r\n                  \r\n                  <tr>\r\n                  <td><p><font color=\"#000\">5</font></p></td>\r\n                  <td><p align=\"center\"><font color=\"#000\">Campus Area</font></p></td>\r\n                  <td><p align=\"center\"><font color=\"#000\">8 acre</font></p></td>\r\n                  </tr>\r\n                  <tr><td><p><font color=\"#000\">7</font></p></td>\r\n                  <td><p align=\"center\"><font color=\"#000\">Number of Faculties</font></p></td>\r\n                  <td><p align=\"center\"><font color=\"#000\">1</font></p></td>\r\n                  </tr>\r\n                  <tr>\r\n                  <td><p><font color=\"#000\">6</font></p></td>\r\n                  <td><p align=\"center\"><font color=\"#000\">Number of Institutes</font></p></td>\r\n                  <td><p align=\"center\"><font color=\"#000\">03</font></p></td>\r\n                  </tr>\r\n                  <!-- <tr>\r\n                  <td><p><font color=\"#000\">7</p></td>\r\n                  <td><p align=\"center\"><font color=\"#000\">Number of Faculties</p></td>\r\n                  <td><p align=\"center\"><font color=\"#000\">03</p></td>\r\n                  </tr> -->\r\n                  <tr>\r\n                  <td><p><font color=\"#000\">8</font></p></td>\r\n                  <td><p align=\"center\"><font color=\"#000\">Number of Departments</font></p></td>\r\n                  <td><p align=\"center\"><font color=\"#000\">2</font></p></td>\r\n                  </tr>\r\n                  <tr>\r\n                  <td><p><font color=\"#000\">9</font></p></td>\r\n                  <td><p align=\"center\"><font color=\"#000\">Degrees Offered</font></p></td>\r\n                  <td><p align=\"center\"><font color=\"#000\">B.Sc. Engg.</font></p></td>\r\n                  </tr><tr><td>10</td><td style=\"text-align: center; \">Affiliated with university of Dhaka&nbsp;</td><td style=\"text-align: center; \">2018</td></tr>\r\n\r\n                  \r\n                  </tbody>\r\n            </table>\r\n        </div>\r\n\r\n    </div>\r\n\r\n  </div>', '');

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
(16, 'Structural Engineering Labratory', ' ', '4', 1),
(17, 'Surveying', 'সার্ভেইং ', '1', 1),
(18, 'সদফ', 'সদফ', '1', 1),
(19, 'TEST', 'টেস্ট', '3', 1),
(20, 'TEST', 'টেস্ট', '1', 1),
(21, 'TEST', 'টেস্ট', '1', 1),
(22, 'TEST', 'টেস্ট', '1', 1),
(23, 'TEST', 'টেস্ট', '1', 1),
(24, 'test', 'টেস্ট', '1', 1),
(25, 'test', 'টেস্ট', '2', 1),
(26, 'skdm', 'JN', '1', 1),
(27, 'skdm', 'JN', '1', 1);

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
(1, '1', 'Dhruborajroy3@gmail.com', '192.168.0.112', 'Success', '2025-01-28 12:40:26'),
(2, '1', 'dhruborajroy3@gmail.com', '::1', 'Success', '2025-01-28 18:07:56'),
(3, '1', 'dhruborajroy3@gmail.com', '::1', 'Success', '2025-01-28 18:54:03'),
(4, NULL, 'jahid@gmail.com', '127.0.0.1', 'Failed', '2025-01-29 14:21:53'),
(5, '1', 'dhruborajroy3@gmail.com', '::1', 'Success', '2025-01-29 14:39:47'),
(6, '1', 'dhruborajroy3@gmail.com', '::1', 'Success', '2025-01-30 10:53:05');

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

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`id`, `image`, `title`, `details`, `dept`, `added_on`, `added_by`, `status`) VALUES
('67989c52e1d', '1738054738.jpg', 'TEST', '<p>DEMO</p>', 'CE', '1738054738', '1', 1);

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
('6793d358addfc', '1', '<p style=\"text-align: justify !important;text-justify: inter-word  !important;\"><p class=\"MsoTitle\" style=\"text-align: center;text-align: justify !important;text-justify: inter-word  !important; \">TO WHOM&nbsp; IT&nbsp; MAY&nbsp;\nCONCERN<o:p></o:p></p><p class=\"MsoNormal\" align=\"center\" style=\"text-align:center\"><b><u><span style=\"font-size:16.0pt;line-height:115%;font-family:&quot;Times New Roman&quot;,serif\">&nbsp;</span></u></b></p><p class=\"MsoNormal\" style=\"text-align:justify;text-justify:inter-ideograph;\nline-height:150%\"><span style=\"font-size:14.0pt;line-height:150%;font-family:\n&quot;Times New Roman&quot;,serif\">This is to certify that <b>DEWAN TANJEEM AHAMMED\nTONMOY</b>, bearing Reg No. 1073, Session 2021-22, &nbsp;father name: Dewan Osman Goni is a current student\nat the Department of Civil Engineering of Barishal Engineering College,\nBarishal under the affiliation of University of Dhaka.<o:p></o:p></span></p><p class=\"MsoNormal\" style=\"line-height:150%\"><span style=\"font-size:14.0pt;\nline-height:150%;font-family:&quot;Times New Roman&quot;,serif\">&nbsp;He bears a good moral character. He did not\ntake part in any activity subversive to the state or discipline.<o:p></o:p></span></p><p class=\"MsoNormal\" style=\"line-height:150%\"><span style=\"font-size:14.0pt;\nline-height:150%;font-family:&quot;Times New Roman&quot;,serif\">&nbsp;</span></p><p>\n\n\n\n\n\n\n\n\n\n</p><p class=\"MsoNormal\" style=\"line-height:150%\"><span style=\"font-size:14.0pt;\nline-height:150%;font-family:&quot;Times New Roman&quot;,serif\">&nbsp;I wish every success in his life.<o:p></o:p></span></p> </p>', '', '1', '6793d358addfc_1738050955.pdf', '1737741144', '1737741579', '1', 0, 1),
('6793d3b6749ca', '1', '<p class=\"MsoNormal\" style=\"text-align:justify;text-justify:inter-ideograph;\r\nline-height:150%\"><span style=\"font-size:14.0pt;line-height:150%;font-family:\r\n&quot;Times New Roman&quot;,serif\">This is to certify that DEWAN TANJEEM AHAMMED TONMOY, bearing Reg No. 1073, Session 2021-22,&nbsp; father name: Dewan Osman Goni is a current student at the Department of Civil Engineering of Barishal Engineering College, Barishal under the affiliation of University of Dhaka.<o:p></o:p></span></p>', '', '1', '6793d3b6749ca_1738050975.pdf', '1737741238', '', '1', 0, 1);
INSERT INTO `notice` (`id`, `title`, `details`, `dept`, `reference`, `link`, `added_on`, `updated_on`, `user_id`, `upload_status`, `status`) VALUES
('6798769375281', 'sdfsdf', '<p class=\"MsoNormal\"><span style=\"font-size:14.0pt;line-height:115%;font-family:\r\n\" noto=\"\" sans=\"\" bengali\";mso-fareast-font-family:\"times=\"\" new=\"\" roman\"\"=\"\">test ডাঃ</span><span style=\"font-size:14.0pt;line-height:115%;font-family:\" calibri\",sans-serif;=\"\" mso-fareast-font-family:\"times=\"\" new=\"\" roman\";mso-bidi-font-family:vrinda;=\"\" mso-bidi-theme-font:minor-bidi\"=\"\"> </span><span style=\"font-size:14.0pt;\r\nline-height:115%;font-family:\" noto=\"\" sans=\"\" bengali\";mso-fareast-font-family:\"times=\"\" new=\"\" roman\"\"=\"\">জি</span><span style=\"font-size:14.0pt;line-height:115%;font-family:\" calibri\",sans-serif;=\"\" mso-fareast-font-family:\"times=\"\" new=\"\" roman\";mso-bidi-font-family:vrinda;=\"\" mso-bidi-theme-font:minor-bidi\"=\"\">.</span><span style=\"font-size:14.0pt;\r\nline-height:115%;font-family:\" noto=\"\" sans=\"\" bengali\";mso-fareast-font-family:\"times=\"\" new=\"\" roman\"\"=\"\">কে</span><span style=\"font-size:14.0pt;line-height:115%;font-family:\" calibri\",sans-serif;=\"\" mso-fareast-font-family:\"times=\"\" new=\"\" roman\";mso-bidi-font-family:vrinda;=\"\" mso-bidi-theme-font:minor-bidi\"=\"\">. </span><span style=\"font-size:14.0pt;\r\nline-height:115%;font-family:\" noto=\"\" sans=\"\" bengali\";mso-fareast-font-family:\"times=\"\" new=\"\" roman\"\"=\"\">চক্রবর্তী</span><span style=\"font-size:14.0pt;line-height:115%;font-family:\" calibri\",sans-serif;=\"\" mso-fareast-font-family:\"times=\"\" new=\"\" roman\";mso-bidi-font-family:vrinda;=\"\" mso-bidi-theme-font:minor-bidi\"=\"\"> <br>\r\n</span><span style=\"font-size:14.0pt;line-height:115%;font-family:\" noto=\"\" sans=\"\" bengali\";=\"\" mso-fareast-font-family:\"times=\"\" new=\"\" roman\"\"=\"\">এফসিপিএস</span><span style=\"font-size:14.0pt;line-height:115%;font-family:\" calibri\",sans-serif;=\"\" mso-fareast-font-family:\"times=\"\" new=\"\" roman\";mso-bidi-font-family:vrinda;=\"\" mso-bidi-theme-font:minor-bidi\"=\"\"> </span><span style=\"font-size:14.0pt;\r\nline-height:115%;font-family:\" noto=\"\" sans=\"\" bengali\";mso-fareast-font-family:\"times=\"\" new=\"\" roman\"\"=\"\">অবস</span><span style=\"font-size:14.0pt;line-height:115%;font-family:\" calibri\",sans-serif;=\"\" mso-fareast-font-family:\"times=\"\" new=\"\" roman\";mso-bidi-font-family:vrinda;=\"\" mso-bidi-theme-font:minor-bidi\"=\"\"> </span><span style=\"font-size:14.0pt;\r\nline-height:115%;font-family:\" noto=\"\" sans=\"\" bengali\";mso-fareast-font-family:\"times=\"\" new=\"\" roman\"\"=\"\">এন্ড</span><span style=\"font-size:14.0pt;line-height:115%;font-family:\" calibri\",sans-serif;=\"\" mso-fareast-font-family:\"times=\"\" new=\"\" roman\";mso-bidi-font-family:vrinda;=\"\" mso-bidi-theme-font:minor-bidi\"=\"\"> </span><span style=\"font-size:14.0pt;\r\nline-height:115%;font-family:\" noto=\"\" sans=\"\" bengali\";mso-fareast-font-family:\"times=\"\" new=\"\" roman\"\"=\"\">গাইনী</span><span style=\"font-size:14.0pt;line-height:115%;font-family:\" noto=\"\" sans=\"\" devanagari\";=\"\" mso-fareast-font-family:\"times=\"\" new=\"\" roman\"\"=\"\">।</span><span style=\"font-size:14.0pt;\r\nline-height:115%;font-family:\" calibri\",sans-serif;mso-fareast-font-family:\"times=\"\" new=\"\" roman\";=\"\" mso-bidi-font-family:vrinda;mso-bidi-theme-font:minor-bidi\"=\"\"> <br>\r\n<br>\r\n</span><span style=\"font-size:14.0pt;line-height:115%;font-family:\" noto=\"\" sans=\"\" bengali\";=\"\" mso-fareast-font-family:\"times=\"\" new=\"\" roman\"\"=\"\">ডাঃ</span><span style=\"font-size:\r\n14.0pt;line-height:115%;font-family:\" calibri\",sans-serif;mso-fareast-font-family:=\"\" \"times=\"\" new=\"\" roman\";mso-bidi-font-family:vrinda;mso-bidi-theme-font:minor-bidi\"=\"\"> </span><span style=\"font-size:14.0pt;line-height:115%;font-family:\" noto=\"\" sans=\"\" bengali\";=\"\" mso-fareast-font-family:\"times=\"\" new=\"\" roman\"\"=\"\">অমিতাভ</span><span style=\"font-size:\r\n14.0pt;line-height:115%;font-family:\" calibri\",sans-serif;mso-fareast-font-family:=\"\" \"times=\"\" new=\"\" roman\";mso-bidi-font-family:vrinda;mso-bidi-theme-font:minor-bidi\"=\"\"> </span><span style=\"font-size:14.0pt;line-height:115%;font-family:\" noto=\"\" sans=\"\" bengali\";=\"\" mso-fareast-font-family:\"times=\"\" new=\"\" roman\"\"=\"\">সরকার</span><span style=\"font-size:\r\n14.0pt;line-height:115%;font-family:\" calibri\",sans-serif;mso-fareast-font-family:=\"\" \"times=\"\" new=\"\" roman\";mso-bidi-font-family:vrinda;mso-bidi-theme-font:minor-bidi\"=\"\"> <br>\r\n</span><span style=\"font-size:14.0pt;line-height:115%;font-family:\" noto=\"\" sans=\"\" bengali\";=\"\" mso-fareast-font-family:\"times=\"\" new=\"\" roman\"\"=\"\">সহযোগী</span><span style=\"font-size:\r\n14.0pt;line-height:115%;font-family:\" calibri\",sans-serif;mso-fareast-font-family:=\"\" \"times=\"\" new=\"\" roman\";mso-bidi-font-family:vrinda;mso-bidi-theme-font:minor-bidi\"=\"\"> </span><span style=\"font-size:14.0pt;line-height:115%;font-family:\" noto=\"\" sans=\"\" bengali\";=\"\" mso-fareast-font-family:\"times=\"\" new=\"\" roman\"\"=\"\">অধ্যাপক</span><span style=\"font-size:14.0pt;line-height:115%;font-family:\" calibri\",sans-serif;=\"\" mso-fareast-font-family:\"times=\"\" new=\"\" roman\";mso-bidi-font-family:vrinda;=\"\" mso-bidi-theme-font:minor-bidi\"=\"\"> (</span><span style=\"font-size:14.0pt;\r\nline-height:115%;font-family:\" noto=\"\" sans=\"\" bengali\";mso-fareast-font-family:\"times=\"\" new=\"\" roman\"\"=\"\">নিউরোমেডিসিন</span><span style=\"font-size:14.0pt;line-height:115%;font-family:\" calibri\",sans-serif;=\"\" mso-fareast-font-family:\"times=\"\" new=\"\" roman\";mso-bidi-font-family:vrinda;=\"\" mso-bidi-theme-font:minor-bidi\"=\"\">)<br>\r\n</span><span style=\"font-size:14.0pt;line-height:115%;font-family:\" noto=\"\" sans=\"\" bengali\";=\"\" mso-fareast-font-family:\"times=\"\" new=\"\" roman\"\"=\"\">শের</span><span style=\"font-size:\r\n14.0pt;line-height:115%;font-family:\" calibri\",sans-serif;mso-fareast-font-family:=\"\" \"times=\"\" new=\"\" roman\";mso-bidi-font-family:vrinda;mso-bidi-theme-font:minor-bidi\"=\"\">-</span><span style=\"font-size:14.0pt;line-height:115%;font-family:\" noto=\"\" sans=\"\" bengali\";=\"\" mso-fareast-font-family:\"times=\"\" new=\"\" roman\"\"=\"\">ই</span><span style=\"font-size:14.0pt;\r\nline-height:115%;font-family:\" calibri\",sans-serif;mso-fareast-font-family:\"times=\"\" new=\"\" roman\";=\"\" mso-bidi-font-family:vrinda;mso-bidi-theme-font:minor-bidi\"=\"\">-</span><span style=\"font-size:14.0pt;line-height:115%;font-family:\" noto=\"\" sans=\"\" bengali\";=\"\" mso-fareast-font-family:\"times=\"\" new=\"\" roman\"\"=\"\">বাংলা</span><span style=\"font-size:\r\n14.0pt;line-height:115%;font-family:\" calibri\",sans-serif;mso-fareast-font-family:=\"\" \"times=\"\" new=\"\" roman\";mso-bidi-font-family:vrinda;mso-bidi-theme-font:minor-bidi\"=\"\"> </span><span style=\"font-size:14.0pt;line-height:115%;font-family:\" noto=\"\" sans=\"\" bengali\";=\"\" mso-fareast-font-family:\"times=\"\" new=\"\" roman\"\"=\"\">মেডিকেল</span><span style=\"font-size:14.0pt;line-height:115%;font-family:\" calibri\",sans-serif;=\"\" mso-fareast-font-family:\"times=\"\" new=\"\" roman\";mso-bidi-font-family:vrinda;=\"\" mso-bidi-theme-font:minor-bidi\"=\"\"> </span><span style=\"font-size:14.0pt;\r\nline-height:115%;font-family:\" noto=\"\" sans=\"\" bengali\";mso-fareast-font-family:\"times=\"\" new=\"\" roman\"\"=\"\">কলেজ</span><span style=\"font-size:14.0pt;line-height:115%;font-family:\" calibri\",sans-serif;=\"\" mso-fareast-font-family:\"times=\"\" new=\"\" roman\";mso-bidi-font-family:vrinda;=\"\" mso-bidi-theme-font:minor-bidi\"=\"\"> </span><span style=\"font-size:14.0pt;\r\nline-height:115%;font-family:\" noto=\"\" sans=\"\" bengali\";mso-fareast-font-family:\"times=\"\" new=\"\" roman\"\"=\"\">ও</span><span style=\"font-size:14.0pt;line-height:115%;font-family:\" calibri\",sans-serif;=\"\" mso-fareast-font-family:\"times=\"\" new=\"\" roman\";mso-bidi-font-family:vrinda;=\"\" mso-bidi-theme-font:minor-bidi\"=\"\"> </span><span style=\"font-size:14.0pt;\r\nline-height:115%;font-family:\" noto=\"\" sans=\"\" bengali\";mso-fareast-font-family:\"times=\"\" new=\"\" roman\"\"=\"\">হাসপাতাল</span><span style=\"font-size:14.0pt;line-height:115%;font-family:\" calibri\",sans-serif;=\"\" mso-fareast-font-family:\"times=\"\" new=\"\" roman\";mso-bidi-font-family:vrinda;=\"\" mso-bidi-theme-font:minor-bidi\"=\"\"> </span><span style=\"font-size:14.0pt;\r\nline-height:115%;font-family:\" noto=\"\" sans=\"\" bengali\";mso-fareast-font-family:\"times=\"\" new=\"\" roman\"\"=\"\">বরিশাল</span><span style=\"font-size:14.0pt;line-height:115%;font-family:\" noto=\"\" sans=\"\" devanagari\";=\"\" mso-fareast-font-family:\"times=\"\" new=\"\" roman\"\"=\"\">।</span><span style=\"font-size:14.0pt;\r\nline-height:115%;font-family:\" calibri\",sans-serif;mso-fareast-font-family:\"times=\"\" new=\"\" roman\";=\"\" mso-bidi-font-family:vrinda;mso-bidi-theme-font:minor-bidi\"=\"\"> <br>\r\n<br>\r\n</span><span style=\"font-size:14.0pt;line-height:115%;font-family:\" noto=\"\" sans=\"\" bengali\";=\"\" mso-fareast-font-family:\"times=\"\" new=\"\" roman\"\"=\"\">প্রফেসর</span><span style=\"font-size:14.0pt;line-height:115%;font-family:\" calibri\",sans-serif;=\"\" mso-fareast-font-family:\"times=\"\" new=\"\" roman\";mso-bidi-font-family:vrinda;=\"\" mso-bidi-theme-font:minor-bidi\"=\"\"> </span><span style=\"font-size:14.0pt;\r\nline-height:115%;font-family:\" noto=\"\" sans=\"\" bengali\";mso-fareast-font-family:\"times=\"\" new=\"\" roman\"\"=\"\">ডাঃ</span><span style=\"font-size:14.0pt;line-height:115%;font-family:\" calibri\",sans-serif;=\"\" mso-fareast-font-family:\"times=\"\" new=\"\" roman\";mso-bidi-font-family:vrinda;=\"\" mso-bidi-theme-font:minor-bidi\"=\"\"> </span><span style=\"font-size:14.0pt;\r\nline-height:115%;font-family:\" noto=\"\" sans=\"\" bengali\";mso-fareast-font-family:\"times=\"\" new=\"\" roman\"\"=\"\">বিপ্লব</span><span style=\"font-size:14.0pt;line-height:115%;font-family:\" calibri\",sans-serif;=\"\" mso-fareast-font-family:\"times=\"\" new=\"\" roman\";mso-bidi-font-family:vrinda;=\"\" mso-bidi-theme-font:minor-bidi\"=\"\"> </span><span style=\"font-size:14.0pt;\r\nline-height:115%;font-family:\" noto=\"\" sans=\"\" bengali\";mso-fareast-font-family:\"times=\"\" new=\"\" roman\"\"=\"\">কুমার</span><span style=\"font-size:14.0pt;line-height:115%;font-family:\" calibri\",sans-serif;=\"\" mso-fareast-font-family:\"times=\"\" new=\"\" roman\";mso-bidi-font-family:vrinda;=\"\" mso-bidi-theme-font:minor-bidi\"=\"\"> </span><span style=\"font-size:14.0pt;\r\nline-height:115%;font-family:\" noto=\"\" sans=\"\" bengali\";mso-fareast-font-family:\"times=\"\" new=\"\" roman\"\"=\"\">দাস</span><span style=\"font-size:14.0pt;line-height:115%;font-family:\" calibri\",sans-serif;=\"\" mso-fareast-font-family:\"times=\"\" new=\"\" roman\";mso-bidi-font-family:vrinda;=\"\" mso-bidi-theme-font:minor-bidi\"=\"\"><br>\r\n</span><span style=\"font-size:14.0pt;line-height:115%;font-family:\" noto=\"\" sans=\"\" bengali\";=\"\" mso-fareast-font-family:\"times=\"\" new=\"\" roman\"\"=\"\">অধ্যাপক</span><span style=\"font-size:14.0pt;line-height:115%;font-family:\" calibri\",sans-serif;=\"\" mso-fareast-font-family:\"times=\"\" new=\"\" roman\";mso-bidi-font-family:vrinda;=\"\" mso-bidi-theme-font:minor-bidi\"=\"\"> </span><span style=\"font-size:14.0pt;\r\nline-height:115%;font-family:\" noto=\"\" sans=\"\" bengali\";mso-fareast-font-family:\"times=\"\" new=\"\" roman\"\"=\"\">ও</span><span style=\"font-size:14.0pt;line-height:115%;font-family:\" calibri\",sans-serif;=\"\" mso-fareast-font-family:\"times=\"\" new=\"\" roman\";mso-bidi-font-family:vrinda;=\"\" mso-bidi-theme-font:minor-bidi\"=\"\"> </span><span style=\"font-size:14.0pt;\r\nline-height:115%;font-family:\" noto=\"\" sans=\"\" bengali\";mso-fareast-font-family:\"times=\"\" new=\"\" roman\"\"=\"\">বিভাগীয়</span><span style=\"font-size:14.0pt;line-height:115%;font-family:\" calibri\",sans-serif;=\"\" mso-fareast-font-family:\"times=\"\" new=\"\" roman\";mso-bidi-font-family:vrinda;=\"\" mso-bidi-theme-font:minor-bidi\"=\"\"> </span><span style=\"font-size:14.0pt;\r\nline-height:115%;font-family:\" noto=\"\" sans=\"\" bengali\";mso-fareast-font-family:\"times=\"\" new=\"\" roman\"\"=\"\">প্রধান</span><span style=\"font-size:14.0pt;line-height:115%;font-family:\" calibri\",sans-serif;=\"\" mso-fareast-font-family:\"times=\"\" new=\"\" roman\";mso-bidi-font-family:vrinda;=\"\" mso-bidi-theme-font:minor-bidi\"=\"\"> (</span><span style=\"font-size:14.0pt;\r\nline-height:115%;font-family:\" noto=\"\" sans=\"\" bengali\";mso-fareast-font-family:\"times=\"\" new=\"\" roman\"\"=\"\">ডা</span><span style=\"font-size:14.0pt;line-height:115%;font-family:\" shonar=\"\" bangla\",sans-serif;=\"\" mso-fareast-font-family:\"times=\"\" new=\"\" roman\"\"=\"\">র্মা</span><span style=\"font-size:\r\n14.0pt;line-height:115%;font-family:\" noto=\"\" sans=\"\" bengali\";mso-fareast-font-family:=\"\" \"times=\"\" new=\"\" roman\"\"=\"\">টোলজী</span><span style=\"font-size:14.0pt;line-height:115%;\r\nfont-family:\" calibri\",sans-serif;mso-fareast-font-family:\"times=\"\" new=\"\" roman\";=\"\" mso-bidi-font-family:vrinda;mso-bidi-theme-font:minor-bidi\"=\"\">)</span><span style=\"font-size:14.0pt;line-height:115%;font-family:\" noto=\"\" sans=\"\" bengali\";=\"\" mso-fareast-font-family:\"times=\"\" new=\"\" roman\"\"=\"\">এক্স</span><span style=\"font-size:\r\n14.0pt;line-height:115%;font-family:\" calibri\",sans-serif;mso-fareast-font-family:=\"\" \"times=\"\" new=\"\" roman\";mso-bidi-font-family:vrinda;mso-bidi-theme-font:minor-bidi\"=\"\"><br>\r\n</span><span style=\"font-size:14.0pt;line-height:115%;font-family:\" noto=\"\" sans=\"\" bengali\";=\"\" mso-fareast-font-family:\"times=\"\" new=\"\" roman\"\"=\"\">শের</span><span style=\"font-size:\r\n14.0pt;line-height:115%;font-family:\" calibri\",sans-serif;mso-fareast-font-family:=\"\" \"times=\"\" new=\"\" roman\";mso-bidi-font-family:vrinda;mso-bidi-theme-font:minor-bidi\"=\"\">-</span><span style=\"font-size:14.0pt;line-height:115%;font-family:\" noto=\"\" sans=\"\" bengali\";=\"\" mso-fareast-font-family:\"times=\"\" new=\"\" roman\"\"=\"\">ই</span><span style=\"font-size:14.0pt;\r\nline-height:115%;font-family:\" calibri\",sans-serif;mso-fareast-font-family:\"times=\"\" new=\"\" roman\";=\"\" mso-bidi-font-family:vrinda;mso-bidi-theme-font:minor-bidi\"=\"\">-</span><span style=\"font-size:14.0pt;line-height:115%;font-family:\" noto=\"\" sans=\"\" bengali\";=\"\" mso-fareast-font-family:\"times=\"\" new=\"\" roman\"\"=\"\">বাংলা</span><span style=\"font-size:\r\n14.0pt;line-height:115%;font-family:\" calibri\",sans-serif;mso-fareast-font-family:=\"\" \"times=\"\" new=\"\" roman\";mso-bidi-font-family:vrinda;mso-bidi-theme-font:minor-bidi\"=\"\"> </span><span style=\"font-size:14.0pt;line-height:115%;font-family:\" noto=\"\" sans=\"\" bengali\";=\"\" mso-fareast-font-family:\"times=\"\" new=\"\" roman\"\"=\"\">মেডিকেল</span><span style=\"font-size:14.0pt;line-height:115%;font-family:\" calibri\",sans-serif;=\"\" mso-fareast-font-family:\"times=\"\" new=\"\" roman\";mso-bidi-font-family:vrinda;=\"\" mso-bidi-theme-font:minor-bidi\"=\"\"> </span><span style=\"font-size:14.0pt;\r\nline-height:115%;font-family:\" noto=\"\" sans=\"\" bengali\";mso-fareast-font-family:\"times=\"\" new=\"\" roman\"\"=\"\">কলেজ</span><span style=\"font-size:14.0pt;line-height:115%;font-family:\" calibri\",sans-serif;=\"\" mso-fareast-font-family:\"times=\"\" new=\"\" roman\";mso-bidi-font-family:vrinda;=\"\" mso-bidi-theme-font:minor-bidi\"=\"\"> </span><span style=\"font-size:14.0pt;\r\nline-height:115%;font-family:\" noto=\"\" sans=\"\" bengali\";mso-fareast-font-family:\"times=\"\" new=\"\" roman\"\"=\"\">ও</span><span style=\"font-size:14.0pt;line-height:115%;font-family:\" calibri\",sans-serif;=\"\" mso-fareast-font-family:\"times=\"\" new=\"\" roman\";mso-bidi-font-family:vrinda;=\"\" mso-bidi-theme-font:minor-bidi\"=\"\"> </span><span style=\"font-size:14.0pt;\r\nline-height:115%;font-family:\" noto=\"\" sans=\"\" bengali\";mso-fareast-font-family:\"times=\"\" new=\"\" roman\"\"=\"\">হাসপাতাল</span><span style=\"font-size:14.0pt;line-height:115%;font-family:\" calibri\",sans-serif;=\"\" mso-fareast-font-family:\"times=\"\" new=\"\" roman\";mso-bidi-font-family:vrinda;=\"\" mso-bidi-theme-font:minor-bidi\"=\"\">, </span><span style=\"font-size:14.0pt;\r\nline-height:115%;font-family:\" noto=\"\" sans=\"\" bengali\";mso-fareast-font-family:\"times=\"\" new=\"\" roman\"\"=\"\">বরিশাল</span><span style=\"font-size:14.0pt;line-height:115%;font-family:\" noto=\"\" sans=\"\" devanagari\";=\"\" mso-fareast-font-family:\"times=\"\" new=\"\" roman\"\"=\"\">।</span><span style=\"font-size:14.0pt;\r\nline-height:115%;font-family:\" calibri\",sans-serif;mso-fareast-font-family:\"times=\"\" new=\"\" roman\";=\"\" mso-bidi-font-family:vrinda;mso-bidi-theme-font:minor-bidi\"=\"\"> <br>\r\n<br>\r\n</span><span style=\"font-size:14.0pt;line-height:115%;font-family:\" noto=\"\" sans=\"\" bengali\";=\"\" mso-fareast-font-family:\"times=\"\" new=\"\" roman\"\"=\"\">ডাঃ</span><span style=\"font-size:\r\n14.0pt;line-height:115%;font-family:\" calibri\",sans-serif;mso-fareast-font-family:=\"\" \"times=\"\" new=\"\" roman\";mso-bidi-font-family:vrinda;mso-bidi-theme-font:minor-bidi\"=\"\"> </span><span style=\"font-size:14.0pt;line-height:115%;font-family:\" noto=\"\" sans=\"\" bengali\";=\"\" mso-fareast-font-family:\"times=\"\" new=\"\" roman\"\"=\"\">আশীষ</span><span style=\"font-size:\r\n14.0pt;line-height:115%;font-family:\" calibri\",sans-serif;mso-fareast-font-family:=\"\" \"times=\"\" new=\"\" roman\";mso-bidi-font-family:vrinda;mso-bidi-theme-font:minor-bidi\"=\"\"> </span><span style=\"font-size:14.0pt;line-height:115%;font-family:\" noto=\"\" sans=\"\" bengali\";=\"\" mso-fareast-font-family:\"times=\"\" new=\"\" roman\"\"=\"\">কুমার</span><span style=\"font-size:\r\n14.0pt;line-height:115%;font-family:\" calibri\",sans-serif;mso-fareast-font-family:=\"\" \"times=\"\" new=\"\" roman\";mso-bidi-font-family:vrinda;mso-bidi-theme-font:minor-bidi\"=\"\"> </span><span style=\"font-size:14.0pt;line-height:115%;font-family:\" noto=\"\" sans=\"\" bengali\";=\"\" mso-fareast-font-family:\"times=\"\" new=\"\" roman\"\"=\"\">হালদার</span><span style=\"font-size:\r\n14.0pt;line-height:115%;font-family:\" calibri\",sans-serif;mso-fareast-font-family:=\"\" \"times=\"\" new=\"\" roman\";mso-bidi-font-family:vrinda;mso-bidi-theme-font:minor-bidi\"=\"\"> <br>\r\n</span><span style=\"font-size:14.0pt;line-height:115%;font-family:\" noto=\"\" sans=\"\" bengali\";=\"\" mso-fareast-font-family:\"times=\"\" new=\"\" roman\"\"=\"\">সহযোগী</span><span style=\"font-size:\r\n14.0pt;line-height:115%;font-family:\" calibri\",sans-serif;mso-fareast-font-family:=\"\" \"times=\"\" new=\"\" roman\";mso-bidi-font-family:vrinda;mso-bidi-theme-font:minor-bidi\"=\"\"> </span><span style=\"font-size:14.0pt;line-height:115%;font-family:\" noto=\"\" sans=\"\" bengali\";=\"\" mso-fareast-font-family:\"times=\"\" new=\"\" roman\"\"=\"\">অধ্যাপক</span><span style=\"font-size:14.0pt;line-height:115%;font-family:\" calibri\",sans-serif;=\"\" mso-fareast-font-family:\"times=\"\" new=\"\" roman\";mso-bidi-font-family:vrinda;=\"\" mso-bidi-theme-font:minor-bidi\"=\"\"> (</span><span style=\"font-size:14.0pt;\r\nline-height:115%;font-family:\" noto=\"\" sans=\"\" bengali\";mso-fareast-font-family:\"times=\"\" new=\"\" roman\"\"=\"\">শিশু</span><span style=\"font-size:14.0pt;line-height:115%;font-family:\" calibri\",sans-serif;=\"\" mso-fareast-font-family:\"times=\"\" new=\"\" roman\";mso-bidi-font-family:vrinda;=\"\" mso-bidi-theme-font:minor-bidi\"=\"\">),(</span><span style=\"font-size:14.0pt;\r\nline-height:115%;font-family:\" noto=\"\" sans=\"\" bengali\";mso-fareast-font-family:\"times=\"\" new=\"\" roman\"\"=\"\">সি</span><span style=\"font-size:14.0pt;line-height:115%;font-family:\" calibri\",sans-serif;=\"\" mso-fareast-font-family:\"times=\"\" new=\"\" roman\";mso-bidi-font-family:vrinda;=\"\" mso-bidi-theme-font:minor-bidi\"=\"\">.</span><span style=\"font-size:14.0pt;\r\nline-height:115%;font-family:\" noto=\"\" sans=\"\" bengali\";mso-fareast-font-family:\"times=\"\" new=\"\" roman\"\"=\"\">সি</span><span style=\"font-size:14.0pt;line-height:115%;font-family:\" calibri\",sans-serif;=\"\" mso-fareast-font-family:\"times=\"\" new=\"\" roman\";mso-bidi-font-family:vrinda;=\"\" mso-bidi-theme-font:minor-bidi\"=\"\">)<br>\r\n</span><span style=\"font-size:14.0pt;line-height:115%;font-family:\" noto=\"\" sans=\"\" bengali\";=\"\" mso-fareast-font-family:\"times=\"\" new=\"\" roman\"\"=\"\">শের</span><span style=\"font-size:\r\n14.0pt;line-height:115%;font-family:\" calibri\",sans-serif;mso-fareast-font-family:=\"\" \"times=\"\" new=\"\" roman\";mso-bidi-font-family:vrinda;mso-bidi-theme-font:minor-bidi\"=\"\">-</span><span style=\"font-size:14.0pt;line-height:115%;font-family:\" noto=\"\" sans=\"\" bengali\";=\"\" mso-fareast-font-family:\"times=\"\" new=\"\" roman\"\"=\"\">ই</span><span style=\"font-size:14.0pt;\r\nline-height:115%;font-family:\" calibri\",sans-serif;mso-fareast-font-family:\"times=\"\" new=\"\" roman\";=\"\" mso-bidi-font-family:vrinda;mso-bidi-theme-font:minor-bidi\"=\"\">-</span><span style=\"font-size:14.0pt;line-height:115%;font-family:\" noto=\"\" sans=\"\" bengali\";=\"\" mso-fareast-font-family:\"times=\"\" new=\"\" roman\"\"=\"\">বাংলা</span><span style=\"font-size:\r\n14.0pt;line-height:115%;font-family:\" calibri\",sans-serif;mso-fareast-font-family:=\"\" \"times=\"\" new=\"\" roman\";mso-bidi-font-family:vrinda;mso-bidi-theme-font:minor-bidi\"=\"\"> </span><span style=\"font-size:14.0pt;line-height:115%;font-family:\" noto=\"\" sans=\"\" bengali\";=\"\" mso-fareast-font-family:\"times=\"\" new=\"\" roman\"\"=\"\">মেডিকেল</span><span style=\"font-size:14.0pt;line-height:115%;font-family:\" calibri\",sans-serif;=\"\" mso-fareast-font-family:\"times=\"\" new=\"\" roman\";mso-bidi-font-family:vrinda;=\"\" mso-bidi-theme-font:minor-bidi\"=\"\"> </span><span style=\"font-size:14.0pt;\r\nline-height:115%;font-family:\" noto=\"\" sans=\"\" bengali\";mso-fareast-font-family:\"times=\"\" new=\"\" roman\"\"=\"\">কলেজ</span><span style=\"font-size:14.0pt;line-height:115%;font-family:\" calibri\",sans-serif;=\"\" mso-fareast-font-family:\"times=\"\" new=\"\" roman\";mso-bidi-font-family:vrinda;=\"\" mso-bidi-theme-font:minor-bidi\"=\"\"> </span><span style=\"font-size:14.0pt;\r\nline-height:115%;font-family:\" noto=\"\" sans=\"\" bengali\";mso-fareast-font-family:\"times=\"\" new=\"\" roman\"\"=\"\">ও</span><span style=\"font-size:14.0pt;line-height:115%;font-family:\" calibri\",sans-serif;=\"\" mso-fareast-font-family:\"times=\"\" new=\"\" roman\";mso-bidi-font-family:vrinda;=\"\" mso-bidi-theme-font:minor-bidi\"=\"\"> </span><span style=\"font-size:14.0pt;\r\nline-height:115%;font-family:\" noto=\"\" sans=\"\" bengali\";mso-fareast-font-family:\"times=\"\" new=\"\" roman\"\"=\"\">হাসপাতাল</span><span style=\"font-size:14.0pt;line-height:115%;font-family:\" calibri\",sans-serif;=\"\" mso-fareast-font-family:\"times=\"\" new=\"\" roman\";mso-bidi-font-family:vrinda;=\"\" mso-bidi-theme-font:minor-bidi\"=\"\">, </span><span style=\"font-size:14.0pt;\r\nline-height:115%;font-family:\" noto=\"\" sans=\"\" bengali\";mso-fareast-font-family:\"times=\"\" new=\"\" roman\"\"=\"\">বরিশাল</span><span style=\"font-size:14.0pt;line-height:115%;font-family:\" noto=\"\" sans=\"\" devanagari\";=\"\" mso-fareast-font-family:\"times=\"\" new=\"\" roman\"\"=\"\">।</span><span style=\"font-size:14.0pt;\r\nline-height:115%;font-family:\" calibri\",sans-serif;mso-fareast-font-family:\"times=\"\" new=\"\" roman\";=\"\" mso-bidi-font-family:vrinda;mso-bidi-theme-font:minor-bidi\"=\"\"> <br>\r\n<br>\r\n<br>\r\n<br>\r\n<br>\r\n</span><span style=\"font-size:14.0pt;line-height:115%;font-family:\" noto=\"\" sans=\"\" bengali\";=\"\" mso-fareast-font-family:\"times=\"\" new=\"\" roman\"\"=\"\">ডাঃ</span><span style=\"font-size:\r\n14.0pt;line-height:115%;font-family:\" calibri\",sans-serif;mso-fareast-font-family:=\"\" \"times=\"\" new=\"\" roman\";mso-bidi-font-family:vrinda;mso-bidi-theme-font:minor-bidi\"=\"\"> </span><span style=\"font-size:14.0pt;line-height:115%;font-family:\" noto=\"\" sans=\"\" bengali\";=\"\" mso-fareast-font-family:\"times=\"\" new=\"\" roman\"\"=\"\">চিরঞ্জীব</span><span style=\"font-size:14.0pt;line-height:115%;font-family:\" calibri\",sans-serif;=\"\" mso-fareast-font-family:\"times=\"\" new=\"\" roman\";mso-bidi-font-family:vrinda;=\"\" mso-bidi-theme-font:minor-bidi\"=\"\"> </span><span style=\"font-size:14.0pt;\r\nline-height:115%;font-family:\" noto=\"\" sans=\"\" bengali\";mso-fareast-font-family:\"times=\"\" new=\"\" roman\"\"=\"\">সিনহা</span><span style=\"font-size:14.0pt;line-height:115%;font-family:\" calibri\",sans-serif;=\"\" mso-fareast-font-family:\"times=\"\" new=\"\" roman\";mso-bidi-font-family:vrinda;=\"\" mso-bidi-theme-font:minor-bidi\"=\"\"> </span><span style=\"font-size:14.0pt;\r\nline-height:115%;font-family:\" noto=\"\" sans=\"\" bengali\";mso-fareast-font-family:\"times=\"\" new=\"\" roman\"\"=\"\">পলাশ</span><span style=\"font-size:14.0pt;line-height:115%;font-family:\" calibri\",sans-serif;=\"\" mso-fareast-font-family:\"times=\"\" new=\"\" roman\";mso-bidi-font-family:vrinda;=\"\" mso-bidi-theme-font:minor-bidi\"=\"\"><br>\r\n</span><span style=\"font-size:14.0pt;line-height:115%;font-family:\" noto=\"\" sans=\"\" bengali\";=\"\" mso-fareast-font-family:\"times=\"\" new=\"\" roman\"\"=\"\">এম</span><span style=\"font-size:\r\n14.0pt;line-height:115%;font-family:\" calibri\",sans-serif;mso-fareast-font-family:=\"\" \"times=\"\" new=\"\" roman\";mso-bidi-font-family:vrinda;mso-bidi-theme-font:minor-bidi\"=\"\">.</span><span style=\"font-size:14.0pt;line-height:115%;font-family:\" noto=\"\" sans=\"\" bengali\";=\"\" mso-fareast-font-family:\"times=\"\" new=\"\" roman\"\"=\"\">বি</span><span style=\"font-size:\r\n14.0pt;line-height:115%;font-family:\" calibri\",sans-serif;mso-fareast-font-family:=\"\" \"times=\"\" new=\"\" roman\";mso-bidi-font-family:vrinda;mso-bidi-theme-font:minor-bidi\"=\"\">.</span><span style=\"font-size:14.0pt;line-height:115%;font-family:\" noto=\"\" sans=\"\" bengali\";=\"\" mso-fareast-font-family:\"times=\"\" new=\"\" roman\"\"=\"\">বি</span><span style=\"font-size:\r\n14.0pt;line-height:115%;font-family:\" calibri\",sans-serif;mso-fareast-font-family:=\"\" \"times=\"\" new=\"\" roman\";mso-bidi-font-family:vrinda;mso-bidi-theme-font:minor-bidi\"=\"\">.</span><span style=\"font-size:14.0pt;line-height:115%;font-family:\" noto=\"\" sans=\"\" bengali\";=\"\" mso-fareast-font-family:\"times=\"\" new=\"\" roman\"\"=\"\">এস</span><span style=\"font-size:\r\n14.0pt;line-height:115%;font-family:\" calibri\",sans-serif;mso-fareast-font-family:=\"\" \"times=\"\" new=\"\" roman\";mso-bidi-font-family:vrinda;mso-bidi-theme-font:minor-bidi\"=\"\">.\r\n</span><span style=\"font-size:14.0pt;line-height:115%;font-family:\" noto=\"\" sans=\"\" bengali\";=\"\" mso-fareast-font-family:\"times=\"\" new=\"\" roman\"\"=\"\">বি</span><span style=\"font-size:\r\n14.0pt;line-height:115%;font-family:\" calibri\",sans-serif;mso-fareast-font-family:=\"\" \"times=\"\" new=\"\" roman\";mso-bidi-font-family:vrinda;mso-bidi-theme-font:minor-bidi\"=\"\">.</span><span style=\"font-size:14.0pt;line-height:115%;font-family:\" noto=\"\" sans=\"\" bengali\";=\"\" mso-fareast-font-family:\"times=\"\" new=\"\" roman\"\"=\"\">সি</span><span style=\"font-size:\r\n14.0pt;line-height:115%;font-family:\" calibri\",sans-serif;mso-fareast-font-family:=\"\" \"times=\"\" new=\"\" roman\";mso-bidi-font-family:vrinda;mso-bidi-theme-font:minor-bidi\"=\"\">.</span><span style=\"font-size:14.0pt;line-height:115%;font-family:\" noto=\"\" sans=\"\" bengali\";=\"\" mso-fareast-font-family:\"times=\"\" new=\"\" roman\"\"=\"\">এ</span><span style=\"font-size:14.0pt;\r\nline-height:115%;font-family:\" calibri\",sans-serif;mso-fareast-font-family:\"times=\"\" new=\"\" roman\";=\"\" mso-bidi-font-family:\"noto=\"\" sans=\"\" bengali\"\"=\"\"> </span><span style=\"font-size:14.0pt;\r\nline-height:115%;font-family:\" noto=\"\" sans=\"\" bengali\";mso-fareast-font-family:\"times=\"\" new=\"\" roman\"\"=\"\">এম</span><span style=\"font-size:14.0pt;line-height:115%;font-family:\" calibri\",sans-serif;=\"\" mso-fareast-font-family:\"times=\"\" new=\"\" roman\";mso-bidi-font-family:vrinda;=\"\" mso-bidi-theme-font:minor-bidi\"=\"\">.</span><span style=\"font-size:14.0pt;\r\nline-height:115%;font-family:\" noto=\"\" sans=\"\" bengali\";mso-fareast-font-family:\"times=\"\" new=\"\" roman\"\"=\"\">এস</span><span style=\"font-size:14.0pt;line-height:115%;font-family:\" calibri\",sans-serif;=\"\" mso-fareast-font-family:\"times=\"\" new=\"\" roman\";mso-bidi-font-family:vrinda;=\"\" mso-bidi-theme-font:minor-bidi\"=\"\">(</span><span style=\"font-size:14.0pt;\r\nline-height:115%;font-family:\" noto=\"\" sans=\"\" bengali\";mso-fareast-font-family:\"times=\"\" new=\"\" roman\"\"=\"\">বি</span><span style=\"font-size:14.0pt;line-height:115%;font-family:\" calibri\",sans-serif;=\"\" mso-fareast-font-family:\"times=\"\" new=\"\" roman\";mso-bidi-font-family:vrinda;=\"\" mso-bidi-theme-font:minor-bidi\"=\"\">.</span><span style=\"font-size:14.0pt;\r\nline-height:115%;font-family:\" noto=\"\" sans=\"\" bengali\";mso-fareast-font-family:\"times=\"\" new=\"\" roman\"\"=\"\">এস</span><span style=\"font-size:14.0pt;line-height:115%;font-family:\" calibri\",sans-serif;=\"\" mso-fareast-font-family:\"times=\"\" new=\"\" roman\";mso-bidi-font-family:vrinda;=\"\" mso-bidi-theme-font:minor-bidi\"=\"\">.</span><span style=\"font-size:14.0pt;\r\nline-height:115%;font-family:\" noto=\"\" sans=\"\" bengali\";mso-fareast-font-family:\"times=\"\" new=\"\" roman\"\"=\"\">এম</span><span style=\"font-size:14.0pt;line-height:115%;font-family:\" calibri\",sans-serif;=\"\" mso-fareast-font-family:\"times=\"\" new=\"\" roman\";mso-bidi-font-family:vrinda;=\"\" mso-bidi-theme-font:minor-bidi\"=\"\">.</span><span style=\"font-size:14.0pt;\r\nline-height:115%;font-family:\" noto=\"\" sans=\"\" bengali\";mso-fareast-font-family:\"times=\"\" new=\"\" roman\"\"=\"\">এম</span><span style=\"font-size:14.0pt;line-height:115%;font-family:\" calibri\",sans-serif;=\"\" mso-fareast-font-family:\"times=\"\" new=\"\" roman\";mso-bidi-font-family:vrinda;=\"\" mso-bidi-theme-font:minor-bidi\"=\"\">.</span><span style=\"font-size:14.0pt;\r\nline-height:115%;font-family:\" noto=\"\" sans=\"\" bengali\";mso-fareast-font-family:\"times=\"\" new=\"\" roman\"\"=\"\">ইউ</span><span style=\"font-size:14.0pt;line-height:115%;font-family:\" calibri\",sans-serif;=\"\" mso-fareast-font-family:\"times=\"\" new=\"\" roman\";mso-bidi-font-family:vrinda;=\"\" mso-bidi-theme-font:minor-bidi\"=\"\">)<br>\r\n</span><span style=\"font-size:14.0pt;line-height:115%;font-family:\" noto=\"\" sans=\"\" bengali\";=\"\" mso-fareast-font-family:\"times=\"\" new=\"\" roman\"\"=\"\">শের</span><span style=\"font-size:\r\n14.0pt;line-height:115%;font-family:\" calibri\",sans-serif;mso-fareast-font-family:=\"\" \"times=\"\" new=\"\" roman\";mso-bidi-font-family:vrinda;mso-bidi-theme-font:minor-bidi\"=\"\">-</span><span style=\"font-size:14.0pt;line-height:115%;font-family:\" noto=\"\" sans=\"\" bengali\";=\"\" mso-fareast-font-family:\"times=\"\" new=\"\" roman\"\"=\"\">ই</span><span style=\"font-size:14.0pt;\r\nline-height:115%;font-family:\" calibri\",sans-serif;mso-fareast-font-family:\"times=\"\" new=\"\" roman\";=\"\" mso-bidi-font-family:vrinda;mso-bidi-theme-font:minor-bidi\"=\"\">-</span><span style=\"font-size:14.0pt;line-height:115%;font-family:\" noto=\"\" sans=\"\" bengali\";=\"\" mso-fareast-font-family:\"times=\"\" new=\"\" roman\"\"=\"\">বাংলা</span><span style=\"font-size:\r\n14.0pt;line-height:115%;font-family:\" calibri\",sans-serif;mso-fareast-font-family:=\"\" \"times=\"\" new=\"\" roman\";mso-bidi-font-family:vrinda;mso-bidi-theme-font:minor-bidi\"=\"\"> </span><span style=\"font-size:14.0pt;line-height:115%;font-family:\" noto=\"\" sans=\"\" bengali\";=\"\" mso-fareast-font-family:\"times=\"\" new=\"\" roman\"\"=\"\">মেডিকেল</span><span style=\"font-size:14.0pt;line-height:115%;font-family:\" calibri\",sans-serif;=\"\" mso-fareast-font-family:\"times=\"\" new=\"\" roman\";mso-bidi-font-family:vrinda;=\"\" mso-bidi-theme-font:minor-bidi\"=\"\"> </span><span style=\"font-size:14.0pt;\r\nline-height:115%;font-family:\" noto=\"\" sans=\"\" bengali\";mso-fareast-font-family:\"times=\"\" new=\"\" roman\"\"=\"\">কলেজ</span><span style=\"font-size:14.0pt;line-height:115%;font-family:\" calibri\",sans-serif;=\"\" mso-fareast-font-family:\"times=\"\" new=\"\" roman\";mso-bidi-font-family:vrinda;=\"\" mso-bidi-theme-font:minor-bidi\"=\"\"> </span><span style=\"font-size:14.0pt;\r\nline-height:115%;font-family:\" noto=\"\" sans=\"\" bengali\";mso-fareast-font-family:\"times=\"\" new=\"\" roman\"\"=\"\">ও</span><span style=\"font-size:14.0pt;line-height:115%;font-family:\" calibri\",sans-serif;=\"\" mso-fareast-font-family:\"times=\"\" new=\"\" roman\";mso-bidi-font-family:vrinda;=\"\" mso-bidi-theme-font:minor-bidi\"=\"\"> </span><span style=\"font-size:14.0pt;\r\nline-height:115%;font-family:\" noto=\"\" sans=\"\" bengali\";mso-fareast-font-family:\"times=\"\" new=\"\" roman\"\"=\"\">হাসপাতাল</span><span style=\"font-size:14.0pt;line-height:115%;font-family:\" calibri\",sans-serif;=\"\" mso-fareast-font-family:\"times=\"\" new=\"\" roman\";mso-bidi-font-family:vrinda;=\"\" mso-bidi-theme-font:minor-bidi\"=\"\">, </span><span style=\"font-size:14.0pt;\r\nline-height:115%;font-family:\" noto=\"\" sans=\"\" bengali\";mso-fareast-font-family:\"times=\"\" new=\"\" roman\"\"=\"\">বরিশাল</span><span style=\"font-size:14.0pt;line-height:115%;font-family:\" noto=\"\" sans=\"\" devanagari\";=\"\" mso-fareast-font-family:\"times=\"\" new=\"\" roman\"\"=\"\">।</span><span style=\"font-size:14.0pt;\r\nline-height:115%;font-family:\" calibri\",sans-serif;mso-fareast-font-family:\"times=\"\" new=\"\" roman\";=\"\" mso-bidi-font-family:vrinda;mso-bidi-theme-font:minor-bidi\"=\"\"> <br>\r\n<br>\r\n<br>\r\n</span><span style=\"font-size:14.0pt;line-height:115%;font-family:\" noto=\"\" sans=\"\" bengali\";=\"\" mso-fareast-font-family:\"times=\"\" new=\"\" roman\"\"=\"\">ডাঃ</span><span style=\"font-size:\r\n14.0pt;line-height:115%;font-family:\" calibri\",sans-serif;mso-fareast-font-family:=\"\" \"times=\"\" new=\"\" roman\";mso-bidi-font-family:vrinda;mso-bidi-theme-font:minor-bidi\"=\"\"> </span><span style=\"font-size:14.0pt;line-height:115%;font-family:\" noto=\"\" sans=\"\" bengali\";=\"\" mso-fareast-font-family:\"times=\"\" new=\"\" roman\"\"=\"\">উত্তম</span><span style=\"font-size:\r\n14.0pt;line-height:115%;font-family:\" calibri\",sans-serif;mso-fareast-font-family:=\"\" \"times=\"\" new=\"\" roman\";mso-bidi-font-family:vrinda;mso-bidi-theme-font:minor-bidi\"=\"\"> </span><span style=\"font-size:14.0pt;line-height:115%;font-family:\" noto=\"\" sans=\"\" bengali\";=\"\" mso-fareast-font-family:\"times=\"\" new=\"\" roman\"\"=\"\">কুমার</span><span style=\"font-size:\r\n14.0pt;line-height:115%;font-family:\" calibri\",sans-serif;mso-fareast-font-family:=\"\" \"times=\"\" new=\"\" roman\";mso-bidi-font-family:vrinda;mso-bidi-theme-font:minor-bidi\"=\"\"> </span><span style=\"font-size:14.0pt;line-height:115%;font-family:\" noto=\"\" sans=\"\" bengali\";=\"\" mso-fareast-font-family:\"times=\"\" new=\"\" roman\"\"=\"\">সাহা</span><span style=\"font-size:\r\n14.0pt;line-height:115%;font-family:\" calibri\",sans-serif;mso-fareast-font-family:=\"\" \"times=\"\" new=\"\" roman\";mso-bidi-font-family:vrinda;mso-bidi-theme-font:minor-bidi\"=\"\"><br>\r\n</span><span style=\"font-size:14.0pt;line-height:115%;font-family:\" noto=\"\" sans=\"\" bengali\";=\"\" mso-fareast-font-family:\"times=\"\" new=\"\" roman\"\"=\"\">অধ্যাপক</span><span style=\"font-size:14.0pt;line-height:115%;font-family:\" calibri\",sans-serif;=\"\" mso-fareast-font-family:\"times=\"\" new=\"\" roman\";mso-bidi-font-family:vrinda;=\"\" mso-bidi-theme-font:minor-bidi\"=\"\"> </span><span style=\"font-size:14.0pt;\r\nline-height:115%;font-family:\" noto=\"\" sans=\"\" bengali\";mso-fareast-font-family:\"times=\"\" new=\"\" roman\"\"=\"\">ও</span><span style=\"font-size:14.0pt;line-height:115%;font-family:\" calibri\",sans-serif;=\"\" mso-fareast-font-family:\"times=\"\" new=\"\" roman\";mso-bidi-font-family:vrinda;=\"\" mso-bidi-theme-font:minor-bidi\"=\"\"> </span><span style=\"font-size:14.0pt;\r\nline-height:115%;font-family:\" noto=\"\" sans=\"\" bengali\";mso-fareast-font-family:\"times=\"\" new=\"\" roman\"\"=\"\">বিভাগীয়</span><span style=\"font-size:14.0pt;line-height:115%;font-family:\" calibri\",sans-serif;=\"\" mso-fareast-font-family:\"times=\"\" new=\"\" roman\";mso-bidi-font-family:vrinda;=\"\" mso-bidi-theme-font:minor-bidi\"=\"\"> </span><span style=\"font-size:14.0pt;\r\nline-height:115%;font-family:\" noto=\"\" sans=\"\" bengali\";mso-fareast-font-family:\"times=\"\" new=\"\" roman\"\"=\"\">প্রধান</span><span style=\"font-size:14.0pt;line-height:115%;font-family:\" calibri\",sans-serif;=\"\" mso-fareast-font-family:\"times=\"\" new=\"\" roman\";mso-bidi-font-family:vrinda;=\"\" mso-bidi-theme-font:minor-bidi\"=\"\"> <br>\r\n</span><span style=\"font-size:14.0pt;line-height:115%;font-family:\" noto=\"\" sans=\"\" bengali\";=\"\" mso-fareast-font-family:\"times=\"\" new=\"\" roman\"\"=\"\">শের</span><span style=\"font-size:\r\n14.0pt;line-height:115%;font-family:\" calibri\",sans-serif;mso-fareast-font-family:=\"\" \"times=\"\" new=\"\" roman\";mso-bidi-font-family:vrinda;mso-bidi-theme-font:minor-bidi\"=\"\">-</span><span style=\"font-size:14.0pt;line-height:115%;font-family:\" noto=\"\" sans=\"\" bengali\";=\"\" mso-fareast-font-family:\"times=\"\" new=\"\" roman\"\"=\"\">ই</span><span style=\"font-size:14.0pt;\r\nline-height:115%;font-family:\" calibri\",sans-serif;mso-fareast-font-family:\"times=\"\" new=\"\" roman\";=\"\" mso-bidi-font-family:vrinda;mso-bidi-theme-font:minor-bidi\"=\"\">-</span><span style=\"font-size:14.0pt;line-height:115%;font-family:\" noto=\"\" sans=\"\" bengali\";=\"\" mso-fareast-font-family:\"times=\"\" new=\"\" roman\"\"=\"\">বাংলা</span><span style=\"font-size:\r\n14.0pt;line-height:115%;font-family:\" calibri\",sans-serif;mso-fareast-font-family:=\"\" \"times=\"\" new=\"\" roman\";mso-bidi-font-family:vrinda;mso-bidi-theme-font:minor-bidi\"=\"\"> </span><span style=\"font-size:14.0pt;line-height:115%;font-family:\" noto=\"\" sans=\"\" bengali\";=\"\" mso-fareast-font-family:\"times=\"\" new=\"\" roman\"\"=\"\">মেডিকেল</span><span style=\"font-size:14.0pt;line-height:115%;font-family:\" calibri\",sans-serif;=\"\" mso-fareast-font-family:\"times=\"\" new=\"\" roman\";mso-bidi-font-family:vrinda;=\"\" mso-bidi-theme-font:minor-bidi\"=\"\"> </span><span style=\"font-size:14.0pt;\r\nline-height:115%;font-family:\" noto=\"\" sans=\"\" bengali\";mso-fareast-font-family:\"times=\"\" new=\"\" roman\"\"=\"\">কলেজ</span><span style=\"font-size:14.0pt;line-height:115%;font-family:\" calibri\",sans-serif;=\"\" mso-fareast-font-family:\"times=\"\" new=\"\" roman\";mso-bidi-font-family:vrinda;=\"\" mso-bidi-theme-font:minor-bidi\"=\"\"> </span><span style=\"font-size:14.0pt;\r\nline-height:115%;font-family:\" noto=\"\" sans=\"\" bengali\";mso-fareast-font-family:\"times=\"\" new=\"\" roman\"\"=\"\">ও</span><span style=\"font-size:14.0pt;line-height:115%;font-family:\" calibri\",sans-serif;=\"\" mso-fareast-font-family:\"times=\"\" new=\"\" roman\";mso-bidi-font-family:vrinda;=\"\" mso-bidi-theme-font:minor-bidi\"=\"\"> </span><span style=\"font-size:14.0pt;\r\nline-height:115%;font-family:\" noto=\"\" sans=\"\" bengali\";mso-fareast-font-family:\"times=\"\" new=\"\" roman\"\"=\"\">হাসপাতাল</span><span style=\"font-size:14.0pt;line-height:115%;font-family:\" calibri\",sans-serif;=\"\" mso-fareast-font-family:\"times=\"\" new=\"\" roman\";mso-bidi-font-family:vrinda;=\"\" mso-bidi-theme-font:minor-bidi\"=\"\">, </span><span style=\"font-size:14.0pt;\r\nline-height:115%;font-family:\" noto=\"\" sans=\"\" bengali\";mso-fareast-font-family:\"times=\"\" new=\"\" roman\"\"=\"\">বরিশাল</span><span style=\"font-size:14.0pt;line-height:115%;font-family:\" noto=\"\" sans=\"\" devanagari\";=\"\" mso-fareast-font-family:\"times=\"\" new=\"\" roman\"\"=\"\">।</span><span style=\"font-size:14.0pt;\r\nline-height:115%;font-family:\" calibri\",sans-serif;mso-fareast-font-family:\"times=\"\" new=\"\" roman\";=\"\" mso-bidi-font-family:vrinda;mso-bidi-theme-font:minor-bidi\"=\"\"> <br>\r\n<br>\r\n</span><span style=\"font-size:14.0pt;line-height:115%;font-family:\" noto=\"\" sans=\"\" bengali\";=\"\" mso-fareast-font-family:\"times=\"\" new=\"\" roman\"\"=\"\">অধ্যাপক</span><span style=\"font-size:14.0pt;line-height:115%;font-family:\" calibri\",sans-serif;=\"\" mso-fareast-font-family:\"times=\"\" new=\"\" roman\";mso-bidi-font-family:vrinda;=\"\" mso-bidi-theme-font:minor-bidi\"=\"\"> </span><span style=\"font-size:14.0pt;\r\nline-height:115%;font-family:\" noto=\"\" sans=\"\" bengali\";mso-fareast-font-family:\"times=\"\" new=\"\" roman\"\"=\"\">ডাঃ</span><span style=\"font-size:14.0pt;line-height:115%;font-family:\" calibri\",sans-serif;=\"\" mso-fareast-font-family:\"times=\"\" new=\"\" roman\";mso-bidi-font-family:vrinda;=\"\" mso-bidi-theme-font:minor-bidi\"=\"\"> </span><span style=\"font-size:14.0pt;\r\nline-height:115%;font-family:\" noto=\"\" sans=\"\" bengali\";mso-fareast-font-family:\"times=\"\" new=\"\" roman\"\"=\"\">অসীত</span><span style=\"font-size:14.0pt;line-height:115%;font-family:\" calibri\",sans-serif;=\"\" mso-fareast-font-family:\"times=\"\" new=\"\" roman\";mso-bidi-font-family:vrinda;=\"\" mso-bidi-theme-font:minor-bidi\"=\"\"> </span><span style=\"font-size:14.0pt;\r\nline-height:115%;font-family:\" noto=\"\" sans=\"\" bengali\";mso-fareast-font-family:\"times=\"\" new=\"\" roman\"\"=\"\">ভূষন</span><span style=\"font-size:14.0pt;line-height:115%;font-family:\" calibri\",sans-serif;=\"\" mso-fareast-font-family:\"times=\"\" new=\"\" roman\";mso-bidi-font-family:vrinda;=\"\" mso-bidi-theme-font:minor-bidi\"=\"\"> </span><span style=\"font-size:14.0pt;\r\nline-height:115%;font-family:\" noto=\"\" sans=\"\" bengali\";mso-fareast-font-family:\"times=\"\" new=\"\" roman\"\"=\"\">দাস</span><span style=\"font-size:14.0pt;line-height:115%;font-family:\" calibri\",sans-serif;=\"\" mso-fareast-font-family:\"times=\"\" new=\"\" roman\";mso-bidi-font-family:vrinda;=\"\" mso-bidi-theme-font:minor-bidi\"=\"\"><br>\r\n</span><span style=\"font-size:14.0pt;line-height:115%;font-family:\" noto=\"\" sans=\"\" bengali\";=\"\" mso-fareast-font-family:\"times=\"\" new=\"\" roman\"\"=\"\">অধ্যাপক</span><span style=\"font-size:14.0pt;line-height:115%;font-family:\" calibri\",sans-serif;=\"\" mso-fareast-font-family:\"times=\"\" new=\"\" roman\";mso-bidi-font-family:vrinda;=\"\" mso-bidi-theme-font:minor-bidi\"=\"\"> </span><span style=\"font-size:14.0pt;\r\nline-height:115%;font-family:\" noto=\"\" sans=\"\" bengali\";mso-fareast-font-family:\"times=\"\" new=\"\" roman\"\"=\"\">গ্যাস্ট্রোএন্টারলজী</span><span style=\"font-size:14.0pt;line-height:115%;font-family:\" calibri\",sans-serif;=\"\" mso-fareast-font-family:\"times=\"\" new=\"\" roman\";mso-bidi-font-family:vrinda;=\"\" mso-bidi-theme-font:minor-bidi\"=\"\">,</span><span style=\"font-size:14.0pt;\r\nline-height:115%;font-family:\" noto=\"\" sans=\"\" bengali\";mso-fareast-font-family:\"times=\"\" new=\"\" roman\"\"=\"\">অধ্যক্ষ</span><span style=\"font-size:14.0pt;line-height:115%;font-family:\" calibri\",sans-serif;=\"\" mso-fareast-font-family:\"times=\"\" new=\"\" roman\";mso-bidi-font-family:vrinda;=\"\" mso-bidi-theme-font:minor-bidi\"=\"\">(</span><span style=\"font-size:14.0pt;\r\nline-height:115%;font-family:\" noto=\"\" sans=\"\" bengali\";mso-fareast-font-family:\"times=\"\" new=\"\" roman\"\"=\"\">অবঃ</span><span style=\"font-size:14.0pt;line-height:115%;font-family:\" calibri\",sans-serif;=\"\" mso-fareast-font-family:\"times=\"\" new=\"\" roman\";mso-bidi-font-family:vrinda;=\"\" mso-bidi-theme-font:minor-bidi\"=\"\">)<br>\r\n</span><span style=\"font-size:14.0pt;line-height:115%;font-family:\" noto=\"\" sans=\"\" bengali\";=\"\" mso-fareast-font-family:\"times=\"\" new=\"\" roman\"\"=\"\">শের</span><span style=\"font-size:\r\n14.0pt;line-height:115%;font-family:\" calibri\",sans-serif;mso-fareast-font-family:=\"\" \"times=\"\" new=\"\" roman\";mso-bidi-font-family:vrinda;mso-bidi-theme-font:minor-bidi\"=\"\">-</span><span style=\"font-size:14.0pt;line-height:115%;font-family:\" noto=\"\" sans=\"\" bengali\";=\"\" mso-fareast-font-family:\"times=\"\" new=\"\" roman\"\"=\"\">ই</span><span style=\"font-size:14.0pt;\r\nline-height:115%;font-family:\" calibri\",sans-serif;mso-fareast-font-family:\"times=\"\" new=\"\" roman\";=\"\" mso-bidi-font-family:vrinda;mso-bidi-theme-font:minor-bidi\"=\"\">-</span><span style=\"font-size:14.0pt;line-height:115%;font-family:\" noto=\"\" sans=\"\" bengali\";=\"\" mso-fareast-font-family:\"times=\"\" new=\"\" roman\"\"=\"\">বাংলা</span><span style=\"font-size:\r\n14.0pt;line-height:115%;font-family:\" calibri\",sans-serif;mso-fareast-font-family:=\"\" \"times=\"\" new=\"\" roman\";mso-bidi-font-family:vrinda;mso-bidi-theme-font:minor-bidi\"=\"\"> </span><span style=\"font-size:14.0pt;line-height:115%;font-family:\" noto=\"\" sans=\"\" bengali\";=\"\" mso-fareast-font-family:\"times=\"\" new=\"\" roman\"\"=\"\">মেডিকেল</span><span style=\"font-size:14.0pt;line-height:115%;font-family:\" calibri\",sans-serif;=\"\" mso-fareast-font-family:\"times=\"\" new=\"\" roman\";mso-bidi-font-family:vrinda;=\"\" mso-bidi-theme-font:minor-bidi\"=\"\"> </span><span style=\"font-size:14.0pt;\r\nline-height:115%;font-family:\" noto=\"\" sans=\"\" bengali\";mso-fareast-font-family:\"times=\"\" new=\"\" roman\"\"=\"\">কলেজ</span><span style=\"font-size:14.0pt;line-height:115%;font-family:\" calibri\",sans-serif;=\"\" mso-fareast-font-family:\"times=\"\" new=\"\" roman\";mso-bidi-font-family:vrinda;=\"\" mso-bidi-theme-font:minor-bidi\"=\"\"> </span><span style=\"font-size:14.0pt;\r\nline-height:115%;font-family:\" noto=\"\" sans=\"\" bengali\";mso-fareast-font-family:\"times=\"\" new=\"\" roman\"\"=\"\">ও</span><span style=\"font-size:14.0pt;line-height:115%;font-family:\" calibri\",sans-serif;=\"\" mso-fareast-font-family:\"times=\"\" new=\"\" roman\";mso-bidi-font-family:vrinda;=\"\" mso-bidi-theme-font:minor-bidi\"=\"\"> </span><span style=\"font-size:14.0pt;\r\nline-height:115%;font-family:\" noto=\"\" sans=\"\" bengali\";mso-fareast-font-family:\"times=\"\" new=\"\" roman\"\"=\"\">হাসপাতাল</span><span style=\"font-size:14.0pt;line-height:115%;font-family:\" calibri\",sans-serif;=\"\" mso-fareast-font-family:\"times=\"\" new=\"\" roman\";mso-bidi-font-family:vrinda;=\"\" mso-bidi-theme-font:minor-bidi\"=\"\">, </span><span style=\"font-size:14.0pt;\r\nline-height:115%;font-family:\" noto=\"\" sans=\"\" bengali\";mso-fareast-font-family:\"times=\"\" new=\"\" roman\"\"=\"\">বরিশাল</span><span style=\"font-size:14.0pt;line-height:115%;font-family:\" noto=\"\" sans=\"\" devanagari\";=\"\" mso-fareast-font-family:\"times=\"\" new=\"\" roman\"\"=\"\">।</span><span style=\"font-size:14.0pt;\r\nline-height:115%;font-family:\" calibri\",sans-serif;mso-fareast-font-family:\"times=\"\" new=\"\" roman\";=\"\" mso-bidi-font-family:vrinda;mso-bidi-theme-font:minor-bidi\"=\"\"> <br>\r\n<br>\r\n</span><span style=\"font-size:14.0pt;line-height:115%;font-family:\" noto=\"\" sans=\"\" bengali\";=\"\" mso-fareast-font-family:\"times=\"\" new=\"\" roman\"\"=\"\">ডাঃ</span><span style=\"font-size:\r\n14.0pt;line-height:115%;font-family:\" calibri\",sans-serif;mso-fareast-font-family:=\"\" \"times=\"\" new=\"\" roman\";mso-bidi-font-family:vrinda;mso-bidi-theme-font:minor-bidi\"=\"\"> </span><span style=\"font-size:14.0pt;line-height:115%;font-family:\" noto=\"\" sans=\"\" bengali\";=\"\" mso-fareast-font-family:\"times=\"\" new=\"\" roman\"\"=\"\">তপন</span><span style=\"font-size:\r\n14.0pt;line-height:115%;font-family:\" calibri\",sans-serif;mso-fareast-font-family:=\"\" \"times=\"\" new=\"\" roman\";mso-bidi-font-family:vrinda;mso-bidi-theme-font:minor-bidi\"=\"\"> </span><span style=\"font-size:14.0pt;line-height:115%;font-family:\" noto=\"\" sans=\"\" bengali\";=\"\" mso-fareast-font-family:\"times=\"\" new=\"\" roman\"\"=\"\">কুমার</span><span style=\"font-size:\r\n14.0pt;line-height:115%;font-family:\" calibri\",sans-serif;mso-fareast-font-family:=\"\" \"times=\"\" new=\"\" roman\";mso-bidi-font-family:vrinda;mso-bidi-theme-font:minor-bidi\"=\"\"> </span><span style=\"font-size:14.0pt;line-height:115%;font-family:\" noto=\"\" sans=\"\" bengali\";=\"\" mso-fareast-font-family:\"times=\"\" new=\"\" roman\"\"=\"\">শীল</span><span style=\"font-size:\r\n14.0pt;line-height:115%;font-family:\" calibri\",sans-serif;mso-fareast-font-family:=\"\" \"times=\"\" new=\"\" roman\";mso-bidi-font-family:vrinda;mso-bidi-theme-font:minor-bidi\"=\"\"><br>\r\n</span><span style=\"font-size:14.0pt;line-height:115%;font-family:\" noto=\"\" sans=\"\" bengali\";=\"\" mso-fareast-font-family:\"times=\"\" new=\"\" roman\"\"=\"\">অর্থোপেডিক</span><span style=\"font-size:14.0pt;line-height:115%;font-family:\" calibri\",sans-serif;=\"\" mso-fareast-font-family:\"times=\"\" new=\"\" roman\";mso-bidi-font-family:vrinda;=\"\" mso-bidi-theme-font:minor-bidi\"=\"\"> </span><span style=\"font-size:14.0pt;\r\nline-height:115%;font-family:\" noto=\"\" sans=\"\" bengali\";mso-fareast-font-family:\"times=\"\" new=\"\" roman\"\"=\"\">বিশেষজ্ঞ</span><span style=\"font-size:14.0pt;line-height:115%;font-family:\" calibri\",sans-serif;=\"\" mso-fareast-font-family:\"times=\"\" new=\"\" roman\";mso-bidi-font-family:vrinda;=\"\" mso-bidi-theme-font:minor-bidi\"=\"\"> </span><span style=\"font-size:14.0pt;\r\nline-height:115%;font-family:\" noto=\"\" sans=\"\" bengali\";mso-fareast-font-family:\"times=\"\" new=\"\" roman\"\"=\"\">সার্জন</span><span style=\"font-size:14.0pt;line-height:115%;font-family:\" noto=\"\" sans=\"\" devanagari\";=\"\" mso-fareast-font-family:\"times=\"\" new=\"\" roman\"\"=\"\">।</span><span style=\"font-size:14.0pt;\r\nline-height:115%;font-family:\" calibri\",sans-serif;mso-fareast-font-family:\"times=\"\" new=\"\" roman\";=\"\" mso-bidi-font-family:vrinda;mso-bidi-theme-font:minor-bidi\"=\"\"> <br>\r\n<br>\r\n<br>\r\n<br>\r\n</span><span style=\"font-size:14.0pt;line-height:115%;font-family:\" noto=\"\" sans=\"\" bengali\";=\"\" mso-fareast-font-family:\"times=\"\" new=\"\" roman\"\"=\"\">অধ্যাপক</span><span style=\"font-size:14.0pt;line-height:115%;font-family:\" calibri\",sans-serif;=\"\" mso-fareast-font-family:\"times=\"\" new=\"\" roman\";mso-bidi-font-family:vrinda;=\"\" mso-bidi-theme-font:minor-bidi\"=\"\"> </span><span style=\"font-size:14.0pt;\r\nline-height:115%;font-family:\" noto=\"\" sans=\"\" bengali\";mso-fareast-font-family:\"times=\"\" new=\"\" roman\"\"=\"\">ডাক্তার</span><span style=\"font-size:14.0pt;line-height:115%;font-family:\" calibri\",sans-serif;=\"\" mso-fareast-font-family:\"times=\"\" new=\"\" roman\";mso-bidi-font-family:vrinda;=\"\" mso-bidi-theme-font:minor-bidi\"=\"\"> </span><span style=\"font-size:14.0pt;\r\nline-height:115%;font-family:\" noto=\"\" sans=\"\" bengali\";mso-fareast-font-family:\"times=\"\" new=\"\" roman\"\"=\"\">রনজিৎ</span><span style=\"font-size:14.0pt;line-height:115%;font-family:\" calibri\",sans-serif;=\"\" mso-fareast-font-family:\"times=\"\" new=\"\" roman\";mso-bidi-font-family:vrinda;=\"\" mso-bidi-theme-font:minor-bidi\"=\"\"> </span><span style=\"font-size:14.0pt;\r\nline-height:115%;font-family:\" noto=\"\" sans=\"\" bengali\";mso-fareast-font-family:\"times=\"\" new=\"\" roman\"\"=\"\">খাঁ</span><span style=\"font-size:14.0pt;line-height:115%;font-family:\" calibri\",sans-serif;=\"\" mso-fareast-font-family:\"times=\"\" new=\"\" roman\";mso-bidi-font-family:vrinda;=\"\" mso-bidi-theme-font:minor-bidi\"=\"\"><br>\r\n</span><span style=\"font-size:14.0pt;line-height:115%;font-family:\" noto=\"\" sans=\"\" bengali\";=\"\" mso-fareast-font-family:\"times=\"\" new=\"\" roman\"\"=\"\">অধ্যক্ষ</span><span style=\"font-size:14.0pt;line-height:115%;font-family:\" calibri\",sans-serif;=\"\" mso-fareast-font-family:\"times=\"\" new=\"\" roman\";mso-bidi-font-family:vrinda;=\"\" mso-bidi-theme-font:minor-bidi\"=\"\"> </span><span style=\"font-size:14.0pt;\r\nline-height:115%;font-family:\" noto=\"\" sans=\"\" bengali\";mso-fareast-font-family:\"times=\"\" new=\"\" roman\"\"=\"\">ও</span><span style=\"font-size:14.0pt;line-height:115%;font-family:\" calibri\",sans-serif;=\"\" mso-fareast-font-family:\"times=\"\" new=\"\" roman\";mso-bidi-font-family:vrinda;=\"\" mso-bidi-theme-font:minor-bidi\"=\"\"> </span><span style=\"font-size:14.0pt;\r\nline-height:115%;font-family:\" noto=\"\" sans=\"\" bengali\";mso-fareast-font-family:\"times=\"\" new=\"\" roman\"\"=\"\">বিভাগীয়</span><span style=\"font-size:14.0pt;line-height:115%;font-family:\" calibri\",sans-serif;=\"\" mso-fareast-font-family:\"times=\"\" new=\"\" roman\";mso-bidi-font-family:vrinda;=\"\" mso-bidi-theme-font:minor-bidi\"=\"\"> </span><span style=\"font-size:14.0pt;\r\nline-height:115%;font-family:\" noto=\"\" sans=\"\" bengali\";mso-fareast-font-family:\"times=\"\" new=\"\" roman\"\"=\"\">প্রধান</span><span style=\"font-size:14.0pt;line-height:115%;font-family:\" calibri\",sans-serif;=\"\" mso-fareast-font-family:\"times=\"\" new=\"\" roman\";mso-bidi-font-family:vrinda;=\"\" mso-bidi-theme-font:minor-bidi\"=\"\"> (</span><span style=\"font-size:14.0pt;\r\nline-height:115%;font-family:\" noto=\"\" sans=\"\" bengali\";mso-fareast-font-family:\"times=\"\" new=\"\" roman\"\"=\"\">প্রাক্তন</span><span style=\"font-size:14.0pt;line-height:115%;font-family:\" calibri\",sans-serif;=\"\" mso-fareast-font-family:\"times=\"\" new=\"\" roman\";mso-bidi-font-family:vrinda;=\"\" mso-bidi-theme-font:minor-bidi\"=\"\">) <br>\r\n</span><span style=\"font-size:14.0pt;line-height:115%;font-family:\" noto=\"\" sans=\"\" bengali\";=\"\" mso-fareast-font-family:\"times=\"\" new=\"\" roman\"\"=\"\">শের</span><span style=\"font-size:\r\n14.0pt;line-height:115%;font-family:\" calibri\",sans-serif;mso-fareast-font-family:=\"\" \"times=\"\" new=\"\" roman\";mso-bidi-font-family:vrinda;mso-bidi-theme-font:minor-bidi\"=\"\">-</span><span style=\"font-size:14.0pt;line-height:115%;font-family:\" noto=\"\" sans=\"\" bengali\";=\"\" mso-fareast-font-family:\"times=\"\" new=\"\" roman\"\"=\"\">ই</span><span style=\"font-size:14.0pt;\r\nline-height:115%;font-family:\" calibri\",sans-serif;mso-fareast-font-family:\"times=\"\" new=\"\" roman\";=\"\" mso-bidi-font-family:vrinda;mso-bidi-theme-font:minor-bidi\"=\"\">-</span><span style=\"font-size:14.0pt;line-height:115%;font-family:\" noto=\"\" sans=\"\" bengali\";=\"\" mso-fareast-font-family:\"times=\"\" new=\"\" roman\"\"=\"\">বাংলা</span><span style=\"font-size:\r\n14.0pt;line-height:115%;font-family:\" calibri\",sans-serif;mso-fareast-font-family:=\"\" \"times=\"\" new=\"\" roman\";mso-bidi-font-family:vrinda;mso-bidi-theme-font:minor-bidi\"=\"\"> </span><span style=\"font-size:14.0pt;line-height:115%;font-family:\" noto=\"\" sans=\"\" bengali\";=\"\" mso-fareast-font-family:\"times=\"\" new=\"\" roman\"\"=\"\">মেডিকেল</span><span style=\"font-size:14.0pt;line-height:115%;font-family:\" calibri\",sans-serif;=\"\" mso-fareast-font-family:\"times=\"\" new=\"\" roman\";mso-bidi-font-family:vrinda;=\"\" mso-bidi-theme-font:minor-bidi\"=\"\"> </span><span style=\"font-size:14.0pt;\r\nline-height:115%;font-family:\" noto=\"\" sans=\"\" bengali\";mso-fareast-font-family:\"times=\"\" new=\"\" roman\"\"=\"\">কলেজ</span><span style=\"font-size:14.0pt;line-height:115%;font-family:\" calibri\",sans-serif;=\"\" mso-fareast-font-family:\"times=\"\" new=\"\" roman\";mso-bidi-font-family:vrinda;=\"\" mso-bidi-theme-font:minor-bidi\"=\"\"> </span><span style=\"font-size:14.0pt;\r\nline-height:115%;font-family:\" noto=\"\" sans=\"\" bengali\";mso-fareast-font-family:\"times=\"\" new=\"\" roman\"\"=\"\">ও</span><span style=\"font-size:14.0pt;line-height:115%;font-family:\" calibri\",sans-serif;=\"\" mso-fareast-font-family:\"times=\"\" new=\"\" roman\";mso-bidi-font-family:vrinda;=\"\" mso-bidi-theme-font:minor-bidi\"=\"\"> </span><span style=\"font-size:14.0pt;\r\nline-height:115%;font-family:\" noto=\"\" sans=\"\" bengali\";mso-fareast-font-family:\"times=\"\" new=\"\" roman\"\"=\"\">হাসপাতাল</span><span style=\"font-size:14.0pt;line-height:115%;font-family:\" calibri\",sans-serif;=\"\" mso-fareast-font-family:\"times=\"\" new=\"\" roman\";mso-bidi-font-family:vrinda;=\"\" mso-bidi-theme-font:minor-bidi\"=\"\">, </span><span style=\"font-size:14.0pt;\r\nline-height:115%;font-family:\" noto=\"\" sans=\"\" bengali\";mso-fareast-font-family:\"times=\"\" new=\"\" roman\"\"=\"\">বরিশাল</span><span style=\"font-size:14.0pt;line-height:115%;font-family:\" noto=\"\" sans=\"\" devanagari\";=\"\" mso-fareast-font-family:\"times=\"\" new=\"\" roman\"\"=\"\">।</span><span style=\"font-size:14.0pt;\r\nline-height:115%;font-family:\" calibri\",sans-serif;mso-fareast-font-family:\"times=\"\" new=\"\" roman\";=\"\" mso-bidi-font-family:vrinda;mso-bidi-theme-font:minor-bidi\"=\"\"> <br>\r\n<br>\r\n</span><span style=\"font-size:14.0pt;line-height:115%;font-family:\" noto=\"\" sans=\"\" bengali\";=\"\" mso-fareast-font-family:\"times=\"\" new=\"\" roman\"\"=\"\">অধ্যাপক</span><span style=\"font-size:14.0pt;line-height:115%;font-family:\" calibri\",sans-serif;=\"\" mso-fareast-font-family:\"times=\"\" new=\"\" roman\";mso-bidi-font-family:vrinda;=\"\" mso-bidi-theme-font:minor-bidi\"=\"\"> </span><span style=\"font-size:14.0pt;\r\nline-height:115%;font-family:\" noto=\"\" sans=\"\" bengali\";mso-fareast-font-family:\"times=\"\" new=\"\" roman\"\"=\"\">ডাঃ</span><span style=\"font-size:14.0pt;line-height:115%;font-family:\" calibri\",sans-serif;=\"\" mso-fareast-font-family:\"times=\"\" new=\"\" roman\";mso-bidi-font-family:vrinda;=\"\" mso-bidi-theme-font:minor-bidi\"=\"\"> </span><span style=\"font-size:14.0pt;\r\nline-height:115%;font-family:\" noto=\"\" sans=\"\" bengali\";mso-fareast-font-family:\"times=\"\" new=\"\" roman\"\"=\"\">তড়িৎ</span><span style=\"font-size:14.0pt;line-height:115%;font-family:\" calibri\",sans-serif;=\"\" mso-fareast-font-family:\"times=\"\" new=\"\" roman\";mso-bidi-font-family:vrinda;=\"\" mso-bidi-theme-font:minor-bidi\"=\"\"> </span><span style=\"font-size:14.0pt;\r\nline-height:115%;font-family:\" noto=\"\" sans=\"\" bengali\";mso-fareast-font-family:\"times=\"\" new=\"\" roman\"\"=\"\">কুমার</span><span style=\"font-size:14.0pt;line-height:115%;font-family:\" calibri\",sans-serif;=\"\" mso-fareast-font-family:\"times=\"\" new=\"\" roman\";mso-bidi-font-family:vrinda;=\"\" mso-bidi-theme-font:minor-bidi\"=\"\"> </span><span style=\"font-size:14.0pt;\r\nline-height:115%;font-family:\" noto=\"\" sans=\"\" bengali\";mso-fareast-font-family:\"times=\"\" new=\"\" roman\"\"=\"\">সমদ্দার</span><span style=\"font-size:14.0pt;line-height:115%;font-family:\" calibri\",sans-serif;=\"\" mso-fareast-font-family:\"times=\"\" new=\"\" roman\";mso-bidi-font-family:vrinda;=\"\" mso-bidi-theme-font:minor-bidi\"=\"\"><br>\r\n</span><span style=\"font-size:14.0pt;line-height:115%;font-family:\" noto=\"\" sans=\"\" bengali\";=\"\" mso-fareast-font-family:\"times=\"\" new=\"\" roman\"\"=\"\">অধ্যাপক</span><span style=\"font-size:14.0pt;line-height:115%;font-family:\" calibri\",sans-serif;=\"\" mso-fareast-font-family:\"times=\"\" new=\"\" roman\";mso-bidi-font-family:vrinda;=\"\" mso-bidi-theme-font:minor-bidi\"=\"\"> </span><span style=\"font-size:14.0pt;\r\nline-height:115%;font-family:\" noto=\"\" sans=\"\" bengali\";mso-fareast-font-family:\"times=\"\" new=\"\" roman\"\"=\"\">ও</span><span style=\"font-size:14.0pt;line-height:115%;font-family:\" calibri\",sans-serif;=\"\" mso-fareast-font-family:\"times=\"\" new=\"\" roman\";mso-bidi-font-family:vrinda;=\"\" mso-bidi-theme-font:minor-bidi\"=\"\"> </span><span style=\"font-size:14.0pt;\r\nline-height:115%;font-family:\" noto=\"\" sans=\"\" bengali\";mso-fareast-font-family:\"times=\"\" new=\"\" roman\"\"=\"\">বিভাগীয়</span><span style=\"font-size:14.0pt;line-height:115%;font-family:\" calibri\",sans-serif;=\"\" mso-fareast-font-family:\"times=\"\" new=\"\" roman\";mso-bidi-font-family:vrinda;=\"\" mso-bidi-theme-font:minor-bidi\"=\"\"> </span><span style=\"font-size:14.0pt;\r\nline-height:115%;font-family:\" noto=\"\" sans=\"\" bengali\";mso-fareast-font-family:\"times=\"\" new=\"\" roman\"\"=\"\">প্রধান</span><span style=\"font-size:14.0pt;line-height:115%;font-family:\" calibri\",sans-serif;=\"\" mso-fareast-font-family:\"times=\"\" new=\"\" roman\";mso-bidi-font-family:vrinda;=\"\" mso-bidi-theme-font:minor-bidi\"=\"\"> (</span><span style=\"font-size:14.0pt;\r\nline-height:115%;font-family:\" noto=\"\" sans=\"\" bengali\";mso-fareast-font-family:\"times=\"\" new=\"\" roman\"\"=\"\">অবঃ</span><span style=\"font-size:14.0pt;line-height:115%;font-family:\" calibri\",sans-serif;=\"\" mso-fareast-font-family:\"times=\"\" new=\"\" roman\";mso-bidi-font-family:vrinda;=\"\" mso-bidi-theme-font:minor-bidi\"=\"\">)<br>\r\n</span><span style=\"font-size:14.0pt;line-height:115%;font-family:\" noto=\"\" sans=\"\" bengali\";=\"\" mso-fareast-font-family:\"times=\"\" new=\"\" roman\"\"=\"\">শের</span><span style=\"font-size:\r\n14.0pt;line-height:115%;font-family:\" calibri\",sans-serif;mso-fareast-font-family:=\"\" \"times=\"\" new=\"\" roman\";mso-bidi-font-family:vrinda;mso-bidi-theme-font:minor-bidi\"=\"\">-</span><span style=\"font-size:14.0pt;line-height:115%;font-family:\" noto=\"\" sans=\"\" bengali\";=\"\" mso-fareast-font-family:\"times=\"\" new=\"\" roman\"\"=\"\">ই</span><span style=\"font-size:14.0pt;\r\nline-height:115%;font-family:\" calibri\",sans-serif;mso-fareast-font-family:\"times=\"\" new=\"\" roman\";=\"\" mso-bidi-font-family:vrinda;mso-bidi-theme-font:minor-bidi\"=\"\">-</span><span style=\"font-size:14.0pt;line-height:115%;font-family:\" noto=\"\" sans=\"\" bengali\";=\"\" mso-fareast-font-family:\"times=\"\" new=\"\" roman\"\"=\"\">বাংলা</span><span style=\"font-size:\r\n14.0pt;line-height:115%;font-family:\" calibri\",sans-serif;mso-fareast-font-family:=\"\" \"times=\"\" new=\"\" roman\";mso-bidi-font-family:vrinda;mso-bidi-theme-font:minor-bidi\"=\"\"> </span><span style=\"font-size:14.0pt;line-height:115%;font-family:\" noto=\"\" sans=\"\" bengali\";=\"\" mso-fareast-font-family:\"times=\"\" new=\"\" roman\"\"=\"\">মেডিকেল</span><span style=\"font-size:14.0pt;line-height:115%;font-family:\" calibri\",sans-serif;=\"\" mso-fareast-font-family:\"times=\"\" new=\"\" roman\";mso-bidi-font-family:vrinda;=\"\" mso-bidi-theme-font:minor-bidi\"=\"\"> </span><span style=\"font-size:14.0pt;\r\nline-height:115%;font-family:\" noto=\"\" sans=\"\" bengali\";mso-fareast-font-family:\"times=\"\" new=\"\" roman\"\"=\"\">কলেজ</span><span style=\"font-size:14.0pt;line-height:115%;font-family:\" calibri\",sans-serif;=\"\" mso-fareast-font-family:\"times=\"\" new=\"\" roman\";mso-bidi-font-family:vrinda;=\"\" mso-bidi-theme-font:minor-bidi\"=\"\"> </span><span style=\"font-size:14.0pt;\r\nline-height:115%;font-family:\" noto=\"\" sans=\"\" bengali\";mso-fareast-font-family:\"times=\"\" new=\"\" roman\"\"=\"\">ও</span><span style=\"font-size:14.0pt;line-height:115%;font-family:\" calibri\",sans-serif;=\"\" mso-fareast-font-family:\"times=\"\" new=\"\" roman\";mso-bidi-font-family:vrinda;=\"\" mso-bidi-theme-font:minor-bidi\"=\"\"> </span><span style=\"font-size:14.0pt;\r\nline-height:115%;font-family:\" noto=\"\" sans=\"\" bengali\";mso-fareast-font-family:\"times=\"\" new=\"\" roman\"\"=\"\">হাসপাতাল</span><span style=\"font-size:14.0pt;line-height:115%;font-family:\" calibri\",sans-serif;=\"\" mso-fareast-font-family:\"times=\"\" new=\"\" roman\";mso-bidi-font-family:vrinda;=\"\" mso-bidi-theme-font:minor-bidi\"=\"\">, </span><span style=\"font-size:14.0pt;\r\nline-height:115%;font-family:\" noto=\"\" sans=\"\" bengali\";mso-fareast-font-family:\"times=\"\" new=\"\" roman\"\"=\"\">বরিশাল</span><span style=\"font-size:14.0pt;line-height:115%;font-family:\" noto=\"\" sans=\"\" devanagari\";=\"\" mso-fareast-font-family:\"times=\"\" new=\"\" roman\"\"=\"\">।<o:p></o:p></span></p><div style=\"mso-element:para-border-div;border:none;border-bottom:double windowtext 2.25pt;\r\npadding:0cm 0cm 1.0pt 0cm\">\r\n\r\n<p class=\"MsoNormal\" style=\"border:none;mso-border-bottom-alt:double windowtext 2.25pt;\r\npadding:0cm;mso-padding-alt:0cm 0cm 1.0pt 0cm\"><span style=\"font-size:14.0pt;\r\nline-height:115%;font-family:\" noto=\"\" sans=\"\" devanagari\";mso-fareast-font-family:=\"\" \"times=\"\" new=\"\" roman\"\"=\"\">&nbsp;</span></p>\r\n\r\n</div><p class=\"MsoNormal\"><span style=\"font-size:15.0pt;line-height:115%;font-family:\r\n\" noto=\"\" sans=\"\" devanagari\";mso-fareast-font-family:\"times=\"\" new=\"\" roman\"\"=\"\">&nbsp;</span></p><p class=\"MsoNormal\"><span style=\"font-size:15.0pt;line-height:115%;font-family:\r\n\" noto=\"\" sans=\"\" devanagari\";mso-fareast-font-family:\"times=\"\" new=\"\" roman\"\"=\"\">&nbsp;</span></p><p class=\"MsoNormal\"><span lang=\"BN\" style=\"font-size: 14pt; line-height: 115%; font-family: \" shonar=\"\" bangla\",=\"\" sans-serif;=\"\" color:=\"\" rgb(32,=\"\" 33,=\"\" 36);=\"\" letter-spacing:=\"\" 0.1pt;=\"\" background-image:=\"\" initial;=\"\" background-position:=\"\" background-size:=\"\" background-repeat:=\"\" background-attachment:=\"\" background-origin:=\"\" background-clip:=\"\" initial;\"=\"\">মেডিসিন ও কিডনি বিশেষজ্ঞ</span><span style=\"font-size:14.0pt;line-height:\r\n115%;font-family:Roboto;color:#202124;letter-spacing:.1pt\"><br>\r\n<br>\r\n</span><span lang=\"BN\" style=\"font-size: 14pt; line-height: 115%; font-family: \" shonar=\"\" bangla\",=\"\" sans-serif;=\"\" color:=\"\" rgb(32,=\"\" 33,=\"\" 36);=\"\" letter-spacing:=\"\" 0.1pt;=\"\" background-image:=\"\" initial;=\"\" background-position:=\"\" background-size:=\"\" background-repeat:=\"\" background-attachment:=\"\" background-origin:=\"\" background-clip:=\"\" initial;\"=\"\">ডাঃ মানবেন্দ্র দাস</span><span style=\"font-size:14.0pt;line-height:115%;font-family:Roboto;color:#202124;\r\nletter-spacing:.1pt\"><br>\r\n</span><span lang=\"BN\" style=\"font-size: 14pt; line-height: 115%; font-family: \" shonar=\"\" bangla\",=\"\" sans-serif;=\"\" color:=\"\" rgb(32,=\"\" 33,=\"\" 36);=\"\" letter-spacing:=\"\" 0.1pt;=\"\" background-image:=\"\" initial;=\"\" background-position:=\"\" background-size:=\"\" background-repeat:=\"\" background-attachment:=\"\" background-origin:=\"\" background-clip:=\"\" initial;\"=\"\">এমবিবিএস</span><span style=\"font-size: 14pt; line-height: 115%; font-family: Roboto; color: rgb(32, 33, 36); letter-spacing: 0.1pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">, </span><span lang=\"BN\" style=\"font-size: 14pt; line-height: 115%; font-family: \" shonar=\"\" bangla\",=\"\" sans-serif;=\"\" color:=\"\" rgb(32,=\"\" 33,=\"\" 36);=\"\" letter-spacing:=\"\" 0.1pt;=\"\" background-image:=\"\" initial;=\"\" background-position:=\"\" background-size:=\"\" background-repeat:=\"\" background-attachment:=\"\" background-origin:=\"\" background-clip:=\"\" initial;\"=\"\">এমডি (নেফ্রোলজী-বিএসএমএমইউ</span></p>', '', 'sdfsdf', '6798769375281_1738050993.pdf', '1738045075', '1738050993', '1', 0, 1);
INSERT INTO `notice` (`id`, `title`, `details`, `dept`, `reference`, `link`, `added_on`, `updated_on`, `user_id`, `upload_status`, `status`) VALUES
('67988dfc9ea60', 'Demo', '<p>Demo notice&nbsp;</p>', '', 'test ', '67988dfc9ea60_1738051068.pdf', '1738051068', '', '1', 0, 1),
('67988eda624ff', 'test', '', '', '', '67988eda624ff_1738051290.pdf', '1738051290', '', '1', 1, 1),
('6798956293fa9', 'TEST', '<p>TEST</p>', '', 'REF TEST', '6798956293fa9_1738069779.pdf', '1738052962', '', '1', 0, 1);

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
('6793d50b59d1e', '6793d358addfc', 'dfbdfbergfdrv', 1),
('6798769376d51', '6798769375281', 'dfgddfv', 1),
('67988db197784', '6798769375281', 'dfbddb', 1),
('67988dfca01c7', '67988dfc9ea60', 'dfgddfv', 1),
('67988dfca092f', '67988dfc9ea60', 'fdgdfg', 1),
('67988dfca2165', '67988dfc9ea60', '677cea5825d80', 1),
('67988dfca28a5', '67988dfc9ea60', '677ceafcacdae', 1),
('67988dfca2f8f', '67988dfc9ea60', 'dfbddb', 1),
('67988dfca35ba', '67988dfc9ea60', 'dfdfbfdgdfg', 1),
('67988dfca3df6', '67988dfc9ea60', 'dfeggegxdv', 1),
('67988dfca435a', '67988dfc9ea60', 'DFGDFVDFBB', 1),
('67988dfca4f4b', '67988dfc9ea60', 'dfbdfbergfdrv', 1),
('679895629456b', '6798956293fa9', '677cea5825d80', 1),
('6798956294a9e', '6798956293fa9', 'dfgddfv', 1);

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
('67989c0243271', 'MD. LITON RABBANI', '1738054658.jpg', 'Assistant Professor & Head, Civil Engineering Department', '+8801831-037220', 'litonkce01@gmail.com', '', '', '', '', '<p>Masters of Engineering in Civil Engineering .</p><p>\r\nThe University of Asia Pacific, Dhaka, Bangladesh.</p><p>\r\nCGPA- 3.28 out of 4.00</p><p>\r\nB.Sc in Civil Engineering\r\nKhulna University of Engineering and Technology (KUET), Khulna.</p><p>\r\nCGPA-3.20 out of 4.00</p><p>Higher Secondary School Certificate (HSC)\r\nNaogaon Government College, Naogaon, Rajshahi\r\n</p><p>Marks: 734 out of 1000\r\n&nbsp;</p><p>Secondary School Certificate (SSC)\r\nBegun Joir high School, Naogaon, Rajshahi\r\n</p><p>Marks : 744 out of 1000</p>', '<p>Assistant Professor &amp; Head, Civil Engineering Department (July,2019 to till now)</p><p>Barishal Engineering College, Affiliated Engineering College, University of Dhaka .</p><p>Assistant Professor, Civil Engineering Department (Dec., 2017 – July 2019)&nbsp;</p><p>Faridpur Engineering College, Affiliated Engineering College, University of Dhaka</p><p>Instructor &amp; Head , Construction Technolog (April, 2007 – Dec., 2019)</p><p>Tangail Polytechnic Institute</p><p>Project Engineer(Civil ) (Feb,2006 – April 2007)</p><p>Ringtech Limited</p><p><br></p>', '', '<p><br></p>', '', '<p>•University Merit scholarship\r\n</p><p>•Class Eight Scholarship&nbsp;</p>', '<p>1. Pollution Sources Assesment of Turag River, Bangladesh</p><p>Link:https://www.iosrjournals.org/iosr-jmce/papers/vol14-issue2/Version-3/K1402038491.pdf</p><p>2. Evaluation of Pollution Status of Turag River, Bangladesh</p><p>Link: http://matjournals.in/index.php/JoWRPS/article/view/2331</p><p>3. A Study on Low Cost Roof (Masonry Slab)</p><p>Link:&nbsp;<a href=\"https://www.ajer.org/papers/v6(03)/F06033236.pdf\" target=\"_blank\">https://www.ajer.org/papers/v6(03)/F06033236.pdf</a></p><p>4. Characteristics of Geology in Khulna City Corporation (KCC) Area, Bangladesh</p><p>Link:&nbsp;<a href=\"http://engineeringjournals.stmjournals.in/index.php/JoGE/article/view/40284.\" target=\"_blank\">http://engineeringjournals.stmjournals.in/index.php/JoGE/article/view/40284.</a></p><p>5.Characteristics of Geology in Khulna City Corporation (KCC) Area, Bangladesh</p><p>Link:&nbsp;<a href=\"http://engineeringjournals.stmjournals.in/index.php/JoGE/article/view/4028\" target=\"_blank\">http://engineeringjournals.stmjournals.in/index.php/JoGE/article/view/4028</a></p><p>6.Experimental Investigation of Load Deflection Characteristics of Beam with Various End Conditions of Different Materials</p>', '0', '', '1984-02-07', 'public', 'active'),
('6798db2856fe7', 'Dhruboraj Roy', '1738070824.jpg', 'Assistant Professor & Head, Civil Engineering Department', '01705927257', 'dhruborajroy3@gmail.com', '', '<p>ert</p>', '#', '#', '<p>sd</p>', '<p>sdf</p>', '<p>sf</p>', '<p>ert</p>', '<p>sdf</p>', '<p>sdf</p>', '<p>sdf</p>', '0', '', '2025-01-29', 'public', 'active'),
('6798db6a59062', 'Dhruboraj Roy', '1738070890.jpg', 'Assistant Professor & Head, Civil Engineering Department', '01705927257', 'dhruborajroy3@gmail.com', '', '<p>ert</p>', '#', '#', '<p>sd</p>', '<p>sdf</p>', '<p>sf</p>', '<p>ert</p>', '<p>sdf</p>', '<p>sdf</p>', '<p>sdf</p>', '0', '', '2025-01-29', 'public', 'active'),
('6798db92b6f52', 'Dhruboraj Roy', '1738070930.jpg', 'Professor ', '017059272573', 'dhruborajroy3@gmail.com', '', '<p>er</p>', '', '', '', '', '', '<p>ert</p>', '', '', '', '0', '', '0000-00-00', 'public', 'active'),
('6798dbf8d5881', 'Dhruboraj Roy', '1738071032.jpg', 'Professor ', '017059272573', 'dhruborajroy3@gmail.com', '', '<p>er</p>', '', '', '', '', '', '<p>ert</p>', '', '', '', '0', 'Officers', '0000-00-00', 'public', 'active');

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
('6795f7618ee81', '1', 'dfgfdg', '4', 0, 0, 1737881441, ''),
('6796691e6655f', '1', 'sdf', '1', 1, 1, 1737910558, 'Approved'),
('67966a3f54eb3', '1', 'ki', '2', 0, 0, 1737910847, 'Approved'),
('6797b3a901e6b', '1', 'zdfhddfgdfg', '3', 0, 0, 1737995177, '0'),
('6797d5c233038', '1', 'fgh', '1', 1, 1, 1738003906, 'Approved'),
('67986b59f00ab', '1', 'sdsf', '5', 1, 1, 1738042201, 'Approved'),
('6798dcd38cb1b', '9', 'sdfdf', '2', 0, 0, 1738071251, 'Approved'),
('6798dcd874aaa', '9', 'sdfsdf', '1', 0, 0, 1738071256, '0'),
('67990099ccc62', '9', 'I have completed my graduation i want MOI from Dept head', '3', 1, 1, 1738080409, 'Approved');

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
  `two_step_verification` tinyint(1) NOT NULL,
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

INSERT INTO `site_details` (`id`, `name`, `site_logo`, `bd_logo`, `email`, `smtp_username`, `smtp_password`, `two_step_verification`, `address`, `signature_name`, `signature_image`, `phone`, `facebook_link`, `twitter_link`, `youtube_link`, `instagram_link`, `short_details`, `updated_on`, `status`) VALUES
('1', '\nগণপ্রজাতন্ত্রী বাংলাদেশ সরকার \n<br>\nঅধ্যক্ষের কার্যালয়\n<br>\nবরিশাল ইঞ্জিনিয়ারিং কলেজ', '../images/gallery/logo.png', '../images/bd.png', 'contact@bec.edu.com', 'hackerdhrubo99@gmail.com', 'xnkbvrpvlmedwgtl', 0, 'দুর্গাপুর, বরিশাল', 'জনাব মোঃ লিটন রাব্বানী <br> অধ্যক্ষ(অতিরিক্ত দায়িত্ব) <br> বরিশাল ইঞ্জিনিয়ারিং কলেজ', 'https://static.vecteezy.com/system/resources/thumbnails/023/264/092/small_2x/fake-hand-drawn-autographs-set-handwritten-signature-scribble-for-business-certificate-or-letter-isolated-illustration-vector.jpg', '০১৭০৫৫৫৫৫৫৫৫', '#', '#', '#', '#', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut consequat mauris Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut consequat mauris</p>', '1', 1);

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
(9, 'Dhruboraj Roy', '2001304', '862', '', 'Debendra Nath Roy', 'M4', '017059272574', 'Adarsopara, Sadar, Lalmonirhat', '114', '08/01/2025', 'Female', 'Hinduism', 'A+', '2', '1', '$2y$10$3xSV8g1xd.7b6leqDI08MOZS6CMMiYKfsL32wzasO7Sp9BqqF92im', 'dhruborajroy3@gmail.com', '1738067831.jpg', 1),
(11, 'Nazmul Haque Jahid', '200101', '835', '', 'Abdul Haque', 'Najma Begum', '01882874194', 'Barishal Engineering College Hall', 'Deora , barura ,cumilla', '12/11/2001', 'Male', 'Islam', 'B+', '1', '1', '$2y$10$3xSV8g1xd.7b6leqDI08MOZS6CMMiYKfsL32wzasO7Sp9BqqF92im', 'Jahid@gmail.com', '1738050598.jpg', 1);

-- --------------------------------------------------------

--
-- Table structure for table `students_cgpa`
--

CREATE TABLE `students_cgpa` (
  `id` varchar(20) NOT NULL,
  `student_id` varchar(20) NOT NULL,
  `gpa` float NOT NULL,
  `semester` varchar(10) NOT NULL,
  `dpet_id` varchar(20) NOT NULL,
  `status` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `students_cgpa`
--

INSERT INTO `students_cgpa` (`id`, `student_id`, `gpa`, `semester`, `dpet_id`, `status`) VALUES
('2', '11', 3.46, '1st', '1', 1),
('23345', '9', 4, '3rd', '1', 1),
('233dfb', '9', 3.3, '1st', '1', 1),
('3ddfg', '9', 4, '4th', '1', 1),
('3dfdfdf', '9', 3.6, '2nd', '1', 1),
('55', '11', 3.4, '2nd', '1', 1);

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
-- Indexes for table `attendance`
--
ALTER TABLE `attendance`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `batch`
--
ALTER TABLE `batch`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
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
-- Indexes for table `students_cgpa`
--
ALTER TABLE `students_cgpa`
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
-- AUTO_INCREMENT for table `attendance`
--
ALTER TABLE `attendance`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `batch`
--
ALTER TABLE `batch`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `courses`
--
ALTER TABLE `courses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `depts_lab_list`
--
ALTER TABLE `depts_lab_list`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67951;

--
-- AUTO_INCREMENT for table `general_info`
--
ALTER TABLE `general_info`
  MODIFY `id` int(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `lab_list`
--
ALTER TABLE `lab_list`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `login_attempts`
--
ALTER TABLE `login_attempts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `login_logs`
--
ALTER TABLE `login_logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `otp_verification`
--
ALTER TABLE `otp_verification`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

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
