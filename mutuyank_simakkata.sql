-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Waktu pembuatan: 08 Sep 2023 pada 10.16
-- Versi server: 10.4.27-MariaDB-cll-lve
-- Versi PHP: 7.3.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mutuyank_simakkata`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `kategori`
--

CREATE TABLE `kategori` (
  `id_kategori` int(10) UNSIGNED NOT NULL,
  `nama_kategori` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `kategori`
--

INSERT INTO `kategori` (`id_kategori`, `nama_kategori`, `created_at`, `updated_at`) VALUES
(1, 'Pendamping', '2023-03-01 03:48:01', '2023-03-01 03:48:01'),
(2, 'Tim Pembina Cluster Binaan (TPCB)', '2023-04-12 08:49:31', '2023-04-12 08:49:31');

-- --------------------------------------------------------

--
-- Struktur dari tabel `klinik`
--

CREATE TABLE `klinik` (
  `id_klinik` int(10) NOT NULL,
  `nama_klinik` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `kode_klinik` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `alamat` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `dokter` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `nilai_akre` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tahun_akre` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `noizin` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `klinik`
--

INSERT INTO `klinik` (`id_klinik`, `nama_klinik`, `kode_klinik`, `alamat`, `dokter`, `nilai_akre`, `tahun_akre`, `noizin`, `created_at`, `updated_at`) VALUES
(2, 'a', 'asd', 'asd', 'asd', 'Dasar', 'asd', 'asd', '2023-08-21 03:56:24', '2023-08-21 03:56:24');

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
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2014_10_12_200000_add_two_factor_columns_to_users_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2021_03_05_194740_tambah_kolom_baru_to_users_table', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `pendamping`
--

