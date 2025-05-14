-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 14, 2025 at 03:19 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `events`
--

-- --------------------------------------------------------

--
-- Table structure for table `bookedevents`
--

CREATE TABLE `bookedevents` (
  `id` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `eventId` int(11) NOT NULL,
  `bookingDate` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `bookedevents`
--

INSERT INTO `bookedevents` (`id`, `userId`, `eventId`, `bookingDate`) VALUES
(1, 3, 1, '2025-05-13 23:07:33'),
(2, 3, 2, '2025-05-14 12:47:18'),
(3, 5, 1, '2025-05-14 12:56:44');

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE `events` (
  `id` int(11) NOT NULL,
  `EventName` varchar(200) DEFAULT NULL,
  `description` varchar(200) DEFAULT NULL,
  `Location` varchar(200) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `create_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `events`
--

INSERT INTO `events` (`id`, `EventName`, `description`, `Location`, `price`, `create_at`) VALUES
(1, 'Test Event', 'This is a test event', 'Nairobi', 1000, '2025-05-13 20:36:37'),
(2, 'Nanc\'s Weeding', 'wedding part', 'Kigali , Rwanda ', 5000, '2025-05-13 20:07:01');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `userid` int(11) NOT NULL,
  `fullname` varchar(200) DEFAULT NULL,
  `email` varchar(200) DEFAULT NULL,
  `phoneNumber` varchar(20) DEFAULT NULL,
  `password` varchar(200) DEFAULT NULL,
  `Account_created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`userid`, `fullname`, `email`, `phoneNumber`, `password`, `Account_created_at`) VALUES
(1, 'ishimwe nancy', 'nancy@gmail.com', '+254700000000', '$2y$10$h7pHKMH9wHaJ/ZbWNgMHKOaoTpqesKPlASlzikccGh3O6aPAL02QC', '2025-05-13 19:51:52'),
(2, 'Test User', NULL, '254712345678', 'hashed_password', '2025-05-13 20:36:18'),
(3, 'shyaka', 'shya@gmail.com', '0785073602', '$2y$10$8Eeec2Hb8XcnsSxzIok.9OPj8CIsAHGnrlVcgyBYfutCDPQ8fieau', '2025-05-13 20:42:30'),
(4, 'aima', 'shyaka@gmail.com', '+250738596695', '$2y$10$mqQxQgChixKGIGL3NsLF.uwMw83giOXDFNJF/1dszfeIUi98fjtX.', '2025-05-13 23:00:06'),
(5, 'nancy', '1010', '+250788596695', '$2y$10$bMr0Qc.bCHVT0TG/H43h7eVYH4tM5HsFxGow8S7V.9uOOCfDH.72W', '2025-05-13 23:09:47'),
(6, 'ishimwe', 'nancy@gmail.com', '07850736021', '$2y$10$y3.1Va9XBcvo2fP4wZd9KelSljgQsLve70GBRgJhOOLSATh1jZZxS', '2025-05-14 10:48:58');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bookedevents`
--
ALTER TABLE `bookedevents`
  ADD PRIMARY KEY (`id`),
  ADD KEY `userId` (`userId`),
  ADD KEY `eventId` (`eventId`);

--
-- Indexes for table `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`userid`),
  ADD UNIQUE KEY `phoneNumber` (`phoneNumber`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bookedevents`
--
ALTER TABLE `bookedevents`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `events`
--
ALTER TABLE `events`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `userid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `bookedevents`
--
ALTER TABLE `bookedevents`
  ADD CONSTRAINT `bookedevents_ibfk_1` FOREIGN KEY (`userId`) REFERENCES `users` (`userid`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
