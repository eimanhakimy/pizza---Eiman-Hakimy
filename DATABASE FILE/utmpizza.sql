-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 05, 2023 at 07:06 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 7.3.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `utmpizza`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `adm_id` int(11) NOT NULL,
  `username` varchar(222) NOT NULL,
  `password` varchar(222) NOT NULL,
  `email` varchar(222) NOT NULL,
  `code` varchar(222) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`adm_id`, `username`, `password`, `email`, `code`, `date`) VALUES
(1, 'ccbd', '0d89ec971a7bcfe26d68c177a9d53334', 'admin@gmail.com', '', '2023-02-22 07:18:13'),
(3, 'admin', 'edb72d893b0370cb8d6fc8536b26fac1', 'eiman48@hotmail.com', '', '2023-02-22 07:18:13');

-- --------------------------------------------------------

--
-- Table structure for table `credit_cards`
--

CREATE TABLE `credit_cards` (
  `card_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `card_number` varchar(255) NOT NULL,
  `card_holder_name` varchar(255) NOT NULL,
  `expiry_month` varchar(2) NOT NULL,
  `expiry_year` varchar(4) NOT NULL,
  `cvv` varchar(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `credit_cards`
--

INSERT INTO `credit_cards` (`card_id`, `user_id`, `card_number`, `card_holder_name`, `expiry_month`, `expiry_year`, `cvv`) VALUES
(1, 9, '46365363636', 'Eiman', '05', '2026', '435'),
(2, 9, 'YyILg5x2Tdx0SZHomgn229sC/+bZ1SY5Wz2j+okOAi0=', 'FMCNZbkVjLXmvwttkD/CXSba8VAybzcPPI4VrN5UHzE=', '04', '2026', '242'),
(3, 9, '4OFTeTjJLDFyy4XF1Q0hHcttnci4AHqJZDvRRiWfg4c=', 'i/3YxHC01GI+39AiuO6IHNNEgJNjFpmxYLoBGK5hxYs=', '03', '2025', '255'),
(4, 9, '9av0SDjkeRoOIu6ykvWQ6ybZk+0PSJE3oVkpySc1Oqo=', 'fqWAL0iwrjt0X6jJZIHLUSnbhdDdhA0mYaQq00gayYQ=', 'Ol', 'QsKB', 'uoH'),
(5, 9, 'ZpW0RhBscASfh0gw0mUdEl5uZPxndOny59PpPOPNHIg=', 'nNw3WX07mIw0jIoYMufhVnhyvBJcFo4YT9YcZmScINg=', 'lH', '+Q8F', 'vhu'),
(6, 9, 'nIhKEqGE5VcVF4gZKuSiY8eipUgaDm8f9ogZBouem4Y=', 'V0OB//q180UXbcKU3uPzMAalxIZ3KuOEC2OujVPY4Sg=', 'O9', 'LP8z', 'CZD'),
(7, 9, 'pMIG0Dx424vgYsYwxE31GkrOp12YOV5vLKA+pudALkw=', 'XQO09VfkEm8HGIkqTscMbP4uXeSKCsJro9oDvYfMwVg=', 'gD', 'NzXC', 'dXb'),
(8, 9, 'tUy3spzH+oCkyIu6DhlH71IHq2Xiu3wIgNTUlog8vGE=', 'eR+c6yHNiFe7n1iIPxQ1FZYhqldYxp+ifA+SWGYx2Fw=', '+7', 'MzMT', 'vU+'),
(9, 9, 'IX37hUM6mZRLHxsAKb5xwrT1Tvm/4fv+iJ3VgtsjkcDvAaWu9G8Opo4w5FtIu0h1', 'adVCaVYhQJifKChS+hsb767Mv7AVv4VHDuow1fzjqYU=', 'Jf', 'rD7w', 'tp+'),
(10, 9, 'IkUNLk8ZtjQJVoOAzisHPYXCfbyH31vFaKGt1z1f+BM=', '72cW9SA7FJ/JLAYpegyg794DPysu67sTVJyUUNJ6WI8=', '4h', 'vGfR', 'yIt'),
(11, 15, 'RrRLNlGH7x5xaVrnAeAEYwRXfgklNS1mMF1nMKFOQJc=', 'suRx06DWWzhKA1MGkuUgAdIWCZe30IZZIxKQyxxSk/g=', 'bb', '8w0h', 'rJf'),
(12, 9, 'I7/45zOEvi9iYEnVcQBcPOUUWKyRHyZ7A1NocVmjGvc=', '+/8r0h/KW0R47jrDGQ6WqJYO3npNoljZvvdRsu+C3cQ=', '+W', 'zhqI', 'Rge'),
(13, 9, 'pjaE1TqyyJ3h1dy6zqkVrica8k/ADGEtcRRbAeKkFTI=', 'du4E5zlIy4MDrrU5nj5GTlBGOa2se7hNpxOxCDohd9Q=', 'Z3', 'lhsW', 'DRq');

-- --------------------------------------------------------

--
-- Table structure for table `dishes`
--

CREATE TABLE `dishes` (
  `d_id` int(11) NOT NULL,
  `rs_id` int(11) NOT NULL,
  `title` varchar(222) NOT NULL,
  `slogan` varchar(222) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `img` varchar(222) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `dishes`
--

INSERT INTO `dishes` (`d_id`, `rs_id`, `title`, `slogan`, `price`, `img`) VALUES
(17, 5, 'Thousand Island Pizza', 'It is the season to be jolly!', '11.00', '64a59da04b210.jpg'),
(18, 5, 'Neapolitan Pizza', 'It can be said that pizza is the most popular dish in the world and, certainly, one of the most popular.', '15.00', '64a59e34abeb7.jpg'),
(19, 5, 'Classic Cheese Pizza', 'The tasty reward is a crispy-bottomed, airy crust topped with tangy tomato sauce, and milky mozzarella.', '9.00', '64a59e7feaced.jpg'),
(23, 5, 'Hawaiian Pizza', 'Whether you agree with pineapple on pizza or not, you can\'t deny the popularity of Hawaiian pizza. This homemade Hawaiian pizza recipe includes a pizza dough recipe but you can also use a ready-made base if preferred.', '10.00', '64a59e7feaced.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `remark`
--

CREATE TABLE `remark` (
  `id` int(11) NOT NULL,
  `frm_id` int(11) NOT NULL,
  `status` varchar(255) NOT NULL,
  `remark` mediumtext NOT NULL,
  `remarkDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `restaurant`
--

CREATE TABLE `restaurant` (
  `rs_id` int(11) NOT NULL,
  `c_id` int(11) NOT NULL,
  `title` varchar(222) NOT NULL,
  `email` varchar(222) NOT NULL,
  `phone` varchar(222) NOT NULL,
  `url` varchar(222) NOT NULL,
  `o_hr` varchar(222) NOT NULL,
  `c_hr` varchar(222) NOT NULL,
  `o_days` varchar(222) NOT NULL,
  `address` text NOT NULL,
  `image` text NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `restaurant`
--

INSERT INTO `restaurant` (`rs_id`, `c_id`, `title`, `email`, `phone`, `url`, `o_hr`, `c_hr`, `o_days`, `address`, `image`, `date`) VALUES
(5, 2, 'Western food Meranti ', 'kimy@gmail.com', '01139116582', 'https://www.youtube.com/watch?v=jdLDZFtxikc', '9am', '9pm', 'Mon-Sat', '80990 Skudai, Johor', '64a59c62a9ea2.jpg', '2023-07-05 16:37:54');

-- --------------------------------------------------------

--
-- Table structure for table `res_category`
--

CREATE TABLE `res_category` (
  `c_id` int(11) NOT NULL,
  `c_name` varchar(222) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `res_category`
--

INSERT INTO `res_category` (`c_id`, `c_name`, `date`) VALUES
(1, 'Continental', '2022-05-27 08:07:35'),
(2, 'Italian', '2021-04-07 08:45:23'),
(3, 'Chinese', '2021-04-07 08:45:25'),
(4, 'American', '2021-04-07 08:45:28');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `u_id` int(11) NOT NULL,
  `username` varchar(222) NOT NULL,
  `f_name` varchar(222) NOT NULL,
  `l_name` varchar(222) NOT NULL,
  `email` varchar(222) NOT NULL,
  `phone` varchar(222) NOT NULL,
  `password` varchar(222) NOT NULL,
  `address` text NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`u_id`, `username`, `f_name`, `l_name`, `email`, `phone`, `password`, `address`, `status`, `date`) VALUES
(9, 'hakimy', 'Eiman', 'Hakimy', 'hakimypro55@gmail.com', '01139116582', 'edb72d893b0370cb8d6fc8536b26fac1', 'Taman U', 1, '2023-07-04 15:05:21'),
(15, 'suvimon', 'Suvimon', 'Saja', 'kimy@gmail.com', '01139116582', 'edb72d893b0370cb8d6fc8536b26fac1', 'Taman Bunga', 1, '2023-07-05 07:40:49');

-- --------------------------------------------------------

--
-- Table structure for table `users_orders`
--

CREATE TABLE `users_orders` (
  `o_id` int(11) NOT NULL,
  `u_id` int(11) NOT NULL,
  `title` varchar(222) NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `status` varchar(222) DEFAULT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `users_orders`
--

INSERT INTO `users_orders` (`o_id`, `u_id`, `title`, `quantity`, `price`, `status`, `date`) VALUES
(52, 9, 'Thousand Island Pizza', 1, '11.00', NULL, '2023-07-05 17:00:19'),
(53, 9, 'Neapolitan Pizza', 1, '15.00', NULL, '2023-07-05 17:00:46'),
(54, 9, 'Classic Cheese Pizza', 1, '9.00', NULL, '2023-07-05 17:02:53');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`adm_id`);

--
-- Indexes for table `credit_cards`
--
ALTER TABLE `credit_cards`
  ADD PRIMARY KEY (`card_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `dishes`
--
ALTER TABLE `dishes`
  ADD PRIMARY KEY (`d_id`);

--
-- Indexes for table `remark`
--
ALTER TABLE `remark`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `restaurant`
--
ALTER TABLE `restaurant`
  ADD PRIMARY KEY (`rs_id`);

--
-- Indexes for table `res_category`
--
ALTER TABLE `res_category`
  ADD PRIMARY KEY (`c_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`u_id`);

--
-- Indexes for table `users_orders`
--
ALTER TABLE `users_orders`
  ADD PRIMARY KEY (`o_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `adm_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `credit_cards`
--
ALTER TABLE `credit_cards`
  MODIFY `card_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `dishes`
--
ALTER TABLE `dishes`
  MODIFY `d_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `remark`
--
ALTER TABLE `remark`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `restaurant`
--
ALTER TABLE `restaurant`
  MODIFY `rs_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `res_category`
--
ALTER TABLE `res_category`
  MODIFY `c_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `u_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `users_orders`
--
ALTER TABLE `users_orders`
  MODIFY `o_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `credit_cards`
--
ALTER TABLE `credit_cards`
  ADD CONSTRAINT `credit_cards_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`u_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
