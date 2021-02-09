-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 09, 2021 at 06:31 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tic-tac-toe`
--

-- --------------------------------------------------------

--
-- Table structure for table `replay`
--

CREATE TABLE `replay` (
  `id` int(11) NOT NULL,
  `data` longtext NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `replay`
--

INSERT INTO `replay` (`id`, `data`, `created_at`) VALUES
(5, '{\"winner\":\"X\",\"log\":[{\"player\":\"X\",\"box\":0},{\"player\":\"O\",\"box\":3},{\"player\":\"X\",\"box\":4},{\"player\":\"O\",\"box\":7},{\"player\":\"X\",\"box\":8}],\"row\":3}', '2021-02-09 16:42:24'),
(6, '{\"winner\":\"O\",\"log\":[{\"player\":\"X\",\"box\":0},{\"player\":\"O\",\"box\":2},{\"player\":\"X\",\"box\":6},{\"player\":\"O\",\"box\":7},{\"player\":\"X\",\"box\":10},{\"player\":\"O\",\"box\":12},{\"player\":\"X\",\"box\":4},{\"player\":\"O\",\"box\":17},{\"player\":\"X\",\"box\":24},{\"player\":\"O\",\"box\":22}],\"row\":5}', '2021-02-09 16:57:03'),
(7, '{\"winner\":\"O\",\"log\":[{\"player\":\"X\",\"box\":0},{\"player\":\"O\",\"box\":2},{\"player\":\"X\",\"box\":1},{\"player\":\"O\",\"box\":3},{\"player\":\"X\",\"box\":5},{\"player\":\"O\",\"box\":6},{\"player\":\"X\",\"box\":11},{\"player\":\"O\",\"box\":9},{\"player\":\"X\",\"box\":15},{\"player\":\"O\",\"box\":12}],\"row\":4}', '2021-02-09 16:58:15'),
(8, '{\"winner\":\"X\",\"log\":[{\"player\":\"X\",\"box\":0},{\"player\":\"O\",\"box\":4},{\"player\":\"X\",\"box\":9},{\"player\":\"O\",\"box\":10},{\"player\":\"X\",\"box\":18},{\"player\":\"O\",\"box\":20},{\"player\":\"X\",\"box\":27},{\"player\":\"O\",\"box\":30},{\"player\":\"X\",\"box\":36},{\"player\":\"O\",\"box\":39},{\"player\":\"X\",\"box\":45},{\"player\":\"O\",\"box\":47},{\"player\":\"X\",\"box\":54},{\"player\":\"O\",\"box\":55},{\"player\":\"X\",\"box\":63}],\"row\":8}', '2021-02-09 17:00:46'),
(9, '{\"winner\":\"O\",\"log\":[{\"player\":\"X\",\"box\":4},{\"player\":\"O\",\"box\":0},{\"player\":\"X\",\"box\":2},{\"player\":\"O\",\"box\":5},{\"player\":\"X\",\"box\":7},{\"player\":\"O\",\"box\":10},{\"player\":\"X\",\"box\":12},{\"player\":\"O\",\"box\":15}],\"row\":4}', '2021-02-09 17:17:54');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `replay`
--
ALTER TABLE `replay`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `replay`
--
ALTER TABLE `replay`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
