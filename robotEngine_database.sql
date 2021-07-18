-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 09, 2021 at 06:16 PM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 8.0.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `robot_database`
--

-- --------------------------------------------------------

--
-- Table structure for table `robot_database`
--

CREATE TABLE `robot_database` (
  `motor1` int(3) NOT NULL,
  `motor2` int(3) NOT NULL,
  `motor3` int(3) NOT NULL,
  `motor4` int(3) NOT NULL,
  `motor5` int(3) NOT NULL,
  `motor6` int(3) NOT NULL,
  `Status` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `robot_database`
--

INSERT INTO `robot_database` (`motor1`, `motor2`, `motor3`, `motor4`, `motor5`, `motor6`, `Status`) VALUES
(90, 0, 75, 0, 0, 0, 0),
(0, 0, 113, 0, 0, 0, 0),
(89, 75, 104, 40, 117, 180, 0),
(89, 132, 50, 144, 68, 122, 0),
(158, 180, 113, 86, 118, 0, 0),
(166, 85, 0, 0, 0, 0, 0),
(137, 129, 56, 0, 0, 0, 0),
(180, 0, 0, 0, 0, 0, 0),
(0, 0, 0, 180, 0, 0, 1),
(180, 180, 0, 0, 0, 0, 0),
(180, 180, 0, 0, 0, 0, 0),
(180, 180, 180, 180, 0, 0, 1),
(100, 149, 122, 79, 70, 28, 0),
(124, 87, 168, 70, 136, 82, 1),
(180, 0, 0, 0, 0, 0, 1),
(108, 0, 0, 0, 0, 180, 1),
(180, 180, 0, 0, 0, 0, 1),
(180, 180, 180, 0, 0, 0, 1),
(121, 180, 0, 0, 0, 180, 0);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
