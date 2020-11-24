-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Nov 24, 2020 at 01:52 PM
-- Server version: 5.7.31
-- PHP Version: 7.4.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `images`
--

-- --------------------------------------------------------

--
-- Table structure for table `myImages`
--

CREATE TABLE `myImages` (
  `PicID` int(11) NOT NULL,
  `ImageSRC` varchar(50) NOT NULL,
  `Description` varchar(512) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `myImages`
--

INSERT INTO `myImages` (`PicID`, `ImageSRC`, `Description`) VALUES
(1, 'AdminBuilding.jpg', 'Mercer University Administration Building'),
(2, 'CampusFromAbove.jpg', 'Arial Photo of Mercer University campus in Macon GA'),
(3, 'HistoricQuad.jpg', 'Mercer University\'s Historic Quad'),
(4, 'MercerBearLogo.jpg', 'Mercer Bear'),
(5, 'TarverLib.jpg', 'Mercer\'s Library in Macon GA'),
(6, 'UC.jpg', 'Mercer\'s University Center'),
(7, 'MercerBearLogo.jpg', 'The Bear again'),
(8, 'UC.jpg', 'This is the University Center');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `myImages`
--
ALTER TABLE `myImages`
  ADD PRIMARY KEY (`PicID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `myImages`
--
ALTER TABLE `myImages`
  MODIFY `PicID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
