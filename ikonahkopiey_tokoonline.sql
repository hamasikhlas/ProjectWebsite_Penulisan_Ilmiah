-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 20 Jan 2022 pada 07.32
-- Versi server: 10.4.17-MariaDB
-- Versi PHP: 8.0.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ikonahkopiey_tokoonline`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `berita`
--

CREATE TABLE `berita` (
  `id_berita` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `jenis_berita` varchar(20) NOT NULL,
  `judul_berita` varchar(255) NOT NULL,
  `slug_berita` varchar(255) NOT NULL,
  `keywords` text DEFAULT NULL,
  `status_berita` varchar(20) NOT NULL,
  `keterangan` text NOT NULL,
  `gambar` varchar(255) NOT NULL,
  `tanggal_post` datetime NOT NULL,
  `tanggal_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `gambar`
--

CREATE TABLE `gambar` (
  `id_gambar` int(11) NOT NULL,
  `id_produk` int(11) NOT NULL,
  `judul_gambar` varchar(255) DEFAULT NULL,
  `gambar` varchar(255) NOT NULL,
  `tanggal_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `gambar`
--

INSERT INTO `gambar` (`id_gambar`, `id_produk`, `judul_gambar`, `gambar`, `tanggal_update`) VALUES
(3, 5, 'Executive Suite', 'WhatsApp_Image_2020-05-16_at_07_48_36.jpeg', '2020-07-04 14:05:57'),
(4, 5, 'kopi ewrfsd', 'WhatsApp_Image_2020-05-03_at_16-removebg-preview.png', '2020-07-04 14:06:13'),
(6, 15, 'gambar enak', '_20200713_181829.JPG', '2020-07-26 10:04:51'),
(8, 15, 'hamas', '20201019183901.png', '2021-05-11 12:31:37');

-- --------------------------------------------------------

--
-- Struktur dari tabel `header_transaksi`
--

CREATE TABLE `header_transaksi` (
  `id_header_transaksi` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_pelanggan` int(11) NOT NULL,
  `nama_pelanggan` varchar(50) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `telepon` varchar(50) DEFAULT NULL,
  `alamat` varchar(300) DEFAULT NULL,
  `kode_transaksi` varchar(255) NOT NULL,
  `tanggal_transaksi` datetime NOT NULL,
  `jumlah_transaksi` int(11) NOT NULL,
  `status_bayar` varchar(20) NOT NULL,
  `jumlah_bayar` int(11) DEFAULT NULL,
  `rekening_pembayaran` varchar(255) DEFAULT NULL,
  `rekening_pelanggan` varchar(255) DEFAULT NULL,
  `bukti_bayar` varchar(255) DEFAULT NULL,
  `id_rekening` int(11) DEFAULT NULL,
  `tanggal_bayar` varchar(255) DEFAULT NULL,
  `nama_bank` varchar(255) DEFAULT NULL,
  `tanggal_post` datetime NOT NULL,
  `tanggal_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `header_transaksi`
--

INSERT INTO `header_transaksi` (`id_header_transaksi`, `id_user`, `id_pelanggan`, `nama_pelanggan`, `email`, `telepon`, `alamat`, `kode_transaksi`, `tanggal_transaksi`, `jumlah_transaksi`, `status_bayar`, `jumlah_bayar`, `rekening_pembayaran`, `rekening_pelanggan`, `bukti_bayar`, `id_rekening`, `tanggal_bayar`, `nama_bank`, `tanggal_post`, `tanggal_update`) VALUES
(8, 0, 4, 'muhammad hamas ikhlas', 'hamas@gmail.com', '0877766554322', 'depok', '11082020RIKJH3I0', '2020-08-11 00:00:00', 50000, 'Belum', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-08-11 16:37:25', '2020-08-11 14:37:25'),
(9, 0, 4, 'hamas ikhlas', 'hamas@gmail.com', '085268492006', 'jalan pamaan cimanggis depok ', '120820203BHC9CPE', '2020-08-12 00:00:00', 50000, 'Konfirmasi', 50000, '654334534', 'muhammad', 'image1.jpeg', 1, '13-08-2020', 'BNI syariah', '2020-08-12 06:01:46', '2020-08-13 11:28:36'),
(10, 0, 4, 'hamas ikhlas', 'hamas@gmail.com', '085268492006', 'jalan pamaan cimanggis depok  sejfdask jas a\r\nsdasdasdk sadlsadk\r\n', '17082020UIHQKXYF', '2020-08-17 00:00:00', 75000, 'Belum', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-08-17 04:41:18', '2020-08-17 02:41:18'),
(11, 0, 4, 'hamas ikhlas', 'hamas@gmail.com', '085268492006', 'jln. pamaan akses UI cimanggis depok ', '17082020HBDNCVFM', '2020-08-17 00:00:00', 105000, 'Belum', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-08-17 08:03:18', '2020-08-17 06:03:18'),
(12, 0, 4, 'hamas ikhlas', 'hamas@gmail.com', '085268492006', 'jalan pamaan Rt 04 Rw 07 akses UI cimanggis depok ', '17082020AZJ532NI', '2020-08-17 00:00:00', 25000, 'Belum', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-08-17 08:08:26', '2020-08-17 06:08:26'),
(13, 0, 4, 'hamas ikhlas', 'hamas@gmail.com', '085268492006', 'jalan pamaan cimanggis depok ', '100920201RH7JK4F', '2020-09-10 00:00:00', 50000, 'Belum', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-09-10 22:38:53', '2020-09-10 20:38:53'),
(14, 0, 4, 'hamas ikhlas', 'hamas@gmail.com', '085268492006', 'jalan pamaan cimanggis depok ', '180920206HE9MWFS', '2020-09-18 00:00:00', 25000, 'Belum', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-09-18 16:17:30', '2020-09-18 14:17:30');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kategori`
--

CREATE TABLE `kategori` (
  `id_kategori` int(11) NOT NULL,
  `slug_kategori` varchar(255) NOT NULL,
  `nama_kategori` varchar(255) NOT NULL,
  `urutan` int(11) DEFAULT NULL,
  `tanggal_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `kategori`
--

INSERT INTO `kategori` (`id_kategori`, `slug_kategori`, `nama_kategori`, `urutan`, `tanggal_update`) VALUES
(1, 'ikola-koffie', 'Ikola Koffie', 1, '2020-07-13 11:20:52'),
(4, 'kopi-gading-cempaka', 'Kopi Gading Cempaka', 2, '2020-07-13 11:21:17'),
(7, 'qahwa-coffee', 'Qahwa Coffee', 3, '2020-07-13 11:22:39');

-- --------------------------------------------------------

--
-- Struktur dari tabel `konfigurasi`
--

CREATE TABLE `konfigurasi` (
  `id_konfigurasi` int(11) NOT NULL,
  `namaweb` varchar(255) NOT NULL,
  `tagline` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `website` varchar(255) DEFAULT NULL,
  `keywords` text DEFAULT NULL,
  `metatext` text DEFAULT NULL,
  `telepon` varchar(50) DEFAULT NULL,
  `alamat` varchar(300) DEFAULT NULL,
  `facebook` varchar(255) DEFAULT NULL,
  `instagram` varchar(255) DEFAULT NULL,
  `deskripsi` text DEFAULT NULL,
  `logo` varchar(255) DEFAULT NULL,
  `icon` varchar(255) DEFAULT NULL,
  `rekening_pembayaran` varchar(255) DEFAULT NULL,
  `tanggal_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `konfigurasi`
--

INSERT INTO `konfigurasi` (`id_konfigurasi`, `namaweb`, `tagline`, `email`, `website`, `keywords`, `metatext`, `telepon`, `alamat`, `facebook`, `instagram`, `deskripsi`, `logo`, `icon`, `rekening_pembayaran`, `tanggal_update`) VALUES
(1, ' Nahkopiey Store', 'Maju terus pantang kendor', 'hamas.ikhlas@gmail.com', 'http://Nahkopiey.com', 'Ikola coffie,Kopi Gaging Cempaka,Qahwa kopi', 'oke', '085268492006', 'Jln. Morgoda Raya Gang Pisang nomor 38 Beji Depok ', 'https://facebook.com/Nahkapiey', 'https://instagram.com/Nahkapiey', ' Nahkopiey Store', '_20200713_19272015.JPG', '_20200713_19272016.JPG', 'oke', '2020-09-10 21:48:45');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pelanggan`
--

CREATE TABLE `pelanggan` (
  `id_pelanggan` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `status_pelanggan` varchar(20) NOT NULL,
  `nama_pelanggan` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(64) NOT NULL,
  `telepon` varchar(50) DEFAULT NULL,
  `alamat` varchar(300) DEFAULT NULL,
  `tanggal_daftar` datetime NOT NULL,
  `tanggal_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `pelanggan`
--

INSERT INTO `pelanggan` (`id_pelanggan`, `id_user`, `status_pelanggan`, `nama_pelanggan`, `email`, `password`, `telepon`, `alamat`, `tanggal_daftar`, `tanggal_update`) VALUES
(4, 0, 'Pending', 'hamas ikhlas', 'hamas@gmail.com', '986176f86a3097d56ae7c1c4af248de3aa46656d', '085268492006', 'jalan pamaan cimanggis depok ', '2020-08-10 14:44:44', '2020-08-12 04:00:37');

-- --------------------------------------------------------

--
-- Struktur dari tabel `produk`
--

CREATE TABLE `produk` (
  `id_produk` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_kategori` int(11) NOT NULL,
  `kode_produk` varchar(20) NOT NULL,
  `nama_produk` varchar(255) NOT NULL,
  `slug_produk` varchar(255) NOT NULL,
  `keterangan` text NOT NULL,
  `keywords` text DEFAULT NULL,
  `harga` int(11) NOT NULL,
  `stok` int(11) DEFAULT NULL,
  `gambar` varchar(255) NOT NULL,
  `berat` float DEFAULT NULL,
  `ukuran` varchar(255) DEFAULT NULL,
  `status_produk` varchar(20) NOT NULL,
  `tanggal_post` datetime NOT NULL,
  `tanggal_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `produk`
--

INSERT INTO `produk` (`id_produk`, `id_user`, `id_kategori`, `kode_produk`, `nama_produk`, `slug_produk`, `keterangan`, `keywords`, `harga`, `stok`, `gambar`, `berat`, `ukuran`, `status_produk`, `tanggal_post`, `tanggal_update`) VALUES
(5, 15, 1, 'BR01', 'Bintuhan Robusta', 'bintuhan-robusta_br01', '<p>Bintuhan Robusta</p>\r\n', 'Bintuhan Robusta', 25000, 100, 'PicsArt_07-26-03_04_51.jpg', 25, '10X10', 'Publish', '2020-06-21 07:38:06', '2020-07-26 08:16:51'),
(9, 15, 1, 'RLB01', 'Rejang Lebong Robusta', 'rejang-lebong-robusta_rlb01', '<p>Rejang Lebong Robusta&nbsp;</p>\r\n', 'Rejang Lebong Robusta ', 25000, 100, 'PicsArt_07-26-03_05_20.jpg', 25, '10X10', 'Publish', '2020-07-04 16:06:45', '2020-07-26 08:16:23'),
(10, 15, 1, 'IKKR01', 'Kepahiang Robusta', 'kepahiang-robusta_ikkr01', '<p>Ikolah koffie &nbsp;Kepahiang Robusta</p>\r\n', 'Ikolah koffie  Kepahiang Robusta', 25000, 100, 'PicsArt_07-26-03_05_41.jpg', 25, '10X10', 'Publish', '2020-07-13 13:33:03', '2020-07-26 08:16:04'),
(11, 15, 4, 'CR01', 'Cempaka Robusta ', 'cempaka-robusta-_cr01', '<p>Cempaka Robusta&nbsp;</p>\r\n', 'Cempaka Robusta ', 30000, 100, 'PicsArt_07-26-03_07_42.jpg', 25, '10X10', 'Publish', '2020-07-13 14:06:04', '2020-07-26 08:15:22'),
(12, 15, 4, 'CA01', 'Cempaka Arabica', 'cempaka-arabica_ca01', '<p>Cempaka Arabica</p>\r\n', 'Cempaka Arabica', 30000, 100, 'PicsArt_07-26-03_12_10.jpg', 25, '10X10', 'Publish', '2020-07-13 14:07:00', '2020-07-26 08:15:04'),
(13, 15, 4, 'KS01', 'Kemasan sachet ', 'kemasan-sachet-_ks01', '<p>Kemasan sachet</p>\r\n', 'Kemasan sachet Robusta/Arabica', 25000, 100, 'PicsArt_07-26-03_06_07.jpg', 25, '10X10', 'Publish', '2020-07-13 14:09:01', '2020-07-26 08:14:00'),
(14, 15, 7, 'QH01', 'Qahwa Hitam', 'qahwa-hitam_qh01', '<p>Qahwa hitam</p>\r\n', 'Qahwa hitam', 25000, 100, 'PicsArt_07-26-03_06_31.jpg', 25, '10X10', 'Publish', '2020-07-13 14:10:20', '2020-07-26 08:13:43'),
(15, 15, 7, 'QC01', 'Qahwa Coklat', 'qahwa-coklat_qc01', '<p>Qahwa Coklat adalah kopi asli dari bengkulu di produksi dengan bahan biji kopi pilihan yang terbaik,dengan cita rasa yang khas membuat penikmat kopi teriyang-iyang dengan kopi ini.</p>\r\n', 'Qahwa Coklat', 25000, 100, 'PicsArt_07-26-03_04_24.jpg', 25, '10X10', 'Publish', '2020-07-13 14:12:04', '2020-07-26 10:17:55');

-- --------------------------------------------------------

--
-- Struktur dari tabel `rekening`
--

CREATE TABLE `rekening` (
  `id_rekening` int(11) NOT NULL,
  `nama_bank` varchar(255) NOT NULL,
  `nomor_rekening` varchar(20) NOT NULL,
  `nama_pemilik` varchar(255) NOT NULL,
  `gambar` varchar(255) DEFAULT NULL,
  `tanggal_post` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `rekening`
--

INSERT INTO `rekening` (`id_rekening`, `nama_bank`, `nomor_rekening`, `nama_pemilik`, `gambar`, `tanggal_post`) VALUES
(1, 'BNI syariah', '763984328', 'hamas ikhlas', NULL, '2020-08-13 03:20:24'),
(2, 'BCA', '7567567', 'ikhlas', NULL, '2020-08-13 03:22:17');

-- --------------------------------------------------------

--
-- Struktur dari tabel `transaksi`
--

CREATE TABLE `transaksi` (
  `id_transaksi` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_pelanggan` int(11) NOT NULL,
  `kode_transaksi` varchar(255) NOT NULL,
  `id_produk` int(11) NOT NULL,
  `harga` int(11) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `total_harga` int(11) NOT NULL,
  `tanggal_transaksi` datetime NOT NULL,
  `tanggal_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `transaksi`
--

INSERT INTO `transaksi` (`id_transaksi`, `id_user`, `id_pelanggan`, `kode_transaksi`, `id_produk`, `harga`, `jumlah`, `total_harga`, `tanggal_transaksi`, `tanggal_update`) VALUES
(11, 0, 3, '30072020EYUKB5PN', 5, 25000, 1, 25000, '2020-07-30 00:00:00', '2020-07-30 12:05:13'),
(12, 0, 3, '30072020EYUKB5PN', 9, 25000, 1, 25000, '2020-07-30 00:00:00', '2020-07-30 12:05:14'),
(13, 0, 3, '30072020EYUKB5PN', 15, 25000, 1, 25000, '2020-07-30 00:00:00', '2020-07-30 12:05:14'),
(14, 0, 4, '11082020RIKJH3I0', 15, 25000, 1, 25000, '2020-08-11 00:00:00', '2020-08-11 14:37:25'),
(15, 0, 4, '11082020RIKJH3I0', 13, 25000, 1, 25000, '2020-08-11 00:00:00', '2020-08-11 14:37:26'),
(16, 0, 4, '120820203BHC9CPE', 15, 25000, 1, 25000, '2020-08-12 00:00:00', '2020-08-12 04:01:46'),
(17, 0, 4, '120820203BHC9CPE', 10, 25000, 1, 25000, '2020-08-12 00:00:00', '2020-08-12 04:01:46'),
(18, 0, 4, '17082020UIHQKXYF', 10, 25000, 2, 50000, '2020-08-17 00:00:00', '2020-08-17 02:41:18'),
(19, 0, 4, '17082020UIHQKXYF', 13, 25000, 1, 25000, '2020-08-17 00:00:00', '2020-08-17 02:41:18'),
(20, 0, 4, '17082020HBDNCVFM', 12, 30000, 1, 30000, '2020-08-17 00:00:00', '2020-08-17 06:03:18'),
(21, 0, 4, '17082020HBDNCVFM', 13, 25000, 1, 25000, '2020-08-17 00:00:00', '2020-08-17 06:03:18'),
(22, 0, 4, '17082020HBDNCVFM', 15, 25000, 1, 25000, '2020-08-17 00:00:00', '2020-08-17 06:03:18'),
(23, 0, 4, '17082020HBDNCVFM', 14, 25000, 1, 25000, '2020-08-17 00:00:00', '2020-08-17 06:03:18'),
(24, 0, 4, '17082020AZJ532NI', 15, 25000, 1, 25000, '2020-08-17 00:00:00', '2020-08-17 06:08:27'),
(25, 0, 4, '100920201RH7JK4F', 15, 25000, 1, 25000, '2020-09-10 00:00:00', '2020-09-10 20:38:53'),
(26, 0, 4, '100920201RH7JK4F', 14, 25000, 1, 25000, '2020-09-10 00:00:00', '2020-09-10 20:38:53'),
(27, 0, 4, '180920206HE9MWFS', 15, 25000, 1, 25000, '2020-09-18 00:00:00', '2020-09-18 14:17:31');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id_user` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `email` varchar(255) NOT NULL,
  `username` varchar(32) NOT NULL,
  `password` varchar(64) NOT NULL,
  `akses_level` varchar(20) NOT NULL,
  `tanggal_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id_user`, `nama`, `email`, `username`, `password`, `akses_level`, `tanggal_update`) VALUES
(15, 'muhammad hamas ikhlas', 'ikhlashamas@gmail.com', 'hamas212', 'ca763d1a3ec600999b97e1bbbd2a9fecbc098ef8', 'Admin', '2020-06-15 06:51:32');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `berita`
--
ALTER TABLE `berita`
  ADD PRIMARY KEY (`id_berita`);

--
-- Indeks untuk tabel `gambar`
--
ALTER TABLE `gambar`
  ADD PRIMARY KEY (`id_gambar`);

--
-- Indeks untuk tabel `header_transaksi`
--
ALTER TABLE `header_transaksi`
  ADD PRIMARY KEY (`id_header_transaksi`),
  ADD UNIQUE KEY `kode_transaksi` (`kode_transaksi`);

--
-- Indeks untuk tabel `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id_kategori`);

--
-- Indeks untuk tabel `konfigurasi`
--
ALTER TABLE `konfigurasi`
  ADD PRIMARY KEY (`id_konfigurasi`);

--
-- Indeks untuk tabel `pelanggan`
--
ALTER TABLE `pelanggan`
  ADD PRIMARY KEY (`id_pelanggan`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indeks untuk tabel `produk`
--
ALTER TABLE `produk`
  ADD PRIMARY KEY (`id_produk`),
  ADD UNIQUE KEY `kode_produk` (`kode_produk`);

--
-- Indeks untuk tabel `rekening`
--
ALTER TABLE `rekening`
  ADD PRIMARY KEY (`id_rekening`),
  ADD UNIQUE KEY `nomor_rekening` (`nomor_rekening`);

--
-- Indeks untuk tabel `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`id_transaksi`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id_user`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `berita`
--
ALTER TABLE `berita`
  MODIFY `id_berita` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `gambar`
--
ALTER TABLE `gambar`
  MODIFY `id_gambar` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `header_transaksi`
--
ALTER TABLE `header_transaksi`
  MODIFY `id_header_transaksi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT untuk tabel `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id_kategori` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `konfigurasi`
--
ALTER TABLE `konfigurasi`
  MODIFY `id_konfigurasi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `pelanggan`
--
ALTER TABLE `pelanggan`
  MODIFY `id_pelanggan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `produk`
--
ALTER TABLE `produk`
  MODIFY `id_produk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT untuk tabel `rekening`
--
ALTER TABLE `rekening`
  MODIFY `id_rekening` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `transaksi`
--
ALTER TABLE `transaksi`
  MODIFY `id_transaksi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
