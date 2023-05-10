-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 23, 2022 at 05:11 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `houserent`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `id` int(11) NOT NULL,
  `email` varchar(252) NOT NULL,
  `username` varchar(252) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_admin`
--

INSERT INTO `tbl_admin` (`id`, `email`, `username`, `password`) VALUES
(1, 'shakilcse25@gmail.com', 'shakilcse25', 'e10adc3949ba59abbe56e057f20f883e');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_house`
--

CREATE TABLE `tbl_house` (
  `id` int(50) NOT NULL,
  `owner_id` int(50) NOT NULL,
  `tenant_id` int(50) NOT NULL,
  `address` text NOT NULL,
  `road_no` varchar(252) NOT NULL,
  `house_no` varchar(252) NOT NULL,
  `rental_value` varchar(50) NOT NULL,
  `house_type` varchar(50) NOT NULL,
  `floor` varchar(252) NOT NULL,
  `bedroom` varchar(50) NOT NULL,
  `sizehouse` varchar(5000) NOT NULL,
  `dinning_room` varchar(52) NOT NULL,
  `bathroom` varchar(50) NOT NULL,
  `kitchen` varchar(52) NOT NULL,
  `balconies` varchar(52) NOT NULL,
  `description` text NOT NULL,
  `active_status` int(11) NOT NULL,
  `request_status` int(11) NOT NULL,
  `img_1` varchar(252) NOT NULL,
  `img_2` varchar(252) NOT NULL,
  `img_3` varchar(252) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_house`
--

INSERT INTO `tbl_house` (`id`, `owner_id`, `tenant_id`, `address`, `road_no`, `house_no`, `rental_value`, `house_type`, `floor`, `bedroom`, `sizehouse`, `dinning_room`, `bathroom`, `kitchen`, `balconies`, `description`, `active_status`, `request_status`, `img_1`, `img_2`, `img_3`) VALUES
(77, 55, 56, 'Naraynganj', '5', '101/3', '14000', 'Family', '3', '3', '1200', 'Yes', '2', 'Yes', 'Yes', 'Owner Gmail: tahu@gmail.com           ', 1, 0, 'uploads/c919b50736.jpg', '', ''),
(78, 55, 60, 'Naraynganj', '3', '201', '5000', 'Bachelor', '2', '1', '1000', 'No', '1', 'Yes', 'Yes', 'Owner Gmail: tahu@gmail.com           ', 1, 0, 'uploads/e95ea643e5.jpg', '', ''),
(79, 57, 0, 'Mirpur', '12', '201', '10000', 'Family', '3', '2', '1200', 'Yes', '2', 'Yes', 'Yes', 'Owner Gmail: mushi@gmail.com ', 0, 0, 'uploads/a4ccb51ff5.jpg', '', ''),
(80, 57, 0, 'Uttora', '1', '102', '12000', 'Family', '4', '2', '1000', 'Yes', '2', 'Yes', 'Yes', 'Owner Gmail: mushi@gmail.com ', 0, 0, 'uploads/1ca0da1cb5.jpg', '', ''),
(81, 55, 0, 'Farmgate', '1', '102', '8500', 'Bachelor', '2', '1', '1200', 'No', '1', 'Yes', 'Yes', 'Owner Gmail: tahu@gmail.com           ', 0, 0, 'uploads/fda8335063.jpg', '', ''),
(84, 55, 56, 'Uttora', '5', '201', '22500', 'Family', '4', '4', '1000', 'Yes', '3', 'Yes', 'Yes', 'Owner Gmail: tahu@gmail.com           ', 1, 0, 'uploads/98305fc042.jpg', '', ''),
(85, 55, 56, 'Mirpur', '1', '101/3', '20500', 'Family', '3', '3', '1200', 'Yes', '2', 'Yes', 'Yes', 'Owner Gmail: tahu@gmail.com           ', 1, 0, 'uploads/01682115a4.jpg', '', ''),
(88, 55, 60, 'CTG', '12', '22', '19000', 'Family', '3', '3', '', 'No', '3', 'Yes', 'Yes', 'This is a very decent house', 1, 0, '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_message`
--

CREATE TABLE `tbl_message` (
  `id` int(50) NOT NULL,
  `from_id` int(50) NOT NULL,
  `to_id` int(50) NOT NULL,
  `message` text NOT NULL,
  `read_message` int(11) NOT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_message`
--

INSERT INTO `tbl_message` (`id`, `from_id`, `to_id`, `message`, `read_message`, `time`) VALUES
(2, 53, 52, 'Your booked request for this <a href=\"housedetails.php?house_id=\"34\">house</a> is rejected by the owner!', 0, '2019-03-12 19:57:03'),
(3, 53, 52, 'Your booked request for this <a href=\"housedetails.php?house_id=47\">house</a> is rejected by the owner!', 0, '2019-03-12 21:42:12'),
(4, 53, 52, 'Your booked request for this <a href=\"housedetails.php?house_id=35\">house</a> is accepted by the owner!', 0, '2019-03-12 21:45:11'),
(5, 53, 52, 'Your booked request for this <a href=\"housedetails.php?house_id=47\">house</a> is rejected by the owner!', 0, '2019-03-13 06:18:37'),
(7, 56, 53, 'You got a rent request for this <a href=\"housedetails.php?house_id=73\">home</a> from a tenant!', 0, '2022-07-25 03:41:15'),
(8, 56, 55, 'You got a rent request for this <a href=\"housedetails.php?house_id=77\">home</a> from a tenant!', 1, '2022-07-26 16:31:33'),
(9, 56, 55, 'You got a rent request for this <a href=\"housedetails.php?house_id=77\">home</a> from a tenant!', 0, '2022-07-26 16:31:14'),
(10, 55, 56, 'Your booked request for this <a href=\"housedetails.php?house_id=77\">house</a> is accepted by the owner!', 0, '2022-07-26 16:31:50'),
(11, 56, 55, 'You got a rent request for this <a href=\"housedetails.php?house_id=85\">home</a> from a tenant!', 0, '2022-08-01 03:52:01'),
(12, 56, 55, 'You got a rent request for this <a href=\"housedetails.php?house_id=87\">home</a> from a tenant!', 0, '2022-08-01 06:27:37'),
(13, 56, 55, 'You got a rent request for this <a href=\"housedetails.php?house_id=87\">home</a> from a tenant!', 0, '2022-08-01 06:27:41'),
(14, 55, 56, 'Your booked request for this <a href=\"housedetails.php?house_id=87\">house</a> is accepted by the owner!', 1, '2022-08-08 03:38:22'),
(15, 56, 55, 'You got a rent request for this <a href=\"housedetails.php?house_id=85\">home</a> from a tenant!', 0, '2022-08-09 08:37:34'),
(16, 56, 55, 'You got a rent request for this <a href=\"housedetails.php?house_id=84\">home</a> from a tenant!', 0, '2022-08-09 09:09:12'),
(17, 56, 55, 'You got a rent request for this <a href=\"housedetails.php?house_id=84\">home</a> from a tenant!', 0, '2022-08-09 09:09:21'),
(18, 56, 55, 'You got a rent request for this <a href=\"housedetails.php?house_id=87\">home</a> from a tenant!', 0, '2022-08-09 09:21:54'),
(19, 56, 55, 'You got a rent request for this <a href=\"housedetails.php?house_id=85\">home</a> from a tenant!', 0, '2022-08-22 17:49:32'),
(28, 55, 56, 'Your booked request for this <a href=\"housedetails.php?house_id=84\">house</a> is accepted by the owner!', 0, '2022-08-22 20:39:03'),
(29, 60, 55, 'You got a rent request for this <a href=\"housedetails.php?house_id=83\">home</a> from a tenant!', 0, '2022-08-22 20:58:45'),
(30, 60, 55, 'You got a rent request for this <a href=\"housedetails.php?house_id=81\">home</a> from a tenant!', 0, '2022-08-22 20:58:55'),
(31, 60, 55, 'You got a rent request for this <a href=\"housedetails.php?house_id=81\">home</a> from a tenant!', 0, '2022-08-22 21:07:50'),
(32, 60, 57, 'You got a rent request for this <a href=\"housedetails.php?house_id=79\">home</a> from a tenant!', 0, '2022-08-22 21:08:00'),
(33, 60, 55, 'You got a rent request for this <a href=\"housedetails.php?house_id=82\">home</a> from a tenant!', 0, '2022-08-22 21:08:07'),
(34, 60, 57, 'You got a rent request for this <a href=\"housedetails.php?house_id=80\">home</a> from a tenant!', 0, '2022-08-22 21:16:00'),
(35, 55, 60, 'Your booked request for this <a href=\"housedetails.php?house_id=82\">house</a> is accepted by the owner!', 0, '2022-08-22 21:20:03'),
(36, 60, 55, 'You got a rent request for this <a href=\"housedetails.php?house_id=81\">home</a> from a tenant!', 0, '2022-08-22 21:21:52'),
(37, 60, 55, 'You got a rent request for this <a href=\"housedetails.php?house_id=78\">home</a> from a tenant!', 0, '2022-08-22 21:22:14'),
(38, 55, 60, 'Your booked request for this <a href=\"housedetails.php?house_id=78\">house</a> is accepted by the owner!', 1, '2022-08-23 05:37:20'),
(39, 60, 55, 'You got a rent request for this <a href=\"housedetails.php?house_id=88\">home</a> from a tenant!', 0, '2022-08-22 21:31:32'),
(40, 55, 60, 'Your booked request for this <a href=\"housedetails.php?house_id=88\">house</a> is accepted by the owner!', 1, '2022-08-23 05:37:17');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_rentrequest`
--

CREATE TABLE `tbl_rentrequest` (
  `id` int(50) NOT NULL,
  `house_id` int(50) NOT NULL,
  `tenant_id` int(50) NOT NULL,
  `owner_id` int(50) NOT NULL,
  `request_status` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_rentrequest`
--

INSERT INTO `tbl_rentrequest` (`id`, `house_id`, `tenant_id`, `owner_id`, `request_status`) VALUES
(7, 35, 52, 53, 0),
(10, 38, 52, 53, 0),
(11, 47, 52, 53, 0),
(12, 73, 56, 53, 0),
(14, 77, 56, 55, 0),
(20, 84, 56, 55, 1),
(21, 87, 56, 55, 1),
(34, 81, 60, 55, 1),
(35, 78, 60, 55, 0),
(36, 88, 60, 55, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE `tbl_user` (
  `id` int(11) NOT NULL,
  `user` enum('owner','tenant') DEFAULT NULL,
  `fname` varchar(32) NOT NULL,
  `lname` varchar(32) NOT NULL,
  `email` varchar(52) NOT NULL,
  `password` varchar(152) NOT NULL,
  `nid` int(20) NOT NULL,
  `address` text NOT NULL,
  `pic` varchar(32) NOT NULL,
  `phone_number` varchar(20) NOT NULL,
  `account` int(10) NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`id`, `user`, `fname`, `lname`, `email`, `password`, `nid`, `address`, `pic`, `phone_number`, `account`, `description`) VALUES
(55, 'owner', 'Sayeda', 'Tahmina', 'tahu@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 2147483647, 'CUET', 'uploads/profile/b9d82f2dac.jpeg', '01812345678', 0, ''),
(56, 'tenant', 'Sayeda', 'Tahmina', 'tahmina@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 5, 'CTG', 'uploads/profile/45f6716a96.jpeg', '01812345678', 0, ''),
(57, 'owner', 'Mushfikur', 'Rahman', 'mushi@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 0, '', 'uploads/profile/089f5a1450.jpeg', '', 0, ''),
(58, 'owner', 'Sayeda', 'Tahmina', 'tahmina@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 0, '', '', '', 0, ''),
(59, 'tenant', 'Mushfikur', 'Rahman', 'muf@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 0, '', '', '', 0, ''),
(60, 'tenant', 'afdasfas', 'dfdsfs', 'aaa@gmail.com', '25d55ad283aa400af464c76d713c07ad', 0, '', '', '', 0, '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_house`
--
ALTER TABLE `tbl_house`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_message`
--
ALTER TABLE `tbl_message`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_rentrequest`
--
ALTER TABLE `tbl_rentrequest`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_house`
--
ALTER TABLE `tbl_house`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=89;

--
-- AUTO_INCREMENT for table `tbl_message`
--
ALTER TABLE `tbl_message`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `tbl_rentrequest`
--
ALTER TABLE `tbl_rentrequest`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
