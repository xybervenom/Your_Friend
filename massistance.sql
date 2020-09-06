-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Sep 06, 2020 at 11:39 AM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.4.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `massistance`
--

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` int(11) NOT NULL,
  `message` text NOT NULL,
  `logs` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id`, `message`, `logs`) VALUES
(1, 'This is a first test message', '2020-09-06 05:30:39'),
(5, 'This is time testing 1', '2020-09-06 09:09:44'),
(6, 'This is time testing message2', '2020-09-06 09:09:58'),
(7, 'This is line testing message', '2020-09-06 09:09:04'),
(8, 'This is line testing message 2', '2020-09-06 09:09:23'),
(9, 'This is test message 3', '2020-09-06 09:09:30'),
(10, 'This is test message 4', '2020-09-06 09:09:26'),
(11, 'This is test message5', '2020-09-06 09:09:47'),
(12, 'Hi this is final test message\r\n', '2020-09-06 09:09:04'),
(13, 'This is final test message 2\r\n', '2020-09-06 09:09:37'),
(14, 'Hi This is final test message 3', '2020-09-06 09:09:08'),
(15, 'This is final testing 4', '2020-09-06 09:09:15'),
(16, 'Hi this ifs final testing 5', '2020-09-06 09:09:41'),
(17, 'Hey there', '2020-09-06 10:09:36'),
(18, 'Hi I need mental assistance', '2020-09-06 10:09:59'),
(20, 'Hey tell your problem I would be happy to help you', '2020-09-06 10:09:02');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` tinytext NOT NULL,
  `password` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`) VALUES
(1, 'volunteer1', 'volunteer1');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
