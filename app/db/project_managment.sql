-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 15, 2021 at 08:18 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `project_managment`
--

-- --------------------------------------------------------

--
-- Table structure for table `issue_master`
--

CREATE TABLE `issue_master` (
  `id` int(11) NOT NULL,
  `client_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `issue` text NOT NULL,
  `call_date` datetime NOT NULL,
  `solution` text DEFAULT NULL,
  `status` enum('PENDING','RUNNING','DONE','CLOSE','HOLD','REJECTED') NOT NULL,
  `start_date` datetime DEFAULT NULL,
  `close_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `issue_master`
--

INSERT INTO `issue_master` (`id`, `client_id`, `product_id`, `issue`, `call_date`, `solution`, `status`, `start_date`, `close_date`) VALUES
(1, 1, 6, 'hello', '2021-04-13 13:05:01', 'bye', 'HOLD', '2021-04-14 14:48:59', '2021-04-08 11:58:14'),
(2, 1, 6, 'hello', '2021-04-13 13:05:01', 'bye', 'HOLD', '2021-04-14 14:48:59', '2021-04-08 11:58:14'),
(3, 5, 8, 'nhsajkldsk', '2021-04-21 13:39:51', 'wgywguwgheug', 'RUNNING', '2021-04-22 13:39:51', '2021-04-05 14:48:59');

-- --------------------------------------------------------

--
-- Table structure for table `product_investment_master`
--

CREATE TABLE `product_investment_master` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `dev_point` varchar(255) NOT NULL,
  `status` enum('RUNNING','DONE','HOLD','CANCEL','START') NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `deadline` datetime DEFAULT NULL,
  `investment` double NOT NULL,
  `start_date` datetime DEFAULT NULL,
  `close_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product_investment_master`
--

INSERT INTO `product_investment_master` (`id`, `product_id`, `dev_point`, `status`, `description`, `deadline`, `investment`, `start_date`, `close_date`) VALUES
(1, 6, 'abc', '', 'qwertyu', '2021-04-07 11:58:14', 200000, '2021-04-14 11:58:14', '2021-04-08 11:58:14'),
(2, 38, 'hasjksdjd', 'HOLD', 'ajkdhjksdgf', '2021-04-06 12:02:23', 34747, '2021-04-22 12:02:23', '2021-04-12 12:02:23');

-- --------------------------------------------------------

--
-- Table structure for table `product_master`
--

CREATE TABLE `product_master` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `description` text DEFAULT NULL,
  `type` enum('OFFLINE','ONLINE') NOT NULL,
  `technology` enum('PHP','C#.NET','JAVA') NOT NULL,
  `web` tinyint(4) NOT NULL DEFAULT 1,
  `android` tinyint(4) NOT NULL DEFAULT 0,
  `is_active` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` datetime NOT NULL,
  `modified_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product_master`
--

INSERT INTO `product_master` (`id`, `name`, `description`, `type`, `technology`, `web`, `android`, `is_active`, `created_at`, `modified_at`) VALUES
(3, 'SHOPCARE', '', 'OFFLINE', 'C#.NET', 0, 0, 1, '2021-03-17 23:09:54', '2021-03-17 23:09:54'),
(5, 'Krushi', '', 'OFFLINE', 'C#.NET', 0, 0, 1, '2021-03-17 23:15:31', '2021-03-18 10:05:00'),
(6, 'CA Project', 'dfdfd', 'ONLINE', 'PHP', 1, 0, 1, '2021-03-19 00:00:00', '2021-03-19 00:00:00'),
(7, 'Test Application', '', 'ONLINE', 'C#.NET', 1, 1, 1, '2021-03-24 14:20:36', '2021-03-24 14:20:36'),
(8, 'Kamdhenu', '', 'OFFLINE', 'C#.NET', 0, 0, 1, '2021-03-24 15:07:53', '2021-03-24 15:07:53'),
(9, 'Kamdhenu', '', 'OFFLINE', 'C#.NET', 0, 0, 1, '2021-03-24 16:33:44', '2021-03-24 16:33:44'),
(10, 'Kamdhenu', '', 'OFFLINE', 'C#.NET', 0, 0, 1, '2021-03-24 22:13:32', '2021-03-24 22:13:32'),
(11, 'Kamdhenu', '', 'OFFLINE', 'C#.NET', 0, 0, 1, '2021-03-24 22:14:39', '2021-03-24 22:14:39'),
(12, 'balaji', '', 'OFFLINE', 'C#.NET', 0, 0, 1, '2021-03-28 14:23:38', '2021-03-28 14:23:38'),
(13, 'PRject mangement', 'self project', 'ONLINE', 'PHP', 0, 0, 0, '2021-04-04 14:41:47', '2021-04-04 14:41:47'),
(14, 'pppp`', 'sfdsfdsf', 'ONLINE', 'PHP', 0, 0, 1, '2021-04-04 15:17:29', '2021-04-04 15:17:29'),
(15, 'project management', 'ddddd', 'ONLINE', 'PHP', 0, 1, 1, '2021-04-04 15:18:28', '2021-04-04 15:18:28'),
(16, 'ssss', 'wwww', 'ONLINE', 'PHP', 1, 0, 1, '2021-04-04 15:21:46', '2021-04-04 15:21:46'),
(17, 'praddi22', 'dfdfdf', 'ONLINE', 'PHP', 1, 1, 1, '2021-04-04 15:47:20', '2021-04-04 15:47:20'),
(18, 'praddi22', 'dfdfdf', 'ONLINE', 'PHP', 1, 1, 1, '2021-04-04 15:47:41', '2021-04-04 15:47:41'),
(19, 'dfdfdfgd', 'vdvdcg', 'ONLINE', 'PHP', 1, 1, 1, '2021-04-04 15:48:15', '2021-04-04 15:48:15'),
(20, 'dfdfdfgd', 'vdvdcg', 'ONLINE', 'PHP', 1, 1, 1, '2021-04-04 15:53:49', '2021-04-04 15:53:49'),
(21, 'fdsfdsd', 'sssdfs', 'ONLINE', 'PHP', 1, 1, 1, '2021-04-04 15:54:12', '2021-04-04 15:54:12'),
(22, 'dsfdfd', 'vdfvdf', 'ONLINE', 'PHP', 0, 0, 1, '2021-04-04 15:59:37', '2021-04-04 15:59:37'),
(23, 'dsfdfd', 'vdfvdf', 'ONLINE', 'PHP', 0, 0, 1, '2021-04-04 16:00:18', '2021-04-04 16:00:18'),
(24, 'sdssd', 'sdsds', 'ONLINE', 'PHP', 1, 1, 1, '2021-04-04 16:01:50', '2021-04-04 16:01:50'),
(25, 'sdssd', 'sdsds', 'ONLINE', 'PHP', 1, 1, 1, '2021-04-04 16:02:10', '2021-04-04 16:02:10'),
(26, 'scsfsd', 'xssds', 'ONLINE', 'PHP', 1, 1, 1, '2021-04-04 16:04:33', '2021-04-04 16:04:33'),
(27, 'sfdfs', 'sfsf', 'ONLINE', 'PHP', 0, 0, 1, '2021-04-04 16:10:08', '2021-04-04 16:10:08'),
(28, 'sdsds', 'sdsd', 'ONLINE', 'PHP', 0, 0, 1, '2021-04-04 16:12:43', '2021-04-04 16:12:43'),
(29, 'cddf', 'sdsd', 'ONLINE', 'PHP', 1, 1, 1, '2021-04-04 16:15:01', '2021-04-04 16:15:01'),
(30, 'sdsadf', '', 'ONLINE', 'PHP', 0, 0, 1, '2021-04-04 16:15:32', '2021-04-04 16:15:32'),
(31, 'sdsadf', '', 'ONLINE', 'PHP', 0, 0, 1, '2021-04-04 16:15:52', '2021-04-04 16:15:52'),
(32, 'sas', '', 'ONLINE', 'PHP', 0, 0, 1, '2021-04-04 16:16:43', '2021-04-04 16:16:43'),
(33, 'sas', '', 'ONLINE', 'PHP', 0, 0, 1, '2021-04-04 16:17:36', '2021-04-04 16:17:36'),
(34, 'fgdgf', '', 'ONLINE', 'PHP', 0, 0, 1, '2021-04-04 16:26:04', '2021-04-04 16:26:04'),
(35, 'xcxcx', '', 'ONLINE', 'PHP', 0, 0, 1, '2021-04-04 16:27:44', '2021-04-04 16:27:44'),
(36, 'dfdf', 'scsc', 'ONLINE', 'PHP', 0, 0, 1, '2021-04-04 16:31:07', '2021-04-04 16:31:07'),
(37, 'dcdc', '', 'ONLINE', 'PHP', 0, 0, 1, '2021-04-04 16:33:04', '2021-04-04 16:33:04'),
(38, 'cscsdsd', '', 'ONLINE', 'PHP', 0, 0, 1, '2021-04-04 16:36:18', '2021-04-04 16:36:18');

-- --------------------------------------------------------

--
-- Table structure for table `user_amc_details`
--

CREATE TABLE `user_amc_details` (
  `id` int(11) NOT NULL,
  `upm_id` int(11) NOT NULL,
  `amc_amount` double NOT NULL,
  `description` text DEFAULT NULL,
  `amc_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_amc_details`
--

INSERT INTO `user_amc_details` (`id`, `upm_id`, `amc_amount`, `description`, `amc_date`) VALUES
(7, 2, 4000, NULL, '2020-05-12 00:00:00'),
(8, 2, 5000, NULL, '2021-04-15 00:00:00'),
(9, 3, 5000, NULL, '2021-08-20 00:00:00'),
(10, 4, 4000, NULL, '2019-03-20 00:00:00'),
(14, 4, 4000, 'sssss', '2021-03-20 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `user_master`
--

CREATE TABLE `user_master` (
  `id` int(11) NOT NULL,
  `business_name` text NOT NULL,
  `owner_name` text NOT NULL,
  `emailid` text DEFAULT NULL,
  `contact1` text NOT NULL,
  `contact2` text NOT NULL,
  `address` text NOT NULL,
  `highway` text NOT NULL,
  `city` text NOT NULL,
  `is_active` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` datetime NOT NULL,
  `modified_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_master`
--

INSERT INTO `user_master` (`id`, `business_name`, `owner_name`, `emailid`, `contact1`, `contact2`, `address`, `highway`, `city`, `is_active`, `created_at`, `modified_at`) VALUES
(1, 'ACE ENTERPRISES', 'GANESH GADAKH', 'ganesh@gmail.com', '9763110549', '8007015819', 'SHINDE PALASE, NASHIK', 'PUNE NASHIK HIGHWAY', 'NASHIK', 1, '2021-03-19 15:26:31', '2021-03-19 15:42:09'),
(3, 'PANCHKRUSHNA ENTERPRISES', 'GANESH GADAKH', 'ganesh@gmail.com', '9763110549', '9422629949', 'SHINDE PALASE, NASHIK', 'PUNE NASHIK HIGHWAY', 'NASHIK', 1, '2021-03-19 15:31:58', '0000-00-00 00:00:00'),
(4, '', '', NULL, '', '', '', '', '', 1, '2021-03-19 15:34:23', '2021-03-28 14:16:03'),
(5, 'PANCHKRUSHNA ENTERPRISES', 'GANESH GADAKH', 'ganesh@gmail.com', '9763110549', '', 'SHINDE PALASE, NASHIK', 'PUNE NASHIK HIGHWAY', 'NASHIK', 1, '2021-03-19 15:34:58', '2021-03-19 15:34:58'),
(6, '', '', '', '', '', '', '', '', 1, '2021-04-10 17:15:28', '2021-04-10 17:15:28');

-- --------------------------------------------------------

--
-- Table structure for table `user_product_mapping`
--

CREATE TABLE `user_product_mapping` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `installation_date` datetime NOT NULL,
  `installation_amount` double NOT NULL,
  `amc_amount_per_year` double NOT NULL,
  `upcomming_amc_date` datetime NOT NULL,
  `description` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_product_mapping`
--

INSERT INTO `user_product_mapping` (`id`, `user_id`, `product_id`, `installation_date`, `installation_amount`, `amc_amount_per_year`, `upcomming_amc_date`, `description`) VALUES
(2, 3, 5, '2019-05-13 00:00:00', 8000, 4000, '2020-05-13 00:00:00', 'amc taking'),
(3, 4, 6, '2021-02-01 00:00:00', 10000, 4000, '2022-02-01 00:00:00', NULL),
(4, 3, 3, '2021-12-07 00:00:00', 15000, 5000, '2022-12-07 00:00:00', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `issue_master`
--
ALTER TABLE `issue_master`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user master table relation` (`client_id`),
  ADD KEY `product table` (`product_id`);

--
-- Indexes for table `product_investment_master`
--
ALTER TABLE `product_investment_master`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product table relation` (`product_id`);

--
-- Indexes for table `product_master`
--
ALTER TABLE `product_master`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_amc_details`
--
ALTER TABLE `user_amc_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user product mapping id` (`upm_id`);

--
-- Indexes for table `user_master`
--
ALTER TABLE `user_master`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_product_mapping`
--
ALTER TABLE `user_product_mapping`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user id` (`user_id`),
  ADD KEY `product id` (`product_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `issue_master`
--
ALTER TABLE `issue_master`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `product_investment_master`
--
ALTER TABLE `product_investment_master`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `product_master`
--
ALTER TABLE `product_master`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `user_amc_details`
--
ALTER TABLE `user_amc_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `user_master`
--
ALTER TABLE `user_master`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `user_product_mapping`
--
ALTER TABLE `user_product_mapping`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `issue_master`
--
ALTER TABLE `issue_master`
  ADD CONSTRAINT `issue_master_ibfk_1` FOREIGN KEY (`client_id`) REFERENCES `user_master` (`id`),
  ADD CONSTRAINT `issue_master_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `product_master` (`id`);

--
-- Constraints for table `product_investment_master`
--
ALTER TABLE `product_investment_master`
  ADD CONSTRAINT `product_investment_master_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `product_master` (`id`);

--
-- Constraints for table `user_amc_details`
--
ALTER TABLE `user_amc_details`
  ADD CONSTRAINT `user_amc_details_ibfk_1` FOREIGN KEY (`upm_id`) REFERENCES `user_product_mapping` (`id`);

--
-- Constraints for table `user_product_mapping`
--
ALTER TABLE `user_product_mapping`
  ADD CONSTRAINT `user_product_mapping_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user_master` (`id`),
  ADD CONSTRAINT `user_product_mapping_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `product_master` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
