-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 30, 2022 at 03:37 PM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `e_wallet`
--

-- --------------------------------------------------------

--
-- Table structure for table `account`
--

CREATE TABLE `account` (
  `ACCOUNT_NUMBER` int(11) NOT NULL,
  `User_Id` int(11) DEFAULT NULL,
  `wallet_id` int(11) DEFAULT NULL,
  `Balance` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `User_Id` int(11) NOT NULL,
  `Fname` varchar(250) NOT NULL,
  `Lname` varchar(250) DEFAULT NULL,
  `PhoneNO` int(10) NOT NULL,
  `Email` varchar(30) NOT NULL,
  `Username` varchar(100) NOT NULL,
  `Password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`User_Id`, `Fname`, `Lname`, `PhoneNO`, `Email`, `Username`, `Password`) VALUES
(1, 'king', 'isiaheli', 785361798, 'isiaheli12@gmail.com', '', ''),
(2, 'Mourice', 'Kwizera', 784735244, 'kwizera@gmail.com', 'admin', 'admin'),
(3, 'rwqerwqerw', 'werwerwer', 121231212, 'werwerwe', 'werwerwer', 'werwerwer'),
(4, 'rwqerwqerw', 'werwerwer', 121231212, 'werwerwe', 'werwerwer', 'werwerwer'),
(5, 'rwqerwqerw', 'werwerwer', 121231212, 'werwerwe', 'werwerwer', 'werwerwer'),
(6, 'MUKIZA', 'Janvveir', 123454566, 'fasfsafsa@gmaill,. om', 'qwerrt', '123'),
(7, 'Lambert', 'Habyarimana', 1231134141, 'lambert@gmail.com', 'HabLamb', '12345'),
(8, 'ISIRARELI', 'King', 782222223, 'isiraheli121@gmail.com', 'Isiraheliking', '12345'),
(9, 'MUJAWIMANA`', 'Delphine', 781234567, 'muja123@gmail.com', 'Delphine', '00000');

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `transaction_id` int(11) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `type` varchar(250) DEFAULT NULL,
  `amount` float DEFAULT NULL,
  `description` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`transaction_id`, `timestamp`, `type`, `amount`, `description`) VALUES
