-- phpMyAdmin SQL Dump
-- version 4.0.9
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Dec 27, 2016 at 01:23 PM
-- Server version: 5.6.14
-- PHP Version: 5.5.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `clscompu_clsrepair`
--

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE IF NOT EXISTS `customer` (
  `id` int(12) NOT NULL AUTO_INCREMENT,
  `customerNo` varchar(12) NOT NULL,
  `salutation` varchar(10) NOT NULL,
  `firstName` varchar(50) NOT NULL,
  `lastName` varchar(50) NOT NULL,
  `company` varchar(50) NOT NULL,
  `street` varchar(50) NOT NULL,
  `postal` varchar(10) NOT NULL,
  `city` varchar(50) NOT NULL,
  `telephone1` varchar(50) NOT NULL,
  `telephone2` varchar(50) NOT NULL,
  `birthdate` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `otherContact` varchar(50) NOT NULL,
  `avatar` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `role` varchar(50) NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL,
  `updateDate` date NOT NULL,
  `updateTime` time NOT NULL,
  `whoAddIt` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=114 ;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`id`, `customerNo`, `salutation`, `firstName`, `lastName`, `company`, `street`, `postal`, `city`, `telephone1`, `telephone2`, `birthdate`, `email`, `otherContact`, `avatar`, `username`, `password`, `role`, `date`, `time`, `updateDate`, `updateTime`, `whoAddIt`) VALUES
(3, '16-05-0003', 'Herr', 'Amran', 'rahman', 'ABC', '12', '1234', 'Dhaka', '11111111', '22222222', '06-15-1999', 'amrantex160@gmail.com', '212', '3.png', 'amrantex160@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '', '2016-05-03', '04:10:19', '2016-12-22', '11:20:30', 'admin'),
(68, '16-08-0068', 'Herr', 'Amran5', 'rahman5', 'ABC5', '11', '1235', 'Bogra', '11111111', '222222222222', '05-17-2016', 'aaavatar24@Avatar.com', '12121', '', 'aaavatar24@Avatar.com', 'e10adc3949ba59abbe56e057f20f883e', '', '2016-08-23', '12:57:19', '0000-00-00', '00:00:00', 'admin'),
(72, '16-09-0072', 'Herr', 'Md. Amranur ', 'Rahman', 'Mira', '12', '1230', 'Dhaka', '1111111', '11111111', '03-07-2000', 'amranmira@gmail.com', '12121', '', 'amranmira@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '', '2016-09-18', '11:26:05', '0000-00-00', '00:00:00', 'admin'),
(79, '16-10-0079', 'Herr', 'Amran6', 'rahman6', 'ABC6', '11', '1237', 'Dhaka', '11111111', '222222222222', '05-17-2016', '224@Avatar.com', '12121', '', '224@Avatar.com', 'e10adc3949ba59abbe56e057f20f883e', '', '2016-10-13', '11:20:30', '0000-00-00', '00:00:00', 'admin'),
(84, '16-08-0066', 'Herr', 'Amran7', 'rahman7', 'ABC7', '11', '1236', 'Sylhet', '11111111', '222222222222', '05-17-2016', 'A224@Avatar.com', '12121', '', 'A224@Avatar.com', 'e10adc3949ba59abbe56e057f20f883e', '', '2016-10-16', '01:20:17', '2016-10-17', '10:18:07', 'admin'),
(105, '16-11-0001', 'Herr', 'Amran', 'rahman', 'ABC', '12', '', 'Dhaka', '11111111', '22222222', '06-15-1999', 'amrantex160@gmail.com', '212', '105.jpg', 'amrantex160@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '', '2016-11-21', '11:16:36', '2016-11-22', '12:23:02', 'admin'),
(107, '16-11-0106', 'Herr', 'Amran', 'rahman', 'ABC', '12', '1234', 'Dhaka', '11111111', '22222222', '06-15-1999', 'amrantex160@gmail.com', '212', '107', 'amrantex160@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '', '2016-11-29', '11:23:41', '2016-12-18', '03:25:15', 'admin'),
(108, '16-12-0108', 'Herr', 'aaa', 'ssss', 'ABBBB', '1230', '', 'Dhaka', '111111', '1233333', '01-01-1990', 'yyyy@yyy.yyy', '111', '108.jpg', 'yyyy@yyy.yyy', 'e10adc3949ba59abbe56e057f20f883e', '', '2016-12-27', '05:18:38', '0000-00-00', '00:00:00', 'admin'),
(109, '16-12-0109', 'Herr', 'aaa', 'ssss', 'ABBBB', '1230', '', 'Dhaka', '111111', '1233333', '01-01-1990', 'yyyy@xxx.yyy', '111', '109.png', 'yyyy@xxx.yyy', 'e10adc3949ba59abbe56e057f20f883e', '', '2016-12-27', '05:19:35', '0000-00-00', '00:00:00', 'admin'),
(110, '16-12-0110', 'Herr', 'aaa', 'ssss', 'ABBBB', '1230', '', 'Dhaka', '111111', '1233333', '01-01-1990', 'yyyy@tt.yyy', '111', '110.png', 'yyyy@tt.yyy', 'e10adc3949ba59abbe56e057f20f883e', '', '2016-12-27', '05:21:33', '0000-00-00', '00:00:00', 'admin'),
(111, '16-12-0111', 'Herr', 'aaa', 'ssss', 'ABBBB', '1230', '', 'Dhaka', '111111', '1233333', '01-01-1990', 'yyyy@rrr.yyy', '111', '111.png', 'yyyy@rrr.yyy', 'e10adc3949ba59abbe56e057f20f883e', '', '2016-12-27', '05:38:51', '0000-00-00', '00:00:00', 'admin'),
(112, '16-12-0112', 'Herr', 'aaa', 'ssss', 'ABBBB', '1230', '', 'Dhaka', '111111', '1233333', '01-01-1990', 'yyyy@xyz.yyy', '111', '112.gif', 'yyyy@xyz.yyy', 'e10adc3949ba59abbe56e057f20f883e', '', '2016-12-27', '05:41:22', '0000-00-00', '00:00:00', 'admin'),
(113, '16-12-0113', 'Herr', 'aaa', 'ssss', 'ABBBB', '1230', '', 'Dhaka', '111111', '1233333', '01-01-1990', 'yyyy@ooo.yyy', '111', '113.jpg', 'yyyy@ooo.yyy', 'e10adc3949ba59abbe56e057f20f883e', '', '2016-12-27', '05:43:26', '0000-00-00', '00:00:00', 'admin');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
