-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Mar 29, 2022 at 04:17 AM
-- Server version: 5.7.37
-- PHP Version: 7.3.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `soulsoft_pms`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_master`
--

CREATE TABLE `admin_master` (
  `id` int(11) NOT NULL,
  `first_name` text NOT NULL,
  `middle_name` text NOT NULL,
  `last_name` text NOT NULL,
  `userid` text NOT NULL,
  `password` text NOT NULL,
  `token` text,
  `expiry_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin_master`
--

INSERT INTO `admin_master` (`id`, `first_name`, `middle_name`, `last_name`, `userid`, `password`, `token`, `expiry_date`) VALUES
(1, 'lalit', 'rewanathrao', 'meshram', 'lalitrmeshram@gmail.com', '12345', 'e1609956d9cff3ab8128f69608aadd526059', '2021-05-11 20:21:57'),
(2, 'Prasad', '', 'Godage', 'prasad.godage@gmail.com', '12345', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `issue_master`
--

CREATE TABLE `issue_master` (
  `id` int(11) NOT NULL,
  `client_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `issue` text NOT NULL,
  `call_date` date NOT NULL,
  `solution` text,
  `status` enum('START','RUNNING','DONE','CLOSE','HOLD','REJECTED','IDEAL') NOT NULL,
  `start_date` date DEFAULT NULL,
  `close_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
  `deadline` date DEFAULT NULL,
  `investment` double NOT NULL,
  `start_date` date DEFAULT NULL,
  `close_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `product_master`
--

CREATE TABLE `product_master` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `description` text,
  `type` enum('OFFLINE','ONLINE') NOT NULL,
  `technology` enum('PHP','C#.NET','JAVA') NOT NULL,
  `web` tinyint(4) NOT NULL DEFAULT '1',
  `android` tinyint(4) NOT NULL DEFAULT '0',
  `is_active` tinyint(4) NOT NULL DEFAULT '1',
  `created_at` date NOT NULL,
  `modified_at` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product_master`
--

INSERT INTO `product_master` (`id`, `name`, `description`, `type`, `technology`, `web`, `android`, `is_active`, `created_at`, `modified_at`) VALUES
(1, 'SHOPCARE', '', 'ONLINE', 'C#.NET', 0, 0, 1, '2021-07-17', '2021-07-17'),
(2, 'SHETKARI KS', '', 'OFFLINE', 'C#.NET', 0, 0, 1, '2021-07-17', '2021-07-17'),
(3, 'GV SOFT', '', 'OFFLINE', 'C#.NET', 0, 1, 1, '2021-07-17', '2021-07-17'),
(4, 'BUSY CARE', '', 'OFFLINE', 'C#.NET', 0, 0, 1, '2021-08-29', '2021-08-29');

-- --------------------------------------------------------

--
-- Table structure for table `user_amc_details`
--

CREATE TABLE `user_amc_details` (
  `id` int(11) NOT NULL,
  `upm_id` int(11) NOT NULL,
  `amc_amount` double NOT NULL,
  `description` text,
  `amc_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user_master`
--

CREATE TABLE `user_master` (
  `id` int(11) NOT NULL,
  `business_name` text NOT NULL,
  `owner_name` text NOT NULL,
  `emailid` text,
  `contact1` text NOT NULL,
  `contact2` text NOT NULL,
  `address` text NOT NULL,
  `highway` text NOT NULL,
  `city` text NOT NULL,
  `is_active` tinyint(4) NOT NULL DEFAULT '1',
  `created_at` date NOT NULL,
  `modified_at` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_master`
--

