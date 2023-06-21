-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 21 Jun 2023 pada 19.02
-- Versi server: 10.4.28-MariaDB
-- Versi PHP: 8.2.4

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
  `nilai_akre` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tahun_akre` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `noizin` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

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
  `nilai_akre` varchar(255) NOT NULL,
  `tahun_akre` varchar(255) NOT NULL,
  `noizin` varchar(255) NOT NULL,
  `kawasan` varchar(255) NOT NULL,
  `inap` varchar(255) NOT NULL,
  `poned` varchar(255) NOT NULL,
  `blud` varchar(255) NOT NULL,
  `wilayah` varchar(255) NOT NULL,
  `latitude` varchar(255) NOT NULL,
  `longitude` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `pkm`
--

INSERT INTO `pkm` (`id_pkm`, `nama`, `alamat`, `kode_fasyankes`, `nilai_akre`, `tahun_akre`, `noizin`, `kawasan`, `inap`, `poned`, `blud`, `wilayah`, `latitude`, `longitude`, `created_at`, `updated_at`) VALUES
(1, 'Puskesmas Bantarkalong', 'Jl. Raya Pamijahan No 40, Desa/Kelurahan Simpang, Kec. Bantarkalong, Kab. Tasikmalaya, Provinsi Jawa Barat', '1030679', 'Madya', '2018', '123', 'Dasar', 'Rawat Inap', 'PONED', 'BLUD', 'Bantarkalong', '123', '123213123213', '2023-04-02 22:47:43', '2023-06-21 12:23:28'),
(2, 'Puskesmas Bojongasih', 'Kp Madur, Desa/Kelurahan Bojongasih, Kec. Bojongasih, Kab. Tasikmalaya, Provinsi Jawa Barat', '1030680', 'Utama', '2019', '', '', '', '', '', '', '', '', '2023-04-02 22:51:48', '2023-06-15 04:29:27'),
(3, 'Puskesmas Bojonggambir', 'Kp. Panglayungan, Desa/Kelurahan Bojonggambir, Kec. Bojonggambir, Kab. Tasikmalaya, Provinsi Jawa Barat', '1030682', 'Madya', '', '', '', '', '', '', '', '', '', '2023-04-02 22:52:57', '2023-06-14 03:43:53'),
(4, 'Puskesmas Ciawi', 'Jalan Puskesmas Nomor 15 Desa Pakemitan Kecamatan Ciawi, Desa/Kelurahan Pakemitan, Kec. Ciawi, Kab. Tasikmalaya, Provinsi Jawa Barat', '1030708', 'Dasar', '', '', '', '', '', '', '', '', '', '2023-04-02 23:48:58', '2023-06-14 03:44:22'),
(5, 'Puskesmas Cibalong', 'Jl Karangnunggal No.204, Desa/Kelurahan Cibalong, Kec. Cibalong, Kab. Tasikmalaya, Provinsi Jawa Barat', '1030677', 'Madya', '', '', '', '', '', '', '', '', '', '2023-04-02 23:49:31', '2023-06-14 03:44:49'),
(6, 'Puskesmas Cigalontang', 'Jalan Perkantoran No. 38, Desa/Kelurahan Jayapura, Kec. Cigalontang, Kab. Tasikmalaya, Provinsi Jawa Barat', '1030698', 'Utama', '', '', '', '', '', '', '', '', '', '2023-04-02 23:50:59', '2023-06-14 03:45:09'),
(7, 'Puskesmas Cikalong', 'Kp. Cilutung, Desa/Kelurahan Cikalong, Kec. Cikalong, Kab. Tasikmalaya, Provinsi Jawa Barat', '1030674', 'Madya', '', '', '', '', '', '', '', '', '', '2023-04-02 23:52:44', '2023-06-14 03:45:21'),
(8, 'Puskesmas Cikatomas', 'Jl. Rumah Sakit, Desa/Kelurahan Pakemitan, Kec. Cikatomas, Kab. Tasikmalaya, Provinsi Jawa Barat', '1030676', 'Utama', '', '', '', '', '', '', '', '', '', '2023-04-02 23:53:30', '2023-06-14 03:45:38'),
(9, 'Puskesmas Cineam', 'Jl Yogaswara No. 12 Cineam, Desa/Kelurahan Cineam, Kec. Cineam, Kab. Tasikmalaya, Provinsi Jawa Barat', '1030691', 'Madya', '', '', '', '', '', '', '', '', '', '2023-04-02 23:55:19', '2023-06-14 03:46:02'),
(10, 'Puskesmas Cipatujah', 'Jl Raya Cipatujah No 123 RT 016 RW 004, Desa/Kelurahan Cipatujah, Kec. Cipatujah, Kab. Tasikmalaya, Provinsi Jawa Barat', '1030672', 'Madya', '', '', '', '', '', '', '', '', '', '2023-04-02 23:56:11', '2023-06-14 03:46:22'),
(11, 'Puskesmas Cisaruni', 'Jl Batu beulah, no.90,, Desa/Kelurahan Cisaruni, Kec. Padakembang, Kab. Tasikmalaya, Provinsi Jawa Barat', '1030702', 'Utama', '', '', '', '', '', '', '', '', '', '2023-04-02 23:59:00', '2023-06-14 03:46:33'),
(12, 'Puskesmas Cisayong', 'Jln.Cisayong No.124, Desa/Kelurahan Cisayong, Kec. Cisayong, Kab. Tasikmalaya, Provinsi Jawa Barat', '1030704', 'Madya', '', '', '', '', '', '', '', '', '', '2023-04-03 00:01:18', '2023-06-14 03:47:06'),
(13, 'Puskesmas Culamega', 'Jl.Gubernur Sewaka No.02 Culamega, Desa/Kelurahan Cikuya, Kec. Culamega, Kab. Tasikmalaya, Provinsi Jawa Barat', '1030681', 'Madya', '', '', '', '', '', '', '', '', '', '2023-04-03 00:01:50', '2023-06-14 03:47:20'),
(14, 'Puskesmas Gunungtanjung', 'Jln Raya Gunungtanjung, Desa/Kelurahan Cinunjang, Kec. Gunung Tanjung, Kab. Tasikmalaya, Provinsi Jawa Barat', '1030693', 'Utama', '', '', '', '', '', '', '', '', '', '2023-04-03 00:03:32', '2023-06-14 03:47:33'),
(15, 'Puskesmas Jamanis', 'Jln. Raya Jamanis No. 33 , Desa/Kelurahan Sindangraja, Kec. Jamanis, Kab. Tasikmalaya, Provinsi Jawa Barat', '1030707', 'Utama', '', '', '', '', '', '', '', '', '', '2023-04-03 00:04:23', '2023-06-14 03:47:56'),
(16, 'Puskesmas Jatiwaras', 'Jl Raya Papayan-Cikatomas, Desa/Kelurahan Jatiwaras, Kec. Jatiwaras, Kab. Tasikmalaya, Provinsi Jawa Barat', '1030690', 'Paripurna', '', '', '', '', '', '', '', '', '', '2023-04-03 00:05:52', '2023-06-14 03:48:20'),
(17, 'Puskesmas Kadipaten', 'Jln. Perjuangan, Desa/Kelurahan Pamoyanan, Kec. Kadipaten, Kab. Tasikmalaya, Provinsi Jawa Barat', '1030709', 'Madya', '', '', '', '', '', '', '', '', '', '2023-04-03 00:06:39', '2023-06-14 03:51:59'),
(18, 'Puskesmas Karangjaya', 'Dusun Sukajaya, Desa/Kelurahan Sirnajaya, Kec. Karang Jaya, Kab. Tasikmalaya, Provinsi Jawa Barat', '1030700', 'Utama', '', '', '', '', '', '', '', '', '', '2023-04-03 00:07:15', '2023-06-14 03:52:16'),
(19, 'Puskesmas Karangnunggal', 'Jl Raya Karangnunggal No. 12, Desa/Kelurahan Karangnunggal, Kec. Karangnunggal, Kab. Tasikmalaya, Provinsi Jawa Barat', '1030673', 'Madya', '', '', '', '', '', '', '', '', '', '2023-04-03 00:08:06', '2023-06-14 03:52:30'),
(22, 'Puskesmas Leuwisari', 'Jl. Leuwisari No 25, Desa/Kelurahan Arjasari, Kec. Leuwisari, Kab. Tasikmalaya, Provinsi Jawa Barat', '1030699', 'Utama', '', '', '', '', '', '', '', '', '', '2023-04-03 01:04:05', '2023-06-14 03:52:44'),
(23, 'Puskesmas Mangunreja', 'Jl. Raya Sukaraja No. 53, Desa/Kelurahan Mangunreja, Kec. Mangunreja, Kab. Tasikmalaya, Provinsi Jawa Barat', '1030697', 'Madya', '', '', '', '', '', '', '', '', '', '2023-04-03 01:05:45', '2023-06-14 03:53:07'),
(24, 'Puskesmas Manonjaya', 'Jalan Tangsi No 06 Desa Manonjaya Kecamatan Manonjaya, Desa/Kelurahan Manonjaya, Kec. Manonjaya, Kab. Tasikmalaya, Provinsi Jawa Barat', '1030692', 'Madya', '', '', '', '', '', '', '', '', '', '2023-04-03 01:06:38', '2023-06-14 03:53:36'),
(25, 'Puskesmas Pagerageung', 'Jl. Tanjaknangsi No. 23-25 Pagerageung , Desa/Kelurahan Pagerageung, Kec. Pagerageung, Kab. Tasikmalaya, Provinsi Jawa Barat', '1030710', 'Madya', '', '', '', '', '', '', '', '', '', '2023-04-03 01:11:11', '2023-06-14 03:53:56'),
(26, 'Puskesmas Pancatengah', 'Jln Raya Pancatengah , Desa/Kelurahan Cibongas, Kec. Pancatengah, Kab. Tasikmalaya, Provinsi Jawa Barat', '1030675', 'Madya', '', '', '', '', '', '', '', '', '', '2023-04-03 01:13:11', '2023-06-14 03:54:10'),
(27, 'Puskesmas Parungponteng', 'Kp. Parungponteng 001/001, Desa/Kelurahan Parungponteng, Kec. Parungponteng, Kab. Tasikmalaya, Provinsi Jawa Barat', '1030678', 'Utama', '', '', '', '', '', '', '', '', '', '2023-04-03 02:13:46', '2023-06-14 03:54:22'),
(28, 'Puskesmas Puspahiang', 'Jl. Raya Puspahiang No 07, Desa/Kelurahan Puspahiang, Kec. Puspahiang, Kab. Tasikmalaya, Provinsi Jawa Barat', '1030686', 'Madya', '', '', '', '', '', '', '', '', '', '2023-04-03 02:14:36', '2023-06-14 03:54:39'),
(29, 'Puskesmas Rajapolah', 'Kp. Cibarani, Desa/Kelurahan Manggungjaya, Kec. Rajapolah, Kab. Tasikmalaya, Provinsi Jawa Barat', '1030706', 'Madya', '', '', '', '', '', '', '', '', '', '2023-04-03 02:15:08', '2023-06-14 03:56:18'),
(30, 'Puskesmas Salawu', 'Jl. Raya Salawu No.118, Desa/Kelurahan Margalaksana, Kec. Salawu, Kab. Tasikmalaya, Provinsi Jawa Barat', '1030685', 'Madya', '', '', '', '', '', '', '', '', '', '2023-04-03 02:16:10', '2023-06-14 03:56:29'),
(31, 'Puskesmas Salopa', 'Jln Raya Salopa No.226, Desa/Kelurahan Mandalahayu, Kec. Salopa, Kab. Tasikmalaya, Provinsi Jawa Barat', '1030689', 'Madya', '', '', '', '', '', '', '', '', '', '2023-04-03 02:17:22', '2023-06-14 03:56:52'),
(32, 'Puskesmas Sariwangi', 'Jln Raya Sariwangi No. 35, Desa/Kelurahan Sariwangi, Kec. Sariwangi, Kab. Tasikmalaya, Provinsi Jawa Barat', '1030701', 'Utama', '', '', '', '', '', '', '', '', '', '2023-04-03 02:18:54', '2023-06-14 03:57:15'),
(33, 'Puskesmas Singaparna', 'Jl Pancawarna No 7, Desa/Kelurahan Singasari, Kec. Singaparna, Kab. Tasikmalaya, Provinsi Jawa Barat', '1030695', 'Utama', '', '', '', '', '', '', '', '', '', '2023-04-03 02:19:42', '2023-06-14 03:57:50'),
(34, 'Puskesmas Sodonghilir', 'Jln Raya Timur No 18 Sodonghilir, Desa/Kelurahan Sodonghilir, Kec. Sodonghilir, Kab. Tasikmalaya, Provinsi Jawa Barat', '1030683', 'Madya', '', '', '', '', '', '', '', '', '', '2023-04-03 02:20:30', '2023-06-14 04:06:18'),
(35, 'Puskesmas Sukahening', 'Jl. Raya Sukahening No. 105, Desa/Kelurahan Calincing, Kec. Sukahening, Kab. Tasikmalaya, Provinsi Jawa Barat', '1030705', 'Madya', '', '', '', '', '', '', '', '', '', '2023-04-03 02:21:33', '2023-06-14 04:06:30'),
(36, 'Puskesmas Sukaraja', 'Jln Cibalanarik Sukaraja Kp. Pengkolan , Desa/Kelurahan Sukapura, Kec. Sukaraja, Kab. Tasikmalaya, Provinsi Jawa Barat', '1030688', 'Utama', '', '', '', '', '', '', '', '', '', '2023-04-03 02:22:16', '2023-06-14 04:06:52'),
(37, 'Puskesmas Sukarame', 'Jl Raya Sukarame No 117, Desa/Kelurahan Sukarame, Kec. Sukarame, Kab. Tasikmalaya, Provinsi Jawa Barat', '1030696', 'Utama', '', '', '', '', '', '', '', '', '', '2023-04-03 02:22:49', '2023-06-14 04:07:02'),
(38, 'Puskesmas Sukaratu', 'Kp Kudang No.58 , Desa/Kelurahan Sukaratu, Kec. Sukaratu, Kab. Tasikmalaya, Provinsi Jawa Barat', '1030703', 'Madya', '', '', '', '', '', '', '', '', '', '2023-04-03 02:23:24', '2023-06-14 04:07:14'),
(39, 'Puskesmas Sukaresik', 'Jl. Raya Ciawi-Panumbangan RT 001 RW 002, Desa/Kelurahan Sukaratu, Kec. Sukaresik, Kab. Tasikmalaya, Provinsi Jawa Barat', '1030711', 'Utama', '', '', '', '', '', '', '', '', '', '2023-04-03 02:24:28', '2023-06-14 04:07:25'),
(40, 'Puskesmas Tanjungjaya', 'Jl.Cibalanarik Kp.Rengrang 007 , Desa/Kelurahan Cibalanarik, Kec. Tanjungjaya, Kab. Tasikmalaya, Provinsi Jawa Barat', '1030687', 'Madya', '', '', '', '', '', '', '', '', '', '2023-04-03 02:27:00', '2023-06-14 04:07:44'),
(41, 'Puskesmas Taraju', 'Jln Raya Taraju No 149, Desa/Kelurahan Taraju, Kec. Taraju, Kab. Tasikmalaya, Provinsi Jawa Barat', '1030684', 'Madya', '', '', '', '', '', '', '', '', '', '2023-04-03 02:28:25', '2023-06-14 04:07:54'),
(42, 'Puskesmas Tinewati', 'Jl Garut-Tasikmalaya No 82 Singasari, Desa/Kelurahan Singasari, Kec. Singaparna, Kab. Tasikmalaya, Provinsi Jawa Barat', '1030694', 'Paripurna', '', '', '', '', '', '', '', '', '', '2023-04-03 02:28:54', '2023-06-14 04:08:03');

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
('BTx8WSfptERosUHlqiw03dwjV33VsQIpcTguTWKK', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/114.0', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoiTFJFYUV3cjB1UEliNVg2OGFwdFhGUEpmSnhETmJRRHYya29OYXo4SyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjg6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9rbGluaWsiO31zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToxO3M6MTc6InBhc3N3b3JkX2hhc2hfd2ViIjtzOjYwOiIkMnkkMTAkU0ZVQXYxcUMvTTZpZEhIMDRrWlVpZWd6SEczbEpXaFZOQzZ2VEd1MWgvZHl5c3owT05aTE8iO30=', 1687365905),
('KSWPO5JucqICpEHVTU9WtqeLmYKQJp9z3mIwShBF', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/114.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoieUJuQXB4WlRycHNqc1Eyek9UcGx4WG9jUTFWRk5WVE5RVXAzVHhqUiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjc6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9sb2dpbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1687362961),
('RXAOcEmM0VAhD5VSROC9hWEWtGo6MsJ6p9sMD4ku', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/114.0', 'YTo2OntzOjY6Il90b2tlbiI7czo0MDoiRTczMENzandUNmVjdXBRVlU5YkNxbmdzUW1CZlBZejdES0hzM0RTRSI7czozOiJ1cmwiO2E6MDp7fXM6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjI2OiJodHRwOi8vMTI3LjAuMC4xOjgwMDAvdXNlciI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjE7czoxNzoicGFzc3dvcmRfaGFzaF93ZWIiO3M6NjA6IiQyeSQxMCRTRlVBdjFxQy9NNmlkSEgwNGtaVWllZ3pIRzNsSldoVk5DNnZUR3UxaC9keXlzejBPTlpMTyI7fQ==', 1687366946);

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

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `nip` varchar(255) NOT NULL,
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

INSERT INTO `users` (`id`, `name`, `nip`, `email`, `email_verified_at`, `password`, `foto`, `level`, `two_factor_secret`, `two_factor_recovery_codes`, `remember_token`, `current_team_id`, `profile_photo_path`, `created_at`, `updated_at`) VALUES
(1, 'Administrator', '123', 'admin@gmail.com', NULL, '$2y$10$SFUAv1qC/M6idHH04kZUiegzHG3lJWhVNC6vTGu1h/dyysz0ONZLO', '/img/logo-20230402181740.png', 1, NULL, NULL, NULL, NULL, NULL, '2023-03-01 03:46:41', '2023-04-02 11:17:40'),
(2, 'User', '1234', 'user@gmail.com', NULL, '$2y$10$SFUAv1qC/M6idHH04kZUiegzHG3lJWhVNC6vTGu1h/dyysz0ONZLO', '/img/logo-20230402181740.png', 2, NULL, NULL, NULL, NULL, NULL, '2023-03-01 03:46:41', '2023-04-02 11:17:40'),
(3, 'Karisman Gustiadi, ST', '123456', 'karismanomen@gmail.com', NULL, '$2a$12$ibuK16HckwblFFUmF5U03.DW3uyIC1Cica/JLsilsR5PlnKW6k.EG', '/img/user.png', 2, NULL, NULL, NULL, NULL, NULL, '2023-03-01 03:46:41', '2023-04-02 11:17:40'),
(4, 'Dedeh Hartati, Am.Keb, SKM', '196512311986032090', 'dedehhartati65@gmail.com', NULL, '$2a$12$ibuK16HckwblFFUmF5U03.DW3uyIC1Cica/JLsilsR5PlnKW6k.EG', '/img/user.png', 1, NULL, NULL, NULL, NULL, NULL, '2023-03-01 03:46:41', '2023-04-02 11:17:40'),
(5, 'Nurul Fadhilah, S.ST, M.M', '198907182017042001', 'ratunurul24@gmail.com', NULL, '$2a$12$ibuK16HckwblFFUmF5U03.DW3uyIC1Cica/JLsilsR5PlnKW6k.EG', '/img/user.png', 2, NULL, NULL, NULL, NULL, NULL, '2023-03-01 03:46:41', '2023-04-02 11:17:40'),
(6, 'drg Andri Bastian, S.IP', '197907022009021004', 'drg.abassambas@gmail.com', NULL, '$2a$12$ibuK16HckwblFFUmF5U03.DW3uyIC1Cica/JLsilsR5PlnKW6k.EG', '/img/user.png', 2, NULL, NULL, NULL, NULL, NULL, '2023-03-01 03:46:41', '2023-04-02 11:17:40'),
(7, 'Leni Nuraeni HR, S.Kep', '197607201997032002', 'nleni2473@gmail.com', NULL, '$2a$12$ibuK16HckwblFFUmF5U03.DW3uyIC1Cica/JLsilsR5PlnKW6k.EG', '/img/user.png', 2, NULL, NULL, NULL, NULL, NULL, '2023-03-01 03:46:41', '2023-04-02 11:17:40'),
(8, 'Mia Shofia, SKM, SST, MKM', '197605302011012002', 'miaherawan@gmail.com', NULL, '$2a$12$ibuK16HckwblFFUmF5U03.DW3uyIC1Cica/JLsilsR5PlnKW6k.EG', '/img/user.png', 2, NULL, NULL, NULL, NULL, NULL, '2023-03-01 03:46:41', '2023-04-02 11:17:40'),
(9, 'dr Hj Analisa', '197410082002122002', 'analisaratnasari@gmail.com', NULL, '$2a$12$ibuK16HckwblFFUmF5U03.DW3uyIC1Cica/JLsilsR5PlnKW6k.EG', '/img/user.png', 2, NULL, NULL, NULL, NULL, NULL, '2023-03-01 03:46:41', '2023-04-02 11:17:40'),
(10, 'Ayi Luqmanul Hakim, S.Kep, Ners', '198301072011011003', 'ayiluqmanulhakim@gmail.com', NULL, '$2a$12$ibuK16HckwblFFUmF5U03.DW3uyIC1Cica/JLsilsR5PlnKW6k.EG', '/img/user.png', 2, NULL, NULL, NULL, NULL, NULL, '2023-03-01 03:46:41', '2023-04-02 11:17:40'),
(11, 'Otong Kusmana, SKM, MPH', '197604062000121003', 'otongkusman@gmail.com', NULL, '$2a$12$ibuK16HckwblFFUmF5U03.DW3uyIC1Cica/JLsilsR5PlnKW6k.EG', '/img/user.png', 2, NULL, NULL, NULL, NULL, NULL, '2023-03-01 03:46:41', '2023-04-02 11:17:40'),
(12, 'Wilianto, Amd.KG, SKM, MAP', '197909152010011009', 'willydinkeskab@gmail.com', NULL, '$2a$12$ibuK16HckwblFFUmF5U03.DW3uyIC1Cica/JLsilsR5PlnKW6k.EG', '/img/user.png', 2, NULL, NULL, NULL, NULL, NULL, '2023-03-01 03:46:41', '2023-04-02 11:17:40'),
(13, 'Esther Rizal, SKM', '197505222005012010', 'bunda.rara08@gmail.com', NULL, '$2a$12$ibuK16HckwblFFUmF5U03.DW3uyIC1Cica/JLsilsR5PlnKW6k.EG', '/img/user.png', 2, NULL, NULL, NULL, NULL, NULL, '2023-03-01 03:46:41', '2023-04-02 11:17:40'),
(14, 'dr Yunike Rosdiana Herman, MKM', '197006292002122002', 'yunikerh@gmail.com', NULL, '$2a$12$ibuK16HckwblFFUmF5U03.DW3uyIC1Cica/JLsilsR5PlnKW6k.EG', '/img/user.png', 2, NULL, NULL, NULL, NULL, NULL, '2023-03-01 03:46:41', '2023-04-02 11:17:40'),
(15, 'Saefullah Darmawan S., S.ST', '198212022009021001', 'saefullah.darmawan@gmail.com', NULL, '$2y$10$tD1G5u6C5N3rUo/1UQww1euPqOLrEtyrHFMgZzsDR/btcRHokUrau', '/img/user.png', 2, NULL, NULL, NULL, NULL, NULL, '2023-04-06 22:25:33', '2023-04-06 22:25:33'),
(16, 'Riksi Tazali. Skep. Ners', '198303082006041008', 'riksitazali@gmail.com', NULL, '$2y$10$COsgYq9rw7f0cKO7nbJWlu5jfiFd65gqtFX35OWKpvDFwfBoF4YYK', '/img/user.png', 2, NULL, NULL, NULL, NULL, NULL, '2023-04-06 23:58:09', '2023-06-15 23:35:22');

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
  MODIFY `id_klinik` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

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
  MODIFY `id_pkm` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT untuk tabel `setting`
--
ALTER TABLE `setting`
  MODIFY `id_setting` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `tpcb`
--
ALTER TABLE `tpcb`
  MODIFY `id_tpcb` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

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
