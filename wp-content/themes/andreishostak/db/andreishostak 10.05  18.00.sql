-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Май 10 2017 г., 18:06
-- Версия сервера: 5.6.34
-- Версия PHP: 5.6.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `andreishostak`
--

-- --------------------------------------------------------

--
-- Структура таблицы `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_links`
--

CREATE TABLE `wp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://andrei', 'yes'),
(2, 'home', 'http://andrei', 'yes'),
(3, 'blogname', 'andreishostak', 'yes'),
(4, 'blogdescription', 'Ещё один сайт на WordPress', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'a.s.shostak@gmail.com', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '0', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '1', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'd.m.Y', 'yes'),
(24, 'time_format', 'H:i', 'yes'),
(25, 'links_updated_date_format', 'd.m.Y H:i', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:87:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:12:\"robots\\.txt$\";s:18:\"index.php?robots=1\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:27:\"[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\"[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\"[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"([^/]+)/embed/?$\";s:37:\"index.php?name=$matches[1]&embed=true\";s:20:\"([^/]+)/trackback/?$\";s:31:\"index.php?name=$matches[1]&tb=1\";s:40:\"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:35:\"([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:28:\"([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&paged=$matches[2]\";s:35:\"([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&cpage=$matches[2]\";s:24:\"([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?name=$matches[1]&page=$matches[2]\";s:16:\"[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:26:\"[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:46:\"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:22:\"[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:1:{i:0;s:22:\"cyr3lat/cyr-to-lat.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '3', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'andreishostak', 'yes'),
(41, 'stylesheet', 'andreishostak', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '38590', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '1', 'yes'),
(52, 'default_link_category', '2', 'yes'),
(53, 'show_on_front', 'posts', 'yes'),
(54, 'tag_base', '', 'yes'),
(55, 'show_avatars', '1', 'yes'),
(56, 'avatar_rating', 'G', 'yes'),
(57, 'upload_url_path', '', 'yes'),
(58, 'thumbnail_size_w', '150', 'yes'),
(59, 'thumbnail_size_h', '150', 'yes'),
(60, 'thumbnail_crop', '1', 'yes'),
(61, 'medium_size_w', '300', 'yes'),
(62, 'medium_size_h', '300', 'yes'),
(63, 'avatar_default', 'mystery', 'yes'),
(64, 'large_size_w', '1024', 'yes'),
(65, 'large_size_h', '1024', 'yes'),
(66, 'image_default_link_type', 'none', 'yes'),
(67, 'image_default_size', '', 'yes'),
(68, 'image_default_align', '', 'yes'),
(69, 'close_comments_for_old_posts', '0', 'yes'),
(70, 'close_comments_days_old', '14', 'yes'),
(71, 'thread_comments', '1', 'yes'),
(72, 'thread_comments_depth', '5', 'yes'),
(73, 'page_comments', '0', 'yes'),
(74, 'comments_per_page', '50', 'yes'),
(75, 'default_comments_page', 'newest', 'yes'),
(76, 'comment_order', 'asc', 'yes'),
(77, 'sticky_posts', 'a:0:{}', 'yes'),
(78, 'widget_categories', 'a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'widget_text', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(80, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(81, 'uninstall_plugins', 'a:0:{}', 'no'),
(82, 'timezone_string', '', 'yes'),
(83, 'page_for_posts', '0', 'yes'),
(84, 'page_on_front', '0', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'initial_db_version', '38590', 'yes'),
(92, 'wp_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(93, 'fresh_site', '0', 'yes'),
(94, 'WPLANG', 'ru_RU', 'yes'),
(95, 'widget_search', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(96, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(97, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(98, 'widget_archives', 'a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(99, 'widget_meta', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(100, 'sidebars_widgets', 'a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:18:\"orphaned_widgets_1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:13:\"array_version\";i:3;}', 'yes'),
(101, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(102, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(103, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(104, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(105, 'cron', 'a:4:{i:1494445952;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1494489201;a:1:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1494506126;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}s:7:\"version\";i:2;}', 'yes'),
(106, 'nonce_key', '5I;=XRyj>lv#b%;{T<(.&g/| <mnKq1:m8G}ZA3]q`g6^ AY>*^uDa2KT>QAm3Bf', 'no'),
(107, 'nonce_salt', '8,U53]w)!1vlhQ~;sz(&X}zT4MF$-k, Cpc|tf5MrxhSAmdJ_]7q.T5$}vprK>~X', 'no'),
(108, 'theme_mods_twentyseventeen', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1494143604;s:4:\"data\";a:4:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:9:\"sidebar-2\";a:0:{}s:9:\"sidebar-3\";a:0:{}}}}', 'yes'),
(119, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:65:\"https://downloads.wordpress.org/release/ru_RU/wordpress-4.7.4.zip\";s:6:\"locale\";s:5:\"ru_RU\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:65:\"https://downloads.wordpress.org/release/ru_RU/wordpress-4.7.4.zip\";s:10:\"no_content\";b:0;s:11:\"new_bundled\";b:0;s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"4.7.4\";s:7:\"version\";s:5:\"4.7.4\";s:11:\"php_version\";s:5:\"5.2.4\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"4.7\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1494418069;s:15:\"version_checked\";s:5:\"4.7.4\";s:12:\"translations\";a:0:{}}', 'no'),
(120, 'auth_key', 'mw})Gm;mv+.9MWb$uMgkV#6Ww#(Z;km0sy`5[{jUEIdl!LTqN3Vfv,-F*H}&>@Lq', 'no'),
(121, 'auth_salt', '&io9/{BE1BLW~n@GrI*:)g=8}%Mg.KSD lI[cwE!h(:<V90<W]o[PwhP_VSTxkfD', 'no'),
(122, 'logged_in_key', '>PkH;0e=_q1i<N~0D^ybqMQMRL}k{A;j`Ro[;$ ?n;6)HZL4vy9Jq%R, *A0V%mh', 'no'),
(123, 'logged_in_salt', '+oZm}md;@k<lr;~zN0MEivh[Cc<r39j$x$}S(L<aXhltpj{Y+FdcGYF|K:Rj8$kY', 'no'),
(125, '_site_transient_update_themes', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1494418075;s:7:\"checked\";a:4:{s:13:\"andreishostak\";s:5:\"1.0.0\";s:13:\"twentyfifteen\";s:3:\"1.7\";s:15:\"twentyseventeen\";s:3:\"1.2\";s:13:\"twentysixteen\";s:3:\"1.3\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}}', 'no'),
(127, '_site_transient_timeout_browser_88d9c15ba291b84e68686d373c4b6eb9', '1494748371', 'no'),
(128, '_site_transient_browser_88d9c15ba291b84e68686d373c4b6eb9', 'a:9:{s:8:\"platform\";s:7:\"Windows\";s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:12:\"55.0.2883.75\";s:10:\"update_url\";s:28:\"http://www.google.com/chrome\";s:7:\"img_src\";s:49:\"http://s.wordpress.org/images/browsers/chrome.png\";s:11:\"img_src_ssl\";s:48:\"https://wordpress.org/images/browsers/chrome.png\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;}', 'no'),
(129, 'can_compress_scripts', '1', 'no'),
(148, 'current_theme', 'andreishostak', 'yes'),
(149, 'theme_mods_andreishostak', 'a:4:{i:0;b:0;s:18:\"custom_css_post_id\";i:-1;s:11:\"custom_logo\";i:56;s:18:\"nav_menu_locations\";a:2:{s:7:\"primary\";i:4;s:9:\"portfolio\";i:16;}}', 'yes'),
(150, 'theme_switched', '', 'yes'),
(151, 'recently_activated', 'a:0:{}', 'yes'),
(160, '_site_transient_timeout_browser_879d478c3faf161a652d4329309fc3d3', '1494771311', 'no'),
(161, '_site_transient_browser_879d478c3faf161a652d4329309fc3d3', 'a:9:{s:8:\"platform\";s:7:\"Windows\";s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:12:\"58.0.3029.96\";s:10:\"update_url\";s:28:\"http://www.google.com/chrome\";s:7:\"img_src\";s:49:\"http://s.wordpress.org/images/browsers/chrome.png\";s:11:\"img_src_ssl\";s:48:\"https://wordpress.org/images/browsers/chrome.png\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;}', 'no'),
(167, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}', 'yes'),
(202, '_site_transient_timeout_browser_e6c1a15f8427769605a8fb40d5d7a194', '1494955010', 'no'),
(203, '_site_transient_browser_e6c1a15f8427769605a8fb40d5d7a194', 'a:9:{s:8:\"platform\";s:7:\"Windows\";s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:13:\"51.0.2704.106\";s:10:\"update_url\";s:28:\"http://www.google.com/chrome\";s:7:\"img_src\";s:49:\"http://s.wordpress.org/images/browsers/chrome.png\";s:11:\"img_src_ssl\";s:48:\"https://wordpress.org/images/browsers/chrome.png\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;}', 'no'),
(216, '_transient_timeout_plugin_slugs', '1494504497', 'no'),
(217, '_transient_plugin_slugs', 'a:3:{i:0;s:19:\"akismet/akismet.php\";i:1;s:22:\"cyr3lat/cyr-to-lat.php\";i:2;s:9:\"hello.php\";}', 'no'),
(244, '_transient_timeout_dash_f69de0bbfe7eaa113146875f40c02000', '1494459600', 'no'),
(245, '_transient_dash_f69de0bbfe7eaa113146875f40c02000', '<div class=\"rss-widget\"><p><strong>Ошибка RSS:</strong> WP HTTP Error: cURL error 7: Failed to connect to wordpress.org port 80: Timed out</p></div><div class=\"rss-widget\"><p><strong>Ошибка RSS:</strong> WP HTTP Error: cURL error 7: Failed to connect to planet.wordpress.org port 443: Timed out</p></div><div class=\"rss-widget\"><ul></ul></div>', 'no'),
(246, '_site_transient_timeout_poptags_40cd750bba9870f18aada2478b24840a', '1494428851', 'no'),
(247, '_site_transient_poptags_40cd750bba9870f18aada2478b24840a', 'O:8:\"stdClass\":100:{s:6:\"widget\";a:3:{s:4:\"name\";s:6:\"widget\";s:4:\"slug\";s:6:\"widget\";s:5:\"count\";i:4335;}s:4:\"post\";a:3:{s:4:\"name\";s:4:\"post\";s:4:\"slug\";s:4:\"post\";s:5:\"count\";i:2476;}s:5:\"admin\";a:3:{s:4:\"name\";s:5:\"admin\";s:4:\"slug\";s:5:\"admin\";s:5:\"count\";i:2344;}s:11:\"woocommerce\";a:3:{s:4:\"name\";s:11:\"woocommerce\";s:4:\"slug\";s:11:\"woocommerce\";s:5:\"count\";i:2057;}s:5:\"posts\";a:3:{s:4:\"name\";s:5:\"posts\";s:4:\"slug\";s:5:\"posts\";s:5:\"count\";i:1818;}s:8:\"comments\";a:3:{s:4:\"name\";s:8:\"comments\";s:4:\"slug\";s:8:\"comments\";s:5:\"count\";i:1578;}s:9:\"shortcode\";a:3:{s:4:\"name\";s:9:\"shortcode\";s:4:\"slug\";s:9:\"shortcode\";s:5:\"count\";i:1545;}s:7:\"twitter\";a:3:{s:4:\"name\";s:7:\"twitter\";s:4:\"slug\";s:7:\"twitter\";s:5:\"count\";i:1427;}s:6:\"google\";a:3:{s:4:\"name\";s:6:\"google\";s:4:\"slug\";s:6:\"google\";s:5:\"count\";i:1329;}s:6:\"images\";a:3:{s:4:\"name\";s:6:\"images\";s:4:\"slug\";s:6:\"images\";s:5:\"count\";i:1319;}s:8:\"facebook\";a:3:{s:4:\"name\";s:8:\"facebook\";s:4:\"slug\";s:8:\"facebook\";s:5:\"count\";i:1306;}s:7:\"sidebar\";a:3:{s:4:\"name\";s:7:\"sidebar\";s:4:\"slug\";s:7:\"sidebar\";s:5:\"count\";i:1265;}s:5:\"image\";a:3:{s:4:\"name\";s:5:\"image\";s:4:\"slug\";s:5:\"image\";s:5:\"count\";i:1257;}s:3:\"seo\";a:3:{s:4:\"name\";s:3:\"seo\";s:4:\"slug\";s:3:\"seo\";s:5:\"count\";i:1096;}s:4:\"page\";a:3:{s:4:\"name\";s:4:\"page\";s:4:\"slug\";s:4:\"page\";s:5:\"count\";i:1036;}s:7:\"gallery\";a:3:{s:4:\"name\";s:7:\"gallery\";s:4:\"slug\";s:7:\"gallery\";s:5:\"count\";i:1035;}s:6:\"social\";a:3:{s:4:\"name\";s:6:\"social\";s:4:\"slug\";s:6:\"social\";s:5:\"count\";i:981;}s:5:\"email\";a:3:{s:4:\"name\";s:5:\"email\";s:4:\"slug\";s:5:\"email\";s:5:\"count\";i:921;}s:5:\"links\";a:3:{s:4:\"name\";s:5:\"links\";s:4:\"slug\";s:5:\"links\";s:5:\"count\";i:811;}s:9:\"ecommerce\";a:3:{s:4:\"name\";s:9:\"ecommerce\";s:4:\"slug\";s:9:\"ecommerce\";s:5:\"count\";i:790;}s:5:\"login\";a:3:{s:4:\"name\";s:5:\"login\";s:4:\"slug\";s:5:\"login\";s:5:\"count\";i:783;}s:7:\"widgets\";a:3:{s:4:\"name\";s:7:\"widgets\";s:4:\"slug\";s:7:\"widgets\";s:5:\"count\";i:761;}s:5:\"video\";a:3:{s:4:\"name\";s:5:\"video\";s:4:\"slug\";s:5:\"video\";s:5:\"count\";i:755;}s:3:\"rss\";a:3:{s:4:\"name\";s:3:\"rss\";s:4:\"slug\";s:3:\"rss\";s:5:\"count\";i:665;}s:10:\"buddypress\";a:3:{s:4:\"name\";s:10:\"buddypress\";s:4:\"slug\";s:10:\"buddypress\";s:5:\"count\";i:652;}s:7:\"content\";a:3:{s:4:\"name\";s:7:\"content\";s:4:\"slug\";s:7:\"content\";s:5:\"count\";i:648;}s:4:\"spam\";a:3:{s:4:\"name\";s:4:\"spam\";s:4:\"slug\";s:4:\"spam\";s:5:\"count\";i:643;}s:5:\"pages\";a:3:{s:4:\"name\";s:5:\"pages\";s:4:\"slug\";s:5:\"pages\";s:5:\"count\";i:639;}s:6:\"jquery\";a:3:{s:4:\"name\";s:6:\"jquery\";s:4:\"slug\";s:6:\"jquery\";s:5:\"count\";i:634;}s:8:\"security\";a:3:{s:4:\"name\";s:8:\"security\";s:4:\"slug\";s:8:\"security\";s:5:\"count\";i:618;}s:6:\"slider\";a:3:{s:4:\"name\";s:6:\"slider\";s:4:\"slug\";s:6:\"slider\";s:5:\"count\";i:593;}s:4:\"ajax\";a:3:{s:4:\"name\";s:4:\"ajax\";s:4:\"slug\";s:4:\"ajax\";s:5:\"count\";i:589;}s:5:\"media\";a:3:{s:4:\"name\";s:5:\"media\";s:4:\"slug\";s:5:\"media\";s:5:\"count\";i:588;}s:8:\"category\";a:3:{s:4:\"name\";s:8:\"category\";s:4:\"slug\";s:8:\"category\";s:5:\"count\";i:571;}s:4:\"feed\";a:3:{s:4:\"name\";s:4:\"feed\";s:4:\"slug\";s:4:\"feed\";s:5:\"count\";i:570;}s:6:\"search\";a:3:{s:4:\"name\";s:6:\"search\";s:4:\"slug\";s:6:\"search\";s:5:\"count\";i:565;}s:9:\"analytics\";a:3:{s:4:\"name\";s:9:\"analytics\";s:4:\"slug\";s:9:\"analytics\";s:5:\"count\";i:564;}s:10:\"e-commerce\";a:3:{s:4:\"name\";s:10:\"e-commerce\";s:4:\"slug\";s:10:\"e-commerce\";s:5:\"count\";i:553;}s:4:\"menu\";a:3:{s:4:\"name\";s:4:\"menu\";s:4:\"slug\";s:4:\"menu\";s:5:\"count\";i:544;}s:5:\"embed\";a:3:{s:4:\"name\";s:5:\"embed\";s:4:\"slug\";s:5:\"embed\";s:5:\"count\";i:534;}s:10:\"javascript\";a:3:{s:4:\"name\";s:10:\"javascript\";s:4:\"slug\";s:10:\"javascript\";s:5:\"count\";i:526;}s:4:\"link\";a:3:{s:4:\"name\";s:4:\"link\";s:4:\"slug\";s:4:\"link\";s:5:\"count\";i:517;}s:4:\"form\";a:3:{s:4:\"name\";s:4:\"form\";s:4:\"slug\";s:4:\"form\";s:5:\"count\";i:513;}s:3:\"css\";a:3:{s:4:\"name\";s:3:\"css\";s:4:\"slug\";s:3:\"css\";s:5:\"count\";i:500;}s:5:\"share\";a:3:{s:4:\"name\";s:5:\"share\";s:4:\"slug\";s:5:\"share\";s:5:\"count\";i:494;}s:7:\"comment\";a:3:{s:4:\"name\";s:7:\"comment\";s:4:\"slug\";s:7:\"comment\";s:5:\"count\";i:488;}s:7:\"youtube\";a:3:{s:4:\"name\";s:7:\"youtube\";s:4:\"slug\";s:7:\"youtube\";s:5:\"count\";i:482;}s:5:\"theme\";a:3:{s:4:\"name\";s:5:\"theme\";s:4:\"slug\";s:5:\"theme\";s:5:\"count\";i:476;}s:6:\"custom\";a:3:{s:4:\"name\";s:6:\"custom\";s:4:\"slug\";s:6:\"custom\";s:5:\"count\";i:464;}s:10:\"categories\";a:3:{s:4:\"name\";s:10:\"categories\";s:4:\"slug\";s:10:\"categories\";s:5:\"count\";i:462;}s:10:\"responsive\";a:3:{s:4:\"name\";s:10:\"responsive\";s:4:\"slug\";s:10:\"responsive\";s:5:\"count\";i:456;}s:9:\"dashboard\";a:3:{s:4:\"name\";s:9:\"dashboard\";s:4:\"slug\";s:9:\"dashboard\";s:5:\"count\";i:454;}s:3:\"ads\";a:3:{s:4:\"name\";s:3:\"ads\";s:4:\"slug\";s:3:\"ads\";s:5:\"count\";i:438;}s:6:\"button\";a:3:{s:4:\"name\";s:6:\"button\";s:4:\"slug\";s:6:\"button\";s:5:\"count\";i:434;}s:4:\"tags\";a:3:{s:4:\"name\";s:4:\"tags\";s:4:\"slug\";s:4:\"tags\";s:5:\"count\";i:431;}s:9:\"affiliate\";a:3:{s:4:\"name\";s:9:\"affiliate\";s:4:\"slug\";s:9:\"affiliate\";s:5:\"count\";i:431;}s:6:\"editor\";a:3:{s:4:\"name\";s:6:\"editor\";s:4:\"slug\";s:6:\"editor\";s:5:\"count\";i:423;}s:5:\"photo\";a:3:{s:4:\"name\";s:5:\"photo\";s:4:\"slug\";s:5:\"photo\";s:5:\"count\";i:417;}s:4:\"user\";a:3:{s:4:\"name\";s:4:\"user\";s:4:\"slug\";s:4:\"user\";s:5:\"count\";i:409;}s:12:\"contact-form\";a:3:{s:4:\"name\";s:12:\"contact form\";s:4:\"slug\";s:12:\"contact-form\";s:5:\"count\";i:405;}s:9:\"slideshow\";a:3:{s:4:\"name\";s:9:\"slideshow\";s:4:\"slug\";s:9:\"slideshow\";s:5:\"count\";i:402;}s:6:\"mobile\";a:3:{s:4:\"name\";s:6:\"mobile\";s:4:\"slug\";s:6:\"mobile\";s:5:\"count\";i:401;}s:5:\"stats\";a:3:{s:4:\"name\";s:5:\"stats\";s:4:\"slug\";s:5:\"stats\";s:5:\"count\";i:398;}s:5:\"users\";a:3:{s:4:\"name\";s:5:\"users\";s:4:\"slug\";s:5:\"users\";s:5:\"count\";i:393;}s:7:\"contact\";a:3:{s:4:\"name\";s:7:\"contact\";s:4:\"slug\";s:7:\"contact\";s:5:\"count\";i:392;}s:6:\"photos\";a:3:{s:4:\"name\";s:6:\"photos\";s:4:\"slug\";s:6:\"photos\";s:5:\"count\";i:392;}s:10:\"statistics\";a:3:{s:4:\"name\";s:10:\"statistics\";s:4:\"slug\";s:10:\"statistics\";s:5:\"count\";i:374;}s:3:\"api\";a:3:{s:4:\"name\";s:3:\"api\";s:4:\"slug\";s:3:\"api\";s:5:\"count\";i:370;}s:10:\"navigation\";a:3:{s:4:\"name\";s:10:\"navigation\";s:4:\"slug\";s:10:\"navigation\";s:5:\"count\";i:363;}s:6:\"events\";a:3:{s:4:\"name\";s:6:\"events\";s:4:\"slug\";s:6:\"events\";s:5:\"count\";i:358;}s:4:\"news\";a:3:{s:4:\"name\";s:4:\"news\";s:4:\"slug\";s:4:\"news\";s:5:\"count\";i:348;}s:7:\"plugins\";a:3:{s:4:\"name\";s:7:\"plugins\";s:4:\"slug\";s:7:\"plugins\";s:5:\"count\";i:330;}s:8:\"calendar\";a:3:{s:4:\"name\";s:8:\"calendar\";s:4:\"slug\";s:8:\"calendar\";s:5:\"count\";i:330;}s:12:\"social-media\";a:3:{s:4:\"name\";s:12:\"social media\";s:4:\"slug\";s:12:\"social-media\";s:5:\"count\";i:329;}s:9:\"multisite\";a:3:{s:4:\"name\";s:9:\"multisite\";s:4:\"slug\";s:9:\"multisite\";s:5:\"count\";i:327;}s:10:\"shortcodes\";a:3:{s:4:\"name\";s:10:\"shortcodes\";s:4:\"slug\";s:10:\"shortcodes\";s:5:\"count\";i:321;}s:4:\"code\";a:3:{s:4:\"name\";s:4:\"code\";s:4:\"slug\";s:4:\"code\";s:5:\"count\";i:320;}s:4:\"meta\";a:3:{s:4:\"name\";s:4:\"meta\";s:4:\"slug\";s:4:\"meta\";s:5:\"count\";i:319;}s:4:\"list\";a:3:{s:4:\"name\";s:4:\"list\";s:4:\"slug\";s:4:\"list\";s:5:\"count\";i:317;}s:3:\"url\";a:3:{s:4:\"name\";s:3:\"url\";s:4:\"slug\";s:3:\"url\";s:5:\"count\";i:314;}s:7:\"payment\";a:3:{s:4:\"name\";s:7:\"payment\";s:4:\"slug\";s:7:\"payment\";s:5:\"count\";i:310;}s:10:\"newsletter\";a:3:{s:4:\"name\";s:10:\"newsletter\";s:4:\"slug\";s:10:\"newsletter\";s:5:\"count\";i:308;}s:6:\"simple\";a:3:{s:4:\"name\";s:6:\"simple\";s:4:\"slug\";s:6:\"simple\";s:5:\"count\";i:293;}s:3:\"tag\";a:3:{s:4:\"name\";s:3:\"tag\";s:4:\"slug\";s:3:\"tag\";s:5:\"count\";i:291;}s:9:\"marketing\";a:3:{s:4:\"name\";s:9:\"marketing\";s:4:\"slug\";s:9:\"marketing\";s:5:\"count\";i:291;}s:5:\"popup\";a:3:{s:4:\"name\";s:5:\"popup\";s:4:\"slug\";s:5:\"popup\";s:5:\"count\";i:289;}s:16:\"custom-post-type\";a:3:{s:4:\"name\";s:16:\"custom post type\";s:4:\"slug\";s:16:\"custom-post-type\";s:5:\"count\";i:286;}s:8:\"redirect\";a:3:{s:4:\"name\";s:8:\"redirect\";s:4:\"slug\";s:8:\"redirect\";s:5:\"count\";i:283;}s:4:\"chat\";a:3:{s:4:\"name\";s:4:\"chat\";s:4:\"slug\";s:4:\"chat\";s:5:\"count\";i:282;}s:11:\"advertising\";a:3:{s:4:\"name\";s:11:\"advertising\";s:4:\"slug\";s:11:\"advertising\";s:5:\"count\";i:280;}s:6:\"author\";a:3:{s:4:\"name\";s:6:\"author\";s:4:\"slug\";s:6:\"author\";s:5:\"count\";i:278;}s:4:\"html\";a:3:{s:4:\"name\";s:4:\"html\";s:4:\"slug\";s:4:\"html\";s:5:\"count\";i:271;}s:7:\"adsense\";a:3:{s:4:\"name\";s:7:\"adsense\";s:4:\"slug\";s:7:\"adsense\";s:5:\"count\";i:270;}s:5:\"forms\";a:3:{s:4:\"name\";s:5:\"forms\";s:4:\"slug\";s:5:\"forms\";s:5:\"count\";i:267;}s:8:\"lightbox\";a:3:{s:4:\"name\";s:8:\"lightbox\";s:4:\"slug\";s:8:\"lightbox\";s:5:\"count\";i:267;}s:15:\"payment-gateway\";a:3:{s:4:\"name\";s:15:\"payment gateway\";s:4:\"slug\";s:15:\"payment-gateway\";s:5:\"count\";i:263;}s:12:\"notification\";a:3:{s:4:\"name\";s:12:\"notification\";s:4:\"slug\";s:12:\"notification\";s:5:\"count\";i:262;}s:14:\"administration\";a:3:{s:4:\"name\";s:14:\"administration\";s:4:\"slug\";s:14:\"administration\";s:5:\"count\";i:261;}s:7:\"captcha\";a:3:{s:4:\"name\";s:7:\"captcha\";s:4:\"slug\";s:7:\"captcha\";s:5:\"count\";i:260;}s:7:\"tinymce\";a:3:{s:4:\"name\";s:7:\"tinyMCE\";s:4:\"slug\";s:7:\"tinymce\";s:5:\"count\";i:260;}}', 'no'),
(249, '_site_transient_timeout_theme_roots', '1494419872', 'no'),
(250, '_site_transient_theme_roots', 'a:4:{s:13:\"andreishostak\";s:7:\"/themes\";s:13:\"twentyfifteen\";s:7:\"/themes\";s:15:\"twentyseventeen\";s:7:\"/themes\";s:13:\"twentysixteen\";s:7:\"/themes\";}', 'no'),
(251, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1494418080;s:7:\"checked\";a:3:{s:19:\"akismet/akismet.php\";s:3:\"3.3\";s:22:\"cyr3lat/cyr-to-lat.php\";s:3:\"3.5\";s:9:\"hello.php\";s:3:\"1.6\";}s:8:\"response\";a:1:{s:19:\"akismet/akismet.php\";O:8:\"stdClass\":8:{s:2:\"id\";s:2:\"15\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:5:\"3.3.1\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/akismet.3.3.1.zip\";s:6:\"tested\";s:5:\"4.7.4\";s:13:\"compatibility\";O:8:\"stdClass\":1:{s:6:\"scalar\";O:8:\"stdClass\":1:{s:6:\"scalar\";b:0;}}}}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:2:{s:22:\"cyr3lat/cyr-to-lat.php\";O:8:\"stdClass\":6:{s:2:\"id\";s:5:\"23472\";s:4:\"slug\";s:7:\"cyr3lat\";s:6:\"plugin\";s:22:\"cyr3lat/cyr-to-lat.php\";s:11:\"new_version\";s:3:\"3.5\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/cyr3lat/\";s:7:\"package\";s:54:\"https://downloads.wordpress.org/plugin/cyr3lat.3.5.zip\";}s:9:\"hello.php\";O:8:\"stdClass\":6:{s:2:\"id\";s:4:\"3564\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:3:\"1.6\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/plugin/hello-dolly.1.6.zip\";}}}', 'no'),
(252, '_site_transient_timeout_available_translations', '1494428886', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(253, '_site_transient_available_translations', 'a:108:{s:2:\"af\";a:8:{s:8:\"language\";s:2:\"af\";s:7:\"version\";s:5:\"4.7.4\";s:7:\"updated\";s:19:\"2017-03-27 04:32:49\";s:12:\"english_name\";s:9:\"Afrikaans\";s:11:\"native_name\";s:9:\"Afrikaans\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.4/af.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"af\";i:2;s:3:\"afr\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"Gaan voort\";}}s:2:\"ar\";a:8:{s:8:\"language\";s:2:\"ar\";s:7:\"version\";s:5:\"4.7.4\";s:7:\"updated\";s:19:\"2017-01-26 15:49:08\";s:12:\"english_name\";s:6:\"Arabic\";s:11:\"native_name\";s:14:\"العربية\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.4/ar.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ar\";i:2;s:3:\"ara\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:16:\"المتابعة\";}}s:3:\"ary\";a:8:{s:8:\"language\";s:3:\"ary\";s:7:\"version\";s:5:\"4.7.4\";s:7:\"updated\";s:19:\"2017-01-26 15:42:35\";s:12:\"english_name\";s:15:\"Moroccan Arabic\";s:11:\"native_name\";s:31:\"العربية المغربية\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.4/ary.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ar\";i:3;s:3:\"ary\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:16:\"المتابعة\";}}s:2:\"as\";a:8:{s:8:\"language\";s:2:\"as\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-11-22 18:59:07\";s:12:\"english_name\";s:8:\"Assamese\";s:11:\"native_name\";s:21:\"অসমীয়া\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/as.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"as\";i:2;s:3:\"asm\";i:3;s:3:\"asm\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:0:\"\";}}s:3:\"azb\";a:8:{s:8:\"language\";s:3:\"azb\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-09-12 20:34:31\";s:12:\"english_name\";s:17:\"South Azerbaijani\";s:11:\"native_name\";s:29:\"گؤنئی آذربایجان\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/azb.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"az\";i:3;s:3:\"azb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:2:\"az\";a:8:{s:8:\"language\";s:2:\"az\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-11-06 00:09:27\";s:12:\"english_name\";s:11:\"Azerbaijani\";s:11:\"native_name\";s:16:\"Azərbaycan dili\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/az.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"az\";i:2;s:3:\"aze\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:5:\"Davam\";}}s:3:\"bel\";a:8:{s:8:\"language\";s:3:\"bel\";s:7:\"version\";s:5:\"4.7.4\";s:7:\"updated\";s:19:\"2017-05-09 11:39:31\";s:12:\"english_name\";s:10:\"Belarusian\";s:11:\"native_name\";s:29:\"Беларуская мова\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.4/bel.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"be\";i:2;s:3:\"bel\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Працягнуць\";}}s:5:\"bg_BG\";a:8:{s:8:\"language\";s:5:\"bg_BG\";s:7:\"version\";s:5:\"4.7.4\";s:7:\"updated\";s:19:\"2017-03-06 09:18:57\";s:12:\"english_name\";s:9:\"Bulgarian\";s:11:\"native_name\";s:18:\"Български\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.4/bg_BG.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"bg\";i:2;s:3:\"bul\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"Напред\";}}s:5:\"bn_BD\";a:8:{s:8:\"language\";s:5:\"bn_BD\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-04 16:58:43\";s:12:\"english_name\";s:7:\"Bengali\";s:11:\"native_name\";s:15:\"বাংলা\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/bn_BD.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"bn\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:23:\"এগিয়ে চল.\";}}s:2:\"bo\";a:8:{s:8:\"language\";s:2:\"bo\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-09-05 09:44:12\";s:12:\"english_name\";s:7:\"Tibetan\";s:11:\"native_name\";s:21:\"བོད་ཡིག\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/bo.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"bo\";i:2;s:3:\"tib\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:24:\"མུ་མཐུད།\";}}s:5:\"bs_BA\";a:8:{s:8:\"language\";s:5:\"bs_BA\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-09-04 20:20:28\";s:12:\"english_name\";s:7:\"Bosnian\";s:11:\"native_name\";s:8:\"Bosanski\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/bs_BA.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"bs\";i:2;s:3:\"bos\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:7:\"Nastavi\";}}s:2:\"ca\";a:8:{s:8:\"language\";s:2:\"ca\";s:7:\"version\";s:5:\"4.7.4\";s:7:\"updated\";s:19:\"2017-03-05 11:34:47\";s:12:\"english_name\";s:7:\"Catalan\";s:11:\"native_name\";s:7:\"Català\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.4/ca.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ca\";i:2;s:3:\"cat\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continua\";}}s:3:\"ceb\";a:8:{s:8:\"language\";s:3:\"ceb\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-03-02 17:25:51\";s:12:\"english_name\";s:7:\"Cebuano\";s:11:\"native_name\";s:7:\"Cebuano\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/ceb.zip\";s:3:\"iso\";a:2:{i:2;s:3:\"ceb\";i:3;s:3:\"ceb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:7:\"Padayun\";}}s:5:\"cs_CZ\";a:8:{s:8:\"language\";s:5:\"cs_CZ\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-12 08:46:26\";s:12:\"english_name\";s:5:\"Czech\";s:11:\"native_name\";s:12:\"Čeština‎\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/cs_CZ.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"cs\";i:2;s:3:\"ces\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:11:\"Pokračovat\";}}s:2:\"cy\";a:8:{s:8:\"language\";s:2:\"cy\";s:7:\"version\";s:5:\"4.7.4\";s:7:\"updated\";s:19:\"2017-01-26 15:49:29\";s:12:\"english_name\";s:5:\"Welsh\";s:11:\"native_name\";s:7:\"Cymraeg\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.4/cy.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"cy\";i:2;s:3:\"cym\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Parhau\";}}s:5:\"da_DK\";a:8:{s:8:\"language\";s:5:\"da_DK\";s:7:\"version\";s:5:\"4.7.4\";s:7:\"updated\";s:19:\"2017-04-05 09:50:06\";s:12:\"english_name\";s:6:\"Danish\";s:11:\"native_name\";s:5:\"Dansk\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.4/da_DK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"da\";i:2;s:3:\"dan\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"Forts&#230;t\";}}s:14:\"de_CH_informal\";a:8:{s:8:\"language\";s:14:\"de_CH_informal\";s:7:\"version\";s:5:\"4.7.4\";s:7:\"updated\";s:19:\"2017-01-26 15:39:59\";s:12:\"english_name\";s:30:\"German (Switzerland, Informal)\";s:11:\"native_name\";s:21:\"Deutsch (Schweiz, Du)\";s:7:\"package\";s:73:\"https://downloads.wordpress.org/translation/core/4.7.4/de_CH_informal.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Weiter\";}}s:12:\"de_DE_formal\";a:8:{s:8:\"language\";s:12:\"de_DE_formal\";s:7:\"version\";s:5:\"4.7.4\";s:7:\"updated\";s:19:\"2017-04-28 14:35:15\";s:12:\"english_name\";s:15:\"German (Formal)\";s:11:\"native_name\";s:13:\"Deutsch (Sie)\";s:7:\"package\";s:71:\"https://downloads.wordpress.org/translation/core/4.7.4/de_DE_formal.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Weiter\";}}s:5:\"de_CH\";a:8:{s:8:\"language\";s:5:\"de_CH\";s:7:\"version\";s:5:\"4.7.4\";s:7:\"updated\";s:19:\"2017-01-26 15:40:03\";s:12:\"english_name\";s:20:\"German (Switzerland)\";s:11:\"native_name\";s:17:\"Deutsch (Schweiz)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.4/de_CH.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Weiter\";}}s:5:\"de_DE\";a:8:{s:8:\"language\";s:5:\"de_DE\";s:7:\"version\";s:5:\"4.7.4\";s:7:\"updated\";s:19:\"2017-03-18 13:57:42\";s:12:\"english_name\";s:6:\"German\";s:11:\"native_name\";s:7:\"Deutsch\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.4/de_DE.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Weiter\";}}s:3:\"dzo\";a:8:{s:8:\"language\";s:3:\"dzo\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-06-29 08:59:03\";s:12:\"english_name\";s:8:\"Dzongkha\";s:11:\"native_name\";s:18:\"རྫོང་ཁ\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/dzo.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"dz\";i:2;s:3:\"dzo\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:0:\"\";}}s:2:\"el\";a:8:{s:8:\"language\";s:2:\"el\";s:7:\"version\";s:5:\"4.7.4\";s:7:\"updated\";s:19:\"2017-04-25 21:05:27\";s:12:\"english_name\";s:5:\"Greek\";s:11:\"native_name\";s:16:\"Ελληνικά\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.4/el.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"el\";i:2;s:3:\"ell\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:16:\"Συνέχεια\";}}s:5:\"en_AU\";a:8:{s:8:\"language\";s:5:\"en_AU\";s:7:\"version\";s:5:\"4.7.4\";s:7:\"updated\";s:19:\"2017-01-27 00:40:28\";s:12:\"english_name\";s:19:\"English (Australia)\";s:11:\"native_name\";s:19:\"English (Australia)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.4/en_AU.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"en_CA\";a:8:{s:8:\"language\";s:5:\"en_CA\";s:7:\"version\";s:5:\"4.7.4\";s:7:\"updated\";s:19:\"2017-01-26 15:49:34\";s:12:\"english_name\";s:16:\"English (Canada)\";s:11:\"native_name\";s:16:\"English (Canada)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.4/en_CA.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"en_NZ\";a:8:{s:8:\"language\";s:5:\"en_NZ\";s:7:\"version\";s:5:\"4.7.4\";s:7:\"updated\";s:19:\"2017-01-26 15:54:30\";s:12:\"english_name\";s:21:\"English (New Zealand)\";s:11:\"native_name\";s:21:\"English (New Zealand)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.4/en_NZ.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"en_ZA\";a:8:{s:8:\"language\";s:5:\"en_ZA\";s:7:\"version\";s:5:\"4.7.4\";s:7:\"updated\";s:19:\"2017-01-26 15:53:43\";s:12:\"english_name\";s:22:\"English (South Africa)\";s:11:\"native_name\";s:22:\"English (South Africa)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.4/en_ZA.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"en_GB\";a:8:{s:8:\"language\";s:5:\"en_GB\";s:7:\"version\";s:5:\"4.7.4\";s:7:\"updated\";s:19:\"2017-01-28 03:10:25\";s:12:\"english_name\";s:12:\"English (UK)\";s:11:\"native_name\";s:12:\"English (UK)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.4/en_GB.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:2:\"eo\";a:8:{s:8:\"language\";s:2:\"eo\";s:7:\"version\";s:5:\"4.7.4\";s:7:\"updated\";s:19:\"2017-05-04 18:08:49\";s:12:\"english_name\";s:9:\"Esperanto\";s:11:\"native_name\";s:9:\"Esperanto\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.4/eo.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"eo\";i:2;s:3:\"epo\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Daŭrigi\";}}s:5:\"es_AR\";a:8:{s:8:\"language\";s:5:\"es_AR\";s:7:\"version\";s:5:\"4.7.4\";s:7:\"updated\";s:19:\"2017-01-26 15:41:31\";s:12:\"english_name\";s:19:\"Spanish (Argentina)\";s:11:\"native_name\";s:21:\"Español de Argentina\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.4/es_AR.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"es\";i:2;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_MX\";a:8:{s:8:\"language\";s:5:\"es_MX\";s:7:\"version\";s:5:\"4.7.4\";s:7:\"updated\";s:19:\"2017-01-26 15:42:28\";s:12:\"english_name\";s:16:\"Spanish (Mexico)\";s:11:\"native_name\";s:19:\"Español de México\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.4/es_MX.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"es\";i:2;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_ES\";a:8:{s:8:\"language\";s:5:\"es_ES\";s:7:\"version\";s:5:\"4.7.4\";s:7:\"updated\";s:19:\"2017-04-23 11:29:34\";s:12:\"english_name\";s:15:\"Spanish (Spain)\";s:11:\"native_name\";s:8:\"Español\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.4/es_ES.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"es\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_VE\";a:8:{s:8:\"language\";s:5:\"es_VE\";s:7:\"version\";s:5:\"4.7.4\";s:7:\"updated\";s:19:\"2017-04-23 23:02:31\";s:12:\"english_name\";s:19:\"Spanish (Venezuela)\";s:11:\"native_name\";s:21:\"Español de Venezuela\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.4/es_VE.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"es\";i:2;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_PE\";a:8:{s:8:\"language\";s:5:\"es_PE\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-09-09 09:36:22\";s:12:\"english_name\";s:14:\"Spanish (Peru)\";s:11:\"native_name\";s:17:\"Español de Perú\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/es_PE.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"es\";i:2;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_CL\";a:8:{s:8:\"language\";s:5:\"es_CL\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-11-28 20:09:49\";s:12:\"english_name\";s:15:\"Spanish (Chile)\";s:11:\"native_name\";s:17:\"Español de Chile\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/es_CL.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"es\";i:2;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_CO\";a:8:{s:8:\"language\";s:5:\"es_CO\";s:7:\"version\";s:5:\"4.7.4\";s:7:\"updated\";s:19:\"2017-01-26 15:54:37\";s:12:\"english_name\";s:18:\"Spanish (Colombia)\";s:11:\"native_name\";s:20:\"Español de Colombia\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.4/es_CO.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"es\";i:2;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_GT\";a:8:{s:8:\"language\";s:5:\"es_GT\";s:7:\"version\";s:5:\"4.7.4\";s:7:\"updated\";s:19:\"2017-01-26 15:54:37\";s:12:\"english_name\";s:19:\"Spanish (Guatemala)\";s:11:\"native_name\";s:21:\"Español de Guatemala\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.4/es_GT.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"es\";i:2;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:2:\"et\";a:8:{s:8:\"language\";s:2:\"et\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-27 16:37:11\";s:12:\"english_name\";s:8:\"Estonian\";s:11:\"native_name\";s:5:\"Eesti\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/et.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"et\";i:2;s:3:\"est\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Jätka\";}}s:2:\"eu\";a:8:{s:8:\"language\";s:2:\"eu\";s:7:\"version\";s:5:\"4.7.4\";s:7:\"updated\";s:19:\"2017-01-26 15:54:33\";s:12:\"english_name\";s:6:\"Basque\";s:11:\"native_name\";s:7:\"Euskara\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.4/eu.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"eu\";i:2;s:3:\"eus\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Jarraitu\";}}s:5:\"fa_IR\";a:8:{s:8:\"language\";s:5:\"fa_IR\";s:7:\"version\";s:5:\"4.7.4\";s:7:\"updated\";s:19:\"2017-02-02 15:21:03\";s:12:\"english_name\";s:7:\"Persian\";s:11:\"native_name\";s:10:\"فارسی\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.4/fa_IR.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fa\";i:2;s:3:\"fas\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"ادامه\";}}s:2:\"fi\";a:8:{s:8:\"language\";s:2:\"fi\";s:7:\"version\";s:5:\"4.7.4\";s:7:\"updated\";s:19:\"2017-01-26 15:42:25\";s:12:\"english_name\";s:7:\"Finnish\";s:11:\"native_name\";s:5:\"Suomi\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.4/fi.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fi\";i:2;s:3:\"fin\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:5:\"Jatka\";}}s:5:\"fr_CA\";a:8:{s:8:\"language\";s:5:\"fr_CA\";s:7:\"version\";s:5:\"4.7.4\";s:7:\"updated\";s:19:\"2017-02-03 21:08:25\";s:12:\"english_name\";s:15:\"French (Canada)\";s:11:\"native_name\";s:19:\"Français du Canada\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.4/fr_CA.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fr\";i:2;s:3:\"fra\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuer\";}}s:5:\"fr_BE\";a:8:{s:8:\"language\";s:5:\"fr_BE\";s:7:\"version\";s:5:\"4.7.4\";s:7:\"updated\";s:19:\"2017-01-26 15:40:32\";s:12:\"english_name\";s:16:\"French (Belgium)\";s:11:\"native_name\";s:21:\"Français de Belgique\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.4/fr_BE.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fr\";i:2;s:3:\"fra\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuer\";}}s:5:\"fr_FR\";a:8:{s:8:\"language\";s:5:\"fr_FR\";s:7:\"version\";s:5:\"4.7.4\";s:7:\"updated\";s:19:\"2017-05-05 12:10:24\";s:12:\"english_name\";s:15:\"French (France)\";s:11:\"native_name\";s:9:\"Français\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.4/fr_FR.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"fr\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuer\";}}s:2:\"gd\";a:8:{s:8:\"language\";s:2:\"gd\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-08-23 17:41:37\";s:12:\"english_name\";s:15:\"Scottish Gaelic\";s:11:\"native_name\";s:9:\"Gàidhlig\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/gd.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"gd\";i:2;s:3:\"gla\";i:3;s:3:\"gla\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:15:\"Lean air adhart\";}}s:5:\"gl_ES\";a:8:{s:8:\"language\";s:5:\"gl_ES\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-26 15:40:27\";s:12:\"english_name\";s:8:\"Galician\";s:11:\"native_name\";s:6:\"Galego\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/gl_ES.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"gl\";i:2;s:3:\"glg\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:2:\"gu\";a:8:{s:8:\"language\";s:2:\"gu\";s:7:\"version\";s:5:\"4.7.4\";s:7:\"updated\";s:19:\"2017-04-21 14:17:42\";s:12:\"english_name\";s:8:\"Gujarati\";s:11:\"native_name\";s:21:\"ગુજરાતી\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.4/gu.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"gu\";i:2;s:3:\"guj\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:31:\"ચાલુ રાખવું\";}}s:3:\"haz\";a:8:{s:8:\"language\";s:3:\"haz\";s:7:\"version\";s:5:\"4.4.2\";s:7:\"updated\";s:19:\"2015-12-05 00:59:09\";s:12:\"english_name\";s:8:\"Hazaragi\";s:11:\"native_name\";s:15:\"هزاره گی\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.4.2/haz.zip\";s:3:\"iso\";a:1:{i:3;s:3:\"haz\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"ادامه\";}}s:5:\"he_IL\";a:8:{s:8:\"language\";s:5:\"he_IL\";s:7:\"version\";s:5:\"4.7.4\";s:7:\"updated\";s:19:\"2017-01-29 21:21:10\";s:12:\"english_name\";s:6:\"Hebrew\";s:11:\"native_name\";s:16:\"עִבְרִית\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.4/he_IL.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"he\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"המשך\";}}s:5:\"hi_IN\";a:8:{s:8:\"language\";s:5:\"hi_IN\";s:7:\"version\";s:5:\"4.7.4\";s:7:\"updated\";s:19:\"2017-05-01 10:53:22\";s:12:\"english_name\";s:5:\"Hindi\";s:11:\"native_name\";s:18:\"हिन्दी\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.4/hi_IN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"hi\";i:2;s:3:\"hin\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"जारी\";}}s:2:\"hr\";a:8:{s:8:\"language\";s:2:\"hr\";s:7:\"version\";s:5:\"4.7.4\";s:7:\"updated\";s:19:\"2017-03-28 13:34:22\";s:12:\"english_name\";s:8:\"Croatian\";s:11:\"native_name\";s:8:\"Hrvatski\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.4/hr.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"hr\";i:2;s:3:\"hrv\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:7:\"Nastavi\";}}s:5:\"hu_HU\";a:8:{s:8:\"language\";s:5:\"hu_HU\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-26 15:48:39\";s:12:\"english_name\";s:9:\"Hungarian\";s:11:\"native_name\";s:6:\"Magyar\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/hu_HU.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"hu\";i:2;s:3:\"hun\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"Folytatás\";}}s:2:\"hy\";a:8:{s:8:\"language\";s:2:\"hy\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-12-03 16:21:10\";s:12:\"english_name\";s:8:\"Armenian\";s:11:\"native_name\";s:14:\"Հայերեն\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/hy.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"hy\";i:2;s:3:\"hye\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Շարունակել\";}}s:5:\"id_ID\";a:8:{s:8:\"language\";s:5:\"id_ID\";s:7:\"version\";s:5:\"4.7.4\";s:7:\"updated\";s:19:\"2017-05-02 14:01:52\";s:12:\"english_name\";s:10:\"Indonesian\";s:11:\"native_name\";s:16:\"Bahasa Indonesia\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.4/id_ID.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"id\";i:2;s:3:\"ind\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Lanjutkan\";}}s:5:\"is_IS\";a:8:{s:8:\"language\";s:5:\"is_IS\";s:7:\"version\";s:5:\"4.7.4\";s:7:\"updated\";s:19:\"2017-04-13 13:55:54\";s:12:\"english_name\";s:9:\"Icelandic\";s:11:\"native_name\";s:9:\"Íslenska\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.4/is_IS.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"is\";i:2;s:3:\"isl\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Áfram\";}}s:5:\"it_IT\";a:8:{s:8:\"language\";s:5:\"it_IT\";s:7:\"version\";s:5:\"4.7.4\";s:7:\"updated\";s:19:\"2017-04-08 04:57:54\";s:12:\"english_name\";s:7:\"Italian\";s:11:\"native_name\";s:8:\"Italiano\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.4/it_IT.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"it\";i:2;s:3:\"ita\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continua\";}}s:2:\"ja\";a:8:{s:8:\"language\";s:2:\"ja\";s:7:\"version\";s:5:\"4.7.4\";s:7:\"updated\";s:19:\"2017-05-02 05:13:51\";s:12:\"english_name\";s:8:\"Japanese\";s:11:\"native_name\";s:9:\"日本語\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.4/ja.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"ja\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"続ける\";}}s:5:\"ka_GE\";a:8:{s:8:\"language\";s:5:\"ka_GE\";s:7:\"version\";s:5:\"4.7.4\";s:7:\"updated\";s:19:\"2017-04-05 06:17:00\";s:12:\"english_name\";s:8:\"Georgian\";s:11:\"native_name\";s:21:\"ქართული\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.4/ka_GE.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ka\";i:2;s:3:\"kat\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:30:\"გაგრძელება\";}}s:3:\"kab\";a:8:{s:8:\"language\";s:3:\"kab\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-26 15:39:13\";s:12:\"english_name\";s:6:\"Kabyle\";s:11:\"native_name\";s:9:\"Taqbaylit\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/kab.zip\";s:3:\"iso\";a:2:{i:2;s:3:\"kab\";i:3;s:3:\"kab\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Kemmel\";}}s:2:\"km\";a:8:{s:8:\"language\";s:2:\"km\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-12-07 02:07:59\";s:12:\"english_name\";s:5:\"Khmer\";s:11:\"native_name\";s:27:\"ភាសាខ្មែរ\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/km.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"km\";i:2;s:3:\"khm\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"បន្ត\";}}s:5:\"ko_KR\";a:8:{s:8:\"language\";s:5:\"ko_KR\";s:7:\"version\";s:5:\"4.7.4\";s:7:\"updated\";s:19:\"2017-04-18 05:09:08\";s:12:\"english_name\";s:6:\"Korean\";s:11:\"native_name\";s:9:\"한국어\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.4/ko_KR.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ko\";i:2;s:3:\"kor\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"계속\";}}s:3:\"ckb\";a:8:{s:8:\"language\";s:3:\"ckb\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-26 15:48:25\";s:12:\"english_name\";s:16:\"Kurdish (Sorani)\";s:11:\"native_name\";s:13:\"كوردی‎\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/ckb.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ku\";i:3;s:3:\"ckb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:30:\"به‌رده‌وام به‌\";}}s:2:\"lo\";a:8:{s:8:\"language\";s:2:\"lo\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-11-12 09:59:23\";s:12:\"english_name\";s:3:\"Lao\";s:11:\"native_name\";s:21:\"ພາສາລາວ\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/lo.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"lo\";i:2;s:3:\"lao\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:18:\"ຕໍ່​ໄປ\";}}s:5:\"lt_LT\";a:8:{s:8:\"language\";s:5:\"lt_LT\";s:7:\"version\";s:5:\"4.7.4\";s:7:\"updated\";s:19:\"2017-03-30 09:46:13\";s:12:\"english_name\";s:10:\"Lithuanian\";s:11:\"native_name\";s:15:\"Lietuvių kalba\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.4/lt_LT.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"lt\";i:2;s:3:\"lit\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Tęsti\";}}s:2:\"lv\";a:8:{s:8:\"language\";s:2:\"lv\";s:7:\"version\";s:5:\"4.7.4\";s:7:\"updated\";s:19:\"2017-03-17 20:40:40\";s:12:\"english_name\";s:7:\"Latvian\";s:11:\"native_name\";s:16:\"Latviešu valoda\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.4/lv.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"lv\";i:2;s:3:\"lav\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Turpināt\";}}s:5:\"mk_MK\";a:8:{s:8:\"language\";s:5:\"mk_MK\";s:7:\"version\";s:5:\"4.7.4\";s:7:\"updated\";s:19:\"2017-01-26 15:54:41\";s:12:\"english_name\";s:10:\"Macedonian\";s:11:\"native_name\";s:31:\"Македонски јазик\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.4/mk_MK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"mk\";i:2;s:3:\"mkd\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:16:\"Продолжи\";}}s:5:\"ml_IN\";a:8:{s:8:\"language\";s:5:\"ml_IN\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-27 03:43:32\";s:12:\"english_name\";s:9:\"Malayalam\";s:11:\"native_name\";s:18:\"മലയാളം\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/ml_IN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ml\";i:2;s:3:\"mal\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:18:\"തുടരുക\";}}s:2:\"mn\";a:8:{s:8:\"language\";s:2:\"mn\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-12 07:29:35\";s:12:\"english_name\";s:9:\"Mongolian\";s:11:\"native_name\";s:12:\"Монгол\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/mn.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"mn\";i:2;s:3:\"mon\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:24:\"Үргэлжлүүлэх\";}}s:2:\"mr\";a:8:{s:8:\"language\";s:2:\"mr\";s:7:\"version\";s:5:\"4.7.4\";s:7:\"updated\";s:19:\"2017-03-24 06:52:11\";s:12:\"english_name\";s:7:\"Marathi\";s:11:\"native_name\";s:15:\"मराठी\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.4/mr.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"mr\";i:2;s:3:\"mar\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:25:\"सुरु ठेवा\";}}s:5:\"ms_MY\";a:8:{s:8:\"language\";s:5:\"ms_MY\";s:7:\"version\";s:5:\"4.7.4\";s:7:\"updated\";s:19:\"2017-03-05 09:45:10\";s:12:\"english_name\";s:5:\"Malay\";s:11:\"native_name\";s:13:\"Bahasa Melayu\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.4/ms_MY.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ms\";i:2;s:3:\"msa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Teruskan\";}}s:5:\"my_MM\";a:8:{s:8:\"language\";s:5:\"my_MM\";s:7:\"version\";s:6:\"4.1.17\";s:7:\"updated\";s:19:\"2015-03-26 15:57:42\";s:12:\"english_name\";s:17:\"Myanmar (Burmese)\";s:11:\"native_name\";s:15:\"ဗမာစာ\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/4.1.17/my_MM.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"my\";i:2;s:3:\"mya\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:54:\"ဆက်လက်လုပ်ဆောင်ပါ။\";}}s:5:\"nb_NO\";a:8:{s:8:\"language\";s:5:\"nb_NO\";s:7:\"version\";s:5:\"4.7.4\";s:7:\"updated\";s:19:\"2017-01-26 15:42:31\";s:12:\"english_name\";s:19:\"Norwegian (Bokmål)\";s:11:\"native_name\";s:13:\"Norsk bokmål\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.4/nb_NO.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nb\";i:2;s:3:\"nob\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Fortsett\";}}s:5:\"ne_NP\";a:8:{s:8:\"language\";s:5:\"ne_NP\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-26 15:48:31\";s:12:\"english_name\";s:6:\"Nepali\";s:11:\"native_name\";s:18:\"नेपाली\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/ne_NP.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ne\";i:2;s:3:\"nep\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:43:\"जारी राख्नुहोस्\";}}s:12:\"nl_NL_formal\";a:8:{s:8:\"language\";s:12:\"nl_NL_formal\";s:7:\"version\";s:5:\"4.7.4\";s:7:\"updated\";s:19:\"2017-02-16 13:24:21\";s:12:\"english_name\";s:14:\"Dutch (Formal)\";s:11:\"native_name\";s:20:\"Nederlands (Formeel)\";s:7:\"package\";s:71:\"https://downloads.wordpress.org/translation/core/4.7.4/nl_NL_formal.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nl\";i:2;s:3:\"nld\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Doorgaan\";}}s:5:\"nl_BE\";a:8:{s:8:\"language\";s:5:\"nl_BE\";s:7:\"version\";s:5:\"4.7.4\";s:7:\"updated\";s:19:\"2017-04-22 16:33:56\";s:12:\"english_name\";s:15:\"Dutch (Belgium)\";s:11:\"native_name\";s:20:\"Nederlands (België)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.4/nl_BE.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nl\";i:2;s:3:\"nld\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Doorgaan\";}}s:5:\"nl_NL\";a:8:{s:8:\"language\";s:5:\"nl_NL\";s:7:\"version\";s:5:\"4.7.4\";s:7:\"updated\";s:19:\"2017-05-09 07:34:08\";s:12:\"english_name\";s:5:\"Dutch\";s:11:\"native_name\";s:10:\"Nederlands\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.4/nl_NL.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nl\";i:2;s:3:\"nld\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Doorgaan\";}}s:5:\"nn_NO\";a:8:{s:8:\"language\";s:5:\"nn_NO\";s:7:\"version\";s:5:\"4.7.4\";s:7:\"updated\";s:19:\"2017-01-26 15:40:57\";s:12:\"english_name\";s:19:\"Norwegian (Nynorsk)\";s:11:\"native_name\";s:13:\"Norsk nynorsk\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.4/nn_NO.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nn\";i:2;s:3:\"nno\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Hald fram\";}}s:3:\"oci\";a:8:{s:8:\"language\";s:3:\"oci\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-02 13:47:38\";s:12:\"english_name\";s:7:\"Occitan\";s:11:\"native_name\";s:7:\"Occitan\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/oci.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"oc\";i:2;s:3:\"oci\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Contunhar\";}}s:5:\"pa_IN\";a:8:{s:8:\"language\";s:5:\"pa_IN\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-16 05:19:43\";s:12:\"english_name\";s:7:\"Punjabi\";s:11:\"native_name\";s:18:\"ਪੰਜਾਬੀ\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/pa_IN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"pa\";i:2;s:3:\"pan\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:25:\"ਜਾਰੀ ਰੱਖੋ\";}}s:5:\"pl_PL\";a:8:{s:8:\"language\";s:5:\"pl_PL\";s:7:\"version\";s:5:\"4.7.4\";s:7:\"updated\";s:19:\"2017-04-23 09:31:28\";s:12:\"english_name\";s:6:\"Polish\";s:11:\"native_name\";s:6:\"Polski\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.4/pl_PL.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"pl\";i:2;s:3:\"pol\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Kontynuuj\";}}s:2:\"ps\";a:8:{s:8:\"language\";s:2:\"ps\";s:7:\"version\";s:6:\"4.1.17\";s:7:\"updated\";s:19:\"2015-03-29 22:19:48\";s:12:\"english_name\";s:6:\"Pashto\";s:11:\"native_name\";s:8:\"پښتو\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.1.17/ps.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ps\";i:2;s:3:\"pus\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:19:\"دوام ورکړه\";}}s:5:\"pt_PT\";a:8:{s:8:\"language\";s:5:\"pt_PT\";s:7:\"version\";s:5:\"4.7.4\";s:7:\"updated\";s:19:\"2017-04-07 00:19:52\";s:12:\"english_name\";s:21:\"Portuguese (Portugal)\";s:11:\"native_name\";s:10:\"Português\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.4/pt_PT.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"pt\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"pt_BR\";a:8:{s:8:\"language\";s:5:\"pt_BR\";s:7:\"version\";s:5:\"4.7.4\";s:7:\"updated\";s:19:\"2017-04-17 15:02:48\";s:12:\"english_name\";s:19:\"Portuguese (Brazil)\";s:11:\"native_name\";s:20:\"Português do Brasil\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.4/pt_BR.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"pt\";i:2;s:3:\"por\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:3:\"rhg\";a:8:{s:8:\"language\";s:3:\"rhg\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-03-16 13:03:18\";s:12:\"english_name\";s:8:\"Rohingya\";s:11:\"native_name\";s:8:\"Ruáinga\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/rhg.zip\";s:3:\"iso\";a:1:{i:3;s:3:\"rhg\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:0:\"\";}}s:5:\"ro_RO\";a:8:{s:8:\"language\";s:5:\"ro_RO\";s:7:\"version\";s:5:\"4.7.4\";s:7:\"updated\";s:19:\"2017-04-15 14:53:36\";s:12:\"english_name\";s:8:\"Romanian\";s:11:\"native_name\";s:8:\"Română\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.4/ro_RO.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ro\";i:2;s:3:\"ron\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuă\";}}s:5:\"ru_RU\";a:8:{s:8:\"language\";s:5:\"ru_RU\";s:7:\"version\";s:5:\"4.7.4\";s:7:\"updated\";s:19:\"2017-04-20 10:13:53\";s:12:\"english_name\";s:7:\"Russian\";s:11:\"native_name\";s:14:\"Русский\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.4/ru_RU.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ru\";i:2;s:3:\"rus\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Продолжить\";}}s:3:\"sah\";a:8:{s:8:\"language\";s:3:\"sah\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-21 02:06:41\";s:12:\"english_name\";s:5:\"Sakha\";s:11:\"native_name\";s:14:\"Сахалыы\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/sah.zip\";s:3:\"iso\";a:2:{i:2;s:3:\"sah\";i:3;s:3:\"sah\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"Салҕаа\";}}s:5:\"si_LK\";a:8:{s:8:\"language\";s:5:\"si_LK\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-11-12 06:00:52\";s:12:\"english_name\";s:7:\"Sinhala\";s:11:\"native_name\";s:15:\"සිංහල\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/si_LK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"si\";i:2;s:3:\"sin\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:44:\"දිගටම කරගෙන යන්න\";}}s:5:\"sk_SK\";a:8:{s:8:\"language\";s:5:\"sk_SK\";s:7:\"version\";s:5:\"4.7.4\";s:7:\"updated\";s:19:\"2017-04-20 11:49:35\";s:12:\"english_name\";s:6:\"Slovak\";s:11:\"native_name\";s:11:\"Slovenčina\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.4/sk_SK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sk\";i:2;s:3:\"slk\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"Pokračovať\";}}s:5:\"sl_SI\";a:8:{s:8:\"language\";s:5:\"sl_SI\";s:7:\"version\";s:5:\"4.7.4\";s:7:\"updated\";s:19:\"2017-02-08 17:57:45\";s:12:\"english_name\";s:9:\"Slovenian\";s:11:\"native_name\";s:13:\"Slovenščina\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.4/sl_SI.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sl\";i:2;s:3:\"slv\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Nadaljuj\";}}s:2:\"sq\";a:8:{s:8:\"language\";s:2:\"sq\";s:7:\"version\";s:5:\"4.7.4\";s:7:\"updated\";s:19:\"2017-04-24 08:35:30\";s:12:\"english_name\";s:8:\"Albanian\";s:11:\"native_name\";s:5:\"Shqip\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.4/sq.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sq\";i:2;s:3:\"sqi\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Vazhdo\";}}s:5:\"sr_RS\";a:8:{s:8:\"language\";s:5:\"sr_RS\";s:7:\"version\";s:5:\"4.7.4\";s:7:\"updated\";s:19:\"2017-01-26 15:41:03\";s:12:\"english_name\";s:7:\"Serbian\";s:11:\"native_name\";s:23:\"Српски језик\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.4/sr_RS.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sr\";i:2;s:3:\"srp\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:14:\"Настави\";}}s:5:\"sv_SE\";a:8:{s:8:\"language\";s:5:\"sv_SE\";s:7:\"version\";s:5:\"4.7.4\";s:7:\"updated\";s:19:\"2017-04-03 00:34:10\";s:12:\"english_name\";s:7:\"Swedish\";s:11:\"native_name\";s:7:\"Svenska\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.4/sv_SE.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sv\";i:2;s:3:\"swe\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Fortsätt\";}}s:3:\"szl\";a:8:{s:8:\"language\";s:3:\"szl\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-09-24 19:58:14\";s:12:\"english_name\";s:8:\"Silesian\";s:11:\"native_name\";s:17:\"Ślōnskŏ gŏdka\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/szl.zip\";s:3:\"iso\";a:1:{i:3;s:3:\"szl\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:13:\"Kōntynuować\";}}s:5:\"ta_IN\";a:8:{s:8:\"language\";s:5:\"ta_IN\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-27 03:22:47\";s:12:\"english_name\";s:5:\"Tamil\";s:11:\"native_name\";s:15:\"தமிழ்\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/ta_IN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ta\";i:2;s:3:\"tam\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:24:\"தொடரவும்\";}}s:2:\"te\";a:8:{s:8:\"language\";s:2:\"te\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-26 15:47:39\";s:12:\"english_name\";s:6:\"Telugu\";s:11:\"native_name\";s:18:\"తెలుగు\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/te.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"te\";i:2;s:3:\"tel\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:30:\"కొనసాగించు\";}}s:2:\"th\";a:8:{s:8:\"language\";s:2:\"th\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-26 15:48:43\";s:12:\"english_name\";s:4:\"Thai\";s:11:\"native_name\";s:9:\"ไทย\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/th.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"th\";i:2;s:3:\"tha\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:15:\"ต่อไป\";}}s:2:\"tl\";a:8:{s:8:\"language\";s:2:\"tl\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-12-30 02:38:08\";s:12:\"english_name\";s:7:\"Tagalog\";s:11:\"native_name\";s:7:\"Tagalog\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/tl.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"tl\";i:2;s:3:\"tgl\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"Magpatuloy\";}}s:5:\"tr_TR\";a:8:{s:8:\"language\";s:5:\"tr_TR\";s:7:\"version\";s:5:\"4.7.4\";s:7:\"updated\";s:19:\"2017-04-15 09:03:35\";s:12:\"english_name\";s:7:\"Turkish\";s:11:\"native_name\";s:8:\"Türkçe\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.4/tr_TR.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"tr\";i:2;s:3:\"tur\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:5:\"Devam\";}}s:5:\"tt_RU\";a:8:{s:8:\"language\";s:5:\"tt_RU\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-11-20 20:20:50\";s:12:\"english_name\";s:5:\"Tatar\";s:11:\"native_name\";s:19:\"Татар теле\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/tt_RU.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"tt\";i:2;s:3:\"tat\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:17:\"дәвам итү\";}}s:3:\"tah\";a:8:{s:8:\"language\";s:3:\"tah\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-03-06 18:39:39\";s:12:\"english_name\";s:8:\"Tahitian\";s:11:\"native_name\";s:10:\"Reo Tahiti\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/tah.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"ty\";i:2;s:3:\"tah\";i:3;s:3:\"tah\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:0:\"\";}}s:5:\"ug_CN\";a:8:{s:8:\"language\";s:5:\"ug_CN\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-12-05 09:23:39\";s:12:\"english_name\";s:6:\"Uighur\";s:11:\"native_name\";s:9:\"Uyƣurqə\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/ug_CN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ug\";i:2;s:3:\"uig\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:26:\"داۋاملاشتۇرۇش\";}}s:2:\"uk\";a:8:{s:8:\"language\";s:2:\"uk\";s:7:\"version\";s:5:\"4.7.4\";s:7:\"updated\";s:19:\"2017-03-28 21:21:58\";s:12:\"english_name\";s:9:\"Ukrainian\";s:11:\"native_name\";s:20:\"Українська\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.4/uk.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"uk\";i:2;s:3:\"ukr\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Продовжити\";}}s:2:\"ur\";a:8:{s:8:\"language\";s:2:\"ur\";s:7:\"version\";s:5:\"4.7.4\";s:7:\"updated\";s:19:\"2017-03-27 07:08:07\";s:12:\"english_name\";s:4:\"Urdu\";s:11:\"native_name\";s:8:\"اردو\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.4/ur.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ur\";i:2;s:3:\"urd\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:19:\"جاری رکھیں\";}}s:5:\"uz_UZ\";a:8:{s:8:\"language\";s:5:\"uz_UZ\";s:7:\"version\";s:5:\"4.7.4\";s:7:\"updated\";s:19:\"2017-04-04 05:03:16\";s:12:\"english_name\";s:5:\"Uzbek\";s:11:\"native_name\";s:11:\"O‘zbekcha\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.4/uz_UZ.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"uz\";i:2;s:3:\"uzb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:11:\"Davom etish\";}}s:2:\"vi\";a:8:{s:8:\"language\";s:2:\"vi\";s:7:\"version\";s:5:\"4.7.4\";s:7:\"updated\";s:19:\"2017-04-10 15:33:37\";s:12:\"english_name\";s:10:\"Vietnamese\";s:11:\"native_name\";s:14:\"Tiếng Việt\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.4/vi.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"vi\";i:2;s:3:\"vie\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"Tiếp tục\";}}s:5:\"zh_CN\";a:8:{s:8:\"language\";s:5:\"zh_CN\";s:7:\"version\";s:5:\"4.7.4\";s:7:\"updated\";s:19:\"2017-01-26 15:54:45\";s:12:\"english_name\";s:15:\"Chinese (China)\";s:11:\"native_name\";s:12:\"简体中文\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.4/zh_CN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"zh\";i:2;s:3:\"zho\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"继续\";}}s:5:\"zh_TW\";a:8:{s:8:\"language\";s:5:\"zh_TW\";s:7:\"version\";s:5:\"4.7.4\";s:7:\"updated\";s:19:\"2017-05-08 04:16:08\";s:12:\"english_name\";s:16:\"Chinese (Taiwan)\";s:11:\"native_name\";s:12:\"繁體中文\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.4/zh_TW.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"zh\";i:2;s:3:\"zho\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"繼續\";}}s:5:\"zh_HK\";a:8:{s:8:\"language\";s:5:\"zh_HK\";s:7:\"version\";s:5:\"4.7.4\";s:7:\"updated\";s:19:\"2017-03-28 12:03:30\";s:12:\"english_name\";s:19:\"Chinese (Hong Kong)\";s:11:\"native_name\";s:16:\"香港中文版	\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.4/zh_HK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"zh\";i:2;s:3:\"zho\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"繼續\";}}}', 'no'),
(271, 'category_children', 'a:1:{i:5;a:6:{i:0;i:10;i:1;i:11;i:2;i:12;i:3;i:13;i:4;i:14;i:5;i:15;}}', 'yes');

-- --------------------------------------------------------

--
-- Структура таблицы `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 4, '_edit_last', '1'),
(3, 4, '_edit_lock', '1494359427:1'),
(6, 6, '_wp_attached_file', '2017/05/DSC_8714.jpg'),
(7, 6, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:4012;s:6:\"height\";i:2664;s:4:\"file\";s:20:\"2017/05/DSC_8714.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"DSC_8714-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"DSC_8714-300x199.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:199;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:20:\"DSC_8714-768x510.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:510;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:21:\"DSC_8714-1024x680.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:680;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1379682756\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(8, 7, '_wp_attached_file', '2017/05/DSC_9606.jpg'),
(9, 7, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:5763;s:6:\"height\";i:3847;s:4:\"file\";s:20:\"2017/05/DSC_9606.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"DSC_9606-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"DSC_9606-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:20:\"DSC_9606-768x513.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:513;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:21:\"DSC_9606-1024x684.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:684;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:3:\"2.8\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:10:\"NIKON D600\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1443874928\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:2:\"50\";s:3:\"iso\";s:3:\"200\";s:13:\"shutter_speed\";s:7:\"0.00625\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(14, 10, '_wp_attached_file', '2017/05/DSC_5676.jpg'),
(15, 10, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:5630;s:6:\"height\";i:3758;s:4:\"file\";s:20:\"2017/05/DSC_5676.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"DSC_5676-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"DSC_5676-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:20:\"DSC_5676-768x513.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:513;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:21:\"DSC_5676-1024x684.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:684;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:3:\"3.2\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:10:\"NIKON D600\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1433508460\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:2:\"70\";s:3:\"iso\";s:3:\"250\";s:13:\"shutter_speed\";s:9:\"0.0015625\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(27, 16, '_wp_trash_meta_status', 'publish'),
(28, 16, '_wp_trash_meta_time', '1494166871'),
(29, 17, '_wp_trash_meta_status', 'publish'),
(30, 17, '_wp_trash_meta_time', '1494167402'),
(31, 18, '_wp_attached_file', '2017/05/default_logo.png'),
(32, 18, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:141;s:6:\"height\";i:52;s:4:\"file\";s:24:\"2017/05/default_logo.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(33, 19, '_wp_attached_file', '2017/05/cropped-default_logo.png'),
(34, 19, '_wp_attachment_context', 'custom-logo'),
(35, 19, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:141;s:6:\"height\";i:52;s:4:\"file\";s:32:\"2017/05/cropped-default_logo.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(36, 20, '_wp_trash_meta_status', 'publish'),
(37, 20, '_wp_trash_meta_time', '1494167490'),
(38, 21, '_menu_item_type', 'custom'),
(39, 21, '_menu_item_menu_item_parent', '0'),
(40, 21, '_menu_item_object_id', '21'),
(41, 21, '_menu_item_object', 'custom'),
(42, 21, '_menu_item_target', ''),
(43, 21, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(44, 21, '_menu_item_xfn', ''),
(45, 21, '_menu_item_url', 'http://andrei/'),
(46, 21, '_menu_item_orphaned', '1494167891'),
(47, 22, '_menu_item_type', 'post_type'),
(48, 22, '_menu_item_menu_item_parent', '0'),
(49, 22, '_menu_item_object_id', '2'),
(50, 22, '_menu_item_object', 'page'),
(51, 22, '_menu_item_target', ''),
(52, 22, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(53, 22, '_menu_item_xfn', ''),
(54, 22, '_menu_item_url', ''),
(55, 22, '_menu_item_orphaned', '1494167891'),
(56, 23, '_menu_item_type', 'custom'),
(57, 23, '_menu_item_menu_item_parent', '0'),
(58, 23, '_menu_item_object_id', '23'),
(59, 23, '_menu_item_object', 'custom'),
(60, 23, '_menu_item_target', ''),
(61, 23, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(62, 23, '_menu_item_xfn', ''),
(63, 23, '_menu_item_url', 'http://andrei/'),
(64, 23, '_menu_item_orphaned', '1494168083'),
(65, 24, '_menu_item_type', 'post_type'),
(66, 24, '_menu_item_menu_item_parent', '0'),
(67, 24, '_menu_item_object_id', '2'),
(68, 24, '_menu_item_object', 'page'),
(69, 24, '_menu_item_target', ''),
(70, 24, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(71, 24, '_menu_item_xfn', ''),
(72, 24, '_menu_item_url', ''),
(73, 24, '_menu_item_orphaned', '1494168083'),
(74, 25, '_menu_item_type', 'taxonomy'),
(75, 25, '_menu_item_menu_item_parent', '0'),
(76, 25, '_menu_item_object_id', '3'),
(77, 25, '_menu_item_object', 'category'),
(78, 25, '_menu_item_target', ''),
(79, 25, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(80, 25, '_menu_item_xfn', ''),
(81, 25, '_menu_item_url', ''),
(83, 26, '_menu_item_type', 'taxonomy'),
(84, 26, '_menu_item_menu_item_parent', '0'),
(85, 26, '_menu_item_object_id', '7'),
(86, 26, '_menu_item_object', 'category'),
(87, 26, '_menu_item_target', ''),
(88, 26, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(89, 26, '_menu_item_xfn', ''),
(90, 26, '_menu_item_url', ''),
(92, 27, '_menu_item_type', 'taxonomy'),
(93, 27, '_menu_item_menu_item_parent', '0'),
(94, 27, '_menu_item_object_id', '5'),
(95, 27, '_menu_item_object', 'category'),
(96, 27, '_menu_item_target', ''),
(97, 27, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(98, 27, '_menu_item_xfn', ''),
(99, 27, '_menu_item_url', ''),
(101, 28, '_menu_item_type', 'taxonomy'),
(102, 28, '_menu_item_menu_item_parent', '0'),
(103, 28, '_menu_item_object_id', '6'),
(104, 28, '_menu_item_object', 'category'),
(105, 28, '_menu_item_target', ''),
(106, 28, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(107, 28, '_menu_item_xfn', ''),
(108, 28, '_menu_item_url', ''),
(110, 29, '_menu_item_type', 'custom'),
(111, 29, '_menu_item_menu_item_parent', '0'),
(112, 29, '_menu_item_object_id', '29'),
(113, 29, '_menu_item_object', 'custom'),
(114, 29, '_menu_item_target', ''),
(115, 29, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(116, 29, '_menu_item_xfn', ''),
(117, 29, '_menu_item_url', '#'),
(119, 30, '_edit_last', '1'),
(120, 30, '_edit_lock', '1494174077:1'),
(121, 31, '_wp_attached_file', '2017/05/service-1.png'),
(122, 31, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:89;s:6:\"height\";i:88;s:4:\"file\";s:21:\"2017/05/service-1.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(123, 30, '_thumbnail_id', '31'),
(126, 33, '_edit_last', '1'),
(127, 33, '_edit_lock', '1494176006:1'),
(128, 34, '_wp_attached_file', '2017/05/service-2.png'),
(129, 34, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:73;s:6:\"height\";i:73;s:4:\"file\";s:21:\"2017/05/service-2.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(130, 33, '_thumbnail_id', '31'),
(139, 36, '_edit_last', '1'),
(140, 36, '_edit_lock', '1494176930:1'),
(141, 36, '_thumbnail_id', '31'),
(144, 38, '_edit_last', '1'),
(145, 38, '_thumbnail_id', '31'),
(148, 38, '_edit_lock', '1494350370:1'),
(149, 40, '_edit_last', '1'),
(150, 40, '_edit_lock', '1494178216:1'),
(153, 42, '_wp_attached_file', '2017/05/I.png'),
(154, 42, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:530;s:6:\"height\";i:427;s:4:\"file\";s:13:\"2017/05/I.png\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:13:\"I-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:13:\"I-300x242.png\";s:5:\"width\";i:300;s:6:\"height\";i:242;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(158, 44, '_edit_last', '1'),
(159, 44, '_edit_lock', '1494177344:1'),
(164, 44, '_thumbnail_id', '42'),
(165, 54, '_wp_attached_file', '2017/05/cropped-service-1.png'),
(166, 54, '_wp_attachment_context', 'custom-logo'),
(167, 54, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:88;s:6:\"height\";i:88;s:4:\"file\";s:29:\"2017/05/cropped-service-1.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(168, 55, '_wp_trash_meta_status', 'publish'),
(169, 55, '_wp_trash_meta_time', '1494350262'),
(170, 56, '_wp_attached_file', '2017/05/cropped-cropped-default_logo.png'),
(171, 56, '_wp_attachment_context', 'custom-logo'),
(172, 56, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:141;s:6:\"height\";i:52;s:4:\"file\";s:40:\"2017/05/cropped-cropped-default_logo.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(173, 57, '_wp_trash_meta_status', 'publish'),
(174, 57, '_wp_trash_meta_time', '1494350289'),
(179, 61, '_edit_last', '1'),
(180, 61, '_edit_lock', '1494350776:1'),
(181, 63, '_menu_item_type', 'post_type'),
(182, 63, '_menu_item_menu_item_parent', '0'),
(183, 63, '_menu_item_object_id', '61'),
(184, 63, '_menu_item_object', 'page'),
(185, 63, '_menu_item_target', ''),
(186, 63, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(187, 63, '_menu_item_xfn', ''),
(188, 63, '_menu_item_url', ''),
(199, 67, '_menu_item_type', 'taxonomy'),
(200, 67, '_menu_item_menu_item_parent', '0'),
(201, 67, '_menu_item_object_id', '15'),
(202, 67, '_menu_item_object', 'category'),
(203, 67, '_menu_item_target', ''),
(204, 67, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(205, 67, '_menu_item_xfn', ''),
(206, 67, '_menu_item_url', ''),
(208, 68, '_menu_item_type', 'taxonomy'),
(209, 68, '_menu_item_menu_item_parent', '0'),
(210, 68, '_menu_item_object_id', '13'),
(211, 68, '_menu_item_object', 'category'),
(212, 68, '_menu_item_target', ''),
(213, 68, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(214, 68, '_menu_item_xfn', ''),
(215, 68, '_menu_item_url', ''),
(217, 69, '_menu_item_type', 'taxonomy'),
(218, 69, '_menu_item_menu_item_parent', '0'),
(219, 69, '_menu_item_object_id', '10'),
(220, 69, '_menu_item_object', 'category'),
(221, 69, '_menu_item_target', ''),
(222, 69, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(223, 69, '_menu_item_xfn', ''),
(224, 69, '_menu_item_url', ''),
(226, 70, '_menu_item_type', 'taxonomy'),
(227, 70, '_menu_item_menu_item_parent', '0'),
(228, 70, '_menu_item_object_id', '14'),
(229, 70, '_menu_item_object', 'category'),
(230, 70, '_menu_item_target', ''),
(231, 70, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(232, 70, '_menu_item_xfn', ''),
(233, 70, '_menu_item_url', ''),
(235, 71, '_menu_item_type', 'taxonomy'),
(236, 71, '_menu_item_menu_item_parent', '0'),
(237, 71, '_menu_item_object_id', '12'),
(238, 71, '_menu_item_object', 'category'),
(239, 71, '_menu_item_target', ''),
(240, 71, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(241, 71, '_menu_item_xfn', ''),
(242, 71, '_menu_item_url', ''),
(244, 72, '_menu_item_type', 'taxonomy'),
(245, 72, '_menu_item_menu_item_parent', '0'),
(246, 72, '_menu_item_object_id', '11'),
(247, 72, '_menu_item_object', 'category'),
(248, 72, '_menu_item_target', ''),
(249, 72, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(250, 72, '_menu_item_xfn', ''),
(251, 72, '_menu_item_url', ''),
(252, 30, '_wp_old_slug', '%d1%80%d0%b5%d0%bf%d0%be%d1%80%d1%82%d0%b0%d0%b6'),
(253, 33, '_wp_old_slug', '%d1%81%d0%b2%d0%b0%d0%b4%d0%b5%d0%b1%d0%bd%d0%b0%d1%8f-%d1%81%d1%8a%d0%b5%d0%bc%d0%ba%d0%b0'),
(254, 36, '_wp_old_slug', '%d1%84%d0%be%d1%82%d0%be%d1%81%d0%b5%d1%81%d1%81%d0%b8%d1%8f'),
(255, 38, '_wp_old_slug', '%d1%80%d0%b5%d0%ba%d0%bb%d0%b0%d0%bc%d0%bd%d0%b0%d1%8f-%d1%81%d1%8a%d0%b5%d0%bc%d0%ba%d0%b0'),
(256, 40, '_wp_old_slug', '%d0%be%d0%b1%d0%be-%d0%bc%d0%bd%d0%b5-%d0%bc%d0%be%d0%b5-%d1%84%d0%be%d1%82%d0%be'),
(257, 44, '_wp_old_slug', '%d0%be%d0%b1%d0%be-%d0%bc%d0%bd%d0%b5'),
(258, 61, '_wp_old_slug', '%d0%bf%d0%be%d1%80%d1%82%d1%84%d0%be%d0%bb%d0%b8%d0%be'),
(259, 73, '_edit_last', '1'),
(260, 73, '_edit_lock', '1494419308:1'),
(263, 75, '_edit_last', '1'),
(264, 75, '_edit_lock', '1494422763:1'),
(267, 77, '_edit_last', '1'),
(268, 77, '_edit_lock', '1494426496:1'),
(271, 79, '_edit_last', '1'),
(274, 79, '_edit_lock', '1494426350:1'),
(277, 82, '_edit_last', '1'),
(278, 82, '_edit_lock', '1494426345:1'),
(289, 73, '_wp_trash_meta_status', 'publish'),
(290, 73, '_wp_trash_meta_time', '1494419459'),
(291, 73, '_wp_desired_post_slug', 'test'),
(294, 88, '_edit_last', '1'),
(295, 88, '_edit_lock', '1494426341:1'),
(298, 90, '_edit_last', '1'),
(299, 90, '_edit_lock', '1494426337:1'),
(302, 93, '_wp_attached_file', '2017/05/DSC_1018.jpg'),
(303, 93, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:5303;s:6:\"height\";i:3540;s:4:\"file\";s:20:\"2017/05/DSC_1018.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"DSC_1018-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"DSC_1018-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:20:\"DSC_1018-768x513.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:513;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:21:\"DSC_1018-1024x684.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:684;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:3:\"3.2\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:10:\"NIKON D600\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1447502767\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:2:\"42\";s:3:\"iso\";s:4:\"1000\";s:13:\"shutter_speed\";s:5:\"0.002\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(304, 94, '_wp_attached_file', '2017/05/DSC_1218.jpg'),
(305, 94, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:5731;s:6:\"height\";i:3826;s:4:\"file\";s:20:\"2017/05/DSC_1218.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"DSC_1218-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"DSC_1218-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:20:\"DSC_1218-768x513.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:513;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:21:\"DSC_1218-1024x684.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:684;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"4\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:10:\"NIKON D600\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1447506155\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:3:\"210\";s:3:\"iso\";s:3:\"320\";s:13:\"shutter_speed\";s:8:\"0.003125\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(306, 95, '_wp_attached_file', '2017/05/DSC_4652-3.jpg'),
(307, 95, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:6016;s:6:\"height\";i:4016;s:4:\"file\";s:22:\"2017/05/DSC_4652-3.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"DSC_4652-3-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:22:\"DSC_4652-3-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:22:\"DSC_4652-3-768x513.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:513;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:23:\"DSC_4652-3-1024x684.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:684;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:3:\"2.2\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:10:\"NIKON D600\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1445089874\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:2:\"50\";s:3:\"iso\";s:3:\"320\";s:13:\"shutter_speed\";s:6:\"0.0025\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(308, 96, '_wp_attached_file', '2017/05/DSC_5078.jpg'),
(309, 96, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:2477;s:6:\"height\";i:1654;s:4:\"file\";s:20:\"2017/05/DSC_5078.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"DSC_5078-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"DSC_5078-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:20:\"DSC_5078-768x513.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:513;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:21:\"DSC_5078-1024x684.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:684;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:3:\"2.5\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:10:\"NIKON D600\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1433503450\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:2:\"50\";s:3:\"iso\";s:3:\"200\";s:13:\"shutter_speed\";s:7:\"0.00625\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(310, 97, '_wp_attached_file', '2017/05/DSC_5676-1.jpg'),
(311, 97, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:5630;s:6:\"height\";i:3758;s:4:\"file\";s:22:\"2017/05/DSC_5676-1.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"DSC_5676-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:22:\"DSC_5676-1-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:22:\"DSC_5676-1-768x513.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:513;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:23:\"DSC_5676-1-1024x684.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:684;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:3:\"3.2\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:10:\"NIKON D600\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1433508460\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:2:\"70\";s:3:\"iso\";s:3:\"250\";s:13:\"shutter_speed\";s:9:\"0.0015625\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(312, 98, '_wp_attached_file', '2017/05/DSC_8071.jpg'),
(313, 98, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:3686;s:6:\"height\";i:5521;s:4:\"file\";s:20:\"2017/05/DSC_8071.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"DSC_8071-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"DSC_8071-200x300.jpg\";s:5:\"width\";i:200;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:21:\"DSC_8071-768x1150.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:1150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:21:\"DSC_8071-684x1024.jpg\";s:5:\"width\";i:684;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:3:\"6.3\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:10:\"NIKON D600\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1446303831\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:2:\"45\";s:3:\"iso\";s:3:\"200\";s:13:\"shutter_speed\";s:5:\"0.008\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(314, 99, '_wp_attached_file', '2017/05/DSC_8693.jpg'),
(315, 99, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:3390;s:6:\"height\";i:5078;s:4:\"file\";s:20:\"2017/05/DSC_8693.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"DSC_8693-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"DSC_8693-200x300.jpg\";s:5:\"width\";i:200;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:21:\"DSC_8693-768x1150.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:1150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:21:\"DSC_8693-684x1024.jpg\";s:5:\"width\";i:684;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:3:\"4.5\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:10:\"NIKON D600\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1437226324\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:3:\"102\";s:3:\"iso\";s:3:\"320\";s:13:\"shutter_speed\";s:6:\"0.0025\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(316, 100, '_wp_attached_file', '2017/05/DSC_8714-1.jpg'),
(317, 100, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:4012;s:6:\"height\";i:2664;s:4:\"file\";s:22:\"2017/05/DSC_8714-1.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"DSC_8714-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:22:\"DSC_8714-1-300x199.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:199;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:22:\"DSC_8714-1-768x510.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:510;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:23:\"DSC_8714-1-1024x680.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:680;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1379682756\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(318, 101, '_wp_attached_file', '2017/05/DSC_9606-1.jpg'),
(319, 101, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:5763;s:6:\"height\";i:3847;s:4:\"file\";s:22:\"2017/05/DSC_9606-1.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"DSC_9606-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:22:\"DSC_9606-1-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:22:\"DSC_9606-1-768x513.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:513;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:23:\"DSC_9606-1-1024x684.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:684;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:3:\"2.8\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:10:\"NIKON D600\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1443874928\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:2:\"50\";s:3:\"iso\";s:3:\"200\";s:13:\"shutter_speed\";s:7:\"0.00625\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(320, 102, '_wp_attached_file', '2017/05/kollazh-buket-2.jpg'),
(321, 102, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:4725;s:6:\"height\";i:2726;s:4:\"file\";s:27:\"2017/05/kollazh-buket-2.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:27:\"kollazh-buket-2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:27:\"kollazh-buket-2-300x173.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:173;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:27:\"kollazh-buket-2-768x443.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:443;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:28:\"kollazh-buket-2-1024x591.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:591;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"4\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:10:\"NIKON D600\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1447506155\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:3:\"210\";s:3:\"iso\";s:3:\"320\";s:13:\"shutter_speed\";s:8:\"0.003125\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}');

-- --------------------------------------------------------

--
-- Структура таблицы `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(2, 1, '2017-05-07 10:52:31', '2017-05-07 07:52:31', 'Это пример страницы. От записей в блоге она отличается тем, что остаётся на одном месте и отображается в меню сайта (в большинстве тем). На странице &laquo;Детали&raquo; владельцы сайтов обычно рассказывают о себе потенциальным посетителям. Например, так:\n\n<blockquote>Привет! Днём я курьер, а вечером &#8212; подающий надежды актёр. Это мой блог. Я живу в Ростове-на-Дону, люблю своего пса Джека и пинаколаду. (И ещё попадать под дождь.)</blockquote>\n\n...или так:\n\n<blockquote>Компания &laquo;Штучки XYZ&raquo; была основана в 1971 году и с тех пор производит качественные штучки. Компания находится в Готэм-сити, имеет штат из более чем 2000 сотрудников и приносит много пользы жителям Готэма.</blockquote>\n\nПерейдите <a href=\"http://andrei/wp-admin/\">в консоль</a>, чтобы удалить эту страницу и создать новые. Успехов!', 'Пример страницы', '', 'publish', 'closed', 'open', '', 'sample-page', '', '', '2017-05-07 10:52:31', '2017-05-07 07:52:31', '', 0, 'http://andrei/?page_id=2', 0, 'page', '', 0),
(3, 1, '2017-05-07 10:52:51', '0000-00-00 00:00:00', '', 'Черновик', '', 'auto-draft', 'open', 'open', '', '', '', '', '2017-05-07 10:52:51', '0000-00-00 00:00:00', '', 0, 'http://andrei/?p=3', 0, 'post', '', 0),
(4, 1, '2017-05-07 15:35:36', '2017-05-07 12:35:36', '<img class=\"alignnone size-medium wp-image-7\" src=\"http://andrei/wp-content/uploads/2017/05/DSC_9606-300x200.jpg\" alt=\"\" width=\"300\" height=\"200\" /> <img class=\"alignnone size-medium wp-image-6\" src=\"http://andrei/wp-content/uploads/2017/05/DSC_8714-300x199.jpg\" alt=\"\" width=\"300\" height=\"199\" />', 'slider', '', 'publish', 'open', 'open', '', 'first', '', '', '2017-05-07 16:06:17', '2017-05-07 13:06:17', '', 0, 'http://andrei/?p=4', 0, 'post', '', 0),
(5, 1, '2017-05-07 15:35:36', '2017-05-07 12:35:36', '', 'first', '', 'inherit', 'closed', 'closed', '', '4-revision-v1', '', '', '2017-05-07 15:35:36', '2017-05-07 12:35:36', '', 4, 'http://andrei/2017/05/07/4-revision-v1/', 0, 'revision', '', 0),
(6, 1, '2017-05-07 15:37:02', '2017-05-07 12:37:02', '', 'DSC_8714', '', 'inherit', 'open', 'closed', '', 'dsc_8714', '', '', '2017-05-07 15:37:02', '2017-05-07 12:37:02', '', 4, 'http://andrei/wp-content/uploads/2017/05/DSC_8714.jpg', 0, 'attachment', 'image/jpeg', 0),
(7, 1, '2017-05-07 15:37:07', '2017-05-07 12:37:07', '', 'DSC_9606', '', 'inherit', 'open', 'closed', '', 'dsc_9606', '', '', '2017-05-07 15:37:07', '2017-05-07 12:37:07', '', 4, 'http://andrei/wp-content/uploads/2017/05/DSC_9606.jpg', 0, 'attachment', 'image/jpeg', 0),
(9, 1, '2017-05-07 15:40:34', '2017-05-07 12:40:34', '<img class=\"alignnone size-medium wp-image-7\" src=\"http://andrei/wp-content/uploads/2017/05/DSC_9606-300x200.jpg\" alt=\"\" width=\"300\" height=\"200\" /> <img class=\"alignnone size-medium wp-image-6\" src=\"http://andrei/wp-content/uploads/2017/05/DSC_8714-300x199.jpg\" alt=\"\" width=\"300\" height=\"199\" />', 'first', '', 'inherit', 'closed', 'closed', '', '4-revision-v1', '', '', '2017-05-07 15:40:34', '2017-05-07 12:40:34', '', 4, 'http://andrei/2017/05/07/4-revision-v1/', 0, 'revision', '', 0),
(10, 1, '2017-05-07 15:58:34', '2017-05-07 12:58:34', '', 'DSC_5676', '', 'inherit', 'open', 'closed', '', 'dsc_5676', '', '', '2017-05-10 15:24:07', '2017-05-10 12:24:07', '', 77, 'http://andrei/wp-content/uploads/2017/05/DSC_5676.jpg', 0, 'attachment', 'image/jpeg', 0),
(11, 1, '2017-05-07 16:06:17', '2017-05-07 13:06:17', '<img class=\"alignnone size-medium wp-image-7\" src=\"http://andrei/wp-content/uploads/2017/05/DSC_9606-300x200.jpg\" alt=\"\" width=\"300\" height=\"200\" /> <img class=\"alignnone size-medium wp-image-6\" src=\"http://andrei/wp-content/uploads/2017/05/DSC_8714-300x199.jpg\" alt=\"\" width=\"300\" height=\"199\" />', 'slider', '', 'inherit', 'closed', 'closed', '', '4-revision-v1', '', '', '2017-05-07 16:06:17', '2017-05-07 13:06:17', '', 4, 'http://andrei/2017/05/07/4-revision-v1/', 0, 'revision', '', 0),
(13, 1, '2017-05-07 16:06:47', '0000-00-00 00:00:00', '', 'Черновик', '', 'auto-draft', 'open', 'open', '', '', '', '', '2017-05-07 16:06:47', '0000-00-00 00:00:00', '', 0, 'http://andrei/?p=13', 0, 'post', '', 0),
(16, 1, '2017-05-07 17:21:11', '2017-05-07 14:21:11', '{\n    \"andreishostak::custom_logo\": {\n        \"value\": 15,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'c1acc55e-5eb6-469f-94e1-1e3e1d98e1b0', '', '', '2017-05-07 17:21:11', '2017-05-07 14:21:11', '', 0, 'http://andrei/2017/05/07/c1acc55e-5eb6-469f-94e1-1e3e1d98e1b0/', 0, 'customize_changeset', '', 0),
(17, 1, '2017-05-07 17:30:02', '2017-05-07 14:30:02', '{\n    \"andreishostak::custom_logo\": {\n        \"value\": \"\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '260db512-ee2a-4db6-8680-c84d282b91d5', '', '', '2017-05-07 17:30:02', '2017-05-07 14:30:02', '', 0, 'http://andrei/?p=17', 0, 'customize_changeset', '', 0),
(18, 1, '2017-05-07 17:31:20', '2017-05-07 14:31:20', '', 'default_logo', '', 'inherit', 'open', 'closed', '', 'default_logo', '', '', '2017-05-07 17:31:20', '2017-05-07 14:31:20', '', 0, 'http://andrei/wp-content/uploads/2017/05/default_logo.png', 0, 'attachment', 'image/png', 0),
(19, 1, '2017-05-07 17:31:28', '2017-05-07 14:31:28', 'http://andrei/wp-content/uploads/2017/05/cropped-default_logo.png', 'cropped-default_logo.png', '', 'inherit', 'open', 'closed', '', 'cropped-default_logo-png', '', '', '2017-05-07 17:31:28', '2017-05-07 14:31:28', '', 0, 'http://andrei/wp-content/uploads/2017/05/cropped-default_logo.png', 0, 'attachment', 'image/png', 0),
(20, 1, '2017-05-07 17:31:30', '2017-05-07 14:31:30', '{\n    \"andreishostak::custom_logo\": {\n        \"value\": 19,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '5f9ab80b-e5d4-4e87-8bf7-9f38caa44d30', '', '', '2017-05-07 17:31:30', '2017-05-07 14:31:30', '', 0, 'http://andrei/2017/05/07/5f9ab80b-e5d4-4e87-8bf7-9f38caa44d30/', 0, 'customize_changeset', '', 0),
(21, 1, '2017-05-07 17:38:11', '0000-00-00 00:00:00', '', 'Главная', '', 'draft', 'closed', 'closed', '', '', '', '', '2017-05-07 17:38:11', '0000-00-00 00:00:00', '', 0, 'http://andrei/?p=21', 1, 'nav_menu_item', '', 0),
(22, 1, '2017-05-07 17:38:11', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2017-05-07 17:38:11', '0000-00-00 00:00:00', '', 0, 'http://andrei/?p=22', 1, 'nav_menu_item', '', 0),
(23, 1, '2017-05-07 17:41:23', '0000-00-00 00:00:00', '', 'Главная', '', 'draft', 'closed', 'closed', '', '', '', '', '2017-05-07 17:41:23', '0000-00-00 00:00:00', '', 0, 'http://andrei/?p=23', 1, 'nav_menu_item', '', 0),
(24, 1, '2017-05-07 17:41:23', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2017-05-07 17:41:23', '0000-00-00 00:00:00', '', 0, 'http://andrei/?p=24', 1, 'nav_menu_item', '', 0),
(25, 1, '2017-05-07 17:42:02', '2017-05-07 14:42:02', ' ', '', '', 'publish', 'closed', 'closed', '', '25', '', '', '2017-05-09 20:28:48', '2017-05-09 17:28:48', '', 0, 'http://andrei/?p=25', 1, 'nav_menu_item', '', 0),
(26, 1, '2017-05-07 17:47:26', '2017-05-07 14:47:26', ' ', '', '', 'publish', 'closed', 'closed', '', '26', '', '', '2017-05-09 20:28:49', '2017-05-09 17:28:49', '', 0, 'http://andrei/?p=26', 4, 'nav_menu_item', '', 0),
(27, 1, '2017-05-07 17:47:26', '2017-05-07 14:47:26', ' ', '', '', 'publish', 'closed', 'closed', '', '27', '', '', '2017-05-09 20:28:49', '2017-05-09 17:28:49', '', 0, 'http://andrei/?p=27', 2, 'nav_menu_item', '', 0),
(28, 1, '2017-05-07 17:47:26', '2017-05-07 14:47:26', ' ', '', '', 'publish', 'closed', 'closed', '', '28', '', '', '2017-05-09 20:28:49', '2017-05-09 17:28:49', '', 0, 'http://andrei/?p=28', 3, 'nav_menu_item', '', 0),
(29, 1, '2017-05-07 17:49:57', '2017-05-07 14:49:57', '', 'test', '', 'publish', 'closed', 'closed', '', 'test', '', '', '2017-05-09 20:28:49', '2017-05-09 17:28:49', '', 0, 'http://andrei/?p=29', 5, 'nav_menu_item', '', 0),
(30, 1, '2017-05-07 19:23:38', '2017-05-07 16:23:38', 'Будь это концерт, или детский День Рождения, я помогу запечатлеть важнейшие моменты и атмосферу мероприятия.', 'Репортаж', '', 'publish', 'open', 'open', '', 'reportazh', '', '', '2017-05-07 19:23:38', '2017-05-07 16:23:38', '', 0, 'http://andrei/?p=30', 0, 'post', '', 0),
(31, 1, '2017-05-07 19:23:25', '2017-05-07 16:23:25', '', 'service-1', '', 'inherit', 'open', 'closed', '', 'service-1', '', '', '2017-05-07 19:23:25', '2017-05-07 16:23:25', '', 30, 'http://andrei/wp-content/uploads/2017/05/service-1.png', 0, 'attachment', 'image/png', 0),
(32, 1, '2017-05-07 19:23:38', '2017-05-07 16:23:38', 'Будь это концерт, или детский День Рождения, я помогу запечатлеть важнейшие моменты и атмосферу мероприятия.', 'Репортаж', '', 'inherit', 'closed', 'closed', '', '30-revision-v1', '', '', '2017-05-07 19:23:38', '2017-05-07 16:23:38', '', 30, 'http://andrei/2017/05/07/30-revision-v1/', 0, 'revision', '', 0),
(33, 1, '2017-05-07 19:54:12', '2017-05-07 16:54:12', 'Индивидуальный подход к каждой паре. Буду рад передать Ваши эмоции на фотографиях!', 'Свадебная съемка', '', 'publish', 'open', 'open', '', 'svadebnaya-semka', '', '', '2017-05-07 19:55:47', '2017-05-07 16:55:47', '', 0, 'http://andrei/?p=33', 0, 'post', '', 0),
(34, 1, '2017-05-07 19:53:59', '2017-05-07 16:53:59', '', 'service-2', '', 'inherit', 'open', 'closed', '', 'service-2', '', '', '2017-05-07 19:53:59', '2017-05-07 16:53:59', '', 33, 'http://andrei/wp-content/uploads/2017/05/service-2.png', 0, 'attachment', 'image/png', 0),
(35, 1, '2017-05-07 19:54:12', '2017-05-07 16:54:12', 'Индивидуальный подход к каждой паре. Буду рад передать Ваши эмоции на фотографиях!', 'Свадебная съемка', '', 'inherit', 'closed', 'closed', '', '33-revision-v1', '', '', '2017-05-07 19:54:12', '2017-05-07 16:54:12', '', 33, 'http://andrei/2017/05/07/33-revision-v1/', 0, 'revision', '', 0),
(36, 1, '2017-05-07 19:56:57', '2017-05-07 16:56:57', 'На природе, в локациях или в студии, я помогу раскрыть образ и воплотить в жизнь Ваши идеи.', 'фотосессия', '', 'publish', 'open', 'open', '', 'fotosessiya', '', '', '2017-05-07 19:56:57', '2017-05-07 16:56:57', '', 0, 'http://andrei/?p=36', 0, 'post', '', 0),
(37, 1, '2017-05-07 19:56:57', '2017-05-07 16:56:57', 'На природе, в локациях или в студии, я помогу раскрыть образ и воплотить в жизнь Ваши идеи.', 'фотосессия', '', 'inherit', 'closed', 'closed', '', '36-revision-v1', '', '', '2017-05-07 19:56:57', '2017-05-07 16:56:57', '', 36, 'http://andrei/2017/05/07/36-revision-v1/', 0, 'revision', '', 0),
(38, 1, '2017-05-07 19:57:27', '2017-05-07 16:57:27', 'Я помогу показать Ваш продукт в наиболее выгодном свете, сделать качественные фото для меню или каталогов.', 'Рекламная съемка', '', 'publish', 'open', 'open', '', 'reklamnaya-semka', '', '', '2017-05-09 20:20:28', '2017-05-09 17:20:28', '', 0, 'http://andrei/?p=38', 0, 'post', '', 0),
(39, 1, '2017-05-07 19:57:27', '2017-05-07 16:57:27', 'Я япомогу показать Ваш продукт в наиболее выгодном свете, сделать качественные фото для меню или каталогов.', 'Рекламная съемка', '', 'inherit', 'closed', 'closed', '', '38-revision-v1', '', '', '2017-05-07 19:57:27', '2017-05-07 16:57:27', '', 38, 'http://andrei/2017/05/07/38-revision-v1/', 0, 'revision', '', 0),
(40, 1, '2017-05-07 20:09:53', '2017-05-07 17:09:53', '<p>Я занимаюсь фотографией уже более 8 лет. За это время успел освоить множество типов съемок, от свадебной до рекламной, поработать с множеством звезд шоубизнеса и преподавать фотодело в академии.</p>\r\n<p>Огромный опыт позволяет с легкостью находить общий язык с клиентами и раскрепостить их для съемки. Так же я не стою на месте и постоянно развиваюсь, и совершенствуюсь чтобы открывать для себя и окружающих новые творческие горизонты.</p>', 'Обо мне', '', 'publish', 'open', 'open', '', 'obo-mne-moe-foto', '', '', '2017-05-07 20:30:15', '2017-05-07 17:30:15', '', 0, 'http://andrei/?p=40', 0, 'post', '', 0),
(42, 1, '2017-05-07 20:09:45', '2017-05-07 17:09:45', '', 'I', '', 'inherit', 'open', 'closed', '', 'i', '', '', '2017-05-07 20:09:45', '2017-05-07 17:09:45', '', 40, 'http://andrei/wp-content/uploads/2017/05/I.png', 0, 'attachment', 'image/png', 0),
(43, 1, '2017-05-07 20:09:53', '2017-05-07 17:09:53', '', 'Обо мне, мое фото', '', 'inherit', 'closed', 'closed', '', '40-revision-v1', '', '', '2017-05-07 20:09:53', '2017-05-07 17:09:53', '', 40, 'http://andrei/2017/05/07/40-revision-v1/', 0, 'revision', '', 0),
(44, 1, '2017-05-07 20:16:06', '2017-05-07 17:16:06', '', 'Мое фото', '', 'publish', 'open', 'open', '', 'obo-mne', '', '', '2017-05-07 20:17:59', '2017-05-07 17:17:59', '', 0, 'http://andrei/?p=44', 0, 'post', '', 0),
(45, 1, '2017-05-07 20:16:06', '2017-05-07 17:16:06', 'Я занимаюсь фотографией уже более 8 лет. За это время успел освоить множество типов съемок, от свадебной до рекламной, поработать с множеством звезд шоубизнеса и преподавать фотодело в академии.\r\n\r\nОгромный опыт позволяет с легкостью находить общий язык с клиентами и раскрепостить их для съемки. Так же я не стою на месте и постоянно развиваюсь, и совершенствуюсь чтобы открывать для себя и окружающих новые творческие горизонты.', 'ОБО МНЕ', '', 'inherit', 'closed', 'closed', '', '44-revision-v1', '', '', '2017-05-07 20:16:06', '2017-05-07 17:16:06', '', 44, 'http://andrei/2017/05/07/44-revision-v1/', 0, 'revision', '', 0),
(46, 1, '2017-05-07 20:17:35', '2017-05-07 17:17:35', 'Я занимаюсь фотографией уже более 8 лет. За это время успел освоить множество типов съемок, от свадебной до рекламной, поработать с множеством звезд шоубизнеса и преподавать фотодело в академии.\r\n\r\nОгромный опыт позволяет с легкостью находить общий язык с клиентами и раскрепостить их для съемки. Так же я не стою на месте и постоянно развиваюсь, и совершенствуюсь чтобы открывать для себя и окружающих новые творческие горизонты.', 'Обо мне', '', 'inherit', 'closed', 'closed', '', '40-revision-v1', '', '', '2017-05-07 20:17:35', '2017-05-07 17:17:35', '', 40, 'http://andrei/2017/05/07/40-revision-v1/', 0, 'revision', '', 0),
(47, 1, '2017-05-07 20:17:59', '2017-05-07 17:17:59', '', 'Мое фото', '', 'inherit', 'closed', 'closed', '', '44-revision-v1', '', '', '2017-05-07 20:17:59', '2017-05-07 17:17:59', '', 44, 'http://andrei/2017/05/07/44-revision-v1/', 0, 'revision', '', 0),
(48, 1, '2017-05-07 20:23:48', '2017-05-07 17:23:48', 'Я занимаюсь фотографией уже более 8 лет. За это время успел освоить множество типов съемок, от свадебной до рекламной, поработать с множеством звезд шоубизнеса и преподавать фотодело в академии.\r\n\r\n&nbsp;\r\n\r\nОгромный опыт позволяет с легкостью находить общий язык с клиентами и раскрепостить их для съемки. Так же я не стою на месте и постоянно развиваюсь, и совершенствуюсь чтобы открывать для себя и окружающих новые творческие горизонты.', 'Обо мне', '', 'inherit', 'closed', 'closed', '', '40-revision-v1', '', '', '2017-05-07 20:23:48', '2017-05-07 17:23:48', '', 40, 'http://andrei/2017/05/07/40-revision-v1/', 0, 'revision', '', 0),
(49, 1, '2017-05-07 20:24:14', '2017-05-07 17:24:14', 'Я занимаюсь фотографией уже более 8 лет. За это время успел освоить множество типов съемок, от свадебной до рекламной, поработать с множеством звезд шоубизнеса и преподавать фотодело в академии.\r\n<br>\r\nОгромный опыт позволяет с легкостью находить общий язык с клиентами и раскрепостить их для съемки. Так же я не стою на месте и постоянно развиваюсь, и совершенствуюсь чтобы открывать для себя и окружающих новые творческие горизонты.', 'Обо мне', '', 'inherit', 'closed', 'closed', '', '40-revision-v1', '', '', '2017-05-07 20:24:14', '2017-05-07 17:24:14', '', 40, 'http://andrei/2017/05/07/40-revision-v1/', 0, 'revision', '', 0),
(50, 1, '2017-05-07 20:24:49', '2017-05-07 17:24:49', '<!--more-->Я занимаюсь фотографией уже более 8 лет. За это время успел освоить множество типов съемок, от свадебной до рекламной, поработать с множеством звезд шоубизнеса и преподавать фотодело в академии.\r\n\r\nОгромный опыт позволяет с легкостью находить общий язык с клиентами и раскрепостить их для съемки. Так же я не стою на месте и постоянно развиваюсь, и совершенствуюсь чтобы открывать для себя и окружающих новые творческие горизонты.', 'Обо мне', '', 'inherit', 'closed', 'closed', '', '40-revision-v1', '', '', '2017-05-07 20:24:49', '2017-05-07 17:24:49', '', 40, 'http://andrei/2017/05/07/40-revision-v1/', 0, 'revision', '', 0),
(51, 1, '2017-05-07 20:24:59', '2017-05-07 17:24:59', 'Я занимаюсь фотографией уже более 8 лет. За это время успел освоить множество типов съемок, от свадебной до рекламной, поработать с множеством звезд шоубизнеса и преподавать фотодело в академии.\r\n\r\nОгромный опыт позволяет с легкостью находить общий язык с клиентами и раскрепостить их для съемки. Так же я не стою на месте и постоянно развиваюсь, и совершенствуюсь чтобы открывать для себя и окружающих новые творческие горизонты.', 'Обо мне', '', 'inherit', 'closed', 'closed', '', '40-revision-v1', '', '', '2017-05-07 20:24:59', '2017-05-07 17:24:59', '', 40, 'http://andrei/2017/05/07/40-revision-v1/', 0, 'revision', '', 0),
(52, 1, '2017-05-07 20:28:11', '2017-05-07 17:28:11', 'Я занимаюсь фотографией уже более 8 лет. За это время успел освоить множество типов съемок, от свадебной до рекламной, поработать с множеством звезд шоубизнеса и преподавать фотодело в академии.\n\n&nbsp;\n\nОгромный опыт позволяет с легкостью находить общий язык с клиентами и раскрепостить их для съемки. Так же я не стою на месте и постоянно развиваюсь, и совершенствуюсь чтобы открывать для себя и окружающих новые творческие горизонты.', 'Обо мне', '', 'inherit', 'closed', 'closed', '', '40-autosave-v1', '', '', '2017-05-07 20:28:11', '2017-05-07 17:28:11', '', 40, 'http://andrei/2017/05/07/40-autosave-v1/', 0, 'revision', '', 0),
(53, 1, '2017-05-07 20:30:15', '2017-05-07 17:30:15', '<p>Я занимаюсь фотографией уже более 8 лет. За это время успел освоить множество типов съемок, от свадебной до рекламной, поработать с множеством звезд шоубизнеса и преподавать фотодело в академии.</p>\r\n<p>Огромный опыт позволяет с легкостью находить общий язык с клиентами и раскрепостить их для съемки. Так же я не стою на месте и постоянно развиваюсь, и совершенствуюсь чтобы открывать для себя и окружающих новые творческие горизонты.</p>', 'Обо мне', '', 'inherit', 'closed', 'closed', '', '40-revision-v1', '', '', '2017-05-07 20:30:15', '2017-05-07 17:30:15', '', 40, 'http://andrei/2017/05/07/40-revision-v1/', 0, 'revision', '', 0),
(54, 1, '2017-05-09 20:17:37', '2017-05-09 17:17:37', 'http://andrei/wp-content/uploads/2017/05/cropped-service-1.png', 'cropped-service-1.png', '', 'inherit', 'open', 'closed', '', 'cropped-service-1-png', '', '', '2017-05-09 20:17:37', '2017-05-09 17:17:37', '', 0, 'http://andrei/wp-content/uploads/2017/05/cropped-service-1.png', 0, 'attachment', 'image/png', 0),
(55, 1, '2017-05-09 20:17:41', '2017-05-09 17:17:41', '{\n    \"andreishostak::custom_logo\": {\n        \"value\": 54,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '6994c200-305b-41ab-877b-2e73df2364c3', '', '', '2017-05-09 20:17:41', '2017-05-09 17:17:41', '', 0, 'http://andrei/2017/05/09/6994c200-305b-41ab-877b-2e73df2364c3/', 0, 'customize_changeset', '', 0),
(56, 1, '2017-05-09 20:18:07', '2017-05-09 17:18:07', 'http://andrei/wp-content/uploads/2017/05/cropped-cropped-default_logo.png', 'cropped-cropped-default_logo.png', '', 'inherit', 'open', 'closed', '', 'cropped-cropped-default_logo-png', '', '', '2017-05-10 15:25:13', '2017-05-10 12:25:13', '', 82, 'http://andrei/wp-content/uploads/2017/05/cropped-cropped-default_logo.png', 0, 'attachment', 'image/png', 0),
(57, 1, '2017-05-09 20:18:09', '2017-05-09 17:18:09', '{\n    \"andreishostak::custom_logo\": {\n        \"value\": 56,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '02ac16d3-582d-4c27-84d1-173c478da781', '', '', '2017-05-09 20:18:09', '2017-05-09 17:18:09', '', 0, 'http://andrei/2017/05/09/02ac16d3-582d-4c27-84d1-173c478da781/', 0, 'customize_changeset', '', 0),
(58, 1, '2017-05-09 20:20:09', '2017-05-09 17:20:09', 'Я япомогу показать Ваш продукт в наиболее выгодном свете, сделать качественные фото для меню или каталогов. тра тт=а та', 'Рекламная съемка', '', 'inherit', 'closed', 'closed', '', '38-revision-v1', '', '', '2017-05-09 20:20:09', '2017-05-09 17:20:09', '', 38, 'http://andrei/2017/05/09/38-revision-v1/', 0, 'revision', '', 0),
(59, 1, '2017-05-09 20:20:20', '2017-05-09 17:20:20', 'Я япомогу показать Ваш продукт в наиболее выгодном свете, сделать качественные фото для меню или каталогов. тра тт=а та', 'Рекламная съемка', '', 'inherit', 'closed', 'closed', '', '38-autosave-v1', '', '', '2017-05-09 20:20:20', '2017-05-09 17:20:20', '', 38, 'http://andrei/2017/05/09/38-autosave-v1/', 0, 'revision', '', 0),
(60, 1, '2017-05-09 20:20:28', '2017-05-09 17:20:28', 'Я помогу показать Ваш продукт в наиболее выгодном свете, сделать качественные фото для меню или каталогов.', 'Рекламная съемка', '', 'inherit', 'closed', 'closed', '', '38-revision-v1', '', '', '2017-05-09 20:20:28', '2017-05-09 17:20:28', '', 38, 'http://andrei/2017/05/09/38-revision-v1/', 0, 'revision', '', 0),
(61, 1, '2017-05-09 20:26:43', '2017-05-09 17:26:43', 'Мои работы', 'Портфолио', '', 'publish', 'closed', 'closed', '', 'portfolio', '', '', '2017-05-09 20:26:43', '2017-05-09 17:26:43', '', 0, 'http://andrei/?page_id=61', 0, 'page', '', 0),
(62, 1, '2017-05-09 20:26:43', '2017-05-09 17:26:43', 'Мои работы', 'Портфолио', '', 'inherit', 'closed', 'closed', '', '61-revision-v1', '', '', '2017-05-09 20:26:43', '2017-05-09 17:26:43', '', 61, 'http://andrei/2017/05/09/61-revision-v1/', 0, 'revision', '', 0),
(63, 1, '2017-05-09 20:28:49', '2017-05-09 17:28:49', ' ', '', '', 'publish', 'closed', 'closed', '', '63', '', '', '2017-05-09 20:28:49', '2017-05-09 17:28:49', '', 0, 'http://andrei/?p=63', 6, 'nav_menu_item', '', 0),
(64, 1, '2017-05-09 20:47:26', '0000-00-00 00:00:00', '', 'Черновик', '', 'auto-draft', 'open', 'open', '', '', '', '', '2017-05-09 20:47:26', '0000-00-00 00:00:00', '', 0, 'http://andrei/?p=64', 0, 'post', '', 0),
(65, 1, '2017-05-09 20:53:34', '0000-00-00 00:00:00', '', 'Черновик', '', 'auto-draft', 'open', 'open', '', '', '', '', '2017-05-09 20:53:34', '0000-00-00 00:00:00', '', 0, 'http://andrei/?p=65', 0, 'post', '', 0),
(67, 1, '2017-05-09 21:38:17', '2017-05-09 18:38:17', ' ', '', '', 'publish', 'closed', 'closed', '', '67', '', '', '2017-05-09 21:38:17', '2017-05-09 18:38:17', '', 5, 'http://andrei/?p=67', 2, 'nav_menu_item', '', 0),
(68, 1, '2017-05-09 21:38:17', '2017-05-09 18:38:17', ' ', '', '', 'publish', 'closed', 'closed', '', '68', '', '', '2017-05-09 21:38:17', '2017-05-09 18:38:17', '', 5, 'http://andrei/?p=68', 3, 'nav_menu_item', '', 0),
(69, 1, '2017-05-09 21:38:17', '2017-05-09 18:38:17', ' ', '', '', 'publish', 'closed', 'closed', '', '69', '', '', '2017-05-09 21:38:17', '2017-05-09 18:38:17', '', 5, 'http://andrei/?p=69', 4, 'nav_menu_item', '', 0),
(70, 1, '2017-05-09 21:38:17', '2017-05-09 18:38:17', ' ', '', '', 'publish', 'closed', 'closed', '', '70', '', '', '2017-05-09 21:38:17', '2017-05-09 18:38:17', '', 5, 'http://andrei/?p=70', 5, 'nav_menu_item', '', 0),
(71, 1, '2017-05-09 21:38:17', '2017-05-09 18:38:17', ' ', '', '', 'publish', 'closed', 'closed', '', '71', '', '', '2017-05-09 21:38:17', '2017-05-09 18:38:17', '', 5, 'http://andrei/?p=71', 6, 'nav_menu_item', '', 0),
(72, 1, '2017-05-09 21:38:17', '2017-05-09 18:38:17', ' ', '', '', 'publish', 'closed', 'closed', '', '72', '', '', '2017-05-09 21:38:17', '2017-05-09 18:38:17', '', 5, 'http://andrei/?p=72', 7, 'nav_menu_item', '', 0),
(73, 1, '2017-05-10 15:20:51', '2017-05-10 12:20:51', '<img class=\"alignnone size-full wp-image-34\" src=\"http://andrei/wp-content/uploads/2017/05/service-2.png\" alt=\"\" width=\"73\" height=\"73\" />\r\n\r\n<img class=\"alignnone size-full wp-image-31\" src=\"http://andrei/wp-content/uploads/2017/05/service-1.png\" alt=\"\" width=\"89\" height=\"88\" />', 'test', '', 'trash', 'open', 'open', '', 'test__trashed', '', '', '2017-05-10 15:30:59', '2017-05-10 12:30:59', '', 0, 'http://andrei/?p=73', 0, 'post', '', 0),
(74, 1, '2017-05-10 15:20:51', '2017-05-10 12:20:51', '<img class=\"alignnone size-full wp-image-34\" src=\"http://andrei/wp-content/uploads/2017/05/service-2.png\" alt=\"\" width=\"73\" height=\"73\" />\r\n\r\n<img class=\"alignnone size-full wp-image-31\" src=\"http://andrei/wp-content/uploads/2017/05/service-1.png\" alt=\"\" width=\"89\" height=\"88\" />', 'test', '', 'inherit', 'closed', 'closed', '', '73-revision-v1', '', '', '2017-05-10 15:20:51', '2017-05-10 12:20:51', '', 73, 'http://andrei/73-revision-v1/', 0, 'revision', '', 0),
(75, 1, '2017-05-10 15:23:50', '2017-05-10 12:23:50', '<img class=\"alignnone size-medium wp-image-42\" src=\"http://andrei/wp-content/uploads/2017/05/I-300x242.png\" alt=\"\" width=\"300\" height=\"242\" />', 'Реклама', '', 'publish', 'open', 'open', '', 'reklama', '', '', '2017-05-10 15:31:33', '2017-05-10 12:31:33', '', 0, 'http://andrei/?p=75', 0, 'post', '', 0),
(76, 1, '2017-05-10 15:23:50', '2017-05-10 12:23:50', '<img class=\"alignnone size-medium wp-image-42\" src=\"http://andrei/wp-content/uploads/2017/05/I-300x242.png\" alt=\"\" width=\"300\" height=\"242\" />', 'реклама', '', 'inherit', 'closed', 'closed', '', '75-revision-v1', '', '', '2017-05-10 15:23:50', '2017-05-10 12:23:50', '', 75, 'http://andrei/75-revision-v1/', 0, 'revision', '', 0),
(77, 1, '2017-05-10 15:24:12', '2017-05-10 12:24:12', '<img class=\"alignnone size-medium wp-image-10\" src=\"http://andrei/wp-content/uploads/2017/05/DSC_5676-300x200.jpg\" alt=\"\" width=\"300\" height=\"200\" />', 'Репортажи', '', 'publish', 'open', 'open', '', 'reportazhi', '', '', '2017-05-10 15:30:20', '2017-05-10 12:30:20', '', 0, 'http://andrei/?p=77', 0, 'post', '', 0),
(78, 1, '2017-05-10 15:24:12', '2017-05-10 12:24:12', '<img class=\"alignnone size-medium wp-image-10\" src=\"http://andrei/wp-content/uploads/2017/05/DSC_5676-300x200.jpg\" alt=\"\" width=\"300\" height=\"200\" />', 'репортажи', '', 'inherit', 'closed', 'closed', '', '77-revision-v1', '', '', '2017-05-10 15:24:12', '2017-05-10 12:24:12', '', 77, 'http://andrei/77-revision-v1/', 0, 'revision', '', 0),
(79, 1, '2017-05-10 15:24:39', '2017-05-10 12:24:39', '<img class=\"alignnone size-medium wp-image-99\" src=\"http://andrei/wp-content/uploads/2017/05/DSC_8693-200x300.jpg\" alt=\"\" width=\"200\" height=\"300\" />', 'Свадебные фото', '', 'publish', 'open', 'open', '', 'svadba', '', '', '2017-05-10 16:13:08', '2017-05-10 13:13:08', '', 0, 'http://andrei/?p=79', 0, 'post', '', 0),
(80, 1, '2017-05-10 15:24:39', '2017-05-10 12:24:39', '', 'свадьба', '', 'inherit', 'closed', 'closed', '', '79-revision-v1', '', '', '2017-05-10 15:24:39', '2017-05-10 12:24:39', '', 79, 'http://andrei/79-revision-v1/', 0, 'revision', '', 0),
(81, 1, '2017-05-10 15:24:54', '2017-05-10 12:24:54', '<img class=\"alignnone size-medium wp-image-6\" src=\"http://andrei/wp-content/uploads/2017/05/DSC_8714-300x199.jpg\" alt=\"\" width=\"300\" height=\"199\" />', 'свадьба', '', 'inherit', 'closed', 'closed', '', '79-revision-v1', '', '', '2017-05-10 15:24:54', '2017-05-10 12:24:54', '', 79, 'http://andrei/79-revision-v1/', 0, 'revision', '', 0),
(82, 1, '2017-05-10 15:25:18', '2017-05-10 12:25:18', '<img class=\"alignnone size-full wp-image-56\" src=\"http://andrei/wp-content/uploads/2017/05/cropped-cropped-default_logo.png\" alt=\"\" width=\"141\" height=\"52\" />', 'Семейные фото', '', 'publish', 'open', 'open', '', 'semejnye', '', '', '2017-05-10 15:30:06', '2017-05-10 12:30:06', '', 0, 'http://andrei/?p=82', 0, 'post', '', 0),
(83, 1, '2017-05-10 15:25:18', '2017-05-10 12:25:18', '<img class=\"alignnone size-full wp-image-56\" src=\"http://andrei/wp-content/uploads/2017/05/cropped-cropped-default_logo.png\" alt=\"\" width=\"141\" height=\"52\" />', 'семейные', '', 'inherit', 'closed', 'closed', '', '82-revision-v1', '', '', '2017-05-10 15:25:18', '2017-05-10 12:25:18', '', 82, 'http://andrei/82-revision-v1/', 0, 'revision', '', 0),
(84, 1, '2017-05-10 15:29:51', '2017-05-10 12:29:51', '<img class=\"alignnone size-medium wp-image-6\" src=\"http://andrei/wp-content/uploads/2017/05/DSC_8714-300x199.jpg\" alt=\"\" width=\"300\" height=\"199\" />', 'Свадебные фото', '', 'inherit', 'closed', 'closed', '', '79-revision-v1', '', '', '2017-05-10 15:29:51', '2017-05-10 12:29:51', '', 79, 'http://andrei/79-revision-v1/', 0, 'revision', '', 0),
(85, 1, '2017-05-10 15:30:06', '2017-05-10 12:30:06', '<img class=\"alignnone size-full wp-image-56\" src=\"http://andrei/wp-content/uploads/2017/05/cropped-cropped-default_logo.png\" alt=\"\" width=\"141\" height=\"52\" />', 'Семейные фото', '', 'inherit', 'closed', 'closed', '', '82-revision-v1', '', '', '2017-05-10 15:30:06', '2017-05-10 12:30:06', '', 82, 'http://andrei/82-revision-v1/', 0, 'revision', '', 0),
(86, 1, '2017-05-10 15:30:20', '2017-05-10 12:30:20', '<img class=\"alignnone size-medium wp-image-10\" src=\"http://andrei/wp-content/uploads/2017/05/DSC_5676-300x200.jpg\" alt=\"\" width=\"300\" height=\"200\" />', 'Репортажи', '', 'inherit', 'closed', 'closed', '', '77-revision-v1', '', '', '2017-05-10 15:30:20', '2017-05-10 12:30:20', '', 77, 'http://andrei/77-revision-v1/', 0, 'revision', '', 0),
(87, 1, '2017-05-10 15:31:33', '2017-05-10 12:31:33', '<img class=\"alignnone size-medium wp-image-42\" src=\"http://andrei/wp-content/uploads/2017/05/I-300x242.png\" alt=\"\" width=\"300\" height=\"242\" />', 'Реклама', '', 'inherit', 'closed', 'closed', '', '75-revision-v1', '', '', '2017-05-10 15:31:33', '2017-05-10 12:31:33', '', 75, 'http://andrei/75-revision-v1/', 0, 'revision', '', 0),
(88, 1, '2017-05-10 15:32:28', '2017-05-10 12:32:28', '<img class=\"alignnone size-medium wp-image-6\" src=\"http://andrei/wp-content/uploads/2017/05/DSC_8714-300x199.jpg\" alt=\"\" width=\"300\" height=\"199\" />', 'Студия', '', 'publish', 'open', 'open', '', 'studiya', '', '', '2017-05-10 15:32:28', '2017-05-10 12:32:28', '', 0, 'http://andrei/?p=88', 0, 'post', '', 0),
(89, 1, '2017-05-10 15:32:28', '2017-05-10 12:32:28', '<img class=\"alignnone size-medium wp-image-6\" src=\"http://andrei/wp-content/uploads/2017/05/DSC_8714-300x199.jpg\" alt=\"\" width=\"300\" height=\"199\" />', 'Студия', '', 'inherit', 'closed', 'closed', '', '88-revision-v1', '', '', '2017-05-10 15:32:28', '2017-05-10 12:32:28', '', 88, 'http://andrei/88-revision-v1/', 0, 'revision', '', 0),
(90, 1, '2017-05-10 15:32:52', '2017-05-10 12:32:52', '<img class=\"alignnone size-medium wp-image-102\" src=\"http://andrei/wp-content/uploads/2017/05/kollazh-buket-2-300x173.jpg\" alt=\"\" width=\"300\" height=\"173\" />', 'Фотосессии', '', 'publish', 'open', 'open', '', 'fotosessii', '', '', '2017-05-10 16:12:38', '2017-05-10 13:12:38', '', 0, 'http://andrei/?p=90', 0, 'post', '', 0),
(91, 1, '2017-05-10 15:32:52', '2017-05-10 12:32:52', '<img class=\"alignnone size-medium wp-image-42\" src=\"http://andrei/wp-content/uploads/2017/05/I-300x242.png\" alt=\"\" width=\"300\" height=\"242\" />', 'Фотосессии', '', 'inherit', 'closed', 'closed', '', '90-revision-v1', '', '', '2017-05-10 15:32:52', '2017-05-10 12:32:52', '', 90, 'http://andrei/90-revision-v1/', 0, 'revision', '', 0),
(93, 1, '2017-05-10 16:11:13', '2017-05-10 13:11:13', '', 'DSC_1018', '', 'inherit', 'open', 'closed', '', 'dsc_1018', '', '', '2017-05-10 16:11:13', '2017-05-10 13:11:13', '', 90, 'http://andrei/wp-content/uploads/2017/05/DSC_1018.jpg', 0, 'attachment', 'image/jpeg', 0),
(94, 1, '2017-05-10 16:11:18', '2017-05-10 13:11:18', '', 'DSC_1218', '', 'inherit', 'open', 'closed', '', 'dsc_1218', '', '', '2017-05-10 16:11:18', '2017-05-10 13:11:18', '', 90, 'http://andrei/wp-content/uploads/2017/05/DSC_1218.jpg', 0, 'attachment', 'image/jpeg', 0),
(95, 1, '2017-05-10 16:11:20', '2017-05-10 13:11:20', '', 'DSC_4652-3', '', 'inherit', 'open', 'closed', '', 'dsc_4652-3', '', '', '2017-05-10 16:11:20', '2017-05-10 13:11:20', '', 90, 'http://andrei/wp-content/uploads/2017/05/DSC_4652-3.jpg', 0, 'attachment', 'image/jpeg', 0),
(96, 1, '2017-05-10 16:11:22', '2017-05-10 13:11:22', '', 'DSC_5078', '', 'inherit', 'open', 'closed', '', 'dsc_5078', '', '', '2017-05-10 16:11:22', '2017-05-10 13:11:22', '', 90, 'http://andrei/wp-content/uploads/2017/05/DSC_5078.jpg', 0, 'attachment', 'image/jpeg', 0),
(97, 1, '2017-05-10 16:11:24', '2017-05-10 13:11:24', '', 'DSC_5676', '', 'inherit', 'open', 'closed', '', 'dsc_5676-2', '', '', '2017-05-10 16:11:24', '2017-05-10 13:11:24', '', 90, 'http://andrei/wp-content/uploads/2017/05/DSC_5676-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(98, 1, '2017-05-10 16:11:26', '2017-05-10 13:11:26', '', 'DSC_8071', '', 'inherit', 'open', 'closed', '', 'dsc_8071', '', '', '2017-05-10 16:11:26', '2017-05-10 13:11:26', '', 90, 'http://andrei/wp-content/uploads/2017/05/DSC_8071.jpg', 0, 'attachment', 'image/jpeg', 0),
(99, 1, '2017-05-10 16:11:29', '2017-05-10 13:11:29', '', 'DSC_8693', '', 'inherit', 'open', 'closed', '', 'dsc_8693', '', '', '2017-05-10 16:11:29', '2017-05-10 13:11:29', '', 90, 'http://andrei/wp-content/uploads/2017/05/DSC_8693.jpg', 0, 'attachment', 'image/jpeg', 0),
(100, 1, '2017-05-10 16:11:31', '2017-05-10 13:11:31', '', 'DSC_8714', '', 'inherit', 'open', 'closed', '', 'dsc_8714-2', '', '', '2017-05-10 16:11:31', '2017-05-10 13:11:31', '', 90, 'http://andrei/wp-content/uploads/2017/05/DSC_8714-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(101, 1, '2017-05-10 16:11:33', '2017-05-10 13:11:33', '', 'DSC_9606', '', 'inherit', 'open', 'closed', '', 'dsc_9606-2', '', '', '2017-05-10 16:11:33', '2017-05-10 13:11:33', '', 90, 'http://andrei/wp-content/uploads/2017/05/DSC_9606-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(102, 1, '2017-05-10 16:11:35', '2017-05-10 13:11:35', '', 'коллаж букет 2', '', 'inherit', 'open', 'closed', '', 'kollazh-buket-2', '', '', '2017-05-10 16:11:35', '2017-05-10 13:11:35', '', 90, 'http://andrei/wp-content/uploads/2017/05/kollazh-buket-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(103, 1, '2017-05-10 16:12:27', '2017-05-10 13:12:27', '', 'Фотосессии', '', 'inherit', 'closed', 'closed', '', '90-autosave-v1', '', '', '2017-05-10 16:12:27', '2017-05-10 13:12:27', '', 90, 'http://andrei/90-autosave-v1/', 0, 'revision', '', 0),
(104, 1, '2017-05-10 16:12:38', '2017-05-10 13:12:38', '<img class=\"alignnone size-medium wp-image-102\" src=\"http://andrei/wp-content/uploads/2017/05/kollazh-buket-2-300x173.jpg\" alt=\"\" width=\"300\" height=\"173\" />', 'Фотосессии', '', 'inherit', 'closed', 'closed', '', '90-revision-v1', '', '', '2017-05-10 16:12:38', '2017-05-10 13:12:38', '', 90, 'http://andrei/90-revision-v1/', 0, 'revision', '', 0),
(105, 1, '2017-05-10 16:13:08', '2017-05-10 13:13:08', '<img class=\"alignnone size-medium wp-image-99\" src=\"http://andrei/wp-content/uploads/2017/05/DSC_8693-200x300.jpg\" alt=\"\" width=\"200\" height=\"300\" />', 'Свадебные фото', '', 'inherit', 'closed', 'closed', '', '79-revision-v1', '', '', '2017-05-10 16:13:08', '2017-05-10 13:13:08', '', 79, 'http://andrei/79-revision-v1/', 0, 'revision', '', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Без рубрики', 'bez-rubriki', 0),
(2, 'Slider', 'slider', 0),
(3, 'Обо мне', 'about', 0),
(4, 'Primary header navigation', 'primary-header-navigation', 0),
(5, 'Портфолио', 'portfolio', 0),
(6, 'цены', 'pricing', 0),
(7, 'Контакты', 'contacts', 0),
(8, 'Виды работ', 'sort-of-services', 0),
(10, 'Свадьба', 'svadba', 0),
(11, 'Фотосессии', 'fotosessii', 0),
(12, 'Студия', 'studiya', 0),
(13, 'Репортажи', 'reportazhi', 0),
(14, 'Семейные', 'semejnye', 0),
(15, 'Реклама', 'reklama', 0),
(16, 'portfolio', 'portfolio', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(4, 2, 0),
(25, 4, 0),
(26, 4, 0),
(27, 4, 0),
(28, 4, 0),
(29, 4, 0),
(30, 8, 0),
(33, 8, 0),
(36, 8, 0),
(38, 8, 0),
(40, 3, 0),
(44, 3, 0),
(63, 4, 0),
(67, 16, 0),
(68, 16, 0),
(69, 16, 0),
(70, 16, 0),
(71, 16, 0),
(72, 16, 0),
(73, 1, 0),
(75, 15, 0),
(77, 13, 0),
(79, 10, 0),
(82, 14, 0),
(88, 12, 0),
(90, 11, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 0),
(2, 2, 'category', '', 0, 1),
(3, 3, 'category', '', 0, 2),
(4, 4, 'nav_menu', '', 0, 6),
(5, 5, 'category', '', 0, 0),
(6, 6, 'category', '', 0, 0),
(7, 7, 'category', '', 0, 0),
(8, 8, 'category', '', 0, 4),
(10, 10, 'category', '', 5, 1),
(11, 11, 'category', '', 5, 1),
(12, 12, 'category', '', 5, 1),
(13, 13, 'category', '', 5, 1),
(14, 14, 'category', '', 5, 1),
(15, 15, 'category', '', 5, 1),
(16, 16, 'nav_menu', '', 0, 6);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'andreishostak'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'comment_shortcuts', 'false'),
(7, 1, 'admin_color', 'fresh'),
(8, 1, 'use_ssl', '0'),
(9, 1, 'show_admin_bar_front', 'true'),
(10, 1, 'locale', ''),
(11, 1, 'wp_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(12, 1, 'wp_user_level', '10'),
(13, 1, 'dismissed_wp_pointers', ''),
(14, 1, 'show_welcome_panel', '0'),
(15, 1, 'session_tokens', 'a:4:{s:64:\"84899ecf2ec4abdd09161c9e0731a37124e0236e4f5ef6285ff084203a37de7e\";a:4:{s:10:\"expiration\";i:1494523009;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:110:\"Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.106 Safari/537.36\";s:5:\"login\";i:1494350209;}s:64:\"30846965ccf48fdce87d385d28d7c3e67c85ba3abbf0c9b7d1e15a8bd51ce329\";a:4:{s:10:\"expiration\";i:1494589164;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36\";s:5:\"login\";i:1494416364;}s:64:\"e5de1c24917dcfe044c0fdd0b642b468bae4d508b05a9ce6505ce053a5c1bddc\";a:4:{s:10:\"expiration\";i:1494589780;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36\";s:5:\"login\";i:1494416980;}s:64:\"2c672f54a6b7fca3e931b083d121a64583f58ccbbc4d4c17e443d393363217ed\";a:4:{s:10:\"expiration\";i:1494590838;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36\";s:5:\"login\";i:1494418038;}}'),
(16, 1, 'wp_dashboard_quick_press_last_post_id', '3'),
(17, 1, 'wp_user-settings', 'libraryContent=browse&editor=tinymce&hidetb=1&editor_plain_text_paste_warning=1&post_dfw=off'),
(18, 1, 'wp_user-settings-time', '1494418847'),
(19, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),
(20, 1, 'metaboxhidden_nav-menus', 'a:2:{i:0;s:12:\"add-post_tag\";i:1;s:15:\"add-post_format\";}'),
(21, 1, 'nav_menu_recently_edited', '16');

-- --------------------------------------------------------

--
-- Структура таблицы `wp_users`
--

CREATE TABLE `wp_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'andreishostak', '$P$BpZqwPsTPxZDj0mbSqtFOVPcZTqaO7.', 'andreishostak', 'a.s.shostak@gmail.com', '', '2017-05-07 07:52:31', '', 0, 'andreishostak');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Индексы таблицы `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Индексы таблицы `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Индексы таблицы `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`);

--
-- Индексы таблицы `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Индексы таблицы `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Индексы таблицы `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Индексы таблицы `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Индексы таблицы `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Индексы таблицы `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Индексы таблицы `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Индексы таблицы `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=272;
--
-- AUTO_INCREMENT для таблицы `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=322;
--
-- AUTO_INCREMENT для таблицы `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=106;
--
-- AUTO_INCREMENT для таблицы `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT для таблицы `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT для таблицы `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT для таблицы `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