INSERT INTO `user_master` (`id`, `business_name`, `owner_name`, `emailid`, `contact1`, `contact2`, `address`, `highway`, `city`, `is_active`, `created_at`, `modified_at`) VALUES
(1, 'OM SAI HYDRAULIC ', 'NILESH RAHANE', 'Omsaihydraulic@gmail.com', '9922499566', '', 'Market yard, Sangamner', 'COLEEGE ROAD', 'SANGAMNER', 1, '2021-07-17', '2021-07-17'),
(2, 'KrushiParashar Vedokt Sheti Tantradnyan', 'Akshay Pachore', '', '70570 92966', '', 'At post - Hiwargaon Pawasa', 'Pune Nashik Highway', 'Sangamner', 1, '2021-08-17', '2021-08-17'),
(3, 'Panchkrushna Enterprizes', 'Ganesh Gadakh ', '', '97631 10549', '94226 29949', 'At post - Shinde Palase', 'Pune Nashik Highway', 'Nashik', 1, '2021-08-17', '2021-08-17'),
(4, 'Shrikrushna Herbal', 'Rohan Relkar', '', '7028641335', '', 'Shikharapur, Pune', 'Ahmednagar Pune Highway', 'Pune', 1, '2021-08-25', '2021-08-25'),
(5, 'Baba Electricals', 'Babasaheb Unhale', '', '9822629647', '9518731259', 'Shrirampur', 'Sangamner Shrirampur Highway', 'Shrirampur', 1, '2021-08-25', '2021-08-25'),
(6, 'Sai Saprem Krushi Seva Kendra', 'Shelke', '', '8087158994', '', 'Aadgaon', '', 'Aadgaon, Loni', 1, '2021-08-25', '2021-08-25'),
(7, 'Sanvi Agro Mall', 'Prakash Nana Shelke', '', '9082356317', '7757887392', 'Nandur Shingote, Sinner', 'Pune Nashik Highway', 'Sinner', 1, '2021-08-25', '2021-08-25'),
(8, 'Ruchi Krushi Seva Kendra', 'Atre Sir', '', '9766921982', '', 'Rahata', 'Sangamner Rahata Shirdi Highway', 'Rahata, Ahmednagar', 1, '2021-08-25', '2021-08-25'),
(9, 'Vaibhav Agro Services', 'Khule Ashok', '', '9921426875', '8208376395', 'Sangamner Khurd', 'Pune Nashik Highway', 'Sangamner', 1, '2021-08-25', '2021-08-29'),
(10, 'Prathamesh Agro Center', 'Parkhe Sandip', '', '9960973029', '9960665931', 'Kolhar', 'Sangamner Ahmednagar Highway', 'Kolhar', 1, '2021-08-25', '2021-08-25'),
(11, 'Krushimitra Agromart', 'Dighe Tushar', '', '7387837414', '', 'Talegaon Dighe', 'Sangamner Kopargaon Highway', 'Sangamner', 1, '2021-08-25', '2021-08-25'),
(12, 'Sai Traders', 'Khule Mahesh and Abhijit', '', '7507999362', '', 'Alephata, Pune', 'Pune Nashik Highway', 'Alephata', 1, '2021-08-25', '2021-08-25'),
(13, 'Mauli Krushi Seva Kendra', 'Kadlag Prasad', '', '7410003905', '', 'Sugaon, Akole', 'Sangamner Akole Highway', 'Akole', 1, '2021-08-25', '2021-08-25'),
(14, 'Shetkari Krushi Seva Kendra', 'Dale Brothers', '', '7057855545', '', 'Kolhar, Rahata', 'Sangamner Ahmednagar Highway', 'Kolhar', 1, '2021-08-25', '2021-08-25'),
(15, 'Raygad Krushi Seva Kendra', 'Gaikwad Ajay', '', '8956093915', '8010558204', 'Alkuti, Parner', 'Shirur Alephata Highway', 'Parner', 1, '2021-08-25', '2021-08-25'),
(16, 'Sugandha Agro Services', 'Gunjal', '', '8796782807', '', 'Saykhindi, Sangamner', 'Pune Nashik Highway', 'Sangamner', 1, '2021-08-25', '2021-08-25'),
(17, 'Vighnharta Krushi Udyog', 'Patade Shrikant And Shrikant Mule', '`', '9960069615', '70578449925', 'Khodat, Narayngaon', 'Narayngaon Ahmednagar Highway', 'Narayangaon', 1, '2021-08-25', '2021-08-25'),
(18, 'Shivray Krushi Udyog', 'Swapnil Tandale And Sushil Pund', '', '7448165162', '7028346858', 'Junner, Pune', 'Alephata Junner Highway', 'Junner', 1, '2021-08-25', '2021-08-25'),
(19, 'Shree Hareshwar Hydraulic', 'Jadhav Sampat', '', '9075555565', '', 'Alephata, Pune', 'Pune Nashik Highway', 'Alephata', 1, '2021-08-25', '2021-08-25'),
(20, 'Sai Krushi Seva Kendra', 'Andhale And Aadhav', '', '7758991198', '8329713393', 'Pratapur, Sangamner', 'Sangamner Loni Highway', 'Pratapur', 1, '2021-08-25', '2021-08-25'),
(21, 'Mauli Agro Services', 'Sharad Karkhile', '', '7219629806', '', 'Kohkadi, Parner', 'Shirur Parner Highway', 'Parner', 1, '2021-08-25', '2021-08-25'),
(22, 'Laxmi Krishi Seva', 'Kharde Tushar', '', '9011911199', '9096350250', 'Koolhar', 'Kolhar Kopargaon Road', 'Kolhar', 1, '2021-08-25', '2021-08-25'),
(23, 'Sai Ganesh Krushi Seva Kendra', 'Kadam', '', '9766445999', '', 'Rahuri', 'Sangamner Ahmednagar Highway', 'Rahuri', 1, '2021-08-25', '2021-08-25'),
(24, 'Jagdhane Patil Agro', 'Jagdhane Nikhil', '', '9527795636', '', 'Belapur Khurd', 'Sangamner Shrirampur Highway', 'Shrirampur', 1, '2021-08-25', '2021-08-25'),
(25, 'Krushana Agro Services', 'Ashish Tejekar', '', '9284050556', '7875189940', 'Rajapur, Sangamner', 'Sangamner Kopargaon Highway', 'Sangamner', 1, '2021-08-25', '2021-08-25'),
(26, 'Mauli Krushi Seva Kendra', 'Gavhane Amol', '', '8600439607', '8459717002', 'Aadhalgaon, Shrigonda', 'Ahmednagar Daund Shrigonda Highway', 'Shrigonda', 1, '2021-08-25', '2021-08-25'),
(27, 'Krushiratna Shetkariraja Krushi Seva Kendra', 'Nikhil Rahane', '', '9823536312', '', 'Sangamner Khurd', 'Pune Nashik Highway', 'SANGAMNER', 1, '2021-08-29', '2021-08-29'),
(28, 'Shree Gurudatta Sheti Bhandar', 'Manoj Shinde', '', '9359389247', '', 'Kokangaon, Sangamner', 'Sangamner Ahmednagar Highway', 'Sangamner', 1, '2021-08-29', '2021-08-29'),
(29, 'Maharashtra Shetkari Krushi Seva Kendra', 'Shrikant Nawale', '', '9272733232', '9604828181', 'Otur, Junner', 'Alephata Junner Highway', 'Otur', 1, '2021-08-29', '2021-08-29'),
(30, 'Sai Malhar Agro Services', 'Shelke Sir', '', '9921234197', '', 'Adgaon, Rahata', 'Sangamner Ahmednagar Highway', 'Loni', 1, '2021-08-29', '2021-08-29'),
(31, 'Durva Enterprizes', 'Shrikant Dongare', '', '7741011331', '9022846065', 'Ambad MIDC, Nashik', 'Pune Nashik Highway', 'Nashik', 1, '2021-08-29', '2021-08-29'),
(32, 'Shree Ganesh Krushi Bhandar', 'Ganesh Waman', '', '7020584522', '9975263892', 'Warudi Phata, Sangamner', 'Pune Nashik Highway', 'Warudi Phata', 1, '2021-08-29', '2021-08-29'),
(33, 'Bhagwan Krushi Seva Suvidha Kendra', 'Khemnar Chandrakant', '', '6552668089', '', 'Sakur, Sangamner', 'Sangamner Sakur Road', 'Sakur', 1, '2021-08-29', '2021-08-29'),
(34, 'Samarth Agro Services', 'Advocate By Nikhil', '', '8668713425', '', 'Maldad Road, Sangamner', 'Pune Nashik Highway', 'Sangamner', 1, '2021-08-29', '2021-08-29'),
(35, 'Sarthak Agrovet', 'Navnath Mutkule', '', '6552506363', '', 'Ghulewadi, Sangamner', 'Pune Nashik Highway', 'Sangamner', 1, '2021-08-30', '2021-08-30');

