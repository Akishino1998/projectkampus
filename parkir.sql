-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 31, 2019 at 05:04 AM
-- Server version: 10.1.36-MariaDB
-- PHP Version: 7.2.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `parkir`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_admin`
--

CREATE TABLE `tb_admin` (
  `id` varchar(30) NOT NULL,
  `id_tempat_parkir` varchar(30) DEFAULT NULL,
  `nama` varchar(255) DEFAULT NULL,
  `tempat_tinggal` varchar(255) DEFAULT NULL,
  `tanggal_lahir` varchar(255) DEFAULT NULL,
  `saldo` int(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tb_parkir_in`
--

CREATE TABLE `tb_parkir_in` (
  `id` int(255) NOT NULL,
  `no_stnk` int(255) DEFAULT NULL,
  `id_admin` varchar(30) DEFAULT NULL,
  `status` enum('Selesai','Tidak') DEFAULT 'Tidak',
  `waktu_masuk` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_parkir_in`
--

INSERT INTO `tb_parkir_in` (`id`, `no_stnk`, `id_admin`, `status`, `waktu_masuk`) VALUES
(5, 123456, NULL, 'Selesai', '2019-01-31 04:05:39'),
(11, 334164, NULL, 'Selesai', '2019-01-31 04:05:36'),
(12, 334164, NULL, 'Selesai', '2019-01-31 04:05:37'),
(13, 334164, NULL, 'Selesai', '2019-01-31 01:23:23');

-- --------------------------------------------------------

--
-- Table structure for table `tb_parkir_out`
--

CREATE TABLE `tb_parkir_out` (
  `id` int(30) NOT NULL,
  `id_in` int(30) DEFAULT NULL,
  `waktu_keluar` datetime DEFAULT NULL,
  `durasi` time DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_parkir_out`
--

INSERT INTO `tb_parkir_out` (`id`, `id_in`, `waktu_keluar`, `durasi`) VALUES
(2, 13, '2019-01-31 05:59:57', '04:36:34');

--
-- Triggers `tb_parkir_out`
--
DELIMITER $$
CREATE TRIGGER `tb_parkir_out_after_insert` AFTER INSERT ON `tb_parkir_out` FOR EACH ROW BEGIN
UPDATE tb_parkir_in
SET tb_parkir_in.status = "Selesai"
WHERE tb_parkir_in.id = NEW.id_in;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `tb_stnk`
--

CREATE TABLE `tb_stnk` (
  `no` int(30) NOT NULL,
  `no_polisi` varchar(255) DEFAULT NULL,
  `nama_pemilik` varchar(255) DEFAULT NULL,
  `alamat` varchar(255) DEFAULT NULL,
  `merktype` varchar(255) DEFAULT NULL,
  `jenis_model` varchar(255) DEFAULT NULL,
  `isi_silinder` varchar(255) DEFAULT NULL,
  `warna_kb` varchar(255) DEFAULT NULL,
  `no_rangka` varchar(255) DEFAULT NULL,
  `no_mesin` varchar(255) DEFAULT NULL,
  `no_bpkb` varchar(255) DEFAULT NULL,
  `berlaku_sampai` date DEFAULT NULL,
  `warna_tnkb` varchar(255) DEFAULT NULL,
  `bahan_bakar` varchar(255) DEFAULT NULL,
  `foto` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_stnk`
--

INSERT INTO `tb_stnk` (`no`, `no_polisi`, `nama_pemilik`, `alamat`, `merktype`, `jenis_model`, `isi_silinder`, `warna_kb`, `no_rangka`, `no_mesin`, `no_bpkb`, `berlaku_sampai`, `warna_tnkb`, `bahan_bakar`, `foto`) VALUES
(123456, 'KT BODONG ', 'FAI', 'BUKUAN', 'YAMAHA MIO', 'GEROBAK', '290', 'Coklat', '8H3IR08H', '083-OUBS9EUHF9', '9UHEF9W8EHF', '2019-01-30', 'coKLAT', 'AFTUR', 'motor.png'),
(298620, 'KT 2091 BB', 'Setio Aji', 'Jln Merbabu 2', 'jupiter z', 'Motor', '115', 'hitam', 'MH7475GF6475478', '31B-834652', 'I0978OYUY9', '2024-06-29', 'hitam', 'bensin', 'mobil.png'),
(334164, 'KT 5155 I', 'SUKRI', 'SURYANATA', 'HONDA BEAT', 'Motor', '115', 'Biru Putih', 'LJBOA9737NLJ', '812-392HOO', '08UJ3NJOFLB', '2019-01-30', 'Biru Putih', 'bensin', 'motor.png');

-- --------------------------------------------------------

--
-- Table structure for table `tb_tempat_parkir`
--

CREATE TABLE `tb_tempat_parkir` (
  `id` varchar(30) NOT NULL,
  `letak_tempat_parkir` varchar(255) DEFAULT NULL,
  `jumlah_tempat_motor` int(50) DEFAULT NULL,
  `jumlah_tempat_mobil` int(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_tempat_parkir`
--

INSERT INTO `tb_tempat_parkir` (`id`, `letak_tempat_parkir`, `jumlah_tempat_motor`, `jumlah_tempat_mobil`) VALUES
('P001', 'Jl Damai Indah', 50, 10);

-- --------------------------------------------------------

--
-- Table structure for table `tb_trans_non_tunai`
--

CREATE TABLE `tb_trans_non_tunai` (
  `id` int(30) NOT NULL,
  `id_out` int(30) DEFAULT NULL,
  `id_user` varchar(30) DEFAULT NULL,
  `total_bayar` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tb_trans_tunai`
--

CREATE TABLE `tb_trans_tunai` (
  `id` int(30) NOT NULL,
  `id_out` int(30) DEFAULT NULL,
  `total_bayar` int(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tb_user`
--

CREATE TABLE `tb_user` (
  `id` varchar(30) NOT NULL,
  `nama` varchar(255) DEFAULT NULL,
  `tempat_tinggal` varchar(255) DEFAULT NULL,
  `tanggal_lahir` date DEFAULT NULL,
  `saldo` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_user`
--

INSERT INTO `tb_user` (`id`, `nama`, `tempat_tinggal`, `tanggal_lahir`, `saldo`) VALUES
('U000', 'no_data', 'no_data', '0000-00-00', 0),
('U001', 'Saiful', 'jln Gotong', '2009-01-29', 200000);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_admin`
--
ALTER TABLE `tb_admin`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_tempat_parkir` (`id_tempat_parkir`);

--
-- Indexes for table `tb_parkir_in`
--
ALTER TABLE `tb_parkir_in`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tb_parkir_in_ibfk_1` (`no_stnk`),
  ADD KEY `id_admin` (`id_admin`);

--
-- Indexes for table `tb_parkir_out`
--
ALTER TABLE `tb_parkir_out`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_in` (`id_in`);

--
-- Indexes for table `tb_stnk`
--
ALTER TABLE `tb_stnk`
  ADD PRIMARY KEY (`no`);

--
-- Indexes for table `tb_tempat_parkir`
--
ALTER TABLE `tb_tempat_parkir`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_trans_non_tunai`
--
ALTER TABLE `tb_trans_non_tunai`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_out` (`id_out`),
  ADD KEY `id_user` (`id_user`);

--
-- Indexes for table `tb_trans_tunai`
--
ALTER TABLE `tb_trans_tunai`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_out` (`id_out`);

--
-- Indexes for table `tb_user`
--
ALTER TABLE `tb_user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_parkir_in`
--
ALTER TABLE `tb_parkir_in`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `tb_parkir_out`
--
ALTER TABLE `tb_parkir_out`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tb_trans_non_tunai`
--
ALTER TABLE `tb_trans_non_tunai`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tb_admin`
--
ALTER TABLE `tb_admin`
  ADD CONSTRAINT `tb_admin_ibfk_1` FOREIGN KEY (`id_tempat_parkir`) REFERENCES `tb_tempat_parkir` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tb_parkir_in`
--
ALTER TABLE `tb_parkir_in`
  ADD CONSTRAINT `tb_parkir_in_ibfk_1` FOREIGN KEY (`no_stnk`) REFERENCES `tb_stnk` (`no`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tb_parkir_in_ibfk_2` FOREIGN KEY (`id_admin`) REFERENCES `tb_admin` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tb_parkir_out`
--
ALTER TABLE `tb_parkir_out`
  ADD CONSTRAINT `tb_parkir_out_ibfk_1` FOREIGN KEY (`id_in`) REFERENCES `tb_parkir_in` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tb_trans_non_tunai`
--
ALTER TABLE `tb_trans_non_tunai`
  ADD CONSTRAINT `tb_trans_non_tunai_ibfk_1` FOREIGN KEY (`id_out`) REFERENCES `tb_parkir_out` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tb_trans_non_tunai_ibfk_2` FOREIGN KEY (`id_user`) REFERENCES `tb_user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tb_trans_tunai`
--
ALTER TABLE `tb_trans_tunai`
  ADD CONSTRAINT `tb_trans_tunai_ibfk_1` FOREIGN KEY (`id_out`) REFERENCES `tb_parkir_out` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
