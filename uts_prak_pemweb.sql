-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: May 14, 2022 at 07:04 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `uts_prak_pemweb`
--

-- --------------------------------------------------------

--
-- Table structure for table `certification`
--

CREATE TABLE `certification` (
  `id` int(2) NOT NULL,
  `certification` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `certification`
--

INSERT INTO `certification` (`id`, `certification`) VALUES
(1, 'MTCNA'),
(2, 'MTCRE'),
(3, 'MTCTCE'),
(4, 'MTCWE'),
(5, 'MTCUME'),
(6, 'MTCSE'),
(7, 'Cloud Practitioner Engineer'),
(8, 'Architecting on AWS'),
(9, 'Dicoding : Visualisasi Data'),
(10, 'Dicoding : Dasar Pemrograman JavaScript'),
(11, 'Dicoding : Dasar Pemrograman Web'),
(12, 'Dicoding : Belajar Aplikasi Back-End Pemula');

-- --------------------------------------------------------

--
-- Table structure for table `job`
--

CREATE TABLE `job` (
  `id` int(11) NOT NULL,
  `perusahaan` varchar(50) NOT NULL,
  `posisi` varchar(50) NOT NULL,
  `masa` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `job`
--

INSERT INTO `job` (`id`, `perusahaan`, `posisi`, `masa`) VALUES
(1, 'PT. Citraweb Solusi Teknologi', 'Training & Support Engineer', '2019 - Sekarang');

-- --------------------------------------------------------

--
-- Table structure for table `jobdesc`
--

CREATE TABLE `jobdesc` (
  `idj` int(11) NOT NULL,
  `id` int(11) NOT NULL,
  `joblist` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `jobdesc`
--

INSERT INTO `jobdesc` (`idj`, `id`, `joblist`) VALUES
(1, 101, 'Mengajar'),
(1, 102, 'Membuat Video Tutorial'),
(1, 103, 'Live Streaming Jaringan'),
(1, 104, 'Menulis Artikel'),
(1, 105, 'Research & Development'),
(1, 106, 'Memberikan Support User'),
(1, 107, 'Deploy & Maintenance Server');

-- --------------------------------------------------------

--
-- Table structure for table `pendidikan`
--

CREATE TABLE `pendidikan` (
  `id` int(2) NOT NULL,
  `sekolah` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pendidikan`
--

INSERT INTO `pendidikan` (`id`, `sekolah`) VALUES
(1, 'Universitas Mercubuana Yogyakarta'),
(2, 'SMK N 2 Depok Sleman'),
(3, 'SMP N 1 Muntilan');

-- --------------------------------------------------------

--
-- Table structure for table `skill`
--

CREATE TABLE `skill` (
  `id` int(2) NOT NULL,
  `skill` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `skill`
--

INSERT INTO `skill` (`id`, `skill`) VALUES
(1, 'Network Admin'),
(2, 'Server Admin'),
(3, 'Web Development'),
(4, 'Docker Container'),
(5, 'AWS Cloud'),
(6, 'Bash Scripting');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
