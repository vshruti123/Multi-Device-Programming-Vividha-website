-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Apr 11, 2019 at 01:10 PM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `Vividha`
--

-- --------------------------------------------------------

--
-- Table structure for table `Users`
--

CREATE TABLE `Users` (
  `user_id` int(11) NOT NULL,
  `user_name` varchar(100) NOT NULL,
  `user_email` varchar(100) NOT NULL,
  `user_password` varchar(150) NOT NULL,
  `user_contact` varchar(10) NOT NULL,
  `user_city` varchar(50) NOT NULL,
  `user_address` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Users`
--

INSERT INTO `Users` (`user_id`, `user_name`, `user_email`, `user_password`, `user_contact`, `user_city`, `user_address`) VALUES
(1, 'Abdemanaaf Ghadiali', 'abdemanaaf.ghadiali@st.niituniversity.in', '$2y$12$GPof.TKxa/nRz0VQlSsVtuthQpqy1KF2gSsFR/4gmQME9yfJr6yDS', '9619268524', 'Mumbai', '3/A, Sheriar Baur, Ramchandra Bhatt Road'),
(2, 'Gauri Sinha', 'gauri.sinha@st.niituniversity.in', '$2y$12$L4NkQvp36noLY.sCpMlxe.t6zBXvAjNQtj4aIl49g.qNWVXAc5ypi', '9711049421', 'Delhi', 'Vasant Vihar, Delhi'),
(3, 'Anshit Saxena', 'anshit.saxena@st.niituniversity.in', '$2y$12$lb9spFIDi0DqvZNE.vNFOepPINpFfrtYsHel9/6eUUpuAeIoG25.e', '9876543210', 'Delhi', 'Malviya Nagar, Delhi');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Users`
--
ALTER TABLE `Users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Users`
--
ALTER TABLE `Users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
