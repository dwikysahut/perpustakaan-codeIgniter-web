-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Waktu pembuatan: 12 Jul 2021 pada 02.01
-- Versi server: 10.4.18-MariaDB
-- Versi PHP: 7.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `perpustakaan_db`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`) VALUES
(1, 'admin', 'admin');

-- --------------------------------------------------------

--
-- Struktur dari tabel `buku`
--

CREATE TABLE `buku` (
  `id_buku` int(9) NOT NULL,
  `judul` text NOT NULL,
  `cover` text NOT NULL,
  `kategori` int(11) NOT NULL,
  `jumlah` int(2) NOT NULL,
  `penerbit` int(11) NOT NULL,
  `pengarang` int(11) NOT NULL,
  `tahun_terbit` varchar(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `buku`
--

INSERT INTO `buku` (`id_buku`, `judul`, `cover`, `kategori`, `jumlah`, `penerbit`, `pengarang`, `tahun_terbit`) VALUES
(2, 'Harry Potter dan Batu Bertuah', 'Harry_Potter_and_the_Philosophers_Stone.jpg', 9, 6, 4, 3, '1999'),
(4, ' Ilmu Pengetahuan: Sebuah Tinjauan Filosofis', 'buku_ilmu.jpeg', 8, 17, 5, 4, '2001');

-- --------------------------------------------------------

--
-- Struktur dari tabel `denda`
--

CREATE TABLE `denda` (
  `id` int(11) NOT NULL,
  `id_pengembalian` int(11) NOT NULL,
  `total` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `denda`
--

INSERT INTO `denda` (`id`, `id_pengembalian`, `total`, `status`) VALUES
(5, 18, 75000, 0),
(6, 4, 250000, 1),
(8, 19, 75000, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `kategori`
--

CREATE TABLE `kategori` (
  `id` int(11) NOT NULL,
  `nama` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `kategori`
--

INSERT INTO `kategori` (`id`, `nama`) VALUES
(7, 'Penelitian'),
(8, 'Pengetahuan'),
(9, 'Novel');

-- --------------------------------------------------------

--
-- Struktur dari tabel `member`
--

CREATE TABLE `member` (
  `nomer_anggota` int(9) NOT NULL,
  `nomer_induk` int(9) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `email` varchar(30) NOT NULL,
  `alamat` varchar(100) NOT NULL,
  `status` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `member`
--

INSERT INTO `member` (`nomer_anggota`, `nomer_induk`, `nama`, `email`, `alamat`, `status`) VALUES
(2, 181111001, 'Samuel A', '181111001@mhs.stiki.ac.id', 'Jl Jawi no.3', 0),
(3, 201118001, 'Dwiky Satria Hutomo', '201118001@mhs.stiki.ac.id', 'malang', 0),
(4, 181111066, 'Gladis Puspa Ayu', '181111066@mhs.stiki.ac.id', 'malang', 0),
(5, 181111048, 'Muhammad Lukman Hakim', '181111048@mhs.stiki.ac.id', 'malang', 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `pegawai`
--

CREATE TABLE `pegawai` (
  `id_pegawai` int(9) NOT NULL,
  `nama_pegawai` varchar(30) NOT NULL,
  `jenis_kelamin` varchar(30) NOT NULL,
  `domisili` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pegawai`
--

INSERT INTO `pegawai` (`id_pegawai`, `nama_pegawai`, `jenis_kelamin`, `domisili`) VALUES
(12333, 'abdul', 'Laki-Laki', 'Jakarta'),
(123456, 'adi', 'laki-laki', 'malang');

-- --------------------------------------------------------

--
-- Struktur dari tabel `peminjaman`
--

