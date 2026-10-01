-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 01 Okt 2026 pada 06.04
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
-- Database: `api_wa_fonnte`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `no_hp` varchar(20) NOT NULL,
  `role` enum('admin','user') NOT NULL DEFAULT 'user',
  `alamat` text NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `nama`, `email`, `no_hp`, `role`, `alamat`, `password`, `created_at`) VALUES
(10, '03.Amfidza neo danara', 'neo33913@gmail.com', '6285784691260', 'admin', 'Gogokalang, Jenangan, Kec. Jenangan, Kabupaten Ponorogo, Jawa Timur 63492', '$2y$10$ML0dQ8UmOJlXYoAQMeB4de5bh/lG6Pkm.6huR/Zx9LAh6R3i.JBEu', '2026-10-01 00:49:17'),
(11, 'jackowiOSLO', 'jackowi123@gmail.com', '6289524953485', 'user', 'pulung raya', '$2y$10$0RHiptKelOEwaqACXtgDYOr.17jatnpt/qJMkklz48heReH1TKi9G', '2026-10-01 01:34:25'),
(12, 'mbhKungGASAK', 'mbhkung123@gmail.com', '6288976546026', 'user', 'mlarak', '$2y$10$tZmLKjatDIiGdnMPtFStO.DOLfQjsthsPj0FyjpsZsHmR0eV8jLVO', '2026-10-01 01:51:02'),
(14, 'neoDiamond 3 Periode 1', 'neo1234@gmail.com', '6285134777683', 'user', 'jenangan', '$2y$10$EW54GiC6M.2QhgkSRuhb4eLZsN5NJWYT5waa08ymhmanE8lbqU21m', '2026-10-01 03:56:18');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `no_hp` (`no_hp`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
