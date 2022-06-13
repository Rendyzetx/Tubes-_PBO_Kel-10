-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 13 Jun 2022 pada 18.19
-- Versi server: 10.4.24-MariaDB
-- Versi PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sistemkasir`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `barangpenjualan`
--

CREATE TABLE `barangpenjualan` (
  `no_faktur` varchar(10) NOT NULL,
  `kode_barang` varchar(30) NOT NULL,
  `nama_barang` varchar(50) NOT NULL,
  `harga` int(10) NOT NULL,
  `qty` int(10) NOT NULL,
  `total1` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `barangpenjualan`
--

INSERT INTO `barangpenjualan` (`no_faktur`, `kode_barang`, `nama_barang`, `harga`, `qty`, `total1`) VALUES
('F0001', 'A0010', 'HAND STABILIZER', 10000, 3, 30000),
('F0001', 'A006', 'MIE SEDAAP GORENG', 2500, 1, 2500),
('F0002', 'A003', 'MIE SUKSES GORENG AYAM BWG', 3000, 1, 3000),
('F0003', 'A005', 'SENSI MASK ', 2000, 2, 4000),
('F0004', 'A009', 'TOLAK ANGIN', 2500, 2, 5000),
('F0004', 'A008', 'COCA-COLA 1 Liter', 13000, 1, 13000),
('F0005', 'A003', 'MIE SUKSES GORENG AYAM BWG', 3000, 2, 6000),
('F0005', 'A006', 'MIE SEDAAP GORENG', 2500, 5, 12500),
('F0006', 'A009', 'TOLAK ANGIN', 2500, 5, 12500),
('F0007', 'A004', 'DETOL HAND SANITIZER 100ml', 15000, 1, 15000),
('F0008', 'A002', 'SARIMI AYAM BAWANG', 2200, 1, 2200),
('F0009', 'A0010', 'HAND STABILIZER', 10000, 1, 10000),
('F0010', 'A004', 'DETOL HAND SANITIZER 100ml', 15000, 1, 15000),
('F0010', 'A0010', 'HAND STABILIZER', 10000, 1, 10000),
('F0011', 'A007', 'FITMEE MIE KOREA', 19500, 2, 39000),
('F0012', 'A006', 'MIE SEDAAP GORENG', 2500, 1, 2500),
('F0013', 'A004', 'DETOL HAND SANITIZER 100ml', 15000, 1, 15000),
('F0014', 'A005', 'SENSI MASK ', 2000, 2, 4000),
('F0015', 'A003', 'MIE SUKSES GORENG AYAM BWG', 3000, 2, 6000),
('F0016', 'A005', 'SENSI MASK ', 2000, 5, 10000),
('F0017', 'A005', 'SENSI MASK ', 2000, 5, 10000),
('F0018', 'A005', 'SENSI MASK ', 2000, 5, 10000),
('F0019', 'A004', 'DETOL HAND SANITIZER 100ml', 15000, 1, 15000),
('F0019', 'A009', 'TOLAK ANGIN', 2500, 2, 5000),
('F0020', 'A009', 'TOLAK ANGIN', 2500, 1, 2500),
('F0021', 'A005', 'SENSI MASK ', 2000, 2, 4000),
('F0022', 'A008', 'COCA-COLA 1 Liter', 13000, 1, 13000),
('F0023', 'A009', 'TOLAK ANGIN', 2500, 2, 5000),
('F0024', 'A009', 'TOLAK ANGIN', 2500, 1, 2500),
('F0024', 'A006', 'MIE SEDAAP GORENG', 2500, 2, 5000),
('F0025', 'A006', 'MIE SEDAAP GORENG', 2500, 1, 2500),
('F0026', 'A0001', 'INDOMIE GORENG', 2500, 10, 25000),
('F0027', 'A006', 'MIE SEDAAP GORENG', 2500, 1, 2500),
('F0028', 'A005', 'SENSI MASK ', 2000, 3, 6000),
('F0028', 'A006', 'MIE SEDAAP GORENG', 2500, 1, 2500),
('F0029', 'A007', 'FITMEE MIE KOREA', 19500, 1, 19500);

-- --------------------------------------------------------

--
-- Struktur dari tabel `masterbarang`
--

CREATE TABLE `masterbarang` (
  `kode_barang` varchar(30) NOT NULL,
  `nama_barang` varchar(50) NOT NULL,
  `stok` int(10) NOT NULL,
  `harga` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `masterbarang`
--

INSERT INTO `masterbarang` (`kode_barang`, `nama_barang`, `stok`, `harga`) VALUES
('A0001', 'INDOMIE GORENG', 90, 2500),
('A0010', 'HAND STABILIZER', 142, 10000),
('A002', 'SARIMI AYAM BAWANG', 99, 2200),
('A003', 'MIE SUKSES GORENG AYAM BWG', 95, 3000),
('A004', 'DETOL HAND SANITIZER 100ml', 85, 15000),
('A005', 'Masker', 235, 2000),
('A006', 'MIE SEDAAP GORENG', 84, 2500),
('A007', 'FITMEE MIE KOREA', 94, 19500),
('A008', 'COCA-COLA 1 Liter', 96, 13000),
('A009', 'TOLAK ANGIN', 187, 2500),
('A011', 'INDOMIE SEBLAK', 200, 2500),
('A012', 'SABUN DETOL', 100, 2500);

-- --------------------------------------------------------

--
-- Struktur dari tabel `pelanggan`
--

CREATE TABLE `pelanggan` (
  `id_pelanggan` varchar(10) NOT NULL,
  `nama_pelanggan` varchar(50) NOT NULL,
  `alamat` varchar(50) NOT NULL,
  `nomor` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pelanggan`
