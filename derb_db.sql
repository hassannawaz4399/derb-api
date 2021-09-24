-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 24, 2021 at 10:55 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `derb_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `category_id` int(11) NOT NULL,
  `image` varchar(200) NOT NULL,
  `product_name` varchar(200) NOT NULL,
  `price` double NOT NULL,
  `status` varchar(200) NOT NULL,
  `category` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `digital_category`
--

CREATE TABLE `digital_category` (
  `category_id` int(11) NOT NULL DEFAULT 0,
  `image` varchar(200) NOT NULL,
  `product_name` varchar(200) NOT NULL,
  `price` double NOT NULL,
  `status` varchar(200) NOT NULL,
  `category` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `digital_sub_category`
--

CREATE TABLE `digital_sub_category` (
  `category_id` int(11) NOT NULL DEFAULT 0,
  `image` varchar(200) NOT NULL,
  `product_name` varchar(200) NOT NULL,
  `price` double NOT NULL,
  `status` varchar(200) NOT NULL,
  `category` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `invoice`
--

CREATE TABLE `invoice` (
  `no` int(11) NOT NULL,
  `invoice` int(11) NOT NULL,
  `data` date NOT NULL,
  `shipping` double NOT NULL,
  `amount` double NOT NULL,
  `tax` double NOT NULL,
  `total` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `listcoupons`
--

CREATE TABLE `listcoupons` (
  `id` int(11) NOT NULL,
  `title` varchar(500) NOT NULL,
  `code` varchar(100) NOT NULL,
  `discount` int(11) NOT NULL,
  `status` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `listmenu`
--

CREATE TABLE `listmenu` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `status` varchar(200) NOT NULL,
  `creat_on` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `listpages`
--

CREATE TABLE `listpages` (
  `id` int(11) NOT NULL DEFAULT 0,
  `name` varchar(100) NOT NULL,
  `status` varchar(200) NOT NULL,
  `creat_on` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `listvendors`
--

CREATE TABLE `listvendors` (
  `id` int(11) NOT NULL,
  `vendor` varchar(200) NOT NULL,
  `products` int(11) NOT NULL,
  `store_name` varchar(200) NOT NULL,
  `create_date` datetime NOT NULL DEFAULT current_timestamp(),
  `w_balance` double NOT NULL,
  `revenue` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `media`
--

CREATE TABLE `media` (
  `id` int(11) NOT NULL,
  `image` int(11) NOT NULL,
  `filename` int(11) NOT NULL,
  `url` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `order_id` int(11) NOT NULL,
  `image` varchar(500) NOT NULL,
  `status` varchar(200) NOT NULL,
  `payment_method` varchar(100) NOT NULL,
  `order_status` varchar(200) NOT NULL,
  `date` datetime NOT NULL,
  `total` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `physical_list`
--

CREATE TABLE `physical_list` (
  `image` varchar(50) NOT NULL,
  `title` varchar(100) NOT NULL,
  `price` double NOT NULL,
  `discount_price` double NOT NULL,
  `tag` varchar(50) NOT NULL,
  `discount` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `sub_category`
--

CREATE TABLE `sub_category` (
  `category_id` int(11) NOT NULL DEFAULT 0,
  `image` varchar(200) NOT NULL,
  `product_name` varchar(200) NOT NULL,
  `price` double NOT NULL,
  `status` varchar(200) NOT NULL,
  `category` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `translation`
--

CREATE TABLE `translation` (
  `user_key` varchar(200) NOT NULL,
  `russian` text NOT NULL,
  `arabic` text NOT NULL,
  `english` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `avtar` varchar(500) NOT NULL,
  `f_name` varchar(50) NOT NULL,
  `l_name` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `last_login` datetime NOT NULL DEFAULT current_timestamp(),
  `role` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`category_id`),
  ADD UNIQUE KEY `UniqueCategory` (`image`);

--
-- Indexes for table `listcoupons`
--
ALTER TABLE `listcoupons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `listmenu`
--
ALTER TABLE `listmenu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `listvendors`
--
ALTER TABLE `listvendors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `media`
--
ALTER TABLE `media`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `translation`
--
ALTER TABLE `translation`
  ADD PRIMARY KEY (`user_key`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `EmailUnique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `listcoupons`
--
ALTER TABLE `listcoupons`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `listmenu`
--
ALTER TABLE `listmenu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `listvendors`
--
ALTER TABLE `listvendors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `media`
--
ALTER TABLE `media`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
