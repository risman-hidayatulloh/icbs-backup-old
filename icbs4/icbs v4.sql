-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 09, 2018 at 10:38 AM
-- Server version: 10.1.32-MariaDB
-- PHP Version: 7.2.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `icbs`
--

-- --------------------------------------------------------

--
-- Table structure for table `tabel_menu`
--

CREATE TABLE `tabel_menu` (
  `id` int(11) NOT NULL,
  `nama_menu` varchar(50) NOT NULL,
  `link` varchar(50) NOT NULL,
  `icon` varchar(30) NOT NULL,
  `is_main_menu` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tabel_menu`
--

INSERT INTO `tabel_menu` (`id`, `nama_menu`, `link`, `icon`, `is_main_menu`) VALUES
(1, 'Data Santri', 'siswa', 'fa fa-users', 0),
(2, 'Database Santri', 'guru', 'fa fa-graduation-cap', 0),
(8, 'data sekolah', 'sekolah', 'fa fa-building', 0),
(9, 'Data master', '#', 'fa fa-bars', 0),
(10, 'Mata Pelajaran', 'mapel', 'fa fa-book', 9),
(11, 'Ruangan Kelas', 'ruangan', 'fa fa-building', 9),
(12, 'Jurusan', 'jurusan', 'fa fa-th-large', 9),
(13, 'Tahun Akademik', 'tahunakademik', 'fa fa-calendar-o', 9),
(14, 'Jadwal pelajaran', 'jadwal', 'fa fa-calendar', 0),
(15, 'Rombongan Belajar', 'rombel', 'fa fa-users', 9),
(16, 'laporan nilai', 'nilai', 'fa fa-file-excel-o', 0),
(17, 'Pengguna sistem', 'users', 'fa fa-cubes', 0),
(19, 'Kurikulum', 'kurikulum', 'fa fa-newspaper-o', 9),
(20, 'Wali Kelas', 'walikelas', 'fa fa-users', 0),
(21, 'form pembayaran', 'keuangan/form', 'fa fa-shopping-cart', 0),
(22, 'Peserta Didik', 'siswa/siswa_aktif', 'fa fa-graduation-cap', 0),
(23, 'Kategori', 'jenis_pembayaran', 'fa fa-credit-card', 35),
(24, 'Biaya pengeluaran', 'keuangan/setup', 'fa fa-graduation-cap', 35),
(25, 'Raport Online', 'raport', 'fa fa-graduation-cap', 0),
(26, 'SMS GATEWAY', 'sms', 'fa fa-envelope-o', 0),
(27, 'phonebook', 'sms_group', 'fa fa-book', 26),
(28, 'form sms', 'sms', 'fa fa-keyboard-o', 26),
(29, 'Pembayaran Santri', 'keuangan', 'fa fa-desktop', 37),
(30, 'Laporan', 'keuangan', 'fa fa-desktop', 0),
(31, 'Penerimaan', 'jenis_pembayaran', 'fa fa-credit-card', 0),
(32, 'Kategori', 'jenis_pemasukan', 'fa fa-credit-card', 36),
(33, 'Biaya Pemasukan', 'keuangan2/setup', 'fa fa-graduation-cap', 36),
(34, 'Pengeluaran Sekolah', 'keuangan2', 'fa fa-desktop', 37),
(35, 'Data Pengeluaran', '#', 'fa fa-database', 0),
(36, 'Data Pemasukan', '#', 'fa fa-database', 0),
(37, 'Laporan Sekolah', '#', 'fa fa-book', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_agama`
--

CREATE TABLE `tbl_agama` (
  `kd_agama` varchar(2) NOT NULL,
  `nama_agama` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_agama`
--

INSERT INTO `tbl_agama` (`kd_agama`, `nama_agama`) VALUES
('01', 'ISLAM'),
('02', 'KRISTEN/ PROTESTAN'),
('03', 'KATHOLIK'),
('04', 'HINDU'),
('05', 'BUDHA'),
('06', 'KHONG HU CHU'),
('99', 'LAIN LAIN');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_biaya_pemasukan`
--

CREATE TABLE `tbl_biaya_pemasukan` (
  `id_biaya` int(11) NOT NULL,
  `id_jenis_pemasukan` int(11) NOT NULL,
  `id_tahun_akademik` int(11) NOT NULL,
  `jumlah_biaya` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_biaya_pemasukan`
--

INSERT INTO `tbl_biaya_pemasukan` (`id_biaya`, `id_jenis_pemasukan`, `id_tahun_akademik`, `jumlah_biaya`) VALUES
(1, 1, 1, 50000000),
(2, 2, 1, 50000000),
(3, 3, 1, 150000),
(4, 4, 1, 150000);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_biaya_sekolah`
--

CREATE TABLE `tbl_biaya_sekolah` (
  `id_biaya` int(11) NOT NULL,
  `id_jenis_pembayaran` int(11) NOT NULL,
  `id_tahun_akademik` int(11) NOT NULL,
  `jumlah_biaya` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_biaya_sekolah`
--

INSERT INTO `tbl_biaya_sekolah` (`id_biaya`, `id_jenis_pembayaran`, `id_tahun_akademik`, `jumlah_biaya`) VALUES
(3, 1, 1, 200000),
(5, 3, 1, 200000),
(6, 4, 1, 200000),
(7, 5, 1, 200000),
(9, 7, 1, 100000),
(10, 8, 1, 50000),
(11, 9, 1, 100000),
(12, 10, 1, 50000),
(13, 11, 1, 1000000),
(14, 12, 1, 1000000);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_guru`
--

CREATE TABLE `tbl_guru` (
  `id_guru` int(11) NOT NULL,
  `nuptk` varchar(16) NOT NULL,
  `nama_guru` varchar(30) NOT NULL,
  `gender` enum('p','w') NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_guru`
--

INSERT INTO `tbl_guru` (`id_guru`, `nuptk`, `nama_guru`, `gender`, `username`, `password`) VALUES
(4, '3434343232323', 'syamsuddin', 'p', 'udin123', '3af4c9341e31bce1f4262a326285170d'),
(6, '1602474', 'Santri R', 'p', 'santri1', '4e763ac7b643fb7d127770690086d6d7');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_history_kelas`
--

CREATE TABLE `tbl_history_kelas` (
  `id_history` int(11) NOT NULL,
  `id_rombel` int(11) NOT NULL,
  `nim` varchar(11) NOT NULL,
  `id_tahun_akademik` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_history_kelas`
--

INSERT INTO `tbl_history_kelas` (`id_history`, `id_rombel`, `nim`, `id_tahun_akademik`) VALUES
(1, 1, 'TI3003239', 1),
(2, 1, 'RM00502', 1),
(3, 1, 'TI102132', 1),
(4, 1, 'TI102133', 1),
(5, 1, 'TIM102134', 1),
(6, 1, 'TIM102135', 1),
(7, 1, 'TI1021395', 1),
(8, 2, '1602474', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_jadwal`
--

CREATE TABLE `tbl_jadwal` (
  `id_jadwal` int(11) NOT NULL,
  `id_tahun_akademik` int(11) NOT NULL,
  `kd_jurusan` varchar(6) NOT NULL,
  `kelas` int(11) NOT NULL,
  `kd_mapel` varchar(4) NOT NULL,
  `id_guru` int(11) NOT NULL,
  `jam` varchar(14) NOT NULL,
  `kd_ruangan` varchar(4) NOT NULL,
  `semester` int(11) NOT NULL,
  `hari` varchar(10) NOT NULL,
  `id_rombel` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_jadwal`
--

INSERT INTO `tbl_jadwal` (`id_jadwal`, `id_tahun_akademik`, `kd_jurusan`, `kelas`, `kd_mapel`, `id_guru`, `jam`, `kd_ruangan`, `semester`, `hari`, `id_rombel`) VALUES
(13, 1, 'RPL', 1, 'MTK', 6, '08.00 - 08.45', '01B', 1, 'SELASA', 1),
(14, 1, 'RPL', 1, 'MTK', 2, '', '01B', 1, '', 2),
(15, 1, 'RPL', 1, 'BID', 2, '09.30 - 10.00', '01A', 1, 'RABU', 1),
(16, 1, 'RPL', 1, 'BID', 2, '', '011', 1, '', 2),
(17, 1, 'RPL', 1, 'IPA', 4, '10.00 - 10.45', '01B', 1, 'JUMAT', 1),
(18, 1, 'RPL', 1, 'IPA', 2, '', '011', 1, '', 2),
(19, 1, 'RPL', 1, 'MTK', 2, '', '011', 1, '', 1),
(20, 1, 'RPL', 1, 'MTK', 2, '', '011', 1, '', 2),
(21, 1, 'RPL', 1, 'BID', 2, '', '011', 1, '', 1),
(22, 1, 'RPL', 1, 'BID', 2, '', '011', 1, '', 2),
(23, 1, 'RPL', 1, 'IPA', 2, '', '011', 1, '', 1),
(24, 1, 'RPL', 1, 'IPA', 2, '', '011', 1, '', 2),
(25, 1, 'RPL', 1, 'MTK', 2, '', '011', 1, '', 1),
(26, 1, 'RPL', 1, 'MTK', 2, '', '011', 1, '', 2),
(27, 1, 'RPL', 1, 'BID', 2, '', '011', 1, '', 1),
(28, 1, 'RPL', 1, 'BID', 2, '', '011', 1, '', 2),
(29, 1, 'RPL', 1, 'IPA', 2, '', '011', 1, '', 1),
(30, 1, 'RPL', 1, 'IPA', 2, '', '011', 1, '', 2);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_jenis_pemasukan`
--

CREATE TABLE `tbl_jenis_pemasukan` (
  `id_jenis_pemasukan` int(11) NOT NULL,
  `nama_jenis_pemasukan` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_jenis_pemasukan`
--

INSERT INTO `tbl_jenis_pemasukan` (`id_jenis_pemasukan`, `nama_jenis_pemasukan`) VALUES
(1, 'Santri 50 orang Tahun 2017'),
(2, 'Santri 50 orang Tahun 2018'),
(3, 'SPP bulan Januari'),
(4, 'SPP bulan Febuari');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_jenis_pembayaran`
--

CREATE TABLE `tbl_jenis_pembayaran` (
  `id_jenis_pembayaran` int(11) NOT NULL,
  `nama_jenis_pembayaran` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_jenis_pembayaran`
--

INSERT INTO `tbl_jenis_pembayaran` (`id_jenis_pembayaran`, `nama_jenis_pembayaran`) VALUES
(7, 'Akademik'),
(8, 'Sarpras'),
(9, 'Daya dan Jasa'),
(10, 'Catering'),
(11, 'Umum'),
(12, 'Tabungan Siswa');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_jenjang_sekolah`
--

CREATE TABLE `tbl_jenjang_sekolah` (
  `id_jenjang` int(11) NOT NULL,
  `nama_jenjang` varchar(10) NOT NULL,
  `jumlah_kelas` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_jenjang_sekolah`
--

INSERT INTO `tbl_jenjang_sekolah` (`id_jenjang`, `nama_jenjang`, `jumlah_kelas`) VALUES
(1, 'SD/ MI', 6),
(2, 'SMP/ MTS', 3),
(3, 'SMA/ SMK', 3);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_jurusan`
--

CREATE TABLE `tbl_jurusan` (
  `kd_jurusan` varchar(4) NOT NULL,
  `nama_jurusan` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_jurusan`
--

INSERT INTO `tbl_jurusan` (`kd_jurusan`, `nama_jurusan`) VALUES
('RPL', 'REKAYASA PERANGKAT LUNAK');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_kelompok_mapel`
--

CREATE TABLE `tbl_kelompok_mapel` (
  `id_kelompok_mapel` int(11) NOT NULL,
  `nama_kelompok` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_kelompok_mapel`
--

INSERT INTO `tbl_kelompok_mapel` (`id_kelompok_mapel`, `nama_kelompok`) VALUES
(1, 'Kelompok Wajib A'),
(2, 'Kelompok Wajib B'),
(3, 'Kelompok Wajib C'),
(4, 'Permintaan');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_kurikulum`
--

CREATE TABLE `tbl_kurikulum` (
  `id_kurikulum` int(11) NOT NULL,
  `nama_kurikulum` varchar(30) NOT NULL,
  `is_aktif` enum('y','n') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_kurikulum`
--

INSERT INTO `tbl_kurikulum` (`id_kurikulum`, `nama_kurikulum`, `is_aktif`) VALUES
(1, 'KURIKULUM 2016', 'y'),
(2, 'KURIKULUM 2013', 'n');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_kurikulum_detail`
--

CREATE TABLE `tbl_kurikulum_detail` (
  `id_kurikulum_detail` int(11) NOT NULL,
  `id_kurikulum` int(11) NOT NULL,
  `kd_mapel` varchar(11) NOT NULL,
  `kd_jurusan` varchar(4) NOT NULL,
  `kelas` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_kurikulum_detail`
--

INSERT INTO `tbl_kurikulum_detail` (`id_kurikulum_detail`, `id_kurikulum`, `kd_mapel`, `kd_jurusan`, `kelas`) VALUES
(9, 1, 'MTK', 'RPL', 1),
(10, 1, 'BID', 'RPL', 1),
(12, 1, 'IPA', 'RPL', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_level_user`
--

CREATE TABLE `tbl_level_user` (
  `id_level_user` int(11) NOT NULL,
  `nama_level` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_level_user`
--

INSERT INTO `tbl_level_user` (`id_level_user`, `nama_level`) VALUES
(0, ''),
(1, 'Admin'),
(2, 'Walikelas'),
(3, 'Guru'),
(4, 'Programmer'),
(5, 'Keuangan'),
(6, 'Sekolah'),
(7, 'Santri');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_mapel`
--

CREATE TABLE `tbl_mapel` (
  `kd_mapel` varchar(4) NOT NULL,
  `nama_mapel` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_mapel`
--

INSERT INTO `tbl_mapel` (`kd_mapel`, `nama_mapel`) VALUES
('BID', 'BAHASA INDONESIA'),
('IPA', 'ILMU PENGETAHUAN ALAM'),
('IPS', 'ILMU PENGETAHUAN SOSIAL'),
('MTK', 'MATEMATIKA'),
('TIK', 'TEKNOLOGI INFORMASI KOMPUTER');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_nilai`
--

CREATE TABLE `tbl_nilai` (
  `id_nilai` int(11) NOT NULL,
  `id_jadwal` int(11) NOT NULL,
  `nim` varchar(15) NOT NULL,
  `nilai` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_nilai`
--

INSERT INTO `tbl_nilai` (`id_nilai`, `id_jadwal`, `nim`, `nilai`) VALUES
(1, 13, 'TI3003239', 100),
(2, 13, 'RM00502', 89),
(3, 13, 'TI102132', 89),
(4, 13, 'TI102133', 78),
(5, 13, 'TIM102134', 67),
(6, 13, 'TIM102135', 98),
(7, 13, 'TI1021395', 60),
(8, 17, 'TI3003239', 90),
(9, 17, 'RM00502', 87),
(10, 17, 'TI102132', 89),
(11, 17, 'TI102133', 99),
(12, 17, 'TIM102134', 90),
(13, 17, 'TIM102135', 86),
(14, 17, 'TI1021395', 89);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_pemasukan`
--

CREATE TABLE `tbl_pemasukan` (
  `id_pemasukan` int(11) NOT NULL,
  `tanggal` date NOT NULL,
  `nim` varchar(255) NOT NULL,
  `id_jenis_pemasukan` int(11) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `keterangan` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_pemasukan`
--

INSERT INTO `tbl_pemasukan` (`id_pemasukan`, `tanggal`, `nim`, `id_jenis_pemasukan`, `jumlah`, `keterangan`) VALUES
(1, '2018-08-09', '', 1, 50000000, 'Lunas');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_pembayaran`
--

CREATE TABLE `tbl_pembayaran` (
  `id_pembayaran` int(11) NOT NULL,
  `tanggal` date NOT NULL,
  `nim` varchar(13) NOT NULL,
  `id_jenis_pembayaran` int(11) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `keterangan` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_pembayaran`
--

INSERT INTO `tbl_pembayaran` (`id_pembayaran`, `tanggal`, `nim`, `id_jenis_pembayaran`, `jumlah`, `keterangan`) VALUES
(1, '2017-03-02', 'ti102132', 1, 100000, 'tidak ada'),
(2, '2017-03-02', 'ti102132', 1, 100000, 'tidak ada'),
(16, '2018-08-08', '1602474', 3, 500, ''),
(17, '2018-08-08', '1602474', 1, 200000, 'sudah lunas');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_phonebook`
--

CREATE TABLE `tbl_phonebook` (
  `id_phonebook` int(11) NOT NULL,
  `id_group` int(11) NOT NULL,
  `no_hp` varchar(13) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_phonebook`
--

INSERT INTO `tbl_phonebook` (`id_phonebook`, `id_group`, `no_hp`) VALUES
(1, 7, '089699935552'),
(2, 7, '085310204081');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_rombel`
--

CREATE TABLE `tbl_rombel` (
  `id_rombel` int(11) NOT NULL,
  `nama_rombel` varchar(30) NOT NULL,
  `kelas` int(11) NOT NULL,
  `kd_jurusan` varchar(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_rombel`
--

INSERT INTO `tbl_rombel` (`id_rombel`, `nama_rombel`, `kelas`, `kd_jurusan`) VALUES
(1, 'RPL 1A', 1, 'RPL'),
(2, 'RPL 1B', 1, 'RPL'),
(6, 'TKJ 1A', 1, 'TKJ'),
(7, 'TKJ 1B', 1, 'TKJ');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_ruangan`
--

CREATE TABLE `tbl_ruangan` (
  `kd_ruangan` varchar(4) NOT NULL,
  `nama_ruangan` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_ruangan`
--

INSERT INTO `tbl_ruangan` (`kd_ruangan`, `nama_ruangan`) VALUES
('011', 'DEFAULT'),
('01A', 'RUANGAN KELAS 1 A'),
('01B', 'RUANGAN KELAS 1B'),
('01C', 'RUANGAN KELAS 1 C');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_sekolah_info`
--

CREATE TABLE `tbl_sekolah_info` (
  `id_sekolah` int(11) NOT NULL,
  `nama_sekolah` varchar(30) NOT NULL,
  `id_jenjang_sekolah` int(11) NOT NULL,
  `alamat_sekolah` text NOT NULL,
  `email` varchar(30) NOT NULL,
  `telpon` varchar(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_sekolah_info`
--

INSERT INTO `tbl_sekolah_info` (`id_sekolah`, `nama_sekolah`, `id_jenjang_sekolah`, `alamat_sekolah`, `email`, `telpon`) VALUES
(1, 'SMK N 2 LANGSA', 2, 'JL AHMAD YANI NO 2, DESA PAYA BUJOK SELEUMAK, KOTA LANGSA - ACEH', 'smkn2langsa@sch.id', '02134235');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_siswa`
--

CREATE TABLE `tbl_siswa` (
  `nim` varchar(11) NOT NULL,
  `nama` varchar(40) NOT NULL,
  `gender` enum('P','W') NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `tempat_lahir` varchar(30) NOT NULL,
  `kd_agama` varchar(2) NOT NULL,
  `foto` text NOT NULL,
  `id_rombel` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_siswa`
--

INSERT INTO `tbl_siswa` (`nim`, `nama`, `gender`, `tanggal_lahir`, `tempat_lahir`, `kd_agama`, `foto`, `id_rombel`) VALUES
('1602474', 'Risman', 'P', '1997-10-28', 'Garut', '01', 'programmer1.png', 2),
('1602475', 'Sulaiman Rasyid', 'P', '1997-01-01', 'Kabupaten Bogor', '01', 'user-siluet.jpg', 1),
('1602476', 'K.H. Gholib', 'P', '1997-02-02', 'Kabupaten Sukabumi', '01', 'user-siluet.jpg', 1),
('1602477', 'Rais Latief', 'P', '1997-03-06', 'Kabupaten Cianjur', '01', 'user-siluet.jpg', 1),
('1602478', 'Raden Aria Taher Tjindarboemi', 'P', '1997-04-07', 'Kabupaten Bandung', '01', 'user-siluet.jpg', 1),
('1602479', 'Raden Mohamad Mangoendiprodjo', 'P', '1997-05-09', 'Kabupaten Garut', '01', 'user-siluet.jpg', 1),
('1602480', 'Abdoel Moeloek', 'P', '1997-06-10', 'Kabupaten Tasikmalaya', '01', 'user-siluet.jpg', 1),
('1602481', 'Gele Harun Nasution', 'P', '1997-07-12', 'Kabupaten Ciamis', '01', 'user-siluet.jpg', 1),
('1602482', 'Zainal Abidin Pagar Alam', 'P', '1997-08-13', 'Kabupaten Kuningan', '01', 'user-siluet.jpg', 1),
('1602483', 'Achmad Bakrie', 'P', '1997-09-14', 'Kabupaten Cirebon', '01', 'user-siluet.jpg', 1),
('1602484', 'Tan Seng Beng', 'P', '1997-10-16', 'Kabupaten Majalengka', '01', 'user-siluet.jpg', 1),
('1602485', 'Zulkifli Warganegara', 'P', '1997-11-17', 'Kabupaten Sumedang', '01', 'user-siluet.jpg', 1),
('1602486', 'Bhiksu Ashin Jinarakkhita', 'P', '1997-12-19', 'Kabupaten Indramayu', '01', 'user-siluet.jpg', 1),
('1602487', 'Yasir Hadibrot', 'P', '1998-01-20', 'Kabupaten Subang', '01', 'user-siluet.jpg', 2),
('1602488', 'Mussanif Ryacudu', 'P', '1998-02-21', 'Kabupaten Purwakarta', '01', 'user-siluet.jpg', 2),
('1602489', 'Noerdin Pandji', 'P', '1998-03-25', 'Kabupaten Karawang', '01', 'user-siluet.jpg', 2),
('1602490', 'Alamsyah Ratuprawiranegara', 'P', '1998-04-26', 'Kabupaten Bekasi', '01', 'user-siluet.jpg', 2),
('1602491', 'Muhammad Arief Mahya', 'P', '1998-05-28', 'Kabupaten Bandung', '01', 'user-siluet.jpg', 2),
('1602492', 'Abdul Haq', 'P', '1998-06-29', 'Kabupaten Pangandaran', '01', 'user-siluet.jpg', 2),
('1602493', 'Darius Silitong', 'P', '1998-07-31', 'Kota Bogor', '01', 'user-siluet.jpg', 2),
('1602494', 'Hilman Hadikusuma', 'P', '1998-09-01', 'Kota Sukabumi', '01', 'user-siluet.jpg', 2),
('1602495', 'Ahmad Sodiq', 'P', '1998-10-03', 'Kota Bandung', '01', 'user-siluet.jpg', 2),
('1602496', 'Raja Akum Ginting', 'P', '1998-11-04', 'Kota Cirebon', '01', 'user-siluet.jpg', 2),
('1602497', 'Nadirsyah Zaini', 'P', '1998-12-06', 'Kota Bekasi', '01', 'user-siluet.jpg', 2),
('1602498', 'Solfian Akhmad', 'P', '1999-01-07', 'Kota Depok', '01', 'user-siluet.jpg', 1),
('1602499', 'Masnuna', 'P', '1999-02-08', 'Kota Cimahi', '01', 'user-siluet.jpg', 1),
('1602500', 'Mochtar Hasan', 'P', '1999-03-12', 'Kota Tasikmalaya', '01', 'user-siluet.jpg', 1),
('1602501', 'Djafar Husin Assegaff', 'P', '1999-04-13', 'Kabupaten Pacitan', '01', 'user-siluet.jpg', 1),
('1602502', 'Bob Sadino ', 'P', '1999-05-15', 'Kabupaten Ponorogo', '01', 'user-siluet.jpg', 1),
('1602503', 'Marjoeni Warganegara', 'P', '1999-06-16', 'Kabupaten Trenggalek', '01', 'user-siluet.jpg', 1),
('1602504', 'Sitanala Arsyad', 'P', '1999-07-18', 'Kabupaten Tulungagung', '01', 'user-siluet.jpg', 1),
('1602505', 'Alfian Husin', 'P', '1999-08-19', 'Kabupaten Blitar', '01', 'user-siluet.jpg', 1),
('1602506', 'Andreas Hendrisoesanto', 'P', '1999-09-20', 'Kabupaten Kediri', '01', 'user-siluet.jpg', 1),
('1602507', 'Poedjono Pranyoto', 'P', '1999-10-22', 'Kabupaten Malang', '01', 'user-siluet.jpg', 1),
('1602508', 'Motinggo Busye', 'P', '1999-11-23', 'Kabupaten Lumajang', '01', 'user-siluet.jpg', 1),
('1602509', 'Rya Makbul Barusman', 'P', '1999-12-25', 'Kabupaten Jember', '01', 'user-siluet.jpg', 1),
('1602510', 'Aisyah Yakub', 'P', '2000-01-26', 'Kabupaten Banyuwangi', '01', 'user-siluet.jpg', 2),
('1602511', 'Marzuli Warganegara', 'P', '2000-02-27', 'Kabupaten Bondowoso', '01', 'user-siluet.jpg', 2),
('1602512', 'Saodah Batin Akuan Sjahruddin', 'P', '2000-03-30', 'Kabupaten Situbondo', '01', 'user-siluet.jpg', 2),
('1602513', 'Ida Mustika Zaini', 'P', '2000-05-01', 'Kabupaten Probolinggo', '01', 'user-siluet.jpg', 2),
('1602514', 'Alhusniduki Hamim', 'P', '2000-06-02', 'Kabupaten Pasuruan', '01', 'user-siluet.jpg', 2),
('1602515', 'Oemarsono', 'P', '2000-07-04', 'Kabupaten Sidoarjo', '01', 'user-siluet.jpg', 2),
('1602516', 'Abdul Jamil', 'P', '2000-08-05', 'Kabupaten Mojokerto', '01', 'user-siluet.jpg', 2),
('1602517', 'Bagir Manan', 'P', '2000-09-06', 'Kabupaten Jombang', '01', 'user-siluet.jpg', 2),
('1602518', 'Awet Abadi', 'P', '2000-10-08', 'Kabupaten Nganjuk', '01', 'user-siluet.jpg', 2),
('1602519', 'Namuri Anoem Sebiay', 'P', '2000-11-09', 'Kabupaten Madiun', '01', 'user-siluet.jpg', 2),
('1602520', 'Imron Rosadi', 'P', '2000-12-11', 'Kabupaten Magetan', '01', 'user-siluet.jpg', 2),
('1602521', 'Farid Anfasa Moeloek', 'P', '2001-01-12', 'Kabupaten Ngawi', '01', 'user-siluet.jpg', 1),
('1602522', 'Sazli Rais', 'P', '2001-02-13', 'Kabupaten Bojonegoro', '01', 'user-siluet.jpg', 1),
('1602523', 'Alirahman', 'P', '2001-03-17', 'Kabupaten Tuban', '01', 'user-siluet.jpg', 1),
('1602524', 'Usman Admadjaja', 'P', '2001-04-18', 'Kabupaten Lamongan', '01', 'user-siluet.jpg', 1),
('1602525', 'Bambang Eka Wijaya', 'P', '2001-05-20', 'Kabupaten Gresik', '01', 'user-siluet.jpg', 1),
('1602526', 'Aburizal Bakrie', 'P', '2001-06-21', 'Kabupaten Bangkalan', '01', 'user-siluet.jpg', 1),
('1602527', 'Srie Atidah', 'P', '2001-07-23', 'Kabupaten Sampang', '01', 'user-siluet.jpg', 1),
('1602528', 'Tirza Hanum', 'P', '2001-08-24', 'Kabupaten Pamekasan', '01', 'user-siluet.jpg', 1),
('1602529', 'Sjachroedin Z.P.', 'P', '2001-09-25', 'Kabupaten Sumenep', '01', 'user-siluet.jpg', 1),
('1602530', 'Moch. Sofyan Jacoeb', 'P', '2001-10-27', 'Kota Kediri', '01', 'user-siluet.jpg', 1),
('1602531', 'Andy Achmad Sampurna Jaya', 'P', '2001-11-28', 'Kota Blitar', '01', 'user-siluet.jpg', 1),
('1602532', 'M. Fauzi Toha', 'P', '2001-12-30', 'Kota Malang', '01', 'user-siluet.jpg', 1),
('1602533', 'Ryamizard Ryacudu', 'P', '2002-01-31', 'Kota Probolinggo', '01', 'user-siluet.jpg', 2),
('1602534', 'Muhajir Utomo', 'P', '2002-03-04', 'Kota Pasuruan', '01', 'user-siluet.jpg', 2),
('1602535', 'Kausar Ali Saleh', 'P', '2002-04-05', 'Kota Mojokerto', '01', 'user-siluet.jpg', 2),
('1602536', 'Tursandi Alwi', 'P', '2002-05-07', 'Kota Madiun', '01', 'user-siluet.jpg', 2),
('1602537', 'Nasir Tamara', 'P', '2002-06-08', 'Kota Surabaya', '01', 'user-siluet.jpg', 2),
('1602538', 'Jusni Sofyan', 'P', '2002-07-10', 'Kota Batu', '01', 'user-siluet.jpg', 2),
('1602539', 'Mawardi Harirama', 'P', '2002-08-11', 'Kabupaten Cilacap', '01', 'user-siluet.jpg', 2),
('1602540', 'Herawati Soekardi', 'P', '2002-09-12', 'Kabupaten Banyumas', '01', 'user-siluet.jpg', 2),
('1602541', 'Surono Danu', 'P', '2002-10-14', 'Kabupaten Purbalingga', '01', 'user-siluet.jpg', 2),
('1602542', 'Anshori Djausal', 'P', '2002-11-15', 'Kabupaten Banjarnegara', '01', 'user-siluet.jpg', 2),
('1602543', 'Sugiri Syarief', 'P', '2002-12-17', 'Kabupaten Kebumen', '01', 'user-siluet.jpg', 2),
('1602544', 'Firman Gani', 'P', '2003-01-18', 'Kabupaten Purworejo', '01', 'user-siluet.jpg', 1),
('1602545', 'Nadjib Riphat Kesoema', 'P', '2003-02-19', 'Kabupaten Wonosobo', '01', 'user-siluet.jpg', 1),
('1602546', 'Satono', 'P', '2003-03-23', 'Kabupaten Magelang', '01', 'user-siluet.jpg', 1),
('1602547', 'Syahnagra Ismail', 'P', '2003-04-24', 'Kabupaten Boyolali', '01', 'user-siluet.jpg', 1),
('1602548', 'Sugiarto Wihardja', 'P', '2003-05-26', 'Kabupaten Klaten', '01', 'user-siluet.jpg', 1),
('1602549', 'Sapta Nirwandar', 'P', '2003-06-27', 'Kabupaten Sukoharjo', '01', 'user-siluet.jpg', 1),
('1602550', 'Gunawan Yusuf', 'P', '2003-07-29', 'Kabupaten Wonogiri', '01', 'user-siluet.jpg', 1),
('1602551', 'Henry Yosodiningrat', 'P', '2003-08-30', 'Kabupaten Karanganyar', '01', 'user-siluet.jpg', 1),
('1602552', 'Aan Ibrahim', 'P', '2003-10-01', 'Kabupaten Sragen', '01', 'user-siluet.jpg', 1),
('1602553', 'Zulkifli Anwar', 'P', '2003-11-02', 'Kabupaten Grobogan', '01', 'user-siluet.jpg', 1),
('1602554', 'Nasrullah Yusuf', 'P', '2003-12-04', 'Kabupaten Blora', '01', 'user-siluet.jpg', 1),
('1602555', 'Syamsurya Ryacudu', 'P', '2004-01-05', 'Kabupaten Rembang', '01', 'user-siluet.jpg', 2),
('1602556', 'Siti Nurbaya', 'P', '2004-02-06', 'Kabupaten Pati', '01', 'user-siluet.jpg', 2),
('1602557', 'Alzier Dianis Thabranie', 'P', '2004-03-09', 'Kabupaten Kudus', '01', 'user-siluet.jpg', 2),
('1602558', 'Carunia Mulya Firdausy', 'P', '2004-04-10', 'Kabupaten Jepara', '01', 'user-siluet.jpg', 2),
('1602559', 'Erward Syah Pernong', 'P', '2004-05-12', 'Kabupaten Demak', '01', 'user-siluet.jpg', 2),
('1602560', 'Isbedy Stiawan ZS', 'P', '2004-06-13', 'Kabupaten Semarang', '01', 'user-siluet.jpg', 2),
('1602561', 'Lincolin Arsyad', 'P', '2004-07-15', 'Kabupaten Temanggung', '01', 'user-siluet.jpg', 2),
('1602562', 'Hari Widianto Jayaningrat', 'P', '2004-08-16', 'Kabupaten Kendal', '01', 'user-siluet.jpg', 2),
('1602563', 'Iwan Nurdaya Djafar', 'P', '2004-09-17', 'Kabupaten Batang', '01', 'user-siluet.jpg', 2),
('1602564', 'Syafruddin Arsyad Temenggung', 'P', '2004-10-19', 'Kabupaten Pekalongan', '01', 'user-siluet.jpg', 2),
('1602565', 'Purdi E. Chandra', 'P', '2004-11-20', 'Kabupaten Pemalang', '01', 'user-siluet.jpg', 2),
('1602566', 'Rio Mendung Thalieb', 'P', '2004-12-22', 'Kabupaten Tegal', '01', 'user-siluet.jpg', 2),
('1602567', 'Zulkifli Hasan', 'P', '2005-01-23', 'Kabupaten Brebes', '01', 'user-siluet.jpg', 1),
('1602568', 'Hamid Basyaib', 'P', '2005-02-24', 'Kota Magelang', '01', 'user-siluet.jpg', 1),
('1602569', 'Sri Mulyani Indrawati', 'P', '2005-03-28', 'Kota Surakarta', '01', 'user-siluet.jpg', 1),
('1602570', 'Bustanul Arifin', 'P', '2005-04-29', 'Kota Salatiga', '01', 'user-siluet.jpg', 1),
('1602571', 'Aria Kesumadewa', 'P', '2005-05-31', 'Kota Semarang', '01', 'user-siluet.jpg', 1),
('1602572', 'Almuzammil Yusuf ', 'P', '2005-07-02', 'Kota Pekalongan', '01', 'user-siluet.jpg', 1),
('1602573', 'Andi Nurpati', 'P', '2005-08-03', 'Kota Tegal', '01', 'user-siluet.jpg', 1),
('1602574', 'Rahmad Darmawan', 'P', '2005-09-04', 'Kota Garut', '01', 'user-siluet.jpg', 1),
('RM00502', 'SAFIKAH KAMAL', 'P', '2017-01-23', 'BANDA ACEH', '02', '', 1),
('TI102132', 'NURIS AKBAR', 'P', '2017-01-22', 'LANGSA', '01', '', 1),
('TI102133', 'M HAFIDZ MUZAKI', 'P', '2017-01-16', 'LANGSA', '01', '', 1),
('TIM102134', 'DESI HANDAYANI', 'W', '2017-01-22', 'RANGKASBITUNG', '01', '', 1),
('TIM102135', 'IRMA MULIANA', 'W', '2017-01-25', 'LANGSA', '01', '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_sms_group`
--

CREATE TABLE `tbl_sms_group` (
  `id` int(11) NOT NULL,
  `nama_group` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_sms_group`
--

INSERT INTO `tbl_sms_group` (`id`, `nama_group`) VALUES
(1, 'group 1'),
(2, 'group 2'),
(4, 'asasas'),
(5, 'testing'),
(7, 'walimurid');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_tahun_akademik`
--

CREATE TABLE `tbl_tahun_akademik` (
  `id_tahun_akademik` int(4) NOT NULL,
  `tahun_akademik` varchar(10) NOT NULL,
  `is_aktif` enum('y','n') NOT NULL,
  `semester_aktif` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_tahun_akademik`
--

INSERT INTO `tbl_tahun_akademik` (`id_tahun_akademik`, `tahun_akademik`, `is_aktif`, `semester_aktif`) VALUES
(1, '2016/ 2017', 'y', 1),
(2, '2015/2016', 'n', 0),
(6, '2017/2018', 'n', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE `tbl_user` (
  `id_user` int(11) NOT NULL,
  `nama_lengkap` varchar(50) NOT NULL,
  `username` varchar(40) NOT NULL,
  `password` varchar(32) NOT NULL,
  `id_level_user` int(11) NOT NULL,
  `foto` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`id_user`, `nama_lengkap`, `username`, `password`, `id_level_user`, `foto`) VALUES
(1, 'nuris akbar', 'nuris123', 'd41d8cd98f00b204e9800998ecf8427e', 1, 'dsdsdsds'),
(7, 'desi handayani', 'desi123', '14ddc434109d6e8df730d4ea4eefc06c', 5, 'Yaya_yah1.png'),
(8, 'Programmer', 'programmer', '46b81457b6ede75918c109962b4610bd', 4, ''),
(9, 'Sekolah', 'sekolah', 'fef4cda9b13cc54433ef48d9277128d5', 6, '');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user_rule`
--

CREATE TABLE `tbl_user_rule` (
  `id_rule` int(11) NOT NULL,
  `id_menu` int(11) NOT NULL,
  `id_level_user` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_user_rule`
--

INSERT INTO `tbl_user_rule` (`id_rule`, `id_menu`, `id_level_user`) VALUES
(3, 1, 1),
(4, 2, 1),
(5, 8, 1),
(6, 14, 2),
(7, 1, 2),
(10, 21, 5),
(11, 9, 1),
(12, 10, 1),
(13, 11, 1),
(14, 12, 1),
(15, 13, 1),
(16, 14, 1),
(17, 17, 1),
(18, 19, 1),
(19, 20, 1),
(25, 22, 1),
(26, 23, 5),
(27, 24, 5),
(29, 26, 1),
(30, 26, 5),
(31, 29, 5),
(32, 1, 4),
(33, 2, 4),
(34, 8, 4),
(35, 9, 4),
(36, 10, 4),
(37, 11, 4),
(38, 12, 4),
(39, 13, 4),
(40, 14, 4),
(41, 15, 4),
(42, 16, 4),
(43, 17, 4),
(44, 19, 4),
(45, 20, 4),
(46, 21, 4),
(47, 22, 4),
(48, 23, 4),
(49, 24, 4),
(50, 25, 4),
(51, 26, 4),
(52, 27, 4),
(53, 28, 4),
(54, 29, 4),
(55, 30, 4),
(56, 24, 6),
(60, 1, 6),
(61, 23, 6),
(72, 29, 6),
(73, 31, 7),
(75, 32, 6),
(79, 31, 3),
(80, 33, 6),
(81, 34, 6),
(83, 36, 6),
(84, 21, 6),
(86, 35, 6),
(87, 37, 6);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_walikelas`
--

CREATE TABLE `tbl_walikelas` (
  `id_walikelas` int(11) NOT NULL,
  `id_guru` int(11) NOT NULL,
  `id_tahun_akademik` int(11) NOT NULL,
  `id_rombel` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_walikelas`
--

INSERT INTO `tbl_walikelas` (`id_walikelas`, `id_guru`, `id_tahun_akademik`, `id_rombel`) VALUES
(7, 4, 1, 1),
(8, 6, 1, 2),
(9, 1, 1, 3),
(10, 2, 1, 4);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_master_rombel`
-- (See below for the actual view)
--
CREATE TABLE `v_master_rombel` (
`id_rombel` int(11)
,`nama_rombel` varchar(30)
,`kelas` int(11)
,`kd_jurusan` varchar(4)
,`nama_jurusan` varchar(30)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_tbl_user`
-- (See below for the actual view)
--
CREATE TABLE `v_tbl_user` (
`id_user` int(11)
,`nama_lengkap` varchar(50)
,`username` varchar(40)
,`password` varchar(32)
,`id_level_user` int(11)
,`foto` text
,`nama_level` varchar(30)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_walikelas`
-- (See below for the actual view)
--
CREATE TABLE `v_walikelas` (
`nama_guru` varchar(30)
,`nama_rombel` varchar(30)
,`id_walikelas` int(11)
,`id_tahun_akademik` int(11)
,`nama_jurusan` varchar(30)
,`kelas` int(11)
,`tahun_akademik` varchar(10)
);

-- --------------------------------------------------------

--
-- Structure for view `v_master_rombel`
--
DROP TABLE IF EXISTS `v_master_rombel`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_master_rombel`  AS  select `tr`.`id_rombel` AS `id_rombel`,`tr`.`nama_rombel` AS `nama_rombel`,`tr`.`kelas` AS `kelas`,`tr`.`kd_jurusan` AS `kd_jurusan`,`tj`.`nama_jurusan` AS `nama_jurusan` from (`tbl_rombel` `tr` join `tbl_jurusan` `tj`) where (`tj`.`kd_jurusan` = `tr`.`kd_jurusan`) ;

-- --------------------------------------------------------

--
-- Structure for view `v_tbl_user`
--
DROP TABLE IF EXISTS `v_tbl_user`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_tbl_user`  AS  select `tu`.`id_user` AS `id_user`,`tu`.`nama_lengkap` AS `nama_lengkap`,`tu`.`username` AS `username`,`tu`.`password` AS `password`,`tu`.`id_level_user` AS `id_level_user`,`tu`.`foto` AS `foto`,`tlu`.`nama_level` AS `nama_level` from (`tbl_user` `tu` join `tbl_level_user` `tlu`) where (`tu`.`id_level_user` = `tlu`.`id_level_user`) ;

-- --------------------------------------------------------

--
-- Structure for view `v_walikelas`
--
DROP TABLE IF EXISTS `v_walikelas`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_walikelas`  AS  select `g`.`nama_guru` AS `nama_guru`,`r`.`nama_rombel` AS `nama_rombel`,`w`.`id_walikelas` AS `id_walikelas`,`w`.`id_tahun_akademik` AS `id_tahun_akademik`,`j`.`nama_jurusan` AS `nama_jurusan`,`r`.`kelas` AS `kelas`,`ta`.`tahun_akademik` AS `tahun_akademik` from ((((`tbl_walikelas` `w` join `tbl_rombel` `r`) join `tbl_guru` `g`) join `tbl_jurusan` `j`) join `tbl_tahun_akademik` `ta`) where ((`w`.`id_guru` = `g`.`id_guru`) and (`w`.`id_rombel` = `r`.`id_rombel`) and (`j`.`kd_jurusan` = `r`.`kd_jurusan`) and (`ta`.`id_tahun_akademik` = `w`.`id_tahun_akademik`)) ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tabel_menu`
--
ALTER TABLE `tabel_menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_agama`
--
ALTER TABLE `tbl_agama`
  ADD PRIMARY KEY (`kd_agama`);

--
-- Indexes for table `tbl_biaya_pemasukan`
--
ALTER TABLE `tbl_biaya_pemasukan`
  ADD PRIMARY KEY (`id_biaya`);

--
-- Indexes for table `tbl_biaya_sekolah`
--
ALTER TABLE `tbl_biaya_sekolah`
  ADD PRIMARY KEY (`id_biaya`);

--
-- Indexes for table `tbl_guru`
--
ALTER TABLE `tbl_guru`
  ADD PRIMARY KEY (`id_guru`);

--
-- Indexes for table `tbl_history_kelas`
--
ALTER TABLE `tbl_history_kelas`
  ADD PRIMARY KEY (`id_history`);

--
-- Indexes for table `tbl_jadwal`
--
ALTER TABLE `tbl_jadwal`
  ADD PRIMARY KEY (`id_jadwal`);

--
-- Indexes for table `tbl_jenis_pemasukan`
--
ALTER TABLE `tbl_jenis_pemasukan`
  ADD PRIMARY KEY (`id_jenis_pemasukan`);

--
-- Indexes for table `tbl_jenis_pembayaran`
--
ALTER TABLE `tbl_jenis_pembayaran`
  ADD PRIMARY KEY (`id_jenis_pembayaran`);

--
-- Indexes for table `tbl_jenjang_sekolah`
--
ALTER TABLE `tbl_jenjang_sekolah`
  ADD PRIMARY KEY (`id_jenjang`);

--
-- Indexes for table `tbl_jurusan`
--
ALTER TABLE `tbl_jurusan`
  ADD PRIMARY KEY (`kd_jurusan`);

--
-- Indexes for table `tbl_kelompok_mapel`
--
ALTER TABLE `tbl_kelompok_mapel`
  ADD PRIMARY KEY (`id_kelompok_mapel`);

--
-- Indexes for table `tbl_kurikulum`
--
ALTER TABLE `tbl_kurikulum`
  ADD PRIMARY KEY (`id_kurikulum`);

--
-- Indexes for table `tbl_kurikulum_detail`
--
ALTER TABLE `tbl_kurikulum_detail`
  ADD PRIMARY KEY (`id_kurikulum_detail`);

--
-- Indexes for table `tbl_level_user`
--
ALTER TABLE `tbl_level_user`
  ADD PRIMARY KEY (`id_level_user`);

--
-- Indexes for table `tbl_mapel`
--
ALTER TABLE `tbl_mapel`
  ADD PRIMARY KEY (`kd_mapel`);

--
-- Indexes for table `tbl_nilai`
--
ALTER TABLE `tbl_nilai`
  ADD PRIMARY KEY (`id_nilai`);

--
-- Indexes for table `tbl_pemasukan`
--
ALTER TABLE `tbl_pemasukan`
  ADD PRIMARY KEY (`id_pemasukan`) USING BTREE;

--
-- Indexes for table `tbl_pembayaran`
--
ALTER TABLE `tbl_pembayaran`
  ADD PRIMARY KEY (`id_pembayaran`);

--
-- Indexes for table `tbl_phonebook`
--
ALTER TABLE `tbl_phonebook`
  ADD PRIMARY KEY (`id_phonebook`);

--
-- Indexes for table `tbl_rombel`
--
ALTER TABLE `tbl_rombel`
  ADD PRIMARY KEY (`id_rombel`);

--
-- Indexes for table `tbl_ruangan`
--
ALTER TABLE `tbl_ruangan`
  ADD PRIMARY KEY (`kd_ruangan`);

--
-- Indexes for table `tbl_sekolah_info`
--
ALTER TABLE `tbl_sekolah_info`
  ADD PRIMARY KEY (`id_sekolah`);

--
-- Indexes for table `tbl_siswa`
--
ALTER TABLE `tbl_siswa`
  ADD PRIMARY KEY (`nim`);

--
-- Indexes for table `tbl_sms_group`
--
ALTER TABLE `tbl_sms_group`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_tahun_akademik`
--
ALTER TABLE `tbl_tahun_akademik`
  ADD PRIMARY KEY (`id_tahun_akademik`);

--
-- Indexes for table `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`id_user`);

--
-- Indexes for table `tbl_user_rule`
--
ALTER TABLE `tbl_user_rule`
  ADD PRIMARY KEY (`id_rule`);

--
-- Indexes for table `tbl_walikelas`
--
ALTER TABLE `tbl_walikelas`
  ADD PRIMARY KEY (`id_walikelas`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tabel_menu`
--
ALTER TABLE `tabel_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `tbl_biaya_pemasukan`
--
ALTER TABLE `tbl_biaya_pemasukan`
  MODIFY `id_biaya` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_biaya_sekolah`
--
ALTER TABLE `tbl_biaya_sekolah`
  MODIFY `id_biaya` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `tbl_guru`
--
ALTER TABLE `tbl_guru`
  MODIFY `id_guru` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tbl_history_kelas`
--
ALTER TABLE `tbl_history_kelas`
  MODIFY `id_history` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tbl_jadwal`
--
ALTER TABLE `tbl_jadwal`
  MODIFY `id_jadwal` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `tbl_jenis_pemasukan`
--
ALTER TABLE `tbl_jenis_pemasukan`
  MODIFY `id_jenis_pemasukan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_jenis_pembayaran`
--
ALTER TABLE `tbl_jenis_pembayaran`
  MODIFY `id_jenis_pembayaran` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tbl_jenjang_sekolah`
--
ALTER TABLE `tbl_jenjang_sekolah`
  MODIFY `id_jenjang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_kelompok_mapel`
--
ALTER TABLE `tbl_kelompok_mapel`
  MODIFY `id_kelompok_mapel` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_kurikulum`
--
ALTER TABLE `tbl_kurikulum`
  MODIFY `id_kurikulum` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_kurikulum_detail`
--
ALTER TABLE `tbl_kurikulum_detail`
  MODIFY `id_kurikulum_detail` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tbl_level_user`
--
ALTER TABLE `tbl_level_user`
  MODIFY `id_level_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tbl_nilai`
--
ALTER TABLE `tbl_nilai`
  MODIFY `id_nilai` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `tbl_pemasukan`
--
ALTER TABLE `tbl_pemasukan`
  MODIFY `id_pemasukan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_pembayaran`
--
ALTER TABLE `tbl_pembayaran`
  MODIFY `id_pembayaran` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `tbl_phonebook`
--
ALTER TABLE `tbl_phonebook`
  MODIFY `id_phonebook` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_rombel`
--
ALTER TABLE `tbl_rombel`
  MODIFY `id_rombel` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tbl_sms_group`
--
ALTER TABLE `tbl_sms_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tbl_tahun_akademik`
--
ALTER TABLE `tbl_tahun_akademik`
  MODIFY `id_tahun_akademik` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tbl_user_rule`
--
ALTER TABLE `tbl_user_rule`
  MODIFY `id_rule` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=88;

--
-- AUTO_INCREMENT for table `tbl_walikelas`
--
ALTER TABLE `tbl_walikelas`
  MODIFY `id_walikelas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