--

INSERT INTO `pelanggan` (`id_pelanggan`, `nama_pelanggan`, `alamat`, `nomor`) VALUES
('P0001', 'UMUM', 'UMUM', 'UMUM'),
('P0002', 'GOPAY', 'www.gopay.com', '+6291293216'),
('P0003', 'Dana', 'Dana', '+62864964656');

-- --------------------------------------------------------

--
-- Struktur dari tabel `penjualan`
--

CREATE TABLE `penjualan` (
  `no_faktur` varchar(10) NOT NULL,
  `kasir` varchar(30) NOT NULL,
  `id_pelanggan` varchar(10) NOT NULL,
  `nama_pelanggan` varchar(50) DEFAULT NULL,
  `diskon` int(10) NOT NULL,
  `total` int(10) NOT NULL,
  `bayar` int(10) NOT NULL,
  `kembali` int(10) NOT NULL,
  `tanggal` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id` int(5) NOT NULL,
  `username` varchar(15) NOT NULL,
  `password` varchar(15) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `nohp` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `nama`, `nohp`) VALUES
(1, 'admin', 'admin', 'Rizky', '+6289673449080');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `barangpenjualan`
--
ALTER TABLE `barangpenjualan`
  ADD KEY `kode_barang` (`kode_barang`),
  ADD KEY `no_faktur` (`no_faktur`);

--
-- Indeks untuk tabel `masterbarang`
--
ALTER TABLE `masterbarang`
  ADD PRIMARY KEY (`kode_barang`);

--
-- Indeks untuk tabel `pelanggan`
--
ALTER TABLE `pelanggan`
  ADD PRIMARY KEY (`id_pelanggan`);

--
-- Indeks untuk tabel `penjualan`
--
ALTER TABLE `penjualan`
  ADD PRIMARY KEY (`no_faktur`),
  ADD KEY `id_pelanggan` (`id_pelanggan`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `barangpenjualan`
--
ALTER TABLE `barangpenjualan`
  ADD CONSTRAINT `barangpenjualan_ibfk_1` FOREIGN KEY (`kode_barang`) REFERENCES `masterbarang` (`kode_barang`);

--
-- Ketidakleluasaan untuk tabel `penjualan`
--
ALTER TABLE `penjualan`
  ADD CONSTRAINT `penjualan_ibfk_1` FOREIGN KEY (`id_pelanggan`) REFERENCES `pelanggan` (`id_pelanggan`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
