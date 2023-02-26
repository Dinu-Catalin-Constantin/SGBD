-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 26, 2023 at 04:51 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `baza_de_date_1`
--

-- --------------------------------------------------------

--
-- Table structure for table `bilete`
--

CREATE TABLE `bilete` (
  `cod_bilet` int(11) DEFAULT NULL,
  `cod_cursa` int(11) DEFAULT NULL,
  `cod_client` int(11) DEFAULT NULL,
  `data_achizitie` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `clienti`
--

CREATE TABLE `clienti` (
  `cod_client` int(11) DEFAULT NULL,
  `nume` varchar(255) DEFAULT NULL,
  `prenume` varchar(255) DEFAULT NULL,
  `adresa` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `companii_aeriene`
--

CREATE TABLE `companii_aeriene` (
  `cod_companie` int(11) DEFAULT NULL,
  `denumire_companie` varchar(255) DEFAULT NULL,
  `tara_companie` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `companii_localitati`
--

CREATE TABLE `companii_localitati` (
  `cod_companie` int(11) DEFAULT NULL,
  `cod_localitate` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `curse_aeriene`
--

CREATE TABLE `curse_aeriene` (
  `cod_cursa` int(11) DEFAULT NULL,
  `cod_zbor` int(11) DEFAULT NULL,
  `data` date DEFAULT NULL,
  `pret` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `localitati`
--

CREATE TABLE `localitati` (
  `cod_localitate` int(11) DEFAULT NULL,
  `denumire_localitate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `zboruri`
--

CREATE TABLE `zboruri` (
  `cod_zbor` int(11) DEFAULT NULL,
  `cod_companie` int(11) DEFAULT NULL,
  `cod_localitate` int(11) DEFAULT NULL,
  `minute_intarziere` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
