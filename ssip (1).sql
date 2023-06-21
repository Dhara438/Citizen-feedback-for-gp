-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 21, 2023 at 09:49 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ssip`
--

-- --------------------------------------------------------

--
-- Table structure for table `complaint`
--

CREATE TABLE `complaint` (
  `cID` int(11) NOT NULL,
  `contactNo` bigint(20) NOT NULL,
  `psID` int(11) NOT NULL,
  `refId` int(10) NOT NULL,
  `firNo` int(11) NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL,
  `complainDetails` varchar(500) NOT NULL,
  `status` int(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `complaint`
--

INSERT INTO `complaint` (`cID`, `contactNo`, `psID`, `refId`, `firNo`, `date`, `time`, `complainDetails`, `status`) VALUES
(1, 8128027890, 2, 0, 1001, '2022-10-03', '10:40:00', 'very serious', 1),
(10, 919409205790, 3, 149949, 1452, '2022-10-17', '19:11:00', 'Eeks', 1),
(11, 919409205790, 2, 417841, 447, '2022-10-17', '18:11:00', 'Fed', 1),
(12, 919409205790, 1, 199979, 447, '2022-10-17', '18:11:00', 'Fed', 1),
(13, 919409205790, 2, 862817, 1818, '2022-10-17', '16:12:00', 'Rvec', 1);

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `fID` int(11) NOT NULL,
  `psID` int(11) NOT NULL,
  `refNo` int(10) NOT NULL,
  `area` varchar(40) NOT NULL,
  `city` varchar(40) NOT NULL,
  `contactNo` bigint(20) NOT NULL,
  `indian` varchar(3) NOT NULL,
  `ques1` varchar(50) NOT NULL,
  `ques2` varchar(30) NOT NULL,
  `ques3` varchar(300) NOT NULL,
  `ques4` varchar(300) NOT NULL,
  `status` int(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`fID`, `psID`, `refNo`, `area`, `city`, `contactNo`, `indian`, `ques1`, `ques2`, `ques3`, `ques4`, `status`) VALUES
(1, 0, 485706, 'CHANDKHEDA', 'AHMEDABAD', 919409205790, 'Yes', 'On your own', '5 minutes', 'Bad', 'as', 1),
(2, 0, 608703, 'SABARMATI', 'AHMEDABAD', 919409205790, 'Yes', 'On your own', '10 minutes', 'Good', 'Goo', 1),
(3, 0, 409037, 'CHANDKHEDA', 'AHMEDABAD', 919409205790, 'Yes', 'With a neighbour/local leader', '5 minutes', 'Good', 'Bxh', 1),
(34, 0, 215498, 'NARANPURA', 'AHMEDABAD', 919409205790, 'Yes', 'With a neighbour/local leader', 'More than 15 minutes', 'Bad', 'Feedback', 1),
(35, 0, 717964, 'CHANDKHEDA', 'AHMEDABAD', 919409205790, 'Yes', 'On your own', 'Immediately', 'Good', 'Good ', 1),
(37, 0, 657696, 'CHANDKHEDA', 'AHMEDABAD', 919409205790, 'Yes', 'Through a person known to a police officer', '10 minutes', 'Good', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `loginofficer`
--

CREATE TABLE `loginofficer` (
  `headID` int(11) NOT NULL,
  `emailid` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `contact` bigint(20) NOT NULL,
  `post` varchar(30) NOT NULL,
  `city` varchar(30) NOT NULL,
  `password` varchar(50) NOT NULL,
  `map` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `loginofficer`
--

INSERT INTO `loginofficer` (`headID`, `emailid`, `name`, `contact`, `post`, `city`, `password`, `map`) VALUES
(1, 'dgp@gmail.com', 'DGP Sir', 1234567890, 'DGP', 'Gujarat', 'dgp@123', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3777126.8565809624!2d69.07461945380011!3d22.4064152027396!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3959051f5f0ef795%3A0x861bd887ed54522e!2sGujarat!5e0!3m2!1sen!2sin!4v1665888061216!5m2!1sen!2sin'),
(2, 'commissioner@gmail.com', 'ABC', 1324576890, 'commissioner', 'Ahmedabad', 'com@123', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d235013.7071747794!2d72.43965410252258!3d23.020497772415474!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x395e848aba5bd449%3A0x4fcedd11614f6516!2sAhmedabad%2C%20Gujarat!5e0!3m2!1sen!2sin!4v1665888157020!5m2!1sen!2sin'),
(3, 'igp@gmail.com', 'IGP Sir', 1470235689, 'IGP', 'Ahmedabad', 'igp@123', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d235013.7071747794!2d72.43965410252258!3d23.020497772415474!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x395e848aba5bd449%3A0x4fcedd11614f6516!2sAhmedabad%2C%20Gujarat!5e0!3m2!1sen!2sin!4v1665888157020!5m2!1sen!2sin'),
(4, 'sp@gmail.com', 'ZXC', 1234567895, 'SP', 'Ahmedabad', 'sp@123', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d235013.7071747794!2d72.43965410252258!3d23.020497772415474!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x395e848aba5bd449%3A0x4fcedd11614f6516!2sAhmedabad%2C%20Gujarat!5e0!3m2!1sen!2sin!4v1665888157020!5m2!1sen!2sin'),
(5, 'chandkheda@gmail.com', 'ASD', 1324354212, 'inspector', 'Chandkheda,Ahmedabad', 'chandkheda@123', ''),
(6, 'sabarmati@gmail.com', 'XYZS', 1324576890, 'inspector', 'Sabarmati,Ahmedabad', 'sabarmati@123', ''),
(7, 'naranpura@gmail.com', 'ASD', 1234567890, 'inspector', 'Naranpura,Ahmedabad', 'naranpura@123', '');

-- --------------------------------------------------------

--
-- Table structure for table `loginuser`
--

CREATE TABLE `loginuser` (
  `luid` int(5) NOT NULL,
  `contactNo` bigint(20) NOT NULL,
  `type` varchar(14) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `loginuser`
--

INSERT INTO `loginuser` (`luid`, `contactNo`, `type`) VALUES
(1, 919409205790, '1'),
(2, 919409205790, '2'),
(6, 918200518927, '1');

-- --------------------------------------------------------

--
-- Table structure for table `policestation`
--

CREATE TABLE `policestation` (
  `psID` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `address` varchar(200) NOT NULL,
  `area` varchar(25) NOT NULL,
  `city` varchar(40) NOT NULL,
  `headID` int(11) NOT NULL,
  `contactNo` bigint(20) NOT NULL,
  `pincode` int(11) NOT NULL,
  `map` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `policestation`
--

INSERT INTO `policestation` (`psID`, `name`, `address`, `area`, `city`, `headID`, `contactNo`, `pincode`, `map`) VALUES
(1, 'Chandkheda police station', 'Ongc Quarters Subhash Nagar , IOC Road, Chandkheda, Ahmedabad – 382424', 'CHANDKHEDA', 'AHMEDABAD', 5, 7923291275, 382424, 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d29356.608444478443!2d72.5643009283077!3d23.112610165799072!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x395e838406420939%3A0x6323aee48a228abb!2sChandkheda%20Police%20Station!5e0!3m2!1sen!2sin!4v1665865423179!5m2!1sen!2sin'),
(2, 'Sabarmati police station', '3HPR+5M4, Bulakhidas Rd, near Toll Naka, Ram Nagar, Sabarmati, Ahmedabad, Gujarat 380005', 'SABARMATI', 'AHMEDABAD', 6, 7927517166, 380005, 'https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d24501.710344361418!2d72.59423359666312!3d23.08390529966452!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x294488bac1e8e41c!2sSabarmati%20Police%20Station!5e0!3m2!1sen!2sin!4v1665335430344!5m2!1sen!2sin'),
(3, 'Naranpura police station', 'Naranpura, Part -2 , Opp Post Office, Naranpura, Ahmedabad – 380013', 'NARANPURA', 'AHMEDABAD', 7, 7927434174, 380013, 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d14684.040153742782!2d72.55081172001839!3d23.06009355214217!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x395e837fbfecdd07%3A0xaa60accf9eb130f9!2spolice%20station!5e0!3m2!1sen!2sin!4v1665865797784!5m2!1sen!2sin'),
(4, 'maninagar ps', 'maninagar', 'maninagar', 'Ahmedabad', 0, 0, 380014, '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `complaint`
--
ALTER TABLE `complaint`
  ADD PRIMARY KEY (`cID`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`fID`);

--
-- Indexes for table `loginofficer`
--
ALTER TABLE `loginofficer`
  ADD PRIMARY KEY (`headID`);

--
-- Indexes for table `loginuser`
--
ALTER TABLE `loginuser`
  ADD PRIMARY KEY (`luid`);

--
-- Indexes for table `policestation`
--
ALTER TABLE `policestation`
  ADD PRIMARY KEY (`psID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `complaint`
--
ALTER TABLE `complaint`
  MODIFY `cID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `fID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `loginofficer`
--
ALTER TABLE `loginofficer`
  MODIFY `headID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `loginuser`
--
ALTER TABLE `loginuser`
  MODIFY `luid` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `policestation`
--
ALTER TABLE `policestation`
  MODIFY `psID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
