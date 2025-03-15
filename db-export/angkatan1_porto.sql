-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 06 Mar 2025 pada 08.07
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
-- Database: `angkatan1_porto`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `more_profiles`
--

CREATE TABLE `more_profiles` (
  `id` int(4) NOT NULL,
  `id_profile` int(4) NOT NULL,
  `skill` varchar(40) DEFAULT NULL,
  `pengalaman` varchar(55) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `more_profiles`
--

INSERT INTO `more_profiles` (`id`, `id_profile`, `skill`, `pengalaman`) VALUES
(1, 3, 'Makan Nasi', 'Memasak'),
(2, 3, 'Minum Air', 'Memanjat tebing');

-- --------------------------------------------------------

--
-- Struktur dari tabel `profiles`
--

CREATE TABLE `profiles` (
  `id` int(3) NOT NULL,
  `photo` varchar(60) DEFAULT NULL,
  `nama` varchar(55) DEFAULT NULL,
  `jabatan` varchar(55) DEFAULT NULL,
  `deskripsi` text DEFAULT NULL,
  `status` tinyint(2) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `profiles`
--

INSERT INTO `profiles` (`id`, `photo`, `nama`, `jabatan`, `deskripsi`, `status`) VALUES
(1, '67c7ef60408f9_download.png', 'Danu 2', '<div class=\"col-8\">', 'Suka dagang', 1),
(3, '67c7e6c581116_0018120113_10.jpg', 'Budi', 'Direktur', 'Saya seorang direktur', 0),
(14, 'dfghfdgh', 'fghfdgh', 'fghfdghf', 'fgdfghdfh', 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` int(9) NOT NULL,
  `email` varchar(55) DEFAULT NULL,
  `password` varchar(30) DEFAULT NULL,
  `username` varchar(55) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `email`, `password`, `username`) VALUES
(1, 'udin@gmail.com', 'Aa123@!s', 'Udin Sutrisno'),
(2, 'sandi@gmail.com', 'Aa123@!s', 'Sandi Sulistyo');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `more_profiles`
--
ALTER TABLE `more_profiles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_profiles_to_porfiles_id` (`id_profile`);

--
-- Indeks untuk tabel `profiles`
--
ALTER TABLE `profiles`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `more_profiles`
--
ALTER TABLE `more_profiles`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `profiles`
--
ALTER TABLE `profiles`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` int(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `more_profiles`
--
ALTER TABLE `more_profiles`
  ADD CONSTRAINT `id_profiles_to_porfiles_id` FOREIGN KEY (`id_profile`) REFERENCES `profiles` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
