-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 23, 2021 at 03:14 AM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 8.0.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pesonakarawang_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `compare`
--

CREATE TABLE `compare` (
  `kd_compare` int(11) NOT NULL,
  `type` text NOT NULL,
  `gambar` text NOT NULL,
  `gambar_large` text NOT NULL,
  `gambar_kotak` text NOT NULL,
  `gambar_view` text NOT NULL,
  `max` text NOT NULL,
  `view` text NOT NULL,
  `detail` text NOT NULL,
  `rate` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `compare`
--

INSERT INTO `compare` (`kd_compare`, `type`, `gambar`, `gambar_large`, `gambar_kotak`, `gambar_view`, `max`, `view`, `detail`, `rate`) VALUES
(1, 'Curug', '', '8599bdabc962065596d39befd5633353.jpg', '49e9be3225263f7e02aa7cfbdec18357.jpg', '', '', '', '<p>Curug Cigentis merupakan salah satu dari rangkaian air terjun yang ada di kawasan Gunung Loji dan Gunung Sanggabuana. Kawasan ini berada di bawah pengawasan RPH Cigunungsari BKPH Purwakarta.</p>\r\n\r\n<p>Air terjun ini memiliki tinggi total kurang lebih 25 meter dan berada di ketinggian 1000 meter di atas permukaan laut. Sebagai lokasi wisata, curug ini menawarkan panorama air terjun memukau yang diselimuti oleh pemandangan alam yang masih asri.</p>\r\n', 20000),
(2, 'Bangunan Kuno', '', 'e289a34ee00fd205aa9afe3dd7abfb59.jpg', 'f7b3ee189dc9a731bf6f9e593e64f9dd.jpg', '', '', '', '<p>Vihara Sian Djin Ku Po ini merupakan tempat rombongan Tionghoa yang mendarat dari Teluk Ujung Karawang. Kemudian rombongan tersebut menuju Muara Cabangbungin, Bekasi dan menyusuri sungai Citarum. Didirikan tahun 1770 oleh rombongan dan kebanyakan mereka memang memiliki marga Tjiong, Khouw dan juga Lauw. Rombongan sendiri juga membawa abu luhur mereka yang disebut Sian Djin Ku Poh dimana nama ini dijadikan nama Vihara</p>\r\n', 25000),
(3, 'Tempat Sejarah', '', 'cabffb2aaa4a7d6853130a2a6e27b77e.jpg', '551806abc3c2345cd5423caac249300d.jpg', '', '', '', '<p>Monumen berbentuk berupa tugu dengan teks proklamasi dibagian dinding depannya. Menjadi saksi sejarah yang dimiliki oleh Karawang. Monumen Kebulatan Tekad Rengasdengklok ini berada di Jalan Raya Rengasdengklok. Ada perasaan haru melihat monumen sejarah tepat di depan mata.</p>\r\n', 17000),
(4, 'Curug', '', '145067b013ee650c19d9d6c5fad8c309.jpg', 'c5573ccfad0ff50e9fe0e74aa42d45dc.jpg', '', '', '', '<p>Green Canyon merupakan sebuah ngarai yang mana terbentuk dari erosi tanah. Erosi ini berasal dari adanya aliran sungai yang mengalir selama kurang lebih ratusan tahun di dalam gua. Tak hanya ada di Amerika tetapi Green Canyon juga ada di Karawang. Untuk sampai di lokasi ini wisatawan bisa berjalan kaki kurang lebih 1 KM dari perkampungan di Dusun Cipaga.</p>\r\n\r\n<p>Awalnya tempat ini memang menjadi tempat wisata untuk warga sekitar namun makin lama makin populer yang dan terkenal hingga wisatawan luar Karawang. Letak Green Canyon ini ada di Kampung Tonjong Roke Desa Medalsari. Tidak ada pintu masuk utama di kawasan objek wisata alam ini dan biaya tiket masuk pun hanya beberapa rupiah saja.</p>\r\n', 15000);

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE `events` (
  `event_id` int(11) NOT NULL,
  `event_post` timestamp NULL DEFAULT current_timestamp(),
  `event_nama` varchar(100) DEFAULT NULL,
  `event_jadwal` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `events`
--

INSERT INTO `events` (`event_id`, `event_post`, `event_nama`, `event_jadwal`) VALUES
(1, '2021-12-25 03:08:30', 'PROMO NATAL &amp; TAHUN BARU', '25 - 31 Desember 2021'),
(2, '2021-05-05 06:29:00', 'PROMO HARI RAYA IDUL FITRI', '05 - 10 Mei 2022'),
(3, '2021-08-17 07:25:12', 'PROMO MERDEKA', '17 - 20 Agustus 2021');

-- --------------------------------------------------------

--
-- Table structure for table `inbox`
--

CREATE TABLE `inbox` (
  `inbox_id` int(11) NOT NULL,
  `inbox_nama` varchar(70) DEFAULT NULL,
  `inbox_email` varchar(70) DEFAULT NULL,
  `inbox_subject` varchar(200) DEFAULT NULL,
  `inbox_pesan` text DEFAULT NULL,
  `inbox_status` int(11) DEFAULT 1,
  `inbox_tanggal` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

CREATE TABLE `kategori` (
  `kategori_id` int(11) NOT NULL,
  `kategori_nama` varchar(30) DEFAULT NULL,
  `kategori_tanggal` timestamp NULL DEFAULT current_timestamp(),
  `kategori_slug` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kategori`
--

INSERT INTO `kategori` (`kategori_id`, `kategori_nama`, `kategori_tanggal`, `kategori_slug`) VALUES
(1, 'Seni & Budaya', '2021-12-12 05:54:35', 'seni-&-budaya'),
(2, 'Sejarah', '2021-12-12 06:10:23', 'sejarah'),
(3, 'Kuliner', '2021-12-12 06:30:43', 'kuliner'),
(4, 'Lain-lain', '2021-12-12 06:31:29', 'lain-lain');

-- --------------------------------------------------------

--
-- Table structure for table `kontak`
--

CREATE TABLE `kontak` (
  `kd_kontak` int(11) NOT NULL,
  `des` text NOT NULL,
  `alamat` text NOT NULL,
  `telp` text NOT NULL,
  `email` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `kontak`
--

INSERT INTO `kontak` (`kd_kontak`, `des`, `alamat`, `telp`, `email`) VALUES
(1, 'Anda adalah orang penting bagi pesonakarawang.com jika anda punya masalah mengenai kami silahkan kontak kami, dengan senang hati kami melayani anda', 'Jl. Karawang no1, Kabupaten Karawang, Jawa Barat', '085894407494', 'pesonakarawang@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `overview`
--

CREATE TABLE `overview` (
  `kd_over` int(11) NOT NULL,
  `head` varchar(200) NOT NULL,
  `des` text NOT NULL,
  `gambar` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `overview`
--

INSERT INTO `overview` (`kd_over`, `head`, `des`, `gambar`) VALUES
(1, 'about', '<p>Pesonakarawang.com adalah aplikasi berbasis website penyedia tiket pariwisata, informasi wisata, khusus daerah karawang.  Aplikasi ini dikembangkan untuk membantu wisatawan yang sedang atau akan liburan di Kabupaten Karawang. Dengan Aplikasi ini wisatawan (User) akan disuguhkan dengan berbagai macam tempat (spot) wisata yang menarik untuk dikunjungi. Tidak hanya tempat wisata, wisatawan juga akan disuguhkan fitur menarik yang tersedia di website pesonakarawang.com ini. Diantaranya, wisatawan dapat memberikan penilaian (rating) pada tempat wisata yang disukai, memberikan saran/masukan ke pada developer, dan fitur-fitur lainnya yang dapat di akses diwebsite. Aplikasi ini juga mudah untuk digunakan oleh berbagai macam kalangan, di tambah dengan harga yang terjangkau  wisatawan  sudah dapat liburan di Karawang.</a></p>', 'about.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `pengguna`
--

CREATE TABLE `pengguna` (
  `pengguna_id` int(11) NOT NULL,
  `pengguna_nama` varchar(50) DEFAULT NULL,
  `pengguna_moto` varchar(100) DEFAULT NULL,
  `pengguna_jenkel` varchar(2) DEFAULT NULL,
  `pengguna_username` varchar(30) DEFAULT NULL,
  `pengguna_password` varchar(35) DEFAULT NULL,
  `pengguna_tentang` text DEFAULT NULL,
  `pengguna_email` varchar(50) DEFAULT NULL,
  `pengguna_nohp` varchar(20) DEFAULT NULL,
  `pengguna_status` int(2) DEFAULT 1,
  `pengguna_level` varchar(3) DEFAULT NULL,
  `pengguna_register` timestamp NULL DEFAULT current_timestamp(),
  `pengguna_photo` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pengguna`
--

INSERT INTO `pengguna` (`pengguna_id`, `pengguna_nama`, `pengguna_moto`, `pengguna_jenkel`, `pengguna_username`, `pengguna_password`, `pengguna_tentang`, `pengguna_email`, `pengguna_nohp`, `pengguna_status`, `pengguna_level`, `pengguna_register`, `pengguna_photo`) VALUES
(1, 'Trisna Syamsul Firmansyah', NULL, 'L', 'Admin 1', '25f9e794323b453885f5181f1b624d0b', NULL, 'Trisna123@gmail.com', '085778720072', 1, '1', '2021-12-10 02:42:17', '00442fcc2db4fa7dc78e0c9b10ecb24e.jpg'),
(2, 'Afiyani Ma&#039;rifah', NULL, 'P', 'admin 2', 'be46b744b9688c0a5beb94bf0d272177', NULL, 'afiyani115@gmail.com', '085881667945', 1, '1', '2021-12-12 06:43:56', '7b09200b98155a0f21ebf5f48d765acf.jpg'),
(3, 'Fadilah Guntoro Hagi', NULL, 'L', 'admin 3', '3e696b1a5db7473e49faf665bc62b449', NULL, 'hadgie100@gmail.com', '085894407494', 1, '1', '2021-12-12 06:58:59', 'de3e6e48497066025faa34519c9cfd5f.jpg'),
(4, 'Gugum Gumilar S Handoko', NULL, 'L', 'admin 4', '5ced9bc81b3b454f7ae36faa893b9196', NULL, 'gumilar.handoko@gmail.com', '081314315070', 1, '1', '2021-12-12 07:02:21', 'e38a7fb190961f9f97c9313d264e85a7.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `pengunjung`
--

CREATE TABLE `pengunjung` (
  `pengunjung_id` int(11) NOT NULL,
  `pengunjung_tanggal` timestamp NULL DEFAULT current_timestamp(),
  `pengunjung_ip` varchar(25) DEFAULT NULL,
  `pengunjung_perangkat` varchar(80) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pengunjung`
--

INSERT INTO `pengunjung` (`pengunjung_id`, `pengunjung_tanggal`, `pengunjung_ip`, `pengunjung_perangkat`) VALUES
(1, '2021-12-14 03:56:58', '115.178.215.181', 'Firefox'),
(2, '2021-12-14 04:00:02', '180.246.53.129', 'Chrome'),
(3, '2021-12-14 04:44:44', '114.124.149.169', 'Chrome'),
(4, '2021-12-14 04:50:36', '115.178.193.12', 'Chrome'),
(5, '2021-12-16 02:51:14', '::1', 'Chrome'),
(6, '2021-12-20 06:16:56', '::1', 'Chrome');

-- --------------------------------------------------------

--
-- Table structure for table `post_views`
--

CREATE TABLE `post_views` (
  `views_id` int(11) NOT NULL,
  `views_tanggal` timestamp NULL DEFAULT current_timestamp(),
  `views_ip` varchar(40) DEFAULT NULL,
  `views_tulisan_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `post_views`
--

INSERT INTO `post_views` (`views_id`, `views_tanggal`, `views_ip`, `views_tulisan_id`) VALUES
(13, '2021-12-10 07:38:24', '::1', 67),
(14, '2021-12-11 07:09:52', '::1', 68),
(15, '2021-12-11 07:14:13', '::1', 70),
(16, '2021-12-12 06:34:28', '::1', 70),
(17, '2021-12-12 06:37:00', '::1', 71),
(18, '2021-12-12 06:40:49', '::1', 72),
(19, '2021-12-12 07:26:52', '::1', 74),
(20, '2021-12-12 07:27:03', '::1', 73),
(21, '2021-12-14 06:04:14', '::1', 73),
(22, '2021-12-15 04:24:05', '::1', 73),
(23, '2021-12-23 01:43:08', '::1', 1);

-- --------------------------------------------------------

--
-- Table structure for table `slider`
--

CREATE TABLE `slider` (
  `kd_gambar` int(11) NOT NULL,
  `gambar` varchar(40) DEFAULT NULL,
  `caption_1` varchar(200) DEFAULT NULL,
  `caption_2` varchar(200) DEFAULT NULL,
  `caption_3` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `slider`
--

INSERT INTO `slider` (`kd_gambar`, `gambar`, `caption_1`, `caption_2`, `caption_3`) VALUES
(1, 'b01e948fcd9dad77dd44311e641d1c9c.jpg', 'WILUJEUNG SUMPING', 'DIKARAWANG', 'SOLUSI PERJALANAN ANDA');

-- --------------------------------------------------------

--
-- Table structure for table `tour_type`
--

CREATE TABLE `tour_type` (
  `type_id` int(11) NOT NULL,
  `type_nama` varchar(200) DEFAULT NULL,
  `type_rate` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tour_type`
--

INSERT INTO `tour_type` (`type_id`, `type_nama`, `type_rate`) VALUES
(1, 'Curug', 20000),
(2, 'Pantai', 20000),
(3, 'Tempat Sejarah', 30000),
(4, 'Bangunan Kuno', 50000),
(5, 'Lain-lain', 30000);

-- --------------------------------------------------------

--
-- Table structure for table `tulisan`
--

CREATE TABLE `tulisan` (
  `tulisan_id` int(11) NOT NULL,
  `tulisan_judul` varchar(100) DEFAULT NULL,
  `tulisan_isi` longtext DEFAULT NULL,
  `tulisan_tanggal` timestamp NULL DEFAULT current_timestamp(),
  `tulisan_kategori_id` int(11) DEFAULT NULL,
  `tulisan_kategori_nama` varchar(30) DEFAULT NULL,
  `tulisan_views` int(11) DEFAULT 0,
  `tulisan_gambar` varchar(40) DEFAULT NULL,
  `tulisan_pengguna_id` int(11) DEFAULT NULL,
  `tulisan_author` varchar(40) DEFAULT NULL,
  `tulisan_slug` varchar(250) NOT NULL,
  `tulisan_deskripsi` text NOT NULL,
  `tulisan_lang` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tulisan`
--

INSERT INTO `tulisan` (`tulisan_id`, `tulisan_judul`, `tulisan_isi`, `tulisan_tanggal`, `tulisan_kategori_id`, `tulisan_kategori_nama`, `tulisan_views`, `tulisan_gambar`, `tulisan_pengguna_id`, `tulisan_author`, `tulisan_slug`, `tulisan_deskripsi`, `tulisan_lang`) VALUES
(1, 'Kesenian Topeng Banjet', '<p>Kesenian Topeng Banjet adalah kesenian tradisional yang termasuk kedalam teater tradisional. Kesenian Topeng Banjet merupakan seni pertunjukan rakyat yang diawali dengan lawakan dengan Topeng Banjet kemudian diteruskan dengan pertunjukan seni drama tradisional. Topeng Banjet adalah kesenian tradisional khas Kabupaten Karawang.</p>\r\n\r\n<p>Topeng Banjet sudah ada kira-kira sejak tahun 1900an di daerah Kabupaten Karawang Jawa Barat dan mengalami perkembangan di tahun 1996, akan tetapi pada masa itu namanya masih &ldquo;topeng&rdquo; saja. Lama kelamaan kesenian ini menambahkan nama pimpinannya atau ronggengnya yang terkenal, sebagai nama tambahan untuk mempopulerkan sanggar mereka.</p>\r\n\r\n<p>Menurut tokoh-tokoh penggelut seni, kata &ldquo;Banjet&rdquo; sendiri ialah karena di daerah-daerah tersebut (Karawang) pada masa lalu banyak pengamen-pengamen atau kelompok topeng Jawa yang berkeliling. Maka dari itu para tokoh sepakat untuk menambahkan kata &ldquo;Banjet&rdquo; dengan alasan untuk membedakan kesenian Topeng Banjet dengan kesenian lainnya dan menambahkan ciri khas tersendiri.</p>\r\n', '2021-12-12 06:33:56', 1, 'Seni & Budaya', 2, 'd3a3fddcf45c5b16869a3bdad31027e1.jpg', 7, 'Trisna Syamsul Firmansyah', 'topeng-banjet', '', 'id'),
(2, 'Serabi Hijau', '<p>hijau telah dikenal sebagai makanan khas Rengasdengklok, Karawang. Mulai kalangan pejabat, masyarakat biasa hingga mereka yang dari luar negeri pun pernah mencicipi makanan tersebut ketika singgah di kota ini.</p>\r\n\r\n<p>Tidak perlu merogoh kocek terlalu dalam,&nbsp;dengan Rp5.000, pengunjung bisa merasakan legitnya serabi&nbsp;yang dibuat tanpa bahan pengawet ini. Salah seorang pegawai di kedai Sorabi Hijau Rengasdengklok mengatakan, warna hijau pada serabi berasal dari daun suji sehingga memberikan sensasi rasa dan aroma wangi yang khas.</p>\r\n', '2021-12-12 06:50:40', 3, 'Kuliner', 3, '79449c2b3ca7cf797b7fd9e2d7dec8dd.jpg', 8, 'Afiyani Ma&#039;rifah', 'serabihijau', '', 'id'),
(3, 'Rumah Pengasingan Soekarno di Rengasdengklok', '<p>Seringkali sebagian dari kita pernah berpikir bahwa waktu akan memudarkan suatu peristiwa, bahkan akan menenggelamkan memori yang terkandung di dalamnya. Tapi hal itu tidak terjadi di suatu wilayah yang masih menjadi bagian dari Kabupaten Karawang, yaitu Rengasdengklok. Wilayah yang sudah semakin memperlihatkan bukti kemajuan dari suatu kota namun masih cukup asri dengan persawahan dan perkebunan yang membentang di sekelilingnya.&nbsp;</p>\r\n\r\n<p>Jika menyebut Rengasdengklok, maka kebanyakan orang akan mengingat salah satu peristiwa sejarah penting yang pernah terjadi di Indonesia &mdash; di mana terjadi &ldquo;penculikan&rdquo; terhadap Bapak-Bapak Bangsa, Soekarno dan Mohammad Hatta, yang bertujuan untuk menyegerakan kemerdekaan.</p>\r\n\r\n<p>Peristiwa itu terjadi di mana para golongan muda, di antaranya Chaerul Saleh, Soekarni, dan Wikana menginginkan proklamasi kemerdekaan segera dilakukan tanpa campur tangan penjajah Jepang. Berdasarkan alasan tersebut, mereka akhirnya &ldquo;mengamankan&rdquo; Bung Karno dan Bung Hatta ke Rengasdengklok.</p>\r\n', '2021-12-12 06:40:25', 2, 'Sejarah', 1, '812e33b2d221979753f87ed467ae2811.jpg', 9, 'Fadilah Guntoro Hagi', 'rengasdengklok', '', 'id'),
(4, 'Kue Gonjing', '<p>Kue gonjing ini jajanan tradisional yang legendaris di daerah Jawa Barat, khususnya daerah Karawang. Banyak orang yang menyebut kue ini dengan sebutan kue bandros. Kue ini memiliki rasa yang gurih dan enak dengan rasa kelapa yang sangat melekat.</p>\r\n\r\n<p>Kue gonjing ini terbuat dari tepung terigu, garam, dan buah kelapa. Supaya lebih nikmat, kamu bisa menambahkan gula pasir di atasnya. Buat yang suka pedas, kue ini bisa ditambahkan saus sambal didalam adonannya atau di atas kue.</p>\r\n\r\n<p>Kue ini lebih nikmat dimakan langsung saat masih panas, tapi kamu bisa membawanya sebagai oleh-oleh. Hanya saja, kue ini tidak bisa tahan lama, sehingga kurang bagus jika dibawa pulang dengan jarak yang jauh. Ini disebabkan karena terbuat dari kelapa asli tanpa bahan pengawet.</p>\r\n', '2021-12-12 06:53:16', 3, 'Kuliner', 1, '3fef413cc59e8e691c066448a16e5633.jpg', 9, 'Fadilah Guntoro Hagi', 'kuegonjing', '', 'id');

-- --------------------------------------------------------

--
-- Table structure for table `wisata`
--

CREATE TABLE `wisata` (
  `kd_wisata` int(11) NOT NULL,
  `nama` text NOT NULL,
  `gambar` text NOT NULL,
  `detail` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wisata`
--

INSERT INTO `wisata` (`kd_wisata`, `nama`, `gambar`, `detail`) VALUES
(3, 'Curug Cigentis', '86bc15d556f28ddcd8db9c49c092a11a.jpg', '<p>Curug Cigentis merupakan salah satu dari rangkaian air terjun yang ada di kawasan Gunung Loji dan Gunung Sanggabuana. Kawasan ini berada di bawah pengawasan RPH Cigunungsari BKPH Purwakarta.</p>\r\n\r\n<p>Air terjun ini memiliki tinggi total kurang lebih 25 meter dan berada di ketinggian 1000 meter di atas permukaan laut. Sebagai lokasi wisata, curug ini menawarkan panorama air terjun memukau yang diselimuti oleh pemandangan alam yang masih asri.</p>\r\n'),
(4, 'Vihara Sian Djin Ku Po', 'a3fdbd607946748d66ed3778c6f6af99.jpg', '<p>Vihara Sian Djin Ku Po ini merupakan tempat rombongan Tionghoa yang mendarat dari Teluk Ujung Karawang. Kemudian rombongan tersebut menuju Muara Cabangbungin, Bekasi dan menyusuri sungai Citarum. Didirikan tahun 1770 oleh rombongan dan kebanyakan mereka memang memiliki marga Tjiong, Khouw dan juga Lauw. Rombongan sendiri juga membawa abu luhur mereka yang disebut Sian Djin Ku Poh dimana nama ini dijadikan nama Vihara</p>\r\n'),
(5, 'Green Canyon', '10ed42b8e5ba6e0cea595356723c5589.jpg', '<p>Green Canyon merupakan sebuah ngarai yang mana terbentuk dari erosi tanah. Erosi ini berasal dari adanya aliran sungai yang mengalir selama kurang lebih ratusan tahun di dalam gua. Tak hanya ada di Amerika tetapi Green Canyon juga ada di Karawang. Untuk sampai di lokasi ini wisatawan bisa berjalan kaki kurang lebih 1 KM dari perkampungan di Dusun Cipaga.</p>\r\n\r\n<p>Awalnya tempat ini memang menjadi tempat wisata untuk warga sekitar namun makin lama makin populer yang dan terkenal hingga wisatawan luar Karawang. Letak Green Canyon ini ada di Kampung Tonjong Roke Desa Medalsari. Tidak ada pintu masuk utama di kawasan objek wisata alam ini dan biaya tiket masuk pun hanya beberapa rupiah saja.</p>\r\n'),
(6, 'Monumen Kebulatan Tekad Rengasdengklok', '31ac4120ae8bdc66d7018f8a3625c8ec.jpg', '<p>Monumen terbentuk berupa tugu dengan teks proklamasi dibagian dinding depannya. Menjadi saksi sejarah yang dimiliki oleh Karawang. Monumen Kebulatan Tekad Rengasdengklok ini berada di Jalan Raya Rengasdengklok. Ada perasaan haru melihat monumen sejarah tepat di depan mata.</p>\r\n');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `compare`
--
ALTER TABLE `compare`
  ADD PRIMARY KEY (`kd_compare`);

--
-- Indexes for table `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`event_id`);

--
-- Indexes for table `inbox`
--
ALTER TABLE `inbox`
  ADD PRIMARY KEY (`inbox_id`);

--
-- Indexes for table `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`kategori_id`);

--
-- Indexes for table `kontak`
--
ALTER TABLE `kontak`
  ADD PRIMARY KEY (`kd_kontak`);

--
-- Indexes for table `overview`
--
ALTER TABLE `overview`
  ADD PRIMARY KEY (`kd_over`);

--
-- Indexes for table `pengguna`
--
ALTER TABLE `pengguna`
  ADD PRIMARY KEY (`pengguna_id`);

--
-- Indexes for table `pengunjung`
--
ALTER TABLE `pengunjung`
  ADD PRIMARY KEY (`pengunjung_id`);

--
-- Indexes for table `post_views`
--
ALTER TABLE `post_views`
  ADD PRIMARY KEY (`views_id`);

--
-- Indexes for table `slider`
--
ALTER TABLE `slider`
  ADD PRIMARY KEY (`kd_gambar`);

--
-- Indexes for table `tour_type`
--
ALTER TABLE `tour_type`
  ADD PRIMARY KEY (`type_id`);

--
-- Indexes for table `tulisan`
--
ALTER TABLE `tulisan`
  ADD PRIMARY KEY (`tulisan_id`),
  ADD KEY `tulisan_kategori_id` (`tulisan_kategori_id`),
  ADD KEY `tulisan_pengguna_id` (`tulisan_pengguna_id`);

--
-- Indexes for table `wisata`
--
ALTER TABLE `wisata`
  ADD PRIMARY KEY (`kd_wisata`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `compare`
--
ALTER TABLE `compare`
  MODIFY `kd_compare` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `events`
--
ALTER TABLE `events`
  MODIFY `event_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `inbox`
--
ALTER TABLE `inbox`
  MODIFY `inbox_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `kategori`
--
ALTER TABLE `kategori`
  MODIFY `kategori_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `kontak`
--
ALTER TABLE `kontak`
  MODIFY `kd_kontak` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `overview`
--
ALTER TABLE `overview`
  MODIFY `kd_over` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `pengguna`
--
ALTER TABLE `pengguna`
  MODIFY `pengguna_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `pengunjung`
--
ALTER TABLE `pengunjung`
  MODIFY `pengunjung_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3041;

--
-- AUTO_INCREMENT for table `post_views`
--
ALTER TABLE `post_views`
  MODIFY `views_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `slider`
--
ALTER TABLE `slider`
  MODIFY `kd_gambar` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tour_type`
--
ALTER TABLE `tour_type`
  MODIFY `type_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tulisan`
--
ALTER TABLE `tulisan`
  MODIFY `tulisan_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;

--
-- AUTO_INCREMENT for table `wisata`
--
ALTER TABLE `wisata`
  MODIFY `kd_wisata` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