CREATE TABLE `pendamping` (
  `id_pendamping` int(10) UNSIGNED NOT NULL,
  `id_kategori` int(10) UNSIGNED NOT NULL,
  `nama_pendamping` varchar(255) NOT NULL,
  `nip` varchar(255) NOT NULL,
  `jabatan_akre` varchar(255) NOT NULL,
  `pangkat` varchar(255) NOT NULL,
  `telepon` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `pendamping`
--

INSERT INTO `pendamping` (`id_pendamping`, `id_kategori`, `nama_pendamping`, `nip`, `jabatan_akre`, `pangkat`, `telepon`, `email`, `created_at`, `updated_at`) VALUES
(4, 1, 'Dedeh Hartati, Am.Keb, SKM', '196512311986032090', 'Pendamping UKM', 'Penata Tk I/IIId', '085223303052', 'dedehhartati65@gmail.com', '2023-04-02 11:16:54', '2023-06-21 12:13:03'),
(5, 1, 'Nurul Fadhilah, S.ST, M.M', '198907182017042001', 'Pendamping Admen', 'Penata Muda Tk I/IIIb', '085351244488', 'ratunurul24@gmail.com', '2023-04-02 22:08:55', '2023-06-21 12:13:57'),
(6, 1, 'drg Andri Bastian, S.IP', '197907022009021004', 'Pendamping UKP', 'Pembina Tk I/IVb', '081223565929', 'drg.abassambas@gmail.com', '2023-04-02 22:10:11', '2023-06-21 12:14:28'),
(7, 1, 'Leni Nuraeni HR, S.Kep', '197607201997032002', 'Pendamping Admen', 'Penata Tk I/IIId', '08112470278', 'nleni2473@gmail.com', '2023-04-02 22:11:46', '2023-06-21 12:13:15'),
(8, 1, 'Mia Shofia, SKM, SST, MKM', '197605302011012002', 'Pendamping UKM', 'Penata Muda Tk I/IIIb', '08122460660', 'miaherawan@gmail.com', '2023-04-02 22:12:50', '2023-06-21 12:11:22'),
(9, 1, 'dr Hj Analisa', '197410082002122002', 'Pendamping UKP', 'Pembina Tk I/IVb', '081214937891', 'analisaratnasari@gmail.com', '2023-04-02 22:13:46', '2023-06-21 12:14:43'),
(10, 1, 'Ayi Luqmanul Hakim, S.Kep, Ners', '198301072011011003', 'Pendamping Admen', 'Penata Muda Tk I/IIIb', '085323838666', 'ayiluqmanulhakim@gmail.com', '2023-04-02 22:14:51', '2023-06-21 12:12:33'),
(11, 1, 'Otong Kusmana, SKM, MPH', '197604062000121003', 'Pendamping UKM', 'Pembina/IVa', '082121656509', 'otongkusman@gmail.com', '2023-04-02 22:17:05', '2023-06-21 12:13:51'),
(12, 1, 'Wilianto, Amd.KG, SKM, MAP', '197909152010011009', 'Pendamping Admen', 'Penata/IIIc', '082318496062', 'willydinkeskab@gmail.com', '2023-04-02 22:18:38', '2023-06-21 12:13:22'),
(13, 1, 'Esther Rizal, SKM', '197505222005012010', 'Pendamping Admen', 'Penata Tk I/IIId', '085224103639', 'bunda.rara08@gmail.com', '2023-04-02 22:19:34', '2023-06-21 12:14:13'),
(14, 1, 'dr Yunike Rosdiana Herman, MKM', '197006292002122002', 'Pendamping UKP', 'Pembina Tk I/IVb', '085318342550', 'yunikerh@gmail.com', '2023-04-02 22:20:31', '2023-06-21 12:14:35'),
(15, 1, 'Saefullah Darmawan S., S.ST', '198907182017042001', 'Pendamping Admen', 'Pembina/IVa', '081322592570', 'saefullah.darmawan@gmail.com', '2023-04-06 22:50:13', '2023-06-21 12:13:26'),
(16, 1, 'Riksi Tazali. Skep. Ners', '198303082006041008', 'Pendamping UKM', 'Penata Tk I/IIId', '085223042563', 'riksitazali@gmail.com', '2023-04-06 23:59:04', '2023-06-21 12:13:30'),
(17, 1, 'Asep Kristiandi, A.Md.Kep', '198809112015031002', 'Pendamping Admen', 'Pengatur/IIc', '082295270996', 'asepkristiandi13@gmail.com', '2023-06-14 02:33:42', '2023-06-21 12:08:59'),
(18, 1, 'drg Rieni Andriani', '197601192005012005', 'Pendamping UKP', 'Pembina Tk I/IVb', '08112121535', 'rieniandryani@gmail.com', '2023-06-14 02:38:53', '2023-06-21 12:11:35'),
(19, 1, 'dr Dewi Ligiarti', '198105292010012004', 'Pendamping UKP', 'Pembina Tk I/IVb', '085315158666', 'drdewil@yahoo.com', '2023-06-14 02:40:30', '2023-06-21 12:13:09'),
(20, 1, 'Mamat Suhaery, S.Kep, Ners', '196905291989031006', 'Pendamping UKM', 'Pembina Tk I/IVb', '081320754360', 'suhaerymamat@gmail.com', '2023-06-14 02:54:16', '2023-06-21 12:14:05'),
(21, 1, 'Rd Siti Aminah S.tr. Keb', '196809101988032006', 'Pendamping UKM', 'Pembina Tk I/IVb', '081320657307', 'sitiasmutie@gmail.com', '2023-06-14 02:56:11', '2023-06-21 12:13:41'),
(22, 1, 'drg Srie Teresyawati', '197305262005012007', 'Pendamping UKP', 'Pembina Tk I/IVb', '08122733417', 'drg_srie_teresyawati@yahoo.com', '2023-06-14 02:57:52', '2023-06-21 12:11:52'),
(23, 1, 'drg Widi Meipina', '197805032005012007', 'Pendamping UKP', 'Pembina Tk I/IVb', '081321029963', 'widimeipinadrg@gmail.com', '2023-06-14 02:59:14', '2023-06-21 12:14:20'),
(24, 1, 'Candrawati PD, S.IP', '197506131995032001', 'Pendamping UKM', 'Penata Tk I/IIId', '08122177405', 'candrawati251@gmail.com', '2023-06-14 03:00:52', '2023-06-21 12:11:28');

-- --------------------------------------------------------

--
-- Struktur dari tabel `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `pjmutuklinik`
--

CREATE TABLE `pjmutuklinik` (
  `id_pjmutuklinik` int(10) UNSIGNED NOT NULL,
  `pjmutuklinik` varchar(255) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `nip` varchar(255) NOT NULL,
  `pangkat` varchar(255) NOT NULL,
  `telepon` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `pjmutupkm`
--

CREATE TABLE `pjmutupkm` (
  `id_pjmutupkm` int(10) UNSIGNED NOT NULL,
  `pjmutupkm` varchar(255) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `nip` varchar(255) NOT NULL,
  `pangkat` varchar(255) NOT NULL,
  `telepon` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `pjmutupkm`
--

INSERT INTO `pjmutupkm` (`id_pjmutupkm`, `pjmutupkm`, `nama`, `nip`, `pangkat`, `telepon`, `email`, `created_at`, `updated_at`) VALUES
(1, 'Puskesmas Bojongasih', 'dr Nono Yuhana', 'Belum ada data', 'Dan Lain-lain', '081222867854', 'drnonoyuhana79@gmail.com', '2023-04-02 11:42:43', '2023-04-02 11:42:43'),
(2, 'Puskesmas Bojonggambir', 'Resta Mutiara Yudha, S.Kep.,Ners', 'Belum ada data', 'Dan Lain-lain', '085323004000', 'nononresta@gmail.com', '2023-04-02 11:42:43', '2023-04-02 11:42:43'),
(3, 'Puskesmas Ciawi', 'Mamat Suhaery, S.Kep,Ners', 'Belum ada data', 'Dan Lain-lain', '081320754360', 'suhaerymamat@gmail.com', '2023-04-02 11:42:43', '2023-04-02 11:42:43'),
(4, 'Puskesmas Cibalong', 'dr Jaka hermawan', 'Belum ada data', 'Dan Lain-lain', '081289431641', 'dokterdjaka81@gmail.com', '2023-04-02 11:42:43', '2023-04-02 11:42:43'),
(5, 'Puskesmas Cigalontang', 'dr Navisatul mutmainah', 'Belum ada data', 'Dan Lain-lain', '081395048419', 'navisatul.visa@gmail.com', '2023-04-02 11:42:43', '2023-04-02 11:42:43'),
(6, 'Puskesmas Cikalong', 'H.Yanyan Cundayana, S.KM.,S.Kep.,Ners', 'Belum ada data', 'Dan Lain-lain', '085223059688', 'hyanyanc.1974@gmail.com', '2023-04-02 11:42:43', '2023-04-02 11:42:43'),
(7, 'Puskesmas Cikatomas', 'dr Lisva Fauziatul Haqiqiah', 'Belum ada data', 'Dan Lain-lain', '082183160160', 'drlisvafauziatul@gmail.com', '2023-04-02 11:42:43', '2023-04-02 11:42:43'),
(8, 'Puskesmas Cineam', 'Yanyan Gusmana, A.Md.Kep.', 'Belum ada data', 'Dan Lain-lain', '081214245175', 'yanyangusmana@yahoo.com', '2023-04-02 11:42:43', '2023-04-02 11:42:43'),
(9, 'Puskesmas Cipatujah', 'Hj.Sukmanah Mintarsih,S.Kep,Ners', 'Belum ada data', 'Dan Lain-lain', '085323409640', 'sukmanah.mintarsih@gmail.com', '2023-04-02 11:42:43', '2023-04-02 11:42:43'),
(10, 'Puskesmas Cisaruni', 'drg Andri Bastian, S.IP', 'Belum ada data', 'Dan Lain-lain', '081223565929', 'drgabasambas@gmail.com', '2023-04-02 11:42:43', '2023-04-02 11:42:43'),
(11, 'Puskesmas Cisayong', 'Ayi Nuraisah Nasution, SKM', 'Belum ada data', 'Dan Lain-lain', '085794488895', 'ayinuraisah9@gmail.com', '2023-04-02 11:42:43', '2023-04-02 11:42:43'),
(12, 'Puskesmas Culamega', 'dr Adi Heryadi', 'Belum ada data', 'Dan Lain-lain', '085320000550', 'abdihilap@googlemail.com', '2023-04-02 11:42:43', '2023-04-02 11:42:43'),
(13, 'Puskesmas Gunungtanjung', 'Dede Susi Damayanti, S.Tr.Kes', 'Belum ada data', 'Dan Lain-lain', '082115295530', 'dedesusi.pkmgunungtanjung@gmail.com', '2023-04-02 11:42:43', '2023-04-02 11:42:43'),
(14, 'Puskesmas Jamanis', 'Cahya Hasbuna,S.Kep,Ners', 'Belum ada data', 'Dan Lain-lain', '085223001981', 'cahyahasbuna82@gmail.com', '2023-04-02 11:42:43', '2023-04-02 11:42:43'),
(15, 'Puskesmas Jatiwaras', 'dr mahidin', 'Belum ada data', 'Dan Lain-lain', '081230949696', 'Mahid.cm@gmail.com', '2023-04-02 11:42:43', '2023-04-02 11:42:43'),
(16, 'Puskesmas Kadipaten', 'Drg yunie Arlini Basri', 'Belum ada data', 'Dan Lain-lain', '085972807595', 'yuniarlini75@gmail.com', '2023-04-02 11:42:43', '2023-04-02 11:42:43'),
(17, 'Puskesmas Karangjaya', 'Leli Nurhasanah, Am. Keb', 'Belum ada data', 'Dan Lain-lain', '082321496690', 'lelinurhasanah@gmail.com', '2023-04-02 11:42:43', '2023-04-02 11:42:43'),
(18, 'Puskesmas Karangnunggal', 'Asep Kristiandi, S.Kep, Ns', 'Belum ada data', 'Dan Lain-lain', '082295270996', 'asepkristiandi13@gmail.com', '2023-04-02 11:42:43', '2023-04-02 11:42:43'),
(19, 'Puskesmas Leuwisari', 'Endang Haryati S.KM', 'Belum ada data', 'Dan Lain-lain', '081546875720', 'eharyatileuwisari@gmail.com', '2023-04-02 11:42:43', '2023-04-02 11:42:43'),
(20, 'Puskesmas Mangunreja', 'Serli Nur Alindra, AM.Keb, SKM', 'Belum ada data', 'Dan Lain-lain', 'O81222222027', 'pkm.mangunreja@gmail.com', '2023-04-02 11:42:43', '2023-04-02 11:42:43'),
(21, 'Puskesmas Manonjaya', 'Widi Meipina, drg', 'Belum ada data', 'Dan Lain-lain', '081321029963', 'widimeipinadrg@gmail.com', '2023-04-02 11:42:43', '2023-04-02 11:42:43'),
(22, 'Puskesmas Pancatengah', 'Asep Wahyudin, S.Kep.Ners', 'Belum ada data', 'Dan Lain-lain', '085324662291', 'asepwahyu290174@gmail.com', '2023-04-02 11:42:43', '2023-04-02 11:42:43'),
(23, 'Puskesmas Parungponteng', 'Wahidah, AMd.Kep', 'Belum ada data', 'Dan Lain-lain', '082316197713', 'djamhurwahidah@gmail.com', '2023-04-02 11:42:43', '2023-04-02 11:42:43'),
(24, 'Puskesmas Puspahiang', 'Taufik Herawan, AMK', 'Belum ada data', 'Dan Lain-lain', '085223419413', 'taufik.hearawan89@gmail.com', '2023-04-02 11:42:43', '2023-04-02 11:42:43'),
(25, 'Puskesmas Salawu', 'dr Verra Hermania Tisnawati ', 'Belum ada data', 'Dan Lain-lain', '08112774750', 'verra.tisnawati@gmail.com', '2023-04-02 11:42:43', '2023-04-02 11:42:43'),
(26, 'Puskesmas Sariwangi', 'dr Agus Indiyatno', 'Belum ada data', 'Dan Lain-lain', '085351045226', 'a.indiyatno@gmail.com', '2023-04-02 11:42:43', '2023-04-02 11:42:43'),
(27, 'Puskesmas Singaparna', 'N Eti Mulyqti. aM.Keb', 'Belum ada data', 'Dan Lain-lain', '085223499123', 'etim83263@gmail.com', '2023-04-02 11:42:43', '2023-04-02 11:42:43'),
(28, 'Puskesmas Sodonghilir', 'Asikin, S.Kep.,Ners.', 'Belum ada data', 'Dan Lain-lain', '082387381416', 'asikinikin367@gmail.com', '2023-04-02 11:42:43', '2023-04-02 11:42:43'),
(29, 'Puskesmas Sukahening', 'dr Hendri Okarisman', 'Belum ada data', 'Dan Lain-lain', '081266727803', 'hendriokadr@gmail.com', '2023-04-02 11:42:43', '2023-04-02 11:42:43'),
(30, 'Puskesmas Sukaraja', 'Dewi Irma ilmiyati,S.Tr.Keb,SKM', 'Belum ada data', 'Dan Lain-lain', '082316776776', 'Wieirma@gmail.com', '2023-04-02 11:42:43', '2023-04-02 11:42:43'),
(31, 'Puskesmas Sukarame', 'dr Tatan Rahmat ', 'Belum ada data', 'Dan Lain-lain', '08164664444', 'tatanrahmat99@gmail.com', '2023-04-02 11:42:43', '2023-04-02 11:42:43'),
(32, 'Puskesmas Sukaratu', 'Enok Cahyati,S.TR.KEB', 'Belum ada data', 'Dan Lain-lain', '085223651831', 'cahyatienok7@gmail.com', '2023-04-02 11:42:43', '2023-04-02 11:42:43'),
(33, 'Puskesmas Sukaresik', 'dr Neng Heni Yudiyanty', 'Belum ada data', 'Dan Lain-lain', '081224971924', 'nengheniyudiyanti77@gmail.com', '2023-04-02 11:42:43', '2023-04-02 11:42:43'),
(34, 'Puskesmas Tanjungjaya', 'drg Anis Haerunissa ', 'Belum ada data', 'Dan Lain-lain', '082295286025', 'anishaerunissa08@gmail.com', '2023-04-02 11:42:43', '2023-04-02 11:42:43'),
(35, 'Puskesmas Taraju', 'Yanti Marliyanti S,Tr,Keb,.S,KM', 'Belum ada data', 'Dan Lain-lain', '082315157464', 'yantimarliyanti57@gmail.com', '2023-04-02 11:42:43', '2023-04-02 11:42:43'),
(36, 'Puskesmas Tinewati', 'dr Hj. Saidah, M.H. Kes ', 'Belum ada data', 'Dan Lain-lain', '082315838589', 'saidahdr@yahoo.com', '2023-04-02 11:42:43', '2023-04-02 11:42:43');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pkm`
--

CREATE TABLE `pkm` (
  `id_pkm` int(10) UNSIGNED NOT NULL,
  `nama` varchar(255) NOT NULL,
  `alamat` text DEFAULT NULL,
  `kode_fasyankes` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `nilai_akre` varchar(255) NOT NULL,
  `tahun_akre` varchar(255) NOT NULL,
  `noizin` varchar(255) NOT NULL,
  `kawasan` varchar(255) NOT NULL,
  `inap` varchar(255) NOT NULL,
  `poned` varchar(255) NOT NULL,
  `blud` varchar(255) NOT NULL,
  `latitude` varchar(255) NOT NULL,
  `longitude` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `pkm`
--

INSERT INTO `pkm` (`id_pkm`, `nama`, `alamat`, `kode_fasyankes`, `email`, `nilai_akre`, `tahun_akre`, `noizin`, `kawasan`, `inap`, `poned`, `blud`, `latitude`, `longitude`, `created_at`, `updated_at`) VALUES
(1, 'Puskesmas Bantarkalong', 'Jl. Raya Pamijahan No 40, Desa Simpang, Kec. Bantarkalong', '1030679', '', 'Madya', '2018', '123', 'Dasar', 'Rawat Inap', 'PONED', 'BLUD', '123', '123213123213', '2023-04-02 22:47:43', '2023-06-21 12:23:28'),
(2, 'Puskesmas Bojongasih', 'Kp Madur, Desa Bojongasih, Kec. Bojongasih', '1030680', '', 'Utama', '2019', '', '', '', '', '', '', '', '2023-04-02 22:51:48', '2023-06-15 04:29:27'),
(3, 'Puskesmas Bojonggambir', 'Kp. Panglayungan, Desa Bojonggambir, Kec. Bojonggambir', '1030682', '', 'Madya', '', '', '', '', '', '', '', '', '2023-04-02 22:52:57', '2023-06-14 03:43:53'),
(4, 'Puskesmas Ciawi', 'Jalan Puskesmas Nomor 15 Desa Pakemitan Kecamatan Ciawi, Desa Pakemitan, Kec. Ciawi', '1030708', '', 'Dasar', '', '', '', '', '', '', '', '', '2023-04-02 23:48:58', '2023-06-14 03:44:22'),
(5, 'Puskesmas Cibalong', 'Jl Karangnunggal No.204, Desa Cibalong, Kec. Cibalong', '1030677', '', 'Madya', '', '', '', '', '', '', '', '', '2023-04-02 23:49:31', '2023-06-14 03:44:49'),
(6, 'Puskesmas Cigalontang', 'Jalan Perkantoran No. 38, Desa Jayapura, Kec. Cigalontang', '1030698', '', 'Utama', '', '', '', '', '', '', '', '', '2023-04-02 23:50:59', '2023-06-14 03:45:09'),
(7, 'Puskesmas Cikalong', 'Kp. Cilutung, Desa Cikalong, Kec. Cikalong', '1030674', '', 'Madya', '', '', '', '', '', '', '', '', '2023-04-02 23:52:44', '2023-06-14 03:45:21'),
(8, 'Puskesmas Cikatomas', 'Jl. Rumah Sakit, Desa Pakemitan, Kec. Cikatomas', '1030676', '', 'Utama', '', '', '', '', '', '', '', '', '2023-04-02 23:53:30', '2023-06-14 03:45:38'),
(9, 'Puskesmas Cineam', 'Jl Yogaswara No. 12 Cineam, Desa Cineam, Kec. Cineam', '1030691', '', 'Madya', '', '', '', '', '', '', '', '', '2023-04-02 23:55:19', '2023-06-14 03:46:02'),
(10, 'Puskesmas Cipatujah', 'Jl Raya Cipatujah No 123 RT 016 RW 004, Desa Cipatujah, Kec. Cipatujah', '1030672', '', 'Madya', '', '', '', '', '', '', '', '', '2023-04-02 23:56:11', '2023-06-14 03:46:22'),
(11, 'Puskesmas Cisaruni', 'Jl Batu beulah, no.90,, Desa Cisaruni, Kec. Padakembang', '1030702', '', 'Utama', '', '', '', '', '', '', '', '', '2023-04-02 23:59:00', '2023-06-14 03:46:33'),
(12, 'Puskesmas Cisayong', 'Jln.Cisayong No.124, Desa Cisayong, Kec. Cisayong', '1030704', '', 'Madya', '', '', '', '', '', '', '', '', '2023-04-03 00:01:18', '2023-06-14 03:47:06'),
(13, 'Puskesmas Culamega', 'Jl.Gubernur Sewaka No.02 Culamega, Desa Cikuya, Kec. Culamega', '1030681', '', 'Madya', '', '', '', '', '', '', '', '', '2023-04-03 00:01:50', '2023-06-14 03:47:20'),
(14, 'Puskesmas Gunungtanjung', 'Jln Raya Gunungtanjung, Desa Cinunjang, Kec. Gunung Tanjung', '1030693', '', 'Utama', '', '', '', '', '', '', '', '', '2023-04-03 00:03:32', '2023-06-14 03:47:33'),
(15, 'Puskesmas Jamanis', 'Jln. Raya Jamanis No. 33 , Desa Sindangraja, Kec. Jamanis', '1030707', '', 'Utama', '', '', '', '', '', '', '', '', '2023-04-03 00:04:23', '2023-06-14 03:47:56'),
(16, 'Puskesmas Jatiwaras', 'Jl Raya Papayan-Cikatomas, Desa Jatiwaras, Kec. Jatiwaras', '1030690', '', 'Paripurna', '', '', '', '', '', '', '', '', '2023-04-03 00:05:52', '2023-06-14 03:48:20'),
(17, 'Puskesmas Kadipaten', 'Jln. Perjuangan, Desa Pamoyanan, Kec. Kadipaten', '1030709', '', 'Madya', '', '', '', '', '', '', '', '', '2023-04-03 00:06:39', '2023-06-14 03:51:59'),
(18, 'Puskesmas Karangjaya', 'Dusun Sukajaya, Desa Sirnajaya, Kec. Karang Jaya', '1030700', '', 'Utama', '', '', '', '', '', '', '', '', '2023-04-03 00:07:15', '2023-06-14 03:52:16'),
(19, 'Puskesmas Karangnunggal', 'Jl Raya Karangnunggal No. 12, Desa Karangnunggal, Kec. Karangnunggal', '1030673', '', 'Madya', '', '', '', '', '', '', '', '', '2023-04-03 00:08:06', '2023-06-14 03:52:30'),
(20, 'Puskesmas Leuwisari', 'Jl. Leuwisari No 25, Desa Arjasari, Kec. Leuwisari', '1030699', '', 'Utama', '', '', '', '', '', '', '', '', '2023-04-03 01:04:05', '2023-06-14 03:52:44'),
(21, 'Puskesmas Mangunreja', 'Jl. Raya Sukaraja No. 53, Desa Mangunreja, Kec. Mangunreja', '1030697', '', 'Madya', '', '', '', '', '', '', '', '', '2023-04-03 01:05:45', '2023-06-14 03:53:07'),
(22, 'Puskesmas Manonjaya', 'Jalan Tangsi No 06 Desa Manonjaya Kecamatan Manonjaya, Desa Manonjaya, Kec. Manonjaya', '1030692', '', 'Madya', '', '', '', '', '', '', '', '', '2023-04-03 01:06:38', '2023-06-14 03:53:36'),
(23, 'Puskesmas Pagerageung', 'Jl. Tanjaknangsi No. 23-25 Pagerageung , Desa Pagerageung, Kec. Pagerageung', '1030710', '', 'Madya', '', '', '', '', '', '', '', '', '2023-04-03 01:11:11', '2023-06-14 03:53:56'),
(24, 'Puskesmas Pancatengah', 'Jln Raya Pancatengah , Desa Cibongas, Kec. Pancatengah', '1030675', '', 'Madya', '', '', '', '', '', '', '', '', '2023-04-03 01:13:11', '2023-06-14 03:54:10'),
(25, 'Puskesmas Parungponteng', 'Kp. Parungponteng 001/001, Desa Parungponteng, Kec. Parungponteng', '1030678', '', 'Utama', '', '', '', '', '', '', '', '', '2023-04-03 02:13:46', '2023-06-14 03:54:22'),
(26, 'Puskesmas Puspahiang', 'Jl. Raya Puspahiang No 07, Desa Puspahiang, Kec. Puspahiang', '1030686', '', 'Madya', '', '', '', '', '', '', '', '', '2023-04-03 02:14:36', '2023-06-14 03:54:39'),
(27, 'Puskesmas Rajapolah', 'Kp. Cibarani, Desa Manggungjaya, Kec. Rajapolah', '1030706', '', 'Madya', '', '', '', '', '', '', '', '', '2023-04-03 02:15:08', '2023-06-14 03:56:18'),
(28, 'Puskesmas Salawu', 'Jl. Raya Salawu No.118, Desa Margalaksana, Kec. Salawu', '1030685', '', 'Madya', '', '', '', '', '', '', '', '', '2023-04-03 02:16:10', '2023-06-14 03:56:29'),
(29, 'Puskesmas Salopa', 'Jln Raya Salopa No.226, Desa Mandalahayu, Kec. Salopa', '1030689', '', 'Madya', '', '', '', '', '', '', '', '', '2023-04-03 02:17:22', '2023-06-14 03:56:52'),
(30, 'Puskesmas Sariwangi', 'Jln Raya Sariwangi No. 35, Desa Sariwangi, Kec. Sariwangi', '1030701', '', 'Utama', '', '', '', '', '', '', '', '', '2023-04-03 02:18:54', '2023-06-14 03:57:15'),
(31, 'Puskesmas Singaparna', 'Jl Pancawarna No 7, Desa Singasari, Kec. Singaparna', '1030695', '', 'Utama', '', '', '', '', '', '', '', '', '2023-04-03 02:19:42', '2023-06-14 03:57:50'),
(32, 'Puskesmas Sodonghilir', 'Jln Raya Timur No 18 Sodonghilir, Desa Sodonghilir, Kec. Sodonghilir', '1030683', '', 'Madya', '', '', '', '', '', '', '', '', '2023-04-03 02:20:30', '2023-06-14 04:06:18'),
(33, 'Puskesmas Sukahening', 'Jl. Raya Sukahening No. 105, Desa Calincing, Kec. Sukahening', '1030705', '', 'Madya', '', '', '', '', '', '', '', '', '2023-04-03 02:21:33', '2023-06-14 04:06:30'),
(34, 'Puskesmas Sukaraja', 'Jln Cibalanarik Sukaraja Kp. Pengkolan , Desa Sukapura, Kec. Sukaraja', '1030688', '', 'Utama', '', '', '', '', '', '', '', '', '2023-04-03 02:22:16', '2023-06-14 04:06:52'),
(35, 'Puskesmas Sukarame', 'Jl Raya Sukarame No 117, Desa Sukarame, Kec. Sukarame', '1030696', '', 'Utama', '', '', '', '', '', '', '', '', '2023-04-03 02:22:49', '2023-06-14 04:07:02'),
(36, 'Puskesmas Sukaratu', 'Kp Kudang No.58 , Desa Sukaratu, Kec. Sukaratu', '1030703', '', 'Madya', '', '', '', '', '', '', '', '', '2023-04-03 02:23:24', '2023-06-14 04:07:14'),
(37, 'Puskesmas Sukaresik', 'Jl. Raya Ciawi-Panumbangan RT 001 RW 002, Desa Sukaratu, Kec. Sukaresik', '1030711', '', 'Utama', '', '', '', '', '', '', '', '', '2023-04-03 02:24:28', '2023-06-14 04:07:25'),
(38, 'Puskesmas Tanjungjaya', 'Jl.Cibalanarik Kp.Rengrang 007 , Desa Cibalanarik, Kec. Tanjungjaya', '1030687', '', 'Madya', '', '', '', '', '', '', '', '', '2023-04-03 02:27:00', '2023-06-14 04:07:44'),
(39, 'Puskesmas Taraju', 'Jln Raya Taraju No 149, Desa Taraju, Kec. Taraju', '1030684', '', 'Madya', '', '', '', '', '', '', '', '', '2023-04-03 02:28:25', '2023-06-14 04:07:54'),
(40, 'Puskesmas Tinewati', 'Jl Garut-Tasikmalaya No 82 Singasari, Desa Singasari, Kec. Singaparna', '1030694', '', 'Paripurna', '', '', '', '', '', '', '', '', '2023-04-03 02:28:54', '2023-06-14 04:08:03');

-- --------------------------------------------------------

--
-- Struktur dari tabel `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` text NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('0jjmvzlOpFMBvXdGYF4kVBC8vXtchg9RTE3bPfZi', NULL, '40.83.6.27', 'Mozlila/5.0 (Linux; Android 7.0; SM-G892A Bulid/NRD90M; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/60.0.3112.107 Moblie Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiQVNWN05mb0JqUDBiZFNxWmczeW9JempMc2lQeElOZjhTanlqY1Z3ViI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzY6Imh0dHBzOi8vbXV0dXlhbmtlc2thYnRhc2lrLnh5ei9sb2dpbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1694112194),
('0u3YmLU5B5Jai7f4ghjFD6cfylnhWVeGFoTM2rVq', 1, '36.74.44.235', 'Mozilla/5.0 (Linux; Android 13; SM-A525F) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.104 Mobile Safari/537.36', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoic3NjZ0dOWU5IVlBxZlVzaWRZN2VHRGN0RTF5NmpmTnluSlpJekNhNyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDA6Imh0dHBzOi8vbXV0dXlhbmtlc2thYnRhc2lrLnh5ei9kYXNoYm9hcmQiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToxO3M6MTc6InBhc3N3b3JkX2hhc2hfd2ViIjtzOjYwOiIkMnkkMTAkU0ZVQXYxcUMvTTZpZEhIMDRrWlVpZWd6SEczbEpXaFZOQzZ2VEd1MWgvZHl5c3owT05aTE8iO30=', 1694154562),
('3HsLLd8ilRgo55gWsG3viCst0k7Skl4NTR3vPJtE', NULL, '180.245.232.129', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/116.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiUmZZNTNmNXZsb1BlYmZEcXo3Mk9XR3RWdldWekt1cThsNTJrRDVmSyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzY6Imh0dHBzOi8vbXV0dXlhbmtlc2thYnRhc2lrLnh5ei9sb2dpbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1693983976),
('4D53uTGZ6X3fqFWdJQ5HUP00D1srtv8eGUjkiH23', NULL, '63.34.28.143', 'Mozilla/5.0 (compatible; NetcraftSurveyAgent/1.0; +info@netcraft.com)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiTGZTMDV1Z0lUV2JSZW8wSnBPRkNQZWdiSzZ0ajYyNGhZbGtDRFJDQSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzQ6Imh0dHBzOi8vd3d3Lm11dHV5YW5rZXNrYWJ0YXNpay54eXoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1694093492),
('4vL5fgXRb8K4rHj7Qz5YPLY3g0xzQyegFVYTjs3O', NULL, '34.219.221.24', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoicmxnVTNzNGZnTXFpdGxXVGQwWFM3N3Ewc1c2QTZDZnFTNzI5Tk1LRCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzA6Imh0dHBzOi8vbXV0dXlhbmtlc2thYnRhc2lrLnh5eiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1694012529),
('5QKEfZWa2f6wRvXhQpAqddtuLyjpX5gxfItTObkU', NULL, '5.255.231.115', 'Mozilla/5.0 (compatible; YandexBot/3.0; +http://yandex.com/bots)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiUGpuNDAzZzJUOXFlQXJLTkdScTA2dmF0NG1QQ1hXMVlXRm91R0swaiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzY6Imh0dHBzOi8vbXV0dXlhbmtlc2thYnRhc2lrLnh5ei9sb2dpbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1694170600),
('7gU0Bxwa6LcB6UT8GiIEzHbnLM526inkuvJpZd7Q', NULL, '34.253.202.16', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiUU1MMjdOdkFnMUVSTlpRMmN0cldqZmM5UFNmdHQxcDh1MFdPRG1VQiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzY6Imh0dHBzOi8vbXV0dXlhbmtlc2thYnRhc2lrLnh5ei9sb2dpbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1694170551),
('8LdIX5okRX2FYRFJ0YEdER520j5GC7MuyKt4kJqI', NULL, '95.108.213.186', 'Mozilla/5.0 (compatible; YandexBot/3.0; +http://yandex.com/bots)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiOGtTd294Tm1lQ1dIZnRQMzR0bExDUEFTWjVhRXJjUkNTdVZ0OGdYRSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzA6Imh0dHBzOi8vbXV0dXlhbmtlc2thYnRhc2lrLnh5eiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1694127359),
('8nFAS2TxQeK2Yi7iAaGQU5Xmot3soS43tBBCQdfQ', NULL, '54.213.130.12', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiWllsV0lqR0RoMUxKOVA4Z1dsMkpiNzRiSkY5TXhsNHRvMFdpVHBJQyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzA6Imh0dHBzOi8vbXV0dXlhbmtlc2thYnRhc2lrLnh5eiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1694152312),
('auWWBF5ueFQiIs5tkJrR7UsmgTyCM4FzQJA0EAIq', NULL, '144.126.238.69', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiVkV6VG1KRVR4YUc4ZWt5cFRLcUNyVHdSc1c1QmR3M2pGcGdNQTFtQSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzA6Imh0dHBzOi8vbXV0dXlhbmtlc2thYnRhc2lrLnh5eiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1694055211),
('coABR2ep0OMlO4VFNMQROsmGm3NODM1FzAxrRpIk', NULL, '52.89.47.209', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64)AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiMmg4dHNLSHpiUk9EWWwzTlRVZ0tSNmQ0dXV6cjFHT0pCZ0RQbExpTSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzY6Imh0dHBzOi8vbXV0dXlhbmtlc2thYnRhc2lrLnh5ei9sb2dpbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1693930748),
('cvw4QaY5ihSbCCSHv0qPf9a3eftHXuVr9zBVw2YK', NULL, '34.242.104.92', 'Mozilla/5.0 (compatible; NetcraftSurveyAgent/1.0; +info@netcraft.com)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiSmVUNW9WZ2ppclhuanhFdTFsMlZtakFJZ1VHNDVCWEFQbWRzdkpFaSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzA6Imh0dHBzOi8vbXV0dXlhbmtlc2thYnRhc2lrLnh5eiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1694092714),
('dV8I95s0Kny76AubsIkutFK8KoVqsCvHBgVCxCa0', NULL, '87.250.224.10', 'Mozilla/5.0 (compatible; YandexBot/3.0; +http://yandex.com/bots)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiRXdlSG5sQmRnWXNpd1FDdWhiakpibXo1VlYwOG85U2xqNUs4c2N2SCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzY6Imh0dHBzOi8vbXV0dXlhbmtlc2thYnRhc2lrLnh5ei9sb2dpbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1694122364),
('f4JDivqniYSStwCEL7vjP9EvLMOO9b7Hqw9dGx1B', NULL, '66.249.71.169', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiOHdrUUFKYnRFclZXOXlUc29JcXZ4SmFvS1BiOWF6aElBeWxXNEdVTCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzY6Imh0dHBzOi8vbXV0dXlhbmtlc2thYnRhc2lrLnh5ei9sb2dpbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1693925343),
('FymSZuCxAGNrxWVp1ePwuui3tDCFYPaBTrbtfjFp', NULL, '5.255.231.244', 'Mozilla/5.0 (compatible; YandexBot/3.0; +http://yandex.com/bots)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZ0hlSEJWVjNBTmFVNjVHMkswdXBsbUNJRnBUMzN5YVo5RmRWOUlaMCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzA6Imh0dHBzOi8vbXV0dXlhbmtlc2thYnRhc2lrLnh5eiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1694140840),
('gH7YNfK9WXwZ5xOtXGCduj96wPVRmZ9JGAdwhUak', NULL, '172.105.187.175', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiRnUyUzJTSVo4SktxUjZvU0VrVUNuS0VFS2hxZjMyT2FQRlZkYlpzaCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzA6Imh0dHBzOi8vbXV0dXlhbmtlc2thYnRhc2lrLnh5eiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1694053917),
('gK4uVZWJsm45YkpaFQiwAU8FOiGMhAeEGGQGDbKG', NULL, '34.253.202.16', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiRXY0YnMyNksyOVNrS0JQa1pUWXhmYzg0cTdJQXE4UkJJRVJJdmdtUiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1694170550),
('GqC5mxvMzdr4ydsmOF8VEekRigZk4U7KlWKzjKxu', NULL, '34.216.188.58', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiaVZ3QlRoMEVpdFpyd21jdTNJc2t6ZFJlWFQ4UUhIcGtUMHM4TEtiSSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzA6Imh0dHBzOi8vbXV0dXlhbmtlc2thYnRhc2lrLnh5eiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1694012654),
('gSBbKBtpwh5jXB6geSvmF2sA3eXUC37PPVvAqZFE', NULL, '87.250.224.219', 'Mozilla/5.0 (compatible; YandexBot/3.0; +http://yandex.com/bots)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiM0tVM0Q0SDZ6WngySjk5U280NTRIa01rVlcyMG5tcXJ0am42a2h3NiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzA6Imh0dHBzOi8vbXV0dXlhbmtlc2thYnRhc2lrLnh5eiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1694122269),
('HvF8qH7FWRKiULhCYNcys2ReJmpoJCFBvAmeJJ6S', 1, '180.245.232.129', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoiTEFIaVozVzA1SUUxRmd3S2FkdW1ybzBHaGpyaTB0Q2ZISkZMbHEzaCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDA6Imh0dHBzOi8vbXV0dXlhbmtlc2thYnRhc2lrLnh5ei9kYXNoYm9hcmQiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToxO3M6MTc6InBhc3N3b3JkX2hhc2hfd2ViIjtzOjYwOiIkMnkkMTAkU0ZVQXYxcUMvTTZpZEhIMDRrWlVpZWd6SEczbEpXaFZOQzZ2VEd1MWgvZHl5c3owT05aTE8iO30=', 1693984018),
('IbwS20cE2XIs7kbUYNixgFjbDeV0aiKqwtQT6TAt', NULL, '66.249.68.5', 'Mozilla/5.0 (Linux; Android 6.0.1; Nexus 5X Build/MMB29P) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/116.0.5845.110 Mobile Safari/537.36 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiOVFVUkJmQnREYjhYN3lNaU4zUGJ3WTk4YURTazVrOVNWeWVpQjNDYyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzY6Imh0dHBzOi8vbXV0dXlhbmtlc2thYnRhc2lrLnh5ei9sb2dpbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1693922693),
('Ic3Wt9EYWUP1ACf4hQwv4qv7R16DZCruIGSCdRe1', NULL, '34.140.189.67', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.11; rv:52.0) Gecko/20100101 Firefox/52.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZVV2YUpFclg1UWlvRUNuaFd5dTZCZXJwY3BmaE42T2JOak9mcmpJRiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzY6Imh0dHBzOi8vbXV0dXlhbmtlc2thYnRhc2lrLnh5ei9sb2dpbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1694001501),
('J7ynzkdQgcO8c9SiOtg3Fp6BqwxlZhYh6GZy4D4J', NULL, '35.171.144.152', 'Mozilla/5.0 \\(Windows NT 10.0\\; Win64\\; x64\\) AppleWebKit/537.36 \\(KHTML, like Gecko\\) Chrome/100.0.4896.60 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiM0ZSN2M4V0QxYk5KakRyMG1MUmJDMlI0V3d5TlpWbE5EVHczUUxRZCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzE6Imh0dHBzOi8vbXV0dXlhbmtlc2thYnRhc2lrLnh5ei4iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1694006201),
('JJPPKluV8HFr7vunzmmv3MVTipqfe2sGlSqo4xjG', NULL, '52.42.82.149', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64)AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiN1QyOVViV284N2ZIZUtNVmQ2cnBDU2FjYnZta1VPdnRrdklqaHp0UCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzY6Imh0dHBzOi8vbXV0dXlhbmtlc2thYnRhc2lrLnh5ei9sb2dpbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1694012841),
('JrK2jyPatSoVBSpxC2gKaIb4FQQ78TEDrTRfHJZg', NULL, '87.250.224.21', 'Mozilla/5.0 (compatible; YandexBot/3.0; +http://yandex.com/bots)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoieUZSaUQ4enU4UEJMdzJLeE1NZlB3VTNDZ0ZKSVM5anNrTGJNMnNhUiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzY6Imh0dHBzOi8vbXV0dXlhbmtlc2thYnRhc2lrLnh5ei9sb2dpbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1694141079),
('k5uXzM2itkMQnvqg1WxyTM7e2BSdlSnbbqKlH11y', NULL, '35.171.144.152', 'Mozilla/5.0 \\(Windows NT 10.0\\; Win64\\; x64\\) AppleWebKit/537.36 \\(KHTML, like Gecko\\) Chrome/100.0.4896.60 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiQm9qVmJZWjdRUFM0YjN5a3VLOFB1NEdhcnZZWEtRTldybXdtTFFHTiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzE6Imh0dHBzOi8vbXV0dXlhbmtlc2thYnRhc2lrLnh5ei4iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1694006197),
('kjUxXWZDFgAB9ZfXkeOcO0VvA7M0iaAehVDCxpKH', NULL, '66.249.68.66', 'Mozilla/5.0 (Linux; Android 6.0.1; Nexus 5X Build/MMB29P) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/116.0.5845.110 Mobile Safari/537.36 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiUGFFTzJOQmNuOXdJOWpoZ3lpdzFIdWVRSEJiY0VRUHJ2NTNjUVR2WCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDA6Imh0dHBzOi8vd3d3Lm11dHV5YW5rZXNrYWJ0YXNpay54eXovbG9naW4iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1694018249),
('KQ3pUkRFmZ9funwOX2f4IBTCydcUG55WORhPUIcB', NULL, '36.74.44.235', 'Mozilla/5.0 (Linux; Android 13; SM-A525F Build/TP1A.220624.014; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/116.0.0.0 Mobile Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiRHRwYUgzNENKcVdiTWxya1ZhVXpDd2JUS0lFcDJ3ODB1Rk1tYlpqTiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDA6Imh0dHBzOi8vd3d3Lm11dHV5YW5rZXNrYWJ0YXNpay54eXovbG9naW4iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1694127422),
('LnjPHso8yfV8tYZTbD5PFrfPzPfNY5UcQXcwoVrc', NULL, '66.249.71.171', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoidFZoN3ZoVUptNlN5WUs0WTBwQmNWc2c3MGxOWDI0ZnV0OVZ3Z251dSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDA6Imh0dHBzOi8vd3d3Lm11dHV5YW5rZXNrYWJ0YXNpay54eXovbG9naW4iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1694088493),
('MKzCBS3W7G8THzbhEaymNTpIeXfF6oL2aSmHJR5q', NULL, '135.148.195.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.82', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoia0Q5OVp3d2VRekRlUElRQnVncFFxQ3BGcm5BRndmeExkNmxzQjdDQSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzA6Imh0dHBzOi8vbXV0dXlhbmtlc2thYnRhc2lrLnh5eiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1694023521),
('NackgtQBsEPq5UQcXlLhhxYakNgHdaf0VWCed0TP', NULL, '52.89.47.209', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64)AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiOTlEWVZOTHhnblE5ZFVXejhlME9sQkxuN2xUYmZUZzJpS2R6UHZhNCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzY6Imh0dHBzOi8vbXV0dXlhbmtlc2thYnRhc2lrLnh5ei9sb2dpbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1693930746),
('nJcfzQ4GqIRLOiQjDm6JtdVD9KzYebm28xKsd9XL', NULL, '95.108.213.124', 'Mozilla/5.0 (compatible; YandexBot/3.0; +http://yandex.com/bots)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiR3B4b1E1SGp3ZllHQ2dhaDdabGFWT3NWSXM0bEFqY21CN0xYeEEwcSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzA6Imh0dHBzOi8vbXV0dXlhbmtlc2thYnRhc2lrLnh5eiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1694152316),
('OEjpa945dpk4nvMrDuK5clyBnoXXE8aRzK7yKuuz', NULL, '5.255.231.144', 'Mozilla/5.0 (compatible; YandexBot/3.0; +http://yandex.com/bots)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiQWRYMXRGWkM5OGFseVl3MXZxbXZOcEkxYk1LQkFsNW9uSk1pT2xXVSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzY6Imh0dHBzOi8vbXV0dXlhbmtlc2thYnRhc2lrLnh5ei9sb2dpbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1694170724),
('Q0xAFJPXdvwLCR9JpXKa93yCYFh6Q96yhOcvgxPK', NULL, '95.108.213.110', 'Mozilla/5.0 (compatible; YandexBot/3.0; +http://yandex.com/bots)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiaGlpMjA2QXZQWVdGSGRqcDJKVUxKRUxoc2o5Z0tMOVI5eFZwRU9JUiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzA6Imh0dHBzOi8vbXV0dXlhbmtlc2thYnRhc2lrLnh5eiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1694152411),
('q72VIpWWvnGuL3yf9tzE7PKHZUXp1xu8DvTPRl3Y', NULL, '135.148.195.13', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.82', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoienBrRHZLSkxJeGZOSUs2azBlM0U5QTd5V0ZiMXY5OHBvTkxOUU9BTyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzY6Imh0dHBzOi8vbXV0dXlhbmtlc2thYnRhc2lrLnh5ei9sb2dpbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1694023552),
('R1r3Y8DLTUVtPf704RchJ25JXzkzzokzeRWekKoz', NULL, '36.74.44.235', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/116.0.0.0 Mobile Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiZ3pYMGUzRkVNMWpCdzNGMEhybzdTd3BzTVhkNmN3S1piRUh2RGdObyI7czozOiJ1cmwiO2E6MTp7czo4OiJpbnRlbmRlZCI7czo0MjoiaHR0cHM6Ly9tdXR1eWFua2Vza2FidGFzaWsueHl6L3RwY2JjbHVzdGVyIjt9czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDI6Imh0dHBzOi8vbXV0dXlhbmtlc2thYnRhc2lrLnh5ei90cGNiY2x1c3RlciI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1694141753),
('rdl0nluA4EottBOGsg662wYRbLR3O2hnAVN9NtM1', NULL, '87.250.224.247', 'Mozilla/5.0 (compatible; YandexBot/3.0; +http://yandex.com/bots)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoicGpFWjFua1RKNnNsQUxwd3NHYWJOTGlTWnhDcXZNc21NZ2cxV2d6NSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzA6Imh0dHBzOi8vbXV0dXlhbmtlc2thYnRhc2lrLnh5eiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1694170500),
('S0tAQrRpEyTaeJacHzBTmogAhk3yE2lqxl4ldTfO', NULL, '35.171.144.152', 'Mozilla/5.0 \\(Windows NT 10.0\\; Win64\\; x64\\) AppleWebKit/537.36 \\(KHTML, like Gecko\\) Chrome/100.0.4896.60 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiMjRIODZtekVoUVgydzcyMlc0Rm9iWUhQRlRraTNxdzVNUjZTelV3RSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzc6Imh0dHBzOi8vbXV0dXlhbmtlc2thYnRhc2lrLnh5ei4vbG9naW4iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1694006197),
('szboevS9mRccohrgJdYAQ1JHYEn5ZIPVAOZjcDLu', NULL, '180.245.232.129', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoibDRWcnp1VFpMcHlBbkE5T3FicHZ6eUttYTVaVDAwVXV5OTA5dWFDcCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzY6Imh0dHBzOi8vbXV0dXlhbmtlc2thYnRhc2lrLnh5ei9sb2dpbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1693983992),
('TyudSAG3QIMj1VhsbeJBfu9MLHlYj8GFXklmdtC4', NULL, '107.174.115.13', 'Mozilla/5.0 (compatible; version/1.0; Windows NT 5.1', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiVXpjbEVWYnVOWnJKcnY4SE1wTEtQbGhSQ09NQTJPS0tFcUhaWTFIbiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzA6Imh0dHBzOi8vbXV0dXlhbmtlc2thYnRhc2lrLnh5eiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1694099435),
('VJH8golQH0wkFrvWg52E3dITbkU2lUazNSnSCPlr', NULL, '54.88.179.33', 'Mozilla/5.0 \\(Windows NT 10.0\\; Win64\\; x64\\) AppleWebKit/537.36 \\(KHTML, like Gecko\\) Chrome/100.0.4896.60 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiMGhCOUdLYlA2c0FLVVIxdVFxc2xSZVBtbzZDdm43cVRQS0FKZnVQdCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzU6Imh0dHBzOi8vd3d3Lm11dHV5YW5rZXNrYWJ0YXNpay54eXouIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1694006199),
('wjzc6cVVlTV10CvWTsBXV8LYtMnmOSM3i9fW8izF', NULL, '93.159.230.90', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiM2RwZ0ZKYXRqQVFoRnRlbE8ydlBHbWpiS2J3MTNYRTR2SUVod0RFSiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzY6Imh0dHBzOi8vbXV0dXlhbmtlc2thYnRhc2lrLnh5ei9sb2dpbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1694052419),
('WTcQH28Ol2qyoRcBKpPWiNeTSOxYFShpcOvvQ9xE', NULL, '35.171.144.152', 'Mozilla/5.0 \\(Windows NT 10.0\\; Win64\\; x64\\) AppleWebKit/537.36 \\(KHTML, like Gecko\\) Chrome/100.0.4896.60 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiWmdqeWNQZFQ5WTdUcXNlVVRTY1gzY1RWMk9OSU5xN0tBUFFMRnJ4dSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzc6Imh0dHBzOi8vbXV0dXlhbmtlc2thYnRhc2lrLnh5ei4vbG9naW4iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1694006201),
('XCO7mMxjgyzfN4XzD71IlWqxjcapKPx9tFHbMqbu', NULL, '36.74.44.235', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/116.0.0.0 Mobile Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiemJjQmNjdmRhQkNtUWRpdlN6bGZzc3Q0RHM2UVMwMXpxTnlRbEJ2YyI7czozOiJ1cmwiO2E6MTp7czo4OiJpbnRlbmRlZCI7czo0MjoiaHR0cHM6Ly9tdXR1eWFua2Vza2FidGFzaWsueHl6L3RwY2JjbHVzdGVyIjt9czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDI6Imh0dHBzOi8vbXV0dXlhbmtlc2thYnRhc2lrLnh5ei90cGNiY2x1c3RlciI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1694154214),
('xK3BPdzvRokA0ziG7DgyPNDn5ugIHeN3KFwTdyvQ', NULL, '18.237.121.22', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64)AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiOFNMVTg0cmhYUU1sS2IxbjFEUGFzY1RLYVUwNzRSbENFTW1lZElqNCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzY6Imh0dHBzOi8vbXV0dXlhbmtlc2thYnRhc2lrLnh5ei9sb2dpbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1694112212),
('z0hT6x1Jz6Tsbyau9lgSIwSQ2iT5MM9zTgkGWrwL', NULL, '40.83.6.27', 'Mozlila/5.0 (Linux; Android 7.0; SM-G892A Bulid/NRD90M; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/60.0.3112.107 Moblie Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiY1VibG45QUozS2Y1dHR3TUVTQnRPcG9VVjlPSUlHdnJXT09LSTZoMSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzA6Imh0dHBzOi8vbXV0dXlhbmtlc2thYnRhc2lrLnh5eiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1694112194),
('zdo78m6c5FeYGn0vOdkawyRVXxm7F4CyujDZuN5S', NULL, '54.88.179.33', 'Mozilla/5.0 \\(Windows NT 10.0\\; Win64\\; x64\\) AppleWebKit/537.36 \\(KHTML, like Gecko\\) Chrome/100.0.4896.60 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiWkdBM2FtOVJIQzJuRmM3UGVSR1FCVWNMenFxMmxGcHhQcE1DS1pFTSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDE6Imh0dHBzOi8vd3d3Lm11dHV5YW5rZXNrYWJ0YXNpay54eXouL2xvZ2luIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1694006199),
('ZQOVXgRU1J3NNLVupO5PyP7ZViinAV3geZBTuMMe', NULL, '87.250.224.19', 'Mozilla/5.0 (compatible; YandexBot/3.0; +http://yandex.com/bots)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoia3lLRHNGd24wM0puamlZVVdjZVBVUXFLdndrSEVRMFR1bzB6cEptYyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzY6Imh0dHBzOi8vbXV0dXlhbmtlc2thYnRhc2lrLnh5ei9sb2dpbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1694140953);

-- --------------------------------------------------------

--
-- Struktur dari tabel `setting`
--

CREATE TABLE `setting` (
  `id_setting` int(10) UNSIGNED NOT NULL,
  `nama_aplikasi` varchar(255) NOT NULL,
  `alamat` text DEFAULT NULL,
  `telepon` varchar(255) NOT NULL,
  `path_logo` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `setting`
--

INSERT INTO `setting` (`id_setting`, `nama_aplikasi`, `alamat`, `telepon`, `path_logo`, `created_at`, `updated_at`) VALUES
(1, 'SIMAKKATA', 'Komplek Perkantoran Bojongkoneng, Singaparna', '081313145675', '/img/logo-20230406001040.gif', NULL, '2023-04-05 17:10:40');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tpcb`
--

CREATE TABLE `tpcb` (
  `id_tpcb` int(10) UNSIGNED NOT NULL,
  `id_kategori` int(10) UNSIGNED NOT NULL,
  `nama_tpcb` varchar(255) NOT NULL,
  `nip` varchar(255) NOT NULL,
  `jabatan_akre` varchar(255) NOT NULL,
  `cluster` varchar(255) NOT NULL,
  `pangkat` varchar(255) NOT NULL,
  `telepon` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `tpcb`
--

INSERT INTO `tpcb` (`id_tpcb`, `id_kategori`, `nama_tpcb`, `nip`, `jabatan_akre`, `cluster`, `pangkat`, `telepon`, `email`, `created_at`, `updated_at`) VALUES
(10, 2, 'dr. AA Ahmad Nurdin, M.M', '19710222 200212 1 003', 'Tim Pembina Cluster Binaan', 'Cluster 1', 'Pembina Tk I/IVb', '-', 'dinkes@tasikmalayakab.go.id', '2023-08-16 04:21:03', '2023-08-16 04:21:03'),
(11, 2, 'Elvin Yuliani, S.Kep, Ners, M.Kep', '19760729 200012 2 003', 'Tim Pembina Cluster Binaan', 'Cluster 1', 'Penata Tk I/IIId', '-', 'dinkes@tasikmalayakab.go.id', '2023-08-16 04:21:07', '2023-08-16 04:21:07'),
(12, 2, 'Rina Parina, A.MK, S.KM.M.Epid., M.H.Kes', '19751105 199803 2 002', 'Tim Pembina Cluster Binaan', 'Cluster 1', 'Penata Tk I/IIId', '-', 'dinkes@tasikmalayakab.go.id', '2023-08-16 04:22:36', '2023-08-16 04:22:36'),
(13, 2, 'Maulana Iskandar, A.Md.Kep', '19800317 201410 1 003', 'Tim Pembina Cluster Binaan', 'Cluster 1', 'Penata Tk I/IIId', '-', 'dinkes@tasikmalayakab.go.id', '2023-08-16 04:21:47', '2023-08-16 04:21:47'),
(14, 2, 'Wahyu Taufik Pirdaus., S.KM', '19790512 200501 1 008', 'Tim Pembina Cluster Binaan', 'Cluster 1', 'Pengatur Tk I/IId', '-', 'dinkes@tasikmalayakab.go.id', '2023-08-16 04:22:49', '2023-08-16 04:22:49'),
(15, 2, 'Wendi Dinapis, S.ST', '19890202 202012 1 011', 'Tim Pembina Cluster Binaan', 'Cluster 1', 'Penata Muda/IIIa', '-', 'dinkes@tasikmalayakab.go.id', '2023-08-16 04:22:53', '2023-08-16 04:22:53'),
(16, 2, 'N Elih Harlina, AM.Keb, S.KM, M.H.Kes', '19651228 198603 2 008', 'Tim Pembina Cluster Binaan', 'Cluster 1', 'Pembina/IVa', '-', 'dinkes@tasikmalayakab.go.id', '2023-08-16 04:22:06', '2023-08-16 04:22:06'),
(17, 2, 'Teni Kristiani, SIP', '19720511 199402 2 001', 'Tim Pembina Cluster Binaan', 'Cluster 1', 'Penata Tk I/IIId', '-', 'dinkes@tasikmalayakab.go.id', '2023-08-16 04:22:43', '2023-08-16 04:22:43'),
(18, 2, 'Iyen Nuryanah, SST, M.Si', '19700206 199303 2 002', 'Tim Pembina Cluster Binaan', 'Cluster 2', 'Pembina/IVa', '-', 'dinkes@tasikmalayakab.go.id', '2023-08-16 04:21:50', '2023-08-16 04:21:50'),
(19, 2, 'Priliana Susanty, S.T, M.Si', '19810426 200501 2 012', 'Tim Pembina Cluster Binaan', 'Cluster 2', 'Penata Tk I/IIId', '-', 'dinkes@tasikmalayakab.go.id', '2023-08-16 04:22:29', '2023-08-16 04:22:29'),
(20, 2, 'Leni Nuraeni HR, S.Kep', '19760720 199703 2 002', 'Tim Pembina Cluster Binaan', 'Cluster 2', 'Penata Tk I/IIId', '-', 'dinkes@tasikmalayakab.go.id', '2023-08-16 04:21:54', '2023-08-16 04:21:54'),
(21, 2, 'Otong Kusmana, S.KM, M.P.H.', '19760406 200012 1 003', 'Tim Pembina Cluster Binaan', 'Cluster 2', 'Pembina/IVa', '-', 'dinkes@tasikmalayakab.go.id', '2023-08-16 04:22:09', '2023-08-16 04:22:09'),
(22, 2, 'Nining Ratningsih., Am.Keb', '19751014 200012 2 002', 'Tim Pembina Cluster Binaan', 'Cluster 2', 'Penata Muda Tk I/IIIb', '-', 'dinkes@tasikmalayakab.go.id', '2023-08-16 04:22:23', '2023-08-16 04:22:23'),
(23, 2, 'Wila Susiani Dewi, SKM', '19751026 200701 2 004', 'Tim Pembina Cluster Binaan', 'Cluster 2', 'Penata Tk I/IIId', '-', 'dinkes@tasikmalayakab.go.id', '2023-08-16 04:22:56', '2023-08-16 04:22:56'),
(24, 2, 'Rahmaasih S.Abdulgani, S.Kep.Ners', '19710421 199403 2 004', 'Tim Pembina Cluster Binaan', 'Cluster 2', 'Penata Tk I/IIId', '-', 'dinkes@tasikmalayakab.go.id', '2023-08-16 04:21:31', '2023-08-16 04:21:31'),
(25, 2, 'Asep Abdurahman', '19760611 200801 1 004', 'Tim Pembina Cluster Binaan', 'Cluster 2', 'Pengatur Tk I/IId', '-', 'dinkes@tasikmalayakab.go.id', '2023-08-16 04:20:42', '2023-08-16 04:20:42'),
(26, 2, 'H. Rd. Mauludin Muchamad, SKM, M.KM', '19720428 199703 1 002', 'Tim Pembina Cluster Binaan', 'Cluster 3', 'Pembina/IVa', '-', 'dinkes@tasikmalayakab.go.id', '2023-08-16 04:21:23', '2023-08-16 04:21:23'),
(27, 2, 'Hj. Iceu Herlina, Am.Keb.,S.KM', '19770727 201001 2 005', 'Tim Pembina Cluster Binaan', 'Cluster 3', 'Penata/IIIc', '-', 'dinkes@tasikmalayakab.go.id', '2023-08-16 04:21:44', '2023-08-16 04:21:44'),
(28, 2, 'Tiaraima Sisinta, S.KM, M.K.M.', '19820705 200902 2 010', 'Tim Pembina Cluster Binaan', 'Cluster 3', 'Penata/IIIc', '-', 'dinkes@tasikmalayakab.go.id', '2023-08-16 04:22:46', '2023-08-16 04:22:46'),
(29, 2, 'Ratih Indriane Septiani, S.Kep,Ners.', '19780909 200902 2 005', 'Tim Pembina Cluster Binaan', 'Cluster 3', 'Penata Tk I/IIId', '-', 'dinkes@tasikmalayakab.go.id', '2023-08-16 04:22:39', '2023-08-16 04:22:39'),
(30, 2, 'dr. Hj Ratih Tedjasukmana', '19710524 200212 2 005', 'Tim Pembina Cluster Binaan', 'Cluster 3', 'Pembina/IVa', '-', 'dinkes@tasikmalayakab.go.id', '2023-08-16 04:21:13', '2023-08-16 04:21:13'),
(31, 2, 'Dede Subekti, SPd, M.Kes', '19730101 199403 1 009', 'Tim Pembina Cluster Binaan', 'Cluster 3', 'Pembina/IVa', '-', 'dinkes@tasikmalayakab.go.id', '2023-08-16 04:20:55', '2023-08-16 04:20:55'),
(32, 2, 'Yusuf Rifai Romli, S.KM, M.Epid.', '19700113 199501 1 001', 'Tim Pembina Cluster Binaan', 'Cluster 3', 'Pembina/IVa', '-', 'dinkes@tasikmalayakab.go.id', '2023-08-16 04:23:05', '2023-08-16 04:23:05'),
(33, 2, 'Heni Handayani, A.Md, S.KM, M.K.M', '19850325 200801 2 003', 'Tim Pembina Cluster Binaan', 'Cluster 3', 'Penata/IIIc', '-', 'dinkes@tasikmalayakab.go.id', '2023-08-16 04:21:20', '2023-08-16 04:21:20'),
(34, 2, 'H. Epi Edwar Lutpi, S.KM, M.K.M.', '19700816 198912 1 001', 'Tim Pembina Cluster Binaan', 'Cluster 4', 'Pembina/IVa', '-', 'dinkes@tasikmalayakab.go.id', '2023-08-16 04:21:17', '2023-08-16 04:21:17'),
(35, 2, 'Elis Supartini, S.IP, M.IP', '19680122 198903 2 005', 'Tim Pembina Cluster Binaan', 'Cluster 4', 'Pembina/IVa', '-', 'dinkes@tasikmalayakab.go.id', '2023-08-16 04:21:10', '2023-08-16 04:21:10'),
(36, 2, 'Nurul Fadhilah., S.ST,MM', '19890718 201704 2 001', 'Tim Pembina Cluster Binaan', 'Cluster 4', 'Penata Muda Tk I/IIIb', '-', 'dinkes@tasikmalayakab.go.id', '2023-08-16 04:22:26', '2023-08-16 04:22:26'),
(37, 2, 'Yeti Susanti, S.P, M.Si.', '19830423 200604 2 009', 'Tim Pembina Cluster Binaan', 'Cluster 4', 'Pembina/IVa', '-', 'dinkes@tasikmalayakab.go.id', '2023-08-16 04:23:02', '2023-08-16 04:23:02'),
(38, 2, 'Asep Yayat Nurhidayat, S.Sos, M.Si', '19760812 201410 1 001', 'Tim Pembina Cluster Binaan', 'Cluster 4', 'Penata Muda Tk I/IIIb', '-', 'dinkes@tasikmalayakab.go.id', '2023-08-16 04:20:45', '2023-08-16 04:20:45'),
(39, 2, 'Mira Miratul Jannah, S.Si, Apt, M.Farm', '19821221 200902 2 004', 'Tim Pembina Cluster Binaan', 'Cluster 4', 'Pembina/IVa', '-', 'dinkes@tasikmalayakab.go.id', '2023-08-16 04:22:01', '2023-08-16 04:22:01'),
(40, 2, 'Dedeh Hartati, AM.Keb, S.KM.', '19651231 198603 2 090', 'Tim Pembina Cluster Binaan', 'Cluster 4', 'Penata Tk I/IIId', '-', 'dinkes@tasikmalayakab.go.id', '2023-08-16 04:20:59', '2023-08-16 04:20:59'),
(41, 2, 'Basuki Kartono, SKM, MKM', '19660220 198903 1 007', 'Tim Pembina Cluster Binaan', 'Cluster 4', 'Pembina/IVa', '-', 'dinkes@tasikmalayakab.go.id', '2023-08-16 04:20:52', '2023-08-16 04:20:52'),
(42, 2, 'Rahayu Nurhaida M. S.SiT, MM.Kes, M.Si', '198301032006042009', 'Tim Pembina Cluster Binaan', 'Cluster 5', 'Penata Tk I/IIId', '-', 'dinkes@tasikmalayakab.go.id', '2023-08-16 04:22:32', '2023-08-16 04:22:32'),
(43, 2, 'Neneng Teni Kristinawati, S.Kep Ners.,M.M', '19820411 200902 2 004', 'Tim Pembina Cluster Binaan', 'Cluster 5', 'Pembina/IVa', '-', 'dinkes@tasikmalayakab.go.id', '2023-08-16 04:22:16', '2023-08-16 04:22:16'),
(44, 2, 'Hendah Mariawati, AM.G.', '19700225 199403 2 005', 'Tim Pembina Cluster Binaan', 'Cluster 5', 'Penata Tk I/IIId', '-', 'dinkes@tasikmalayakab.go.id', '2023-08-16 04:21:26', '2023-08-16 04:21:26'),
(45, 2, 'Candrawati Puspita Dewi, A.Md.Kes, S.IP.', '19750613 199503 2 001', 'Tim Pembina Cluster Binaan', 'Cluster 5', 'Penata Tk I/IIId', '-', 'dinkes@tasikmalayakab.go.id', '2023-08-16 04:20:49', '2023-08-16 04:20:49'),
(46, 2, 'Ai Sukmawati, S.KM', '19800809 201410 2 002', 'Tim Pembina Cluster Binaan', 'Cluster 5', 'Penata/IIIc', '-', 'dinkes@tasikmalayakab.go.id', '2023-08-16 04:20:36', '2023-08-16 04:20:36'),
(47, 2, 'Yati Nurhayati, S.KM', '19830115 201101 2 003', 'Tim Pembina Cluster Binaan', 'Cluster 5', 'Penata Tk I/IIId', '-', 'dinkes@tasikmalayakab.go.id', '2023-08-16 04:22:59', '2023-08-16 04:22:59'),
(48, 2, 'Idris Maulana, S.Kep.Ners', '19750929 199703 1 001', 'Tim Pembina Cluster Binaan', 'Cluster 5', 'Pengatur Tk I/IId', '-', 'dinkes@tasikmalayakab.go.id', '2023-08-16 04:21:58', '2023-08-16 04:21:58'),
(49, 2, 'Noneng Sariningsih, S.KM., M.K.M', '19750909 200003 2 002', 'Tim Pembina Cluster Binaan', 'Cluster 5', 'Penata/IIIc', '-', 'dinkes@tasikmalayakab.go.id', '2023-08-16 04:22:20', '2023-08-16 04:22:20');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `nip` varchar(255) NOT NULL,
  `akun` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `foto` varchar(255) DEFAULT NULL,
  `level` tinyint(4) NOT NULL DEFAULT 0,
  `two_factor_secret` text DEFAULT NULL,
  `two_factor_recovery_codes` text DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `current_team_id` bigint(20) UNSIGNED DEFAULT NULL,
  `profile_photo_path` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `nip`, `akun`, `email`, `email_verified_at`, `password`, `foto`, `level`, `two_factor_secret`, `two_factor_recovery_codes`, `remember_token`, `current_team_id`, `profile_photo_path`, `created_at`, `updated_at`) VALUES
(1, 'Administrator', '123', '', 'admin@gmail.com', NULL, '$2y$10$SFUAv1qC/M6idHH04kZUiegzHG3lJWhVNC6vTGu1h/dyysz0ONZLO', '/img/logo-20230402181740.png', 1, NULL, NULL, NULL, NULL, NULL, '2023-03-01 03:46:41', '2023-04-02 11:17:40'),
(2, 'User', '1234', '', 'user@gmail.com', NULL, '$2y$10$SFUAv1qC/M6idHH04kZUiegzHG3lJWhVNC6vTGu1h/dyysz0ONZLO', '/img/logo-20230402181740.png', 2, NULL, NULL, NULL, NULL, NULL, '2023-03-01 03:46:41', '2023-04-02 11:17:40'),
(3, 'Karisman Gustiadi, ST', '123456', '', 'karismanomen@gmail.com', NULL, '$2a$12$ibuK16HckwblFFUmF5U03.DW3uyIC1Cica/JLsilsR5PlnKW6k.EG', '/img/user.png', 2, NULL, NULL, NULL, NULL, NULL, '2023-03-01 03:46:41', '2023-04-02 11:17:40'),
(4, 'Dedeh Hartati, Am.Keb, SKM', '196512311986032090', '', 'dedehhartati65@gmail.com', NULL, '$2a$12$ibuK16HckwblFFUmF5U03.DW3uyIC1Cica/JLsilsR5PlnKW6k.EG', '/img/user.png', 2, NULL, NULL, NULL, NULL, NULL, '2023-03-01 03:46:41', '2023-04-02 11:17:40'),
(5, 'Nurul Fadhilah, S.ST, M.M', '198907182017042001', 'Pendamping', 'ratunurul24@gmail.com', NULL, '$2a$12$ibuK16HckwblFFUmF5U03.DW3uyIC1Cica/JLsilsR5PlnKW6k.EG', '/img/user.png', 2, NULL, NULL, NULL, NULL, NULL, '2023-03-01 03:46:41', '2023-06-22 10:04:46'),
(6, 'drg Andri Bastian, S.IP', '197907022009021004', 'Pendamping', 'drg.abassambas@gmail.com', NULL, '$2a$12$ibuK16HckwblFFUmF5U03.DW3uyIC1Cica/JLsilsR5PlnKW6k.EG', '/img/user.png', 2, NULL, NULL, NULL, NULL, NULL, '2023-03-01 03:46:41', '2023-06-22 10:04:43'),
(7, 'Leni Nuraeni HR, S.Kep', '197607201997032002', 'Pendamping', 'nleni2473@gmail.com', NULL, '$2a$12$ibuK16HckwblFFUmF5U03.DW3uyIC1Cica/JLsilsR5PlnKW6k.EG', '/img/user.png', 2, NULL, NULL, NULL, NULL, NULL, '2023-03-01 03:46:41', '2023-06-22 10:04:39'),
(8, 'Mia Shofia, SKM, SST, MKM', '197605302011012002', 'Pendamping', 'miaherawan@gmail.com', NULL, '$2a$12$ibuK16HckwblFFUmF5U03.DW3uyIC1Cica/JLsilsR5PlnKW6k.EG', '/img/user.png', 2, NULL, NULL, NULL, NULL, NULL, '2023-03-01 03:46:41', '2023-06-22 10:04:35'),
(9, 'dr Hj Analisa', '197410082002122002', 'Pendamping', 'analisaratnasari@gmail.com', NULL, '$2a$12$ibuK16HckwblFFUmF5U03.DW3uyIC1Cica/JLsilsR5PlnKW6k.EG', '/img/user.png', 2, NULL, NULL, NULL, NULL, NULL, '2023-03-01 03:46:41', '2023-06-22 10:04:32'),
(10, 'Ayi Luqmanul Hakim, S.Kep, Ners', '198301072011011003', 'Pendamping', 'ayiluqmanulhakim@gmail.com', NULL, '$2a$12$ibuK16HckwblFFUmF5U03.DW3uyIC1Cica/JLsilsR5PlnKW6k.EG', '/img/user.png', 2, NULL, NULL, NULL, NULL, NULL, '2023-03-01 03:46:41', '2023-06-22 10:04:10'),
(11, 'Otong Kusmana, SKM, MPH', '197604062000121003', 'Pendamping', 'otongkusman@gmail.com', NULL, '$2a$12$ibuK16HckwblFFUmF5U03.DW3uyIC1Cica/JLsilsR5PlnKW6k.EG', '/img/user.png', 2, NULL, NULL, NULL, NULL, NULL, '2023-03-01 03:46:41', '2023-06-22 10:04:05'),
(12, 'Wilianto, Amd.KG, SKM, MAP', '197909152010011009', 'Pendamping', 'willydinkeskab@gmail.com', NULL, '$2a$12$ibuK16HckwblFFUmF5U03.DW3uyIC1Cica/JLsilsR5PlnKW6k.EG', '/img/user.png', 2, NULL, NULL, NULL, NULL, NULL, '2023-03-01 03:46:41', '2023-06-22 10:04:01'),
(13, 'Esther Rizal, SKM', '197505222005012010', 'Pendamping', 'bunda.rara08@gmail.com', NULL, '$2a$12$ibuK16HckwblFFUmF5U03.DW3uyIC1Cica/JLsilsR5PlnKW6k.EG', '/img/user.png', 2, NULL, NULL, NULL, NULL, NULL, '2023-03-01 03:46:41', '2023-06-22 10:03:54'),
(14, 'dr Yunike Rosdiana Herman, MKM', '197006292002122002', 'Pendamping', 'yunikerh@gmail.com', NULL, '$2a$12$ibuK16HckwblFFUmF5U03.DW3uyIC1Cica/JLsilsR5PlnKW6k.EG', '/img/user.png', 2, NULL, NULL, NULL, NULL, NULL, '2023-03-01 03:46:41', '2023-06-22 10:03:57'),
(15, 'Saefullah Darmawan S., S.ST', '198212022009021001', 'Pendamping', 'saefullah.darmawan@gmail.com', NULL, '$2y$10$tD1G5u6C5N3rUo/1UQww1euPqOLrEtyrHFMgZzsDR/btcRHokUrau', '/img/user.png', 2, NULL, NULL, NULL, NULL, NULL, '2023-04-06 22:25:33', '2023-06-22 10:03:50'),
(16, 'Riksi Tazali. Skep. Ners', '198303082006041008', 'Pendamping', 'riksitazali@gmail.com', NULL, '$2y$10$COsgYq9rw7f0cKO7nbJWlu5jfiFd65gqtFX35OWKpvDFwfBoF4YYK', '/img/user.png', 2, NULL, NULL, NULL, NULL, NULL, '2023-04-06 23:58:09', '2023-06-22 10:03:45'),
(17, 'Asep Kristiandi, A.Md.Kep', '198809112015031002', 'Pendamping', 'asepkristiandi13@gmail.com', NULL, '$2y$10$aLLWsrrxlQrCxHJaytXfIe6V9wAeGXZIMg4gSE5QunKJu0hFAJAt6', '/img/user.png', 2, NULL, NULL, NULL, NULL, NULL, '2023-06-22 10:08:14', '2023-06-22 10:08:14'),
(18, 'drg Rieni Andriani', '197601192005012005', 'Pendamping', 'rieniandryani@gmail.com', NULL, '$2y$10$SdiNz8ZvIdUdXhCUszJt7e7fpQh9LTHMwEzrN8xAL0/VXCYQzripu', '/img/user.png', 2, NULL, NULL, NULL, NULL, NULL, '2023-06-22 10:08:52', '2023-06-22 10:08:52'),
(19, 'dr Dewi Ligiarti', '198105292010012004', 'Pendamping', 'drdewil@yahoo.com', NULL, '$2y$10$1SFUn6O1LWiUR/KVSbayzu/VozDuJjLyoz5bxe094EsZLb2D7qDXu', '/img/user.png', 2, NULL, NULL, NULL, NULL, NULL, '2023-06-22 10:09:16', '2023-06-22 10:09:16'),
(20, 'Mamat Suhaery, S.Kep, Ners', '196905291989031006', 'Pendamping', 'suhaerymamat@gmail.com', NULL, '$2y$10$f5EpSS7ZZ4cqNEItNBr4/u0rgQWlWx1WuoQcHIZPOg6TOzhXj7m4S', '/img/user.png', 2, NULL, NULL, NULL, NULL, NULL, '2023-06-22 10:09:51', '2023-06-22 10:09:51'),
(21, 'Rd Siti Aminah S.tr. Keb', '196809101988032006', 'Pendamping', 'sitiasmutie@gmail.com', NULL, '$2y$10$yueO5IelWoEQ6oZYTS5M5OfAEgfZRtUkDYEEOhsMWi5J.PYT.hfV2', '/img/user.png', 2, NULL, NULL, NULL, NULL, NULL, '2023-06-22 10:10:14', '2023-06-22 10:10:14'),
(22, 'drg Srie Teresyawati', '197305262005012007', 'Pendamping', 'drg_srie_teresyawati@yahoo.com', NULL, '$2y$10$rYkohwDnVLYTOCiqU.wA.etTRejDjuJweKOlVirqtbVhos2DYPsFq', '/img/user.png', 2, NULL, NULL, NULL, NULL, NULL, '2023-06-22 10:10:32', '2023-06-22 10:10:32'),
(23, 'drg Widi Meipina', '197805032005012007', 'Pendamping', 'widimeipinadrg@gmail.com', NULL, '$2y$10$xlLYtSCYrgvRT4sGlfPT3.Ekq1sM5xTLEop05f3wN6q19yguVXrea', '/img/user.png', 2, NULL, NULL, NULL, NULL, NULL, '2023-06-22 10:10:58', '2023-06-22 10:10:58'),
(24, 'Candrawati PD, S.IP', '197506131995032001', 'Pendamping', 'candrawati251@gmail.com', NULL, '$2y$10$KQQZA2Id8EC5a2szjeZE5uI6N3oUurZIj7T1IPxq3iEZMocO8DzN2', '/img/user.png', 2, NULL, NULL, NULL, NULL, NULL, '2023-06-22 10:11:17', '2023-06-22 10:11:17');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id_kategori`),
  ADD UNIQUE KEY `kategori_nama_kategori_unique` (`nama_kategori`);

--
-- Indeks untuk tabel `klinik`
--
ALTER TABLE `klinik`
  ADD PRIMARY KEY (`id_klinik`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indeks untuk tabel `pendamping`
--
ALTER TABLE `pendamping`
  ADD PRIMARY KEY (`id_pendamping`),
  ADD UNIQUE KEY `produk_nama_produk_unique` (`nama_pendamping`),
  ADD KEY `produk_id_kategori_foreign` (`id_kategori`);

--
-- Indeks untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indeks untuk tabel `pjmutuklinik`
--
ALTER TABLE `pjmutuklinik`
  ADD PRIMARY KEY (`id_pjmutuklinik`);

--
-- Indeks untuk tabel `pjmutupkm`
--
ALTER TABLE `pjmutupkm`
  ADD PRIMARY KEY (`id_pjmutupkm`),
  ADD UNIQUE KEY `member_kode_member_unique` (`pjmutupkm`);

--
-- Indeks untuk tabel `pkm`
--
ALTER TABLE `pkm`
  ADD PRIMARY KEY (`id_pkm`);

--
-- Indeks untuk tabel `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indeks untuk tabel `setting`
--
ALTER TABLE `setting`
  ADD PRIMARY KEY (`id_setting`);

--
-- Indeks untuk tabel `tpcb`
--
ALTER TABLE `tpcb`
  ADD PRIMARY KEY (`id_tpcb`),
  ADD UNIQUE KEY `tpcb_nama_tpcb_unique` (`nama_tpcb`),
  ADD KEY `tpcb_id_kategori_foreign` (`id_kategori`);

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
-- AUTO_INCREMENT untuk tabel `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id_kategori` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `klinik`
--
ALTER TABLE `klinik`
  MODIFY `id_klinik` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT untuk tabel `pendamping`
--
ALTER TABLE `pendamping`
  MODIFY `id_pendamping` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `pjmutuklinik`
--
ALTER TABLE `pjmutuklinik`
  MODIFY `id_pjmutuklinik` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `pjmutupkm`
--
ALTER TABLE `pjmutupkm`
  MODIFY `id_pjmutupkm` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT untuk tabel `pkm`
--
ALTER TABLE `pkm`
  MODIFY `id_pkm` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT untuk tabel `setting`
--
ALTER TABLE `setting`
  MODIFY `id_setting` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `tpcb`
--
ALTER TABLE `tpcb`
  MODIFY `id_tpcb` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `pendamping`
--
ALTER TABLE `pendamping`
  ADD CONSTRAINT `produk_id_kategori_foreign` FOREIGN KEY (`id_kategori`) REFERENCES `kategori` (`id_kategori`);

--
-- Ketidakleluasaan untuk tabel `tpcb`
--
ALTER TABLE `tpcb`
  ADD CONSTRAINT `tpcb_id_kategori_foreign` FOREIGN KEY (`id_kategori`) REFERENCES `kategori` (`id_kategori`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
