-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Nov 23, 2021 at 05:15 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
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
-- Table structure for table `blooddinfo`
--

DROP TABLE IF EXISTS `blooddinfo`;
CREATE TABLE IF NOT EXISTS `blooddinfo` (
  `bdid` int(11) NOT NULL AUTO_INCREMENT,
  `rid` int(11) NOT NULL,
  `bg` varchar(10) NOT NULL,
  PRIMARY KEY (`bdid`),
  KEY `blooddinfo_ibfk_2` (`rid`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `blooddinfo`
--

INSERT INTO `blooddinfo` (`bdid`, `rid`, `bg`) VALUES
(10, 1, 'A+'),
(11, 1, 'B-'),
(12, 4, 'B+'),
(13, 4, 'O+'),
(14, 5, 'B+'),
(15, 5, 'B-'),
(16, 5, 'O+'),
(17, 6, 'B+'),
(18, 6, 'AB+'),
(19, 6, 'A-'),
(20, 7, 'AB-'),
(22, 7, 'O-'),
(23, 1, 'A-'),
(28, 8, 'B-'),
(29, 8, 'B+'),
(30, 8, 'A-'),
(31, 10, 'AB-'),
(33, 8, 'AB+');

-- --------------------------------------------------------

--
-- Table structure for table `blooddonate`
--

DROP TABLE IF EXISTS `blooddonate`;
CREATE TABLE IF NOT EXISTS `blooddonate` (
  `donoid` int(11) NOT NULL AUTO_INCREMENT,
  `rid` int(11) NOT NULL,
  `hid` int(11) NOT NULL,
  `bg` varchar(11) NOT NULL,
  `status` varchar(100) NOT NULL DEFAULT 'Pending',
  PRIMARY KEY (`donoid`),
  KEY `rid` (`rid`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `blooddonate`
--

INSERT INTO `blooddonate` (`donoid`, `rid`, `hid`, `bg`, `status`) VALUES
(6, 8, 8, 'O+', 'Rejected'),
(7, 8, 8, 'O+', 'Accepted'),
(8, 8, 8, 'O+', 'Accepted'),
(9, 8, 8, 'O+', 'Pending');

-- --------------------------------------------------------

--
-- Table structure for table `bloodinfo`
--

DROP TABLE IF EXISTS `bloodinfo`;
CREATE TABLE IF NOT EXISTS `bloodinfo` (
  `bid` int(11) NOT NULL AUTO_INCREMENT,
  `hid` int(11) NOT NULL,
  `bg` varchar(10) NOT NULL,
  PRIMARY KEY (`bid`),
  KEY `hid` (`hid`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `bloodinfo`
--

INSERT INTO `bloodinfo` (`bid`, `hid`, `bg`) VALUES
(7, 1, 'A-'),
(8, 8, 'O+'),
(12, 4, 'A-'),
(13, 4, 'A+'),
(14, 4, 'AB+'),
(16, 5, 'A+'),
(17, 5, 'B-'),
(18, 5, 'O-'),
(20, 5, 'B+'),
(21, 6, 'O+'),
(22, 6, 'A-'),
(23, 6, 'O-'),
(24, 7, 'A-'),
(25, 7, 'A+'),
(26, 7, 'B-'),
(27, 7, 'B+'),
(31, 1, 'B-'),
(32, 8, 'O+'),
(33, 8, 'AB+'),
(34, 8, 'B-');

-- --------------------------------------------------------

--
-- Table structure for table `bloodrequest`
--

DROP TABLE IF EXISTS `bloodrequest`;
CREATE TABLE IF NOT EXISTS `bloodrequest` (
  `reqid` int(11) NOT NULL AUTO_INCREMENT,
  `hid` int(11) NOT NULL,
  `rid` int(11) NOT NULL,
  `bg` varchar(11) NOT NULL,
  `status` varchar(100) NOT NULL DEFAULT 'Pending',
  PRIMARY KEY (`reqid`),
  KEY `hid` (`hid`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `bloodrequest`
--

INSERT INTO `bloodrequest` (`reqid`, `hid`, `rid`, `bg`, `status`) VALUES
(7, 8, 8, 'O+', 'Accepted'),
(8, 8, 8, 'O+', 'Rejected'),
(9, 1, 7, 'A-', 'Pending'),
(10, 8, 7, 'O+', 'Accepted'),
(11, 8, 8, 'O+', 'Pending'),
(12, 6, 8, 'O+', 'Pending');

-- --------------------------------------------------------

--
-- Table structure for table `hospitals`
--

DROP TABLE IF EXISTS `hospitals`;
CREATE TABLE IF NOT EXISTS `hospitals` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `hname` varchar(100) NOT NULL,
  `hemail` varchar(100) NOT NULL,
  `hpassword` varchar(100) NOT NULL,
  `hphone` varchar(100) NOT NULL,
  `hcity` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `hospitals`
--

INSERT INTO `hospitals` (`id`, `hname`, `hemail`, `hpassword`, `hphone`, `hcity`) VALUES
(1, 'Gandhi hospital', 'gandhi@gmail.com', 'gandhi', '7865376358', 'Banglore'),
(4, 'Arunodhaya', 'arunodhaya@gmail.com', 'arunodhaya', '9898988909', 'Chittoor'),
(5, 'Apollo Speciality Hospital,Chennai', 'apollo@gmail.com', 'apollo', '6189029831', 'Chennai'),
(6, ' Vijaya Medical & Educational Trust, Chennai', 'vijaya@gmail.com', 'vijaya', '8920340193', 'Chennai'),
(7, 'Sree Amaravathi Multispeciality Hospital', 'sreeamaravathihospitals@gmail.com', 'amaravathi', '09441432567', 'Amaravathi'),
(8, 'CMC', 'cmc@gmail.com', 'cmccmc', '9999923495', 'VELLORE'),
(9, 'Russh Multispecialty Hospital', 'russh@gmail.com', 'russh1', '89203849201', 'Tirupati'),
(10, 'thejasree', 'theja@gmail.com', 'theja15', '9839128291', 'theja');

-- --------------------------------------------------------

--
-- Table structure for table `receivers`
--

DROP TABLE IF EXISTS `receivers`;
CREATE TABLE IF NOT EXISTS `receivers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rname` varchar(100) NOT NULL,
  `remail` varchar(100) NOT NULL,
  `rpassword` varchar(100) NOT NULL,
  `rphone` varchar(100) NOT NULL,
  `rbg` varchar(10) NOT NULL,
  `rcity` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `receivers`
--

INSERT INTO `receivers` (`id`, `rname`, `remail`, `rpassword`, `rphone`, `rbg`, `rcity`) VALUES
(1, 'Ramya', 'ramya@gmail.com', 'ramya1', '8875643456', 'A+', 'Chennai'),
(4, 'animisha', 'animisha@gmail.com', 'animisha', '9902477355', 'B+', 'Sholingar'),
(5, 'Arunachalam', 'arunachalam@gmail.com', 'arunachalam', '9380073433', 'AB-', 'Tirupathur'),
(6, 'Sampath', 'sampath@gmail.com', 'sampath', '8106298053', 'B+', 'Hyderabad'),
(7, 'Neha Suresh', 'nehasuresh@gmail.com', 'neha12', '9849492206', 'AB+', 'Tirupathi'),
(8, 'Thejasree', 'theja@gmail.com', 'cmccmc', '09100802940', 'O+', 'chittoor'),
(9, 'Shriya', 'shriya@gmail.com', 'shriya', '9402013941', 'A+', 'Delhi'),
(10, 'Thejasree', 'thejasree@gmail.com', 'Thejunani', '09100802940', 'O+', 'chittoor'),
(11, 'Thejasree1', 'theja1@gmail.com', 'theju1', '09100802940', 'A-', 'chittoor'),
(12, 'Thejasree15', 'theja15@gmail.com', 'theja1', '9420491031', 'O+', 'Banglore');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `blooddinfo`
--
ALTER TABLE `blooddinfo`
  ADD CONSTRAINT `blooddinfo_ibfk_2` FOREIGN KEY (`rid`) REFERENCES `receivers` (`id`);

--
-- Constraints for table `bloodinfo`
--
ALTER TABLE `bloodinfo`
  ADD CONSTRAINT `bloodinfo_ibfk_1` FOREIGN KEY (`hid`) REFERENCES `hospitals` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
