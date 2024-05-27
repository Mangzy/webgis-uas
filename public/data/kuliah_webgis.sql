-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 26 Bulan Mei 2024 pada 06.50
-- Versi server: 10.4.32-MariaDB
-- Versi PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kuliah_webgis`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2024_05_24_145855_create_titik_models_table', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('bC8ZVK0WnqyWQ8FemGyM6YVsRnh5abhQsdOr5JlK', NULL, '127.0.0.1', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Mobile Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiUDV2bE42NkVkY1JENXBVMVcyaG84ZW5JNHNKNDk3Zk9pY0FLeFZCVCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1716696123);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_location`
--

CREATE TABLE `tbl_location` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `picture` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `tbl_location`
--

INSERT INTO `tbl_location` (`id`, `name`, `address`, `picture`) VALUES
(1, 'Point A', 'Jalan Point A No 2', 'rumah.jpg'),
(2, 'Point B', 'Jalan Point B No 55\r\n', 'rumah.jpg'),
(3, 'Point C', 'Jalan Point C No 3', 'rumah.jpg'),
(4, 'Point D', 'Jalan Point D No 97', 'rumah.jpg'),
(5, 'Point E', 'Jalan Point E No 34', 'rumah.jpg'),
(6, 'Point F', 'Jalan Point F No 88', 'rumah.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_point`
--

CREATE TABLE `tbl_point` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `latitude` varchar(25) NOT NULL,
  `longitude` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `tbl_point`
--

INSERT INTO `tbl_point` (`id`, `name`, `latitude`, `longitude`) VALUES
(1, 'Point A', '112.75019021018727', '-7.328777187778627'),
(2, 'Point B', '112.74575876417396', '-7.328987277012658');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_provinsi`
--

CREATE TABLE `tbl_provinsi` (
  `id` varchar(4) DEFAULT NULL,
  `name` varchar(35) DEFAULT NULL,
  `serial` varchar(6) DEFAULT NULL,
  `type` varchar(4) DEFAULT NULL,
  `latitude` varchar(10) DEFAULT NULL,
  `longitude` varchar(10) DEFAULT NULL,
  `status` varchar(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data untuk tabel `tbl_provinsi`
--

INSERT INTO `tbl_provinsi` (`id`, `name`, `serial`, `type`, `latitude`, `longitude`, `status`) VALUES
('nid', 'name', 'serial', 'type', 'latitude', 'longitude', 'status'),
('1', 'Provinsi Aceh', '11', '1', '4.695135', '96.7493993', '1'),
('2', 'Provinsi Sumatera Utara', '12', '1', '2.1153547', '99.5450974', '1'),
('3', 'Provinsi Sumatera Barat', '13', '1', '-0.7399397', '100.800005', '1'),
('4', 'Provinsi Riau', '14', '1', '0.2933469', '101.706829', '1'),
('5', 'Provinsi Jambi', '15', '1', '-1.4851831', '102.438058', '1'),
('6', 'Provinsi Sumatera Selatan', '16', '1', '-3.3194374', '103.914399', '1'),
('7', 'Provinsi Bengkulu', '17', '1', '-3.5778471', '102.346387', '1'),
('8', 'Provinsi Lampung', '18', '1', '-4.5585849', '105.406807', '1'),
('9', 'Provinsi Kepulauan Bangka Belitung', '19', '1', '-2.7410513', '106.440587', '1'),
('10', 'Provinsi Kepulauan Riau', '21', '1', '3.9456514', '108.142866', '1'),
('11', 'Provinsi DKI Jakarta', '31', '1', '-6.211544', '106.845172', '1'),
('12', 'Provinsi Jawa Barat', '32', '1', '-7.090911', '107.668887', '1'),
('13', 'Provinsi Jawa Tengah', '33', '1', '-7.150975', '110.140259', '1'),
('14', 'Provinsi DI Yogyakarta', '34', '1', '-7.8753849', '110.426208', '1'),
('15', 'Provinsi Jawa Timur', '35', '1', '-7.5360639', '112.238401', '1'),
('16', 'Provinsi Banten', '36', '1', '-6.4058172', '106.064017', '1'),
('17', 'Provinsi Bali', '51', '1', '-8.4095178', '115.188916', '1'),
('18', 'Provinsi Nusa Tenggara Barat', '52', '1', '-8.6529334', '117.361647', '1'),
('19', 'Provinsi Nusa Tenggara Timur', '53', '1', '-8.6573819', '121.079370', '1'),
('20', 'Provinsi Kalimantan Barat', '61', '1', '-0.2787808', '111.475285', '1'),
('21', 'Provinsi Kalimantan Tengah', '62', '1', '-1.6814878', '113.382354', '1'),
('22', 'Provinsi Kalimantan Selatan', '63', '1', '-3.0926415', '115.283758', '1'),
('23', 'Provinsi Kalimantan Timur', '64', '1', '1.6406296', '116.419389', '1'),
('24', 'Provinsi Sulawesi Utara', '71', '1', '0.6246932', '123.975001', '1'),
('25', 'Provinsi Sulawesi Tengah', '72', '1', '-1.4300254', '121.445617', '1'),
('26', 'Provinsi Sulawesi Selatan', '73', '1', '-3.6687994', '119.974053', '1'),
('27', 'Provinsi Sulawesi Tenggara', '74', '1', '-4.14491', '122.174605', '1'),
('28', 'Provinsi Gorontalo', '75', '1', '0.6999372', '122.446723', '1'),
('29', 'Provinsi Sulawesi Barat', '76', '1', '-2.8441371', '119.232078', '1'),
('30', 'Provinsi Maluku', '81', '1', '-3.2384616', '130.145273', '1'),
('31', 'Provinsi Maluku Utara', '82', '1', '1.5709993', '127.808769', '1'),
('32', 'Provinsi Papua Barat', '91', '1', '-1.3361154', '133.174716', '1'),
('33', 'Provinsi Papua', '94', '1', '-4.269928', '138.080352', '1'),
('562', 'Kota Tangerang Selatan', '0', '2', '-6.2888889', '106.718055', '1'),
('821', 'Kabupaten Banyuwangi', '1501', '2', '-8.2186111', '114.366944', '1'),
('823', 'Kabupaten Madiun', '1502', '2', '-7.627753', '111.505483', '1'),
('824', 'Kabupaten Ponorogo', '1503', '2', '-7.867827', '111.466003', '1'),
('825', 'Kabupaten Magetan', '1504', '2', '-7.6493413', '111.338159', '1'),
('826', 'Kabupaten Pacitan', '1505', '2', '-8.204614', '111.08769', '1'),
('827', 'Kabupaten Ngawi', '1506', '2', '-7.38993', '111.46193', '1'),
('828', 'Kabupaten Bangkalan', '1507', '2', '-7.0306912', '112.745006', '1'),
('829', 'Kabupaten Kediri', '1508', '2', '-7.809356', '112.032356', '1'),
('830', 'Kabupaten Bondowoso', '1509', '2', '-7.917704', '113.813483', '1'),
('831', 'Kabupaten Blitar', '1510', '2', '-8.1014419', '112.162762', '1'),
('832', 'Kabupaten Trenggalek', '1511', '2', '-8.05', '111.716666', '1'),
('833', 'Kabupaten Tulungagung', '1512', '2', '-8.0666667', '111.9', '1'),
('834', 'Kabupaten Nganjuk', '1513', '2', '-7.602932', '111.901808', '1'),
('835', 'Kabupaten Situbondo', '1514', '2', '-7.702534', '113.955605', '1'),
('836', 'Kabupaten Malang', '1515', '2', '-8.0495643', '112.688454', '1'),
('837', 'Kabupaten Jember', '1516', '2', '-8.172357', '113.700302', '1'),
('838', 'Kabupaten Sumenep', '1517', '2', '-6.9253999', '113.906062', '1'),
('839', 'Kabupaten Pasuruan', '1518', '2', '-6.8623098', '108.800193', '1'),
('840', 'Kabupaten Pamekasan', '1519', '2', '-7.1666667', '113.466666', '1'),
('841', 'Kabupaten Probolinggo', '1520', '2', '-7.753965', '113.210675', '1'),
('842', 'Kabupaten Lumajang', '1521', '2', '-8.137022', '113.226601', '1'),
('843', 'Kabupaten Bojonegoro', '1522', '2', '0.882681', '124.466956', '1'),
('844', 'Kabupaten Tuban', '1523', '2', '-8.7493146', '115.171129', '1'),
('845', 'Kabupaten Lamongan', '1524', '2', '-7.406153', '109.394679', '1'),
('846', 'Kabupaten Sidoarjo', '1525', '2', '-7.4530278', '112.717338', '1'),
('847', 'Kabupaten Sampang', '1526', '2', '-7.5782556', '109.205843', '1'),
('848', 'Kabupaten Mojokerto', '1527', '2', '-7.488075', '112.427027', '1'),
('849', 'Kabupaten Gresik', '1528', '2', '-7.15665', '112.6555', '1'),
('850', 'Kabupaten Jombang', '1529', '2', '-7.5468395', '112.226479', '1'),
('851', 'Kota Mojokerto', '1530', '2', '-7.4722222', '112.433611', '1'),
('852', 'Kota Surabaya', '1531', '2', '-7.289166', '112.734398', '1'),
('853', 'Kota Madiun', '1532', '2', '-7.629714', '111.513702', '1'),
('854', 'Kota Blitar', '1533', '2', '-8.1', '112.15', '1'),
('855', 'Kota Malang', '1534', '2', '-7.981894', '112.626503', '1'),
('856', 'Kota Batu', '1535', '2', '-7.8671', '112.5239', '1'),
('857', 'Kota Pasuruan', '1536', '2', '-7.644872', '112.903297', '1'),
('858', 'Kota Kediri', '1537', '2', '-7.816895', '112.011398', '1'),
('859', 'Kota Probolinggo', '1538', '2', '-7.756928', '113.211502', '1'),
('925', 'Kabupaten Batanghari', '501', '2', '-1.7083922', '103.081790', '1'),
('926', 'Kabupaten Bungo', '502', '2', '-1.6401338', '101.889172', '1'),
('927', 'Kabupaten Kerinci', '503', '2', '-1.8720467', '101.433914', '1'),
('928', 'Kabupaten Merangin', '504', '2', '-2.1752789', '101.980461', '1'),
('929', 'Kabupaten Muaro Jambi', '505', '2', '-1.596672', '103.615799', '1'),
('930', 'Kabupaten Sarolangun', '506', '2', '-2.2654937', '102.690532', '1'),
('931', 'Kabupaten Tanjung Jabung Barat', '507', '2', '-1.2332122', '103.798442', '1'),
('932', 'Kabupaten Tanjung Jabung Timur', '508', '2', '-1.3291599', '103.89973', '1'),
('933', 'Kabupaten Tebo', '509', '2', '-1.2592999', '102.346387', '1'),
('934', 'Kota Jambi', '510', '2', '-1.596672', '103.615799', '1'),
('935', 'Kota Sungai Penuh', '511', '2', '-2.06314', '101.387199', '1'),
('1326', 'Kabupaten Simeulue', '1109', '2', '2.583333', '96.083333', '1'),
('1327', 'Kabupaten Aceh Singkil', '1102', '2', '2.3589459', '97.87216', '1'),
('1328', 'Kabupaten Aceh Selatan', '1101', '2', '3.3115056', '97.3516558', '1'),
('1329', 'Kabupaten Aceh Tenggara', '1102', '2', '3.3088666', '97.6982272', '1'),
('1330', 'Kabupaten Aceh Timur', '1103', '2', '5.255443', '95.9885456', '1'),
('1331', 'Kabupaten Aceh Tengah', '1104', '2', '4.4482641', '96.8350999', '1'),
('1332', 'Kabupaten Aceh Barat', '1105', '2', '4.4542745', '96.1526985', '1'),
('1333', 'Kabupaten Aceh Besar', '1106', '2', '5.4529168', '95.4777811', '1'),
('1334', 'Kabupaten Pidie', '1107', '2', '5.0742659', '95.940971', '1'),
('1335', 'Kabupaten Bireuen', '1111', '2', '5.18254', '96.89005', '1'),
('1336', 'Kabupaten Aceh Utara', '1108', '2', '4.9786331', '97.2221421', '1'),
('1337', 'Kabupaten Aceh Barat Daya', '1112', '2', '3.0512643', '97.3368031', '1'),
('1338', 'Kabupaten Gayo Lues', '1113', '2', '3.955165', '97.3516558', '1'),
('1339', 'Kabupaten Aceh Tamiang', '1116', '2', '4.2328871', '98.0028892', '1'),
('1340', 'Kabupaten Nagan Raya', '1115', '2', '4.1248406', '96.4929797', '1'),
('1341', 'Kabupaten Aceh Jaya', '1114', '2', '4.7873684', '95.6457951', '1'),
('1342', 'Kabupaten Bener Meriah', '1117', '2', '4.7748348', '97.0068393', '1'),
('1343', 'Kabupaten Pidie Jaya', '1118', '2', '5.1548063', '96.195132', '1'),
('1344', 'Kota Banda Aceh', '1171', '2', '5.55', '95.3166667', '1'),
('1345', 'Kota Sabang', '1172', '2', '5.8946929', '95.3192982', '1'),
('1346', 'Kota Langsa', '1174', '2', '4.48', '97.9633333', '1'),
('1347', 'Kota Lhokseumawe', '1173', '2', '5.1880556', '97.1402778', '1'),
('1348', 'Kota Subulussalam', '1175', '2', '2.6449927', '98.0165205', '1'),
('1349', 'Kabupaten Nias', '1204', '2', '-8.1712591', '113.711127', '1'),
('1350', 'Kabupaten Mandailing Natal', '1213', '2', '0.7432372', '99.3673084', '1'),
('1351', 'Kabupaten Tapanuli Selatan', '1203', '2', '1.5774933', '99.2785583', '1'),
('1352', 'Kabupaten Tapanuli Tengah', '1201', '2', '1.8493299', '98.704075', '1'),
('1353', 'Kabupaten Tapanuli Utara', '1202', '2', '2.0405246', '99.1013498', '1'),
('1354', 'Kabupaten Toba Samosir', '1212', '2', '2.3502398', '99.2785583', '1'),
('1355', 'Kabupaten Labuhanbatu', '1210', '2', '2.3439863', '100.170325', '1'),
('1356', 'Kabupaten Asahan', '1209', '2', '2.8174722', '99.634135', '1'),
('1357', 'Kabupaten Simalungun', '1208', '2', '2.9781612', '99.2785583', '1'),
('1358', 'Kabupaten Dairi', '1211', '2', '2.8675801', '98.265058', '1'),
('1359', 'Kabupaten Karo', '1206', '2', '3.1052909', '98.265058', '1'),
('1360', 'Kabupaten Deli Serdang', '1207', '2', '3.4201802', '98.704075', '1'),
('1361', 'Kabupaten Langkat', '1205', '2', '3.8653916', '98.3088441', '1'),
('1362', 'Kabupaten Nias Selatan', '1214', '2', '0.7086091', '97.8286368', '1'),
('1363', 'Kabupaten Humbang Hasundutan', '1216', '2', '2.1988508', '98.5721016', '1'),
('1364', 'Kabupaten Pakpak Bharat', '1215', '2', '2.545786', '98.299838', '1'),
('1365', 'Kabupaten Samosir', '1217', '2', '2.5833333', '98.8166667', '1'),
('1366', 'Kabupaten Serdang Bedagai', '1218', '2', '3.3371694', '99.0571089', '1'),
('1367', 'Kabupaten Batu Bara', '1219', '2', '3.1740979', '99.5006143', '1'),
('1368', 'Kabupaten Padang Lawas Utara', '1220', '2', '1.5758644', '99.634135', '1'),
('1369', 'Kabupaten Padang Lawas', '1221', '2', '1.1186977', '99.8124935', '1'),
('1370', 'Kota Sibolga', '1273', '2', '1.7403745', '98.7827988', '1'),
('1371', 'Kota Tanjung Balai', '1274', '2', '2.965122', '99.800331', '1'),
('1372', 'Kota Pematang Siantar', '1272', '2', '2.96', '99.06', '1'),
('1373', 'Kota Tebing Tinggi', '1276', '2', '3.3856205', '99.2009815', '1'),
('1374', 'Kota Medan', '1271', '2', '3.585242', '98.6755979', '1'),
('1375', 'Kota Binjai', '1275', '2', '3.594462', '98.482246', '1'),
('1376', 'Kota Padangsidimpuan', '1277', '2', '1.380424', '99.273972', '1'),
('1377', 'Kabupaten Kepulauan Mentawai', '1309', '2', '-1.426001', '98.9245343', '1'),
('1378', 'Kabupaten Pesisir Selatan', '1301', '2', '-1.7223147', '100.890309', '1'),
('1379', 'Kabupaten Solok', '1302', '2', '-0.803027', '100.644402', '1'),
('1380', 'Kabupaten Sijunjung', '1303', '2', '-0.6881586', '100.997658', '1'),
('1381', 'Kabupaten Tanah Datar', '1304', '2', '-0.4797043', '100.574622', '1'),
('1382', 'Kabupaten Padang Pariaman', '1305', '2', '-0.5546757', '100.215157', '1'),
('1383', 'Kabupaten Agam', '1306', '2', '-0.2209392', '100.170325', '1'),
('1384', 'Kabupaten Lima Puluh Kota', '1307', '2', '3.168216', '99.4187929', '1'),
('1385', 'Kabupaten Pasaman', '1308', '2', '0.1288752', '99.7901781', '1'),
('1386', 'Kabupaten Solok Selatan', '1311', '2', '-1.4157329', '101.252379', '1'),
('1387', 'Kabupaten Dharmas Raya', '1310', '2', '-1.1120568', '101.615777', '1'),
('1388', 'Kabupaten Pasaman Barat', '1312', '2', '0.2213005', '99.634135', '1'),
('1389', 'Kota Padang', '1371', '2', '-0.95', '100.353055', '1'),
('1390', 'Kota Solok', '1372', '2', '-0.803027', '100.644402', '1'),
('1391', 'Kota Sawah Lunto', '1373', '2', '-0.6810286', '100.776360', '1'),
('1392', 'Kota Padang Panjang', '1374', '2', '-0.470679', '100.405945', '1'),
('1393', 'Kota Bukittinggi', '1375', '2', '-0.3055556', '100.369166', '1'),
('1394', 'Kota Payakumbuh', '1376', '2', '-0.22887', '100.632301', '1'),
('1395', 'Kota Pariaman', '1377', '2', '-0.6264389', '100.117957', '1'),
('1396', 'Kabupaten Kuantan Singingi', '1409', '2', '-0.4411596', '101.524805', '1'),
('1397', 'Kabupaten Indragiri Hulu', '1402', '2', '-0.7361181', '102.254791', '1'),
('1398', 'Kabupaten Indragiri Hilir', '1404', '2', '-0.1456733', '102.989615', '1'),
('1399', 'Kabupaten Pelalawan', '1405', '2', '0.441415', '102.088699', '1'),
('1400', 'Kabupaten S I A K', '1408', '2', '-0.789275', '113.921327', '1'),
('1401', 'Kabupaten Kampar', '1401', '2', '0.146671', '101.161735', '1'),
('1402', 'Kabupaten Rokan Hulu', '1406', '2', '1.0410934', '100.439656', '1'),
('1403', 'Kabupaten Bengkalis', '1403', '2', '1.4897222', '102.079722', '1'),
('1404', 'Kabupaten Rokan Hilir', '1407', '2', '1.6463978', '100.800005', '1'),
('1405', 'Kota Pekanbaru', '1471', '2', '0.5333333', '101.45', '1'),
('1406', 'Kota Dumai', '1472', '2', '1.665742', '101.447601', '1'),
('1407', 'Kabupaten Kerinci', '1501', '2', '-1.697', '101.264', '1'),
('1408', 'Kabupaten Merangin', '1502', '2', '-2.1752789', '101.980461', '1'),
('1409', 'Kabupaten Sarolangun', '1503', '2', '-2.2654937', '102.690532', '1'),
('1410', 'Kabupaten Batang Hari', '1504', '2', '-1.7083922', '103.081790', '1'),
('1411', 'Kabupaten Muaro Jambi', '1505', '2', '-1.596672', '103.615799', '1'),
('1412', 'Kabupaten Tanjung Jabung Timur', '1507', '2', '-1.3291599', '103.89973', '1'),
('1413', 'Kabupaten Tanjung Jabung Barat', '1506', '2', '-1.2332122', '103.798442', '1'),
('1414', 'Kabupaten Tebo', '1509', '2', '-1.2592999', '102.346387', '1'),
('1415', 'Kabupaten Bungo', '1508', '2', '-1.6401338', '101.889172', '1'),
('1416', 'Kota Jambi', '1571', '2', '-1.596672', '103.615799', '1'),
('1417', 'Kabupaten Ogan Komering Ulu', '1601', '2', '-4.0283486', '104.007234', '1'),
('1418', 'Kabupaten Ogan Komering Ilir', '1602', '2', '-3.4559744', '105.219480', '1'),
('1419', 'Kabupaten Muara Enim', '1603', '2', '-3.651581', '103.770798', '1'),
('1420', 'Kabupaten Lahat', '1604', '2', '-3.7863889', '103.542777', '1'),
('1421', 'Kabupaten Musi Rawas', '1605', '2', '-2.8625305', '102.989615', '1'),
('1422', 'Kabupaten Musi Banyuasin', '1606', '2', '-2.5442029', '103.728916', '1'),
('1423', 'Kabupaten Banyu Asin', '1607', '2', '-2.6095639', '104.752093', '1'),
('1424', 'Kabupaten Ogan Komering Ulu Selatan', '1609', '2', '-4.6681951', '104.007234', '1'),
('1425', 'Kabupaten Ogan Komering Ulu Timur', '1608', '2', '-3.8567934', '104.752093', '1'),
('1426', 'Kabupaten Ogan Ilir', '1610', '2', '-3.426544', '104.612147', '1'),
('1427', 'Kabupaten Empat Lawang', '1611', '2', '-3.7286029', '102.897509', '1'),
('1428', 'Kota Palembang', '1671', '2', '-2.9911083', '104.756733', '1'),
('1429', 'Kota Prabumulih', '1674', '2', '-3.440956', '104.235397', '1'),
('1430', 'Kota Pagar Alam', '1672', '2', '-4.03767', '103.265297', '1'),
('1431', 'Kota Lubuklinggau', '1673', '2', '-3.2966667', '102.861666', '1'),
('1432', 'Kabupaten Bengkulu Selatan', '1701', '2', '-4.3248409', '103.035694', '1'),
('1433', 'Kabupaten Rejang Lebong', '1702', '2', '-3.4548154', '102.667557', '1'),
('1434', 'Kabupaten Bengkulu Utara', '1703', '2', '-3.4219555', '102.163271', '1'),
('1435', 'Kabupaten Kaur', '1704', '2', '-4.6792278', '103.451176', '1'),
('1436', 'Kabupaten Seluma', '1705', '2', '-4.0622929', '102.564226', '1'),
('1437', 'Kabupaten Mukomuko', '1706', '2', '-2.5760003', '101.116980', '1'),
('1438', 'Kabupaten Lebong', '1707', '2', '-2.992617', '104.382202', '1'),
('1439', 'Kabupaten Kepahiang', '1708', '2', '-3.651431', '102.578201', '1'),
('1440', 'Kota Bengkulu', '1771', '2', '-3.7955556', '102.259166', '1'),
('1441', 'Kabupaten Lampung Barat', '1804', '2', '-5.1490396', '104.193091', '1'),
('1442', 'Kabupaten Tanggamus', '1802', '2', '-5.3027489', '104.565527', '1'),
('1443', 'Kabupaten Lampung Selatan', '1801', '2', '-5.5622614', '105.547437', '1'),
('1444', 'Kabupaten Lampung Timur', '1807', '2', '-5.1134995', '105.688178', '1'),
('1445', 'Kabupaten Lampung Tengah', '1802', '2', '-4.8008086', '105.313118', '1'),
('1446', 'Kabupaten Lampung Utara', '1803', '2', '-4.8133905', '104.752093', '1'),
('1447', 'Kabupaten Way Kanan', '1808', '2', '-4.4963689', '104.565527', '1'),
('1448', 'Kabupaten Tulangbawang', '1812', '2', '-4.3176576', '105.500548', '1'),
('1449', 'Kabupaten Pesawaran', '1809', '2', '-5.493245', '105.079122', '1'),
('1450', 'Kota Bandar Lampung', '1871', '2', '-5.45', '105.266666', '1'),
('1451', 'Kota Metro', '1872', '2', '-5.1166667', '105.3', '1'),
('1452', 'Kabupaten Bangka', '1901', '2', '-2.2884782', '106.064017', '1'),
('1453', 'Kabupaten Belitung', '1902', '2', '-2.8708938', '107.953183', '1'),
('1454', 'Kabupaten Bangka Barat', '1905', '2', '-2.2884782', '106.064017', '1'),
('1455', 'Kabupaten Bangka Tengah', '1904', '2', '-2.2884782', '106.064017', '1'),
('1456', 'Kabupaten Bangka Selatan', '1903', '2', '-2.2884782', '106.064017', '1'),
('1457', 'Kabupaten Belitung Timur', '1906', '2', '-2.8708938', '107.953183', '1'),
('1458', 'Kota Pangkal Pinang', '1971', '2', '-2.129323', '106.109596', '1'),
('1459', 'Kabupaten Karimun', '2102', '2', '1.05', '103.366666', '1'),
('1460', 'Kabupaten Bintan', '2101', '2', '1.0619173', '104.518921', '1'),
('1461', 'Kabupaten Natuna', '2103', '2', '3.9329945', '108.181224', '1'),
('1462', 'Kabupaten Lingga', '2104', '2', '-0.1627686', '104.635463', '1'),
('1463', 'Kota Batam', '2171', '2', '1.0456264', '104.030453', '1'),
('1464', 'Kota Tanjung Pinang', '2172', '2', '0.9179205', '104.446464', '1'),
('1465', 'Kabupaten Kepulauan Seribu', '3101', '2', '-5.7985266', '106.507198', '1'),
('1466', 'Kota Jakarta Selatan', '3174', '2', '-6.332973', '106.807915', '1'),
('1467', 'Kota Jakarta Timur', '3175', '2', '-6.211544', '106.845172', '1'),
('1468', 'Kota Jakarta Pusat', '3171', '2', '-6.211544', '106.845172', '1'),
('1469', 'Kota Jakarta Barat', '3173', '2', '-6.211544', '106.845172', '1'),
('1470', 'Kota Jakarta Utara', '3172', '2', '-6.211544', '106.845172', '1'),
('1471', 'Kabupaten Bogor', '3201', '2', '-6.6', '106.8', '1'),
('1472', 'Kabupaten Sukabumi', '3202', '2', '-6.92405', '106.922203', '1'),
('1473', 'Kabupaten Cianjur', '3203', '2', '-6.8172531', '107.130728', '1'),
('1474', 'Kabupaten Bandung', '3204', '2', '-6.9147444', '107.609811', '1'),
('1475', 'Kabupaten Garut', '3205', '2', '-7.227906', '107.908699', '1'),
('1476', 'Kabupaten Tasikmalaya', '3206', '2', '-7.327954', '108.214104', '1'),
('1477', 'Kabupaten Ciamis', '3207', '2', '-7.3333333', '108.35', '1'),
('1478', 'Kabupaten Kuningan', '3208', '2', '-6.9833333', '108.483333', '1'),
('1479', 'Kabupaten Cirebon', '3209', '2', '-6.715534', '108.564003', '1'),
('1480', 'Kabupaten Majalengka', '3210', '2', '-6.8531026', '108.225889', '1'),
('1481', 'Kabupaten Sumedang', '3211', '2', '0.6095949', '110.033055', '1'),
('1482', 'Kabupaten Indramayu', '3212', '2', '-6.336315', '108.325104', '1'),
('1483', 'Kabupaten Subang', '3213', '2', '-6.569361', '107.752403', '1'),
('1484', 'Kabupaten Purwakarta', '3214', '2', '-6.5386806', '107.449940', '1'),
('1485', 'Kabupaten Karawang', '3215', '2', '-6.3227303', '107.337579', '1'),
('1486', 'Kabupaten Bekasi', '3216', '2', '-6.2333333', '107', '1'),
('1487', 'Kabupaten Bandung Barat', '3217', '2', '-6.8937121', '107.432195', '1'),
('1488', 'Kota Bogor', '3271', '2', '-6.6', '106.8', '1'),
('1489', 'Kota Sukabumi', '3272', '2', '-6.92405', '106.922203', '1'),
('1490', 'Kota Bandung', '3273', '2', '-6.9147444', '107.609811', '1'),
('1491', 'Kota Cirebon', '3274', '2', '-6.715534', '108.564003', '1'),
('1492', 'Kota Bekasi', '3275', '2', '-6.2333333', '107', '1'),
('1493', 'Kota Depok', '3276', '2', '-6.39', '106.83', '1'),
('1494', 'Kota Cimahi', '3277', '2', '-6.880239', '107.5355', '1'),
('1495', 'Kota Tasikmalaya', '3278', '2', '-7.327954', '108.214104', '1'),
('1496', 'Kota Banjar', '3279', '2', '-7.3666667', '108.533333', '1'),
('1497', 'Kabupaten Cilacap', '3301', '2', '-7.733333', '109', '1'),
('1498', 'Kabupaten Banyumas', '3302', '2', '-7.4832133', '109.140438', '1'),
('1499', 'Kabupaten Purbalingga', '3303', '2', '-7.390747', '109.3638', '1'),
('1500', 'Kabupaten Banjarnegara', '3304', '2', '-7.402706', '109.681396', '1'),
('1501', 'Kabupaten Kebumen', '3305', '2', '-7.678682', '109.656502', '1'),
('1502', 'Kabupaten Purworejo', '3306', '2', '-7.709731', '110.008003', '1'),
('1503', 'Kabupaten Wonosobo', '3307', '2', '-7.362109', '109.899399', '1'),
('1504', 'Kabupaten Magelang', '3308', '2', '-7.481253', '110.213799', '1'),
('1505', 'Kabupaten Boyolali', '3309', '2', '-7.523819', '110.595901', '1'),
('1506', 'Kabupaten Klaten', '3310', '2', '-7.711687', '110.595497', '1'),
('1507', 'Kabupaten Sukoharjo', '3311', '2', '-7.6808818', '110.819529', '1'),
('1508', 'Kabupaten Wonogiri', '3312', '2', '-7.817782', '110.920601', '1'),
('1509', 'Kabupaten Karanganyar', '3313', '2', '-7.5961111', '110.950833', '1'),
('1510', 'Kabupaten Sragen', '3314', '2', '-7.430229', '111.021301', '1'),
('1511', 'Kabupaten Grobogan', '3315', '2', '-7.0217194', '110.962585', '1'),
('1512', 'Kabupaten Blora', '3316', '2', '-6.95', '111.416666', '1'),
('1513', 'Kabupaten Rembang', '3317', '2', '-6.71124', '111.345299', '1'),
('1514', 'Kabupaten Pati', '3318', '2', '-6.751338', '111.038002', '1'),
('1515', 'Kabupaten Kudus', '3319', '2', '-6.804087', '110.838203', '1'),
('1516', 'Kabupaten Jepara', '3320', '2', '-6.5596059', '110.6717', '1'),
('1517', 'Kabupaten Demak', '3321', '2', '-6.888115', '110.639297', '1'),
('1518', 'Kabupaten Semarang', '3322', '2', '-6.9666667', '110.416666', '1'),
('1519', 'Kabupaten Temanggung', '3323', '2', '-7.316669', '110.174797', '1'),
('1520', 'Kabupaten Kendal', '3324', '2', '-6.919686', '110.205597', '1'),
('1521', 'Kabupaten Batang', '3325', '2', '-6.8941111', '109.723451', '1'),
('1522', 'Kabupaten Pekalongan', '3326', '2', '-6.882887', '109.669998', '1'),
('1523', 'Kabupaten Pemalang', '3327', '2', '-6.884234', '109.377998', '1'),
('1524', 'Kabupaten Tegal', '3328', '2', '-6.8666667', '109.133333', '1'),
('1525', 'Kabupaten Brebes', '3329', '2', '-6.8833333', '109.05', '1'),
('1526', 'Kota Magelang', '3371', '2', '-7.481253', '110.213799', '1'),
('1527', 'Kota Surakarta', '3372', '2', '-7.5666667', '110.816666', '1'),
('1528', 'Kota Salatiga', '3373', '2', '-7.302328', '110.4729', '1'),
('1529', 'Kota Semarang', '3374', '2', '-6.9666667', '110.416666', '1'),
('1530', 'Kota Pekalongan', '3375', '2', '-6.882887', '109.669998', '1'),
('1531', 'Kota Tegal', '3376', '2', '-6.8666667', '109.133333', '1'),
('1532', 'Kabupaten Kulon Progo', '3401', '2', '-7.8266798', '110.164084', '1'),
('1533', 'Kabupaten Bantul', '3402', '2', '-7.8846111', '110.334111', '1'),
('1534', 'Kabupaten Gunung Kidul', '3403', '2', '-8.0305091', '110.616892', '1'),
('1536', 'Kota Yogyakarta', '3471', '2', '-7.797224', '110.368797', '1'),
('1537', 'Kabupaten Pandeglang', '3601', '2', '-6.314835', '106.103897', '1'),
('1538', 'Kabupaten Lebak', '3602', '2', '-6.5643956', '106.252214', '1'),
('1539', 'Kabupaten Tangerang', '3603', '2', '-6.1783056', '106.631888', '1'),
('1540', 'Kabupaten Serang', '3604', '2', '-6.12009', '106.150299', '1'),
('1541', 'Kota Tangerang', '3671', '2', '-6.1783056', '106.631888', '1'),
('1542', 'Kota Cilegon', '3672', '2', '-6.0169825', '106.040506', '1'),
('1543', 'Kota Serang', '3673', '2', '-6.12009', '106.150299', '1'),
('1544', 'Kabupaten Jembrana', '5101', '2', '-8.361852', '114.6418', '1'),
('1545', 'Kabupaten Tabanan', '5102', '2', '-8.544516', '115.119797', '1'),
('1546', 'Kabupaten Badung', '5103', '2', '-8.5819296', '115.177058', '1'),
('1547', 'Kabupaten Gianyar', '5104', '2', '-8.544185', '115.3255', '1'),
('1548', 'Kabupaten Klungkung', '5105', '2', '-8.5389222', '115.404511', '1'),
('1549', 'Kabupaten Bangli', '5106', '2', '-8.454303', '115.354897', '1'),
('1550', 'Kabupaten Karang Asem', '5107', '2', '-6.3996057', '108.050304', '1'),
('1551', 'Kabupaten Buleleng', '5108', '2', '-8.113831', '115.126999', '1'),
('1552', 'Kota Denpasar', '5171', '2', '-8.65629', '115.222099', '1'),
('1553', 'Kabupaten Lombok Barat', '5201', '2', '-8.6464599', '116.112307', '1'),
('1554', 'Kabupaten Lombok Tengah', '5202', '2', '-8.694623', '116.277707', '1'),
('1555', 'Kabupaten Lombok Timur', '5203', '2', '-8.5134471', '116.560985', '1'),
('1556', 'Kabupaten Sumbawa', '5204', '2', '-8.6529334', '117.361647', '1'),
('1557', 'Kabupaten Dompu', '5205', '2', '-8.4966318', '118.474717', '1'),
('1558', 'Kabupaten Bima', '5206', '2', '-8.460566', '118.727402', '1'),
('1559', 'Kabupaten Sumbawa Barat', '5207', '2', '-8.9292907', '116.891034', '1'),
('1560', 'Kota Mataram', '5271', '2', '-8.5833333', '116.116666', '1'),
('1561', 'Kota Bima', '5272', '2', '-8.460566', '118.727402', '1'),
('1562', 'Kabupaten Sumba Barat', '5312', '2', '-9.6548326', '119.394713', '1'),
('1563', 'Kabupaten Sumba Timur', '5311', '2', '-9.9802103', '120.343550', '1'),
('1564', 'Kabupaten Kupang', '5301', '2', '-10.183333', '123.583333', '1'),
('1565', 'Kabupaten Timor Tengah Selatan', '5302', '2', '-9.7762816', '124.419824', '1'),
('1566', 'Kabupaten Timor Tengah Utara', '5303', '2', '-9.4522647', '124.597132', '1'),
('1567', 'Kabupaten Belu', '5304', '2', '-9.4125796', '124.950662', '1'),
('1568', 'Kabupaten Alor', '5305', '2', '-8.2754027', '124.729876', '1'),
('1569', 'Kabupaten Lembata', '5313', '2', '-8.4719075', '123.483190', '1'),
('1570', 'Kabupaten Flores Timur', '5306', '2', '-8.3130942', '122.966301', '1'),
('1571', 'Kabupaten Sikka', '5307', '2', '-8.6766175', '122.129184', '1'),
('1572', 'Kabupaten Ende', '5308', '2', '-8.854053', '121.654198', '1'),
('1573', 'Kabupaten Ngada', '5309', '2', '-8.7430424', '120.987632', '1'),
('1574', 'Kabupaten Manggarai', '5310', '2', '-8.6796987', '120.389665', '1'),
('1575', 'Kabupaten Rote Ndao', '5314', '2', '-10.738642', '123.123904', '1'),
('1576', 'Kabupaten Manggarai Barat', '5315', '2', '-8.6688149', '120.066523', '1'),
('1577', 'Kabupaten Sumba Tengah', '5317', '2', '-9.4879226', '119.696267', '1'),
('1578', 'Kabupaten Sumba Barat Daya', '5318', '2', '-9.539139', '119.139064', '1'),
('1579', 'Kabupaten Nagekeo', '5316', '2', '-8.6753545', '121.308408', '1'),
('1580', 'Kabupaten Manggarai Timur', '5319', '2', '-8.6206712', '120.619989', '1'),
('1581', 'Kota Kupang', '5371', '2', '-10.183333', '123.583333', '1'),
('1582', 'Kabupaten Sambas', '6101', '2', '1.361328', '109.309998', '1'),
('1583', 'Kabupaten Bengkayang', '6107', '2', '0.8209729', '109.477699', '1'),
('1584', 'Kabupaten Landak', '6108', '2', '0.4237287', '109.759167', '1'),
('1585', 'Kabupaten Pontianak', '6102', '2', '-0.022523', '109.330307', '1'),
('1586', 'Kabupaten Sanggau', '6103', '2', '0.119275', '110.597298', '1'),
('1587', 'Kabupaten Ketapang', '6104', '2', '-1.859098', '109.971901', '1'),
('1588', 'Kabupaten Sintang', '6105', '2', '0.080238', '111.495499', '1'),
('1589', 'Kabupaten Kapuas Hulu', '6106', '2', '-0.7931004', '113.906062', '1'),
('1590', 'Kabupaten Sekadau', '6109', '2', '0.015637', '110.888603', '1'),
('1591', 'Kabupaten Melawi', '6110', '2', '-0.7000681', '111.666072', '1'),
('1592', 'Kabupaten Kayong Utara', '6111', '2', '-0.9225877', '110.044966', '1'),
('1593', 'Kabupaten Kubu Raya', '6112', '2', '-0.3533938', '109.473506', '1'),
('1594', 'Kota Pontianak', '6171', '2', '-0.022523', '109.330307', '1'),
('1595', 'Kota Singkawang', '6172', '2', '0.908795', '108.984596', '1'),
('1596', 'Kabupaten Kotawaringin Barat', '6201', '2', '-6.1961131', '106.863017', '1'),
('1597', 'Kabupaten Kotawaringin Timur', '6202', '2', '-6.1952992', '106.863073', '1'),
('1598', 'Kabupaten Kapuas', '6203', '2', '-0.0459972', '110.131325', '1'),
('1599', 'Kabupaten Barito Selatan', '6204', '2', '-1.875943', '114.809269', '1'),
('1600', 'Kabupaten Barito Utara', '6205', '2', '-0.9587136', '115.094045', '1'),
('1601', 'Kabupaten Sukamara', '6208', '2', '-2.6267517', '111.236808', '1'),
('1602', 'Kabupaten Lamandau', '6209', '2', '-1.9269166', '111.189115', '1'),
('1603', 'Kabupaten Seruyan', '6207', '2', '-3.0123467', '112.429146', '1'),
('1604', 'Kabupaten Katingan', '6206', '2', '-0.9758379', '112.810551', '1'),
('1605', 'Kabupaten Pulang Pisau', '6211', '2', '-2.6849607', '113.953646', '1'),
('1606', 'Kabupaten Gunung Mas', '6210', '2', '-6.7052778', '106.991388', '1'),
('1607', 'Kabupaten Barito Timur', '6213', '2', '-2.0123999', '115.188916', '1'),
('1608', 'Kabupaten Murung Raya', '6212', '2', '-0.1362171', '114.334143', '1'),
('1609', 'Kota Palangka Raya', '6271', '2', '-2.21', '113.92', '1'),
('1610', 'Kabupaten Tanah Laut', '6301', '2', '-3.7694047', '114.809269', '1'),
('1611', 'Kabupaten Kota Baru', '6302', '2', '-6.332973', '106.807915', '1'),
('1612', 'Kabupaten Banjar', '6303', '2', '-7.3666667', '108.533333', '1'),
('1613', 'Kabupaten Barito Kuala', '6304', '2', '-3.0714738', '114.666793', '1'),
('1614', 'Kabupaten Tapin', '6305', '2', '-2.9160746', '115.046599', '1'),
('1615', 'Kabupaten Hulu Sungai Selatan', '6306', '2', '-2.7662681', '115.236340', '1'),
('1616', 'Kabupaten Hulu Sungai Tengah', '6307', '2', '-2.6153162', '115.520735', '1'),
('1617', 'Kabupaten Hulu Sungai Utara', '6308', '2', '-2.4421225', '115.188916', '1'),
('1618', 'Kabupaten Tabalong', '6309', '2', '-1.864302', '115.568108', '1'),
('1619', 'Kabupaten Tanah Bumbu', '6310', '2', '-3.4512244', '115.568108', '1'),
('1620', 'Kabupaten Balangan', '6311', '2', '-2.3260425', '115.615473', '1'),
('1621', 'Kota Banjarmasin', '6371', '2', '-3.328499', '114.589203', '1'),
('1622', 'Kota Banjar Baru', '6372', '2', '-3.4666667', '114.75', '1'),
('1623', 'Kabupaten Paser', '6401', '2', '-1.7175266', '115.946799', '1'),
('1624', 'Kabupaten Kutai Barat', '6407', '2', '0.1353881', '115.094045', '1'),
('1625', 'Kabupaten Kutai Kartanegara', '6402', '2', '-0.1336655', '116.608165', '1'),
('1626', 'Kabupaten Kutai Timur', '6408', '2', '0.9433774', '116.985242', '1'),
('1627', 'Kabupaten Berau', '6403', '2', '2.0450883', '117.361647', '1'),
('1628', 'Kabupaten Malinau', '6406', '2', '3.584221', '116.647797', '1'),
('1629', 'Kabupaten Bulungan', '6404', '2', '2.9042476', '116.985242', '1'),
('1630', 'Kabupaten Nunukan', '6405', '2', '4.0609227', '117.666952', '1'),
('1631', 'Kabupaten Penajam Paser Utara', '6409', '2', '-1.2917094', '116.513796', '1'),
('1632', 'Kabupaten Tana Tidung', '6410', '2', '3.551869', '117.079408', '1'),
('1633', 'Kota Balikpapan', '6471', '2', '-1.2635389', '116.827883', '1'),
('1634', 'Kota Samarinda', '6472', '2', '-0.502183', '117.153801', '1'),
('1635', 'Kota Tarakan', '6473', '2', '3.3', '117.633333', '1'),
('1636', 'Kota Bontang', '6474', '2', '0.1333333', '117.5', '1'),
('1637', 'Kabupaten Bolaang Mongondow', '7101', '2', '0.6870994', '124.064141', '1'),
('1638', 'Kabupaten Minahasa', '7102', '2', '1', '124.583333', '1'),
('1639', 'Kabupaten Kepulauan Sangihe', '7103', '2', '3.5303212', '125.543896', '1'),
('1640', 'Kabupaten Kepulauan Talaud', '7104', '2', '4.092', '126.768', '1'),
('1641', 'Kabupaten Minahasa Selatan', '7105', '2', '1.0946773', '124.464184', '1'),
('1642', 'Kabupaten Minahasa Utara', '7106', '2', '1.5327973', '124.994751', '1'),
('1643', 'Kabupaten Bolaang Mongondow Utara', '7108', '2', '0.818691', '123.528007', '1'),
('1644', 'Kabupaten Siau Tagulandang Biaro', '7109', '2', '2.345964', '125.412435', '1'),
('1645', 'Kabupaten Minahasa Tenggara', '7107', '2', '1.0278551', '124.729876', '1'),
('1646', 'Kota Manado', '7171', '2', '1.4917014', '124.842843', '1'),
('1647', 'Kota Bitung', '7172', '2', '1.4553529', '125.204697', '1'),
('1648', 'Kota Tomohon', '7173', '2', '1.3234131', '124.838450', '1'),
('1649', 'Kota Kotamobagu', '7174', '2', '0.7333333', '124.316666', '1'),
('1650', 'Kabupaten Banggai Kepulauan', '7207', '2', '-1.6408137', '123.550407', '1'),
('1651', 'Kabupaten Banggai', '7201', '2', '-1.6408137', '123.550407', '1'),
('1652', 'Kabupaten Morowali', '7206', '2', '-2.3003072', '121.537000', '1'),
('1653', 'Kabupaten Poso', '7202', '2', '-1.391922', '120.766998', '1'),
('1654', 'Kabupaten Donggala', '7203', '2', '-0.4233155', '119.835230', '1'),
('1655', 'Kabupaten Toli-Toli', '7204', '2', '0.8768231', '120.757983', '1'),
('1656', 'Kabupaten Buol', '7205', '2', '0.9695452', '121.354163', '1'),
('1657', 'Kabupaten Parigi Moutong', '7208', '2', '0.5817607', '120.803947', '1'),
('1658', 'Kabupaten Tojo Una-Una', '7209', '2', '-1.098757', '121.537000', '1'),
('1659', 'Kota Palu', '7271', '2', '-0.898583', '119.850601', '1'),
('1660', 'Kabupaten Selayar', '7301', '2', '-6', '120.5', '1'),
('1661', 'Kabupaten Bulukumba', '7302', '2', '-5.4329368', '120.205109', '1'),
('1662', 'Kabupaten Bantaeng', '7303', '2', '-5.5169316', '120.020296', '1'),
('1663', 'Kabupaten Jeneponto', '7304', '2', '-5.554579', '119.673093', '1'),
('1664', 'Kabupaten Takalar', '7305', '2', '-5.4162493', '119.487566', '1'),
('1665', 'Kabupaten Gowa', '7306', '2', '-5.3102888', '119.742604', '1'),
('1666', 'Kabupaten Sinjai', '7307', '2', '-5.2171961', '120.112735', '1'),
('1667', 'Kabupaten Maros', '7309', '2', '-4.94695', '119.578903', '1'),
('1668', 'Kabupaten Pangkajene Dan Kepulauan', '7310', '2', '-4.805035', '119.557167', '1'),
('1669', 'Kabupaten Barru', '7311', '2', '-4.4172651', '119.673093', '1'),
('1670', 'Kabupaten Bone', '7308', '2', '-2.083333', '120.216667', '1'),
('1671', 'Kabupaten Soppeng', '7312', '2', '-4.3518541', '119.927794', '1'),
('1672', 'Kabupaten Wajo', '7313', '2', '-4.022229', '120.066523', '1'),
('1673', 'Kabupaten Sidenreng Rappang', '7314', '2', '-3.7738981', '120.020296', '1'),
('1674', 'Kabupaten Pinrang', '7315', '2', '-3.793071', '119.6408', '1'),
('1675', 'Kabupaten Enrekang', '7316', '2', '-3.563128', '119.7612', '1'),
('1676', 'Kabupaten Luwu', '7317', '2', '-3.3052214', '120.251272', '1'),
('1677', 'Kabupaten Tana Toraja', '7318', '2', '-3.0753003', '119.742604', '1'),
('1678', 'Kabupaten Luwu Utara', '7322', '2', '-2.2690446', '119.974053', '1'),
('1679', 'Kabupaten Luwu Timur', '7324', '2', '-2.5825518', '121.171038', '1'),
('1680', 'Kota Makassar', '7371', '2', '-5.1333333', '119.416666', '1'),
('1681', 'Kota Pare-Pare', '7372', '2', '-4.0166667', '119.623611', '1'),
('1682', 'Kota Palopo', '7373', '2', '-3', '120.2', '1'),
('1683', 'Kabupaten Buton', '7404', '2', '-5.3096355', '122.988831', '1'),
('1684', 'Kabupaten Muna', '7403', '2', '-4.901629', '122.627745', '1'),
('1685', 'Kabupaten Konawe', '7402', '2', '-3.9380432', '122.083744', '1'),
('1686', 'Kabupaten Kolaka', '7401', '2', '-4.049665', '121.593803', '1'),
('1687', 'Kabupaten Konawe Selatan', '7405', '2', '-4.2027915', '122.446723', '1'),
('1688', 'Kabupaten Bombana', '7406', '2', '-4.6543462', '121.901795', '1'),
('1689', 'Kabupaten Wakatobi', '7407', '2', '-5.3264442', '123.595192', '1'),
('1690', 'Kabupaten Kolaka Utara', '7408', '2', '-3.1347227', '121.171038', '1'),
('1691', 'Kabupaten Buton Utara', '7410', '2', '-4.7023424', '123.033876', '1'),
('1692', 'Kabupaten Konawe Utara', '7409', '2', '-3.3803291', '122.083744', '1'),
('1693', 'Kota Kendari', '7471', '2', '-3.972201', '122.514902', '1'),
('1694', 'Kota Bau-Bau', '7472', '2', '-5.46667', '122.633', '1'),
('1695', 'Kabupaten Boalemo', '7502', '2', '0.7013419', '122.265388', '1'),
('1696', 'Kabupaten Gorontalo', '7501', '2', '0.5333333', '123.066666', '1'),
('1697', 'Kabupaten Pohuwato', '7504', '2', '0.7055278', '121.719545', '1'),
('1698', 'Kabupaten Bone Bolango', '7503', '2', '0.5657885', '123.348614', '1'),
('1699', 'Kabupaten Gorontalo Utara', '7505', '2', '0.9252647', '122.492008', '1'),
('1700', 'Kota Gorontalo', '7571', '2', '0.5333333', '123.066666', '1'),
('1701', 'Kabupaten Majene', '7605', '2', '-3.0297251', '118.906279', '1'),
('1702', 'Kabupaten Polewali Mandar', '7604', '2', '-3.3419323', '119.139064', '1'),
('1703', 'Kabupaten Mamasa', '7603', '2', '-2.960135', '119.368202', '1'),
('1704', 'Kabupaten Mamuju', '7602', '2', '-2.7293364', '118.929573', '1'),
('1705', 'Kabupaten Mamuju Utara', '7601', '2', '-1.5264542', '119.510770', '1'),
('1706', 'Kabupaten Maluku Tenggara Barat', '8103', '2', '-7.5322642', '131.361112', '1'),
('1707', 'Kabupaten Maluku Tenggara', '8102', '2', '-5.7512455', '132.727158', '1'),
('1708', 'Kabupaten Maluku Tengah', '8101', '2', '-3.0166501', '129.486441', '1'),
('1709', 'Kabupaten Buru Selatan', '8109', '2', '-3.3927754', '126.781950', '1'),
('1710', 'Kabupaten Kepulauan Aru', '8107', '2', '-6.1946502', '134.550193', '1'),
('1711', 'Kabupaten Seram Bagian Barat', '8106', '2', '-3.1271575', '128.400835', '1'),
('1712', 'Kabupaten Seram Bagian Timur', '8105', '2', '-3.4150761', '130.390488', '1'),
('1713', 'Kota Ambon', '8171', '2', '-3.65607', '128.166419', '1'),
('1714', 'KotaTual', '8172', '2', '-5.640851', '132.747509', '1'),
('1715', 'Kabupaten Halmahera Barat', '8201', '2', '1.3121235', '128.484992', '1'),
('1716', 'Kabupaten Halmahera Tengah', '8202', '2', '1.3121235', '128.484992', '1'),
('1717', 'Kabupaten Kepulauan Sula', '8205', '2', '-1.8666667', '125.366666', '1'),
('1718', 'Kabupaten Halmahera Selatan', '8204', '2', '1.3121235', '128.484992', '1'),
('1719', 'Kabupaten Halmahera Utara', '8203', '2', '1.3121235', '128.484992', '1'),
('1720', 'Kabupaten Halmahera Timur', '8206', '2', '1.3121235', '128.484992', '1'),
('1721', 'Kota Ternate', '8271', '2', '0.7833333', '127.366666', '1'),
('1722', 'Kota Tidore Kepulauan', '8272', '2', '0.6833333', '127.4', '1'),
('1723', 'Kabupaten Fakfak', '9203', '2', '-2.885237', '132.265828', '1'),
('1724', 'Kabupaten Kaimana', '9208', '2', '-3.660925', '133.774506', '1'),
('1725', 'Kabupaten Teluk Wondama', '9207', '2', '-2.8551699', '134.323655', '1'),
('1726', 'Kabupaten Teluk Bintuni', '9206', '2', '-1.9056848', '133.329466', '1'),
('1727', 'Kabupaten Manokwari', '9202', '2', '-0.8614531', '134.062042', '1'),
('1728', 'Kabupaten Sorong Selatan', '9204', '2', '-0.8666667', '131.25', '1'),
('1729', 'Kota Sorong', '9271', '2', '-0.8666667', '131.25', '1'),
('1730', 'Kabupaten Raja Ampat', '9205', '2', '-1.0915151', '130.877858', '1'),
('1731', 'Kabupaten Sorong', '9201', '2', '-0.8666667', '131.25', '1'),
('1732', 'Kabupaten Merauke', '9101', '2', '-8.4960406', '140.394552', '1'),
('1733', 'Kabupaten Jayawijaya', '9102', '2', '-4.0004481', '138.799512', '1'),
('1734', 'Kabupaten Jayapura', '9103', '2', '-2.533', '140.717', '1'),
('1735', 'Kabupaten Nabire', '9104', '2', '-3.5095462', '135.752098', '1'),
('1736', 'Kabupaten Kepulauan Yapen', '9105', '2', '-1.7469359', '136.170901', '1'),
('1737', 'Kabupaten Biak Numfor', '9106', '2', '-1.0381022', '135.980084', '1'),
('1738', 'Kabupaten Paniai', '9108', '2', '-3.7876441', '136.362468', '1'),
('1739', 'Kabupaten Puncak Jaya', '9107', '2', '-4.0836111', '137.184722', '1'),
('1740', 'Kabupaten Mimika', '9109', '2', '-4.4553223', '137.136212', '1'),
('1741', 'Kabupaten Boven Digoel', '9116', '2', '-5.7400018', '140.348183', '1'),
('1742', 'Kabupaten Mappi', '9117', '2', '-7.102232', '139.396393', '1'),
('1743', 'Kabupaten Asmat', '9118', '2', '-5.0573958', '138.398818', '1'),
('1744', 'Kabupaten Yahukimo', '9113', '2', '-4.4939717', '139.527999', '1'),
('1745', 'Kabupaten Pegunungan Bintang', '9112', '2', '-4.5589872', '140.513558', '1'),
('1746', 'Kabupaten Tolikara', '9114', '2', '-3.481132', '138.478725', '1'),
('1747', 'Kabupaten Sarmi', '9110', '2', '-1.868727', '138.743607', '1'),
('1748', 'Kabupaten Keerom', '9111', '2', '-3.3449536', '140.762449', '1'),
('1749', 'Kabupaten Waropen', '9115', '2', '-2.8435717', '136.670534', '1'),
('1750', 'Kabupaten Supiori', '9119', '2', '-0.7295099', '135.638512', '1'),
('1751', 'Kabupaten Mamberamo Raya', '9120', '2', '-2.5331255', '137.763756', '1'),
('1752', 'Kota Jayapura', '9171', '2', '-2.533', '140.717', '1'),
('1753', 'Kabupaten Labuhanbatu Utara', '1223', '2', '2.3465638', '99.8124935', '1'),
('1754', 'Kabupaten Labuhanbatu Selatan', '1222', '2', '1.8799353', '100.170325', '1'),
('1756', 'Kabupaten Nias Utara', '1224', '2', '1.1255279', '97.5247243', '1'),
('1757', 'Kabupaten Nias Barat', '1225', '2', '1.1255279', '97.5247243', '1'),
('1758', 'Kota Gunungsitoli', '1278', '2', '1.281964', '97.61594', '1'),
('1759', 'Kabupaten Kepulauan Meranti', '1410', '2', '0.9208765', '102.667557', '1'),
('1760', 'Kota Sungai Penuh', '1572', '2', '-2.06314', '101.387199', '1'),
('1761', 'Kabupaten Bengkulu Tengah', '1709', '2', '-3.7955556', '102.259166', '1'),
('1762', 'Kabupaten Tulangbawang Barat', '1806', '2', '-4.5256967', '105.079122', '1'),
('1763', 'Kabupaten Pringsewu', '1810', '2', '-5.3539884', '104.962249', '1'),
('1764', 'Kabupaten Mesuji', '1811', '2', '-4.0044783', '105.313118', '1'),
('1765', 'Kabupaten Lingga', '2104', '2', '-0.1627686', '104.635463', '1'),
('1766', ' Kabupaten Anambas', '2105', '2', '3.1055459', '105.653723', '1'),
('1767', 'Kabupaten Sleman', '3404', '2', '-7.716165', '110.335403', '1'),
('1768', 'Kota Tangerang Selatan', '3674', '2', '-6.2888889', '106.718055', '1'),
('1769', 'Kabupaten Lombok Utara', '5208', '2', '-8.3739076', '116.277707', '1'),
('1770', 'Kabupaten Sabu Raijua', '5302', '2', '-10.554111', '121.833486', '1'),
('1771', 'Kabupaten Bolang Mongondow Timur', '7110', '2', '0.7152651', '124.464184', '1'),
('1772', 'Kabupaten Bolang Mongondow Selatan', '7111', '2', '0.4053215', '123.841128', '1'),
('1773', 'Kabupaten Sigi', '7210', '2', '-1.3834127', '120.066523', '1'),
('1774', 'Kabupaten Toraja Utara', '7326', '2', '-2.8621942', '119.835230', '1'),
('1775', 'Kabupaten Maluku Barat Daya', '8108', '2', '-7.7851588', '126.349809', '1'),
('1776', 'Kabupaten Buru', '8104', '2', '-3.3927754', '126.781950', '1'),
('1778', 'Kabupaten Pulau Morota', '8207', '2', '2.3656672', '128.400835', '1'),
('1789', 'Kabupaten Tambrauw', '9209', '2', '-0.781856', '132.393837', '1'),
('1790', 'Kabupaten Maybat', '9210', '2', '3.1472', '101.6997', '1'),
('1791', 'Kabupaten Memberamo Tengah', '9121', '2', '-2.3745692', '138.319027', '1'),
('1792', 'Kabupaten Yalimo', '9122', '2', '-3.7852847', '139.446600', '1'),
('1793', 'Kabupaten Lanny Jaya', '9123', '2', '-3.971033', '138.319027', '1'),
('1794', 'Kabupaten Nduga', '9124', '2', '-4.4069496', '138.239352', '1'),
('1795', 'Kabupaten Puncak', '9125', '2', '-6.7125476', '106.954242', '1'),
('1796', 'Kabupaten Dogiyai', '9126', '2', '-4.0193872', '135.961044', '1'),
('1797', 'Kabupaten Intan Jaya', '9127', '2', '-3.5076422', '136.747849', '1'),
('1798', 'Kabupaten Deiyai', '9128', '2', '-4.0974893', '136.439305', '1');

-- --------------------------------------------------------

--
-- Struktur dari tabel `titik_models`
--

CREATE TABLE `titik_models` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indeks untuk tabel `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indeks untuk tabel `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indeks untuk tabel `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indeks untuk tabel `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indeks untuk tabel `tbl_location`
--
ALTER TABLE `tbl_location`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tbl_point`
--
ALTER TABLE `tbl_point`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `titik_models`
--
ALTER TABLE `titik_models`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `tbl_location`
--
ALTER TABLE `tbl_location`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `tbl_point`
--
ALTER TABLE `tbl_point`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `titik_models`
--
ALTER TABLE `titik_models`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
