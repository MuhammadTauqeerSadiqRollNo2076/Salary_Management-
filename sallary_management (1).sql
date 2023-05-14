-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 14, 2023 at 08:41 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sallary_management`
--

-- --------------------------------------------------------

--
-- Table structure for table `attribute_of_salary_configuration_template`
--

CREATE TABLE `attribute_of_salary_configuration_template` (
  `Id` int(50) NOT NULL,
  `job_grade_structure` int(45) NOT NULL,
  `pay_structure` int(123) NOT NULL,
  `allowance_structure` int(132) NOT NULL,
  `bonus_and_incentive_structure` int(124) NOT NULL,
  `Benefits_structure` int(111) NOT NULL,
  `tax_and_statutory_deduction` int(112) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `attribute_of_salary_configuration_template_to_employee`
--

CREATE TABLE `attribute_of_salary_configuration_template_to_employee` (
  `Id` int(40) NOT NULL,
  `basic_information` varchar(50) NOT NULL,
  `compensation` varchar(40) NOT NULL,
  `deduction` int(39) NOT NULL,
  `leave_and_attendance` varchar(45) NOT NULL,
  `Benefits` int(55) NOT NULL,
  `payroll_processing` varchar(45) NOT NULL,
  `compliance` varchar(67) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `attribute_of_salary_item`
--

CREATE TABLE `attribute_of_salary_item` (
  `Id` int(11) NOT NULL,
  `basic_salary` int(40) NOT NULL,
  `allowance` int(50) NOT NULL,
  `overtime_pay` int(30) NOT NULL,
  `bonuses` int(45) NOT NULL,
  `commission` int(60) NOT NULL,
  `benefits` int(70) NOT NULL,
  `incentive` int(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `attribute_of_salary_reporting`
--

CREATE TABLE `attribute_of_salary_reporting` (
  `Id` int(23) NOT NULL,
  `payroll_summary_report` varchar(33) NOT NULL,
  `employee_summary_report` varchar(55) NOT NULL,
  `compliance_report` varchar(77) NOT NULL,
  `benefits_report` varchar(55) NOT NULL,
  `salary_trend_report` varchar(22) NOT NULL,
  `cost_projection_report` varchar(77) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `entities`
--

CREATE TABLE `entities` (
  `salary_item` int(100) NOT NULL,
  `Salary_configration_template` int(123) NOT NULL,
  `Attach_Configration_Template_to_Employee` int(124) NOT NULL,
  `Salary_Reporting` varchar(212) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `attribute_of_salary_configuration_template_to_employee`
--
ALTER TABLE `attribute_of_salary_configuration_template_to_employee`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `attribute_of_salary_reporting`
--
ALTER TABLE `attribute_of_salary_reporting`
  ADD PRIMARY KEY (`Id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `attribute_of_salary_configuration_template_to_employee`
--
ALTER TABLE `attribute_of_salary_configuration_template_to_employee`
  MODIFY `Id` int(40) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `attribute_of_salary_reporting`
--
ALTER TABLE `attribute_of_salary_reporting`
  MODIFY `Id` int(23) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
