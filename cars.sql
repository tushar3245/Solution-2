-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 02, 2024 at 07:56 AM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `car_inventory_system`
--

-- --------------------------------------------------------

--
-- Table structure for table `cars`
--

CREATE TABLE `cars` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `year` year(4) NOT NULL,
  `carType` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batteryCapacity` int(11) DEFAULT NULL,
  `fuelEfficiency` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cars`
--

INSERT INTO `cars` (`id`, `name`, `model`, `year`, `carType`, `batteryCapacity`, `fuelEfficiency`, `created_at`, `updated_at`) VALUES
(1, 'Toyota Axio', 'Axio', 2011, 'Electric', 49, NULL, '2024-02-01 23:41:06', '2024-02-01 23:41:06'),
(2, 'Toyota C-HR', 'C-HR G-LED', 2017, 'Electric', 41, NULL, '2024-02-01 23:42:15', '2024-02-01 23:42:15'),
(3, 'Mitsubishi Outlander', 'Outlander', 2014, 'Gas', 41, 34, '2024-02-01 23:44:07', '2024-02-01 23:44:07'),
(4, 'BMW X1', 'BMW X1', 2017, 'Gas', 41, 83, '2024-02-01 23:45:36', '2024-02-01 23:45:36'),
(5, 'Suzuki Maruti', 'Suzuki Maruti', 2015, 'Gas', 41, 38, '2024-02-01 23:47:21', '2024-02-01 23:47:21'),
(6, 'Tata Indigo', 'Tata endigo', 2024, 'Electric', 68, NULL, '2024-02-01 23:49:19', '2024-02-01 23:49:19'),
(7, 'Tata Indigo', 'Tata endigo', 2024, 'Electric', 68, NULL, '2024-02-01 23:49:45', '2024-02-01 23:49:45'),
(8, 'Tata Indigo', 'Tata endigo', 2024, 'Electric', 68, NULL, '2024-02-01 23:49:55', '2024-02-01 23:49:55'),
(9, 'Tata Indigo', 'Tata endigo', 2024, 'Electric', 68, NULL, '2024-02-01 23:50:01', '2024-02-01 23:50:01'),
(10, 'Tata Indigo', 'Tata endigo', 2024, 'Electric', 68, NULL, '2024-02-01 23:50:10', '2024-02-01 23:50:10');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cars`
--
ALTER TABLE `cars`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cars`
--
ALTER TABLE `cars`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
