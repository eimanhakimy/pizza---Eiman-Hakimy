-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 05, 2023 at 10:08 AM
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
(1, 'ccbd', '0d89ec971a7bcfe26d68c177a9d53334', 'admin@gmail.com', '', '2023-02-22 07:18:13');

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
(11, 15, 'RrRLNlGH7x5xaVrnAeAEYwRXfgklNS1mMF1nMKFOQJc=', 'suRx06DWWzhKA1MGkuUgAdIWCZe30IZZIxKQyxxSk/g=', 'bb', '8w0h', 'rJf');

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
(1, 1, 'Yorkshire Lamb Patties', 'Lamb patties which melt in your mouth, and are quick and easy to make. Served hot with a crisp salad.', '14.00', '62908867a48e4.jpg'),
(2, 1, 'Lobster Thermidor', 'Lobster Thermidor is a French dish of lobster meat cooked in a rich wine sauce, stuffed back into a lobster shell, and browned.', '36.00', '629089fee52b9.jpg'),
(3, 4, 'Chicken Madeira', 'Chicken Madeira, like Chicken Marsala, is made with chicken, mushrooms, and a special fortified wine. But, the wines are different;', '23.00', '62908bdf2f581.jpg'),
(4, 1, 'Stuffed Jacket Potatoes', 'Deep fry whole potatoes in oil for 8-10 minutes or coat each potato with little oil. Mix the onions, garlic, tomatoes and mushrooms. Add yoghurt, ginger, garlic, chillies, coriander', '8.00', '62908d393465b.jpg'),
(5, 2, 'Pink Spaghetti Gamberoni', 'Spaghetti with prawns in a fresh tomato sauce. This dish originates from Southern Italy and with the combination of prawns, garlic, chilli and pasta. Garnish each with remaining tablespoon parsley.', '21.00', '606d7491a9d13.jpg'),
(6, 2, 'Cheesy Mashed Potato', 'Deliciously Cheesy Mashed Potato. The ultimate mash for your Thanksgiving table or the perfect accompaniment to vegan sausage casserole. Everyone will love it\'s fluffy, cheesy.', '5.00', '606d74c416da5.jpg'),
(7, 2, 'Crispy Chicken Strips', 'Fried chicken strips, served with special honey mustard sauce.', '8.00', '606d74f6ecbbb.jpg'),
(8, 2, 'Lemon Grilled Chicken And Pasta', 'Marinated rosemary grilled chicken breast served with mashed potatoes and your choice of pasta.', '11.00', '606d752a209c3.jpg'),
(9, 3, 'Vegetable Fried Rice', 'Chinese rice wok with cabbage, beans, carrots, and spring onions.', '5.00', '606d7575798fb.jpg'),
(10, 3, 'Prawn Crackers', '12 pieces deep-fried prawn crackers', '7.00', '606d75a7e21ec.jpg'),
(11, 3, 'Spring Rolls', 'Lightly seasoned shredded cabbage, onion and carrots, wrapped in house made spring roll wrappers, deep fried to golden brown.', '6.00', '606d75ce105d0.jpg'),
(12, 3, 'Manchurian Chicken', 'Chicken pieces slow cooked with spring onions in our house made manchurian style sauce.', '11.00', '606d7600dc54c.jpg'),
(13, 4, ' Buffalo Wings', 'Fried chicken wings tossed in spicy Buffalo sauce served with crisp celery sticks and Blue cheese dip.', '11.00', '606d765f69a19.jpg'),
(14, 4, 'Mac N Cheese Bites', 'Served with our traditional spicy queso and marinara sauce.', '9.00', '606d768a1b2a1.jpg'),
(15, 4, 'Signature Potato Twisters', 'Spiral sliced potatoes, topped with our traditional spicy queso, Monterey Jack cheese, pico de gallo, sour cream and fresh cilantro.', '6.00', '606d76ad0c0cb.jpg'),
(16, 4, 'Meatballs Penne Pasta', 'Garlic-herb beef meatballs tossed in our house-made marinara sauce and penne pasta topped with fresh parsley.', '10.00', '606d76eedbb99.jpg');

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
(1, 1, 'North Street Tavern', 'nthavern@mail.com', '3547854700', 'www.northstreettavern.com', '8am', '8pm', 'mon-sat', '1128 North St, White Plains', '6290877b473ce.jpg', '2022-05-27 08:10:35'),
(2, 2, 'Eataly', 'eataly@gmail.com', '0557426406', 'www.eataly.com', '11am', '9pm', 'Mon-Sat', '800 Boylston St, Boston', '606d720b5fc71.jpg', '2022-05-27 08:06:41'),
(3, 3, 'Nan Xiang Xiao Long Bao', 'nanxiangbao45@mail.com', '1458745855', 'www.nanxiangbao45.com', '9am', '8pm', 'mon-sat', 'Queens, New York', '6290860e72d1e.jpg', '2022-05-27 08:04:30'),
(4, 4, 'Highlands Bar & Grill', 'hbg@mail.com', '6545687458', 'www.hbg.com', '7am', '8pm', 'mon-sat', '812 Walter Street', '6290af6f81887.jpg', '2022-05-27 11:01:03');

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
(23, 9, 'Chicken Madeira', 1, '23.00', NULL, '2023-07-04 15:07:51'),
(24, 9, 'Cheesy Mashed Potato', 1, '5.00', NULL, '2023-07-04 15:13:58'),
(25, 9, 'Cheesy Mashed Potato', 1, '5.00', NULL, '2023-07-04 15:14:49'),
(26, 9, 'Crispy Chicken Strips', 1, '8.00', NULL, '2023-07-04 15:16:29'),
(27, 9, ' Buffalo Wings', 1, '11.00', NULL, '2023-07-04 15:20:41'),
(28, 9, 'Lemon Grilled Chicken And Pasta', 1, '11.00', NULL, '2023-07-04 15:27:14'),
(29, 9, 'Prawn Crackers', 1, '7.00', NULL, '2023-07-04 15:36:54'),
(30, 9, 'Spring Rolls', 1, '6.00', NULL, '2023-07-04 15:38:52'),
(31, 9, 'Spring Rolls', 1, '6.00', NULL, '2023-07-04 15:44:53'),
(32, 9, 'Crispy Chicken Strips', 1, '8.00', NULL, '2023-07-04 15:45:17'),
(33, 9, 'Meatballs Penne Pasta', 1, '10.00', NULL, '2023-07-04 15:47:09'),
(34, 9, 'Manchurian Chicken', 1, '11.00', NULL, '2023-07-04 15:56:46'),
(35, 9, 'Cheesy Mashed Potato', 1, '5.00', NULL, '2023-07-04 15:57:22'),
(36, 9, 'Lobster Thermidor', 1, '36.00', NULL, '2023-07-04 16:05:17'),
(37, 9, 'Spring Rolls', 1, '6.00', NULL, '2023-07-04 16:10:18'),
(38, 9, 'Vegetable Fried Rice', 1, '5.00', NULL, '2023-07-04 16:12:16'),
(39, 9, 'Yorkshire Lamb Patties', 1, '14.00', NULL, '2023-07-05 06:08:50'),
(40, 9, 'Pink Spaghetti Gamberoni', 1, '21.00', NULL, '2023-07-05 06:13:54'),
(41, 9, 'Pink Spaghetti Gamberoni', 1, '21.00', NULL, '2023-07-05 06:16:56'),
(42, 9, 'Crispy Chicken Strips', 2, '8.00', NULL, '2023-07-05 06:17:46'),
(43, 9, 'Lemon Grilled Chicken And Pasta', 1, '11.00', NULL, '2023-07-05 06:28:51'),
(44, 9, 'Prawn Crackers', 1, '7.00', NULL, '2023-07-05 06:29:14'),
(45, 9, 'Chicken Madeira', 1, '23.00', NULL, '2023-07-05 06:30:37'),
(46, 9, 'Stuffed Jacket Potatoes', 1, '8.00', NULL, '2023-07-05 06:47:22'),
(47, 9, 'Signature Potato Twisters', 1, '6.00', NULL, '2023-07-05 06:47:58'),
(48, 9, 'Meatballs Penne Pasta', 1, '10.00', NULL, '2023-07-05 06:48:49'),
(49, 9, 'Spring Rolls', 1, '6.00', NULL, '2023-07-05 07:36:50'),
(50, 15, 'Prawn Crackers', 1, '7.00', NULL, '2023-07-05 08:06:18'),
(51, 15, 'Chicken Madeira', 1, '23.00', NULL, '2023-07-05 08:06:38');

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
  MODIFY `adm_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `credit_cards`
--
ALTER TABLE `credit_cards`
  MODIFY `card_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `dishes`
--
ALTER TABLE `dishes`
  MODIFY `d_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `remark`
--
ALTER TABLE `remark`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `restaurant`
--
ALTER TABLE `restaurant`
  MODIFY `rs_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

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
  MODIFY `o_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

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
