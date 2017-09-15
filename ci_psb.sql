-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Sep 09, 2017 at 04:23 AM
-- Server version: 10.1.19-MariaDB
-- PHP Version: 5.6.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ci_psb`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_biodata`
--

CREATE TABLE `tb_biodata` (
  `id` int(2) NOT NULL,
  `nama` varchar(20) DEFAULT NULL,
  `jenis_kelamin` varchar(10) DEFAULT NULL,
  `alamat` varchar(30) DEFAULT NULL,
  `usia` int(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_biodata`
--

INSERT INTO `tb_biodata` (`id`, `nama`, `jenis_kelamin`, `alamat`, `usia`) VALUES
(1, 'Susi Susanti', 'Perempuan', 'Jakarta', 45),
(2, 'Jokon Suseno', 'Perempuan', 'bandung', 33);

-- --------------------------------------------------------

--
-- Table structure for table `tb_kontak`
--

CREATE TABLE `tb_kontak` (
  `id` int(11) UNSIGNED NOT NULL,
  `nama` varchar(64) NOT NULL,
  `email` varchar(64) NOT NULL,
  `judul` varchar(128) NOT NULL,
  `isi` text NOT NULL,
  `is_dibalas` enum('0','1') NOT NULL DEFAULT '0' COMMENT '0=belum dibalas; 1=sudah dibalas',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `tb_kontak`
--

INSERT INTO `tb_kontak` (`id`, `nama`, `email`, `judul`, `isi`, `is_dibalas`, `created_at`, `updated_at`) VALUES
(1, 'awan pribadi basuki', 'awan@gmail.com', 'Tidak Bisa Login', 'Saya tidak bisa login.', '0', '2014-12-09 20:35:17', '2014-12-09 20:35:17'),
(2, 'Awan Pribadi Basuki', 'awan@localhost.com', 'Tidak Bisa Login', 'Saya tidak bisa login, username dan password yang diberikan saya lupa.', '0', '2014-12-10 17:57:24', '2014-12-10 17:57:24'),
(3, 'Awan Pribadi Basuki', 'awan@localhost.com', 'Tidak bisa login', 'Saya tidak bisa login, bagaimana ya?', '0', '2014-12-15 23:34:33', '2014-12-15 23:34:33');

-- --------------------------------------------------------

--
-- Table structure for table `tb_pengumuman`
--

CREATE TABLE `tb_pengumuman` (
  `id` smallint(4) UNSIGNED NOT NULL,
  `judul` varchar(64) NOT NULL,
  `slug` varchar(128) NOT NULL,
  `isi` text NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `tb_pengumuman`
--

INSERT INTO `tb_pengumuman` (`id`, `judul`, `slug`, `isi`, `created_at`, `updated_at`) VALUES
(10, 'Mengetahui Status Kelulusan Siswa PSB 2014', 'mengetahui-status-kelulusan-siswa-psb-2014', '<p>&nbsp;Berikut ini adalah cara verifikasi data PSB 2014.&nbsp; Berikut ini adalah cara verifikasi data PSB 2014. &nbsp;Berikut ini adalah cara verifikasi data PSB 2014. &nbsp; Berikut ini adalah cara verifikasi data PSB 2014. Berikut ini adalah cara verifikasi data PSB 2014. Berikut ini adalah cara verifikasi data PSB 2014. Berikut ini adalah cara verifikasi data PSB 2014.</p>\r\n<p>&nbsp;Berikut ini adalah cara verifikasi data PSB 2014.&nbsp; Berikut ini adalah cara verifikasi data PSB 2014. &nbsp;Berikut ini adalah cara verifikasi data PSB 2014. &nbsp; Berikut ini adalah cara verifikasi data PSB 2014. Berikut ini adalah cara verifikasi data PSB 2014. Berikut ini adalah cara verifikasi data PSB 2014. Berikut ini adalah cara verifikasi data PSB 2014.</p>\r\n<p>&nbsp;Berikut ini adalah cara verifikasi data PSB 2014.&nbsp; Berikut ini adalah cara verifikasi data PSB 2014. &nbsp;Berikut ini adalah cara verifikasi data PSB 2014. &nbsp; Berikut ini adalah cara verifikasi data PSB 2014. Berikut ini adalah cara verifikasi data PSB 2014. Berikut ini adalah cara verifikasi data PSB 2014. Berikut ini adalah cara verifikasi data PSB 2014.</p>\r\n<p>&nbsp;Berikut ini adalah cara verifikasi data PSB 2014.&nbsp; Berikut ini adalah cara verifikasi data PSB 2014. &nbsp;Berikut ini adalah cara verifikasi data PSB 2014. &nbsp; Berikut ini adalah cara verifikasi data PSB 2014. Berikut ini adalah cara verifikasi data PSB 2014. Berikut ini adalah cara verifikasi data PSB 2014. Berikut ini adalah cara verifikasi data PSB 2014.</p>\r\n<p>&nbsp;Berikut ini adalah cara verifikasi data PSB 2014.&nbsp; Berikut ini adalah cara verifikasi data PSB 2014. &nbsp;Berikut ini adalah cara verifikasi data PSB 2014. &nbsp; Berikut ini adalah cara verifikasi data PSB 2014. Berikut ini adalah cara verifikasi data PSB 2014. Berikut ini adalah cara verifikasi data PSB 2014. Berikut ini adalah cara verifikasi data PSB 2014.</p>\r\n<p>&nbsp;Berikut ini adalah cara verifikasi data PSB 2014.&nbsp; Berikut ini adalah cara verifikasi data PSB 2014. &nbsp;Berikut ini adalah cara verifikasi data PSB 2014. &nbsp; Berikut ini adalah cara verifikasi data PSB 2014. Berikut ini adalah cara verifikasi data PSB 2014. Berikut ini adalah cara verifikasi data PSB 2014. Berikut ini adalah cara verifikasi data PSB 2014.</p>\r\n<p>&nbsp;Berikut ini adalah cara verifikasi data PSB 2014.&nbsp; Berikut ini adalah cara verifikasi data PSB 2014. &nbsp;Berikut ini adalah cara verifikasi data PSB 2014. &nbsp; Berikut ini adalah cara verifikasi data PSB 2014. Berikut ini adalah cara verifikasi data PSB 2014. Berikut ini adalah cara verifikasi data PSB 2014. Berikut ini adalah cara verifikasi data PSB 2014.</p>\r\n<p>&nbsp;Berikut ini adalah cara verifikasi data PSB 2014.&nbsp; Berikut ini adalah cara verifikasi data PSB 2014. &nbsp;Berikut ini adalah cara verifikasi data PSB 2014. &nbsp; Berikut ini adalah cara verifikasi data PSB 2014. Berikut ini adalah cara verifikasi data PSB 2014. Berikut ini adalah cara verifikasi data PSB 2014. Berikut ini adalah cara verifikasi data PSB 2014.</p>', '2014-12-05 17:35:55', '2014-12-05 19:58:56'),
(11, 'Cara Update Data', 'cara-update-data', '<p>Bagi anda yang belum tahu cara mengupdate data, maka ikuti langkah berikut ini. Bagi anda yang belum tahu cara mengupdate data, maka ikuti langkah berikut ini. Bagi anda yang belum tahu cara mengupdate data, maka ikuti langkah berikut ini. Bagi anda yang belum tahu cara mengupdate data, maka ikuti langkah berikut ini.</p>\r\n<p>Bagi anda yang belum tahu cara mengupdate data, maka ikuti langkah berikut ini. Bagi anda yang belum tahu cara mengupdate data, maka ikuti langkah berikut ini. Bagi anda yang belum tahu cara mengupdate data, maka ikuti langkah berikut ini. Bagi anda yang belum tahu cara mengupdate data, maka ikuti langkah berikut ini.</p>\r\n<p>Bagi anda yang belum tahu cara mengupdate data, maka ikuti langkah berikut ini. Bagi anda yang belum tahu cara mengupdate data, maka ikuti langkah berikut ini. Bagi anda yang belum tahu cara mengupdate data, maka ikuti langkah berikut ini. Bagi anda yang belum tahu cara mengupdate data, maka ikuti langkah berikut ini.</p>\r\n<p>Bagi anda yang belum tahu cara mengupdate data, maka ikuti langkah berikut ini. Bagi anda yang belum tahu cara mengupdate data, maka ikuti langkah berikut ini. Bagi anda yang belum tahu cara mengupdate data, maka ikuti langkah berikut ini. Bagi anda yang belum tahu cara mengupdate data, maka ikuti langkah berikut ini.</p>\r\n<p>Bagi anda yang belum tahu cara mengupdate data, maka ikuti langkah berikut ini. Bagi anda yang belum tahu cara mengupdate data, maka ikuti langkah berikut ini. Bagi anda yang belum tahu cara mengupdate data, maka ikuti langkah berikut ini. Bagi anda yang belum tahu cara mengupdate data, maka ikuti langkah berikut ini.</p>\r\n<p>Bagi anda yang belum tahu cara mengupdate data, maka ikuti langkah berikut ini. Bagi anda yang belum tahu cara mengupdate data, maka ikuti langkah berikut ini. Bagi anda yang belum tahu cara mengupdate data, maka ikuti langkah berikut ini. Bagi anda yang belum tahu cara mengupdate data, maka ikuti langkah berikut ini.</p>\r\n<p>Bagi anda yang belum tahu cara mengupdate data, maka ikuti langkah berikut ini. Bagi anda yang belum tahu cara mengupdate data, maka ikuti langkah berikut ini. Bagi anda yang belum tahu cara mengupdate data, maka ikuti langkah berikut ini. Bagi anda yang belum tahu cara mengupdate data, maka ikuti langkah berikut ini.</p>\r\n<p>Bagi anda yang belum tahu cara mengupdate data, maka ikuti langkah berikut ini. Bagi anda yang belum tahu cara mengupdate data, maka ikuti langkah berikut ini. Bagi anda yang belum tahu cara mengupdate data, maka ikuti langkah berikut ini. Bagi anda yang belum tahu cara mengupdate data, maka ikuti langkah berikut ini.</p>\r\n<p>Bagi anda yang belum tahu cara mengupdate data, maka ikuti langkah berikut ini. Bagi anda yang belum tahu cara mengupdate data, maka ikuti langkah berikut ini. Bagi anda yang belum tahu cara mengupdate data, maka ikuti langkah berikut ini. Bagi anda yang belum tahu cara mengupdate data, maka ikuti langkah berikut ini.</p>\r\n<p>Bagi anda yang belum tahu cara mengupdate data, maka ikuti langkah berikut ini. Bagi anda yang belum tahu cara mengupdate data, maka ikuti langkah berikut ini. Bagi anda yang belum tahu cara mengupdate data, maka ikuti langkah berikut ini. Bagi anda yang belum tahu cara mengupdate data, maka ikuti langkah berikut ini.</p>', '2014-12-08 17:26:16', '2014-12-08 17:26:16'),
(12, 'Menghapus Pengumuman Yang Sudah Kadaluarsa', 'menghapus-pengumuman-yang-sudah-kadaluarsa', '<p>Berikut ini adalah cara bagaimana menghapus pengumuman yang sudah dadaluarsa. Berikut ini adalah cara bagaimana menghapus pengumuman yang sudah dadaluarsa. Berikut ini adalah cara bagaimana menghapus pengumuman yang sudah dadaluarsa. Berikut ini adalah cara bagaimana menghapus pengumuman yang sudah dadaluarsa. Berikut ini adalah cara bagaimana menghapus pengumuman yang sudah dadaluarsa. Berikut ini adalah cara bagaimana menghapus pengumuman yang sudah dadaluarsa.</p>\r\n<p>Berikut ini adalah cara bagaimana menghapus pengumuman yang sudah dadaluarsa. Berikut ini adalah cara bagaimana menghapus pengumuman yang sudah dadaluarsa. Berikut ini adalah cara bagaimana menghapus pengumuman yang sudah dadaluarsa. Berikut ini adalah cara bagaimana menghapus pengumuman yang sudah dadaluarsa. Berikut ini adalah cara bagaimana menghapus pengumuman yang sudah dadaluarsa. Berikut ini adalah cara bagaimana menghapus pengumuman yang sudah dadaluarsa.</p>\r\n<p>Berikut ini adalah cara bagaimana menghapus pengumuman yang sudah dadaluarsa. Berikut ini adalah cara bagaimana menghapus pengumuman yang sudah dadaluarsa. Berikut ini adalah cara bagaimana menghapus pengumuman yang sudah dadaluarsa. Berikut ini adalah cara bagaimana menghapus pengumuman yang sudah dadaluarsa. Berikut ini adalah cara bagaimana menghapus pengumuman yang sudah dadaluarsa. Berikut ini adalah cara bagaimana menghapus pengumuman yang sudah dadaluarsa.</p>\r\n<p>Berikut ini adalah cara bagaimana menghapus pengumuman yang sudah dadaluarsa. Berikut ini adalah cara bagaimana menghapus pengumuman yang sudah dadaluarsa. Berikut ini adalah cara bagaimana menghapus pengumuman yang sudah dadaluarsa. Berikut ini adalah cara bagaimana menghapus pengumuman yang sudah dadaluarsa. Berikut ini adalah cara bagaimana menghapus pengumuman yang sudah dadaluarsa. Berikut ini adalah cara bagaimana menghapus pengumuman yang sudah dadaluarsa.</p>\r\n<p>Berikut ini adalah cara bagaimana menghapus pengumuman yang sudah dadaluarsa. Berikut ini adalah cara bagaimana menghapus pengumuman yang sudah dadaluarsa. Berikut ini adalah cara bagaimana menghapus pengumuman yang sudah dadaluarsa. Berikut ini adalah cara bagaimana menghapus pengumuman yang sudah dadaluarsa. Berikut ini adalah cara bagaimana menghapus pengumuman yang sudah dadaluarsa. Berikut ini adalah cara bagaimana menghapus pengumuman yang sudah dadaluarsa.</p>\r\n<p>Berikut ini adalah cara bagaimana menghapus pengumuman yang sudah dadaluarsa. Berikut ini adalah cara bagaimana menghapus pengumuman yang sudah dadaluarsa. Berikut ini adalah cara bagaimana menghapus pengumuman yang sudah dadaluarsa. Berikut ini adalah cara bagaimana menghapus pengumuman yang sudah dadaluarsa. Berikut ini adalah cara bagaimana menghapus pengumuman yang sudah dadaluarsa. Berikut ini adalah cara bagaimana menghapus pengumuman yang sudah dadaluarsa.</p>\r\n<p>Berikut ini adalah cara bagaimana menghapus pengumuman yang sudah dadaluarsa. Berikut ini adalah cara bagaimana menghapus pengumuman yang sudah dadaluarsa. Berikut ini adalah cara bagaimana menghapus pengumuman yang sudah dadaluarsa. Berikut ini adalah cara bagaimana menghapus pengumuman yang sudah dadaluarsa. Berikut ini adalah cara bagaimana menghapus pengumuman yang sudah dadaluarsa. Berikut ini adalah cara bagaimana menghapus pengumuman yang sudah dadaluarsa.</p>\r\n<p>Berikut ini adalah cara bagaimana menghapus pengumuman yang sudah dadaluarsa. Berikut ini adalah cara bagaimana menghapus pengumuman yang sudah dadaluarsa. Berikut ini adalah cara bagaimana menghapus pengumuman yang sudah dadaluarsa. Berikut ini adalah cara bagaimana menghapus pengumuman yang sudah dadaluarsa. Berikut ini adalah cara bagaimana menghapus pengumuman yang sudah dadaluarsa. Berikut ini adalah cara bagaimana menghapus pengumuman yang sudah dadaluarsa.</p>', '2014-12-31 06:14:14', '2014-12-31 06:14:14');

-- --------------------------------------------------------

--
-- Table structure for table `tb_peserta`
--

CREATE TABLE `tb_peserta` (
  `id` smallint(4) UNSIGNED NOT NULL,
  `email` varchar(64) NOT NULL,
  `username` char(8) NOT NULL,
  `password` char(8) NOT NULL,
  `nisn` char(10) NOT NULL,
  `nama` varchar(64) NOT NULL,
  `nama_panggilan` varchar(32) NOT NULL,
  `jenis_kelamin` enum('P','L') DEFAULT NULL,
  `agama` enum('0','1','2','3','4','5','6') DEFAULT NULL COMMENT '0=lainnya; 1=islam; 2=katolik; 3=protestan; 4=hindu; 5=budha; 6=Konghucu',
  `ket_agama` varchar(32) DEFAULT NULL,
  `tempat_lahir` varchar(32) DEFAULT NULL,
  `tanggal_lahir` date DEFAULT NULL,
  `berat_badan` varchar(3) DEFAULT NULL,
  `tinggi_badan` varchar(3) DEFAULT NULL,
  `golongan_darah` enum('O','AB','B','A') DEFAULT NULL,
  `status_anak` enum('0','1') DEFAULT NULL COMMENT '0=angkat; 1=kandung',
  `anak_ke` varchar(2) DEFAULT NULL,
  `jumlah_saudara` varchar(2) DEFAULT NULL,
  `tmp_tinggal_dengan` enum('0','1','2','3','4') DEFAULT NULL COMMENT '0=lainnya; 1=orang tua; 2=kakak; 3=paman/bibi; 4=kakek/nenek',
  `tmp_ket_tinggal_dengan` varchar(32) DEFAULT NULL,
  `tmp_alamat` varchar(255) DEFAULT NULL,
  `tmp_telepon` varchar(16) DEFAULT NULL,
  `tmp_jarak_sekolah` varchar(2) DEFAULT NULL,
  `tmp_kendaraan` enum('1','2','3','4','5') DEFAULT NULL COMMENT '1=berjalan kaki; 2=sepeda;  3=angkutan umum; 4=sepeda motor; 5=mobil;',
  `ort_nama_ayah` varchar(64) DEFAULT NULL,
  `ort_pekerjaan_ayah` enum('0','1','2','3','4','5','6','7') DEFAULT NULL COMMENT '0=lainnya; 1=pns; 2=tni/polri; 3=petani/nelayan; 4=buruh; 5=pedagang/wiraswasta; 6=tukang becak/ojek; 7=sopir',
  `ort_ket_pekerjaan_ayah` varchar(32) DEFAULT NULL,
  `ort_nama_ibu` varchar(64) DEFAULT NULL,
  `ort_pekerjaan_ibu` enum('0','1','2','3','4','5','6','7','8') DEFAULT NULL COMMENT '0=lainnya; 1=pns; 2=tni/polri; 3=petani/nelayan; 4=buruh; 5=pedagang/wiraswasta; 6=tukang becak/ojek; 7=sopir; 8=ibu rumah tangga',
  `ort_ket_pekerjaan_ibu` varchar(32) DEFAULT NULL,
  `ort_alamat` varchar(255) DEFAULT NULL,
  `ort_telepon` varchar(16) DEFAULT NULL,
  `ort_penghasilan` varchar(12) DEFAULT NULL,
  `ska_nama` varchar(64) DEFAULT NULL,
  `ska_status` enum('0','1') DEFAULT NULL COMMENT '0=swasta; 1=negeri',
  `ska_alamat` varchar(255) DEFAULT NULL,
  `ska_telepon` varchar(16) DEFAULT NULL,
  `ska_kelas` varchar(32) DEFAULT NULL,
  `ska_tahun_lulus` year(4) DEFAULT NULL,
  `ska_no_ijazah` varchar(32) DEFAULT NULL,
  `nil_bin_1` float(2,1) DEFAULT NULL,
  `nil_bin_2` float(2,1) DEFAULT NULL,
  `nil_bin_3` float(2,1) DEFAULT NULL,
  `nil_bin_4` float(2,1) DEFAULT NULL,
  `nil_bin_5` float(2,1) DEFAULT NULL,
  `nil_bin_rata` float(2,1) DEFAULT NULL,
  `nil_big_1` float(2,1) DEFAULT NULL,
  `nil_big_2` float(2,1) DEFAULT NULL,
  `nil_big_3` float(2,1) DEFAULT NULL,
  `nil_big_4` float(2,1) DEFAULT NULL,
  `nil_big_5` float(2,1) DEFAULT NULL,
  `nil_big_rata` float(2,1) DEFAULT NULL,
  `nil_mat_1` float(2,1) DEFAULT NULL,
  `nil_mat_2` float(2,1) DEFAULT NULL,
  `nil_mat_3` float(2,1) DEFAULT NULL,
  `nil_mat_4` float(2,1) DEFAULT NULL,
  `nil_mat_5` float(2,1) DEFAULT NULL,
  `nil_mat_rata` float(2,1) DEFAULT NULL,
  `nil_ipa_1` float(2,1) DEFAULT NULL,
  `nil_ipa_2` float(2,1) DEFAULT NULL,
  `nil_ipa_3` float(2,1) DEFAULT NULL,
  `nil_ipa_4` float(2,1) DEFAULT NULL,
  `nil_ipa_5` float(2,1) DEFAULT NULL,
  `nil_ipa_rata` float(2,1) DEFAULT NULL,
  `nil_ips_1` float(2,1) DEFAULT NULL,
  `nil_ips_2` float(2,1) DEFAULT NULL,
  `nil_ips_3` float(2,1) DEFAULT NULL,
  `nil_ips_4` float(2,1) DEFAULT NULL,
  `nil_ips_5` float(2,1) DEFAULT NULL,
  `nil_ips_rata` float(2,1) DEFAULT NULL,
  `status_pendaftaran` enum('0','1') NOT NULL DEFAULT '1' COMMENT '0=mengundurkan diri; 1=aktif',
  `status_biodata` enum('0','1') NOT NULL DEFAULT '0' COMMENT '0=belum lengkap; 1=sudah lengkap',
  `status_verifikasi` enum('0','1') NOT NULL DEFAULT '0' COMMENT '0=belum; 1=sudah',
  `status_seleksi` enum('0','1') NOT NULL DEFAULT '0' COMMENT '0 = tidak lulus; 1=lulus;',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `tb_peserta`
--

INSERT INTO `tb_peserta` (`id`, `email`, `username`, `password`, `nisn`, `nama`, `nama_panggilan`, `jenis_kelamin`, `agama`, `ket_agama`, `tempat_lahir`, `tanggal_lahir`, `berat_badan`, `tinggi_badan`, `golongan_darah`, `status_anak`, `anak_ke`, `jumlah_saudara`, `tmp_tinggal_dengan`, `tmp_ket_tinggal_dengan`, `tmp_alamat`, `tmp_telepon`, `tmp_jarak_sekolah`, `tmp_kendaraan`, `ort_nama_ayah`, `ort_pekerjaan_ayah`, `ort_ket_pekerjaan_ayah`, `ort_nama_ibu`, `ort_pekerjaan_ibu`, `ort_ket_pekerjaan_ibu`, `ort_alamat`, `ort_telepon`, `ort_penghasilan`, `ska_nama`, `ska_status`, `ska_alamat`, `ska_telepon`, `ska_kelas`, `ska_tahun_lulus`, `ska_no_ijazah`, `nil_bin_1`, `nil_bin_2`, `nil_bin_3`, `nil_bin_4`, `nil_bin_5`, `nil_bin_rata`, `nil_big_1`, `nil_big_2`, `nil_big_3`, `nil_big_4`, `nil_big_5`, `nil_big_rata`, `nil_mat_1`, `nil_mat_2`, `nil_mat_3`, `nil_mat_4`, `nil_mat_5`, `nil_mat_rata`, `nil_ipa_1`, `nil_ipa_2`, `nil_ipa_3`, `nil_ipa_4`, `nil_ipa_5`, `nil_ipa_rata`, `nil_ips_1`, `nil_ips_2`, `nil_ips_3`, `nil_ips_4`, `nil_ips_5`, `nil_ips_rata`, `status_pendaftaran`, `status_biodata`, `status_verifikasi`, `status_seleksi`, `created_at`, `updated_at`) VALUES
(1, 'awan@localhost', 'YyCKqlNv', 'SFwaWqpe', '1234567891', 'Awan Pribadi Basuki Adi', 'awan', 'L', '1', NULL, 'Pasirian', '1986-06-10', '60', '165', 'O', '1', '1', '3', '1', NULL, 'Jalan Raya Pasirian Gg. Dwikora No. 23\r\nPasirian, 67372', '0334-571174', '2', '2', 'Basuki Adi', '1', NULL, 'Endang Sri Hartini', '8', NULL, 'Jalan Raya Pasirian Gg. Dwikora No. 23\r\nPasirian, 67372', '0334-571174', '3575650', 'SDN Pasirian 07', '1', 'Jalan Raya Pasirian No. 7', '0334-571534', '6', 1999, 'abc/23-45a/mkjn', 7.0, 7.0, 7.0, 7.0, 7.0, 7.0, 7.0, 7.0, 7.0, 7.0, 7.0, 7.0, 7.0, 7.0, 7.0, 7.0, 7.0, 7.0, 7.0, 7.0, 7.0, 7.0, 7.0, 7.0, 7.0, 7.0, 7.0, 7.0, 7.0, 7.0, '1', '1', '1', '1', '2014-12-01 15:30:17', '2014-12-16 00:44:07'),
(2, 'tiwi@gmail.com', 'V6AxnZon', 'hWdRnmOk', '1234567893', 'Candra Pratiwi', 'tiwi', 'P', '1', NULL, 'Pasirian', '1993-05-10', '60', '160', 'O', '1', '3', '3', '0', 'Yayasan Al Amin', 'Jalan Raya Pasirian No. 23 Pairian\r\n67372', '0334-57114', '2', '3', 'Sumarno', '1', NULL, 'Sri Hartini', '8', NULL, 'Jalan Raya Pasirian No. 23 Pairian\r\n67372', '0334-571174', '4000000', 'Sdn Pasirian 06', '1', 'Jalan Raya Kebonan 34, Pasirian\r\n67372', '0334-571123', '6', 2004, 'abc/23-45a/mkjg', 7.0, 7.4, 7.7, 7.0, 7.0, 7.2, 7.0, 7.0, 7.0, 7.0, 7.0, 7.0, 7.0, 7.0, 7.4, 7.0, 7.0, 7.1, 7.0, 7.0, 7.0, 7.7, 7.0, 7.1, 7.0, 7.7, 7.0, 7.0, 7.3, 7.2, '1', '1', '1', '0', '2014-12-01 15:44:35', '2014-12-05 15:35:24'),
(3, 'bangkit@gmail.com', 'VQbUYIgp', 'bkDn0Fmm', '1234567892', 'Bangkit Sanjaya', 'bangkit', 'L', '0', 'Rahasia', 'Pasirian', '2010-06-15', '50', '150', 'O', '1', '2', '3', '0', 'Yayasan Al Amin', 'Jalan Raya Pasirian 23', '571174', '2', '1', 'Basuki Adi', '1', NULL, 'Endang Hartini', '0', 'Agen Rahasia', 'Jalan Raya Pasirian No 23', '57117364', '3000000', 'Sdn Pasirian 07', '1', 'Pasirian No 17', '5712374', '6-a', 2013, 'abc/123-mda-dfdkioej/2013', 7.3, 7.0, 7.0, 7.0, 7.0, 7.1, 7.3, 7.0, 7.0, 7.0, 7.0, 7.1, 7.3, 7.0, 7.0, 7.0, 7.0, 7.1, 7.3, 7.0, 7.0, 7.0, 7.0, 7.1, 7.3, 7.0, 7.0, 7.0, 7.0, 7.1, '1', '1', '0', '0', '2014-12-01 16:06:17', '2014-12-08 15:08:04'),
(4, 'bambang@gmail.com', 'PKMxv2tC', 'RYfS8HCh', '1234567894', 'Bambang Setiawan', 'bambang', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '0', '0', '0', '2014-12-01 16:18:54', '2014-12-01 16:18:54'),
(5, 'indra@gmail.com', 'lbdtyzvT', 'ec2T1469', '1234567895', 'Indra Hermawan', 'indra', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '0', '0', '0', '2014-12-07 22:53:01', '2014-12-07 22:53:01'),
(6, 'eko@gmail.com', 'ewWJJPnE', 'K8kWcjA0', '1234567896', 'Eko Suharjo', 'Eko', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '0', '0', '0', '2014-12-10 17:36:17', '2014-12-10 17:36:17'),
(7, 'ida@gmail.com', 'N9ziR23l', 'BuwYu6Ge', '1234567897', 'Ida Nurhasanah', 'ida', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '0', '0', '0', '2014-12-15 16:26:39', '2014-12-15 16:26:39'),
(8, 'novi@gmail.com', 'im546jqF', '3y73eZL7', '1234567898', 'Novita Sari', 'Novi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '0', '0', '0', '2014-12-18 23:03:17', '2014-12-18 23:03:17');

-- --------------------------------------------------------

--
-- Table structure for table `tb_user`
--

CREATE TABLE `tb_user` (
  `id` tinyint(2) UNSIGNED NOT NULL,
  `username` varchar(32) NOT NULL,
  `password` char(32) NOT NULL,
  `nama` varchar(32) NOT NULL,
  `level` enum('operator','administrator') NOT NULL DEFAULT 'operator',
  `is_blokir` enum('0','1') NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `tb_user`
--

INSERT INTO `tb_user` (`id`, `username`, `password`, `nama`, `level`, `is_blokir`, `created_at`, `updated_at`) VALUES
(2, 'admin', '21232f297a57a5a743894a0e4a801fc3', 'Administrator', 'administrator', '0', '0000-00-00 00:00:00', '2014-12-10 23:49:22'),
(13, 'awan', 'e19cb7c038c2159012047e8b276bb6a2', 'Awan Pribadi Basuki', 'operator', '0', '2014-12-20 14:39:41', '2014-12-30 04:32:40'),
(14, 'bangkit', '71c7c97e86a4618374f3a345248b3dff', 'Bangkit Pribadi', 'operator', '0', '2014-12-30 04:48:30', '2014-12-30 04:48:30');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_biodata`
--
ALTER TABLE `tb_biodata`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_kontak`
--
ALTER TABLE `tb_kontak`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_pengumuman`
--
ALTER TABLE `tb_pengumuman`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_peserta`
--
ALTER TABLE `tb_peserta`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nisn` (`nisn`);

--
-- Indexes for table `tb_user`
--
ALTER TABLE `tb_user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_biodata`
--
ALTER TABLE `tb_biodata`
  MODIFY `id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `tb_kontak`
--
ALTER TABLE `tb_kontak`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `tb_pengumuman`
--
ALTER TABLE `tb_pengumuman`
  MODIFY `id` smallint(4) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `tb_peserta`
--
ALTER TABLE `tb_peserta`
  MODIFY `id` smallint(4) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `tb_user`
--
ALTER TABLE `tb_user`
  MODIFY `id` tinyint(2) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