CREATE TABLE `peminjaman` (
  `id_transaksi` int(9) NOT NULL,
  `nomer_anggota` int(9) NOT NULL,
  `id_buku` int(9) NOT NULL,
  `tanggal_pinjam` date NOT NULL,
  `tanggal_akhir_peminjaman` date NOT NULL,
  `id_pegawai` int(9) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `peminjaman`
--

INSERT INTO `peminjaman` (`id_transaksi`, `nomer_anggota`, `id_buku`, `tanggal_pinjam`, `tanggal_akhir_peminjaman`, `id_pegawai`, `jumlah`, `status`) VALUES
(12, 2, 2, '2021-07-07', '2021-07-07', 123456, 1, 1),
(13, 2, 2, '2021-07-07', '2021-07-07', 123456, 1, 1),
(14, 2, 4, '2021-07-10', '2021-07-13', 12333, 1, 1),
(15, 3, 4, '2021-07-11', '2021-07-13', 12333, 1, 1),
(16, 3, 4, '2021-07-11', '2021-07-14', 12333, 2, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `penerbit`
--

CREATE TABLE `penerbit` (
  `id` int(9) NOT NULL,
  `nama` varchar(11) NOT NULL,
  `alamat` varchar(30) NOT NULL,
  `no_telp` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `penerbit`
--

INSERT INTO `penerbit` (`id`, `nama`, `alamat`, `no_telp`) VALUES
(3, 'Erlangga', 'Malang', '08214349237'),
(4, 'Gramedia', 'Malang', '08214349237'),
(5, 'Kanisius', '-', '-');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pengarang`
--

CREATE TABLE `pengarang` (
  `id` int(11) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `alamat` varchar(30) NOT NULL,
  `no_telp` varchar(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pengarang`
--

INSERT INTO `pengarang` (`id`, `nama`, `alamat`, `no_telp`) VALUES
(2, 'Samuel', 'Malang', '085103619827'),
(3, 'J.K Rowling', '-', '-'),
(4, 'A. Sonny Keraf', '-', '-');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pengembalian`
--

CREATE TABLE `pengembalian` (
  `id_transaksi` int(9) NOT NULL,
  `id_peminjaman` int(9) NOT NULL,
  `tanggal_kembali` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `pengembalian`
--

INSERT INTO `pengembalian` (`id_transaksi`, `id_peminjaman`, `tanggal_kembali`) VALUES
(3, 13, '2021-07-06'),
(4, 12, '2021-07-17'),
(18, 14, '2021-07-16'),
(19, 15, '2021-07-16'),
(20, 16, '2021-07-14');

-- --------------------------------------------------------

--
-- Stand-in struktur untuk tampilan `view_data_buku`
-- (Lihat di bawah untuk tampilan aktual)
--
CREATE TABLE `view_data_buku` (
`id_buku` int(9)
,`judul` text
,`cover` text
,`kategori` int(11)
,`nama kategori` varchar(11)
,`jumlah` int(2)
,`penerbit` int(11)
,`nama penerbit` varchar(11)
,`pengarang` int(11)
,`nama pengarang` varchar(30)
,`tahun_terbit` varchar(4)
);

-- --------------------------------------------------------

--
-- Stand-in struktur untuk tampilan `view_data_denda`
-- (Lihat di bawah untuk tampilan aktual)
--
CREATE TABLE `view_data_denda` (
`id` int(11)
,`id_transaksi` int(9)
,`id_peminjaman` int(9)
,`tanggal_kembali` date
,`nomer_anggota` int(9)
,`id_buku` int(9)
,`tanggal_pinjam` date
,`tanggal_akhir_peminjaman` date
,`id_pegawai` int(9)
,`jumlah` int(11)
,`status` int(11)
,`total` int(11)
,`status_denda` int(11)
);

-- --------------------------------------------------------

--
-- Stand-in struktur untuk tampilan `view_pengembalian`
-- (Lihat di bawah untuk tampilan aktual)
--
CREATE TABLE `view_pengembalian` (
`id_transaksi` int(9)
,`id_peminjaman` int(9)
,`tanggal_kembali` date
,`nomer_anggota` int(9)
,`id_buku` int(9)
,`tanggal_pinjam` date
,`tanggal_akhir_peminjaman` date
,`id_pegawai` int(9)
,`jumlah` int(11)
,`status` int(11)
);

-- --------------------------------------------------------

--
-- Struktur untuk view `view_data_buku`
--
DROP TABLE IF EXISTS `view_data_buku`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_data_buku`  AS SELECT `buku`.`id_buku` AS `id_buku`, `buku`.`judul` AS `judul`, `buku`.`cover` AS `cover`, `buku`.`kategori` AS `kategori`, `kategori`.`nama` AS `nama kategori`, `buku`.`jumlah` AS `jumlah`, `buku`.`penerbit` AS `penerbit`, `penerbit`.`nama` AS `nama penerbit`, `buku`.`pengarang` AS `pengarang`, `pengarang`.`nama` AS `nama pengarang`, `buku`.`tahun_terbit` AS `tahun_terbit` FROM (((`buku` join `kategori` on(`buku`.`kategori` = `kategori`.`id`)) join `penerbit` on(`buku`.`penerbit` = `penerbit`.`id`)) join `pengarang` on(`buku`.`pengarang` = `pengarang`.`id`)) ;

-- --------------------------------------------------------

--
-- Struktur untuk view `view_data_denda`
--
DROP TABLE IF EXISTS `view_data_denda`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_data_denda`  AS SELECT `denda`.`id` AS `id`, `view_pengembalian`.`id_transaksi` AS `id_transaksi`, `view_pengembalian`.`id_peminjaman` AS `id_peminjaman`, `view_pengembalian`.`tanggal_kembali` AS `tanggal_kembali`, `view_pengembalian`.`nomer_anggota` AS `nomer_anggota`, `view_pengembalian`.`id_buku` AS `id_buku`, `view_pengembalian`.`tanggal_pinjam` AS `tanggal_pinjam`, `view_pengembalian`.`tanggal_akhir_peminjaman` AS `tanggal_akhir_peminjaman`, `view_pengembalian`.`id_pegawai` AS `id_pegawai`, `view_pengembalian`.`jumlah` AS `jumlah`, `view_pengembalian`.`status` AS `status`, `denda`.`total` AS `total`, `denda`.`status` AS `status_denda` FROM (`denda` join `view_pengembalian` on(`view_pengembalian`.`id_transaksi` = `denda`.`id_pengembalian`)) ;

-- --------------------------------------------------------

--
-- Struktur untuk view `view_pengembalian`
--
DROP TABLE IF EXISTS `view_pengembalian`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_pengembalian`  AS SELECT `pengembalian`.`id_transaksi` AS `id_transaksi`, `pengembalian`.`id_peminjaman` AS `id_peminjaman`, `pengembalian`.`tanggal_kembali` AS `tanggal_kembali`, `peminjaman`.`nomer_anggota` AS `nomer_anggota`, `peminjaman`.`id_buku` AS `id_buku`, `peminjaman`.`tanggal_pinjam` AS `tanggal_pinjam`, `peminjaman`.`tanggal_akhir_peminjaman` AS `tanggal_akhir_peminjaman`, `peminjaman`.`id_pegawai` AS `id_pegawai`, `peminjaman`.`jumlah` AS `jumlah`, `peminjaman`.`status` AS `status` FROM (`pengembalian` join `peminjaman` on(`pengembalian`.`id_peminjaman` = `peminjaman`.`id_transaksi`)) ;

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `buku`
--
ALTER TABLE `buku`
  ADD PRIMARY KEY (`id_buku`),
  ADD KEY `pengarang` (`pengarang`),
  ADD KEY `penerbit` (`penerbit`),
  ADD KEY `kategori` (`kategori`);

--
-- Indeks untuk tabel `denda`
--
ALTER TABLE `denda`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_pengembalian` (`id_pengembalian`);

--
-- Indeks untuk tabel `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `member`
--
ALTER TABLE `member`
  ADD PRIMARY KEY (`nomer_anggota`);

--
-- Indeks untuk tabel `pegawai`
--
ALTER TABLE `pegawai`
  ADD PRIMARY KEY (`id_pegawai`);

--
-- Indeks untuk tabel `peminjaman`
--
ALTER TABLE `peminjaman`
  ADD PRIMARY KEY (`id_transaksi`),
  ADD KEY `anggota` (`nomer_anggota`),
  ADD KEY `buku` (`id_buku`),
  ADD KEY `id_pegawai` (`id_pegawai`);

--
-- Indeks untuk tabel `penerbit`
--
ALTER TABLE `penerbit`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `pengarang`
--
ALTER TABLE `pengarang`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `pengembalian`
--
ALTER TABLE `pengembalian`
  ADD PRIMARY KEY (`id_transaksi`),
  ADD KEY `id_peminjaman` (`id_peminjaman`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `buku`
--
ALTER TABLE `buku`
  MODIFY `id_buku` int(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `denda`
--
ALTER TABLE `denda`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `member`
--
ALTER TABLE `member`
  MODIFY `nomer_anggota` int(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `peminjaman`
--
ALTER TABLE `peminjaman`
  MODIFY `id_transaksi` int(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT untuk tabel `penerbit`
--
ALTER TABLE `penerbit`
  MODIFY `id` int(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `pengarang`
--
ALTER TABLE `pengarang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `pengembalian`
--
ALTER TABLE `pengembalian`
  MODIFY `id_transaksi` int(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `buku`
--
ALTER TABLE `buku`
  ADD CONSTRAINT `buku_ibfk_1` FOREIGN KEY (`pengarang`) REFERENCES `pengarang` (`id`),
  ADD CONSTRAINT `buku_ibfk_2` FOREIGN KEY (`penerbit`) REFERENCES `penerbit` (`id`),
  ADD CONSTRAINT `buku_ibfk_3` FOREIGN KEY (`kategori`) REFERENCES `kategori` (`id`);

--
-- Ketidakleluasaan untuk tabel `denda`
--
ALTER TABLE `denda`
  ADD CONSTRAINT `denda_ibfk_1` FOREIGN KEY (`id_pengembalian`) REFERENCES `pengembalian` (`id_transaksi`);

--
-- Ketidakleluasaan untuk tabel `peminjaman`
--
ALTER TABLE `peminjaman`
  ADD CONSTRAINT `anggota` FOREIGN KEY (`nomer_anggota`) REFERENCES `member` (`nomer_anggota`),
  ADD CONSTRAINT `buku` FOREIGN KEY (`id_buku`) REFERENCES `buku` (`id_buku`),
  ADD CONSTRAINT `id_pegawai` FOREIGN KEY (`id_pegawai`) REFERENCES `pegawai` (`id_pegawai`);

--
-- Ketidakleluasaan untuk tabel `pengembalian`
--
ALTER TABLE `pengembalian`
  ADD CONSTRAINT `pengembalian_ibfk_1` FOREIGN KEY (`id_peminjaman`) REFERENCES `peminjaman` (`id_transaksi`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
