-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 25, 2022 at 06:20 AM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 8.0.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bpsms_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `brand_list`
--

CREATE TABLE `brand_list` (
  `id` int(30) NOT NULL,
  `name` text NOT NULL,
  `image_path` text NOT NULL,
  `delete_flag` tinyint(1) NOT NULL DEFAULT 0,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `brand_list`
--

INSERT INTO `brand_list` (`id`, `name`, `image_path`, `delete_flag`, `status`, `date_created`, `date_updated`) VALUES
(1, 'Yamaha', 'uploads/brands/1.png?v=1642731446', 0, 1, '2022-01-21 10:03:12', '2022-01-21 10:17:26'),
(2, 'Kawasaki', 'uploads/brands/2.png?v=1642731379', 0, 1, '2022-01-21 10:10:24', '2022-01-21 10:16:19'),
(3, 'BMW', 'uploads/brands/3.png?v=1642731467', 0, 1, '2022-01-21 10:17:47', '2022-01-21 10:17:47'),
(4, 'Harley Davidson', 'uploads/brands/4.png?v=1642731495', 0, 1, '2022-01-21 10:18:15', '2022-01-21 10:18:15'),
(5, 'Ducati', 'uploads/brands/5.png?v=1642731515', 0, 1, '2022-01-21 10:18:35', '2022-01-21 10:18:35'),
(6, 'Oil Company', 'uploads/brands/6.jpg?v=1642744467', 0, 1, '2022-01-21 13:54:27', '2022-01-21 13:54:27'),
(7, 'Maxxis', 'uploads/brands/7.jpg?v=1642744509', 0, 1, '2022-01-21 13:55:09', '2022-01-21 13:55:09');

-- --------------------------------------------------------

--
-- Table structure for table `cart_list`
--

CREATE TABLE `cart_list` (
  `id` int(30) NOT NULL,
  `client_id` int(30) NOT NULL,
  `product_id` int(30) NOT NULL,
  `quantity` float NOT NULL,
  `date_added` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cart_list`
--

INSERT INTO `cart_list` (`id`, `client_id`, `product_id`, `quantity`, `date_added`) VALUES
(14, 1, 3, 2, '2022-01-25 11:08:50');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(30) NOT NULL,
  `category` varchar(250) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `delete_flag` tinyint(1) NOT NULL DEFAULT 0,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `category`, `status`, `delete_flag`, `date_created`) VALUES
(1, 'Accessories', 1, 0, '2021-09-30 09:42:40'),
(2, 'Chassis', 1, 0, '2021-09-30 09:43:00'),
(3, 'Tools', 1, 0, '2021-09-30 09:43:48'),
(5, 'Tires', 1, 0, '2022-01-21 10:33:07'),
(6, 'Mugs', 1, 0, '2022-01-21 10:33:31'),
(7, 'Oils', 1, 0, '2022-01-21 10:33:47'),
(8, 'Machine Parts', 1, 0, '2022-01-21 10:34:07'),
(9, 'Body Parts', 1, 0, '2022-01-21 13:55:39');

-- --------------------------------------------------------

--
-- Table structure for table `client_list`
--

CREATE TABLE `client_list` (
  `id` int(30) NOT NULL,
  `firstname` text NOT NULL,
  `middlename` text DEFAULT NULL,
  `lastname` text NOT NULL,
  `gender` text NOT NULL,
  `contact` text NOT NULL,
  `address` text NOT NULL,
  `email` text NOT NULL,
  `password` text NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `delete_flag` tinyint(1) NOT NULL DEFAULT 0,
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `date_added` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `client_list`
--

INSERT INTO `client_list` (`id`, `firstname`, `middlename`, `lastname`, `gender`, `contact`, `address`, `email`, `password`, `status`, `delete_flag`, `date_created`, `date_added`) VALUES
(1, 'John', 'D', 'Smith', 'Male', '09123456897', 'This is my sample address only', 'jsmith@sample.com', '1254737c076cf867dc53d60a0364f38e', 1, 0, '2022-01-24 13:33:44', '2022-01-25 13:15:11');

-- --------------------------------------------------------

--
-- Table structure for table `mechanics_list`
--

CREATE TABLE `mechanics_list` (
  `id` int(30) NOT NULL,
  `name` text NOT NULL,
  `contact` varchar(50) NOT NULL,
  `email` varchar(150) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `mechanics_list`
--

INSERT INTO `mechanics_list` (`id`, `name`, `contact`, `email`, `status`, `date_created`) VALUES
(1, 'Mike Williams', '09123456789', 'mwilliams@sample.com', 1, '2021-09-30 10:26:11'),
(2, 'George Wilson', '09112355799', 'gwilson@gmail.com', 1, '2021-09-30 10:30:58');

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

CREATE TABLE `order_items` (
  `id` int(30) NOT NULL,
  `order_id` int(30) NOT NULL,
  `product_id` int(30) NOT NULL,
  `quantity` float NOT NULL DEFAULT 0,
  `date_added` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `order_items`
--

INSERT INTO `order_items` (`id`, `order_id`, `product_id`, `quantity`, `date_added`) VALUES
(8, 6, 1, 1, '2022-01-24 16:37:18'),
(9, 6, 4, 2, '2022-01-24 16:37:18'),
(10, 7, 4, 2, '2022-01-25 10:43:19'),
(11, 7, 3, 4, '2022-01-25 10:43:19');

-- --------------------------------------------------------

--
-- Table structure for table `order_list`
--

CREATE TABLE `order_list` (
  `id` int(30) NOT NULL,
  `ref_code` varchar(100) NOT NULL,
  `client_id` int(30) NOT NULL,
  `total_amount` float NOT NULL DEFAULT 0,
  `delivery_address` text NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0=pending,1 = packed, 2 = for delivery, 3 = on the way, 4 = delivered, 5=cancelled',
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `order_list`
--

INSERT INTO `order_list` (`id`, `ref_code`, `client_id`, `total_amount`, `delivery_address`, `status`, `date_created`, `date_updated`) VALUES
(6, '202201-00001', 1, 11500, 'This is my sample address only', 5, '2022-01-24 16:37:18', '2022-01-24 17:09:42'),
(7, '202201-00002', 1, 11080, 'This is my sample address only', 2, '2022-01-25 10:43:19', '2022-01-25 10:58:04');

-- --------------------------------------------------------

--
-- Table structure for table `product_list`
--

CREATE TABLE `product_list` (
  `id` int(30) NOT NULL,
  `brand_id` int(30) NOT NULL,
  `category_id` int(30) NOT NULL,
  `name` text NOT NULL,
  `models` text NOT NULL,
  `description` text NOT NULL,
  `price` float NOT NULL DEFAULT 0,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `image_path` text NOT NULL,
  `delete_flag` tinyint(1) NOT NULL DEFAULT 0,
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product_list`
--

INSERT INTO `product_list` (`id`, `brand_id`, `category_id`, `name`, `models`, `description`, `price`, `status`, `image_path`, `delete_flag`, `date_created`, `date_updated`) VALUES
(1, 1, 3, 'Crash Guard', 'Nmax V2', '&lt;p style=&quot;margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px;&quot;&gt;Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed mattis, ex in commodo rhoncus, magna felis malesuada mi, et pharetra justo enim eu sapien. Nam fermentum viverra risus, in eleifend libero ultricies sit amet. Etiam gravida lacinia tellus eget vehicula. Nunc vel risus quis leo ornare cursus. Curabitur consectetur placerat ex, nec vestibulum arcu fermentum sed. Proin ipsum ipsum, consectetur sed aliquam a, tincidunt a sapien. Proin viverra ultricies tellus id volutpat. Integer cursus ligula id massa cursus, ut commodo ipsum venenatis. Maecenas et dui sit amet lorem fermentum imperdiet. Nulla a porta urna. Vivamus ut magna nisl.&lt;/p&gt;&lt;p style=&quot;margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px;&quot;&gt;Donec condimentum lacus nec nulla condimentum fermentum. Quisque tincidunt turpis tellus. Pellentesque pretium egestas ipsum molestie dictum. Quisque eu magna id erat fermentum pharetra vel vitae risus. Suspendisse potenti. Nullam mauris dolor, sollicitudin ut leo rutrum, dictum rutrum magna. Curabitur ut laoreet mi, scelerisque pulvinar leo. Phasellus id neque aliquam, posuere nisl sed, malesuada nibh. In euismod risus eu elit pharetra, id consequat lorem iaculis. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Phasellus nec eros est. Nunc nec erat at lectus blandit condimentum. Sed sit amet mi nisi. Donec ullamcorper, metus vulputate viverra porta, nisl lectus porta elit, eget dictum quam ipsum cursus massa. Vestibulum eget purus nec augue bibendum facilisis ac sed lacus.&lt;/p&gt;', 2500, 1, 'uploads/products/1.png?v=1642735227', 0, '2022-01-21 11:20:27', '2022-01-21 11:21:50'),
(2, 5, 3, 'Steering Dumper', 'Sample', '&lt;p&gt;sample&lt;/p&gt;', 15000, 1, 'uploads/products/2.png?v=1642736907', 1, '2022-01-21 11:48:27', '2022-01-21 11:53:41'),
(3, 3, 7, 'Oil 4T 10W-40 (1L)', 'Sample', '&lt;p style=&quot;margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; font-size: 14px;&quot;&gt;Maecenas eget condimentum metus, et faucibus turpis. Sed elementum commodo hendrerit. Nulla maximus tincidunt mi, ut convallis mauris congue sit amet. Morbi nec tincidunt sapien. Nulla metus urna, facilisis eget bibendum quis, auctor a tortor. Vestibulum eros urna, euismod ut aliquam ac, cursus sed quam. Donec accumsan tortor at velit malesuada molestie. Aenean porttitor quam nibh, pulvinar pellentesque justo tristique in. Proin nec lacinia metus. Aliquam erat volutpat. Proin egestas, ante vitae rutrum malesuada, erat nisi ultricies leo, eu viverra sem nisl in metus. Phasellus vitae risus malesuada, cursus metus ac, eleifend metus. Morbi ornare sodales fringilla. Nulla venenatis dictum felis varius commodo. Proin eu leo in eros consectetur viverra dignissim ac justo. Curabitur euismod velit sit amet ex condimentum, ut iaculis nisi consectetur.&lt;/p&gt;&lt;p style=&quot;margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; font-size: 14px;&quot;&gt;Ut id volutpat nulla. Aliquam eu orci at ipsum mattis mollis vel eu est. Mauris sit amet finibus tortor. Phasellus sodales massa sed erat varius, non hendrerit eros hendrerit. Pellentesque eu turpis odio. Aenean viverra justo eget eros sollicitudin porttitor. Duis convallis suscipit odio sit amet facilisis. Suspendisse nec tempus leo. Aliquam tincidunt arcu quis justo posuere ullamcorper. Integer sagittis nisi id suscipit semper. Vestibulum tempor pretium ligula, in bibendum orci tincidunt eget. Mauris aliquet porttitor consectetur. In ut neque magna. Phasellus purus elit, pretium et imperdiet eu, ultrices sit amet libero. Praesent ac ligula rhoncus massa aliquet maximus sit amet rhoncus quam. Phasellus eget tempor nisi, quis dapibus dui.&lt;/p&gt;', 520, 1, 'uploads/products/3.png?v=1642828345', 0, '2022-01-21 13:57:15', '2022-01-22 14:20:40'),
(4, 7, 5, 'Tire 101 110/70/17', 'Any', '&lt;p style=&quot;margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; font-size: 14px;&quot;&gt;Vivamus euismod porttitor nisl eu tincidunt. Nulla ac enim ut risus pretium rutrum vel at augue. Nullam eu arcu luctus, elementum sapien sed, blandit mi. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer sodales imperdiet mauris, tincidunt molestie elit tristique sit amet. Mauris sit amet erat quis leo laoreet facilisis. Donec a egestas nibh, eget auctor ligula. Pellentesque ut nisi varius mauris dictum dictum sed nec nulla. Curabitur condimentum eros sagittis eros eleifend accumsan. Sed eu sapien sit amet nisl viverra tincidunt. Interdum et malesuada fames ac ante ipsum primis in faucibus.&lt;/p&gt;&lt;p style=&quot;margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; font-size: 14px;&quot;&gt;In pretium, tortor et fermentum eleifend, ante tortor rhoncus magna, ac eleifend odio libero id nibh. Etiam rutrum purus vel mattis mattis. Praesent sit amet ligula pulvinar, dapibus lorem eu, luctus augue. Cras sed libero finibus, posuere libero a, dapibus purus. Quisque dolor risus, sollicitudin nec finibus ut, ullamcorper tempor enim. Nulla auctor semper ullamcorper. Sed fringilla lectus finibus mauris ultrices cursus. Vivamus laoreet eros a purus blandit fermentum. Suspendisse ornare ipsum dictum lacus ornare, sed viverra enim pretium. Vivamus pulvinar commodo porttitor.&lt;/p&gt;', 4500, 1, 'uploads/products/4.jpg?v=1642745034', 0, '2022-01-21 14:03:54', '2022-01-21 14:03:54'),
(5, 5, 6, 'Product 101', 'Any', '&lt;p style=&quot;margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; font-size: 14px;&quot;&gt;Phasellus dapibus et massa quis interdum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Aenean et nisl justo. Etiam condimentum nulla condimentum lectus vestibulum porta. Etiam maximus gravida nibh, rutrum pulvinar nulla posuere congue. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Donec vel ante sem. Proin suscipit rhoncus felis.&lt;/p&gt;&lt;p style=&quot;margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; font-size: 14px;&quot;&gt;Proin varius libero ut venenatis dictum. Cras finibus nibh quis egestas vestibulum. Integer pharetra dictum libero non maximus. Praesent imperdiet malesuada ante, quis tincidunt ligula. Vestibulum suscipit blandit porta. Praesent et urna neque. Nulla hendrerit nisl et diam pharetra pharetra. Sed maximus, nunc quis luctus facilisis, ex mauris aliquet magna, sit amet consectetur est dolor ac est. Integer venenatis nisl odio, nec varius lacus ornare ac. Fusce sit amet laoreet est. Suspendisse potenti.&lt;/p&gt;', 10000, 1, 'uploads/products/5.png?v=1642828905', 0, '2022-01-22 13:21:45', '2022-01-22 13:21:45');

-- --------------------------------------------------------

--
-- Table structure for table `request_meta`
--

CREATE TABLE `request_meta` (
  `request_id` int(30) NOT NULL,
  `meta_field` text NOT NULL,
  `meta_value` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `request_meta`
--

INSERT INTO `request_meta` (`request_id`, `meta_field`, `meta_value`) VALUES
(5, 'vehicle_type', 'Sample 102'),
(5, 'vehicle_name', 'Sample'),
(5, 'vehicle_registration_number', 'TEST123'),
(5, 'vehicle_model', 'test'),
(5, 'service_id', '3'),
(5, 'pickup_address', 'Sample Address'),
(4, 'vehicle_type', 'Sample'),
(4, 'vehicle_name', 'Yamaha Nmax V2'),
(4, 'vehicle_registration_number', 'GCN 2306'),
(4, 'vehicle_model', '2021'),
(4, 'service_id', '1,2,4'),
(4, 'pickup_address', '');

-- --------------------------------------------------------

--
-- Table structure for table `service_list`
--

CREATE TABLE `service_list` (
  `id` int(30) NOT NULL,
  `service` text NOT NULL,
  `description` text NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `delete_flag` tinyint(1) NOT NULL DEFAULT 0,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `service_list`
--

INSERT INTO `service_list` (`id`, `service`, `description`, `status`, `delete_flag`, `date_created`) VALUES
(1, 'Change Oil', '&lt;p&gt;&lt;span style=&quot;text-align: justify;&quot;&gt;Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec vel sapien lectus. Ut posuere, arcu eget bibendum venenatis, quam diam interdum diam, in viverra leo quam eu mi. Sed bibendum mauris nulla, vel vehicula libero elementum vel. Nam blandit justo justo, dapibus sodales risus consectetur nec. Suspendisse ornare in purus et mollis. Praesent placerat quis lectus at hendrerit. Morbi maximus dolor dolor, a maximus mi congue quis.&lt;/span&gt;&lt;br&gt;&lt;/p&gt;', 1, 0, '2021-09-30 14:11:21'),
(2, 'Overall Checkup', '&lt;p&gt;&lt;span style=&quot;text-align: justify;&quot;&gt;Curabitur nec viverra tellus. Donec quis molestie arcu. Sed et blandit dui, vel vehicula tortor. Vivamus fringilla sit amet nibh fringilla ornare. Etiam iaculis ornare purus id feugiat. Etiam mattis erat ut congue tempor. Nam placerat faucibus libero ultrices posuere. Donec ac tempus nulla.&lt;/span&gt;&lt;br&gt;&lt;/p&gt;', 1, 0, '2021-09-30 14:11:38'),
(3, 'Engine Tune up', '&lt;p&gt;&lt;span style=&quot;text-align: justify;&quot;&gt;Sed ultrices fermentum augue. Duis ultricies arcu vitae lorem accumsan porta. Donec fermentum risus ut tincidunt cursus. Sed varius id dolor et euismod. Vestibulum elit massa, varius nec arcu vel, viverra varius dolor. Etiam fermentum vel lorem vel tincidunt. Ut nec libero pulvinar, malesuada lacus et, tempor diam. Aliquam vitae nisl augue.&lt;/span&gt;&lt;br&gt;&lt;/p&gt;', 1, 0, '2021-09-30 14:12:03'),
(4, 'Tire Replacement', '&lt;p&gt;&lt;span style=&quot;text-align: justify;&quot;&gt;Nullam pretium eu justo ac tincidunt. Vestibulum quis est non felis porttitor pretium. Vivamus nec augue ultrices, condimentum risus vitae, pellentesque turpis. Nullam ornare est sapien, sed semper neque imperdiet suscipit. Sed fermentum eros et felis mollis finibus. In condimentum eleifend magna, non consequat nibh viverra nec. Nulla vel sapien libero. Suspendisse varius nisl nec ornare imperdiet.&lt;/span&gt;&lt;br&gt;&lt;/p&gt;', 1, 0, '2021-09-30 14:12:24');

-- --------------------------------------------------------

--
-- Table structure for table `service_requests`
--

CREATE TABLE `service_requests` (
  `id` int(30) NOT NULL,
  `client_id` int(30) NOT NULL,
  `service_type` text NOT NULL,
  `mechanic_id` int(30) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `service_requests`
--

INSERT INTO `service_requests` (`id`, `client_id`, `service_type`, `mechanic_id`, `status`, `date_created`) VALUES
(4, 1, 'Drop Off', 2, 3, '2022-01-25 09:47:31'),
(5, 1, 'Pick Up', NULL, 4, '2022-01-25 10:25:23');

-- --------------------------------------------------------

--
-- Table structure for table `stock_list`
--

CREATE TABLE `stock_list` (
  `id` int(30) NOT NULL,
  `product_id` int(30) NOT NULL,
  `quantity` float NOT NULL DEFAULT 0,
  `type` tinyint(1) NOT NULL DEFAULT 1 COMMENT '1= IN, 2= Out',
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `stock_list`
--

INSERT INTO `stock_list` (`id`, `product_id`, `quantity`, `type`, `date_created`) VALUES
(1, 1, 10, 1, '2022-01-21 13:07:47'),
(2, 1, 5, 1, '2022-01-21 13:07:55'),
(4, 3, 30, 1, '2022-01-24 14:17:28'),
(5, 5, 25, 1, '2022-01-24 14:17:35'),
(8, 4, 50, 1, '2022-01-24 15:49:45');

-- --------------------------------------------------------

--
-- Table structure for table `system_info`
--

CREATE TABLE `system_info` (
  `id` int(30) NOT NULL,
  `meta_field` text NOT NULL,
  `meta_value` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `system_info`
--

INSERT INTO `system_info` (`id`, `meta_field`, `meta_value`) VALUES
(1, 'name', 'Motorcycle Parts & Services Shop Management System'),
(6, 'short_name', 'MPSSMS- PHP'),
(11, 'logo', 'uploads/1642728480_logo.jpg'),
(13, 'user_avatar', 'uploads/user_avatar.jpg'),
(14, 'cover', 'uploads/1643082720_bike-cover-2.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(50) NOT NULL,
  `firstname` varchar(250) NOT NULL,
  `lastname` varchar(250) NOT NULL,
  `username` text NOT NULL,
  `password` text NOT NULL,
  `avatar` text DEFAULT NULL,
  `last_login` datetime DEFAULT NULL,
  `type` tinyint(1) NOT NULL DEFAULT 0,
  `date_added` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `firstname`, `lastname`, `username`, `password`, `avatar`, `last_login`, `type`, `date_added`, `date_updated`) VALUES
(1, 'Adminstrator', 'Admin', 'admin', '0192023a7bbd73250516f069df18b500', 'uploads/1624240500_avatar.png', NULL, 1, '2021-01-20 14:02:37', '2021-06-21 09:55:07'),
(6, 'Claire', 'Blake', 'cblake', 'cd74fae0a3adf459f73bbf187607ccea', 'uploads/1632990840_ava.jpg', NULL, 2, '2021-09-30 16:34:02', '2021-09-30 16:35:26');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `brand_list`
--
ALTER TABLE `brand_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cart_list`
--
ALTER TABLE `cart_list`
  ADD PRIMARY KEY (`id`),
  ADD KEY `client_id` (`client_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `client_list`
--
ALTER TABLE `client_list`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`(191)) USING HASH;


--
-- Indexes for table `mechanics_list`
--
ALTER TABLE `mechanics_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_id` (`order_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `order_list`
--
ALTER TABLE `order_list`
  ADD PRIMARY KEY (`id`),
  ADD KEY `client_id` (`client_id`);

--
-- Indexes for table `product_list`
--
ALTER TABLE `product_list`
  ADD PRIMARY KEY (`id`),
  ADD KEY `brand_id` (`brand_id`),
  ADD KEY `category_id` (`category_id`);

--
-- Indexes for table `request_meta`
--
ALTER TABLE `request_meta`
  ADD KEY `request_id` (`request_id`);

--
-- Indexes for table `service_list`
--
ALTER TABLE `service_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `service_requests`
--
ALTER TABLE `service_requests`
  ADD PRIMARY KEY (`id`),
  ADD KEY `client_id` (`client_id`),
  ADD KEY `mechanic_id` (`mechanic_id`);

--
-- Indexes for table `stock_list`
--
ALTER TABLE `stock_list`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `system_info`
--
ALTER TABLE `system_info`
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
-- AUTO_INCREMENT for table `brand_list`
--
ALTER TABLE `brand_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `cart_list`
--
ALTER TABLE `cart_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `client_list`
--
ALTER TABLE `client_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `mechanics_list`
--
ALTER TABLE `mechanics_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `order_items`
--
ALTER TABLE `order_items`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `order_list`
--
ALTER TABLE `order_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `product_list`
--
ALTER TABLE `product_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `service_list`
--
ALTER TABLE `service_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `service_requests`
--
ALTER TABLE `service_requests`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `stock_list`
--
ALTER TABLE `stock_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `system_info`
--
ALTER TABLE `system_info`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `cart_list`
--
ALTER TABLE `cart_list`
  ADD CONSTRAINT `cart_list_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `product_list` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `cart_list_ibfk_2` FOREIGN KEY (`client_id`) REFERENCES `client_list` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `order_items`
--
ALTER TABLE `order_items`
  ADD CONSTRAINT `order_items_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `order_list` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `order_items_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `product_list` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `order_list`
--
ALTER TABLE `order_list`
  ADD CONSTRAINT `order_list_ibfk_1` FOREIGN KEY (`client_id`) REFERENCES `client_list` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `product_list`
--
ALTER TABLE `product_list`
  ADD CONSTRAINT `product_list_ibfk_1` FOREIGN KEY (`brand_id`) REFERENCES `brand_list` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `product_list_ibfk_2` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `request_meta`
--
ALTER TABLE `request_meta`
  ADD CONSTRAINT `request_meta_ibfk_1` FOREIGN KEY (`request_id`) REFERENCES `service_requests` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `service_requests`
--
ALTER TABLE `service_requests`
  ADD CONSTRAINT `service_requests_ibfk_1` FOREIGN KEY (`client_id`) REFERENCES `client_list` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `service_requests_ibfk_2` FOREIGN KEY (`mechanic_id`) REFERENCES `mechanics_list` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `stock_list`
--
ALTER TABLE `stock_list`
  ADD CONSTRAINT `stock_list_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `product_list` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
