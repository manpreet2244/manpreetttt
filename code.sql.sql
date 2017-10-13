-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 10, 2017 at 10:08 AM
-- Server version: 10.1.26-MariaDB
-- PHP Version: 7.1.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `project`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin master`
--

CREATE TABLE `admin master` (
  `admin_id` int(10) NOT NULL,
  `admin_name` varchar(20) NOT NULL,
  `gender` enum('M','F','','') NOT NULL,
  `address` varchar(40) NOT NULL,
  `city` varchar(15) NOT NULL, `province` varchar(15) NOT NULL, `postal_code` varchar(15) NOT NULL,`email_address` varchar(15) NOT NULL, `joining_date` int(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin master`
--

INSERT INTO `admin master` (`admin_id`, `admin_name`, `gender`, `address`, `city`, `province`, `postal_code`, `email_address`, `joining_date`) VALUES
(1, 'nav', 'F', 'vivians crescent,', 'Brampton','Ontario','1233@gmail.com','2017-02-02'),
(2, 'satvir', 'M', 'younge''missisauga','Ontario','2233@gmail.com','2017-03-03');

-- --------------------------------------------------------

--
-- Table structure for table `book issue/return master`
--

CREATE TABLE `book issue/return master` (
  `book_id` int(10) NOT NULL,
  `student_id` int(10) NOT NULL,
  `from_date` date NOT NULL,
  `to_date` date NOT NULL,
  `description` varchar(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `book issue/return master`
--

INSERT INTO `book issue/return master` (`book_id`, `student_id`, `from_date`, `to_date`, `description`) VALUES
(400, 300, '2017-09-11', '2017-09-16', 'maths'),
(331, 221, '2017-09-05', '2017-09-17', 'english');

-- --------------------------------------------------------

--
-- Table structure for table `book master`
--

CREATE TABLE `book master` (
  `book_id` int(10) NOT NULL,
  `book_title` varchar(19) NOT NULL,
  `author` varchar(19) NOT NULL,
  `publisher` varchar(19) NOT NULL,`book_id` int(10) NOT NULL,`edition` int(10) NOT NULL,`ISBN_no` int(10) NOT NULL,`price` int(10) NOT NULL,`total_no_of_copies` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `book master`
--

INSERT INTO `book master` (`book_id`, `book_title`, `author`, `publisher`,`edition`,`ISBN_no`,`price`,`total_no_of_copies`) VALUES
(200, 'All thee King's men', 'Robert Penn', 'Warren','1','134','2334','323'),
(233, 'An evil cradling', 'john', 'arberry','2','343','1344','455');

-- --------------------------------------------------------

--
-- Table structure for table `library user master`
--

CREATE TABLE `library user master` (
  `user_id` int(11) NOT NULL,
  `password` varchar(10) NOT NULL,
  `acc_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `library user master`
--

INSERT INTO `library user master` (`user_id`, `password`, `acc_date`) VALUES
(1556767, '788989', '2017-09-01'),
(456666, '778798789', '2017-09-08');

-- --------------------------------------------------------

--
-- Table structure for table `student master`
--

CREATE TABLE `student master` (
  `student_id` int(10) NOT NULL,
  `name` varchar(20) NOT NULL,
  `gender` enum('M','F','','') NOT NULL,
  `date_of_birth` date NOT NULL,
  `email` varchar(25) NOT NULL,
  `course` varchar(10) NOT NULL
, `address` varchar(10) NOT NULL,`city` varchar(10) NOT NULL,`province` varchar(10) NOT NULL,`postal_code` int(10) NvarcharNULL) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student master`
--

INSERT INTO `student master` (`student_id`, `name`, `gender`, `date_of_birth`, `email`, `course`, `address`, `city`, `province`, `postal_code`) VALUES
(330, 'navneet', 'M', '1994-10-01', '123@gmail.com', 'MBA','vivians','brampton','ontario','1234'),
(142, 'renu', 'F', '1992-09-03', '455@gmail.com', 'BBA','younge','brampton','ontario','34434');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin master`
--
ALTER TABLE `admin master`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `book issue/return master`
--
ALTER TABLE `book issue/return master`
  ADD PRIMARY KEY (`book_id`);

--
-- Indexes for table `book master`
--
ALTER TABLE `book master`
  ADD PRIMARY KEY (`book_id`);

--
-- Indexes for table `library user master`
--
ALTER TABLE `library user master`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `student master`
--
ALTER TABLE `student master`
  ADD PRIMARY KEY (`student_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
