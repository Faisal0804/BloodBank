-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jan 05, 2022 at 10:35 AM
-- Server version: 5.7.26
-- PHP Version: 7.3.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bloodbank`
--

-- --------------------------------------------------------

--
-- Table structure for table `advertisement`
--

DROP TABLE IF EXISTS `advertisement`;
CREATE TABLE IF NOT EXISTS `advertisement` (
  `adv_id` int(100) NOT NULL AUTO_INCREMENT,
  `camp_title` varchar(100) NOT NULL,
  `org_by` varchar(100) NOT NULL,
  `pic` varchar(700) NOT NULL,
  `detail` varchar(900) NOT NULL,
  PRIMARY KEY (`adv_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `advertisement`
--

INSERT INTO `advertisement` (`adv_id`, `camp_title`, `org_by`, `pic`, `detail`) VALUES
(4, 'Ramgarhia Engg Collage', 'Ramgarhia education consial', '2.jpg', 'Blood donation camp Organised by REC.  One who donate get certificate by REC\r\nThat can help you also to gets blood in jeopard time');

-- --------------------------------------------------------

--
-- Table structure for table `bloodgroup`
--

DROP TABLE IF EXISTS `bloodgroup`;
CREATE TABLE IF NOT EXISTS `bloodgroup` (
  `bg_id` int(100) NOT NULL AUTO_INCREMENT,
  `bg_name` varchar(100) NOT NULL,
  PRIMARY KEY (`bg_id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bloodgroup`
--

INSERT INTO `bloodgroup` (`bg_id`, `bg_name`) VALUES
(13, 'o+'),
(14, 'o-'),
(15, 'AB+'),
(16, 'AB-'),
(17, 'A+'),
(18, 'A-'),
(19, 'B+'),
(20, 'B-');

-- --------------------------------------------------------

--
-- Table structure for table `camp`
--

DROP TABLE IF EXISTS `camp`;
CREATE TABLE IF NOT EXISTS `camp` (
  `camp_id` int(100) NOT NULL AUTO_INCREMENT,
  `camp_title` varchar(500) NOT NULL,
  `organised_by` varchar(500) NOT NULL,
  `city` int(100) NOT NULL,
  `pic` varchar(900) NOT NULL,
  `detail` varchar(1000) NOT NULL,
  PRIMARY KEY (`camp_id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `camp`
--

INSERT INTO `camp` (`camp_id`, `camp_title`, `organised_by`, `city`, `pic`, `detail`) VALUES
(10, 'sylhet', 'sylhet', 10, 'gaming.jpeg', 'hello'),
(11, 'lu camp', 'lu society ', 9, 'eb11e8075f5b3540b438b6972327d03e.jpg', 'hello world'),
(12, 'blood donation camp', 'lu society ', 9, 'eb11e8075f5b3540b438b6972327d03e.jpg', 'hello'),
(13, 'lu camp', 'lu society ', 10, '2.jpg', 'hello'),
(14, 'lu camp', 'lu society ', 10, '2.jpg', 'hello'),
(15, 'red cresent', 'red cresent', 9, '4.jpg', 'hello ');

-- --------------------------------------------------------

--
-- Table structure for table `city`
--

DROP TABLE IF EXISTS `city`;
CREATE TABLE IF NOT EXISTS `city` (
  `city_id` int(100) NOT NULL AUTO_INCREMENT,
  `city_name` varchar(100) NOT NULL,
  `pin_code` varchar(100) NOT NULL,
  `district` varchar(100) NOT NULL,
  PRIMARY KEY (`city_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `city`
--

INSERT INTO `city` (`city_id`, `city_name`, `pin_code`, `district`) VALUES
(9, 'sylhet', '3100', 'sylhet'),
(10, 'dhaka', '3100', 'dhaka');

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

DROP TABLE IF EXISTS `contacts`;
CREATE TABLE IF NOT EXISTS `contacts` (
  `row_id` int(100) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `mobile` varchar(100) NOT NULL,
  `subj` varchar(700) NOT NULL,
  PRIMARY KEY (`row_id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`row_id`, `name`, `email`, `mobile`, `subj`) VALUES
(11, 'tanzin', 'hello@gmail.com', '3747345734', 'hello world'),
(12, 'tanzin', 'hello@gmail.com', '3747345734', 'hello world'),
(13, 'tanzin', 'hello@gmail.com', '3747345734', 'hello world'),
(14, 'tanzin', 'hello@gmail.com', '3747345734', 'hello world'),
(15, 'tanzin', 'hello@gmail.com', '3747345734', 'hello world'),
(16, 'tanzin', 'hello@gmail.com', '3747345734', 'hello world'),
(17, 'tanzin', 'hello@gmail.com', '3747345734', 'hello world'),
(18, 'tanzin', 'hello@gmail.com', '3747345734', 'hello world'),
(19, 'tanzin', 'hello@gmail.com', '3747345734', 'hello world'),
(20, 'tanzin', 'hello@gmail.com', '3747345734', 'hello world'),
(21, 'tanzin', 'hello@gmail.com', '3747345734', 'hello world'),
(22, 'tanzin', 'hello@gmail.com', '3747345734', 'hello world'),
(23, 'tanzin', 'hello@gmail.com', '3747345734', 'hello world'),
(24, 'tanzin', 'hello@gmail.com', '3747345734', 'hello world'),
(25, 'tanzin', 'hello@gmail.com', '3747345734', 'hello world'),
(26, 'tanzin', 'hello@gmail.com', '3747345734', 'hello world'),
(27, 'tanzin', 'hello@gmail.com', '3747345734', 'hello world');

-- --------------------------------------------------------

--
-- Table structure for table `donarregistration`
--

DROP TABLE IF EXISTS `donarregistration`;
CREATE TABLE IF NOT EXISTS `donarregistration` (
  `donar_id` int(100) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `gender` varchar(100) NOT NULL,
  `age` varchar(100) NOT NULL,
  `mobile` varchar(100) NOT NULL,
  `b_id` int(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `pwd` int(100) NOT NULL,
  `pic` varchar(1000) NOT NULL,
  PRIMARY KEY (`donar_id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `donarregistration`
--

INSERT INTO `donarregistration` (`donar_id`, `name`, `gender`, `age`, `mobile`, `b_id`, `email`, `pwd`, `pic`) VALUES
(21, 'faisal Mohammed', 'male', '29', '01710903032', 15, 'faisal@gmail.com', 12345678, 'eb11e8075f5b3540b438b6972327d03e.jpg'),
(22, 'faisal Mohammed', 'male', '29', '01710903032', 19, 'faisal@gmail.com', 12345678, 'eb11e8075f5b3540b438b6972327d03e.jpg'),
(23, 'joy umar', 'male', '23', '01710903032', 19, 'faisal123@gmail.com', 12345678, 'eb11e8075f5b3540b438b6972327d03e.jpg'),
(24, 'amimul mahdi', 'male', '26', '01712312341', 17, 'mahdi@gmail.com', 12345678, 'gaming.jpeg'),
(25, 'faisal Mohammed', 'male', '28', '01710903032', 19, 'faisal12356@gmail.com', 12345678, 'Lighthouse.jpg'),
(26, 'faisal Mohammed', 'male', '28', '01710903032', 19, 'faisal123@gmail.com', 12345678, 'Lighthouse.jpg'),
(27, 'tanzin', 'female', '21', '017100000', 13, 'tanzin@gmail.com', 123456, 'eb11e8075f5b3540b438b6972327d03e.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `donation`
--

DROP TABLE IF EXISTS `donation`;
CREATE TABLE IF NOT EXISTS `donation` (
  `donation_id` int(100) NOT NULL AUTO_INCREMENT,
  `camp_id` int(100) NOT NULL,
  `ddate` datetime NOT NULL,
  `units` int(100) NOT NULL,
  `detail` varchar(800) NOT NULL,
  `email` varchar(100) NOT NULL,
  PRIMARY KEY (`donation_id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `donation`
--

INSERT INTO `donation` (`donation_id`, `camp_id`, `ddate`, `units`, `detail`, `email`) VALUES
(28, 1, '2014-09-14 00:00:00', 20, 'A Blood Donation Camp at Ramgarhia Engg Collage organized by Ramgarhia consial , Phagwara.', 'parasbhatia08@gmail.com'),
(29, 7, '2015-05-11 00:00:00', 30, 'A Blood Donation Camp at Lovely Professional University organized by Lovely Professional University , Jalandhar.', 'parasbhatia08@gmail.com'),
(30, 8, '2014-11-04 00:00:00', 25, 'A Blood Donation Camp at G.N.C College, Phagwara organized by Lions Club, Phagwara.', 'parasbhatia08@gmail.com'),
(31, 9, '2014-12-18 00:00:00', 22, 'A Blood Donation Camp at Apee-Jay College, Jalandhar organized by Human Welfare Society, Jalandhar.\r\n ', 'parasbhatia08@gmail.com'),
(32, 7, '2010-06-19 00:00:00', 27, 'A Blood Donation Camp at Lovely Professional Unive...', 'preet22@yahoo.com'),
(33, 8, '2010-08-20 00:00:00', 17, 'save life', 'manpreetkaler@yahoo.com'),
(34, 9, '2009-06-05 00:00:00', 10, 'give blood', 'manpreetkaler@yahoo.com'),
(35, 1, '2012-09-13 00:00:00', 22, 'save life', 'sahildubey@gmail.com'),
(36, 9, '0000-00-00 00:00:00', 444, 'kjj', 'neeru.bawa@yahoo.com');

-- --------------------------------------------------------

--
-- Table structure for table `gallary`
--

DROP TABLE IF EXISTS `gallary`;
CREATE TABLE IF NOT EXISTS `gallary` (
  `camp_id` int(100) NOT NULL,
  `pic_id` int(100) NOT NULL AUTO_INCREMENT,
  `title` varchar(400) NOT NULL,
  `pic` varchar(800) NOT NULL,
  PRIMARY KEY (`pic_id`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `gallary`
--

INSERT INTO `gallary` (`camp_id`, `pic_id`, `title`, `pic`) VALUES
(9, 15, 'pic 1', 'p48_2.jpg'),
(9, 16, 'pic 2', 'p11 (1).jpg'),
(9, 17, 'pic 3', 'p141.jpg'),
(9, 18, 'pic 5', 'p177_2.jpg'),
(9, 19, 'pic 6', 'p279.jpg'),
(8, 20, 'pic 8', 'p246.jpg'),
(9, 21, 'pic 9', 'p82.jpg'),
(7, 22, 'pic 2', 'p82.jpg'),
(7, 23, 'pic 3', 'p93.jpg'),
(7, 24, 'pic 6', 'p148.jpg'),
(7, 25, 'pic 7', 'pamrik@ymail.com1 (2).jpg'),
(7, 26, 'pic 8', 'slider4.jpg'),
(7, 27, 'pic 9', 'slider7.jpg'),
(1, 28, 'pic 2', 'slider8.jpg'),
(1, 29, 'pic 3', 'slider3.jpg'),
(1, 30, 'pic 4', 'donation.jpg'),
(1, 31, 'pic 3', 'Blood-Donation2.jpg'),
(1, 32, 'pic 4', 'blood-donation-.jpg'),
(1, 33, 'pic 6', 'blood-donation.jpg'),
(8, 34, 'pic 1', 'resizedBlood donation (1).jpg'),
(8, 35, 'pic 2', 'Blood-donation-camp.jpg'),
(8, 36, 'pic 4', '3.jpg'),
(8, 37, 'pic 5', '4.jpg'),
(8, 38, 'pic 7', '5.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

DROP TABLE IF EXISTS `news`;
CREATE TABLE IF NOT EXISTS `news` (
  `news_id` int(100) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `detail` varchar(900) NOT NULL,
  PRIMARY KEY (`news_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`news_id`, `title`, `detail`) VALUES
(1, 'blood donate', 'give blood give bloodgive blood'),
(2, 'blood bank', 'blooooddddd\n\n');

-- --------------------------------------------------------

--
-- Table structure for table `requestes`
--

DROP TABLE IF EXISTS `requestes`;
CREATE TABLE IF NOT EXISTS `requestes` (
  `req_id` int(100) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `gender` varchar(100) NOT NULL,
  `age` varchar(100) NOT NULL,
  `mobile` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `bgroup` int(100) NOT NULL,
  `reqdate` datetime NOT NULL,
  `detail` varchar(500) NOT NULL,
  PRIMARY KEY (`req_id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `requestes`
--

INSERT INTO `requestes` (`req_id`, `name`, `gender`, `age`, `mobile`, `email`, `bgroup`, `reqdate`, `detail`) VALUES
(12, 'joy umar', 'male', '23', '01710012347', 'faisal@gmail.com', 15, '2021-01-20 00:00:00', 'for pragnancy'),
(13, 'habib', 'male', '25', '01930073900', 'abc@yahoo.com', 13, '2021-01-16 00:00:00', 'jhhd hgsdiu'),
(14, 'safwana', 'female', '20', '01710000000', 'tanzin@gmail.com', 17, '2021-01-17 00:00:00', 'cfvbgf'),
(15, 'hello', 'male', '29', '01990003390', 'abc@yahoo.com', 16, '2021-01-16 00:00:00', 'dfbheyth67'),
(16, 'rimon', 'male', '29', '0189000505', 'abc@yahoo.com', 19, '2021-12-20 00:00:00', 'hghijjiiii');

-- --------------------------------------------------------

--
-- Table structure for table `state`
--

DROP TABLE IF EXISTS `state`;
CREATE TABLE IF NOT EXISTS `state` (
  `state_id` int(100) NOT NULL AUTO_INCREMENT,
  `state_name` varchar(100) NOT NULL,
  PRIMARY KEY (`state_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `state`
--

INSERT INTO `state` (`state_id`, `state_name`) VALUES
(1, 'sylhet');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `username` varchar(100) NOT NULL,
  `pwd` varchar(100) NOT NULL,
  `typeofuser` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`username`, `pwd`, `typeofuser`) VALUES
('faisal_123', '123456', 'Admin'),
('safwana_123', '12345678', 'Admin'),
('safwana_123', '12345678', 'Admin');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
