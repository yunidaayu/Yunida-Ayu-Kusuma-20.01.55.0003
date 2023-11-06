-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 06, 2023 at 05:30 AM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `wisata_semarang`
--

-- --------------------------------------------------------

--
-- Table structure for table `wisata`
--

CREATE TABLE `wisata` (
  `Id_wisata` int(11) NOT NULL,
  `nama_wisata` varchar(250) NOT NULL,
  `alamat` varchar(300) NOT NULL,
  `diskripsi` varchar(500) NOT NULL,
  `harga_tiket` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `wisata`
--

INSERT INTO `wisata` (`Id_wisata`, `nama_wisata`, `alamat`, `diskripsi`, `harga_tiket`) VALUES
(1, 'Klenteng Sam Po Kong.', 'Jalan Simongan Raya No.129 Semarang', 'Sam Po Kong adalah salah satu tepat wisata yang paling hits dan terkenal di Semarang. Tempat peribadatan masyarakat Konghucu ini selalu ramai setiap harinya. Bangunannya yang megah serta arsitekturnya yang unik memberikan nuansa bak berada di negeri China. Dalam kompleks ini juga terdapat patung Laksamana Cheng Ho berdiri di depan klenteng.', '5000'),
(2, 'Lawang Sewu', 'Jl. Pemuda No.160, Sekayu, Kec. Semarang Tengah, Kota Semarang, Jawa Tengah 50132', 'Gedung berarsitektur khas Belanda ini berada tepat di jantung Kota Semarang. Tepatnya di depan bundaran Tugu Muda, Jalan Pemuda, Semarang. Orang mengenal tempat wisata ini karena pintunya yang sangat banyak sehingga menyebutnya dengan Lawang Sewu (seribu pintu). Dulunya tempat ini merupakan kantor kereta api, namun sekarang difungsikan sebagai wisata budaya yang memiliki banyak sejarah', '10000'),
(3, 'Puri Maerokoco', 'BRT PRPP, Tawangsari, Kec. Semarang Barat, Kota Semarang, Jawa Tengah 50144', 'Tak jauh dari pusat kota, mengarah ke Jalan Yos Sudarso, Semarang kamu bisa menemukan wisata keluarga Puri Maerokoco. Bisa dikatakan Puri Maerokoco ini adah taman mininya Jawa Tengah. Tempat wisata edukasi ini memiliki anjungan dengan 35 rumah adat dari berbagai kota maupun kabupaten yang ada di Jawa Tengah', '15000'),
(4, 'Goa Kreo', 'Jl. Raya Goa Kreo, Kandri, Kec. Gn. Pati, Kota Semarang, Jawa Tengah 50222', 'Goa yang terbentuk secara alami ini terdapat di daerah Waduk Jatibarang, Gunungpati, Semarang. Kamu akan menjumpai banyak monyet ekor panjang di sana. Selain goa, terdapat juga air terjun, fasilitas seperti gazebo, rumah makan dan juga panggung hiburan. Jika puas menyusuri goa kamu dapat menikmati pemandangan dari atas jembatan waduk Jatibarang.', '4000'),
(5, 'Masjid Agung Jawa Tengah.', 'Jalan Gajah Raya, Gayamsari', 'Masjid ini menjadi salah satu tempat tujuan wisata religi di Semarang untuk kaum muslim. Bangunannya yang megah dan memiliki enam payung raksasa seperti masjid Nabawi di Madinah, akan bikin kamu takjub memandanginya. Kamu juga bisa naik ke menara yang ada di masjid ini.', '7000'),
(6, 'Pagoda Avalokitesvara', 'Jalan Perintis Kemerdekaan, Pundakpayung, Banyumanik, Semarang.', 'Tempat wisata gratis ini adalah Pagoda yang memiliki tinggi sekitar 45 meter dan dibangun pada tahun 1955. Bangunan ini terdiri dari tujuh tingkat. Sama halnya dengan Sam Po Kong, desain bangunannya yang didominasi warna kuning dan merah ini sangat menarik dikunjungi.', 'gratis'),
(7, 'Wisata Eling Bening.', 'Jalan Sarjono, Bawen, Kabupaten Semarang, Provinsi Jawa Tengah.', 'Wisata Eling Bening menawarkan view indah dan memesona yaitu hamparan luas rawa pening serta pegunungan yang mengelilingi rawa. Lokasinya yang berada di perbukitan Jalan Lingkar Ambarawa, Kabupaten Semarang ini sayang untuk dilewatkan.\r\n\r\nKamu bisa menikmati pemandangan sambil menyantap makanan yang ada di restoran Eling Bening. Bagi kamu yang hobi berenang, bisa juga juga berenang di kolam outdoor sambil menikmati keindahan yang ada. Tempat ini bisa dibilang lengkap, ada juga camping ground, ch', '15000'),
(8, 'Curug Lawe', 'RT.01/RW.06, Hutan, Kalisidi, Kec. Ungaran Bar., Kabupaten Semarang, Jawa Tengah 50519', 'Lokasi Curug Lawe berada di Desa Kalisidi, Kecamatan Ungaran Utara, Semarang. Untuk mencapai tempat yang indah ini kamu harus berjalan sekitar 15-20 menit melewati kawasan perkebunan PT Cengkih Zanzibar. Air terjun ini memiliki ketinggian sekitar 40 meter.', '4000'),
(9, 'Candi Gedong Songo.', 'Jalan Ke Candi Gedong Songo, Candi, Krajan, Banyukuning, Bandungan, Kabupaten Semarang, Jawa Tengah 50614', 'Seperti namanya kompleks candi yang terdiri dari 9 candi ini dinamakan Candi Gedong Songo. Di sekitar candi ini kamu bisa menikmati kegiatan berkuda atau mandi air panas yang mengandung belerang. Lokasinya berada di ketinggian sekitar 1.200 mdpl di lereng gunung Ungaran,kabupaten Semarang.', '10000'),
(10, 'Setiya Aji Flower Farm.', 'Jl. Kendalisodo, Piyato, Bandungan, Kabupaten Semarang, Jawa Tengah 50614', 'Kebun bunga ini berada di Jalan Kendalisodo, Dusun Ngasem Lor, Desa Njetis, Bandungan, Kabupaten Semarang. Dengan hamparan pemandangan bunga krisan, kamu bisa berfoto romantis bersama teman dekat, sahabat maupun keluarga. ', '7500');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `wisata`
--
ALTER TABLE `wisata`
  ADD PRIMARY KEY (`Id_wisata`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `wisata`
--
ALTER TABLE `wisata`
  MODIFY `Id_wisata` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
