-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 11, 2024 at 08:22 AM
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
-- Database: `db_perdi`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_admin`
--

CREATE TABLE `tb_admin` (
  `id_admin` int(11) NOT NULL,
  `nama_lengkap` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL,
  `aktif` varchar(5) NOT NULL,
  `foto` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tb_admin`
--

INSERT INTO `tb_admin` (`id_admin`, `nama_lengkap`, `username`, `password`, `aktif`, `foto`) VALUES
(1, 'Perdiansyah', 'admin@gmail.com', 'd033e22ae348aeb5660fc2140aec35850c4da997', 'Y', 'WhatsApp Image 2024-01-09 at 09.31.01_67c92eed.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tb_guru`
--

CREATE TABLE `tb_guru` (
  `id_guru` int(11) NOT NULL,
  `nip` varchar(15) NOT NULL,
  `nama_guru` varchar(120) NOT NULL,
  `email` varchar(65) NOT NULL,
  `password` varchar(100) NOT NULL,
  `foto` varchar(255) NOT NULL,
  `status` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tb_guru`
--

INSERT INTO `tb_guru` (`id_guru`, `nip`, `nama_guru`, `email`, `password`, `foto`, `status`) VALUES
(5, '001', 'Muhammad Kholil S.Pdi', 'kholil@gmail.com', 'e193a01ecf8d30ad0affefd332ce934e32ffce72', 'kepala.png', 'Y'),
(6, '002', 'M.N Latif Iskandar, S.Pd', 'latif@gmail.com', '6fc978af728d43c59faa400d5f6e0471ac850d4c', 'kepala.png', 'Y'),
(7, '003', 'Fanji Rizki S, S.pd', 'fanji@gmail.com', '221407c03ae5c73109cce71d27e24637824f3333', '355-3553881_stockvader-predicted-adig-user-profile-icon-png-clipart.jpg', 'Y'),
(8, '004', 'Asep Komara  S.Pd', 'asepkomara@gmail.com', 'c63528a52274a35d1c07bd9e55a83c6eb073de81', 'kepala.png', 'Y'),
(9, '005', 'Deni Suhar, S.Pd', 'Denisuhar@gmail.com', 'de1f53b6fbc3fecd35b0bbc963e21902a149e5e3', 'kepala.png', 'Y'),
(10, '006', 'Wyne Kusuma D, S.Pd', 'wynekusuma@gmail.com', '20dd129da16a9afb802d8b595485f8d2719aea44', 'guru.png', 'Y'),
(11, '007', 'Erina Undamayanti, S.Kom', 'erina@gmail.com', '15346b593c4d0cf05fb6e67a5669d852e6550481', 'guru.png', 'Y'),
(12, '008', 'Aang Samsudin, S.Kom, M.Kom', 'Aang@gmail.com', '52c24d49be8ef49d19f9983b6c3d1c5892c593db', 'kepala.png', 'Y'),
(13, '009', 'Nina Nuraprina, S.Kom', 'ninanuraprina@gmail.com', '19b3f0ed02e60c8bae808b496b3cce99dc8f9e69', 'guru.png', 'Y'),
(14, '010', 'Chinka Aulia, S.kom', 'chinka@gmail.com', '47ab9979443fb7ed1c193d06773333ba7876094f', 'guru.png', 'Y');

-- --------------------------------------------------------

--
-- Table structure for table `tb_kepsek`
--

CREATE TABLE `tb_kepsek` (
  `id_kepsek` int(11) NOT NULL,
  `nip` varchar(15) NOT NULL,
  `nama_kepsek` varchar(120) NOT NULL,
  `email` varchar(65) NOT NULL,
  `password` varchar(100) NOT NULL,
  `foto` varchar(255) NOT NULL,
  `status` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tb_kepsek`
--

INSERT INTO `tb_kepsek` (`id_kepsek`, `nip`, `nama_kepsek`, `email`, `password`, `foto`, `status`) VALUES
(1, '123456789011', 'Susilawati Wijaya, S.Pd', 'susilawatiwijaya@gmail.com', '4ce8e48be6c978348e4a6f4754b050de5581be4b', 'guru.png', 'Y');

-- --------------------------------------------------------

--
-- Table structure for table `tb_master_mapel`
--

CREATE TABLE `tb_master_mapel` (
  `id_mapel` int(11) NOT NULL,
  `kode_mapel` varchar(40) NOT NULL,
  `mapel` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tb_master_mapel`
--

INSERT INTO `tb_master_mapel` (`id_mapel`, `kode_mapel`, `mapel`) VALUES
(1, 'MP-1561560093', 'Sejarah Indonesia'),
(2, 'MP-1561560129', 'Matematika'),
(3, 'MP-1561871991', 'Bimbingan Konseling'),
(4, 'MP-1561872004', 'Kewirausahaan'),
(5, 'MP-1561872013', 'Penjas'),
(6, 'MP-1561872026', 'Seni Budaya'),
(7, 'MP-1561872043', 'Bahasa Inggris'),
(8, 'MP-1615002340', 'Bahasa Sunda'),
(9, 'MP-1704878615', 'Pendidikan Agama dan Budi Pekerti'),
(10, 'MP-1704878673', 'Pendidikan Pancasila dan Kewarganegaraan'),
(11, 'MP-1704878696', 'Bahasa Indonesia'),
(12, 'MP-1704878746', 'Informatika'),
(13, 'MP-1704878759', 'Proyek IPAS'),
(14, 'MP-1704878768', 'Proyek Penguatan Profil Pelajar Pancasila'),
(15, 'MP-1704885008', 'Produktif RPL');

-- --------------------------------------------------------

--
-- Table structure for table `tb_mengajar`
--

CREATE TABLE `tb_mengajar` (
  `id_mengajar` int(11) NOT NULL,
  `kode_pelajaran` varchar(30) NOT NULL,
  `hari` varchar(40) NOT NULL,
  `jam_mengajar` varchar(60) NOT NULL,
  `jamke` varchar(11) NOT NULL,
  `id_guru` int(11) NOT NULL,
  `id_mapel` int(11) NOT NULL,
  `id_mkelas` int(11) NOT NULL,
  `id_semester` int(11) NOT NULL,
  `id_thajaran` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tb_mengajar`
--

INSERT INTO `tb_mengajar` (`id_mengajar`, `kode_pelajaran`, `hari`, `jam_mengajar`, `jamke`, `id_guru`, `id_mapel`, `id_mkelas`, `id_semester`, `id_thajaran`) VALUES
(1, 'MPL-1614670924', 'Senin', '09.00-10.00', '1-2', 1, 1, 1, 1, 2),
(2, 'MPL-1614674537', 'Senin', '09.00-10.00', '1-2', 5, 1, 1, 1, 2),
(4, 'MPL-1615004563', 'Senin', '08.00-09.00', '1', 6, 2, 3, 2, 2),
(5, 'MPL-1616288498', 'Rabu', '09.00-10.00', '2', 8, 7, 1, 2, 2),
(6, 'MPL-1582242668', 'Senin', '08.00-09.00', '1', 5, 1, 1, 4, 8),
(8, 'MPL-1704879067', 'Senin', '07.00 - 10.00', '1-4', 8, 2, 5, 4, 9),
(9, 'MPL-1704879156', 'Senin', '10.15-11.45', '5-6', 10, 7, 5, 4, 9),
(10, 'MPL-1704879208', 'Senin', '11.45-15.15', '7-10', 10, 12, 5, 4, 9),
(11, 'MPL-1704879262', 'Selasa', '07.00-08.30', '1-2', 9, 5, 5, 4, 9),
(12, 'MPL-1704879309', 'Selasa', '08.30-10.00', '3-4', 9, 6, 5, 4, 9),
(13, 'MPL-1704879343', 'Selasa', '10.15-12.30', '5-7', 6, 10, 5, 4, 9),
(14, 'MPL-1704879379', 'Selasa', '13.00-15.15', '8-10', 6, 8, 5, 4, 9),
(15, 'MPL-1704879411', 'Rabu', '07.00-08.30', '1-2', 8, 2, 5, 4, 9),
(16, 'MPL-1704879442', 'Rabu', '08.30-11.45', '3-6', 8, 13, 5, 4, 9),
(17, 'MPL-1704879484', 'Rabu', '11.45-15.15', '7-10', 10, 7, 5, 4, 9),
(18, 'MPL-1704879519', 'Kamis', '07.00-08.30', '1-2', 7, 11, 5, 4, 9),
(19, 'MPL-1704879543', 'Kamis', '08.30-11.45', '3-6', 5, 9, 5, 4, 9),
(20, 'MPL-1704879576', 'Kamis', '11.45-13.45', '7-8', 9, 1, 5, 4, 9),
(25, 'MPL-1704881047', 'Kamis', '13.45-15.15', '9-10', 9, 6, 5, 4, 9),
(26, 'MPL-1704881129', 'Jumat', '07.00 - 09.15', '1-3', 9, 5, 5, 4, 9),
(27, 'MPL-1704881179', 'Jumat', '09.15-11.45', '4-6', 7, 11, 5, 4, 9),
(28, 'MPL-1704881229', 'Jumat', '11.45-12.30', '7', 6, 3, 5, 4, 9),
(29, 'MPL-1704881296', 'Jumat', '13.00-15.15', '8-10', 6, 14, 5, 4, 9),
(30, 'MPL-1704885175', 'Senin', '07.00-11.00', '1-5', 13, 15, 6, 4, 9),
(31, 'MPL-1704885315', 'Senin', '11.00-15.15', '6-10', 9, 15, 6, 4, 9),
(32, 'MPL-1704885452', 'Selasa', '07.00-15.15', '1-10', 11, 15, 6, 4, 9),
(33, 'MPL-1704885633', 'Rabu', '07.00-11.00', '1-5', 13, 15, 6, 4, 9),
(34, 'MPL-1704885722', 'Rabu', '11.00-15.15', '6-10', 9, 15, 6, 4, 9),
(35, 'MPL-1704885940', 'Kamis', '07.00-15.15', '1-10', 11, 15, 6, 4, 9),
(36, 'MPL-1704886033', 'Jumat', '07.00-15.15', '1-10', 14, 15, 6, 4, 9),
(37, 'MPL-1704886127', 'Senin', '07.00-15.15', '1-10', 11, 15, 7, 4, 9),
(38, 'MPL-1704886224', 'Selasa', '07.00-15.15', '1-10', 14, 15, 7, 4, 9),
(39, 'MPL-1704886267', 'Rabu', '07.00-15.15', '1-10', 14, 15, 7, 4, 9),
(40, 'MPL-1704886312', 'Kamis', '07.00-15.15', '1-10', 12, 15, 7, 4, 9),
(41, 'MPL-1704886349', 'Jumat', '07.00-15.15', '1-10', 11, 15, 7, 4, 9);

-- --------------------------------------------------------

--
-- Table structure for table `tb_mkelas`
--

CREATE TABLE `tb_mkelas` (
  `id_mkelas` int(11) NOT NULL,
  `kd_kelas` varchar(40) NOT NULL,
  `nama_kelas` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tb_mkelas`
--

INSERT INTO `tb_mkelas` (`id_mkelas`, `kd_kelas`, `nama_kelas`) VALUES
(5, 'KL-1616673105', 'X Rekayasa Perangkat Lunak'),
(6, 'KL-1616673114', 'XI Rekayasa Perangkat Lunak'),
(7, 'KL-1616673120', 'XII Rekayasa Perangkat Lunak');

-- --------------------------------------------------------

--
-- Table structure for table `tb_semester`
--

CREATE TABLE `tb_semester` (
  `id_semester` int(11) NOT NULL,
  `semester` varchar(45) NOT NULL,
  `status` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tb_semester`
--

INSERT INTO `tb_semester` (`id_semester`, `semester`, `status`) VALUES
(4, 'Ganjil', 1),
(5, 'Genap', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tb_siswa`
--

CREATE TABLE `tb_siswa` (
  `id_siswa` int(11) NOT NULL,
  `nis` varchar(60) NOT NULL,
  `nama_siswa` varchar(120) NOT NULL,
  `tempat_lahir` varchar(100) NOT NULL,
  `tgl_lahir` date NOT NULL,
  `jk` varchar(30) NOT NULL,
  `alamat` text NOT NULL,
  `password` varchar(255) NOT NULL,
  `foto` varchar(255) NOT NULL,
  `status` varchar(15) NOT NULL,
  `th_angkatan` year(4) NOT NULL,
  `id_mkelas` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tb_siswa`
--

INSERT INTO `tb_siswa` (`id_siswa`, `nis`, `nama_siswa`, `tempat_lahir`, `tgl_lahir`, `jk`, `alamat`, `password`, `foto`, `status`, `th_angkatan`, `id_mkelas`) VALUES
(1, '001', 'Imam Hambali', 'Jakarta', '2020-03-01', 'L', 'Jl. Mawar', 'e193a01ecf8d30ad0affefd332ce934e32ffce72', '355-3553881_stockvader-predicted-adig-user-profile-icon-png-clipart.jpg', '1', '2020', 1),
(2, '002', 'Agis Sagita', 'bogor', '2012-06-02', 'P', 'jl. batok tenjo-bogor', '6fc978af728d43c59faa400d5f6e0471ac850d4c', '17603.png', '1', '2019', 3),
(3, '004', 'indah nuraeni', 'bogor', '2009-07-01', 'L', 'bogor', 'c63528a52274a35d1c07bd9e55a83c6eb073de81', '17603.png', '1', '2019', 1),
(4, '12345', 'Suci', 'TANGERANG', '2002-09-21', 'P', 'Kademangan', '8cb2237d0679ca88db6464eac60da96345513964', 'IMG_20180830_164642_853.jpg', '1', '2019', 1),
(5, '213024', 'Helgi Nur Alamsyah', 'Majalengka', '2006-06-07', 'L', 'Majalengka', '4ed2867079516d8e5a5fd974ca7779ebdf69c153', 'profile-icon-male-user-person-avatar-symbol-vector-20910833.jpg', '1', '2021', 7),
(6, '213025', 'Anisa Miftahul Kolbi', 'Subang', '2006-06-05', 'L', 'Subang', '6e40361c4d26beb86c8811ab6042f414f5c69f60', 'profile-icon-male-user-person-avatar-symbol-vector-20910833.jpg', '1', '2021', 7),
(7, '213026', 'Arief Hidayat', 'Subang', '2006-05-23', 'L', 'Subang', '277c8476a74ad579ddb42d5ac6ebe22d859b511e', 'profile-icon-male-user-person-avatar-symbol-vector-20910833.jpg', '1', '2021', 7),
(8, '213027', 'Bayu Rohmat', 'Subang', '2006-08-24', 'L', 'Subang', '759cecc3b213a2f4d9ba4daf21ef34e3366bc957', 'profile-icon-male-user-person-avatar-symbol-vector-20910833.jpg', '1', '2021', 7),
(9, '213028', 'Dianisa Purnamasari', 'Subang', '2006-09-29', 'L', 'Subang', '10b09a2d06bcbfd5032f06a237209ad1144ff7a2', 'profile-icon-male-user-person-avatar-symbol-vector-20910833.jpg', '1', '2021', 7),
(10, '213030', 'Dida Amelia', 'Subang', '2005-05-29', 'P', 'Subang', '9644d6d9366d8b35016ad43b3957fafd6bbc24f1', 'profile-icon-male-user-person-avatar-symbol-vector-20910833.jpg', '1', '2021', 7),
(11, '213031', 'Gugun Gunawan', 'Subang', '2006-01-21', 'L', 'Subang', '1049782f69151593e30344fc3b8c9fd265a58381', 'profile-icon-male-user-person-avatar-symbol-vector-20910833.jpg', '1', '2021', 7),
(12, '213032', 'Haldi Pratama', 'Subang', '2006-02-04', 'L', 'Subang', 'de67eb1c14d97a1a1254c8e007fc4c271152fc62', 'profile-icon-male-user-person-avatar-symbol-vector-20910833.jpg', '1', '2021', 7),
(13, '213033', 'Khaikal Ikhsanudin', 'Subang', '2007-01-30', 'L', 'Subang', '90ffe04d8dbcbfc87f2b3db00aea76dc04e9e67e', 'profile-icon-male-user-person-avatar-symbol-vector-20910833.jpg', '1', '2021', 7),
(14, '213034', 'Muhammad Yusuf Rahman', 'Subang', '2006-03-14', 'L', 'Subang', '9aba8afecc08af99e4aa79e713fda30fb8747bff', 'profile-icon-male-user-person-avatar-symbol-vector-20910833.jpg', '1', '2021', 7),
(15, '213035', 'Mutia Febriani', 'Subang', '2006-02-08', 'P', 'Subang', '1b0b3fa6b9a2301a8ed8002021f57d4941c79ac9', 'profile-icon-male-user-person-avatar-symbol-vector-20910833.jpg', '1', '2021', 7),
(16, '213036', 'Raihan Nur Abya', 'Subang', '2006-10-26', 'L', 'Subang', 'edb4650a67a8888084b29a3ae01d85e599389e03', 'profile-icon-male-user-person-avatar-symbol-vector-20910833.jpg', '1', '2021', 7),
(17, '213037', 'Risyad Aenul Zakita', 'Subang', '2006-01-23', 'P', 'Subang', 'e3e055b1898340860ca41183cfcea88614486fe9', 'profile-icon-male-user-person-avatar-symbol-vector-20910833.jpg', '1', '2021', 7),
(18, '213038', 'Rizka Nurjamilah', 'Subang', '2006-01-24', 'P', 'Subang', '7713430db17dedf82889064930b2bfe336c3e042', 'profile-icon-male-user-person-avatar-symbol-vector-20910833.jpg', '1', '2021', 7),
(19, '213039', 'Siti Luthfiyyah N Tsani', 'Subang', '2006-08-30', 'P', 'Subang', '56057643f093b26cd6d261e71eb989ab2692465a', 'profile-icon-male-user-person-avatar-symbol-vector-20910833.jpg', '1', '2021', 7),
(20, '213040', 'Wawan Setiawan', 'Subang', '2005-08-20', 'L', 'Subang', '6ba32e052be26c25a99f4e0e3b97412b2d46bb6c', 'profile-icon-male-user-person-avatar-symbol-vector-20910833.jpg', '1', '2021', 7),
(21, '213041', 'Yudi', 'Subang', '2004-06-14', 'L', 'Subang', 'd244f96108036cf69b8e01964f2f03f10ae097c7', 'profile-icon-male-user-person-avatar-symbol-vector-20910833.jpg', '1', '2021', 7),
(22, '213042', 'Luki Bayu Pratama', 'Subang', '2005-05-31', 'L', 'Subang', '0d89056f512857bf26aa45a16ad9a3f5fe5f1c3a', 'profile-icon-male-user-person-avatar-symbol-vector-20910833.jpg', '1', '2021', 7),
(23, '213043', 'Ririn Apriani', 'Subang', '2006-04-26', 'P', 'Subang', '3583966c9df4f546a1efe3ee1870ab39c347124c', 'profile-icon-male-user-person-avatar-symbol-vector-20910833.jpg', '1', '2021', 7),
(24, '223001', 'Adel Lia', 'Subang', '2007-03-18', 'P', 'Subang', '98aac4e7b3e1c153f7bde13eb4adc2876fa60d38', 'profile-icon-male-user-person-avatar-symbol-vector-20910833.jpg', '1', '2022', 6),
(25, '223002', 'Alliyah Safitri ', 'Subang', '2005-03-09', 'P', 'Subang', '2ae905d413515a4cd5a7eedec2462af29cfcb0c7', 'profile-icon-male-user-person-avatar-symbol-vector-20910833.jpg', '1', '2022', 6),
(26, '223003', 'Anzar Sofyansyah', 'Subang', '2006-02-02', 'L', 'Subang', 'e32ea2ec753568d68f472c796ca373a748dcb1bf', 'profile-icon-male-user-person-avatar-symbol-vector-20910833.jpg', '1', '2022', 6),
(27, '223004', 'Aol Diana Astuti', 'Subang', '2006-08-06', 'L', 'Subang', 'eaaba715441da71c8a1a46542e583a56ca41aa5e', 'profile-icon-male-user-person-avatar-symbol-vector-20910833.jpg', '1', '2022', 6),
(28, '223005', 'Firna Mutiara', 'Subang', '2007-05-25', 'P', 'Subang', '85b0d309ac836f4fb61e5fc43cf7e3641842975d', 'profile-icon-male-user-person-avatar-symbol-vector-20910833.jpg', '1', '2022', 6),
(29, '223006', 'Houda Nursita', 'Subang', '2005-08-01', 'P', 'Subang', '2c5d3a587be0a677ca0ecb5279175cbcaa10fb93', 'profile-icon-male-user-person-avatar-symbol-vector-20910833.jpg', '1', '2022', 6),
(30, '223007', 'Indri Amelia', 'Subang', '2007-08-23', 'P', 'Subang', 'dd3884cf43eb84691144c021effaf2e75528d438', 'profile-icon-male-user-person-avatar-symbol-vector-20910833.jpg', '1', '2022', 6),
(31, '223008', 'Ismawati', 'Subang', '2007-08-27', 'P', 'Subang', '16b610d51dfb6aba667116ecf3fb76ba701c87d9', 'profile-icon-male-user-person-avatar-symbol-vector-20910833.jpg', '1', '2022', 6),
(32, '223009', 'Jaenal Abidin', 'Subang', '2006-09-08', 'L', 'Subang', '48020429fc926a21244f7af6b5067240132d42fe', 'profile-icon-male-user-person-avatar-symbol-vector-20910833.jpg', '1', '2022', 6),
(33, '223010', 'Luna Meireisha Aulia', 'Subang', '2007-05-16', 'P', 'Subang', '458ff1b730d8b8c102d00c979bd8eb73eff6aefb', 'profile-icon-male-user-person-avatar-symbol-vector-20910833.jpg', '1', '2022', 6),
(34, '223011', 'Maya Amelia', 'Subang', '2007-05-31', 'L', 'Subang', 'ecdf08e8fc671d8761f706fcafe24c66ab734b84', 'profile-icon-male-user-person-avatar-symbol-vector-20910833.jpg', '1', '2022', 6),
(40, '223012', 'Novi Julianti', 'Subang', '2006-07-16', 'P', 'Subang', '7d18669efc903fd087166764105bd2100fb52b09', 'profile-icon-male-user-person-avatar-symbol-vector-20910833.jpg', '1', '2022', 6),
(41, '223013', 'Ratu Dewi Nanjung Subang Larang', 'Subang', '2007-04-15', 'P', 'Subang', '22b548a8676ec7d049f9a861e50f9ab818680b95', 'profile-icon-male-user-person-avatar-symbol-vector-20910833.jpg', '1', '2022', 6),
(42, '223014', 'Rendra Reksa Pratama', 'Subang', '2006-06-26', 'L', 'Subang', 'ae489dc7705f6d3160fd4cb9155afab4c449d250', 'profile-icon-male-user-person-avatar-symbol-vector-20910833.jpg', '1', '2022', 6),
(43, '223015', 'Riki Firmansyah', 'Subang', '2005-06-21', 'L', 'Subang', '25e47fbd0a3f72ef1db5755ac8e518bf89e1f61a', 'profile-icon-male-user-person-avatar-symbol-vector-20910833.jpg', '1', '2022', 6),
(44, '223016', 'Sika', 'Subang', '2007-01-04', 'P', 'Subang', '80cd6e4a3a71e6942347d0456593f55ee252115c', 'profile-icon-male-user-person-avatar-symbol-vector-20910833.jpg', '1', '2022', 6),
(45, '223017', 'Siti Nurfarida', 'Subang', '2007-11-08', 'P', 'Subang', '2031d9f0b4f41ddd3336d5d901b5c137148380f3', 'profile-icon-male-user-person-avatar-symbol-vector-20910833.jpg', '1', '2022', 6),
(46, '223018', 'Wulansari', 'Subang', '2008-09-08', 'P', 'Subang', 'db949681d256eb92af371ce3b9935f44c6c07a34', 'profile-icon-male-user-person-avatar-symbol-vector-20910833.jpg', '1', '2022', 6),
(47, '223019', 'Widianti Wandi', 'Subang', '2005-10-25', 'P', 'Subang', 'ce4747be5c92b8da67c2013fbff1939fe8873fb5', 'profile-icon-male-user-person-avatar-symbol-vector-20910833.jpg', '1', '2022', 6),
(48, '23241062', 'Ade Kurniawan', 'Subang', '2007-12-13', 'L', 'Subang', 'e656e0c4599ecca0b4be03a3f72d73e0fee74790', 'profile-icon-male-user-person-avatar-symbol-vector-20910833.jpg', '1', '2023', 5),
(49, '23241063', 'Ailin janessya', 'Subang', '2008-05-23', 'P', 'Subang', '8d00a01de68176705206480ca4bae4fa2b701eb0', 'profile-icon-male-user-person-avatar-symbol-vector-20910833.jpg', '1', '2023', 5),
(50, '23241064', 'Akbar Fauzan', 'Subang', '2008-10-18', 'L', 'Subang', 'f1dc300ea4300bba14e06baf28a042b35fb5a074', 'profile-icon-male-user-person-avatar-symbol-vector-20910833.jpg', '1', '2023', 5),
(51, '23241065', 'Ardan Alfiansyah', 'Subang', '2008-07-30', 'L', 'Subang', '46f261f028a63321b27ca10c73139ccc0ad39805', 'profile-icon-male-user-person-avatar-symbol-vector-20910833.jpg', '1', '2023', 5),
(52, '23241066', 'Aulia Putri Nurfatiha', 'Subang', '2007-07-11', 'P', 'Subang', 'e8ba8f919876594b3ba8da429353dff42b79e809', 'profile-icon-male-user-person-avatar-symbol-vector-20910833.jpg', '1', '2023', 5),
(53, '23241067', 'Feri Ardiyana', 'Subang', '2007-12-08', 'L', 'Subang', 'd45fb70730b942c5884214436b558b5bdeec4914', 'profile-icon-male-user-person-avatar-symbol-vector-20910833.jpg', '1', '2023', 5),
(54, '23241068', 'Gandi Ganda Atmaja', 'Subang', '2007-08-26', 'L', 'Subang', '07ad945e5f2305d39399ad45772c48a3d0dfbaef', 'profile-icon-male-user-person-avatar-symbol-vector-20910833.jpg', '1', '2023', 5),
(55, '23241069', 'Imelia Ningsih', 'Subang', '2007-05-06', 'L', 'Subang', 'a0f6c11085fe16e121868584e07046f096db383b', 'profile-icon-male-user-person-avatar-symbol-vector-20910833.jpg', '1', '2023', 5),
(56, '23241070', 'Jahwa Khoirunisa', 'Subang', '2008-06-04', 'P', 'Subang', 'b8315dc59712310e85c5c1dca4165e7e4db4209a', 'profile-icon-male-user-person-avatar-symbol-vector-20910833.jpg', '1', '2023', 5),
(57, '23241071', 'Muhamad Irpan', 'Subang', '2007-12-01', 'L', 'Subang', '11611b73e10d591c1223456c9f06d9a6d884cba2', 'profile-icon-male-user-person-avatar-symbol-vector-20910833.jpg', '1', '2023', 5),
(58, '23241072', 'Muhamad Mahdavikia Al Afgani', 'Subang', '2007-06-16', 'L', 'Subang', 'b8c3e53c03cff0668e64d01851072dd6468751c1', 'profile-icon-male-user-person-avatar-symbol-vector-20910833.jpg', '1', '2023', 5),
(59, '23241073', 'Muhammad Risky Fauzian', 'Subang', '2007-11-01', 'L', 'Subang', '05d583922fb159be71bd898575443a19ee8ea658', 'profile-icon-male-user-person-avatar-symbol-vector-20910833.jpg', '1', '2023', 5),
(60, '23241074', 'Muhammad  Noval Jakaria', 'Subang', '2007-11-22', 'L', 'Subang', '48be8c5481f85098397fd320b763887fadadcdf1', 'profile-icon-male-user-person-avatar-symbol-vector-20910833.jpg', '1', '2023', 5),
(61, '23241075', 'Nabila  Noviyanti', 'Subang', '2007-11-24', 'P', 'Subang', '8e500e14d6f049a48add7c6bda38d28923621b4a', 'profile-icon-male-user-person-avatar-symbol-vector-20910833.jpg', '1', '2023', 5),
(62, '23241076', 'Nisa Pitria ', 'Subang', '2008-12-20', 'P', 'Subang', '514dbe021954a8e61d2aa6397ffc5b2043633e34', 'profile-icon-male-user-person-avatar-symbol-vector-20910833.jpg', '1', '2023', 5),
(63, '23241077', 'Nopia Putri', 'Subang', '2007-11-18', 'P', 'Subang', 'd7375fb45ed2538680c92a3655037c3a36de439c', 'profile-icon-male-user-person-avatar-symbol-vector-20910833.jpg', '1', '2023', 5),
(64, '23241078', 'Novan Dwi Akbar', 'Subang', '2007-11-01', 'L', 'Subang', '658957cebcacf1fa63f0613b40f9ec8e0de82fbc', 'profile-icon-male-user-person-avatar-symbol-vector-20910833.jpg', '1', '2023', 5);

-- --------------------------------------------------------

--
-- Table structure for table `tb_thajaran`
--

CREATE TABLE `tb_thajaran` (
  `id_thajaran` int(11) NOT NULL,
  `tahun_ajaran` varchar(30) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tb_thajaran`
--

INSERT INTO `tb_thajaran` (`id_thajaran`, `tahun_ajaran`, `status`) VALUES
(7, '2019/2020', 0),
(8, '2020/2021', 0),
(9, '2023/2024', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tb_walikelas`
--

CREATE TABLE `tb_walikelas` (
  `id_walikelas` int(11) NOT NULL,
  `id_guru` int(11) NOT NULL,
  `id_mkelas` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tb_walikelas`
--

INSERT INTO `tb_walikelas` (`id_walikelas`, `id_guru`, `id_mkelas`) VALUES
(1, 2, 1),
(2, 1, 2),
(3, 5, 3),
(4, 6, 1),
(5, 8, 2),
(6, 10, 5),
(7, 8, 6),
(8, 7, 7);

-- --------------------------------------------------------

--
-- Table structure for table `_logabsensi`
--

CREATE TABLE `_logabsensi` (
  `id_presensi` int(11) NOT NULL,
  `id_mengajar` int(11) NOT NULL,
  `id_siswa` int(11) NOT NULL,
  `tgl_absen` date NOT NULL,
  `ket` enum('H','I','S','T','A','C') NOT NULL,
  `pertemuan_ke` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `_logabsensi`
--

INSERT INTO `_logabsensi` (`id_presensi`, `id_mengajar`, `id_siswa`, `tgl_absen`, `ket`, `pertemuan_ke`) VALUES
(1, 2, 1, '2021-03-02', '', '1'),
(2, 4, 2, '2021-03-06', 'I', '1'),
(3, 2, 1, '2021-03-21', 'H', '2'),
(4, 2, 3, '2021-03-21', 'H', '3'),
(5, 5, 1, '2021-03-21', 'H', '1'),
(6, 5, 3, '2021-03-21', 'H', '1'),
(7, 2, 1, '2021-03-23', 'H', '4'),
(8, 2, 3, '2021-03-23', 'I', '4'),
(9, 6, 1, '2021-03-23', 'H', '1'),
(10, 6, 3, '2021-03-23', 'H', '1'),
(11, 6, 4, '2021-03-23', 'H', '1'),
(12, 6, 1, '2021-03-25', 'I', '2'),
(13, 6, 3, '2021-03-25', 'I', '2'),
(14, 6, 4, '2021-03-25', 'I', '2'),
(15, 19, 48, '2024-01-10', 'H', '1'),
(16, 19, 49, '2024-01-10', 'H', '1'),
(17, 19, 50, '2024-01-10', 'H', '1'),
(18, 19, 51, '2024-01-10', 'H', '1'),
(19, 19, 52, '2024-01-10', 'H', '1'),
(20, 19, 53, '2024-01-10', 'H', '1'),
(21, 19, 54, '2024-01-10', 'A', '1'),
(22, 19, 55, '2024-01-10', 'H', '1'),
(23, 19, 56, '2024-01-10', 'H', '1'),
(24, 19, 57, '2024-01-10', 'H', '1'),
(25, 19, 58, '2024-01-10', 'H', '1'),
(26, 19, 59, '2024-01-10', 'H', '1'),
(27, 19, 60, '2024-01-10', 'H', '1'),
(28, 19, 61, '2024-01-10', 'T', '1'),
(29, 19, 62, '2024-01-10', 'H', '1'),
(30, 19, 63, '2024-01-10', 'T', '1'),
(31, 19, 64, '2024-01-10', 'H', '1'),
(32, 39, 5, '2024-01-10', 'H', '1'),
(33, 39, 6, '2024-01-10', 'H', '1'),
(34, 39, 7, '2024-01-10', 'I', '1'),
(35, 39, 8, '2024-01-10', 'I', '1'),
(36, 39, 9, '2024-01-10', 'H', '1'),
(37, 39, 10, '2024-01-10', 'H', '1'),
(38, 39, 11, '2024-01-10', 'H', '1'),
(39, 39, 12, '2024-01-10', 'H', '1'),
(40, 39, 13, '2024-01-10', 'H', '1'),
(41, 39, 14, '2024-01-10', 'H', '1'),
(42, 39, 15, '2024-01-10', 'H', '1'),
(43, 39, 16, '2024-01-10', 'H', '1'),
(44, 39, 17, '2024-01-10', 'H', '1'),
(45, 39, 18, '2024-01-10', 'H', '1'),
(46, 39, 19, '2024-01-10', 'H', '1'),
(47, 39, 20, '2024-01-10', 'H', '1'),
(48, 39, 21, '2024-01-10', 'H', '1'),
(49, 39, 22, '2024-01-10', 'H', '1'),
(50, 39, 23, '2024-01-10', 'H', '1');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_admin`
--
ALTER TABLE `tb_admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indexes for table `tb_guru`
--
ALTER TABLE `tb_guru`
  ADD PRIMARY KEY (`id_guru`);

--
-- Indexes for table `tb_kepsek`
--
ALTER TABLE `tb_kepsek`
  ADD PRIMARY KEY (`id_kepsek`);

--
-- Indexes for table `tb_master_mapel`
--
ALTER TABLE `tb_master_mapel`
  ADD PRIMARY KEY (`id_mapel`);

--
-- Indexes for table `tb_mengajar`
--
ALTER TABLE `tb_mengajar`
  ADD PRIMARY KEY (`id_mengajar`),
  ADD KEY `id_mapel` (`id_mapel`),
  ADD KEY `id_guru` (`id_guru`);

--
-- Indexes for table `tb_mkelas`
--
ALTER TABLE `tb_mkelas`
  ADD PRIMARY KEY (`id_mkelas`);

--
-- Indexes for table `tb_semester`
--
ALTER TABLE `tb_semester`
  ADD PRIMARY KEY (`id_semester`);

--
-- Indexes for table `tb_siswa`
--
ALTER TABLE `tb_siswa`
  ADD PRIMARY KEY (`id_siswa`);

--
-- Indexes for table `tb_thajaran`
--
ALTER TABLE `tb_thajaran`
  ADD PRIMARY KEY (`id_thajaran`);

--
-- Indexes for table `tb_walikelas`
--
ALTER TABLE `tb_walikelas`
  ADD PRIMARY KEY (`id_walikelas`),
  ADD KEY `id_guru` (`id_guru`);

--
-- Indexes for table `_logabsensi`
--
ALTER TABLE `_logabsensi`
  ADD PRIMARY KEY (`id_presensi`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_admin`
--
ALTER TABLE `tb_admin`
  MODIFY `id_admin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tb_guru`
--
ALTER TABLE `tb_guru`
  MODIFY `id_guru` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `tb_kepsek`
--
ALTER TABLE `tb_kepsek`
  MODIFY `id_kepsek` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tb_master_mapel`
--
ALTER TABLE `tb_master_mapel`
  MODIFY `id_mapel` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `tb_mengajar`
--
ALTER TABLE `tb_mengajar`
  MODIFY `id_mengajar` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `tb_mkelas`
--
ALTER TABLE `tb_mkelas`
  MODIFY `id_mkelas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tb_semester`
--
ALTER TABLE `tb_semester`
  MODIFY `id_semester` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tb_siswa`
--
ALTER TABLE `tb_siswa`
  MODIFY `id_siswa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT for table `tb_thajaran`
--
ALTER TABLE `tb_thajaran`
  MODIFY `id_thajaran` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tb_walikelas`
--
ALTER TABLE `tb_walikelas`
  MODIFY `id_walikelas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `_logabsensi`
--
ALTER TABLE `_logabsensi`
  MODIFY `id_presensi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
