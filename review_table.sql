-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- ホスト: localhost
-- 生成日時: 2024 年 12 月 20 日 18:58
-- サーバのバージョン： 10.4.28-MariaDB
-- PHP のバージョン: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- データベース: `bar_review01`
--

-- --------------------------------------------------------

--
-- テーブルの構造 `review_table`
--

CREATE TABLE `review_table` (
  `id` int(11) NOT NULL,
  `bar_name` varchar(30) NOT NULL,
  `area` varchar(10) NOT NULL,
  `category` varchar(10) NOT NULL,
  `review_point` text NOT NULL,
  `link` varchar(150) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- テーブルのデータのダンプ `review_table`
--

INSERT INTO `review_table` (`id`, `bar_name`, `area`, `category`, `review_point`, `link`, `created_at`, `updated_at`) VALUES
(1, 'HUB', '博多', 'バー', 'クラフトビールが美味しい', 'https://www.instagram.com/hub_hakata/', '2024-12-21 02:07:44', '2024-12-21 02:07:44'),
(2, 'BAR 23', '西新', 'バー', 'お酒が豊富、同世代のマスターとのお話も楽しい', 'https://www.instagram.com/bartwothree/?hl=ja', '2024-12-21 02:15:00', '2024-12-21 02:15:00'),
(3, '活海酒', '警固', '居酒屋', '魚が絶品、どぶろくを初めて呑んだ', 'https://tabelog.com/fukuoka/A4001/A400104/40003961/', '2024-12-21 02:22:30', '2024-12-21 02:22:30'),
(4, '炭と土鍋 魚座', '薬院', '居酒屋', '土鍋（いくら＋鯛）のご飯がとても美味しい', 'https://www.instagram.com/uoza.yakuin/', '2024-12-21 02:26:55', '2024-12-21 02:26:55'),
(5, 'LUREE', '今泉', 'バー', 'おしゃれな雰囲気、シカゴピザおすすめ。', 'https://www.instagram.com/luree.fukuoka/', '2024-12-21 02:34:22', '2024-12-21 02:34:22'),
(6, 'Bar LEONEO', '親不孝', 'バー', '音楽好きにはたまらない隠れ家的な飲み屋', 'https://x.com/barleoneo', '2024-12-21 02:39:12', '2024-12-21 02:39:12'),
(7, 'とり屋台', '清川', '居酒屋', 'リーズナブルで美味しい居酒屋', 'https://www.facebook.com/pages/%E3%81%A8%E3%82%8A%E5%B1%8B%E5%8F%B0/118680264913574/', '2024-12-21 02:40:32', '2024-12-21 02:40:32'),
(8, 'ナカガワ酒販', '雑餉隈', '角打ち', '世代が幅広くお客さんとも楽しくお酒を楽しめる', 'https://www.instagram.com/nakagawasyuhan/', '2024-12-21 02:46:59', '2024-12-21 02:46:59'),
(9, 'BAR CALMKNOT', '白木原', 'バー', 'お酒雰囲気おもてなし、どれも素晴らしいオーセンティックバー。', 'https://www.instagram.com/calmknot_fukuoka/', '2024-12-21 02:50:36', '2024-12-21 02:50:36'),
(10, '晩酌屋台 シタモリっしゅ!', '二日市', 'バー', '気さくなマスターの飲み屋、友達作りにおすすめ。\r\n個人的には二日市のホットステーション。', 'https://www.instagram.com/shitamori_sshu/', '2024-12-21 02:54:10', '2024-12-21 02:54:10');

--
-- ダンプしたテーブルのインデックス
--

--
-- テーブルのインデックス `review_table`
--
ALTER TABLE `review_table`
  ADD PRIMARY KEY (`id`);

--
-- ダンプしたテーブルの AUTO_INCREMENT
--

--
-- テーブルの AUTO_INCREMENT `review_table`
--
ALTER TABLE `review_table`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