(1, '2022-11-25 12:50:05', 'American Dollar (USD)', 200, 'Deposited'),
(2, '2022-11-25 12:49:55', 'American Dollar (USD)', 200, 'Withdraw'),
(3, '2022-11-25 12:50:27', 'American Dollar (USD)', 50, 'Withdraw'),
(4, '2022-11-25 12:49:01', 'American Dollar (USD)', 10, 'Transfered'),
(5, '2022-11-25 12:38:39', 'American Dollar (USD)', 30, 'Transfered'),
(6, '2022-11-25 12:43:48', 'American Dollar (USD)', 45, 'Withdrawn'),
(7, '2022-11-28 11:53:22', 'American Dollar (USD)', 10, 'Withdrawn'),
(8, '2022-11-28 11:53:33', 'American Dollar (USD)', 30, 'Transfered'),
(9, '2022-11-28 12:00:55', 'American Dollar (USD)', 30, 'Deposited'),
(10, '2022-11-28 12:15:38', 'American Dollar (USD)', 32, 'Deposited'),
(11, '2022-11-28 12:22:56', 'American Dollar (USD)', 70, 'Deposited'),
(12, '2022-11-28 12:24:44', 'American Dollar (USD)', 60, 'Deposited'),
(13, '2022-11-28 12:33:20', 'American Dollar (USD)', 54, 'Deposited'),
(14, '2022-11-28 12:49:07', 'American Dollar (USD)', 40, 'Deposited'),
(15, '2022-11-28 12:50:15', 'American Dollar (USD)', 67, 'Deposited'),
(16, '2022-11-28 12:51:15', 'American Dollar (USD)', 10, 'Deposited'),
(17, '2022-11-28 13:01:05', 'American Dollar (USD)', 30, 'Deposited'),
(18, '2022-11-28 13:05:06', 'American Dollar (USD)', 50, 'Deposited'),
(19, '2022-11-28 13:06:31', 'American Dollar (USD)', 45, 'Deposited'),
(20, '2022-11-28 13:36:04', 'American Dollar (USD)', 80, 'Deposited'),
(21, '2022-11-28 13:38:36', 'American Dollar (USD)', 20, 'Deposited'),
(22, '2022-11-28 13:39:29', 'American Dollar (USD)', 500, 'Deposited'),
(23, '2022-11-28 13:41:48', 'American Dollar (USD)', 300, 'Deposited'),
(24, '2022-11-28 13:42:56', 'American Dollar (USD)', 400, 'Deposited'),
(25, '2022-11-28 13:44:31', 'American Dollar (USD)', 700, 'Deposited'),
(26, '2022-11-28 13:46:52', 'American Dollar (USD)', 300, 'Deposited'),
(27, '2022-11-28 13:58:37', 'American Dollar (USD)', 200, 'Deposited'),
(28, '2022-11-28 14:02:08', 'American Dollar (USD)', 200, 'Withdrawn'),
(29, '2022-11-28 14:04:52', 'American Dollar (USD)', 200, 'Withdrawn'),
(30, '2022-11-28 14:06:43', 'American Dollar (USD)', 300, 'Transfered'),
(31, '2022-11-28 14:16:08', 'American Dollar (USD)', 100, 'Transfered'),
(32, '2022-11-28 14:16:38', 'American Dollar (USD)', 500, 'Transfered'),
(33, '2022-11-28 14:18:35', 'American Dollar (USD)', 100, 'Transfered'),
(34, '2022-11-28 14:20:08', 'American Dollar (USD)', 200, 'Transfered'),
(35, '2022-11-28 14:22:07', 'American Dollar (USD)', 100, 'Transfered'),
(36, '2022-11-28 14:23:35', 'American Dollar (USD)', 300, 'Transfered'),
(37, '2022-11-30 14:33:42', 'American Dollar (USD)', 500, 'Deposited'),
(38, '2022-11-30 14:34:07', 'American Dollar (USD)', 100, 'Withdrawn');

-- --------------------------------------------------------

--
-- Table structure for table `wallet`
--

CREATE TABLE `wallet` (
  `WALLET_id` int(11) NOT NULL,
  `User_id` int(11) DEFAULT NULL,
  `amount` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `wallet`
--

INSERT INTO `wallet` (`WALLET_id`, `User_id`, `amount`) VALUES
(6, 1, 700);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `account`
--
ALTER TABLE `account`
  ADD PRIMARY KEY (`ACCOUNT_NUMBER`),
  ADD KEY `fk_account_number` (`wallet_id`),
  ADD KEY `fk_accounts_number` (`User_Id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`User_Id`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`transaction_id`);

--
-- Indexes for table `wallet`
--
ALTER TABLE `wallet`
  ADD PRIMARY KEY (`WALLET_id`),
  ADD KEY `fk_wallet_id` (`User_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `account`
--
ALTER TABLE `account`
  MODIFY `ACCOUNT_NUMBER` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `User_Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `transaction_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `wallet`
--
ALTER TABLE `wallet`
  MODIFY `WALLET_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `account`
--
ALTER TABLE `account`
  ADD CONSTRAINT `fk_account_number` FOREIGN KEY (`wallet_id`) REFERENCES `wallet` (`WALLET_id`),
  ADD CONSTRAINT `fk_accounts_number` FOREIGN KEY (`User_Id`) REFERENCES `customer` (`User_Id`);

--
-- Constraints for table `wallet`
--
ALTER TABLE `wallet`
  ADD CONSTRAINT `fk_wallet_id` FOREIGN KEY (`User_id`) REFERENCES `customer` (`User_Id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
