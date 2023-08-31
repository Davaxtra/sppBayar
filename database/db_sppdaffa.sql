-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 05 Jun 2023 pada 13.31
-- Versi server: 10.4.28-MariaDB
-- Versi PHP: 8.1.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_sppdaffa`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `kelas`
--

CREATE TABLE `kelas` (
  `id_kelas` int(11) NOT NULL,
  `nama_kelas` varchar(10) NOT NULL,
  `kompetensi_keahlian` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `kelas`
--

INSERT INTO `kelas` (`id_kelas`, `nama_kelas`, `kompetensi_keahlian`) VALUES
(1, 'X PPLG', 'Pengembangan Perangkat Lunak & Gim'),
(2, 'XI DKV', 'Desain Komunikasi Visual'),
(3, 'XI PPLG', 'Pengembangan Perangkat Lunak & Gim'),
(5, 'X PMS', 'Pemasaran'),
(6, 'X DKV', 'Desain Komunikasi Visual'),
(8, 'X ANM', 'Animasi'),
(9, 'XI ANM', 'Animasi'),
(10, 'XI PMS', 'Pemasaran'),
(12, 'XI AKT', 'Akuntansi'),
(13, 'XII AKT', 'Akuntansi'),
(14, 'XII ANM', 'Animasi'),
(15, 'XII DKV', 'Desain Komunikasi Visual'),
(16, 'XII PMS', 'Pemasaran'),
(17, 'XII PPLG', 'Pengembangan Perangkat Lunak & Gim'),
(18, 'X AKT', 'Akuntansi');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pembayaran`
--

