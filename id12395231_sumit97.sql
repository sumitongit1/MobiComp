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

--
-- Dumping data for table `contact_form`
--

INSERT INTO `contact_form` (`id`, `name`, `email`, `message`) VALUES
(1, 'Sumit Kumar', 'therokinnstar@gmail.com', 'Very good website. Keep it up..'),
(2, 'Amit', 'amit@gmail.com', 'hello sumit  how are you?'),
(3, 'Abhishek', '2015017085.abhishek@ug.sharda.ac.in', 'Acha kiya hai'),
(4, 'sumie', 'sumitapps11@gmail.com', 'great app'),
(5, 'Sumit', 'sumitapps11@gmail.com', 'Great website '),
(6, 'Sumit', 'sumitk11@hotmail.com', 'Hello');

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

--
-- Table structure for table `dish_info`
--

CREATE TABLE `dish_info` (
  `SN` int(2) DEFAULT NULL,
  `dish_name` varchar(100) DEFAULT NULL,
  `ING1` varchar(100) DEFAULT NULL,
  `ING2` varchar(100) DEFAULT NULL,
  `ING3` varchar(100) DEFAULT NULL,
  `ING4` varchar(100) DEFAULT NULL,
  `ING5` varchar(100) DEFAULT NULL,
  `ING6` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `dish_info`
--

INSERT INTO `dish_info` (`SN`, `dish_name`, `ING1`, `ING2`, `ING3`, `ING4`, `ING5`, `ING6`) VALUES
(1, ' Aloo baingan masala', 'Eggplants', 'Potato', 'Tomato', 'Ginger', 'Coriander Leaves (optional)', 'Garlic'),
(2, 'Aloo Gobi', 'Onion', 'Cauliflower', 'Potato', 'Tomato', 'Ginger', 'Garlic'),
(3, 'Aloo ki tikki', 'Potato', 'Green Peas', 'Ginger', 'Lemon Juice', 'Bread', 'Coriander Seeds'),
(4, 'Aloo matar', 'Onion', 'Ginger-Garlic Paste', 'Tomato', 'Potatoes', 'Green Peas', 'Cilantro'),
(5, 'Aloo methi', 'Potato', 'Ginger/ Garlic', 'Hing/ Asafetida', 'Fenugreek Leaves', 'Cumin Seeds', 'Mango Powder'),
(6, 'Aloo Shimla Mirch', 'Potato', 'Garlic', 'Onion', 'Mango Powder', 'Coriander Leaves', 'Green Capsicum'),
(7, 'Amriti with rabdi', 'Full Fat Milk', 'Cardomoms', 'Saffron', 'Rose Water', 'Almons', 'Pistachios'),
(8, 'Amritsari fish', 'Fish', 'Ginger/ Garlic', 'Ajwain', 'Lemon Juice', 'Egg', 'Yogurt'),
(9, 'Amritsari kulcha', 'Onion', 'Potato', 'Ginger', 'Anaar Dana', 'Lemon Juice', 'Coriander Leaves'),
(10, 'Appam', 'Rice', 'Coconut Milk', 'Yeast', '', '', ''),
(11, 'Avail', 'Drumsticks', 'French beans', ' Red pumpkin', 'Raw banana', 'Green peas', ' Brinjal'),
(12, 'Ajwain', 'Asafoetida', 'Ghee', 'Vazhakkai', 'Cooking soda', 'Kadala maavu', 'Corn flour'),
(13, 'Bisi bele bath', 'Fenugreek Seeds', 'Coriander Seed', 'Pods Cardamom', 'Cloves', 'Poppy seeds', 'Sesame seeds'),
(14, 'Bombay Duck', 'Rice batter\r\n', 'Lemon juice', 'Bombil Fish', 'Ginger', 'Scraped coconut', NULL),
(15, 'Bonda', 'Maida Flour', 'Curd ', 'Baking soda ', 'Coriander leaves', 'Chopped ginger', NULL),
(16, 'Butter chicken', 'Ginger and garlic paste', 'Curd', 'White butter', 'Black cumin seeds', 'Raw chicken', ' Fenugreek leaves '),
(17, 'Chaat', ' cooked rajma', 'cooked channa', 'chowli beans', 'cooked potatoes', 'chopped onions', 'lemon juice'),
(18, 'Chettinad Chicken', 'Chicken', 'Manjal Podi ', 'Lemon Juice', 'Fennel Seeds', 'Cinnamon Stick', 'Kalpasi'),
(19, 'Chevdo', 'Potatoes', 'Split chickpeas', 'Whole mung', 'Almond', 'Cashews', 'White pepper'),
(20, 'Chicken 65', ' Chicken breasts', 'Ginger paste', 'Garlic paste', 'Coriander powder', ' Egg', 'Mustard seeds'),
(21, 'Chole bhature ', 'Chickpea', 'Bay leaves', 'Black Cardamom', ' Baking soda', 'Boil the chole', 'Cilantro leaves'),
(22, 'Dahi vada', 'Yogurt', 'Urad', ' Eno', 'Curd', 'Cumin seeds', ' Moong Dal'),
(23, 'Chicken razala', 'Laung', 'Kali mirch', 'Elaichi', 'Dal chini', 'Poppy seeds', 'Cashews'),
(24, 'Chicken Tikka', 'coriander leaves\r\n', 'peppercorns', 'Lime', 'Garlic', 'Boneless chicken', 'Ginger'),
(25, 'Chicken tikka msala', 'cinnamon', 'cilantro', 'cumin', 'lemon', 'minced', 'Muir Glen'),
(26, 'Daal bati churma', 'Chana dal', 'Whole moong', 'Coriander ', 'Cloves', 'Bayleaves', 'Tamarind'),
(26, 'Ennai kathirikkai', 'Brinjal', 'Tomato', 'Tamarind', 'Fenugreek seeds', 'Grated coconut ', 'Coriander leaveS'),
(27, 'Daal makhani', 'Urad Dal', ' cumin seeds', ' Red kidney beans', ' Gingerroot', 'Cream', 'garlic cloves'),
(28, 'Dosa', 'rice', 'Split', 'Fenugreek seeds', 'Curry leaves', 'Potatoes', NULL),
(29, 'Double ka meetha', 'Bread slices', 'Condensed milk', 'Green cardamom', ' Saffron', 'Rose water', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `email_list`
--

CREATE TABLE `email_list` (
  `id` int(11) NOT NULL,
  `email` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `email_list`
--

INSERT INTO `email_list` (`id`, `email`) VALUES
(1, 'therokinnstar@gmail.com'),
(2, 'sumitk11@hotmail.com'),
(3, 'sumitapps11@gmail.com'),
(4, '2015017085.abhishek@ug.sharda.ac.in');

-- --------------------------------------------------------

--
-- Table structure for table `lottery_number`
--

CREATE TABLE `lottery_number` (
  `post_id` int(3) UNSIGNED NOT NULL,
  `created` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `lottery_number` bigint(19) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `lottery_number`
--

INSERT INTO `lottery_number` (`post_id`, `created`, `lottery_number`) VALUES
(1, '2020-02-10 00:00:00', 656565),
(2, '2020-02-11 16:04:02', 445454545),
(3, '2020-02-11 16:14:01', 123456789),
(4, '2020-02-11 20:19:39', 99999999),
(5, '2020-02-11 20:21:42', 1212121212),
(6, '2020-02-11 20:36:31', 987456321),
(7, '2020-02-11 21:42:59', 1212121212),
(8, 'February 12, 2020, 3:18 am IST', 26565656),
(9, 'February 12, 2020, 3:24 am IST', 2828385228282),
(10, 'February 12, 2020, 3:27 am IST', 2828385228282),
(11, 'February 12, 2020, 3:29 am IST', 9540625267),
(12, 'February 12, 2020, 3:33 am IST', 2828385228282),
(13, 'February 12, 2020, 3:39 am IST', 123456789123456789),
(14, 'February 12, 2020, 3:52 am IST', 2828385228282),
(15, 'February 12, 2020, 2:27 pm IST', 56555656565);

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

--
-- Table structure for table `notifier_post`
--

CREATE TABLE `notifier_post` (
  `post_id` bigint(20) UNSIGNED NOT NULL,
  `created` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `notification` varchar(200) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `notifier_post`
--

INSERT INTO `notifier_post` (`post_id`, `created`, `notification`) VALUES
(34, '2020-02-10 00:00:00', 'Tommorow results to be announced at 2 PM.'),
(35, '2020-02-10 00:00:00', 'Lottery cancelld'),
(36, '2020-02-10 00:00:00', 'Lottery cancelled.'),
(37, '2020-02-10 00:00:00', 'Lottery cancelled.'),
(38, '2020-02-10 00:00:00', 'Lottery cancelled.'),
(39, '2020-02-10 20:34:00', 'meow'),
(40, '2020-02-10 21:20:27', 'New result will be announced tomorrow'),
(41, '2020-02-11 16:03:42', 'Mr. SUMIT KUMAR has won 1 Lakh Rupees'),
(42, '2020-02-11 20:18:42', 'Mr. ADMIN has won 1 crore rupees'),
(43, '2020-02-11 20:22:15', 'Kaun Banega Crorepati @ 9 PM today!!'),
(44, '2020-02-11 20:23:25', 'mmm'),
(45, '2020-02-11 20:26:11', '123'),
(46, '2020-02-11 20:32:59', 'Developer of this site has won 10 crore!!'),
(47, '2020-02-11 20:36:22', 'Hello, Launching this website'),
(48, '2020-02-11 21:26:51', 'q'),
(49, 'February 12, 2020, 3:17 am IST', 'Hello'),
(50, 'February 12, 2020, 3:21 am IST', 'New result will be announced tomorrow'),
(51, 'February 12, 2020, 3:29 am IST', 'Website created successfully with IST date and password security. '),
(52, 'February 12, 2020, 3:53 am IST', 'New result will be announced tomorrow'),
(53, 'February 12, 2020, 3:53 am IST', 'Website created successfully with IST date and password security. '),
(54, 'February 12, 2020, 2:27 pm IST', 'Welcome to this portal'),
(55, 'February 12, 2020, 2:28 pm IST', 'hello my name is sumit');

-- --------------------------------------------------------

--
-- Table structure for table `nutrition`
--

CREATE TABLE `nutrition` (
  `dish_name` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `calories` int(3) NOT NULL,
  `total fat` int(3) NOT NULL,
  `sat_fat` int(3) NOT NULL,
  `trans_fat` int(3) NOT NULL,
  `cholesterol` int(3) NOT NULL,
  `sodium` int(3) NOT NULL,
  `total_carbohydrate` int(3) NOT NULL,
  `dietery_fiber` int(3) NOT NULL,
  `sugar` int(3) NOT NULL,
  `protein` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `nutrition`
--

INSERT INTO `nutrition` (`dish_name`, `calories`, `total fat`, `sat_fat`, `trans_fat`, `cholesterol`, `sodium`, `total_carbohydrate`, `dietery_fiber`, `sugar`, `protein`) VALUES
('Aloo baingan masala', 100, 5, 0, 0, 0, 0, 32, 0, 0, 1),
('aloo gobi', 300, 10, 1, 0, 0, 100, 38, 10, 0, 8),
('aloo ki tikki', 120, 2, 0, 0, 0, 0, 12, 1, 0, 1),
('aloo matar', 242, 7, 1, 0, 0, 409, 40, 7, 5, 6),
('aloo methi', 120, 3, 1, 0, 0, 110, 24, 3, 12, 2),
('Aloo Shimla Mirch', 180, 6, 1, 0, 20, 230, 30, 1, 0, 3),
('Amriti with rabdi', 700, 7, 2, 0, 240, 382, 151, 12, 112, 17),
('Amritsari fish', 53, 2, 0, 0, 0, 19, 118, 2, 3, 2),
('Amritsari kulcha', 80, 3, 0, 0, 0, 510, 13, 2, 10, 2),
('Appam', 80, 0, 0, 0, 0, 0, 0, 0, 0, 0);

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
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `text` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `text`) VALUES
(1, 'This is the first post'),
(2, 'This is the second piece of text'),
(3, 'This is the third post'),
(4, 'This is the fourth piece of text');

-- --------------------------------------------------------

--
-- Table structure for table `ratings`
--

CREATE TABLE `ratings` (
  `dish_name` text COLLATE utf8_unicode_ci NOT NULL,
  `total_votes` int(11) NOT NULL,
  `likes` int(11) NOT NULL,
  `dislike` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `ratings`
--

INSERT INTO `ratings` (`dish_name`, `total_votes`, `likes`, `dislike`) VALUES
('', 50, 32, 18),
('', 50, 32, 18),
(' Aloo baingan masala', 50, 32, 18),
('Aloo Gobi', 50, 32, 18),
('Aloo ki tikki', 50, 32, 18),
('Aloo matar', 50, 32, 18),
('Aloo methi', 50, 32, 18),
('Aloo shimla mirch', 50, 32, 18),
('Amriti with rabdi', 50, 32, 18),
('Amritsari fish', 50, 32, 18),
('Amritsari kulcha', 50, 32, 18),
('Appam', 50, 32, 18),
('Chicken razala', 50, 32, 18),
('Chicken Tikka', 50, 32, 18),
('Chicken tikka msala', 50, 32, 18),
('Avail', 50, 32, 18),
('Ajwain', 50, 32, 18),
('Bisi bele bath', 50, 32, 18),
('Bombay duck', 50, 32, 18),
('Bonda', 50, 32, 18),
('Butter chicken', 50, 32, 18),
('Chaat', 50, 32, 18),
('CHETTINAD CHICKEN', 50, 32, 18),
('Chevdo', 50, 32, 18),
('Chicken 65', 50, 32, 18),
('Chole bhature ', 50, 32, 18),
('Dahi vada', 50, 32, 18),
('Daal bati churma', 50, 32, 18),
('Daal makhani', 50, 32, 18),
('Dosa', 50, 32, 18),
('Double ka meetha', 50, 32, 18),
('Ennai kathirikkai', 50, 32, 18),
('Ennai kathirikkai', 50, 32, 18);

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
-- Indexes for table `dish_info`
--
ALTER TABLE `dish_info`
  ADD UNIQUE KEY `dish_name` (`dish_name`);

--
-- Indexes for table `email_list`
--
ALTER TABLE `email_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lottery_number`
--
ALTER TABLE `lottery_number`
  ADD PRIMARY KEY (`post_id`);

--
-- Indexes for table `notifier_login`
--
ALTER TABLE `notifier_login`
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `notifier_post`
--
ALTER TABLE `notifier_post`
  ADD PRIMARY KEY (`post_id`),
  ADD UNIQUE KEY `post_id` (`post_id`);

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
-- AUTO_INCREMENT for table `contact_form`
--
ALTER TABLE `contact_form`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

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
-- AUTO_INCREMENT for table `lottery_number`
--
ALTER TABLE `lottery_number`
  MODIFY `post_id` int(3) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `notifier_login`
--
ALTER TABLE `notifier_login`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `notifier_post`
--
ALTER TABLE `notifier_post`
  MODIFY `post_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

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
