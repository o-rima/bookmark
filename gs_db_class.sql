-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- ホスト: 127.0.0.1
-- 生成日時: 2024-07-22 17:35:24
-- サーバのバージョン： 10.4.32-MariaDB
-- PHP のバージョン: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- データベース: `gs_db_class`
--

-- --------------------------------------------------------

--
-- テーブルの構造 `gs_an_table`
--

CREATE TABLE `gs_an_table` (
  `id` int(12) NOT NULL,
  `name` varchar(64) NOT NULL,
  `email` varchar(128) NOT NULL,
  `content` text NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- テーブルのデータのダンプ `gs_an_table`
--

INSERT INTO `gs_an_table` (`id`, `name`, `email`, `content`, `date`) VALUES
(1, 'こすげたつや', 'test@test.jp', '内容', '2024-07-11 19:36:08'),
(2, 'こすげたつこ', 'tatsuko@test.jp', '内容がないよう', '2024-07-11 19:39:44'),
(3, 'あいうえお', 'aiueo@test.jp', '五十音順', '2024-07-11 19:40:16'),
(4, 'ピカチュウ', 'test@test.com', 'でんきタイプ', '2024-07-11 20:32:32'),
(5, 'イーブイ', 'testtest@tect.com', 'ノーマルタイプ', '2024-07-11 20:38:50'),
(6, 'あああ', 'aaa@test.com', 'るるる', '2024-07-18 00:51:31');

-- --------------------------------------------------------

--
-- テーブルの構造 `gs_bookmark_table`
--

CREATE TABLE `gs_bookmark_table` (
  `id` int(11) NOT NULL,
  `book_name` varchar(64) NOT NULL,
  `book_url` text NOT NULL,
  `book_comment` text NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- テーブルのデータのダンプ `gs_bookmark_table`
--

INSERT INTO `gs_bookmark_table` (`id`, `book_name`, `book_url`, `book_comment`, `date`) VALUES
(5, 'ミスチル「HANABI」MV', 'https://www.youtube.com/watch?v=EXxaBXKjl6Q', 'ドラマ「コードブルー」主題歌', '2024-07-21'),
(6, 'THE FIRST TAKE「猫」', 'https://www.youtube.com/watch?v=gsT6eKsnT0M', '北村拓海', '2024-07-21'),
(7, '全員テキトーに喋ってる司令室', 'https://www.youtube.com/watch?v=P3qLstp60kg', 'おもしろい', '2024-07-21');

--
-- ダンプしたテーブルのインデックス
--

--
-- テーブルのインデックス `gs_an_table`
--
ALTER TABLE `gs_an_table`
  ADD PRIMARY KEY (`id`);

--
-- テーブルのインデックス `gs_bookmark_table`
--
ALTER TABLE `gs_bookmark_table`
  ADD PRIMARY KEY (`id`);

--
-- ダンプしたテーブルの AUTO_INCREMENT
--

--
-- テーブルの AUTO_INCREMENT `gs_an_table`
--
ALTER TABLE `gs_an_table`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- テーブルの AUTO_INCREMENT `gs_bookmark_table`
--
ALTER TABLE `gs_bookmark_table`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
