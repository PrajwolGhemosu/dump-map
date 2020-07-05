-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 04, 2020 at 02:32 PM
-- Server version: 10.3.16-MariaDB
-- PHP Version: 7.3.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `map`
--

-- --------------------------------------------------------

--
-- Table structure for table `mapdata`
--

CREATE TABLE `mapdata` (
  `id` int(11) NOT NULL,
  `lat` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `lng` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `content` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `mapdata`
--

INSERT INTO `mapdata` (`id`, `lat`, `lng`, `image`, `content`) VALUES
(1, '27.047383', '87.608639', 'https://img.icons8.com/color/20/009900/village.png', 'Khalde'),
(2, '27.048905', '87.609000', 'https://img.icons8.com/color/20/009900/pagoda.png', 'Devithan'),
(3, '27.046753', '87.604922', 'https://img.icons8.com/color/20/009900/pagoda.png', 'Sikarithan Kummayak'),
(4, '26.812753', '87.268556', 'https://img.icons8.com/emoji/48/000000/hospital-emoji.png', 'Ghopa Camp'),
(5, '27.710417', '85.348705', 'https://img.icons8.com/color/30/hindu-swastik.png', 'Pashupatinath'),
(6, '27.489763', '83.276223', 'https://img.icons8.com/color/16/000000/meditation-guru.png', 'Lumbini'),
(7, '27.427824', '87.767500', 'https://img.icons8.com/color/20/000000/torii.png', 'Pathivara');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `mapdata`
--
ALTER TABLE `mapdata`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `mapdata`
--
ALTER TABLE `mapdata`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
