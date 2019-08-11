-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th8 11, 2019 lúc 12:58 PM
-- Phiên bản máy phục vụ: 10.1.40-MariaDB
-- Phiên bản PHP: 7.3.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `api`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `title` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `categories`
--

INSERT INTO `categories` (`id`, `title`, `created_at`, `updated_at`) VALUES
(2, 'NAT', '2019-08-08 09:57:17', '2019-08-08 09:57:29'),
(3, 'nat2', '2019-08-08 10:33:03', '2019-08-08 10:33:03');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_08_032151_create_articles_table', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` int(11) NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `posts`
--

INSERT INTO `posts` (`id`, `category_id`, `title`, `body`, `created_at`, `updated_at`) VALUES
(1, 2, 'Aspernatur magni recusandae ut deserunt corrupti inventore facilis.', 'Sunt expedita veniam tempore vero amet velit et alias. Reprehenderit iure dolor corporis. Exercitationem laboriosam ratione dolorem et at at.', '2019-08-08 04:16:05', '2019-08-08 04:16:05'),
(2, 2, 'Eos quia sed tempora mollitia molestias aperiam.', 'Debitis doloremque aut voluptatem ut et. Error unde earum explicabo cum incidunt qui est. Ullam suscipit aperiam sit delectus. Exercitationem aut sit saepe aut et illo nobis.', '2019-08-08 04:16:05', '2019-08-08 04:16:05'),
(3, 2, 'Nulla est provident et.', 'Reprehenderit quo voluptatem est dolorum. Et doloremque officiis ut sint.', '2019-08-08 04:16:05', '2019-08-08 04:16:05'),
(4, 2, 'Nemo praesentium modi voluptatum accusantium iure in facere.', 'Reiciendis eum eum dolor voluptas. Quo aut quasi sapiente consequuntur saepe dolorem voluptates. Veritatis corporis maiores id corrupti.', '2019-08-08 04:16:05', '2019-08-08 04:16:05'),
(5, 2, 'Fugiat est rem esse sapiente dicta labore.', 'Aperiam veniam voluptas nihil sequi aliquid. Optio quos dolorem fuga quae. Sit voluptatem qui quis rerum architecto nostrum sit voluptatum.', '2019-08-08 04:16:05', '2019-08-08 04:16:05'),
(6, 2, 'Porro ut eaque pariatur eum.', 'Consequatur eum beatae reprehenderit molestias. Eveniet dolor et odit ab qui aut ab neque. Temporibus qui similique nobis.', '2019-08-08 04:16:05', '2019-08-08 04:16:05'),
(7, 2, 'Iure minima voluptatem sint quod dignissimos voluptatem iusto.', 'Ex ad sunt et iure sint earum. In tempora rerum quaerat placeat veniam earum. Sint est tenetur veritatis et est fugiat officiis. Labore placeat est sunt ducimus expedita mollitia.', '2019-08-08 04:16:05', '2019-08-08 04:16:05'),
(8, 2, 'Quos hic eos sunt et rem recusandae.', 'Maiores ab facilis accusamus expedita eos non aut. Est provident excepturi voluptas laboriosam velit esse. Porro beatae exercitationem inventore non rerum temporibus et. Dolor enim autem similique laboriosam.', '2019-08-08 04:16:05', '2019-08-08 04:16:05'),
(9, 2, 'Consectetur aut quisquam ducimus ut et ut tempore dicta.', 'Id tempora quia autem id fugiat pariatur. Aut vero voluptas veniam sed occaecati saepe. Aut quam non est eum exercitationem quaerat quo. Placeat et illum velit ea.', '2019-08-08 04:16:05', '2019-08-08 04:16:05'),
(10, 2, 'Quas officia et officiis.', 'Dicta omnis quis nihil culpa. Dolorem animi quia voluptatem aperiam et voluptate beatae. Nulla provident assumenda mollitia non id aut. Doloremque sint qui cum saepe vitae.', '2019-08-08 04:16:05', '2019-08-08 04:16:05'),
(11, 2, 'Quasi eveniet aut magni vitae quia eaque eveniet.', 'Et autem velit cupiditate aliquid quis rerum accusantium eveniet. Nesciunt expedita qui est quis amet et. Sint et ratione impedit eligendi eveniet voluptas recusandae. A quam quis aut a quo.', '2019-08-08 04:16:05', '2019-08-08 04:16:05'),
(12, 2, 'Pariatur numquam iusto animi voluptas.', 'Tempore rem animi non. Ad architecto eos atque vero non nihil enim quo.', '2019-08-08 04:16:05', '2019-08-08 04:16:05'),
(13, 2, 'Aliquid ut ullam quia est saepe.', 'Sit aut fuga facilis neque est. Perferendis deserunt voluptatem explicabo accusamus voluptas id voluptatem non. Veniam qui accusantium explicabo. Commodi eius at maiores. Tempora optio qui qui dolorem dicta alias occaecati.', '2019-08-08 04:16:05', '2019-08-08 04:16:05'),
(14, 2, 'Sunt aliquid architecto sunt facilis incidunt similique adipisci.', 'Voluptas deserunt asperiores officia. Neque et rerum tempore illum magnam nisi expedita. In tempora libero quisquam nobis debitis vero blanditiis. Voluptatem porro est harum dignissimos nostrum maxime.', '2019-08-08 04:16:05', '2019-08-08 04:16:05'),
(15, 2, 'Ut ea cupiditate omnis vel.', 'Quod necessitatibus laborum aut qui quis atque. Porro quo dolor earum. Sit omnis vel rerum exercitationem consequatur laborum et. Qui libero consequuntur similique sequi asperiores.', '2019-08-08 04:16:05', '2019-08-08 04:16:05'),
(16, 2, 'Dolores sit suscipit aut iusto sequi aut voluptatem sint.', 'Dolores quibusdam accusamus magni cupiditate culpa. Culpa quae ea commodi voluptatum consequuntur nam. Voluptates facere soluta incidunt consequatur.', '2019-08-08 04:16:05', '2019-08-08 04:16:05'),
(17, 2, 'Sapiente sit accusantium qui praesentium possimus.', 'Et sapiente doloribus neque consectetur ea aperiam. Maxime et et natus dolor et. Consequuntur eum sequi debitis nobis voluptates id. Et quo distinctio et quidem.', '2019-08-08 04:16:05', '2019-08-08 04:16:05'),
(18, 2, 'Voluptas totam et consequatur deleniti dignissimos placeat et soluta.', 'Quo nisi sed necessitatibus quasi animi minima molestias. Ipsa consequatur odit aut quo sunt est. Impedit laboriosam quas sint ut.', '2019-08-08 04:16:05', '2019-08-08 04:16:05'),
(19, 2, 'Nihil ullam qui et hic harum qui veritatis.', 'At dolores reiciendis voluptate repellendus accusamus. Unde dolores quaerat nisi fugit sed. Sunt placeat error nulla possimus ipsum et ab. Aut et natus laudantium quas.', '2019-08-08 04:16:05', '2019-08-08 04:16:05'),
(20, 2, 'Id laboriosam maxime est exercitationem vitae esse ea.', 'Ipsum nihil sit qui ab quia. Eveniet labore ratione molestias repudiandae adipisci excepturi sint alias.', '2019-08-08 04:16:05', '2019-08-08 04:16:05'),
(21, 2, 'Tempora quidem et aut accusantium repellat sed.', 'Aut et perspiciatis explicabo fugiat iusto magnam deserunt. Quia quo aut quasi. Asperiores sed expedita rerum fugiat aliquam. Error nihil quam debitis et reiciendis.', '2019-08-08 04:16:05', '2019-08-08 04:16:05'),
(22, 2, 'Voluptatem vel blanditiis quasi autem laudantium unde.', 'Dolore facilis ad sit harum molestiae. Quam consectetur ut quae mollitia. Deleniti non veniam sunt voluptatibus sunt nulla accusantium atque. Quas in non aut quia repudiandae iste suscipit nostrum.', '2019-08-08 04:16:05', '2019-08-08 04:16:05'),
(23, 2, 'Aut fugit possimus maxime itaque et.', 'Laudantium odit architecto voluptas voluptatibus. Natus incidunt dicta nam similique dicta voluptas est. Qui nostrum dicta perspiciatis voluptatem placeat eum ratione. Et cupiditate alias quaerat.', '2019-08-08 04:16:05', '2019-08-08 04:16:05'),
(24, 2, 'Et illum et dolore consequatur non tenetur.', 'Est quas voluptatem commodi possimus aperiam dolorem velit. Voluptas odio architecto labore. Soluta nostrum perferendis ut assumenda. Aut odit vel nihil ut sequi mollitia dignissimos.', '2019-08-08 04:16:05', '2019-08-08 04:16:05'),
(25, 2, 'Perferendis porro voluptatum at vel quae omnis.', 'Dolorem facilis illum dolorum. Et nesciunt eum qui quasi aspernatur quidem. Illum blanditiis rerum at. Sapiente explicabo iure aspernatur non.', '2019-08-08 04:16:05', '2019-08-08 04:16:05'),
(26, 2, 'Et consequuntur neque quod sed cumque.', 'Possimus aut est cupiditate ipsum quisquam. Harum culpa voluptatem necessitatibus velit est. Ea enim debitis eum dignissimos veritatis non. Ex in accusamus minus recusandae qui aliquam dolores. Rem vero harum non vero eligendi consequatur voluptatibus quo.', '2019-08-08 04:16:05', '2019-08-08 04:16:05'),
(27, 2, 'Modi aspernatur omnis culpa voluptatem tempore possimus soluta molestiae.', 'Est iste id accusantium repellat rerum consequatur enim. Harum et ut non iure. Et beatae quis ipsam saepe aut vero adipisci.', '2019-08-08 04:16:05', '2019-08-08 04:16:05'),
(28, 2, 'Consequatur totam amet id dolor totam qui reprehenderit.', 'Culpa dolorem deserunt et culpa porro. Ex non hic dolore fugiat veniam omnis quod ducimus.', '2019-08-08 04:16:05', '2019-08-08 04:16:05'),
(29, 2, 'Enim eaque et aut deserunt sequi est.', 'Incidunt recusandae qui est dolor. Voluptatum molestiae iste voluptatem facere animi cupiditate voluptatem. Enim aut eligendi ut eligendi aut doloribus.', '2019-08-08 04:16:05', '2019-08-08 04:16:05'),
(30, 2, 'Facere quibusdam magnam perferendis fuga.', 'Ullam veniam quia omnis quas eum. Dolores ab quia error ipsa ratione sunt error. Quos culpa at vel velit aliquam voluptatem perspiciatis. Atque eos optio ut ab iste fugiat voluptatem. Quos accusamus voluptas officiis.', '2019-08-08 04:16:05', '2019-08-08 04:16:05'),
(31, 2, 'Et rerum culpa sit ut omnis rem.', 'Alias sequi et qui culpa magni inventore quis. Iste exercitationem est eveniet molestiae et occaecati. Eos ratione rerum enim atque cumque.', '2019-08-08 04:16:05', '2019-08-08 04:16:05'),
(32, 2, 'Voluptas dolorum vel soluta facilis eaque dolorem non.', 'Officia ut omnis et nemo mollitia possimus molestias. Doloremque asperiores ex itaque. Voluptatem maxime incidunt ut perferendis iure neque repudiandae voluptatibus. Pariatur nobis et totam soluta. Asperiores molestiae rerum autem blanditiis consequatur optio et impedit.', '2019-08-08 04:16:05', '2019-08-08 04:16:05'),
(33, 2, 'Dolorem dolor laborum exercitationem consectetur quia doloremque aspernatur.', 'Quis doloremque ut vitae voluptatibus id commodi consequatur. Et qui minus omnis sint corrupti maiores. Voluptate voluptatem sapiente et unde.', '2019-08-08 04:16:05', '2019-08-08 04:16:05'),
(34, 2, 'Blanditiis eum laboriosam laborum ut nobis fugiat velit non.', 'Voluptatem ullam odio eos. Aspernatur ratione dignissimos est cupiditate aut aut eum.', '2019-08-08 04:16:05', '2019-08-08 04:16:05'),
(35, 2, 'Nostrum odio nobis quas vel.', 'Natus voluptate deserunt magnam doloribus pariatur quas esse. Voluptate quia velit eaque eveniet animi fugit. Impedit repellat aut voluptatem pariatur quae.', '2019-08-08 04:16:05', '2019-08-08 04:16:05'),
(36, 2, 'Repellat et qui at dolores aut.', 'Labore quia sed commodi ipsum. Veniam est aut sit possimus cum. Sed magni ad nostrum ea iusto explicabo.', '2019-08-08 04:16:05', '2019-08-08 04:16:05'),
(37, 2, 'Necessitatibus libero soluta reprehenderit ipsum totam quo.', 'Necessitatibus libero facere at expedita. Recusandae molestiae doloremque animi veritatis. Iure aut id velit et quia nobis. Dignissimos explicabo omnis dolores nisi.', '2019-08-08 04:16:05', '2019-08-08 04:16:05'),
(38, 2, 'Quia voluptates expedita sed aut quaerat similique.', 'Quos voluptas dolorem doloribus voluptatem et voluptate sunt pariatur. Culpa ut molestiae et molestiae eos. Repellendus aliquam sit ea.', '2019-08-08 04:16:05', '2019-08-08 04:16:05'),
(39, 2, 'Libero recusandae voluptatibus non.', 'Rem esse libero ex omnis quod. At quo in magnam fugiat exercitationem iure. Ut animi et quia ut occaecati molestiae voluptate velit.', '2019-08-08 04:16:05', '2019-08-08 04:16:05'),
(40, 2, 'Sed consequatur qui eius.', 'Quibusdam velit alias praesentium dignissimos ex. Consequatur quibusdam sit nihil explicabo explicabo. Corporis rem dolorem expedita necessitatibus blanditiis eos.', '2019-08-08 04:16:05', '2019-08-08 04:16:05'),
(41, 2, 'Voluptas et odio nobis omnis rerum.', 'A saepe est autem sunt nisi ratione accusamus. Et doloremque aut error voluptatibus quia quos et. Odit iure maiores totam quia porro. Asperiores est quae architecto dolores. Sint ad accusamus eius at nisi.', '2019-08-08 04:16:05', '2019-08-08 04:16:05'),
(42, 2, 'Deleniti culpa nihil et dicta tempore deleniti.', 'Ut minus sequi enim. Inventore sit eos enim. Rem qui aspernatur est unde.', '2019-08-08 04:16:05', '2019-08-08 04:16:05'),
(43, 2, 'Sequi eum magnam eveniet et ut quo aut.', 'Quos nihil impedit non tenetur molestias deleniti. Beatae itaque culpa eius asperiores molestias. Accusamus deserunt id ea id consequatur perspiciatis.', '2019-08-08 04:16:05', '2019-08-08 04:16:05'),
(44, 2, 'Aut accusamus similique animi sapiente voluptate placeat.', 'Quam ipsum sapiente expedita id sed. Quam aut aspernatur quos.', '2019-08-08 04:16:05', '2019-08-08 04:16:05'),
(45, 2, 'Labore est consequatur perferendis vero.', 'Nulla vitae itaque repudiandae velit at sed voluptas. Eos molestiae vitae nisi quas. Ducimus et aut amet aut velit voluptates doloribus inventore. Dolores omnis perspiciatis quos quis minima.', '2019-08-08 04:16:05', '2019-08-08 04:16:05'),
(46, 2, 'Consequuntur odit tenetur et aspernatur debitis.', 'Autem ipsam molestiae optio aspernatur rem aut explicabo. Nesciunt autem et numquam expedita nihil inventore. Quidem doloremque tenetur iure ipsam. Accusamus omnis laudantium quia eum.', '2019-08-08 04:16:05', '2019-08-08 04:16:05'),
(47, 2, 'Et quod quis qui perspiciatis.', 'Esse et asperiores sunt molestiae et. Aliquam numquam facilis qui consequuntur amet. Nostrum in qui quia nihil. Omnis reiciendis similique ab debitis officiis rerum.', '2019-08-08 04:16:05', '2019-08-08 04:16:05'),
(48, 2, 'Necessitatibus non laudantium aut nihil.', 'Laboriosam et odit aut est quis. Quia qui enim libero laboriosam nesciunt sed nemo. Repudiandae ut minus velit dolore nostrum.', '2019-08-08 04:16:05', '2019-08-08 04:16:05'),
(49, 2, 'Illum delectus ducimus numquam eum qui voluptas perspiciatis.', 'Animi voluptates non voluptatibus nesciunt debitis. Aperiam ut fugit provident. Aut molestias et pariatur cupiditate eum aliquam hic. Ullam dolor veniam nihil voluptate. Voluptatem maxime voluptatem non soluta sit ad.', '2019-08-08 04:16:05', '2019-08-08 04:16:05'),
(50, 2, 'Libero aliquam culpa eum porro magnam et tempora.', 'Asperiores tempora ab nostrum inventore est totam et. Architecto aperiam numquam quas qui accusantium architecto aliquid. Facilis nisi omnis sit qui.', '2019-08-08 04:16:05', '2019-08-08 04:16:05');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Administrator', 'admin@test.com', NULL, '$2y$10$njK3c8Fvwnhh4l6tr4gsPO3NxbseIL3YPg99fvDMzo0lfAszMcEGm', NULL, '2019-08-07 21:25:45', '2019-08-07 21:25:45'),
(2, 'Reva D\'Amore', 'lura.connelly@sawayn.com', NULL, '$2y$10$njK3c8Fvwnhh4l6tr4gsPO3NxbseIL3YPg99fvDMzo0lfAszMcEGm', NULL, '2019-08-07 21:25:45', '2019-08-07 21:25:45'),
(3, 'Rhiannon Streich', 'judge54@yahoo.com', NULL, '$2y$10$njK3c8Fvwnhh4l6tr4gsPO3NxbseIL3YPg99fvDMzo0lfAszMcEGm', NULL, '2019-08-07 21:25:45', '2019-08-07 21:25:45'),
(4, 'Omer Considine Sr.', 'madaline57@hotmail.com', NULL, '$2y$10$njK3c8Fvwnhh4l6tr4gsPO3NxbseIL3YPg99fvDMzo0lfAszMcEGm', NULL, '2019-08-07 21:25:45', '2019-08-07 21:25:45'),
(5, 'Christy Dickens', 'schoen.gerson@cruickshank.info', NULL, '$2y$10$njK3c8Fvwnhh4l6tr4gsPO3NxbseIL3YPg99fvDMzo0lfAszMcEGm', NULL, '2019-08-07 21:25:45', '2019-08-07 21:25:45'),
(6, 'Marjorie Gibson', 'vharris@hotmail.com', NULL, '$2y$10$njK3c8Fvwnhh4l6tr4gsPO3NxbseIL3YPg99fvDMzo0lfAszMcEGm', NULL, '2019-08-07 21:25:45', '2019-08-07 21:25:45'),
(7, 'Eliezer Ratke', 'chill@rohan.org', NULL, '$2y$10$njK3c8Fvwnhh4l6tr4gsPO3NxbseIL3YPg99fvDMzo0lfAszMcEGm', NULL, '2019-08-07 21:25:45', '2019-08-07 21:25:45'),
(8, 'Moses Bins', 'gerlach.abdullah@okuneva.info', NULL, '$2y$10$njK3c8Fvwnhh4l6tr4gsPO3NxbseIL3YPg99fvDMzo0lfAszMcEGm', NULL, '2019-08-07 21:25:45', '2019-08-07 21:25:45'),
(9, 'Abe Dicki', 'clarson@hotmail.com', NULL, '$2y$10$njK3c8Fvwnhh4l6tr4gsPO3NxbseIL3YPg99fvDMzo0lfAszMcEGm', NULL, '2019-08-07 21:25:45', '2019-08-07 21:25:45'),
(10, 'Reed Reichert', 'ddoyle@gmail.com', NULL, '$2y$10$njK3c8Fvwnhh4l6tr4gsPO3NxbseIL3YPg99fvDMzo0lfAszMcEGm', NULL, '2019-08-07 21:25:45', '2019-08-07 21:25:45'),
(11, 'Emilia Berge Jr.', 'donny88@hotmail.com', NULL, '$2y$10$njK3c8Fvwnhh4l6tr4gsPO3NxbseIL3YPg99fvDMzo0lfAszMcEGm', NULL, '2019-08-07 21:25:45', '2019-08-07 21:25:45');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Chỉ mục cho bảng `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
