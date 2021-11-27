-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 20 Nov 2021 pada 18.58
-- Versi server: 10.4.20-MariaDB
-- Versi PHP: 8.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dbakademik`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `mahasiswa`
--

CREATE TABLE `mahasiswa` (
  `id_mahasiswa` int(11) NOT NULL,
  `nim` int(11) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `jekel` enum('Laki - Laki','Perempuan','','') NOT NULL,
  `tempat` varchar(30) NOT NULL,
  `tgllahir` date NOT NULL,
  `alamat` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `mahasiswa`
--

INSERT INTO `mahasiswa` (`id_mahasiswa`, `nim`, `nama`, `jekel`, `tempat`, `tgllahir`, `alamat`) VALUES
(8, 202918221, 'mas ', 'Perempuan', 'KUDUS', '2016-12-12', 'KUDUS, Gebog'),
(10, 321432324, 'Dek Syahrul', 'Laki - Laki', 'pati', '1999-07-24', 'demak'),
(11, 230044226, 'Mas Syahrul', 'Laki - Laki', 'PATI', '1998-07-08', 'Sukoharjo , PATI');

-- --------------------------------------------------------

--
-- Struktur dari tabel `nilaimakul`
--

CREATE TABLE `nilaimakul` (
  `id_nilai` int(11) NOT NULL,
  `nim` int(11) NOT NULL,
  `makul` varchar(30) NOT NULL,
  `nilai` varchar(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `nilaimakul`
--

INSERT INTO `nilaimakul` (`id_nilai`, `nim`, `makul`, `nilai`) VALUES
(1, 201951256, 'MKP', 'C'),
(2, 201952622, 'LMK', 'AB'),
(9, 202918221, 'bisnis', 'A');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD PRIMARY KEY (`id_mahasiswa`);

--
-- Indeks untuk tabel `nilaimakul`
--
ALTER TABLE `nilaimakul`
  ADD PRIMARY KEY (`id_nilai`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `mahasiswa`
--
ALTER TABLE `mahasiswa`
  MODIFY `id_mahasiswa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT untuk tabel `nilaimakul`
--
ALTER TABLE `nilaimakul`
  MODIFY `id_nilai` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
