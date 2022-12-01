-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 01, 2022 at 01:49 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `uts`
--

-- --------------------------------------------------------

--
-- Table structure for table `tab_registrasi`
--

CREATE TABLE `tab_registrasi` (
  `nim` int(11) NOT NULL,
  `nama` varchar(100) DEFAULT NULL,
  `prodi` int(11) DEFAULT NULL,
  `semester` int(11) DEFAULT NULL,
  `kelas` varchar(10) DEFAULT NULL,
  `no_hp` varchar(13) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `alamat` text DEFAULT NULL,
  `foto` text DEFAULT NULL,
  `jenis_kelamin` int(11) DEFAULT NULL,
  `agama` varchar(10) DEFAULT NULL,
  `tempat_lahir` varchar(100) DEFAULT NULL,
  `tanggal_lahir` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `tab_registrasi`
--

INSERT INTO `tab_registrasi` (`nim`, `nama`, `prodi`, `semester`, `kelas`, `no_hp`, `email`, `alamat`, `foto`, `jenis_kelamin`, `agama`, `tempat_lahir`, `tanggal_lahir`) VALUES
(2147483647, 'Gipari Pradina Abdillah', 12344325, 3, 'Sabtu', '081284924249', 'giparipradinaabdillah@gmail.com', 'Jl. Prof. Dr. Satrio Kav 18', 'ruijie.jpeg', 1, 'Islam', 'TASIKMALAYA', '1999-04-05');

-- --------------------------------------------------------

--
-- Table structure for table `tab_user`
--

CREATE TABLE `tab_user` (
  `id` int(11) NOT NULL,
  `username` varchar(15) NOT NULL,
  `password` text NOT NULL,
  `last_login` datetime NOT NULL,
  `created_by` varchar(15) NOT NULL,
  `created_at` datetime NOT NULL,
  `update_by` varchar(15) NOT NULL,
  `update_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tab_user`
--

INSERT INTO `tab_user` (`id`, `username`, `password`, `last_login`, `created_by`, `created_at`, `update_by`, `update_at`) VALUES
(1, 'gipari', '2fea6c02a98d6318d44cdf150775f07a', '2022-11-19 15:41:26', '', '2022-11-19 15:41:26', '', '2022-11-19 15:41:26');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tab_registrasi`
--
ALTER TABLE `tab_registrasi`
  ADD PRIMARY KEY (`nim`) USING BTREE;

--
-- Indexes for table `tab_user`
--
ALTER TABLE `tab_user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tab_user`
--
ALTER TABLE `tab_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
