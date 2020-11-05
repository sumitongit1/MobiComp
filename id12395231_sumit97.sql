-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Apr 12, 2020 at 09:29 AM
-- Server version: 10.3.16-MariaDB
-- PHP Version: 7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `id12395231_sumit97`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_login`
--

CREATE TABLE `admin_login` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `password` char(60) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `user-id` int(11) NOT NULL,
  `post-id` int(11) NOT NULL,
  `body` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `contact_form`
--

CREATE TABLE `contact_form` (
  `id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `message` varchar(500) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;




-- --------------------------------------------------------

--
-- Table structure for table `customer_login`
--

CREATE TABLE `customer_login` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `password` char(60) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `customer_login`
--

INSERT INTO `customer_login` (`id`, `username`, `password`) VALUES
(1, 'sum1', '$2y$10$MHjivrlTAauyKkhHVd7GheCd/3VsChHT0BaGlDYFmaTmeqFFCZLBm');

-- --------------------------------------------------------


-- --------------------------------------------------------

--
-- Table structure for table `email_list`
--

CREATE TABLE `email_list` (
  `id` int(11) NOT NULL,
  `email` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


-- --------------------------------------------------------

--
-- Table structure for table `notifier_login`
--

CREATE TABLE `notifier_login` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `password` char(60) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `notifier_login`
--

INSERT INTO `notifier_login` (`id`, `username`, `password`) VALUES
(12, '123', '$2y$10$ZjxATCP8iffjdN7Q8eW1oOzwCGG4fyHk.Rp1aqkMREouaVK7rnGBi'),
(11, '12300', '$2y$10$qJqLy3D0gnJFcFeKjhfNQud75oW0njHFOpGQ6BvO3aEaGehbb7A52'),
(10, 'abc123', '$2y$10$U6PHyU/3OmPGLxtpZyPi8.7076Ogg/AHYfdQTatQ1wAtr2KSkj7NK'),
(14, 'aq', '$2y$10$nBfSMATeVXwnzfaNSgrW0u.4iAKSqJvm64jestbmQxNmfZ1SlVC0G'),
(18, 'Jio', '$2y$10$mTf.AqINQe8vrB2UKM2Lh.krQLDvKShC6PRG0CZZ9fDAuuKeRud2a'),
(17, 'qwe', '$2y$10$D7RtBwbXh8De5U2i/NUc2u9FS0Zi0IH5du0NaBJvMiHo9U7vN4b3y'),
(15, 'ret', '$2y$10$CGGvsPRsY0MLT9USGEP95eNGjmVLnqJVoiNTALucrjCcE61qrwmQa'),
(19, 'sum1', '$2y$10$Tp4yPNaz9fTvAVWD/xrvGOlltDoLJPb6v60llB8Y1x2VyA.ZvP12q'),
(7, 'sumit000', '$2y$10$ZO6G.mYDZCVM7IHNjdIvKeNnffyUMZAlimYkuMDPNEZiU4NUlCVoa'),
(8, 'sumit12345', '$2y$10$IpK8eDDiJU98vxN0dKCRIuW8f4ZVMKPwSvneCCnsJINkO0guNQQ6O');

-- --------------------------------------------------------



-- --------------------------------------------------------

--
-- Table structure for table `oem_login`
--

CREATE TABLE `oem_login` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `password` char(60) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `oem_login`
--

INSERT INTO `oem_login` (`id`, `username`, `password`) VALUES
(1, 'Nokia', '$2y$10$VmrG10de2kowCA8ZtMGDw.L6gvYtfRhW1BP.QBEAz9owvhOUd.Xj6'),
(3, 'qwe1', '$2y$10$5B6WRi.wQCSuWT3cdL3WROBqkaY.hcwHVa6SIRWJeVCCvYrqpe5le'),
(2, 'Samsung', '$2y$10$jDHly1jxP4auy1LugaP.3eEeueaVl30WwRICdBsmmYW0k4oL9/S0.');

-- --------------------------------------------------------

--
-- Table structure for table `phones`
--

CREATE TABLE `phones` (
  `OEM` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `model` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `display_size` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `cpu` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `ram` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `internal_memory` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `price` int(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `phones`
--

INSERT INTO `phones` (`OEM`, `model`, `display_size`, `cpu`, `ram`, `internal_memory`, `price`) VALUES
('', 'C3-00', '2.4 inches', 'Symbian40', '128 MB', '64 MB', 5500),
('', 'iPhone 6', '5', '2.4 Ghz', '2', '', 0),
('', 'iPhone 6s', '5.5', '3 Ghz', '1', '', 0),
('qwe', 'BlackPhone', '5 inch', '1.2 GHz', '4 GB', '32 GB', 15000),
('qwe', 'C3-01', '2.4 inches', 'Symbian40', '128 MB', '64 MB', 5500),
('qwe', 'Extreme', '6.2 inch', '1.5 GHz', '6 GB', '64 GB', 12000);

-- --------------------------------------------------------



--
-- Table structure for table `rating_info`
--

CREATE TABLE `rating_info` (
  `user_id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `rating_action` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rating_info`
--

INSERT INTO `rating_info` (`user_id`, `post_id`, `rating_action`) VALUES
(1, 1, 'like'),
(2, 4, 'dislike');

-- --------------------------------------------------------

--
-- Table structure for table `replies`
--

CREATE TABLE `replies` (
  `id` int(11) NOT NULL,
  `user-id` int(11) NOT NULL,
  `comment_id` int(11) NOT NULL,
  `body` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD UNIQUE KEY `id` (`id`,`user-id`,`post-id`);

--
-- Indexes for table `contact_form`
--
ALTER TABLE `contact_form`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customer_login`
--
ALTER TABLE `customer_login`
  ADD UNIQUE KEY `id` (`id`),
  ADD UNIQUE KEY `username` (`username`);


--
-- Indexes for table `email_list`
--
ALTER TABLE `email_list`
  ADD PRIMARY KEY (`id`);




--
-- Indexes for table `oem_login`
--
ALTER TABLE `oem_login`
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `phones`
--
ALTER TABLE `phones`
  ADD UNIQUE KEY `OEM` (`OEM`,`model`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rating_info`
--
ALTER TABLE `rating_info`
  ADD UNIQUE KEY `UC_rating_info` (`user_id`,`post_id`),
  ADD UNIQUE KEY `user_id` (`user_id`),
  ADD UNIQUE KEY `post_id` (`post_id`);

--
-- Indexes for table `replies`
--
ALTER TABLE `replies`
  ADD UNIQUE KEY `id` (`id`,`user-id`,`comment_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;



--
-- AUTO_INCREMENT for table `customer_login`
--
ALTER TABLE `customer_login`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `email_list`
--
ALTER TABLE `email_list`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;


--
-- AUTO_INCREMENT for table `notifier_login`
--
ALTER TABLE `notifier_login`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;


--
-- AUTO_INCREMENT for table `oem_login`
--
ALTER TABLE `oem_login`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `replies`
--
ALTER TABLE `replies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