-- --------------------------------------------------------

--
-- Table structure for table `user_product_mapping`
--

CREATE TABLE `user_product_mapping` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `installation_date` date NOT NULL,
  `installation_amount` double NOT NULL,
  `amc_amount_per_year` double NOT NULL,
  `upcomming_amc_date` date NOT NULL,
  `description` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_product_mapping`
--

INSERT INTO `user_product_mapping` (`id`, `user_id`, `product_id`, `installation_date`, `installation_amount`, `amc_amount_per_year`, `upcomming_amc_date`, `description`) VALUES
(1, 1, 1, '2017-07-01', 1000, 2800, '2021-10-01', ''),
(2, 2, 2, '2020-08-07', 6000, 2800, '2022-08-07', 'Updation Pending'),
(3, 20, 2, '2018-11-15', 7000, 1800, '2021-11-15', 'Updation Pending'),
(4, 31, 4, '2021-08-18', 12000, 2800, '2022-08-18', ''),
(5, 32, 2, '2020-10-26', 8000, 2800, '2021-10-26', ''),
(6, 33, 2, '2020-10-08', 8000, 2800, '2021-10-08', ''),
(7, 4, 1, '2020-05-14', 8000, 2800, '2022-05-14', ''),
(8, 5, 1, '2020-05-21', 10000, 2800, '2022-05-21', ''),
(9, 25, 2, '2020-11-12', 8000, 2800, '2021-11-01', ''),
(10, 24, 2, '2020-10-20', 9000, 2800, '2021-10-20', ''),
(11, 23, 2, '2020-12-30', 8000, 2100, '2021-12-30', ''),
(12, 22, 2, '2020-11-18', 8000, 2800, '2021-11-18', ''),
(13, 6, 2, '2020-12-08', 8000, 2800, '2020-12-08', ''),
(14, 7, 2, '2020-11-24', 7000, 6700, '2021-11-24', ''),
(15, 8, 2, '2021-04-06', 7000, 1800, '2022-04-06', ''),
(16, 9, 2, '2021-05-02', 8000, 2100, '2022-05-02', ''),
(17, 10, 2, '2021-05-20', 8000, 2100, '2022-05-20', ''),
(18, 11, 2, '2021-06-01', 8000, 2100, '2022-06-01', ''),
(19, 12, 1, '2021-06-08', 12000, 2800, '2022-06-08', ''),
(20, 13, 2, '2021-06-21', 5000, 2800, '2022-06-21', ''),
(21, 14, 2, '2021-06-21', 8000, 2100, '2022-06-21', ''),
(22, 15, 2, '2021-06-28', 12000, 2800, '2022-06-21', ''),
(23, 16, 2, '2021-06-30', 8000, 2100, '2022-06-30', ''),
(24, 34, 2, '2021-07-02', 8000, 2800, '2022-07-02', ''),
(25, 17, 2, '2021-07-25', 5000, 2800, '2022-07-25', ''),
(26, 21, 2, '2021-02-22', 7000, 2800, '2022-02-22', ''),
(27, 19, 1, '2021-08-21', 9000, 2800, '2022-08-21', ''),
(28, 26, 2, '2021-02-14', 10000, 2800, '2022-02-14', ''),
(29, 27, 2, '2020-12-10', 6000, 2800, '2021-12-10', ''),
(30, 28, 2, '2020-10-30', 5000, 2800, '2021-10-30', ''),
(31, 29, 2, '2021-02-02', 10000, 2800, '2022-02-02', ''),
(32, 30, 2, '2020-11-20', 8000, 2800, '2021-11-20', ''),
(33, 18, 2, '2021-07-26', 10000, 2800, '2022-07-26', ''),
(34, 35, 1, '2020-08-18', 6000, 1800, '2022-08-18', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_master`
--
ALTER TABLE `admin_master`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT for table `admin_master`
--
ALTER TABLE `admin_master`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `issue_master`
--
ALTER TABLE `issue_master`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product_investment_master`
--
ALTER TABLE `product_investment_master`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product_master`
--
ALTER TABLE `product_master`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `user_amc_details`
--
ALTER TABLE `user_amc_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_master`
--
ALTER TABLE `user_master`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `user_product_mapping`
--
ALTER TABLE `user_product_mapping`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

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
