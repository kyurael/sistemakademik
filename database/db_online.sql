-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 17 Bulan Mei 2024 pada 07.39
-- Versi server: 10.4.32-MariaDB
-- Versi PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_online`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_dsn`
--

CREATE TABLE `tbl_dsn` (
  `kd_dosen` int(11) NOT NULL,
  `nama` varchar(60) NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `tgllhir` date NOT NULL,
  `agama` varchar(15) NOT NULL,
  `walikls` varchar(6) DEFAULT NULL,
  `thnmasuk` varchar(4) NOT NULL,
  `no_tlpn` varchar(12) NOT NULL,
  `email` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `tbl_dsn`
--

INSERT INTO `tbl_dsn` (`kd_dosen`, `nama`, `alamat`, `tgllhir`, `agama`, `walikls`, `thnmasuk`, `no_tlpn`, `email`) VALUES
(110121, 'Andryo Wiratama ', 'Medan', '1988-02-14', 'Islam', 'SI-5B', '2019', '082134527001', 'andryotama88@gmail.com'),
(110123, 'Daviya Anindya Zalwa', 'Medan', '1992-03-21', 'Islam', 'SI-2B', '2020', '082293601212', 'anindyazalwa@gmail.com'),
(110173, 'Khalifah Rasyid Alakmar', 'Medan', '1991-07-09', 'Islam', 'SI-6A', '2020', '082170953100', 'rasyidkhalifah07@gmail.com'),
(110215, 'Gabriel Wiliam Dresta', 'Medan', '1992-10-29', 'Kristen', 'SI-5J', '2021', '082173449208', 'drestagabriel05@gmail.com');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_mhsw`
--

CREATE TABLE `tbl_mhsw` (
  `nim` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `address` varchar(250) NOT NULL,
  `prodi` varchar(50) NOT NULL,
  `age` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `tbl_mhsw`
--

INSERT INTO `tbl_mhsw` (`nim`, `name`, `address`, `prodi`, `age`) VALUES
(120353, 'Nathan Noel Romejo Tjoe A On', 'Semarang', 'Teknik Informatika', 22),
(121032, 'Jevian Muhammad Zein', 'Palembang', 'Sistem Informasi', 21),
(121230, 'Benedicto Rio Kalvari', 'Medan', 'Sistem Komputer', 22),
(121353, 'Kyura Elshanum Asmaraja', 'Medan', 'Sistem Informasi', 20);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tbl_dsn`
--
ALTER TABLE `tbl_dsn`
  ADD PRIMARY KEY (`kd_dosen`);

--
-- Indeks untuk tabel `tbl_mhsw`
--
ALTER TABLE `tbl_mhsw`
  ADD PRIMARY KEY (`nim`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