CREATE TABLE `pembayaran` (
  `id_pembayaran` int(11) NOT NULL,
  `nisn` varchar(11) NOT NULL,
  `jatuh_tempo` date DEFAULT NULL,
  `bulan` varchar(20) NOT NULL,
  `tgl_bayar` date DEFAULT NULL,
  `jumlah_bayar` int(11) NOT NULL,
  `ket` varchar(40) DEFAULT NULL,
  `id_petugas` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `pembayaran`
--

INSERT INTO `pembayaran` (`id_pembayaran`, `nisn`, `jatuh_tempo`, `bulan`, `tgl_bayar`, `jumlah_bayar`, `ket`, `id_petugas`) VALUES
(49, '20210001', '2022-07-10', 'Juli 2022', '2023-06-03', 200000, 'Lunas', NULL),
(50, '20210001', '2022-08-10', 'Agustus 2022', '2023-06-03', 200000, 'Lunas', NULL),
(51, '20210001', '2022-09-10', 'September 2022', '2023-06-03', 200000, 'Lunas', NULL),
(52, '20210001', '2022-10-10', 'Oktober 2022', '2023-06-03', 200000, 'Lunas', NULL),
(53, '20210001', '2022-11-10', 'November 2022', '2023-06-04', 200000, 'Lunas', NULL),
(54, '20210001', '2022-12-10', 'Desember 2022', '2023-06-04', 200000, 'Lunas', NULL),
(55, '20210001', '2023-01-10', 'Januari 2023', '2023-06-04', 200000, 'Lunas', NULL),
(56, '20210001', '2023-02-10', 'Februari 2023', '2023-06-04', 200000, 'Lunas', NULL),
(57, '20210001', '2023-03-10', 'Maret 2023', '2023-06-04', 200000, 'Lunas', NULL),
(58, '20210001', '2023-04-10', 'April 2023', '2023-06-04', 200000, 'Lunas', NULL),
(59, '20210001', '2023-05-10', 'Mei 2023', '2023-06-04', 200000, 'Lunas', NULL),
(60, '20210001', '2023-06-10', 'Juni 2023', '2023-06-04', 200000, 'Lunas', NULL),
(61, '20210002', '2022-07-10', 'Juli 2022', '2023-06-03', 200000, 'Lunas', NULL),
(62, '20210002', '2022-08-10', 'Agustus 2022', '2023-06-03', 200000, 'Lunas', NULL),
(63, '20210002', '2022-09-10', 'September 2022', '2023-06-04', 200000, 'Lunas', NULL),
(64, '20210002', '2022-10-10', 'Oktober 2022', '2023-06-04', 200000, 'Lunas', NULL),
(65, '20210002', '2022-11-10', 'November 2022', '2023-06-04', 200000, 'Lunas', NULL),
(66, '20210002', '2022-12-10', 'Desember 2022', '2023-06-04', 200000, 'Lunas', NULL),
(67, '20210002', '2023-01-10', 'Januari 2023', '2023-06-04', 200000, 'Lunas', NULL),
(68, '20210002', '2023-02-10', 'Februari 2023', '2023-06-04', 200000, 'Lunas', NULL),
(69, '20210002', '2023-03-10', 'Maret 2023', '2023-06-04', 200000, 'Lunas', NULL),
(70, '20210002', '2023-04-10', 'April 2023', '2023-06-04', 200000, 'Lunas', NULL),
(71, '20210002', '2023-05-10', 'Mei 2023', NULL, 200000, NULL, NULL),
(72, '20210002', '2023-06-10', 'Juni 2023', NULL, 200000, NULL, NULL),
(73, '20210003', '2022-07-10', 'Juli 2022', '2023-06-03', 200000, 'Lunas', NULL),
(74, '20210003', '2022-08-10', 'Agustus 2022', '2023-06-05', 200000, 'Lunas', NULL),
(75, '20210003', '2022-09-10', 'September 2022', '2023-06-05', 200000, 'Lunas', NULL),
(76, '20210003', '2022-10-10', 'Oktober 2022', '2023-06-05', 200000, 'Lunas', NULL),
(77, '20210003', '2022-11-10', 'November 2022', '2023-06-05', 200000, 'Lunas', NULL),
(78, '20210003', '2022-12-10', 'Desember 2022', '2023-06-05', 200000, 'Lunas', NULL),
(79, '20210003', '2023-01-10', 'Januari 2023', '2023-06-05', 200000, 'Lunas', NULL),
(80, '20210003', '2023-02-10', 'Februari 2023', '2023-06-05', 200000, 'Lunas', NULL),
(81, '20210003', '2023-03-10', 'Maret 2023', '2023-06-05', 200000, 'Lunas', NULL),
(82, '20210003', '2023-04-10', 'April 2023', '2023-06-05', 200000, 'Lunas', NULL),
(83, '20210003', '2023-05-10', 'Mei 2023', NULL, 200000, NULL, NULL),
(84, '20210003', '2023-06-10', 'Juni 2023', NULL, 200000, NULL, NULL),
(97, '20210004', '2022-07-10', 'Juli 2022', '2023-06-05', 200000, 'Lunas', NULL),
(98, '20210004', '2022-08-10', 'Agustus 2022', '2023-06-05', 200000, 'Lunas', NULL),
(99, '20210004', '2022-09-10', 'September 2022', '2023-06-05', 200000, 'Lunas', NULL),
(100, '20210004', '2022-10-10', 'Oktober 2022', '2023-06-05', 200000, 'Lunas', NULL),
(101, '20210004', '2022-11-10', 'November 2022', '2023-06-05', 200000, 'Lunas', NULL),
(102, '20210004', '2022-12-10', 'Desember 2022', '2023-06-05', 200000, 'Lunas', NULL),
(103, '20210004', '2023-01-10', 'Januari 2023', '2023-06-05', 200000, 'Lunas', NULL),
(104, '20210004', '2023-02-10', 'Februari 2023', '2023-06-05', 200000, 'Lunas', NULL),
(105, '20210004', '2023-03-10', 'Maret 2023', '2023-06-05', 200000, 'Lunas', NULL),
(106, '20210004', '2023-04-10', 'April 2023', '2023-06-05', 200000, 'Lunas', NULL),
(107, '20210004', '2023-05-10', 'Mei 2023', '2023-06-05', 200000, 'Lunas', NULL),
(108, '20210004', '2023-06-10', 'Juni 2023', NULL, 200000, NULL, NULL),
(109, '20210005', '2022-07-10', 'Juli 2022', '2023-06-05', 200000, 'Lunas', NULL),
(110, '20210005', '2022-08-10', 'Agustus 2022', '2023-06-05', 200000, 'Lunas', NULL),
(111, '20210005', '2022-09-10', 'September 2022', '2023-06-05', 200000, 'Lunas', NULL),
(112, '20210005', '2022-10-10', 'Oktober 2022', '2023-06-05', 200000, 'Lunas', NULL),
(113, '20210005', '2022-11-10', 'November 2022', '2023-06-05', 200000, 'Lunas', NULL),
(114, '20210005', '2022-12-10', 'Desember 2022', '2023-06-05', 200000, 'Lunas', NULL),
(115, '20210005', '2023-01-10', 'Januari 2023', '2023-06-05', 200000, 'Lunas', NULL),
(116, '20210005', '2023-02-10', 'Februari 2023', '2023-06-05', 200000, 'Lunas', NULL),
(117, '20210005', '2023-03-10', 'Maret 2023', '2023-06-05', 200000, 'Lunas', NULL),
(118, '20210005', '2023-04-10', 'April 2023', '2023-06-05', 200000, 'Lunas', NULL),
(119, '20210005', '2023-05-10', 'Mei 2023', '2023-06-05', 200000, 'Lunas', NULL),
(120, '20210005', '2023-06-10', 'Juni 2023', '2023-06-05', 200000, 'Lunas', NULL),
(121, '20210006', '2022-07-10', 'Juli 2022', '2023-06-05', 200000, 'Lunas', NULL),
(122, '20210006', '2022-08-10', 'Agustus 2022', '2023-06-05', 200000, 'Lunas', NULL),
(123, '20210006', '2022-09-10', 'September 2022', '2023-06-05', 200000, 'Lunas', NULL),
(124, '20210006', '2022-10-10', 'Oktober 2022', '2023-06-05', 200000, 'Lunas', NULL),
(125, '20210006', '2022-11-10', 'November 2022', '2023-06-05', 200000, 'Lunas', NULL),
(126, '20210006', '2022-12-10', 'Desember 2022', '2023-06-05', 200000, 'Lunas', NULL),
(127, '20210006', '2023-01-10', 'Januari 2023', '2023-06-05', 200000, 'Lunas', NULL),
(128, '20210006', '2023-02-10', 'Februari 2023', '2023-06-05', 200000, 'Lunas', NULL),
(129, '20210006', '2023-03-10', 'Maret 2023', '2023-06-05', 200000, 'Lunas', NULL),
(130, '20210006', '2023-04-10', 'April 2023', '2023-06-05', 200000, 'Lunas', NULL),
(131, '20210006', '2023-05-10', 'Mei 2023', NULL, 200000, NULL, NULL),
(132, '20210006', '2023-06-10', 'Juni 2023', NULL, 200000, NULL, NULL),
(133, '20210007', '2022-07-10', 'Juli 2022', '2023-06-05', 200000, 'Lunas', NULL),
(134, '20210007', '2022-08-10', 'Agustus 2022', '2023-06-05', 200000, 'Lunas', NULL),
(135, '20210007', '2022-09-10', 'September 2022', '2023-06-05', 200000, 'Lunas', NULL),
(136, '20210007', '2022-10-10', 'Oktober 2022', '2023-06-05', 200000, 'Lunas', NULL),
(137, '20210007', '2022-11-10', 'November 2022', '2023-06-05', 200000, 'Lunas', NULL),
(138, '20210007', '2022-12-10', 'Desember 2022', '2023-06-05', 200000, 'Lunas', NULL),
(139, '20210007', '2023-01-10', 'Januari 2023', '2023-06-05', 200000, 'Lunas', NULL),
(140, '20210007', '2023-02-10', 'Februari 2023', '2023-06-05', 200000, 'Lunas', NULL),
(141, '20210007', '2023-03-10', 'Maret 2023', '2023-06-05', 200000, 'Lunas', NULL),
(142, '20210007', '2023-04-10', 'April 2023', NULL, 200000, NULL, NULL),
(143, '20210007', '2023-05-10', 'Mei 2023', NULL, 200000, NULL, NULL),
(144, '20210007', '2023-06-10', 'Juni 2023', NULL, 200000, NULL, NULL),
(145, '20210008', '2022-07-10', 'Juli 2022', '2023-06-05', 200000, 'Lunas', NULL),
(146, '20210008', '2022-08-10', 'Agustus 2022', '2023-06-05', 200000, 'Lunas', NULL),
(147, '20210008', '2022-09-10', 'September 2022', '2023-06-05', 200000, 'Lunas', NULL),
(148, '20210008', '2022-10-10', 'Oktober 2022', '2023-06-05', 200000, 'Lunas', NULL),
(149, '20210008', '2022-11-10', 'November 2022', '2023-06-05', 200000, 'Lunas', NULL),
(150, '20210008', '2022-12-10', 'Desember 2022', '2023-06-05', 200000, 'Lunas', NULL),
(151, '20210008', '2023-01-10', 'Januari 2023', '2023-06-05', 200000, 'Lunas', NULL),
(152, '20210008', '2023-02-10', 'Februari 2023', '2023-06-05', 200000, 'Lunas', NULL),
(153, '20210008', '2023-03-10', 'Maret 2023', '2023-06-05', 200000, 'Lunas', NULL),
(154, '20210008', '2023-04-10', 'April 2023', '2023-06-05', 200000, 'Lunas', NULL),
(155, '20210008', '2023-05-10', 'Mei 2023', NULL, 200000, NULL, NULL),
(156, '20210008', '2023-06-10', 'Juni 2023', NULL, 200000, NULL, NULL),
(157, '20210009', '2022-07-10', 'Juli 2022', '2023-06-05', 200000, 'Lunas', NULL),
(158, '20210009', '2022-08-10', 'Agustus 2022', '2023-06-05', 200000, 'Lunas', NULL),
(159, '20210009', '2022-09-10', 'September 2022', '2023-06-05', 200000, 'Lunas', NULL),
(160, '20210009', '2022-10-10', 'Oktober 2022', '2023-06-05', 200000, 'Lunas', NULL),
(161, '20210009', '2022-11-10', 'November 2022', '2023-06-05', 200000, 'Lunas', NULL),
(162, '20210009', '2022-12-10', 'Desember 2022', '2023-06-05', 200000, 'Lunas', NULL),
(163, '20210009', '2023-01-10', 'Januari 2023', '2023-06-05', 200000, 'Lunas', NULL),
(164, '20210009', '2023-02-10', 'Februari 2023', '2023-06-05', 200000, 'Lunas', NULL),
(165, '20210009', '2023-03-10', 'Maret 2023', '2023-06-05', 200000, 'Lunas', NULL),
(166, '20210009', '2023-04-10', 'April 2023', '2023-06-05', 200000, 'Lunas', NULL),
(167, '20210009', '2023-05-10', 'Mei 2023', NULL, 200000, NULL, NULL),
(168, '20210009', '2023-06-10', 'Juni 2023', NULL, 200000, NULL, NULL),
(169, '20210010', '2022-07-10', 'Juli 2022', '2023-06-05', 200000, 'Lunas', NULL),
(170, '20210010', '2022-08-10', 'Agustus 2022', '2023-06-05', 200000, 'Lunas', NULL),
(171, '20210010', '2022-09-10', 'September 2022', '2023-06-05', 200000, 'Lunas', NULL),
(172, '20210010', '2022-10-10', 'Oktober 2022', '2023-06-05', 200000, 'Lunas', NULL),
(173, '20210010', '2022-11-10', 'November 2022', '2023-06-05', 200000, 'Lunas', NULL),
(174, '20210010', '2022-12-10', 'Desember 2022', '2023-06-05', 200000, 'Lunas', NULL),
(175, '20210010', '2023-01-10', 'Januari 2023', '2023-06-05', 200000, 'Lunas', NULL),
(176, '20210010', '2023-02-10', 'Februari 2023', '2023-06-05', 200000, 'Lunas', NULL),
(177, '20210010', '2023-03-10', 'Maret 2023', '2023-06-05', 200000, 'Lunas', NULL),
(178, '20210010', '2023-04-10', 'April 2023', '2023-06-05', 200000, 'Lunas', NULL),
(179, '20210010', '2023-05-10', 'Mei 2023', '2023-06-05', 200000, 'Lunas', NULL),
(180, '20210010', '2023-06-10', 'Juni 2023', '2023-06-05', 200000, 'Lunas', NULL),
(181, '20210011', '2022-07-10', 'Juli 2022', NULL, 200000, NULL, NULL),
(182, '20210011', '2022-08-10', 'Agustus 2022', NULL, 200000, NULL, NULL),
(183, '20210011', '2022-09-10', 'September 2022', NULL, 200000, NULL, NULL),
(184, '20210011', '2022-10-10', 'Oktober 2022', NULL, 200000, NULL, NULL),
(185, '20210011', '2022-11-10', 'November 2022', NULL, 200000, NULL, NULL),
(186, '20210011', '2022-12-10', 'Desember 2022', NULL, 200000, NULL, NULL),
(187, '20210011', '2023-01-10', 'Januari 2023', NULL, 200000, NULL, NULL),
(188, '20210011', '2023-02-10', 'Februari 2023', NULL, 200000, NULL, NULL),
(189, '20210011', '2023-03-10', 'Maret 2023', NULL, 200000, NULL, NULL),
(190, '20210011', '2023-04-10', 'April 2023', NULL, 200000, NULL, NULL),
(191, '20210011', '2023-05-10', 'Mei 2023', NULL, 200000, NULL, NULL),
(192, '20210011', '2023-06-10', 'Juni 2023', NULL, 200000, NULL, NULL),
(193, '20210012', '2022-07-10', 'Juli 2022', '2023-06-05', 200000, 'Lunas', NULL),
(194, '20210012', '2022-08-10', 'Agustus 2022', '2023-06-05', 200000, 'Lunas', NULL),
(195, '20210012', '2022-09-10', 'September 2022', NULL, 200000, NULL, NULL),
(196, '20210012', '2022-10-10', 'Oktober 2022', NULL, 200000, NULL, NULL),
(197, '20210012', '2022-11-10', 'November 2022', NULL, 200000, NULL, NULL),
(198, '20210012', '2022-12-10', 'Desember 2022', NULL, 200000, NULL, NULL),
(199, '20210012', '2023-01-10', 'Januari 2023', NULL, 200000, NULL, NULL),
(200, '20210012', '2023-02-10', 'Februari 2023', NULL, 200000, NULL, NULL),
(201, '20210012', '2023-03-10', 'Maret 2023', NULL, 200000, NULL, NULL),
(202, '20210012', '2023-04-10', 'April 2023', NULL, 200000, NULL, NULL),
(203, '20210012', '2023-05-10', 'Mei 2023', NULL, 200000, NULL, NULL),
(204, '20210012', '2023-06-10', 'Juni 2023', NULL, 200000, NULL, NULL),
(205, '20210013', '2022-07-10', 'Juli 2022', NULL, 200000, NULL, NULL),
(206, '20210013', '2022-08-10', 'Agustus 2022', NULL, 200000, NULL, NULL),
(207, '20210013', '2022-09-10', 'September 2022', NULL, 200000, NULL, NULL),
(208, '20210013', '2022-10-10', 'Oktober 2022', NULL, 200000, NULL, NULL),
(209, '20210013', '2022-11-10', 'November 2022', NULL, 200000, NULL, NULL),
(210, '20210013', '2022-12-10', 'Desember 2022', NULL, 200000, NULL, NULL),
(211, '20210013', '2023-01-10', 'Januari 2023', NULL, 200000, NULL, NULL),
(212, '20210013', '2023-02-10', 'Februari 2023', NULL, 200000, NULL, NULL),
(213, '20210013', '2023-03-10', 'Maret 2023', NULL, 200000, NULL, NULL),
(214, '20210013', '2023-04-10', 'April 2023', NULL, 200000, NULL, NULL),
(215, '20210013', '2023-05-10', 'Mei 2023', NULL, 200000, NULL, NULL),
(216, '20210013', '2023-06-10', 'Juni 2023', NULL, 200000, NULL, NULL),
(217, '20210014', '2022-07-10', 'Juli 2022', NULL, 200000, NULL, NULL),
(218, '20210014', '2022-08-10', 'Agustus 2022', NULL, 200000, NULL, NULL),
(219, '20210014', '2022-09-10', 'September 2022', NULL, 200000, NULL, NULL),
(220, '20210014', '2022-10-10', 'Oktober 2022', NULL, 200000, NULL, NULL),
(221, '20210014', '2022-11-10', 'November 2022', NULL, 200000, NULL, NULL),
(222, '20210014', '2022-12-10', 'Desember 2022', NULL, 200000, NULL, NULL),
(223, '20210014', '2023-01-10', 'Januari 2023', NULL, 200000, NULL, NULL),
(224, '20210014', '2023-02-10', 'Februari 2023', NULL, 200000, NULL, NULL),
(225, '20210014', '2023-03-10', 'Maret 2023', NULL, 200000, NULL, NULL),
(226, '20210014', '2023-04-10', 'April 2023', NULL, 200000, NULL, NULL),
(227, '20210014', '2023-05-10', 'Mei 2023', NULL, 200000, NULL, NULL),
(228, '20210014', '2023-06-10', 'Juni 2023', NULL, 200000, NULL, NULL),
(229, '20210015', '2022-07-10', 'Juli 2022', NULL, 200000, NULL, NULL),
(230, '20210015', '2022-08-10', 'Agustus 2022', NULL, 200000, NULL, NULL),
(231, '20210015', '2022-09-10', 'September 2022', NULL, 200000, NULL, NULL),
(232, '20210015', '2022-10-10', 'Oktober 2022', NULL, 200000, NULL, NULL),
(233, '20210015', '2022-11-10', 'November 2022', NULL, 200000, NULL, NULL),
(234, '20210015', '2022-12-10', 'Desember 2022', NULL, 200000, NULL, NULL),
(235, '20210015', '2023-01-10', 'Januari 2023', NULL, 200000, NULL, NULL),
(236, '20210015', '2023-02-10', 'Februari 2023', NULL, 200000, NULL, NULL),
(237, '20210015', '2023-03-10', 'Maret 2023', NULL, 200000, NULL, NULL),
(238, '20210015', '2023-04-10', 'April 2023', NULL, 200000, NULL, NULL),
(239, '20210015', '2023-05-10', 'Mei 2023', NULL, 200000, NULL, NULL),
(240, '20210015', '2023-06-10', 'Juni 2023', NULL, 200000, NULL, NULL),
(241, '20210016', '2022-07-10', 'Juli 2022', NULL, 200000, NULL, NULL),
(242, '20210016', '2022-08-10', 'Agustus 2022', NULL, 200000, NULL, NULL),
(243, '20210016', '2022-09-10', 'September 2022', NULL, 200000, NULL, NULL),
(244, '20210016', '2022-10-10', 'Oktober 2022', NULL, 200000, NULL, NULL),
(245, '20210016', '2022-11-10', 'November 2022', NULL, 200000, NULL, NULL),
(246, '20210016', '2022-12-10', 'Desember 2022', NULL, 200000, NULL, NULL),
(247, '20210016', '2023-01-10', 'Januari 2023', NULL, 200000, NULL, NULL),
(248, '20210016', '2023-02-10', 'Februari 2023', NULL, 200000, NULL, NULL),
(249, '20210016', '2023-03-10', 'Maret 2023', NULL, 200000, NULL, NULL),
(250, '20210016', '2023-04-10', 'April 2023', NULL, 200000, NULL, NULL),
(251, '20210016', '2023-05-10', 'Mei 2023', NULL, 200000, NULL, NULL),
(252, '20210016', '2023-06-10', 'Juni 2023', NULL, 200000, NULL, NULL),
(253, '20210017', '2022-07-10', 'Juli 2022', NULL, 200000, NULL, NULL),
(254, '20210017', '2022-08-10', 'Agustus 2022', NULL, 200000, NULL, NULL),
(255, '20210017', '2022-09-10', 'September 2022', NULL, 200000, NULL, NULL),
(256, '20210017', '2022-10-10', 'Oktober 2022', NULL, 200000, NULL, NULL),
(257, '20210017', '2022-11-10', 'November 2022', NULL, 200000, NULL, NULL),
(258, '20210017', '2022-12-10', 'Desember 2022', NULL, 200000, NULL, NULL),
(259, '20210017', '2023-01-10', 'Januari 2023', NULL, 200000, NULL, NULL),
(260, '20210017', '2023-02-10', 'Februari 2023', NULL, 200000, NULL, NULL),
(261, '20210017', '2023-03-10', 'Maret 2023', NULL, 200000, NULL, NULL),
(262, '20210017', '2023-04-10', 'April 2023', NULL, 200000, NULL, NULL),
(263, '20210017', '2023-05-10', 'Mei 2023', NULL, 200000, NULL, NULL),
(264, '20210017', '2023-06-10', 'Juni 2023', NULL, 200000, NULL, NULL),
(265, '20210018', '2022-07-10', 'Juli 2022', NULL, 200000, NULL, NULL),
(266, '20210018', '2022-08-10', 'Agustus 2022', NULL, 200000, NULL, NULL),
(267, '20210018', '2022-09-10', 'September 2022', NULL, 200000, NULL, NULL),
(268, '20210018', '2022-10-10', 'Oktober 2022', NULL, 200000, NULL, NULL),
(269, '20210018', '2022-11-10', 'November 2022', NULL, 200000, NULL, NULL),
(270, '20210018', '2022-12-10', 'Desember 2022', NULL, 200000, NULL, NULL),
(271, '20210018', '2023-01-10', 'Januari 2023', NULL, 200000, NULL, NULL),
(272, '20210018', '2023-02-10', 'Februari 2023', NULL, 200000, NULL, NULL),
(273, '20210018', '2023-03-10', 'Maret 2023', NULL, 200000, NULL, NULL),
(274, '20210018', '2023-04-10', 'April 2023', NULL, 200000, NULL, NULL),
(275, '20210018', '2023-05-10', 'Mei 2023', NULL, 200000, NULL, NULL),
(276, '20210018', '2023-06-10', 'Juni 2023', NULL, 200000, NULL, NULL),
(277, '20200001', '2022-07-10', 'Juli 2022', NULL, 200000, NULL, NULL),
(278, '20200001', '2022-08-10', 'Agustus 2022', NULL, 200000, NULL, NULL),
(279, '20200001', '2022-09-10', 'September 2022', NULL, 200000, NULL, NULL),
(280, '20200001', '2022-10-10', 'Oktober 2022', NULL, 200000, NULL, NULL),
(281, '20200001', '2022-11-10', 'November 2022', NULL, 200000, NULL, NULL),
(282, '20200001', '2022-12-10', 'Desember 2022', NULL, 200000, NULL, NULL),
(283, '20200001', '2023-01-10', 'Januari 2023', NULL, 200000, NULL, NULL),
(284, '20200001', '2023-02-10', 'Februari 2023', NULL, 200000, NULL, NULL),
(285, '20200001', '2023-03-10', 'Maret 2023', NULL, 200000, NULL, NULL),
(286, '20200001', '2023-04-10', 'April 2023', NULL, 200000, NULL, NULL),
(287, '20200001', '2023-05-10', 'Mei 2023', NULL, 200000, NULL, NULL),
(288, '20200001', '2023-06-10', 'Juni 2023', NULL, 200000, NULL, NULL),
(289, '20200002', '2022-07-10', 'Juli 2022', NULL, 200000, NULL, NULL),
(290, '20200002', '2022-08-10', 'Agustus 2022', NULL, 200000, NULL, NULL),
(291, '20200002', '2022-09-10', 'September 2022', NULL, 200000, NULL, NULL),
(292, '20200002', '2022-10-10', 'Oktober 2022', NULL, 200000, NULL, NULL),
(293, '20200002', '2022-11-10', 'November 2022', NULL, 200000, NULL, NULL),
(294, '20200002', '2022-12-10', 'Desember 2022', NULL, 200000, NULL, NULL),
(295, '20200002', '2023-01-10', 'Januari 2023', NULL, 200000, NULL, NULL),
(296, '20200002', '2023-02-10', 'Februari 2023', NULL, 200000, NULL, NULL),
(297, '20200002', '2023-03-10', 'Maret 2023', NULL, 200000, NULL, NULL),
(298, '20200002', '2023-04-10', 'April 2023', NULL, 200000, NULL, NULL),
(299, '20200002', '2023-05-10', 'Mei 2023', NULL, 200000, NULL, NULL),
(300, '20200002', '2023-06-10', 'Juni 2023', NULL, 200000, NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `petugas`
--

CREATE TABLE `petugas` (
  `id_petugas` int(11) NOT NULL,
  `username` varchar(25) NOT NULL,
  `password` varchar(32) NOT NULL,
  `nama_petugas` varchar(35) NOT NULL,
  `level` enum('admin','petugas','siswa') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `petugas`
--

INSERT INTO `petugas` (`id_petugas`, `username`, `password`, `nama_petugas`, `level`) VALUES
(1, 'admin2', 'admin', 'Daffa', 'admin'),
(2, 'petugas', 'petugas', 'Michelle', 'petugas'),
(3, 'daffa', 'daffa', 'daffa', 'siswa'),
(11, 'Dava', '123', 'Daffa', 'admin'),
(13, '20210015', 'azzahra', 'Az-zahra', 'siswa');

-- --------------------------------------------------------

--
-- Struktur dari tabel `siswa`
--

CREATE TABLE `siswa` (
  `nisn` varchar(11) NOT NULL,
  `nis` varchar(11) NOT NULL,
  `nama` varchar(35) NOT NULL,
  `id_kelas` int(11) NOT NULL,
  `alamat` text NOT NULL,
  `no_telp` varchar(13) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `siswa`
--

INSERT INTO `siswa` (`nisn`, `nis`, `nama`, `id_kelas`, `alamat`, `no_telp`) VALUES
('20200001', '2020001', 'Ahmad Rifa Priyadi', 17, 'Desa Jelegong', '081388710169'),
('20200002', '2020002', 'Juan Mata', 17, 'Komp. Permata Biru', '081292832139'),
('20210001', '2021001', 'Dava Hafidzan', 3, 'Jl. Bakung IX No. 16', '082119900890'),
('20210002', '2021002', 'Ni Made Michelle Gabriella', 3, 'Jl. Tukad Yeh Aya, Gang 5, No : 30', '085882744094'),
('20210003', '2021003', 'Ghina Zalfa Salsabila', 3, 'Jl. Suplier 6', '082118848360'),
('20210004', '2021004', 'Hadi Abdul Rasyid', 3, 'Ds. Jelegong', '083121076891'),
('20210005', '2122005', 'Nabil Nurrahman', 3, 'Komp. Permata Biru', '0895391922525'),
('20210006', '2122006', 'Elgi Achmad Fahlevy', 3, 'Jl. Bakung IX No. 15', '083894400475'),
('20210007', '2122007', 'R. Anggara Andanawari Mutaqien', 2, 'Jl. Gradiul No. 102', '085784329450'),
('20210008', '2122008', 'Harun Kalasuti', 2, 'Jl. Bakung VI No. 25', '082315859001'),
('20210009', '2122009', 'Fadlyatul Rajab', 2, 'Jl. Bakung VI No. 12', '081223611499'),
('20210010', '2122010', 'Lulu Hasna Lutfiyah', 2, 'Perum Griya Permata Raya', '08997994756'),
('20210011', '2122011', 'Fiana Alatifa', 2, 'Komp. Permata Biru', '083192106266'),
('20210012', '2122012', 'Risky Dwi Putra', 2, 'Jl. Bakung VI No. 20', '089679230604'),
('20210013', '2122013', 'Syara Syahida Zakia', 12, 'Jl. Seroja IV No. 8', '082154322343'),
('20210014', '2122014', 'Rajwa Ammara Azkia', 12, 'Jl. Cempaka I No. 23', '0829192302832'),
('20210015', '2122015', 'Az-zahra Mutmainah', 12, 'Jl. Kamboja I No. 12', '081224800804'),
('20210016', '2122016', 'Alya Ramadhani', 12, 'Jl. Kamboja IV No. 21', '081324213349'),
('20210017', '2122017', 'Hazka Ayla', 12, 'Jl. Tanjung III No. 29', '082189219823'),
('20210018', '2122018', 'Andhika Restu', 12, 'Komp. Permata Biru', '089697293495');

-- --------------------------------------------------------

--
-- Struktur dari tabel `spp`
--

CREATE TABLE `spp` (
  `id_spp` int(11) NOT NULL,
  `tahun` int(11) NOT NULL,
  `nominal` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `spp`
--

INSERT INTO `spp` (`id_spp`, `tahun`, `nominal`) VALUES
(1, 2019, 130000),
(2, 2020, 140000),
(3, 2021, 150000);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `kelas`
--
ALTER TABLE `kelas`
  ADD PRIMARY KEY (`id_kelas`);

--
-- Indeks untuk tabel `pembayaran`
--
ALTER TABLE `pembayaran`
  ADD PRIMARY KEY (`id_pembayaran`),
  ADD KEY `id_petugas` (`id_petugas`),
  ADD KEY `nisn` (`nisn`);

--
-- Indeks untuk tabel `petugas`
--
ALTER TABLE `petugas`
  ADD PRIMARY KEY (`id_petugas`);

--
-- Indeks untuk tabel `siswa`
--
ALTER TABLE `siswa`
  ADD PRIMARY KEY (`nisn`),
  ADD KEY `id_kelas` (`id_kelas`);

--
-- Indeks untuk tabel `spp`
--
ALTER TABLE `spp`
  ADD PRIMARY KEY (`id_spp`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `kelas`
--
ALTER TABLE `kelas`
  MODIFY `id_kelas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT untuk tabel `pembayaran`
--
ALTER TABLE `pembayaran`
  MODIFY `id_pembayaran` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=313;

--
-- AUTO_INCREMENT untuk tabel `petugas`
--
ALTER TABLE `petugas`
  MODIFY `id_petugas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT untuk tabel `spp`
--
ALTER TABLE `spp`
  MODIFY `id_spp` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `pembayaran`
--
ALTER TABLE `pembayaran`
  ADD CONSTRAINT `pembayaran_ibfk_1` FOREIGN KEY (`id_petugas`) REFERENCES `petugas` (`id_petugas`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `pembayaran_ibfk_2` FOREIGN KEY (`nisn`) REFERENCES `siswa` (`nisn`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `siswa`
--
ALTER TABLE `siswa`
  ADD CONSTRAINT `siswa_ibfk_1` FOREIGN KEY (`id_kelas`) REFERENCES `kelas` (`id_kelas`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
