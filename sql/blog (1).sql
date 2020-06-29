-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 22 Jun 2020 pada 08.47
-- Versi server: 10.1.30-MariaDB
-- Versi PHP: 7.2.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `blog`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `article`
--

CREATE TABLE `article` (
  `art_id` int(10) UNSIGNED NOT NULL,
  `art_title` varchar(255) DEFAULT NULL,
  `art_content` text,
  `art_datepublish` datetime DEFAULT NULL,
  `art_user_id` int(10) UNSIGNED NOT NULL,
  `art_datecreated` datetime DEFAULT NULL,
  `art_picture` varchar(45) DEFAULT NULL,
  `art_publish` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `article`
--

INSERT INTO `article` (`art_id`, `art_title`, `art_content`, `art_datepublish`, `art_user_id`, `art_datecreated`, `art_picture`, `art_publish`) VALUES
(1, 'Article premiere', '<p>aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa</p>', '2018-12-04 00:00:00', 1, '2018-12-04 11:17:57', '1543937180_DSC_0490.JPG', 1),
(2, 'Article 2', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>', '2018-12-04 00:00:00', 1, '2018-12-04 11:23:59', '1543937164_20171024_150011.jpg', 1),
(3, 'Article 3', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla varius sem vitae tempus ullamcorper. Morbi lorem nunc, efficitur vehicula lectus pretium, commodo pellentesque nibh. Curabitur finibus semper ultricies. Praesent a viverra diam, in rutrum diam. Sed sed pretium mauris. Vivamus sed mi vitae odio vulputate malesuada. Sed quis turpis condimentum massa aliquet vulputate. Vivamus neque lacus, vestibulum lobortis sagittis ut, dictum sit amet nulla. Curabitur vel facilisis libero, a fringilla est. Mauris lobortis mi dui, sit amet tempor nisl sagittis ut. Morbi fermentum ex ipsum, sit amet iaculis nisi lobortis non. Ut sit amet neque risus. Aliquam non molestie tellus, quis euismod turpis. Donec vitae dignissim nisi.</p>\r\n<p>Curabitur gravida libero at scelerisque vulputate. Sed vestibulum suscipit metus quis dignissim. In hac habitasse platea dictumst. Proin consequat lobortis libero, ac elementum nunc fermentum sed. Phasellus euismod massa nisi, vel imperdiet massa ultrices ut. Morbi eu eleifend ligula. Mauris nisl nulla, dapibus vel feugiat a, consequat id augue. Fusce quis nibh sapien. Phasellus ut libero sit amet purus blandit faucibus. Donec semper nulla a fermentum ullamcorper. Proin dignissim, nunc vitae tincidunt suscipit, est neque iaculis augue, et aliquet libero ligula nec justo. Praesent scelerisque semper auctor. Quisque magna turpis, lobortis a sem ut, rutrum tempor lacus. Duis venenatis non enim sed congue. Nulla efficitur ante arcu, quis pellentesque elit hendrerit non. Sed vel tincidunt diam.</p>\r\n<p>Donec nisl eros, pellentesque eu laoreet et, volutpat ut odio. Nunc facilisis, nunc vitae tristique blandit, eros augue placerat felis, ultrices sollicitudin mauris risus fringilla massa. Morbi cursus ante ac viverra posuere. Aliquam erat volutpat. Donec semper enim vel velit sodales elementum. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Proin non hendrerit eros, et condimentum sapien. Donec porttitor, velit a ornare tincidunt, massa est vulputate velit, et rhoncus tellus libero in lectus. Morbi et lobortis quam. Nullam faucibus est imperdiet eros varius auctor.</p>', '2018-12-03 00:00:00', 1, '2018-12-04 11:25:47', '1543937147_Reallon1.jpg', 1),
(4, 'Article 4x6', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>', '2018-12-05 00:00:00', 1, '2018-12-04 11:35:27', '1543937135_reallon2.jpg', 1),
(5, 'Et le surf ?', '<p>Le <strong>surf</strong> (abr&eacute;viation fran&ccedil;aise de l\'anglais <em>surf-riding</em>, o&ugrave; <em>riding</em> signifie &laquo;&nbsp;chevaucher&nbsp;&raquo; et <em>surf</em> &laquo;&nbsp;(vagues) d&eacute;ferlantes&nbsp;&raquo;) est un <a title=\"Sport\" href=\"https://fr.wikipedia.org/wiki/Sport\">sport</a> qui consiste &agrave; glisser sur les <a title=\"Vague\" href=\"https://fr.wikipedia.org/wiki/Vague\">vagues</a>, <a title=\"Onde de gravit&eacute;\" href=\"https://fr.wikipedia.org/wiki/Onde_de_gravit%C3%A9\">ondes de surface</a>, au bord de l\'oc&eacute;an, debout sur une planche. Le surf se pratique sur des <em><a title=\"Spot de surf\" href=\"https://fr.wikipedia.org/wiki/Spot_de_surf\">sites de surf</a></em>, appel&eacute;s spots (&laquo;&nbsp;bons coins&nbsp;&raquo;), plages qui sont baign&eacute;es par des vagues plus ou moins grandes et propices &agrave; la glisse.</p>\r\n<p>Les adeptes de ce sport sont les surfeurs ou aquaplanchistes !<sup id=\"cite_ref-OQLF_1-0\" class=\"reference\"></sup></p>', '2018-05-04 00:00:00', 1, '2018-12-04 03:28:35', '1543939009_20171026_103921.jpg', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `article_has_categorie`
--

CREATE TABLE `article_has_categorie` (
  `articles_idarticles` int(10) UNSIGNED NOT NULL,
  `categories_idcategories` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `article_has_categorie`
--

INSERT INTO `article_has_categorie` (`articles_idarticles`, `categories_idcategories`) VALUES
(1, 2),
(4, 1),
(4, 2),
(4, 4),
(5, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `categorie`
--

CREATE TABLE `categorie` (
  `cat_id` int(10) UNSIGNED NOT NULL,
  `cat_title` varchar(255) DEFAULT NULL,
  `cat_description` text,
  `cat_categories_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `categorie`
--

INSERT INTO `categorie` (`cat_id`, `cat_title`, `cat_description`, `cat_categories_id`) VALUES
(1, 'Sport', NULL, NULL),
(2, 'News', NULL, NULL),
(3, 'cat', NULL, NULL),
(4, 'Dog', NULL, NULL),
(5, 'Duck', NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `comment`
--

CREATE TABLE `comment` (
  `com_id` int(10) UNSIGNED NOT NULL,
  `com_email` varchar(255) NOT NULL,
  `com_text` text NOT NULL,
  `com_datecreated` datetime DEFAULT NULL,
  `com_publish` tinyint(1) DEFAULT NULL,
  `com_article_art_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `user_email` varchar(255) DEFAULT NULL,
  `user_password` varchar(255) DEFAULT NULL,
  `user_firstname` varchar(45) DEFAULT NULL,
  `user_lastname` varchar(45) DEFAULT NULL,
  `user_datecreated` datetime DEFAULT NULL,
  `user_bio` tinytext,
  `user_avatar` varchar(255) DEFAULT NULL,
  `user_role` varchar(20) NOT NULL DEFAULT 'ROLE_AUTHOR'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`user_id`, `user_email`, `user_password`, `user_firstname`, `user_lastname`, `user_datecreated`, `user_bio`, `user_avatar`, `user_role`) VALUES
(1, 'login@user.fr', '$2y$10$qdEMrMguPG0YWPCuLbDB3ebHC0Am4hh27KKYwwaGOJeoyoTveyz66', 'Syahrir', 'Alvian', '2020-06-22 02:26:15', 'Super personne !', '1543852839_programmationLove.jpg', 'ROLE_ADMIN');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `article`
--
ALTER TABLE `article`
  ADD PRIMARY KEY (`art_id`),
  ADD KEY `fk_articles_users1_idx` (`art_user_id`);

--
-- Indeks untuk tabel `article_has_categorie`
--
ALTER TABLE `article_has_categorie`
  ADD PRIMARY KEY (`articles_idarticles`,`categories_idcategories`),
  ADD KEY `fk_articles_has_categories_categories1_idx` (`categories_idcategories`),
  ADD KEY `fk_articles_has_categories_articles_idx` (`articles_idarticles`);

--
-- Indeks untuk tabel `categorie`
--
ALTER TABLE `categorie`
  ADD PRIMARY KEY (`cat_id`),
  ADD KEY `fk_categories_categories1_idx` (`cat_categories_id`);

--
-- Indeks untuk tabel `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`com_id`),
  ADD KEY `fk_comment_article1_idx` (`com_article_art_id`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `article`
--
ALTER TABLE `article`
  MODIFY `art_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `categorie`
--
ALTER TABLE `categorie`
  MODIFY `cat_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `comment`
--
ALTER TABLE `comment`
  MODIFY `com_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `article`
--
ALTER TABLE `article`
  ADD CONSTRAINT `fk_articles_users1` FOREIGN KEY (`art_user_id`) REFERENCES `user` (`user_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Ketidakleluasaan untuk tabel `article_has_categorie`
--
ALTER TABLE `article_has_categorie`
  ADD CONSTRAINT `fk_articles_has_categories_articles` FOREIGN KEY (`articles_idarticles`) REFERENCES `article` (`art_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_articles_has_categories_categories1` FOREIGN KEY (`categories_idcategories`) REFERENCES `categorie` (`cat_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Ketidakleluasaan untuk tabel `categorie`
--
ALTER TABLE `categorie`
  ADD CONSTRAINT `fk_categories_categories1` FOREIGN KEY (`cat_categories_id`) REFERENCES `categorie` (`cat_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Ketidakleluasaan untuk tabel `comment`
--
ALTER TABLE `comment`
  ADD CONSTRAINT `fk_comment_article1` FOREIGN KEY (`com_article_art_id`) REFERENCES `article` (`art_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
