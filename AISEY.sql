-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 30, 2024 at 10:21 AM
-- Server version: 10.1.26-MariaDB
-- PHP Version: 7.1.8
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";
/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
--
-- Database: `AISEY`
--
-- --------------------------------------------------------
--
-- Table structure for table `tbl_barang`
--
CREATE TABLE `tbl_barang` (
  `id_barang` int(100) NOT NULL,
  `deskripsi` varchar(100) NOT NULL,
  `harga` int(20) NOT NULL,
  `stok` int(5) NOT NULL,
  `created` date NOT NULL,
  `nama_image` varchar(50) NOT NULL,
  `type_image` varchar(50) NOT NULL,
  `size_image` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
--
-- Dumping data for table `tbl_barang`
--
INSERT INTO `tbl_barang` (`id_barang`, `deskripsi`, `harga`, `stok`, `created`, `nama_image`, `type_image`, `size_image`) VALUES
(1, 'COLLECTION HOME 2020/2024', 145000, 100, '2018-01-01', '1.PNG', 'image/png', 106168),
(2, 'COLLECTION HOME 2020/2024', 135000, 50, '2018-01-01', '2.png', 'image/png', 85919),
(3, 'COLLECTION HOME 2020/2024', 120000, 50, '2018-01-01', '3.png', 'image/png', 86296),
(4, 'COLLECTION HOME 2020/2024', 135000, 100, '2018-01-01', '4.png', 'image/png', 92477),
(5, 'COLLECTION HOME 2020/2024', 130000, 50, '2018-01-01', '5.png', 'image/png', 93559),
(6, 'COLLECTION HOME 2020/2024', 145000, 100, '2018-01-01', '6.png', 'image/png', 98904),
(7, 'COLLECTION HOME 2020/2024', 130000, 50, '2018-01-01', '7.png', 'image/png', 99855),
(8, 'COLLECTION HOME 2020/2024', 135000, 50, '2018-01-01', '8.png', 'image/png', 135955);
-- --------------------------------------------------------
--
-- Table structure for table `tbl_keranjang`
--
CREATE TABLE `tbl_keranjang` (
  `id` int(100) NOT NULL,
  `id_user` int(100) NOT NULL,
  `id_barang` int(100) NOT NULL,
  `ukuran` varchar(5) NOT NULL,
  `qty` int(50) NOT NULL,
  `kurir` varchar(15) NOT NULL,
  `date_in` date NOT NULL,
  `total` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
-- --------------------------------------------------------
--
-- Table structure for table `tbl_pesanan`
--
CREATE TABLE `tbl_pesanan` (
  `id_pesanan` int(100) NOT NULL,
  `id_user` int(100) NOT NULL,
  `id_barang` int(100) NOT NULL,
  `ukuran` varchar(5) NOT NULL,
  `qty` int(50) NOT NULL,
  `kurir` varchar(15) NOT NULL,
  `date_in` date NOT NULL,
  `total` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
--
-- Dumping data for table `tbl_pesanan`
--
INSERT INTO `tbl_pesanan` (`id_pesanan`, `id_user`, `id_barang`, `ukuran`, `qty`, `kurir`, `date_in`, `total`) VALUES
(16, 4, 5, 'L', 1, 'JNE', '2018-01-01', 130000),
(17, 4, 6, 'M', 1, 'NINJA', '2018-01-01', 145000),
(19, 2, 9, 'M', 2, 'JNE', '2018-01-01', 270000),
(20, 3, 7, 'M', 2, 'NINJA', '2018-01-02', 260000),
(21, 5, 7, 'XL', 3, 'JNE', '2018-01-02', 390000),
(22, 5, 2, 'L', 2, 'SICEPAT', '2018-01-02', 270000);
-- --------------------------------------------------------
--
-- Table structure for table `tbl_users`
--
CREATE TABLE `tbl_users` (
  `id_user` int(100) NOT NULL,
  `nama_lengkap` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `username` varchar(6) NOT NULL,
  `password` varchar(6) NOT NULL,
  `alamat` varchar(50) NOT NULL,
  `no_hp` text NOT NULL,
  `title` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
--
-- Dumping data for table `tbl_users`
--
INSERT INTO `tbl_users` (`id_user`, `nama_lengkap`, `email`, `username`, `password`, `alamat`, `no_hp`, `title`) VALUES
(1, 'REGGIE INALAWIE', 'eggi3009@gmail.com', 'eggi', 'eggi', 'Jl.Mangga Jakarta Timur', '085155431533', 'admin'),
(2, 'Isyna Habibatul Jannah', 'isyna@gmail.com', 'ina', 'ina', 'Jl.Jambu BEKASI', '081232223124', 'user'),
(3, 'Putri Adelia', 'PUTRIADEL@gmail.com', 'adel', 'adel', 'Jl.Apel Jakarta', '085122455521', 'user'),
(4, 'Silvia Ambarwati', 'silviaambr@gmail.com', 'silvi', 'silvi', 'Jl.Semangka Jakarta Timur', '089525558991', 'user'),
(5, 'Yabes ', 'yabes1@gmail.com', 'yabes', 'yabes', 'Jl.Durian Depok', '089521214000', 'user');
--
-- Indexes for dumped tables
--
--
-- Indexes for table `tbl_barang`
--
ALTER TABLE `tbl_barang`
  ADD PRIMARY KEY (`id_barang`);
--
-- Indexes for table `tbl_keranjang`
--
ALTER TABLE `tbl_keranjang`
  ADD PRIMARY KEY (`id`);
--
-- Indexes for table `tbl_pesanan`
--
ALTER TABLE `tbl_pesanan`
  ADD PRIMARY KEY (`id_pesanan`);
--
-- Indexes for table `tbl_users`
--
ALTER TABLE `tbl_users`
  ADD PRIMARY KEY (`id_user`);
--
-- AUTO_INCREMENT for dumped tables
--
--
-- AUTO_INCREMENT for table `tbl_barang`
--
ALTER TABLE `tbl_barang`
  MODIFY `id_barang` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `tbl_keranjang`
--
ALTER TABLE `tbl_keranjang`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_pesanan`
--
ALTER TABLE `tbl_pesanan`
  MODIFY `id_pesanan` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT for table `tbl_users`
--
ALTER TABLE `tbl_users`
  MODIFY `id_user` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;COMMIT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;