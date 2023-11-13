-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 13, 2023 at 07:28 PM
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
-- Database: `mydb`
--

-- --------------------------------------------------------

--
-- Table structure for table `bills`
--

CREATE TABLE `bills` (
  `id` int(6) UNSIGNED NOT NULL,
  `bill_number` varchar(30) NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `items` text NOT NULL,
  `name` varchar(30) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `bills`
--

INSERT INTO `bills` (`id`, `bill_number`, `amount`, `items`, `name`, `date`) VALUES
(1, '12542021', '108000.00', 'GOLD CHAIN', 'Golden Glitz', '2023-04-14'),
(2, '178954', '127200.00', 'GOLD NECKLACE\r\nEAR RING\r\nBRACELET', 'P.K. Jeweller', '2020-02-11'),
(3, '763473', '19200.00', 'DIAMOND NECKLACE\r\nGOLD EAR RINGS\r\nBRACELET', 'Birla Jewels', '2018-08-16'),
(4, '625718', '18000.00', 'DIAMOND NECKLACE\r\nGOLD EAR RINGS', 'Birla Jewels', '2023-01-04');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `mail` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`first_name`, `last_name`, `mail`, `password`) VALUES
('Preetraj', 'Haldar', 'preetrajtheking@gmail.com', 'e10adc3949ba59abbe56e057f20f883e'),
('Nilesh', 'Garg', 'gargnilesh13@gmail.com', 'd8578edf8458ce06fbc5bb76a58c5ca4'),
('Shantanu', 'Jha', '123@gmail.com', 'a152e841783914146e4bcd4f39100686'),
('Devansh', 'Mehra', 'devansh@gmail.com', '961ca99d88aa942b6945f9641f3816a4'),
('Saketh', 'Donepudi', 'sakethdonepudi08@gmail.com', 'e62293f9fd857274f1bd9af01389beee');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bills`
--
ALTER TABLE `bills`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bills`
--
ALTER TABLE `bills`
  MODIFY `id` int(6) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
