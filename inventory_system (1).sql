-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 16, 2025 at 03:27 PM
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
-- Database: `inventory_system`
--

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `customer_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`customer_id`, `name`, `email`, `phone`, `address`, `created_at`) VALUES
(2, 'Rodge Rico', 'ricorodge@gmail.com', '555-123-4567', '123 Main Street, Apt 4B, New Zealand, NY 10001', '2025-04-23 05:55:39');

-- --------------------------------------------------------

--
-- Table structure for table `login_logs`
--

CREATE TABLE `login_logs` (
  `log_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `username` varchar(50) NOT NULL,
  `login_time` datetime NOT NULL,
  `ip_address` varchar(50) NOT NULL,
  `login_success` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `login_logs`
--

INSERT INTO `login_logs` (`log_id`, `user_id`, `username`, `login_time`, `ip_address`, `login_success`) VALUES
(1, NULL, 'Lyn Ansing', '2025-04-23 14:32:05', '::1', 0),
(2, NULL, 'Lyn Ansing', '2025-04-23 14:32:19', '::1', 0),
(3, 4, 'Dominique Dimagnaong', '2025-04-23 14:34:03', '::1', 1),
(4, 4, 'Dominique Dimagnaong', '2025-04-23 15:54:25', '::1', 1),
(5, 4, 'Dominique Dimagnaong', '2025-04-23 16:00:18', '::1', 1),
(6, NULL, 'administrator', '2025-04-23 16:05:52', '::1', 1),
(7, 4, 'Dominique Dimagnaong', '2025-04-23 16:23:39', '::1', 1),
(8, 4, 'Dominique Dimagnaong', '2025-04-23 16:26:09', '::1', 1),
(9, 4, 'Dominique Dimagnaong', '2025-04-23 17:07:54', '::1', 1),
(10, 4, 'Dominique Dimagnaong', '2025-04-28 13:25:43', '::1', 1),
(11, 4, 'Dominique Dimagnaong', '2025-04-28 13:37:11', '::1', 1),
(12, 4, 'Dominique Dimagnaong', '2025-04-29 06:58:30', '::1', 1),
(13, NULL, 'Dominique Dimagnaong', '2025-04-29 07:56:18', '::1', 0),
(14, 4, 'Dominique Dimagnaong', '2025-04-29 07:56:30', '::1', 1),
(15, 4, 'Dominique Dimagnaong', '2025-04-29 13:37:40', '::1', 1),
(16, NULL, 'admin', '2025-04-29 15:01:00', '::1', 0),
(17, NULL, 'administrator', '2025-04-29 15:03:14', '::1', 0),
(18, NULL, 'Darl Lexie', '2025-04-29 15:13:01', '::1', 1),
(19, NULL, 'administrator', '2025-04-29 16:27:31', '::1', 1),
(20, NULL, 'administrator', '2025-04-29 16:31:01', '::1', 1),
(21, NULL, 'administrator', '2025-04-29 16:58:53', '::1', 1),
(22, NULL, 'administrator', '2025-04-29 17:20:35', '::1', 0),
(23, NULL, 'administrator', '2025-04-29 17:20:48', '::1', 1),
(24, NULL, 'myinventory', '2025-04-30 12:00:29', '::1', 0),
(25, NULL, 'myadmin', '2025-04-30 12:03:08', '::1', 0),
(26, NULL, 'administrator', '2025-04-30 12:05:03', '::1', 0),
(27, NULL, 'administrator', '2025-04-30 12:05:19', '::1', 0),
(28, NULL, 'myadmin', '2025-04-30 12:07:40', '::1', 0),
(29, NULL, 'administrator', '2025-04-30 12:10:05', '::1', 1),
(30, NULL, 'administrator', '2025-04-30 12:20:42', '::1', 1),
(31, NULL, 'administrator', '2025-05-05 14:32:39', '::1', 0),
(32, NULL, 'Khricia', '2025-05-05 14:38:16', '::1', 1),
(33, 5, 'Vince Delo', '2025-05-05 15:01:29', '::1', 1),
(34, NULL, 'Khricia', '2025-05-05 15:08:33', '::1', 1),
(35, NULL, 'Khricia', '2025-05-05 15:14:45', '::1', 1),
(36, NULL, 'Vince Delostrico', '2025-05-05 15:53:42', '::1', 1),
(37, NULL, 'Vince Delostrico', '2025-05-05 16:07:19', '::1', 1),
(38, NULL, 'Vince Delostrico', '2025-05-05 16:08:07', '::1', 1),
(39, NULL, 'Vince Delostrico', '2025-05-05 16:09:41', '::1', 1),
(40, NULL, 'Vince Delostrico', '2025-05-05 16:12:39', '::1', 1),
(41, NULL, 'Vince Delostrico', '2025-05-05 16:14:18', '::1', 1),
(42, NULL, 'Vince Delostrico', '2025-05-05 16:17:47', '::1', 1),
(43, NULL, 'Vince Delostrico', '2025-05-05 16:18:56', '::1', 1),
(44, NULL, 'Vince Delostrico', '2025-05-05 16:22:23', '::1', 1),
(45, NULL, 'Vince Delostrico', '2025-05-05 16:35:33', '::1', 1),
(46, NULL, 'Vince Delostrico', '2025-05-05 16:37:55', '::1', 1),
(47, NULL, 'Vince Delostrico', '2025-05-05 16:39:40', '::1', 1);

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `permission_id` int(11) NOT NULL,
  `permission_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `product_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` text DEFAULT NULL,
  `category` varchar(50) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `sku` varchar(50) NOT NULL,
  `minimum_stock_level` int(11) NOT NULL DEFAULT 10,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `name`, `description`, `category`, `price`, `sku`, `minimum_stock_level`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'Intel Core i7', 'High-performance processor series designed by Intel for desktop and laptop computers', 'Computer Parts', 350.00, 'PRO-1234', 15, 1, '2025-04-22 22:19:33', '2025-04-22 22:19:33'),
(2, 'Cooler Master Hyper 212 Black Edition', 'Known for its balance of performance, durability, and affordability', 'braces colors', 50.00, 'CPU - 1235', 10, 1, '2025-04-22 16:32:26', '0000-00-00 00:00:00'),
(3, 'AMD Ryzen 7 5800X', 'Powerful 8-core, 16-thread processor designed for high-performance computing, gaming, and content creation', 'color braces', 300.00, 'PRO-3531', 30, 1, '2025-04-22 16:46:35', '0000-00-00 00:00:00'),
(4, 'Samsung 970 EVO Plus SSD', 'High-speed NVMe solid-state drive (SSD) designed for fast boot times, quick file transfers, and smooth application performance', 'braces color', 120.00, 'SSD-1234', 20, 1, '2025-04-23 05:55:39', '2025-04-23 05:55:39'),
(5, 'Corsair Vengeance LPX DDR4 RAM', 'Popular DDR4 RAM module designed for high performance and reliability. It’s optimized for overclocking with an aluminum heat spreader for better heat dissipation', 'brace colors', 130.00, 'RAM-1234', 50, 1, '2025-04-29 10:50:18', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `role_id` int(11) NOT NULL,
  `role_name` varchar(50) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `permissions` text DEFAULT NULL COMMENT 'JSON format to store permission flags'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`role_id`, `role_name`, `description`, `permissions`) VALUES
(1, 'Admin', 'System administrator with full access', '{\"all\": true}'),
(2, 'Manager', 'Store manager with limited administrative rights', '{\"view_dashboard\": true, \"view_products\": true, \"add_product\": true, \"edit_product\": true, \"view_sales\": true, \"add_sale\": true, \"view_reports\": true, \"view_suppliers\": true, \"edit_suppliers\": true}'),
(3, 'Sales Staff', 'Staff responsible for processing sales', '{\"view_products\": true, \"view_product_details\": true, \"add_sale\": true, \"view_own_sales\": true}'),
(4, 'Inventory Staff', 'Staff responsible for inventory management', '{\"view_products\": true, \"add_product\": true, \"edit_product\": true, \"view_stock\": true, \"add_stock\": true, \"view_suppliers\": true}'),
(5, 'Users', 'Limited access to the system.', '{\"all\": false}');

-- --------------------------------------------------------

--
-- Table structure for table `role_permissions`
--

CREATE TABLE `role_permissions` (
  `role_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE `sales` (
  `sale_id` int(11) NOT NULL,
  `invoice_number` varchar(50) NOT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `sale_date` datetime NOT NULL,
  `total_amount` decimal(10,2) NOT NULL,
  `payment_method` varchar(50) NOT NULL,
  `notes` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sales`
--

INSERT INTO `sales` (`sale_id`, `invoice_number`, `customer_id`, `user_id`, `sale_date`, `total_amount`, `payment_method`, `notes`) VALUES
(1, 'INV-2025-04-0001', 2, 1, '2025-04-23 05:55:39', 110.00, 'Credit Card', 'Generated from order'),
(2, 'INV-2025-04-23-3886', 2, 4, '2025-04-23 08:34:53', 19139.99, 'Cash', ''),
(3, 'INV-2025-04-29-7320', NULL, 4, '2025-04-29 08:11:27', 29495.00, 'Credit Card', ''),
(4, 'INV-2025-04-29-5907', NULL, 4, '2025-04-29 08:36:03', 56329.99, 'Credit Card', '');

-- --------------------------------------------------------

--
-- Table structure for table `sale_items`
--

CREATE TABLE `sale_items` (
  `sale_item_id` int(11) NOT NULL,
  `sale_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity_sold` int(11) NOT NULL,
  `unit_price` decimal(10,2) NOT NULL,
  `discount` decimal(10,2) DEFAULT 0.00,
  `subtotal` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sale_items`
--

INSERT INTO `sale_items` (`sale_item_id`, `sale_id`, `product_id`, `quantity_sold`, `unit_price`, `discount`, `subtotal`) VALUES
(1, 1, 4, 1, 110.00, 0.00, 110.00),
(2, 2, 1, 1, 19000.00, 0.00, 19000.00),
(3, 2, 4, 1, 139.99, 0.00, 139.99),
(4, 3, 1, 1, 19000.00, 0.00, 19000.00),
(5, 3, 2, 1, 10495.00, 0.00, 10495.00),
(6, 4, 3, 1, 7695.00, 0.00, 7695.00),
(7, 4, 1, 2, 19000.00, 0.00, 38000.00),
(8, 4, 2, 1, 10495.00, 0.00, 10495.00),
(9, 4, 4, 1, 139.99, 0.00, 139.99);

-- --------------------------------------------------------

--
-- Table structure for table `stock`
--

CREATE TABLE `stock` (
  `stock_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `supplier_id` int(11) NOT NULL,
  `quantity_added` int(11) NOT NULL,
  `current_quantity` int(11) NOT NULL,
  `unit_cost` decimal(10,2) NOT NULL,
  `batch_number` varchar(50) DEFAULT NULL,
  `date_added` datetime NOT NULL,
  `expiry_date` datetime DEFAULT NULL,
  `location_code` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `stock`
--

INSERT INTO `stock` (`stock_id`, `product_id`, `supplier_id`, `quantity_added`, `current_quantity`, `unit_cost`, `batch_number`, `date_added`, `expiry_date`, `location_code`) VALUES
(1, 1, 1, 50, 46, 45.50, 'BT20250422', '2025-04-22 22:19:33', NULL, 'WHSE-B3-S4'),
(2, 2, 1, 1, 68, 700.00, NULL, '2025-04-22 22:33:06', NULL, NULL),
(3, 3, 4, 1, 99, 7695.00, 'PRD-3531', '2025-04-23 07:55:48', NULL, NULL),
(4, 4, 7, 20, 16, 85.00, 'AF1-BATCH-2025-04', '2025-04-23 05:55:39', NULL, 'WH-A3-15'),
(5, 3, 4, 1, 50, 7695.00, 'PRD-3531', '2025-04-23 07:55:48', NULL, NULL),
(6, 5, 3, 10, 10, 100.00, '2025-124', '2025-04-29 10:50:18', NULL, 'Panabangi Tawun, Dgt'),
(7, 5, 3, 10, 10, 120.00, '2025-124', '2025-04-29 11:03:48', NULL, 'Panabangi Tawun, Dgt');

-- --------------------------------------------------------

--
-- Table structure for table `suppliers`
--

CREATE TABLE `suppliers` (
  `supplier_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `contact_person` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `suppliers`
--

INSERT INTO `suppliers` (`supplier_id`, `name`, `contact_person`, `email`, `phone`, `address`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'Express', 'Sunny Yu', 'expressdistributor@gmail.com', '555-123-4567', '123 Supplier Street, Tech City, TC 12345', 1, '2025-04-22 22:19:32', '2025-04-22 22:19:32'),
(2, 'Sung', 'David Hues', 'wholesale@gmail.com', '503-671-6453', 'Block 5 & 6, Calamba Premiere International Park, Brgy. Batino, Calamba, Laguna, Philippines', 1, '2025-04-22 22:38:33', '2025-04-22 22:38:33'),
(3, 'Samsung', 'Sarah Geronemo', 'SarahG@gmail.com', '971-234-5678', '123 Barangay Hell, Manila, Philippines', 1, '2025-04-22 22:38:33', '2025-04-22 22:38:33'),
(4, 'Corsair', 'Michael Wilson', 'micheal.wholesale@gmail.com', '503-671-8900', '1 Bowerman Dr, Beaverton, OR 97005, USA', 1, '2025-04-22 22:38:33', '2025-04-22 22:38:33'),
(5, 'MSI ', 'Thomas Schmitt', 'suppliers@gmail.com', '617-866-3990', '10 Liberty Way, Westford, MA 01886, Canada', 1, '2025-04-22 22:38:33', '2025-04-22 22:38:33'),
(7, 'Parts Distribution', 'April Boy Smith', 'wholesalesam@gmail.com', '800-555-KLH', '1 Nile River, Beaverton, OR 97005', 1, '2025-04-23 05:55:39', '2025-04-23 05:55:39');

-- --------------------------------------------------------

--
-- Table structure for table `supplier_products`
--

CREATE TABLE `supplier_products` (
  `supplier_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `supplier_product_code` varchar(50) DEFAULT NULL,
  `unit_price` decimal(10,2) NOT NULL,
  `lead_time_days` int(11) DEFAULT NULL,
  `min_order_quantity` int(11) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password_hash` varchar(255) NOT NULL,
  `role_id` int(11) NOT NULL,
  `email` varchar(100) NOT NULL,
  `created_at` datetime NOT NULL,
  `last_login` datetime DEFAULT NULL,
  `profile_image` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `username`, `password_hash`, `role_id`, `email`, `created_at`, `last_login`, `profile_image`) VALUES
(1, 'PO3', '$2y$10$yfVgf3CZ9yXPLt6lKeLleeI3lgVn83zu.i0rE0vhSTbGQjm9sPQ5W', 2, 'po3@gmail.com', '2025-04-09 17:32:08', '2025-04-22 09:00:06', NULL),
(2, 'tester', '$2y$10$Cd0KXnDH5qEVUx/2Z5etwu5aNCkVLh9vrBRcuSc1Vm4TqDezKrVNG', 5, 'tester@gmail.com', '2025-04-18 22:04:30', '2025-04-23 00:32:30', NULL),
(3, 'user123', '$2y$10$pb36vDitEcMtAEnkE1fmtOGRgVWjt7rqRxf1RPqikAC3dbQhjnv5m', 5, 'user123@gmail.com', '2025-04-19 14:39:13', '2025-04-19 14:40:02', NULL),
(4, 'Dominique Dimagnaong', '$2y$10$fIRqceD98BHHI13CLTCHzO6SyI3LMSdrlOEqWKBJlBhDf7Fh4cwbi', 5, 'dominiquelynne@gmail.com', '2025-04-23 14:33:45', '2025-04-29 13:37:40', 'uploads/profiles/4_15 Cute and Classy Outfit Ideas for Every Modern Woman.jpg'),
(5, 'Vince Delo', '$2y$10$4qd5L0usXtn24PvcAld7KeVCT8wmdY59lR5.OzF5Tg5gTIu8VpXH.', 5, 'vincedelo@gmail.com', '2025-05-05 15:00:42', '2025-05-05 15:01:29', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`customer_id`);

--
-- Indexes for table `login_logs`
--
ALTER TABLE `login_logs`
  ADD PRIMARY KEY (`log_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`permission_id`),
  ADD UNIQUE KEY `permission_name` (`permission_name`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`),
  ADD UNIQUE KEY `sku` (`sku`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`role_id`),
  ADD UNIQUE KEY `role_name` (`role_name`);

--
-- Indexes for table `role_permissions`
--
ALTER TABLE `role_permissions`
  ADD PRIMARY KEY (`role_id`,`permission_id`),
  ADD KEY `permission_id` (`permission_id`);

--
-- Indexes for table `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`sale_id`),
  ADD UNIQUE KEY `invoice_number` (`invoice_number`),
  ADD KEY `customer_id` (`customer_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `sale_items`
--
ALTER TABLE `sale_items`
  ADD PRIMARY KEY (`sale_item_id`),
  ADD KEY `sale_id` (`sale_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `stock`
--
ALTER TABLE `stock`
  ADD PRIMARY KEY (`stock_id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `supplier_id` (`supplier_id`);

--
-- Indexes for table `suppliers`
--
ALTER TABLE `suppliers`
  ADD PRIMARY KEY (`supplier_id`);

--
-- Indexes for table `supplier_products`
--
ALTER TABLE `supplier_products`
  ADD PRIMARY KEY (`supplier_id`,`product_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `email` (`email`),
  ADD KEY `role_id` (`role_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `customer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `login_logs`
--
ALTER TABLE `login_logs`
  MODIFY `log_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `permission_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `role_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `sales`
--
ALTER TABLE `sales`
  MODIFY `sale_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `sale_items`
--
ALTER TABLE `sale_items`
  MODIFY `sale_item_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `stock`
--
ALTER TABLE `stock`
  MODIFY `stock_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `suppliers`
--
ALTER TABLE `suppliers`
  MODIFY `supplier_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `login_logs`
--
ALTER TABLE `login_logs`
  ADD CONSTRAINT `login_logs_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE SET NULL;

--
-- Constraints for table `role_permissions`
--
ALTER TABLE `role_permissions`
  ADD CONSTRAINT `role_permissions_ibfk_1` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`permission_id`);

--
-- Constraints for table `sales`
--
ALTER TABLE `sales`
  ADD CONSTRAINT `sales_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`customer_id`),
  ADD CONSTRAINT `sales_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`);

--
-- Constraints for table `sale_items`
--
ALTER TABLE `sale_items`
  ADD CONSTRAINT `sale_items_ibfk_1` FOREIGN KEY (`sale_id`) REFERENCES `sales` (`sale_id`),
  ADD CONSTRAINT `sale_items_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `products` (`product_id`);

--
-- Constraints for table `stock`
--
ALTER TABLE `stock`
  ADD CONSTRAINT `stock_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `products` (`product_id`),
  ADD CONSTRAINT `stock_ibfk_2` FOREIGN KEY (`supplier_id`) REFERENCES `suppliers` (`supplier_id`);

--
-- Constraints for table `supplier_products`
--
ALTER TABLE `supplier_products`
  ADD CONSTRAINT `supplier_products_ibfk_1` FOREIGN KEY (`supplier_id`) REFERENCES `suppliers` (`supplier_id`),
  ADD CONSTRAINT `supplier_products_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `products` (`product_id`);

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_ibfk_1` FOREIGN KEY (`role_id`) REFERENCES `roles` (`role_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
