-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Nov 05, 2020 at 01:55 PM
-- Server version: 10.3.24-MariaDB-cll-lve
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `u982728152_mpstore`
--

-- --------------------------------------------------------

--
-- Table structure for table `about`
--

CREATE TABLE `about` (
  `id_about` int(11) NOT NULL,
  `foto_about` varchar(32) NOT NULL,
  `judul_about` varchar(32) NOT NULL,
  `teks_about1` varchar(1000) NOT NULL,
  `teks_about2` varchar(1000) NOT NULL,
  `teks_about3` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `about`
--

INSERT INTO `about` (`id_about`, `foto_about`, `judul_about`, `teks_about1`, `teks_about2`, `teks_about3`) VALUES
(1, 'mp1.png', 'MPSTORE', 'Phasellus egestas nisi nisi, lobortis ultricies risus semper nec. Vestibulum pharetra ac ante ut pellentesque. Curabitur fringilla dolor quis lorem accumsan, vitae molestie urna dapibus. Pellentesque porta est ac neque bibendum viverra. Vivamus lobortis magna ut interdum laoreet. Donec gravida lorem elit, quis condimentum ex semper sit amet. Fusce eget ligula magna. Aliquam aliquam imperdiet sodales. Ut fringilla turpis in vehicula vehicula. Pellentesque congue ac orci ut gravida. Aliquam erat volutpat. Donec iaculis lectus a arcu facilisis, eu sodales lectus sagittis. Etiam pellentesque, magna vel dictum rutrum, neque justo eleifend elit, vel tincidunt erat arcu ut sem. Sed rutrum, turpis ut commodo efficitur, quam velit convallis ipsum, et maximus enim ligula ac ligula. Vivamus tristique vulputate ultricies. Sed vitae ultrices orci.', 'Creativity is just connecting things. When you ask creative people how they did something, they feel a little guilty because they didn\'t really do it, they just saw something. It seemed obvious to them after a while.', 'Cahyo Bayu Sahid Pratomo');

-- --------------------------------------------------------

--
-- Table structure for table `bank`
--

CREATE TABLE `bank` (
  `name` varchar(50) NOT NULL,
  `code` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `bank`
--

INSERT INTO `bank` (`name`, `code`) VALUES
('BANK BRI', 2),
('BANK EKSPOR INDONESIA', 3),
('BANK MANDIRI', 8),
('BANK BNI', 9),
('BANK DANAMON', 11),
('PERMATA BANK', 13),
('BANK BCA', 14),
('BANK BII', 16),
('BANK PANIN', 19),
('BANK ARTA NIAGA KENCANA', 20),
('BANK NIAGA', 22),
('BANK BUANA IND', 23),
('BANK LIPPO', 26),
('BANK NISP', 28),
('AMERICAN EXPRESS BANK LTD', 30),
('CITIBANK N.A.', 31),
('JP. MORGAN CHASE BANK, N.A.', 32),
('BANK OF AMERICA, N.A', 33),
('ING INDONESIA BANK', 34),
('BANK MULTICOR TBK.', 36),
('BANK ARTHA GRAHA', 37),
('BANK CREDIT AGRICOLE INDOSUEZ', 39),
('THE BANGKOK BANK COMP. LTD', 40),
('THE HONGKONG & SHANGHAI B.C.', 41),
('THE BANK OF TOKYO MITSUBISHI UFJ LTD', 42),
('BANK SUMITOMO MITSUI INDONESIA', 45),
('BANK DBS INDONESIA', 46),
('BANK RESONA PERDANIA', 47),
('BANK MIZUHO INDONESIA', 48),
('STANDARD CHARTERED BANK', 50),
('BANK ABN AMRO', 52),
('BANK KEPPEL TATLEE BUANA', 53),
('BANK CAPITAL INDONESIA, TBK.', 54),
('BANK BNP PARIBAS INDONESIA', 57),
('BANK UOB INDONESIA', 58),
('KOREA EXCHANGE BANK DANAMON', 59),
('RABOBANK INTERNASIONAL INDONESIA', 60),
('ANZ PANIN BANK', 61),
('DEUTSCHE BANK AG.', 67),
('BANK WOORI INDONESIA', 68),
('BANK OF CHINA LIMITED', 69),
('BANK BUMI ARTA', 76),
('BANK EKONOMI', 87),
('BANK ANTARDAERAH', 88),
('BANK HAGA', 89),
('BANK IFI', 93),
('BANK CENTURY, TBK.', 95),
('BANK MAYAPADA', 97),
('BANK JABAR', 110),
('BANK DKI', 111),
('BPD DIY', 112),
('BANK JATENG', 113),
('BANK JATIM', 114),
('BPD JAMBI', 115),
('BPD ACEH', 116),
('BANK SUMUT', 117),
('BANK NAGARI', 118),
('BANK RIAU', 119),
('BANK SUMSEL', 120),
('BANK LAMPUNG', 121),
('BPD KALSEL', 122),
('BPD KALIMANTAN BARAT', 123),
('BPD KALTIM', 124),
('BPD KALTENG', 125),
('BPD SULSEL', 126),
('BANK SULUT', 127),
('BPD NTB', 128),
('BPD BALI', 129),
('BANK NTT', 130),
('BANK MALUKU', 131),
('BPD PAPUA', 132),
('BANK BENGKULU', 133),
('BPD SULAWESI TENGAH', 134),
('BANK SULTRA', 135),
('BANK NUSANTARA PARAHYANGAN', 145),
('BANK SWADESI', 146),
('BANK MUAMALAT', 147),
('BANK MESTIKA', 151),
('BANK METRO EXPRESS', 152),
('BANK SHINTA INDONESIA', 153),
('BANK MASPION', 157),
('BANK HAGAKITA', 159),
('BANK GANESHA', 161),
('BANK WINDU KENTJANA', 162),
('HALIM INDONESIA BANK', 164),
('BANK HARMONI INTERNATIONAL', 166),
('BANK KESAWAN', 167),
('BANK TABUNGAN NEGARA (PERSERO)', 200),
('BANK HIMPUNAN SAUDARA 1906, TBK .', 212),
('BANK TABUNGAN PENSIUNAN NASIONAL', 213),
('BANK SWAGUNA', 405),
('BANK JASA ARTA', 422),
('BANK MEGA', 426),
('BANK JASA JAKARTA', 427),
('BANK BUKOPIN', 441),
('BANK SYARIAH MANDIRI', 451),
('BANK BISNIS INTERNASIONAL', 459),
('BANK SRI PARTHA', 466),
('BANK JASA JAKARTA', 472),
('BANK BINTANG MANUNGGAL', 484),
('BANK BUMIPUTERA', 485),
('BANK YUDHA BHAKTI', 490),
('BANK MITRANIAGA', 491),
('BANK AGRO NIAGA', 494),
('BANK INDOMONEX', 498),
('BANK ROYAL INDONESIA', 501),
('BANK ALFINDO', 503),
('BANK SYARIAH MEGA', 506),
('BANK INA PERDANA', 513),
('BANK HARFA', 517),
('PRIMA MASTER BANK', 520),
('BANK PERSYARIKATAN INDONESIA', 521),
('BANK DIPO INTERNATIONAL', 523),
('BANK AKITA', 525),
('LIMAN INTERNATIONAL BANK', 526),
('ANGLOMAS INTERNASIONAL BANK', 531),
('BANK KESEJAHTERAAN EKONOMI', 535),
('BANK UIB', 536),
('BANK ARTOS IND', 542),
('BANK PURBA DANARTA', 547),
('BANK MULTI ARTA SENTOSA', 548),
('BANK MAYORA', 553),
('BANK INDEX SELINDO', 555),
('BANK EKSEKUTIF', 558),
('CENTRATAMA NASIONAL BANK', 559),
('BANK FAMA INTERNASIONAL', 562),
('BANK SINAR HARAPAN BALI', 564),
('BANK VICTORIA INTERNATIONAL', 566),
('BANK HARDA', 567),
('BANK FINCONESIA', 945),
('BANK MERINCORP', 946),
('BANK MAYBANK INDOCORP', 947),
('BANK OCBC – INDONESIA', 948),
('BANK CHINA TRUST INDONESIA', 949),
('BANK COMMONWEALTH', 950);

-- --------------------------------------------------------

--
-- Table structure for table `banner2landing`
--

CREATE TABLE `banner2landing` (
  `id` int(11) NOT NULL,
  `id_produk` int(11) NOT NULL,
  `foto_b2` varchar(20) NOT NULL,
  `judul_teks` varchar(32) NOT NULL,
  `isi_teks` varchar(100) NOT NULL,
  `button_teks` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `banner2landing`
--

INSERT INTO `banner2landing` (`id`, `id_produk`, `foto_b2`, `judul_teks`, `isi_teks`, `button_teks`) VALUES
(1, 1, 'produk_baru.JPG', 'Muslim Preneurship Batch #3', 'Genggam Dunia Raih RidhoNYA', 'DAFTAR');

-- --------------------------------------------------------

--
-- Table structure for table `banner_kategori`
--

CREATE TABLE `banner_kategori` (
  `id_bk` int(11) NOT NULL,
  `id_kategori` int(11) NOT NULL,
  `foto_bk` varchar(15) NOT NULL,
  `tombol_bk` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `banner_kategori`
--

INSERT INTO `banner_kategori` (`id_bk`, `id_kategori`, `foto_bk`, `tombol_bk`) VALUES
(1, 9, 'bk_1.png', 'Umroh'),
(2, 15, 'bk_2.png', 'Alanabi'),
(3, 4, 'bk_3.png', 'PPA'),
(4, 12, 'bk_4.png', 'SHEIKHA GALLERY'),
(5, 11, 'bk_5.PNG', 'BUKU'),
(6, 1, 'bk_6.png', 'MP');

-- --------------------------------------------------------

--
-- Table structure for table `jumbotron`
--

CREATE TABLE `jumbotron` (
  `id_jum` int(11) NOT NULL,
  `id_produk` int(11) NOT NULL,
  `foto_jum` varchar(15) NOT NULL,
  `teks1_jum` varchar(50) NOT NULL,
  `teks2_jum` varchar(70) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `jumbotron`
--

INSERT INTO `jumbotron` (`id_jum`, `id_produk`, `foto_jum`, `teks1_jum`, `teks2_jum`) VALUES
(1, 1, 'jb_1.JPG', '', ''),
(3, 3, 'jb_3.jpg', '', ''),
(9, 192, 'jb_9.jpg', '', ''),
(10, 116, 'jb_10.jpg', '', ''),
(11, 14, 'jb_11.jpg', '', ''),
(12, 20, 'jb_12.jpg', '', ''),
(13, 24, 'jb_13.jpg', '', ''),
(14, 0, 'jb_14.jpg', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

CREATE TABLE `kategori` (
  `id_kategori` int(11) NOT NULL,
  `id_kategori_awal` int(11) NOT NULL,
  `nama_kategori` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `kategori`
--

INSERT INTO `kategori` (`id_kategori`, `id_kategori_awal`, `nama_kategori`) VALUES
(1, 1, 'Muslim Preneurship'),
(2, 1, 'Aditya Gumay Online Acting School'),
(3, 1, 'Sekolah Samara'),
(4, 1, 'School of Life PPA'),
(8, 2, 'Islamic Business Bootcamp'),
(9, 6, 'Reguler'),
(11, 0, 'Merchandise'),
(12, 0, 'Buku-buku'),
(13, 0, 'Mami Welly'),
(14, 0, 'EOA Gold'),
(15, 0, 'Alanabi'),
(16, 0, 'Nutrilemon'),
(17, 0, 'OSB'),
(18, 6, 'Promo'),
(19, 5, 'Gamis Amora Series'),
(20, 5, 'Gamis Daily Series'),
(21, 5, 'Gamis Dinara Series'),
(22, 5, 'Gamis Flowy Series'),
(23, 5, 'Gamis Girly Series'),
(24, 5, 'Gamis Maheera Series'),
(25, 5, 'Gamis Qirania Series');

-- --------------------------------------------------------

--
-- Table structure for table `kategori_awal`
--

CREATE TABLE `kategori_awal` (
  `id_kategori_awal` int(11) NOT NULL,
  `nama_kategori_awal` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `kategori_awal`
--

INSERT INTO `kategori_awal` (`id_kategori_awal`, `nama_kategori_awal`) VALUES
(1, 'Sekolah Online'),
(2, 'Seminar & Training'),
(5, 'Sheikha Gallery'),
(6, 'Umroh Jalan Kembali');

-- --------------------------------------------------------

--
-- Table structure for table `kota_asal`
--

CREATE TABLE `kota_asal` (
  `id_kota_asal` int(11) NOT NULL,
  `nama_kota_asal` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `kota_asal`
--

INSERT INTO `kota_asal` (`id_kota_asal`, `nama_kota_asal`) VALUES
(115, 'Depok');

-- --------------------------------------------------------

--
-- Table structure for table `lempar`
--

CREATE TABLE `lempar` (
  `id` int(11) NOT NULL,
  `id_lempar` varchar(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `lempar`
--

INSERT INTO `lempar` (`id`, `id_lempar`) VALUES
(0, '201016100');

-- --------------------------------------------------------

--
-- Table structure for table `order`
--

CREATE TABLE `order` (
  `id_order` varchar(20) NOT NULL,
  `id_member` varchar(12) NOT NULL,
  `jenis_produk` varchar(32) NOT NULL,
  `total_harga` int(11) NOT NULL,
  `ongkir` int(11) NOT NULL,
  `total_bayar` int(11) NOT NULL,
  `total_reward_member` int(11) NOT NULL,
  `tgl_beli` date NOT NULL,
  `tgl_bayar` date NOT NULL,
  `nama_pembeli` varchar(32) NOT NULL,
  `email_pembeli` varchar(100) NOT NULL,
  `provinsi_pembeli` varchar(50) NOT NULL,
  `kota_pembeli` varchar(50) NOT NULL,
  `kecamatan` varchar(32) NOT NULL,
  `kelurahan` varchar(32) NOT NULL,
  `alamat_pembeli` varchar(300) NOT NULL,
  `kodepos` varchar(11) NOT NULL,
  `nohp_pembeli` varchar(32) NOT NULL,
  `status_pembayaran` varchar(11) NOT NULL,
  `status_pengiriman` varchar(20) NOT NULL,
  `resie_pengiriman` varchar(32) NOT NULL,
  `bool_wa` int(11) NOT NULL,
  `bool_email` int(11) NOT NULL,
  `bool_finish` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `order`
--

INSERT INTO `order` (`id_order`, `id_member`, `jenis_produk`, `total_harga`, `ongkir`, `total_bayar`, `total_reward_member`, `tgl_beli`, `tgl_bayar`, `nama_pembeli`, `email_pembeli`, `provinsi_pembeli`, `kota_pembeli`, `kecamatan`, `kelurahan`, `alamat_pembeli`, `kodepos`, `nohp_pembeli`, `status_pembayaran`, `status_pengiriman`, `resie_pengiriman`, `bool_wa`, `bool_email`, `bool_finish`) VALUES
('', '', '', 0, 0, 0, 0, '2020-03-30', '0000-00-00', '', '', '', '', '', '', '', '', '', 'pending', 'Belum Dikirim', '', 0, 0, 0),
('200306056', 'MB000000001', 'barang', 1250000, 54000, 1304000, 125000, '2020-03-06', '2020-11-04', 'Anas', 'semarsemar102@gmail.com', 'Jawa Barat', 'Bogor', 'Sukaraja', 'Nagrag', 'Kp nagrak no.35', '', '08888662800', 'expire', 'Belum Dikirim', '', 1, 0, 0),
('200308057', 'MB000000001', 'jasa', 300000, 0, 300000, 30000, '2020-03-08', '2020-03-12', 'Welly Nurliana', 'aimeeeee.0912@gmail.com', '', '', '', '', 'Taman Denhaag P4/2 Kota Wisata Cibubur Nagrak Gunung Putri', '', '08127306767', 'expire', 'Belum Dikirim', '', 1, 0, 0),
('200308058', 'MB000000001', 'jasa', 300000, 0, 300000, 30000, '2020-03-08', '2020-03-12', 'Welly', 'aimeeeee.0912@gmail.com', '', '', '', '', 'Taman Denhaag P4/2 Kota Wisata Cibubur Nagrak Gunung Putri', '', '08127306767', 'expire', 'Belum Dikirim', '', 1, 0, 0),
('200308059', 'MB000000001', 'jasa', 300000, 0, 300000, 30000, '2020-03-08', '2020-03-23', 'Welly', 'aimeeeee.0912@gmail.com', '', '', '', '', 'Taman Denhaag P4/2 Kota Wisata Cibubur Nagrak Gunung Putri', '', '08127306767', 'settlement', 'Sudah Sampai', '', 1, 0, 0),
('200308061', 'MB000000001', 'jasa', 300000, 0, 300000, 30000, '2020-03-08', '2020-03-12', 'Risco Frederick', 'amorafr1303@gmail.com', '', '', '', '', 'Kota Wisata P4 No2', '', '081911067555', 'expire', 'Belum Dikirim', '', 1, 0, 0),
('200308062', 'MB000000001', 'jasa', 300000, 0, 300000, 30000, '2020-03-08', '2020-04-01', 'Risco Frederick', 'fintechbizintl@gmail.com', '', '', '', '', 'Pesona Denhaag P4 No.2 Kota Wisata, Jawa Barat', '', '081911067555', 'settlement', 'Sudah Sampai', '', 1, 0, 1),
('200308065', 'MB000000001', 'barang', 300000, 9000, 309000, 30000, '2020-03-08', '2020-11-04', 'Tes123', 'haryadi.gatot13@gmail.com', 'Jawa Barat', 'Bogor', 'Cileungsi ', 'Cipenjo', 'Metland cileungsi cilengsi bogor', '16820', '081310975257', 'settlement', 'Sudah Sampai', '', 1, 0, 0),
('200312066', 'MB000000001', 'jasa', 300000, 0, 300000, 30000, '2020-03-12', '2020-03-16', 'Bagas Naufal Insani', 'bagas_naufal96@yahoo.co.id', '', '', '', '', 'Puri Permai Blok C2 No. 10 ', '', '082210388103', 'expire', 'Belum Dikirim', '', 1, 0, 0),
('200324071', 'MB000000001', 'jasa', 300000, 0, 300000, 30000, '2020-03-24', '2020-04-01', 'Welly', 'aimeeeee.0912@gmail.com', '', '', '', '', 'Taman Denhaag P4/2 Kota Wisata Cibubur Nagrak Gunung Putri', '', '08127306767', 'settlement', 'Belum Dikirim', '', 1, 0, 0),
('200326086', 'MB200326006', 'jasa', 350000, 0, 350000, 30000, '2020-03-26', '2020-04-05', 'Bagas Naufal Insani', 'bagasnaufalinsani@gmail.com', '', '', '', '', 'Puri Permai', '', '082210388103', 'expire', 'Belum Dikirim', '', 1, 0, 0),
('200326087', 'MB200324004', 'jasa', 350000, 0, 350000, 30000, '2020-03-26', '2020-04-05', 'Cahyo Bayu S P', 'sahid_pratomo@yahoo.com', '', '', '', '', 'Baron Kunden', '', '089507229772', 'expire', 'Belum Dikirim', '', 1, 0, 0),
('200326088', 'MB200324004', 'barang', 125000, 9000, 134000, 12500, '2020-03-26', '2020-11-04', 'Cahyo Bayu S P', 'sahid_pratomo@yahoo.com', 'DKI Jakarta', 'Jakarta Selatan', 'Pasar Minggu', 'Pasar', 'Pasarminggu baru', '321312', '089507229772', 'expire', 'Belum Dikirim', '', 1, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `order_detail`
--

CREATE TABLE `order_detail` (
  `id_order_detail` varchar(12) NOT NULL,
  `id_order` varchar(20) NOT NULL,
  `id_produk` int(11) NOT NULL,
  `catatan` varchar(255) NOT NULL,
  `jumlah_beli` int(11) NOT NULL,
  `total` int(11) NOT NULL,
  `id_member` varchar(12) NOT NULL,
  `reward_member` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `order_detail`
--

INSERT INTO `order_detail` (`id_order_detail`, `id_order`, `id_produk`, `catatan`, `jumlah_beli`, `total`, `id_member`, `reward_member`) VALUES
('OD200306001', '200306056', 19, '', 10, 1250000, 'MB000000001', 125000),
('OD200308002', '200308057', 3, '', 1, 300000, 'MB000000001', 30000),
('OD200308003', '200308058', 3, '', 1, 300000, 'MB000000001', 30000),
('OD200308004', '200308061', 1, '', 1, 300000, 'MB000000001', 30000),
('OD200308005', '200308059', 3, '', 1, 300000, 'MB000000001', 30000),
('OD200308006', '200308062', 1, '', 1, 300000, 'MB000000001', 30000),
('OD200308007', '200308065', 11, '', 1, 300000, 'MB000000001', 30000),
('OD200312008', '200312066', 1, '', 1, 300000, 'MB000000001', 30000),
('OD200324009', '200324071', 1, '', 1, 300000, 'MB000000001', 30000),
('OD200326010', '200326084', 1, '', 1, 350000, '', 30000),
('OD200326011', '', 0, '', 1, 0, '', 0),
('OD200326012', '200326086', 1, '', 1, 350000, 'MB200326006', 30000),
('OD200326013', '200326087', 1, '', 1, 350000, 'MB200324004', 30000),
('OD200326014', '200326088', 19, '', 1, 125000, 'MB200324004', 12500),
('OD200327015', '', 0, '', 1, 0, '', 0),
('OD200330016', '', 0, '', 1, 0, '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `produk`
--

CREATE TABLE `produk` (
  `id_produk` int(11) NOT NULL,
  `id_kategori` int(11) NOT NULL,
  `nama_produk` varchar(100) NOT NULL,
  `jenis_produk` varchar(32) NOT NULL,
  `foto_produk1` varchar(32) NOT NULL,
  `foto_produk2` varchar(32) NOT NULL,
  `foto_produk3` varchar(32) NOT NULL,
  `deskripsi` varchar(2000) NOT NULL,
  `berat_produk` int(11) NOT NULL,
  `harga` int(11) NOT NULL,
  `reward_member` int(11) NOT NULL,
  `stok` int(5) NOT NULL,
  `best_seller` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `produk`
--

INSERT INTO `produk` (`id_produk`, `id_kategori`, `nama_produk`, `jenis_produk`, `foto_produk1`, `foto_produk2`, `foto_produk3`, `deskripsi`, `berat_produk`, `harga`, `reward_member`, `stok`, `best_seller`) VALUES
(1, 1, 'Muslim Preneurship', 'jasa', 'pd_1_1.PNG', 'pd_18_2.', 'pd_18_3.', 'Sekolah Online Muslim Preneurship merupakan SEKOLAH ONLINE PERTAMA berbasis WhatsApp yang mampu menghadirkan 7 GURU HEBAT. Bersatu untuk berbagi ilmu dan mengupas tuntas bagaimana cara membangun MINDSET seorang MUSLIM agar menjadi ENTERPRENEUR layaknya para Sahabat Rasulullah yang telah diberikan kekayaan oleh Allah SWT.\r\n\r\nSOMP Batch #2 akan dimulai pada  🕗 Maret 2020\r\n\r\n📈 METODE PEMBELAJARAN\r\n\r\n- In WhatsApp Groups\r\n- FGD (Forum Group Discussion)\r\n\r\n📦 FASILITAS : \r\n✔ Ilmu praktis langsung dari praktisi\r\n✔ Materi Podcast + Audio Mp3 High Quality\r\n✔ Sertifikat\r\n✔ Toko Online Gratis (Produk tersedia)\r\n\r\nTegakkan Bisnis Syariah untuk Hidup Lebih Berkah', 0, 350000, 30000, 2997, 'ya'),
(2, 2, 'Aditya Gumay Online Acting School', 'jasa', 'pd_2_1.jpg', 'pd_19_2.', 'pd_19_3.', 'Bergabunglah bersama Aditya Gumay Online Acting School, Sekolah Akting pertama berbasis online secara EKSKLUSIF menghadirkan maestro ternama, ADITYA GUMAY.\r\n\r\nGRATIS CASTING │ WHATSAPP GROUP │  MENJADI PRODUSER DALAM PROGRAM PRODUSER 10RIBU\r\nCASHBACK 500K UANG PANGKAL PENDAFTARAN DI SANGGAR ANANDA KAWULA MUDA\r\n\r\nMARET , 16.00 – 17.00 WIB\r\nDengan Metode 7Si\r\n<strike>Rp. 2.600.000</strike>\r\nIDR  350K\r\n\r\nINFO & REGISTRATION\r\n(web) adityagumayonline.com\r\n(IG) adityagumay_onlineactingschool\r\n(WA) 0813 1710 0245', 0, 350000, 35000, 0, 'tidak'),
(3, 4, 'School Of Life PPA ', 'jasa', 'pd_3_1.PNG', 'pd_28_2.', 'pd_28_3.', 'School Of Life PPA dimulai pada : …… 2020\r\nTempat : whatsApp Grup\r\nMetode : FGD\r\n', 0, 300000, 30000, 10, 'ya'),
(11, 12, 'Membangun Bisnis Syariah 1 dan 2', 'barang', 'pd_11_1.png', 'pd_11_2.', 'pd_21_3.', 'Sebuah buku yang ditulis oleh salah satu pakar ekonomi Islam, Dwi Condro Triono PhD yang memberi pemahaman baru bagaimana cara membangun Bisnis Syariah sesuai platform Rasulullah SAW.\r\n\r\n•	Buku Membangun Bisnis Syariah Jilid I\r\n•	Penulis: Dwi Condro Triono PhD\r\n•	Penerbit: Daaruts Tsaqofi\r\n•	Tebal: 233 Halaman\r\n•	Ukuran: 23x16 cm\r\n•	Tahun: 2019\r\n\r\nSebuah buku yang ditulis oleh salah satu pakar ekonomi Islam, Dwi Condro Triono PhD yang merupakan lanjutan buku Membangun Bisnis Syariah Jilid I tentang bagaimana cara membangun Bisnis Syariah sesuai platform Rasulullah SAW.\r\n\r\n•	Buku Membangun Bisnis Syariah Jilid II\r\n•	Penulis: Dwi Condro Triono PhD\r\n•	Penerbit: Daaruts Tsaqofi\r\n•	Tebal: 220 Halaman\r\n•	Ukuran: 23x16 cm\r\n•	Tahun: 2019', 1000, 300000, 30000, 19, 'tidak'),
(13, 18, 'Umroh Hemat 2020 Bayar 5 Berangkat 6', 'jasa', 'pd_13_1.PNG', 'pd_29_2.', 'pd_29_3.', 'Spesial bagi kamu para calon tamu Allah di tahun 2020 ini JALAN KEMBALI membuka PROMO HEMAT Bayar 5 Berangkat 6!\r\n\r\n✔ DP block seat CUKUP 2 juta.\r\n\r\n✔ FREE layanan pendampingan dan pembinaan bagi para sahabat yang SANGAT ingin berangkat Umroh.\r\n\r\n🕖 Pemberangkatan pada 11 MARET 2020 selama 9 Hari (start Jakarta).\r\n\r\n✈ TRANSPORTASI: Keberangkatan dan Kepulangan DIRECT menggunakan SAUDI Airlines.\r\n\r\nDengan hotel terbaik yang akan memberikan kenyamanan kepada para jamaah.\r\n🏢 Bintang 4 Makkah: Ramada / Olayan Ajyad (setara)\r\n🏢 Bintang 4 Madinah: Salihiya Golden (setara)\r\n\r\nTunggu apalagi? Ambil kesempatan ini! \r\nAjak keluargamu, saudaramu dan temanmu untuk sama-sama beribadah di Tanah Suci yg mulia!\r\n \r\nSegera daftarkan diri kamu untuk mendapatkan seatnya, karena ketersediaan seat terbatas‼\r\n\r\nIg : @umroh_jalankembali\r\nWeb : -\r\nCp : 0811-9596-911(Rain)\r\n', 0, 132500000, 13250000, 10, 'tidak'),
(14, 9, 'Umroh Paket Reguler 2020', 'jasa', 'pd_14_1.PNG', 'pd_31_2.', 'pd_31_3.', '✔ Setiap pekan hanya tertera 100 seats\r\n✔ DP Block seat cukup Rp. 2 juta\r\n✔ Harga sudah ALL IN (perlengkapan & handling)\r\n✔ FREE layanan pendampingan dan pembinaan bagi para Sahabat yang SANGAT ingin berangkat Umroh.\r\n\r\n🕖 Periode 9 HARI pemberangkatan start JAKARTA pada 11 Maret 2020\r\n\r\nINGIN UMROH KAMU LEBIH SERU ?\r\n\r\nKamu bisa pilih paket periode 12 hari hanya tambah 💰 Rp. 1,5juta/pax.\r\n\r\n✈keberangkatan Garuda Indonesia, dan kepulangan Air Asia.\r\n\r\nKapan lagi bisa menikmati fasilitas maskapai terbaik di dunia kebanggaan Bangsa Indonesia dengan harga yang terjangkau serta promo program umroh ini?\r\n\r\nYuk segera daftarkan diri kamu dan keluarga kamu untuk mendapatkan seatnya, karena ketersediaan seat terbatas!\r\n\r\nIg : @umroh_jalankembali\r\nWeb : -\r\nCp : 0811-9596-911(Rain)\r\n', 0, 22900000, 2290000, 9, 'tidak'),
(15, 9, 'YUK HAJI TANPA ANTRI! - Paket Sakinah', 'jasa', 'pd_15_1.PNG', 'pd_32_2.', 'pd_32_3.', 'Kelebihan:\r\n✔ Proses imigrasi yang lebih mudah dan tanpa hambatan\r\n✔ Disediakan apartemen Transit & Tenda AC\r\n📌 Apabila visa tidak keluar, dana akan 100% kembali.\r\n\r\n\r\n✈ Transportasi: SAUDIA Airlines\r\n\r\nJALAN KEMBALI memiliki 2 paket unggulan, yaitu:\r\n>> Paket Sakinah <<\r\nOnly ‼ USD 17.500 \r\n🏢 Hotel Makkah & Madinah : Dar Al Eiman Royal / Setaraf\r\n\r\n>> Paket Mawadah <<\r\nOnly ‼ USD 13.500\r\n🏢 Hotel Makkah: sesuai Akomodasi Masaer\r\n🏢 Hotel Madinah: Dar Eiman Tayba / Setaraf\r\n\r\nDengan program ini kamu bisa LANGSUNG berangkat haji untuk keberangkatan tanggal 4 Dzulhijjah 1441 H atau 25 Juli 2020.\r\n\r\nIg : @umroh_jalankembali\r\nWeb : -\r\nCp : 0811-9596-911(Rain)\r\n', 0, 245000000, 24500000, 10, 'tidak'),
(16, 9, 'YUK HAJI TANPA ANTRI! - Paket Mawadah', 'jasa', 'pd_16_1.PNG', 'pd_33_2.', 'pd_33_3.', 'Kelebihan:\r\n✔ Proses imigrasi yang lebih mudah dan tanpa hambatan\r\n✔ Disediakan apartemen Transit & Tenda AC\r\n📌 Apabila visa tidak keluar, dana akan 100% kembali.\r\n\r\n\r\n✈ Transportasi: SAUDIA Airlines\r\n\r\nJALAN KEMBALI memiliki 2 paket unggulan, yaitu:\r\n>> Paket Sakinah <<\r\nOnly ‼ USD 17.500 \r\n🏢 Hotel Makkah & Madinah : Dar Al Eiman Royal / Setaraf\r\n\r\n>> Paket Mawadah <<\r\nOnly ‼ USD 13.500\r\n🏢 Hotel Makkah: sesuai Akomodasi Masaer\r\n🏢 Hotel Madinah: Dar Eiman Tayba / Setaraf\r\n\r\nDengan program ini kamu bisa LANGSUNG berangkat haji untuk keberangkatan tanggal 4 Dzulhijjah 1441 H atau 25 Juli 2020.\r\n\r\nIg : @umroh_jalankembali\r\nWeb : -\r\nCp : 0811-9596-911(Rain)\r\n', 0, 189000000, 18900000, 10, 'tidak'),
(17, 9, 'Paket Umroh Plus Turki 2020 - Paket Sakinah', 'jasa', 'pd_17_1.PNG', 'pd_34_2.', 'pd_34_3.', 'Umroh Plus Turki menawarkan banyak kesempatan bagi kamu untuk berangkat Umroh sekaligus mengunjungi berbagai tempat di Turki dengan sangat Low Cost daripada mengambil program yang terpisah (Umroh dan Wisata Turki).\r\n\r\nPaket Umroh Plus Turki periode 12 HARI dengan jadwal pemberangkatan:\r\n🕖 15-27 Februari 2020\r\n🕖 10-22 Maret 2020\r\n🕖 15 April\r\n\r\n✈  TURKISH Airlines\r\n\r\nAda 2 paket Unggulan untuk Umroh Plus Turki, yaitu:\r\n \r\n||Paket Sakinah||\r\n💰 IDR 32.6 Juta \r\n🏢 Hotel Makkah & Madinah : Dar Al Eiman Royal / Setaraf\r\n\r\n||Paket Mawadah||\r\n💰 IDR 30,5 Juta\r\n🏢 Hotel Makkah: Haneen Firdaus / Setaraf\r\n🏢 Hotel Madinah: Dar Eiman Tayba / Setaraf\r\n\r\nSemua harga paket sudah INCLUDE:\r\n✔ Makan Fullboard \r\n✔ Perlengkapan\r\n✔ Lounge Umroh\r\n✔ Asuransi\r\n✔ Visa Umroh\r\n\r\nSelama di Turki pun kamu akan diberikan fasilitas dan kenyamanan hotel terbaik.\r\n🏢 Hotel Turki: Hampton By Hilton.\r\n\r\nIg : @umroh_jalankembali\r\nWeb : -\r\nCp : 0811-9596-911(Rain)\r\n', 0, 32600000, 3260000, 10, 'tidak'),
(18, 9, 'Paket Umroh Plus Turki 2020 - Paket Mawadah', 'jasa', 'pd_18_1.PNG', 'pd_35_2.', 'pd_35_3.', 'Umroh Plus Turki menawarkan banyak kesempatan bagi kamu untuk berangkat Umroh sekaligus mengunjungi berbagai tempat di Turki dengan sangat Low Cost daripada mengambil program yang terpisah (Umroh dan Wisata Turki).\r\n\r\nPaket Umroh Plus Turki periode 12 HARI dengan jadwal pemberangkatan:\r\n🕖 15-27 Februari 2020\r\n🕖 10-22 Maret 2020\r\n🕖 15 April\r\n\r\n✈  TURKISH Airlines\r\n\r\nAda 2 paket Unggulan untuk Umroh Plus Turki, yaitu:\r\n \r\n||Paket Sakinah||\r\n💰 IDR 32.6 Juta \r\n🏢 Hotel Makkah & Madinah : Dar Al Eiman Royal / Setaraf\r\n\r\n||Paket Mawadah||\r\n💰 IDR 30,5 Juta\r\n🏢 Hotel Makkah: Haneen Firdaus / Setaraf\r\n🏢 Hotel Madinah: Dar Eiman Tayba / Setaraf\r\n\r\nSemua harga paket sudah INCLUDE:\r\n✔ Makan Fullboard \r\n✔ Perlengkapan\r\n✔ Lounge Umroh\r\n✔ Asuransi\r\n✔ Visa Umroh\r\n\r\nSelama di Turki pun kamu akan diberikan fasilitas dan kenyamanan hotel terbaik.\r\n🏢 Hotel Turki: Hampton By Hilton.\r\n\r\nIg : @umroh_jalankembali\r\nWeb : -\r\nCp : 0811-9596-911(Rain)\r\n', 0, 30500000, 3050000, 10, 'tidak'),
(19, 15, 'Alanabi', 'barang', 'pd_19_1.PNG', 'pd_19_2.png', 'pd_19_3.png', '•	Bersertifikat halal MUI\r\n•	Kandungan alanabi : Kurma (Tamr - Phoenix dactylifera)\r\n•	Siapakah yang dapat mengkonsumsi alanabi?\r\nRemaja dan Dewasa (> 12 – 40 tahun)\r\n•	Cara Penyajian (Serving Suggestion)\r\nLangsung dapat diminum (herbal shoot), atau\r\nDiseduh dengan Â½ gelas air hangat (150 ml) atau dicampur minuman favorit anda (sesuai selera) seperti teh dan susu agar lebih nikmat dan lebih optimal khasiatnya.', 600, 125000, 12500, 1123, 'ya'),
(20, 16, 'Nutri Lemon ', 'barang', 'pd_20_1.PNG', 'pd_23_2.', 'pd_23_3.', '•	Isi bersih : 500ml\r\n•	Sertifikat Halal MUI\r\nNo. 00120084060817\r\n•	Komposisi:\r\n100% Perasan Buah Lemon Murni tanpa campuran air dan ditambah natrium Benzoat\r\n•	Informasi Nilai Gizi:\r\nDalam 500ml NutriLemon Terdapat Kandungan:\r\no	Vitamin C : 66,85mg\r\no	Kalsium : 40,35mg\r\no	Zat Besi. : 26,75mg\r\n\r\nIg : @nutrilemon_Indonesia\r\nCp : 081932760904\r\n', 600, 99000, 9900, 5, 'ya'),
(21, 16, 'Nutri Lemon Indonesia (2 Botol)', 'barang', 'pd_21_1.PNG', 'pd_24_2.', 'pd_24_3.', '•	Isi bersih : 500ml\r\n•	Sertifikat Halal MUI\r\nNo. 00120084060817\r\n•	Komposisi:\r\n100% Perasan Buah Lemon Murni tanpa campuran air dan ditambah natrium Benzoat\r\n•	Informasi Nilai Gizi:\r\nDalam 500ml NutriLemon Terdapat Kandungan:\r\no	Vitamin C : 66,85mg\r\no	Kalsium : 40,35mg\r\no	Zat Besi. : 26,75mg\r\n\r\nIg : @nutrilemon_Indonesia\r\nCp : 081932760904\r\n', 1200, 160000, 16000, 5, 'tidak'),
(22, 16, 'Nutri Lemon Indonesia (10 Botol)', 'barang', 'pd_22_1.PNG', 'pd_25_2.', 'pd_25_3.', '•	Isi bersih : 500ml\r\n•	Sertifikat Halal MUI\r\nNo. 00120084060817\r\n•	Komposisi:\r\n100% Perasan Buah Lemon Murni tanpa campuran air dan ditambah natrium Benzoat\r\n•	Informasi Nilai Gizi:\r\nDalam 500ml NutriLemon Terdapat Kandungan:\r\no	Vitamin C : 66,85mg\r\no	Kalsium : 40,35mg\r\no	Zat Besi. : 26,75mg\r\n\r\nIg : @nutrilemon_Indonesia\r\nCp : 081932760904\r\n', 6000, 750000, 75000, 0, 'tidak'),
(23, 16, 'Nutri Lemon Indonesia (50 Botol)', 'barang', 'pd_23_1.PNG', 'pd_26_2.', 'pd_26_3.', '•	Isi bersih : 500ml\r\n•	Sertifikat Halal MUI\r\nNo. 00120084060817\r\n•	Komposisi:\r\n100% Perasan Buah Lemon Murni tanpa campuran air dan ditambah natrium Benzoat\r\n•	Informasi Nilai Gizi:\r\nDalam 500ml NutriLemon Terdapat Kandungan:\r\no	Vitamin C : 66,85mg\r\no	Kalsium : 40,35mg\r\no	Zat Besi. : 26,75mg\r\n\r\nIg : @nutrilemon_Indonesia\r\nCp : 081932760904', 30000, 3500000, 350000, 0, 'tidak'),
(24, 17, 'OSB (Omar Smart Brain)', 'barang', 'pd_24_1.png', 'pd_24_2.png', 'pd_24_3.png', '•	OSB dibuat dari 100% Herbal terbaik pilihan yang sudah mendapat sertifikasi dari BPOM POM TR.153 389 521 dan HALAL MUI No. 00130071780215. \r\n•	AMAN dikonsumsi dan TANPA EFEK SAMPING.\r\n•	Mengapa Harus Vitamin Otak OSB ?\r\n\r\n1.	Terbukti Meningkatkan Daya Ingat dan Konsentrasi\r\n2.	Tanpa Efek Samping dan Aman Dikonsumsi, karena dibuat dari Bahan-Bahan Herbal Pilihan\r\n3.	Bisa untuk Anak, Remaja, Dewasa, Ibu Hamil dan Menyusui', 600, 299000, 29900, 0, 'ya'),
(25, 14, 'EOA Gold 0,1 Gr', 'barang', 'pd_25_1.png', 'pd_25_2.png', '', 'EOA Gold adalah Logam Mulia (LM) yang dikeluarkan oleh PT. Emas Optimasi Abadi (EOA) untuk meningkatkan nilai lebih (value) berupa perlindungan dan keamanan bagi investasi Anda.', 50, 101500, 10150, 1, 'ya'),
(26, 14, 'EOA Gold 0,2 Gr', 'barang', 'pd_26_1.png', 'pd_26_2.png', '', 'EOA Gold adalah Logam Mulia (LM) yang dikeluarkan oleh PT. Emas Optimasi Abadi (EOA) untuk meningkatkan nilai lebih (value) berupa perlindungan dan keamanan bagi investasi Anda.', 100, 198000, 19800, 4, 'tidak'),
(27, 14, 'EOA Gold 0,5 Gr', 'barang', 'pd_27_1.png', 'pd_27_2.png', '', 'EOA Gold adalah Logam Mulia (LM) yang dikeluarkan oleh PT. Emas Optimasi Abadi (EOA) untuk meningkatkan nilai lebih (value) berupa perlindungan dan keamanan bagi investasi Anda.', 250, 451000, 45100, 2, 'tidak'),
(28, 14, 'EOA Gold 1 Gr', 'barang', 'pd_28_1.png', 'pd_28_2.png', '', 'EOA Gold adalah Logam Mulia (LM) yang dikeluarkan oleh PT. Emas Optimasi Abadi (EOA) untuk meningkatkan nilai lebih (value) berupa perlindungan dan keamanan bagi investasi Anda.', 500, 779000, 77900, 0, 'tidak'),
(29, 14, 'EOA Gold 2 Gr', 'barang', 'pd_29_1.png', 'pd_29_2.png', '', 'EOA Gold adalah Logam Mulia (LM) yang dikeluarkan oleh PT. Emas Optimasi Abadi (EOA) untuk meningkatkan nilai lebih (value) berupa perlindungan dan keamanan bagi investasi Anda.', 1000, 1508000, 150800, 0, 'tidak'),
(30, 14, 'EOA Gold 5 Gr', 'barang', 'pd_30_1.png', 'pd_30_2.png', '', 'EOA Gold adalah Logam Mulia (LM) yang dikeluarkan oleh PT. Emas Optimasi Abadi (EOA) untuk meningkatkan nilai lebih (value) berupa perlindungan dan keamanan bagi investasi Anda.', 2000, 3721000, 372100, 0, 'tidak'),
(31, 19, 'Amora Pink - Ukuran S', 'barang', 'pd_31_1.png', '', '', '•	Kemiripan warna pada Foto dan Asli 90% sama persis karena efek pencahayaan dan seting di layar hp masing-masing\r\n\r\nSheikha Gallery menghadirkan GAMIS AMORA yang berbahan JERSEY COMBINE WOOLPEACH dengan karakteristik serat yang rapat, halus dan tidak menerawang namun ringan sehingga nyaman dipakai si kecil.\r\n\r\nKontak Us :\r\nIg : @sheikha_gallery \r\nCp : bit.ly/Sheikhagallery\r\n', 500, 165000, 16500, 0, 'ya'),
(32, 19, 'Amora Pink - Ukuran M', 'barang', 'pd_32_1.png', '', '', '•	Kemiripan warna pada Foto dan Asli 90% sama persis karena efek pencahayaan dan seting di layar hp masing-masing\r\n\r\nSheikha Gallery menghadirkan GAMIS AMORA yang berbahan JERSEY COMBINE WOOLPEACH dengan karakteristik serat yang rapat, halus dan tidak menerawang namun ringan sehingga nyaman dipakai si kecil.\r\n\r\nKontak Us :\r\nIg : @sheikha_gallery \r\nCp : bit.ly/Sheikhagallery\r\n', 500, 185000, 18500, 0, 'tidak'),
(33, 19, 'Amora Pink - Ukuran L', 'barang', 'pd_33_1.png', '', '', '•	Kemiripan warna pada Foto dan Asli 90% sama persis karena efek pencahayaan dan seting di layar hp masing-masing\r\n\r\nSheikha Gallery menghadirkan GAMIS AMORA yang berbahan JERSEY COMBINE WOOLPEACH dengan karakteristik serat yang rapat, halus dan tidak menerawang namun ringan sehingga nyaman dipakai si kecil.\r\n\r\nKontak Us :\r\nIg : @sheikha_gallery \r\nCp : bit.ly/Sheikhagallery\r\n', 500, 205000, 20500, 0, 'tidak'),
(34, 19, 'Amora Pink - Ukuran XL', 'barang', 'pd_34_1.png', '', '', '•	Kemiripan warna pada Foto dan Asli 90% sama persis karena efek pencahayaan dan seting di layar hp masing-masing\r\n\r\nSheikha Gallery menghadirkan GAMIS AMORA yang berbahan JERSEY COMBINE WOOLPEACH dengan karakteristik serat yang rapat, halus dan tidak menerawang namun ringan sehingga nyaman dipakai si kecil.\r\n\r\nKontak Us :\r\nIg : @sheikha_gallery \r\nCp : bit.ly/Sheikhagallery\r\n', 500, 225000, 22500, 0, 'tidak'),
(35, 19, 'Amora Pink - Ukuran XXL', 'barang', 'pd_35_1.png', '', '', '•	Kemiripan warna pada Foto dan Asli 90% sama persis karena efek pencahayaan dan seting di layar hp masing-masing\r\n\r\nSheikha Gallery menghadirkan GAMIS AMORA yang berbahan JERSEY COMBINE WOOLPEACH dengan karakteristik serat yang rapat, halus dan tidak menerawang namun ringan sehingga nyaman dipakai si kecil.\r\n\r\nKontak Us :\r\nIg : @sheikha_gallery \r\nCp : bit.ly/Sheikhagallery\r\n', 500, 245000, 24500, 0, 'tidak'),
(36, 19, 'Amora Yellow - Ukuran S', 'barang', 'pd_36_1.png', '', '', '•	Kemiripan warna pada Foto dan Asli 90% sama persis karena efek pencahayaan dan seting di layar hp masing-masing\r\n\r\nSheikha Gallery menghadirkan GAMIS AMORA yang berbahan JERSEY COMBINE WOOLPEACH dengan karakteristik serat yang rapat, halus dan tidak menerawang namun ringan sehingga nyaman dipakai si kecil.\r\n\r\nKontak Us :\r\nIg : @sheikha_gallery \r\nCp : bit.ly/Sheikhagallery\r\n', 500, 165000, 16500, 0, 'ya'),
(37, 19, 'Amora Yellow - Ukuran M', 'barang', 'pd_37_1.png', '', '', '•	Kemiripan warna pada Foto dan Asli 90% sama persis karena efek pencahayaan dan seting di layar hp masing-masing\r\n\r\nSheikha Gallery menghadirkan GAMIS AMORA yang berbahan JERSEY COMBINE WOOLPEACH dengan karakteristik serat yang rapat, halus dan tidak menerawang namun ringan sehingga nyaman dipakai si kecil.\r\n\r\nKontak Us :\r\nIg : @sheikha_gallery \r\nCp : bit.ly/Sheikhagallery\r\n', 500, 185000, 18500, 1, 'tidak'),
(38, 19, 'Amora Yellow - Ukuran L', 'barang', 'pd_38_1.png', '', '', '•	Kemiripan warna pada Foto dan Asli 90% sama persis karena efek pencahayaan dan seting di layar hp masing-masing\r\n\r\nSheikha Gallery menghadirkan GAMIS AMORA yang berbahan JERSEY COMBINE WOOLPEACH dengan karakteristik serat yang rapat, halus dan tidak menerawang namun ringan sehingga nyaman dipakai si kecil.\r\n\r\nKontak Us :\r\nIg : @sheikha_gallery \r\nCp : bit.ly/Sheikhagallery\r\n', 500, 205000, 20500, 2, 'tidak'),
(39, 19, 'Amora Yellow - Ukuran XL', 'barang', 'pd_39_1.png', '', '', '•	Kemiripan warna pada Foto dan Asli 90% sama persis karena efek pencahayaan dan seting di layar hp masing-masing\r\n\r\nSheikha Gallery menghadirkan GAMIS AMORA yang berbahan JERSEY COMBINE WOOLPEACH dengan karakteristik serat yang rapat, halus dan tidak menerawang namun ringan sehingga nyaman dipakai si kecil.\r\n\r\nKontak Us :\r\nIg : @sheikha_gallery \r\nCp : bit.ly/Sheikhagallery\r\n', 500, 225000, 22500, 3, 'tidak'),
(40, 19, 'Amora Yellow - Ukuran XXL', 'barang', 'pd_40_1.png', '', '', '•	Kemiripan warna pada Foto dan Asli 90% sama persis karena efek pencahayaan dan seting di layar hp masing-masing\r\n\r\nSheikha Gallery menghadirkan GAMIS AMORA yang berbahan JERSEY COMBINE WOOLPEACH dengan karakteristik serat yang rapat, halus dan tidak menerawang namun ringan sehingga nyaman dipakai si kecil.\r\n\r\nKontak Us :\r\nIg : @sheikha_gallery \r\nCp : bit.ly/Sheikhagallery\r\n', 500, 245000, 24500, 2, 'tidak'),
(41, 19, 'Amora Dark Grey - Ukuran S', 'barang', 'pd_41_1.png', '', '', '•	Kemiripan warna pada Foto dan Asli 90% sama persis karena efek pencahayaan dan seting di layar hp masing-masing\r\n\r\nSheikha Gallery menghadirkan GAMIS AMORA yang berbahan JERSEY COMBINE WOOLPEACH dengan karakteristik serat yang rapat, halus dan tidak menerawang namun ringan sehingga nyaman dipakai si kecil.\r\n\r\nKontak Us :\r\nIg : @sheikha_gallery \r\nCp : bit.ly/Sheikhagallery\r\n', 500, 165000, 16500, 0, 'tidak'),
(42, 19, 'Amora Dark Grey - Ukuran M', 'barang', 'pd_42_1.png', '', '', '•	Kemiripan warna pada Foto dan Asli 90% sama persis karena efek pencahayaan dan seting di layar hp masing-masing\r\n\r\nSheikha Gallery menghadirkan GAMIS AMORA yang berbahan JERSEY COMBINE WOOLPEACH dengan karakteristik serat yang rapat, halus dan tidak menerawang namun ringan sehingga nyaman dipakai si kecil.\r\n\r\nKontak Us :\r\nIg : @sheikha_gallery \r\nCp : bit.ly/Sheikhagallery\r\n', 500, 185000, 18500, 2, 'tidak'),
(43, 19, 'Amora Dark Grey - Ukuran L', 'barang', 'pd_43_1.png', '', '', '•	Kemiripan warna pada Foto dan Asli 90% sama persis karena efek pencahayaan dan seting di layar hp masing-masing\r\n\r\nSheikha Gallery menghadirkan GAMIS AMORA yang berbahan JERSEY COMBINE WOOLPEACH dengan karakteristik serat yang rapat, halus dan tidak menerawang namun ringan sehingga nyaman dipakai si kecil.\r\n\r\nKontak Us :\r\nIg : @sheikha_gallery \r\nCp : bit.ly/Sheikhagallery\r\n', 500, 205000, 20500, 3, 'tidak'),
(44, 19, 'Amora Dark Grey - Ukuran XL', 'barang', 'pd_44_1.png', '', '', '•	Kemiripan warna pada Foto dan Asli 90% sama persis karena efek pencahayaan dan seting di layar hp masing-masing\r\n\r\nSheikha Gallery menghadirkan GAMIS AMORA yang berbahan JERSEY COMBINE WOOLPEACH dengan karakteristik serat yang rapat, halus dan tidak menerawang namun ringan sehingga nyaman dipakai si kecil.\r\n\r\nKontak Us :\r\nIg : @sheikha_gallery \r\nCp : bit.ly/Sheikhagallery\r\n', 500, 225000, 22500, 2, 'tidak'),
(45, 19, 'Amora Dark Grey - Ukuran XXL', 'barang', 'pd_45_1.png', '', '', '•	Kemiripan warna pada Foto dan Asli 90% sama persis karena efek pencahayaan dan seting di layar hp masing-masing\r\n\r\nSheikha Gallery menghadirkan GAMIS AMORA yang berbahan JERSEY COMBINE WOOLPEACH dengan karakteristik serat yang rapat, halus dan tidak menerawang namun ringan sehingga nyaman dipakai si kecil.\r\n\r\nKontak Us :\r\nIg : @sheikha_gallery \r\nCp : bit.ly/Sheikhagallery\r\n', 500, 245000, 24500, 0, 'tidak'),
(46, 19, 'Amora Dusty Pink - Ukuran S', 'barang', 'pd_46_1.png', '', '', '•	Kemiripan warna pada Foto dan Asli 90% sama persis karena efek pencahayaan dan seting di layar hp masing-masing\r\n\r\nSheikha Gallery menghadirkan GAMIS AMORA yang berbahan JERSEY COMBINE WOOLPEACH dengan karakteristik serat yang rapat, halus dan tidak menerawang namun ringan sehingga nyaman dipakai si kecil.\r\n\r\nKontak Us :\r\nIg : @sheikha_gallery \r\nCp : bit.ly/Sheikhagallery\r\n', 500, 165000, 16500, 0, 'tidak'),
(47, 19, 'Amora Dusty Pink - Ukuran M', 'barang', 'pd_47_1.png', '', '', '•	Kemiripan warna pada Foto dan Asli 90% sama persis karena efek pencahayaan dan seting di layar hp masing-masing\r\n\r\nSheikha Gallery menghadirkan GAMIS AMORA yang berbahan JERSEY COMBINE WOOLPEACH dengan karakteristik serat yang rapat, halus dan tidak menerawang namun ringan sehingga nyaman dipakai si kecil.\r\n\r\nKontak Us :\r\nIg : @sheikha_gallery \r\nCp : bit.ly/Sheikhagallery\r\n', 500, 185000, 18500, 0, 'tidak'),
(48, 19, 'Amora Dusty Pink - Ukuran L', 'barang', 'pd_48_1.png', '', '', '•	Kemiripan warna pada Foto dan Asli 90% sama persis karena efek pencahayaan dan seting di layar hp masing-masing\r\n\r\nSheikha Gallery menghadirkan GAMIS AMORA yang berbahan JERSEY COMBINE WOOLPEACH dengan karakteristik serat yang rapat, halus dan tidak menerawang namun ringan sehingga nyaman dipakai si kecil.\r\n\r\nKontak Us :\r\nIg : @sheikha_gallery \r\nCp : bit.ly/Sheikhagallery\r\n', 500, 205000, 20500, 4, 'tidak'),
(49, 19, 'Amora Dusty Pink - Ukuran XL', 'barang', 'pd_49_1.png', '', '', '•	Kemiripan warna pada Foto dan Asli 90% sama persis karena efek pencahayaan dan seting di layar hp masing-masing\r\n\r\nSheikha Gallery menghadirkan GAMIS AMORA yang berbahan JERSEY COMBINE WOOLPEACH dengan karakteristik serat yang rapat, halus dan tidak menerawang namun ringan sehingga nyaman dipakai si kecil.\r\n\r\nKontak Us :\r\nIg : @sheikha_gallery \r\nCp : bit.ly/Sheikhagallery\r\n', 500, 225000, 22500, 1, 'tidak'),
(50, 19, 'Amora Dusty Pink - Ukuran XXL', 'barang', 'pd_50_1.png', '', '', '•	Kemiripan warna pada Foto dan Asli 90% sama persis karena efek pencahayaan dan seting di layar hp masing-masing\r\n\r\nSheikha Gallery menghadirkan GAMIS AMORA yang berbahan JERSEY COMBINE WOOLPEACH dengan karakteristik serat yang rapat, halus dan tidak menerawang namun ringan sehingga nyaman dipakai si kecil.\r\n\r\nKontak Us :\r\nIg : @sheikha_gallery \r\nCp : bit.ly/Sheikhagallery\r\n', 500, 245000, 24500, 5, 'tidak'),
(51, 19, 'Amora Electric Blue - Ukuran S', 'barang', 'pd_51_1.png', '', '', '•	Kemiripan warna pada Foto dan Asli 90% sama persis karena efek pencahayaan dan seting di layar hp masing-masing\r\n\r\nSheikha Gallery menghadirkan GAMIS AMORA yang berbahan JERSEY COMBINE WOOLPEACH dengan karakteristik serat yang rapat, halus dan tidak menerawang namun ringan sehingga nyaman dipakai si kecil.\r\n\r\nKontak Us :\r\nIg : @sheikha_gallery \r\nCp : bit.ly/Sheikhagallery\r\n', 500, 165000, 16500, 0, 'tidak'),
(52, 19, 'Amora Electric Blue - Ukuran M', 'barang', 'pd_52_1.png', '', '', '•	Kemiripan warna pada Foto dan Asli 90% sama persis karena efek pencahayaan dan seting di layar hp masing-masing\r\n\r\nSheikha Gallery menghadirkan GAMIS AMORA yang berbahan JERSEY COMBINE WOOLPEACH dengan karakteristik serat yang rapat, halus dan tidak menerawang namun ringan sehingga nyaman dipakai si kecil.\r\n\r\nKontak Us :\r\nIg : @sheikha_gallery \r\nCp : bit.ly/Sheikhagallery\r\n', 500, 185000, 18500, 0, 'tidak'),
(53, 19, 'Amora Electric Blue - Ukuran L', 'barang', 'pd_53_1.png', '', '', '•	Kemiripan warna pada Foto dan Asli 90% sama persis karena efek pencahayaan dan seting di layar hp masing-masing\r\n\r\nSheikha Gallery menghadirkan GAMIS AMORA yang berbahan JERSEY COMBINE WOOLPEACH dengan karakteristik serat yang rapat, halus dan tidak menerawang namun ringan sehingga nyaman dipakai si kecil.\r\n\r\nKontak Us :\r\nIg : @sheikha_gallery \r\nCp : bit.ly/Sheikhagallery\r\n', 500, 205000, 20500, 4, 'tidak'),
(54, 19, 'Amora Electric Blue - Ukuran XL', 'barang', 'pd_54_1.png', '', '', '•	Kemiripan warna pada Foto dan Asli 90% sama persis karena efek pencahayaan dan seting di layar hp masing-masing\r\n\r\nSheikha Gallery menghadirkan GAMIS AMORA yang berbahan JERSEY COMBINE WOOLPEACH dengan karakteristik serat yang rapat, halus dan tidak menerawang namun ringan sehingga nyaman dipakai si kecil.\r\n\r\nKontak Us :\r\nIg : @sheikha_gallery \r\nCp : bit.ly/Sheikhagallery\r\n', 500, 225000, 22500, 1, 'tidak'),
(55, 19, 'Amora Electric Blue - Ukuran XXL', 'barang', 'pd_55_1.png', '', '', '•	Kemiripan warna pada Foto dan Asli 90% sama persis karena efek pencahayaan dan seting di layar hp masing-masing\r\n\r\nSheikha Gallery menghadirkan GAMIS AMORA yang berbahan JERSEY COMBINE WOOLPEACH dengan karakteristik serat yang rapat, halus dan tidak menerawang namun ringan sehingga nyaman dipakai si kecil.\r\n\r\nKontak Us :\r\nIg : @sheikha_gallery \r\nCp : bit.ly/Sheikhagallery\r\n', 500, 245000, 24500, 1, 'tidak'),
(56, 19, 'Amora Light Blue - Ukuran S', 'barang', 'pd_56_1.png', '', '', '•	Kemiripan warna pada Foto dan Asli 90% sama persis karena efek pencahayaan dan seting di layar hp masing-masing\r\n\r\nSheikha Gallery menghadirkan GAMIS AMORA yang berbahan JERSEY COMBINE WOOLPEACH dengan karakteristik serat yang rapat, halus dan tidak menerawang namun ringan sehingga nyaman dipakai si kecil.\r\n\r\nKontak Us :\r\nIg : @sheikha_gallery \r\nCp : bit.ly/Sheikhagallery\r\n', 500, 165000, 16500, 0, 'tidak'),
(57, 19, 'Amora Light Blue - Ukuran M', 'barang', 'pd_57_1.png', '', '', '•	Kemiripan warna pada Foto dan Asli 90% sama persis karena efek pencahayaan dan seting di layar hp masing-masing\r\n\r\nSheikha Gallery menghadirkan GAMIS AMORA yang berbahan JERSEY COMBINE WOOLPEACH dengan karakteristik serat yang rapat, halus dan tidak menerawang namun ringan sehingga nyaman dipakai si kecil.\r\n\r\nKontak Us :\r\nIg : @sheikha_gallery \r\nCp : bit.ly/Sheikhagallery\r\n', 500, 185000, 18500, 0, 'tidak'),
(58, 19, 'Amora Light Blue - Ukuran L', 'barang', 'pd_58_1.png', '', '', '•	Kemiripan warna pada Foto dan Asli 90% sama persis karena efek pencahayaan dan seting di layar hp masing-masing\r\n\r\nSheikha Gallery menghadirkan GAMIS AMORA yang berbahan JERSEY COMBINE WOOLPEACH dengan karakteristik serat yang rapat, halus dan tidak menerawang namun ringan sehingga nyaman dipakai si kecil.\r\n\r\nKontak Us :\r\nIg : @sheikha_gallery \r\nCp : bit.ly/Sheikhagallery\r\n', 500, 205000, 20500, 0, 'tidak'),
(59, 19, 'Amora Light Blue - Ukuran XL', 'barang', 'pd_59_1.png', '', '', '•	Kemiripan warna pada Foto dan Asli 90% sama persis karena efek pencahayaan dan seting di layar hp masing-masing\r\n\r\nSheikha Gallery menghadirkan GAMIS AMORA yang berbahan JERSEY COMBINE WOOLPEACH dengan karakteristik serat yang rapat, halus dan tidak menerawang namun ringan sehingga nyaman dipakai si kecil.\r\n\r\nKontak Us :\r\nIg : @sheikha_gallery \r\nCp : bit.ly/Sheikhagallery\r\n', 500, 225000, 22500, 0, 'tidak'),
(60, 19, 'Amora Light Blue - Ukuran XXL', 'barang', 'pd_60_1.png', '', '', '•	Kemiripan warna pada Foto dan Asli 90% sama persis karena efek pencahayaan dan seting di layar hp masing-masing\r\n\r\nSheikha Gallery menghadirkan GAMIS AMORA yang berbahan JERSEY COMBINE WOOLPEACH dengan karakteristik serat yang rapat, halus dan tidak menerawang namun ringan sehingga nyaman dipakai si kecil.\r\n\r\nKontak Us :\r\nIg : @sheikha_gallery \r\nCp : bit.ly/Sheikhagallery\r\n', 500, 245000, 24500, 0, 'tidak'),
(61, 19, 'Amora Light Grey - Ukuran S', 'barang', 'pd_61_1.png', '', '', '•	Kemiripan warna pada Foto dan Asli 90% sama persis karena efek pencahayaan dan seting di layar hp masing-masing\r\n\r\nSheikha Gallery menghadirkan GAMIS AMORA yang berbahan JERSEY COMBINE WOOLPEACH dengan karakteristik serat yang rapat, halus dan tidak menerawang namun ringan sehingga nyaman dipakai si kecil.\r\n\r\nKontak Us :\r\nIg : @sheikha_gallery \r\nCp : bit.ly/Sheikhagallery\r\n', 500, 165000, 16500, 3, 'tidak'),
(62, 19, 'Amora Light Grey - Ukuran M', 'barang', 'pd_62_1.png', '', '', '•	Kemiripan warna pada Foto dan Asli 90% sama persis karena efek pencahayaan dan seting di layar hp masing-masing\r\n\r\nSheikha Gallery menghadirkan GAMIS AMORA yang berbahan JERSEY COMBINE WOOLPEACH dengan karakteristik serat yang rapat, halus dan tidak menerawang namun ringan sehingga nyaman dipakai si kecil.\r\n\r\nKontak Us :\r\nIg : @sheikha_gallery \r\nCp : bit.ly/Sheikhagallery\r\n', 500, 185000, 18500, 6, 'tidak'),
(63, 19, 'Amora Light Grey - Ukuran L', 'barang', 'pd_63_1.png', '', '', '•	Kemiripan warna pada Foto dan Asli 90% sama persis karena efek pencahayaan dan seting di layar hp masing-masing\r\n\r\nSheikha Gallery menghadirkan GAMIS AMORA yang berbahan JERSEY COMBINE WOOLPEACH dengan karakteristik serat yang rapat, halus dan tidak menerawang namun ringan sehingga nyaman dipakai si kecil.\r\n\r\nKontak Us :\r\nIg : @sheikha_gallery \r\nCp : bit.ly/Sheikhagallery\r\n', 500, 205000, 20500, 10, 'tidak'),
(64, 19, 'Amora Light Grey - Ukuran XL', 'barang', 'pd_64_1.png', '', '', '•	Kemiripan warna pada Foto dan Asli 90% sama persis karena efek pencahayaan dan seting di layar hp masing-masing\r\n\r\nSheikha Gallery menghadirkan GAMIS AMORA yang berbahan JERSEY COMBINE WOOLPEACH dengan karakteristik serat yang rapat, halus dan tidak menerawang namun ringan sehingga nyaman dipakai si kecil.\r\n\r\nKontak Us :\r\nIg : @sheikha_gallery \r\nCp : bit.ly/Sheikhagallery\r\n', 500, 225000, 22500, 11, 'tidak'),
(65, 19, 'Amora Light Grey - Ukuran XXL', 'barang', 'pd_65_1.png', '', '', '•	Kemiripan warna pada Foto dan Asli 90% sama persis karena efek pencahayaan dan seting di layar hp masing-masing\r\n\r\nSheikha Gallery menghadirkan GAMIS AMORA yang berbahan JERSEY COMBINE WOOLPEACH dengan karakteristik serat yang rapat, halus dan tidak menerawang namun ringan sehingga nyaman dipakai si kecil.\r\n\r\nKontak Us :\r\nIg : @sheikha_gallery \r\nCp : bit.ly/Sheikhagallery\r\n', 500, 245000, 24500, 0, 'tidak'),
(66, 19, 'Amora Light Pink - Ukuran S', 'barang', 'pd_66_1.png', '', '', '•	Kemiripan warna pada Foto dan Asli 90% sama persis karena efek pencahayaan dan seting di layar hp masing-masing\r\n\r\nSheikha Gallery menghadirkan GAMIS AMORA yang berbahan JERSEY COMBINE WOOLPEACH dengan karakteristik serat yang rapat, halus dan tidak menerawang namun ringan sehingga nyaman dipakai si kecil.\r\n\r\nKontak Us :\r\nIg : @sheikha_gallery \r\nCp : bit.ly/Sheikhagallery\r\n', 500, 165000, 16500, 0, 'tidak'),
(67, 19, 'Amora Light Pink - Ukuran M', 'barang', 'pd_67_1.png', '', '', '•	Kemiripan warna pada Foto dan Asli 90% sama persis karena efek pencahayaan dan seting di layar hp masing-masing\r\n\r\nSheikha Gallery menghadirkan GAMIS AMORA yang berbahan JERSEY COMBINE WOOLPEACH dengan karakteristik serat yang rapat, halus dan tidak menerawang namun ringan sehingga nyaman dipakai si kecil.\r\n\r\nKontak Us :\r\nIg : @sheikha_gallery \r\nCp : bit.ly/Sheikhagallery\r\n', 500, 185000, 18500, 0, 'tidak'),
(68, 19, 'Amora Light Pink - Ukuran L', 'barang', 'pd_68_1.png', '', '', '•	Kemiripan warna pada Foto dan Asli 90% sama persis karena efek pencahayaan dan seting di layar hp masing-masing\r\n\r\nSheikha Gallery menghadirkan GAMIS AMORA yang berbahan JERSEY COMBINE WOOLPEACH dengan karakteristik serat yang rapat, halus dan tidak menerawang namun ringan sehingga nyaman dipakai si kecil.\r\n\r\nKontak Us :\r\nIg : @sheikha_gallery \r\nCp : bit.ly/Sheikhagallery\r\n', 500, 205000, 20500, 0, 'tidak'),
(69, 19, 'Amora Light Pink - Ukuran XL', 'barang', 'pd_69_1.png', '', '', '•	Kemiripan warna pada Foto dan Asli 90% sama persis karena efek pencahayaan dan seting di layar hp masing-masing\r\n\r\nSheikha Gallery menghadirkan GAMIS AMORA yang berbahan JERSEY COMBINE WOOLPEACH dengan karakteristik serat yang rapat, halus dan tidak menerawang namun ringan sehingga nyaman dipakai si kecil.\r\n\r\nKontak Us :\r\nIg : @sheikha_gallery \r\nCp : bit.ly/Sheikhagallery\r\n', 500, 225000, 22500, 1, 'tidak'),
(70, 19, 'Amora Light Pink - Ukuran XXL', 'barang', 'pd_70_1.png', '', '', '•	Kemiripan warna pada Foto dan Asli 90% sama persis karena efek pencahayaan dan seting di layar hp masing-masing\r\n\r\nSheikha Gallery menghadirkan GAMIS AMORA yang berbahan JERSEY COMBINE WOOLPEACH dengan karakteristik serat yang rapat, halus dan tidak menerawang namun ringan sehingga nyaman dipakai si kecil.\r\n\r\nKontak Us :\r\nIg : @sheikha_gallery \r\nCp : bit.ly/Sheikhagallery\r\n', 500, 245000, 24500, 2, 'tidak'),
(71, 19, 'Amora Light Purple - Ukuran S', 'barang', 'pd_71_1.png', '', '', '•	Kemiripan warna pada Foto dan Asli 90% sama persis karena efek pencahayaan dan seting di layar hp masing-masing\r\n\r\nSheikha Gallery menghadirkan GAMIS AMORA yang berbahan JERSEY COMBINE WOOLPEACH dengan karakteristik serat yang rapat, halus dan tidak menerawang namun ringan sehingga nyaman dipakai si kecil.\r\n\r\nKontak Us :\r\nIg : @sheikha_gallery \r\nCp : bit.ly/Sheikhagallery\r\n', 500, 165000, 16500, 1, 'tidak'),
(72, 19, 'Amora Light Purple - Ukuran M', 'barang', 'pd_72_1.png', '', '', '•	Kemiripan warna pada Foto dan Asli 90% sama persis karena efek pencahayaan dan seting di layar hp masing-masing\r\n\r\nSheikha Gallery menghadirkan GAMIS AMORA yang berbahan JERSEY COMBINE WOOLPEACH dengan karakteristik serat yang rapat, halus dan tidak menerawang namun ringan sehingga nyaman dipakai si kecil.\r\n\r\nKontak Us :\r\nIg : @sheikha_gallery \r\nCp : bit.ly/Sheikhagallery\r\n', 500, 185000, 18500, 0, 'tidak'),
(73, 19, 'Amora Light Purple - Ukuran L', 'barang', 'pd_73_1.png', '', '', '•	Kemiripan warna pada Foto dan Asli 90% sama persis karena efek pencahayaan dan seting di layar hp masing-masing\r\n\r\nSheikha Gallery menghadirkan GAMIS AMORA yang berbahan JERSEY COMBINE WOOLPEACH dengan karakteristik serat yang rapat, halus dan tidak menerawang namun ringan sehingga nyaman dipakai si kecil.\r\n\r\nKontak Us :\r\nIg : @sheikha_gallery \r\nCp : bit.ly/Sheikhagallery\r\n', 500, 205000, 20500, 5, 'tidak'),
(74, 19, 'Amora Light Purple - Ukuran XL', 'barang', 'pd_74_1.png', '', '', '•	Kemiripan warna pada Foto dan Asli 90% sama persis karena efek pencahayaan dan seting di layar hp masing-masing\r\n\r\nSheikha Gallery menghadirkan GAMIS AMORA yang berbahan JERSEY COMBINE WOOLPEACH dengan karakteristik serat yang rapat, halus dan tidak menerawang namun ringan sehingga nyaman dipakai si kecil.\r\n\r\nKontak Us :\r\nIg : @sheikha_gallery \r\nCp : bit.ly/Sheikhagallery\r\n', 500, 225000, 22500, 2, 'tidak'),
(75, 19, 'Amora Light Purple - Ukuran XXL', 'barang', 'pd_75_1.png', '', '', '•	Kemiripan warna pada Foto dan Asli 90% sama persis karena efek pencahayaan dan seting di layar hp masing-masing\r\n\r\nSheikha Gallery menghadirkan GAMIS AMORA yang berbahan JERSEY COMBINE WOOLPEACH dengan karakteristik serat yang rapat, halus dan tidak menerawang namun ringan sehingga nyaman dipakai si kecil.\r\n\r\nKontak Us :\r\nIg : @sheikha_gallery \r\nCp : bit.ly/Sheikhagallery\r\n', 500, 245000, 24500, 0, 'tidak'),
(76, 21, 'Dinara - Ukuran S', 'barang', 'pd_76_1.png', 'pd_41_2.', 'pd_41_3.', '•	Kemiripan warna pada Foto dan Asli 90% sama persis  karena efek pencahayaan dan seting di layar hp masing-masing\r\n\r\nSheikha Gallery menghadirkan  GAMIS DINARA yang berbahan Jersey Korea Grade A, tidak menerawang dan kaya akan warna dan motif yang cocok digunakan dalam acara resmi ataupun sehari-hari.\r\n\r\nKontak Us :\r\nIg : @sheikha_gallery\r\nCp : bit.ly/Sheikhagallery', 500, 150000, 15000, 17, 'tidak'),
(77, 21, 'Dinara - Ukuran M', 'barang', 'pd_77_1.png', 'pd_41_2.', 'pd_41_3.', '•	Kemiripan warna pada Foto dan Asli 90% sama persis  karena efek pencahayaan dan seting di layar hp masing-masing\r\n\r\nSheikha Gallery menghadirkan  GAMIS DINARA yang berbahan Jersey Korea Grade A, tidak menerawang dan kaya akan warna dan motif yang cocok digunakan dalam acara resmi ataupun sehari-hari.\r\n\r\nKontak Us :\r\nIg : @sheikha_gallery\r\nCp : bit.ly/Sheikhagallery', 500, 170000, 17000, 14, 'tidak'),
(78, 21, 'Dinara - Ukuran L', 'barang', 'pd_78_1.png', 'pd_41_2.', 'pd_41_3.', '•	Kemiripan warna pada Foto dan Asli 90% sama persis  karena efek pencahayaan dan seting di layar hp masing-masing\r\n\r\nSheikha Gallery menghadirkan  GAMIS DINARA yang berbahan Jersey Korea Grade A, tidak menerawang dan kaya akan warna dan motif yang cocok digunakan dalam acara resmi ataupun sehari-hari.\r\n\r\nKontak Us :\r\nIg : @sheikha_gallery\r\nCp : bit.ly/Sheikhagallery', 500, 190000, 19000, 17, 'tidak'),
(79, 21, 'Dinara - Ukuran XL', 'barang', 'pd_79_1.png', 'pd_41_2.', 'pd_41_3.', '•	Kemiripan warna pada Foto dan Asli 90% sama persis  karena efek pencahayaan dan seting di layar hp masing-masing\r\n\r\nSheikha Gallery menghadirkan  GAMIS DINARA yang berbahan Jersey Korea Grade A, tidak menerawang dan kaya akan warna dan motif yang cocok digunakan dalam acara resmi ataupun sehari-hari.\r\n\r\nKontak Us :\r\nIg : @sheikha_gallery\r\nCp : bit.ly/Sheikhagallery', 500, 210000, 21000, 17, 'tidak'),
(80, 22, 'Flowy Grey - Ukuran S', 'barang', 'pd_80_1.PNG', 'pd_42_2.', 'pd_42_3.', '•	Kemiripan warna pada Foto dan Asli 90% sama persis  karena efek pencahayaan dan seting di layar hp masing-masing\r\n\r\nSheikha Gallery menghadirkan GAMIS FLOWY SERIES yang berbahan Jersey Korea Grade A, berbahan halus, tidak menerawang dan jatuh saat dipakai sehingga bisa digunakan daalam aktifitas sehari-hari.  \r\n\r\nKontak Us :\r\nIg : @sheikha_gallery \r\nCp : bit.ly/Sheikhagallery\r\n', 500, 160000, 16000, 8, 'tidak'),
(81, 22, 'Flowy Grey - Ukuran M', 'barang', 'pd_81_1.PNG', 'pd_42_2.', 'pd_42_3.', '•	Kemiripan warna pada Foto dan Asli 90% sama persis  karena efek pencahayaan dan seting di layar hp masing-masing\r\n\r\nSheikha Gallery menghadirkan GAMIS FLOWY SERIES yang berbahan Jersey Korea Grade A, berbahan halus, tidak menerawang dan jatuh saat dipakai sehingga bisa digunakan daalam aktifitas sehari-hari.  \r\n\r\nKontak Us :\r\nIg : @sheikha_gallery \r\nCp : bit.ly/Sheikhagallery\r\n', 500, 180000, 18000, 11, 'tidak'),
(82, 22, 'Flowy Grey - Ukuran L', 'barang', 'pd_82_1.PNG', 'pd_42_2.', 'pd_42_3.', '•	Kemiripan warna pada Foto dan Asli 90% sama persis  karena efek pencahayaan dan seting di layar hp masing-masing\r\n\r\nSheikha Gallery menghadirkan GAMIS FLOWY SERIES yang berbahan Jersey Korea Grade A, berbahan halus, tidak menerawang dan jatuh saat dipakai sehingga bisa digunakan daalam aktifitas sehari-hari.  \r\n\r\nKontak Us :\r\nIg : @sheikha_gallery \r\nCp : bit.ly/Sheikhagallery\r\n', 500, 200000, 20000, 6, 'tidak'),
(83, 22, 'Flowy Grey - Ukuran XL', 'barang', 'pd_83_1.PNG', 'pd_42_2.', 'pd_42_3.', '•	Kemiripan warna pada Foto dan Asli 90% sama persis  karena efek pencahayaan dan seting di layar hp masing-masing\r\n\r\nSheikha Gallery menghadirkan GAMIS FLOWY SERIES yang berbahan Jersey Korea Grade A, berbahan halus, tidak menerawang dan jatuh saat dipakai sehingga bisa digunakan daalam aktifitas sehari-hari.  \r\n\r\nKontak Us :\r\nIg : @sheikha_gallery \r\nCp : bit.ly/Sheikhagallery\r\n', 500, 220000, 22000, 5, 'tidak'),
(84, 22, 'Flowy Navy - Ukuran S', 'barang', 'pd_84_1.png', 'pd_42_2.', 'pd_42_3.', '•	Kemiripan warna pada Foto dan Asli 90% sama persis  karena efek pencahayaan dan seting di layar hp masing-masing\r\n\r\nSheikha Gallery menghadirkan GAMIS FLOWY SERIES yang berbahan Jersey Korea Grade A, berbahan halus, tidak menerawang dan jatuh saat dipakai sehingga bisa digunakan daalam aktifitas sehari-hari.  \r\n\r\nKontak Us :\r\nIg : @sheikha_gallery \r\nCp : bit.ly/Sheikhagallery\r\n', 500, 160000, 16000, 7, 'tidak'),
(85, 22, 'Flowy Navy - Ukuran M', 'barang', 'pd_85_1.png', 'pd_42_2.', 'pd_42_3.', '•	Kemiripan warna pada Foto dan Asli 90% sama persis  karena efek pencahayaan dan seting di layar hp masing-masing\r\n\r\nSheikha Gallery menghadirkan GAMIS FLOWY SERIES yang berbahan Jersey Korea Grade A, berbahan halus, tidak menerawang dan jatuh saat dipakai sehingga bisa digunakan daalam aktifitas sehari-hari.  \r\n\r\nKontak Us :\r\nIg : @sheikha_gallery \r\nCp : bit.ly/Sheikhagallery\r\n', 500, 180000, 18000, 8, 'tidak'),
(86, 22, 'Flowy Navy - Ukuran L', 'barang', 'pd_86_1.png', 'pd_42_2.', 'pd_42_3.', '•	Kemiripan warna pada Foto dan Asli 90% sama persis  karena efek pencahayaan dan seting di layar hp masing-masing\r\n\r\nSheikha Gallery menghadirkan GAMIS FLOWY SERIES yang berbahan Jersey Korea Grade A, berbahan halus, tidak menerawang dan jatuh saat dipakai sehingga bisa digunakan daalam aktifitas sehari-hari.  \r\n\r\nKontak Us :\r\nIg : @sheikha_gallery \r\nCp : bit.ly/Sheikhagallery\r\n', 500, 200000, 20000, 9, 'tidak'),
(87, 22, 'Flowy Navy - Ukuran XL', 'barang', 'pd_87_1.png', 'pd_42_2.', 'pd_42_3.', '•	Kemiripan warna pada Foto dan Asli 90% sama persis  karena efek pencahayaan dan seting di layar hp masing-masing\r\n\r\nSheikha Gallery menghadirkan GAMIS FLOWY SERIES yang berbahan Jersey Korea Grade A, berbahan halus, tidak menerawang dan jatuh saat dipakai sehingga bisa digunakan daalam aktifitas sehari-hari.  \r\n\r\nKontak Us :\r\nIg : @sheikha_gallery \r\nCp : bit.ly/Sheikhagallery\r\n', 500, 220000, 22000, 6, 'tidak'),
(88, 22, 'Flowy Red - Ukuran S', 'barang', 'pd_88_1.png', 'pd_42_2.', 'pd_42_3.', '•	Kemiripan warna pada Foto dan Asli 90% sama persis  karena efek pencahayaan dan seting di layar hp masing-masing\r\n\r\nSheikha Gallery menghadirkan GAMIS FLOWY SERIES yang berbahan Jersey Korea Grade A, berbahan halus, tidak menerawang dan jatuh saat dipakai sehingga bisa digunakan daalam aktifitas sehari-hari.  \r\n\r\nKontak Us :\r\nIg : @sheikha_gallery \r\nCp : bit.ly/Sheikhagallery\r\n', 500, 160000, 16000, 5, 'tidak'),
(89, 22, 'Flowy Red - Ukuran M', 'barang', 'pd_89_1.png', 'pd_42_2.', 'pd_42_3.', '•	Kemiripan warna pada Foto dan Asli 90% sama persis  karena efek pencahayaan dan seting di layar hp masing-masing\r\n\r\nSheikha Gallery menghadirkan GAMIS FLOWY SERIES yang berbahan Jersey Korea Grade A, berbahan halus, tidak menerawang dan jatuh saat dipakai sehingga bisa digunakan daalam aktifitas sehari-hari.  \r\n\r\nKontak Us :\r\nIg : @sheikha_gallery \r\nCp : bit.ly/Sheikhagallery\r\n', 500, 180000, 18000, 7, 'tidak'),
(90, 22, 'Flowy Red - Ukuran L', 'barang', 'pd_90_1.png', 'pd_42_2.', 'pd_42_3.', '•	Kemiripan warna pada Foto dan Asli 90% sama persis  karena efek pencahayaan dan seting di layar hp masing-masing\r\n\r\nSheikha Gallery menghadirkan GAMIS FLOWY SERIES yang berbahan Jersey Korea Grade A, berbahan halus, tidak menerawang dan jatuh saat dipakai sehingga bisa digunakan daalam aktifitas sehari-hari.  \r\n\r\nKontak Us :\r\nIg : @sheikha_gallery \r\nCp : bit.ly/Sheikhagallery\r\n', 500, 200000, 20000, 5, 'tidak'),
(91, 22, 'Flowy Red - Ukuran XL', 'barang', 'pd_91_1.png', 'pd_42_2.', 'pd_42_3.', '•	Kemiripan warna pada Foto dan Asli 90% sama persis  karena efek pencahayaan dan seting di layar hp masing-masing\r\n\r\nSheikha Gallery menghadirkan GAMIS FLOWY SERIES yang berbahan Jersey Korea Grade A, berbahan halus, tidak menerawang dan jatuh saat dipakai sehingga bisa digunakan daalam aktifitas sehari-hari.  \r\n\r\nKontak Us :\r\nIg : @sheikha_gallery \r\nCp : bit.ly/Sheikhagallery\r\n', 500, 220000, 22000, 5, 'tidak'),
(92, 23, 'Girly - Ukuran S', 'barang', 'pd_92_1.png', 'pd_38_2.', 'pd_38_3.', '•	Kemiripan warna pada Foto dan Asli 90% sama persis  karena efek pencahayaan dan seting di layar hp masing-masing\r\n\r\nSheikha Gallery menghadirkan  GAMIS GIRLY yang berbahan Jersey Korea Grade A dan BROKADE, yang memiliki serat spandex halus, tidak menerawang dan jatuh saat digunakan. Sehingga kaya akan warna dan motif yang cocok digunakan dalam acara resmi ataupun sehari-hari.\r\n\r\nKontak Us :\r\nIg : @sheikha_gallery \r\nCp : bit.ly/Sheikhagallery', 500, 230000, 23000, 0, 'tidak'),
(93, 23, 'Girly - Ukuran M', 'barang', 'pd_93_1.png', 'pd_38_2.', 'pd_38_3.', '•	Kemiripan warna pada Foto dan Asli 90% sama persis  karena efek pencahayaan dan seting di layar hp masing-masing\r\n\r\nSheikha Gallery menghadirkan  GAMIS GIRLY yang berbahan Jersey Korea Grade A dan BROKADE, yang memiliki serat spandex halus, tidak menerawang dan jatuh saat digunakan. Sehingga kaya akan warna dan motif yang cocok digunakan dalam acara resmi ataupun sehari-hari.\r\n\r\nKontak Us :\r\nIg : @sheikha_gallery \r\nCp : bit.ly/Sheikhagallery', 500, 250000, 25000, 0, 'tidak'),
(94, 23, 'Girly - Ukuran L', 'barang', 'pd_94_1.png', 'pd_38_2.', 'pd_38_3.', '•	Kemiripan warna pada Foto dan Asli 90% sama persis  karena efek pencahayaan dan seting di layar hp masing-masing\r\n\r\nSheikha Gallery menghadirkan  GAMIS GIRLY yang berbahan Jersey Korea Grade A dan BROKADE, yang memiliki serat spandex halus, tidak menerawang dan jatuh saat digunakan. Sehingga kaya akan warna dan motif yang cocok digunakan dalam acara resmi ataupun sehari-hari.\r\n\r\nKontak Us :\r\nIg : @sheikha_gallery \r\nCp : bit.ly/Sheikhagallery', 500, 270000, 27000, 2, 'tidak'),
(95, 23, 'Girly - Ukuran XL', 'barang', 'pd_95_1.png', 'pd_38_2.', 'pd_38_3.', '•	Kemiripan warna pada Foto dan Asli 90% sama persis  karena efek pencahayaan dan seting di layar hp masing-masing\r\n\r\nSheikha Gallery menghadirkan  GAMIS GIRLY yang berbahan Jersey Korea Grade A dan BROKADE, yang memiliki serat spandex halus, tidak menerawang dan jatuh saat digunakan. Sehingga kaya akan warna dan motif yang cocok digunakan dalam acara resmi ataupun sehari-hari.\r\n\r\nKontak Us :\r\nIg : @sheikha_gallery \r\nCp : bit.ly/Sheikhagallery', 500, 290000, 27000, 1, 'tidak'),
(96, 24, 'Maheera Biru - Ukuran S', 'barang', 'pd_96_1.PNG', 'pd_39_2.', 'pd_39_3.', '•	Kemiripan warna pada Foto dan Asli 90% sama persis  karena efek pencahayaan dan seting di layar hp masing-masing\r\n\r\nSheikha Gallery menghadirkan GAMIS MAHEERA yang berbahan Jersey Korea Grade A, tidak menerawang dan kaya akan warna dan motif yang cocok digunakan dalam acara resmi ataupun sehari-hari.\r\n\r\nKontak Us :\r\nIg : @sheikha_gallery \r\nCp : bit.ly/Sheikhagallery\r\n', 500, 170000, 17000, 16, 'tidak'),
(97, 24, 'Maheera Biru - Ukuran M', 'barang', 'pd_97_1.PNG', 'pd_39_2.', 'pd_39_3.', '•	Kemiripan warna pada Foto dan Asli 90% sama persis  karena efek pencahayaan dan seting di layar hp masing-masing\r\n\r\nSheikha Gallery menghadirkan GAMIS MAHEERA yang berbahan Jersey Korea Grade A, tidak menerawang dan kaya akan warna dan motif yang cocok digunakan dalam acara resmi ataupun sehari-hari.\r\n\r\nKontak Us :\r\nIg : @sheikha_gallery \r\nCp : bit.ly/Sheikhagallery\r\n', 500, 190000, 19000, 16, 'tidak'),
(98, 24, 'Maheera Biru - Ukuran L', 'barang', 'pd_98_1.PNG', 'pd_39_2.', 'pd_39_3.', '•	Kemiripan warna pada Foto dan Asli 90% sama persis  karena efek pencahayaan dan seting di layar hp masing-masing\r\n\r\nSheikha Gallery menghadirkan GAMIS MAHEERA yang berbahan Jersey Korea Grade A, tidak menerawang dan kaya akan warna dan motif yang cocok digunakan dalam acara resmi ataupun sehari-hari.\r\n\r\nKontak Us :\r\nIg : @sheikha_gallery \r\nCp : bit.ly/Sheikhagallery\r\n', 500, 210000, 21000, 14, 'tidak'),
(99, 24, 'Maheera Biru - Ukuran XL', 'barang', 'pd_99_1.PNG', 'pd_39_2.', 'pd_39_3.', '•	Kemiripan warna pada Foto dan Asli 90% sama persis  karena efek pencahayaan dan seting di layar hp masing-masing\r\n\r\nSheikha Gallery menghadirkan GAMIS MAHEERA yang berbahan Jersey Korea Grade A, tidak menerawang dan kaya akan warna dan motif yang cocok digunakan dalam acara resmi ataupun sehari-hari.\r\n\r\nKontak Us :\r\nIg : @sheikha_gallery \r\nCp : bit.ly/Sheikhagallery\r\n', 500, 230000, 23000, 15, 'tidak'),
(100, 24, 'Maheera Pink - Ukuran S', 'barang', 'pd_100_1.png', 'pd_39_2.', 'pd_39_3.', '•	Kemiripan warna pada Foto dan Asli 90% sama persis  karena efek pencahayaan dan seting di layar hp masing-masing\r\n\r\nSheikha Gallery menghadirkan GAMIS MAHEERA yang berbahan Jersey Korea Grade A, tidak menerawang dan kaya akan warna dan motif yang cocok digunakan dalam acara resmi ataupun sehari-hari.\r\n\r\nKontak Us :\r\nIg : @sheikha_gallery \r\nCp : bit.ly/Sheikhagallery\r\n', 500, 170000, 17000, 17, 'ya'),
(101, 24, 'Maheera Pink - Ukuran M', 'barang', 'pd_101_1.PNG', 'pd_39_2.', 'pd_39_3.', '•	Kemiripan warna pada Foto dan Asli 90% sama persis  karena efek pencahayaan dan seting di layar hp masing-masing\r\n\r\nSheikha Gallery menghadirkan GAMIS MAHEERA yang berbahan Jersey Korea Grade A, tidak menerawang dan kaya akan warna dan motif yang cocok digunakan dalam acara resmi ataupun sehari-hari.\r\n\r\nKontak Us :\r\nIg : @sheikha_gallery \r\nCp : bit.ly/Sheikhagallery\r\n', 500, 190000, 19000, 12, 'tidak'),
(102, 24, 'Maheera Pink - Ukuran L', 'barang', 'pd_102_1.PNG', 'pd_39_2.', 'pd_39_3.', '•	Kemiripan warna pada Foto dan Asli 90% sama persis  karena efek pencahayaan dan seting di layar hp masing-masing\r\n\r\nSheikha Gallery menghadirkan GAMIS MAHEERA yang berbahan Jersey Korea Grade A, tidak menerawang dan kaya akan warna dan motif yang cocok digunakan dalam acara resmi ataupun sehari-hari.\r\n\r\nKontak Us :\r\nIg : @sheikha_gallery \r\nCp : bit.ly/Sheikhagallery\r\n', 500, 210000, 21000, 15, 'tidak');
INSERT INTO `produk` (`id_produk`, `id_kategori`, `nama_produk`, `jenis_produk`, `foto_produk1`, `foto_produk2`, `foto_produk3`, `deskripsi`, `berat_produk`, `harga`, `reward_member`, `stok`, `best_seller`) VALUES
(103, 24, 'Maheera Pink - Ukuran XL', 'barang', 'pd_103_1.PNG', 'pd_39_2.', 'pd_39_3.', '•	Kemiripan warna pada Foto dan Asli 90% sama persis  karena efek pencahayaan dan seting di layar hp masing-masing\r\n\r\nSheikha Gallery menghadirkan GAMIS MAHEERA yang berbahan Jersey Korea Grade A, tidak menerawang dan kaya akan warna dan motif yang cocok digunakan dalam acara resmi ataupun sehari-hari.\r\n\r\nKontak Us :\r\nIg : @sheikha_gallery \r\nCp : bit.ly/Sheikhagallery\r\n', 500, 230000, 23000, 16, 'tidak'),
(104, 25, 'Qirania Mustard - Ukuran S', 'barang', 'pd_104_1.png', 'pd_40_2.', 'pd_40_3.', '•	Harga gamis sudah termasuk Hijab \r\n•	Kemiripan warna pada Foto dan Asli 90% sama persis karena efek pencahayaan dan seting di layar hp masing-masing\r\n\r\nSheikha Gallery menghadirkan GAMIS QIRANIA yang berbahan Jersey Korea Grade A, tidak menerawang dan kaya akan warna dan motif yang cocok digunakan dalam acara resmi ataupun sehari-hari.\r\n\r\nKontak Us :\r\nIg : @sheikha_gallery\r\nCp : bit.ly/Sheikhagallery', 500, 165000, 16500, 6, 'tidak'),
(105, 25, 'Qirania Mustard - Ukuran M', 'barang', 'pd_105_1.png', 'pd_40_2.', 'pd_40_3.', '•	Harga gamis sudah termasuk Hijab \r\n•	Kemiripan warna pada Foto dan Asli 90% sama persis karena efek pencahayaan dan seting di layar hp masing-masing\r\n\r\nSheikha Gallery menghadirkan GAMIS QIRANIA yang berbahan Jersey Korea Grade A, tidak menerawang dan kaya akan warna dan motif yang cocok digunakan dalam acara resmi ataupun sehari-hari.\r\n\r\nKontak Us :\r\nIg : @sheikha_gallery\r\nCp : bit.ly/Sheikhagallery', 500, 185000, 18500, 4, 'tidak'),
(106, 25, 'Qirania Mustard ', 'barang', 'pd_106_1.png', 'pd_40_2.', 'pd_40_3.', '•	Harga gamis sudah termasuk Hijab \r\n•	Kemiripan warna pada Foto dan Asli 90% sama persis karena efek pencahayaan dan seting di layar hp masing-masing\r\n\r\nSheikha Gallery menghadirkan GAMIS QIRANIA yang berbahan Jersey Korea Grade A, tidak menerawang dan kaya akan warna dan motif yang cocok digunakan dalam acara resmi ataupun sehari-hari.\r\n\r\nKontak Us :\r\nIg : @sheikha_gallery\r\nCp : bit.ly/Sheikhagallery', 500, 205000, 20500, 7, 'tidak'),
(107, 25, 'Qirania Mustard - Ukuran XL', 'barang', 'pd_107_1.png', 'pd_40_2.', 'pd_40_3.', '•	Harga gamis sudah termasuk Hijab \r\n•	Kemiripan warna pada Foto dan Asli 90% sama persis karena efek pencahayaan dan seting di layar hp masing-masing\r\n\r\nSheikha Gallery menghadirkan GAMIS QIRANIA yang berbahan Jersey Korea Grade A, tidak menerawang dan kaya akan warna dan motif yang cocok digunakan dalam acara resmi ataupun sehari-hari.\r\n\r\nKontak Us :\r\nIg : @sheikha_gallery\r\nCp : bit.ly/Sheikhagallery', 500, 225000, 22500, 6, 'tidak'),
(108, 25, 'Qirania Purple - Ukuran S', 'barang', 'pd_108_1.png', 'pd_40_2.', 'pd_40_3.', '•	Harga gamis sudah termasuk Hijab \r\n•	Kemiripan warna pada Foto dan Asli 90% sama persis karena efek pencahayaan dan seting di layar hp masing-masing\r\n\r\nSheikha Gallery menghadirkan GAMIS QIRANIA yang berbahan Jersey Korea Grade A, tidak menerawang dan kaya akan warna dan motif yang cocok digunakan dalam acara resmi ataupun sehari-hari.\r\n\r\nKontak Us :\r\nIg : @sheikha_gallery\r\nCp : bit.ly/Sheikhagallery', 500, 165000, 16500, 9, 'tidak'),
(109, 25, 'Qirania Purple - Ukuran M', 'barang', 'pd_109_1.png', 'pd_40_2.', 'pd_40_3.', '•	Harga gamis sudah termasuk Hijab \r\n•	Kemiripan warna pada Foto dan Asli 90% sama persis karena efek pencahayaan dan seting di layar hp masing-masing\r\n\r\nSheikha Gallery menghadirkan GAMIS QIRANIA yang berbahan Jersey Korea Grade A, tidak menerawang dan kaya akan warna dan motif yang cocok digunakan dalam acara resmi ataupun sehari-hari.\r\n\r\nKontak Us :\r\nIg : @sheikha_gallery\r\nCp : bit.ly/Sheikhagallery', 500, 185000, 18500, 9, 'tidak'),
(110, 25, 'Qirania Purple - Ukuran L', 'barang', 'pd_110_1.png', 'pd_40_2.', 'pd_40_3.', '•	Harga gamis sudah termasuk Hijab \r\n•	Kemiripan warna pada Foto dan Asli 90% sama persis karena efek pencahayaan dan seting di layar hp masing-masing\r\n\r\nSheikha Gallery menghadirkan GAMIS QIRANIA yang berbahan Jersey Korea Grade A, tidak menerawang dan kaya akan warna dan motif yang cocok digunakan dalam acara resmi ataupun sehari-hari.\r\n\r\nKontak Us :\r\nIg : @sheikha_gallery\r\nCp : bit.ly/Sheikhagallery', 500, 205000, 20500, 8, 'tidak'),
(111, 25, 'Qirania Purple - Ukuran XL', 'barang', 'pd_111_1.png', 'pd_40_2.', 'pd_40_3.', '•	Harga gamis sudah termasuk Hijab \r\n•	Kemiripan warna pada Foto dan Asli 90% sama persis karena efek pencahayaan dan seting di layar hp masing-masing\r\n\r\nSheikha Gallery menghadirkan GAMIS QIRANIA yang berbahan Jersey Korea Grade A, tidak menerawang dan kaya akan warna dan motif yang cocok digunakan dalam acara resmi ataupun sehari-hari.\r\n\r\nKontak Us :\r\nIg : @sheikha_gallery\r\nCp : bit.ly/Sheikhagallery', 500, 225000, 22500, 10, 'tidak'),
(112, 25, 'Qirania Tosca - Ukuran S', 'barang', 'pd_112_1.png', 'pd_40_2.', 'pd_40_3.', '•	Harga gamis sudah termasuk Hijab \r\n•	Kemiripan warna pada Foto dan Asli 90% sama persis karena efek pencahayaan dan seting di layar hp masing-masing\r\n\r\nSheikha Gallery menghadirkan GAMIS QIRANIA yang berbahan Jersey Korea Grade A, tidak menerawang dan kaya akan warna dan motif yang cocok digunakan dalam acara resmi ataupun sehari-hari.\r\n\r\nKontak Us :\r\nIg : @sheikha_gallery\r\nCp : bit.ly/Sheikhagallery', 500, 165000, 16500, 8, 'tidak'),
(113, 25, 'Qirania Tosca - Ukuran M', 'barang', 'pd_113_1.png', 'pd_40_2.', 'pd_40_3.', '•	Harga gamis sudah termasuk Hijab \r\n•	Kemiripan warna pada Foto dan Asli 90% sama persis karena efek pencahayaan dan seting di layar hp masing-masing\r\n\r\nSheikha Gallery menghadirkan GAMIS QIRANIA yang berbahan Jersey Korea Grade A, tidak menerawang dan kaya akan warna dan motif yang cocok digunakan dalam acara resmi ataupun sehari-hari.\r\n\r\nKontak Us :\r\nIg : @sheikha_gallery\r\nCp : bit.ly/Sheikhagallery', 500, 185000, 18500, 9, 'tidak'),
(114, 25, 'Qirania Tosca - Ukuran L', 'barang', 'pd_114_1.png', 'pd_40_2.', 'pd_40_3.', '•	Harga gamis sudah termasuk Hijab \r\n•	Kemiripan warna pada Foto dan Asli 90% sama persis karena efek pencahayaan dan seting di layar hp masing-masing\r\n\r\nSheikha Gallery menghadirkan GAMIS QIRANIA yang berbahan Jersey Korea Grade A, tidak menerawang dan kaya akan warna dan motif yang cocok digunakan dalam acara resmi ataupun sehari-hari.\r\n\r\nKontak Us :\r\nIg : @sheikha_gallery\r\nCp : bit.ly/Sheikhagallery', 500, 205000, 20500, 9, 'tidak'),
(115, 25, 'Qirania Tosca - Ukuran XL', 'barang', 'pd_115_1.png', 'pd_40_2.', 'pd_40_3.', '•	Harga gamis sudah termasuk Hijab \r\n•	Kemiripan warna pada Foto dan Asli 90% sama persis karena efek pencahayaan dan seting di layar hp masing-masing\r\n\r\nSheikha Gallery menghadirkan GAMIS QIRANIA yang berbahan Jersey Korea Grade A, tidak menerawang dan kaya akan warna dan motif yang cocok digunakan dalam acara resmi ataupun sehari-hari.\r\n\r\nKontak Us :\r\nIg : @sheikha_gallery\r\nCp : bit.ly/Sheikhagallery', 500, 225000, 22500, 9, 'tidak'),
(116, 20, 'Daily Abstrak Pink-Hitam - Ukuran S', 'barang', 'pd_116_1.png', 'pd_116_2.', 'pd_116_3.', '•	Kemiripan warna pada Foto dan Asli 90% sama persis  karena efek pencahayaan dan seting di layar hp masing-masing\r\n\r\nSheikha Gallery menghadirkan GAMIS DAILY SERIES yang berbahan Jersey Korea Grade A, memiliki serat halus, ringan namun tidak menerawang saat dipakai. Sehingga dapat digunakan dalam acara formal maupun sehari-hari.\r\n\r\nKontak Us :\r\nIg : @sheikha_gallery \r\nCp : bit.ly/Sheikhagallery\r\n', 500, 140000, 14000, 4, 'tidak'),
(117, 20, 'Daily Abstrak Pink-Hitam - Ukuran M', 'barang', 'pd_117_1.png', 'pd_116_2.', 'pd_116_3.', '•	Kemiripan warna pada Foto dan Asli 90% sama persis  karena efek pencahayaan dan seting di layar hp masing-masing\r\n\r\nSheikha Gallery menghadirkan GAMIS DAILY SERIES yang berbahan Jersey Korea Grade A, memiliki serat halus, ringan namun tidak menerawang saat dipakai. Sehingga dapat digunakan dalam acara formal maupun sehari-hari.\r\n\r\nKontak Us :\r\nIg : @sheikha_gallery \r\nCp : bit.ly/Sheikhagallery\r\n', 500, 150000, 15000, 2, 'tidak'),
(118, 20, 'Daily Abstrak Pink-Hitam - Ukuran L', 'barang', 'pd_118_1.png', 'pd_116_2.', 'pd_116_3.', '•	Kemiripan warna pada Foto dan Asli 90% sama persis  karena efek pencahayaan dan seting di layar hp masing-masing\r\n\r\nSheikha Gallery menghadirkan GAMIS DAILY SERIES yang berbahan Jersey Korea Grade A, memiliki serat halus, ringan namun tidak menerawang saat dipakai. Sehingga dapat digunakan dalam acara formal maupun sehari-hari.\r\n\r\nKontak Us :\r\nIg : @sheikha_gallery \r\nCp : bit.ly/Sheikhagallery\r\n', 500, 160000, 16000, 1, 'tidak'),
(119, 20, 'Daily Abstrak Pink-Hitam - Ukuran XL', 'barang', 'pd_119_1.png', 'pd_116_2.', 'pd_116_3.', '•	Kemiripan warna pada Foto dan Asli 90% sama persis  karena efek pencahayaan dan seting di layar hp masing-masing\r\n\r\nSheikha Gallery menghadirkan GAMIS DAILY SERIES yang berbahan Jersey Korea Grade A, memiliki serat halus, ringan namun tidak menerawang saat dipakai. Sehingga dapat digunakan dalam acara formal maupun sehari-hari.\r\n\r\nKontak Us :\r\nIg : @sheikha_gallery \r\nCp : bit.ly/Sheikhagallery\r\n', 500, 170000, 17000, 0, 'tidak'),
(120, 20, 'Daily Hijau Kuning - Ukuran S', 'barang', 'pd_120_1.png', 'pd_116_2.', 'pd_116_3.', '•	Kemiripan warna pada Foto dan Asli 90% sama persis  karena efek pencahayaan dan seting di layar hp masing-masing\r\n\r\nSheikha Gallery menghadirkan GAMIS DAILY SERIES yang berbahan Jersey Korea Grade A, memiliki serat halus, ringan namun tidak menerawang saat dipakai. Sehingga dapat digunakan dalam acara formal maupun sehari-hari.\r\n\r\nKontak Us :\r\nIg : @sheikha_gallery \r\nCp : bit.ly/Sheikhagallery\r\n', 500, 140000, 14000, 10, 'tidak'),
(121, 20, 'Daily Hijau Kuning - Ukuran M', 'barang', 'pd_121_1.png', 'pd_116_2.', 'pd_116_3.', '•	Kemiripan warna pada Foto dan Asli 90% sama persis  karena efek pencahayaan dan seting di layar hp masing-masing\r\n\r\nSheikha Gallery menghadirkan GAMIS DAILY SERIES yang berbahan Jersey Korea Grade A, memiliki serat halus, ringan namun tidak menerawang saat dipakai. Sehingga dapat digunakan dalam acara formal maupun sehari-hari.\r\n\r\nKontak Us :\r\nIg : @sheikha_gallery \r\nCp : bit.ly/Sheikhagallery\r\n', 500, 150000, 15000, 14, 'tidak'),
(122, 20, 'Daily Hijau Kuning - Ukuran L', 'barang', 'pd_122_1.png', 'pd_116_2.', 'pd_116_3.', '•	Kemiripan warna pada Foto dan Asli 90% sama persis  karena efek pencahayaan dan seting di layar hp masing-masing\r\n\r\nSheikha Gallery menghadirkan GAMIS DAILY SERIES yang berbahan Jersey Korea Grade A, memiliki serat halus, ringan namun tidak menerawang saat dipakai. Sehingga dapat digunakan dalam acara formal maupun sehari-hari.\r\n\r\nKontak Us :\r\nIg : @sheikha_gallery \r\nCp : bit.ly/Sheikhagallery\r\n', 500, 160000, 16000, 12, 'tidak'),
(123, 20, 'Daily Hijau Kuning - Ukuran XL', 'barang', 'pd_123_1.png', 'pd_116_2.', 'pd_116_3.', '•	Kemiripan warna pada Foto dan Asli 90% sama persis  karena efek pencahayaan dan seting di layar hp masing-masing\r\n\r\nSheikha Gallery menghadirkan GAMIS DAILY SERIES yang berbahan Jersey Korea Grade A, memiliki serat halus, ringan namun tidak menerawang saat dipakai. Sehingga dapat digunakan dalam acara formal maupun sehari-hari.\r\n\r\nKontak Us :\r\nIg : @sheikha_gallery \r\nCp : bit.ly/Sheikhagallery\r\n', 500, 170000, 17000, 7, 'tidak'),
(124, 20, 'Daily Macan Warna-warni - Ukuran S', 'barang', 'pd_124_1.png', 'pd_116_2.', 'pd_116_3.', '•	Kemiripan warna pada Foto dan Asli 90% sama persis  karena efek pencahayaan dan seting di layar hp masing-masing\r\n\r\nSheikha Gallery menghadirkan GAMIS DAILY SERIES yang berbahan Jersey Korea Grade A, memiliki serat halus, ringan namun tidak menerawang saat dipakai. Sehingga dapat digunakan dalam acara formal maupun sehari-hari.\r\n\r\nKontak Us :\r\nIg : @sheikha_gallery \r\nCp : bit.ly/Sheikhagallery\r\n', 500, 140000, 14000, 6, 'tidak'),
(125, 20, 'Daily Macan Warna-warni - Ukuran M', 'barang', 'pd_125_1.png', 'pd_116_2.', 'pd_116_3.', '•	Kemiripan warna pada Foto dan Asli 90% sama persis  karena efek pencahayaan dan seting di layar hp masing-masing\r\n\r\nSheikha Gallery menghadirkan GAMIS DAILY SERIES yang berbahan Jersey Korea Grade A, memiliki serat halus, ringan namun tidak menerawang saat dipakai. Sehingga dapat digunakan dalam acara formal maupun sehari-hari.\r\n\r\nKontak Us :\r\nIg : @sheikha_gallery \r\nCp : bit.ly/Sheikhagallery\r\n', 500, 150000, 15000, 5, 'tidak'),
(126, 20, 'Daily Macan Warna-warni - Ukuran L', 'barang', 'pd_126_1.png', 'pd_116_2.', 'pd_116_3.', '•	Kemiripan warna pada Foto dan Asli 90% sama persis  karena efek pencahayaan dan seting di layar hp masing-masing\r\n\r\nSheikha Gallery menghadirkan GAMIS DAILY SERIES yang berbahan Jersey Korea Grade A, memiliki serat halus, ringan namun tidak menerawang saat dipakai. Sehingga dapat digunakan dalam acara formal maupun sehari-hari.\r\n\r\nKontak Us :\r\nIg : @sheikha_gallery \r\nCp : bit.ly/Sheikhagallery\r\n', 500, 160000, 16000, 5, 'tidak'),
(127, 20, 'Daily Macan Warna-warni - Ukuran XL', 'barang', 'pd_127_1.PNG', 'pd_116_2.', 'pd_116_3.', '•	Kemiripan warna pada Foto dan Asli 90% sama persis  karena efek pencahayaan dan seting di layar hp masing-masing\r\n\r\nSheikha Gallery menghadirkan GAMIS DAILY SERIES yang berbahan Jersey Korea Grade A, memiliki serat halus, ringan namun tidak menerawang saat dipakai. Sehingga dapat digunakan dalam acara formal maupun sehari-hari.\r\n\r\nKontak Us :\r\nIg : @sheikha_gallery \r\nCp : bit.ly/Sheikhagallery\r\n', 500, 170000, 17000, 2, 'tidak'),
(128, 20, 'Daily Lurik Warna-warni - Ukuran S', 'barang', 'pd_128_1.png', 'pd_116_2.', 'pd_116_3.', '•	Kemiripan warna pada Foto dan Asli 90% sama persis  karena efek pencahayaan dan seting di layar hp masing-masing\r\n\r\nSheikha Gallery menghadirkan GAMIS DAILY SERIES yang berbahan Jersey Korea Grade A, memiliki serat halus, ringan namun tidak menerawang saat dipakai. Sehingga dapat digunakan dalam acara formal maupun sehari-hari.\r\n\r\nKontak Us :\r\nIg : @sheikha_gallery \r\nCp : bit.ly/Sheikhagallery\r\n', 500, 140000, 14000, 4, 'tidak'),
(129, 20, 'Daily Lurik Warna-warni - Ukuran M', 'barang', 'pd_129_1.png', 'pd_116_2.', 'pd_116_3.', '•	Kemiripan warna pada Foto dan Asli 90% sama persis  karena efek pencahayaan dan seting di layar hp masing-masing\r\n\r\nSheikha Gallery menghadirkan GAMIS DAILY SERIES yang berbahan Jersey Korea Grade A, memiliki serat halus, ringan namun tidak menerawang saat dipakai. Sehingga dapat digunakan dalam acara formal maupun sehari-hari.\r\n\r\nKontak Us :\r\nIg : @sheikha_gallery \r\nCp : bit.ly/Sheikhagallery\r\n', 500, 150000, 15000, 5, 'tidak'),
(130, 20, 'Daily Lurik Warna-warni - Ukuran L', 'barang', 'pd_130_1.png', 'pd_116_2.', 'pd_116_3.', '•	Kemiripan warna pada Foto dan Asli 90% sama persis  karena efek pencahayaan dan seting di layar hp masing-masing\r\n\r\nSheikha Gallery menghadirkan GAMIS DAILY SERIES yang berbahan Jersey Korea Grade A, memiliki serat halus, ringan namun tidak menerawang saat dipakai. Sehingga dapat digunakan dalam acara formal maupun sehari-hari.\r\n\r\nKontak Us :\r\nIg : @sheikha_gallery \r\nCp : bit.ly/Sheikhagallery\r\n', 500, 160000, 16000, 2, 'tidak'),
(131, 20, 'Daily Lurik Warna-warni - Ukuran XL', 'barang', 'pd_131_1.png', 'pd_116_2.', 'pd_116_3.', '•	Kemiripan warna pada Foto dan Asli 90% sama persis  karena efek pencahayaan dan seting di layar hp masing-masing\r\n\r\nSheikha Gallery menghadirkan GAMIS DAILY SERIES yang berbahan Jersey Korea Grade A, memiliki serat halus, ringan namun tidak menerawang saat dipakai. Sehingga dapat digunakan dalam acara formal maupun sehari-hari.\r\n\r\nKontak Us :\r\nIg : @sheikha_gallery \r\nCp : bit.ly/Sheikhagallery\r\n', 500, 170000, 17000, 1, 'tidak'),
(132, 20, 'Daily Kotak-kotak Biru - Ukuran S', 'barang', 'pd_132_1.png', 'pd_116_2.', 'pd_116_3.', '•	Kemiripan warna pada Foto dan Asli 90% sama persis  karena efek pencahayaan dan seting di layar hp masing-masing\r\n\r\nSheikha Gallery menghadirkan GAMIS DAILY SERIES yang berbahan Jersey Korea Grade A, memiliki serat halus, ringan namun tidak menerawang saat dipakai. Sehingga dapat digunakan dalam acara formal maupun sehari-hari.\r\n\r\nKontak Us :\r\nIg : @sheikha_gallery \r\nCp : bit.ly/Sheikhagallery\r\n', 500, 140000, 14000, 3, 'tidak'),
(133, 20, 'Daily Kotak-kotak Biru - Ukuran M', 'barang', 'pd_133_1.png', 'pd_116_2.', 'pd_116_3.', '•	Kemiripan warna pada Foto dan Asli 90% sama persis  karena efek pencahayaan dan seting di layar hp masing-masing\r\n\r\nSheikha Gallery menghadirkan GAMIS DAILY SERIES yang berbahan Jersey Korea Grade A, memiliki serat halus, ringan namun tidak menerawang saat dipakai. Sehingga dapat digunakan dalam acara formal maupun sehari-hari.\r\n\r\nKontak Us :\r\nIg : @sheikha_gallery \r\nCp : bit.ly/Sheikhagallery\r\n', 500, 150000, 15000, 3, 'tidak'),
(134, 20, 'Daily Kotak-kotak Biru - Ukuran L', 'barang', 'pd_134_1.png', 'pd_116_2.', 'pd_116_3.', '•	Kemiripan warna pada Foto dan Asli 90% sama persis  karena efek pencahayaan dan seting di layar hp masing-masing\r\n\r\nSheikha Gallery menghadirkan GAMIS DAILY SERIES yang berbahan Jersey Korea Grade A, memiliki serat halus, ringan namun tidak menerawang saat dipakai. Sehingga dapat digunakan dalam acara formal maupun sehari-hari.\r\n\r\nKontak Us :\r\nIg : @sheikha_gallery \r\nCp : bit.ly/Sheikhagallery\r\n', 500, 160000, 16000, 3, 'tidak'),
(135, 20, 'Daily Kotak-kotak Biru - Ukuran XL', 'barang', 'pd_135_1.png', 'pd_116_2.', 'pd_116_3.', '•	Kemiripan warna pada Foto dan Asli 90% sama persis  karena efek pencahayaan dan seting di layar hp masing-masing\r\n\r\nSheikha Gallery menghadirkan GAMIS DAILY SERIES yang berbahan Jersey Korea Grade A, memiliki serat halus, ringan namun tidak menerawang saat dipakai. Sehingga dapat digunakan dalam acara formal maupun sehari-hari.\r\n\r\nKontak Us :\r\nIg : @sheikha_gallery \r\nCp : bit.ly/Sheikhagallery\r\n', 500, 170000, 17000, 2, 'tidak'),
(136, 20, 'Daily Macan Coklat - Ukuran S', 'barang', 'pd_136_1.png', 'pd_116_2.', 'pd_116_3.', '•	Kemiripan warna pada Foto dan Asli 90% sama persis  karena efek pencahayaan dan seting di layar hp masing-masing\r\n\r\nSheikha Gallery menghadirkan GAMIS DAILY SERIES yang berbahan Jersey Korea Grade A, memiliki serat halus, ringan namun tidak menerawang saat dipakai. Sehingga dapat digunakan dalam acara formal maupun sehari-hari.\r\n\r\nKontak Us :\r\nIg : @sheikha_gallery \r\nCp : bit.ly/Sheikhagallery\r\n', 500, 140000, 14000, 14, 'tidak'),
(137, 20, 'Daily Macan Coklat - Ukuran M', 'barang', 'pd_137_1.png', 'pd_116_2.', 'pd_116_3.', '•	Kemiripan warna pada Foto dan Asli 90% sama persis  karena efek pencahayaan dan seting di layar hp masing-masing\r\n\r\nSheikha Gallery menghadirkan GAMIS DAILY SERIES yang berbahan Jersey Korea Grade A, memiliki serat halus, ringan namun tidak menerawang saat dipakai. Sehingga dapat digunakan dalam acara formal maupun sehari-hari.\r\n\r\nKontak Us :\r\nIg : @sheikha_gallery \r\nCp : bit.ly/Sheikhagallery\r\n', 500, 150000, 15000, 9, 'tidak'),
(138, 20, 'Daily Macan Coklat - Ukuran L', 'barang', 'pd_138_1.png', 'pd_116_2.', 'pd_116_3.', '•	Kemiripan warna pada Foto dan Asli 90% sama persis  karena efek pencahayaan dan seting di layar hp masing-masing\r\n\r\nSheikha Gallery menghadirkan GAMIS DAILY SERIES yang berbahan Jersey Korea Grade A, memiliki serat halus, ringan namun tidak menerawang saat dipakai. Sehingga dapat digunakan dalam acara formal maupun sehari-hari.\r\n\r\nKontak Us :\r\nIg : @sheikha_gallery \r\nCp : bit.ly/Sheikhagallery\r\n', 500, 160000, 16000, 10, 'tidak'),
(139, 20, 'Daily Macan Coklat - Ukuran XL', 'barang', 'pd_139_1.png', 'pd_116_2.', 'pd_116_3.', '•	Kemiripan warna pada Foto dan Asli 90% sama persis  karena efek pencahayaan dan seting di layar hp masing-masing\r\n\r\nSheikha Gallery menghadirkan GAMIS DAILY SERIES yang berbahan Jersey Korea Grade A, memiliki serat halus, ringan namun tidak menerawang saat dipakai. Sehingga dapat digunakan dalam acara formal maupun sehari-hari.\r\n\r\nKontak Us :\r\nIg : @sheikha_gallery \r\nCp : bit.ly/Sheikhagallery\r\n', 500, 170000, 17000, 9, 'tidak'),
(140, 20, 'Daily Hitam Polos - Ukuran S', 'barang', 'pd_140_1.png', 'pd_116_2.', 'pd_116_3.', '•	Kemiripan warna pada Foto dan Asli 90% sama persis  karena efek pencahayaan dan seting di layar hp masing-masing\r\n\r\nSheikha Gallery menghadirkan GAMIS DAILY SERIES yang berbahan Jersey Korea Grade A, memiliki serat halus, ringan namun tidak menerawang saat dipakai. Sehingga dapat digunakan dalam acara formal maupun sehari-hari.\r\n\r\nKontak Us :\r\nIg : @sheikha_gallery \r\nCp : bit.ly/Sheikhagallery\r\n', 500, 140000, 14000, 10, 'tidak'),
(141, 20, 'Daily Hitam Polos - Ukuran M', 'barang', 'pd_141_1.png', 'pd_116_2.', 'pd_116_3.', '•	Kemiripan warna pada Foto dan Asli 90% sama persis  karena efek pencahayaan dan seting di layar hp masing-masing\r\n\r\nSheikha Gallery menghadirkan GAMIS DAILY SERIES yang berbahan Jersey Korea Grade A, memiliki serat halus, ringan namun tidak menerawang saat dipakai. Sehingga dapat digunakan dalam acara formal maupun sehari-hari.\r\n\r\nKontak Us :\r\nIg : @sheikha_gallery \r\nCp : bit.ly/Sheikhagallery\r\n', 500, 150000, 15000, 10, 'tidak'),
(142, 20, 'Daily Hitam Polos - Ukuran L', 'barang', 'pd_142_1.png', 'pd_116_2.', 'pd_116_3.', '•	Kemiripan warna pada Foto dan Asli 90% sama persis  karena efek pencahayaan dan seting di layar hp masing-masing\r\n\r\nSheikha Gallery menghadirkan GAMIS DAILY SERIES yang berbahan Jersey Korea Grade A, memiliki serat halus, ringan namun tidak menerawang saat dipakai. Sehingga dapat digunakan dalam acara formal maupun sehari-hari.\r\n\r\nKontak Us :\r\nIg : @sheikha_gallery \r\nCp : bit.ly/Sheikhagallery\r\n', 500, 160000, 16000, 10, 'tidak'),
(143, 20, 'Daily Hitam Polos - Ukuran XL', 'barang', 'pd_143_1.png', 'pd_116_2.', 'pd_116_3.', '•	Kemiripan warna pada Foto dan Asli 90% sama persis  karena efek pencahayaan dan seting di layar hp masing-masing\r\n\r\nSheikha Gallery menghadirkan GAMIS DAILY SERIES yang berbahan Jersey Korea Grade A, memiliki serat halus, ringan namun tidak menerawang saat dipakai. Sehingga dapat digunakan dalam acara formal maupun sehari-hari.\r\n\r\nKontak Us :\r\nIg : @sheikha_gallery \r\nCp : bit.ly/Sheikhagallery\r\n', 500, 170000, 17000, 10, 'tidak'),
(144, 20, 'Daily Merah Polos - Ukuran S', 'barang', 'pd_144_1.png', 'pd_116_2.', 'pd_116_3.', '•	Kemiripan warna pada Foto dan Asli 90% sama persis  karena efek pencahayaan dan seting di layar hp masing-masing\r\n\r\nSheikha Gallery menghadirkan GAMIS DAILY SERIES yang berbahan Jersey Korea Grade A, memiliki serat halus, ringan namun tidak menerawang saat dipakai. Sehingga dapat digunakan dalam acara formal maupun sehari-hari.\r\n\r\nKontak Us :\r\nIg : @sheikha_gallery \r\nCp : bit.ly/Sheikhagallery\r\n', 500, 140000, 14000, 7, 'tidak'),
(145, 20, 'Daily Merah Polos - Ukuran M', 'barang', 'pd_145_1.png', 'pd_116_2.', 'pd_116_3.', '•	Kemiripan warna pada Foto dan Asli 90% sama persis  karena efek pencahayaan dan seting di layar hp masing-masing\r\n\r\nSheikha Gallery menghadirkan GAMIS DAILY SERIES yang berbahan Jersey Korea Grade A, memiliki serat halus, ringan namun tidak menerawang saat dipakai. Sehingga dapat digunakan dalam acara formal maupun sehari-hari.\r\n\r\nKontak Us :\r\nIg : @sheikha_gallery \r\nCp : bit.ly/Sheikhagallery\r\n', 500, 150000, 15000, 10, 'tidak'),
(146, 20, 'Daily Merah Polos - Ukuran L', 'barang', 'pd_146_1.png', 'pd_116_2.', 'pd_116_3.', '•	Kemiripan warna pada Foto dan Asli 90% sama persis  karena efek pencahayaan dan seting di layar hp masing-masing\r\n\r\nSheikha Gallery menghadirkan GAMIS DAILY SERIES yang berbahan Jersey Korea Grade A, memiliki serat halus, ringan namun tidak menerawang saat dipakai. Sehingga dapat digunakan dalam acara formal maupun sehari-hari.\r\n\r\nKontak Us :\r\nIg : @sheikha_gallery \r\nCp : bit.ly/Sheikhagallery\r\n', 500, 160000, 16000, 7, 'tidak'),
(147, 20, 'Daily Merah Polos - Ukuran XL', 'barang', 'pd_147_1.png', 'pd_116_2.', 'pd_116_3.', '•	Kemiripan warna pada Foto dan Asli 90% sama persis  karena efek pencahayaan dan seting di layar hp masing-masing\r\n\r\nSheikha Gallery menghadirkan GAMIS DAILY SERIES yang berbahan Jersey Korea Grade A, memiliki serat halus, ringan namun tidak menerawang saat dipakai. Sehingga dapat digunakan dalam acara formal maupun sehari-hari.\r\n\r\nKontak Us :\r\nIg : @sheikha_gallery \r\nCp : bit.ly/Sheikhagallery\r\n', 500, 170000, 17000, 8, 'tidak'),
(148, 20, 'Daily Abstrak Hitam Pink - Ukuran S', 'barang', 'pd_148_1.png', 'pd_116_2.', 'pd_116_3.', '•	Kemiripan warna pada Foto dan Asli 90% sama persis  karena efek pencahayaan dan seting di layar hp masing-masing\r\n\r\nSheikha Gallery menghadirkan GAMIS DAILY SERIES yang berbahan Jersey Korea Grade A, memiliki serat halus, ringan namun tidak menerawang saat dipakai. Sehingga dapat digunakan dalam acara formal maupun sehari-hari.\r\n\r\nKontak Us :\r\nIg : @sheikha_gallery \r\nCp : bit.ly/Sheikhagallery\r\n', 500, 140000, 14000, 0, 'tidak'),
(149, 20, 'Daily Abstrak Hitam Pink - Ukuran M', 'barang', 'pd_149_1.png', 'pd_116_2.', 'pd_116_3.', '•	Kemiripan warna pada Foto dan Asli 90% sama persis  karena efek pencahayaan dan seting di layar hp masing-masing\r\n\r\nSheikha Gallery menghadirkan GAMIS DAILY SERIES yang berbahan Jersey Korea Grade A, memiliki serat halus, ringan namun tidak menerawang saat dipakai. Sehingga dapat digunakan dalam acara formal maupun sehari-hari.\r\n\r\nKontak Us :\r\nIg : @sheikha_gallery \r\nCp : bit.ly/Sheikhagallery\r\n', 500, 150000, 15000, 0, 'tidak'),
(150, 20, 'Daily Abstrak Hitam Pink - Ukuran L', 'barang', 'pd_150_1.png', 'pd_116_2.', 'pd_116_3.', '•	Kemiripan warna pada Foto dan Asli 90% sama persis  karena efek pencahayaan dan seting di layar hp masing-masing\r\n\r\nSheikha Gallery menghadirkan GAMIS DAILY SERIES yang berbahan Jersey Korea Grade A, memiliki serat halus, ringan namun tidak menerawang saat dipakai. Sehingga dapat digunakan dalam acara formal maupun sehari-hari.\r\n\r\nKontak Us :\r\nIg : @sheikha_gallery \r\nCp : bit.ly/Sheikhagallery\r\n', 500, 160000, 16000, 0, 'tidak'),
(151, 20, 'Daily Abstrak Hitam Pink - Ukuran XL', 'barang', 'pd_151_1.png', 'pd_116_2.', 'pd_116_3.', '•	Kemiripan warna pada Foto dan Asli 90% sama persis  karena efek pencahayaan dan seting di layar hp masing-masing\r\n\r\nSheikha Gallery menghadirkan GAMIS DAILY SERIES yang berbahan Jersey Korea Grade A, memiliki serat halus, ringan namun tidak menerawang saat dipakai. Sehingga dapat digunakan dalam acara formal maupun sehari-hari.\r\n\r\nKontak Us :\r\nIg : @sheikha_gallery \r\nCp : bit.ly/Sheikhagallery\r\n', 500, 170000, 17000, 0, 'tidak'),
(152, 20, 'Daily Bunga Biru Merah - Ukuran S', 'barang', 'pd_152_1.png', 'pd_116_2.', 'pd_116_3.', '•	Kemiripan warna pada Foto dan Asli 90% sama persis  karena efek pencahayaan dan seting di layar hp masing-masing\r\n\r\nSheikha Gallery menghadirkan GAMIS DAILY SERIES yang berbahan Jersey Korea Grade A, memiliki serat halus, ringan namun tidak menerawang saat dipakai. Sehingga dapat digunakan dalam acara formal maupun sehari-hari.\r\n\r\nKontak Us :\r\nIg : @sheikha_gallery \r\nCp : bit.ly/Sheikhagallery\r\n', 500, 140000, 14000, 0, 'tidak'),
(153, 20, 'Daily Bunga Biru Merah - Ukuran M', 'barang', 'pd_153_1.png', 'pd_116_2.', 'pd_116_3.', '•	Kemiripan warna pada Foto dan Asli 90% sama persis  karena efek pencahayaan dan seting di layar hp masing-masing\r\n\r\nSheikha Gallery menghadirkan GAMIS DAILY SERIES yang berbahan Jersey Korea Grade A, memiliki serat halus, ringan namun tidak menerawang saat dipakai. Sehingga dapat digunakan dalam acara formal maupun sehari-hari.\r\n\r\nKontak Us :\r\nIg : @sheikha_gallery \r\nCp : bit.ly/Sheikhagallery\r\n', 500, 150000, 15000, 0, 'tidak'),
(154, 20, 'Daily Bunga Biru Merah - Ukuran L', 'barang', 'pd_154_1.png', 'pd_116_2.', 'pd_116_3.', '•	Kemiripan warna pada Foto dan Asli 90% sama persis  karena efek pencahayaan dan seting di layar hp masing-masing\r\n\r\nSheikha Gallery menghadirkan GAMIS DAILY SERIES yang berbahan Jersey Korea Grade A, memiliki serat halus, ringan namun tidak menerawang saat dipakai. Sehingga dapat digunakan dalam acara formal maupun sehari-hari.\r\n\r\nKontak Us :\r\nIg : @sheikha_gallery \r\nCp : bit.ly/Sheikhagallery\r\n', 500, 160000, 16000, 2, 'tidak'),
(155, 20, 'Daily Bunga Biru Merah - Ukuran XL', 'barang', 'pd_155_1.png', 'pd_116_2.', 'pd_116_3.', '•	Kemiripan warna pada Foto dan Asli 90% sama persis  karena efek pencahayaan dan seting di layar hp masing-masing\r\n\r\nSheikha Gallery menghadirkan GAMIS DAILY SERIES yang berbahan Jersey Korea Grade A, memiliki serat halus, ringan namun tidak menerawang saat dipakai. Sehingga dapat digunakan dalam acara formal maupun sehari-hari.\r\n\r\nKontak Us :\r\nIg : @sheikha_gallery \r\nCp : bit.ly/Sheikhagallery\r\n', 500, 170000, 17000, 1, 'tidak'),
(156, 20, 'Daily Polkadot Coklat Hitam - Ukuran S', 'barang', 'pd_156_1.png', 'pd_116_2.', 'pd_116_3.', '•	Kemiripan warna pada Foto dan Asli 90% sama persis  karena efek pencahayaan dan seting di layar hp masing-masing\r\n\r\nSheikha Gallery menghadirkan GAMIS DAILY SERIES yang berbahan Jersey Korea Grade A, memiliki serat halus, ringan namun tidak menerawang saat dipakai. Sehingga dapat digunakan dalam acara formal maupun sehari-hari.\r\n\r\nKontak Us :\r\nIg : @sheikha_gallery \r\nCp : bit.ly/Sheikhagallery\r\n', 500, 140000, 14000, 7, 'tidak'),
(157, 20, 'Daily Polkadot Coklat Hitam - Ukuran M', 'barang', 'pd_157_1.png', 'pd_116_2.', 'pd_116_3.', '•	Kemiripan warna pada Foto dan Asli 90% sama persis  karena efek pencahayaan dan seting di layar hp masing-masing\r\n\r\nSheikha Gallery menghadirkan GAMIS DAILY SERIES yang berbahan Jersey Korea Grade A, memiliki serat halus, ringan namun tidak menerawang saat dipakai. Sehingga dapat digunakan dalam acara formal maupun sehari-hari.\r\n\r\nKontak Us :\r\nIg : @sheikha_gallery \r\nCp : bit.ly/Sheikhagallery\r\n', 500, 150000, 15000, 10, 'tidak'),
(158, 20, 'Daily Polkadot Coklat Hitam - Ukuran L', 'barang', 'pd_158_1.png', 'pd_116_2.', 'pd_116_3.', '•	Kemiripan warna pada Foto dan Asli 90% sama persis  karena efek pencahayaan dan seting di layar hp masing-masing\r\n\r\nSheikha Gallery menghadirkan GAMIS DAILY SERIES yang berbahan Jersey Korea Grade A, memiliki serat halus, ringan namun tidak menerawang saat dipakai. Sehingga dapat digunakan dalam acara formal maupun sehari-hari.\r\n\r\nKontak Us :\r\nIg : @sheikha_gallery \r\nCp : bit.ly/Sheikhagallery\r\n', 500, 160000, 16000, 4, 'tidak'),
(159, 20, 'Daily Polkadot Coklat Hitam - Ukuran XL', 'barang', 'pd_159_1.png', 'pd_116_2.', 'pd_116_3.', '•	Kemiripan warna pada Foto dan Asli 90% sama persis  karena efek pencahayaan dan seting di layar hp masing-masing\r\n\r\nSheikha Gallery menghadirkan GAMIS DAILY SERIES yang berbahan Jersey Korea Grade A, memiliki serat halus, ringan namun tidak menerawang saat dipakai. Sehingga dapat digunakan dalam acara formal maupun sehari-hari.\r\n\r\nKontak Us :\r\nIg : @sheikha_gallery \r\nCp : bit.ly/Sheikhagallery\r\n', 500, 170000, 17000, 8, 'tidak'),
(160, 20, 'Daily Polkadot Love Abu-abu - Ukuran S', 'barang', 'pd_160_1.png', 'pd_116_2.', 'pd_116_3.', '•	Kemiripan warna pada Foto dan Asli 90% sama persis  karena efek pencahayaan dan seting di layar hp masing-masing\r\n\r\nSheikha Gallery menghadirkan GAMIS DAILY SERIES yang berbahan Jersey Korea Grade A, memiliki serat halus, ringan namun tidak menerawang saat dipakai. Sehingga dapat digunakan dalam acara formal maupun sehari-hari.\r\n\r\nKontak Us :\r\nIg : @sheikha_gallery \r\nCp : bit.ly/Sheikhagallery\r\n', 500, 140000, 14000, 3, 'tidak'),
(161, 20, 'Daily Polkadot Love Abu-abu - Ukuran M', 'barang', 'pd_161_1.png', 'pd_116_2.', 'pd_116_3.', '•	Kemiripan warna pada Foto dan Asli 90% sama persis  karena efek pencahayaan dan seting di layar hp masing-masing\r\n\r\nSheikha Gallery menghadirkan GAMIS DAILY SERIES yang berbahan Jersey Korea Grade A, memiliki serat halus, ringan namun tidak menerawang saat dipakai. Sehingga dapat digunakan dalam acara formal maupun sehari-hari.\r\n\r\nKontak Us :\r\nIg : @sheikha_gallery \r\nCp : bit.ly/Sheikhagallery\r\n', 500, 150000, 15000, 2, 'tidak'),
(162, 20, 'Daily Polkadot Love Abu-abu - Ukuran L', 'barang', 'pd_162_1.png', 'pd_116_2.', 'pd_116_3.', '•	Kemiripan warna pada Foto dan Asli 90% sama persis  karena efek pencahayaan dan seting di layar hp masing-masing\r\n\r\nSheikha Gallery menghadirkan GAMIS DAILY SERIES yang berbahan Jersey Korea Grade A, memiliki serat halus, ringan namun tidak menerawang saat dipakai. Sehingga dapat digunakan dalam acara formal maupun sehari-hari.\r\n\r\nKontak Us :\r\nIg : @sheikha_gallery \r\nCp : bit.ly/Sheikhagallery\r\n', 500, 160000, 16000, 4, 'tidak'),
(163, 20, 'Daily Polkadot Love Abu-abu - Ukuran XL', 'barang', 'pd_163_1.png', 'pd_116_2.', 'pd_116_3.', '•	Kemiripan warna pada Foto dan Asli 90% sama persis  karena efek pencahayaan dan seting di layar hp masing-masing\r\n\r\nSheikha Gallery menghadirkan GAMIS DAILY SERIES yang berbahan Jersey Korea Grade A, memiliki serat halus, ringan namun tidak menerawang saat dipakai. Sehingga dapat digunakan dalam acara formal maupun sehari-hari.\r\n\r\nKontak Us :\r\nIg : @sheikha_gallery \r\nCp : bit.ly/Sheikhagallery\r\n', 500, 170000, 17000, 2, 'tidak'),
(164, 20, 'Daily Abstrak Pink Putih - Ukuran S', 'barang', 'pd_164_1.png', 'pd_116_2.', 'pd_116_3.', '•	Kemiripan warna pada Foto dan Asli 90% sama persis  karena efek pencahayaan dan seting di layar hp masing-masing\r\n\r\nSheikha Gallery menghadirkan GAMIS DAILY SERIES yang berbahan Jersey Korea Grade A, memiliki serat halus, ringan namun tidak menerawang saat dipakai. Sehingga dapat digunakan dalam acara formal maupun sehari-hari.\r\n\r\nKontak Us :\r\nIg : @sheikha_gallery \r\nCp : bit.ly/Sheikhagallery\r\n', 500, 140000, 14000, 4, 'tidak'),
(165, 20, 'Daily Abstrak Pink Putih - Ukuran M', 'barang', 'pd_165_1.png', 'pd_116_2.', 'pd_116_3.', '•	Kemiripan warna pada Foto dan Asli 90% sama persis  karena efek pencahayaan dan seting di layar hp masing-masing\r\n\r\nSheikha Gallery menghadirkan GAMIS DAILY SERIES yang berbahan Jersey Korea Grade A, memiliki serat halus, ringan namun tidak menerawang saat dipakai. Sehingga dapat digunakan dalam acara formal maupun sehari-hari.\r\n\r\nKontak Us :\r\nIg : @sheikha_gallery \r\nCp : bit.ly/Sheikhagallery\r\n', 500, 150000, 15000, 4, 'tidak'),
(166, 20, 'Daily Abstrak Pink Putih - Ukuran L', 'barang', 'pd_166_1.png', 'pd_116_2.', 'pd_116_3.', '•	Kemiripan warna pada Foto dan Asli 90% sama persis  karena efek pencahayaan dan seting di layar hp masing-masing\r\n\r\nSheikha Gallery menghadirkan GAMIS DAILY SERIES yang berbahan Jersey Korea Grade A, memiliki serat halus, ringan namun tidak menerawang saat dipakai. Sehingga dapat digunakan dalam acara formal maupun sehari-hari.\r\n\r\nKontak Us :\r\nIg : @sheikha_gallery \r\nCp : bit.ly/Sheikhagallery\r\n', 500, 160000, 16000, 4, 'tidak'),
(167, 20, 'Daily Abstrak Pink Putih - Ukuran XL', 'barang', 'pd_167_1.png', 'pd_116_2.', 'pd_116_3.', '•	Kemiripan warna pada Foto dan Asli 90% sama persis  karena efek pencahayaan dan seting di layar hp masing-masing\r\n\r\nSheikha Gallery menghadirkan GAMIS DAILY SERIES yang berbahan Jersey Korea Grade A, memiliki serat halus, ringan namun tidak menerawang saat dipakai. Sehingga dapat digunakan dalam acara formal maupun sehari-hari.\r\n\r\nKontak Us :\r\nIg : @sheikha_gallery \r\nCp : bit.ly/Sheikhagallery\r\n', 500, 170000, 17000, 1, 'tidak'),
(168, 20, 'Daily Merah Bunga-bunga - Ukuran S', 'barang', 'pd_168_1.png', 'pd_116_2.', 'pd_116_3.', '•	Kemiripan warna pada Foto dan Asli 90% sama persis  karena efek pencahayaan dan seting di layar hp masing-masing\r\n\r\nSheikha Gallery menghadirkan GAMIS DAILY SERIES yang berbahan Jersey Korea Grade A, memiliki serat halus, ringan namun tidak menerawang saat dipakai. Sehingga dapat digunakan dalam acara formal maupun sehari-hari.\r\n\r\nKontak Us :\r\nIg : @sheikha_gallery \r\nCp : bit.ly/Sheikhagallery\r\n', 500, 140000, 14000, 2, 'tidak'),
(169, 20, 'Daily Merah Bunga-bunga - Ukuran M', 'barang', 'pd_169_1.png', 'pd_116_2.', 'pd_116_3.', '•	Kemiripan warna pada Foto dan Asli 90% sama persis  karena efek pencahayaan dan seting di layar hp masing-masing\r\n\r\nSheikha Gallery menghadirkan GAMIS DAILY SERIES yang berbahan Jersey Korea Grade A, memiliki serat halus, ringan namun tidak menerawang saat dipakai. Sehingga dapat digunakan dalam acara formal maupun sehari-hari.\r\n\r\nKontak Us :\r\nIg : @sheikha_gallery \r\nCp : bit.ly/Sheikhagallery\r\n', 500, 150000, 15000, 1, 'tidak'),
(170, 20, 'Daily Merah Bunga-bunga - Ukuran L', 'barang', 'pd_170_1.png', 'pd_116_2.', 'pd_116_3.', '•	Kemiripan warna pada Foto dan Asli 90% sama persis  karena efek pencahayaan dan seting di layar hp masing-masing\r\n\r\nSheikha Gallery menghadirkan GAMIS DAILY SERIES yang berbahan Jersey Korea Grade A, memiliki serat halus, ringan namun tidak menerawang saat dipakai. Sehingga dapat digunakan dalam acara formal maupun sehari-hari.\r\n\r\nKontak Us :\r\nIg : @sheikha_gallery \r\nCp : bit.ly/Sheikhagallery\r\n', 500, 160000, 16000, 4, 'tidak'),
(171, 20, 'Daily Merah Bunga-bunga - Ukuran XL', 'barang', 'pd_171_1.png', 'pd_116_2.', 'pd_116_3.', '•	Kemiripan warna pada Foto dan Asli 90% sama persis  karena efek pencahayaan dan seting di layar hp masing-masing\r\n\r\nSheikha Gallery menghadirkan GAMIS DAILY SERIES yang berbahan Jersey Korea Grade A, memiliki serat halus, ringan namun tidak menerawang saat dipakai. Sehingga dapat digunakan dalam acara formal maupun sehari-hari.\r\n\r\nKontak Us :\r\nIg : @sheikha_gallery \r\nCp : bit.ly/Sheikhagallery\r\n', 500, 170000, 17000, 1, 'tidak'),
(172, 20, 'Daily Hijau Bunga-bunga - Ukuran S', 'barang', 'pd_172_1.png', 'pd_116_2.', 'pd_116_3.', '•	Kemiripan warna pada Foto dan Asli 90% sama persis  karena efek pencahayaan dan seting di layar hp masing-masing\r\n\r\nSheikha Gallery menghadirkan GAMIS DAILY SERIES yang berbahan Jersey Korea Grade A, memiliki serat halus, ringan namun tidak menerawang saat dipakai. Sehingga dapat digunakan dalam acara formal maupun sehari-hari.\r\n\r\nKontak Us :\r\nIg : @sheikha_gallery \r\nCp : bit.ly/Sheikhagallery\r\n', 500, 140000, 14000, 5, 'tidak'),
(173, 20, 'Daily Hijau Bunga-bunga - Ukuran M', 'barang', 'pd_173_1.png', 'pd_116_2.', 'pd_116_3.', '•	Kemiripan warna pada Foto dan Asli 90% sama persis  karena efek pencahayaan dan seting di layar hp masing-masing\r\n\r\nSheikha Gallery menghadirkan GAMIS DAILY SERIES yang berbahan Jersey Korea Grade A, memiliki serat halus, ringan namun tidak menerawang saat dipakai. Sehingga dapat digunakan dalam acara formal maupun sehari-hari.\r\n\r\nKontak Us :\r\nIg : @sheikha_gallery \r\nCp : bit.ly/Sheikhagallery\r\n', 500, 150000, 15000, 6, 'tidak'),
(174, 20, 'Daily Hijau Bunga-bunga - Ukuran L', 'barang', 'pd_174_1.png', 'pd_116_2.', 'pd_116_3.', '•	Kemiripan warna pada Foto dan Asli 90% sama persis  karena efek pencahayaan dan seting di layar hp masing-masing\r\n\r\nSheikha Gallery menghadirkan GAMIS DAILY SERIES yang berbahan Jersey Korea Grade A, memiliki serat halus, ringan namun tidak menerawang saat dipakai. Sehingga dapat digunakan dalam acara formal maupun sehari-hari.\r\n\r\nKontak Us :\r\nIg : @sheikha_gallery \r\nCp : bit.ly/Sheikhagallery\r\n', 500, 160000, 16000, 5, 'tidak'),
(175, 20, 'Daily Hijau Bunga-bunga - Ukuran XL', 'barang', 'pd_175_1.png', 'pd_116_2.', 'pd_116_3.', '•	Kemiripan warna pada Foto dan Asli 90% sama persis  karena efek pencahayaan dan seting di layar hp masing-masing\r\n\r\nSheikha Gallery menghadirkan GAMIS DAILY SERIES yang berbahan Jersey Korea Grade A, memiliki serat halus, ringan namun tidak menerawang saat dipakai. Sehingga dapat digunakan dalam acara formal maupun sehari-hari.\r\n\r\nKontak Us :\r\nIg : @sheikha_gallery \r\nCp : bit.ly/Sheikhagallery\r\n', 500, 170000, 17000, 1, 'tidak'),
(176, 20, 'Daily Kuning Bunga-bunga - Ukuran S', 'barang', 'pd_176_1.png', 'pd_116_2.', 'pd_116_3.', '•	Kemiripan warna pada Foto dan Asli 90% sama persis  karena efek pencahayaan dan seting di layar hp masing-masing\r\n\r\nSheikha Gallery menghadirkan GAMIS DAILY SERIES yang berbahan Jersey Korea Grade A, memiliki serat halus, ringan namun tidak menerawang saat dipakai. Sehingga dapat digunakan dalam acara formal maupun sehari-hari.\r\n\r\nKontak Us :\r\nIg : @sheikha_gallery \r\nCp : bit.ly/Sheikhagallery\r\n', 500, 140000, 14000, 3, 'tidak'),
(177, 20, 'Daily Kuning Bunga-bunga - Ukuran M', 'barang', 'pd_177_1.png', 'pd_116_2.', 'pd_116_3.', '•	Kemiripan warna pada Foto dan Asli 90% sama persis  karena efek pencahayaan dan seting di layar hp masing-masing\r\n\r\nSheikha Gallery menghadirkan GAMIS DAILY SERIES yang berbahan Jersey Korea Grade A, memiliki serat halus, ringan namun tidak menerawang saat dipakai. Sehingga dapat digunakan dalam acara formal maupun sehari-hari.\r\n\r\nKontak Us :\r\nIg : @sheikha_gallery \r\nCp : bit.ly/Sheikhagallery\r\n', 500, 150000, 15000, 3, 'tidak'),
(178, 20, 'Daily Kuning Bunga-bunga - Ukuran L', 'barang', 'pd_178_1.png', 'pd_116_2.', 'pd_116_3.', '•	Kemiripan warna pada Foto dan Asli 90% sama persis  karena efek pencahayaan dan seting di layar hp masing-masing\r\n\r\nSheikha Gallery menghadirkan GAMIS DAILY SERIES yang berbahan Jersey Korea Grade A, memiliki serat halus, ringan namun tidak menerawang saat dipakai. Sehingga dapat digunakan dalam acara formal maupun sehari-hari.\r\n\r\nKontak Us :\r\nIg : @sheikha_gallery \r\nCp : bit.ly/Sheikhagallery\r\n', 500, 160000, 16000, 5, 'tidak'),
(179, 20, 'Daily Kuning Bunga-bunga - Ukuran XL', 'barang', 'pd_179_1.png', 'pd_116_2.', 'pd_116_3.', '•	Kemiripan warna pada Foto dan Asli 90% sama persis  karena efek pencahayaan dan seting di layar hp masing-masing\r\n\r\nSheikha Gallery menghadirkan GAMIS DAILY SERIES yang berbahan Jersey Korea Grade A, memiliki serat halus, ringan namun tidak menerawang saat dipakai. Sehingga dapat digunakan dalam acara formal maupun sehari-hari.\r\n\r\nKontak Us :\r\nIg : @sheikha_gallery \r\nCp : bit.ly/Sheikhagallery\r\n', 500, 170000, 17000, 2, 'tidak'),
(180, 20, 'Daily Abstrak Hijau Biru - Ukuran S', 'barang', 'pd_180_1.png', 'pd_116_2.', 'pd_116_3.', '•	Kemiripan warna pada Foto dan Asli 90% sama persis  karena efek pencahayaan dan seting di layar hp masing-masing\r\n\r\nSheikha Gallery menghadirkan GAMIS DAILY SERIES yang berbahan Jersey Korea Grade A, memiliki serat halus, ringan namun tidak menerawang saat dipakai. Sehingga dapat digunakan dalam acara formal maupun sehari-hari.\r\n\r\nKontak Us :\r\nIg : @sheikha_gallery \r\nCp : bit.ly/Sheikhagallery\r\n', 500, 140000, 14000, 2, 'tidak'),
(181, 20, 'Daily Abstrak Hijau Biru - Ukuran M', 'barang', 'pd_181_1.png', 'pd_116_2.', 'pd_116_3.', '•	Kemiripan warna pada Foto dan Asli 90% sama persis  karena efek pencahayaan dan seting di layar hp masing-masing\r\n\r\nSheikha Gallery menghadirkan GAMIS DAILY SERIES yang berbahan Jersey Korea Grade A, memiliki serat halus, ringan namun tidak menerawang saat dipakai. Sehingga dapat digunakan dalam acara formal maupun sehari-hari.\r\n\r\nKontak Us :\r\nIg : @sheikha_gallery \r\nCp : bit.ly/Sheikhagallery\r\n', 500, 150000, 15000, 1, 'tidak'),
(182, 20, 'Daily Abstrak Hijau Biru - Ukuran L', 'barang', 'pd_182_1.png', 'pd_116_2.', 'pd_116_3.', '•	Kemiripan warna pada Foto dan Asli 90% sama persis  karena efek pencahayaan dan seting di layar hp masing-masing\r\n\r\nSheikha Gallery menghadirkan GAMIS DAILY SERIES yang berbahan Jersey Korea Grade A, memiliki serat halus, ringan namun tidak menerawang saat dipakai. Sehingga dapat digunakan dalam acara formal maupun sehari-hari.\r\n\r\nKontak Us :\r\nIg : @sheikha_gallery \r\nCp : bit.ly/Sheikhagallery\r\n', 500, 160000, 16000, 1, 'tidak'),
(183, 20, 'Daily Abstrak Hijau Biru - Ukuran XL', 'barang', 'pd_183_1.png', 'pd_116_2.', 'pd_116_3.', '•	Kemiripan warna pada Foto dan Asli 90% sama persis  karena efek pencahayaan dan seting di layar hp masing-masing\r\n\r\nSheikha Gallery menghadirkan GAMIS DAILY SERIES yang berbahan Jersey Korea Grade A, memiliki serat halus, ringan namun tidak menerawang saat dipakai. Sehingga dapat digunakan dalam acara formal maupun sehari-hari.\r\n\r\nKontak Us :\r\nIg : @sheikha_gallery \r\nCp : bit.ly/Sheikhagallery\r\n', 500, 170000, 17000, 0, 'tidak'),
(184, 20, 'Daily Pink Bunga-bunga - Ukuran S', 'barang', 'pd_184_1.png', 'pd_116_2.', 'pd_116_3.', '•	Kemiripan warna pada Foto dan Asli 90% sama persis  karena efek pencahayaan dan seting di layar hp masing-masing\r\n\r\nSheikha Gallery menghadirkan GAMIS DAILY SERIES yang berbahan Jersey Korea Grade A, memiliki serat halus, ringan namun tidak menerawang saat dipakai. Sehingga dapat digunakan dalam acara formal maupun sehari-hari.\r\n\r\nKontak Us :\r\nIg : @sheikha_gallery \r\nCp : bit.ly/Sheikhagallery\r\n', 500, 140000, 14000, 3, 'tidak'),
(185, 20, 'Daily Pink Bunga-bunga - Ukuran M', 'barang', 'pd_185_1.png', 'pd_116_2.', 'pd_116_3.', '•	Kemiripan warna pada Foto dan Asli 90% sama persis  karena efek pencahayaan dan seting di layar hp masing-masing\r\n\r\nSheikha Gallery menghadirkan GAMIS DAILY SERIES yang berbahan Jersey Korea Grade A, memiliki serat halus, ringan namun tidak menerawang saat dipakai. Sehingga dapat digunakan dalam acara formal maupun sehari-hari.\r\n\r\nKontak Us :\r\nIg : @sheikha_gallery \r\nCp : bit.ly/Sheikhagallery\r\n', 500, 150000, 15000, 2, 'tidak'),
(186, 20, 'Daily Pink Bunga-bunga - Ukuran L', 'barang', 'pd_186_1.png', 'pd_116_2.', 'pd_116_3.', '•	Kemiripan warna pada Foto dan Asli 90% sama persis  karena efek pencahayaan dan seting di layar hp masing-masing\r\n\r\nSheikha Gallery menghadirkan GAMIS DAILY SERIES yang berbahan Jersey Korea Grade A, memiliki serat halus, ringan namun tidak menerawang saat dipakai. Sehingga dapat digunakan dalam acara formal maupun sehari-hari.\r\n\r\nKontak Us :\r\nIg : @sheikha_gallery \r\nCp : bit.ly/Sheikhagallery\r\n', 500, 160000, 16000, 1, 'tidak'),
(187, 20, 'Daily Pink Bunga-bunga - Ukuran XL', 'barang', 'pd_187_1.png', 'pd_116_2.', 'pd_116_3.', '•	Kemiripan warna pada Foto dan Asli 90% sama persis  karena efek pencahayaan dan seting di layar hp masing-masing\r\n\r\nSheikha Gallery menghadirkan GAMIS DAILY SERIES yang berbahan Jersey Korea Grade A, memiliki serat halus, ringan namun tidak menerawang saat dipakai. Sehingga dapat digunakan dalam acara formal maupun sehari-hari.\r\n\r\nKontak Us :\r\nIg : @sheikha_gallery \r\nCp : bit.ly/Sheikhagallery\r\n', 500, 170000, 17000, 2, 'tidak'),
(188, 20, 'Daily Blaster Ungu - Ukuran S', 'barang', 'pd_188_1.png', 'pd_116_2.', 'pd_116_3.', '•	Kemiripan warna pada Foto dan Asli 90% sama persis  karena efek pencahayaan dan seting di layar hp masing-masing\r\n\r\nSheikha Gallery menghadirkan GAMIS DAILY SERIES yang berbahan Jersey Korea Grade A, memiliki serat halus, ringan namun tidak menerawang saat dipakai. Sehingga dapat digunakan dalam acara formal maupun sehari-hari.\r\n\r\nKontak Us :\r\nIg : @sheikha_gallery \r\nCp : bit.ly/Sheikhagallery\r\n', 500, 140000, 14000, 0, 'tidak'),
(189, 20, 'Daily Blaster Ungu - Ukuran M', 'barang', 'pd_189_1.png', 'pd_116_2.', 'pd_116_3.', '•	Kemiripan warna pada Foto dan Asli 90% sama persis  karena efek pencahayaan dan seting di layar hp masing-masing\r\n\r\nSheikha Gallery menghadirkan GAMIS DAILY SERIES yang berbahan Jersey Korea Grade A, memiliki serat halus, ringan namun tidak menerawang saat dipakai. Sehingga dapat digunakan dalam acara formal maupun sehari-hari.\r\n\r\nKontak Us :\r\nIg : @sheikha_gallery \r\nCp : bit.ly/Sheikhagallery\r\n', 500, 150000, 15000, 0, 'tidak'),
(190, 20, 'Daily Blaster Ungu - Ukuran L', 'barang', 'pd_190_1.png', 'pd_116_2.', 'pd_116_3.', '•	Kemiripan warna pada Foto dan Asli 90% sama persis  karena efek pencahayaan dan seting di layar hp masing-masing\r\n\r\nSheikha Gallery menghadirkan GAMIS DAILY SERIES yang berbahan Jersey Korea Grade A, memiliki serat halus, ringan namun tidak menerawang saat dipakai. Sehingga dapat digunakan dalam acara formal maupun sehari-hari.\r\n\r\nKontak Us :\r\nIg : @sheikha_gallery \r\nCp : bit.ly/Sheikhagallery\r\n', 500, 160000, 16000, 0, 'tidak'),
(191, 20, 'Daily Blaster Ungu - Ukuran XL', 'barang', 'pd_191_1.png', 'pd_116_2.', 'pd_116_3.', '•	Kemiripan warna pada Foto dan Asli 90% sama persis  karena efek pencahayaan dan seting di layar hp masing-masing\r\n\r\nSheikha Gallery menghadirkan GAMIS DAILY SERIES yang berbahan Jersey Korea Grade A, memiliki serat halus, ringan namun tidak menerawang saat dipakai. Sehingga dapat digunakan dalam acara formal maupun sehari-hari.\r\n\r\nKontak Us :\r\nIg : @sheikha_gallery \r\nCp : bit.ly/Sheikhagallery\r\n', 500, 170000, 17000, 0, 'tidak'),
(192, 3, 'Sekolah Samara Daftar Single', 'jasa', 'pd_192_1.PNG', 'pd_192_2.', 'pd_192_3.', 'Sekolah Samara dimulai pada : …… 2020\r\nTempat : whatsApp Grup\r\nMetode : FGD\r\n', 0, 350000, 30000, 10, 'ya'),
(193, 3, 'Sekolah Samara Daftar Double (Pasangan)', 'jasa', 'pd_193_1.', 'pd_193_2.', 'pd_193_3.', 'Sekolah Samara dimulai pada : …… 2020\r\nTempat : whatsApp Grup\r\nMetode : FGD\r\n', 0, 500000, 30000, 10, 'tidak'),
(194, 20, 'Gamis Daily Series Size S', 'barang', 'pd_194_1.PNG', 'pd_194_2.', 'pd_194_3.', '•	Kemiripan warna pada Foto dan Asli 90% sama persis  karena efek pencahayaan dan seting di layar hp masing-masing\r\n\r\nSheikha Gallery menghadirkan GAMIS DAILY SERIES yang berbahan Jersey Korea Grade A, memiliki serat halus, ringan namun tidak menerawang saat dipakai. Sehingga dapat digunakan dalam acara formal maupun sehari-hari.\r\n\r\nKontak Us :\r\nIg : @sheikha_gallery \r\nCp : bit.ly/Sheikhagallery\r\n', 500, 140000, 17000, 0, 'ya');

-- --------------------------------------------------------

--
-- Table structure for table `reward`
--

CREATE TABLE `reward` (
  `id_reward` int(11) NOT NULL,
  `id_user` varchar(12) NOT NULL,
  `jmlh_reward` int(20) NOT NULL,
  `tgl_reward` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `reward`
--

INSERT INTO `reward` (`id_reward`, `id_user`, `jmlh_reward`, `tgl_reward`) VALUES
(1, 'MB000000001', 30000, '2020-03-18'),
(2, 'MB000000001', 30000, '2020-03-18'),
(3, 'MB000000001', 30000, '2020-03-18'),
(5, 'MB000000001', 30000, '2020-04-01');

-- --------------------------------------------------------

--
-- Table structure for table `saldo`
--

CREATE TABLE `saldo` (
  `id_saldo` int(11) NOT NULL,
  `id_user` varchar(12) NOT NULL,
  `jmlh_saldo` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `saldo`
--

INSERT INTO `saldo` (`id_saldo`, `id_user`, `jmlh_saldo`) VALUES
(1, 'MB000000001', 120000),
(6, 'MB200324004', 0),
(7, 'MB200326006', 0),
(8, 'MB200308002', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tarik_saldo`
--

CREATE TABLE `tarik_saldo` (
  `id_tarik` int(11) NOT NULL,
  `id_user` varchar(12) NOT NULL,
  `jmlh_tarik` int(20) NOT NULL,
  `tgl_tarik` date NOT NULL,
  `status_tarik` varchar(12) NOT NULL DEFAULT 'Pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id_user` varchar(12) NOT NULL,
  `nama_user` varchar(32) NOT NULL,
  `email_user` varchar(32) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(60) NOT NULL,
  `lvl` varchar(11) NOT NULL,
  `tgl_lahir` date NOT NULL,
  `tgl_gabung` datetime NOT NULL,
  `alamat` varchar(100) NOT NULL,
  `jenis_kelamin` varchar(11) NOT NULL,
  `no_ktp` varchar(20) NOT NULL,
  `no_hp` varchar(15) NOT NULL,
  `foto_profil` varchar(20) NOT NULL DEFAULT 'default.png',
  `bank_rek` varchar(50) NOT NULL,
  `no_rek` varchar(20) NOT NULL,
  `nama_pemilik_rek` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id_user`, `nama_user`, `email_user`, `username`, `password`, `lvl`, `tgl_lahir`, `tgl_gabung`, `alamat`, `jenis_kelamin`, `no_ktp`, `no_hp`, `foto_profil`, `bank_rek`, `no_rek`, `nama_pemilik_rek`) VALUES
('MB000000001', 'Muslim Preneurship', 'mpstore.net@gmail.com', 'adminmp', '$2y$10$Bm822CSorLbAzVR1LNJbz.RnQ.bdQWK6z0oNa03Fux7x5dzAFpUJG', '0', '2020-01-01', '0000-00-00 00:00:00', 'Kota Wisata Bogor', 'Laki-laki', '3175070605760007', '081911067555', 'foto_MB000000001.png', 'BCA', '6600097880', 'Risco Frederick'),
('MB200308002', 'Risco Frederick', 'amorafr1303@gmail.com', 'Sheikha', '$2y$10$zuolUzjOLxQq1wOF8YOW.uJGWoSRLO/BAyeWUgqbAFfLn2ItoH4oO', '10', '1976-05-06', '2020-03-08 15:12:36', 'Kota Wisata P4 No2                      ', '', '060519760434', '081911067555', 'default.png', 'Bank Rekening', '09876545678', 'Welly Nurliana'),
('MB200308003', 'Risco Frederick', 'fintechbizintl@gmail.com', 'RiscoTest2', '$2y$10$SQKRAZTqutHMFmLzzYp.N.zSlKWk8ljggNmjouTm0Qise3qkIn.F6', '10', '1976-05-06', '2020-03-08 15:27:40', 'Pesona Denhaag P4 No.2 Kota Wisata, Jawa Barat', 'Laki-laki', '0605197604341', '081911067555', 'default.png', '', '', ''),
('MB200324004', 'Welly', 'aimeeeee.0912@gmail.com', 'MamiWelly', '$2y$10$LHMFr8UvLICGBXvJDxTHYexsjubXQW7y4WIgEYA93B42tVi/Rg6dW', '10', '1979-10-13', '2020-03-24 17:55:46', 'Taman Denhaag P4/2 Kota Wisata Cibubur Nagrak Gunung Putri                      ', 'Perempuan', '16789876545678', '08127306767', 'foto_MB200324004.jpg', 'BANK BCA', '8490164449', 'Welly Nurliana'),
('MB200326006', 'Bagas Naufal Insani', 'bagas_naufal96@yahoo.co.id', 'mr777nick', '$2y$10$0JjNPnrjy4AfmoHZSS8xIu1ywrfFREhJOv7bWR2xk.9ZUTut75U1O', '10', '1996-10-30', '2020-03-26 19:19:11', 'Tangerang', 'Laki-laki', '3603033010960003', '082210388103', 'default.png', 'BANK BNI', '0347435405', 'Bagas Naufal Insani'),
('MB200326007', 'Bagas Naufal Insani', 'bagasnaufalinsani@gmail.com', '200326086', '$2y$10$t9xKRJ/uY/yoM26l8shKhumbHlKbIXbymCfU6o6neih.HMHD7Aka6', '10', '1996-10-30', '2020-03-26 21:26:42', 'Puri Permai', 'Laki-laki', '3603033010960003', '082210388103', 'default.png', '', '', ''),
('MB200326008', 'Cahyo Bayu S P', 'sahid_pratomo@yahoo.com', '200326087', '', '10', '1996-08-29', '2020-03-26 21:37:35', 'Baron Kunden', 'Laki-laki', '3214123685001', '089507229772', 'default.png', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `user_copy`
--

CREATE TABLE `user_copy` (
  `id_user` varchar(12) NOT NULL,
  `nama_user` varchar(32) NOT NULL,
  `email_user` varchar(32) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(60) NOT NULL,
  `lvl` varchar(11) NOT NULL,
  `tgl_lahir` date NOT NULL,
  `tgl_gabung` datetime NOT NULL,
  `alamat` varchar(100) NOT NULL,
  `jenis_kelamin` varchar(11) NOT NULL,
  `no_ktp` varchar(20) NOT NULL,
  `no_hp` varchar(15) NOT NULL,
  `foto_profil` varchar(20) NOT NULL DEFAULT 'default.png',
  `bank_rek` varchar(30) NOT NULL,
  `no_rek` varchar(20) NOT NULL,
  `nama_pemilik_rek` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `user_import`
--

CREATE TABLE `user_import` (
  `id` int(11) NOT NULL,
  `Name` varchar(32) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `Phone` varchar(15) NOT NULL,
  `Address` varchar(300) NOT NULL,
  `Jenis_Kelamin` varchar(9) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_import`
--

INSERT INTO `user_import` (`id`, `Name`, `Email`, `Phone`, `Address`, `Jenis_Kelamin`) VALUES
(1, 'ATIN SUATIN', 'atinsuatin10@gmail.com', '6281394101862', 'Desa Jalancagak rt 02/rw01 ,,,,,,,\r', ''),
(2, 'Rayyan Firdaus', 'masrayyanfirdaus@gmail.com', '6287705677770', 'Jalan Raya Pedeng Depan Kuburan Cina Socah Kec : Socah Kab : Bangkalan', 'Laki-laki'),
(3, 'Raditya Darmawan', 'riyas.ismayanti85@gmail.com', '6281228054879', 'Jl yos sudarso gg. Setia no. 3 kelurahan patihan kecamatan Manguharjo Madiun', 'Laki-laki'),
(4, 'Ghea Amalia', 'ghea.amalia.10@gmail.com', '6281477174133', 'Amanusa Regency 2 Kav.G5,,,,,,,\r', ''),
(5, 'Novidelina Sundari', 'costhacatering@gmail.com', '6282111044969', 'Jln. H. Maksum rt 03 rw 04 no.18 Sawangan Baru Sawangan Depok', 'Perempuan'),
(6, 'Su Arman', 'hcsbandar@gmail.com', '6285296071566', 'Huta 1 desa bahlias kecamatan bandar.kabupaten simalungun. Sumatera utara', 'Laki-laki'),
(7, 'ersita sussar', '3rsita16@gmail.com', '62818363338', 'Jln nangka Raya no6 rt5 rw4 beji Depok 16421', 'Perempuan'),
(8, 'Muhammad Husain Mochtarom', 'muhammad22husain@gmail.com', '6281269483029', 'Iroranan RT 04/ RW 09 Kelurahan Joyosuran,,,,,,,\r', ''),
(9, 'bethaliani yunita', 'bethaliani_y@yahoo.co.id', '628127309107', 'jln.sriwijaya blok D4 no.3 rt.51 rw.20 perumahan pusri borang sako palembang 30163', 'Perempuan'),
(10, 'Muh. Nasrun Syah', 'Nasrun.Ogisop@gmail.com', '6281212878797', 'Gelora Baddoka Indah Blok F2. No.9 Makassar SulSel', 'Laki-laki'),
(11, 'Dedy Ristanto', 'javidnama@gmail.com', '6282262123434', 'Jl. Wangsamadya Kulon no. 24,,,,,,,\r', ''),
(12, 'Mila Nurmilah', 'asma.naira23@gmail.com', '6281546761319', 'Perumahan taman raya Bekasi Blok M3 bekasi', 'Perempuan'),
(13, 'Indira', 'indiracahyaimani@gmail.com', '6281290905495', 'Perumahan Karaba blok aa no 31 desa wadas teluk jamber karawang', 'Perempuan'),
(14, 'Rifki Abdul rahman sariyyan', 'rifkyandrean009@gmail.com', '6287757720300', 'Jl kalimantan X/23 sumbersari jember jawa timur', 'Laki-laki'),
(15, 'Moch Irfani A S', 'irfanpreneur@gmail.com', '6281288568066', 'Cimahi', 'Laki-laki'),
(16, 'Santi Nurrisa Karonsih', 'santinurrisakaronsih@gmail.com', '6285235788752', 'Perumahan Bandaramas Blok Y27,,,,,,,\r', ''),
(17, 'XSanti', 'xsanti.dr@gmail.com', '6287889101345', 'Jl.Guntur 6 Blok B5 No.20. Bekasi.', 'Perempuan'),
(18, 'Aulia Istiana', 'auliaistianaa@gmail.com', '6285959362391', 'Jl. H. Mawi Kp. Jati Rt/Rw 004/005 No.1C Parung,,,,,,,\r', ''),
(19, 'Agus Dwi Sudrajat', 'duadrajat@gmail.com', '6287738244422', 'Watugajah Rt19 Rw04, Bogor, Jawa Barat, 16330', 'Perempuan'),
(20, 'Reza satria', 'rsatria2627@gmail.com', '6285275169120', 'Jl. Mayjend Panjaitan, Girijati, Purwosari, Gunungkidul, DIY.', 'Laki-laki'),
(21, 'Maulana Muhammad Riza', 'maulana.mriza@sbm-itb.ac.id', '6282231870827', 'Perum Karanglo Indah, Gg.8, No.23, Penanggungan, Klojen, Kota Malang, Jawa Timur, 65113', 'Laki-laki'),
(22, 'Siti Mahmudah', 'cloudsense@gmail.com', '6285221284600', 'Perum.griya taman asri, Blok C-30, Lowokwaru, Malang', 'Laki-laki'),
(23, 'Mohammad Taufik', 'mohammadtaufik11031996@gmail.com', '6289698084313', 'Sulawesi Utara, cluster sansiviera blok df-14 desa tawangsari kec. taman kab. Sidoarji', 'Perempuan'),
(24, 'Ismail Abu Faqih', 'abushopie79@gmail.com', '6281350025379', 'Jl Jend Sudirman RT 32 No 60 Klandasan Ilir Kecamatan Balikpapan Kota Kota Balikpapan Propinsi Kalimantan Timur Kode Pos 76111', 'Laki-laki'),
(25, 'Wanwan', 'syaqillaadhwaa@yahoo.com', '6281321347612', 'Perum kertasari blok 1 no 161 Ciamis', 'Laki-laki'),
(26, 'Saniri', 'saniri3388@gmail.com', '886918120162', 'Saniri', 'Perempuan'),
(27, 'Fadli Masad', 'masadfadli@gmail.com', '6281240701142', 'Ambon', 'Laki-laki'),
(28, 'Sugeng Susianto', 'sugeng.ok@gmail.com', '6282111769352', 'jj flamboyan 2 blok f 8 no 12 perum papanmas setiamekar tambun bekasi', 'Laki-laki'),
(29, 'Siska Anggraeni Maulina', 'siska0309@gmail.com', '628115499909', 'Jl. Durian 3,,,,,,,\r', ''),
(30, 'Wulan Asti Rahayu', 'wulan.asti@gmail.com', '628118234596', 'Pancoran, GG. Rahayu no. 12, kec. Tanjung Redeb kab. Berau - Kalimantan timur 77311', 'Perempuan'),
(31, 'Dedi ridean', 'dridwan100@gmail.com', '6282213623160', 'Jl utama sakti no78 rt006/07wijayakusuma, Jakarta Selatan', 'Perempuan'),
(32, 'Sukardi', 'kardimessage@gmail.com', '6285664652389', 'SMP-SMA Islam Nurul Fikri Lembang Jl. Maribaya Timur Desa.Cibodas Kec.Lembang Kab.Bandung Barat Jawa Barat', 'Laki-laki'),
(33, 'Angga Bramasta Wardana', 'abwardana7@gmai.com', '6285230527448', 'Perum kembang J. 12,,,,,,,\r', ''),
(34, 'Muhammad Irsyad Huraery', 'muhammadirsyadhuraery@gmail.com', '6281223309386', 'Cluster Acacia H67, Bondowoso', 'Laki-laki'),
(35, 'Eeng vananda', 'eeng.vananda@gmail.com', '6281267316790', 'Permata Cimahi', 'Laki-laki'),
(36, 'Rohmad Supriyadi', 'adpria25@gmail.com', '6285700244530', 'Jogroho,,,,,,,\r', ''),
(37, 'ALI SYAMHUDI', 'alhuda.x@gmail.com', '6281222003947', 'Masjid Al Awwabin jl raya serang Nagrek 004/001 Sentul Balaraja Kab. Tangerang Banten', 'Laki-laki'),
(38, 'Loso bin Tuimin', 'losokhosi@gmail.com', '6282242538989', 'Bangsri rt 01/02 bangsri purwantoro wonogiri', 'Laki-laki'),
(39, 'Sumadi Yakin', 'sumadi.yakin@gmail.com', '628114218809', 'Jl. Pelita 2 Lrg. 4 No. 3/29 Makassar', 'Laki-laki'),
(40, 'Irwan Naufal Hakim', 'irwannaufal95@gmail.com', '6287888853223', 'JL. RAYA CILILIN RT04/RW03,,,,,,,\r', ''),
(41, 'Khoirunnisa', 'nes.enzeta@gmail.com', '6281806068298', 'Jalan jati pasar no.61 RT.001/003. Kel Jati Kec. Pulogadung. Jakarta Timur 13220', 'Perempuan'),
(42, 'ABD MUIS DAENG ROA', 'muisroa1200@gmail.com', '6282188455009', 'Jl. Poros Malino Km. 18 Kel. Bontomanai Kec. Bontomarannu Kab. Gowa Prov. Sulawesi Selatan', 'Laki-laki'),
(43, 'Norapni Mustikawati', 'apni061183@gmail.com', '6281521946755', 'Jl. Ketinjau 3 RT. 15 No. 40 Kelurahan Gunung Bahagia Kecamatan Balikpapan Selatan,,,,,,,\r', ''),
(44, 'Bagus Eko Saputro', 'saputro.baguseko@yahoo.com', '6282154204383', 'Ds. Karet RT 03 /RW 07, Balikpapan 76114', 'Perempuan'),
(45, 'Siti Mariana', 'khalidtangguh@gmail.com', '6281906276587', 'Kp. Kebon Kelapa II RT. 02/01 Kel. Kasunyatan Kec. Kasemen, Kelurahan Jurangombo Selatan, Kecamatan Magelang Selatan 56123', 'Laki-laki'),
(46, 'Budi Santoso', 'budisantosovet@gmail.com', '6285749112946', 'Jl raya morowudi ds ngering sukoanyar cerme gresik', 'Laki-laki'),
(47, 'Muhsri', 'muhsrileox@gmail.com', '6285743985872', 'Jl. Gunung Singgalang III,,,,,,,\r', ''),
(48, 'Marlia Nandarini', 'marliasihab@gmail.com', '6282256850780', 'griya flamboyan blok B no 33 desa sepunggur kec kusan hilir kabupaten tanah bumbu kalimantan selatan', 'Perempuan'),
(49, 'Faisal tegar prakoso', 'isalprakoso@gmail.com', '6282249696207', 'Domisili duren sawit,,,,,,,\r', ''),
(50, 'Amalia Prameswari', 'pramesalia@gmail.com', '6281291180559', 'Kompleks Pesona Khayangan I, jakarta timur. Asli purbalingga', 'Laki-laki'),
(51, 'Zulkipli', 'Zulkiplizul4@gmail.com', '6285263930913', 'Jl. HKSN komplek surya Gemilang Blok. P Rt. 21 No. 18 kecamatan. Banjarmasin Utara Kota Banjarmasin Kalimantan selatan', 'Laki-laki'),
(52, 'Dimas bayu arifianto', 'dimas_bayu12@yahoo.com', '6285641001686', 'Jln masjid besae no 35 Rt12/2 krajan kec.tengaran kab.semarang', 'Laki-laki'),
(53, 'ROFY YULYANSAPUTRA', 'rofyyulyansaputra24@gmail.com', '6282114851675', 'Jln hayam wuruk jakarta pusat', 'Laki-laki'),
(54, 'Nisa Nuroniyatul Aliyah', 'nisaaliyah01@gmail.com', '6285846207016', 'Manonjaya tasikmalaya', 'Perempuan'),
(55, 'Taufiq Isma\'il', 'ismail.taufiq86@gmail.com', '6281254103426', 'Perumahan kepuh permai jln bukit barisan no 37 waru sidoarjo', 'Laki-laki'),
(56, 'Dono Indrarto', 'donoindrarto@yahoo.com', '628175004900', 'Auto Bridal 88,,,,,,,\r', ''),
(57, 'Bachroni Gunawan', 'gunawan.bachroni@gmail.com', '6287708778837', 'Jl. Raharja raya VI blok D83 RT 02/RW16 Josroyo Indah Jaten, Jl. Raya Tajem Km. 1,5 (No. 46) Maguwoharjo Depok Sleman', 'Laki-laki'),
(58, 'Kartika Indrawati', 'bundaazbi7@gmail.com', '6285704139623', 'Dsn.Dinden 2 rt.6 rw.2 Ds.Dinden Kec.Kwadungan Kab.Ngawi', 'Perempuan'),
(59, 'Ahmad Rifai', 'rifaiahmad070707@gmail.com', '6285227901041', 'Ds. Karangduwur,,,,,,,\r', ''),
(60, 'Tri santoso', 'trie.santoso.ts@gmail.com', '6281542289701', 'Karang joho rt/rw:003/004,  Kec.  Kemiri,  Kab.  Purworejo', 'Laki-laki'),
(61, 'Indrayani Galuh Ardani', 'inda.ardani@gmail.com', '628812644960', 'Jl. Jawa No. 18 B Widorobaru Condongcatur Depok Sleman Yogyakarta', 'Perempuan'),
(62, 'Sri wahyuningsih', 'sw3044719@gmail.com', '6281315994841', 'Jln darusallam 1 rt 02/05 cimuning musttika jaya bekasi timur', 'Perempuan'),
(63, 'Dr Iswandi', 'iswandibujeng@gmail.com', '6282173048900', 'Jln Hasan Gani no 30 Tembilahan kota inhil Riau', 'Laki-laki'),
(64, 'Muhammad Janwar Permana', 'funreligiousnoble@gmail.com', '6281220092820', 'Jl. Sekeloa Selatan No 42 Rt 03 Rw 15 Kel. Lebakgede Kec. Coblong Bandung', 'Laki-laki'),
(65, 'Amalia nala faroha', 'Amaliafaroha905@gmail.com', '6282324571282', 'Jakarta barat,,,,,,,\r', ''),
(66, 'Alkin Risanti', 'alkinrisanti12@gmail.com', '6288276757037', 'Jl. Ketapang 139 RT. 19 RW. 05 KOMPERTA (Kompleks Pertamina) Plaju, cengkareng, kapuk pasar darurat rt6/12', 'Perempuan'),
(67, 'Ilham Sarifudin', 'ilhamumarkholid@gmail.com', '6285228485910', 'Gondanglutung rt 05 rw 20, Plaju, Palembang 30268', 'Perempuan'),
(68, 'Idrus Rakhmadi', 'idrusrahmadi@gmail.com', '6282240602763', 'Jl.Kepiting Gang III Gempeng BANGIL', 'Laki-laki'),
(69, 'Mochamad Fadlyllah', 'mochfadlyllah@gmail.com', '6281258277455', 'jl Kabandungan no 152 Sukabumi', 'Laki-laki'),
(70, 'Gigin Mardiansah', 'agyn39@gmail.com', '6285216144861', 'Laladon Indah,,,,,,,\r', ''),
(71, 'Darma Kusuma', 'darma_btr@yahoo.com', '6281398695291', 'Vila Mutiara Cikarang 2 Blok G8 No. 12 Cikarang Selatan Kabupaten Bekasi 17530', 'Laki-laki'),
(72, 'Indra Setia Rahmat', 'insertrahmat@gmail.com', '628988653338', 'Perum BSI,,,,,,,\r', ''),
(73, 'Bambang Nurwiyardi', 'bamnur@gmail.com', '628111891626', 'Ketapang Cipondoh Tangerang', 'Laki-laki'),
(74, 'Eka Nz', 'naufallubna@gmail.com', '6282329168999', 'Kec sungai kunjang,,,,,,,\r', ''),
(75, 'reni febrina', 'reniazhabi@gmail.com', '6285274732800', 'Jl. Tanjung Alam no.01 jambu air. Samping percetakan Dinda Printing. Kelurahan Taluak IV Suku kecamatan banuhampu kabupaten agam. Sumatera Barat 26181.', 'Perempuan'),
(76, 'Fardiansyah S Harahap', 'fardiharahap@gmail.com', '6281370772139', 'Masjid Baitul Ilmi Itera,,,,,,,\r', ''),
(77, 'Muhammad Amin Rais', 'aminmuhrais@gmail.com', '6281227146495', 'Jl. Cempedak kunciran mas permai pinang tangerang', 'Laki-laki'),
(78, 'Eno Ummu Fairuz', 'nayla.atiqah@gmail.com', '628125559868', 'd/a BAM Computer,,,,,,,\r', ''),
(79, 'Ira Apni Purwasih', 'iapurwasih@gmail.com', '6285274851651', 'Jl. Saluyu Indah 2 No.8 RT 2 RW 10 Derwati, jl. Manunggal rt.96 no. 70 damai bahagia, Balikpapan Selatan 76114', 'Perempuan'),
(80, 'Badrudin', 'badrudinroma@gmail.com', '6283807017716', 'Alamat Lengkap : Jl Moch Torpi , Rancasari, Bandung 40292', 'Perempuan'),
(81, 'Wawan Rusmady', 'wawan.90313@gmail.com', '6285348408974', 'Jl. Pinrang Raya Blok F 95 BSP Kota Makassar', 'Laki-laki'),
(82, 'Suyati', 'nasya0123@gmail.com', '628122889983', 'Cebongan Rt 01 Rw 01 Argomulyo Salatiga', 'Perempuan'),
(83, 'Hana', 'denmaswisnu12@gmail.com', '628129429871', 'Griya serpong asri b8 no 5 rt 06/rw 05 cisauk tangerang', 'Perempuan'),
(84, 'Mirwan husen', 'mirwanhusen10@gmail.com', '6282290727370', 'Kel maliaro ternate tengga provinsi maluku utara', 'Laki-laki'),
(85, 'Nia', 'sea_nia82@ymail.com', '6282367837789', 'Langsa -  aceh', 'Perempuan'),
(86, 'Rizal Fadhil', 'rizal.fadhil142@gmail.com', '6285320480142', 'KP. NANGOH TONGGOH RT/RW. 01/14 RANCASALAK,,,,,,,\r', ''),
(87, 'Darmawan', 'mawanshi82@gmail.com', '628116880680', 'Desa Keutapang Kec. Krueng Sabee, KADUNGORA, GARUT', 'Laki-laki'),
(88, 'erna erviani', 'ernaerviani33@gmail.com', '6281331379718', 'jln sultan agung no 29 rt3 rw 4 ketanon Tulungagung', 'Perempuan'),
(89, 'Rizky destriadi', 'rizky1612@gmail.com', '6285216996968', 'Perum pelita indah jl kol syarifudin yoes no 66 rt.13 sepinggan-balikpapan', 'Laki-laki'),
(90, 'Dian eko prasilowaty', 'd_astagina28@yahoo.com', '628111475203', 'Komplek sku hankam kelapa 2 jaln teratai no.41 rt.07 rw.02 cimanggis depok', 'Perempuan'),
(91, 'Dewi kartika', 'dewinovianto@gmail.com', '6281802003311', 'Perumahan Ikopin blok f 71 rt 5 rw 4 desa sayang kec jatinangor kab sumedang 45363', 'Perempuan'),
(92, 'Ai', 'arrfa322@gmail.com', '6281573429574', 'Cianjur', 'Perempuan'),
(93, 'M. Muzhaffar', 'muzhaffar_bdg@yahoo.com', '628122302810', 'Perumahan Nata Endah Blok B no. 44', 'Laki-laki'),
(94, 'Ansar Suyuti', 'ansarsuyuti@gmail.com', '628124234433', 'Jl. Andi Tonro Perumahan Gowa Sarana Indah A2/5 sungguminasa Kab.Gowa-Makassar', 'Laki-laki'),
(95, 'Fery Subiyanto', 'ferysubiyanto1983@gmail.com', '6281911689699', 'Jl.pesanggrahan Ciputat timur,,,,,,,\r', ''),
(96, 'Andi', 'nanihamid@gmail.com', '628115212902', 'Jln. Veteran Selatan Lr. 5a No. 20 Makassar', 'Perempuan'),
(97, 'Mochamad Faried', 'faried_suherman@yahoo.co.id', '6282329287022', 'Jl. Margorejo no 161,,,,,,,\r', ''),
(98, 'Yunisya Windarwati', 'yunisyawinda06@gmail.com', '6282325104606', 'Jl. Raya Narogong Km 13, Surabaya', 'Laki-laki'),
(99, 'Cucu Hernanto', 'cucu.hernanto17@gmail.com', '6281254545040', 'Jl. Jakarta 1,5 Cikiwul, Batargebang, Bekasi, Jawa Barat', 'Perempuan'),
(100, 'Gaga', 'gagaaghafi@gmail.com', '628159230600', 'Jl. Brigpol sukarna no. 7 karawang', 'Laki-laki'),
(101, 'Kris H', 'krisliazian@gmail.com', '62819824552', 'Komp. Panorama Alam Blok B.26 Jln. Assyafiiyah Cilangkap Jakarta Timur 13870', 'Perempuan'),
(102, 'Sahrul Aziz', 'abym3vl4n4@gmail.com', '6281359988878', 'Jl. KH. Wachid Hasyim RT. 26 RW 06 Desa Sananrejo Kec. Turen Kab.Malang Jatim', 'Laki-laki'),
(103, 'Okky Sugiarto', 'okkysugiarto5@gmail.com', '6281236605846', 'Jl. Nyang - Nyang Sari No.215 Kuta,,,,,,,\r', ''),
(104, 'Ayufa', 'ayufaa28@gmail.com', '6281372436819', 'Ayu Fitria Ananda', 'Perempuan'),
(105, 'Nurul', 'inunk.hidayah@gmail.com', '6285602155075', 'Betengsari Indah Rt. 05/07 Jaraksari Wonosobo', 'Perempuan'),
(106, 'Yuyun Yuningsih', 'yoens5171@gmail.com', '6287797425867', 'Desa babakanmulya rt 04/09 kec jalaksana kab kuningan', 'Perempuan'),
(107, 'Budiman Mustofa', 'budiman.mustofa17@gmail.com', '6287821081029', 'Alun-alun Kidul 04/02 Pucangan Kartasura Sukoharjo', 'Laki-laki'),
(108, 'Muhammad Mirdza', 'mirdza97@gmail.com', '6282213049977', 'Jalan Pulau Enggano GG.Satria No.64 Sukabumi BANDAR LAMPUNG', 'Laki-laki'),
(109, 'Jasman Nurdiansyah', 'jasman_nurdiansyah@ymail.com', '6285299359975', 'Jl.Jend.Ahmad Yani No. 33 kelurahan limpomajang kecamatan majauleng kabuoate wajo sulawesi selatan', 'Laki-laki'),
(110, 'Dhany Rakhmanu', 'rakhmanu@gmail.com', '6281328024990', 'Jl. K. Mursyid Rt 003 Rw 003 Sokaraja Lor,,,,,,,\r', ''),
(111, 'Ade', 'adgass1404@gmail.com', '6282173173808', 'Ade Gassing', 'Laki-laki'),
(112, 'Luthfi Elghina', 'luthfielghina95@gmail.com', '6281806024962', 'Laguna Spring Jogja', 'Laki-laki'),
(113, 'Arif Seno Adji', 'arifsenoadji@gmail.com', '6282134594700', 'Arif Seno Adji', 'Laki-laki'),
(114, 'Dwi Setyo Hastuti', 'ds_hastuti@ymail.com', '6285782118669', 'Kampung Bulak,,,,,,,\r', ''),
(115, 'Nurul', 'nuha.mafazam73@gmail.com', '6281359082444', 'jl.wilis gg brojomusti no 16, Dusun 2 Jln. KH Sanip RT.003/04 No. 24, Bojong Kulur - Gunung Putri, Bogor', 'Perempuan'),
(116, 'Nirwan Sujana', 'nirwansujana@yahoo.com', '628128477569', 'Jl. Bahari I no.6 rt 09/07 gandaria selatan, Kalangbret, Kauman, Tulungagung. Jatim', 'Perempuan'),
(117, 'Cindy Ayu Rosiana', 'cindyrosiana0@gmail.com', '6282229000413', 'Dusun Krajan RT/RW : 04/02 Desa Gunung Malang Kecamatan Sumberjambe, jakarta selatan Dki Jakarta', 'Laki-laki'),
(118, 'Haryanta', 'haryanta1712@yahoo.co.id', '628118202641', 'Jl kenanga raya 1 no 20 rt 01 rw 02 gg plamboyan. Jatimelati. Pondokmelati. Bekasi. Jawa barat', 'Laki-laki'),
(119, 'Fitria Handayani', 'pipitpitto2@gmail.com', '6281322256570', 'Jl. Pasar pagaden no. 144 Kec. Pagaden kab. Subang', 'Perempuan'),
(120, 'Banu Hermawan,,,,,,,\r', '', '', '', ''),
(121, 'Agromena susanti', 'aagromenasusanti@yahoo.com', '6285272897389', 'Puncak Desa angkasa Kec.Bandar Petalangan kab.pelalawan Riau', 'Perempuan'),
(122, 'Solehudin', 'sholehudin65056@gmail.com', '6285770591581', 'Desa cibuntu ,,,,,,,\r', ''),
(123, 'Akhmad Yunan Rijaluddin', 'yunan.rijaluddin@gmail.com', '628112306480', 'JL. Pungkur GG. Muncang No. 25 RT. 007 / RW. 001 Kel. Pungkur Kec. Regol,kec Cibitung ,kab Bekasi RT 001 RW 014', 'Laki-laki'),
(124, 'Miswanto', 'missioneto@gmail.com', '6282211887210', 'Vila Dago Tol, Bandung 40252', 'Laki-laki'),
(125, 'Euis purnama sari', 'purnamasarieuis@rocketmail.com', '6285311820385', 'Pt sumber cahaya agung garment , H15/11 Serua, Ciputat, Tangsel', 'Laki-laki'),
(126, 'Muttakin', 'muttakinjufri@gmail.com', '6285255522290', 'Jalan maccini raya no.114 makassar sulawesi selatan', 'Laki-laki'),
(127, 'ibrahim hasibuan', 'ibrahimhasibuan1@gmail.com', '628126311062', 'jl. belibis no.37,,,,,,,\r', ''),
(128, 'Dewi', 'dewireno@yahoo.com', '6282132501768', 'Keputih Tegal Timur B 3A/ 57 Surabaya 60111', 'Perempuan'),
(129, 'Prima Nursyami', 'prima.nursyami@gmail.com', '6282122686028', 'Cluster de Laladon Blok E12A Ciomas Bogor', 'Laki-laki'),
(130, 'Nardo Golan', 'edo@nardogolan.com', '6285330743127', 'Jalan Letjend Sutoyo 67F Kediri', 'Laki-laki'),
(131, 'Hamid yusuf prasetyo', 'hamidyusufpras@gmail.com', '628111676768', 'Jalan AL kranggan wetan no 41 kota bekasi', 'Laki-laki'),
(132, 'Rizal Tanjung', 'tanjungrizal1@gmail.com', '6285340047109', 'Kotamobagu gogagoman  rt 4', 'Laki-laki'),
(133, 'Mr. HARIT', '', '6285250023344', 'grahakhilafah@gmail.com', 'Laki-laki'),
(134, 'Firman_izza', 'izza.mf3@gmail.com', '6285641717489', 'Pekajangan 18 No. 41 Rt 28 Rw 10 Kec. Kedungwuni  Kab. Pekalongan', 'Laki-laki'),
(135, 'Ahmad Lanjar Prayitno', 'Yukberniagaberkah@gmail.com', '6282227399588', 'Kisik,,,,,,,\r', ''),
(136, 'Muhammad Pramana Adi', 'dionadi09@gmail.com', '6285716407475', 'Jl. Dukuh Kupang 19 no. 23 surabaya jawa timur', 'Laki-laki'),
(137, 'Zilda Ayu Ramadia', 'zyldaa@gmail.com', '628119303500', 'Villa Gunung Lestari,,,,,,,\r', ''),
(138, 'ananda sungkar', 'anandasungkar.bsm@gmail.com', '6282364673077', 'jln banda aceh-medan km137, Jl. Merbabu IX blok E7 no.29 Jombang Ciputat Tangsel 15414', 'Perempuan'),
(139, 'Harancang Pandih', 'dokterhara@gmail.com', '6285716443500', 'Jl. Ketileng raya 21 semarang 50272', 'Laki-laki'),
(140, 'Hibatullah helmi izzuddin', 'hibaizzud14@gmail.com', '6282328114134', 'jl bismo no 4 tambran magetan', 'Laki-laki'),
(141, 'Uki', 'u_qee1512@yahoo.com', '628562992096', 'Telukan sukoharjo', 'Laki-laki'),
(142, 'Muhammad Arifin Julian', 'arifinjulian@gmail.com', '6282213669672', 'Jl. Masjid Al jihad,,,,,,,\r', ''),
(143, 'Agus Muhar', 'agusmuhar17819@gmail.com', '6281222760902', 'Jl gas alam gang sejahtera no 23 rt 5/4 sukatani, no.23 rt.02 rw.04, kelapa gading timur, jakarta utara', 'Laki-laki'),
(144, 'Azmir', 'azmirazmir79@gmail.com', '6281378390202', 'Jl.utama no.14 Rt.o4 Rw.04 kel. Kempas Jaya kec.kempas kab.Inhil Riau', 'Laki-laki'),
(145, 'Ahmad Rizqi', 'ahmad.rizqirabbani3@gmail.com', '628170007093', 'Jl. Raya Bangil-Pandaan Km1 Kompleks Al-Uswah Bangil no. 90', 'Laki-laki'),
(146, 'Gilda Prima Zola', 'notarisgildaprimazola@gmail.com', '628126600829', 'Jl. Rangkayo Bungsu no 52 Koto (Kompleks RSUD Hanafiah) Batu Sangkar,,,,,,,\r', ''),
(147, 'defria', 'defriakirana@gmail.com', '6281802298115', 'jl terrace pavillion no 2 taman griya - jimbaran - bali', 'Perempuan'),
(148, 'Subowo Radiyanto', 'subowo_radiyanto@yahoo.co.id', '6282284008900', 'Jl Tanjung Harapan Lrg Tg Irian 76 Tembilahan', 'Laki-laki'),
(149, 'M. Satria S Negara', 'riosatria11326@gmail.com', '6281219003231', 'Perum Bumi Anggrek S 167 Karang Satria Bekasi.', 'Laki-laki'),
(150, 'Muhammad Rizqi Pratama', 'prizqi253@gmail.com', '6281342163854', 'komplek departemen perdagangan jln. Niaga II no. C44', 'Laki-laki'),
(151, 'Sri rejeki Widiastuti', 'widya.9512@gmail.com', '628115132912', 'Jl. Agathis 2 no.3 rt.41 kayutangi,,,,,,,\r', ''),
(152, 'Eros Rosita', 'ummuhamzah.01@gmail.com', '6285224080293', 'Pesantren Daarul Huffaazh Kuningan dusun Babakan rt 05 rw 03 desa Garatenhah kec Japara Kuningan Jawa Barat 45555', 'Perempuan'),
(153, 'Ronahimmah i', 'baby_izz@ymail.com', '6282110463519', 'H. Mukmin1 no 21e kalisari pasar rebo jaktim', 'Perempuan'),
(154, 'Nurfitriani', 'usmanfitrie@gmail.com', '6281382663806', 'Jl. Sultan Al Kahar No. 6 Kuta Alam - Banda Aceh', 'Perempuan'),
(155, 'Irwan bin ibrahim', 'irwansocolatte@gmail.com', '6285260074496', 'Desa Baroh Musa.kec.Bandar Baru.kab.pidie Jaya.Aceh', 'Laki-laki'),
(156, 'Andi Eko Prasetyo', 'andi.ekho.ae@gmail.com', '6282191896067', 'Kompleks BTN Tonasa B/3', 'Laki-laki'),
(157, 'Fitri Agusrini', 'fitri17sakhi@gmail.com', '6281270792787', 'Villa sampurna 1 blok h1 no 6', 'Perempuan'),
(158, 'Gartika Rahmayati', 'gartika21@yahoo.com', '628122363049', 'Jalan parakanwangi no 11A bandung', 'Perempuan'),
(159, 'Sondangsari Bulan', 'sondangsarib@gmail.com', '628121003345', 'Duta Bintaro Cluster Sanur E5/25  Kunciran - Pinang Tangerang', 'Perempuan'),
(160, 'Nana Ernawati', 'nana.darwis@yahoo.com', '6285921530796', 'Jln komp rs psahabatan no 11 rawamangun jakarta timur 13230', 'Perempuan'),
(161, 'Kasmiah Ali', '', '6285200700727', 'mia.alga01@gmail.com', 'Perempuan'),
(162, 'Takdir', 'takdirishak244@gmail.com', '6281342472801', 'Jl.agatis', 'Laki-laki'),
(163, 'Akhmad Sobirin', 'akhmadsobirin55@gmail.com', '6281327221055', 'Desa Semedo RT 04 RW 04,,,,,,,\r', ''),
(164, 'Hairi Yanah Latif', 'reyhanayasmin@gmail.com', '6282188787168', 'Jl masjid raya setapak 4 no.59B gowa', 'Perempuan'),
(165, 'Evi Martosudjono', 'evi.martosudjono@gmail.com', '6281288585020', 'Grand Depok City Cluster Acacia Blok B No.62 Depok', 'Perempuan'),
(166, 'Mainita Hidayati', 'mainita.h@gmail.com', '6287882630336', 'Jl. Taman Sakura III Blok.L4 no.8 Taman Galaxy Indah Bekasi Selatan', 'Perempuan'),
(167, 'Muh Ilham', 'ilhamalimuddin99@gmail.com', '6281342563208', 'Jl. Syech Yusuf kel. Tuwung Kec Barru Kab Barru Makassar', 'Laki-laki'),
(168, 'Yudi Defitra', 'yudi.defitra@gmail.com', '6281289402603', 'Perumahan Citra Indah City Bukit Gardenia AP 19/3 Jonggol Kab Bogor', 'Laki-laki'),
(169, 'Ratih Ramelan', 'ratihramelan@yahoo.com', '62811855835', 'Kompleks MABAD Rempoa,,,,,,,\r', ''),
(170, 'Catur Wahyuningsih', 'catur.wahyuningsih@yahoo.com', '6281212739033', 'Taman Mutiara Cinere Blok 6B Nomor B3', 'Perempuan'),
(171, 'Titis witri pramesti', 'tiswitri@gmail.com', '628988016282', 'Jl pendawa lima rt 02/05 kel ragajaya kec bojonggede ka bogor', 'Perempuan'),
(172, 'Sukmana Dwi Cahyadi', 'sukmana.dwicahyadi@gmail.com', '628118503969', 'Kompleks Essence Park blok B6/17,,,,,,,\r', ''),
(173, 'Dhodi Junaedi', 'kreatifmediatama@gmail.com', '6282135103338', 'Cirahab RT.5 RW.1 Lumbir', 'Laki-laki'),
(174, 'Agus Prastowo', 'babaheagus313@gmail.com', '6285647376610', 'Plambon RT3 RW4 Wangen Polanharjo Klaten', 'Laki-laki'),
(175, 'Andri noviardi', 'billyalfath@gmail.com', '6281352613966', 'Jln hm suwignyo gg kemakmuran no 28A Pontianak', 'Laki-laki'),
(176, 'agus salim', 'abiagussalim1@gmail.com', '628122479875', 'Cibangun Kaler 2,,,,,,,\r', ''),
(177, 'Ary Aditia Ratman0', 'aryaditiaratman@gmail.com', '6287893260879', 'Komplek Graha Kencana Batujajar Blok J3 No 21', 'Laki-laki'),
(178, 'Amirah Sudra Nur Adni / sudrawat', 'adnisudra92@yahoo.co.id', '6282351411199', 'Jl. H. Isa 2 sebrang Gg. Wira. Tanjung redeb-berau', 'Perempuan'),
(179, 'Dian Husni', 'dianhusni99@gmail.com', '6283129578678', 'Jln. Kirab Remaja No. 5 Desa Nyurlembang,,,,,,,\r', ''),
(180, 'Alpin Tumbali', 'alpintumbali@gmail.com', '6282290660320', 'Alpin Tumbali', 'Laki-laki'),
(181, 'Oktafiani Putri Astuti', 'oktafianiputri17@gmail.com', '6285740000339', 'Busuran RT 38,,,,,,,\r', ''),
(182, 'Bayu nugroho', 'bayu_nugroho_as@gmail.com', '6281328836251', 'Jl. Koti no 212 weref kota jayapura', 'Laki-laki'),
(183, 'dwi retno ujianti', 'drdwiretnoujianti@gmail.com', '6289662348877', 'Sinanggul 28/5 Mlonggo Jepara', 'Perempuan'),
(184, 'Lia Hendini', 'hbasuki24@gmail.com', '628567592045', 'Jl. Sawo 3 No. 71 Rt 08/15,,,,,,,\r', ''),
(185, 'Elvin Baharuddin', 'elvin.baharuddin@gmail.com', '6281279038081', 'Jl. PLN No.66 RT.002/RW.001 Kelurahan Pondok Karya Kecamatan Pondok Aren Kota Tangerang Selatan Provinsi Banten', 'Laki-laki'),
(186, 'Ilyas', 'ilyas.sofwan@gmail.com', '6281390134354', 'Perum Griya Sejahtera A6/2 Tirto Pekalongan Barat Kota Pekalongan', 'Laki-laki'),
(187, 'Rumah Sehat Entrepreneur', 'rumahsehatentrepreneur@gmail.com', '6287735400435', 'Gegerkalong girang. Nomor 71i,,,,,,,\r', ''),
(188, 'Arahman Husin', 'jasamandiri1@gmail.com', '6281310613194', 'Puri harmoni 3 blok B3 no 3 RT 01 Rw 13 desa Dayeuh kecamatan Cileungsi Kab Bogor Jawa barat', 'Laki-laki'),
(189, 'M. Sidik Fathurohman', 'm.sidik.fr@gmail.com', '6282312323875', 'Kp. Kali Jeruk Rt.02/03 Ds. Kalijaya Kec. Cikarang Barat Kab. Bekasi 17844', 'Laki-laki'),
(190, 'Errin desynta', 'errindesynta@gmail.com', '6285729145278', 'Kenjer rt 04 RW 05 Kertek wonosobo', 'Perempuan'),
(191, 'Sry Ana', 'sry2371@gmail.com', '6282313121314', 'Gorontalo', 'Perempuan'),
(192, 'SUDAR', 'mazdar2009@gmail.com', '6285200432017', 'Jl. Raya Kediri No. 12..Desa Kediri RT 05 RW 01..Kec.Karanglewas..Kab.Banyumas..Jawa Tengah 53161', 'Laki-laki'),
(193, 'Anggun Rizki', 'anggunrizki.30@gmail.com', '6287724004809', 'Jln. Bulak Tengah 1 No 24 RT 011 RW 007,,,,,,,\r', ''),
(194, 'Izzatul Mardhiyah', 'izhmrdh@gmail.com', '6285279040814', 'Komplek Way Hitam Jl Musi II Blok B55 Rt 003 Rw 007 Kel Siring Agung Kec Ilir Barat I', 'Perempuan'),
(195, 'Rifqi Rifandi', 'rifqirifandi08@gmail.com', '6285278295938', 'Jalan Jendral Sudirman Desa Batu kec. Pasir Penyu Kab. Indragiri Hulu', 'Laki-laki'),
(196, 'Suryanti', 'suryanti_akmal@yahoo.com', '6281248288881', 'Jln. Budi Utomo No.6 (depan Diana shopping center)', 'Perempuan'),
(197, 'Imam Syahanto', 'mutiarasembilandigital@gmail.com', '628117212999', 'Perum Mutiara Regency blok D No 9', 'Laki-laki'),
(198, 'Aji Arif Sulaksono', 'ajias123@gmail.com', '6282123709523', 'Jl. Kebun Pramuka 429 Komperta Prabumulih SumSel', 'Laki-laki'),
(199, 'Anwar Rahman', 'anwartop34@gmail.com', '6281349784881', 'Jln raya batulicin no 05 RT 13 RW 03 kec batulicin kab tanah bumbu Kalsel', 'Laki-laki'),
(200, 'andi asni syahwi puteri', 'muh4lwi@yahoo.com', '6281245558690', 'jl.buru lr. 226 no. 19 A kel. melayu kec. wajo Makassar', 'Perempuan'),
(201, 'Rita Reni Puspita', 'ritarenipuspita@gmail.com', '6281374856162', 'Kantor wali nagari candung koto laweh kec.candung kab.agam sumbar', 'Perempuan'),
(202, 'Syarief durahman', 'kangdenrief@gmail.com', '62816730010', 'Royal Residence Blok F3 no. 10 pulo gebang', 'Laki-laki'),
(203, 'Heri Prasetyo', 'heri.prasetyo2@gmail.com', '628563670660', 'Jl. Danau Matana V F2 J-17,,,,,,,\r', ''),
(204, 'Miftahul Fadli Muttaqin', 'miftah.4ma@gmail.com', '6283821114448', 'Kp. Andir Rt 04 Rw 15 No. 17 Desa Gudangkahuripan Kec. Lembang Kab. Bandung Barat 40391', 'Laki-laki'),
(205, 'Murni', 'annisanuruliffah@gmail.com', '6281244336203', 'Jln.vetran ruko no.4 Calaca samping bank Mega Manado Sulut', 'Perempuan'),
(206, 'PRIYONO', 'priyothea69@gmail.com', '6283195609452', 'Biru Laut Teknik Jl Raya Banjaran Km.14 No.545 Kec. Pameungpeuk Kab.Bandung 40376', 'Laki-laki'),
(207, 'Armansyah', 'arm4nsyah@gmail.com', '6287851314007', 'Kiara Residence C18 No. 9', 'Laki-laki'),
(208, 'Eko Andriyas', 'tanyaekoaja@gmail.com', '62811778929', 'Ruko Mega Legenda 2,,,,,,,\r', ''),
(209, 'Siti Komariah Siregar', 'sitkom.sks@gmail.com', '6285276383221', 'Jl. Mangga desa sei Dadap I/II dusun VI, Blok B3 No. 12A', 'Laki-laki'),
(210, 'Aisah ropikoh', 'asropherbal@gmail.com', '6283875913995', 'Mekar asri 2 blok d8/20, Kec.Sei Dadap, Kab.Asahan', 'Perempuan'),
(211, 'Syaeful Rachman', 'syaefulrachman10@gmail.com', '6282118715980', 'Kp.  Pojok Girang RT 004 RW 004 Desa Cikahuripan Kecamatan Lembang Kab.  Bandung Barat, mekar bakti, Panongan, kab Tangerang', 'Perempuan'),
(212, 'Erna yuliawati', 'ernawati5003@gmail.com', '6285757272347', 'Perumahan taman widya asri blok B2 no 22 serang banten', 'Perempuan'),
(213, 'Akbar Amir', 'akbarmp011@gmail.com', '6281340145322', 'Fogi RT. 04/RW. 02 Kec. Sanana Kabupaten Kepulauan Sula', 'Laki-laki'),
(214, 'Anto Al-Ayyubi', 'pdwi1671@gmail.com', '628995669180', 'Jl besi jangkang km 3,,,,,,,\r', ''),
(215, 'Muchammad Ubaidi', 'muchammadubaidi@gmail.com', '6287885107563', 'JL. MPR II No 8A Cilandak Jaksel', 'Laki-laki'),
(216, 'Rahmat hertawan', 'Rahmat.hertawan@gmail.com', '6281774166247', 'Jalan Pendawa Raya No.7 Rt 2 Rw23 Kel Mekarjaya Kec. Sukmajaya', 'Laki-laki'),
(217, 'Ieyin Gozali', 'ieyin.gozali@gmail.com', '628159606606', 'Pluit Karang Sari VI', 'Perempuan'),
(218, 'Dewi Rosliani', 'dheroshusen190307@gmail.com', '6282118017602', 'Desa Mandaong Kec bacan selatan kab Halmahera Selatan prop Maluku Utara', 'Perempuan'),
(219, 'Riana Eka Puspitasari', 'rianaekapuspitasari@gmail.com', '6282170847525', 'Komplek Kubang Lunto Km 2 No.36. Jorong Kumani. Nagari Sungai Kambut. Kecamatan Pulau Punjung. Kabupaten Dharmasraya Provinsi Sumatera Barat.', 'Perempuan'),
(220, 'Vetto Wahyu Bhinanda', 'vettowahyu@gmail.com', '6282223000763', 'Jl. Babaran no 8C Pandeyan Umbulharjo kota Yogyakarta', 'Laki-laki'),
(221, 'Meita Ayu Nindyawati', 'radimasputra777@gmail.com', '6281233942742', 'Jl. Kh. Achmad Dahlan Gg IV No 18 Rt.09 Rw.02,,,,,,,\r', ''),
(222, 'Ucik dewanti', 'afshancomel@gmail.com', '628568221882', 'Dusun pogoh, Kec. Purworejo Kota, Pasuruan', 'Perempuan'),
(223, 'Aliusi', 'aliusi.alus89@gmail.com', '6287859221433', 'Jl Bank Raya XI Griya Demang Mas Blok E9 Kota Palembang', 'Laki-laki'),
(224, 'Susinah harun', 'susinahh@gemail.com', '6281380027548', 'Jln landbaw kp gudang Rt 03 Rw 09 karang asem barat citeureup bogor', 'Perempuan'),
(225, 'Afziah lisayenti', 'hanihaya1221@gmail.com', '6282110793988', 'Griya Alam Sentosa Blok P6 no 17 RT 03 Rw 10 Cileungsi,,,,,,,\r', ''),
(226, 'Yantina', 'yantina201@gmail.com', '6281936049295', 'Jln. KH. Ahmad Dahlan, bogor', 'Perempuan'),
(227, 'Yusli Pola', 'yuslipola@gmail.com', '6285220353604', 'Jl. Raya Laswi No.345 Manggahang, Dusun Nyamarai, Desa Karang Bongkot, Kec. Labuapi, Kab. Lombok Barat, NTB', 'Perempuan'),
(228, 'jepri efendi', 'jepri.efendi@gmail.com', '6285249126648', 'palangkaraya', 'Laki-laki'),
(229, 'Hery Kusmayadi', 'hkkoesmay18@gmail.com', '628112549620', 'Dusun kepuh kulon,,,,,,,\r', ''),
(230, 'tri wahyuni', 'qurniayu@gmail.com', '6281217017979', 'Aspol Ketintang D / 13 Surabaya', 'Perempuan'),
(231, 'Aang Azij', 'azij.my@gmail.com', '6285885536819', 'Kebon Kawung No. 3 RT.23 RW.004 Desa Citamiang,,,,,,,\r', ''),
(232, 'Prima W', 'primaw@outlook.com', '628128087828', 'Depok', 'Laki-laki'),
(233, 'Lilis Mulyani', 'lilismulyy@gmail.com', '6281381237501', 'Cluster Alexandrite selatan 2 no.1', 'Perempuan'),
(234, 'Endriadi', 'endryady@gmail.com', '6282288292288', 'Komplek pasar simpang tiga,,,,,,,\r', ''),
(235, 'Isna Nur Khasanah', 'isnaqu@gmail.com', '628122630752', 'Kuyudan rt 02 rw 5 makamhaji,depan mesjid raya nurul ikhlas ruko jualan beras.nagari koto baru.kec.Luhak nan duo,kab Pasaman barat.SUMBAR', 'Laki-laki'),
(236, 'aris budiman', 'arisbudiman158@gmail.com', '6281289292818', 'Jl.Satria VII F/115 RT.007/RW.04 Kelurahan Jelambar Kecamatan Grogol Petamburan Jakarta Barat', 'Laki-laki'),
(237, 'Siska', 'siskacikahapsari@gmail.com', '6281218806488', 'Jl.Raja Alam 1 RT 5 Berau Kaltim', 'Perempuan'),
(238, 'Ayu Ana Sari', 'ayusharie26@gmail.com', '6282361783310', 'Dusun krajan tengah desa wonorejo rt 04 rw 07 kec. Lawang kab. Malang', 'Perempuan'),
(239, 'Agus Purnama Catur Putra Gantika', 'agus.purnama.cg@gmail.com', '62811233217', 'Jl. Manglayang 8 no. 338 RT. 04/06 Kel. Palasari-Cibiru Bandung,,,,,,,\r', ''),
(240, 'NOVRIZAL', 'novrizal091164@gmail.com', '6282293019117', 'Mitra sport jln by pass ateh tambuo, 40615', 'Laki-laki'),
(241, 'Tara', 'mayangsaritara@gmail.com', '628125533317', 'Taman pinang indah D4-21', 'Perempuan'),
(242, 'Luky', 'lukymaulanailham@gmail.com', '6282112145696', 'Jl Binong Utara V No 123/127B Kiaracondong Bandung', 'Laki-laki'),
(243, 'Taufik bagus P', 'shellywongso81@gmail.com', '6281317237721', 'Permata puri media', 'Laki-laki'),
(244, 'nur ais ina hefnita', 'hefnitanuraisina@gmail.com', '6285735191337', 'Perumahan griya husada blok A3/4 sumberporong,,,,,,,\r', ''),
(245, 'Ahmad Fauzi', 'barchejuv@gmail.com', '6285337946762', 'Pondok Pesantren Persatuan Islam (PERSIS) 148. Jl. Karantina No. 04 Kel. Ule Kec Asakota - Kota Bima', 'Laki-laki'),
(246, 'Nova Mulyasari Jaihas', 'pengagumkata98@gmail.com', '6282215296145', 'Desa cempeudak,,,,,,,\r', ''),
(247, 'Ibrahim Widyandono', 'ibrahim.widyandono@gmail.com', '6285236903020', 'Jl Yos Sudarso III no 5 Kota Probolinggo Jawa timur', 'Laki-laki'),
(248, 'Nurlaela', 'ummiella80@gmail.com', '6287809072153', 'jl. Rawajaha Rt. 3/3 No. 22 situgede,,,,,,,\r', ''),
(249, 'ORI RINALDI', 'oririnaldi7@gmail.com', '6282370136840', 'Jl. KH AHMAD DAHLAN, Bogor barat', 'Perempuan'),
(250, 'Eko Suroso', 'ekosuroso268@gmail.com', '6282323231268', 'Jl.pln no. 40 , BUKIT SOFA, SITALASARI, PEMATANGSIANTAR', 'Laki-laki'),
(251, 'Mochammad gozali', 'ghozalibiz@gmail.com', '6282234325513', 'Dusun areng2 rt2 rw 3 wonorejo pasuruan', 'Laki-laki'),
(252, 'Dr Yanuar Iman Santosa Sp. THT-K', 'yanuar.tht@gmail.com', '628122544052', 'Bukit wahid regency,,,,,,,\r', ''),
(253, 'Azo Suharjo', 'suharjo1705@gmail.com', '6287782226956', 'Perumahan Taman Melati Blok FA no. 1 Jl. Melati Tirta 2 RT 03 RW 08 Kel. Duren Mekar Kec. Bojongsari Depok Jawa Barat', 'Laki-laki'),
(254, 'Ali mubayin', 'alimubayin007@gmail.com', '6285733077611', 'Brondong Lamongan Jawa Timur', 'Laki-laki'),
(255, 'Muhammad Ridwan', 'muh_ridwan78@yahoo.co.id', '6282281855438', 'Jalan Bawang B3 No.20 Perumahan Beringin Raya Kelurahan Beringin Raya Kec. Kemiling Kota Bandar Lampung,,,,,,,\r', ''),
(256, 'Didip', 'dp17.didip@gmail.com', '6289670834632', 'Sempalai sebedang kec. Sebawi kab. Sambas', 'Laki-laki'),
(257, 'Aris Ahmad  Jaya', 'aris.abco@gmail.com', '6281210461034', 'Perumahan Bogor Raya Permai Blok FD IV no 16 A Kota Bogor Jawa Barat', 'Laki-laki'),
(258, 'Ummi Matul Ula', 'ummimatul12@gmail.com', '6282335954980', 'Krian,,,,,,,\r', ''),
(259, 'Rismi Fatoni', 'rismifatoni11@gmail.com', '6285742728820', 'Dk. Cokrah Rt 3 Rw 9, Sidoarjo', 'Perempuan'),
(260, 'Faluvi Irawan', 'faluviir@gmail.com', '6281994739999', 'Jl. Nirwana no.1 KPHI Karangsong, Ds. Gandarum, Kec. Kajen, Kab. Pekalongan, Jawa Tengah', 'Perempuan'),
(261, 'Ardi Abdul Rahman', 'ardiarba@gmail.com', '6281315700827', 'Kp. Sukaratu rt/rw 003/002 Desa Cikakak Kecamatan Cikaka', 'Laki-laki'),
(262, 'Nabila Fathurrozaq Khairani', 'nabilafkhairani@gmail.com', '6282169800774', 'jln. sangkar bulan no. 44,,,,,,,\r', ''),
(263, 'dani bustaman', 'dhanker7@gmail.com', '628112278686', 'komplek padasuka indah blok D no 74 kecamatan ngamprah kelurahan gadobngkong kbupaten bandung barat', 'Laki-laki'),
(264, 'Wibyan Julihar Rifantono', 'jr.wibyan@gmail.com', '628118035424', 'Apartemen Menara Cawang Unit 05B/03 Jl.SMA 14 RT.09 RW.09 Cawang Kramat Jati Jakarta Timur 13630', 'Laki-laki'),
(265, 'Heriyana', 'heryana78@gmail.com', '6285216778385', 'Jl.Tegal Amba No.32 Rt.001/018', 'Laki-laki'),
(266, 'Amir Syarifuddin', 'dhietkiddrocksf@gmail.com', '628128701984', 'Komplek perumahan Taman Griya Asri Batu gede Blok A no 1 desa Cilebut barat kecamatan Sukaraja kab Bogor', 'Laki-laki'),
(267, 'AHMAD FAUZAN', 'ozankbm87@gmail.com', '6285291015215', 'Jln.Bocor No.72 Tamanwinangun Pesantren Rt 04/02 Kebumen', 'Laki-laki'),
(268, 'Yuli Prastiwi', 'yuliprastiwi17@gmail.com', '628128701009', 'Komp. Puri Gading,,,,,,,\r', ''),
(269, 'BADRUZZAMAN SEMBIRING', 'badruzzamans74@gmail.com', '6282165338974', 'Pesantren Ar-Raudlatul Hasanah jl. Setia Budi ujung kelurahan simpang selayang kec. Medan Tuntungan Medan Sumatera Utara', 'Laki-laki'),
(270, 'Ahmmad Luthfi Pratama', 'uphiltop@yahoo.con', '62811987755', 'Bogor View 2 - K.13,,,,,,,\r', ''),
(271, 'Santi maryati', 'asmaazzahra91@gmail.com', '6281515859850', 'Jln.riung purna 2 no.18 kota bandung', 'Perempuan'),
(272, 'Jafar Muttaqin', 'jafarmuttaqin92@gmail.com', '6285794069946', 'Jl. Rasamala II No. 5 Rt 001 Rw 009 ,,,,,,,\r', ''),
(273, 'ahmad kurniawan', 'madzsukses@gmail.com', '6281324951485', 'jl sindangpanon 04/07 kec banjaran kab bandung 40377', 'Laki-laki'),
(274, 'Ahmad Zamroni', 'ahzami.bisnis@gmail.com', '6285247651317', 'jl. wiratama no 51,,,,,,,\r', ''),
(275, 'Muadzin Afidiansyah', 'muadzin.afidiansyah@gmail.com', '6281290677755', 'Jl. Lori Sakti No 26, Gg 01, RT 02. kelurahan sidodadi, kec samarinda ulu, kota samarinda, Kalimantan Timur', 'Laki-laki'),
(276, 'Arief Afief', 'arief_afief@yahoo.com', '6281389901802', 'Jl. Warung Silah 1 No.85 RT.02/04 Cipedak, RT 006 / RW 01 Kaliabang Tengah, Bekasi Utara, Kota Bekasi 17125', 'Laki-laki'),
(277, 'Erwan samsi murdani', 'erwansamsi@gmail.com', '6283853349009', 'perum graha permata indah blok HH no.7, Jagakarsa, Jakarta Selatan 12630', 'Laki-laki'),
(278, 'Musharyadi', 'musharyadi@gmail.com', '6281372106228', 'Perumahan. Puri Agung 3 Blok B4 No. 41, kel. Kranjingan, kec. sumbersari, Jember, Jawa Timur.', 'Laki-laki'),
(279, 'Mala', 'maymalla91@gmail.com', '6282141407733', 'Springhill garden blok seruni 20 . Malang', 'Perempuan'),
(280, 'Inen kurnia', 'inenkurniah@gmail.com', '6285714407437', 'Jl persatuan cimanggis depok', 'Perempuan'),
(281, 'Fadli Machda', 'fadlimachda@gmail.com', '6285317846263', 'Jl.Cikutra no.181 Bandung,,,,,,,\r', ''),
(282, 'Karmawan', 'empati.holistic@gmail.com', '6282113360063', 'Griya Empati Holistic Care. Jl ursula gang ma\'an rt.01/03 jatimurni Bekasi', 'Laki-laki'),
(283, 'Santi', 'deeplutz@gmail.com', '6281251270708', 'Jl cut nyak dhin no 19 tenggarong kaltim', 'Perempuan'),
(284, 'Dian Hestining Utami', 'dian.hestining.utami@gmail.com', '628118702240', 'Jl. Purnawarman No 58 Rt 003 Rw 02,,,,,,,\r', ''),
(285, 'Narone', 'sunarwan_asuhadi@yahoo.com', '6285298895111', 'Sunarwan Asuhadi', 'Laki-laki'),
(286, 'Sarjono Achmad', 'sarjono.achmad34@gmail.com', '6282210805858', 'Jl dwi warna pasar gang nol no 24 sawah besar mangga besar jakarta pusat', 'Laki-laki'),
(287, 'Siti Rahmawalidah Mohi', 'ummu_ariq@yahoo.co.id', '6285242001914', 'Stokis Tiens 261 Gorontalo Jalan Imam bonjol (Ruko Jimbo Niaga,,,,,,,\r', ''),
(288, 'Ahmad Rizaldi', 'ahmadaldyrizaldi@gmail.com', '6285242752481', 'BTN Mangga Tiga Blok F.3 No.9 kel.paccerakkang, depan toko Ira samping Colombus) Kelurahan Limba B Kecamatan Kota Sela', 'Perempuan'),
(289, 'Pangeran Chandra Sasmita', 'pancapooh@gmail.com', '62817591968', 'Jl. Muria no 6 Petemon Sawahan Surabaya 60252', 'Laki-laki'),
(290, 'Arizta Primadiyanti', 'rizta.primadiyanti@gmail.com', '6282145355268', 'Medokan Asri Timur V no. 29 Surabaya', 'Perempuan'),
(291, 'Indri Seta S', 'indri.andriansyah@gmail.com', '6281271637785', 'Jln Seduduk Putih C14', 'Perempuan'),
(292, 'Nova', 'novamaharani171275@gmail.com', '6281317779696', 'Tasbi 1 blok SS no 43 setiabudi medan', 'Perempuan'),
(293, 'Annurul Khotimah', 'annurul2306@gmail.com', '6287882688055', 'Annurul Khotimah', 'Perempuan'),
(294, 'Aryo', 'aryoglamour@gmail.com', '6282132199700', 'Jl Prof Dr Soepomo No 139,,,,,,,\r', ''),
(295, 'Herawati', 'Hera_hsb@yahoo.com', '6285270197579', 'Jl jawa no 39 f pematangsiantar', 'Perempuan'),
(296, 'Alif yanto', 'aliphsyahban@gmail.com', '6282189768857', 'Jln soppeng kec.ajanggale kab,,,,,,,\r', ''),
(297, 'Rossy Yulianti', 'rossyyulianti3784@gmail.com', '6281511418283', 'Jl.Narogong Jaya 6B blok D77 no.16', 'Perempuan'),
(298, 'Dini Nurdiani', 'dinidianinur@gmail.com', '6281212635459', 'Jl. Waru Timur Raya No. 11,,,,,,,\r', ''),
(299, 'Irwanto', 'hijrah1432@gmail.com', '6285242487473', 'Jl. Pongtiku No. 13, Semarang Jateng', 'Perempuan'),
(300, 'Muhamad Fahri', 'fahrykampung@gmail.com', '6281776726255', 'Desa leuwinutug RT 04 RW 06 kec. Citeureup Kab. Bogor', 'Laki-laki'),
(301, 'Hudzaifah', 'hudzaifah1416@gmail.com', '6281284202635', 'Jl. Pancawarga V No.4,,,,,,,\r', ''),
(302, 'Arif Purwadana', 'purwadanarif@gmail.com', '6287873461230', 'Jalan Panda 8 Blok C4 Nomor 59 Cikarang Pusat', 'Laki-laki'),
(303, 'Umi Salmah', 'tjiemie@yahoo.co.id', '6287899979999', 'Jl Karya Ikhlas IV No 9A Medan', 'Perempuan'),
(304, 'Aji Buono', 'ajibuono@gmail.com', '6281234555759', 'Menteng Dalam', 'Laki-laki'),
(305, 'Wahyudi', 'wahyudiapoteker@gmail.com', '6281223709419', 'Rt 9,,,,,,,\r', ''),
(306, 'Abdul Jabbar', 'jabbar@badr-interactive.com', '6281219524105', 'jl swadaya 1 kelurahan pejaten timur, desa mekar sari makmur, kec sungai bahar , kab muaro jambi peovinsi jambi', 'Laki-laki'),
(307, 'Kusnul ika Sandra', 'kusnulikasandra@gmail.com', '6282131848459', 'Jl.yos sudarso 103 medaeng waru sidoarjo jawa timur', 'Perempuan'),
(308, 'Arif Yuniarto', 'ariepyk@gmail.com', '628121571357', 'kauman RT 05 Gilangharjo Pandak Bantul Jogjakarta', 'Laki-laki'),
(309, 'Azkiatunnisa Fajriyati', 'azisarf9@gmail.com', '6282234248811', 'Jl. Wisma Permai I No. 137 Mulyorejo,,,,,,,\r', ''),
(310, 'Isa abdillah', 'bibaherl120331@gmail.com', '6281227850866', 'Karang baru gg nusa indah 1 rt 01/15 sanggarahan grogol sukoharjo', 'Laki-laki'),
(311, 'Hasmia', 'dr.hasmia@gmail.com', '628114205338', 'Desa barammamase,,,,,,,\r', ''),
(312, 'Aprilistiyo Adisaputro', 'aprilistiyo@gmail.com', '6281286870117', 'Perum Badan Pusat Statistik Jl. Statistik 2 Blok 1b No 14 RT04/13,  kec walenrang kab luwu.  Sulsel', 'Perempuan'),
(313, 'Rakeyindria M', 'indra.rake@gmail.com', '6281358592506', 'Mutiara regency blok C no.25 sidoarjo', 'Perempuan'),
(314, 'Arie Muhammad Prasojo', 'arie.mpra@gmail.com', '6281318310354', 'Jl Bambu Betung IV no. 2 TM Yasmin Bogor', 'Laki-laki'),
(315, 'lininda nugrahaputri', 'dindalininda@gmail.com', '62811271277', 'jl ceria tengah f 55 semarang', 'Perempuan'),
(316, 'Muhammad Ridho Nalendro', 'edonalendro@gmail.com', '6285790547074', 'Taman Nagoya E3-10 Puri Surya Jaya,,,,,,,\r', ''),
(317, 'Ayu Setiyawati', 'bintangtriliuner777@gmail.com', '628567413558', 'Perum Griya Salaman Asri blok B17 Menoreh Salaman Magelang Jawa Tengah', 'Perempuan'),
(318, 'Hudiyani', 'mataharikebaon@gmail.com', '6285227940066', 'Jl Jend Sudirman Kebaon no 5 Kutabanjar Banjarnegara Jawa Tengah', 'Perempuan'),
(319, 'Tushy Octafadiola', 'tushyuci@gmail.com', '6285730604039', 'Taman Gunung Anyar B30,,,,,,,\r', ''),
(320, 'Eka Purnama Sari', 'tazarale@gmail.com', '6287752975157', 'Sumolepen gg sawah no 4 mojokerto', 'Perempuan'),
(321, 'Tatang', 'tatangzz@gmail.com', '6287803264664', 'Jl.bintaro permaingg.langgar no.19 rt.3 r.w 3 pesanggrahan jakarta selatann', 'Laki-laki'),
(322, 'Mahyuddin siregat', 'mahyugar@gmail.com', '6281375872750', 'Jl. Sugeng komplek sakinah desa sei rotan,,,,,,,\r', ''),
(323, 'Bariqi Rizqullah Syahidian Taufi', 'Bariqirizqullah98@gmail.com', '6285809958709', 'Jl. Baladewa V No. 41 D Pajajaran Bandung', 'Laki-laki'),
(324, 'BUDI SUGIONO', 'budi.kledoan@gmail.com', '6281367196709', 'Desa Balai panjang kec. Lareh Sago Halaban Kab. 50 Kota. Propinsi Sumatera Barat', 'Laki-laki'),
(325, 'Endi Santoso Restiono', 'endi.rivo@gmail.com', '6281326020200', 'Perum Wolter Monginsidi Baru No 32 Semarang depan Pom Bensin Gasem Pedurungan Semarang', 'Laki-laki'),
(326, 'Julian Budi Prasetya', 'julianbudi26@gmail.com', '6281291273707', 'Jl. Pelangi VI Blok 51 No. 2A,,,,,,,\r', ''),
(327, 'Yasin', 'sayamanut@gmail.com', '6281332624272', 'Jl Aster 4 nomor 13 Petahunan Gadingrejo Pasuruan Jawa timur', 'Laki-laki'),
(328, 'Bimo Rekso samudro', 'samudbr@yahoo.co.id', '6285710123686', 'Jl tentara pelajar gg.mnatri guru perumahan green guru blok A no 7 kec tanah sareal bogor', 'Laki-laki'),
(329, 'Muhammad isnain', 'isnainmuhammad60@gmail.com', '6285217303014', 'Jl belimbing 3 no 53 RT 5 RW 25 harapan jaya Bekasi Utara', 'Laki-laki'),
(330, 'Trisyanto', 'putradetris16@gmail.com', '6281399142995', 'taman bumyagara komplek bumi rinjani blok c3 no.28 kec/kel mustika jaya bekasi timur jabar 17158', 'Laki-laki'),
(331, 'Rafky sanjaya', 'sanjayarafky@gmail.com', '6282169101101', 'komplek villa permata indah blok f26 timbang deli,,,,,,,\r', ''),
(332, 'Agus Muharam', 'muharamagr@gmail.com', '6285222220079', 'JL. Antam Tbk Kp Cadas leueur RT 01 RW 01 Desa Bantarkaret Kec. Nanggung kab. Bogor 16650', 'Laki-laki'),
(333, 'RYAN KURNIAWAN', 'abizard.mitrahasanah@gmail.com', '6281390212504', 'Griya Liviya Asri 26 Leyangan Ungaran Timur Kabupaten Semarang', 'Laki-laki'),
(334, 'Muhammad Iqbal inayatullah', 'iqbalinayatullah@gmail.com', '6289691333076', 'Jl cicukang no 54 rt 01/09 cisaranten bina harapan arcamanik Bandung', 'Laki-laki'),
(335, 'Asrul muk’amar', 'nasrul@persegi.id', '6281251559796', 'Jln cikoko barat 2 no 13 pancoran jakarta selatan', 'Laki-laki'),
(336, 'Lazuardi', 'lazuardibri@gmail.com', '6281258115105', 'Balikpapan Regency cluster De Vallei blok D9 no.19 BALIKPAPAN', 'Laki-laki'),
(337, 'DorisAntoni', 'doris_screen@yahoo.co.id', '6281320513011', 'Cluster Hatari A1 no munthe,,,,,,,\r', ''),
(338, 'Marheni Suprianto', 'marhenisuprianto@gmail.com', '6282350003880', 'Jl. Kedaung Kel. Sei Bedungun RT.9 , kutai timur, kalimantan timur', 'Laki-laki'),
(339, 'Rachmi Sumartini', '1965rachmi@gmail.com', '6281399494093', 'Komplek LUK Blok H No.4 Rt002/007 Kel. Bakti Jaya Kec.Setu Tangerang Selatan', 'Perempuan'),
(340, 'Parman Abdullah', 'parmanab@gmail.com', '6281248665393', 'Toko Bonejaya jln. Abd. Soulissa RT. 05 Kel. Ampera Masohi,,,,,,,\r', ''),
(341, 'Siti Misnawati', 'misnamisdy@gmail.com', '6285776927630', 'Dusun Gunung Tengis rt 002/rw 006, Maluku tengah', 'Laki-laki'),
(342, 'Tazkiyatun Ni\'mah', 'azqie96@gmail.com', '6281329600751', 'Jl. Danau Rana Ds. Jiku Besar Namlea, Desa Pucung, Kec. Bancak, Kab. Semarang, Jawa Tengah', 'Perempuan'),
(343, 'Ika Larasati', 'larasatikosim@gmail.com', '6281390280074', 'Jerukwangi RT 4/RW 5, Kab. Buru, Prov. Maluku', 'Perempuan'),
(344, 'Zulmiati', 'tarmizizulmiati@gmail.com', '6281990008666', 'Perum Bojong Depok Baru 2 blok CM no 4 kelurahan Sukahati kecamatan Cibinong Kabupaten Bogor', 'Perempuan'),
(345, 'Muldani', 'muldanidb@gmail.com', '6281585888026', 'Jl.Cikutra no 154 Bandung', 'Laki-laki'),
(346, 'Agus Tri Handaka', 'agusth168@gmail.com', '6282132084855', 'Perumahan De Garden Regency Blok B No 12A Milangasri Panekan Magetan Jawa Timur', 'Laki-laki'),
(347, 'Imaningtyas Dhamayanti', 'imaningtyas.d@gmail.com', '6281372114511', 'Jl. Resinda Blok C1 no.3A,,,,,,,\r', ''),
(348, 'M. Pariz Husen', 'mpariz.mph@gmail.com', '6282113809954', 'Perum Gading Elok 1 Blok E4 No.3 kelurahan karawanag wetan kecamatan karawang timur kabupaten Karawang provinsi jawa barat Indonesia', 'Laki-laki'),
(349, 'Indriati Kadir', 'nonindri@hotmail.com', '6281341211728', 'Jl. Teratai No. 9 Salonsa Sorowako,,,,,,,\r', ''),
(350, 'Eko pras', 'ekoprasetya@gmail.com', '62811330094', 'Bintaro', 'Laki-laki'),
(351, 'Saiful hadi', 'saiful@usm.ac.id', '6282134575163', 'Masjid USM,,,,,,,\r', ''),
(352, 'Sunary adi', 'sunaryad2@gmail.com', '62811622206', 'Komp. Pasar cikpuan kios no 27. Sungai panas batam', 'Laki-laki'),
(353, 'Agung Adzrikni Habibie', 'adzrikni061178@gmail.com', '6285220025720', 'Jalan Kilimanjaro No 7 Pinus Regensi Soekarno Hatta Bandung', 'Laki-laki'),
(354, 'Vivi', 'vievie.young@gmail.com', '6282135680168', 'Candi mutiara selatan No. 580 Kalipancur - Ngaliyan - semarang', 'Perempuan'),
(355, 'EMIL SALIM MARDANI', 'emil.salim.mardani@gmail.com', '628114542078', 'Nama : Emil salim mardani No Hp/WA : 08114542078  Alamat : jln. pulau sabang. lorong merpati kelurahan kayamanya sentral,,,,,,,\r', ''),
(356, 'Hadratul Hairiyah', 'hadratul.hairiyah@gmail.com', '6281254894895', 'Jl Damanhuri No 2 Samarinda', 'Perempuan'),
(357, 'Elida Mabruroh', 'elida.mabruroh.em@gmail.com', '6285295897777', 'Jln. Syekh Nurjati 361 Rt/Rw : 18/05 Kel-Sendang Kec-Sumber Cirebon 45611', 'Perempuan'),
(358, 'Indra yanti', 'dr.indrayanti@yahoo.com', '6281277389658', 'Taman Duta Mas,,,,,,,\r', ''),
(359, 'Winda Permata Erianti', 'windasoewito@gmail.com', '628113507289', 'Jl. Airlangga No. 121 Kav. Pandean RT. 05 RW. 04 Desa Pabean Kec. Dringu Kab. Probolinggo Jawa Timur 67216', 'Perempuan'),
(360, 'Budi Haryono', 'budi.haryono071@gmail.com', '6282143733617', 'Gang Mandiri Land No. 32,,,,,,,\r', ''),
(361, 'Alfiatun Mubarokah', 'yasmine.mmcommunity@gmail.com', '6281213170980', 'Jl. Bojong Raya Rt 08 Rw 04 Rawa Buaya, Desa Ganting, Kec. Gedangan, Kab. Sidoarjo 61254, Jawa Timur.', 'Laki-laki'),
(362, 'Ina Basalamah', 'nayracollection@gmail.com', '6281904584491', 'Laban desa Mojolaban Bekonang Sukoharjo Jawa tengah', 'Perempuan'),
(363, 'Dwi Utomo', 'dwioet@gmail.com', '6285713131231', 'Desa Tanjungrejo Rt 03 Rw 03 kecamatan Jekulo', 'Laki-laki'),
(364, 'Qurratul uyun', 'najiyah_hamidah@yahoo.com', '6281330502278', 'Jl flamboyan No 1 Tempeh Lumajang', 'Perempuan'),
(365, 'Ulfah Mardhiyah', 'ulfamardhiyah@gmail.com', '6282390654590', 'Komp mutiara putih E 9,,,,,,,\r', ''),
(366, 'Ngadiyo', 'wrbadin@gmail.com', '6282288369632', 'Balai Penyuluhan Pertanian ( BPP ) Jl Limbungan Kec. Rumbai Pesisir Kota Pekanbaru', 'Laki-laki'),
(367, 'Edi santoso', 'ababil13579@gmail.com', '6283832664287', 'Banyuputih,,,,,,,\r', ''),
(368, 'Arif Rahman', 'arifrahmanphone@gmail.com', '6281225153406', 'Jl. Mediatama E11 Perum Taman Setiabudi Banyumanik Semarang', 'Laki-laki'),
(369, 'Marlinda', 'marlinda.aql@gmail.com', '6281380033153', 'Jl. Cipinang timur no. 10', 'Perempuan'),
(370, 'NGADIYONO', 'ngadiyono200585@gmail.com', '6281398021898', 'Karangturi RT 07,,,,,,,\r', ''),
(371, 'Dina', 'dina@zurazarine.com', '6281380171797', 'Depok, Manggisan, Baturetno, Banguntapan, Bantul, Yogyakarta', 'Laki-laki'),
(372, 'Faisal Munawir', 'muna.keke@gmail.com', '6281248300212', 'Jln Ermasu No 51 Kelurahan Maro, jawa barat', 'Perempuan'),
(373, 'pramitha sari', 'pramitha.sari.sgz@gmail.com', '6281227508224', 'Pamulang permai blok N8/4 pamulang barat tangerang selatan', 'Perempuan'),
(374, 'Askan Setiabudi', 'star.coaching.consulting@gmail.com', '6287859933862', 'Malang', 'Laki-laki'),
(375, 'Mochamad Ayubi', 'ayubi.lmjcity@gmail.com', '6285277357735', 'Jln Raya Grobogan Ds Krajan RT 005 RW 002 Desa Grobogan Kec Kedungjajang Kab Lumajang Provinsi Jawa Timur kode pos 67358', 'Laki-laki');
INSERT INTO `user_import` (`id`, `Name`, `Email`, `Phone`, `Address`, `Jenis_Kelamin`) VALUES
(376, 'Andi', 'iguana.mediagrafika@gmail.com', '6285727831555', 'Wergu wetan RT 06/01 kec kota Kudus', 'Laki-laki'),
(377, 'Irfan arifianto', 'irfanarifianto009@gmail.com', '6285701211617', 'Gondang rt 3/6 bakipandeyan,,,,,,,\r', ''),
(378, 'Diding Kurniadi', 'diding.imk17@gmail.com', '6285295552999', 'Taman Ciharendong Kencana Jl. Flamboyan Blok C No. 2 Rt.022 Rw.007 Kelurahan Cigintung Kecamatan Kuningan Kabupaten Kuningan Jawa Barat', 'Laki-laki'),
(379, 'Widuri', 'widuri.widuri85@gmail.com', '628128046954', 'Jl. Teladan No.35,,,,,,,\r', ''),
(380, 'Mariani', 'Ayuandira466@gmail.com', '6285250693159', 'Mes Daarussalaam. Sangatta', 'Perempuan'),
(381, 'Asep wahyudin', 'aseev72@gmail.com', '6285314007342', 'Asep wahyudin', 'Laki-laki'),
(382, 'Ahmad jumanto', 'rumahantu9@gmail.com', '6281384585946', 'Jalan lintas rawajitu kampung bogatama,,,,,,,\r', ''),
(383, 'Agus langgam', 'aguslanggam123@gmail.com', '6285290000788', 'Banaran, penawartama, tulang bawang, lampung', 'Laki-laki'),
(384, 'Roidah Afifah', 'afifah.roidah@gmail.com', '6281232242332', 'Jalan Barong 75, jetiswetan, pedan, klaten', 'Laki-laki'),
(385, 'Vivi Silviana', 'unnie126@gmail.com', '6281284134410', 'Jl. Meruya Utara No. 41 kemenangan Jakarta Barat', 'Perempuan'),
(386, 'Dyah Ariani Pratiwi', 'dyah.ariani.pratiwi@gmail.com', '6281298600064', 'Pesona Ciganitri Blok C no. 27,,,,,,,\r', ''),
(387, 'Hasbi Falahi', 'hasbi_falahi@yahoo.co.id', '628155517706', 'KPU Kota Cirebon Jl. Palang merah no 6 Lemahwungkuk Cirebon', 'Laki-laki'),
(388, 'Indra PERMANA', 'indra069@gmail.com', '62819850105', 'Jl Karet No. 100,,,,,,,\r', ''),
(389, 'Didik', 'didik.triyono07@gmail.com', '6281340297050', 'Madiun jawa timur', 'Laki-laki'),
(390, 'Eko Wahyono', 'ekowahyonooke770@gmail.com', '6281332819492', 'Dsn tirtoasri Andongsari ambulu jember', 'Laki-laki'),
(391, 'Ageng Naryana', 'ageng.naryana@gmail.com', '6285721620205', 'Perum Pesona 1 Cilebut Blok E3 No. 5 RT. 06 RW. 13 Desa Cilebut Barat Kec. Sukaraja Kab. Bogor', 'Laki-laki'),
(392, 'Yuli Kurniawan', 'kurniawan_yuli0707@yahoo.co.id', '6282220747773', 'Jl. Cempaka No. 47,,,,,,,\r', ''),
(393, 'Harjuna Dwi Pangudi', 'harjunadwipangudi@gmail.com', '6281314925107', 'Jl. Benda III no 11, RT 02/15, Semanggi, Pasar Kliwon, Kota Surakarta', 'Laki-laki'),
(394, 'Azzam Abdullah Mubarak', 'azzamabdllhm@gmail.com', '6281395202985', 'Sarijadi, Kel Pulo. Kec Kebayoran Baru. Jakarta Selatan. 12160', 'Laki-laki'),
(395, 'Irsa Irmawanti', 'icha_cinta@hotmail.co.uk', '61410221480', '106 Strickland crescent Ashcroft NSW Sydney Australia', 'Perempuan'),
(396, 'Cucu Sumpena', 'cucu.sumpena@tirtamahakam.com', '62811582179', 'Jl.mutiara no. 8 rt 20 samarinda', 'Laki-laki'),
(397, 'Nurul umy isroiyah', 'nurulumyisroiyah@gmail.com', '6281916066121', 'Jalan Cipto mangunkusumo no 49 BTN griya praja asri jatisele gunung sari lombok barat NTB', 'Perempuan'),
(398, 'Wiwin Sugiono', 'sugionowiwinllg@gmail.com', '6281356134551', 'Perum Lembah Permai Hanjuang(LPH) Jln.Bukit Indah IV No : 14 Cihanjuang- Parompong-Bandung Barat -Jabar', 'Laki-laki'),
(399, 'Arif luqman', 'arifluqman2001@gmail.com', '6281332862268', 'Jl raya kaliikapas no:2,,,,,,,\r', ''),
(400, 'Abbas', 'Alfianiskan17@gmail.com', '6282337648831', 'Bunten timur ketapang sampang Madura', 'Laki-laki'),
(401, 'Ahmad thohir rambe', 'rambeahmadthohir@gmail.com', '6281264242294', 'Jl sepakat,,,,,,,\r', ''),
(402, 'Irfan Muhammad Fadhilah', 'irfanmfadhilah@gmail.com', '6285624944976', 'Kembang pare residence no C72 Bandung', 'Laki-laki'),
(403, 'Erna Kurniawati Ningsih', 'h_a_qi@yahoo.com', '6281255050322', 'Jl husein hamzah gg karya indah', 'Perempuan'),
(404, 'Sri Nafsiah', 'srinafsiahkartika@gmail.com', '6281803364224', 'jl mangga raya b no 1,,,,,,,\r', ''),
(405, 'Yersita', 'yer1903@yahoo.com', '6282243912969', 'Perum Mega Asri 2 blok D8, desa singajaya, Indramayub', 'Perempuan'),
(406, 'Agus Triyono', 'infoasrigrup@gmail.com', '6281381747385', 'Perum. Pondok Melati Indah jl. Krakatau 7 D18/4, kel.bukit Betung, kec.sungailiat Bangka', 'Perempuan'),
(407, 'Fitriansyah Ezman', 'rianezman@gmail.com', '6285220001833', 'Jl. Cibogo bawah no.40 Bandung, Jatiwarna, Pondok Melati Bekasi 17415', 'Laki-laki'),
(408, 'Jojoh Khodijah', 'jojodiezi@gmail.com', '6285956637731', 'Jl. Kolonel Masturi No. 492 Jambudipa, Sukajadi, Jawa Barat', 'Laki-laki'),
(409, 'Tyas Pintaka', 'tyashpintaka@gmail.com', '6287738183166', 'Garongan 8 Panjatan kulonprogo yogyakarta', 'Perempuan'),
(410, 'Heryani Fahmi', 'fahmiheryani@gmail.com', '6281219747455', 'Jalan Abdul Rauf Blok C No 1,,,,,,,\r', ''),
(411, 'Jatmiko', 'mikojatmiko13@gmail.com', '6285755316175', 'Jl. Brawijaya GG. Mushola RT 04 RW 01 Song-song, Kelurahan Belimbing, Kecamatan Bontang Barat. Kota Bontang.Provinsi Kalimantan Timur', 'Perempuan'),
(412, 'Luthfi Kardhina', 'dna_as@yahoo.com', '628115030801', 'jl ayani km 6 komplek bunyamin permai 2 Jalur 2 ray 7 no 32', 'Perempuan'),
(413, 'Anggi', 'anggisugihj@gmail.com', '6282227728840', 'Jl Darul Quran Blok C9 Bogor Barat', 'Laki-laki'),
(414, 'Nopianti', 'vie_nopianti@yahoo.com', '6289694285525', 'Nopianti', 'Perempuan'),
(415, 'Dwi Shaharyar Kishan', 'dwishaharyar@gmail.com', '628119290276', 'Jl. Hanjuang 1 atas no 71 A Jatibening 2 Bekasi', 'Laki-laki'),
(416, 'Hadian Lukmanul Hakim', 'hadianlukman8@gmail.com', '6282262130786', 'Jl. Cipaku II No. 63 Rt. 05/Rw. 02 Kel. Ledeng', 'Laki-laki'),
(417, 'Aditya Pranayogi', 'sunnahkeren81@gmail.com', '6285268535101', 'Jalan HOS Cokroaminoto Kp. Senang Hati No. 122,,,,,,,\r', ''),
(418, 'Leoni Arvia', 'leoni.arvia@gmail.com', '6282110142060', 'Vila Mutiara Cikarang', 'Perempuan'),
(419, 'Agus Risfian Noor', 'agrifinor@gmail.com', '6289693500246', 'Komplek Sepinggan Baru I,,,,,,,\r', ''),
(420, 'Unggul Prabowo', 'unggulmagneto39@gmail.com', '6281314640069', 'KP SAJA RT 01 RW 01 DESA PAMAGASARI KECAMATAN PARUNG BOGOR 16330', 'Laki-laki'),
(421, 'Ismi Mugisihana', 'mugisihanaismi@gmail.com', '6282116514100', 'Jalan raya Cigugur Sukamulya no 1179 rt 35 rw 12 Cigugur  Kuningan', 'Perempuan'),
(422, 'Fitri apriani sangadji', 'Fitriya210@gmail.com', '6282194507570', 'belben kel santiong', 'Perempuan'),
(423, 'Supriatini', 'tini_0701@yahoo.co.id', '6283877254969', 'Perumahan Bukit Manggala 1 blok B no.11,,,,,,,\r', ''),
(424, 'Indra Puji Setyolaksono', 'indrapujisetyolaksono@gmail.com', '628170532537', 'Jl. Tukad Yeh Biu Gang Buminyiur no 2, mekarwangi, tanah sereal, Bogor', 'Perempuan'),
(425, 'Syafril Ramadhian', 'Syafril.ramadhian81@gmail.com', '6281296677157', 'Jl Matahari I Blok L3 no 37 Villa Cinere Mas Tangerang Selatan 15318', 'Laki-laki'),
(426, 'Diannita Ary Prasanti', 'diannita.ary123@gmail.com', '6287888456828', 'Kav.Graha Kemakmuran No.5 Jln. Celepuk 4 Rt.4 Rw.12 Jatimakmur Pondokgede Kota Bekasi', 'Perempuan'),
(427, 'Reno Cahyadi', 'renocahyadi_brp@live.com', '628111664222', 'Pesona Atlantis Blok M13A/08 Citra Raya Cikupa Tangerang', 'Laki-laki'),
(428, 'Nyimas yulida', 'sabrinayulida@gmail.com', '6289621666728', 'Griya talang kelapa', 'Perempuan'),
(429, 'Mohammad Sodik', 'm.sodik.vip@gmail.com', '6281357849324', 'Jl. Mutiara B-19 Cepu Indah Regency,,,,,,,\r', ''),
(430, 'Marisa Andi Bumbung', 'ichasurya99@gmail.com', '62811173877', 'Discovery Fiore Blok J-02 Pondok Aren Tangsel 15427', 'Perempuan'),
(431, 'Fauzi Taufik Hidayat', 'fauzitfk@gmail.com', '6281219064530', 'Jl.assyafiiyah GG.nomon-1 no 107 RT 006 RW 003 Cilangkap Jakarta timur', 'Laki-laki'),
(432, 'Berlian', 'berlian.0302@gmail.com', '6282225555038', 'Perum wonorejo indah blok A1 kedungjajang lumajang', 'Perempuan'),
(433, 'miftahul haq Syawal', 'miftah.hs98@gmail.com', '628990881654', 'Jl. Dr. Wahidin Sudirohusodo no. 17 c,,,,,,,\r', ''),
(434, 'Gibran Ely', 'gibranely@gmail.com', '6281343266300', 'Komplek Nuansa Cilebut Asri Blok C No.6 Cilebut Barat Sukaraja Kab. Bogor', 'Laki-laki'),
(435, 'Aripin', 'Bahroedane@gmail.com', '6282142934330', 'Jl.kemiri 7 rt 01 / rw 11 pondokcabe udik,,,,,,,\r', ''),
(436, 'Aman S Kom', 'aman230680@gmail.com', '6285271414250', 'JL Jenderal Sudirman No 20, Pamulang, Tangerang selatan, Banten', 'Laki-laki'),
(437, 'Syaiful hidayat', 'syaifulh212@gmail.com', '6281357870423', 'Jl. Lidah wetan gg VII Rt 03/03 .lakarsantri, Desa Buluh Rampai Rt 31 RW 2 Kec. Seberida Kab. Indragiri Hulu Prop. Riau', 'Laki-laki'),
(438, 'Triwahyu Wibowo Wicaksono', 'triwahyu.ww22@gmail.com', '6285771344049', 'Gg Duren No. 120 RT 01/09 Rangkapan Jaya Baru, Surabaya', 'Laki-laki'),
(439, 'Bagus Permana', 'nurfalu86@gmail.com', '6287741193086', 'Jl. Maja Pasar RT 02/01 kec. Maja kab. Lebak-Banten 42381', 'Laki-laki'),
(440, 'Topik', 'topikwiyanto@gmail.com', '6282136231010', 'Jalan wiyoro baru 3 no 1 baturetno banguntapan bantul', 'Laki-laki'),
(441, 'Dhani Nugraha', 'dhaninugraha76@gmail.com', '6281938516003', 'Perumahan Kapuk Permai No.D.38 Kedawung,,,,,,,\r', ''),
(442, 'Nadiar Cahya Luthfia Erma , Kabu', 'Laki-laki,,,,,\r', '', '', ''),
(443, 'St. Aminah', 'st.aminah33@gmail.com', '6285242471618', 'Jl. Sunu komp Unhas Baraya KX. 9 Makassar', 'Perempuan'),
(444, 'Aji Samanta', 'loka.zolda@gmail.com', '6281234675700', 'Dusun Krajan RT03 RW06 Desa Kalibaru Wetan,,,,,,,\r', ''),
(445, 'Muhamad Catur Gunandi', 'mcaturg@gmail.com', '628126008533', 'Komp. Grand Serpong Exclusive Residence Blok B1 No2 rt01 Rw 24 sarua ciputat tangsel banten 15414', 'Laki-laki'),
(446, 'Astri Diana Ekasari', 'astridianaekasari@gmail.com', '6281313131385', 'Perumahan puri sartika,,,,,,,\r', ''),
(447, 'Dwi Siska Irawati', 'siskadwi381@gmail.com', '6281377220240', 'Dsn.krajan rt 2 rw 2 dsa.sembulung kec.cluring kab.banyuwangi, Sumber - Cirebon', 'Perempuan'),
(448, 'linda rosselina', 'linda.rosse@gmail.com', '6281212334893', 'griya melati mas blok j1 no.1 rt.04 rw.08 kel.jatimulya kec.cilodong depok', 'Perempuan'),
(449, 'Zukhrida Ari Fitriani', 'zukhrida.af@gmail.com', '6281215325909', 'Jl. Gunung jaya wijaya no.10 perumahan BSD kel. Gunung Elai kec. Bontang Utara kota Bontang Kaltim 75313', 'Perempuan'),
(450, 'Kristiana yulianti', 'christ.2324@gmail.com', '628117207024', 'Jln raden saleh no 55 rt 16 kelurahan pematangwangi kecamatan tanjung senang kota bandar lampung', 'Perempuan'),
(451, 'Slamet Widodo', 'slametwid@gmail.com', '628129075191', 'Perumahan Villa Pelangi blok K 2 Pengasinan Rawalumbu Kota Bekasi 17115', 'Laki-laki'),
(452, 'Candra Lela', 'candralela78@gmail.com', '6282180015988', 'Jl.Adi sucipto perum.subur jaya lestari rt.7 no.14B kel.pasirputih jambi selatan jsmbi', 'Perempuan'),
(453, 'fathiah alrosyidi', 'fera.fathiarosyidi@gmail.com', '6285341972493', 'jalan sampangan gg cempaka 5 rt 01/19 semanggi solo', 'Perempuan'),
(454, 'Dicky alfian', 'dalfian45@gmail.com', '6285240984244', 'Btn hartaco indah blok A2j/12 Makassar', 'Laki-laki'),
(455, 'Mohammad miftachul alam', 'alamj55motojoker@gmail.com', '6282143448488', 'Dusun penompo rt 14 rw 04,,,,,,,\r', ''),
(456, 'Anggriani eko sulistiowati', 'anggi.dentistpreneur@gmail.com', '628112617879', 'Purwosari indah jl.gunung slamet raya no.19 purwokerto', 'Perempuan'),
(457, 'Arie Zainul fatoni', 'ariezainulfatoni@gmail.com', '6281336163333', 'Jalan avenue 1 no 42 perumahan grand permata jingga pakis malang', 'Laki-laki'),
(458, 'Imam Rosadi', 'imamrsd.h@gmail.com', '6287877877334', 'Jl. Komarudin I,,,,,,,\r', ''),
(459, 'Yufro', 'yufro.71@gmail.com', '6281331344338', 'Jln. Malang 91 GKB Gresik jawa timur', 'Perempuan'),
(460, 'Miftah Fauzan Putra', 'miftahfauzanputra8@gmail.com', '6285370718398', 'Jl. Suka cerdas 3 no 18 medan', 'Laki-laki'),
(461, 'Akbar hidayat yasin', 'bobbshidayat@gmail.com', '6282271089121', 'Jln.kamboja no.4 palu  ,,,,,,,\r', ''),
(462, 'Tatang Sutarya', 'nakhlahfreight@gmail.com', '6285224252799', 'Taman Sekar Kemuning Permai Kav. 11,kelurahan Talise  ,kec.mantikulore ,Sulawesi tengah', 'Laki-laki'),
(463, 'Cindra Mamonto', 'chindrapermadi@gmail.com', '6285796580282', 'Rumah Dinas Dokter Uptd Puskesmas Modayag', 'Perempuan'),
(464, 'Tolaat Imam', 'talaatimam@gmail.com', '6281808174659', 'Jln Sepakat II no 46 01 / 01 Cilangkap Cipayung Jakarta Timur 13870', 'Laki-laki'),
(465, 'Muhammad Faiz Fadillah', 'faizfadhilah1@gmail.com', '6285695810763', 'Kemang Utara IX no 8 RT RW 003/004 Kelurahan Bangka Kecamatan Mampang Prapatan Jakarta Selatan', 'Laki-laki'),
(466, 'Dr.Eka puspita sari', 'friezka.calie@yahok.com', '628114710817', 'Jalan blangkejeren-kutacane,,,,,,,\r', ''),
(467, 'Muhammad Saleh', 'muhammadsaleh4231@gmail.com', '6285788006785', 'Jalan Sadewo Bawah no. 46,raklunung', 'Perempuan'),
(468, 'Sidik Ramadi', 'sidik.rahmadi.sr@gmail.com', '6289683857538', 'Lorong bukit asam, Kel. Sawah Lama, Kec. Tanjung Karang Timur, Kota Bandar Lampung', 'Laki-laki'),
(469, 'Kartika Ayu Nur Islami Kamil', 'imau.diamond@gmail.com', '6285252929999', 'Jl. Antang Kalang 1 Blok D No.10 Pahandut, ilir timur II, Palembang', 'Laki-laki'),
(470, 'randya permadi', 'soedjalmo@gmail.com', '628113933107', 'Rumah Dinas Dokter Uptd Puskesmas Modayag', 'Laki-laki'),
(471, 'Hasmuddin', 'mudindjamal93@gmail.com', '6282394802402', 'Jl.tuna lorong masjid Almuhajjirin', 'Laki-laki'),
(472, 'Imam ghozhali', 'gimam714@gmail.com', '6285959025508', 'Jl unta raya no 18 rt01 rw06 kp peladen,,,,,,,\r', ''),
(473, 'Nia kurniawati', 'niamutz18@gmail.com', '6282188032466', 'Gadihu indah kel batu merah kecamatan sirimau Ambon 97128 (dekat lapangan gawang mini)', 'Perempuan'),
(474, 'W Dewi Ramadhany', 'dewi.ramadhany@gmail.com', '6281212948899', 'Perum Pondok Cipta Blok F no.44 Bintara. Bekais Barat', 'Perempuan'),
(475, 'Mukhlas Hakim', 'mukhlas.hakim@gmail.com', '6281389929399', 'Kp gedong RT 03 RW 02 kelurahan jombang kecamatan ciputat tangsel 15414', 'Laki-laki'),
(476, 'Tris', 'brokol.com@gmail.com', '6288212238550', 'Depok', 'Laki-laki'),
(477, 'Rita Marreta Kamil', 'rita.kamil@yahoo.com', '6282115298229', 'Kembar Baru Selatan II no. 5', 'Perempuan'),
(478, 'muhamad didin syafei', 'muhamaddidin701@gmail.com', '628991755683', 'kp. karajan rt 06/03 desa cikopo kec. bungursari kab. purwakarta', 'Laki-laki'),
(479, 'Muhammad Muslihan Rizky', 'muslihanrizky5@gmail.com', '6287864425702', 'Desa Nyerot Kecamatan Jonggat Kabupaten Lombok Tengah Provinsi Nusa Tenggara Barat', 'Laki-laki'),
(480, 'Fertinanm', 'fn.mitra@gmail.com', '6281291899881', 'Jalan maleo xv je4 no 6 - maleo Residence-bintaro sektor 9', 'Perempuan'),
(481, 'Suwarti', 'wonogiriwarti75@gmail.com', '6285229647280', 'Wiro Rt 01/09 Sonoharjo Wonogiri', 'Perempuan'),
(482, 'Agung Sugiarto', 'agungsamsara@yahoo.co.id', '6281393539816', 'Palaran,,,,,,,\r', ''),
(483, 'Ali Musyafak', 'au.surabaya@gmail.com', '6282223656868', 'Jl. Johar 19 - 21 Surabaya', 'Laki-laki'),
(484, 'Muhammad Yasin', 'muhammadyasin2203@gmail.com', '6285130368303', 'Jl. Guntur No 10 desa Pabian Kec. Kota Sumenep', 'Laki-laki'),
(485, 'danis', 'danissa1012@gmail.com', '6281213852642', 'citra gran aversa park 9 aa 52 jatisampurna bekasi', 'Perempuan'),
(486, 'Eka purwanti', 'm.depotindo@gmail.com', '6282111023900', 'Komplek sarigaperi jln bukit tinggi blok f8 Jatibening bekasi', 'Perempuan'),
(487, 'Zulfa Tisna Mahardika', 'zt.mahardika@gmail.com', '6285725161818', 'Jl. Pratanggapati V,,,,,,,\r', ''),
(488, 'Agus Siswoko', 'agussiswoko@gmail.com', '6281219659753', 'Jl. Rorotan IX No. 27 RT.002 RW.007 Jakarta Utara 14140', 'Laki-laki'),
(489, 'Mochamad risyandi', 'kipaspalm1987@gmaiil.com', '6282135609968', 'Panggungsari Sleman', 'Laki-laki'),
(490, 'Dimas Agung Wicaksono', 'dimasalghifari@gmail.com', '6285310934565', 'Jl. Bangau IX RT.02/023 No.40 Kav. Harapan kita Kel. Harapan Jaya Kec. Bekasi Utara', 'Laki-laki'),
(491, 'Asri Wiji Astuti', 'asriwijiastuti114@gmail.com', '6282387397746', 'Kavling Sagulung Baru Blok B1 no 23. kec,,,,,,,\r', ''),
(492, 'Deny Prasetyo', 'nersdeni@gmail.com', '6282228222762', 'Jl. Perwira RT. 05 NO. 31 Kel. Mendawai Kec. Arsel Kab. Kobar Prov. Kalteng 74115', 'Laki-laki'),
(493, 'Sudiasih', 'sudiasihdiaz@gmail.com', '6285290333388', 'Toko barokah jl.raya pati-kayen km.10 desa karaban RT 06 /RW 03,,,,,,,\r', ''),
(494, 'Bahcqrun Nurhutomo', 'sholih.1982@gmail.com', '6281350650288', 'Jenengan Rt.04 Rw.19,kec.gabus kab.pati, jateng', 'Perempuan'),
(495, 'Opiq', 'kamerad.taufiq@gmail.com', '6289695540438', 'Gatak, Pondokrejo, Tempel, Sleman, Yogyakarta', 'Laki-laki'),
(496, 'Dyah Muswitasari', 'dyah.ua2000@gmail.com', '628123504726', 'Perumahan Griya Pesona Asri blok E no 33 Jl.Medayu Pesona 6, Kujon, Ceper, Klaten', 'Laki-laki'),
(497, 'Suriani binti Yahya', 'suria.yahya@gmail.com', '60178829223', 'No. 84 Lorong Zaaba, Rungkut, Surabaya', 'Perempuan'),
(498, 'Wahyu Agung Setiawan', 'was1550la@gmail.com', '6281586920020', 'Jln praja dalam G no 20A Rt 003/Rw 05 kebayoran lama selatan jakarta selatan', 'Laki-laki'),
(499, 'Malina', 'nurulainimalina79@gmail.com', '6285731000173', 'Jl deandeles blimbing paciran lamongan', 'Perempuan'),
(500, 'Retna Sulistyarini', '', '6281350425417', 'jl. pulau flores rt.07. 52 kp satu/skip tarakan kaltara', 'Perempuan'),
(501, 'Firmansyah', 'falahkomp@gmail.com', '6281373481148', 'Jl sinar bulan Padang mulia Koba Bangka tengah', 'Laki-laki'),
(502, 'Gilang adi kesuma putra', 'gilang.dimatra@yahoo.com', '62811710550', 'Jalan letjend bambang utoyo nomor 355 rt.04 rw.01 kel.5 ilir kec. Ilir timur 2. Palembang', 'Laki-laki'),
(503, 'Nurul Hidayatin', 'tienhidyanoer@gmail.com', '6285733461851', 'Jl. Palm Jaya III/23 RT. 03 RW. 04 Palembon,,,,,,,\r', ''),
(504, 'Dian Oktaviani', 'oktaviadian03@gmail.com', '628161847683', 'Kav.Hankam Blok G2 No.5 Joglo-Kembangan, Prigen, Pasuruan', 'Perempuan'),
(505, 'bhaktia adityatama', 'bhaktiadityatamazein@gmail.com', '6285694554073', 'bukit cimanggu city blok x2 no 4a kelurahan cibadak kecamatan tanah sareal kota bogor', 'Laki-laki'),
(506, 'Bagus Arianto', 'bagusari68@gmail.com', '6282149589696', 'Desa Semanding RT 4/RW 6 . KECAMATAN GOMBONG ,,,,,,,\r', ''),
(507, 'Risdiyanto', 'risdiy74@gmail.com', '6285727310474', 'Tugurejo RT 03 RW 03, KABUPATEN KEBUMEN, JATENG', 'Laki-laki'),
(508, 'Meivianto Budisantoso', 'meivianto_bs@yahoo.com', '6281386347038', 'Bukit Cimanggu City. Blok W1 No.8. Bogor. Jawa Barat. Indonesia.', 'Laki-laki'),
(509, 'Harry Saputra', 'Harryazha32@gmail.com', '628990026157', 'jalan martapura lama km 7,,,,,,,\r', ''),
(510, 'Yuli', 'yulidijuli@gmail.com', '6285624106100', 'Jl. Sastrodihardjo VII no 14 rt 04/08 kel.cikutra kec.cibeunying kidul,8 sungai lulut kecamatan sungai tabuk kabupaten banjar Kalimantan Selatan', 'Laki-laki'),
(511, 'Pujiastutiik Wahyuningsih', 'pujiastutikwahyu@gmail.com', '6281546040780', 'Jl. raya Bantur 1192 Rt 33 RW 07 Bantur Malang Jatim', 'Perempuan'),
(512, 'Rudi wibowo', 'bolenk_14@yahoo.com', '6281286593069', 'Jl. Masjid Rt 14 /08 No 10. Lenteng Agung,,,,,,,\r', ''),
(513, 'IRMA RETNO MUKTI', 'irmaretnom@gmail.com', '6285311164791', 'JL. Salak No.5A RT.008 RW. 005 Kel. Harapan Jaya Bekasi Utara', 'Perempuan'),
(514, 'Rita Ariawati', 'sayyidah02@gmail.com', '628116801501', 'Jl. Lilawangsa dusun bahagia.  Kecamatan Langsa Baro.  Kota Langsa. Aceh', 'Perempuan'),
(515, 'Baby Z.N', 'babynug25@gmail.com', '6287788224941', 'Tangerang Selatan', 'Perempuan'),
(516, 'KADAR ROHMAN', 'Kadarrohmanduag3km@gmail.com', '6281373178848', 'Kerta Mukti Kecamatan Mesuji Raya Kabupaten Ogan Komering Ilir Provinsi Sumatera Selatan Kode Pos 30681', 'Laki-laki'),
(517, 'Fahrurozi', 'fahrur480@gmail.com', '6281210377557', 'Jl.Rawa bebek gg.H Norin Rt11/01 no219 Pulogebang Cakung Jakarta Timur', 'Laki-laki'),
(518, 'Wawan kurniawan', 'wanku.kurnia@gmail.com', '6285780211995', 'Agen kaos polos,,,,,,,\r', ''),
(519, 'Afita risdiarti', 'afita81@gmail.com', '6281397764629', 'Jln karya ujung gg keluarga no 35 medan sumut', 'Perempuan'),
(520, 'Ari Saputra', 'arisaputra932@gmail.com', '6285367889414', 'Jl andini sakti No. 40 rt 004/06 Cikarang barat.kabupaten bekasi.17520', 'Laki-laki'),
(521, 'Aulia Azzahra', 'auliaa.azzhr@gmail.com', '6282169166316', 'Klinik AKT,,,,,,,\r', ''),
(522, 'Muhammad ShiddiQ', 'muhammad.shiddiq@gmail.com', '6285231119900', 'Jl Jemursari Utara 2 No. 12, Kp. Terandam, Kec. Lubuk Alung, Kab. Padang Pariaman, Sumatera Barat', 'Perempuan'),
(523, 'Nurdin Aziz Aas', 'aas.aziz1967@gmail.com', '628176007979', 'Villa Galaxy Residence Blok B3 No. 31 Grand Galaxy City Jakasetia Bekssi 17147', 'Laki-laki'),
(524, 'Feby', 'tkafebian@gmail.com', '6285364370767', 'Jl solo purwodadi km 30 sumberlawang sragen', 'Perempuan'),
(525, 'EKA RATNA SARI', 'ekahanaaja@gmail.com', '6281252790456', 'Jl. Kyai Sekar 72 RT/RW 03/10 Sumberkedawung Leces', 'Perempuan'),
(526, 'Mamnun Khasanah', 'wildan.ortega@yahoo.co.id', '6281347558580', 'Jl.Bali No.67 Rt.001/012 Pahandut Kota Palangkaraya', 'Perempuan'),
(527, 'Oki Ahmad Luthfi Hamzah', 'okiahmad91@gmail.com', '628562395177', 'Jl. Sukawarna II no.12 Rt.04 Rw.01 Kelurahan Pajajaran,,,,,,,\r', ''),
(528, 'M Sholeh Amin', 'msholehmr11@gmail.com', '6282180063634', 'Perumahan Puri Mayang, Kecamatan Cicendo Kota Bandung 40173', 'Laki-laki'),
(529, 'Subkhan Zulkarnaen', 'hanzulkarnaen22@gmail.com', '6281807255228', 'Jl.Kesehatan Cluster Puri Melati no 7 kel.Pengasinan kec. Rawa lumbu Brkasi', 'Laki-laki'),
(530, 'Fakhriza Rakhman', 'king.reyza@gmail.com', '6281555763888', 'Jl. Bunga Widara No.9 Kec. Lowokwaru Kota Malanh', 'Laki-laki'),
(531, 'Debi Saputra', 'ddbotanical1@gmail.com', '6281254874579', 'Jln. Husin Hamzah Btn. Citra Utama no.3,,,,,,,\r', ''),
(532, 'iin wahyudi', 'iin.wahyudi@gmail.com', '628122003065', 'Jl segardalam 1 cluster ujungberung indah e7 bandung', 'Laki-laki'),
(533, 'Asry Nurhadi', 'asrynurhadi78@gmail.com', '6285399774321', 'Jln Lanto dg Pasewang belakang Alfa mart panjer Pangkajene kec. Maritenggae Kab. Sidenreng Rappang Provinsi Sulawesi Selatan', 'Laki-laki'),
(534, 'Oki Pulungan', 'pulungan76@yahoo.com', '628158341800', 'Pondok Cibubur Blok H3 No.13 Cimanggis,,,,,,,\r', ''),
(535, 'Nurochman', 'mproadventure@gmail.com', '6281331127103', 'Panjatan RT 10 RW 002 Pengkok Patuk Gunungkidul DIY', 'Laki-laki'),
(536, 'Syamsul Hatta', 'syamsulhatta@gmail.com', '6281514007271', 'Villa Santika blok B4,,,,,,,\r', ''),
(537, 'Agustin Amela Santi', 'aamelasanti@gmail.com', '6285640167646', 'Jl. KH. Ahmad Dahlan No. 19 Beji Timur Depok Jawa Barat', 'Perempuan'),
(538, 'Iwan Kurniawan', 'iwankurny93@gmail.com', '6281226459980', 'Perum. Mega Regency blok CD7 no.1,,,,,,,\r', ''),
(539, 'HIDAYAT', 'abusulthan.hidayat@gmail.com', '6281364955799', 'JL.Komp.Perum PKJ ( Putra Kelana Jaya ) Blok D.3 No.21 THP II Bengkong Sadai-Batam 29444', 'Laki-laki'),
(540, 'Rusli', 'rusli.bima@gmail.com', '6285887286617', 'Jl. Anggur 4 Griya Pamulang Estate Blok J3 No. 24 Rt. 01/21 Pamulang Tangerang Selatan Banten', 'Laki-laki'),
(541, 'Sanudin Pengabdi', 'sanudinpengabdi@gmail.com', '6285727334447', 'Yayasan alpha Indonesia Jawa Tengah.Jl.jabungan raya rt.02/rw.03. jabungan,,,,,,,\r', ''),
(542, 'Kuswandi', 'kuswandi77@gmail.com', '62818134181', 'Japos residence no.9. rt 03 rw 03 , banyumanik, semarang', 'Laki-laki'),
(543, 'Rianita Diyah Sholikhati', 'rianitasholihah@gmail.com', '6285328988333', 'Desa Jeblog RT 02, Paninggilan , ciledug, Tangerang', 'Laki-laki'),
(544, 'Krisna Purbaya', 'kpurbaya@gmail.com', '6287821283632', 'Jalan menado no. 14 bandunh', 'Laki-laki'),
(545, 'Maryam Saidah', 'uchy.luqman@gmail.com', '6281278004400', 'Jln. Tanjung sari 1,,,,,,,\r', ''),
(546, 'M Akram Sadli', 'klinikf2@gmail.com', '628115000155', 'Jl karang jawa no 60 rt 4 desa barokah kec. Simpang empat tanah bumbu kalsel', 'Laki-laki'),
(547, 'Jatmiko', 'coach.jatmiko@gmail.com', '6285250310102', 'Jl. Aw. Syahrani komplek ratindo blok i 19 samarinda kalimantan timur', 'Laki-laki'),
(548, 'Thrie', 'trie.arif08@gmail.com', '6285768419258', 'Jln. Yayasan 2 No.31 Rt.35 Kel. 2 ilir Sei.Buah Palembang', 'Perempuan'),
(549, 'dede sudianto maskar', 'dedesudianto@gmail.com', '628112105136', 'jl bina asih timur I no 9 cipamokolan kota bandung', 'Laki-laki'),
(550, 'Andri Al Fauzi', 'andrialfauzi88@gmail.com', '6282280220031', 'Perum Oma Indah Blok D3 No 18 RT 002 RW 015 Godog,,,,,,,\r', ''),
(551, 'I ketut anggoro', 'iketutanggoro1980@gmail.com', '628993933344', 'Sepinggan pratama blok k7 no15 kelurahan sepinggan baru, Karangpawitan, Garut', 'Laki-laki'),
(552, 'Lia', 'Landyz_inluv@yahoo.com', '628157053442', 'Kp. Pamoyanan no.82 rt.01/rw.15 Cikole-Lembang KBB 40391', 'Perempuan'),
(553, 'Efie', 'efiearo@gmail.com', '6282141078087', 'Jl Raya Gubeng 2', 'Perempuan'),
(554, 'Putut Ariyotejo', 'fikomist@gmail.com', '6282174751895', 'Perum Pondok Indah Blok E2 Nomor 11,,,,,,,\r', ''),
(555, 'Fuad Zain', 'fuad.zn@gmail.com', '6281335532341', 'Jl.A.Yani No.19 (depan Tiara Super market) Ngawi 63271', 'Laki-laki'),
(556, 'Wahyu Cahyono', 'wcahyono19@gmail.com', '6285887745516', 'Metland Cileungsi Blok AC 10/06 RT 05 RW 11 Cipenjo,,,,,,,\r', ''),
(557, 'Wiwi Purnawati', 'wiwi.purnawati@gmail.com', '6285326545350', 'Tegal', 'Perempuan'),
(558, 'Sepka Sugita', 'sgt.sepka34@gmail.com', '6285720096347', 'Kp. Tegal Jaya 01/02,,,,,,,\r', ''),
(559, 'Miar Pritasari', 'miarpritasari@gmail.com', '6281321286072', 'Perumahan Citramas Colors Land blok H-9 belakang SMP N 1 SIAK Hulu Kubang', 'Perempuan'),
(560, 'Lina Cahya Ningtyas', 'linacahyaning@gmail.com', '6285258543674', 'Jl. AIP Mugiman 44 Desa Koncer Kidul Kec. Tenggarang Kab. Bondowoso', 'Perempuan'),
(561, 'Aprilia Handayani', 'apriliahandayani027@gmail.com', '6285373849473', 'Jalan Kaliurang KM 4.5 Gg Kinanti No 70 Pogung Kidul,,,,,,,\r', ''),
(562, 'Nurul afiah', 'dr_nurulafiah@yahoo.com', '6285291247833', 'Komplek TNI AU Dwikora Cilodong jln f tiger no 49.a Cilangkap depok', 'Perempuan'),
(563, 'Tia Zentia Main', 'zenmainz@gmail.com', '6281383931359', 'Jl. Putri Tunggal no.67 kec cimanggis kel Harjamukti kota Depok', 'Perempuan'),
(564, 'Indah Suroto', 'surotoindah@gmail.com', '6281521593492', 'Jl Sawo No 13 rt 02 rw 11 Jatimakmur Pondok Gede Bekasi 17413', 'Perempuan'),
(565, 'Mufarohah', 'mufarokhah39@gmail.com', '6282140033391', 'Jl mbah joko sungkono no 22 peganden Manyar Gresik', 'Perempuan'),
(566, 'Muchamad khusni', 'muhibbinh4@gmail.com', '6287852571773', 'Jl.banyu Urip lor gang 5 no 104 kelurahan Kupang Krajan kecamatan sawahan surabaya', 'Laki-laki'),
(567, 'Kiki Aprianti', 'ricky.aprianti@yahoo.co.id', '6285212548282', 'Ricky Aprianti', 'Perempuan'),
(568, 'Silfi Dwi Anggraink', 'silfi.thebest@gmail.com', '6282182139512', 'Jalan selada blok G no.13 perunmas beringin raya .Kemiling.bandar lampung', 'Perempuan'),
(569, 'Atik sudarwati', 'mbakatiksudarwati@gmail.com', '6281227979129', 'Rambeanak 3 rt/rw 001/005', 'Perempuan'),
(570, 'Mera Marhamah', 'ela.marhamah@gmail.com', '6281382100821', 'Jl. H. Sidin 2 no 62 rt 03 rw 07 duren sawit jakarta timur', 'Perempuan'),
(571, 'IKA KUSUMA WARDHANI', 'ika.k.wardhani@gmail.com', '6281333006825', 'RUNGKUT ASRI BARAT 2 NO.6,,,,,,,\r', ''),
(572, 'Sri Kewes', 'srikewes.olbusiness@gmail.com', '6281235402652', 'Sukodono Dian Regency Anugerah VI / 30 Kebonagung Sukodono Sidoarjo Jatim', 'Perempuan'),
(573, 'Donny Rahadian', 'donistor@gmail.com', '628112330366', 'Jl Kubang Selatan no 5 Bandung 40132', 'Laki-laki'),
(574, 'Arya Nicosa', 'aryanicosa@gmail.com', '6281278865488', 'Blok C53,,,,,,,\r', ''),
(575, 'Diaz Susetyo', 'masdiazs@gmail.com', '6281586519000', 'Griya Metropolitan, Kledokan, Catur Tunggal, Depok, Sleman', 'Laki-laki'),
(576, 'Roisah', 'istiqomahroisah13@gmail.com', '6287729564949', 'Jl. Matahari No. 38 Rt 04 Rw 04 Desa Hulubanteng Kecamatan Pabuaran Kabupaten Cirebon', 'Perempuan'),
(577, 'chrismanto apri nugroho', 'caprinugroho@ymail.com', '6281284638578', 'jln pinangsia raya gg buntu no 33', 'Laki-laki'),
(578, 'Mia', 'erwinmia1@gmail.com', '6285254652067', 'Bone,,,,,,,\r', ''),
(579, 'Zuhniar', 'mzuhniarelfi@gmail.com', '628121609854', 'Perum. PLN TRAGI KRIAN, sulsel', 'Perempuan'),
(580, 'Agus widayat', 'aguswoow16@gmail.com', '6287797500126', 'jl. SADARIYAH RT:004/RW:017 NO:40', 'Laki-laki'),
(581, 'Tyagita Sastaviana', 'sastaviana0207@gmail.com', '6281219962066', 'Kalibata City Tower Ebony 11BE jl. Kalibata raya no. 1 kel', 'Perempuan'),
(582, 'Pieri Ananda Hiswi', 'anandahiswi@gmail.com', '6281219373683', 'Villa Rizki Ilhami Blok A 8 No. 14,,,,,,,\r', ''),
(583, 'Muhammad Fadlan', 'muhammad_fadlan22@yahoo.co.id', '6281263260621', 'Jl. Prof. M. Yamin, Kab. Tangerang, Banten', 'Laki-laki'),
(584, 'Fitriyasi', 'fitri.yasi12@gmail.com', '6285348946810', 'Kampung Penawai Rt 001 kec. Bongan kab. Kutai Barat', 'Perempuan'),
(585, 'Irma Yanti', 'irmayanti120577@gmail.com', '6285646525047', 'Perumahan Tambak Asri Permai No.C.11,,,,,,,\r', ''),
(586, 'Andri Mujianti', 'andrimujianti@gmail.com', '6287786186140', 'Kp. Ciburial RT.03 RW.12 No.90 Desa Margajaya Kecamatan Ngamprah Kabupaten Bandung Barat', 'Perempuan'),
(587, 'Helmi Indrajaya', 'helmindrajaya@gmail.com', '6285294069080', 'Puri Sriwedari Blok C50 Cibubur', 'Laki-laki'),
(588, 'Denise Nugraha Puttera', 'deniseputtera@gmail.com', '6281221200078', 'Jalan Riung Arum Timur 3 no 10,,,,,,,\r', ''),
(589, 'Lia marliana', 'lidzikril@gmail.com', '6281563223202', 'Jl raya Cisaat Gg TKIT azzahra No 79B RT 37 RW 12 Cisaat Sukabumi 43152', 'Perempuan'),
(590, 'Hasan Firdaus', 'firdaus.gut92@gmail.com', '6281220800692', 'Komp. Pesantren Persis 99 RT/RW. 005/005 Ds. Rancabango Kec. Tarogong Kaler Kab. Garut', 'Laki-laki'),
(591, 'Rieko', 'bonusonline22@gmail.com', '6281287440891', 'Mimosa Raya E 7', 'Perempuan'),
(592, 'Hamka', 'cvncicentrekalimantan@gmail.com', '6285250575811', 'Kantor nci centre Kalimantan jl KS Tubun no21 RT14 Sidodadi Samarinda ulu kaltim', 'Laki-laki'),
(593, 'Ria Prihatini', 'ria.ady@gmail.com', '6285779195650', 'Permata Depok Regency,,,,,,,\r', ''),
(594, 'Sumiyati Ratno Sumadi', 'mrsretno@gmail.com', '6285334095999', 'Jln kepiting Link Stendo Tukangkayu Banyuwangi jawa Timur', 'Perempuan'),
(595, 'Dodi Firdaus', 'dodifirdaus216@gmail.com', '6281224445700', 'Jl. Kebon Jeruk No. 261 Cibeureum Cimahi', 'Laki-laki'),
(596, 'REGY YUSTA RISKYANO SAPASURU', 'sapasururegy@gmail.com', '6287759014147', 'Perumahan Kwadungan Persada Permai Blok A 12 Ds Kwadungan Kec Ngasem Kab Kediri Jawa Timur 64182', 'Laki-laki'),
(597, 'Sri Amini', 'sriamini515@gmail.com', '6285251369107', 'Jl. Batung Cindai Alus Rt. 02 Rw. 01 (Belakang Ponpes Darul Hijrah Putri) Kec. Martapura Kota Kab. Banjar Provinsi KalSel 70612', 'Perempuan'),
(598, 'C Prayoga', 'mmmmasyoga@gmail.com', '6287700555415', 'Jl MT Haryono no 58 A Brebes Jawa Tengah', 'Laki-laki'),
(599, 'Siti Cholivah', 'wahyuni.este71@gmail.com', '6287836747576', 'Jl Dippnegoro 118 Majenang 53257', 'Perempuan'),
(600, 'Yuliarti', 'yuliazneli@gmail.com', '6285865412009', 'Jl kutilang RT 05 RW 011,,,,,,,\r', ''),
(601, 'Shanti', 'shantidewi21@gmail.com', '6281804400034', 'Mangkuyudan rt 03/03 gg sidoasih timur 4 no 4 solo', 'Perempuan'),
(602, 'Muhamad purwanto', 'bisnisreefah@yahoo.co.id', '6282313834333', 'Jl.usaha tani RT.08 kelurahan mangkurawang tenggarong', 'Laki-laki'),
(603, 'Fajar oktavianto', 'oktavian0310@gmail.com', '6285292184569', 'Karangasem rt 2 RW 02 ,,,,,,,\r', ''),
(604, 'Vivi serlianti', 'nandavivie94@gmail.com', '6282291546566', 'Ereke jln watompa mata Kab. Buton utara Prov. sulawesi tenggara', 'Perempuan'),
(605, 'Anna ambarsari', 'a.ambarsari@gmail.com', '6281336694399', 'Puri safira regency ,,,,,,,\r', ''),
(606, 'Any Tri Hendarini', 'anysiti4@gmail.com', '628158722484', 'Mekarsari Pernai Blok B 5 no 15 Mekarsari Cicurug Sukabumi', 'Perempuan'),
(607, 'Sisilia Warassari', 'swarassari@gmail.com', '6282322529788', 'Prawirotaman MG III 584 Jogjakarta', 'Perempuan'),
(608, 'Ermin', 'erminshafiyyah04@gmail.com', '6285338895695', 'Kp.pulekan tegalwaru Ma\'had azzein Al makky RT 01 RW 02', 'Perempuan'),
(609, 'Risnita Irawati', 'risnitaadhita@gmail.com', '6281237070123', 'Apotek Drajat Farma Jl Gajahmada 144 Genteng-Banyuwangi', 'Perempuan'),
(610, 'Falyn Buton', 'falynbuton01@gmail.com', '6281221512184', 'Jln. Labalawo No.24 Kelurahan Wajo Kecamatan Murhum Kota Baubau', 'Laki-laki'),
(611, 'imam fajari', 'imami821182@gmail.com', '6285226062909', 'Rt 09 Rw 03 Desa Karangbale Kecamatan Larangan Kabupaten Brebes Prop Jawa Tengah', 'Laki-laki'),
(612, 'Ahmad labibul umam', 'umambagus23@gmail.com', '6287779372015', 'Perum Mega regensi blok p 30 no18 rt 02 RW 16 DS Sukasari kec Serang baru . Cikarang kab Bekasi.', 'Laki-laki'),
(613, 'Fitri Permanasari', 'fitrispears@ymail.com', '6285812049875', 'Dongkelsari,,,,,,,\r', ''),
(614, 'SADE MAKKA', 'sademakka_aza@yahoo.com', '6282188198338', 'Jl.Kesatria No.06 Soppeng,Puntuk rt02 rw18 umbulmartani Ngemplak Sleman', 'Perempuan'),
(615, 'Deny Anjasmoro', 'denyanjasmoro19@gmail.com', '6285717770428', 'perumahan villa karawangi 1 blok B1 no 2 kontrakan depan rika butik, Kel.BOTTO Kec.LALABATA Kab.SOPPENG SUL-SEL', 'Laki-laki'),
(616, 'Adi Purwanto', 'adipurs@gmail.com', '6285384524595', 'Jalan Adityawarman, Desa Cibalongsari Kec. Klari Kab. Karawang.', 'Laki-laki'),
(617, 'MUNG HARDJITO', 'hardjitomech@yahoo.co.id', '628113007478', 'Lidahwetan VI No.28 RT/RW 003/003 Kel.Lidahwetan , Lorong SDN 103 No. 29, RT 14, Kel. Thehok, Ke . Jambi Selatan, Jambi-36138', 'Laki-laki'),
(618, 'Agung', 'asa.agung1990@gmail.com', '6281339265543', 'Komplek depnaker blok b2 jl.leo 2no 65 jakasetia-bekasi selatan', 'Laki-laki'),
(619, 'Rohman Nur Arifin', '25rohman993@gmail.com', '6282291928584', 'Link. Kesatrian RT 001 RW 001 kelurahan santiong kecamatan ternate tengah kota ternate provinsi maluku utara', 'Laki-laki'),
(620, 'Asep Abdurrahman Wahid', 'asep.abdurrahman.w@gmail.com', '6285759050983', 'Dusun V,,,,,,,\r', ''),
(621, 'Bagus Septian Ahadin', 'bagusahaddin@gmail.com', '6281277973470', 'Perumahan Pondok Graha Blok H no 16, Desa Ender, Kec. Pangenan, Kab. Cirebon', 'Laki-laki'),
(622, 'Sayyidatun', 'sayyidatun03@gmail.com', '6285959184143', 'TK Patra V, RT03 /RW04, Kel. Duriangkang, Kec. Sei Beduk, Kota Batam', 'Laki-laki'),
(623, 'Ahmad Rohman', 'bongrohman24@gmail.com', '6289649008228', 'Lengkong gudang, Jl. Pertamina Raya No. 2 Pondok Ranji-Ciputat Timur Tangerang Selamat 151412', 'Perempuan'),
(624, 'Yeni Purwanti', 'pyeni1981@gmail.com', '6282398720066', 'Jl.oter no.7 sukaraja 2 cicendo Bandung', 'Perempuan'),
(625, 'SOIMAN', 'xoimanx@gmail.com', '6281227073409', 'Kabunan Asri 2 A10 Dukuhwaru TEGAL', 'Laki-laki'),
(626, 'Niken', 'aristyaniken@gmail.com', '6281229873827', 'Jalan haji taiman no 11,,,,,,,\r', ''),
(627, 'Zainullah', 'joniasmara87@gmail.com', '6285229217614', 'Jl.Cempolorejo 6 no 32 Krobokan semarang barat', 'Laki-laki'),
(628, 'Fahmi Muzakky', 'famuzakky@gmail.com', '6285732168713', 'Jl. Kerta dalem bahagi no 8,,,,,,,\r', ''),
(629, 'Eni islamiyatun agustiningsih', 'eniislamiyatuna@gmail.com', '6281329665065', 'Warung makan pawon ken - ken, sidakarya, denpasar selatan', 'Laki-laki'),
(630, 'Samsul Irawan', 'sam.irawan2121@gmail.com', '6281234267055', 'Jl. Lesti no. 9 Rt 01 Rw 04 kel ngaglik , Jl.PLP Curug Tangerang Banten', 'Perempuan'),
(631, 'Ferry Heriyana Sugih', 'ferry.kp@gmail.com', '6285253953008', 'Perdos Unhas Makassar', 'Laki-laki'),
(632, 'Muhammad Iqbal', 'iqbalzea888@gmail.com', '6285355240918', 'Jl jendral sudirman Dumai', 'Laki-laki'),
(633, 'SYAMSURIADI', 'Syambinkama@gmail.com', '6285398341220', 'Pesantren Darul Istiqamah Maros', 'Laki-laki'),
(634, 'Hery Satriyono', 'hrsatriyono@gmail.com', '6285746179691', 'Perumahan Taman Gading P-10 JEMBER', 'Laki-laki'),
(635, 'gendro mulyono', 'geem4papua@gmail.com', '6281240647250', 'Gg.kemiri.kompleks karantina hewan.kelurahan entrop.jayapura selatan.kota jayapura.papua', 'Laki-laki'),
(636, 'Yuis setiawan', 'yuis_setiawan@yahoo.com', '628122659220', 'Puri tamansari 1,,,,,,,\r', ''),
(637, 'Nun Asti Putri Bunyamin', 'nun.asti87@gmail.com', '6281230309988', 'Perum Puri Kartika Blok a9 no. 2 kec. Cipocok Jaya Kota Serang Banten 42123', 'Perempuan'),
(638, 'Weda Upadyatami', 'wdwd13@gmail.com', '628999865168', 'Jl. Waringin VII no. 24,,,,,,,\r', ''),
(639, 'R. ROZA TIRTA FP', 'rajarozatirta@gmail.com', '6282369685838', 'Villa Hang Lekir Blok CC3 No. 13 RT 003 RW 005 Legenda Malaka, RT 010 RW 003, utan kayu utara, Jakarta 13120', 'Perempuan'),
(640, 'Tedi Rahmat', 't3ddyrahmat@gmail.com', '6282313058005', 'Jl. Soekarno Hatta no. 02 BND Balai Nan Duo Kota Payakumbuh 26224', 'Laki-laki'),
(641, 'Ida Rahmani', 'idasolo38@gmail.com', '6285602202807', 'Pulosari RT 04/06,,,,,,,\r', ''),
(642, 'Janji kusmono', 'janjikusmono@gmail.com', '6281335842599', 'Jl.bangka 16 f Ponorogo kota', 'Laki-laki'),
(643, 'Iqbal Suffi Akib', 'iqbal_akib@yahoo.com', '6281310134931', 'Radiance Villa no. B54 Jatiranggon,,,,,,,\r', ''),
(644, 'Khoirul Bariyah', 'iyunk1987@gmaik.com', '6285693708787', 'Ujung Harapan Pertigaan Pasar Ciplak No 45 Rt 02 Rw 08 Kel. Bahagia Kec. Babelan Kab. Bekasi 17610', 'Perempuan'),
(645, 'FATHUR RAHMAN', 'fathurrahman.tgr@gmail.com', '6281346492888', 'Jalan Trisari Rt. 22 No. 17 Kel. Sidodadi Kec. Samarinda Ulu Kota Samarinda', 'Laki-laki'),
(646, 'Aliyahhidayati', 'kamila.lya@gmail.com', '6281231010800', 'Perum ahmad yani kav utara rsud dr haryoto,,,,,,,\r', ''),
(647, 'Hotnida Sari Harahap', 'hotnidahrp@gmail.com', '6282363491618', 'Jln Pelajar Timur No 168, Lumajang, Jawa Timur', 'Perempuan'),
(648, 'Ermawati', 'erma2812@yahoo.com', '628116620861', 'Parak Gadang no 50 A', 'Perempuan'),
(649, 'Nurhayati', 'snurhayati@hotmail.com', '628129726186', 'Tebet barat dalam 1', 'Perempuan'),
(650, 'Iin Wahyuni', '', '6285726594590', 'iinwahyuni85@gmail.com', 'Perempuan'),
(651, 'Mamah Salamah', 'msalamah05@gmail.com', '6282268104636', 'Tapung Kab. Kampar - Riau', 'Perempuan'),
(652, 'Mona Rizqiana', 'rizqimona19@gmail.com', '6285266757533', 'Bulungkulon RT. 02 RW. IV jekulo Kudus', 'Perempuan'),
(653, 'Wichra Diny', 'widy9176@gmail.com', '6285242052790', 'Jl. Abubakar Lambogo no. 1 Enrekang', 'Perempuan'),
(654, 'nur ainun', 'nisasita.99@gmail.com', '6281803039003', 'jl ikan lumba lumba 1/18 surabaya', 'Perempuan'),
(655, 'Nurdiana', 'nurdianahalik@gmail.com', '6598900904', 'Singapore', 'Perempuan'),
(656, 'Sartini', 'tsartini99@gmail.com', '6285718955319', 'Jl. Raya keadilan Rt.11/01 no 17 Kel. Rangkapan jaya baru Kec. pancoran mas Depok 16434', 'Perempuan'),
(657, 'Esy Armisi', 'esyarmisi22@gmail.com', '6282179043398', 'Jl.Pipa No.1033 Rt.13 Sekip Ujung Palembang', 'Perempuan'),
(658, 'diana roossa', 'diana_roossa@yahoo.com', '6281393257552', 'mondorakan rt 2 rw5 wirogunan kartasura', 'Perempuan'),
(659, 'Indah purnama sari', 'rafaindahrafa@gmail.com', '6281519474187', 'Jl. Aria surialaga wanayasa residence A3 pasir jaya Bogor Barat kota bogor', 'Perempuan'),
(660, 'Gumilar', 'gumi.id89@gmail.com', '6288809694159', 'jln.pelda suryanta,,,,,,,\r', ''),
(661, 'Adi Kusuma', 'adikusuma1402@gmail.com', '6281519643551', 'Kp.Gunung Bubut, nanggeleng sukabumi', 'Laki-laki'),
(662, 'Siti Hadija Junaidi', 'sitihadijajunaidi@gmail.com', '6282292903017', 'Perumahan Elivar Damai Blok F4, RT 003/003, Desa Bantarsari, kec. Rancabungur, kab. Bogor', 'Laki-laki'),
(663, 'Agus triono', 'Agustriono059@gmail.com', '6281290346334', 'Nogoraji era rt 01 rw 01 kec buayan kab kebumen', 'Laki-laki'),
(664, 'FAHRIAH', 'Fahriah700@yahoo.com', '6285251188111', 'Komp.saadah 3.no 52. rt 18. Rw 04. sei pering.Martapura. Kab banjar.kallmantan selatan.', 'Perempuan'),
(665, 'Samsul Harahap', 'samsulharahap7@gmail.com', '6285265540337', 'Desa Lenggadai Hulu Kec Rimba Melintang Kab Rokan Hilir Prov Riau,,,,,,,\r', ''),
(666, 'Noviza efrina', 'nefrina.za@gmail.com', '6281347203483', 'Perumahan citra indah bukit gladiola BA 08/15 RT 10/RW 009 Desa sukamaju kec jonggol kab bogor 16830', 'Perempuan'),
(667, 'Sri Kusdiningsih', 'kusdiningsih2011@gmail.com', '6282189577643', 'Jl. Lanoni No. 06 Kel. Baru Kec. Baolan Tolitoli Sulteng', 'Perempuan'),
(668, 'Putri Sufi Pratiwi Handayani', 'p.putsq@gmail.com', '628561215321', 'Jl. Kota bambu selatan VII no 16 Rt009 Rw04 Jakarta Barat', 'Perempuan'),
(669, 'Wirda Juwita', 'wirdajuwita@gmail.com', '6282277353446', 'Jl.medan tg.morawa gang sukamulia lorong famili bangun sari tanjung morawa medan sumatera utara', 'Perempuan'),
(670, 'Hardwin Mohammad Hutagalung', 'hardwin.mh@gmail.com', '6281287256588', 'Jalan Zaitun VI No.5b Islamic Village Tangerang Banten 15810', 'Laki-laki'),
(671, 'Anah Sofianah', 'zaidziyad19@gmail.com', '6283148652070', 'Desa segeran lor blok alimun jaya RT 14 RW 07 kec juntinyuat kab Indramayu', 'Perempuan'),
(672, 'Abdul rouf alfansuri', 'cvtigasaudara8@gmail.com', '6285230884477', 'Ds nglumber rt3 rw 1 kec kepohbaru kab bojonegoro jatim', 'Laki-laki'),
(673, 'Rasyidah', 'IdaRasyidah46@gmail.com', '6282313675005', 'Jl.soekarno Hatta kamp. Pejebe empus Talu kec. Bebesen Aceh Tengah Prop. Aceh', 'Perempuan'),
(674, 'Sarwendah', 'sarwendah0205@gmail.com', '6282319421407', 'Jl.cempaka rt.005 desa batuah kecamatan kusan hilir kab.tanah bumbu kalimantan selatan', 'Perempuan'),
(675, 'Titin Ismawati', 'titinismawati@gmail.com', '6287812382996', 'Keputren rt 4 rw 8 Kartasura Sukoharjo Jawatengah', 'Perempuan'),
(676, 'muajaiyin', 'mujaiyinkarim@gmail.com', '6281347841941', 'jl arjuna', 'Laki-laki'),
(677, 'Nina mutmainnah', 'nina.muriadin@gmail.com', '6285298896930', 'JL. H. LAMUSE,,,,,,,\r', ''),
(678, 'Uli Qomar yana', 'uliqomaryana@gmail.com', '6281334244509', 'Dsn prayungan rt 002 rw 002 ds Kuwik kec kunjang', 'Perempuan'),
(679, 'Maharani', 'ranimulya97@gmail.com', '6285265501085', 'kavling Clara Lestari,,,,,,,\r', ''),
(680, '\'alima susilawati sadrina', 'a.sadrina78@gmail.com', '6282111043049', 'jl. pertanian III a no. 36. pasarminggu-jaksel', 'Perempuan'),
(681, 'Siti fatimah', 'fatimahalhuda@gmail.com', '6282350178109', 'Jl cempaka rt/tw 01/01 no 24,,,,,,,\r', ''),
(682, 'Yusuf Ardian', 'yusuf99ardian@gmail.com', '6285333484437', 'Perumahan Melati Permai blok A no 3 Tomoni Luwu Timur Sulawesi Selatan', 'Laki-laki'),
(683, 'Jamal Husni', 'jamal_husni@yahoo.com', '6281363345483', 'Jl. Mesjid Jamik Padang Luar No. 301 Kec. Banuhampu Kab. Agam', 'Laki-laki'),
(684, 'Gilar Agiskara', 'gilaragis@gmail.com', '6289608117516', 'Blok Nambo,,,,,,,\r', ''),
(685, 'Romli', 'romlilalan@gmail.com', '6285382707727', 'Sri karang rejo kec lalan mu ba', 'Laki-laki'),
(686, 'Fitri Apriani', 'aprianifitri399@gmail.com', '6281294159570', 'Santiong Rt 01/01 kel. Ternate Tengah Ternate', 'Perempuan'),
(687, 'RIDWAN', 'ridwanmanajemendakwah@gmail.com', '628999375583', 'Dusun Suka Damai,,,,,,,\r', ''),
(688, 'DEDE ISKANDAR', 'kadeistea@gmail.com', '6285881841862', 'Kp. Narogong RT 05/02 Desa Kembang Kuning Kec. Klapanunggal Kab. Bogor', 'Laki-laki'),
(689, 'CATUR HERU', 'Catur.heru.prihatmoko@mail.ugm.ac.id', '6281539295726', 'Jalan Podocarpus I N46,,,,,,,\r', ''),
(690, 'Andri Ramli', 'andri_engineering09@yahoo.co.id', '628114608309', 'Jln Anggrek blok j no.5 palopo', 'Laki-laki'),
(691, 'Mukhamad Dukhin', 'mdukhin196@gmail.com', '6285825111053', 'dsn.kendayaan rt.02/rw.14 ds.sebani Pandaan Pasuruan Jawa Timur 67156', 'Laki-laki'),
(692, 'Ayu Nurdita', 'ayunurdita215@gmail.com', '6282152907924', 'Jln inpres 3 gang manunggal 1 rt 13 no 79 km 2 muara Rapak balikpapan Utara kalimantan Timur', 'Perempuan'),
(693, 'Rendy Suherman', 'rendy.suherman@yahoo.com', '6287809232887', 'Jl Tanjung pura V rt 11 rw 5 pegadungan kalideres jakarta barat', 'Laki-laki'),
(694, 'M Zaynul Ngabidin', 'zaynul_abidin@yahoo.co.id', '6282155076968', 'Tempursari,,,,,,,\r', ''),
(695, 'Yani selviani', 'yaniselviani022@gmail.com', '6289669091743', 'Kp ciinjuk rt03/01 des.manggungsari kec rajapolah kab Tasikmalaya kode pos 46155', 'Perempuan'),
(696, 'Ai kholidah', 'aikholidah27979@gmail.com', '6285223385381', 'jl.pamikul 3 no 4 Rt04/ 06 tegal gundil- bogor utara', 'Perempuan'),
(697, 'Arifatunisa Febriana Putri', 'anafebri80@gmail.com', '6285251821309', 'Jl. P. Suryanata Perum. Puspita Bukit Pinang Rt.05 Blok C No.06 Kel. Bukit Pinang Kec. Samarinda Ulu Kota. Samarinda 75124 Kalimantan Timur', 'Perempuan'),
(698, 'Heru Jatmiko', 'heru.astek@gmail.com', '6281297059820', 'Villa Mutiara Gading 3 Blok E5 no.15 Bekasi 17610', 'Laki-laki'),
(699, 'Dede Husen Badrudin', 'huseinbadruddin6@gmail.com', '6282211773113', 'Pesantren Masyarakat Merapi Merbabu,,,,,,,\r', ''),
(700, 'Sandiaji', 'sandiaji@gmail.com', '6281320748997', 'Jl.Oto Iskandardinatana no.226 Bandung', 'Laki-laki'),
(701, 'Hari Prayitna', 'hariprayitna@gmail.com', '6287738529483', 'Bakungan no 62 rt 003 rw 057 wedomartani ngemplak sleman yogyakarta', 'Laki-laki'),
(702, 'SYAEKHUL ISLAM', 'saehul123@gmail.com', '6282147435313', 'Jl meninting 10 gg scrab no 1 BTN KEKALIK BARU MATARAM', 'Laki-laki'),
(703, 'Septi Tri Aksari', 'septi3_aksari@yahoo.co.id', '6282214440681', 'Jl A Yani 150 Ds Planjan RT 02 RW 02 Kesugihan Cilacap Jawa Tengah 53274', 'Perempuan'),
(704, 'Syaef bachri', 'bb_kke@yahoo.com', '628125558766', 'Jalan dayung no 39 sangatta kutai timur kaltim', 'Laki-laki'),
(705, 'Antony Setyo Rachmanto', 'antonkabar@gmail.com', '628179434379', 'Bedelan Rt/Rw 07/27 Sumberadi Mlati Sleman Yogyakarta', 'Laki-laki'),
(706, 'Nurdin Aksad', 'nurdin.aksad@gmail.com', '6285397853402', 'Pasui. Jl. Poros Tonasa 2 Kel. Sapanang,,,,,,,\r', ''),
(707, 'khaidir khaliq', 'laundry88q@gmail.com', '6285340950357', 'Jl. Bougemville no.22 Makassar', 'Laki-laki'),
(708, 'Wawit Yulioso', 'wawityulioso@yahoo.com', '6281802838525', 'Kramat rt 8 rw 18 sidoarum godean sleman', 'Laki-laki'),
(709, 'Jhoni', 'jalanmaju1@gmail.com', '628128962942', 'Jl brantas no. 16 blok E2 rt 2 rw 18,,,,,,,\r', ''),
(710, 'Santi Nurjanah', 'santinurjanah0874@gmail.com', '6281298482161', 'Komplek Lebak Lestari', 'Perempuan'),
(711, 'Adda', 'june85_denth@yahoo.co.id', '6285298448818', 'Toko i-Lotus,,,,,,,\r', ''),
(712, 'Alam murdiansyah', 'jarwoswett@gmail.com', '6281350923093', 'Jl.danau sentani .HOP 3 .no 58. Satimpo.bontang selatan .Bontang.KALTIM', 'Laki-laki'),
(713, 'Nur Asiaj', 'nurasiah2887@gmail.com', '6282331523333', 'Jl Bandeng no 15 Tunjung Sekar Lowokwaru - Malang', 'Perempuan'),
(714, 'Rismal Adriansyah', 'rismal.adriansyah@gmail.com', '628121054357', 'Perumahan Danau Bogor Raya Blok H3 No.12A Bogor 16144', 'Laki-laki'),
(715, 'Sinthia Hendriyanni', 'bundarumi2401@gmail.com', '628114359785', 'Kel. Tanah Tinggi Barat Ternate Maluku Utara', 'Perempuan'),
(716, 'syamsuddin usman', 'utpokjarwondama@gmail.com', '6282198268968', 'Perumahan sogun permai blok f no 11 kelurahan sowi distrik Manokwari Selatan kab Manokwari Papua Barat', 'Laki-laki'),
(717, 'H. Syahrir Sahaka', 'syahrirsahaka31@gmail.com', '6281281238841', 'Jl.pemuda no 237 kolaka sultra', 'Laki-laki'),
(718, 'Seniwati Muin S.Si,,,,,,,\r', '', '', '', ''),
(719, 'Agusalim', 'agusalim1999@gmail.com', '6285364324884', 'Dusun makmur,Apt', 'seniwatim'),
(720, 'Nuraini Rachman', 'rachmannuraini88.nr@gmail.com', '6282197963363', 'Aspol kloofkamp no. 91 jayapura-papua', 'Perempuan'),
(721, 'Nasrullah D.R', 'leo.nazrul@yahoo.com', '6285299003652', 'Jl. Jambu Mente No. 184,,,,,,,\r', ''),
(722, 'Andita Mandasari', 'anditamanda@gmail.com', '628111201812', 'Puri Serang Hijau Blok E6/12 Cipocok Jaya Kota Serang Banten 42321', 'Perempuan'),
(723, 'Asep', 'asepjamalnurarifin@gmail.com', '6285974417170', 'Mustikajaya Residence Blok A2 RT 002 RW 007  Kp Ciketing Kel. Mustika Jaya Kec. Mustikajaya Kota Bekasi', 'Laki-laki'),
(724, 'Lukman Dahlan', 'lukman.dahlan@af.co.id', '6285377777456', 'PT. Armada Finance Jl. Madjid Yunus Komp senapati Land By Pass No. 18 Kota Kendari', 'Laki-laki'),
(725, 'Della Aprillia', 'dellaaprillia2@gmail.com', '6281381022096', 'Taman wisma asri jl apel 7 blok C9 no 106 teluk pucung bekasi utara', 'Perempuan'),
(726, 'Vita Dwi Utari', 'mylula14@gmail.com', '6287770200932', 'Perumahan Pondok Permata Hijau Blok Mawar No.3 Ciomas BOGOR', 'Perempuan'),
(727, 'Muhammad Yamin Rachman', 'yamin.rahman86@gmail.com', '6285299213013', 'Permata Indah Jl Raya Tanah Hitam Abepura Jayapura', 'Laki-laki'),
(728, 'Muhammad yusuf', 'aleshayusuf@gmail.com', '6281215128589', 'Jl madrasah 1 rt 007/09 no 7', 'Laki-laki'),
(729, 'Astina Farida', 'wifqy.halwa@gmail.com', '6285794562860', 'Perum Griya Pesona Hijau Blok D-07 RT 45/07 Kelurahan Margaluyu Kec. Manonjaya 46167', 'Perempuan'),
(730, 'Katenni', 'harkatabadiyuasa@gmail.com', '62811496925', 'Jl.Ahmad Yani depan Masjid Al-Furqan Timika Papua', 'Laki-laki'),
(731, 'Subagio', 'baggioidris@yahoo.com', '628125061430', 'Jl Raya Stagen KM 10 RT.2 RW 1 Stagen Kotabaru Pulau Laut Kalimantan Selatan', 'Laki-laki'),
(732, 'Indarini', 'indarini74@gmail.com', '6282225618841', 'Komp.Raudha Lazuardi blok C3,,,,,,,\r', ''),
(733, 'Alfiah Sufiani', 'evi1111sufiani@gmail.com', '628170241111', 'Jl Nginden Intan Timur XV no 7 Surabaya', 'Perempuan'),
(734, 'Fitrah almasih', 'almasih74@gmail.com', '6281291655554', 'Tridaya nuansa indah blok aa1 no1. Jln. Kelapa kopyor 4. TBK. TUNAS JAYA Plastik', 'Laki-laki'),
(735, 'Dian Eko Prasetyo', 'clusterep@gmail.com', '628127104299', 'Jl. Batu Karang Blok. I-8 No.4 RT.66 RW.25 Kelurahan Sako Kec. Sako Palembang', 'Laki-laki'),
(736, 'Muhammad wuddy Mubarok', 'abusholihati@gmail.com', '6281284303882', 'Pertokoan Aglaonema cyber residence nomer 32 RT 001 RW 013 cemplang Utara kelurahan Cilendek barat kecamatan Bogor barat kota Bogor Jawa barat Indonesia', 'Laki-laki'),
(737, 'Fajri Suryana', 'fsuryana89@gmail.com', '6285920139914', 'Kp.Gabral Rt.23/02 Kel.Ranjeng Kec.Ciruas Kab.Serang,,,,,,,\r', ''),
(738, 'Hariati', 'hariati.kediri75@gmail.com', '628972705526', 'Jl. Sersan KKO Harun No.103 Kediri, Banten 42182', 'Laki-laki'),
(739, 'Mariah agustina widayanti', 'mariahagustina08@gmail.com', '628174895503', 'Griya TOA permai blok D no 8 rt 07 rw 01 kelurahan kalibaru kec. Cilodong depok', 'Perempuan'),
(740, 'Lia yuliandha wulandari', 'ezra.dhika@gmail.com', '6282187320061', 'Jl. Mataram no. 22 kel. Suryatmajan kec. Danurejan yogyakarta 55213', 'Perempuan'),
(741, 'Diandra Zatira', 'diandra.zatira@gmail.com', '628567094587', 'Jalan. Cabe IV No.64B,,,,,,,\r', ''),
(742, 'Juniadi', 'jundiart82@gmail.com', '6281255680456', 'Jl.Bambang Ismoyo Gg.Cengkeh No.12 Kel.Jawa Kec.Singkawang Tengah Kota Singkawang', 'Laki-laki'),
(743, 'Wawan Hery Kriswanto', 'pleky.salafi@yahoo.com', '6282115210818', 'Prima Harapan Regency Blok C10 No 07 RT05 RW09 ,,,,,,,\r', ''),
(744, 'Sri Ayuni', 'aayu91864@gmail.com', '6281917978166', 'BTN Pepabri no 1, Harapan Baru,', 'Laki-laki'),
(745, 'Nanang Kusnandar', 'nanangkusnandar94@gmail.com', '6285224141222', 'Blok Mawar Rt. 009 Rw. 005 Gang Pancuran 7 Desa Panyingkiran, Kelurahan Leneng, kecamatan Praya, kabupaten Lombok Tengah, NTB', 'Perempuan');
INSERT INTO `user_import` (`id`, `Name`, `Email`, `Phone`, `Address`, `Jenis_Kelamin`) VALUES
(746, 'Euis kartika', 'erikakece69@gmail.com', '6281329396181', 'Bukit golf Cibubur riverside gunung putri bogor', 'Perempuan'),
(747, 'Ori Sobari', 'ori_ven@yahoo.co.id', '6285295688058', 'Perum Griya Hegar Asri Blok D1 No 4,,,,,,,\r', ''),
(748, 'Tatok Widiyantoro', 'tatokvanjen@gmail.com', '6282111116231', 'Jl. Locari RT25/03 Cepokomulyo Kepanjen Malang 65163', 'Laki-laki'),
(749, 'Heri Hermawan', 'hheri663@gmail.com', '6281809724663', 'Gading Tutuka 2 blok m8 no 18', 'Laki-laki'),
(750, 'Azhar Zainuri', 'indvespro@gmail.com', '6281299183327', 'Kompleks Timah Blok CC No. 4', 'Laki-laki'),
(751, 'Hendriana', 'hendry.abqary@gmail.com', '6287712187474', 'Cluster poeri mahanu blok a no 1 kp sawah poncol rt 03 rw 07 ds bojong gede kec. Bojong gede kab bogor', 'Laki-laki'),
(752, 'Jujun junaedi', 'junprh@gmail.com', '6282117018252', 'Jln. Babakan sari 1,,,,,,,\r', ''),
(753, 'Abdurahman Baraba', 'abduprolov1@gmail.com', '6285721243111', 'Jl.sadang serang no.3 Bandung RT.06/19 kec.coblong', 'Laki-laki'),
(754, 'Hafiza Humaira', 'humairahumaira27@gmail.com', '6281262692126', 'Komplek The Lavender Sunggal Blok AM 18,,,,,,,\r', ''),
(755, 'Alif Kodratullah', 'alifbrother24@gmail.com', '628111112848', 'Perumahan taman kota Blok L1 no. 7 bekasi kota', 'Laki-laki'),
(756, 'Fazri Agustiar', 'zrynae0614@gmail.com', '6285780014540', 'Perum permatasari indah blok c2-22. Rt 01 rw 022. Desa palumbonsari kec krwg timur,,,,,,,\r', ''),
(757, 'Tipna', 'tipna.sultan@gmail.com', '6282135330003', 'Jl.Pucang Adi 1 No.4 Pucang Gading, kab karawang.', 'Laki-laki'),
(758, 'Nelda Yanti Igir', 'anomwaspodo96@gmail.com', '6282240404141', 'Perum pesona bukit Batakan blok AC no 25', 'Perempuan'),
(759, 'Randa Rahdinata', 'randarahdinata1989@gmail.com', '6281365621556', 'Jln Azki Aris RT 10 RW 01Kel.Kp.Dagang Kec.Rengat Prov.Riau', 'Laki-laki'),
(760, 'Ali Pirmansyah', 'alipirma@gmail.com', '628999933363', 'Cibubur Residence Blok E2 No 23', 'Laki-laki'),
(761, 'Amir Hasan', 'amirhasanpc123@gmail.com', '6282250705324', 'Jl. Puruk batu bondang V RT 003 RW 002 Kel. Beriwit Kec. Murung Puruk Cahu Kab. Murung Raya', 'Laki-laki'),
(762, 'Sri sudarmi', 'elrafablitar@gmail.com', '6285646480508', 'Desa minggirsari III RT 1 RW 5 Kanigoro Blitar Jatim', 'Perempuan'),
(763, 'Kartika Cahyaningtyas', 'artika.arjuna@gmail.com', '6282226556663', 'Dukuh Brogo No. 35 RT 003 RW 004 Desa Donohudan Kecamatan Ngemplak Kabupaten Boyolali Provinsi Jawa Tengah Kode Pos 75375', 'Perempuan'),
(764, 'Usman', 'usmankhalifa57@gmail.com', '6282284888347', 'Bengkong Jaya Blok D No. 34', 'Laki-laki'),
(765, 'Fitri Yulianty', 'fitriy13@gmail.com', '628111137800', 'Griya gaharu mas. Blok B3 no 5. Kelurahan babakan,,,,,,,\r', ''),
(766, 'Nika dinka sari', 'nikadinka@gmail.com', '6285729925071', 'Depan iphi ngawen klaten', 'Perempuan'),
(767, 'Rahmat Sisiwidin', 'rahmatsisiwidin@gmail.com', '6282151565678', 'Jl.Kelua Amuntai.rt.V.no.22.Ds.Sei Anyar.Kec.Benua Lawas,,,,,,,\r', ''),
(768, 'Nana erliana', 'nerliana35@gmail.com', '6281295999946', 'Kp.cibitung kaum rt 07 rw 13 Desa Sukadanau kec.Cikarang Barat Kab .Bekasi Jabar', 'Perempuan'),
(769, 'Rafidah Fawwazia Hidayat', 'Fi.rafidah@gmail.com', '6285743134434', 'Melati Purna E44,,,,,,,\r', ''),
(770, 'Su\'adah', 'tetasuadah@gmail.com', '6285266033098', 'Jl.KH.Ahmad Majid No.48 Rt.005 Kelurahan Tahtul Yaman Kecamatan Pelayangan, Mertoyudan, Magelang 56172', 'Perempuan'),
(771, 'Lukmanul Hakim', 'luxalhakim@gmail.com', '628568349555', 'Kp. Karyawan RT 02 RW 01 Desa Jatiragas Kec. Jatisari Kab. Karawang - Jawa Barat 41374 (Galeri Fatimah /Agen JNE Jatiragas)', 'Laki-laki'),
(772, 'Tina Prabowo', 'tinapmustafa@gmail.com', '628388002011', 'Jl H Nawi Komp bank Mandiri no 7B cipete jak sel', 'Perempuan'),
(773, 'Fakhrian Amrullah', 'fakhrian.amrullah@gmail.com', '6282148086920', 'Jl. Praja Bhakti IV No 3 sepinggan kota Balikpapan', 'Laki-laki'),
(774, 'Pini Yuliani', 'piniyuliani16@gmail.com', '6287812280208', 'Kp.cigatrot girang 01/12 tenjolaut cikalongwetan bandung barat jawa barat', 'Perempuan'),
(775, 'Heru', 'ureh.susanto@gmail.com', '6285292626423', 'Jl. Sepanjang asri blok i no 6 sepanjang taman sidoarjo', 'Laki-laki'),
(776, 'Lena Maryana', 'lena.ghifari@gmail.com', '6281286024802', 'Jl.H.Nurisan no 16 Pondok Pinang Jaksel', 'Perempuan'),
(777, 'Mochammad Akbar Zulfikar', 'akbaraja34@gmail.com', '62816633870', 'Villa Taman Anggrek Jl.Myltonia Blok D7 No.7', 'Laki-laki'),
(778, 'Muh.  Iqbal Basoka', 'basokaiqbal@gmail.com', '6285397277735', 'Jl.  Masjid Raya,,,,,,,\r', ''),
(779, 'Susanty Otodu', 'shantyotodu02@gmail.com', '6281244477767', 'Desa Warukapas Jaga 1,  No.  62, Somba Opu,  Kab. gowa,  Sulawesi Selatan', 'Laki-laki'),
(780, 'akhmad baihaqi', 'abuqonita1984@gmail.com', '6281804875144', 'Dukuh waru RT 04 RW.04 KEL.PAGOJENGAN KEC PAGUYANGAN KAB BREBES JAWA TENGAH', 'Laki-laki'),
(781, 'Ahmad Sodikin', 'ahmadsodikin141296@gmail.com', '6285600911647', 'Kebanyon kasepuhan Batang Jawa tengah', 'Laki-laki'),
(782, 'Musliha', 'muslihaayyasy@gmail.com', '6285250982353', 'Yos Sudarso lll Kutai Timur KALTIM', 'Perempuan'),
(783, 'Mila ulva rahmawati', 'milaulva@gmail.com', '6285851263919', 'Griya kepuh asri blok H no 25 kertosono - nganjuk', 'Perempuan'),
(784, 'Dede N Hadian', 'dapurkhansa@gmail.com', '6281296559678', 'Adi Bumi III,,,,,,,\r', ''),
(785, 'Hendri', 'walik123@gmail.com', '628179006474', 'Bogor', 'Laki-laki'),
(786, 'Arief Budiyanto', 'ariefbudiyanto685@gmail.com', '628561444339', 'Jakarta Timur', 'Laki-laki'),
(787, 'Jembar Hendrayana', 'jembar.hendrayana@gmail.com', '6285865775551', 'Jl Pancuran Barat No. 143 Sukapura Kec. Kejaksan Kota Cirebon', 'Laki-laki'),
(788, 'Muhammad Akrom', 'akromtaqy@gmail.com', '6285853301868', 'Jl. Agus Salim Gg. Rahayu Kelapa Tiga Tanjung Karang Pusat Bandar Lampung', 'Laki-laki'),
(789, 'Ari Wijaya', 'archem.smg@gmail.com', '6285725008805', 'Perum villareal residence blok c1 no.7,,,,,,,\r', ''),
(790, 'Resa Darusman', 'resa1786@gmail.co.com', '628122120130', 'Jl Sukasenang VI No 13', 'Laki-laki'),
(791, 'Nuri Mei Susilowati', 'noery1396.nms@gmail.com', '6281215309619', 'Jl. Kebonjayanti No. 7 Rt 02 Rw 03 Kebonjayanti,,,,,,,\r', ''),
(792, 'Aries nurrohmah', 'aries24bwi@gmail.com', '6281217394659', 'Bnyuwangi jaws timur', 'Perempuan'),
(793, 'Eko Maryanto', 'eko.azril12@gmail.com', '6281319441093', 'Jalan Sunter Agung 3B No. 15,,,,,,,\r', ''),
(794, 'DAFIR', 'dfkomputer99@gmail.com', '6282210990016', 'Ds Bungintimbe Kec Petasia Timur Kab Morowali Utara Prop Sulawesi Tengah', 'Laki-laki'),
(795, 'Suyitno', 'suyitnopitulung@gmail.com', '6281336796008', 'Dusun Tulung Desa Wanar kec Pucuk Lamongan', 'Laki-laki'),
(796, 'ivada', 'amaliaivadaa22@gmail.com', '6285720097110', 'jalan margakencana utara no 16 perumahan margawangi bandung', 'Perempuan'),
(797, 'ELIF NUR EFENDI', 'nurefendielif@gmail.com', '6281946210955', 'Desa Kuwonharjo,,,,,,,\r', ''),
(798, 'Sanusi', 'sanusi8212@gmail.com', '6285697744077', 'Jl. Mawar no 79. Rt 003/003 curug bojongsari depok', 'Laki-laki'),
(799, 'Nurhadi Hasim', 'nurhadihasim@gmail.com', '628118445677', 'Perum Griya Bukit Jaya Jl.Rinjani 2 Blok R2 No.4 - Rt.01 Rw.19 - Bojong Nangka - Gunung Putri - Bogor', 'Laki-laki'),
(800, 'Eti Sugiarti', 'etisugiarti28@gmail.com', '6281385871124', 'Jl.mahoni 1 no 5,,,,,,,\r', ''),
(801, 'Galih Fidianto', 'galihfidianto@gmail.com', '6287755111936', 'Rt 03 rw 01 dsn ringinagung ds ringinpitu kec kedungwaru kab tulungagung', 'Laki-laki'),
(802, 'Suwardi', 'suwardi4866@gmail.com', '6281375486666', 'Jalan Asahan km. 21 P.Siantar', 'Laki-laki'),
(803, 'Joni rahman', 'jonirahman26@gmail.com', '6281264293363', 'Jln pelajar timur.gang Keluarga.no4 kelurahan medan binjai,,,,,,,\r', ''),
(804, 'Luqman fathoni', 'asc.grup7@gmail.com', '6285336833780', 'Sukorejo,kecamatan medan denai.kota medan', 'Laki-laki'),
(805, 'Vinna', 'arumsari.herbal@gmail.com', '6281312489717', 'Ponpes Albasyariah cigondewah hilir bandung', 'Perempuan'),
(806, 'Jamroni', 'jamroni2019@gmail.com', '6281347424158', 'Jl. KH. Wahid Hasyim', 'Laki-laki'),
(807, 'nur wachid ariefiyanto', 'nw.arief@gmail.com', '6281386839969', 'Jl hasanudin gg ciliwung rt 10/01 ngawi', 'Laki-laki'),
(808, 'Iskandar ravasia', 'designsevenseven@gmail.com', '6287789079933', 'Jl gaharu 1 no.10f cipete  jakarta selatan', 'Laki-laki'),
(809, 'Mustik Efendi', '', '6281232237227', 'OmahmaduQu01@gmail.com', 'Laki-laki'),
(810, 'Muhammad Azzam Taqwawan', 'sajakalisme@gmail.com', '6282262026854', 'Jalan Ambar Asri Nomor 315 Caturtunggal Kecamatan Depok Kabupaten Sleman Daerah Istimewa Yogyakarta 55281', 'Laki-laki'),
(811, 'indra sandi', 'sand_nana@yahoo.co.id', '6281327312223', 'Bontang,,,,,,,\r', ''),
(812, 'NurAisyah', 'nuraisyah0811@gmail.com', '6285251179111', 'Jln pulau Banda GG palem rt11', 'Perempuan'),
(813, 'Ahmad Sultoni', 'ahmad.sultoni.mpd@gmail.com', '6281393778282', 'Jl Taman Pahlawan 17 c RT 02 RW 04 Pancuran Salatiga', 'Laki-laki'),
(814, 'Egi Nugraha', 'eginugrahae@gmail.com', '6281283539543', 'Jalan Mabuun,,,,,,,\r', ''),
(815, 'Dian Mardiana', 'dian_jilbab@yahoo.co.id', '6282320102900', 'Perum griya Pamoyanan 2 blok H 8 kel sukagalih kec Tarogong Kidul kab garut', 'Perempuan'),
(816, 'Hennirosifasari', 'hennirosifasari@gmail.com', '628126819731', 'Jl.Sri Pulau no 131/g rt03 rw 02 bengkalis riau', 'Perempuan'),
(817, 'novimargiyanti', 'novimargiyanti@gmail.com', '6281294053964', 'jl kramat kosambi 2/1 cipinang pulogadung', 'Perempuan'),
(818, 'Rizki novianti', 'kikihyeonji@gmail.com', '6285721759124', 'Jl babakan muncang kidul no 30', 'Perempuan'),
(819, 'Irfan Yahya', 'daengtaba84@gmail.com', '6282343434142', 'Jl. Poros Bollangi Desa Timbuseng Kecamatan Pattallassang Kabupaten Gowa', 'Laki-laki'),
(820, 'Dede siti aminah', 'd3d3sa@yahoo.com', '6287831001800', 'The one cluster no.2 Jalan Batu Belah cipedak Jagakarsa Jaksel', 'Perempuan'),
(821, 'Anis Setyono', 'setyono.anis@gmail.com', '6287780493555', 'Jl. Masjid Gedong XI rt004 rw001 kelurahan gedong kecamatan pasar rebo Jakarta Timur', 'Laki-laki'),
(822, 'Reca Febriany', 'eccafebriany@gmail.com', '6281247964628', 'Jln Banteng no 93 Cisalak Pasar,,,,,,,\r', ''),
(823, 'Dewi Rosalina', 'bmiofficial.sby@gmail.com', '628113210789', 'Jl. Menanggal Indah VI No. 23 Surabaya', 'Perempuan'),
(824, 'Hayati Syafri', 'hayatisyafri001@gmail.com', '6281363300600', 'Jalan Soekarno Hatta No 117a Kelurahan tanjung Gadang kecamatan Payakumbuh barat 26225', 'Perempuan'),
(825, 'Sri Suharyati', 'ajenk.biano@gmail.com', '6281345314551', 'Komplek Angkasa Permai B 7 jln Arteri Supadio Pontianak Kalbar', 'Perempuan'),
(826, 'Annisa Nur Fitriana S', 'annisa.nurfitrianas@gmail.com', '6285875164255', 'Perumnas Sendangmulyo,,,,,,,\r', ''),
(827, 'Dedi Gunawan', 'almanarsukamakmur2012@gmail.com', '6285782444766', 'Kp. Sukabakti RT.001/04 Desa Wargajaya Kec. Sukamakmur Kab. Bogor', 'Laki-laki'),
(828, 'Askar Roffi Addharruddin', 'hambaallah81100@gmail.com', '6285342361741', 'Jl.Kalimantan 18 No.76', 'Laki-laki'),
(829, 'Helmy Ariefandi', 'helmyariefandi22@gmail.com', '6285789955906', 'Jln. timoho,,,,,,,\r', ''),
(830, 'Darni', 'dharniehaddran@gmail.com', '6281253619898', 'Jl.Parit H.Husin 1 Gg.Sederhana No.31 Pontianak Tenggara Kalimantan Barat', 'Laki-laki'),
(831, 'Udin Samrodin', 'rukuntani.pmg@gmail.com', '6281328662950', 'Rt 01.rw 01 dsn jati desa mergayu kecamatan bandung kabupaten tulungagung jawa timur 66274', 'Laki-laki'),
(832, 'Miftahuddin', 'udienpreneur@gmail.com', '6281271335862', 'Jl.palembang jambi kec.bayung lencir kab.muba sumsel', 'Laki-laki'),
(833, 'Komarudin', 'qomaru7z@gmail.com', '6285210002432', 'Cendana,,,,,,,\r', ''),
(834, 'Asep Maulana Djamil', 'djamil.maulana@gmail.com', '6285711470699', 'Krajan III, Rt 16 Rw 07, Kec. Kutasari, Kab. Purbalingga, Jawa Tengah', 'Laki-laki'),
(835, 'Alvin Andryansah', 'alvinandryansah.41@gmail.com', '6282298054702', 'Jl. Raya Bojongsari, Des.Lemahabang, Kec.Lemahabang, Karawang', 'Laki-laki'),
(836, 'Hamba illahi idharul hak', 'hambaillahi728@gmail.com', '6281221621177', 'Komp. Warga rahayu blok c 4 no 373 kel. Pataruman Garut', 'Laki-laki'),
(837, 'M. Thohari', 'thohari.m@gmail.com', '6281806747841', 'Perum Bumi Cikarang Makmur jl. Ceremai 6 blok C12/28 Sukadami Cikarang Selatan bekasi', 'Laki-laki'),
(838, 'Linggar Agus', 'propolisbritishsidoarjo@gmail.com', '6282336977111', 'Linggar Agus Priabodo', 'Laki-laki'),
(839, 'Riana saputra', 'reizidiae80@gmail.com', '6281216245312', 'Toko cat niaga jaya jl.demuk no.96 ngunut tulungagung jawa timur 66292', 'Laki-laki'),
(840, 'Argi Janitra', 'argievan@gmail.com', '6281519064066', 'Jl. Gunung Raya Dalam No. 106 Cirendeu Ciputat Timur 15419', 'Laki-laki'),
(841, 'Rizki Dwi Cahya', 'rdccahya123@gmail.com', '6285762626334', 'Jalan u no 37 Palmerah Jakarta Barat', 'Laki-laki'),
(842, 'Alifian Muhajir', 'alifianmuhajir@gmail.com', '6287820500131', 'Jl. Angsana 6 No.24 RT 02/02 Mejasem Barat,,,,,,,\r', ''),
(843, 'Febina Ramadhanty', 'febinaramadhanty30@gmail.com', '6281365382521', 'Danau Indah Punggur Blok Cempaka 2 No.4 RT.001 RW.014 Kabil-Nongsa, Kec. Kramat - Kab. Tegal 52181', 'Laki-laki'),
(844, 'Agisna', 'agisna84@gmail.com', '6281319118533', 'Perum Tanjungsari Jl.Khatulistiwa Kota Sukabumi', 'Laki-laki'),
(845, 'Yusak Maulana', 'maulanacompany@gmail.com', '6281332138388', 'Jl.KH Ahmad Dahlan no 23 RT02/ RW01 Kel.Kerjasan Kec.Kota Kab.Kudus 59315 Jawa Tengah', 'Laki-laki'),
(846, 'Pramono', 'pramono.1703@gmail.com', '6285229246854', 'Deg-degan RT 1/1,,,,,,,\r', ''),
(847, 'Tomi Alfindo', 'alfindotomi@gmail.com', '6281213861009', 'Nusa Indah Residence Cluster Carana 2 No. 32 Tanah Baru, Pelemgadung, Karangmalang, Sragen', 'Laki-laki'),
(848, 'H. M. TAUFIK A. BASALAMAH', 'hmtaufikab@gmail.com', '6285311186483', 'Jl. Kesehatan IX No.7 RT. 010 / RW. 06  Kelurahan Petojo Selatan  Kecamatan Gambir  Kota Administratif Jakarta Pusat', 'Laki-laki'),
(849, 'Nur Achmad Syaifudin', 'nnurputra1@gmail.com', '6281329119509', 'Jl Gunung sindoro 18 simpang lima purwodadi grobogan', 'Laki-laki'),
(850, 'Muhamad Ibnu', 'muhamadibnu30000@gmail.com', '6281221570383', 'SUMEDANG', 'Laki-laki'),
(851, 'Evi Yulianti', 'djowoklaten@gmail.com', '6287774833596', 'Ruko Golden Vienna Blok BB no 5 Bsd Serpong Tangerang Selatan', 'Perempuan'),
(852, 'Desi Arisandi', 'setiawannomorsatu@gmail.com', '6282371238888', 'Dwt Jaya,,,,,,,\r', ''),
(853, 'Sri nurcahyati', 'srinrt@gmail.com', '6281225583413', 'Desa Pamijen sokaraja kab. Banyumas Jawa Tengah', 'Perempuan'),
(854, 'Ruslan parozi mz', 'ruslanbaturaja@gmail.com', '6285273210123', 'Jln Komisaris Umar No 137 RT 01 RW03 Kelurahan Airgading BATURAJA OKU SUMATERA SELATAN 32121', 'Laki-laki'),
(855, 'Retno Tri Wahyuni', 'enotriyuni28@gmail.com', '6282255770809', 'RT.012 RW.004 Dusun Sida Kaya Desa Seponti Jaya Kecamatan Seponti Kabupaten Kayong Utara Kalbar 78856', 'Perempuan'),
(856, 'Henti Eko Wahyuni', 'zulfikarhfz@gmail.com', '628159442443', 'DK.Mojo RT.003/002 DS. Kalang,,,,,,,\r', ''),
(857, 'BUDI EDIYA PERMABA', 'budiediya@gmail.com', '628121140522', 'Jalan Zamrud 2 No 57 Blok 2 Perum Baros Kencana, Sidorejo-Magetan', 'Perempuan'),
(858, 'Aris Saprudin', 'arissaprudin@gmail.com', '6285221357305', 'Kp. Bongkor, Kecamatan Baros, Kota Sukabumi, Jawa Barat', 'Laki-laki'),
(859, 'H. Iwa Sudarmawan, RT. 01, RW. 0', 'Laki-laki,,\r', '', '', ''),
(860, 'Hervawati', 'hervavalken234@gmail.com', '6281335555168', 'Jln Ibrahim MP no 13 RT 03 simpang ekor lubuk gunung Padang panjang timur 27225', 'Perempuan'),
(861, 'Ryan Muhammad Ghofur', 'ryanmuhammadghofur@gmail.com', '6285770219950', 'Kp. Warung Ceuri RT 02 RW 02 Desa Nyangkowek Kec. Cicurug Kab. Sukabumi', 'Laki-laki'),
(862, 'Dicky Adhinandika', 'adhinandika@yahoo.co.id', '628156002963', 'Komplek Pemda Jabar B15,,,,,,,\r', ''),
(863, 'Shinta', 'shintasakura641@gmail.com', '628122625690', 'Jl. Lawu barat no 1 papahan tasikmadu Karanganyar Jawa tengah', 'Perempuan'),
(864, 'Tatag primiawan', 'tatag.primiawan99@gmail.com', '628122939168', 'Jl rumah sakit blok G No 135 RT 05/rw08 kel Wates kec magelang utara kota magelang 56113', 'Laki-laki'),
(865, 'Ama Amin', 'ama.amacollection@gmail.com', '6281513174485', 'Apt Square Garden Langai 3 Unit 301 Perum Taman Pulo Indah,,,,,,,\r', ''),
(866, 'Ainun nadhifah', 'ud.davido@gmail.com', '6289502562430', 'Miji gg 3 no 4 mojokerto jatim', 'Perempuan'),
(867, 'Abdul Azis Hasibuan', 'azishasibuan89@yahoo.com', '6282279940583', 'Jalan Kihajar Dewantara,,,,,,,\r', ''),
(868, 'Annari', 'riana.sangaji@gmail.com', '6287878541347', 'Puri Beta 2 Kiara payung 1 no 11 ciledug', 'Perempuan'),
(869, 'Ainun Koemadji', 'aineinwarunk@gmail.com', '6285242076392', 'Gorontalo', 'Perempuan'),
(870, 'Fadhil Ismi', 'ismifadhil@gmail.com', '6282312751177', 'Lr.Andalas II no.6 Kec. Darul Imarah,,,,,,,\r', ''),
(871, 'RAHMAH', 'rahmah.faleo07@gmail.com', '628174905743', 'Jatiwarna Bekasi', 'Perempuan'),
(872, 'Fadil Syamsuddin', 'fadilsyamsuddin1995@gmail.com', '6281224956853', 'Griya pesona praja blok E 12 no 1 kecamatan Cibogo kabupaten Subang', 'Laki-laki'),
(873, 'Yoandri Angga', 'anggayoandri@gmail.com', '6282213296901', 'Jln.lintas sumatera km.7 kelurahan batu kuning RT.008 RW.003 No.06 kecamatan baturaja barat kab.ogan komering ulu ID 32121', 'Laki-laki'),
(874, 'Irina Setyarini', 'setyariniirina@gmail.com', '6282311352700', 'purwomartani,,,,,,,\r', ''),
(875, 'Nurul wakhidati ekowati', 'nurulekowati15@gmail.com', '6282123257535', 'Perum graha ciantra indah blok D8 no 10 , kalasan Sleman, Yogyakarta', 'Perempuan'),
(876, 'Muhammad NR', 'nurrahiim@gmail.com', '6285879081595', 'Kajen RT 03/ RW 01,ciantra cikarang selatan, bekasi', 'Perempuan'),
(877, 'Lukman Fathorani', 'loekmens@gmail.com', '6281809544200', 'Jl. Mentor I No. K 1, Dalangan, Tulung, Klaten, Jawa tengah', 'Laki-laki'),
(878, 'Supriyanto sitinjak', 'lwsyanmaniar36@gmail.com', '6289693901762', 'Supriyanto sitinjak', 'Laki-laki'),
(879, 'Hamam nur mustaqim', 'hamamnurm@gmail.com', '6281295966058', 'Asrama polri cipinang atas blok bx rt 10 rw 5 no 4 13240', 'Laki-laki'),
(880, 'Sari Natalina', '', '62818430251', 'Bogor', 'Perempuan'),
(881, 'Yuliana', '', '6281257895748', 'Jl.Yos sudarso IV Gg.Bhineka RT.18 No.78 Teluk Sangatta Lingga Kalimantan Timur', 'Perempuan'),
(882, 'Yanuar Wijayanto', 'yanuarwijayanto@apps.ipb.ac.id', '6285641250901', 'Perum Pura Bojonggede blok F-7 no 10 Tajurhalang Kab Bogor 16320', 'Laki-laki'),
(883, 'Bagus putu fabio', 'banabara99@gmail.com', '62817126949', 'Wisma sim jalan kebagusan raya no 18 pasar minggu kebagusan jakarta selatan 12520', 'Laki-laki'),
(884, 'Rahayu Tri Hapsari', '', '6287881166868', 'Bogor', 'Perempuan'),
(885, 'Wenny Tri Andini', 'wny.kref@gmail.com', '6281273725847', 'Jl. PangeranAntasari no.32 rt.02 rw.01 kelurahan 14 IlirPalembang', 'Perempuan'),
(886, 'Teti Hasanah', '', '6281389430399', 'Bogor', 'Perempuan'),
(887, 'Bunga', 'rizkibunga.lestari93@gmail.com', '6285156250585', 'Jl. Arwinda,,,,,,,\r', ''),
(888, 'Muhammad Farid Imansyah', 'papai.farid32@gmail.com', '6281281778070', 'Jl. Kelapa Puyuh III Blok KC No.32 Kelapa Gading', 'Laki-laki'),
(889, 'Andito Wira prabowo', 'anditowiraprabowo123@gmail.com', '62895360486100', 'JL.demak 2  NO:24 RT/RW : 006/011 Kel.Margadana Kec.Margadana Kota Tegal Jawa Tengah', 'Laki-laki'),
(890, 'Elvy Yunita', '', '628129392757', 'Depok', 'Perempuan'),
(891, 'Farid Jamiel', 'faridz.jamiel@gmail.com', '6285797250037', 'Perum buana resident nazar 1 no 25 Rt. 005 Rw. 021 kek. Margawati kec. Garut kota kab. Garut Jawa barat', 'Laki-laki'),
(892, 'Dony Wicaksono', 'donywtrader99@gmail.com', '6281802798899', 'Jl. Yanatera Raya No.16 Komplek Bulog Rt/Rw 001/001 Jati Melati Pondok Melati Kota Bekasi', 'Laki-laki'),
(893, 'Ima', 'imama_zuchroh@yahoo.com', '62811362550', 'Jl. Terusan Candi Mendut 3A Malang', 'Perempuan'),
(894, 'Ramdani Rafliansyah', 'ramdhanirafliansyah1996@gmail.com', '6287708266008', 'Jl kebon mangga 4', 'Laki-laki'),
(895, 'Andy Hidayat', 'andy070609@gmail.com', '6281908447111', 'Griya Galeri Pamulang Blok A No.14 Jl. Surya Kencana Raya,,,,,,,\r', ''),
(896, 'Shanty', 'shantylestarie@gmail.com', '628111849981', 'Jl L no 21B cipinang muara jaktim', 'Perempuan'),
(897, 'Isman Wiratmadi', 'wiratmadi17@gmail.com', '6287738146751', 'Dusun Sukoharjo,,,,,,,\r', ''),
(898, 'Jufri', 'jufri2604@gmail.com', '6285224607126', 'Kota Baubau', 'Laki-laki'),
(899, 'Hadi Susanto', 'hadi7578@gmail.com', '6285226875870', 'Sejahtera Asri residence blok C.13 jln. Sematang Borang rt.101/36 kel. Sako kec. Sako Kota Palembang', 'Laki-laki'),
(900, 'Muhammad Yasin Halim', 'm.yasinhalim@gmail.com', '6281212793342', 'Jalan Gelatik 2 No. 100 Rt 10/ Rw 01 Kel. Pondok Betung,,,,,,,\r', ''),
(901, 'Wisnu Hadi Prayitno', 'wisnuhadiprayitno52@gmail.com', '6282154219211', 'Jln persatuan RT 31 no 39 Manggar baru Balikpapan timur', 'Laki-laki'),
(902, 'Ratih devi lestari', 'sanggarmaritza@gmail.com', '6282323990750', 'Jl.nuri,,,,,,,\r', ''),
(903, 'Ega Wahyudi', 'wahyudiega2@gmail.com', '6289504148111', 'Jl.Danau Sentarum Gg.Fajar Kencana Jalur 1 no 5 , rt/rw: 01/05, desa kedungkelor, kecamatan warureja, kabupaten tegal, jawa tengah', 'Perempuan'),
(904, 'Nussi Nusantari', 'nussi.nusantari@gmail.com', '6282130226333', 'Jl. Pasir Impun komp. D\'Village I kav. 6 kec. Mandalajati Bandung', 'Perempuan'),
(905, 'Kukuh Nur Taufiq', 'kukuhnurtaufiq.3belast@gmail.com', '6285227336536', 'Desa Kebasen RT 01 RW 02 Kec. Kebasen Kab. Banyumas,,,,,,,\r', ''),
(906, 'Ari Kurniati', 'arikurniati96@gmail.com', '6281316722880', 'Perumahan permata karisma Jl topaz 1 blok D no 29 muara sanding Garut kota Jawa barat', 'Perempuan'),
(907, 'Etika Suryandari', 'aisyaavicenna@gmail.com', '6282213122237', 'Perumahan Griya Bogor Asri,,,,,,,\r', ''),
(908, 'Kesinavera Ambarita', 'ambarita220110@gmail.com', '6281271562360', 'Desa Koto Keras Pesisir Bukit Sungai Penuh', 'Perempuan'),
(909, 'NUR WAHIDA', 'ida_nurbin@yahoo.co.id', '6285255070611', 'BTN. Minasa Upa G 17 no. 3,,,,,,,\r', ''),
(910, 'Dedi hidayat', 'hidayatdedi18@gmail.com', '628127846157', 'Jalan raya palembang betung km18 no 68 rt 16 rw 03 kelurahan sukomoro kecamatan talang kelapa kabupaten banyuasin provinsi sumatera selatan', 'Laki-laki'),
(911, 'Fianti', 'sielvia_tio@yahoo.com', '628113288857', 'Pinus asri', 'Perempuan'),
(912, 'HUMAEDI', 'humaedi_93@yahoo.com', '6282213785479', 'Kp.Renged Ds.Renged Kec.Kresek Tangerang-Banten', 'Laki-laki'),
(913, 'M Fajar Yanuar', 'yanuar12fajar@gmail.com', '628111634612', 'Jl gending no 14 Rt 06 Rw 06 kota kulon sumedang selatan,,,,,,,\r', ''),
(914, 'Muslih Agung Nugroho', 'muslihagung@gmail.com', '6289605965305', 'Jl. HOS Cokroaminoto No.52, Jawa Barat. Indonesia', 'Laki-laki'),
(915, 'Rafika diana', '', '6285279004056', 'Jl soekarno hatta no 03 rt 016 rw 05 kp sinar binglu waylunik panjang bandar lampung', 'Perempuan'),
(916, 'Maryam Nazihah', 'mar.nazihah@gmail.com', '6281290910700', 'Jl. H. Usman No.119 RT 008/008,,,,,,,\r', ''),
(917, 'Mochammad Buchori', 'buchori56947@gmail.com', '6281219573074', 'Jln. Jend. Sudirman No. 1 Kel. Alliritengae kec. Turikale Kab. Maros- Sulawesi Selatan 90511', 'Laki-laki'),
(918, 'Dwi yulia rahayu', 'luv.yulia@gmail.com', '6281280500177', 'Jl Kebantenan 5 rt 001 rw 06 no 25 semper timur cilincing jakut 14130', 'Perempuan'),
(919, 'Muhammad Sahlani Yusron', 'yusronsahlani11@gmail.com', '6285257366171', 'Jl. A. Yani no 76 Patokan - Kraksaan,,,,,,,\r', ''),
(920, 'Nuke Rachniawaty', 'tehyuke@gmail.com', '6283811552007', 'Jl. Cipinang Cempedak IV No.4 Rt.011 Rw.06 (samping Puskesmas) Polonia Jatinegara Jakarta Timur 13340', 'Perempuan'),
(921, 'Tika Yuliana Ayuningsih', 'tika.yuliana@gmail.com', '6281298785555', 'LKP KEMBAR,,,,,,,\r', ''),
(922, 'Giwang Purnama Sari', 'giwangpurnama@gmail.com', '6281322810909', 'Jl Otista Tegallega Barat.no 71b/95 Bandung', 'Perempuan'),
(923, 'Rita Herdiawati', '', '6282328899955', 'Jln.Awang Long Senopati GG.1 RT.2 No.32 Kel.Sukarame Kec.Tenggarong', 'Perempuan'),
(924, 'Reza Akbar', 'rezakbr10@gmail.com', '6281320941233', 'Gunung Anyar Harapan ZA - 14', 'Laki-laki'),
(925, 'BENNY DWI ASTOMO', 'benny.astomo@gmail.com', '60182210890', 'Serimaya condo Savanna D26-12 Jalan Jelatek setiawangsa Kuala Lumpur malaysia', 'Laki-laki'),
(926, 'Surya ramdani', 'adankeceh123@gmail.com', '628156151472', 'Kp.cibogo desa cikahuripan', 'Laki-laki'),
(927, 'Ricky Zulfikhar Fahraz', 'rickyzulfikarfahraz@gmail.com', '6282195017021', 'Jl. Raya selorejo Rt4 Rw1,,,,,,,\r', ''),
(928, 'Andi Masyita', 'syita.masyita@gmail.com', '6281332575762', 'Perumahan Bridgetown GE-07,Ds Selorejo, Kec Mojowarno, Kab. JOMBANG, JATIM', 'Laki-laki'),
(929, 'Fatmah Widyarti', 'widyartifatmah@gmail.com', '6282122363746', 'Pondok gede', 'Perempuan'),
(930, 'Titto B', 'titto.java@gmail.com', '6285222550090', 'Margahayu kencana,,,,,,,\r', ''),
(931, 'Dessy andriany', 'dessyandriany1976@gmail.com', '6282170005802', 'Jl penerbangan no 18 kec pamak kel tebing tg balai karimun kepri', 'Perempuan'),
(932, 'Sofyan', 'syayan64@gmail.com', '6281380707375', 'Jl. Hj Balok IX No.110 RT.15 RW.009 Pekayon,,,,,,,\r', ''),
(933, 'Husny suherman', 'firdausazzam66@gmail.com', '628127854075', 'Jl. Riau No.42 RT.02/V Kel. 26 Ilir kec. Ilir barat 1 Palembang', 'Laki-laki'),
(934, 'Salma', 's94479137@gmail.com', '6282283782275', 'Perm.taman surya indah blok s no 11', 'Perempuan'),
(935, 'Alamsah  Firdaus', 'alamsahfirdaus19@gmail.com', '6282321474731', 'Dsn. Pasanggrahan Rt 03 Rw 04 Ds. Cijambu,,,,,,,\r', ''),
(936, 'LUTFIYAH', 'lutfiyahahmad7633@gmail.com', '6281228499940', 'Kp. Cipining Desa Argapura  rt 01 rw 04 kec. Cigudeg kab. Bogor Jawa Barat 16660', 'Perempuan'),
(937, 'Fitri wulandari', 'fitri.grahamitra@gmail.com', '6281318112411', 'Citra indah city cluster bukit raya M11 no 19 sukamaju jonggol bogor', 'Perempuan'),
(938, 'Nur vina agustiani', 'navinalatte@gmail.com', '6282227566795', 'Jl proklamasi rt 01 rw 02 bondo bangsri jepara', 'Perempuan'),
(939, 'Sari Rosmawati', 'sarirosehidayat@gmail.com', '6285773294546', 'Jln. RE Sumantadiredja No. 1 Rt.001/07 Rangga Mekar,,,,,,,\r', ''),
(940, 'Marlan Umar', 'marlanpawara23@gmail.com', '6281342273853', 'Jln mesjid raya no 42 kab Barru Sul-Sel', 'Laki-laki'),
(941, 'ervin indah kurnia', 'ervinindahkurnia@gmail.com', '6282330366983', 'jl.kecipir perum borneo blok G.253 Palangka raya kalteng', 'Perempuan'),
(942, 'sri mulyani', 'aleshaputri1112@gmail.com', '6281385682566', 'jl.kopo gg.sukaleueur dlm no.109 rt03/rw06 bandung 40232', 'Perempuan'),
(943, 'Samadikun', 'emaildikun@gmail.com', '6281336488303', 'Jl. Arjuna C 24 RT 03 Rw 26 Kel. Tompokersan Kab. Lumajang', 'Laki-laki'),
(944, 'Dina sukmawati', 'dinablitar02@gmail.com', '6281233096016', 'Jl masjid no 47 Kel kauman kec Srengat RT 01 RW 02 kab Blitar jawatimur', 'Perempuan'),
(945, 'Evy Prilani', 'evyprilani@gmail.com', '628176478117', 'D\'Java Residence Jl.Darmawangsa IX Blok B3-20 Simpangan Cikarang Utara Bekasi Jawa Barat', 'Perempuan'),
(946, 'Dina Natalia', 'dinanatalia46@gmail.com', '6281298199777', 'Jl. Pondok Jaya VI /no.23,,,,,,,\r', ''),
(947, 'Drynoto', 'dreynoto@gmail.com', '6281250308654', 'Desa tumanggal rt 14 rw 05 kec Pengadegan Kab Purbalingga 53393', 'Laki-laki'),
(948, 'Lidya Nurullita', 'ldldnurullita@gmail.com', '6282115252326', 'Kp.Andir RT 01/13,,,,,,,\r', ''),
(949, 'Hari Wahyudi', 'fbmyhero2016@gmail.com', '6285729518081', 'Jl Raya Giwangretno No 6 Sruweng Kebumen Jawa Tengah 54362', 'Laki-laki'),
(950, 'dini agung', 'diniagung@yahoo.co.id', '6281513351875', 'Sapo baung no. 5 kebagusan jak sel', 'Perempuan'),
(951, 'imran darwis', 'imran_dede@yahoo.co.id', '6281355572324', 'Jl. Pulau seram no. 16 kota Palopo Sulawesi selatan', 'Laki-laki'),
(952, 'Agung Laksono', 'agunglaksono240485@gmail.com', '6281289459126', 'Griya Candramas blok ip no 27,,,,,,,\r', ''),
(953, 'Atika', 'basmallah.1@yahoo.com', '6282293459790', 'Desa badumpayan, rt 23 rw 19, desa pepe, kec. Sedati, sidoarjo, jawa timur, 61253', 'Laki-laki'),
(954, 'Dedy Darmawan', 'weeliantee@gmail.com', '628113130032', 'RT. 001 RW. 001 - Buluagung - Karangan - Trenggalek', 'Laki-laki'),
(955, 'Rhafi Alatas', 'tajchoor.biiaa@yahoo.com', '628118801140', 'jl bhayangkara 2 no.2 sindangbarang bogor barat', 'Laki-laki'),
(956, 'Supriatin', 'supriatin154@gmail.com', '6281285971101', 'Kp Babakan Rt 02/05 Ds. Dayeuh Cileungsi', 'Perempuan'),
(957, 'Yusnita Ariyanti', 'yusnita.593@gmail.com', '62895321990409', 'Jl kampung baru rt 011/002 no 21 f gg h Samin kelapa dua wetan ciracas jakarta timut', 'Perempuan'),
(958, 'Adhitia putra herawan', 'a.putraherawan@gmail.com', '628112342108', 'Jl manggar II,,,,,,,\r', ''),
(959, 'Amalia mindarsih', 'liakhansa1758@gmail.com', '6285736320096', 'Perum AAS RESIDENCE NO 15 kartasura sukoharjo jawa tengah', 'Perempuan'),
(960, 'Febtia mulia kusumasari', 'fmk_hitam@yahoo.co.id', '6287787091333', 'Jl . Tegal parang utara no 50 rt2rw7 mampang prapatan jakarta selatan', 'Perempuan'),
(961, 'Dina riksa juwita', 'zeemikha@gmail.com', '6287822177892', 'Komplek cibaduyut permai jl.borobudur no.1 bdg', 'Perempuan'),
(962, 'Syaiful Anirius', 'syaifulanirius@gmail.com', '6285780101654', 'JL. Pisangan Baru tengah no. 28 Rt. 09/11 matraman jak tim', 'Laki-laki'),
(963, 'Yulianti', '', '6287781498858', 'Bogor', 'Perempuan'),
(964, 'Nurul Hidayah', 'nurul.en.ha@gmail.com', '6289630964717', 'Griya @ Bintaro No. A3 Jl. Panti Asuhan,,,,,,,\r', ''),
(965, 'Moh. Arahman Alhidayah', 'arxhunter05@gmail.com', '6282290427559', 'Kec. Parigi Kab.Parigi Moutong Sulawesi Tengah', 'Laki-laki'),
(966, 'Zulfiani', 'zulfiani87@gmail.com', '628114450912', 'BTP Blok AA Idea Cluster No.7 ,,,,,,,\r', ''),
(967, 'Opin Grasela', 'graselaopin@gmail.com', '6289609021372', 'Jln. Ariodilla III, Tamalanrea - Makassar', 'Perempuan'),
(968, 'Siti Pujiwati', 'pujianto.wanto@gmail.com', '6281329574246', 'Ds. Sendangmulyo rt003 rw001 kec. Sluke. Kabupaten rembang', 'Perempuan'),
(969, 'AZKA BADRUZZAMAN', 'abianas88@gmail.com', '6281904427873', 'Jl. Pesantren No 25 Rt03 Rw03 Desa Cepokomulyo Kecamatan Gemuh Kabupaten Kendal Jawa Tengah', 'Laki-laki'),
(970, 'Tiwik Indriaty Ismadi', 'tiwikindriaty@yahoo.com', '6587690404', 'Woodlands St 82 Block 843  03-81 Singapore 730843', 'Perempuan'),
(971, 'Evi Meilia zakaria', '', '6285321855681', 'tersan kopoo no 551 Cilampeni katapang  bandung', 'Perempuan'),
(972, 'Ainur Rohmah', 'aainur888@gmail.com', '6282214914857', 'Dukuh glagah RT.8 RW.1 desa sukowati kecamatan kapas kabupaten Bojonegoro', 'Perempuan'),
(973, 'Fauzan zam\'an', 'osanzaman@gmail.com', '6285691501619', 'Jalan Swadaya 2 tanah 100 No.13 Rt 005 Rw 04 Kelurahan Sudimara Jaya ,,,,,,,\r', ''),
(974, 'Abraham shomad', 'abrahamshomad5@gmail.com', '6282253378889', 'Jl. Wolter Monginsidi No. 36 Kota Samarinda', 'Laki-laki'),
(975, 'Nuryatin', 'nuryatin28@gmail.com', '6287770246633', 'Purbalingga,,,,,,,\r', ''),
(976, 'Eddi Santoso', 'santeddi74@gmail.com', '6281211311010', 'Jl. Emerald II No.40 PPS Manyar Gresik', 'Laki-laki'),
(977, 'dr. Novi Indah.P', 'dielovie@yahoo.co.id', '6281226999993', 'Griya Timoho Asri B4,,,,,,,\r', ''),
(978, 'Rini Susanti', 'rinis2526@gmail.com', '6285261878760', 'Jl.H.M.Nur No.88 Kec.Datuk Bandar Kota Tanjungbalai Sumatera Utara', 'Perempuan'),
(979, 'Galih', 'galih.tm01@gmail.com', '6282157367943', 'Kerten rt01/14 laweyan surakarta', 'Laki-laki'),
(980, 'Wiwik Hartini', 'wiwikmr30@gmail.com', '62895379095324', 'Baleturi,,,,,,,\r', ''),
(981, 'Mochamad Beni Antok', 'mochamad.beni.antok@gmail.com', '6285693446626', 'Perumahan bumi citra lestari blok f5 no 16 desa waluya jaya lemah abang kec l. Cikarang Utara kab bekasi', 'Laki-laki'),
(982, 'Sholahuddin', 'sholahuddin.thohir@gmail.com', '6281231794575', 'Jl. Alhidayah RT 04/02  No. 86 Pangkalan Jatibaru Cinere Depok', 'Laki-laki'),
(983, 'Kang Nana', 'nanarodiana153@gmail.com', '6281210000690', 'Jl.Al Mubarok 2 no.34 Joglo Kembangan Jakarta Barat', 'Laki-laki'),
(984, 'Lia Sri Mulyati', 'liadjenal@gmail.com', '6287885867167', 'Green Harjamukti D18 Jl. Pramuka Kalijaga - Harjamukti - Cirebon', 'Perempuan'),
(985, 'Dwi Andriani', 'andriani.paidjan@gmail.com', '6283890792997', 'Kemang Pratama 3,,,,,,,\r', ''),
(986, 'Nurul Anwar', 'nurulanwar7788@gmail.com', '6281289198392', 'Perum Regency jl berkian 7 no2rt01/04 cikampek utara kec kotabaru kab karawang', 'Perempuan'),
(987, 'Hendri', 'thejitblackrebel@gmail.com', '6285813450007', 'Hendri shop mega regency blok D 32 no 39 suka ragam serang baru bekasi', 'Laki-laki'),
(988, 'Sisca Agnessia', 'sisca.anesa@gmail.com', '6281310051709', 'Jl. Ismaya Raya Blok U8/9 Vila Pamulang,,,,,,,\r', ''),
(989, 'syahril', 'syahril.paytren17@gmail.com', '6285719122085', 'Jl.buaran rt 009/ rw 002 no 12 kel cakung timur kec cakung  jakarta timur', 'Laki-laki'),
(990, 'Betta Anugrah Wibawa', 'bettanugrah@gmail.com', '628561212551', 'Jalan Telesonik Ujung No. 1,,,,,,,\r', ''),
(991, 'EMMA EKA PUTRI', 'emaeka1204@gmail.com', '6285268237735', 'Suci Laundry. Jl. Jaksa No. 66 Kel. Batu Belang Jaya Kec. Muaradua Kab. OKU Selatan, RT 10 / RW 03, Kelurahan Bunder, Kecamatan Cikupa, Kabupaten Tangerang, Provinsi Banten. Kodepos 15710.', 'Laki-laki'),
(992, 'Hanifa. A', 'hanifa.bkt@gmail.com', '6285274111432', 'Jl. Bahder Johan no.1/123 Bukittinggi Sumbar 26124', 'Perempuan'),
(993, 'Dadan Rosidan', 'drosidan@yahoo.com', '62811983509', 'Perum Mitra Batik,,,,,,,\r', ''),
(994, 'WIYOKO', 'bisasajabro@ymail.com', '6281808190878', 'AL PONSEL, Jl. Batik Semar 2, Blok E. 447,  Rt.003/Rw.017 Kawalu Tasikmalaya', 'Laki-laki'),
(995, 'Ely wahyuni', 'elywasyuni05@gmail.com', '6282139470515', 'Jalan raya kajar tengguli RT 1 RW 2 prambon No 19 Sidoarjo', 'Perempuan'),
(996, 'Mhd. Kamal Ruzamal', 'mhd.kamal59@gmail.com', '6285263116142', 'Perumahan RAPP Town Site II Baru BLok OO no 5 Pangkalan Kerinci RIau', 'Laki-laki'),
(997, 'Lya Handayani', 'lya.honey@gmail.com', '6281331550370', 'Perum Taman Kedaung Jl. Kemuning 10 F6-25 Pamulang -Tangsel', 'Perempuan'),
(998, 'Elvira', '', '628123179092', 'Samarinda', 'Perempuan'),
(999, 'Nor ashikin abd Wahab', 'nor.ashikin.abdul.wahab@gmail.com', '60125129473', 'No 252 Persiaran Venice Raya 8,,,,,,,\r', ''),
(1000, 'Darul Kristanto', 'kopirosojbr@gmail.com', '6285236056056', 'Perumahan kodim no f27 desa jubung kecamatan Sukorambi kabupaten Jember 68161', 'Laki-laki'),
(1001, 'Warsa Atmadinata', 'tatawarsa@gmail.com', '6285719955828', 'Perumahan Flamboyan Garden 1,,,,,,,\r', ''),
(1002, 'Luthfi Alfafa', 'luthfikeren@gmail.com', '628567144126', 'Jalan Merbabu No 9', 'Laki-laki'),
(1003, 'Ilhamdi', 'juraganmadubangka@gmail.com', '6281373788196', 'Jl Pinus III no 393 RT 12/03 PERUMNAS BUKIT MERAPIN KELURAHAN BUKIT MERAPIN KECAMATAN GERUNGGANG KOTA PANGKALPINANG 33123', 'Laki-laki'),
(1004, 'Bangbang Ali Nurzaman', 'AKUNSEO1989@GMAIL.com', '6285711270577', 'Kp. Moyan RT/RW 01/11 desa bantar Jaya kecamatan rancabungur kabupaten bogor', 'Laki-laki'),
(1005, 'Artamty Sastry Ayulendry', 'asalendry@gmail.com', '6281331444666', 'Latsari II GG Sejahtera III NO.20 TUBAN', 'Perempuan'),
(1006, 'Vina Pardiyati', 'vinanathea@gmail.com', '6281322229701', 'Kp.citiru RT 01rw 06 desa Padasuka kec. Kutawaringin', 'Perempuan'),
(1007, 'Rahma', 'cgm.rahma@gmail.com', '6281341610789', 'jln. jambu btn puri maharani blok B No 16 kendari', 'Perempuan'),
(1008, 'Sari Narulita', 'li_ta@ymail.com', '6281575248180', 'Perum Ambarawa Asri Jl.intan III/168 rt 2 rw 12 Bawen kab.Semarang', 'Perempuan'),
(1009, 'Julita', 'julita050387@gmail.com', '6285263656039', 'Jl.tengku bey kelurahan air dingin pekanbaru riau', 'Perempuan'),
(1010, 'Ayuningtyas Sujono Putri', 'ayuningtyas.putri@gmail.com', '628566697915', 'Pondok karya,,,,,,,\r', ''),
(1011, 'Sri purnawati suryo', 'ryry2578purnawati@gmail.com', '628115301336', 'Jl.dr.soetomo rt.7 no.7.Kel karang balik.tarakan barat.kalimantan  utara', 'Perempuan'),
(1012, 'Arham Hadar', 'arhamhadar@gmail.com', '628125330053', 'Jl. KH Wahid Hasyim 2 Perumahan Pinang Mas D-3 RT06 Sempaja Barat Samarinda', 'Laki-laki'),
(1013, 'Muhammad Ibnu Mahdi M.N', 'callmeibnu@gmail.com', '6282122289491', 'Taman Tirta Cimanggu Jl. Oscar Blok E5 no 19 Mekarwangi Tanah Sareal Bogor', 'Laki-laki'),
(1014, 'Razan Muhammad Syafiq', 'syafiqrazan007@gmail.com', '6282118555069', 'Kelurahan rancakek kencana blok 15 rt 12 no 106 Kab. Bandung,,,,,,,\r', ''),
(1015, 'Anik setiyowati', 'gsafiqa@yahoo.com', '6281393950918', 'Kragilan rt 01 rw 06 kedungwinong nguter sukoharjo 57571 jawa tengah', 'Perempuan'),
(1016, 'Tri Wahono', 'tri.wahono@hotmail.com', '6281380850295', 'CPI Camp Krakatau 201,,,,,,,\r', ''),
(1017, 'IIN MULYANI', 'iin.mulyani.ims@gmail.com', '6281284268811', 'Jl.gaharu atas C no.25 RT.004/005 Kel.kedungjaya kec.Tanah Sareal kota Bogor 16164', 'Perempuan'),
(1018, 'Parnedi', 'parnedi275@gmail.com', '6281220999092', 'Jalan terusan margacinta ni 202 bandung,,,,,,,\r', ''),
(1019, 'Muhammad faizal hafidz', 'faizalhafidz.mfh@gmail.com', '6288809330409', 'Jl. Jendral Sudirman gang H. Rasam, 40287', 'Laki-laki'),
(1020, 'Cecep Hadiyan', 'hadiyan368@gmail.com', '6281220151511', 'PT. RICKY PUTRA GLOBALINDO Jl. Raya Bandung Garut Km.28 Cicalengka - Kab. Bandung', 'Laki-laki'),
(1021, 'Yesi gusniarti', 'yesigusniarti706@gmail.com', '6281364975544', 'Pasaman Sumatera barat', 'Perempuan'),
(1022, 'anto sinrang', 'antosinrang0211@gmail.com', '6281347614150', 'jl labu hijau 5 no 235 perum benkuring samarinda', 'Laki-laki'),
(1023, 'Badru salam', 'badrusalam210989@gmail.com', '6283818933568', 'Kp babakan RT 01 RW 09 kelurahan bubulak kecamatan bogor barat kota bogor', 'Laki-laki'),
(1024, 'TIRMIZI BIN ARIS', 'tirmizikazuki@gmail.com', '60169359407', 'BENTONG,,,,,,,\r', ''),
(1025, 'Maulana Agung Pangestu', 'maulana.agung@raharja.info', '6285888241172', 'Jl.Dahlia 8 BlokF20 no 21,PAHANG,MALAYSIA', 'Laki-laki'),
(1026, 'Tumilah', 'milatobi@gmail.com', '85298405427', 'rt 1, pdk.Indah, Kutabumi , Pasarkemis, Tangerang', 'Laki-laki'),
(1027, 'Alek Yaziid', 'ayaziid@gmail.com', '6285774443088', 'Perum Alam Tirta Lestari Blok M 10 No 2 desa Pagelaran Kec Ciomas Kab Bogor', 'Laki-laki'),
(1028, 'heny hanyati', 'henskingall@gmail.com', '6281808170205', 'Cluster mutiara residence blok A16 pondok petir bojongsari depok', 'Perempuan'),
(1029, 'ade haer', 'adehaer@gmail.com', '62818754336', 'Komplek PDK Blok A Jl. Cempaka No. 45 Kota Serang,,,,,,,\r', ''),
(1030, 'Muhammad choirul jihad', 'mcjihad99@gmail.com', '6281328969028', 'Mbutoh, Banten 42124', 'Laki-laki'),
(1031, 'Dian Widyawati', 'dianwidyawati@ymail.com', '6281809898070', 'Komp sulaksana makmur kav raya no.15, harjosari, madyocondro, secang, magelang. Rt/06 rw/02', 'Laki-laki'),
(1032, 'SUSANTI TUNGGA DEWI', 'dsanti058@gmail.com', '6287855585494', 'JEMURSARI SELATAN VI/20.A  SURABAYA', 'Perempuan'),
(1033, 'Masrifah', 'rifahharun9@gmail.com', '6282112762374', 'Perum telaga mas blok H10 no 29 Bekasi Utara 17123', 'Perempuan'),
(1034, 'Hendro Aprianto', 'apriantohendro26@gmail.com', '6282254197271', 'JL Dr Sutomo gg seruni 46 RT 04', 'Laki-laki'),
(1035, 'siti nurjanah', '', '6282234494098', 'jl musi tanjungsari', 'Perempuan'),
(1036, 'Agung Renggono Sihsasongko', 'renggono.agung@gmail.com', '6287878445895', 'Jl. Kutilang Blok C2 no.1 RT 005 RW 006 Komplek Walikota Sukapura Cilincing Jakarta Utara 141410', 'Laki-laki'),
(1037, 'Lilis Puspitasari', 'syalia.puspita@gmail.com', '6285649988885', 'perum permata kota lima blok A4 talapan kelurahan bago kecamatan tulungagung kabupaten tulungagung', 'Perempuan'),
(1038, 'Sutrisno hadiwibowo', 'aqmarpandu@gmail.com', '6281316632550', 'Ciheuleut Pakuan Rt 02 Rw 06 tegallega bogor tengah kota bogor', 'Laki-laki'),
(1039, 'Guguh Prihandoko', 'guguh.prihandoko@gmail.com', '6282157122803', 'Citraland cluster Horizone i3 no. 7 Samarinda Kalimantan Timur', 'Laki-laki'),
(1040, 'Eril Habibi', 'erilhabi2@gmail.com', '628117870891', 'Jl demang lebar daun no 178 palembang', 'Laki-laki'),
(1041, 'Siti munawaroh', 'warohm904@gmail.com', '85254754348', 'Jl.sunan Ampel Rt03Rw03.kelurahan sepanjang.kecamatan Gondanglegi kabupaten malang', 'Perempuan'),
(1042, 'Hari Sumitro', 'harisumitro@yahoo.com', '628121711373', 'Sempaja Lestari Indah Blok D no 1 Samarinda', 'Laki-laki'),
(1043, 'Ahmad mansyur', '', '628561198589', 'Tigaraksa,,,,,,,\r', ''),
(1044, 'Sarmin Ma\'ruf', 'masdul14@gmail.com', '6285757173015', 'Desa potanga kec,tangerang', 'Laki-laki'),
(1045, 'Muhamad Yasin', 'yassin6720@gmail.com', '6288212643712', 'Jl.Cilandak Marinir GG.Pahala RT.13 Rw.05 No.49 Kel.Ragunan Kec.Pasar Minggu Jakarta Selatan 12550', 'Laki-laki'),
(1046, 'Hinda Sri susilowati', 'hindasrisusilowati@gmail.com', '6281554433541', 'Ds. Kepanjen Pace Nganjuk.', 'Perempuan'),
(1047, 'Tarmid', 'muhmmadtarmid@yahoo.co.id', '6281324657744', 'Jln.pendidikan blok bangong desa tanjungkerta kec. Kroya kab.indramayu jawa barat', 'Laki-laki'),
(1048, 'Timang sutera islamie', 'timangsuteraislamie10@gmail.com', '6281316856569', 'Villa kenali permai blok k 2 no.14. Mayang mangurai jsmbi', 'Perempuan'),
(1049, 'Koesnudin', 'Koessemba@gmail.com', '628112441624', 'Cirebon', 'Laki-laki'),
(1050, 'Yeni Ariyani', 'yeni_ariyani@yahoo.com', '6285888233699', 'Jl. Tegal Parang Utara 2 no.42 Jaksel 12790', 'Perempuan'),
(1051, 'Rahmad Hidayadi', 'yadi.iofc@gmail.com', '6289620317802', 'Cluster Dika Indah Residenc 2 Blok C5 Pemagarsari,,,,,,,\r', ''),
(1052, 'Tiyan septiani', 'tiyanseptiani@gmail.com', '6282299038450', 'Cimanggu gg tijan rt 001/015. Kel. Kedung waringin kec.tanah sareal kota bogor', 'Perempuan'),
(1053, 'Muhammad Mufrih Rizqullah', 'therizqubiz@gmail.com', '6285697849756', 'Jl. Palsigunung Tugu Rt003/002,,,,,,,\r', ''),
(1054, 'Untoro Hadi Suharto', 'untorohadisuharto@gmail.com', '6285799033445', 'Jl. Mulia II No.09 Plemburan Tegal, Cimanggis Depok.', 'Laki-laki'),
(1055, 'Metu aji', 'ajikaji74@gmail.com', '6285225104229', 'Jln kartini gang palen no 28 desa sawahan kabu', 'Laki-laki'),
(1056, 'Nuryanto', 'Iyansolo34@gmail.com', '6282255522134', 'Jalan Pakunegara Gg ramania no 150 kel raja kab Kotawaringin Barat', 'Laki-laki'),
(1057, 'Muhammad Imam Aminuddin', 'imamaldin77@gmai.com', '62811319665', 'Dusun wahyu rt/rw : 01/01 no. 34 desa plosowahyu kecamatan  Lamongan kabupaten Lamongan', 'Laki-laki'),
(1058, 'Edwin Emery', 'eep.faztraxcenter@gmail.com', '6281218918995', 'Pondok Kelapa - Jakarta Timur', 'Laki-laki'),
(1059, 'Nining Prasetyaningtyas', 'niningprasetya12@gmail.com', '6282257650147', 'Jln Perintis V no 1 Rt 004 Rw 11 Kel Ngagel Rejo Kec Wonokromo Surabaya', 'Perempuan'),
(1060, 'Ahmad Rifai', 'ahmadrifai10031984@gmail.com', '6282337052327', 'Margomulyo Puro Karangmalang Sragen', 'Laki-laki'),
(1061, 'Dian Inaya Agustina', 'dian.inaya@gmail.com', '6281357475200', 'Jl MH Thamrin GG rukun no 22 RT.10 RW.02 Ledok Wetan', 'Perempuan'),
(1062, 'BAIQ NURUL FATMI', 'baiqnurulfatmi@gmail.com', '6282311712015', 'Perumahan Metland Menteng Klaster Teresta A3 Ujung Menteng Cakung Jakarta Timur', 'Perempuan'),
(1063, 'Utami Sri Rahayu', 'katuair@yahoo.com', '628128889453', 'Griya kAtulampa blok C3/no 3 bogor timur', 'Perempuan'),
(1064, 'Dwi Purwaningsih', 'dpurwaningsih955@gmail.com', '6285350088500', 'Jl. Antang. Komplek P3S no.3. Kota Palangkaraya', 'Perempuan'),
(1065, 'randi andika firmansyah putra', 'rayyaku.ra@gmail.com', '6281262331918', 'jl. purnabhakti 9 komp RS Sitanala ,,,,,,,\r', ''),
(1066, 'Khadijah Salleh', 'khadijah255@yahoo.co.uk', '60104398926', 'No 37, Tangerang', 'Laki-laki'),
(1067, 'Setiawati Puja', 'Setiawatipuja@gmail.com', '628124442867', 'Jl.godean km 8, jalan setia perdana U13/25F, Alam Nusantara, 40170 shah alam, selangor, malaysia', 'Perempuan'),
(1068, 'Joeni Ratnawati', 'joeni_dong@yahoo.com', '6285212692637', 'Jln mandar no 9 Beji timur Depok', 'Perempuan'),
(1069, 'Istiklaliyatuz Zuhro', 'istiklaliyatuz@gmail.com', '6282141971443', 'RT. 07 RW.03 Jatiprahu Karangan Trenggalek Jatim', 'Perempuan'),
(1070, 'Elvi Ari Astuti', 'elviariastuti@gmail.com', '628123082510', 'Perum Puri Astapada Indah 1 Blok P - 12 Jombang', 'Perempuan'),
(1071, 'Widiyastuti Nurchayati', 'distributorhijabalilajogja@gmail.com', '6281904186793', 'Ngebel gede RT 10 RW 34 no 118 Sardonoharjo ngaglik sleman diy', 'Perempuan'),
(1072, 'Fauzan', 'fauzanriyadi7@gmail.com', '6281295336738', 'Jl. Lingkungan condet raya', 'Laki-laki'),
(1073, 'Ajeng indriani', 'ajengindriani12@gmail.com', '6281282848118', 'Green residence tanah baru pomad bogor utara', 'Perempuan'),
(1074, 'GUGUN GUMELAR', 'gugun76gumelar@gmail.com', '6281210171120', 'Jl. Nikel V RT 002 RW 009 Perumahan Bugel Mas Indah Kelurahan Bugel,,,,,,,\r', ''),
(1075, 'Agung Mairina', 'mairina.agung@gmail.com', '6282179031317', 'Perumahan Bukit Sukabumi Indah (Puskud) Jl Delima V Blok C7 No 3 kelurahan Sukabumi Indah Kec Sukabumi Kota Bandar Lampung, Kecamatan Karawaci Kota Tangerang, Propinsi Banten', 'Laki-laki'),
(1076, 'Yuyun febriani', 'hello.febriyun@gmail.com', '6282186225322', 'Jl. Sako baru no 286 palembang', 'Perempuan'),
(1077, 'Kulsum', 'umi78kulsum@gmail.com', '6285295347232', 'Dsn Lampeni RT 016 RW 004 Ds. Tanjungsari Timur Cikaum Subang Jawa Barat 41253', 'Perempuan'),
(1078, 'Mona Nabhan', 'mona.bidayati@gmail.com', '628111777160', 'Komplek Dhaya Pesona Blok A6/11,,,,,,,\r', ''),
(1079, 'Musriatun', 'srisriatun37@gmai.com', '6281232570731', 'jln majapahit rt9 rw3 kec Benjeng kab Gresik Jawa Timur', 'Perempuan'),
(1080, 'Hasan basri', 'hasanmssu@gmail.com', '6282111770815', 'Prum Mutiara bekasi jaya blok k6 / 18 desa sindang mulya kecamatan cibarusah kabupaten bekasi', 'Laki-laki'),
(1081, 'Imam Subakti', 'bakti22095@gmail.com', '628123548046', 'Jl. Trunojoyo 115 Pamekasan', 'Laki-laki'),
(1082, 'Tutut Syarifah', 'syariuut@gmail.com', '6281297268735', 'Komplek DKİ blok E8 no 3 Sunter Karya Selatan 1 RT 005/013 Jakarta Utara', 'Perempuan'),
(1083, 'ani siti hajar', 'aninuraeni2626@yahoo.co.id', '628157117490', 'jl kopo gg. parasdi dlm v no 16 rt 10 rw 07 kel. situsaeur kec. bojongloa kidul bandung kota 40234', 'Perempuan'),
(1084, 'Dea banyu pratama', 'banyudea@yahoo.com', '6281221046364', 'Jl.maleer selatan 1 no.167/117 rt.08 rw.03 kel.gumuruh kec.batununggal', 'Laki-laki'),
(1085, 'Nina', 'nusdayani@gmail.com', '6289684833258', 'Tangerang', 'Perempuan'),
(1086, 'Rendi Y.', 'rendiardhi@gmail.com', '6281212061200', 'Grand Duta Emerald Blok E3/25 Periuk,,,,,,,\r', ''),
(1087, 'Dewi anita', 'anitadewi2710@gmail.com', '6285695929176', 'Perumahan citra indah bukit ravenia blok aq35/9 cilengsi jonggol', 'Perempuan'),
(1088, 'suwarta', 'suwarta379@gmail.com', '6285777600335', 'Jl.teladan 2 desa kp.melayu barat rt 001/06 kec.teluknaga kab.tangerang', 'Laki-laki'),
(1089, 'Ari Hadiyono', 'arihadi@gmail.com', '6281321483330', 'Cluster Pesona Regency blok G-7 Pasirwangi Ujungberung Bandung 40120', 'Laki-laki'),
(1090, 'Zuhrah Bina Dari', 'zuhra.binasari@gmail.com', '6281284902904', 'Jl. A yani gg annur II no.89A rt 014/rw 006 jatipadang,,,,,,,\r', ''),
(1091, 'Dumadi', 'dumadimr@gmail.com', '6287887888667', 'PT. Radio Elshinta, ps minggu jaksel 12540', 'Perempuan'),
(1092, 'indriani Naim Hakim', 'indri.plw@gmail.com', '6281343959367', 'Jl. Diponegoro 166, Komplek Menara Indosiar, Gedung Indosiar, Jl. Raya Joglo No. 70 RT 04 RW 06 Kel. Joglo Kec. Kembangan Jakarta Barat Kode Pos 11640', 'Laki-laki'),
(1093, 'Arie Pratama', 'ariepratama765@gmail.com', '6281256598507', 'Jl. Pulau Nias Gg.Damai RT.3 no.13', 'Perempuan'),
(1094, 'Arief Wahyu Rojokoyo', 'ariefrojokoyo@gmail.com', '6281379860070', 'Belakang STM PGRI Poncowati Kec Terbanggi Besar Kab Lampung Tengah', 'Laki-laki'),
(1095, 'Khairuddin', 'khairuddin_aw@yahoo.com', '6285325430264', 'Jl. Baskoro No 60 Tembalang Semarang', 'Laki-laki'),
(1096, 'Daan Sahrizqi Hidayat', 'daanhidayat@gmail.com', '6281291589231', 'Jl. Hanjoyo Putro Komp Rajawali Blok B 7 Kel. Batu IX Kec. Tanjungpinang Timur Kota Tanjungpinang Provinsi Kepulauan Riau', 'Laki-laki'),
(1097, 'M Zulfikri Al Qowy', 'zulfikri.qowy@gmail.com', '6282248094890', 'Perum Dosen Unhas Tml AB 34,,,,,,,\r', ''),
(1098, 'Juwita Aryani', 'juwyta82@gmail.com', '6281323952531', 'Jl. Purbasari Desa Gunungcupu Dusun desa kidul RT.01 RW.01 No. 03 Kecamatan Sindangkasih Kabupaten Ciamis 46261', 'Perempuan'),
(1099, 'Reni', 'sulastrir08@gmail.com', '6285202147352', 'Reni Sulastri', 'Perempuan'),
(1100, 'Ghinaa Nurfadlilah', 'ak.ghinaa@gmail.com', '6281222455101', 'Perum sapta pesona jl sarikaya e4 no 14 ,,,,,,,\r', ''),
(1101, 'Rinna mariana', 'ranni1mariana@gmail.com', '6281319259200', 'Jl. Bahagia 7 no. 36 rt. 005 rw. 002 kel. kreo selatan kec. larangan kota. Tangerang prov. Baten kode pos. 15156.', 'Perempuan'),
(1102, 'Septarina Pratiwi', 'septarinap@gmail.com', '628121056625', 'Jl. Perkutut 1 Blok S-3/10,,,,,,,\r', ''),
(1103, 'Febrian Yusti Merry', 'khanzahalwa@gmail.com', '6281380644500', 'jl flamboyan no 13 rt 09 rw 08 kota bambu utara. kec. palmerah jakarta barat', 'Perempuan'),
(1104, 'Vita rulianti', '', '6281275599918', 'Vitasyahrul20@gmail.co.', 'Perempuan'),
(1105, 'Husnul Khotimah', 'husnul.khotimah200085@gmail.com', '6282122297257', 'PERUM KARANG ASRI BLOK A NO.4 KARANGSARI RT 01/06 KARANGANYAR KABUPATEN PEKALONGAN JATENG', 'Perempuan'),
(1106, 'Kamaludin Somantri', 'kamaludin.somantri@gmail.com', '628112116558', 'Kp. Tabrik Desa Sindanglaya No 116 RT 02 RW 08 Kec. Karangpawitan Garut Jawa Barat', 'Perempuan'),
(1107, 'BULAN', 'bulanmilatiasari2@gmail.com', '6282121704999', 'Jl.pasar kedokan gabus blok1/119 Indramayu', 'Perempuan'),
(1108, 'Siti Inayah', 'hjinayahnadin@gmail.com', '6282326157200', 'jl.raya narawisan RT 12/ 04 Kajen -talang - tegal', 'Perempuan'),
(1109, 'Juanda Iswahyudi', 'www.juaniswah21@gmail.com', '6285236677767', 'Jln.Marikurubu RT/RW: 03/02', 'Laki-laki'),
(1110, 'Denny Purno Nugroho Hadi Margono', 'denny_margono@yahoo.co.id', '6282159693789', 'Jl. Sukarelawan Komp. Meranti Griya Asri 2 Blok DD no 3 Banjarbaru KalSel 70711', 'Laki-laki'),
(1111, 'Endah retnosari', 'endah72@gmail.com', '628129900072', 'Jl. Taruna I no 27 jakarta timur', 'Perempuan'),
(1112, 'Stefany', 'stefanytanjung11@gmail.com', '6282123810014', 'Tebet timur dalam 1 A nomor 10', 'Perempuan'),
(1113, 'Tri Agutina', 'shopeekaka@gmail.com', '6285270840590', 'Jln pulau irian lingkungan 4 kelurahan persiakan kecamatan Padang hulu kota tebing tinggi Sumatera Utara', 'Perempuan'),
(1114, 'Lukman Arif', 'lukman2080@gmail.com', '6281357998751', 'Kedungrejo timur no.19', 'Laki-laki'),
(1115, 'Rena Farah', 'rena.farahfaizah@gmail.com', '628569815608', 'Jl. Poltangan Raya Gg. Delima RT 03/04 No 51 Kel. Tanjung Barat Kec. Jagakarsa Jakarta selatan 12530', 'Perempuan');
INSERT INTO `user_import` (`id`, `Name`, `Email`, `Phone`, `Address`, `Jenis_Kelamin`) VALUES
(1116, 'Ari widiono', 'ariwidiono99@gmail.com', '6282186444484', 'Ds. Tepus/kelidang 0007/000 kec. Airgegas kab. Bangka selatan kep. Bangka belitung', 'Laki-laki'),
(1117, 'Tuti anggreini', 'tutianggraini94@gmail.com', '6282157082743', 'Komplek grand rizky blok D 06 mandingin barabai kab. HST', 'Perempuan'),
(1118, 'Desi Budi Lestari', 'dessy.bud@gmail.com', '6285729801977', 'Karang Jambe Tegalmulyo Banguntapan Bantul Yogyakarta', 'Perempuan'),
(1119, 'Nyimas Maida Shofa', 'nyimasms@gmail.com', '6282329463261', 'Gunungsari Indah blok ZZ no. 9 Surabaya', 'Perempuan'),
(1120, 'Hamid setiawan', 'hamidmart88@gmail.com', '6281575232518', 'Jl. Banteng utara IX no. 12 semarang', 'Laki-laki'),
(1121, 'Ami', 'Bunelakitchen@gmail.com', '6281220827820', 'Jl kaum rajapolah tasikmalaya', 'Perempuan'),
(1122, 'Supia Deni', 'sophie435@yahoo.com', '6282386364616', 'Jl. Teluk Air Gg. Melati no.99 RT/RW 04/02 Kel.Teluk Air Tanjung Balai Karimun Prov.Kepri kode pos 29661', 'Perempuan'),
(1123, 'Atauhid', 'atauhid256@gmail.com', '6282172681328', 'Rt04RW02,,,,,,,\r', ''),
(1124, 'Sri rosita', 'nciyacibi@gmail.com', '6281381048910', 'Komplek griya bandung indah blok j 1 no 53 a rt04 rw 12,suakmerambai,kec:bungaraya,siak,riau.', 'Laki-laki'),
(1125, 'Muhammad Miftakhul Romadlon', 'akhulromadlon@gmail.com', '6282372788719', 'Jl. Pesantren, buahbatu bandung', 'Perempuan'),
(1126, 'Yola bias purininda', 'yolabiaspurininda0505@gmail.com', '6282234269130', 'Rt 01 Rw 03 Dsn.Setumbal Ds.Jurug Kec.Sooko Kab.Ponorogo', 'Perempuan'),
(1127, 'Rini Diansari', 'rinidiansari77@gmail.com', '6281257965708', 'Jl. P. H. Husin 2 komp. Rimbawan no. 12', 'Perempuan'),
(1128, 'setiya papi', 'thepopz@gmail.com', '85257250354', 'rt 01 rw 03 setumbal jurug sooko ponorogo', 'Perempuan'),
(1129, 'Moh Iqbal', 'muh.iqbal007@gmail.com', '6282143244239', 'Sumberasri RT 02 RW 03 Jeblog Talun Blitar', 'Laki-laki'),
(1130, 'Lia Nurlatipah', 'lianurlatifah@yahoo.com', '6285721217979', 'Kp. Cijambe Rt 04 Rw 02 desa Sukaresmi Kecamatan Cisaat Kabupaten Sukabumi Jawa Barat 43152', 'Perempuan'),
(1131, 'Riski Amaliah', 'riskiamaliah.2014@gmail.com', '6282255549678', 'Jl.Dayung 4 Perumahan Dayung Regency No.B18 ,,,,,,,\r', ''),
(1132, 'Rasdiana Malik', 'rasdianaridwan@yahoo.com', '6285346102357', 'Jl.Mulawarman Gang Nipah Rt.27', 'Perempuan'),
(1133, 'Nur Sekti Hidayat rahmawati', 'nursektirahma@gmail.com', '6285647423024', 'Talang abang rt 03 rw11 Sanggrahan Grogol Sukoharjo', 'Perempuan'),
(1134, 'Budiari', 'griya.arka2011@gmail.com', '6281357579289', 'Budiari Sulistyaningrum', 'Perempuan'),
(1135, 'Arif Setiyo Cahyadi', 'arifsetiyocahyadi@gmail.com', '6281230246570', 'Perum Green Ambassador A 24 Benowo,,,,,,,\r', ''),
(1136, 'Sri Sulasmi', 'iim.hudaya@yahoo.co.id', '628122953547', 'Jalan Kembang Baru 1, Pakal, Surabaya', 'Laki-laki'),
(1137, 'Sofiatuddin', 'sofiefian01@yahoo.com', '6285226820215', 'Jln. T. Muda Rayeuk No. 2 Kp. Pineung Banda Aceh', 'Perempuan'),
(1138, 'Ririn Sulistyoning Utami', 'ririnsulistyoning2805@gmail.com', '6285716084565', 'Jl. Dacota 8 Simogunung Surabaya Jawa Timur', 'Perempuan'),
(1139, 'Budi', 'buditambir@gmail.com', '6283845000216', 'Budi setiono', 'Laki-laki'),
(1140, 'Fathoni', 'jayangtoni@gmail.com', '821095613718', 'Krajan rt03/08 desa jragung kecamatan karangawen kabupaten demak', 'Laki-laki'),
(1141, 'Puji Astuti', 'pujiastuti2609@gmail.com', '6282110788974', 'Jl.Karya 3 no.5,,,,,,,\r', ''),
(1142, 'LALIK ERLIYANI', 'erliyanilalik@gmail.com', '6281269595947', 'Jl. bunga pancur IX Gg. tarigan medan tuntungan medan', 'Perempuan'),
(1143, 'Nurlaila', 'nurlaila8383@gmail.com', '6285369714094', 'Desa Kutadalom Kecamatan Gisting Kabupaten Tanggamus,,,,,,,\r', ''),
(1144, 'Dewi Yekti Handayani', 'dewiyekti77@gmail.com', '628995960540', 'Jl. Dr Wahidin Gg Beringin no.04 Jepara', 'Perempuan'),
(1145, 'Sri JAmilah', '', '886981142047', 'Margosono,,,,,,,\r', ''),
(1146, 'Yayuk susanti', 'yayuksusanti10@gmail.com', '6282270435447', 'Jln. Sutan Sjahrir rt. 04 no. 19-20 tanjung laut indah bontang selatan kaltim', 'Perempuan'),
(1147, 'Yeni puspita', '', '6281346255393', 'Jln. Wirata mau rt. 04 no. 19 sidodadi samarinda ulu. Samarinda kalimantan Timur', 'Perempuan'),
(1148, 'Kristinawati', 'kristinatmojo@gmail.com', '6282253699493', 'Jl. Al Huda RT 02/02 Sungai Bakau Kec. Seruyan Hilir Timur Kab. Seruyan Prov. Kalimantan Tengah', 'Perempuan'),
(1149, 'Riau titik muhayati', 'riauttkmht@gmail.com', '6281252000027', 'Perum PNS puri darma indah blok d/17', 'Perempuan'),
(1150, 'BAMBANG SUPRIADI', 'vip1bitcoin@gmail.com', '6285954329770', 'Jln ramban biak,,,,,,,\r', ''),
(1151, 'Dede Sopian Sauri', 'sopiansauri4680@gmail.com', '6285797432134', 'Kp. Babakan Rt.005/002 Desa Purabaya Kecamatan Purabaya', 'Laki-laki'),
(1152, 'suparlan', 'suparlan8@gmail.com', '6285103714900', 'perum puri candi bc23 purutrejo purworejo kota pasuruan', 'Laki-laki'),
(1153, 'M Syadid Shofiyyullah', 'syadidshofiyyullah@gmail.com', '6282110061020', 'Kp kebon manggu rt 03/05 kelurahan Sukakarya.. Warudoyong.. Sukabumi', 'Laki-laki'),
(1154, 'nurhasanah', 'hasanahnaela11@gmail.com', '6285231667641', 'jln besuki selolembu rt/rw 07/02', 'Perempuan'),
(1155, 'Siti Khurotun', '', '6282138865685', 'Beran rt03/02 gedangan grogol sukoharjo', 'Perempuan'),
(1156, 'Paryatun', 'nancysng01@gmail.com', '6581979889', 'Desain Rungkang,,,,,,,\r', ''),
(1157, 'Badruzaman', 'sinarharapanmusik1965@gmail.com', '6281222798117', 'Kp salo rt 91 rw 04 kembangan utara jakarta barat', 'Laki-laki'),
(1158, 'Iwan setiawan', 'isetiawan898@gmail.com', '6285794700981', 'komplek baturaden techno regency blok E 16 bandung', 'Laki-laki'),
(1159, 'didik mulyadi', 'didikmulyadi09@gmail.com', '6285290966868', 'Jetis permai 8/17 ,,,,,,,\r', ''),
(1160, 'Filla Firdhani Rachiyan', 'gtpcoffee@gmail.com', '628112240527', 'Baleagung kav 78 Baleendah', 'Perempuan'),
(1161, 'Ir. Bakaruddin Is MSc.', 'bakaruddin_is@yahoo.com', '628159105151', 'Jl. Seruling Raya ni 62 Depok 2 Tengah DEPOK', 'Laki-laki'),
(1162, 'wzanuar akbar', 'w.zanuar02@gmail.com', '628562125040', 'perum pemda sukaharja G2/9,,,,,,,\r', ''),
(1163, 'Endah Cahyaningrum', 'endah.yaning@gmail.com', '6285777466422', 'Jl. Bojong Indah RT. 04 RW. 06 No. 18 Pondok Kelapa', 'Perempuan'),
(1164, 'Abdul Rahim Chairi', 'aim_first@yahoo.com', '6281919234789', 'Jl. Tumpi No. 13 Bilimun Pondok Kelapa Jakarta Timur', 'Laki-laki'),
(1165, 'Edi Saputra', 'Saputraedi462@yahoo.com', '6282211126590', 'Jl Jeruk IV B35 No 13 RT 11 RW 8 Pondok Makmur Kutabaru Pasar Kemis Tangerang', 'Laki-laki'),
(1166, 'Ervidayanti', 'ummihayaadzra@gmail.com', '6281314837256', 'Cot Mesjid Lueng Bata Banda Aceh', 'Perempuan'),
(1167, 'Yuniati Cahyaningsih', 'yuni.cahya84@gmail.com', '6287700667637', 'Salatiga', 'Perempuan'),
(1168, 'Istinganah', 'istinganahsukses@gmail.com', '6281519111124', 'Jl KRT Pringgodiningrat nmr 64 Jaban Tridadi Sleman Yogyakarta', 'Perempuan'),
(1169, 'Nelly Rustina', 'nellyrustina@gmail.com', '6281233622018', 'Jl.p.suryanata GG.saudara no.4 kel.air putih kec.samarinda ulu Kalimantan timur 75124', 'Perempuan'),
(1170, 'Anggia Septiani', 'giatiani09@gmail.com', '6287871587753', 'Beringin Residences Cluster Saphire A No 60 Serang Banten', 'Perempuan'),
(1171, 'Rasfin tri putra', 'raspintri@gmail.com', '628126603709', 'Padang', 'Laki-laki'),
(1172, 'sumarni indrayati', 'sullikun7@gmail.com', '6281263987879', 'Tengger rt1/3 sidomulyo banjarejo blora,,,,,,,\r', ''),
(1173, 'Supitrah', 'bidansupitrah@gmail.com', '6285728624149', 'Tegalampel RT 02 RT 02 Kec Karangdowo Kab Klaten', 'Perempuan'),
(1174, 'Trifera', 'mtrifera@gmail.com', '6282112793120', 'Jl anjasmoro no 1a sidanegara cilacap jateng', 'Perempuan'),
(1175, 'Sarah azzahra', 'zahrasarah789@gmail.com', '628997776409', 'Kp kebon jati rt 01/13 kel sukakarya kec warudoyong kota sukabumi', 'Perempuan'),
(1176, 'YETY BAHHAR', 'yety.yb@gmail.com', '6285290732000', 'Ds. Golantepus RT. 01/VI Mejobo Kudus Jawa Tengah', 'Perempuan'),
(1177, 'LENI', 'auliaannchi@gmail.com', '6282172216697', 'Perumahan garden raya,,,,,,,\r', ''),
(1178, 'Enny Marlia Mayasari', 'ennymarlia96@gmail.com', '6281250473636', 'Jl. Ambawang No 356 RT 15 Sarang Halang Pelaihari Kab. Tanah Laut Kalimantan Selatan 70813', 'Perempuan'),
(1179, 'Dezy Kenedy', 'dezygalyokenedy@gmail.com', '6281213742512', 'Jl Janur Hijau Raya kk15,,,,,,,\r', ''),
(1180, 'Rudy Christian', 'rudychristian6666@gmail.com', '6281320567026', 'Jln H Basuki 3 no 252 rt 07 rw 10', 'Laki-laki'),
(1181, 'Aprianti', 'aprianti282@gmail.com', '6281224755577', 'Rancho Indah Dalam no.48C Tanjung Barat Kec.Jagakarsa Jakarta Selatan', 'Perempuan'),
(1182, 'Farida Maharani', 'faridamaharani339@gmail.com', '6281219762680', 'Jl Anan Rt001/007 Perumahan De Cluster 2 Blok A2 jatiluhur,,,,,,,\r', ''),
(1183, 'Achmad Mustahid Astari', 'achmad.mustahid23@gmail.com', '6281234400603', 'Jalan Gatot Subroto No 29 RT 02 RW 07 Dusun Krajan Desa Ketapang Kecamatan Kalipuro Kabupaten Banyuwangi Jawa Timur - 68455', 'Laki-laki'),
(1184, 'Kamilah Felda', 'b1568kfelda@gmail.com', '6285864501256', 'Pondok ungu permai sektor 5 Blok C 1 no 54', 'Perempuan'),
(1185, 'SITI ROCHMAH RAHAYU', 'sitirahayu205@gmail.com', '6285256310176', 'Komp. SMKN 2 Ternate. Jln batu angus kel.dufa-dufa. Kota Ternate Utara. Maluku Utara', 'Perempuan'),
(1186, 'Siti Musminah', 'sitimusminah@yahoo.co.id', '97466857004', 'Doha Qatar', 'Perempuan'),
(1187, 'Aries Dwi Lestari SE', 'aries.dwilestari@rocketmail.com', '6281344264171', 'Jl. Bandung ( belakang Masjid Al Falah ) RT. 001/ RW.001 Kelurahan Karang Mulia Distrik Nabire Kabupaten Nabire Provinsi Papua Kode Pos 98815', 'Perempuan'),
(1188, 'Indra Rosidah', 'Rosherdi999@gmail.com', '6281233639631', 'Jl kesehatan RT 13 RW 02  Desa Rato Kec Bolo  Kab Bima', 'Perempuan'),
(1189, 'Malichah Budhur', 'malichahbudhur@gmail.com', '6281331788445', 'Senori Tuban Jatim', 'Perempuan'),
(1190, 'Denny k', '', '6285725050959', 'Gulon,,,,,,,\r', ''),
(1191, 'ayutari', 'ayutarijaya@yahoo.com', '6285267231622', 'tk. laibana komplek ilir barat permai blok b 71-72 palembang', 'Perempuan'),
(1192, 'Rini varsini', 'cakepangel@gmail.com', '6285778551351', 'Jl kapuk rt 08/012 no 138 cengkareng jakarta barat', 'Perempuan'),
(1193, 'Siti Marwah', 'marwahsiti767@gmail.com', '6281293810093', 'Jl. Ismaya RT. 004/07 nomor 42,,,,,,,\r', ''),
(1194, 'Henik Hariyanti', 'Henikhariyanti78@gmail.com', '6285202024909', 'Semarang', 'Perempuan'),
(1195, 'Andriana Lely Indrawati', 'faizneila63@gmail.com', '6285878149781', 'Klumpit rt 3 rw 1 sidorejokidul,,,,,,,\r', ''),
(1196, 'Agus taufiq hidayat', 'thidayat5@gmail.com', '62816214120', 'Agus taufiq hidayat', 'Laki-laki'),
(1197, 'Rifaldi Sulfiansyah', 'sulfiansyahrifaldi@gmail.com', '6282341926708', 'Btn Griya Idola blok E no 3 kec.Labuhan Badas kab.Sumbawa Besar NTB', 'Laki-laki'),
(1198, 'Zainul bin jannor', 'zainul6187@yahoo.com', '60146768937', 'Seen Enterprise lot 1 2 TB 252-253 dewan sri asnur fajar,,,,,,,\r', ''),
(1199, 'Sayuti', 'yutididamut@gmail.com', '628125355470', 'Perum Pondok Karya Lestari B713 RT 9 Kel Sungai Kapih Kec Sambutan Kota Samarinda Kaltim', 'Perempuan'),
(1200, 'Hartini', 'tinichen275@gmail.com', '6281298900606', 'Jln raya pasar lama bojonggede bogor', 'Perempuan'),
(1201, 'Asnawati', 'fahhama69@gmail.com', '6281539877720', 'Jalan lingkar barat RT 4 Kel. Bagan Pete Kec .Alam Barajo Kota Jambi kode pos. 36129.', 'Perempuan'),
(1202, 'Arif Sibghotulloh', 'iisdahliani1@gmail.com', '628551704147', 'Perum Cipta Graha blok G1 no 9 Kel tengah Cibinong Bogor', 'Perempuan'),
(1203, 'Suliyanti Siradju', 'abdullah.chonoras@gmail.com', '6281241201533', 'Perumahan Goto,,,,,,,\r', ''),
(1204, 'Fath Zakaria', 'zakariafath17@gmail.com', '6285298986616', 'Jln. Prof. Mansoer Pateda, Kota Tidore Kepulauan', 'Perempuan'),
(1205, 'Indah Saras Mitriasih', 'sarasindah87@gmail.com', '62895617509043', 'Kendalpayak gang dahlia no.27 rt.04 rw.03 kec.pakisaji kab.malang jawa timur 65162', 'Perempuan'),
(1206, 'Enna Azhariyah', 'ennaazhariyah@gmail.com', '6281310555889', 'Jl. Pangeran Sogiri No. 141 RT 001 RW 004 Tanah Baru Bogor', 'Perempuan'),
(1207, 'Dadan Faizal', 'rahmat_fr97@yahoo.com', '628179270926', 'Komplek PPTM C 17 Jalan Pasantren', 'Laki-laki'),
(1208, 'Sri Suhaity', 'srisuhaity@gmail.com', '628170605999', 'Bukit Cimanggu City Blok  R3 no 3', 'Perempuan'),
(1209, 'Haryanti', 'haryantiy603@gmail.com', '6282284788475', 'Pulau Buru,,,,,,,\r', ''),
(1210, 'Sonny', 'elpisonny@gmail.com', '628127665417', 'Jl. Rindang Komp.PU.No.2 Tangkerang Labuai Pekanbaru-Riau', 'Laki-laki'),
(1211, 'Romdoni fajarudin', 'downeydelaverga@gmail.com', '6281347231235', 'Komp griya praja mandiri blok b3 no 1', 'Laki-laki'),
(1212, 'Khairina mazaya', 'khairina_mazaya@yahoo.com', '6281329293496', 'Lhokseumawe', 'Perempuan'),
(1213, 'deka ulfa', 'dekaulfa1717@gmail.com', '6282133855633', 'Perum Griya Bunga No.3 RT.09 RW.07 kec. ungaran barat kab. semarang', 'Perempuan'),
(1214, 'Nur Ita Jannah', 'nurittah3@gmail.com', '6283834491449', 'Perum. Bumi Banjararum Asri Blok BB No 6 RT 15 RW XI Singosari,,,,,,,\r', ''),
(1215, 'Karina', 'Karina.salim@gmail.com', '601160583670', 'MULYO AGUNG.KEC BUAY MADANG.OKU TIMUR.SUM-SEL', 'Perempuan'),
(1216, 'Siti Noor Murni binti Musa', 'murnie916@gmail.com', '60197713957', 'No 7 Lintang Lembah Permai 9,,,,,,,\r', ''),
(1217, 'Wahyu Wijayanti', 'Yantirahman28@gmail.com', '628157929523', 'Jl. Jend sudirman no.3 kec. Purworejo kab. Purworejo. Jateng. 54114', 'Perempuan'),
(1218, 'Yuyun', 'yuyun_8oke@ymail.com', '6282291812288', 'Jl. Jenderal Sudirman no 22', 'Perempuan'),
(1219, 'Umi fatmaningsih', 'nengufa28@gmail.com', '6283832736405', 'Dusun rokkorok desa gayam', 'Perempuan'),
(1220, 'Noorhayati', 'noorhayati677@gmail.com', '6281253009489', 'da. Puskesmas Ma. Kaman,,,,,,,\r', ''),
(1221, 'Rahayu Sri Purwati', 'clubayutenan@gmail.com', '6287879596914', 'delta pekayon jaya jl. delta barta XIII blok C no. 152 Rt 04/07 pekayon jaya bekasi selatan', 'Perempuan'),
(1222, 'Khusnul Mandala Wati', 'mandamandala778@gmail.com', '628977304711', 'Jalan Sirothol,,,,,,,\r', ''),
(1223, 'Fachrul Farosa', 'fachrul.farosa@gmail.com', '6281360147036', 'Jl.  Muktamar Desa Geuceu Komplek - Kec.  Banda Raya', 'Laki-laki'),
(1224, 'Tintin rohaeni', 'tintinrohaeni@gmail.com', '628115030212', 'Komplek klaus reppe jl lampung 104 loktabat selatan', 'Perempuan'),
(1225, 'Tuti sumarni', 'tutisumarni24@gmail.com', '6282384580301', 'Perum graha tata bakri blok h no 12.kp kandang', 'Perempuan'),
(1226, 'Julianto', '', '6281264108868', 'Desa segati kec langgam,,,,,,,\r', ''),
(1227, 'Eka Wahyu Nur Hidayat', 'ekawahyunh@gmail.com', '6285643299654', 'Permata Kopo 2 G2-7', 'Laki-laki'),
(1228, 'Muslikhatul Sofiyana', 'sofiyanamuslikhatul@gmail.com', '6285253542368', 'Jl.Pangeran Cakra no 129,,,,,,,\r', ''),
(1229, 'Cici Citra', 'chycitra2@gmail.com', '62895702764906', 'Jl. Masjid Ismail, Desa Mejar Utama, kec. Kendawangan, Kab. Ketapanh, kalbar', 'Perempuan'),
(1230, 'Herlan', 'sandiadi75@gmail.com', '6281347420603', 'Jl Wonorejo', 'Laki-laki'),
(1231, 'Kurnia Ekawaty', 'ekharly80@gmail.com', '6281253011189', 'Jl. A. Malawat kompl. PLN lama kel. Tomagoba kec. Kota Tidore', 'Perempuan'),
(1232, 'Jainal aripin', 'arifinflash@gmail.com', '6281398808723', 'Bumi Cikarang Makmur Gang apel 10 blok A9 No. 27 Sukadami Cikarang Selatan', 'Laki-laki'),
(1233, 'Muhamad Syafruddin', 'darma.syafrudin@gmail.com', '6285854647946', 'Suket baru RT 03/RW 011,,,,,,,\r', ''),
(1234, 'Puji Tuhuningsih', 'pujituhuningsih66@gmail.com', '62895350071830', 'Kp. Jami RT 01/RW 04 Desa Sukajaya', 'Perempuan'),
(1235, 'ANITA BURHAN', 'anitaburhan72@gmail.com', '628128470660', 'Perumahan Citra Raya Graha Gardenia 1 blok XG 2/3 Rt 001 Rw 011 Kelurahan Mekar Bakti', 'Perempuan'),
(1236, 'Alif Jatmiko', 'alif.jatmiko123@gmail.com', '6285732155848', 'Kertajaya XI E No.1', 'Laki-laki'),
(1237, 'Daim', 'boimvermak@gmail.com', '6287883658766', 'Timbang reja', 'Laki-laki'),
(1238, 'Muhammad Hanif Ibadurrohman', 'hanifibad1996@gmail.com', '966538591676', 'Taman Tridaya Indah 2 Blok I.7 No 24', 'Laki-laki'),
(1239, 'Emila Faida Saraswati', 'emila.faida@gmail.com', '6285645351006', 'Graha intan Sudiang Blok B/2 (dalam kompleks Taman Sudiang Indah Blok N)', 'Perempuan'),
(1240, 'Siti Muzna Nur Octavia', 'sitimuzna31@gmail.com', '6281228058006', 'Jetak kembang 243 rt 001/004 Sunggingan KUDUS 59317', 'Perempuan'),
(1241, 'Rini purnamasari', 'rinisurawijaya07@gmail.com', '6287808986702', 'Citra garden Bmw Blok F4/2', 'Perempuan'),
(1242, 'Sarjono', 'jhon.sarjono2015@gmail.com', '6285228134837', 'Talun Prawatan', 'Laki-laki'),
(1243, 'Widi Nurhidayanti', 'lifesakura19@gmail.com', '6281315457452', 'Ruko golden boulevard D 15', 'Perempuan'),
(1244, 'Normawati', 'normaskd7180@gmail.com', '6281387219148', 'Jl. Alia II,,,,,,,\r', ''),
(1245, 'Sittah Ardinah', 'abunizham05@gmail.com', '6281905395224', 'Jl h. Umar bidong 1', 'Perempuan'),
(1246, 'Awie al arzunie muhammade', 'awiealarzunie1507@gmail.com', '6281252418146', 'Ds. Wotanngare Dk. Tawing Rt. 21 Rw. 06', 'Laki-laki'),
(1247, 'Kurniawati', 'ayaarka@rocketmail.com', '6281228011692', 'Nganguk Pengapon,,,,,,,\r', ''),
(1248, 'Loly Novita', 'lolyfachruddin@gmail.com', '628127656430', 'Jl. Jend. Sudirman No. 16 Sumbersari, RT/RW : 04/04, No 390,59311, Kudus, Jateng', 'Perempuan'),
(1249, 'Linda', 'Linda20121982@gmail.com', '6281374112204', 'Napolen', 'Perempuan'),
(1250, 'Nengsih', 'talitaalea@gmail.com', '6281233991043', 'Perumahan Bumi Palapa A2NO 2', 'Perempuan'),
(1251, 'Muhamad Sadam Romadhon', 'romasmanlie@gmail.com', '6281224462947', 'Jl. Gang Nangka (Setelah Jembatan Belok Kanan) RT 01/04 No. 52 Sawangan Baru,,,,,,,\r', ''),
(1252, 'Wahyu Hidayat Asyari', 'wahyu.asyari@bni.co.id', '6281258035574', 'jl Teuku Umar RT 13 Nunukan', 'Laki-laki'),
(1253, 'ERMA FITRIYAH SURYANI', 'hermaherma638@gmail.com', '6285349843232', 'Jl. Patimura 234. rt. 03.Kelurahan rapak dalam. Kecamatan Loa Janan Ilir. Samarinda Sebrang', 'Perempuan'),
(1254, 'Neneng Hafidah Ramdiah', 'nhramdiah@yahoo.co.id', '6281394716526', 'Jl.Antareja A32 Pondok Dustira', 'Perempuan'),
(1255, 'Darill Muflih Arief', 'dmuflih@gmail.com', '6281321443244', 'Komp. Padasuka Indah B-91', 'Laki-laki'),
(1256, 'Herlini', 'hemach1912@gmail.com', '628114538010', 'Jl WR Supratman no 54', 'Perempuan'),
(1257, 'Intan Pertiwi', 'pertiwii235@gmail.com', '6281277824364', 'Jl. Akademi Gg Ar-Ridho Depan Mushalla Ar-Ridho Rt 007 Rw 012 Kel. Labuh baru timur Kec. Payung sekaki Pekanbaru Riau', 'Perempuan'),
(1258, 'Tri Yulianingsih Siradj', 'aniksiradj@gmail.com', '6285225566416', 'Gang Belimbing II no.5 RT 15 RW IV Kebondalem', 'Perempuan'),
(1259, 'Jumali Ariefin', 'jumyarif@gmail.com', '6281511200236', 'Perumahan Telaga Mas Blok L 6 No. 42', 'Laki-laki'),
(1260, 'Farida', 'faridafirah95@gmail.com', '6285145164026', 'pontianak', 'Perempuan'),
(1261, 'Noor Ramadianty', '', '6281347804226', 'Jl cempaka perum palma park', 'Perempuan'),
(1262, 'waki\'ah', '', '6282338434039', 'sarirejo gg 5 rt 5 rw 2', 'Perempuan'),
(1263, 'Utami Siti Sundari', 'utamisitisundari@gmail.com', '6282115467418', 'Cingcin Permata Indah Blok GA no.59 Soreang', 'Perempuan'),
(1264, 'Tri Adianto', 'triadianto18@gmail.com', '6281219354663', 'Alinda Kencana Permai Blok B3 No.34', 'Laki-laki'),
(1265, 'R.Rahmasena Hamzah', 'rahmasenahamzah@gmail.com', '6281374169606', 'Jln.Ronggowarsito no.163/69', 'Perempuan'),
(1266, 'Nor Hasanah', 'naurakhadijah@gmail.com', '6285249479153', 'Jl. Sumber Rejo 1 RT 42 No 34 Kel. Sumber Rejo', 'Perempuan'),
(1267, 'Dian novita', 'dinov.melilea@gmail.com', '6282234012288', 'Perum the green tamansari e22 sememi benowo surabaya', 'Perempuan'),
(1268, 'Desy irwaty aldy', 'dsheAldy@yahoo.com', '6281355032204', 'Jl.batam no.16 sengkang', 'Perempuan'),
(1269, 'ENDAH TRI JULIANI', 'endah.tkfl@gmail.com', '628995612715', 'JL WARU DALAM II NO 19 RT / RW. 005 / 006 Pedalangan Banyumanik Semarang', 'Perempuan'),
(1270, 'Istiqomah', 'shofimartin20@gmail.com', '6282330522382', 'Desa narukan rt 04 RW 02 kec Kragan kab Rembang 59273', 'Perempuan'),
(1271, 'Ramli Ahmad', 'ramli1@yahoo.com', '628121000101', 'Jln Puri Mutiara VII No 17C,,,,,,,\r', ''),
(1272, 'Urip Budiman', 'uripbudiman30@gmail.com', '6282140628783', 'Bangkalan madura', 'Laki-laki'),
(1273, 'Bramantyo Bayu Kusumo', 'bramantyobk@gmail.com', '6281227288968', 'Gg.Klengkeng 01 RT01/RW09 Tonggalan 57412', 'Laki-laki'),
(1274, 'Dewi Anggraeni', 'd3y4.51209@gmail.com', '6287875300890', 'Tangerang Selatan', 'Perempuan'),
(1275, 'Sundari', 'shasirose044@gmail.com', '6285649065525', 'Cakru\'an Klopo Kuning RT 34 RW 09 Desa Jambuwer', 'Perempuan'),
(1276, 'KARTINI HAMID', 'kartinibiak@yahoo.co.id', '6281240452399', 'Jalan Bosnik Raya.Kompleks ngudikaryo mandiri dalam no 88 BIAK-PAPUA', 'Perempuan'),
(1277, 'Farida', 'farhankuok@gmail.com', '6281330341429', 'Kebonsari', 'Perempuan'),
(1278, 'Awang kok khairil haniff bin awa', 'khairilhaniff2014@gmail.com', '60197728379', 'Malaysia', 'Laki-laki'),
(1279, 'Rena Handayani', 'renasugiat@gmail.com', '6283897948338', 'Cempaka Putih Tengah 22A/39', 'Perempuan'),
(1280, 'Eri', 'warungsa@gmail.com', '628111494793', 'Bogor', 'Perempuan'),
(1281, 'Tuti Suryati', 'suryati.tuti@yahoo.com', '6281254578074', 'Kutai Timur KalTim', 'Perempuan'),
(1282, 'Kiptiyah', 'kiptyristanto@gmail.co', '6285647442276', 'Ketaon rt 7/1,,,,,,,\r', ''),
(1283, 'Fatkhauli Salviani', 'fatkhaulisalviani01@gmail.com', '6285277452667', 'Siak, banyudono,  boyolali', 'Perempuan'),
(1284, 'Freska Rolansa', 'freska.ilkom@gmail.com', '6285654579953', 'Pontianak', 'Laki-laki'),
(1285, 'Karimah Novianti', 'karimahnoviyanti@yahoo.co.id', '62811459482', 'Jl Towua II no 3', 'Perempuan'),
(1286, 'Susiyani mayangdewi', 'smayangdewi@gmail.com', '6287702524336', 'Surya asri a13 no 1', 'Perempuan'),
(1287, 'Priyono Pancasila', 'pancasila0165@gmail.com', '6285319227799', 'Jl. Pulau Irian RT.2 RW.1 No. 48 Kelurahan Kampung Satu -Tarakan', 'Laki-laki'),
(1288, 'Dian Ayu Lestari', 'lestari.a.dian@gmail.com', '6285741905764', 'Jl. Ahmad Yani No. 105 Pemalang,,,,,,,\r', ''),
(1289, 'Lukman hakim', 'lukman.aan29@gmail.com', '6285324293299', 'Dsn manis rt 10 rw 04 desa karangmangu', 'Laki-laki'),
(1290, 'Puspa Mekar', 'puspamekar@ymail.com', '6285251198111', 'Jl pramuka km 6 jl melati indah komplek bumi melati indah ray 9 no 1 rt 31 Banjarmasin timur 70236 085251198111', 'Perempuan'),
(1291, 'Samsul Bachri', 'bachrisamsul15@gmail.com', '6281218959945', 'Link Badamusalam RT 002 RW 003', 'Laki-laki'),
(1292, 'Neny kurnaeny', 'nenykurnaeny@rocketmail.com', '6285294044488', 'Jl. Lempuyang II no 23/24 KPAD cibubur', 'Perempuan'),
(1293, 'tetuko dito widarso', 'td.widarso@gmail.com', '6281315797906', 'kebon nanas selatan 8 rt15/rw02 no.8 cipinang cempedak jatinegara jaktim', 'Laki-laki'),
(1294, 'Yusmaeni Supriatin', 'yusmaeni55@gmail.com', '6281910016002', 'Ds. Ketanda sibangkong rt 06 rw 03', 'Perempuan'),
(1295, 'Henry nolandy', 'hnolandy@gmail.com', '6281380615656', 'Jl balidra blok a3/no.5 perum taman singaperbangsa karawang jawa barat', 'Laki-laki'),
(1296, 'Yane Tiraeni', 'tyanetyra@gmail.com', '6281322337791', 'Yane Tiraeni', 'Perempuan'),
(1297, 'Itje Rostika', 'remembertika@hotmail.com', '62816737474', 'Kota Wisata Cluster Paris C6/8', 'Perempuan'),
(1298, 'Akbar Rahim', 'akbarrahim.ar@gmail.com', '6282343442323', 'Jalan Bumi Permata Sudiang Blok I1 No 11 Makassar Sudiang', 'Laki-laki'),
(1299, 'Yerri Setiantoro', 'yerrisetiantoro@yahoo.com', '6281334809589', 'RT 3 RW 7 dusun sepatan desa mangunharjo', 'Laki-laki'),
(1300, 'Roosita', 'droosita@gmail.com', '6282226376161', 'Brigjend Sudiarto Joyosuran', 'Perempuan'),
(1301, 'Rieka Kamelya', 'rieka.kamelya87@gmail.com', '6281367418413', 'Jl. Demang I no. B2', 'Perempuan'),
(1302, 'Aga Panji Komara', 'panji.aga@gmail.com', '6285312210352', 'Ds Kubangkangkung 01/01,,,,,,,\r', ''),
(1303, 'Budi Santoso', 'budi.bidoyi@gmail.com', '6287738351372', 'Jl. Pembangunan No.21 RT.02 RW.05 Gg. Mushola, kec. Kawunganten', 'Laki-laki'),
(1304, 'Herlina', '', '6282324696269', 'Perum griya elang rt 2 RW 5 mangunharjo', 'Perempuan'),
(1305, 'Ghiana Karisma Anindita', 'gianaargia@gmail.com', '6282320207997', 'Bukit Cimanggu City.  Hills Park View Blok EE5 no6.  RT 02 / RW 14 JL.KH. Soleh Iskandar.  kel: Sukadamai. kec: Tanah Sareal. Kota Bogor 16165', 'Perempuan'),
(1306, 'Aan hasanah', 'aanhasanah28@gmail.com', '6281318996204', 'Jl.kh.dero kp. Kosong no.64 rt 03 rw 04 kelurahan panunggangan kecamatan pinang kota tangerang', 'Perempuan'),
(1307, 'Nur aeni', 'putrizafiradua@gmail.com', '6285742999345', 'JL.KH.Rais No.47 RT02 / RW02 Suradadi - kec.Suradadi - kab.Tegal', 'Perempuan'),
(1308, 'husnul khotimah', 'akhiratselamanya869@gmail.com', '6282348404414', 'kel.fitu Rt 07 Rw 03 ternate selatan', 'Perempuan'),
(1309, 'Tri Yuniarti', 'triyuniarti1@gmail.com', '6285860300825', 'Taman Sari Persada blok G1 Nomer 2 rt 05/rw 15,,,,,,,\r', ''),
(1310, 'SAMSUDIN', 'sams.wae27@gmail.com', '6281278430100', 'Jl. Merpati RT 016 RW 006 Desa Sungai Bulian', 'Laki-laki'),
(1311, 'Ànggra lina', 'anggralyena@gmail.com', '6590193934', 'Kp.nambo rt23/05 ds.cintajaya', 'Perempuan'),
(1312, 'Erma', '', '6285311995818', 'Erma yuanita khoironi', 'Perempuan'),
(1313, 'Dedeh Rohaeni', 'dedehrohaeni73@gmail.com', '6289609957993', 'Jl Halteu Utara no 121 RT 04/01', 'Perempuan'),
(1314, 'Purwati Kusumarini', 'punky.kusumarini1011@gmail.com', '6281317156189', 'Bekasi', 'Perempuan'),
(1315, 'Sukarya', 'ayomangayo@gmail.com', '6281284280411', 'Kp. Tanah Baru,,,,,,,\r', ''),
(1316, 'Yusniah', 'yusniahkedawung4480@gmail.com', '6285700999022', 'Kedawung Rt. 3/4', 'Perempuan'),
(1317, 'Dayang Arniawati Anni', 'dayangarny18@gmail.com', '6281347922018', 'Jl.Sangkulirang RT.1,,,,,,,\r', ''),
(1318, 'Rommy Nur Affandi', 'rommy.nkc@gmail.com', '6282123707036', 'Pancasan Baru Rt. 01 Rw. 12 No. 23 Kelurahan Pasir Jaya', 'Laki-laki'),
(1319, 'Ismiyanto', 'ulinuhagrafika@gmail.com', '6285100859705', 'Semampir kulon tambakrejo', 'Perempuan'),
(1320, 'Agus Aryawan', 'drmadeagus@yahoo.co.id', '628113341708', 'Dr. I Made Agus Budhi Aryawan', 'Laki-laki'),
(1321, 'Etika Sokhiyatun', 'etikasokh@gmail.com', '6285640300658', 'Tembok Lor Rt 01 RW 01 Adiwerna  Tegal Jawa Tengah', 'Perempuan'),
(1322, 'M Arif Rifai', 'rifai.m.arif@gmail.com', '62811197808', 'Jl.Rasamala IV no 28 Rt.05/013 Menteng Dalam', 'Laki-laki'),
(1323, 'Fitri Astuti', 'astutifitri1976@gmail.com', '628126794916', 'Jl. Raya Pondok kopi no. 11 RT. 004. RT. 002 (Depan Apotik Kimia Farma)  Kel. Surau Gadang Kec. Nanggalo Siteba-Padang-SumBar 25146', 'Perempuan'),
(1324, 'rahmatullah arsyad', 'ulopribadi@gmail.com', '6285215356242', 'rahmatullah arsyad', 'Laki-laki'),
(1325, 'Sriwahyuningsih', 'niningumiyah@gmail.com', '6282172940096', 'Desa Bukit Payung jln. Sudirman no. 110 RT. 01 RW. 01', 'Perempuan'),
(1326, 'Omar Yulianto Siregar', 'aaaattoooo@gmail.com', '6285771174888', 'Jati Melati Bekasi Selatan', 'Laki-laki'),
(1327, 'Maritsa wira kurnia', 'maritsawira97@gmail.com', '6281233066830', 'Perum harmoni kota blok b4 no.4', 'Perempuan'),
(1328, 'Mursalam', 'varelku@yahoo.co.id', '6281340024247', 'Jalan Adhyaksa Raya No 33', 'Perempuan'),
(1329, 'Dhani Abdul Fatah', 'dhani.abdf.1901@gmail.com', '6281906595488', 'jl. gunteng kp. gunteng Rt 01 Rw 10 Desa Bojong', 'Laki-laki'),
(1330, 'Puapita', 'puspitacahyadi@yahoo.com', '6281318682898', 'Bogor', 'Perempuan'),
(1331, 'Mochammad cholili', 'mcholili@379gmail.com', '6282266508655', 'Jl turi 20A oro oro ombo kartoharjo madiun', 'Laki-laki'),
(1332, 'Yayan Yanuarsa', 'yanuarsa31@gmail.com', '6282211150543', 'Perumahan karaba indah Blok i no 14', 'Laki-laki'),
(1333, 'Zuraedah', 'izuraedah@gmail.com', '628119621472', 'Tebet timur dalam IV M no.2', 'Perempuan'),
(1334, 'RH Syaugie', 'rumahbisnis119@gmail.com', '628128216171', 'Kelapa Dua', 'Laki-laki'),
(1335, 'Nelly Triana', 'nellytriana1982@gmail.com', '6281383556626', 'Jl. Cideng Bar. Dalam,,,,,,,\r', ''),
(1336, 'Anisa Batubara', 'anisa.btbr@gmail.com', '628562258922', 'Toko Prima Jl Gerilyawan No 27 (sebelah apotik duta farma) Lingkaran Abe', 'Perempuan'),
(1337, 'Dian habib', 'dianhabib@gmail.com', '6285259005800', 'Jln. Cibiru Indah V no. 46', 'Laki-laki'),
(1338, 'Agus Wahyu Basuki', 'aguswahyuku77@gmail.com', '6281329407672', 'Belik 02/11', 'Laki-laki'),
(1339, 'Ridal Efendy', 'ridaleff@gmail.com', '6282252028883', 'Jl Naras Gunaaq kampung Rejo Basuki RT  4 KEC barong Tongkok Kab Kutai Barat Kalimantan Timur', 'Laki-laki'),
(1340, 'R.Aep saepudin', 'abhiebjngklnateaa@gmail.com', '6285716559141', 'Depok', 'Laki-laki'),
(1341, 'Julianty', 'Julianty2307@gmail.com', '6281371210570', 'Jl.Unggas no.379 Simpang Tiga', 'Perempuan'),
(1342, 'Aisyah Amin', 'aisyah_amin69@yahoo.com', '62811369826', 'Jln Ir. Soekarto 218 B mojorejo', 'Perempuan'),
(1343, 'Trisdamayanti ali', 'cicy.arya03@gmail.com', '6282195019839', 'Jl Drs Achmad Nadjamuddin', 'Perempuan'),
(1344, 'Nitariani Elfrida', 'nitariani22@gmail.com', '6281229713636', 'Central Park A Yani Residence Kav 01,,,,,,,\r', ''),
(1345, 'Moch Gani Setiawan', 'moch.gani.setiawan@gmail.com', '6282217185656', 'Jl. Pendidikan No. 10 Leuwigajah Cimahi', 'Laki-laki'),
(1346, 'Sri Lestari', '', '6282165686207', 'slestari171929@gmail.com', 'Perempuan'),
(1347, 'Dadeng ali hasan', 'dadenghasan990@gmail.com', '628112651161', 'Jl. Tritunggal komplek jotawang indah no 4 bangunharjo sewon bantul', 'Laki-laki'),
(1348, 'Sigit Wibowo', 'sigitwibowo.s@gmail.com', '6285643090181', 'Graha Raya Bintaro - Gardenia Loka E4/C31', 'Laki-laki'),
(1349, 'Lilik Nur khalidah', 'lieknoer89@gmail.com', '6287839372616', 'Dusun Manis RT 01 RW 01 NO 20 DESA GEREBA', 'Perempuan'),
(1350, 'Retno Widya Handayani', 'handayanieno@gmail.com', '6281239626473', 'Mutiara Regency blok D 89 Sidoarjo Jawa Timur', 'Perempuan'),
(1351, 'Lisa Akbari sari', 'lisadibahawa@gmail.com', '6287771942465', 'jln.wanamulya 16 no.55 komplek kehutanan,,,,,,,\r', ''),
(1352, 'Muhammad Nouval', 'tanyamuhammadnouval@gmail.com', '6287880077840', 'Jalan harsono rm no 45 gang haji noin', 'Laki-laki'),
(1353, 'Citra Cilia', 'ctrcilia@gmail.com', '6281330675038', 'Surya Regency C3 no 25', 'Perempuan'),
(1354, 'Surya Andika', 'suryaa.andikaa@gmail.com', '6289693958449', 'Jl. P H Husin 2 komp. Griya Caraka Telkom', 'Laki-laki'),
(1355, 'Wulan', 'wmpcell@yahoo.com', '6282185111595', 'Jl.lingga raya', 'Perempuan'),
(1356, 'Wahyu Santoso', 'wsyousan@gmail.com', '6281383946869', 'Kp Cipayung RT/RW 7/1,,,,,,,\r', ''),
(1357, 'Kaidir', 'irkaidir@bunghatta.ac.is', '628126610498', 'Perumahan Arai Pinang II Blok A  No.1 Tabing Banda Gadang Nanggalo Padang 25144 Sumatera barat, Cipayung Datar', 'Laki-laki'),
(1358, 'Suroso Agus Widodo', 'dr.aguswidodorm@gmail.com', '6281295555755', 'Jl. Ronggowarsito No 108, Perumahan Arai Pinang II Blok A  No.1 Tabing Banda Gadang Nangga', 'Laki-laki'),
(1359, 'Trias Agustin Yudiantari', 'uun.trias@gmail.com', '6282244014898', 'Jl.Kali Tempur No.1 Kec. Sukorejo Kel. Tanjungsari Kota Blitar Jatim 66122', 'Perempuan'),
(1360, 'Khairul Rizal', 'khr_rizal@yahoo.co.id', '6282116895960', 'Jl.H.som 126 Pondok Aren Tangerang Selatan', 'Laki-laki'),
(1361, 'Waty Mekarwaty', 'bundamekar@gmail.com', '628113616698', 'Rusunawa Pucang A2 05 jl. Balai Desa Kemiri no. 1 Sidoarjo', 'Perempuan'),
(1362, 'Rizal', 'rizalmaulana073@gmail.com', '628122129418', 'Jl kebon jeruk no9 rt 07 rw 05 kel kebon jeruk kec andir', 'Laki-laki'),
(1363, 'Lucy Indrayani', 'lucyindrayani2310@gmail.com', '6281350723539', 'Jl.flamboyan rt.14 no.43', 'Perempuan'),
(1364, 'Mirdan Hardiansyah', 'mirdanhardiansyah@gmail.com', '628121445568', 'Perum PEMDA Blok F2 No. 9 Teluk Jambe Timur', 'Laki-laki'),
(1365, 'dien puspitawarti', 'pelangioffset@gmail.com', '6285842667006', 'jl tentara pelajar 29 Ckebumen', 'Perempuan'),
(1366, 'Rakhmad Setyarso', 'rakhmad2005ya@yahoo.co.id', '628156650029', 'Perum Qoryatussalam Sani Blok P8,,,,,,,\r', ''),
(1367, 'Muhammad Basith Ali Fikri', 'fikri.mba@gmail.com', '6281288291188', 'Perumahan Dhaya Pesona Jl. Amarilis II A2/26 Jombang', 'Laki-laki'),
(1368, 'Muhammad yusdhi', 'yusdhipkl@gmail.com', '6285865270825', 'Perumahan pasekaran indah jl. Bougenvile no. 7 pasekaran batang', 'Laki-laki'),
(1369, 'IING LUTHFIANA', 'iing_ant99@yahoo.com', '6285331437064', 'kantor pemasaran perumahan tobo reciden', 'Perempuan'),
(1370, 'Lola Indriaty', 'lainda91@ymail.com', '6281350270390', 'Jl.A.Yani Rt.25 No.7,,,,,,,\r', ''),
(1371, 'Olivia Ridheta Citrawijaya', 'ridhetaa@gmail.com', '6281254951969', 'perum rengganis blok 4a no 11, Kr.rejo, Balikpapan Tengah.', 'Perempuan'),
(1372, 'Erwan Jainur Ihwan', 'jainurihwan@gmail.com', '6281316336499', 'Sei Panas, kelurahan gunung bahagia, kecamatan', 'Perempuan'),
(1373, 'Maysarah Novitry', 'novitry@gmail.com', '6281318363712', 'Villa adinda, Kec. Batam Kota', 'Laki-laki'),
(1374, 'Widya Rosati', 'email.wid@gmail.com', '6287885810969', 'jl. swadaya III No 59 Beji', 'Perempuan'),
(1375, 'Kiki kurniasih', 'kikivansy@gmail.com', '6281281100287', 'Perumahan pesona Cilebut 2 blok.DB5A,,,,,,,\r', ''),
(1376, 'Dwi Handayani', 'andadwi82@gmail.com', '6281311264162', 'Jl. Rawabebek RT 011 RW 001 Pulogebang cakung jakarta timur', 'Perempuan'),
(1377, 'IDHAM KHALIK', 'idhamkhalik12@gmail.com', '6285285447899', 'Jl. Rahadi Usman,,,,,,,\r', ''),
(1378, 'Arief Dedy Wijaya', 'ariefsuksesmulia@gmail.com', '6281380466770', 'Bojong Depok Baru I, desa sungai pelang RT 008 RW 003, kec. Matan Hilir Selatan', 'Laki-laki'),
(1379, 'Nanang Yuli Astantyo', 'astantyo2006@gmail.com', '6287886322907', 'Pondok Tirta Mandala Blok F3 No. 7', 'Laki-laki'),
(1380, 'Erna Yanti', 'ernayanti46@gmail.com', '628127099946', 'Kp. Harapan No. 80 (arah pondok santai) RT. 001 RW. 002', 'Perempuan'),
(1381, 'Zsa Zsa Indah', 'zsa.avicena@gmail.com', '6281364798169', 'Pekanbaru', 'Perempuan'),
(1382, 'Firman Muhamad Ramdan', 'firmanmr86@gmail.com', '6287814459054', 'Nagrak,,,,,,,\r', ''),
(1383, 'Gus Ismawati ningsih', 'gusismawati@gmail.com', '6285363444907', 'Jalan jati Rawang Melayu no.34 RT.03 RW.03 Kel.jati', 'Perempuan'),
(1384, 'Yuliana', 'yulipgtjkn10@gmail.com', '6285648038109', 'Jombang', 'Perempuan'),
(1385, 'Rudi irwanto', 'rudiirwa1025@gmail.com', '6285719174433', 'Depok', 'Laki-laki'),
(1386, 'Ririn Isnaniyati', 'ririnisnani@gmail.com', '628164264670', 'Metland Cileungsi DD 1 no 14,,,,,,,\r', ''),
(1387, 'Halimahtul Sadiah', 'halimah.tusadiah003@gmail.com', '6287872303017', 'Jl Roda II gang mesin rt 003 rw 009 Babakan Pasar 16126', 'Perempuan'),
(1388, 'Ririn ekawati', 'ririnekawati047@gmail.com', '6281328500089', 'Selopampang RT 3 RW 3.', 'Perempuan'),
(1389, 'Siti kafiah handayani', 'kafiah.handayani@gmail.com', '6283841145752', 'Kp sepen desa banyu mekar', 'Perempuan'),
(1390, 'Eva Pratiwi', 'evamomtisha@gmail.com', '6281210806994', 'Jl. Kapuas 3 No.785-786', 'Perempuan'),
(1391, 'Mohamad Sobri', 'alhusain49@gmail.com', '628996393939', 'Blok Gadis Rt 24 rw 05 desa pawidean kecamatan jatibarang', 'Laki-laki'),
(1392, 'Wiji Susanti  (Santi Jie)', 'santi.arme13@gmail.com', '6285701887883', 'Bakurejo Rt01/Rw02,,,,,,,\r', ''),
(1393, 'Salma umar', 'salmaumarchalu@gmail.com', '6285255954345', 'Komp griya daya pesona', 'Perempuan'),
(1394, 'Fidji sayaka gani', 'sayakagani@gmail.com', '817038838899', 'Ibaraki ken Torideshi Hakusan 8-8-29', 'Perempuan'),
(1395, 'Lia desvita', 'primaphotodiksa@gmail.com', '6285272903200', 'Pasaman barat', ',,,,,,,\r'),
(1396, 'Eno Dwi Retno', 'dwiretno.eno@gmail.com', '6281382950016', 'Jl Rawajati Barat 1 Gang Mangga no 19A RT 04 RW 04 Kelurahan Rawajati', ',,,,,,,\r'),
(1397, 'Hartuti Manan Rani', 'uthye_rani@yahoo.com', '628114105005', 'Sulawesi Selatan', ',,,,,,,\r'),
(1398, 'Sri ayumi', 'elfiszulfa@gmail.com', '85254227219', 'Dukuh mrican', ',,,,,,,\r'),
(1399, 'Irwan anggara', 'irwananggara14@gmail.com', '821057989414', 'Irwan anggara', ',,,,,,,\r'),
(1400, 'Siti Suriyah', 'suriyahnufita@gmail.com', '6281332124915', 'DS. Gondang RT 1 RW1 Kec. Gondang', ',,,,,,,\r'),
(1401, 'Agus Mochamad Adas', 'adas.agus@gmail.com', '628111804112', 'Jl. Kebon Pala I No. 17 / 289 Rt 02 Rw 016 Kelurahan Kebon Melati', ',,,,,,,\r'),
(1402, 'Mohamad khoirul shoim', 'khoirulshoim@gmail.com', '67073491211', '(Rumah kos grand putri silfi)Jl.raung banjarmlati,,,,,,,\r', ''),
(1403, 'Ramadhan Alfatih', 'ramadhanalfatih10@gmail.com', '6281357660849', 'Jalan Suparjan mw 86 kediri,kec.mojoroto,kota kediri,jawa timur,indonesia', ',,,\r'),
(1404, 'Ulul Izzati', 'izzatiulul@gmail.com', '6282234268741', 'Perum Candra Kirana Blok R-6C Ds. Bandar Lor', ', Jawa ti'),
(1405, 'Sandra Purwatiningsih', 'shandracangkring@gmail.com', '6285706419644', 'Ds.Bendowulung Rt.05 Rw.01', ',,,,,,,\r'),
(1406, 'Wenni Lestari', 'wennilestariastomi@gmail.com', '6285365960088', 'Jl. Bariang Cubadak Raya no 1 RT 1 RW 8. Kel Anduring Kec Kuranji Kota Padang Sumatera Barat', ',,,,,,,\r'),
(1407, 'Yudhyani Suhandi', 'rakai.bhumi.mdang@outlook.com', '6281328385598', 'Karanglo Rt.03 Rw.25 Tlogoadi', ',,,,,,,\r'),
(1408, 'UNI HAETY KUSUMA', 'uni_haety@yahoo.com', '6287732860029', 'JL TENTARA PELAJAR NO 28', ',,,,,,,\r'),
(1409, 'Azka Bazil Danish Rahmat', 'abd.rahmat@gmail.com', '628111132331', 'Villa Citra Bantarjati,,,,,,,\r', ''),
(1410, 'Kaimuddin Rani', 'kaimuddin.unggul@gmail.com', '6281292287171', 'Jl. Calingcing 4 Blok D7 no.6 Villa Citra Bantarjati Bogor', ', Jl. Bel'),
(1411, 'born andrea', 'bornandreaa@gmail.com', '628127585689', 'Jln kuda laut no 43', ',,,,,,,\r'),
(1412, 'Putri Rahayuningtias', 'puputritri@gmail.com', '6285691167318', 'Jalan Manunggal No 37 RT 01 RW 03 Bogor', ',,,,,,,\r'),
(1413, 'Melly afriani supit', 'melypipit4@gmsil.com', '6282240986469', 'Astapada bestari blok g 3 ds. Astapada,,,,,,,\r', ''),
(1414, 'Arindita Nila Sari Dewi', 'arinditanila@gmail.com', '6282230152660', 'Jl. Suta Bhakti No 194, kec. Tengah tani, kab. Cirebon', ',,,,,\r'),
(1415, 'Eni yulianti', 'eniyulianti71@gmail.com', '628122318975', 'Jln.belakang pasarno.31a', ', Madiun '),
(1416, 'Nugrho S', 'inugdr@gmail.com', '6287878474468', 'Permata Timur 2 blok SS no.2', ',,,,,,,\r'),
(1417, 'DIKA PRISSIA', 'dika_prissia@yahoo.com', '6282125338855', 'PONDOK PEKAYON INDAH JL PAKIS 2B BLOK BB 47 NO.6', ',,,,,,,\r');

-- --------------------------------------------------------

--
-- Table structure for table `user_import_test`
--

CREATE TABLE `user_import_test` (
  `id` int(11) NOT NULL,
  `Name` varchar(32) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `Phone` varchar(15) NOT NULL,
  `Address` varchar(300) NOT NULL,
  `Jenis_Kelamin` varchar(9) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_import_test`
--

INSERT INTO `user_import_test` (`id`, `Name`, `Email`, `Phone`, `Address`, `Jenis_Kelamin`) VALUES
(1, 'Bagas Naufal Insani', 'bagas_naufal96@yahoo.co.id', '082210388103', 'Puri Permai', 'Laki-laki');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `about`
--
ALTER TABLE `about`
  ADD PRIMARY KEY (`id_about`);

--
-- Indexes for table `bank`
--
ALTER TABLE `bank`
  ADD PRIMARY KEY (`code`);

--
-- Indexes for table `banner2landing`
--
ALTER TABLE `banner2landing`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `banner_kategori`
--
ALTER TABLE `banner_kategori`
  ADD PRIMARY KEY (`id_bk`);

--
-- Indexes for table `jumbotron`
--
ALTER TABLE `jumbotron`
  ADD PRIMARY KEY (`id_jum`);

--
-- Indexes for table `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id_kategori`);

--
-- Indexes for table `kategori_awal`
--
ALTER TABLE `kategori_awal`
  ADD PRIMARY KEY (`id_kategori_awal`);

--
-- Indexes for table `kota_asal`
--
ALTER TABLE `kota_asal`
  ADD PRIMARY KEY (`id_kota_asal`);

--
-- Indexes for table `lempar`
--
ALTER TABLE `lempar`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`id_order`);

--
-- Indexes for table `order_detail`
--
ALTER TABLE `order_detail`
  ADD PRIMARY KEY (`id_order_detail`);

--
-- Indexes for table `produk`
--
ALTER TABLE `produk`
  ADD PRIMARY KEY (`id_produk`);

--
-- Indexes for table `reward`
--
ALTER TABLE `reward`
  ADD PRIMARY KEY (`id_reward`);

--
-- Indexes for table `saldo`
--
ALTER TABLE `saldo`
  ADD PRIMARY KEY (`id_saldo`),
  ADD UNIQUE KEY `id_user` (`id_user`);

--
-- Indexes for table `tarik_saldo`
--
ALTER TABLE `tarik_saldo`
  ADD PRIMARY KEY (`id_tarik`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `email_user` (`email_user`);

--
-- Indexes for table `user_copy`
--
ALTER TABLE `user_copy`
  ADD PRIMARY KEY (`id_user`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `email_user` (`email_user`);

--
-- Indexes for table `user_import`
--
ALTER TABLE `user_import`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_import_test`
--
ALTER TABLE `user_import_test`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `banner2landing`
--
ALTER TABLE `banner2landing`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `banner_kategori`
--
ALTER TABLE `banner_kategori`
  MODIFY `id_bk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `jumbotron`
--
ALTER TABLE `jumbotron`
  MODIFY `id_jum` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id_kategori` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `kategori_awal`
--
ALTER TABLE `kategori_awal`
  MODIFY `id_kategori_awal` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `kota_asal`
--
ALTER TABLE `kota_asal`
  MODIFY `id_kota_asal` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=116;

--
-- AUTO_INCREMENT for table `produk`
--
ALTER TABLE `produk`
  MODIFY `id_produk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=195;

--
-- AUTO_INCREMENT for table `reward`
--
ALTER TABLE `reward`
  MODIFY `id_reward` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `saldo`
--
ALTER TABLE `saldo`
  MODIFY `id_saldo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tarik_saldo`
--
ALTER TABLE `tarik_saldo`
  MODIFY `id_tarik` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `user_import`
--
ALTER TABLE `user_import`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1418;

--
-- AUTO_INCREMENT for table `user_import_test`
--
ALTER TABLE `user_import_test`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
