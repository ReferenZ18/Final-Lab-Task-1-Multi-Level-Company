-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 12, 2025 at 12:03 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `generic_company`
--

-- --------------------------------------------------------

--
-- Table structure for table `departments_tbl`
--

CREATE TABLE `departments_tbl` (
  `department_id` int(11) NOT NULL,
  `department_name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `employee_departments_tbl`
--

CREATE TABLE `employee_departments_tbl` (
  `employee_id` int(11) DEFAULT NULL,
  `department_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `employee_projects_tbl`
--

CREATE TABLE `employee_projects_tbl` (
  `employee_id` int(11) DEFAULT NULL,
  `project_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `employee_tbl`
--

CREATE TABLE `employee_tbl` (
  `employee_id` int(11) NOT NULL,
  `employee_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `managers_tbl`
--

CREATE TABLE `managers_tbl` (
  `manager_id` int(11) NOT NULL,
  `employee_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `departments_tbl`
--
ALTER TABLE `departments_tbl`
  ADD PRIMARY KEY (`department_id`);

--
-- Indexes for table `employee_departments_tbl`
--
ALTER TABLE `employee_departments_tbl`
  ADD KEY `employee_id` (`employee_id`),
  ADD KEY `department_id` (`department_id`);

--
-- Indexes for table `employee_projects_tbl`
--
ALTER TABLE `employee_projects_tbl`
  ADD KEY `employee_id` (`employee_id`);

--
-- Indexes for table `employee_tbl`
--
ALTER TABLE `employee_tbl`
  ADD PRIMARY KEY (`employee_id`);

--
-- Indexes for table `managers_tbl`
--
ALTER TABLE `managers_tbl`
  ADD PRIMARY KEY (`manager_id`),
  ADD KEY `employee_id` (`employee_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `departments_tbl`
--
ALTER TABLE `departments_tbl`
  MODIFY `department_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `employee_tbl`
--
ALTER TABLE `employee_tbl`
  MODIFY `employee_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `managers_tbl`
--
ALTER TABLE `managers_tbl`
  MODIFY `manager_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `employee_departments_tbl`
--
ALTER TABLE `employee_departments_tbl`
  ADD CONSTRAINT `employee_departments_tbl_ibfk_1` FOREIGN KEY (`employee_id`) REFERENCES `employee_tbl` (`employee_id`),
  ADD CONSTRAINT `employee_departments_tbl_ibfk_2` FOREIGN KEY (`department_id`) REFERENCES `departments_tbl` (`department_id`);

--
-- Constraints for table `employee_projects_tbl`
--
ALTER TABLE `employee_projects_tbl`
  ADD CONSTRAINT `employee_projects_tbl_ibfk_1` FOREIGN KEY (`employee_id`) REFERENCES `employee_tbl` (`employee_id`);

--
-- Constraints for table `managers_tbl`
--
ALTER TABLE `managers_tbl`
  ADD CONSTRAINT `managers_tbl_ibfk_1` FOREIGN KEY (`employee_id`) REFERENCES `employee_tbl` (`employee_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
