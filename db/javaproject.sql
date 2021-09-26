-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 31, 2021 at 04:01 PM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 7.3.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `javaproject`
--

-- --------------------------------------------------------

--
-- Table structure for table `adminlogin`
--

CREATE TABLE `adminlogin` (
  `Admin_id` int(11) NOT NULL,
  `Email` varchar(100) DEFAULT NULL,
  `Password` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `adminlogin`
--

INSERT INTO `adminlogin` (`Admin_id`, `Email`, `Password`) VALUES
(1, 'admin123@gmail.com', 'admin123');

-- --------------------------------------------------------

--
-- Table structure for table `booking`
--

CREATE TABLE `booking` (
  `User_Id` int(11) NOT NULL,
  `Name` varchar(100) DEFAULT NULL,
  `Ticket_on_date` date DEFAULT NULL,
  `Route` varchar(100) DEFAULT NULL,
  `Price` varchar(100) DEFAULT NULL,
  `Number_of_days` varchar(100) DEFAULT NULL,
  `Number_of_people` varchar(100) DEFAULT NULL,
  `Total_Fare` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `booking`
--

INSERT INTO `booking` (`User_Id`, `Name`, `Ticket_on_date`, `Route`, `Price`, `Number_of_days`, `Number_of_people`, `Total_Fare`) VALUES
(1, 'Rasmi Jati', '2020-08-04', 'Kathmandu To Mustang', '15000', '5', '3', '450000'),
(2, 'Aniket Poudel', '2020-06-15', 'Biratnagar To Kathmandu', '2000', '2', '1', '4000'),
(3, 'Siddhi Joshi', '2020-08-18', 'Kathmandu To Janakpur', '16000', '9', '4', '576000'),
(4, 'Bikram Tamang', '2020-07-21', 'Kathmandu To Mustang', '15000', '5', '2', '150000'),
(5, 'Tripti Shrestha', '2020-07-29', 'Kathmandu To Lumbini', '8000', '4', '3', '96000'),
(6, 'Rasmi Jati', '2021-01-03', 'Pokhara To Kathmandu', '5000', '1', '5', '25000');

-- --------------------------------------------------------

--
-- Table structure for table `register`
--

CREATE TABLE `register` (
  `User_Id` int(11) NOT NULL,
  `Name` varchar(100) DEFAULT NULL,
  `Address` varchar(100) DEFAULT NULL,
  `Contact` varchar(100) DEFAULT NULL,
  `Email` varchar(100) DEFAULT NULL,
  `Password` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `register`
--

INSERT INTO `register` (`User_Id`, `Name`, `Address`, `Contact`, `Email`, `Password`) VALUES
(1, 'Rasmi Jati', 'Bhaktapur', '9841111100', 'jatirasmi@gmail.com', 'jatirasmi'),
(2, 'Aniket Poudel', 'Biratnagar', '9845126301', 'aniketpoudel@gmail.com', 'aniketpoudel'),
(3, 'Siddhi Joshi', 'Lalitpur', '9852104563', 'siddhijoshi@gmail.com', 'siddhijoshi'),
(4, 'Bikram Tamang', 'Dholka', '9803124568', 'bikramtamang@gmail.com', 'bikramtamang'),
(5, 'Tripti Shrestha', 'Tripureshwor', '9841758930', 'triptishrestha@gmail.com', 'triptishrestha');

-- --------------------------------------------------------

--
-- Table structure for table `route`
--

CREATE TABLE `route` (
  `Route_id` int(11) NOT NULL,
  `Route` varchar(100) DEFAULT NULL,
  `Price` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `route`
--

INSERT INTO `route` (`Route_id`, `Route`, `Price`) VALUES
(1, 'Kathmandu To Pokhara', '5000'),
(2, 'Pokhara To Kathmandu', '5000'),
(3, 'Kathmandu To Lumbini', '8000'),
(4, 'Lumbini To Kathmandu', '8000'),
(5, 'Kathmandu To Gorkha', '3000'),
(6, 'Gorkha To Kathmandu', '3000'),
(7, 'Kathmandu To Mustang', '15000'),
(8, 'Mustang To Kathmandu', '15000'),
(9, 'Kathmandu To Janakpur', '16000'),
(10, 'Janakpur To Kathmandu', '16000'),
(11, 'Kathmandu To Biratnagar', '2000'),
(12, 'Biratnagar To Kathmandu', '2000');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `adminlogin`
--
ALTER TABLE `adminlogin`
  ADD PRIMARY KEY (`Admin_id`);

--
-- Indexes for table `booking`
--
ALTER TABLE `booking`
  ADD PRIMARY KEY (`User_Id`);

--
-- Indexes for table `register`
--
ALTER TABLE `register`
  ADD PRIMARY KEY (`User_Id`),
  ADD UNIQUE KEY `Email` (`Email`);

--
-- Indexes for table `route`
--
ALTER TABLE `route`
  ADD PRIMARY KEY (`Route_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `adminlogin`
--
ALTER TABLE `adminlogin`
  MODIFY `Admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `booking`
--
ALTER TABLE `booking`
  MODIFY `User_Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `register`
--
ALTER TABLE `register`
  MODIFY `User_Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `route`
--
ALTER TABLE `route`
  MODIFY `Route_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
