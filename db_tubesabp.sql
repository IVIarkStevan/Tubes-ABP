-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 11, 2022 at 01:36 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_tubesabp`
--

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `kemahs`
--

CREATE TABLE `kemahs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `alamat` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `harga` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `fasilitas` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `website` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image1` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image2` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image3` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `kemahs`
--

INSERT INTO `kemahs` (`id`, `title`, `slug`, `excerpt`, `description`, `alamat`, `harga`, `fasilitas`, `website`, `contact`, `image1`, `image2`, `image3`, `created_at`, `updated_at`) VALUES
(1, 'Ranca Upas', 'ranca-upas', 'Ranca Upas menjadi tempat camping di Bandung yang sebenarnya berlokasi di tempat penangkaran rusa. ...', 'Ranca Upas menjadi tempat camping di Bandung yang sebenarnya berlokasi di tempat penangkaran rusa. Luasnya berkisar sekitar 215 hektar dan berada di ketinggian 1.700 meter di atas permukaan laut. Berhubung lokasinya di dataran tinggi, maka tidak mengherankan kalau cuaca di sini sangatlah dingin sehingga Moms harus menggunakan pakaian yang tebal.', 'Jalan Raya Ciwidey - Patengan No.KM. 11, Patengan,Kecamatan Rancabali, Bandung, Jawa Barat 40973', 'Rp22.000 untuk wisatawan lokal dan Rp44.000 untuk wisatawan asing', 'Bumi Perkemahan, Kolam Renang, Kids play Ground, Penangkaran Rusa Timorensis, Warung Makan', 'https://www.instagram.com/ranca_upas/', '0813-2373-9973', '/img/rancaupas/ranca1.jpg', '', '', '2022-04-11 03:51:54', '2022-04-11 03:51:54'),
(2, 'Dusun Bambu', 'dusun-bambu', 'Buat Moms yang ingin pergi berkemah dengan keluarga, Eagle Camp Dusun Bambu menjadi tempat camping ...', 'Buat Moms yang ingin pergi berkemah dengan keluarga, Eagle Camp Dusun Bambu menjadi tempat camping di Bandung yang cocok didatangi. Eagle Camp Dusun Bambu memiliki fasilitas yang sangat lengkap. Mulai dari perapian untuk BBQ hingga taman rekreasi yang cocok untuk buah hati bermain.', 'Jalan Kolonel Masturi No.KM. 11, Kertawangi, Kecamatan Cisarua, Kabupaten Bandung Barat, Jawa Barat 40551', 'Rp15.000 per orang', '', 'https://www.instagram.com/dusun_bambu/', '', '/img/dusunbambu/dusun1.jpg', '/img/dusunbambu/dusun2.jpg', '/img/dusunbambu/dusun3.jpg', '2022-04-11 03:52:43', '2022-04-11 03:52:43'),
(3, 'Maribaya', 'maribaya', 'Tempat camping di Bandung selanjutnya adalah The Lodge Maribaya. Tenda-tenda yang ada di sini sangat ...', 'Tempat camping di Bandung selanjutnya adalah The Lodge Maribaya. Tenda-tenda yang ada di sini sangat unik karena berbentuk bulat dengan bagian atas yang mengecil seperti cerobong perapian. The Lodge Maribaya ini juga punya fasilitas yang lengkap. Mulai dari water heater, perlengkapan mandi, dan lain sebagainya.', 'Jalan Maribaya No. 149/252 RT. 03 / RW. 15 Babakan, Gentong, Cibodas, Lembang, Kabupaten Bandung Barat, Jawa Barat 40391', 'Rp20.000-Rp35.000 per orang', '', 'https://www.instagram.com/maribayaresort/', '', '/img/maribaya/mari1.jpg', '/img/maribaya/mari2.jpg', '/img/maribaya/mari3.jpg', '2022-04-11 03:52:48', '2022-04-11 03:52:48'),
(4, 'Pine Forest Camp', 'pine-forest-camp', 'Pine Forest Camp adalah tempat camping di Bandung yang berada di ketinggian 1200 meter di atas ...', 'Pine Forest Camp adalah tempat camping di Bandung yang berada di ketinggian 1200 meter di atas permukaan laut. Tempat camping di Bandung ini berlokasi di dalam hutan pinus sehingga jika Moms berkemah di sini akan dikelilingi oleh pohon pinus. Pemandangan di sini sangat asri dan pastinya udaranya sangat sejuk.', 'Suntenjaya, Lembang, Kabupaten Bandung Barat, Jawa Barat 40391', 'Rp25.000 per orang', '', 'http://www.pineforestcamp.web.id/', '', '/img/pineforest/pineforest1.jpg', '', '', '2022-04-11 03:52:52', '2022-04-11 03:52:52'),
(5, 'Lorem ipsum', 'lorem-ipsum', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Perferendis harum quisquam, sequi atque ...', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Perferendis harum quisquam, sequi atque illo magni, ipsa ratione unde veritatis ullam odio reiciendis, quibusdam dolore. Quis non blanditiis quam ipsum quos provident necessitatibus atque rerum inventore et, ratione laboriosam impedit officiis officia minus magni ducimus, id neque, maxime reprehenderit? Repudiandae sapiente dignissimos nobis tempora id et rem iste ab voluptas nihil suscipit aliquid atque harum cupiditate maiores quasi, ut dolorum non veniam beatae mollitia, similique molestias error? Commodi eaque ea reiciendis quas expedita officia voluptates excepturi delectus rerum reprehenderit aut animi exercitationem quisquam numquam earum, saepe repellendus cupiditate sed tenetur! Explicabo.', 'Lorem ipsum dolor sit amet consectetur adipisicing elit.', 'Rp999.999.999 per lorem', 'Lorem, ipsum, dolor, sit, dan amet', 'https://loremipsum.io/', '999999999', '/img/lorem/lorem1.jpg', '/img/lorem/lorem1.jpg', '/img/lorem/lorem1.jpg', '2022-04-11 03:52:57', '2022-04-11 03:52:57');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_04_11_070037_create_kemahs_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `kemahs`
--
ALTER TABLE `kemahs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `kemahs_slug_unique` (`slug`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `kemahs`
--
ALTER TABLE `kemahs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
