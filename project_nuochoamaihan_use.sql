-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th1 15, 2022 lúc 02:15 PM
-- Phiên bản máy phục vụ: 10.4.22-MariaDB
-- Phiên bản PHP: 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `project_nuochoamaihan`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2020_00_00_step1_create_tables_admin', 1),
(2, '2020_00_00_step2_create_tables_shop', 2);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `provider`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(1, NULL, 'SCart Personal Access Client', 'xbbXuZP1q16KQSib7lMO1t5X5ZK6862srbLzzCj7', NULL, 'http://localhost', 1, 0, 0, '2022-01-12 13:04:07', '2022-01-12 13:04:07'),
(2, NULL, 'SCart Password Grant Client', 'E278Mh8avrmFlmOMIN9p2PnuFP0mEqmAAHWUiWVG', 'users', 'http://localhost', 0, 1, 0, '2022-01-12 13:04:07', '2022-01-12 13:04:07');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2022-01-12 13:04:07', '2022-01-12 13:04:07');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sc_admin_config`
--

CREATE TABLE `sc_admin_config` (
  `id` int(10) UNSIGNED NOT NULL,
  `group` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `code` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `key` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `store_id` int(11) NOT NULL DEFAULT 0,
  `sort` int(11) NOT NULL DEFAULT 0,
  `detail` varchar(300) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `sc_admin_config`
--

INSERT INTO `sc_admin_config` (`id`, `group`, `code`, `key`, `value`, `store_id`, `sort`, `detail`) VALUES
(1, 'Plugins', 'Payment', 'Cash', '1', 0, 0, 'Plugins/Payment/Cash::lang.title'),
(2, 'Plugins', 'Shipping', 'ShippingStandard', '1', 0, 0, 'lang::Shipping Standard'),
(3, 'global', 'env_global', 'ADMIN_LOG', 'on', 0, 0, 'lang::env.ADMIN_LOG'),
(4, 'global', 'env_global', 'ADMIN_LOG_EXP', '', 0, 0, 'lang::env.ADMIN_LOG_EXP'),
(5, 'global', 'env_global', 'ADMIN_FOOTER_OFF', '0', 0, 0, 'lang::env.ADMIN_FOOTER_OFF'),
(6, 'global', 'seo_config', 'url_seo_lang', '0', 0, 1, 'lang::seo.url_seo_lang'),
(7, 'global', 'webhook_config', 'LOG_SLACK_WEBHOOK_URL', '', 0, 0, 'lang::config.LOG_SLACK_WEBHOOK_URL'),
(8, 'global', 'webhook_config', 'GOOGLE_CHAT_WEBHOOK_URL', '', 0, 0, 'lang::config.GOOGLE_CHAT_WEBHOOK_URL'),
(9, 'global', 'webhook_config', 'CHATWORK_CHAT_WEBHOOK_URL', '', 0, 0, 'lang::config.CHATWORK_CHAT_WEBHOOK_URL'),
(10, 'global', 'api_config', 'api_connection_required', '1', 0, 1, 'lang::api_connection.api_connection_required'),
(11, 'global', 'cache', 'cache_status', '0', 0, 0, 'lang::cache.config_manager.cache_status'),
(12, 'global', 'cache', 'cache_time', '600', 0, 0, 'lang::cache.config_manager.cache_time'),
(13, 'global', 'cache', 'cache_category', '0', 0, 3, 'lang::cache.config_manager.cache_category'),
(14, 'global', 'cache', 'cache_product', '0', 0, 4, 'lang::cache.config_manager.cache_product'),
(15, 'global', 'cache', 'cache_news', '0', 0, 5, 'lang::cache.config_manager.cache_news'),
(16, 'global', 'cache', 'cache_category_cms', '0', 0, 6, 'lang::cache.config_manager.cache_category_cms'),
(17, 'global', 'cache', 'cache_content_cms', '0', 0, 7, 'lang::cache.config_manager.cache_content_cms'),
(18, 'global', 'cache', 'cache_page', '0', 0, 8, 'lang::cache.config_manager.cache_page'),
(19, 'global', 'cache', 'cache_country', '0', 0, 10, 'lang::cache.config_manager.cache_country'),
(20, 'global', 'env_mail', 'smtp_mode', '', 0, 0, 'lang::email.smtp_mode'),
(21, '', 'product_config_attribute', 'product_brand', '1', 1, 0, 'lang::product.config_manager.brand'),
(22, '', 'product_config_attribute_required', 'product_brand_required', '0', 1, 0, ''),
(23, '', 'product_config_attribute', 'product_supplier', '1', 1, 0, 'lang::product.config_manager.supplier'),
(24, '', 'product_config_attribute_required', 'product_supplier_required', '0', 1, 0, ''),
(25, '', 'product_config_attribute', 'product_price', '1', 1, 0, 'lang::product.config_manager.price'),
(26, '', 'product_config_attribute_required', 'product_price_required', '1', 1, 0, ''),
(27, '', 'product_config_attribute', 'product_cost', '1', 1, 0, 'lang::product.config_manager.cost'),
(28, '', 'product_config_attribute_required', 'product_cost_required', '0', 1, 0, ''),
(29, '', 'product_config_attribute', 'product_promotion', '1', 1, 0, 'lang::product.config_manager.promotion'),
(30, '', 'product_config_attribute_required', 'product_promotion_required', '0', 1, 0, ''),
(31, '', 'product_config_attribute', 'product_stock', '1', 1, 0, 'lang::product.config_manager.stock'),
(32, '', 'product_config_attribute_required', 'product_stock_required', '0', 1, 0, ''),
(33, '', 'product_config_attribute', 'product_kind', '1', 1, 0, 'lang::product.config_manager.kind'),
(34, '', 'product_config_attribute', 'product_property', '1', 1, 0, 'lang::product.config_manager.property'),
(35, '', 'product_config_attribute_required', 'product_property_required', '0', 1, 0, ''),
(36, '', 'product_config_attribute', 'product_attribute', '1', 1, 0, 'lang::product.config_manager.attribute'),
(37, '', 'product_config_attribute_required', 'product_attribute_required', '0', 1, 0, ''),
(38, '', 'product_config_attribute', 'product_available', '1', 1, 0, 'lang::product.config_manager.available'),
(39, '', 'product_config_attribute_required', 'product_available_required', '0', 1, 0, ''),
(40, '', 'product_config_attribute', 'product_weight', '1', 1, 0, 'lang::product.config_manager.weight'),
(41, '', 'product_config_attribute_required', 'product_weight_required', '0', 1, 0, ''),
(42, '', 'product_config_attribute', 'product_length', '1', 1, 0, 'lang::product.config_manager.length'),
(43, '', 'product_config_attribute_required', 'product_length_required', '0', 1, 0, ''),
(44, '', 'product_config', 'product_display_out_of_stock', '1', 1, 19, 'lang::admin.product_display_out_of_stock'),
(45, '', 'product_config', 'show_date_available', '1', 1, 21, 'lang::admin.show_date_available'),
(46, '', 'product_config', 'product_tax', '1', 1, 0, 'lang::product.config_manager.tax'),
(47, '', 'customer_config_attribute', 'customer_lastname', '1', 1, 1, 'lang::customer.config_manager.lastname'),
(48, '', 'customer_config_attribute_required', 'customer_lastname_required', '1', 1, 1, ''),
(49, '', 'customer_config_attribute', 'customer_address1', '1', 1, 2, 'lang::customer.config_manager.address1'),
(50, '', 'customer_config_attribute_required', 'customer_address1_required', '1', 1, 2, ''),
(51, '', 'customer_config_attribute', 'customer_address2', '1', 1, 2, 'lang::customer.config_manager.address2'),
(52, '', 'customer_config_attribute_required', 'customer_address2_required', '1', 1, 2, ''),
(53, '', 'customer_config_attribute', 'customer_address3', '0', 1, 2, 'lang::customer.config_manager.address3'),
(54, '', 'customer_config_attribute_required', 'customer_address3_required', '0', 1, 2, ''),
(55, '', 'customer_config_attribute', 'customer_company', '0', 1, 0, 'lang::customer.config_manager.company'),
(56, '', 'customer_config_attribute_required', 'customer_company_required', '0', 1, 0, ''),
(57, '', 'customer_config_attribute', 'customer_postcode', '0', 1, 0, 'lang::customer.config_manager.postcode'),
(58, '', 'customer_config_attribute_required', 'customer_postcode_required', '0', 1, 0, ''),
(59, '', 'customer_config_attribute', 'customer_country', '1', 1, 0, 'lang::customer.config_manager.country'),
(60, '', 'customer_config_attribute_required', 'customer_country_required', '1', 1, 0, ''),
(61, '', 'customer_config_attribute', 'customer_group', '0', 1, 0, 'lang::customer.config_manager.group'),
(62, '', 'customer_config_attribute_required', 'customer_group_required', '0', 1, 0, ''),
(63, '', 'customer_config_attribute', 'customer_birthday', '0', 1, 0, 'lang::customer.config_manager.birthday'),
(64, '', 'customer_config_attribute_required', 'customer_birthday_required', '0', 1, 0, ''),
(65, '', 'customer_config_attribute', 'customer_sex', '0', 1, 0, 'lang::customer.config_manager.sex'),
(66, '', 'customer_config_attribute_required', 'customer_sex_required', '0', 1, 0, ''),
(67, '', 'customer_config_attribute', 'customer_phone', '1', 1, 0, 'lang::customer.config_manager.phone'),
(68, '', 'customer_config_attribute_required', 'customer_phone_required', '1', 1, 1, ''),
(69, '', 'customer_config_attribute', 'customer_name_kana', '0', 1, 0, 'lang::customer.config_manager.name_kana'),
(70, '', 'customer_config_attribute_required', 'customer_name_kana_required', '0', 1, 1, ''),
(71, '', 'admin_config', 'ADMIN_NAME', 'HaMaiPerfume', 1, 0, 'lang::env.ADMIN_NAME'),
(72, '', 'admin_config', 'ADMIN_TITLE', 'HaMaiPerfume', 1, 0, 'lang::env.ADMIN_TITLE'),
(73, '', 'admin_config', 'ADMIN_LOGO', 'HaMaiPerfume', 1, 0, 'lang::env.ADMIN_LOGO'),
(74, '', 'display_config', 'product_top', '8', 1, 0, 'lang::admin.product_top'),
(75, '', 'display_config', 'product_list', '12', 1, 0, 'lang::admin.list_product'),
(76, '', 'display_config', 'product_relation', '4', 1, 0, 'lang::admin.relation_product'),
(77, '', 'display_config', 'product_viewed', '4', 1, 0, 'lang::admin.viewed_product'),
(78, '', 'display_config', 'item_list', '12', 1, 0, 'lang::admin.item_list'),
(79, '', 'display_config', 'item_top', '8', 1, 0, 'lang::admin.item_top'),
(80, '', 'order_config', 'shop_allow_guest', '1', 1, 11, 'lang::order.admin.shop_allow_guest'),
(81, '', 'order_config', 'product_preorder', '1', 1, 18, 'lang::order.admin.product_preorder'),
(82, '', 'order_config', 'product_buy_out_of_stock', '1', 1, 20, 'lang::order.admin.product_buy_out_of_stock'),
(83, '', 'order_config', 'shipping_off', '0', 1, 20, 'lang::order.admin.shipping_off'),
(84, '', 'order_config', 'payment_off', '0', 1, 20, 'lang::order.admin.payment_off'),
(85, '', 'email_action', 'email_action_mode', '0', 1, 0, 'lang::email.email_action.email_action_mode'),
(86, '', 'email_action', 'email_action_queue', '0', 1, 1, 'lang::email.email_action.email_action_queue'),
(87, '', 'email_action', 'order_success_to_admin', '0', 1, 1, 'lang::email.email_action.order_success_to_admin'),
(88, '', 'email_action', 'order_success_to_customer', '0', 1, 2, 'lang::email.email_action.order_success_to_cutomer'),
(89, '', 'email_action', 'order_success_to_customer_pdf', '0', 1, 3, 'lang::email.email_action.order_success_to_cutomer_pdf'),
(90, '', 'email_action', 'customer_verify', '0', 1, 4, 'lang::email.email_action.customer_verify'),
(91, '', 'email_action', 'welcome_customer', '0', 1, 4, 'lang::email.email_action.welcome_customer'),
(92, '', 'email_action', 'contact_to_admin', '1', 1, 6, 'lang::email.email_action.contact_to_admin'),
(93, '', 'smtp_config', 'smtp_host', '', 1, 1, 'lang::email.smtp_host'),
(94, '', 'smtp_config', 'smtp_user', '', 1, 2, 'lang::email.smtp_user'),
(95, '', 'smtp_config', 'smtp_password', '', 1, 3, 'lang::email.smtp_password'),
(96, '', 'smtp_config', 'smtp_security', '', 1, 4, 'lang::email.smtp_security'),
(97, '', 'smtp_config', 'smtp_port', '', 1, 5, 'lang::email.smtp_port'),
(98, '', 'smtp_config', 'smtp_name', '', 1, 6, 'lang::email.smtp_name'),
(99, '', 'smtp_config', 'smtp_from', '', 1, 7, 'lang::email.smtp_from'),
(100, '', 'url_config', 'SUFFIX_URL', '.html', 1, 0, 'lang::url.SUFFIX_URL'),
(101, '', 'url_config', 'PREFIX_SHOP', 'shop', 1, 0, 'lang::env.PREFIX_SHOP'),
(102, '', 'url_config', 'PREFIX_BRAND', 'brand', 1, 0, 'lang::env.PREFIX_BRAND'),
(103, '', 'url_config', 'PREFIX_CATEGORY', 'category', 1, 0, 'lang::env.PREFIX_CATEGORY'),
(104, '', 'url_config', 'PREFIX_SUB_CATEGORY', 'sub-category', 1, 0, 'lang::env.PREFIX_SUB_CATEGORY'),
(105, '', 'url_config', 'PREFIX_PRODUCT', 'product', 1, 0, 'lang::env.PREFIX_PRODUCT'),
(106, '', 'url_config', 'PREFIX_SEARCH', 'search', 1, 0, 'lang::env.PREFIX_SEARCH'),
(107, '', 'url_config', 'PREFIX_CONTACT', 'contact', 1, 0, 'lang::env.PREFIX_CONTACT'),
(108, '', 'url_config', 'PREFIX_NEWS', 'news', 1, 0, 'lang::env.PREFIX_NEWS'),
(109, '', 'url_config', 'PREFIX_MEMBER', 'customer', 1, 0, 'lang::env.PREFIX_MEMBER'),
(110, '', 'url_config', 'PREFIX_MEMBER_ORDER_LIST', 'order-list', 1, 0, 'lang::env.PREFIX_MEMBER_ORDER_LIST'),
(111, '', 'url_config', 'PREFIX_MEMBER_CHANGE_PWD', 'change-password', 1, 0, 'lang::env.PREFIX_MEMBER_CHANGE_PWD'),
(112, '', 'url_config', 'PREFIX_MEMBER_CHANGE_INFO', 'change-info', 1, 0, 'lang::env.PREFIX_MEMBER_CHANGE_INFO'),
(113, '', 'url_config', 'PREFIX_CMS_CATEGORY', 'cms-category', 1, 0, 'lang::env.PREFIX_CMS_CATEGORY'),
(114, '', 'url_config', 'PREFIX_CMS_ENTRY', 'entry', 1, 0, 'lang::env.PREFIX_CMS_ENTRY'),
(115, '', 'url_config', 'PREFIX_CART_WISHLIST', 'wishlst', 1, 0, 'lang::env.PREFIX_CART_WISHLIST'),
(116, '', 'url_config', 'PREFIX_CART_COMPARE', 'compare', 1, 0, 'lang::env.PREFIX_CART_COMPARE'),
(117, '', 'url_config', 'PREFIX_CART_DEFAULT', 'cart', 1, 0, 'lang::env.PREFIX_CART_DEFAULT'),
(118, '', 'url_config', 'PREFIX_CART_CHECKOUT', 'checkout', 1, 0, 'lang::env.PREFIX_CART_CHECKOUT'),
(119, '', 'url_config', 'PREFIX_ORDER_SUCCESS', 'order-success', 1, 0, 'lang::env.PREFIX_ORDER_SUCCESS'),
(120, '', 'captcha_config', 'captcha_mode', '0', 1, 20, 'lang::captcha.captcha_mode'),
(121, '', 'captcha_config', 'captcha_page', '[]', 1, 10, 'lang::captcha.captcha_page'),
(122, '', 'captcha_config', 'captcha_method', '', 1, 0, 'lang::captcha.captcha_method');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sc_admin_log`
--

CREATE TABLE `sc_admin_log` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `method` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ip` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_agent` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `input` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `sc_admin_log`
--

INSERT INTO `sc_admin_log` (`id`, `user_id`, `path`, `method`, `ip`, `user_agent`, `input`, `created_at`, `updated_at`) VALUES
(1, 1, 'sc_admin', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36', '[]', '2022-01-12 13:04:20', '2022-01-12 13:04:20'),
(2, 1, 'sc_admin', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2022-01-12 13:27:49', '2022-01-12 13:27:49'),
(3, 1, 'sc_admin', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2022-01-12 14:16:29', '2022-01-12 14:16:29'),
(4, 1, 'sc_admin/store_info', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2022-01-12 14:16:33', '2022-01-12 14:16:33'),
(5, 1, 'sc_admin/store_info/update_info', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"name\":\"template\",\"value\":\"maihanperfume_template\",\"pk\":null,\"_token\":\"YtnuqVLaYo3LW9UtgChFJT75BsbCQJmhiMQCTSJz\",\"storeId\":\"1\"}', '2022-01-12 14:16:38', '2022-01-12 14:16:38'),
(6, 1, 'sc_admin/page', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2022-01-12 14:53:00', '2022-01-12 14:53:00'),
(7, 1, 'sc_admin/page/edit/1', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2022-01-12 14:53:04', '2022-01-12 14:53:04'),
(8, 1, 'sc_admin/page/edit/1', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"descriptions\":{\"en\":{\"title\":\"About\",\"keyword\":null,\"description\":null,\"content\":\"<h1>V\\u1ec0 KING PERFUME<\\/h1>\\r\\n\\r\\n<p>KING PERFUME \\u0111\\u01b0\\u1ee3c th&agrave;nh l\\u1eadp v&agrave;o n\\u0103m 2017, l&agrave; m\\u1ed9t trong nh\\u1eefng \\u0111\\u01a1n v\\u1ecb chuy&ecirc;n ph&acirc;n ph\\u1ed1i d&ograve;ng s\\u1ea3n ph\\u1ea9m Tinh d\\u1ea7u n\\u01b0\\u1edbc hoa Dubai ch&iacute;nh h&atilde;ng.<\\/p>\\r\\n\\r\\n<p>KING PERFUME ra \\u0111\\u1eddi nh\\u1eb1m khai th&aacute;c nhu c\\u1ea7u \\u0111ang t\\u0103ng l&ecirc;n c\\u1ee7a th\\u1ecb tr\\u01b0\\u1eddng n\\u01b0\\u1edbc hoa Vi\\u1ec7t Nam, KING PERFUME \\u0111\\u01b0\\u1ee3c kh&aacute;ch h&agrave;ng \\u0111&aacute;nh gi&aacute; r\\u1ea5t cao v\\u1ec1 d&ograve;ng s\\u1ea3n ph\\u1ea9m tinh d\\u1ea7u Dubai v&agrave; n\\u01b0\\u1edbc hoa Dubai do m\\u1eabu m&atilde; phong ph&uacute; v&agrave; ch\\u1ea5t l\\u01b0\\u1ee3ng t\\u1ed1t.<\\/p>\\r\\n\\r\\n<p><img alt=\\\"\\\" height=\\\"700\\\" loading=\\\"lazy\\\" sizes=\\\"(max-width: 1884px) 100vw, 1884px\\\" src=\\\"https:\\/\\/shopkingperfume.com\\/wp-content\\/uploads\\/2021\\/04\\/banner.png\\\" srcset=\\\"https:\\/\\/shopkingperfume.com\\/wp-content\\/uploads\\/2021\\/04\\/banner.png 1884w, https:\\/\\/shopkingperfume.com\\/wp-content\\/uploads\\/2021\\/04\\/banner-400x149.png 400w, https:\\/\\/shopkingperfume.com\\/wp-content\\/uploads\\/2021\\/04\\/banner-1024x380.png 1024w, https:\\/\\/shopkingperfume.com\\/wp-content\\/uploads\\/2021\\/04\\/banner-768x285.png 768w, https:\\/\\/shopkingperfume.com\\/wp-content\\/uploads\\/2021\\/04\\/banner-1536x571.png 1536w, https:\\/\\/shopkingperfume.com\\/wp-content\\/uploads\\/2021\\/04\\/banner-510x189.png 510w\\\" width=\\\"1884\\\" \\/><\\/p>\\r\\n\\r\\n<p>Cho \\u0111\\u1ebfn nay, KING PERFUME lu&ocirc;n n\\u1ed7 l\\u1ef1c kh&ocirc;ng ng\\u1eebng trong vi\\u1ec7c \\u0111a d\\u1ea1ng ho&aacute; d&ograve;ng s\\u1ea3n ph\\u1ea9m \\u0111\\u1ec3 ph\\u1ee5c v\\u1ee5 nhu c\\u1ea7u ng&agrave;y c&agrave;ng cao c\\u1ee7a kh&aacute;ch h&agrave;ng. B\\u1edfi v\\u1eady, ngo&agrave;i cung c\\u1ea5p s\\u1ea3n ph\\u1ea9m tinh d\\u1ea7u Dubai n\\u1ed9i \\u0111\\u1ecba, tinh d\\u1ea7u Dubai thi\\u1ebft k\\u1ebf, ch&uacute;ng t&ocirc;i c&ograve;n c\\u1eadp nh\\u1eadp th&ecirc;m nhi\\u1ec1u s\\u1ea3n ph\\u1ea9m t\\u1ed1t cho s\\u1ee9c kho\\u1ebb nh\\u01b0 Saffaron, M\\u1ef9 ph\\u1ea9m Jericho nh\\u1eadp kh\\u1ea9u t\\u1eeb Israel,&hellip;<\\/p>\\r\\n\\r\\n<p>Ngo&agrave;i ra KING PERFUME c&ograve;n chuy&ecirc;n order h&agrave;ng x&aacute;ch tay ch&iacute;nh h&atilde;ng t\\u1eeb th\\u1ecb tr\\u01b0\\u1eddng M\\u1ef9, &Uacute;c, H&agrave;n, Nh\\u1eadt,&hellip; v\\u1edbi nhi\\u1ec1u s\\u1ea3n ph\\u1ea9m \\u0111a d\\u1ea1ng nh\\u01b0 m\\u1ef9 ph\\u1ea9m, n\\u01b0\\u1edbc hoa, th\\u1ef1c ph\\u1ea9m ch\\u1ee9c n\\u0103ng, gi&agrave;y d&eacute;p, t&uacute;i x&aacute;ch,&hellip;.<\\/p>\\r\\n\\r\\n<p>KING PERFUME&nbsp;tin r\\u1eb1ng v\\u1edbi nh\\u1eefng n\\u1ed7 l\\u1ef1c v&agrave; ch\\u1ea5t l\\u01b0\\u1ee3ng s\\u1ea3n ph\\u1ea9m mang t\\u1edbi, ch&uacute;ng t&ocirc;i s\\u1ebd c&ograve;n ph&aacute;t tri\\u1ec3n h\\u01a1n n\\u1eefa trong th\\u1eddi gian s\\u1eafp t\\u1edbi. \\u0110\\u1ebfn v\\u1edbi ch&uacute;ng t&ocirc;i, kh&aacute;ch h&agrave;ng ti&ecirc;u d&ugrave;ng s\\u1ebd l\\u1ef1a ch\\u1ecdn \\u0111\\u01b0\\u1ee3c nh\\u1eefng s\\u1ea3n ph\\u1ea9m ch&iacute;nh h&atilde;ng v\\u1edbi ch\\u1ea5t l\\u01b0\\u1ee3ng t\\u1ed1t nh\\u1ea5t tr&ecirc;n th\\u1ecb tr\\u01b0\\u1eddng.<\\/p>\\r\\n\\r\\n<h2><strong>V\\u1ec0 TH\\u01af\\u01a0NG HI\\u1ec6U DUBAI LUXYRY<\\/strong><\\/h2>\\r\\n\\r\\n<p>Hi\\u1ec7n nay tr&ecirc;n th\\u1ecb tr\\u01b0\\u1eddng c&oacute; r\\u1ea5t nhi\\u1ec1u \\u0111\\u01a1n v\\u1ecb b&aacute;n s\\u1ea3n ph\\u1ea9m tinh d\\u1ea7u n\\u01b0\\u1edbc hoa Dubai v&agrave; n\\u01b0\\u1edbc hoa Dubai, tuy nhi&ecirc;n ch\\u01b0a th\\u1ef1c s\\u1ef1 c&oacute; nhi\\u1ec1u \\u0111\\u01a1n v\\u1ecb uy t&iacute;n v&agrave; b&aacute;n s\\u1ea3n ph\\u1ea9m n&agrave;y ch\\u1ea5t l\\u01b0\\u1ee3ng. Nhu c\\u1ea7u s\\u1edf h\\u1eefu m\\u1ed9t chai tinh d\\u1ea7u n\\u01b0\\u1edbc hoa t\\u0103ng cao c\\u0169ng d\\u1eabn \\u0111\\u1ebfn h&agrave;ng gi\\u1ea3, h&agrave;ng nh&aacute;i, h&agrave;ng k&eacute;m ch\\u1ea5t l\\u01b0\\u1ee3ng xu\\u1ea5t hi\\u1ec7n tr&agrave;n lan.<\\/p>\\r\\n\\r\\n<p>Hi\\u1ec3u \\u0111\\u01b0\\u1ee3c \\u0111i\\u1ec1u \\u0111&oacute;, DUBAI LUXURY l&agrave; th\\u01b0\\u01a1ng hi\\u1ec7u tinh d\\u1ea7u n\\u01b0\\u1edbc hoa Dubai do KING PERFUME x&aacute;ch tay v&agrave; ph&acirc;n ph\\u1ed1i ra \\u0111\\u1eddi nh\\u1eb1m mang \\u0111\\u1ebfn cho qu&yacute; kh&aacute;ch h&agrave;ng nh\\u1eefng s\\u1ea3n ph\\u1ea9m tinh d\\u1ea7u n\\u01b0\\u1edbc hoa, n\\u01b0\\u1edbc hoa Dubai CH&Iacute;NH H&Atilde;NG &ndash; CH\\u1ea4T L\\u01af\\u1ee2NG &ndash; UY T&Iacute;N H&Agrave;NG \\u0110\\u1ea6U.<\\/p>\\r\\n\\r\\n<figure aria-describedby=\\\"caption-attachment-3680\\\" id=\\\"attachment_3680\\\"><img alt=\\\"Logo v\\u00e0 bao b\\u00ec s\\u1ea3n ph\\u1ea9m th\\u01b0\\u01a1ng hi\\u1ec7u Dubai Luxury\\\" height=\\\"498\\\" loading=\\\"lazy\\\" sizes=\\\"(max-width: 640px) 100vw, 640px\\\" src=\\\"https:\\/\\/shopkingperfume.com\\/wp-content\\/uploads\\/2019\\/11\\/bao-bi-nuoc-hoa-dubai-luxury-1024x797.jpg\\\" srcset=\\\"https:\\/\\/shopkingperfume.com\\/wp-content\\/uploads\\/2019\\/11\\/bao-bi-nuoc-hoa-dubai-luxury-1024x797.jpg 1024w, https:\\/\\/shopkingperfume.com\\/wp-content\\/uploads\\/2019\\/11\\/bao-bi-nuoc-hoa-dubai-luxury-510x397.jpg 510w, https:\\/\\/shopkingperfume.com\\/wp-content\\/uploads\\/2019\\/11\\/bao-bi-nuoc-hoa-dubai-luxury-400x311.jpg 400w, https:\\/\\/shopkingperfume.com\\/wp-content\\/uploads\\/2019\\/11\\/bao-bi-nuoc-hoa-dubai-luxury-768x598.jpg 768w, https:\\/\\/shopkingperfume.com\\/wp-content\\/uploads\\/2019\\/11\\/bao-bi-nuoc-hoa-dubai-luxury.jpg 1200w\\\" width=\\\"640\\\" \\/>\\r\\n<figcaption id=\\\"caption-attachment-3680\\\">Logo v&agrave; bao b&igrave; s\\u1ea3n ph\\u1ea9m th\\u01b0\\u01a1ng hi\\u1ec7u Dubai Luxury<\\/figcaption>\\r\\n<\\/figure>\\r\\n\\r\\n<p>S\\u1ea3n ph\\u1ea9m c\\u1ee7a ch&uacute;ng t&ocirc;i CAM K\\u1ebeT \\u0111\\u1ec1u l&agrave; h&agrave;ng ch&iacute;nh h&atilde;ng 100%, n&oacute;i kh&ocirc;ng v\\u1edbi h&agrave;ng gi\\u1ea3, h&agrave;ng pha, h&agrave;ng k&eacute;m ch\\u1ea5t l\\u01b0\\u1ee3ng.<\\/p>\\r\\n\\r\\n<p>V\\u1edbi ti&ecirc;u ch&iacute; mang \\u0111\\u1ebfn cho kh&aacute;ch h&agrave;ng nh\\u1eefng s\\u1ea3n ph\\u1ea9m \\u0110\\u1ed8C \\u0110&Aacute;O &ndash; SANG TR\\u1eccNG &ndash; \\u0110\\u1eb2NG C\\u1ea4P, KING PERFUME tin r\\u1eb1ng s\\u1ebd mang \\u0111\\u1ebfn cho qu&yacute; kh&aacute;ch h&agrave;ng nh\\u1eefng s\\u1ea3n ph\\u1ea9m &ldquo;CH\\u1ea4T L\\u01af\\u1ee2NG V\\u01af\\u1ee2T NI\\u1ec0M TIN&rdquo;, t\\u1ee9c l&agrave; ch\\u1ea5t l\\u01b0\\u1ee3ng v\\u01b0\\u1ee3t tr&ecirc;n c\\u1ea3 s\\u1ef1 mong \\u0111\\u1ee3i c\\u1ee7a qu&yacute; kh&aacute;ch!<\\/p>\\r\\n\\r\\n<p>H&atilde;y \\u0111\\u1ebfn v\\u1edbi KING PERFUME ngay h&ocirc;m nay \\u0111\\u1ec3 tr\\u1ea3i nghi\\u1ec7m v&agrave; s\\u1edf h\\u1eefu nh\\u1eefng m&ugrave;i h\\u01b0\\u01a1ng ph&ugrave; h\\u1ee3p \\u0111\\u1ec3 th\\u1ec3 hi\\u1ec7n c&aacute; t&iacute;nh, s\\u1ef1 \\u0111\\u1eb3ng c\\u1ea5p c\\u1ee7a ch&iacute;nh b\\u1ea1n!<\\/p>\"},\"vi\":{\"title\":\"Gi\\u1edbi thi\\u1ec7u\",\"keyword\":null,\"description\":null,\"content\":\"<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt=\\\"\\\" src=\\\"\\/data\\/product\\/product-2.png\\\" style=\\\"width: 262px; height: 262px; float: right; margin: 10px;\\\" \\/><\\/p>\\r\\n\\r\\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<\\/p>\"}},\"image\":null,\"alias\":\"about\",\"status\":\"on\",\"_token\":\"YtnuqVLaYo3LW9UtgChFJT75BsbCQJmhiMQCTSJz\"}', '2022-01-12 14:54:33', '2022-01-12 14:54:33'),
(9, 1, 'sc_admin/page', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2022-01-12 14:54:34', '2022-01-12 14:54:34'),
(10, 1, 'sc_admin/page/edit/1', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2022-01-12 14:54:46', '2022-01-12 14:54:46'),
(11, 1, 'sc_admin/page/edit/1', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"descriptions\":{\"en\":{\"title\":\"About\",\"keyword\":null,\"description\":null,\"content\":\"<h1>V\\u1ec0 KING PERFUME<\\/h1>\\r\\n\\r\\n<p>KING PERFUME \\u0111\\u01b0\\u1ee3c th&agrave;nh l\\u1eadp v&agrave;o n\\u0103m 2017, l&agrave; m\\u1ed9t trong nh\\u1eefng \\u0111\\u01a1n v\\u1ecb chuy&ecirc;n ph&acirc;n ph\\u1ed1i d&ograve;ng s\\u1ea3n ph\\u1ea9m Tinh d\\u1ea7u n\\u01b0\\u1edbc hoa Dubai ch&iacute;nh h&atilde;ng.<\\/p>\\r\\n\\r\\n<p>KING PERFUME ra \\u0111\\u1eddi nh\\u1eb1m khai th&aacute;c nhu c\\u1ea7u \\u0111ang t\\u0103ng l&ecirc;n c\\u1ee7a th\\u1ecb tr\\u01b0\\u1eddng n\\u01b0\\u1edbc hoa Vi\\u1ec7t Nam, KING PERFUME \\u0111\\u01b0\\u1ee3c kh&aacute;ch h&agrave;ng \\u0111&aacute;nh gi&aacute; r\\u1ea5t cao v\\u1ec1 d&ograve;ng s\\u1ea3n ph\\u1ea9m tinh d\\u1ea7u Dubai v&agrave; n\\u01b0\\u1edbc hoa Dubai do m\\u1eabu m&atilde; phong ph&uacute; v&agrave; ch\\u1ea5t l\\u01b0\\u1ee3ng t\\u1ed1t.<\\/p>\\r\\n\\r\\n<p><img alt=\\\"\\\" height=\\\"700\\\" loading=\\\"lazy\\\" sizes=\\\"(max-width: 1884px) 100vw, 1884px\\\" src=\\\"https:\\/\\/shopkingperfume.com\\/wp-content\\/uploads\\/2021\\/04\\/banner.png\\\" srcset=\\\"https:\\/\\/shopkingperfume.com\\/wp-content\\/uploads\\/2021\\/04\\/banner.png 1884w, https:\\/\\/shopkingperfume.com\\/wp-content\\/uploads\\/2021\\/04\\/banner-400x149.png 400w, https:\\/\\/shopkingperfume.com\\/wp-content\\/uploads\\/2021\\/04\\/banner-1024x380.png 1024w, https:\\/\\/shopkingperfume.com\\/wp-content\\/uploads\\/2021\\/04\\/banner-768x285.png 768w, https:\\/\\/shopkingperfume.com\\/wp-content\\/uploads\\/2021\\/04\\/banner-1536x571.png 1536w, https:\\/\\/shopkingperfume.com\\/wp-content\\/uploads\\/2021\\/04\\/banner-510x189.png 510w\\\" width=\\\"1884\\\" \\/><\\/p>\\r\\n\\r\\n<p>Cho \\u0111\\u1ebfn nay, KING PERFUME lu&ocirc;n n\\u1ed7 l\\u1ef1c kh&ocirc;ng ng\\u1eebng trong vi\\u1ec7c \\u0111a d\\u1ea1ng ho&aacute; d&ograve;ng s\\u1ea3n ph\\u1ea9m \\u0111\\u1ec3 ph\\u1ee5c v\\u1ee5 nhu c\\u1ea7u ng&agrave;y c&agrave;ng cao c\\u1ee7a kh&aacute;ch h&agrave;ng. B\\u1edfi v\\u1eady, ngo&agrave;i cung c\\u1ea5p s\\u1ea3n ph\\u1ea9m tinh d\\u1ea7u Dubai n\\u1ed9i \\u0111\\u1ecba, tinh d\\u1ea7u Dubai thi\\u1ebft k\\u1ebf, ch&uacute;ng t&ocirc;i c&ograve;n c\\u1eadp nh\\u1eadp th&ecirc;m nhi\\u1ec1u s\\u1ea3n ph\\u1ea9m t\\u1ed1t cho s\\u1ee9c kho\\u1ebb nh\\u01b0 Saffaron, M\\u1ef9 ph\\u1ea9m Jericho nh\\u1eadp kh\\u1ea9u t\\u1eeb Israel,&hellip;<\\/p>\\r\\n\\r\\n<p>Ngo&agrave;i ra KING PERFUME c&ograve;n chuy&ecirc;n order h&agrave;ng x&aacute;ch tay ch&iacute;nh h&atilde;ng t\\u1eeb th\\u1ecb tr\\u01b0\\u1eddng M\\u1ef9, &Uacute;c, H&agrave;n, Nh\\u1eadt,&hellip; v\\u1edbi nhi\\u1ec1u s\\u1ea3n ph\\u1ea9m \\u0111a d\\u1ea1ng nh\\u01b0 m\\u1ef9 ph\\u1ea9m, n\\u01b0\\u1edbc hoa, th\\u1ef1c ph\\u1ea9m ch\\u1ee9c n\\u0103ng, gi&agrave;y d&eacute;p, t&uacute;i x&aacute;ch,&hellip;.<\\/p>\\r\\n\\r\\n<p>KING PERFUME&nbsp;tin r\\u1eb1ng v\\u1edbi nh\\u1eefng n\\u1ed7 l\\u1ef1c v&agrave; ch\\u1ea5t l\\u01b0\\u1ee3ng s\\u1ea3n ph\\u1ea9m mang t\\u1edbi, ch&uacute;ng t&ocirc;i s\\u1ebd c&ograve;n ph&aacute;t tri\\u1ec3n h\\u01a1n n\\u1eefa trong th\\u1eddi gian s\\u1eafp t\\u1edbi. \\u0110\\u1ebfn v\\u1edbi ch&uacute;ng t&ocirc;i, kh&aacute;ch h&agrave;ng ti&ecirc;u d&ugrave;ng s\\u1ebd l\\u1ef1a ch\\u1ecdn \\u0111\\u01b0\\u1ee3c nh\\u1eefng s\\u1ea3n ph\\u1ea9m ch&iacute;nh h&atilde;ng v\\u1edbi ch\\u1ea5t l\\u01b0\\u1ee3ng t\\u1ed1t nh\\u1ea5t tr&ecirc;n th\\u1ecb tr\\u01b0\\u1eddng.<\\/p>\\r\\n\\r\\n<h2><strong>V\\u1ec0 TH\\u01af\\u01a0NG HI\\u1ec6U DUBAI LUXYRY<\\/strong><\\/h2>\\r\\n\\r\\n<p>Hi\\u1ec7n nay tr&ecirc;n th\\u1ecb tr\\u01b0\\u1eddng c&oacute; r\\u1ea5t nhi\\u1ec1u \\u0111\\u01a1n v\\u1ecb b&aacute;n s\\u1ea3n ph\\u1ea9m tinh d\\u1ea7u n\\u01b0\\u1edbc hoa Dubai v&agrave; n\\u01b0\\u1edbc hoa Dubai, tuy nhi&ecirc;n ch\\u01b0a th\\u1ef1c s\\u1ef1 c&oacute; nhi\\u1ec1u \\u0111\\u01a1n v\\u1ecb uy t&iacute;n v&agrave; b&aacute;n s\\u1ea3n ph\\u1ea9m n&agrave;y ch\\u1ea5t l\\u01b0\\u1ee3ng. Nhu c\\u1ea7u s\\u1edf h\\u1eefu m\\u1ed9t chai tinh d\\u1ea7u n\\u01b0\\u1edbc hoa t\\u0103ng cao c\\u0169ng d\\u1eabn \\u0111\\u1ebfn h&agrave;ng gi\\u1ea3, h&agrave;ng nh&aacute;i, h&agrave;ng k&eacute;m ch\\u1ea5t l\\u01b0\\u1ee3ng xu\\u1ea5t hi\\u1ec7n tr&agrave;n lan.<\\/p>\\r\\n\\r\\n<p>Hi\\u1ec3u \\u0111\\u01b0\\u1ee3c \\u0111i\\u1ec1u \\u0111&oacute;, DUBAI LUXURY l&agrave; th\\u01b0\\u01a1ng hi\\u1ec7u tinh d\\u1ea7u n\\u01b0\\u1edbc hoa Dubai do KING PERFUME x&aacute;ch tay v&agrave; ph&acirc;n ph\\u1ed1i ra \\u0111\\u1eddi nh\\u1eb1m mang \\u0111\\u1ebfn cho qu&yacute; kh&aacute;ch h&agrave;ng nh\\u1eefng s\\u1ea3n ph\\u1ea9m tinh d\\u1ea7u n\\u01b0\\u1edbc hoa, n\\u01b0\\u1edbc hoa Dubai CH&Iacute;NH H&Atilde;NG &ndash; CH\\u1ea4T L\\u01af\\u1ee2NG &ndash; UY T&Iacute;N H&Agrave;NG \\u0110\\u1ea6U.<\\/p>\\r\\n\\r\\n<figure aria-describedby=\\\"caption-attachment-3680\\\" id=\\\"attachment_3680\\\"><img alt=\\\"Logo v\\u00e0 bao b\\u00ec s\\u1ea3n ph\\u1ea9m th\\u01b0\\u01a1ng hi\\u1ec7u Dubai Luxury\\\" height=\\\"498\\\" loading=\\\"lazy\\\" sizes=\\\"(max-width: 640px) 100vw, 640px\\\" src=\\\"https:\\/\\/shopkingperfume.com\\/wp-content\\/uploads\\/2019\\/11\\/bao-bi-nuoc-hoa-dubai-luxury-1024x797.jpg\\\" srcset=\\\"https:\\/\\/shopkingperfume.com\\/wp-content\\/uploads\\/2019\\/11\\/bao-bi-nuoc-hoa-dubai-luxury-1024x797.jpg 1024w, https:\\/\\/shopkingperfume.com\\/wp-content\\/uploads\\/2019\\/11\\/bao-bi-nuoc-hoa-dubai-luxury-510x397.jpg 510w, https:\\/\\/shopkingperfume.com\\/wp-content\\/uploads\\/2019\\/11\\/bao-bi-nuoc-hoa-dubai-luxury-400x311.jpg 400w, https:\\/\\/shopkingperfume.com\\/wp-content\\/uploads\\/2019\\/11\\/bao-bi-nuoc-hoa-dubai-luxury-768x598.jpg 768w, https:\\/\\/shopkingperfume.com\\/wp-content\\/uploads\\/2019\\/11\\/bao-bi-nuoc-hoa-dubai-luxury.jpg 1200w\\\" width=\\\"640\\\" \\/>\\r\\n<figcaption id=\\\"caption-attachment-3680\\\">Logo v&agrave; bao b&igrave; s\\u1ea3n ph\\u1ea9m th\\u01b0\\u01a1ng hi\\u1ec7u Dubai Luxury<\\/figcaption>\\r\\n<\\/figure>\\r\\n\\r\\n<p>S\\u1ea3n ph\\u1ea9m c\\u1ee7a ch&uacute;ng t&ocirc;i CAM K\\u1ebeT \\u0111\\u1ec1u l&agrave; h&agrave;ng ch&iacute;nh h&atilde;ng 100%, n&oacute;i kh&ocirc;ng v\\u1edbi h&agrave;ng gi\\u1ea3, h&agrave;ng pha, h&agrave;ng k&eacute;m ch\\u1ea5t l\\u01b0\\u1ee3ng.<\\/p>\\r\\n\\r\\n<p>V\\u1edbi ti&ecirc;u ch&iacute; mang \\u0111\\u1ebfn cho kh&aacute;ch h&agrave;ng nh\\u1eefng s\\u1ea3n ph\\u1ea9m \\u0110\\u1ed8C \\u0110&Aacute;O &ndash; SANG TR\\u1eccNG &ndash; \\u0110\\u1eb2NG C\\u1ea4P, KING PERFUME tin r\\u1eb1ng s\\u1ebd mang \\u0111\\u1ebfn cho qu&yacute; kh&aacute;ch h&agrave;ng nh\\u1eefng s\\u1ea3n ph\\u1ea9m &ldquo;CH\\u1ea4T L\\u01af\\u1ee2NG V\\u01af\\u1ee2T NI\\u1ec0M TIN&rdquo;, t\\u1ee9c l&agrave; ch\\u1ea5t l\\u01b0\\u1ee3ng v\\u01b0\\u1ee3t tr&ecirc;n c\\u1ea3 s\\u1ef1 mong \\u0111\\u1ee3i c\\u1ee7a qu&yacute; kh&aacute;ch!<\\/p>\\r\\n\\r\\n<p>H&atilde;y \\u0111\\u1ebfn v\\u1edbi KING PERFUME ngay h&ocirc;m nay \\u0111\\u1ec3 tr\\u1ea3i nghi\\u1ec7m v&agrave; s\\u1edf h\\u1eefu nh\\u1eefng m&ugrave;i h\\u01b0\\u01a1ng ph&ugrave; h\\u1ee3p \\u0111\\u1ec3 th\\u1ec3 hi\\u1ec7n c&aacute; t&iacute;nh, s\\u1ef1 \\u0111\\u1eb3ng c\\u1ea5p c\\u1ee7a ch&iacute;nh b\\u1ea1n!<\\/p>\"},\"vi\":{\"title\":\"Gi\\u1edbi thi\\u1ec7u\",\"keyword\":null,\"description\":null,\"content\":\"<h1>V\\u1ec0 KING PERFUME<\\/h1>\\r\\n\\r\\n<p>KING PERFUME \\u0111\\u01b0\\u1ee3c th&agrave;nh l\\u1eadp v&agrave;o n\\u0103m 2017, l&agrave; m\\u1ed9t trong nh\\u1eefng \\u0111\\u01a1n v\\u1ecb chuy&ecirc;n ph&acirc;n ph\\u1ed1i d&ograve;ng s\\u1ea3n ph\\u1ea9m Tinh d\\u1ea7u n\\u01b0\\u1edbc hoa Dubai ch&iacute;nh h&atilde;ng.<\\/p>\\r\\n\\r\\n<p>KING PERFUME ra \\u0111\\u1eddi nh\\u1eb1m khai th&aacute;c nhu c\\u1ea7u \\u0111ang t\\u0103ng l&ecirc;n c\\u1ee7a th\\u1ecb tr\\u01b0\\u1eddng n\\u01b0\\u1edbc hoa Vi\\u1ec7t Nam, KING PERFUME \\u0111\\u01b0\\u1ee3c kh&aacute;ch h&agrave;ng \\u0111&aacute;nh gi&aacute; r\\u1ea5t cao v\\u1ec1 d&ograve;ng s\\u1ea3n ph\\u1ea9m tinh d\\u1ea7u Dubai v&agrave; n\\u01b0\\u1edbc hoa Dubai do m\\u1eabu m&atilde; phong ph&uacute; v&agrave; ch\\u1ea5t l\\u01b0\\u1ee3ng t\\u1ed1t.<\\/p>\\r\\n\\r\\n<p><img alt=\\\"\\\" height=\\\"700\\\" loading=\\\"lazy\\\" sizes=\\\"(max-width: 1884px) 100vw, 1884px\\\" src=\\\"https:\\/\\/shopkingperfume.com\\/wp-content\\/uploads\\/2021\\/04\\/banner.png\\\" srcset=\\\"https:\\/\\/shopkingperfume.com\\/wp-content\\/uploads\\/2021\\/04\\/banner.png 1884w, https:\\/\\/shopkingperfume.com\\/wp-content\\/uploads\\/2021\\/04\\/banner-400x149.png 400w, https:\\/\\/shopkingperfume.com\\/wp-content\\/uploads\\/2021\\/04\\/banner-1024x380.png 1024w, https:\\/\\/shopkingperfume.com\\/wp-content\\/uploads\\/2021\\/04\\/banner-768x285.png 768w, https:\\/\\/shopkingperfume.com\\/wp-content\\/uploads\\/2021\\/04\\/banner-1536x571.png 1536w, https:\\/\\/shopkingperfume.com\\/wp-content\\/uploads\\/2021\\/04\\/banner-510x189.png 510w\\\" width=\\\"1884\\\" \\/><\\/p>\\r\\n\\r\\n<p>Cho \\u0111\\u1ebfn nay, KING PERFUME lu&ocirc;n n\\u1ed7 l\\u1ef1c kh&ocirc;ng ng\\u1eebng trong vi\\u1ec7c \\u0111a d\\u1ea1ng ho&aacute; d&ograve;ng s\\u1ea3n ph\\u1ea9m \\u0111\\u1ec3 ph\\u1ee5c v\\u1ee5 nhu c\\u1ea7u ng&agrave;y c&agrave;ng cao c\\u1ee7a kh&aacute;ch h&agrave;ng. B\\u1edfi v\\u1eady, ngo&agrave;i cung c\\u1ea5p s\\u1ea3n ph\\u1ea9m tinh d\\u1ea7u Dubai n\\u1ed9i \\u0111\\u1ecba, tinh d\\u1ea7u Dubai thi\\u1ebft k\\u1ebf, ch&uacute;ng t&ocirc;i c&ograve;n c\\u1eadp nh\\u1eadp th&ecirc;m nhi\\u1ec1u s\\u1ea3n ph\\u1ea9m t\\u1ed1t cho s\\u1ee9c kho\\u1ebb nh\\u01b0 Saffaron, M\\u1ef9 ph\\u1ea9m Jericho nh\\u1eadp kh\\u1ea9u t\\u1eeb Israel,&hellip;<\\/p>\\r\\n\\r\\n<p>Ngo&agrave;i ra KING PERFUME c&ograve;n chuy&ecirc;n order h&agrave;ng x&aacute;ch tay ch&iacute;nh h&atilde;ng t\\u1eeb th\\u1ecb tr\\u01b0\\u1eddng M\\u1ef9, &Uacute;c, H&agrave;n, Nh\\u1eadt,&hellip; v\\u1edbi nhi\\u1ec1u s\\u1ea3n ph\\u1ea9m \\u0111a d\\u1ea1ng nh\\u01b0 m\\u1ef9 ph\\u1ea9m, n\\u01b0\\u1edbc hoa, th\\u1ef1c ph\\u1ea9m ch\\u1ee9c n\\u0103ng, gi&agrave;y d&eacute;p, t&uacute;i x&aacute;ch,&hellip;.<\\/p>\\r\\n\\r\\n<p>KING PERFUME&nbsp;tin r\\u1eb1ng v\\u1edbi nh\\u1eefng n\\u1ed7 l\\u1ef1c v&agrave; ch\\u1ea5t l\\u01b0\\u1ee3ng s\\u1ea3n ph\\u1ea9m mang t\\u1edbi, ch&uacute;ng t&ocirc;i s\\u1ebd c&ograve;n ph&aacute;t tri\\u1ec3n h\\u01a1n n\\u1eefa trong th\\u1eddi gian s\\u1eafp t\\u1edbi. \\u0110\\u1ebfn v\\u1edbi ch&uacute;ng t&ocirc;i, kh&aacute;ch h&agrave;ng ti&ecirc;u d&ugrave;ng s\\u1ebd l\\u1ef1a ch\\u1ecdn \\u0111\\u01b0\\u1ee3c nh\\u1eefng s\\u1ea3n ph\\u1ea9m ch&iacute;nh h&atilde;ng v\\u1edbi ch\\u1ea5t l\\u01b0\\u1ee3ng t\\u1ed1t nh\\u1ea5t tr&ecirc;n th\\u1ecb tr\\u01b0\\u1eddng.<\\/p>\\r\\n\\r\\n<h2><strong>V\\u1ec0 TH\\u01af\\u01a0NG HI\\u1ec6U DUBAI LUXYRY<\\/strong><\\/h2>\\r\\n\\r\\n<p>Hi\\u1ec7n nay tr&ecirc;n th\\u1ecb tr\\u01b0\\u1eddng c&oacute; r\\u1ea5t nhi\\u1ec1u \\u0111\\u01a1n v\\u1ecb b&aacute;n s\\u1ea3n ph\\u1ea9m tinh d\\u1ea7u n\\u01b0\\u1edbc hoa Dubai v&agrave; n\\u01b0\\u1edbc hoa Dubai, tuy nhi&ecirc;n ch\\u01b0a th\\u1ef1c s\\u1ef1 c&oacute; nhi\\u1ec1u \\u0111\\u01a1n v\\u1ecb uy t&iacute;n v&agrave; b&aacute;n s\\u1ea3n ph\\u1ea9m n&agrave;y ch\\u1ea5t l\\u01b0\\u1ee3ng. Nhu c\\u1ea7u s\\u1edf h\\u1eefu m\\u1ed9t chai tinh d\\u1ea7u n\\u01b0\\u1edbc hoa t\\u0103ng cao c\\u0169ng d\\u1eabn \\u0111\\u1ebfn h&agrave;ng gi\\u1ea3, h&agrave;ng nh&aacute;i, h&agrave;ng k&eacute;m ch\\u1ea5t l\\u01b0\\u1ee3ng xu\\u1ea5t hi\\u1ec7n tr&agrave;n lan.<\\/p>\\r\\n\\r\\n<p>Hi\\u1ec3u \\u0111\\u01b0\\u1ee3c \\u0111i\\u1ec1u \\u0111&oacute;, DUBAI LUXURY l&agrave; th\\u01b0\\u01a1ng hi\\u1ec7u tinh d\\u1ea7u n\\u01b0\\u1edbc hoa Dubai do KING PERFUME x&aacute;ch tay v&agrave; ph&acirc;n ph\\u1ed1i ra \\u0111\\u1eddi nh\\u1eb1m mang \\u0111\\u1ebfn cho qu&yacute; kh&aacute;ch h&agrave;ng nh\\u1eefng s\\u1ea3n ph\\u1ea9m tinh d\\u1ea7u n\\u01b0\\u1edbc hoa, n\\u01b0\\u1edbc hoa Dubai CH&Iacute;NH H&Atilde;NG &ndash; CH\\u1ea4T L\\u01af\\u1ee2NG &ndash; UY T&Iacute;N H&Agrave;NG \\u0110\\u1ea6U.<\\/p>\\r\\n\\r\\n<figure aria-describedby=\\\"caption-attachment-3680\\\" id=\\\"attachment_3680\\\"><img alt=\\\"Logo v\\u00e0 bao b\\u00ec s\\u1ea3n ph\\u1ea9m th\\u01b0\\u01a1ng hi\\u1ec7u Dubai Luxury\\\" height=\\\"498\\\" loading=\\\"lazy\\\" sizes=\\\"(max-width: 640px) 100vw, 640px\\\" src=\\\"https:\\/\\/shopkingperfume.com\\/wp-content\\/uploads\\/2019\\/11\\/bao-bi-nuoc-hoa-dubai-luxury-1024x797.jpg\\\" srcset=\\\"https:\\/\\/shopkingperfume.com\\/wp-content\\/uploads\\/2019\\/11\\/bao-bi-nuoc-hoa-dubai-luxury-1024x797.jpg 1024w, https:\\/\\/shopkingperfume.com\\/wp-content\\/uploads\\/2019\\/11\\/bao-bi-nuoc-hoa-dubai-luxury-510x397.jpg 510w, https:\\/\\/shopkingperfume.com\\/wp-content\\/uploads\\/2019\\/11\\/bao-bi-nuoc-hoa-dubai-luxury-400x311.jpg 400w, https:\\/\\/shopkingperfume.com\\/wp-content\\/uploads\\/2019\\/11\\/bao-bi-nuoc-hoa-dubai-luxury-768x598.jpg 768w, https:\\/\\/shopkingperfume.com\\/wp-content\\/uploads\\/2019\\/11\\/bao-bi-nuoc-hoa-dubai-luxury.jpg 1200w\\\" width=\\\"640\\\" \\/>\\r\\n<figcaption id=\\\"caption-attachment-3680\\\">Logo v&agrave; bao b&igrave; s\\u1ea3n ph\\u1ea9m th\\u01b0\\u01a1ng hi\\u1ec7u Dubai Luxury<\\/figcaption>\\r\\n<\\/figure>\\r\\n\\r\\n<p>S\\u1ea3n ph\\u1ea9m c\\u1ee7a ch&uacute;ng t&ocirc;i CAM K\\u1ebeT \\u0111\\u1ec1u l&agrave; h&agrave;ng ch&iacute;nh h&atilde;ng 100%, n&oacute;i kh&ocirc;ng v\\u1edbi h&agrave;ng gi\\u1ea3, h&agrave;ng pha, h&agrave;ng k&eacute;m ch\\u1ea5t l\\u01b0\\u1ee3ng.<\\/p>\\r\\n\\r\\n<p>V\\u1edbi ti&ecirc;u ch&iacute; mang \\u0111\\u1ebfn cho kh&aacute;ch h&agrave;ng nh\\u1eefng s\\u1ea3n ph\\u1ea9m \\u0110\\u1ed8C \\u0110&Aacute;O &ndash; SANG TR\\u1eccNG &ndash; \\u0110\\u1eb2NG C\\u1ea4P, KING PERFUME tin r\\u1eb1ng s\\u1ebd mang \\u0111\\u1ebfn cho qu&yacute; kh&aacute;ch h&agrave;ng nh\\u1eefng s\\u1ea3n ph\\u1ea9m &ldquo;CH\\u1ea4T L\\u01af\\u1ee2NG V\\u01af\\u1ee2T NI\\u1ec0M TIN&rdquo;, t\\u1ee9c l&agrave; ch\\u1ea5t l\\u01b0\\u1ee3ng v\\u01b0\\u1ee3t tr&ecirc;n c\\u1ea3 s\\u1ef1 mong \\u0111\\u1ee3i c\\u1ee7a qu&yacute; kh&aacute;ch!<\\/p>\\r\\n\\r\\n<p>H&atilde;y \\u0111\\u1ebfn v\\u1edbi KING PERFUME ngay h&ocirc;m nay \\u0111\\u1ec3 tr\\u1ea3i nghi\\u1ec7m v&agrave; s\\u1edf h\\u1eefu nh\\u1eefng m&ugrave;i h\\u01b0\\u01a1ng ph&ugrave; h\\u1ee3p \\u0111\\u1ec3 th\\u1ec3 hi\\u1ec7n c&aacute; t&iacute;nh, s\\u1ef1 \\u0111\\u1eb3ng c\\u1ea5p c\\u1ee7a ch&iacute;nh b\\u1ea1n!<\\/p>\"}},\"image\":null,\"alias\":\"about\",\"status\":\"on\",\"_token\":\"YtnuqVLaYo3LW9UtgChFJT75BsbCQJmhiMQCTSJz\"}', '2022-01-12 15:00:11', '2022-01-12 15:00:11'),
(12, 1, 'sc_admin/page', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2022-01-12 15:00:11', '2022-01-12 15:00:11'),
(13, 1, 'sc_admin/language', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2022-01-12 15:00:22', '2022-01-12 15:00:22'),
(14, 1, 'sc_admin/language/edit/1', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2022-01-12 15:00:25', '2022-01-12 15:00:25'),
(15, 1, 'sc_admin/language/edit/1', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"name\":\"English\",\"code\":\"en\",\"icon\":\"\\/data\\/language\\/flag_uk.png\",\"sort\":\"1\",\"_token\":\"YtnuqVLaYo3LW9UtgChFJT75BsbCQJmhiMQCTSJz\"}', '2022-01-12 15:00:30', '2022-01-12 15:00:30'),
(16, 1, 'sc_admin/language/edit/1', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2022-01-12 15:00:31', '2022-01-12 15:00:31'),
(17, 1, 'sc_admin', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2022-01-12 16:20:26', '2022-01-12 16:20:26'),
(18, 1, 'sc_admin/news', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2022-01-12 16:20:40', '2022-01-12 16:20:40'),
(19, 1, 'sc_admin/news/edit/6', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2022-01-12 16:20:44', '2022-01-12 16:20:44'),
(20, 1, 'sc_admin/uploads', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"type\":\"content\"}', '2022-01-12 16:20:57', '2022-01-12 16:20:57'),
(21, 1, 'sc_admin/uploads/folders', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"working_dir\":null,\"type\":\"content\",\"_\":\"1642004461709\"}', '2022-01-12 16:21:02', '2022-01-12 16:21:02'),
(22, 1, 'sc_admin/uploads/errors', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"working_dir\":null,\"type\":\"content\",\"_\":\"1642004461710\"}', '2022-01-12 16:21:02', '2022-01-12 16:21:02'),
(23, 1, 'sc_admin/uploads/jsonitems', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"working_dir\":null,\"type\":\"content\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1642004461711\"}', '2022-01-12 16:21:04', '2022-01-12 16:21:04'),
(24, 1, 'sc_admin', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2022-01-12 16:21:49', '2022-01-12 16:21:49'),
(25, 1, 'sc_admin/news', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2022-01-12 16:22:33', '2022-01-12 16:22:33'),
(26, 1, 'sc_admin/news/edit/6', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2022-01-12 16:22:37', '2022-01-12 16:22:37'),
(27, 1, 'sc_admin/uploads', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"type\":\"content\"}', '2022-01-12 16:22:49', '2022-01-12 16:22:49'),
(28, 1, 'sc_admin/uploads/folders', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"working_dir\":null,\"type\":\"content\",\"_\":\"1642004569863\"}', '2022-01-12 16:22:50', '2022-01-12 16:22:50'),
(29, 1, 'sc_admin/uploads/errors', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"working_dir\":null,\"type\":\"content\",\"_\":\"1642004569864\"}', '2022-01-12 16:22:50', '2022-01-12 16:22:50'),
(30, 1, 'sc_admin/uploads/jsonitems', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"working_dir\":null,\"type\":\"content\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1642004569865\"}', '2022-01-12 16:22:52', '2022-01-12 16:22:52'),
(31, 1, 'sc_admin/product', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2022-01-12 16:23:32', '2022-01-12 16:23:32'),
(32, 1, 'sc_admin/news', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2022-01-12 16:23:39', '2022-01-12 16:23:39'),
(33, 1, 'sc_admin/news/edit/6', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2022-01-12 16:23:43', '2022-01-12 16:23:43'),
(34, 1, 'sc_admin/uploads', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"type\":\"content\"}', '2022-01-12 16:23:51', '2022-01-12 16:23:51'),
(35, 1, 'sc_admin/uploads/folders', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"working_dir\":null,\"type\":\"content\",\"_\":\"1642004632066\"}', '2022-01-12 16:23:53', '2022-01-12 16:23:53'),
(36, 1, 'sc_admin/uploads/errors', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"working_dir\":null,\"type\":\"content\",\"_\":\"1642004632067\"}', '2022-01-12 16:23:53', '2022-01-12 16:23:53'),
(37, 1, 'sc_admin/uploads/jsonitems', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"working_dir\":null,\"type\":\"content\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1642004632068\"}', '2022-01-12 16:23:55', '2022-01-12 16:23:55'),
(38, 1, 'sc_admin/product', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2022-01-12 16:23:56', '2022-01-12 16:23:56'),
(39, 1, 'sc_admin/product/edit/17', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2022-01-12 16:24:00', '2022-01-12 16:24:00'),
(40, 1, 'sc_admin/uploads', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"type\":\"content\"}', '2022-01-12 16:24:32', '2022-01-12 16:24:32'),
(41, 1, 'sc_admin/uploads/folders', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"working_dir\":null,\"type\":\"content\",\"_\":\"1642004672720\"}', '2022-01-12 16:24:33', '2022-01-12 16:24:33'),
(42, 1, 'sc_admin/uploads/errors', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"working_dir\":null,\"type\":\"content\",\"_\":\"1642004672721\"}', '2022-01-12 16:24:34', '2022-01-12 16:24:34'),
(43, 1, 'sc_admin/uploads/jsonitems', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"working_dir\":null,\"type\":\"content\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1642004672722\"}', '2022-01-12 16:24:35', '2022-01-12 16:24:35'),
(44, 1, 'sc_admin/uploads', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"type\":\"content\"}', '2022-01-12 16:24:38', '2022-01-12 16:24:38'),
(45, 1, 'sc_admin/uploads/folders', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"working_dir\":null,\"type\":\"content\",\"_\":\"1642004679397\"}', '2022-01-12 16:24:40', '2022-01-12 16:24:40'),
(46, 1, 'sc_admin/uploads/errors', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"working_dir\":null,\"type\":\"content\",\"_\":\"1642004679398\"}', '2022-01-12 16:24:41', '2022-01-12 16:24:41'),
(47, 1, 'sc_admin/uploads/jsonitems', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"working_dir\":null,\"type\":\"content\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1642004679399\"}', '2022-01-12 16:24:42', '2022-01-12 16:24:42'),
(48, 1, 'sc_admin/uploads/upload', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"content\",\"_token\":\"YtnuqVLaYo3LW9UtgChFJT75BsbCQJmhiMQCTSJz\"}', '2022-01-12 16:26:26', '2022-01-12 16:26:26'),
(49, 1, 'sc_admin/uploads/folders', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"content\",\"_\":\"1642004679400\"}', '2022-01-12 16:26:27', '2022-01-12 16:26:27'),
(50, 1, 'sc_admin/uploads/jsonitems', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"content\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1642004679401\"}', '2022-01-12 16:26:29', '2022-01-12 16:26:29'),
(51, 1, 'sc_admin/news/edit/6', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"descriptions\":{\"vi\":{\"title\":\"Easy Polo Black Edition 6\",\"keyword\":null,\"description\":null,\"content\":\"<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt=\\\"\\\" src=\\\"\\/data\\/product\\/product-10.png\\\" style=\\\"width: 262px; height: 262px; float: right; margin: 10px;\\\" \\/><\\/p>\\r\\n\\r\\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<\\/p>\"}},\"alias\":\"demo-alias-blog-6\",\"image\":\"\\/data\\/content\\/blog_use.jpg\",\"sort\":\"0\",\"status\":\"on\",\"_token\":\"YtnuqVLaYo3LW9UtgChFJT75BsbCQJmhiMQCTSJz\"}', '2022-01-12 16:26:38', '2022-01-12 16:26:38'),
(52, 1, 'sc_admin/news', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2022-01-12 16:26:39', '2022-01-12 16:26:39'),
(53, 1, 'sc_admin/product', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2022-01-12 16:37:21', '2022-01-12 16:37:21'),
(54, 1, 'sc_admin/product/edit/12', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2022-01-12 16:37:39', '2022-01-12 16:37:39'),
(55, 1, 'sc_admin/uploads', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"type\":\"product\"}', '2022-01-12 16:37:52', '2022-01-12 16:37:52'),
(56, 1, 'sc_admin/uploads/folders', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"working_dir\":null,\"type\":\"product\",\"_\":\"1642005472990\"}', '2022-01-12 16:37:54', '2022-01-12 16:37:54'),
(57, 1, 'sc_admin/uploads/errors', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"working_dir\":null,\"type\":\"product\",\"_\":\"1642005472991\"}', '2022-01-12 16:37:55', '2022-01-12 16:37:55'),
(58, 1, 'sc_admin/uploads/jsonitems', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"working_dir\":null,\"type\":\"product\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1642005472992\"}', '2022-01-12 16:37:56', '2022-01-12 16:37:56'),
(59, 1, 'sc_admin/uploads/upload', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"product\",\"_token\":\"YtnuqVLaYo3LW9UtgChFJT75BsbCQJmhiMQCTSJz\"}', '2022-01-12 16:38:19', '2022-01-12 16:38:19'),
(60, 1, 'sc_admin/uploads/folders', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"product\",\"_\":\"1642005472993\"}', '2022-01-12 16:38:20', '2022-01-12 16:38:20'),
(61, 1, 'sc_admin/uploads/jsonitems', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"product\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1642005472994\"}', '2022-01-12 16:38:21', '2022-01-12 16:38:21'),
(62, 1, 'sc_admin/product/edit/12', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"descriptions\":{\"vi\":{\"name\":\"Easy Polo Black Edition 12\",\"keyword\":null,\"description\":null,\"content\":\"<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt=\\\"\\\" src=\\\"\\/data\\/product\\/product-10.png\\\" style=\\\"width: 262px; height: 262px; float: right; margin: 10px;\\\" \\/><\\/p>\\r\\n\\r\\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<\\/p>\"}},\"category\":[\"9\"],\"image\":\"\\/data\\/product\\/product_use.jpg\",\"sku\":\"3D-CARBON175\",\"alias\":\"demo-alias-name-product-12\",\"brand_id\":\"2\",\"supplier_id\":\"1\",\"cost\":\"10000\",\"price\":\"15000\",\"tax_id\":\"auto\",\"stock\":\"100\",\"weight_class\":null,\"weight\":\"0\",\"length_class\":null,\"length\":\"0\",\"height\":\"0\",\"width\":\"0\",\"property\":\"physical\",\"download_path\":null,\"date_available\":null,\"minimum\":\"5\",\"sort\":\"0\",\"status\":\"on\",\"_token\":\"YtnuqVLaYo3LW9UtgChFJT75BsbCQJmhiMQCTSJz\"}', '2022-01-12 16:38:32', '2022-01-12 16:38:32'),
(63, 1, 'sc_admin/product', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2022-01-12 16:38:33', '2022-01-12 16:38:33'),
(64, 1, 'sc_admin', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2022-01-13 01:28:30', '2022-01-13 01:28:30'),
(65, 1, 'sc_admin/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2022-01-13 01:28:36', '2022-01-13 01:28:36'),
(66, 1, 'sc_admin/news', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2022-01-13 01:28:45', '2022-01-13 01:28:45'),
(67, 1, 'sc_admin/news/edit/6', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2022-01-13 01:28:47', '2022-01-13 01:28:47'),
(68, 1, 'sc_admin', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2022-01-13 01:31:01', '2022-01-13 01:31:01'),
(69, 1, 'sc_admin/news', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2022-01-13 01:31:12', '2022-01-13 01:31:12'),
(70, 1, 'sc_admin/news/edit/5', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2022-01-13 01:31:20', '2022-01-13 01:31:20'),
(71, 1, 'sc_admin/news/edit/5', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"descriptions\":{\"vi\":{\"title\":\"Easy Polo Black Edition 5\",\"keyword\":null,\"description\":\"Tinh d\\u1ea7u n\\u01b0\\u1edbc hoa Dubai t\\u1ea1i HT Market l\\u00e0 d\\u00f2ng n\\u01b0\\u1edbc hoa n\\u1ed5i ti\\u1ebfng v\\u1edbi m\\u00f9i h\\u01b0\\u01a1ng si\\u00eau quy\\u1ebfn r\\u0169...\",\"content\":\"<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt=\\\"\\\" src=\\\"\\/data\\/product\\/product-10.png\\\" style=\\\"width: 262px; height: 262px; float: right; margin: 10px;\\\" \\/><\\/p>\\r\\n\\r\\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<\\/p>\"}},\"alias\":\"demo-alias-blog-5\",\"image\":\"\\/data\\/content\\/blog-5.jpg\",\"sort\":\"0\",\"status\":\"on\",\"_token\":\"CKxqKq9n7EUIxd8NrZucHF10Bndo2NDyTCTcGDU9\"}', '2022-01-13 01:32:06', '2022-01-13 01:32:06'),
(72, 1, 'sc_admin/news', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2022-01-13 01:32:07', '2022-01-13 01:32:07'),
(73, 1, 'sc_admin/news/edit/5', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2022-01-13 01:33:19', '2022-01-13 01:33:19'),
(74, 1, 'sc_admin/uploads', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"type\":\"content\"}', '2022-01-13 01:33:23', '2022-01-13 01:33:23'),
(75, 1, 'sc_admin/uploads/errors', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"working_dir\":null,\"type\":\"content\",\"_\":\"1642037603960\"}', '2022-01-13 01:33:24', '2022-01-13 01:33:24'),
(76, 1, 'sc_admin/uploads/folders', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"working_dir\":null,\"type\":\"content\",\"_\":\"1642037603959\"}', '2022-01-13 01:33:24', '2022-01-13 01:33:24'),
(77, 1, 'sc_admin/uploads/jsonitems', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"working_dir\":null,\"type\":\"content\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1642037603961\"}', '2022-01-13 01:33:25', '2022-01-13 01:33:25'),
(78, 1, 'sc_admin/news/edit/6', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2022-01-13 01:34:13', '2022-01-13 01:34:13'),
(79, 1, 'sc_admin/news', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2022-01-13 01:34:18', '2022-01-13 01:34:18'),
(80, 1, 'sc_admin/news/edit/5', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2022-01-13 01:34:23', '2022-01-13 01:34:23'),
(81, 1, 'sc_admin/uploads', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"type\":\"content\"}', '2022-01-13 01:34:36', '2022-01-13 01:34:36'),
(82, 1, 'sc_admin/uploads/folders', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"working_dir\":null,\"type\":\"content\",\"_\":\"1642037677198\"}', '2022-01-13 01:34:38', '2022-01-13 01:34:38'),
(83, 1, 'sc_admin/uploads/errors', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"working_dir\":null,\"type\":\"content\",\"_\":\"1642037677199\"}', '2022-01-13 01:34:38', '2022-01-13 01:34:38'),
(84, 1, 'sc_admin/uploads/jsonitems', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"working_dir\":null,\"type\":\"content\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1642037677200\"}', '2022-01-13 01:34:39', '2022-01-13 01:34:39'),
(85, 1, 'sc_admin/news/edit/5', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"descriptions\":{\"vi\":{\"title\":\"Tinh d\\u1ea7u n\\u01b0\\u1edbc hoa Dubai gi\\u00e1 bao nhi\\u00eau? c\\u00f3 \\u0111\\u1eaft kh\\u00f4ng?\",\"keyword\":null,\"description\":\"Tinh d\\u1ea7u n\\u01b0\\u1edbc hoa Dubai t\\u1ea1i HT Market l\\u00e0 d\\u00f2ng n\\u01b0\\u1edbc hoa n\\u1ed5i ti\\u1ebfng v\\u1edbi m\\u00f9i h\\u01b0\\u01a1ng si\\u00eau quy\\u1ebfn r\\u0169...\",\"content\":\"<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt=\\\"\\\" src=\\\"\\/data\\/product\\/product-10.png\\\" style=\\\"width: 262px; height: 262px; float: right; margin: 10px;\\\" \\/><\\/p>\\r\\n\\r\\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<\\/p>\"}},\"alias\":null,\"image\":\"\\/data\\/content\\/blog_use.jpg\",\"sort\":\"0\",\"status\":\"on\",\"_token\":\"CKxqKq9n7EUIxd8NrZucHF10Bndo2NDyTCTcGDU9\"}', '2022-01-13 01:35:16', '2022-01-13 01:35:16'),
(86, 1, 'sc_admin/news/edit/5', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2022-01-13 01:35:16', '2022-01-13 01:35:16');
INSERT INTO `sc_admin_log` (`id`, `user_id`, `path`, `method`, `ip`, `user_agent`, `input`, `created_at`, `updated_at`) VALUES
(87, 1, 'sc_admin/news/edit/5', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"descriptions\":{\"vi\":{\"title\":\"Tinh d\\u1ea7u n\\u01b0\\u1edbc hoa Dubai gi\\u00e1 bao nhi\\u00eau? c\\u00f3 \\u0111\\u1eaft kh\\u00f4ng?\",\"keyword\":null,\"description\":\"Tinh d\\u1ea7u n\\u01b0\\u1edbc hoa Dubai t\\u1ea1i HT Market l\\u00e0 d\\u00f2ng n\\u01b0\\u1edbc hoa n\\u1ed5i ti\\u1ebfng v\\u1edbi m\\u00f9i h\\u01b0\\u01a1ng si\\u00eau quy\\u1ebfn r\\u0169...\",\"content\":\"<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt=\\\"\\\" src=\\\"\\/data\\/product\\/product-10.png\\\" style=\\\"width: 262px; height: 262px; float: right; margin: 10px;\\\" \\/><\\/p>\\r\\n\\r\\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<\\/p>\"}},\"alias\":\"tinh-dau-nuoc-hoa-dubai-gia-bao-nhieu\",\"image\":\"\\/data\\/content\\/blog_use.jpg\",\"sort\":\"0\",\"status\":\"on\",\"_token\":\"CKxqKq9n7EUIxd8NrZucHF10Bndo2NDyTCTcGDU9\"}', '2022-01-13 01:35:24', '2022-01-13 01:35:24'),
(88, 1, 'sc_admin/news', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2022-01-13 01:35:25', '2022-01-13 01:35:25'),
(89, 1, 'sc_admin/news/edit/6', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2022-01-13 01:35:44', '2022-01-13 01:35:44'),
(90, 1, 'sc_admin/news/edit/5', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2022-01-13 01:35:45', '2022-01-13 01:35:45'),
(91, 1, 'sc_admin/news/edit/6', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"descriptions\":{\"vi\":{\"title\":\"Easy Polo Black Edition 6\",\"keyword\":null,\"description\":\"Tinh d\\u1ea7u n\\u01b0\\u1edbc hoa Dubai t\\u1ea1i HT Market l\\u00e0 d\\u00f2ng n\\u01b0\\u1edbc hoa n\\u1ed5i ti\\u1ebfng v\\u1edbi m\\u00f9i h\\u01b0\\u01a1ng si\\u00eau quy\\u1ebfn r\\u0169...\",\"content\":\"<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt=\\\"\\\" src=\\\"\\/data\\/product\\/product-10.png\\\" style=\\\"width: 262px; height: 262px; float: right; margin: 10px;\\\" \\/><\\/p>\\r\\n\\r\\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<\\/p>\"}},\"alias\":\"demo-alias-blog-6\",\"image\":\"\\/data\\/content\\/blog_use.jpg\",\"sort\":\"0\",\"status\":\"on\",\"_token\":\"CKxqKq9n7EUIxd8NrZucHF10Bndo2NDyTCTcGDU9\"}', '2022-01-13 01:36:15', '2022-01-13 01:36:15'),
(92, 1, 'sc_admin/news', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2022-01-13 01:36:16', '2022-01-13 01:36:16'),
(93, 1, 'sc_admin/product', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2022-01-13 01:38:53', '2022-01-13 01:38:53'),
(94, 1, 'sc_admin/product/edit/12', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2022-01-13 01:39:37', '2022-01-13 01:39:37'),
(95, 1, 'sc_admin/product/edit/12', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"descriptions\":{\"vi\":{\"name\":\"N\\u01b0\\u1edbc hoa N\\u1eef Dubai Mazaaji EDP\",\"keyword\":null,\"description\":null,\"content\":\"<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt=\\\"\\\" src=\\\"\\/data\\/product\\/product-10.png\\\" style=\\\"width: 262px; height: 262px; float: right; margin: 10px;\\\" \\/><\\/p>\\r\\n\\r\\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<\\/p>\"}},\"category\":[\"9\"],\"image\":\"\\/data\\/product\\/product_use.jpg\",\"sku\":\"3D-CARBON175\",\"alias\":null,\"brand_id\":\"2\",\"supplier_id\":\"1\",\"cost\":\"10000\",\"price\":\"15000\",\"tax_id\":\"auto\",\"stock\":\"100\",\"weight_class\":null,\"weight\":\"0\",\"length_class\":null,\"length\":\"0\",\"height\":\"0\",\"width\":\"0\",\"property\":\"physical\",\"download_path\":null,\"date_available\":null,\"minimum\":\"5\",\"sort\":\"0\",\"status\":\"on\",\"_token\":\"CKxqKq9n7EUIxd8NrZucHF10Bndo2NDyTCTcGDU9\"}', '2022-01-13 01:40:31', '2022-01-13 01:40:31'),
(96, 1, 'sc_admin/product', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2022-01-13 01:40:32', '2022-01-13 01:40:32'),
(97, 1, 'sc_admin/product/edit/12', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2022-01-13 01:58:06', '2022-01-13 01:58:06'),
(98, 1, 'sc_admin/product/edit/12', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"descriptions\":{\"vi\":{\"name\":\"N\\u01b0\\u1edbc hoa N\\u1eef Dubai Mazaaji EDP\",\"keyword\":null,\"description\":\"Tinh d\\u1ea7u n\\u01b0\\u1edbc hoa Dubai t\\u1ea1i HT Market l\\u00e0 d\\u00f2ng n\\u01b0\\u1edbc hoa n\\u1ed5i ti\\u1ebfng v\\u1edbi m\\u00f9i h\\u01b0\\u01a1ng si\\u00eau quy\\u1ebfn r\\u0169...\",\"content\":\"<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt=\\\"\\\" src=\\\"\\/data\\/product\\/product-10.png\\\" style=\\\"width: 262px; height: 262px; float: right; margin: 10px;\\\" \\/><\\/p>\\r\\n\\r\\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<\\/p>\"}},\"category\":[\"9\"],\"image\":\"\\/data\\/product\\/product_use.jpg\",\"sku\":\"3D-CARBON175\",\"alias\":\"nuoc-hoa-nu-dubai-mazaaji-edp\",\"brand_id\":\"2\",\"supplier_id\":\"1\",\"cost\":\"10000\",\"price\":\"15000\",\"tax_id\":\"auto\",\"stock\":\"100\",\"weight_class\":null,\"weight\":\"0\",\"length_class\":null,\"length\":\"0\",\"height\":\"0\",\"width\":\"0\",\"property\":\"physical\",\"download_path\":null,\"date_available\":null,\"minimum\":\"5\",\"sort\":\"0\",\"status\":\"on\",\"_token\":\"CKxqKq9n7EUIxd8NrZucHF10Bndo2NDyTCTcGDU9\"}', '2022-01-13 02:02:39', '2022-01-13 02:02:39'),
(99, 1, 'sc_admin/product', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2022-01-13 02:02:39', '2022-01-13 02:02:39'),
(100, 1, 'sc_admin/product/edit/12', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2022-01-13 02:02:50', '2022-01-13 02:02:50'),
(101, 1, 'sc_admin/product/edit/12', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"descriptions\":{\"vi\":{\"name\":\"N\\u01b0\\u1edbc hoa N\\u1eef Dubai Mazaaji EDP\",\"keyword\":null,\"description\":\"Tinh d\\u1ea7u n\\u01b0\\u1edbc hoa Dubai t\\u1ea1i HT Market l\\u00e0 d\\u00f2ng n\\u01b0\\u1edbc hoa n\\u1ed5i ti\\u1ebfng v\\u1edbi m\\u00f9i h\\u01b0\\u01a1ng si\\u00eau quy\\u1ebfn r\\u0169...\",\"content\":\"<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt=\\\"\\\" src=\\\"\\/data\\/product\\/product-10.png\\\" style=\\\"width: 262px; height: 262px; float: right; margin: 10px;\\\" \\/><\\/p>\\r\\n\\r\\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<\\/p>\"}},\"category\":[\"9\"],\"image\":\"\\/data\\/product\\/product_use.jpg\",\"sku\":\"3D-CARBON175\",\"alias\":\"nuoc-hoa-nu-dubai-mazaaji-edp\",\"brand_id\":\"2\",\"supplier_id\":\"1\",\"cost\":\"10000\",\"price\":\"4800000\",\"tax_id\":\"auto\",\"price_promotion\":\"2999000\",\"price_promotion_start\":\"2022-01-12\",\"price_promotion_end\":\"2022-03-16\",\"stock\":\"100\",\"weight_class\":null,\"weight\":\"0\",\"length_class\":null,\"length\":\"0\",\"height\":\"0\",\"width\":\"0\",\"property\":\"physical\",\"download_path\":null,\"date_available\":null,\"minimum\":\"5\",\"sort\":\"0\",\"status\":\"on\",\"_token\":\"CKxqKq9n7EUIxd8NrZucHF10Bndo2NDyTCTcGDU9\"}', '2022-01-13 02:03:54', '2022-01-13 02:03:54'),
(102, 1, 'sc_admin/product', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2022-01-13 02:03:55', '2022-01-13 02:03:55'),
(103, 1, 'sc_admin/currency', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2022-01-13 02:04:23', '2022-01-13 02:04:23'),
(104, 1, 'sc_admin/currency/edit/2', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2022-01-13 02:04:27', '2022-01-13 02:04:27'),
(105, 1, 'sc_admin/currency/edit/2', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"name\":\"VietNam Dong\",\"code\":\"VND\",\"symbol\":\"\\u20ab\",\"exchange_rate\":\"1\",\"precision\":\"0\",\"symbol_first\":\"0\",\"thousands\":\",\",\"sort\":\"1\",\"status\":\"on\",\"_token\":\"CKxqKq9n7EUIxd8NrZucHF10Bndo2NDyTCTcGDU9\"}', '2022-01-13 02:04:35', '2022-01-13 02:04:35'),
(106, 1, 'sc_admin/currency', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2022-01-13 02:04:35', '2022-01-13 02:04:35'),
(107, 1, 'sc_admin/currency/edit/1', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2022-01-13 02:04:38', '2022-01-13 02:04:38'),
(108, 1, 'sc_admin/currency/edit/1', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"name\":\"USD Dola\",\"code\":\"USD\",\"symbol\":\"$\",\"exchange_rate\":\"1\",\"precision\":\"0\",\"symbol_first\":\"0\",\"thousands\":\",\",\"sort\":\"0\",\"status\":\"on\",\"_token\":\"CKxqKq9n7EUIxd8NrZucHF10Bndo2NDyTCTcGDU9\"}', '2022-01-13 02:04:42', '2022-01-13 02:04:42'),
(109, 1, 'sc_admin/currency', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2022-01-13 02:04:43', '2022-01-13 02:04:43'),
(110, 1, 'sc_admin/currency/edit/1', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2022-01-13 02:04:52', '2022-01-13 02:04:52'),
(111, 1, 'sc_admin/currency/edit/1', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"name\":\"USD Dola\",\"code\":\"USD\",\"symbol\":\"$\",\"exchange_rate\":\"1\",\"precision\":\"0\",\"symbol_first\":\"0\",\"thousands\":\",\",\"sort\":\"0\",\"_token\":\"CKxqKq9n7EUIxd8NrZucHF10Bndo2NDyTCTcGDU9\"}', '2022-01-13 02:04:55', '2022-01-13 02:04:55'),
(112, 1, 'sc_admin/currency', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2022-01-13 02:04:56', '2022-01-13 02:04:56'),
(113, 1, 'sc_admin/currency/edit/1', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2022-01-13 02:05:11', '2022-01-13 02:05:11'),
(114, 1, 'sc_admin/currency/edit/1', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2022-01-13 02:05:57', '2022-01-13 02:05:57'),
(115, 1, 'sc_admin/currency', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2022-01-13 02:10:10', '2022-01-13 02:10:10'),
(116, 1, 'sc_admin/product', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2022-01-13 02:11:17', '2022-01-13 02:11:17'),
(117, 1, 'sc_admin/product/edit/12', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2022-01-13 02:11:24', '2022-01-13 02:11:24'),
(118, 1, 'sc_admin/product/edit/12', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"descriptions\":{\"vi\":{\"name\":\"N\\u01b0\\u1edbc hoa N\\u1eef Dubai Mazaaji EDP\",\"keyword\":null,\"description\":\"Tinh d\\u1ea7u n\\u01b0\\u1edbc hoa Dubai t\\u1ea1i HT Market l\\u00e0 d\\u00f2ng n\\u01b0\\u1edbc hoa n\\u1ed5i ti\\u1ebfng v\\u1edbi m\\u00f9i h\\u01b0\\u01a1ng si\\u00eau quy\\u1ebfn r\\u0169...\",\"content\":\"<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt=\\\"\\\" src=\\\"\\/data\\/product\\/product-10.png\\\" style=\\\"width: 262px; height: 262px; float: right; margin: 10px;\\\" \\/><\\/p>\\r\\n\\r\\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<\\/p>\"}},\"category\":[\"9\"],\"image\":\"\\/data\\/product\\/product_use.jpg\",\"sku\":\"3D-CARBON175\",\"alias\":\"nuoc-hoa-nu-dubai-mazaaji-edp\",\"brand_id\":\"2\",\"supplier_id\":\"1\",\"cost\":null,\"price\":\"4800000\",\"tax_id\":\"0\",\"price_promotion\":\"2999000\",\"price_promotion_start\":\"2022-01-12\",\"price_promotion_end\":\"2022-03-16\",\"stock\":\"100\",\"weight_class\":null,\"weight\":\"0\",\"length_class\":null,\"length\":\"0\",\"height\":\"0\",\"width\":\"0\",\"property\":\"physical\",\"download_path\":null,\"date_available\":null,\"minimum\":\"5\",\"sort\":\"0\",\"status\":\"on\",\"_token\":\"CKxqKq9n7EUIxd8NrZucHF10Bndo2NDyTCTcGDU9\"}', '2022-01-13 02:13:09', '2022-01-13 02:13:09'),
(119, 1, 'sc_admin/product', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2022-01-13 02:13:10', '2022-01-13 02:13:10'),
(120, 1, 'sc_admin/store_link', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2022-01-13 02:50:47', '2022-01-13 02:50:47'),
(121, 1, 'sc_admin/news', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2022-01-13 03:05:32', '2022-01-13 03:05:32'),
(122, 1, 'sc_admin/news/edit/5', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2022-01-13 03:06:20', '2022-01-13 03:06:20'),
(123, 1, 'sc_admin/news/edit/5', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"descriptions\":{\"vi\":{\"title\":\"Tinh d\\u1ea7u n\\u01b0\\u1edbc hoa Dubai gi\\u00e1 bao nhi\\u00eau? c\\u00f3 \\u0111\\u1eaft kh\\u00f4ng?\",\"keyword\":null,\"description\":\"Tinh d\\u1ea7u n\\u01b0\\u1edbc hoa Dubai t\\u1ea1i HT Market l\\u00e0 d\\u00f2ng n\\u01b0\\u1edbc hoa n\\u1ed5i ti\\u1ebfng v\\u1edbi m\\u00f9i h\\u01b0\\u01a1ng si\\u00eau quy\\u1ebfn r\\u0169...\",\"content\":\"<header>\\r\\n<h1>Tinh d\\u1ea7u n\\u01b0\\u1edbc hoa Dubai gi&aacute; bao nhi&ecirc;u? c&oacute; \\u0111\\u1eaft kh&ocirc;ng?<\\/h1>\\r\\n<\\/header>\\r\\n\\r\\n<p>Tinh d\\u1ea7u n\\u01b0\\u1edbc hoa Dubai t\\u1ea1i HT Market l&agrave; d&ograve;ng n\\u01b0\\u1edbc hoa n\\u1ed5i ti\\u1ebfng v\\u1edbi m&ugrave;i h\\u01b0\\u01a1ng si&ecirc;u quy\\u1ebfn r\\u0169 c&ugrave;ng \\u0111\\u1ed9 l\\u01b0u h\\u01b0\\u01a1ng l&acirc;u khi\\u1ebfn nhi\\u1ec1u ng\\u01b0\\u1eddi say \\u0111\\u1eafm. Tinh d\\u1ea7u n\\u01b0\\u1edbc hoa Dubai gi&aacute; bao nhi&ecirc;u? C&oacute; \\u0111\\u1eaft kh&ocirc;ng? L&agrave; nh\\u1eefng c&acirc;u h\\u1ecfi m&agrave; nhi\\u1ec1u ng\\u01b0\\u1eddi \\u0111ang ph&acirc;n v&acirc;n.<\\/p>\\r\\n\\r\\n<p><img alt=\\\"tinh dau dubai gia bao nhieu\\\" height=\\\"600\\\" loading=\\\"lazy\\\" sizes=\\\"(max-width: 800px) 100vw, 800px\\\" src=\\\"https:\\/\\/hungthinhmart.com\\/wp-content\\/uploads\\/2017\\/12\\/tinh-dau-nuoc-hoa-dubai-gia-bao-nhieu.jpg\\\" srcset=\\\"https:\\/\\/hungthinhmart.com\\/wp-content\\/uploads\\/2017\\/12\\/tinh-dau-nuoc-hoa-dubai-gia-bao-nhieu.jpg 800w, https:\\/\\/hungthinhmart.com\\/wp-content\\/uploads\\/2017\\/12\\/tinh-dau-nuoc-hoa-dubai-gia-bao-nhieu-510x383.jpg 510w, https:\\/\\/hungthinhmart.com\\/wp-content\\/uploads\\/2017\\/12\\/tinh-dau-nuoc-hoa-dubai-gia-bao-nhieu-400x300.jpg 400w, https:\\/\\/hungthinhmart.com\\/wp-content\\/uploads\\/2017\\/12\\/tinh-dau-nuoc-hoa-dubai-gia-bao-nhieu-768x576.jpg 768w\\\" width=\\\"800\\\" \\/><\\/p>\\r\\n\\r\\n<p><strong>\\u0110\\u1eb3ng c\\u1ea5p tinh d\\u1ea7u n\\u01b0\\u1edbc hoa Dubai t\\u1ea1i&nbsp;HT Market<\\/strong><br \\/>\\r\\nTinh d\\u1ea7u n\\u01b0\\u1edbc hoa Dubai l&agrave; m\\u1ed9t trong nh\\u1eefng d&ograve;ng n\\u01b0\\u1edbc hoa \\u0111ang hot nh\\u1ea5t tr&ecirc;n th\\u1ecb tr\\u01b0\\u1eddng hi\\u1ec7n nay. V\\u1edbi tinh ch\\u1ea5t n\\u01b0\\u1edbc hoa k\\u1ebft h\\u1ee3p v\\u1edbi tinh d\\u1ea7u c\\u1ee7a c&aacute;c h\\u01b0\\u01a1ng li\\u1ec7u t\\u1ef1 nhi&ecirc;n t\\u1ed5ng h\\u1ee3p c&ugrave;ng c&aacute;ch \\u0111i\\u1ec1u ch\\u1ebf \\u0111\\u1eb7c bi\\u1ec7t do ng\\u01b0\\u1eddi d&acirc;n Dubai s&aacute;ng ch\\u1ebf, ch\\u1ec9 m\\u1ed9t v&agrave;i gi\\u1ecdt tinh d\\u1ea7u th&ocirc;i c\\u0169ng \\u0111\\u1ee7 khi\\u1ebfn b\\u1ea1n v\\u1ea5n v\\u01b0\\u01a1ng m&atilde;i kh&ocirc;ng th\\u1ec3 n&agrave;o qu&ecirc;n \\u0111\\u01b0\\u1ee3c. Trong n\\u1ed9i dung tr\\u01b0\\u1edbc HT Market \\u0111&atilde; chia s\\u1ebb cho c&aacute;c b\\u1ea1n b&agrave;i vi\\u1ebft Tinh D\\u1ea7u N\\u01b0\\u1edbc Hoa Dubai Hot Nh\\u1ea5t Hi\\u1ec7n Nay d&agrave;nh cho nh\\u1eefng ai ch\\u01b0a bi\\u1ebft v\\u1ec1 th\\u01b0\\u01a1ng hi\\u1ec7u n&agrave;y. H&ocirc;m nay, ch&uacute;ng t&ocirc;i s\\u1ebd gi\\u1ea3i \\u0111&aacute;p th\\u1eafc m\\u1eafc tinh d\\u1ea7u n\\u01b0\\u1edbc hoa Dubai gi&aacute; bao nhi&ecirc;u? c&oacute; \\u0111\\u1eaft kh&ocirc;ng \\u0111\\u1ec3 c&aacute;c b\\u1ea1n c&oacute; th&ecirc;m ki\\u1ebfn th\\u1ee9c v\\u1ec1 lo\\u1ea1i n\\u01b0\\u1edbc hoa n&agrave;y nh&eacute;!<\\/p>\\r\\n\\r\\n<p><img alt=\\\"tinh dau nuoc hoa dubai gia phai chang\\\" height=\\\"600\\\" loading=\\\"lazy\\\" sizes=\\\"(max-width: 800px) 100vw, 800px\\\" src=\\\"https:\\/\\/hungthinhmart.com\\/wp-content\\/uploads\\/2017\\/12\\/tinh-dau-nuoc-hoa-dubai-gia-phai-chang.jpg\\\" srcset=\\\"https:\\/\\/hungthinhmart.com\\/wp-content\\/uploads\\/2017\\/12\\/tinh-dau-nuoc-hoa-dubai-gia-phai-chang.jpg 800w, https:\\/\\/hungthinhmart.com\\/wp-content\\/uploads\\/2017\\/12\\/tinh-dau-nuoc-hoa-dubai-gia-phai-chang-510x383.jpg 510w, https:\\/\\/hungthinhmart.com\\/wp-content\\/uploads\\/2017\\/12\\/tinh-dau-nuoc-hoa-dubai-gia-phai-chang-400x300.jpg 400w, https:\\/\\/hungthinhmart.com\\/wp-content\\/uploads\\/2017\\/12\\/tinh-dau-nuoc-hoa-dubai-gia-phai-chang-768x576.jpg 768w\\\" width=\\\"800\\\" \\/><\\/p>\\r\\n\\r\\n<p><strong>Tinh d\\u1ea7u n\\u01b0\\u1edbc hoa Dubai gi&aacute; c\\u1ea3 r\\u1ea5t ph\\u1ea3i ch\\u0103ng, ph&ugrave; h\\u1ee3p t&uacute;i ti\\u1ec1n c\\u1ee7a m\\u1ecdi ng\\u01b0\\u1eddi<\\/strong><br \\/>\\r\\nN&oacute;i v\\u1ec1 gi&aacute; c\\u1ea3, \\u0111\\u1ec3 s\\u1edf h\\u1eefu m\\u1ed9t chai n\\u01b0\\u1edbc hoa ch&iacute;nh h&atilde;ng, ch\\u1ea5t l\\u01b0\\u1ee3ng c\\u1ee7a nh\\u1eefng th\\u01b0\\u01a1ng hi\\u1ec7u n\\u1ed5i ti\\u1ebfng nh\\u01b0 Chanel, Gucci, Armani, Burberry,&hellip;b\\u1ea1n ph\\u1ea3i b\\u1ecf ra h&agrave;ng tri\\u1ec7u \\u0111\\u1ebfn h&agrave;ng ch\\u1ee5c tri\\u1ec7u \\u0111\\u1ed3ng cho m\\u1ed9t chai 20ml, 50ml \\u0111\\u1ebfn 100ml,&hellip;Nh\\u01b0ng, b\\u1ea1n ch\\u1ec9 c\\u1ea7n b\\u1ecf ra ch\\u1ec9 ch\\u01b0a t\\u1edbi &frac14; s\\u1ed1 ti\\u1ec1n n&agrave;y cho m\\u1ed9t chai tinh d\\u1ea7u n\\u01b0\\u1edbc hoa Dubai ch&iacute;nh h&atilde;ng v\\u1edbi m&ugrave;i h\\u01b0\\u01a1ng tuy\\u1ec7t \\u0111\\u1ed1i kh&ocirc;ng kh&aacute;c bi\\u1ec7t g&igrave; so v\\u1edbi nh\\u1eefng s\\u1ea3n ph\\u1ea9m n\\u1ed5i ti\\u1ebfng tr&ecirc;n. Q&uacute;a r\\u1ebb ph\\u1ea3i kh&ocirc;ng n&agrave;o?<br \\/>\\r\\nLi\\u1ec7u c&oacute; ch&iacute;nh x&aacute;c nh\\u01b0 v\\u1eady kh&ocirc;ng? T\\u1ea1i sao c&ugrave;ng m&ugrave;i h\\u01b0\\u01a1ng m&agrave; gi&aacute; c\\u1ea3 l\\u1ea1i kh&aacute;c nhau? S\\u1edf d\\u0129 c&oacute; s\\u1ef1 gi\\u1ed1ng nhau nh\\u01b0ng kh&aacute;c bi\\u1ec7t v\\u1ec1 gi&aacute; c\\u1ea3 l&agrave; do c&aacute;c th\\u01b0\\u01a1ng hi\\u1ec7u n\\u1ed5i ti\\u1ebfng h\\u1ecd d&ugrave;ng th\\u01b0\\u01a1ng hi\\u1ec7u v&agrave; \\u0111\\u1ed9 n\\u1ed5i ti\\u1ebfng c\\u1ee7a m&igrave;nh \\u0111\\u1ec3 n&acirc;ng gi&aacute; b&aacute;n, nh\\u1eafm v&agrave;o c&aacute;c kh&aacute;ch h&agrave;ng ti\\u1ec1m n\\u0103ng nh\\u01b0 tri\\u1ec7u ph&uacute;, ca s\\u0129, di\\u1ec5n vi&ecirc;n h\\u1ea1ng A v&agrave; nh\\u1eefng ng\\u01b0\\u1eddi mu\\u1ed1n th\\u1ec3 hi\\u1ec7n \\u0111\\u1eb3ng c\\u1ea5p c\\u1ee7a m&igrave;nh. Ri&ecirc;ng v\\u1edbi tinh d\\u1ea7u n\\u01b0\\u1edbc hoa Dubai, \\u0111&acirc;y l&agrave; s\\u1ea3n ph\\u1ea9m \\u0111\\u01b0\\u1ee3c tinh ch\\u1ebf t\\u1eeb Dubai, m\\u1ed9t qu\\u1ed1c gia c&oacute; kh&iacute; h\\u1eadu n&oacute;ng quanh n\\u0103m.<\\/p>\\r\\n\\r\\n<p><img alt=\\\"tinh d\\u1ea7u n\\u01b0\\u1edbc hoa dubai gi\\u00e1 r\\u1ebb\\\" height=\\\"600\\\" loading=\\\"lazy\\\" sizes=\\\"(max-width: 800px) 100vw, 800px\\\" src=\\\"https:\\/\\/hungthinhmart.com\\/wp-content\\/uploads\\/2017\\/12\\/tinh-dau-nuoc-hoa-dubai-gia-re.jpg\\\" srcset=\\\"https:\\/\\/hungthinhmart.com\\/wp-content\\/uploads\\/2017\\/12\\/tinh-dau-nuoc-hoa-dubai-gia-re.jpg 800w, https:\\/\\/hungthinhmart.com\\/wp-content\\/uploads\\/2017\\/12\\/tinh-dau-nuoc-hoa-dubai-gia-re-510x383.jpg 510w, https:\\/\\/hungthinhmart.com\\/wp-content\\/uploads\\/2017\\/12\\/tinh-dau-nuoc-hoa-dubai-gia-re-400x300.jpg 400w, https:\\/\\/hungthinhmart.com\\/wp-content\\/uploads\\/2017\\/12\\/tinh-dau-nuoc-hoa-dubai-gia-re-768x576.jpg 768w\\\" width=\\\"800\\\" \\/><\\/p>\\r\\n\\r\\n<p><strong>\\u0110\\u1ed9 l\\u01b0u h\\u01b0\\u01a1ng l&ecirc;n \\u0111\\u1ebfn 2 ng&agrave;y &ndash; \\u0111&oacute; l&agrave; \\u0111i\\u1ec1u kh&ocirc;ng s\\u1ea3n ph\\u1ea9m n&agrave;o c&oacute; th\\u1ec3 s&aacute;nh \\u0111\\u01b0\\u1ee3c<\\/strong><br \\/>\\r\\nV\\u1edbi \\u0111i\\u1ec1u ki\\u1ec7n th\\u1eddi ti\\u1ebft n&agrave;y, ng\\u01b0\\u1eddi d&acirc;n Dubai lu&ocirc;n ph\\u1ea3i c&oacute; m\\u1ed9t chai n\\u01b0\\u1edbc hoa trong ng\\u01b0\\u1eddi \\u0111\\u1ec3 s\\u1eed d\\u1ee5ng nh\\u1eb1m kh\\u1eed m&ugrave;i m\\u1ed3 h&ocirc;i c\\u0169ng nh\\u01b0 \\u0111em \\u0111\\u1ebfn h\\u01b0\\u01a1ng th\\u01a1m v&agrave; s\\u1ef1 t\\u1ef1 tin cho m\\u1ed7i ng\\u01b0\\u1eddi. L&agrave; s\\u1ea3n ph\\u1ea9m b\\u1ea5t k\\u1ef3 ng\\u01b0\\u1eddi d&acirc;n Dubai n&agrave;o c\\u0169ng c&oacute; th\\u1ec3 s\\u1edf h\\u1eefu n&ecirc;n gi&aacute; c&aacute; cho m\\u1ed7i chai tinh d\\u1ea7u n\\u01b0\\u1edbc hoa ch\\u1eafc ch\\u1eafn r\\u1ebb h\\u01a1n so v\\u1edbi c&aacute;c th\\u01b0\\u01a1ng hi\\u1ec7u n\\u1ed5i ti\\u1ebfng. Tuy nhi&ecirc;n v\\u1ec1 h\\u01b0\\u01a1ng th\\u01a1m v&agrave; \\u0111\\u1ed9 l\\u01b0u h\\u01b0\\u01a1ng th&igrave; kh&ocirc;ng lo\\u1ea1i n\\u01b0\\u1edbc hoa n&agrave;o c&oacute; th\\u1ec3 s&aacute;nh b\\u1eb1ng. Kh&ocirc;ng tin b\\u1ea1n c&oacute; th\\u1ec3 th\\u1eed s\\u1eed d\\u1ee5ng 2,3 gi\\u1ecdt v&agrave;o c\\u1ed5 tay v&agrave; ho\\u1ea1t \\u0111\\u1ed9ng c\\u1ea3 ng&agrave;y, m&ugrave;i h\\u01b0\\u01a1ng v\\u1eabn dai d\\u1eb3ng theo b\\u1ea1n \\u0111\\u1ebfn t\\u1eadn ng&agrave;y h&ocirc;m sau, d&ugrave; b\\u1ea1n c&oacute; r\\u1eeda hay \\u0111&atilde; t\\u1eafm th&igrave; m&ugrave;i th\\u01a1m v\\u1eabn qu\\u1ea5n qu&yacute;t xung quanh b\\u1ea1n.<\\/p>\\r\\n\\r\\n<p>Tinh d\\u1ea7u n\\u01b0\\u1edbc hoa Dubai gi&aacute; bao nhi&ecirc;u c&oacute; th\\u1ec3 gi&aacute; kh&aacute;c nhau t&ugrave;y v&agrave;o m&ugrave;i h\\u01b0\\u01a1ng, m\\u1eabu m&atilde; chai l\\u1ecd v&agrave; \\u0111\\u1ed9 tinh ch\\u1ea5t. Th\\u01b0\\u1eddng m\\u1ee9c gi&aacute; m&agrave; c&aacute;c c\\u1eeda h&agrave;ng m\\u1ef9 ph\\u1ea9m hay c&aacute;c shop n\\u01b0\\u1edbc hoa \\u0111\\u01b0a ra kh&ocirc;ng ch&ecirc;nh l\\u1ec7ch nhi\\u1ec1u so v\\u1edbi gi&aacute; g\\u1ed1c, s\\u1ed1 ch&ecirc;nh l\\u1ec7ch \\u0111&oacute; l&agrave; ti\\u1ec1n m&agrave; h\\u1ecd \\u0111i l\\u1ea5y h&agrave;ng, ki\\u1ec3m \\u0111\\u1ecbnh, \\u0111&oacute;ng g&oacute;i v&agrave; v\\u1eadn chuy\\u1ec3n \\u0111\\u1ebfn tay b\\u1ea1n, do \\u0111&oacute; b\\u1ea1n v\\u1eabn s\\u1edf h\\u1eefu cho m&igrave;nh m\\u1ed9t chai tinh d\\u1ea7u n\\u01b0\\u1edbc hoa \\u0111\\u1eb3ng c\\u1ea5p v\\u1edbi gi&aacute; v&ocirc; c&ugrave;ng ph\\u1ea3i ch\\u0103ng.<\\/p>\\r\\n\\r\\n<p>&nbsp;<\\/p>\\r\\n\\r\\n<p><img alt=\\\"Tinh d\\u1ea7u n\\u01b0\\u1edbc hoa \\u0111\\u1eb3ng c\\u1ea5p v\\u1edbi gi\\u00e1 r\\u1ebb\\\" height=\\\"600\\\" loading=\\\"lazy\\\" sizes=\\\"(max-width: 800px) 100vw, 800px\\\" src=\\\"https:\\/\\/hungthinhmart.com\\/wp-content\\/uploads\\/2017\\/12\\/tinh-dau-nuoc-hoa-dubai-gia-tot.jpg\\\" srcset=\\\"https:\\/\\/hungthinhmart.com\\/wp-content\\/uploads\\/2017\\/12\\/tinh-dau-nuoc-hoa-dubai-gia-tot.jpg 800w, https:\\/\\/hungthinhmart.com\\/wp-content\\/uploads\\/2017\\/12\\/tinh-dau-nuoc-hoa-dubai-gia-tot-510x383.jpg 510w, https:\\/\\/hungthinhmart.com\\/wp-content\\/uploads\\/2017\\/12\\/tinh-dau-nuoc-hoa-dubai-gia-tot-400x300.jpg 400w, https:\\/\\/hungthinhmart.com\\/wp-content\\/uploads\\/2017\\/12\\/tinh-dau-nuoc-hoa-dubai-gia-tot-768x576.jpg 768w\\\" width=\\\"800\\\" \\/><\\/p>\\r\\n\\r\\n<p>&nbsp;<\\/p>\\r\\n\\r\\n<p><strong>S\\u1edf h\\u1eefu ngay m\\u1ed9t chai tinh d\\u1ea7u n\\u01b0\\u1edbc hoa \\u0111\\u1eb3ng c\\u1ea5p v\\u1edbi gi&aacute; r\\u1ebb nh\\u1ea5t tr&ecirc;n th\\u1ecb tr\\u01b0\\u1eddng t\\u1ea1i&nbsp;HT Market<\\/strong><br \\/>\\r\\nCh&iacute;nh v&igrave; v\\u1eady, t&ugrave;y t\\u1eebng c\\u1eeda h&agrave;ng v&agrave; showroom v&agrave; \\u0111\\u1ecba ch\\u1ec9 b&aacute;n tinh d\\u1ea7u n\\u01b0\\u1edbc hoa Dubai m&agrave; m\\u1ee9c gi&aacute; c\\u1ee7a c&aacute;c lo\\u1ea1i n\\u01b0\\u1edbc hoa n&agrave;y c&oacute; m\\u1ee9c gi&aacute; ch&ecirc;nh nhau t\\u1eeb 100 &ndash; 300 ng&agrave;n cho m\\u1ed9t l\\u1ecd so v\\u1edbi gi&aacute; g\\u1ed1c t\\u1eeb nh&agrave; s\\u1ea3n xu\\u1ea5t. T\\u1ea1i HT Market, m\\u1ee9c ch&ecirc;nh l\\u1ec7ch n&agrave;y r\\u1ea5t th\\u1ea5p do ch&uacute;ng t&ocirc;i tr\\u1ef1c ti\\u1ebfp l\\u1ea5y h&agrave;ng v\\u1ec1, do v\\u1eady, khi c&oacute; nhu c\\u1ea7u mua lo\\u1ea1i tinh d\\u1ea7u n\\u01b0\\u1edbc hoa n&agrave;y, b\\u1ea1n n&ecirc;n \\u0111\\u1ebfn ngay HT Market \\u0111\\u1ec3 \\u0111\\u01b0\\u1ee3c t\\u01b0 v\\u1ea5n v&agrave; mua ngay m\\u1ed9t chai n\\u01b0\\u1edbc hoa v\\u1edbi gi&aacute; th\\u1ea5p nh\\u1ea5t tr&ecirc;n th\\u1ecb tr\\u01b0\\u1eddng nh&eacute;! \\u0110\\u1eb7c bi\\u1ec7t, \\u0111\\u1ed1i v\\u1edbi kh&aacute;ch l\\u1ea5y gi&aacute; s\\u1ec9 th&igrave; m\\u1ee9c gi&aacute; c&ograve;n th\\u1ea5p h\\u01a1n r\\u1ea5t nhi\\u1ec1u!<br \\/>\\r\\nTinh d\\u1ea7u n\\u01b0\\u1edbc hoa Dubai l&agrave; s\\u1ea3n ph\\u1ea9m r\\u1ea5t \\u0111\\u1eaft kh&aacute;ch v&agrave; th\\u01b0\\u1eddng ch\\u1ec9 trong m\\u1ed9t th\\u1eddi gian ng\\u1eafn l&agrave; s\\u1ebd r\\u01a1i v&agrave;o t&igrave;nh tr\\u1ea1ng h\\u1ebft h&agrave;ng nhanh ch&oacute;ng. B\\u1ea1n c&oacute; th\\u1ec3 tham kh\\u1ea3o m\\u1eabu v&agrave; gi&aacute; ngay t\\u1ea1i website https:\\/\\/hungthinhmart.com ho\\u1eb7c Facebook: https:\\/\\/www.facebook.com\\/hungthinhmart\\/ ho\\u1eb7c \\u0111\\u1ec3 l\\u1ea1i s\\u1ed1 \\u0111i\\u1ec7n tho\\u1ea1i b&ecirc;n d\\u01b0\\u1edbi \\u0111\\u1ec3 \\u0111\\u01b0\\u1ee3c ch&uacute;ng t&ocirc;i t\\u01b0 v\\u1ea5n s\\u1edbm nh\\u1ea5t nh&eacute;!<br \\/>\\r\\nHT Market &ndash; Chuy&ecirc;n s\\u1ec9 v&agrave; l\\u1ebb tinh d\\u1ea7u n\\u01b0\\u1edbc hoa Dubai ch&iacute;nh h&atilde;ng tr&ecirc;n to&agrave;n qu\\u1ed1c.<\\/p>\"}},\"alias\":\"tinh-dau-nuoc-hoa-dubai-gia-bao-nhieu\",\"image\":\"\\/data\\/content\\/blog_use.jpg\",\"sort\":\"0\",\"status\":\"on\",\"_token\":\"CKxqKq9n7EUIxd8NrZucHF10Bndo2NDyTCTcGDU9\"}', '2022-01-13 03:06:48', '2022-01-13 03:06:48'),
(124, 1, 'sc_admin/news', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2022-01-13 03:06:49', '2022-01-13 03:06:49'),
(125, 1, 'sc_admin/product', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2022-01-13 03:07:35', '2022-01-13 03:07:35'),
(126, 1, 'sc_admin/product/edit/14', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2022-01-13 03:07:49', '2022-01-13 03:07:49'),
(127, 1, 'sc_admin/product/edit/13', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2022-01-13 03:07:53', '2022-01-13 03:07:53'),
(128, 1, 'sc_admin/product/edit/11', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2022-01-13 03:07:55', '2022-01-13 03:07:55'),
(129, 1, 'sc_admin/product/edit/10', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2022-01-13 03:07:56', '2022-01-13 03:07:56'),
(130, 1, 'sc_admin/uploads', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"type\":\"product\"}', '2022-01-13 03:08:01', '2022-01-13 03:08:01'),
(131, 1, 'sc_admin/uploads/folders', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"working_dir\":null,\"type\":\"product\",\"_\":\"1642043281625\"}', '2022-01-13 03:08:02', '2022-01-13 03:08:02'),
(132, 1, 'sc_admin/uploads/errors', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"working_dir\":null,\"type\":\"product\",\"_\":\"1642043281626\"}', '2022-01-13 03:08:02', '2022-01-13 03:08:02'),
(133, 1, 'sc_admin/uploads/jsonitems', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"working_dir\":null,\"type\":\"product\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1642043281627\"}', '2022-01-13 03:08:03', '2022-01-13 03:08:03'),
(134, 1, 'sc_admin/product/edit/14', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"descriptions\":{\"vi\":{\"name\":\"Easy Polo Black Edition 14\",\"keyword\":null,\"description\":null,\"content\":\"<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt=\\\"\\\" src=\\\"\\/data\\/product\\/product-10.png\\\" style=\\\"width: 262px; height: 262px; float: right; margin: 10px;\\\" \\/><\\/p>\\r\\n\\r\\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<\\/p>\"}},\"category\":[\"11\"],\"image\":\"\\/data\\/product\\/product_use.jpg\",\"sku\":\"LCD12864-3D\",\"alias\":\"demo-alias-name-product-14\",\"brand_id\":\"3\",\"supplier_id\":\"1\",\"cost\":\"10000\",\"price\":\"15000\",\"tax_id\":\"auto\",\"stock\":\"100\",\"weight_class\":null,\"weight\":\"0\",\"length_class\":null,\"length\":\"0\",\"height\":\"0\",\"width\":\"0\",\"property\":\"physical\",\"download_path\":null,\"date_available\":null,\"minimum\":\"0\",\"sort\":\"0\",\"status\":\"on\",\"_token\":\"CKxqKq9n7EUIxd8NrZucHF10Bndo2NDyTCTcGDU9\"}', '2022-01-13 03:08:13', '2022-01-13 03:08:13'),
(135, 1, 'sc_admin/product', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2022-01-13 03:08:14', '2022-01-13 03:08:14'),
(136, 1, 'sc_admin/uploads', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"type\":\"product\"}', '2022-01-13 03:08:17', '2022-01-13 03:08:17'),
(137, 1, 'sc_admin/uploads/folders', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"working_dir\":null,\"type\":\"product\",\"_\":\"1642043297585\"}', '2022-01-13 03:08:18', '2022-01-13 03:08:18'),
(138, 1, 'sc_admin/uploads/errors', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"working_dir\":null,\"type\":\"product\",\"_\":\"1642043297586\"}', '2022-01-13 03:08:19', '2022-01-13 03:08:19'),
(139, 1, 'sc_admin/uploads/jsonitems', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"working_dir\":null,\"type\":\"product\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1642043297587\"}', '2022-01-13 03:08:20', '2022-01-13 03:08:20'),
(140, 1, 'sc_admin/product/edit/13', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"descriptions\":{\"vi\":{\"name\":\"Easy Polo Black Edition 13\",\"keyword\":null,\"description\":null,\"content\":\"<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt=\\\"\\\" src=\\\"\\/data\\/product\\/product-10.png\\\" style=\\\"width: 262px; height: 262px; float: right; margin: 10px;\\\" \\/><\\/p>\\r\\n\\r\\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<\\/p>\"}},\"category\":[\"5\"],\"image\":\"\\/data\\/product\\/product_use.jpg\",\"sku\":\"3D-GOLD175\",\"alias\":\"demo-alias-name-product-13\",\"brand_id\":\"3\",\"supplier_id\":\"1\",\"cost\":\"5000\",\"price\":\"10000\",\"tax_id\":\"auto\",\"price_promotion\":\"4000\",\"price_promotion_start\":null,\"price_promotion_end\":null,\"stock\":\"0\",\"weight_class\":null,\"weight\":\"0\",\"length_class\":null,\"length\":\"0\",\"height\":\"0\",\"width\":\"0\",\"property\":\"physical\",\"download_path\":null,\"date_available\":null,\"minimum\":\"0\",\"sort\":\"0\",\"status\":\"on\",\"_token\":\"CKxqKq9n7EUIxd8NrZucHF10Bndo2NDyTCTcGDU9\"}', '2022-01-13 03:08:32', '2022-01-13 03:08:32'),
(141, 1, 'sc_admin/product', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2022-01-13 03:08:33', '2022-01-13 03:08:33'),
(142, 1, 'sc_admin/uploads', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"type\":\"product\"}', '2022-01-13 03:08:42', '2022-01-13 03:08:42'),
(143, 1, 'sc_admin/uploads/folders', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"working_dir\":null,\"type\":\"product\",\"_\":\"1642043322705\"}', '2022-01-13 03:08:43', '2022-01-13 03:08:43'),
(144, 1, 'sc_admin/uploads/errors', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"working_dir\":null,\"type\":\"product\",\"_\":\"1642043322706\"}', '2022-01-13 03:08:44', '2022-01-13 03:08:44'),
(145, 1, 'sc_admin/uploads/jsonitems', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"working_dir\":null,\"type\":\"product\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1642043322707\"}', '2022-01-13 03:08:44', '2022-01-13 03:08:44'),
(146, 1, 'sc_admin/product/edit/11', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"descriptions\":{\"vi\":{\"name\":\"Easy Polo Black Edition 11\",\"keyword\":null,\"description\":null,\"content\":\"<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt=\\\"\\\" src=\\\"\\/data\\/product\\/product-10.png\\\" style=\\\"width: 262px; height: 262px; float: right; margin: 10px;\\\" \\/><\\/p>\\r\\n\\r\\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<\\/p>\"}},\"category\":[\"10\"],\"image\":\"\\/data\\/product\\/product_use.jpg\",\"sku\":\"SS495A\",\"alias\":\"demo-alias-name-product-11\",\"brand_id\":\"2\",\"supplier_id\":\"1\",\"cost\":\"10000\",\"price\":\"15000\",\"tax_id\":\"auto\",\"price_promotion\":\"600\",\"price_promotion_start\":null,\"price_promotion_end\":null,\"stock\":\"100\",\"weight_class\":null,\"weight\":\"0\",\"length_class\":null,\"length\":\"0\",\"height\":\"0\",\"width\":\"0\",\"property\":\"physical\",\"download_path\":null,\"date_available\":null,\"minimum\":\"0\",\"sort\":\"0\",\"status\":\"on\",\"_token\":\"CKxqKq9n7EUIxd8NrZucHF10Bndo2NDyTCTcGDU9\"}', '2022-01-13 03:08:50', '2022-01-13 03:08:50'),
(147, 1, 'sc_admin/product', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2022-01-13 03:08:50', '2022-01-13 03:08:50'),
(148, 1, 'sc_admin/uploads', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"type\":\"product\"}', '2022-01-13 03:08:56', '2022-01-13 03:08:56'),
(149, 1, 'sc_admin/uploads/folders', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"working_dir\":null,\"type\":\"product\",\"_\":\"1642043337462\"}', '2022-01-13 03:08:58', '2022-01-13 03:08:58'),
(150, 1, 'sc_admin/uploads/errors', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"working_dir\":null,\"type\":\"product\",\"_\":\"1642043337463\"}', '2022-01-13 03:08:59', '2022-01-13 03:08:59'),
(151, 1, 'sc_admin/uploads/jsonitems', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"working_dir\":null,\"type\":\"product\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1642043337464\"}', '2022-01-13 03:08:59', '2022-01-13 03:08:59'),
(152, 1, 'sc_admin/product/edit/10', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"descriptions\":{\"vi\":{\"name\":\"Easy Polo Black Edition 10\",\"keyword\":null,\"description\":null,\"content\":\"<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt=\\\"\\\" src=\\\"\\/data\\/product\\/product-10.png\\\" style=\\\"width: 262px; height: 262px; float: right; margin: 10px;\\\" \\/><\\/p>\\r\\n\\r\\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<\\/p>\"}},\"category\":[\"11\"],\"image\":\"\\/data\\/product\\/product_use.jpg\",\"sku\":\"3DHLFD-P\",\"alias\":\"demo-alias-name-product-10\",\"brand_id\":\"4\",\"supplier_id\":\"1\",\"cost\":\"10000\",\"price\":\"15000\",\"tax_id\":\"auto\",\"stock\":\"100\",\"weight_class\":null,\"weight\":\"0\",\"length_class\":null,\"length\":\"0\",\"height\":\"0\",\"width\":\"0\",\"property\":\"physical\",\"download_path\":null,\"date_available\":null,\"minimum\":\"0\",\"sort\":\"0\",\"status\":\"on\",\"_token\":\"CKxqKq9n7EUIxd8NrZucHF10Bndo2NDyTCTcGDU9\"}', '2022-01-13 03:09:12', '2022-01-13 03:09:12'),
(153, 1, 'sc_admin/product', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2022-01-13 03:09:13', '2022-01-13 03:09:13'),
(154, 1, 'sc_admin/product/edit/17', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2022-01-13 03:09:32', '2022-01-13 03:09:32'),
(155, 1, 'sc_admin/uploads', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"type\":\"product\"}', '2022-01-13 03:09:45', '2022-01-13 03:09:45'),
(156, 1, 'sc_admin/uploads/folders', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"working_dir\":null,\"type\":\"product\",\"_\":\"1642043385919\"}', '2022-01-13 03:09:46', '2022-01-13 03:09:46'),
(157, 1, 'sc_admin/uploads/errors', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"working_dir\":null,\"type\":\"product\",\"_\":\"1642043385920\"}', '2022-01-13 03:09:47', '2022-01-13 03:09:47'),
(158, 1, 'sc_admin/uploads/jsonitems', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"working_dir\":null,\"type\":\"product\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1642043385921\"}', '2022-01-13 03:09:48', '2022-01-13 03:09:48'),
(159, 1, 'sc_admin/product/edit/17', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"descriptions\":{\"vi\":{\"name\":\"Easy Polo Black Edition 17\",\"keyword\":null,\"description\":null,\"content\":\"<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt=\\\"\\\" src=\\\"\\/data\\/product\\/product-10.png\\\" style=\\\"width: 262px; height: 262px; float: right; margin: 10px;\\\" \\/><\\/p>\\r\\n\\r\\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<\\/p>\"}},\"category\":[\"9\"],\"image\":\"\\/data\\/product\\/product_use.jpg\",\"sku\":\"ALOKK1-AY\",\"alias\":\"demo-alias-name-product-17\",\"brand_id\":\"3\",\"supplier_id\":\"1\",\"cost\":\"10000\",\"price\":\"15000\",\"tax_id\":\"auto\",\"stock\":\"100\",\"weight_class\":null,\"weight\":\"0\",\"length_class\":null,\"length\":\"0\",\"height\":\"0\",\"width\":\"0\",\"property\":\"physical\",\"download_path\":null,\"date_available\":null,\"minimum\":\"5\",\"sort\":\"0\",\"status\":\"on\",\"_token\":\"CKxqKq9n7EUIxd8NrZucHF10Bndo2NDyTCTcGDU9\"}', '2022-01-13 03:09:55', '2022-01-13 03:09:55'),
(160, 1, 'sc_admin/product', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2022-01-13 03:09:56', '2022-01-13 03:09:56'),
(161, 1, 'sc_admin/product/delete', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"ids\":\"16,15\",\"_token\":\"CKxqKq9n7EUIxd8NrZucHF10Bndo2NDyTCTcGDU9\"}', '2022-01-13 03:10:38', '2022-01-13 03:10:38'),
(162, 1, 'sc_admin/product', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"_pjax\":\"#pjax-container\"}', '2022-01-13 03:10:40', '2022-01-13 03:10:40'),
(163, 1, 'sc_admin/news', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2022-01-13 03:11:02', '2022-01-13 03:11:02'),
(164, 1, 'sc_admin/news/delete', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"ids\":\"4\",\"_token\":\"CKxqKq9n7EUIxd8NrZucHF10Bndo2NDyTCTcGDU9\"}', '2022-01-13 03:11:41', '2022-01-13 03:11:41'),
(165, 1, 'sc_admin/news', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"_pjax\":\"#pjax-container\"}', '2022-01-13 03:11:42', '2022-01-13 03:11:42'),
(166, 1, 'sc_admin/news/delete', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"ids\":\"3,2,1\",\"_token\":\"CKxqKq9n7EUIxd8NrZucHF10Bndo2NDyTCTcGDU9\"}', '2022-01-13 03:11:47', '2022-01-13 03:11:47'),
(167, 1, 'sc_admin/news', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"_pjax\":\"#pjax-container\"}', '2022-01-13 03:11:49', '2022-01-13 03:11:49'),
(168, 1, 'sc_admin/news/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2022-01-13 03:11:51', '2022-01-13 03:11:51'),
(169, 1, 'sc_admin/uploads', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"type\":\"content\"}', '2022-01-13 03:12:11', '2022-01-13 03:12:11');
INSERT INTO `sc_admin_log` (`id`, `user_id`, `path`, `method`, `ip`, `user_agent`, `input`, `created_at`, `updated_at`) VALUES
(170, 1, 'sc_admin/uploads/folders', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"working_dir\":null,\"type\":\"content\",\"_\":\"1642043532254\"}', '2022-01-13 03:12:13', '2022-01-13 03:12:13'),
(171, 1, 'sc_admin/uploads/errors', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"working_dir\":null,\"type\":\"content\",\"_\":\"1642043532255\"}', '2022-01-13 03:12:13', '2022-01-13 03:12:13'),
(172, 1, 'sc_admin/uploads/jsonitems', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"working_dir\":null,\"type\":\"content\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1642043532256\"}', '2022-01-13 03:12:14', '2022-01-13 03:12:14'),
(173, 1, 'sc_admin/news/create', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"descriptions\":{\"vi\":{\"title\":\"Tinh d\\u1ea7u n\\u01b0\\u1edbc hoa m\\u00f9i n\\u00e0o th\\u01a1m nh\\u1ea5t\",\"keyword\":null,\"description\":null,\"content\":\"<header>\\r\\n<h1>Tinh d\\u1ea7u n\\u01b0\\u1edbc hoa m&ugrave;i n&agrave;o th\\u01a1m nh\\u1ea5t?<\\/h1>\\r\\n<\\/header>\\r\\n\\r\\n<p><em>Kh&ocirc;ng ch\\u1ec9 mang l\\u1ea1i h\\u01b0\\u01a1ng th\\u01a1m nh\\u1eb9 nh&agrave;ng m&agrave; tinh d\\u1ea7u n\\u01b0\\u1edbc hoa Dubai c&ograve;n gi&uacute;p gi\\u1ea3i t\\u1ecfa c\\u0103ng th\\u1eb3ng, m\\u1ec7t m\\u1ecfi v\\u1edbi h\\u01b0\\u01a1ng th\\u01a1m nh\\u1eb9 nh&agrave;ng t\\u1ef1 nhi&ecirc;n \\u0111\\u1ea7y quy\\u1ebfn r\\u0169. V\\u1eady tinh d\\u1ea7u n\\u01b0\\u1edbc hoa Dubai m&ugrave;i n&agrave;o th\\u01a1m nh\\u1ea5t v&agrave; ti&ecirc;u ch&iacute; ch\\u1ecdn l\\u1ef1a m&ugrave;i th\\u01a1m n\\u01b0\\u1edbc hoa th&iacute;ch h\\u1ee3p ch&uacute;ng ta c&ugrave;ng t&igrave;m hi\\u1ec3u.<\\/em><\\/p>\\r\\n\\r\\n<p>Hi\\u1ec7n nay tinh d\\u1ea7u n\\u01b0\\u1edbc hoa Dubai \\u0111\\u01b0\\u1ee3c xem l&agrave; lo\\u1ea1i tinh d\\u1ea7u \\u0111\\u01b0\\u1ee3c \\u01b0a chu\\u1ed9ng nh\\u1ea5t hi\\u1ec7n nay, v\\u1edbi h\\u01b0\\u01a1ng th\\u01a1m tinh t\\u1ebf \\u0111\\u01b0\\u1ee3c chi\\u1ebft xu\\u1ea5t t\\u1ef1 nhi&ecirc;n v\\u1edbi hoa, c\\u1ecf, h\\u01b0\\u01a1ng g\\u1ed7&hellip; Tinh d\\u1ea7u n\\u01b0\\u1edbc hoa du nh\\u1eadp v&agrave;o th\\u1ecb tr\\u01b0\\u1eddng Vi\\u1ec7t Nam v&agrave; nhanh ch&oacute;ng \\u0111\\u01b0\\u1ee3c \\u0111&oacute;n nh\\u1eadn b\\u1edfi r\\u1ea5t nhi\\u1ec1u ng\\u01b0\\u1eddi v&agrave; c\\u1ea3 l&agrave;ng ngh\\u1ec7 s\\u0129 n\\u1ed5i ti\\u1ebfng.<\\/p>\\r\\n\\r\\n<figure aria-describedby=\\\"caption-attachment-1199\\\" id=\\\"attachment_1199\\\"><img alt=\\\"Tinh d\\u1ea7u n\\u01b0\\u1edbc hoa Dubai m\\u00f9i n\\u00e0o th\\u01a1m \\\" height=\\\"556\\\" loading=\\\"lazy\\\" sizes=\\\"(max-width: 800px) 100vw, 800px\\\" src=\\\"https:\\/\\/hungthinhmart.com\\/wp-content\\/uploads\\/2018\\/05\\/tinh-dau-nuoc-hoa-dubai-mui-nao-thom-nhat.jpg\\\" srcset=\\\"https:\\/\\/hungthinhmart.com\\/wp-content\\/uploads\\/2018\\/05\\/tinh-dau-nuoc-hoa-dubai-mui-nao-thom-nhat.jpg 800w, https:\\/\\/hungthinhmart.com\\/wp-content\\/uploads\\/2018\\/05\\/tinh-dau-nuoc-hoa-dubai-mui-nao-thom-nhat-510x354.jpg 510w, https:\\/\\/hungthinhmart.com\\/wp-content\\/uploads\\/2018\\/05\\/tinh-dau-nuoc-hoa-dubai-mui-nao-thom-nhat-400x278.jpg 400w, https:\\/\\/hungthinhmart.com\\/wp-content\\/uploads\\/2018\\/05\\/tinh-dau-nuoc-hoa-dubai-mui-nao-thom-nhat-768x534.jpg 768w\\\" width=\\\"800\\\" \\/>\\r\\n<figcaption id=\\\"caption-attachment-1199\\\">Tinh d\\u1ea7u n\\u01b0\\u1edbc hoa Dubai v\\u1edbi nhi\\u1ec1u h\\u01b0\\u01a1ng th\\u01a1m tinh t\\u1ebf<\\/figcaption>\\r\\n<\\/figure>\\r\\n\\r\\n<p>C&oacute; r\\u1ea5t nhi\\u1ec1u ng\\u01b0\\u1eddi th\\u1eafc m\\u1eafc tinh d\\u1ea7u n\\u01b0\\u1edbc hoa Dubai m&ugrave;i n&agrave;o th\\u01a1m nh\\u1ea5t? C&acirc;u h\\u1ecfi n&agrave;y th\\u1eadt kh&oacute; tr\\u1ea3 l\\u1eddi b\\u1edfi tinh d\\u1ea7u n\\u01b0\\u1edbc hoa Dubai c&oacute; h&agrave;ng tr\\u0103m m&ugrave;i th\\u01a1m kh&aacute;c nhau, m\\u1ed7i m&ugrave;i l\\u1ea1i c&oacute; nh\\u1eefng \\u0111\\u1eb7c tr\\u01b0ng kh&aacute;c nhau ph&ugrave; h\\u1ee3p v\\u1edbi t\\u1eebng ho&agrave;n c\\u1ea3nh hay v\\u1edbi t\\u1eebng ng\\u01b0\\u1eddi. HT Market s\\u1ebd gi\\u1edbi thi\\u1ec7u v\\u1edbi b\\u1ea1n m\\u1ed9t s\\u1ed1 m&ugrave;i th\\u01a1m \\u0111\\u01b0\\u1ee3c nhi\\u1ec1u ng\\u01b0\\u1eddi l\\u1ef1a ch\\u1ecdn d\\u01b0\\u1edbi \\u0111&acirc;y.<\\/p>\\r\\n\\r\\n<h2>Tinh d\\u1ea7u n\\u01b0\\u1edbc hoa Dubai m&ugrave;i n&agrave;o th\\u01a1m nh\\u1ea5t \\u0111\\u01b0\\u1ee3c nhi\\u1ec1u ng\\u01b0\\u1eddi y&ecirc;u th&iacute;ch?<\\/h2>\\r\\n\\r\\n<p>M\\u1ee5c l\\u1ee5c<\\/p>\\r\\n\\r\\n<nav>\\r\\n<ul>\\r\\n\\t<li><a href=\\\"https:\\/\\/hungthinhmart.com\\/tinh-dau-nuoc-hoa-mui-nao-thom-nhat#Tinh_dau_nuoc_hoa_Dubai_mui_nao_thom_nhat_duoc_nhieu_nguoi_yeu_thich\\\" title=\\\"Tinh d\\u1ea7u n\\u01b0\\u1edbc hoa Dubai m\\u00f9i n\\u00e0o th\\u01a1m nh\\u1ea5t \\u0111\\u01b0\\u1ee3c nhi\\u1ec1u ng\\u01b0\\u1eddi y\\u00eau th\\u00edch?\\\">Tinh d\\u1ea7u n\\u01b0\\u1edbc hoa Dubai m&ugrave;i n&agrave;o th\\u01a1m nh\\u1ea5t \\u0111\\u01b0\\u1ee3c nhi\\u1ec1u ng\\u01b0\\u1eddi y&ecirc;u th&iacute;ch?<\\/a><\\/li>\\r\\n\\t<li><a href=\\\"https:\\/\\/hungthinhmart.com\\/tinh-dau-nuoc-hoa-mui-nao-thom-nhat#Chon_tinh_dau_nuoc_hoa_voi_huong_thom_theo_mua\\\" title=\\\"Ch\\u1ecdn tinh d\\u1ea7u n\\u01b0\\u1edbc hoa v\\u1edbi h\\u01b0\\u01a1ng th\\u01a1m theo m\\u00f9a\\\">Ch\\u1ecdn tinh d\\u1ea7u n\\u01b0\\u1edbc hoa v\\u1edbi h\\u01b0\\u01a1ng th\\u01a1m theo m&ugrave;a<\\/a><\\/li>\\r\\n<\\/ul>\\r\\n<\\/nav>\\r\\n\\r\\n<p>N\\u01b0\\u1edbc hoa Dubai l\\u01b0u gi\\u1eef h\\u01b0\\u01a1ng th\\u01a1m c\\u1ef1c k\\u1ef3 laaum do v\\u1eady b\\u1ea1n c&oacute; th\\u1ec3 s\\u1eed d\\u1ee5ng tinh d\\u1ea7u n\\u01b0\\u1edbc hoa \\u0111\\u1ec3 t\\u1ea1o n&ecirc;n s\\u1ef1 tinh t\\u1ebf, n\\u1ed5i b\\u1eadt v&agrave; cu\\u1ed1n h&uacute;t h\\u01a1n cho m\\u1ed7i s\\u1ef1 ki\\u1ec7n trong ng&agrave;y.<\\/p>\\r\\n\\r\\n<p><strong>Miss Universe<\\/strong>&nbsp;&ndash; Mang l\\u1ea1i m&ugrave;i h\\u01b0\\u01a1ng n\\u0103ng \\u0111\\u1ed9ng v&agrave; t\\u01b0\\u01a1i tr\\u1ebb. V\\u1edbi nh\\u1eefng th&agrave;nh ph\\u1ea7n ch&iacute;nh: X\\u1ea1 h\\u01b0\\u01a1ng, tinh ch\\u1ea5t &ocirc; Liu, tinh ch\\u1ea5t B\\u1ea1ch \\u0110&agrave;n, tinh ch\\u1ea5t hoa Nh&agrave;i.<\\/p>\\r\\n\\r\\n<figure aria-describedby=\\\"caption-attachment-1200\\\" id=\\\"attachment_1200\\\"><img alt=\\\"M\\u00f9i h\\u01b0\\u01a1ng Miss Universe n\\u0103ng \\u0111\\u1ed9ng t\\u01b0\\u01a1i tr\\u1ebb \\\" height=\\\"771\\\" loading=\\\"lazy\\\" sizes=\\\"(max-width: 800px) 100vw, 800px\\\" src=\\\"https:\\/\\/hungthinhmart.com\\/wp-content\\/uploads\\/2018\\/05\\/tinh-dau-nuoc-hoa-dubai-mui-Miss-Universe.jpg\\\" srcset=\\\"https:\\/\\/hungthinhmart.com\\/wp-content\\/uploads\\/2018\\/05\\/tinh-dau-nuoc-hoa-dubai-mui-Miss-Universe.jpg 800w, https:\\/\\/hungthinhmart.com\\/wp-content\\/uploads\\/2018\\/05\\/tinh-dau-nuoc-hoa-dubai-mui-Miss-Universe-510x492.jpg 510w, https:\\/\\/hungthinhmart.com\\/wp-content\\/uploads\\/2018\\/05\\/tinh-dau-nuoc-hoa-dubai-mui-Miss-Universe-400x386.jpg 400w, https:\\/\\/hungthinhmart.com\\/wp-content\\/uploads\\/2018\\/05\\/tinh-dau-nuoc-hoa-dubai-mui-Miss-Universe-768x740.jpg 768w\\\" width=\\\"800\\\" \\/>\\r\\n<figcaption id=\\\"caption-attachment-1200\\\">M&ugrave;i h\\u01b0\\u01a1ng Miss Universe n\\u0103ng \\u0111\\u1ed9ng t\\u01b0\\u01a1i tr\\u1ebb<\\/figcaption>\\r\\n<\\/figure>\\r\\n\\r\\n<p><strong>Lucky<\\/strong>&nbsp;&ndash; V\\u1edbi h\\u01b0\\u01a1ng th\\u01a1m n\\u1ed3ng n&agrave;n, c&aacute; t&iacute;nh \\u0111\\u01b0\\u1ee3c chi\\u1ebft xu\\u1ea5t t\\u1eeb h\\u01b0\\u01a1ng th\\u01a1m c\\u1ee7a \\u0110&agrave;n h\\u01b0\\u01a1ng, tinh ch\\u1ea5t Hoa h\\u1ed3ng, O\\u1ea3i h\\u01b0\\u01a1ng, v&agrave; tinh d\\u1ea7u Tr\\u1ea7m. Lo\\u1ea1i tinh d\\u1ea7u n&agrave;y th&iacute;ch h\\u1ee3p cho c\\u1ea3 nam gi\\u1edbi v&agrave; n\\u1eef gi\\u1edbi.<\\/p>\\r\\n\\r\\n<p><strong>Extra Pure<\\/strong>&nbsp;&ndash; Mang h\\u01b0\\u01a1ng th\\u01a1m vanille v&ocirc; c&ugrave;ng sexy g\\u1ee3i c\\u1ea3m, m&ugrave;i h\\u01b0\\u01a1ng th&iacute;ch h\\u1ee3p v\\u1edbi nh\\u1eefng bu\\u1ed5i h\\u1eb9n h&ograve; l&atilde;ng m\\u1ea1n.<\\/p>\\r\\n\\r\\n<p><strong>Fantabulous<\\/strong>&nbsp;&ndash; V\\u1edbi h\\u01b0\\u01a1ng vitamin ng\\u1ecdt l\\u1ecbm, h\\u01b0\\u01a1ng th\\u01a1m v\\u1edbi c&aacute;c th&agrave;nh ph\\u1ea7n o\\u1ea3i h\\u01b0\\u01a1ng, tinh d\\u1ea7u Tr\\u1ea7m, tinh ch\\u1ea5t hoa Violet, \\u0110&agrave;n h\\u01b0\\u01a1ng.<\\/p>\\r\\n\\r\\n<p><strong>Cool moon<\\/strong>&nbsp;&ndash; M&ugrave;i h\\u01b0\\u01a1ng mang \\u0111\\u1ebfn s\\u1ef1 t\\u01b0\\u01a1i m&aacute;t v&agrave; tr\\u1ebb trung, tho\\u1ea3i m&aacute;i d&ugrave;ng \\u0111\\u01b0\\u1ee3c cho c\\u1ea3 nam gi\\u1edbi v&agrave; n\\u1eef gi\\u1edbi.<\\/p>\\r\\n\\r\\n<h2>Ch\\u1ecdn tinh d\\u1ea7u n\\u01b0\\u1edbc hoa v\\u1edbi h\\u01b0\\u01a1ng th\\u01a1m theo m&ugrave;a<\\/h2>\\r\\n\\r\\n<p>Ngo&agrave;i nh\\u1eefng h\\u01b0\\u01a1ng th\\u01a1m \\u0111\\u01b0\\u1ee3c nh\\u1eafc \\u0111\\u1ebfn \\u1edf tr&ecirc;n, \\u0111\\u1ec3 tr\\u1ea3 l\\u1eddi cho c&acirc;u h\\u1ecfi tinh d\\u1ea7u n\\u01b0\\u1edbc hoa Dubai m&ugrave;i n&agrave;o th\\u01a1m nh\\u1ea5t c&ograve;n c&oacute; nhi\\u1ec1u y\\u1ebfu t\\u1ed1 \\u1ea3nh h\\u01b0\\u1edfng \\u0111\\u1ebfn c&aacute;c m&ugrave;a trong n\\u0103m. Theo \\u0111&oacute; t&ugrave;y v&agrave;o m\\u1ed7i m&ugrave;a trong n\\u0103m m&agrave; ch&uacute;ng ta c&oacute; th\\u1ec3 ch\\u1ecdn \\u0111\\u01b0\\u1ee3c nh\\u1eefng h\\u01b0\\u01a1ng th\\u01a1m th&iacute;ch h\\u1ee3p nh\\u01b0:<\\/p>\\r\\n\\r\\n<p><img alt=\\\"nuoc hoa nu Carolina Herrera Good Girl\\\" height=\\\"972\\\" loading=\\\"lazy\\\" sizes=\\\"(max-width: 856px) 100vw, 856px\\\" src=\\\"https:\\/\\/hungthinhmart.com\\/wp-content\\/uploads\\/2017\\/12\\/nuoc-hoa-nu-Carolina-Herrera-Good-Girl.jpg\\\" srcset=\\\"https:\\/\\/hungthinhmart.com\\/wp-content\\/uploads\\/2017\\/12\\/nuoc-hoa-nu-Carolina-Herrera-Good-Girl.jpg 856w, https:\\/\\/hungthinhmart.com\\/wp-content\\/uploads\\/2017\\/12\\/nuoc-hoa-nu-Carolina-Herrera-Good-Girl-510x579.jpg 510w, https:\\/\\/hungthinhmart.com\\/wp-content\\/uploads\\/2017\\/12\\/nuoc-hoa-nu-Carolina-Herrera-Good-Girl-352x400.jpg 352w, https:\\/\\/hungthinhmart.com\\/wp-content\\/uploads\\/2017\\/12\\/nuoc-hoa-nu-Carolina-Herrera-Good-Girl-768x872.jpg 768w\\\" width=\\\"856\\\" \\/><\\/p>\\r\\n\\r\\n<p><strong>M&ugrave;a xu&acirc;n:<\\/strong>&nbsp;M&ugrave;a xu&acirc;n v\\u1edbi s\\u1ef1 giao thoa \\u0111\\u1ea5t tr\\u1eddi, b\\u1ea1n c&oacute; th\\u1ec3 ch\\u1ecdn nh\\u1eefng m&ugrave;i h\\u01b0\\u01a1ng tinh d\\u1ea7u n\\u01b0\\u1edbc hoa v\\u1edbi nh\\u1eefng h\\u01b0\\u01a1ng th\\u01a1m nh\\u1eb9 nh&agrave;ng nh\\u01b0 h\\u01b0\\u01a1ng cam, chanh t\\u01b0\\u01a1i&hellip; \\u0111\\u1ec3 ph&ugrave; h\\u1ee3p v\\u1edbi s\\u1ef1 t\\u01b0\\u01a1i vui v&agrave; h\\u01b0ng ph\\u1ea5n c\\u1ee7a m&ugrave;a xu&acirc;n t\\u01b0\\u01a1i \\u0111\\u1eb9p.<\\/p>\\r\\n\\r\\n<p><strong>M&ugrave;a h&egrave; s&ocirc;i \\u0111\\u1ed9ng:<\\/strong>&nbsp;Th\\u1eddi ti\\u1ebft n&oacute;ng b\\u1ee9c c\\u1ee7a m&ugrave;a h&egrave; s\\u1ebd t&aacute;c \\u0111\\u1ed9ng v&agrave; l&agrave;m tinh d\\u1ea7u n\\u01b0\\u1edbc hoa nhanh bay h\\u01a1i h\\u01a1n, do v\\u1eady b\\u1ea1n n&ecirc;n ch\\u1ecdn nh\\u1eefng h\\u01b0\\u01a1ng th\\u01a1m mang l\\u1ea1i s\\u1ef1 s\\u1ea3ng khoasim d\\u1ecbu m&aacute;t \\u0111\\u1ec3 s\\u1eed d\\u1ee5ng.<\\/p>\\r\\n\\r\\n<p><strong>M&ugrave;a \\u0111\\u1ed9ng kh&ocirc;ng kh&iacute; l\\u1ea1nh<\\/strong>: V&agrave;o m&ugrave;a \\u0111&ocirc;ng kh&ocirc;ng kh&iacute; l\\u1ea1nh h\\u01a1n n&ecirc;n m&ugrave;i h\\u01b0\\u01a1ng c\\u0169ng l\\u01b0u l\\u1ea1i l&acirc;u h\\u01a1n tr&ecirc;n c\\u01a1 th\\u1ec3, b\\u1ea1n ho&agrave;n to&agrave;n c&oacute; th\\u1ec3 ch\\u1ecdn c&aacute;c h\\u01b0\\u01a1ng th\\u01a1m \\u01b0a th&iacute;ch ho\\u1eb7c nh\\u1eefng m&ugrave;i h\\u01b0\\u01a1ng n\\u1ed3ng n&agrave;n \\u0111\\u1ec1u th&iacute;ch h\\u1ee3p.<\\/p>\\r\\n\\r\\n<p><strong>M&ugrave;a thu nh\\u1eb9 nh&agrave;ng<\\/strong>: V&agrave;o ti\\u1ebft th\\u1eddi m&ugrave;a thu nh\\u1eb9 nh&agrave;ng b\\u1ea1n c&oacute; th\\u1ec3 l\\u1ef1a ch\\u1ecdn nh\\u1eefng h\\u01b0\\u01a1ng th\\u01a1m nh\\u1eb9 c&oacute; m&ugrave;i thoang tho\\u1ea3ng hay m&ugrave;i qu\\u1ebf tinh t\\u1ebf&hellip;<\\/p>\\r\\n\\r\\n<p>\\u0110\\u1ec3 t&igrave;m mua tinh d\\u1ea7u n\\u01b0\\u1edbc hoa Dubai ch&iacute;nh h&atilde;ng v&agrave; t&igrave;m \\u0111\\u01b0\\u1ee3c n\\u01b0\\u1edbc hoa Dubai m&ugrave;i n&agrave;o th\\u01a1m nh\\u1ea5t, h&atilde;y \\u0111\\u1ebfn v\\u1edbi HT Market &ndash; \\u0111\\u1ea1i l&yacute; ph&acirc;n ph\\u1ed1i c&aacute;c s\\u1ea3n ph\\u1ea9m tinh d\\u1ea7u n\\u01b0\\u1edbc hoa Dubai tr&ecirc;n c\\u1ea3 n\\u01b0\\u1edbc v\\u1edbi m\\u1ee9c gi&aacute; th\\u1ea5p h\\u01a1n so v\\u1edbi m\\u1eb7t b\\u1eb1ng chung tr&ecirc;n th\\u1ecb tr\\u01b0\\u1eddng. Hi v\\u1ecdng v\\u1edbi nh\\u1eefng th&ocirc;ng tin tr&ecirc;n b\\u1ea1n s\\u1ebd bi\\u1ebft c&aacute;ch l\\u1ef1a ch\\u1ecdn h\\u01b0\\u01a1ng th\\u01a1m ph&ugrave; h\\u1ee3p.<\\/p>\"}},\"alias\":null,\"image\":\"\\/data\\/content\\/blog_use.jpg\",\"sort\":\"0\",\"status\":\"on\",\"_token\":\"CKxqKq9n7EUIxd8NrZucHF10Bndo2NDyTCTcGDU9\"}', '2022-01-13 03:12:18', '2022-01-13 03:12:18'),
(174, 1, 'sc_admin/news', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2022-01-13 03:12:18', '2022-01-13 03:12:18'),
(175, 1, 'sc_admin/news/edit/6', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2022-01-13 03:12:29', '2022-01-13 03:12:29'),
(176, 1, 'sc_admin/uploads', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"type\":\"content\"}', '2022-01-13 03:12:36', '2022-01-13 03:12:36'),
(177, 1, 'sc_admin/uploads/folders', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"working_dir\":null,\"type\":\"content\",\"_\":\"1642043557177\"}', '2022-01-13 03:12:38', '2022-01-13 03:12:38'),
(178, 1, 'sc_admin/uploads/errors', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"working_dir\":null,\"type\":\"content\",\"_\":\"1642043557178\"}', '2022-01-13 03:12:38', '2022-01-13 03:12:38'),
(179, 1, 'sc_admin/uploads/jsonitems', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"working_dir\":null,\"type\":\"content\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1642043557179\"}', '2022-01-13 03:12:39', '2022-01-13 03:12:39'),
(180, 1, 'sc_admin/uploads/upload', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"content\",\"_token\":\"CKxqKq9n7EUIxd8NrZucHF10Bndo2NDyTCTcGDU9\"}', '2022-01-13 03:12:53', '2022-01-13 03:12:53'),
(181, 1, 'sc_admin/uploads/folders', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"content\",\"_\":\"1642043557180\"}', '2022-01-13 03:12:54', '2022-01-13 03:12:54'),
(182, 1, 'sc_admin/uploads/jsonitems', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"content\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1642043557181\"}', '2022-01-13 03:12:55', '2022-01-13 03:12:55'),
(183, 1, 'sc_admin/uploads/upload', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"content\",\"_token\":\"CKxqKq9n7EUIxd8NrZucHF10Bndo2NDyTCTcGDU9\"}', '2022-01-13 03:13:01', '2022-01-13 03:13:01'),
(184, 1, 'sc_admin/uploads/folders', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"content\",\"_\":\"1642043557182\"}', '2022-01-13 03:13:02', '2022-01-13 03:13:02'),
(185, 1, 'sc_admin/uploads/jsonitems', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"content\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1642043557183\"}', '2022-01-13 03:13:03', '2022-01-13 03:13:03'),
(186, 1, 'sc_admin/news/edit/6', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"descriptions\":{\"vi\":{\"title\":\"Easy Polo Black Edition 6\",\"keyword\":null,\"description\":\"Tinh d\\u1ea7u n\\u01b0\\u1edbc hoa Dubai t\\u1ea1i HT Market l\\u00e0 d\\u00f2ng n\\u01b0\\u1edbc hoa n\\u1ed5i ti\\u1ebfng v\\u1edbi m\\u00f9i h\\u01b0\\u01a1ng si\\u00eau quy\\u1ebfn r\\u0169...\",\"content\":\"<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt=\\\"\\\" src=\\\"\\/data\\/product\\/product-10.png\\\" style=\\\"width: 262px; height: 262px; float: right; margin: 10px;\\\" \\/><\\/p>\\r\\n\\r\\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<\\/p>\"}},\"alias\":\"demo-alias-blog-6\",\"image\":\"\\/data\\/content\\/blog3.jpg\",\"sort\":\"0\",\"status\":\"on\",\"_token\":\"CKxqKq9n7EUIxd8NrZucHF10Bndo2NDyTCTcGDU9\"}', '2022-01-13 03:13:07', '2022-01-13 03:13:07'),
(187, 1, 'sc_admin/news', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2022-01-13 03:13:08', '2022-01-13 03:13:08'),
(188, 1, 'sc_admin/news/edit/7', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2022-01-13 03:13:23', '2022-01-13 03:13:23'),
(189, 1, 'sc_admin/news/edit/7', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"descriptions\":{\"vi\":{\"title\":\"Tinh d\\u1ea7u n\\u01b0\\u1edbc hoa m\\u00f9i n\\u00e0o th\\u01a1m nh\\u1ea5t\",\"keyword\":null,\"description\":\"Kh\\u00f4ng ch\\u1ec9 mang l\\u1ea1i h\\u01b0\\u01a1ng th\\u01a1m nh\\u1eb9 nh\\u00e0ng m\\u00e0 tinh d\\u1ea7u n\\u01b0\\u1edbc hoa Dubai c\\u00f2n gi\\u00fap gi\\u1ea3i t\\u1ecfa c\\u0103ng th\\u1eb3ng, m\\u1ec7t m\\u1ecfi v\\u1edbi h\\u01b0\\u01a1ng th\\u01a1m nh\\u1eb9 nh\\u00e0ng t\\u1ef1 nhi\\u00ean \\u0111\\u1ea7y quy\\u1ebfn r\\u0169\",\"content\":\"<header>\\r\\n<h1>Tinh d\\u1ea7u n\\u01b0\\u1edbc hoa m&ugrave;i n&agrave;o th\\u01a1m nh\\u1ea5t?<\\/h1>\\r\\n<\\/header>\\r\\n\\r\\n<p><em>Kh&ocirc;ng ch\\u1ec9 mang l\\u1ea1i h\\u01b0\\u01a1ng th\\u01a1m nh\\u1eb9 nh&agrave;ng m&agrave; tinh d\\u1ea7u n\\u01b0\\u1edbc hoa Dubai c&ograve;n gi&uacute;p gi\\u1ea3i t\\u1ecfa c\\u0103ng th\\u1eb3ng, m\\u1ec7t m\\u1ecfi v\\u1edbi h\\u01b0\\u01a1ng th\\u01a1m nh\\u1eb9 nh&agrave;ng t\\u1ef1 nhi&ecirc;n \\u0111\\u1ea7y quy\\u1ebfn r\\u0169. V\\u1eady tinh d\\u1ea7u n\\u01b0\\u1edbc hoa Dubai m&ugrave;i n&agrave;o th\\u01a1m nh\\u1ea5t v&agrave; ti&ecirc;u ch&iacute; ch\\u1ecdn l\\u1ef1a m&ugrave;i th\\u01a1m n\\u01b0\\u1edbc hoa th&iacute;ch h\\u1ee3p ch&uacute;ng ta c&ugrave;ng t&igrave;m hi\\u1ec3u.<\\/em><\\/p>\\r\\n\\r\\n<p>Hi\\u1ec7n nay tinh d\\u1ea7u n\\u01b0\\u1edbc hoa Dubai \\u0111\\u01b0\\u1ee3c xem l&agrave; lo\\u1ea1i tinh d\\u1ea7u \\u0111\\u01b0\\u1ee3c \\u01b0a chu\\u1ed9ng nh\\u1ea5t hi\\u1ec7n nay, v\\u1edbi h\\u01b0\\u01a1ng th\\u01a1m tinh t\\u1ebf \\u0111\\u01b0\\u1ee3c chi\\u1ebft xu\\u1ea5t t\\u1ef1 nhi&ecirc;n v\\u1edbi hoa, c\\u1ecf, h\\u01b0\\u01a1ng g\\u1ed7&hellip; Tinh d\\u1ea7u n\\u01b0\\u1edbc hoa du nh\\u1eadp v&agrave;o th\\u1ecb tr\\u01b0\\u1eddng Vi\\u1ec7t Nam v&agrave; nhanh ch&oacute;ng \\u0111\\u01b0\\u1ee3c \\u0111&oacute;n nh\\u1eadn b\\u1edfi r\\u1ea5t nhi\\u1ec1u ng\\u01b0\\u1eddi v&agrave; c\\u1ea3 l&agrave;ng ngh\\u1ec7 s\\u0129 n\\u1ed5i ti\\u1ebfng.<\\/p>\\r\\n\\r\\n<figure aria-describedby=\\\"caption-attachment-1199\\\" id=\\\"attachment_1199\\\"><img alt=\\\"Tinh d\\u1ea7u n\\u01b0\\u1edbc hoa Dubai m\\u00f9i n\\u00e0o th\\u01a1m \\\" height=\\\"556\\\" loading=\\\"lazy\\\" sizes=\\\"(max-width: 800px) 100vw, 800px\\\" src=\\\"https:\\/\\/hungthinhmart.com\\/wp-content\\/uploads\\/2018\\/05\\/tinh-dau-nuoc-hoa-dubai-mui-nao-thom-nhat.jpg\\\" srcset=\\\"https:\\/\\/hungthinhmart.com\\/wp-content\\/uploads\\/2018\\/05\\/tinh-dau-nuoc-hoa-dubai-mui-nao-thom-nhat.jpg 800w, https:\\/\\/hungthinhmart.com\\/wp-content\\/uploads\\/2018\\/05\\/tinh-dau-nuoc-hoa-dubai-mui-nao-thom-nhat-510x354.jpg 510w, https:\\/\\/hungthinhmart.com\\/wp-content\\/uploads\\/2018\\/05\\/tinh-dau-nuoc-hoa-dubai-mui-nao-thom-nhat-400x278.jpg 400w, https:\\/\\/hungthinhmart.com\\/wp-content\\/uploads\\/2018\\/05\\/tinh-dau-nuoc-hoa-dubai-mui-nao-thom-nhat-768x534.jpg 768w\\\" width=\\\"800\\\" \\/>\\r\\n<figcaption id=\\\"caption-attachment-1199\\\">Tinh d\\u1ea7u n\\u01b0\\u1edbc hoa Dubai v\\u1edbi nhi\\u1ec1u h\\u01b0\\u01a1ng th\\u01a1m tinh t\\u1ebf<\\/figcaption>\\r\\n<\\/figure>\\r\\n\\r\\n<p>C&oacute; r\\u1ea5t nhi\\u1ec1u ng\\u01b0\\u1eddi th\\u1eafc m\\u1eafc tinh d\\u1ea7u n\\u01b0\\u1edbc hoa Dubai m&ugrave;i n&agrave;o th\\u01a1m nh\\u1ea5t? C&acirc;u h\\u1ecfi n&agrave;y th\\u1eadt kh&oacute; tr\\u1ea3 l\\u1eddi b\\u1edfi tinh d\\u1ea7u n\\u01b0\\u1edbc hoa Dubai c&oacute; h&agrave;ng tr\\u0103m m&ugrave;i th\\u01a1m kh&aacute;c nhau, m\\u1ed7i m&ugrave;i l\\u1ea1i c&oacute; nh\\u1eefng \\u0111\\u1eb7c tr\\u01b0ng kh&aacute;c nhau ph&ugrave; h\\u1ee3p v\\u1edbi t\\u1eebng ho&agrave;n c\\u1ea3nh hay v\\u1edbi t\\u1eebng ng\\u01b0\\u1eddi. HT Market s\\u1ebd gi\\u1edbi thi\\u1ec7u v\\u1edbi b\\u1ea1n m\\u1ed9t s\\u1ed1 m&ugrave;i th\\u01a1m \\u0111\\u01b0\\u1ee3c nhi\\u1ec1u ng\\u01b0\\u1eddi l\\u1ef1a ch\\u1ecdn d\\u01b0\\u1edbi \\u0111&acirc;y.<\\/p>\\r\\n\\r\\n<h2>Tinh d\\u1ea7u n\\u01b0\\u1edbc hoa Dubai m&ugrave;i n&agrave;o th\\u01a1m nh\\u1ea5t \\u0111\\u01b0\\u1ee3c nhi\\u1ec1u ng\\u01b0\\u1eddi y&ecirc;u th&iacute;ch?<\\/h2>\\r\\n\\r\\n<p>M\\u1ee5c l\\u1ee5c<\\/p>\\r\\n\\r\\n<nav>\\r\\n<ul>\\r\\n\\t<li><a href=\\\"https:\\/\\/hungthinhmart.com\\/tinh-dau-nuoc-hoa-mui-nao-thom-nhat#Tinh_dau_nuoc_hoa_Dubai_mui_nao_thom_nhat_duoc_nhieu_nguoi_yeu_thich\\\" title=\\\"Tinh d\\u1ea7u n\\u01b0\\u1edbc hoa Dubai m\\u00f9i n\\u00e0o th\\u01a1m nh\\u1ea5t \\u0111\\u01b0\\u1ee3c nhi\\u1ec1u ng\\u01b0\\u1eddi y\\u00eau th\\u00edch?\\\">Tinh d\\u1ea7u n\\u01b0\\u1edbc hoa Dubai m&ugrave;i n&agrave;o th\\u01a1m nh\\u1ea5t \\u0111\\u01b0\\u1ee3c nhi\\u1ec1u ng\\u01b0\\u1eddi y&ecirc;u th&iacute;ch?<\\/a><\\/li>\\r\\n\\t<li><a href=\\\"https:\\/\\/hungthinhmart.com\\/tinh-dau-nuoc-hoa-mui-nao-thom-nhat#Chon_tinh_dau_nuoc_hoa_voi_huong_thom_theo_mua\\\" title=\\\"Ch\\u1ecdn tinh d\\u1ea7u n\\u01b0\\u1edbc hoa v\\u1edbi h\\u01b0\\u01a1ng th\\u01a1m theo m\\u00f9a\\\">Ch\\u1ecdn tinh d\\u1ea7u n\\u01b0\\u1edbc hoa v\\u1edbi h\\u01b0\\u01a1ng th\\u01a1m theo m&ugrave;a<\\/a><\\/li>\\r\\n<\\/ul>\\r\\n<\\/nav>\\r\\n\\r\\n<p>N\\u01b0\\u1edbc hoa Dubai l\\u01b0u gi\\u1eef h\\u01b0\\u01a1ng th\\u01a1m c\\u1ef1c k\\u1ef3 laaum do v\\u1eady b\\u1ea1n c&oacute; th\\u1ec3 s\\u1eed d\\u1ee5ng tinh d\\u1ea7u n\\u01b0\\u1edbc hoa \\u0111\\u1ec3 t\\u1ea1o n&ecirc;n s\\u1ef1 tinh t\\u1ebf, n\\u1ed5i b\\u1eadt v&agrave; cu\\u1ed1n h&uacute;t h\\u01a1n cho m\\u1ed7i s\\u1ef1 ki\\u1ec7n trong ng&agrave;y.<\\/p>\\r\\n\\r\\n<p><strong>Miss Universe<\\/strong>&nbsp;&ndash; Mang l\\u1ea1i m&ugrave;i h\\u01b0\\u01a1ng n\\u0103ng \\u0111\\u1ed9ng v&agrave; t\\u01b0\\u01a1i tr\\u1ebb. V\\u1edbi nh\\u1eefng th&agrave;nh ph\\u1ea7n ch&iacute;nh: X\\u1ea1 h\\u01b0\\u01a1ng, tinh ch\\u1ea5t &ocirc; Liu, tinh ch\\u1ea5t B\\u1ea1ch \\u0110&agrave;n, tinh ch\\u1ea5t hoa Nh&agrave;i.<\\/p>\\r\\n\\r\\n<figure aria-describedby=\\\"caption-attachment-1200\\\" id=\\\"attachment_1200\\\"><img alt=\\\"M\\u00f9i h\\u01b0\\u01a1ng Miss Universe n\\u0103ng \\u0111\\u1ed9ng t\\u01b0\\u01a1i tr\\u1ebb \\\" height=\\\"771\\\" loading=\\\"lazy\\\" sizes=\\\"(max-width: 800px) 100vw, 800px\\\" src=\\\"https:\\/\\/hungthinhmart.com\\/wp-content\\/uploads\\/2018\\/05\\/tinh-dau-nuoc-hoa-dubai-mui-Miss-Universe.jpg\\\" srcset=\\\"https:\\/\\/hungthinhmart.com\\/wp-content\\/uploads\\/2018\\/05\\/tinh-dau-nuoc-hoa-dubai-mui-Miss-Universe.jpg 800w, https:\\/\\/hungthinhmart.com\\/wp-content\\/uploads\\/2018\\/05\\/tinh-dau-nuoc-hoa-dubai-mui-Miss-Universe-510x492.jpg 510w, https:\\/\\/hungthinhmart.com\\/wp-content\\/uploads\\/2018\\/05\\/tinh-dau-nuoc-hoa-dubai-mui-Miss-Universe-400x386.jpg 400w, https:\\/\\/hungthinhmart.com\\/wp-content\\/uploads\\/2018\\/05\\/tinh-dau-nuoc-hoa-dubai-mui-Miss-Universe-768x740.jpg 768w\\\" width=\\\"800\\\" \\/>\\r\\n<figcaption id=\\\"caption-attachment-1200\\\">M&ugrave;i h\\u01b0\\u01a1ng Miss Universe n\\u0103ng \\u0111\\u1ed9ng t\\u01b0\\u01a1i tr\\u1ebb<\\/figcaption>\\r\\n<\\/figure>\\r\\n\\r\\n<p><strong>Lucky<\\/strong>&nbsp;&ndash; V\\u1edbi h\\u01b0\\u01a1ng th\\u01a1m n\\u1ed3ng n&agrave;n, c&aacute; t&iacute;nh \\u0111\\u01b0\\u1ee3c chi\\u1ebft xu\\u1ea5t t\\u1eeb h\\u01b0\\u01a1ng th\\u01a1m c\\u1ee7a \\u0110&agrave;n h\\u01b0\\u01a1ng, tinh ch\\u1ea5t Hoa h\\u1ed3ng, O\\u1ea3i h\\u01b0\\u01a1ng, v&agrave; tinh d\\u1ea7u Tr\\u1ea7m. Lo\\u1ea1i tinh d\\u1ea7u n&agrave;y th&iacute;ch h\\u1ee3p cho c\\u1ea3 nam gi\\u1edbi v&agrave; n\\u1eef gi\\u1edbi.<\\/p>\\r\\n\\r\\n<p><strong>Extra Pure<\\/strong>&nbsp;&ndash; Mang h\\u01b0\\u01a1ng th\\u01a1m vanille v&ocirc; c&ugrave;ng sexy g\\u1ee3i c\\u1ea3m, m&ugrave;i h\\u01b0\\u01a1ng th&iacute;ch h\\u1ee3p v\\u1edbi nh\\u1eefng bu\\u1ed5i h\\u1eb9n h&ograve; l&atilde;ng m\\u1ea1n.<\\/p>\\r\\n\\r\\n<p><strong>Fantabulous<\\/strong>&nbsp;&ndash; V\\u1edbi h\\u01b0\\u01a1ng vitamin ng\\u1ecdt l\\u1ecbm, h\\u01b0\\u01a1ng th\\u01a1m v\\u1edbi c&aacute;c th&agrave;nh ph\\u1ea7n o\\u1ea3i h\\u01b0\\u01a1ng, tinh d\\u1ea7u Tr\\u1ea7m, tinh ch\\u1ea5t hoa Violet, \\u0110&agrave;n h\\u01b0\\u01a1ng.<\\/p>\\r\\n\\r\\n<p><strong>Cool moon<\\/strong>&nbsp;&ndash; M&ugrave;i h\\u01b0\\u01a1ng mang \\u0111\\u1ebfn s\\u1ef1 t\\u01b0\\u01a1i m&aacute;t v&agrave; tr\\u1ebb trung, tho\\u1ea3i m&aacute;i d&ugrave;ng \\u0111\\u01b0\\u1ee3c cho c\\u1ea3 nam gi\\u1edbi v&agrave; n\\u1eef gi\\u1edbi.<\\/p>\\r\\n\\r\\n<h2>Ch\\u1ecdn tinh d\\u1ea7u n\\u01b0\\u1edbc hoa v\\u1edbi h\\u01b0\\u01a1ng th\\u01a1m theo m&ugrave;a<\\/h2>\\r\\n\\r\\n<p>Ngo&agrave;i nh\\u1eefng h\\u01b0\\u01a1ng th\\u01a1m \\u0111\\u01b0\\u1ee3c nh\\u1eafc \\u0111\\u1ebfn \\u1edf tr&ecirc;n, \\u0111\\u1ec3 tr\\u1ea3 l\\u1eddi cho c&acirc;u h\\u1ecfi tinh d\\u1ea7u n\\u01b0\\u1edbc hoa Dubai m&ugrave;i n&agrave;o th\\u01a1m nh\\u1ea5t c&ograve;n c&oacute; nhi\\u1ec1u y\\u1ebfu t\\u1ed1 \\u1ea3nh h\\u01b0\\u1edfng \\u0111\\u1ebfn c&aacute;c m&ugrave;a trong n\\u0103m. Theo \\u0111&oacute; t&ugrave;y v&agrave;o m\\u1ed7i m&ugrave;a trong n\\u0103m m&agrave; ch&uacute;ng ta c&oacute; th\\u1ec3 ch\\u1ecdn \\u0111\\u01b0\\u1ee3c nh\\u1eefng h\\u01b0\\u01a1ng th\\u01a1m th&iacute;ch h\\u1ee3p nh\\u01b0:<\\/p>\\r\\n\\r\\n<p><img alt=\\\"nuoc hoa nu Carolina Herrera Good Girl\\\" height=\\\"972\\\" loading=\\\"lazy\\\" sizes=\\\"(max-width: 856px) 100vw, 856px\\\" src=\\\"https:\\/\\/hungthinhmart.com\\/wp-content\\/uploads\\/2017\\/12\\/nuoc-hoa-nu-Carolina-Herrera-Good-Girl.jpg\\\" srcset=\\\"https:\\/\\/hungthinhmart.com\\/wp-content\\/uploads\\/2017\\/12\\/nuoc-hoa-nu-Carolina-Herrera-Good-Girl.jpg 856w, https:\\/\\/hungthinhmart.com\\/wp-content\\/uploads\\/2017\\/12\\/nuoc-hoa-nu-Carolina-Herrera-Good-Girl-510x579.jpg 510w, https:\\/\\/hungthinhmart.com\\/wp-content\\/uploads\\/2017\\/12\\/nuoc-hoa-nu-Carolina-Herrera-Good-Girl-352x400.jpg 352w, https:\\/\\/hungthinhmart.com\\/wp-content\\/uploads\\/2017\\/12\\/nuoc-hoa-nu-Carolina-Herrera-Good-Girl-768x872.jpg 768w\\\" width=\\\"856\\\" \\/><\\/p>\\r\\n\\r\\n<p><strong>M&ugrave;a xu&acirc;n:<\\/strong>&nbsp;M&ugrave;a xu&acirc;n v\\u1edbi s\\u1ef1 giao thoa \\u0111\\u1ea5t tr\\u1eddi, b\\u1ea1n c&oacute; th\\u1ec3 ch\\u1ecdn nh\\u1eefng m&ugrave;i h\\u01b0\\u01a1ng tinh d\\u1ea7u n\\u01b0\\u1edbc hoa v\\u1edbi nh\\u1eefng h\\u01b0\\u01a1ng th\\u01a1m nh\\u1eb9 nh&agrave;ng nh\\u01b0 h\\u01b0\\u01a1ng cam, chanh t\\u01b0\\u01a1i&hellip; \\u0111\\u1ec3 ph&ugrave; h\\u1ee3p v\\u1edbi s\\u1ef1 t\\u01b0\\u01a1i vui v&agrave; h\\u01b0ng ph\\u1ea5n c\\u1ee7a m&ugrave;a xu&acirc;n t\\u01b0\\u01a1i \\u0111\\u1eb9p.<\\/p>\\r\\n\\r\\n<p><strong>M&ugrave;a h&egrave; s&ocirc;i \\u0111\\u1ed9ng:<\\/strong>&nbsp;Th\\u1eddi ti\\u1ebft n&oacute;ng b\\u1ee9c c\\u1ee7a m&ugrave;a h&egrave; s\\u1ebd t&aacute;c \\u0111\\u1ed9ng v&agrave; l&agrave;m tinh d\\u1ea7u n\\u01b0\\u1edbc hoa nhanh bay h\\u01a1i h\\u01a1n, do v\\u1eady b\\u1ea1n n&ecirc;n ch\\u1ecdn nh\\u1eefng h\\u01b0\\u01a1ng th\\u01a1m mang l\\u1ea1i s\\u1ef1 s\\u1ea3ng khoasim d\\u1ecbu m&aacute;t \\u0111\\u1ec3 s\\u1eed d\\u1ee5ng.<\\/p>\\r\\n\\r\\n<p><strong>M&ugrave;a \\u0111\\u1ed9ng kh&ocirc;ng kh&iacute; l\\u1ea1nh<\\/strong>: V&agrave;o m&ugrave;a \\u0111&ocirc;ng kh&ocirc;ng kh&iacute; l\\u1ea1nh h\\u01a1n n&ecirc;n m&ugrave;i h\\u01b0\\u01a1ng c\\u0169ng l\\u01b0u l\\u1ea1i l&acirc;u h\\u01a1n tr&ecirc;n c\\u01a1 th\\u1ec3, b\\u1ea1n ho&agrave;n to&agrave;n c&oacute; th\\u1ec3 ch\\u1ecdn c&aacute;c h\\u01b0\\u01a1ng th\\u01a1m \\u01b0a th&iacute;ch ho\\u1eb7c nh\\u1eefng m&ugrave;i h\\u01b0\\u01a1ng n\\u1ed3ng n&agrave;n \\u0111\\u1ec1u th&iacute;ch h\\u1ee3p.<\\/p>\\r\\n\\r\\n<p><strong>M&ugrave;a thu nh\\u1eb9 nh&agrave;ng<\\/strong>: V&agrave;o ti\\u1ebft th\\u1eddi m&ugrave;a thu nh\\u1eb9 nh&agrave;ng b\\u1ea1n c&oacute; th\\u1ec3 l\\u1ef1a ch\\u1ecdn nh\\u1eefng h\\u01b0\\u01a1ng th\\u01a1m nh\\u1eb9 c&oacute; m&ugrave;i thoang tho\\u1ea3ng hay m&ugrave;i qu\\u1ebf tinh t\\u1ebf&hellip;<\\/p>\\r\\n\\r\\n<p>\\u0110\\u1ec3 t&igrave;m mua tinh d\\u1ea7u n\\u01b0\\u1edbc hoa Dubai ch&iacute;nh h&atilde;ng v&agrave; t&igrave;m \\u0111\\u01b0\\u1ee3c n\\u01b0\\u1edbc hoa Dubai m&ugrave;i n&agrave;o th\\u01a1m nh\\u1ea5t, h&atilde;y \\u0111\\u1ebfn v\\u1edbi HT Market &ndash; \\u0111\\u1ea1i l&yacute; ph&acirc;n ph\\u1ed1i c&aacute;c s\\u1ea3n ph\\u1ea9m tinh d\\u1ea7u n\\u01b0\\u1edbc hoa Dubai tr&ecirc;n c\\u1ea3 n\\u01b0\\u1edbc v\\u1edbi m\\u1ee9c gi&aacute; th\\u1ea5p h\\u01a1n so v\\u1edbi m\\u1eb7t b\\u1eb1ng chung tr&ecirc;n th\\u1ecb tr\\u01b0\\u1eddng. Hi v\\u1ecdng v\\u1edbi nh\\u1eefng th&ocirc;ng tin tr&ecirc;n b\\u1ea1n s\\u1ebd bi\\u1ebft c&aacute;ch l\\u1ef1a ch\\u1ecdn h\\u01b0\\u01a1ng th\\u01a1m ph&ugrave; h\\u1ee3p.<\\/p>\"}},\"alias\":\"tinh-dau-nuoc-hoa-mui-nao-thom-nhat\",\"image\":\"\\/data\\/content\\/blog_use.jpg\",\"sort\":\"0\",\"status\":\"on\",\"_token\":\"CKxqKq9n7EUIxd8NrZucHF10Bndo2NDyTCTcGDU9\"}', '2022-01-13 03:13:42', '2022-01-13 03:13:42'),
(190, 1, 'sc_admin/news', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2022-01-13 03:13:43', '2022-01-13 03:13:43'),
(191, 1, 'sc_admin/news/edit/6', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2022-01-13 03:14:01', '2022-01-13 03:14:01'),
(192, 1, 'sc_admin/uploads', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"type\":\"content\"}', '2022-01-13 03:14:17', '2022-01-13 03:14:17'),
(193, 1, 'sc_admin/uploads/folders', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"working_dir\":null,\"type\":\"content\",\"_\":\"1642043657686\"}', '2022-01-13 03:14:18', '2022-01-13 03:14:18'),
(194, 1, 'sc_admin/uploads/errors', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"working_dir\":null,\"type\":\"content\",\"_\":\"1642043657687\"}', '2022-01-13 03:14:19', '2022-01-13 03:14:19'),
(195, 1, 'sc_admin/uploads/jsonitems', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"working_dir\":null,\"type\":\"content\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1642043657688\"}', '2022-01-13 03:14:19', '2022-01-13 03:14:19'),
(196, 1, 'sc_admin/news/edit/6', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"descriptions\":{\"vi\":{\"title\":\"Easy Polo Black Edition 6\",\"keyword\":null,\"description\":\"Tinh d\\u1ea7u n\\u01b0\\u1edbc hoa Dubai t\\u1ea1i HT Market l\\u00e0 d\\u00f2ng n\\u01b0\\u1edbc hoa n\\u1ed5i ti\\u1ebfng v\\u1edbi m\\u00f9i h\\u01b0\\u01a1ng si\\u00eau quy\\u1ebfn r\\u0169...\",\"content\":\"<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt=\\\"\\\" src=\\\"\\/data\\/product\\/product-10.png\\\" style=\\\"width: 262px; height: 262px; float: right; margin: 10px;\\\" \\/><\\/p>\\r\\n\\r\\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<\\/p>\"}},\"alias\":\"demo-alias-blog-6\",\"image\":\"\\/data\\/content\\/blog2.jpg\",\"sort\":\"0\",\"status\":\"on\",\"_token\":\"CKxqKq9n7EUIxd8NrZucHF10Bndo2NDyTCTcGDU9\"}', '2022-01-13 03:14:23', '2022-01-13 03:14:23'),
(197, 1, 'sc_admin/news', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2022-01-13 03:14:23', '2022-01-13 03:14:23'),
(198, 1, 'sc_admin/news/edit/6', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2022-01-13 03:14:32', '2022-01-13 03:14:32'),
(199, 1, 'sc_admin/uploads', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"type\":\"content\"}', '2022-01-13 03:14:40', '2022-01-13 03:14:40'),
(200, 1, 'sc_admin/uploads/folders', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"working_dir\":null,\"type\":\"content\",\"_\":\"1642043680695\"}', '2022-01-13 03:14:41', '2022-01-13 03:14:41'),
(201, 1, 'sc_admin/uploads/errors', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"working_dir\":null,\"type\":\"content\",\"_\":\"1642043680696\"}', '2022-01-13 03:14:42', '2022-01-13 03:14:42'),
(202, 1, 'sc_admin/uploads/jsonitems', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"working_dir\":null,\"type\":\"content\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1642043680697\"}', '2022-01-13 03:14:42', '2022-01-13 03:14:42'),
(203, 1, 'sc_admin/news/edit/6', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"descriptions\":{\"vi\":{\"title\":\"Easy Polo Black Edition 6\",\"keyword\":null,\"description\":\"Tinh d\\u1ea7u n\\u01b0\\u1edbc hoa Dubai t\\u1ea1i HT Market l\\u00e0 d\\u00f2ng n\\u01b0\\u1edbc hoa n\\u1ed5i ti\\u1ebfng v\\u1edbi m\\u00f9i h\\u01b0\\u01a1ng si\\u00eau quy\\u1ebfn r\\u0169...\",\"content\":\"<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt=\\\"\\\" src=\\\"\\/data\\/product\\/product-10.png\\\" style=\\\"width: 262px; height: 262px; float: right; margin: 10px;\\\" \\/><\\/p>\\r\\n\\r\\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<\\/p>\"}},\"alias\":\"demo-alias-blog-6\",\"image\":\"\\/data\\/content\\/blog_use.jpg\",\"sort\":\"0\",\"status\":\"on\",\"_token\":\"CKxqKq9n7EUIxd8NrZucHF10Bndo2NDyTCTcGDU9\"}', '2022-01-13 03:14:46', '2022-01-13 03:14:46'),
(204, 1, 'sc_admin/news', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2022-01-13 03:14:47', '2022-01-13 03:14:47'),
(205, 1, 'sc_admin/product', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2022-01-13 03:35:18', '2022-01-13 03:35:18'),
(206, 1, 'sc_admin/product/edit/12', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2022-01-13 03:35:36', '2022-01-13 03:35:36'),
(207, 1, 'sc_admin/product/edit/13', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2022-01-13 03:35:36', '2022-01-13 03:35:36'),
(208, 1, 'sc_admin/product/edit/13', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"descriptions\":{\"vi\":{\"name\":\"Easy Polo Black Edition 13\",\"keyword\":null,\"description\":null,\"content\":\"<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt=\\\"\\\" src=\\\"\\/data\\/product\\/product-10.png\\\" style=\\\"width: 262px; height: 262px; float: right; margin: 10px;\\\" \\/><\\/p>\\r\\n\\r\\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<\\/p>\"}},\"category\":[\"5\"],\"image\":\"\\/data\\/product\\/product_use.jpg\",\"sku\":\"3D-GOLD175\",\"alias\":\"demo-alias-name-product-13\",\"brand_id\":\"3\",\"supplier_id\":\"1\",\"cost\":\"5000\",\"price\":\"10000\",\"tax_id\":\"0\",\"price_promotion\":\"4000\",\"price_promotion_start\":null,\"price_promotion_end\":null,\"stock\":\"0\",\"weight_class\":null,\"weight\":\"0\",\"length_class\":null,\"length\":\"0\",\"height\":\"0\",\"width\":\"0\",\"property\":\"physical\",\"download_path\":null,\"date_available\":null,\"minimum\":\"0\",\"sort\":\"0\",\"status\":\"on\",\"_token\":\"CKxqKq9n7EUIxd8NrZucHF10Bndo2NDyTCTcGDU9\"}', '2022-01-13 03:35:50', '2022-01-13 03:35:50'),
(209, 1, 'sc_admin/product', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2022-01-13 03:35:51', '2022-01-13 03:35:51'),
(210, 1, 'sc_admin/tax', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2022-01-13 03:36:13', '2022-01-13 03:36:13'),
(211, 1, 'sc_admin/tax/delete', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"ids\":\"1\",\"_token\":\"CKxqKq9n7EUIxd8NrZucHF10Bndo2NDyTCTcGDU9\"}', '2022-01-13 03:36:19', '2022-01-13 03:36:19'),
(212, 1, 'sc_admin/tax', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2022-01-13 03:36:20', '2022-01-13 03:36:20'),
(213, 1, 'sc_admin/report/product', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2022-01-13 03:38:48', '2022-01-13 03:38:48'),
(214, 1, 'sc_admin', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2022-01-13 07:17:43', '2022-01-13 07:17:43'),
(215, 1, 'sc_admin/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2022-01-13 07:17:56', '2022-01-13 07:17:56'),
(216, 1, 'sc_admin/product/delete', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"ids\":\"9,1\",\"_token\":\"AyTrCkCtkqD41L3H1ij8Wy1BnRXJI4skLM12k9qv\"}', '2022-01-13 07:18:18', '2022-01-13 07:18:18'),
(217, 1, 'sc_admin/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"_pjax\":\"#pjax-container\"}', '2022-01-13 07:18:20', '2022-01-13 07:18:20'),
(218, 1, 'sc_admin/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2022-01-13 07:18:22', '2022-01-13 07:18:22'),
(219, 1, 'sc_admin/product/delete', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"ids\":\"8,7,6,5,4,3,2\",\"_token\":\"AyTrCkCtkqD41L3H1ij8Wy1BnRXJI4skLM12k9qv\"}', '2022-01-13 07:18:46', '2022-01-13 07:18:46'),
(220, 1, 'sc_admin/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"_pjax\":\"#pjax-container\"}', '2022-01-13 07:18:48', '2022-01-13 07:18:48'),
(221, 1, 'sc_admin', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2022-01-13 13:06:42', '2022-01-13 13:06:42'),
(222, 1, 'sc_admin/page', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2022-01-13 13:06:48', '2022-01-13 13:06:48'),
(223, 1, 'sc_admin/store_info', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2022-01-13 13:07:22', '2022-01-13 13:07:22'),
(224, 1, 'sc_admin/store_info/update_info', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"name\":\"phone\",\"value\":\"099999999999\",\"pk\":null,\"_token\":\"t2LVudV6beQ9TP2JSSwUXVcUWNiBQHWPvK4dDfIz\",\"storeId\":\"1\"}', '2022-01-13 13:08:32', '2022-01-13 13:08:32'),
(225, 1, 'sc_admin/store_info', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2022-01-13 13:12:04', '2022-01-13 13:12:04'),
(226, 1, 'sc_admin/store_config', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2022-01-13 13:12:09', '2022-01-13 13:12:09'),
(227, 1, 'sc_admin', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2022-01-13 13:14:19', '2022-01-13 13:14:19'),
(228, 1, 'sc_admin/store_info', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2022-01-13 13:14:24', '2022-01-13 13:14:24'),
(229, 1, 'sc_admin/store_maintain', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2022-01-13 13:14:35', '2022-01-13 13:14:35'),
(230, 1, 'sc_admin/store_info', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2022-01-13 13:18:27', '2022-01-13 13:18:27'),
(231, 1, 'sc_admin/store_info/update_info', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"name\":\"address\",\"value\":\"Quy\\u1ebft th\\u1eafng-TP th\\u00e1i nguy\\u00ean\",\"pk\":null,\"_token\":\"t2LVudV6beQ9TP2JSSwUXVcUWNiBQHWPvK4dDfIz\",\"storeId\":\"1\"}', '2022-01-13 13:19:09', '2022-01-13 13:19:09'),
(232, 1, 'sc_admin/store_info', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2022-01-13 13:26:48', '2022-01-13 13:26:48'),
(233, 1, 'sc_admin/store_info/update_info', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"name\":\"description__vi\",\"value\":\"C\\u1eadp nh\\u1eadt nh\\u1eefng m\\u1eabu n\\u01b0\\u1edbc hoa v\\u00e0 tinh d\\u1ea7u Dubai x\\u00e1ch tay \\u0111ang khuy\\u1ebfn m\\u00e3i!\",\"pk\":null,\"_token\":\"t2LVudV6beQ9TP2JSSwUXVcUWNiBQHWPvK4dDfIz\",\"storeId\":\"1\"}', '2022-01-13 13:27:01', '2022-01-13 13:27:01'),
(234, 1, 'sc_admin/store_info/update_info', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"name\":\"title__vi\",\"value\":\"Mai H\\u00e2n Perfume\",\"pk\":null,\"_token\":\"t2LVudV6beQ9TP2JSSwUXVcUWNiBQHWPvK4dDfIz\",\"storeId\":\"1\"}', '2022-01-13 13:27:26', '2022-01-13 13:27:26'),
(235, 1, 'sc_admin', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2022-01-13 13:30:11', '2022-01-13 13:30:11'),
(236, 1, 'sc_admin/store_info', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2022-01-13 13:30:17', '2022-01-13 13:30:17'),
(237, 1, 'sc_admin/plugin/payment', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2022-01-13 14:10:46', '2022-01-13 14:10:46'),
(238, 1, 'sc_admin/plugin/disable', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"_token\":\"t2LVudV6beQ9TP2JSSwUXVcUWNiBQHWPvK4dDfIz\",\"key\":\"Cash\",\"code\":\"Payment\"}', '2022-01-13 14:10:50', '2022-01-13 14:10:50'),
(239, 1, 'sc_admin/plugin/payment', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"_pjax\":\"#pjax-container\"}', '2022-01-13 14:10:51', '2022-01-13 14:10:51'),
(240, 1, 'sc_admin/plugin/shipping', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2022-01-13 14:11:09', '2022-01-13 14:11:09'),
(241, 1, 'sc_admin/plugin/disable', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"_token\":\"t2LVudV6beQ9TP2JSSwUXVcUWNiBQHWPvK4dDfIz\",\"key\":\"ShippingStandard\",\"code\":\"Shipping\"}', '2022-01-13 14:11:12', '2022-01-13 14:11:12'),
(242, 1, 'sc_admin/plugin/shipping', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"_pjax\":\"#pjax-container\"}', '2022-01-13 14:11:13', '2022-01-13 14:11:13'),
(243, 1, 'sc_admin/plugin/shipping', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2022-01-13 14:12:50', '2022-01-13 14:12:50'),
(244, 1, 'sc_admin/plugin/shipping', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"action\":\"config\",\"pluginKey\":\"ShippingStandard\"}', '2022-01-13 14:14:08', '2022-01-13 14:14:08'),
(245, 1, 'sc_admin/plugin/Shipping', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2022-01-13 14:14:11', '2022-01-13 14:14:11');
INSERT INTO `sc_admin_log` (`id`, `user_id`, `path`, `method`, `ip`, `user_agent`, `input`, `created_at`, `updated_at`) VALUES
(246, 1, 'sc_admin/plugin/enable', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"_token\":\"t2LVudV6beQ9TP2JSSwUXVcUWNiBQHWPvK4dDfIz\",\"key\":\"ShippingStandard\",\"code\":\"Shipping\"}', '2022-01-13 14:14:15', '2022-01-13 14:14:15'),
(247, 1, 'sc_admin/plugin/Shipping', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"_pjax\":\"#pjax-container\"}', '2022-01-13 14:14:16', '2022-01-13 14:14:16'),
(248, 1, 'sc_admin/plugin/payment', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2022-01-13 14:14:31', '2022-01-13 14:14:31'),
(249, 1, 'sc_admin/plugin/enable', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"_token\":\"t2LVudV6beQ9TP2JSSwUXVcUWNiBQHWPvK4dDfIz\",\"key\":\"Cash\",\"code\":\"Payment\"}', '2022-01-13 14:14:35', '2022-01-13 14:14:35'),
(250, 1, 'sc_admin/plugin/payment', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"_pjax\":\"#pjax-container\"}', '2022-01-13 14:14:35', '2022-01-13 14:14:35'),
(251, 1, 'sc_admin/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2022-01-13 14:37:28', '2022-01-13 14:37:28'),
(252, 1, 'sc_admin/product/edit/12', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2022-01-13 14:37:33', '2022-01-13 14:37:33'),
(253, 1, 'sc_admin/product/edit/12', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"descriptions\":{\"vi\":{\"name\":\"N\\u01b0\\u1edbc hoa N\\u1eef Dubai Mazaaji EDP\",\"keyword\":null,\"description\":\"Tinh d\\u1ea7u n\\u01b0\\u1edbc hoa Dubai t\\u1ea1i HT Market l\\u00e0 d\\u00f2ng n\\u01b0\\u1edbc hoa n\\u1ed5i ti\\u1ebfng v\\u1edbi m\\u00f9i h\\u01b0\\u01a1ng si\\u00eau quy\\u1ebfn r\\u0169...\",\"content\":\"<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt=\\\"\\\" src=\\\"\\/data\\/product\\/product-10.png\\\" style=\\\"width: 262px; height: 262px; float: right; margin: 10px;\\\" \\/><\\/p>\\r\\n\\r\\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<\\/p>\"}},\"category\":[\"9\"],\"image\":\"\\/data\\/product\\/product_use.jpg\",\"sku\":\"3D-CARBON175\",\"alias\":\"nuoc-hoa-nu-dubai-mazaaji-edp\",\"brand_id\":\"2\",\"supplier_id\":\"1\",\"cost\":\"0\",\"price\":\"4800000\",\"tax_id\":\"0\",\"price_promotion\":\"2999000\",\"price_promotion_start\":\"2022-01-12\",\"price_promotion_end\":\"2022-03-16\",\"stock\":\"100\",\"weight_class\":null,\"weight\":\"0\",\"length_class\":null,\"length\":\"0\",\"height\":\"0\",\"width\":\"0\",\"property\":\"physical\",\"download_path\":null,\"date_available\":null,\"minimum\":\"1\",\"sort\":\"0\",\"status\":\"on\",\"_token\":\"JlxbV1Xs2jiWUdPwkqW9ZoWwqwzB7kIEQTOGXqLD\"}', '2022-01-13 14:37:48', '2022-01-13 14:37:48'),
(254, 1, 'sc_admin/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2022-01-13 14:37:49', '2022-01-13 14:37:49'),
(255, 1, 'sc_admin/store_info', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2022-01-13 14:59:21', '2022-01-13 14:59:21'),
(256, 1, 'sc_admin/theme/blue', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2022-01-13 15:02:27', '2022-01-13 15:02:27'),
(257, 1, 'sc_admin/store_info', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2022-01-13 15:02:27', '2022-01-13 15:02:27'),
(258, 1, 'sc_admin/theme/lightblue', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2022-01-13 15:02:33', '2022-01-13 15:02:33'),
(259, 1, 'sc_admin/store_info', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2022-01-13 15:02:34', '2022-01-13 15:02:34'),
(260, 1, 'sc_admin/theme/pink', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2022-01-13 15:05:21', '2022-01-13 15:05:21'),
(261, 1, 'sc_admin/store_info', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2022-01-13 15:05:21', '2022-01-13 15:05:21'),
(262, 1, 'sc_admin', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2022-01-13 15:05:32', '2022-01-13 15:05:32'),
(263, 1, 'sc_admin', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2022-01-13 15:09:31', '2022-01-13 15:09:31'),
(264, 1, 'sc_admin', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2022-01-13 15:15:24', '2022-01-13 15:15:24'),
(265, 1, 'sc_admin', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2022-01-13 15:15:28', '2022-01-13 15:15:28'),
(266, 1, 'sc_admin', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2022-01-13 15:15:33', '2022-01-13 15:15:33'),
(267, 1, 'sc_admin/order', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2022-01-13 15:16:14', '2022-01-13 15:16:14'),
(268, 1, 'sc_admin/order', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2022-01-13 15:16:34', '2022-01-13 15:16:34'),
(269, 1, 'sc_admin/order', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2022-01-13 15:17:42', '2022-01-13 15:17:42'),
(270, 1, 'sc_admin/order', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2022-01-13 15:18:09', '2022-01-13 15:18:09'),
(271, 1, 'sc_admin/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2022-01-13 15:20:28', '2022-01-13 15:20:28'),
(272, 1, 'sc_admin/plugin/payment', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2022-01-13 15:21:12', '2022-01-13 15:21:12'),
(273, 1, 'sc_admin/order', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"order_status\":\"1\"}', '2022-01-13 15:21:57', '2022-01-13 15:21:57'),
(274, 1, 'sc_admin/store_info', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2022-01-13 15:26:23', '2022-01-13 15:26:23'),
(275, 1, 'sc_admin/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2022-01-13 15:50:15', '2022-01-13 15:50:15'),
(276, 1, 'sc_admin/product/edit/12', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2022-01-13 15:50:20', '2022-01-13 15:50:20'),
(277, 1, 'sc_admin/uploads', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"type\":\"product\"}', '2022-01-13 15:50:25', '2022-01-13 15:50:25'),
(278, 1, 'sc_admin/uploads/errors', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"working_dir\":null,\"type\":\"product\",\"_\":\"1642089027583\"}', '2022-01-13 15:50:28', '2022-01-13 15:50:28'),
(279, 1, 'sc_admin/uploads/folders', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"working_dir\":null,\"type\":\"product\",\"_\":\"1642089027582\"}', '2022-01-13 15:50:28', '2022-01-13 15:50:28'),
(280, 1, 'sc_admin/uploads/jsonitems', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"working_dir\":null,\"type\":\"product\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1642089027584\"}', '2022-01-13 15:50:29', '2022-01-13 15:50:29'),
(281, 1, 'sc_admin/product/edit/12', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"descriptions\":{\"vi\":{\"name\":\"N\\u01b0\\u1edbc hoa N\\u1eef Dubai Mazaaji EDP\",\"keyword\":null,\"description\":\"Tinh d\\u1ea7u n\\u01b0\\u1edbc hoa Dubai t\\u1ea1i HT Market l\\u00e0 d\\u00f2ng n\\u01b0\\u1edbc hoa n\\u1ed5i ti\\u1ebfng v\\u1edbi m\\u00f9i h\\u01b0\\u01a1ng si\\u00eau quy\\u1ebfn r\\u0169...\",\"content\":\"<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt=\\\"\\\" src=\\\"\\/data\\/product\\/product-10.png\\\" style=\\\"width: 262px; height: 262px; float: right; margin: 10px;\\\" \\/><\\/p>\\r\\n\\r\\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<\\/p>\"}},\"category\":[\"9\"],\"image\":\"\\/data\\/product\\/product_use.jpg\",\"sub_image\":[\"\\/data\\/product\\/product-6.png\"],\"sku\":\"3D-CARBON175\",\"alias\":\"nuoc-hoa-nu-dubai-mazaaji-edp\",\"brand_id\":\"2\",\"supplier_id\":\"1\",\"cost\":\"0\",\"price\":\"4800000\",\"tax_id\":\"0\",\"price_promotion\":\"2999000\",\"price_promotion_start\":\"2022-01-12\",\"price_promotion_end\":\"2022-03-16\",\"stock\":\"97\",\"weight_class\":null,\"weight\":\"0\",\"length_class\":null,\"length\":\"0\",\"height\":\"0\",\"width\":\"0\",\"property\":\"physical\",\"download_path\":null,\"date_available\":null,\"minimum\":\"1\",\"sort\":\"0\",\"status\":\"on\",\"_token\":\"WqNBH7Myt8QNpg9m6nGj4rCZsE7cmnf6Nu133Vwa\"}', '2022-01-13 15:50:36', '2022-01-13 15:50:36'),
(282, 1, 'sc_admin/product/edit/12', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"descriptions\":{\"vi\":{\"name\":\"N\\u01b0\\u1edbc hoa N\\u1eef Dubai Mazaaji EDP\",\"keyword\":null,\"description\":\"Tinh d\\u1ea7u n\\u01b0\\u1edbc hoa Dubai t\\u1ea1i HT Market l\\u00e0 d\\u00f2ng n\\u01b0\\u1edbc hoa n\\u1ed5i ti\\u1ebfng v\\u1edbi m\\u00f9i h\\u01b0\\u01a1ng si\\u00eau quy\\u1ebfn r\\u0169...\",\"content\":\"<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt=\\\"\\\" src=\\\"\\/data\\/product\\/product-10.png\\\" style=\\\"width: 262px; height: 262px; float: right; margin: 10px;\\\" \\/><\\/p>\\r\\n\\r\\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<\\/p>\"}},\"category\":[\"9\"],\"image\":\"\\/data\\/product\\/product_use.jpg\",\"sub_image\":[\"\\/data\\/product\\/product-6.png\"],\"sku\":\"3D-CARBON175\",\"alias\":\"nuoc-hoa-nu-dubai-mazaaji-edp\",\"brand_id\":\"2\",\"supplier_id\":\"1\",\"cost\":\"0\",\"price\":\"4800000\",\"tax_id\":\"0\",\"price_promotion\":\"2999000\",\"price_promotion_start\":\"2022-01-12\",\"price_promotion_end\":\"2022-03-16\",\"stock\":\"97\",\"weight_class\":null,\"weight\":\"0\",\"length_class\":null,\"length\":\"0\",\"height\":\"0\",\"width\":\"0\",\"property\":\"physical\",\"download_path\":null,\"date_available\":null,\"minimum\":\"1\",\"sort\":\"0\",\"status\":\"on\",\"_token\":\"WqNBH7Myt8QNpg9m6nGj4rCZsE7cmnf6Nu133Vwa\"}', '2022-01-13 15:50:36', '2022-01-13 15:50:36'),
(283, 1, 'sc_admin/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2022-01-13 15:50:37', '2022-01-13 15:50:37'),
(284, 1, 'sc_admin', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2022-01-13 16:06:44', '2022-01-13 16:06:44'),
(285, 1, 'sc_admin/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2022-01-13 16:06:48', '2022-01-13 16:06:48'),
(286, 1, 'sc_admin/product/edit/12', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2022-01-13 16:07:25', '2022-01-13 16:07:25'),
(287, 1, 'sc_admin', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2022-01-13 16:19:32', '2022-01-13 16:19:32'),
(288, 1, 'sc_admin', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2022-01-13 16:47:42', '2022-01-13 16:47:42'),
(289, 1, 'sc_admin', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2022-01-13 16:47:52', '2022-01-13 16:47:52'),
(290, 1, 'sc_admin', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2022-01-13 16:48:43', '2022-01-13 16:48:43'),
(291, 1, 'sc_admin/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2022-01-13 16:49:00', '2022-01-13 16:49:00'),
(292, 1, 'sc_admin/product/edit/12', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2022-01-13 16:49:06', '2022-01-13 16:49:06'),
(293, 1, 'sc_admin/uploads', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"type\":\"product\"}', '2022-01-13 16:49:32', '2022-01-13 16:49:32'),
(294, 1, 'sc_admin/uploads/errors', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"working_dir\":null,\"type\":\"product\",\"_\":\"1642092573839\"}', '2022-01-13 16:49:34', '2022-01-13 16:49:34'),
(295, 1, 'sc_admin/uploads/folders', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"working_dir\":null,\"type\":\"product\",\"_\":\"1642092573838\"}', '2022-01-13 16:49:34', '2022-01-13 16:49:34'),
(296, 1, 'sc_admin/uploads/jsonitems', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"working_dir\":null,\"type\":\"product\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1642092573840\"}', '2022-01-13 16:49:36', '2022-01-13 16:49:36'),
(297, 1, 'sc_admin/uploads', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"type\":\"product\"}', '2022-01-13 16:50:26', '2022-01-13 16:50:26'),
(298, 1, 'sc_admin/uploads/errors', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"working_dir\":null,\"type\":\"product\",\"_\":\"1642092627405\"}', '2022-01-13 16:50:28', '2022-01-13 16:50:28'),
(299, 1, 'sc_admin/uploads/folders', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"working_dir\":null,\"type\":\"product\",\"_\":\"1642092627404\"}', '2022-01-13 16:50:28', '2022-01-13 16:50:28'),
(300, 1, 'sc_admin/uploads/jsonitems', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"working_dir\":null,\"type\":\"product\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1642092627406\"}', '2022-01-13 16:50:29', '2022-01-13 16:50:29'),
(301, 1, 'sc_admin/uploads', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"type\":\"product\"}', '2022-01-13 16:52:43', '2022-01-13 16:52:43'),
(302, 1, 'sc_admin/uploads/folders', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"working_dir\":null,\"type\":\"product\",\"_\":\"1642092764166\"}', '2022-01-13 16:52:45', '2022-01-13 16:52:45'),
(303, 1, 'sc_admin/uploads/errors', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"working_dir\":null,\"type\":\"product\",\"_\":\"1642092764167\"}', '2022-01-13 16:52:45', '2022-01-13 16:52:45'),
(304, 1, 'sc_admin/uploads/jsonitems', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"working_dir\":null,\"type\":\"product\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1642092764168\"}', '2022-01-13 16:52:46', '2022-01-13 16:52:46'),
(305, 1, 'sc_admin/uploads', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"type\":\"product\"}', '2022-01-13 16:53:06', '2022-01-13 16:53:06'),
(306, 1, 'sc_admin/uploads/folders', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"working_dir\":null,\"type\":\"product\",\"_\":\"1642092787341\"}', '2022-01-13 16:53:08', '2022-01-13 16:53:08'),
(307, 1, 'sc_admin/uploads/errors', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"working_dir\":null,\"type\":\"product\",\"_\":\"1642092787342\"}', '2022-01-13 16:53:08', '2022-01-13 16:53:08'),
(308, 1, 'sc_admin/uploads/jsonitems', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"working_dir\":null,\"type\":\"product\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1642092787343\"}', '2022-01-13 16:53:09', '2022-01-13 16:53:09'),
(309, 1, 'sc_admin/uploads/upload', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"product\",\"_token\":\"WqNBH7Myt8QNpg9m6nGj4rCZsE7cmnf6Nu133Vwa\"}', '2022-01-13 16:53:14', '2022-01-13 16:53:14'),
(310, 1, 'sc_admin/uploads/folders', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"product\",\"_\":\"1642092787344\"}', '2022-01-13 16:53:15', '2022-01-13 16:53:15'),
(311, 1, 'sc_admin/uploads/jsonitems', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"product\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1642092787345\"}', '2022-01-13 16:53:16', '2022-01-13 16:53:16'),
(312, 1, 'sc_admin/product/edit/12', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"descriptions\":{\"vi\":{\"name\":\"N\\u01b0\\u1edbc hoa N\\u1eef Dubai Mazaaji EDP\",\"keyword\":null,\"description\":\"Tinh d\\u1ea7u n\\u01b0\\u1edbc hoa Dubai t\\u1ea1i HT Market l\\u00e0 d\\u00f2ng n\\u01b0\\u1edbc hoa n\\u1ed5i ti\\u1ebfng v\\u1edbi m\\u00f9i h\\u01b0\\u01a1ng si\\u00eau quy\\u1ebfn r\\u0169...\",\"content\":\"<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<\\/p>\\r\\n\\r\\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<\\/p>\"}},\"category\":[\"9\"],\"image\":\"\\/data\\/product\\/product_use.jpg\",\"sub_image\":[\"\\/data\\/product\\/cart3.jpg\"],\"sku\":\"3D-CARBON175\",\"alias\":\"nuoc-hoa-nu-dubai-mazaaji-edp\",\"brand_id\":\"2\",\"supplier_id\":\"1\",\"cost\":\"0\",\"price\":\"4800000\",\"tax_id\":\"0\",\"price_promotion\":\"2999000\",\"price_promotion_start\":\"2022-01-12\",\"price_promotion_end\":\"2022-03-16\",\"stock\":\"97\",\"weight_class\":null,\"weight\":\"0\",\"length_class\":null,\"length\":\"0\",\"height\":\"0\",\"width\":\"0\",\"property\":\"physical\",\"download_path\":null,\"date_available\":null,\"minimum\":\"1\",\"sort\":\"0\",\"status\":\"on\",\"_token\":\"WqNBH7Myt8QNpg9m6nGj4rCZsE7cmnf6Nu133Vwa\"}', '2022-01-13 16:53:30', '2022-01-13 16:53:30'),
(313, 1, 'sc_admin/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2022-01-13 16:53:32', '2022-01-13 16:53:32'),
(314, 1, 'sc_admin/product/edit/12', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2022-01-13 16:53:36', '2022-01-13 16:53:36'),
(315, 1, 'sc_admin/uploads', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"type\":\"product\"}', '2022-01-13 16:54:06', '2022-01-13 16:54:06'),
(316, 1, 'sc_admin/uploads/errors', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"working_dir\":null,\"type\":\"product\",\"_\":\"1642092847187\"}', '2022-01-13 16:54:08', '2022-01-13 16:54:08'),
(317, 1, 'sc_admin/uploads/folders', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"working_dir\":null,\"type\":\"product\",\"_\":\"1642092847186\"}', '2022-01-13 16:54:08', '2022-01-13 16:54:08'),
(318, 1, 'sc_admin/uploads/jsonitems', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"working_dir\":null,\"type\":\"product\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1642092847188\"}', '2022-01-13 16:54:09', '2022-01-13 16:54:09'),
(319, 1, 'sc_admin/uploads', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"type\":\"product\"}', '2022-01-13 16:54:18', '2022-01-13 16:54:18'),
(320, 1, 'sc_admin/uploads/errors', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"working_dir\":null,\"type\":\"product\",\"_\":\"1642092859344\"}', '2022-01-13 16:54:20', '2022-01-13 16:54:20'),
(321, 1, 'sc_admin/uploads/folders', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"working_dir\":null,\"type\":\"product\",\"_\":\"1642092859343\"}', '2022-01-13 16:54:20', '2022-01-13 16:54:20'),
(322, 1, 'sc_admin/uploads/jsonitems', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"working_dir\":null,\"type\":\"product\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1642092859345\"}', '2022-01-13 16:54:21', '2022-01-13 16:54:21'),
(323, 1, 'sc_admin/uploads', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"type\":\"product\"}', '2022-01-13 16:54:46', '2022-01-13 16:54:46'),
(324, 1, 'sc_admin/uploads/folders', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"working_dir\":null,\"type\":\"product\",\"_\":\"1642092886779\"}', '2022-01-13 16:54:47', '2022-01-13 16:54:47'),
(325, 1, 'sc_admin/uploads/errors', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"working_dir\":null,\"type\":\"product\",\"_\":\"1642092886780\"}', '2022-01-13 16:54:47', '2022-01-13 16:54:47'),
(326, 1, 'sc_admin/uploads/jsonitems', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"working_dir\":null,\"type\":\"product\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1642092886781\"}', '2022-01-13 16:54:48', '2022-01-13 16:54:48'),
(327, 1, 'sc_admin/product/edit/12', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"descriptions\":{\"vi\":{\"name\":\"N\\u01b0\\u1edbc hoa N\\u1eef Dubai Mazaaji EDP\",\"keyword\":null,\"description\":\"Tinh d\\u1ea7u n\\u01b0\\u1edbc hoa Dubai t\\u1ea1i HT Market l\\u00e0 d\\u00f2ng n\\u01b0\\u1edbc hoa n\\u1ed5i ti\\u1ebfng v\\u1edbi m\\u00f9i h\\u01b0\\u01a1ng si\\u00eau quy\\u1ebfn r\\u0169...\",\"content\":\"<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<\\/p>\\r\\n\\r\\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<\\/p>\"}},\"category\":[\"9\"],\"image\":\"\\/data\\/product\\/product_use.jpg\",\"sub_image\":[\"\\/data\\/product\\/cart3.jpg\",\"\\/data\\/product\\/cart3.jpg\",\"\\/data\\/product\\/cart3.jpg\"],\"sku\":\"3D-CARBON175\",\"alias\":\"nuoc-hoa-nu-dubai-mazaaji-edp\",\"brand_id\":\"2\",\"supplier_id\":\"1\",\"cost\":\"0\",\"price\":\"4800000\",\"tax_id\":\"0\",\"price_promotion\":\"2999000\",\"price_promotion_start\":\"2022-01-12\",\"price_promotion_end\":\"2022-03-16\",\"stock\":\"97\",\"weight_class\":null,\"weight\":\"0\",\"length_class\":null,\"length\":\"0\",\"height\":\"0\",\"width\":\"0\",\"property\":\"physical\",\"download_path\":null,\"date_available\":null,\"minimum\":\"1\",\"sort\":\"0\",\"status\":\"on\",\"_token\":\"WqNBH7Myt8QNpg9m6nGj4rCZsE7cmnf6Nu133Vwa\"}', '2022-01-13 16:54:58', '2022-01-13 16:54:58'),
(328, 1, 'sc_admin/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2022-01-13 16:55:00', '2022-01-13 16:55:00'),
(329, 1, 'sc_admin/product/edit/12', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2022-01-13 16:58:06', '2022-01-13 16:58:06'),
(330, 1, 'sc_admin/uploads', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"type\":\"product\"}', '2022-01-13 16:58:14', '2022-01-13 16:58:14'),
(331, 1, 'sc_admin/uploads/folders', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"working_dir\":null,\"type\":\"product\",\"_\":\"1642093094574\"}', '2022-01-13 16:58:15', '2022-01-13 16:58:15'),
(332, 1, 'sc_admin/uploads/errors', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"working_dir\":null,\"type\":\"product\",\"_\":\"1642093094575\"}', '2022-01-13 16:58:15', '2022-01-13 16:58:15'),
(333, 1, 'sc_admin/uploads/jsonitems', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"working_dir\":null,\"type\":\"product\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1642093094576\"}', '2022-01-13 16:58:16', '2022-01-13 16:58:16'),
(334, 1, 'sc_admin/uploads', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"type\":\"product\"}', '2022-01-13 16:58:22', '2022-01-13 16:58:22'),
(335, 1, 'sc_admin/uploads/folders', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"working_dir\":null,\"type\":\"product\",\"_\":\"1642093102730\"}', '2022-01-13 16:58:23', '2022-01-13 16:58:23'),
(336, 1, 'sc_admin/uploads/errors', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"working_dir\":null,\"type\":\"product\",\"_\":\"1642093102731\"}', '2022-01-13 16:58:23', '2022-01-13 16:58:23'),
(337, 1, 'sc_admin/uploads/jsonitems', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"working_dir\":null,\"type\":\"product\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1642093102732\"}', '2022-01-13 16:58:24', '2022-01-13 16:58:24'),
(338, 1, 'sc_admin/product/edit/12', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"descriptions\":{\"vi\":{\"name\":\"N\\u01b0\\u1edbc hoa N\\u1eef Dubai Mazaaji EDP\",\"keyword\":null,\"description\":\"Tinh d\\u1ea7u n\\u01b0\\u1edbc hoa Dubai t\\u1ea1i HT Market l\\u00e0 d\\u00f2ng n\\u01b0\\u1edbc hoa n\\u1ed5i ti\\u1ebfng v\\u1edbi m\\u00f9i h\\u01b0\\u01a1ng si\\u00eau quy\\u1ebfn r\\u0169...\",\"content\":\"<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<\\/p>\\r\\n\\r\\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<\\/p>\"}},\"category\":[\"9\"],\"image\":\"\\/data\\/product\\/product_use.jpg\",\"sub_image\":[\"\\/data\\/product\\/product_use.jpg\",\"\\/data\\/product\\/product_use.jpg\"],\"sku\":\"3D-CARBON175\",\"alias\":\"nuoc-hoa-nu-dubai-mazaaji-edp\",\"brand_id\":\"2\",\"supplier_id\":\"1\",\"cost\":\"0\",\"price\":\"4800000\",\"tax_id\":\"0\",\"price_promotion\":\"2999000\",\"price_promotion_start\":\"2022-01-12\",\"price_promotion_end\":\"2022-03-16\",\"stock\":\"97\",\"weight_class\":null,\"weight\":\"0\",\"length_class\":null,\"length\":\"0\",\"height\":\"0\",\"width\":\"0\",\"property\":\"physical\",\"download_path\":null,\"date_available\":null,\"minimum\":\"1\",\"sort\":\"0\",\"status\":\"on\",\"_token\":\"WqNBH7Myt8QNpg9m6nGj4rCZsE7cmnf6Nu133Vwa\"}', '2022-01-13 16:58:32', '2022-01-13 16:58:32'),
(339, 1, 'sc_admin/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2022-01-13 16:58:34', '2022-01-13 16:58:34'),
(340, 1, 'sc_admin/product/edit/12', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2022-01-13 17:26:01', '2022-01-13 17:26:01'),
(341, 1, 'sc_admin/product/edit/12', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"descriptions\":{\"vi\":{\"name\":\"N\\u01b0\\u1edbc hoa N\\u1eef Dubai Mazaaji EDP\",\"keyword\":null,\"description\":\"Tinh d\\u1ea7u n\\u01b0\\u1edbc hoa Dubai t\\u1ea1i HT Market l\\u00e0 d\\u00f2ng n\\u01b0\\u1edbc hoa n\\u1ed5i ti\\u1ebfng v\\u1edbi m\\u00f9i h\\u01b0\\u01a1ng si\\u00eau quy\\u1ebfn r\\u0169...\",\"content\":\"<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<\\/p>\\r\\n\\r\\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<\\/p>\"}},\"category\":[\"9\"],\"image\":\"\\/data\\/product\\/product_use.jpg\",\"sub_image\":[\"\\/data\\/product\\/product_use.jpg\",\"\\/data\\/product\\/product_use.jpg\"],\"sku\":\"3D-CARBON175\",\"alias\":\"nuoc-hoa-nu-dubai-mazaaji-edp\",\"brand_id\":\"2\",\"supplier_id\":\"1\",\"cost\":\"0\",\"price\":\"4800000\",\"tax_id\":\"0\",\"price_promotion\":\"2999000\",\"price_promotion_start\":\"2022-01-12\",\"price_promotion_end\":\"2022-03-16\",\"stock\":\"97\",\"weight_class\":null,\"weight\":\"0\",\"length_class\":null,\"length\":\"0\",\"height\":\"0\",\"width\":\"0\",\"property\":\"physical\",\"download_path\":null,\"date_available\":null,\"minimum\":\"1\",\"sort\":\"0\",\"status\":\"on\",\"attribute\":{\"1\":{\"name\":[\"Red\"],\"add_price\":[null]},\"2\":{\"name\":[\"M\"],\"add_price\":[\"200000\"]}},\"_token\":\"WqNBH7Myt8QNpg9m6nGj4rCZsE7cmnf6Nu133Vwa\"}', '2022-01-13 17:26:37', '2022-01-13 17:26:37'),
(342, 1, 'sc_admin/product/edit/12', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"descriptions\":{\"vi\":{\"name\":\"N\\u01b0\\u1edbc hoa N\\u1eef Dubai Mazaaji EDP\",\"keyword\":null,\"description\":\"Tinh d\\u1ea7u n\\u01b0\\u1edbc hoa Dubai t\\u1ea1i HT Market l\\u00e0 d\\u00f2ng n\\u01b0\\u1edbc hoa n\\u1ed5i ti\\u1ebfng v\\u1edbi m\\u00f9i h\\u01b0\\u01a1ng si\\u00eau quy\\u1ebfn r\\u0169...\",\"content\":\"<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<\\/p>\\r\\n\\r\\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<\\/p>\"}},\"category\":[\"9\"],\"image\":\"\\/data\\/product\\/product_use.jpg\",\"sub_image\":[\"\\/data\\/product\\/product_use.jpg\",\"\\/data\\/product\\/product_use.jpg\"],\"sku\":\"3D-CARBON175\",\"alias\":\"nuoc-hoa-nu-dubai-mazaaji-edp\",\"brand_id\":\"2\",\"supplier_id\":\"1\",\"cost\":\"0\",\"price\":\"4800000\",\"tax_id\":\"0\",\"price_promotion\":\"2999000\",\"price_promotion_start\":\"2022-01-12\",\"price_promotion_end\":\"2022-03-16\",\"stock\":\"97\",\"weight_class\":null,\"weight\":\"0\",\"length_class\":null,\"length\":\"0\",\"height\":\"0\",\"width\":\"0\",\"property\":\"physical\",\"download_path\":null,\"date_available\":null,\"minimum\":\"1\",\"sort\":\"0\",\"status\":\"on\",\"attribute\":{\"1\":{\"name\":[\"Red\"],\"add_price\":[\"20000\"]},\"2\":{\"name\":[\"M\"],\"add_price\":[\"50000\"]}},\"_token\":\"WqNBH7Myt8QNpg9m6nGj4rCZsE7cmnf6Nu133Vwa\"}', '2022-01-13 17:27:02', '2022-01-13 17:27:02'),
(343, 1, 'sc_admin/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2022-01-13 17:27:03', '2022-01-13 17:27:03'),
(344, 1, 'sc_admin/product/edit/12', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2022-01-13 17:34:16', '2022-01-13 17:34:16'),
(345, 1, 'sc_admin/product/edit/12', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"descriptions\":{\"vi\":{\"name\":\"N\\u01b0\\u1edbc hoa N\\u1eef Dubai Mazaaji EDP\",\"keyword\":null,\"description\":\"Tinh d\\u1ea7u n\\u01b0\\u1edbc hoa Dubai t\\u1ea1i HT Market l\\u00e0 d\\u00f2ng n\\u01b0\\u1edbc hoa n\\u1ed5i ti\\u1ebfng v\\u1edbi m\\u00f9i h\\u01b0\\u01a1ng si\\u00eau quy\\u1ebfn r\\u0169...\",\"content\":\"<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<\\/p>\\r\\n\\r\\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<\\/p>\"}},\"category\":[\"9\"],\"image\":\"\\/data\\/product\\/product_use.jpg\",\"sub_image\":[\"\\/data\\/product\\/product_use.jpg\",\"\\/data\\/product\\/product_use.jpg\"],\"sku\":\"3D-CARBON175\",\"alias\":\"nuoc-hoa-nu-dubai-mazaaji-edp\",\"brand_id\":\"2\",\"supplier_id\":\"1\",\"cost\":\"0\",\"price\":\"4800000\",\"tax_id\":\"0\",\"price_promotion\":\"2999000\",\"price_promotion_start\":\"2022-01-12\",\"price_promotion_end\":\"2022-03-16\",\"stock\":\"97\",\"weight_class\":null,\"weight\":\"0\",\"length_class\":null,\"length\":\"0\",\"height\":\"0\",\"width\":\"0\",\"property\":\"physical\",\"download_path\":null,\"date_available\":null,\"minimum\":\"1\",\"sort\":\"0\",\"status\":\"on\",\"attribute\":{\"1\":{\"name\":[\"Red\",\"Yellow\"],\"add_price\":[\"20000\",\"20000\"]},\"2\":{\"name\":[\"M\",\"L\"],\"add_price\":[\"50000\",\"20000\"]}},\"_token\":\"WqNBH7Myt8QNpg9m6nGj4rCZsE7cmnf6Nu133Vwa\"}', '2022-01-13 17:34:50', '2022-01-13 17:34:50'),
(346, 1, 'sc_admin/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2022-01-13 17:34:51', '2022-01-13 17:34:51'),
(347, 1, 'sc_admin', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2022-01-14 02:43:59', '2022-01-14 02:43:59'),
(348, 1, 'sc_admin/category', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2022-01-14 02:44:25', '2022-01-14 02:44:25'),
(349, 1, 'sc_admin', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2022-01-14 03:25:26', '2022-01-14 03:25:26'),
(350, 1, 'sc_admin/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2022-01-14 03:25:34', '2022-01-14 03:25:34'),
(351, 1, 'sc_admin/product/edit/12', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2022-01-14 03:25:42', '2022-01-14 03:25:42'),
(352, 1, 'sc_admin/product/edit/12', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"descriptions\":{\"vi\":{\"name\":\"N\\u01b0\\u1edbc hoa N\\u1eef Dubai Mazaaji EDP\",\"keyword\":null,\"description\":\"Tinh d\\u1ea7u n\\u01b0\\u1edbc hoa Dubai t\\u1ea1i HT Market l\\u00e0 d\\u00f2ng n\\u01b0\\u1edbc hoa n\\u1ed5i ti\\u1ebfng v\\u1edbi m\\u00f9i h\\u01b0\\u01a1ng si\\u00eau quy\\u1ebfn r\\u0169...\",\"content\":\"<p>Phong c&aacute;ch: Sang tr\\u1ecdng, ng\\u1ecdt ng&agrave;o, sexy<\\/p>\\r\\n\\r\\n<p>Th\\u01b0\\u01a1ng hi\\u1ec7u: Lattafa<\\/p>\\r\\n\\r\\n<p>Xu\\u1ea5t x\\u1ee9: Dubai &ndash; UAE<\\/p>\\r\\n\\r\\n<p>\\u0110\\u1ed9 tu\\u1ed5i: 25 tu\\u1ed5i tr\\u1edf l&ecirc;n<\\/p>\\r\\n\\r\\n<p>Dung t&iacute;ch: 100ml<\\/p>\\r\\n\\r\\n<p>Gi\\u1edbi t&iacute;nh: N\\u1eef<\\/p>\\r\\n\\r\\n<p>\\u0110\\u1ed9 l\\u01b0u h\\u01b0\\u01a1ng: 6-8h tr&ecirc;n da, 1-3 ng&agrave;y tr&ecirc;n qu\\u1ea7n &aacute;o<\\/p>\\r\\n\\r\\n<p>\\u0110\\u1ed9 t\\u1ecfa h\\u01b0\\u01a1ng:Xa<\\/p>\\r\\n\\r\\n<p>\\u0110\\u1eb7c tr\\u01b0ng m&ugrave;i h\\u01b0\\u01a1ng: M&ugrave;i hoa h\\u1ed3ng ch\\u1ee7 \\u0111\\u1ea1o<\\/p>\\r\\n\\r\\n<ul>\\r\\n\\t<li>H\\u01b0\\u01a1ng \\u0111\\u1ea7u: Hoa h\\u1ed3ng, hoa sen<\\/li>\\r\\n\\t<li>H\\u01b0\\u01a1ng gi\\u1eefa: Ho\\u1eafc h\\u01b0\\u01a1ng, x\\u1ea1 h\\u01b0\\u01a1ng, lily<\\/li>\\r\\n\\t<li>H\\u01b0\\u01a1ng cu\\u1ed1i: G\\u1ed7 \\u0111&agrave;n h\\u01b0\\u01a1ng, x\\u1ea1 h\\u01b0\\u01a1ng, vani<\\/li>\\r\\n<\\/ul>\"}},\"category\":[\"9\"],\"image\":\"\\/data\\/product\\/product_use.jpg\",\"sub_image\":[\"\\/data\\/product\\/product_use.jpg\",\"\\/data\\/product\\/product_use.jpg\"],\"sku\":\"3D-CARBON175\",\"alias\":\"nuoc-hoa-nu-dubai-mazaaji-edp\",\"brand_id\":\"2\",\"supplier_id\":\"1\",\"cost\":\"0\",\"price\":\"4800000\",\"tax_id\":\"0\",\"price_promotion\":\"2999000\",\"price_promotion_start\":\"2022-01-12\",\"price_promotion_end\":\"2022-03-16\",\"stock\":\"97\",\"weight_class\":null,\"weight\":\"0\",\"length_class\":null,\"length\":\"0\",\"height\":\"0\",\"width\":\"0\",\"property\":\"physical\",\"download_path\":null,\"date_available\":null,\"minimum\":\"1\",\"sort\":\"0\",\"status\":\"on\",\"attribute\":{\"1\":{\"name\":[\"Red\",\"Yellow\"],\"add_price\":[\"20000\",\"20000\"]},\"2\":{\"name\":[\"M\",\"L\"],\"add_price\":[\"50000\",\"20000\"]}},\"_token\":\"lJLQorJIclgNDzMF7lLBeB1MymfzJm1jbGCryPWx\"}', '2022-01-14 03:28:23', '2022-01-14 03:28:23'),
(353, 1, 'sc_admin/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2022-01-14 03:28:24', '2022-01-14 03:28:24'),
(354, 1, 'sc_admin/product/edit/12', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2022-01-14 03:50:32', '2022-01-14 03:50:32'),
(355, 1, 'sc_admin/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2022-01-14 03:50:37', '2022-01-14 03:50:37'),
(356, 1, 'sc_admin/product/edit/11', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2022-01-14 03:50:42', '2022-01-14 03:50:42'),
(357, 1, 'sc_admin/product/edit/11', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"descriptions\":{\"vi\":{\"name\":\"Easy Polo Black Edition 11\",\"keyword\":null,\"description\":null,\"content\":\"<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt=\\\"\\\" src=\\\"\\/data\\/product\\/product-10.png\\\" style=\\\"width: 262px; height: 262px; float: right; margin: 10px;\\\" \\/><\\/p>\\r\\n\\r\\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<\\/p>\"}},\"category\":[\"9\",\"10\"],\"image\":\"\\/data\\/product\\/product_use.jpg\",\"sub_image\":[\"\\/data\\/product\\/product-8.png\",\"\\/data\\/product\\/product-13.png\"],\"sku\":\"SS495A\",\"alias\":\"demo-alias-name-product-11\",\"brand_id\":\"2\",\"supplier_id\":\"1\",\"cost\":\"10000\",\"price\":\"15000\",\"tax_id\":\"auto\",\"price_promotion\":\"600\",\"price_promotion_start\":null,\"price_promotion_end\":null,\"stock\":\"100\",\"weight_class\":null,\"weight\":\"0\",\"length_class\":null,\"length\":\"0\",\"height\":\"0\",\"width\":\"0\",\"property\":\"physical\",\"download_path\":null,\"date_available\":null,\"minimum\":\"0\",\"sort\":\"0\",\"status\":\"on\",\"_token\":\"lJLQorJIclgNDzMF7lLBeB1MymfzJm1jbGCryPWx\"}', '2022-01-14 03:50:55', '2022-01-14 03:50:55'),
(358, 1, 'sc_admin/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2022-01-14 03:50:56', '2022-01-14 03:50:56'),
(359, 1, 'sc_admin/product/edit/14', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2022-01-14 04:05:15', '2022-01-14 04:05:15'),
(360, 1, 'sc_admin/product/edit/13', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2022-01-14 04:05:17', '2022-01-14 04:05:17'),
(361, 1, 'sc_admin/product/edit/10', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2022-01-14 04:05:20', '2022-01-14 04:05:20'),
(362, 1, 'sc_admin/product/edit/14', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"descriptions\":{\"vi\":{\"name\":\"Easy Polo Black Edition 14\",\"keyword\":null,\"description\":null,\"content\":\"<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt=\\\"\\\" src=\\\"\\/data\\/product\\/product-10.png\\\" style=\\\"width: 262px; height: 262px; float: right; margin: 10px;\\\" \\/><\\/p>\\r\\n\\r\\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<\\/p>\"}},\"category\":[\"9\",\"11\"],\"image\":\"\\/data\\/product\\/product_use.jpg\",\"sku\":\"LCD12864-3D\",\"alias\":\"demo-alias-name-product-14\",\"brand_id\":\"3\",\"supplier_id\":\"1\",\"cost\":\"10000\",\"price\":\"15000\",\"tax_id\":\"auto\",\"stock\":\"96\",\"weight_class\":null,\"weight\":\"0\",\"length_class\":null,\"length\":\"0\",\"height\":\"0\",\"width\":\"0\",\"property\":\"physical\",\"download_path\":null,\"date_available\":null,\"minimum\":\"0\",\"sort\":\"0\",\"status\":\"on\",\"_token\":\"lJLQorJIclgNDzMF7lLBeB1MymfzJm1jbGCryPWx\"}', '2022-01-14 04:05:25', '2022-01-14 04:05:25'),
(363, 1, 'sc_admin/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2022-01-14 04:05:26', '2022-01-14 04:05:26');
INSERT INTO `sc_admin_log` (`id`, `user_id`, `path`, `method`, `ip`, `user_agent`, `input`, `created_at`, `updated_at`) VALUES
(364, 1, 'sc_admin/product/edit/13', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"descriptions\":{\"vi\":{\"name\":\"Easy Polo Black Edition 13\",\"keyword\":null,\"description\":null,\"content\":\"<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt=\\\"\\\" src=\\\"\\/data\\/product\\/product-10.png\\\" style=\\\"width: 262px; height: 262px; float: right; margin: 10px;\\\" \\/><\\/p>\\r\\n\\r\\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<\\/p>\"}},\"category\":[\"5\",\"9\"],\"image\":\"\\/data\\/product\\/product_use.jpg\",\"sku\":\"3D-GOLD175\",\"alias\":\"demo-alias-name-product-13\",\"brand_id\":\"3\",\"supplier_id\":\"1\",\"cost\":\"5000\",\"price\":\"10000\",\"tax_id\":\"0\",\"price_promotion\":\"4000\",\"price_promotion_start\":null,\"price_promotion_end\":null,\"stock\":\"-2\",\"weight_class\":null,\"weight\":\"0\",\"length_class\":null,\"length\":\"0\",\"height\":\"0\",\"width\":\"0\",\"property\":\"physical\",\"download_path\":null,\"date_available\":null,\"minimum\":\"0\",\"sort\":\"0\",\"status\":\"on\",\"_token\":\"lJLQorJIclgNDzMF7lLBeB1MymfzJm1jbGCryPWx\"}', '2022-01-14 04:05:32', '2022-01-14 04:05:32'),
(365, 1, 'sc_admin/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2022-01-14 04:05:33', '2022-01-14 04:05:33'),
(366, 1, 'sc_admin/product/edit/10', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"descriptions\":{\"vi\":{\"name\":\"Easy Polo Black Edition 10\",\"keyword\":null,\"description\":null,\"content\":\"<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt=\\\"\\\" src=\\\"\\/data\\/product\\/product-10.png\\\" style=\\\"width: 262px; height: 262px; float: right; margin: 10px;\\\" \\/><\\/p>\\r\\n\\r\\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<\\/p>\"}},\"category\":[\"11\"],\"image\":\"\\/data\\/product\\/product_use.jpg\",\"sku\":\"3DHLFD-P\",\"alias\":\"demo-alias-name-product-10\",\"brand_id\":\"4\",\"supplier_id\":\"1\",\"cost\":\"10000\",\"price\":\"15000\",\"tax_id\":\"auto\",\"stock\":\"100\",\"weight_class\":null,\"weight\":\"0\",\"length_class\":null,\"length\":\"0\",\"height\":\"0\",\"width\":\"0\",\"property\":\"physical\",\"download_path\":null,\"date_available\":null,\"minimum\":\"0\",\"sort\":\"0\",\"status\":\"on\",\"_token\":\"lJLQorJIclgNDzMF7lLBeB1MymfzJm1jbGCryPWx\"}', '2022-01-14 04:05:35', '2022-01-14 04:05:35'),
(367, 1, 'sc_admin/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2022-01-14 04:05:36', '2022-01-14 04:05:36'),
(368, 1, 'sc_admin/category', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2022-01-14 04:55:27', '2022-01-14 04:55:27'),
(369, 1, 'sc_admin/category/delete', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"ids\":\"13,12,11,10,8,7,6,5,4,3,2,1\",\"_token\":\"lJLQorJIclgNDzMF7lLBeB1MymfzJm1jbGCryPWx\"}', '2022-01-14 04:56:32', '2022-01-14 04:56:32'),
(370, 1, 'sc_admin/category', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"_pjax\":\"#pjax-container\"}', '2022-01-14 04:56:34', '2022-01-14 04:56:34'),
(371, 1, 'sc_admin/category/edit/9', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2022-01-14 04:56:37', '2022-01-14 04:56:37'),
(372, 1, 'sc_admin/uploads', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"type\":\"category\"}', '2022-01-14 04:57:16', '2022-01-14 04:57:16'),
(373, 1, 'sc_admin/uploads/folders', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"working_dir\":null,\"type\":\"category\",\"_\":\"1642136237513\"}', '2022-01-14 04:57:18', '2022-01-14 04:57:18'),
(374, 1, 'sc_admin/uploads/errors', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"working_dir\":null,\"type\":\"category\",\"_\":\"1642136237514\"}', '2022-01-14 04:57:18', '2022-01-14 04:57:18'),
(375, 1, 'sc_admin/uploads/jsonitems', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"working_dir\":null,\"type\":\"category\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1642136237515\"}', '2022-01-14 04:57:19', '2022-01-14 04:57:19'),
(376, 1, 'sc_admin/category/edit/9', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"descriptions\":{\"vi\":{\"title\":\"N\\u01b0\\u1edbc hoa Niche\",\"keyword\":null,\"description\":null}},\"parent\":null,\"alias\":null,\"image\":\"\\/data\\/category\\/img-18.jpg\",\"sort\":\"0\",\"top\":\"on\",\"status\":\"on\",\"_token\":\"lJLQorJIclgNDzMF7lLBeB1MymfzJm1jbGCryPWx\"}', '2022-01-14 04:57:24', '2022-01-14 04:57:24'),
(377, 1, 'sc_admin/category/edit/9', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2022-01-14 04:57:25', '2022-01-14 04:57:25'),
(378, 1, 'sc_admin/product', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2022-01-14 05:02:12', '2022-01-14 05:02:12'),
(379, 1, 'sc_admin/category', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2022-01-14 05:04:03', '2022-01-14 05:04:03'),
(380, 1, 'sc_admin/category/edit/9', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2022-01-14 05:04:06', '2022-01-14 05:04:06'),
(381, 1, 'sc_admin/uploads', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"type\":\"category\"}', '2022-01-14 05:04:54', '2022-01-14 05:04:54'),
(382, 1, 'sc_admin/uploads/folders', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"working_dir\":null,\"type\":\"category\",\"_\":\"1642136695463\"}', '2022-01-14 05:04:56', '2022-01-14 05:04:56'),
(383, 1, 'sc_admin/uploads/errors', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"working_dir\":null,\"type\":\"category\",\"_\":\"1642136695464\"}', '2022-01-14 05:04:57', '2022-01-14 05:04:57'),
(384, 1, 'sc_admin/uploads/jsonitems', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"working_dir\":null,\"type\":\"category\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1642136695465\"}', '2022-01-14 05:04:58', '2022-01-14 05:04:58'),
(385, 1, 'sc_admin/uploads/delete', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"category\",\"items\":[\"img-14.jpg\",\"img-18.jpg\",\"img-40.jpg\",\"img-42.jpg\",\"img-44.jpg\"],\"_\":\"1642136695466\"}', '2022-01-14 05:05:11', '2022-01-14 05:05:11'),
(386, 1, 'sc_admin/uploads/folders', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"category\",\"_\":\"1642136695467\"}', '2022-01-14 05:05:12', '2022-01-14 05:05:12'),
(387, 1, 'sc_admin/uploads/jsonitems', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"category\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1642136695468\"}', '2022-01-14 05:05:13', '2022-01-14 05:05:13'),
(388, 1, 'sc_admin/uploads/upload', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"category\",\"_token\":\"lJLQorJIclgNDzMF7lLBeB1MymfzJm1jbGCryPWx\"}', '2022-01-14 05:05:39', '2022-01-14 05:05:39'),
(389, 1, 'sc_admin/uploads/folders', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"category\",\"_\":\"1642136695469\"}', '2022-01-14 05:05:40', '2022-01-14 05:05:40'),
(390, 1, 'sc_admin/uploads/jsonitems', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"category\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1642136695470\"}', '2022-01-14 05:05:41', '2022-01-14 05:05:41'),
(391, 1, 'sc_admin/category/edit/9', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"descriptions\":{\"vi\":{\"title\":\"N\\u01b0\\u1edbc hoa Niche\",\"keyword\":null,\"description\":null}},\"parent\":null,\"alias\":null,\"image\":\"\\/data\\/category\\/product_use2.jpg\",\"sort\":\"0\",\"top\":\"on\",\"status\":\"on\",\"_token\":\"lJLQorJIclgNDzMF7lLBeB1MymfzJm1jbGCryPWx\"}', '2022-01-14 05:05:46', '2022-01-14 05:05:46'),
(392, 1, 'sc_admin/category/edit/9', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2022-01-14 05:05:46', '2022-01-14 05:05:46'),
(393, 1, 'sc_admin/category/edit/9', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"descriptions\":{\"vi\":{\"title\":\"N\\u01b0\\u1edbc hoa Niche\",\"keyword\":null,\"description\":null}},\"parent\":\"0\",\"alias\":\"nuoc-hoa-niche\",\"image\":\"\\/data\\/category\\/product_use2.jpg\",\"sort\":\"1\",\"top\":\"on\",\"status\":\"on\",\"_token\":\"lJLQorJIclgNDzMF7lLBeB1MymfzJm1jbGCryPWx\"}', '2022-01-14 05:06:10', '2022-01-14 05:06:10'),
(394, 1, 'sc_admin/category', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2022-01-14 05:06:10', '2022-01-14 05:06:10'),
(395, 1, 'sc_admin/category/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2022-01-14 05:06:31', '2022-01-14 05:06:31'),
(396, 1, 'sc_admin/uploads', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"type\":\"category\"}', '2022-01-14 05:07:31', '2022-01-14 05:07:31'),
(397, 1, 'sc_admin/uploads/folders', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"working_dir\":null,\"type\":\"category\",\"_\":\"1642136852751\"}', '2022-01-14 05:07:33', '2022-01-14 05:07:33'),
(398, 1, 'sc_admin/uploads/errors', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"working_dir\":null,\"type\":\"category\",\"_\":\"1642136852752\"}', '2022-01-14 05:07:34', '2022-01-14 05:07:34'),
(399, 1, 'sc_admin/uploads/jsonitems', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"working_dir\":null,\"type\":\"category\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1642136852753\"}', '2022-01-14 05:07:35', '2022-01-14 05:07:35'),
(400, 1, 'sc_admin/category/create', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"descriptions\":{\"vi\":{\"title\":\"N\\u01b0\\u1edbc hoa Intense\",\"keyword\":null,\"description\":null}},\"parent\":\"0\",\"alias\":null,\"image\":\"\\/data\\/category\\/product_use2.jpg\",\"sort\":\"0\",\"top\":\"on\",\"status\":\"on\",\"_token\":\"lJLQorJIclgNDzMF7lLBeB1MymfzJm1jbGCryPWx\"}', '2022-01-14 05:07:58', '2022-01-14 05:07:58'),
(401, 1, 'sc_admin/category', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2022-01-14 05:07:59', '2022-01-14 05:07:59'),
(402, 1, 'sc_admin/category/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2022-01-14 05:08:13', '2022-01-14 05:08:13'),
(403, 1, 'sc_admin/uploads', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"type\":\"category\"}', '2022-01-14 05:08:23', '2022-01-14 05:08:23'),
(404, 1, 'sc_admin/uploads/folders', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"working_dir\":null,\"type\":\"category\",\"_\":\"1642136904255\"}', '2022-01-14 05:08:25', '2022-01-14 05:08:25'),
(405, 1, 'sc_admin/uploads/errors', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"working_dir\":null,\"type\":\"category\",\"_\":\"1642136904256\"}', '2022-01-14 05:08:25', '2022-01-14 05:08:25'),
(406, 1, 'sc_admin/uploads/jsonitems', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"working_dir\":null,\"type\":\"category\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1642136904257\"}', '2022-01-14 05:08:26', '2022-01-14 05:08:26'),
(407, 1, 'sc_admin/category/create', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"descriptions\":{\"vi\":{\"title\":\"N\\u01b0\\u1edbc hoa Ph\\u00e1p\",\"keyword\":null,\"description\":null}},\"parent\":\"0\",\"alias\":null,\"image\":\"\\/data\\/category\\/product_use2.jpg\",\"sort\":\"0\",\"top\":\"on\",\"status\":\"on\",\"_token\":\"lJLQorJIclgNDzMF7lLBeB1MymfzJm1jbGCryPWx\"}', '2022-01-14 05:08:31', '2022-01-14 05:08:31'),
(408, 1, 'sc_admin/category', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2022-01-14 05:08:31', '2022-01-14 05:08:31'),
(409, 1, 'sc_admin/category/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2022-01-14 05:08:43', '2022-01-14 05:08:43'),
(410, 1, 'sc_admin/uploads', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"type\":\"category\"}', '2022-01-14 05:08:53', '2022-01-14 05:08:53'),
(411, 1, 'sc_admin/uploads/folders', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"working_dir\":null,\"type\":\"category\",\"_\":\"1642136934631\"}', '2022-01-14 05:08:55', '2022-01-14 05:08:55'),
(412, 1, 'sc_admin/uploads/errors', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"working_dir\":null,\"type\":\"category\",\"_\":\"1642136934632\"}', '2022-01-14 05:08:55', '2022-01-14 05:08:55'),
(413, 1, 'sc_admin/uploads/jsonitems', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"working_dir\":null,\"type\":\"category\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1642136934633\"}', '2022-01-14 05:08:56', '2022-01-14 05:08:56'),
(414, 1, 'sc_admin/category/create', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"descriptions\":{\"vi\":{\"title\":\"N\\u01b0\\u1edbc hoa doanh nh\\u00e2n\",\"keyword\":null,\"description\":null}},\"parent\":\"0\",\"alias\":null,\"image\":\"\\/data\\/category\\/product_use2.jpg\",\"sort\":\"0\",\"top\":\"on\",\"status\":\"on\",\"_token\":\"lJLQorJIclgNDzMF7lLBeB1MymfzJm1jbGCryPWx\"}', '2022-01-14 05:09:07', '2022-01-14 05:09:07'),
(415, 1, 'sc_admin/category', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2022-01-14 05:09:08', '2022-01-14 05:09:08'),
(416, 1, 'sc_admin/category/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2022-01-14 05:09:36', '2022-01-14 05:09:36'),
(417, 1, 'sc_admin/uploads', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"type\":\"category\"}', '2022-01-14 05:09:51', '2022-01-14 05:09:51'),
(418, 1, 'sc_admin/uploads/folders', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"working_dir\":null,\"type\":\"category\",\"_\":\"1642136992404\"}', '2022-01-14 05:09:53', '2022-01-14 05:09:53'),
(419, 1, 'sc_admin/uploads/errors', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"working_dir\":null,\"type\":\"category\",\"_\":\"1642136992405\"}', '2022-01-14 05:09:53', '2022-01-14 05:09:53'),
(420, 1, 'sc_admin/uploads/jsonitems', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"working_dir\":null,\"type\":\"category\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1642136992406\"}', '2022-01-14 05:09:54', '2022-01-14 05:09:54'),
(421, 1, 'sc_admin/category', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2022-01-14 05:09:55', '2022-01-14 05:09:55'),
(422, 1, 'sc_admin/category/create', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"descriptions\":{\"vi\":{\"title\":\"N\\u01b0\\u1edbc hoa N\\u1eef\",\"keyword\":null,\"description\":null}},\"parent\":\"0\",\"alias\":null,\"image\":\"\\/data\\/category\\/product_use2.jpg\",\"sort\":\"0\",\"top\":\"on\",\"status\":\"on\",\"_token\":\"lJLQorJIclgNDzMF7lLBeB1MymfzJm1jbGCryPWx\"}', '2022-01-14 05:10:05', '2022-01-14 05:10:05'),
(423, 1, 'sc_admin/category', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2022-01-14 05:10:05', '2022-01-14 05:10:05'),
(424, 1, 'sc_admin/category/edit/17', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2022-01-14 05:10:14', '2022-01-14 05:10:14'),
(425, 1, 'sc_admin/category/edit/17', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2022-01-14 05:10:15', '2022-01-14 05:10:15'),
(426, 1, 'sc_admin/category/edit/17', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"descriptions\":{\"vi\":{\"title\":\"N\\u01b0\\u1edbc hoa N\\u1eef\",\"keyword\":null,\"description\":null}},\"parent\":\"0\",\"alias\":\"nuoc-hoa-nu\",\"image\":\"\\/data\\/category\\/product_use2.jpg\",\"sort\":\"0\",\"status\":\"on\",\"_token\":\"lJLQorJIclgNDzMF7lLBeB1MymfzJm1jbGCryPWx\"}', '2022-01-14 05:10:20', '2022-01-14 05:10:20'),
(427, 1, 'sc_admin/category', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2022-01-14 05:10:20', '2022-01-14 05:10:20'),
(428, 1, 'sc_admin/category/edit/17', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2022-01-14 05:10:30', '2022-01-14 05:10:30'),
(429, 1, 'sc_admin/category/edit/17', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"descriptions\":{\"vi\":{\"title\":\"N\\u01b0\\u1edbc hoa N\\u1eef\",\"keyword\":null,\"description\":null}},\"parent\":\"0\",\"alias\":\"nuoc-hoa-nu\",\"image\":\"\\/data\\/category\\/product_use2.jpg\",\"sort\":\"0\",\"_token\":\"lJLQorJIclgNDzMF7lLBeB1MymfzJm1jbGCryPWx\"}', '2022-01-14 05:10:35', '2022-01-14 05:10:35'),
(430, 1, 'sc_admin/category', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2022-01-14 05:10:35', '2022-01-14 05:10:35'),
(431, 1, 'sc_admin/category/edit/17', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2022-01-14 05:10:41', '2022-01-14 05:10:41'),
(432, 1, 'sc_admin/category/edit/17', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"descriptions\":{\"vi\":{\"title\":\"N\\u01b0\\u1edbc hoa N\\u1eef\",\"keyword\":null,\"description\":null}},\"parent\":\"0\",\"alias\":\"nuoc-hoa-nu\",\"image\":\"\\/data\\/category\\/product_use2.jpg\",\"sort\":\"0\",\"top\":\"on\",\"status\":\"on\",\"_token\":\"lJLQorJIclgNDzMF7lLBeB1MymfzJm1jbGCryPWx\"}', '2022-01-14 05:10:47', '2022-01-14 05:10:47'),
(433, 1, 'sc_admin/category', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2022-01-14 05:10:47', '2022-01-14 05:10:47'),
(434, 1, 'sc_admin/product', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2022-01-14 05:10:54', '2022-01-14 05:10:54'),
(435, 1, 'sc_admin/product/edit/12', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2022-01-14 05:11:06', '2022-01-14 05:11:06'),
(436, 1, 'sc_admin/product', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2022-01-14 05:11:23', '2022-01-14 05:11:23'),
(437, 1, 'sc_admin/product/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2022-01-14 05:11:38', '2022-01-14 05:11:38'),
(438, 1, 'sc_admin/category', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2022-01-14 05:11:47', '2022-01-14 05:11:47'),
(439, 1, 'sc_admin/category/edit/17', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2022-01-14 05:11:50', '2022-01-14 05:11:50'),
(440, 1, 'sc_admin/category/edit/17', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"descriptions\":{\"vi\":{\"title\":\"N\\u01b0\\u1edbc hoa N\\u1eef\",\"keyword\":null,\"description\":null}},\"parent\":\"9\",\"alias\":\"nuoc-hoa-nu\",\"image\":\"\\/data\\/category\\/product_use2.jpg\",\"sort\":\"0\",\"top\":\"on\",\"status\":\"on\",\"_token\":\"lJLQorJIclgNDzMF7lLBeB1MymfzJm1jbGCryPWx\"}', '2022-01-14 05:11:57', '2022-01-14 05:11:57'),
(441, 1, 'sc_admin/category', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2022-01-14 05:11:57', '2022-01-14 05:11:57'),
(442, 1, 'sc_admin/product', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2022-01-14 05:12:01', '2022-01-14 05:12:01'),
(443, 1, 'sc_admin/product/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2022-01-14 05:12:05', '2022-01-14 05:12:05'),
(444, 1, 'sc_admin/product/create', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"kind\":\"0\",\"descriptions\":{\"vi\":{\"name\":null,\"keyword\":null,\"description\":null,\"content\":null}},\"category\":[\"17\",\"14\",\"15\"],\"image\":null,\"sku\":null,\"alias\":null,\"brand_id\":null,\"supplier_id\":null,\"cost\":\"0\",\"price\":\"0\",\"tax_id\":\"0\",\"stock\":\"0\",\"weight_class\":\"oz\",\"weight\":\"0\",\"length_class\":\"in\",\"length\":\"0\",\"height\":\"0\",\"width\":\"0\",\"property\":\"physical\",\"download_path\":null,\"date_available\":null,\"minimum\":\"0\",\"sort\":\"0\",\"status\":\"on\",\"_token\":\"lJLQorJIclgNDzMF7lLBeB1MymfzJm1jbGCryPWx\"}', '2022-01-14 05:12:16', '2022-01-14 05:12:16'),
(445, 1, 'sc_admin/product/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2022-01-14 05:12:17', '2022-01-14 05:12:17'),
(446, 1, 'sc_admin/category', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2022-01-14 05:12:21', '2022-01-14 05:12:21'),
(447, 1, 'sc_admin/product', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2022-01-14 05:12:26', '2022-01-14 05:12:26'),
(448, 1, 'sc_admin/product/edit/11', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2022-01-14 05:12:30', '2022-01-14 05:12:30'),
(449, 1, 'sc_admin/product/edit/11', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"descriptions\":{\"vi\":{\"name\":\"Easy Polo Black Edition 11\",\"keyword\":null,\"description\":null,\"content\":\"<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt=\\\"\\\" src=\\\"\\/data\\/product\\/product-10.png\\\" style=\\\"width: 262px; height: 262px; float: right; margin: 10px;\\\" \\/><\\/p>\\r\\n\\r\\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<\\/p>\"}},\"category\":[\"9\",\"16\"],\"image\":\"\\/data\\/product\\/product_use.jpg\",\"sub_image\":[\"\\/data\\/product\\/product-8.png\",\"\\/data\\/product\\/product-13.png\"],\"sku\":\"SS495A\",\"alias\":\"demo-alias-name-product-11\",\"brand_id\":\"2\",\"supplier_id\":\"1\",\"cost\":\"10000\",\"price\":\"15000\",\"tax_id\":\"auto\",\"price_promotion\":\"600\",\"price_promotion_start\":null,\"price_promotion_end\":null,\"stock\":\"100\",\"weight_class\":null,\"weight\":\"0\",\"length_class\":null,\"length\":\"0\",\"height\":\"0\",\"width\":\"0\",\"property\":\"physical\",\"download_path\":null,\"date_available\":null,\"minimum\":\"0\",\"sort\":\"0\",\"status\":\"on\",\"_token\":\"lJLQorJIclgNDzMF7lLBeB1MymfzJm1jbGCryPWx\"}', '2022-01-14 05:12:38', '2022-01-14 05:12:38'),
(450, 1, 'sc_admin/product', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2022-01-14 05:12:39', '2022-01-14 05:12:39'),
(451, 1, 'sc_admin/category', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2022-01-14 05:12:47', '2022-01-14 05:12:47'),
(452, 1, 'sc_admin/category/edit/16', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2022-01-14 05:12:52', '2022-01-14 05:12:52'),
(453, 1, 'sc_admin/category/edit/16', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"descriptions\":{\"vi\":{\"title\":\"N\\u01b0\\u1edbc hoa doanh nh\\u00e2n\",\"keyword\":null,\"description\":null}},\"parent\":\"0\",\"alias\":\"nuoc-hoa-doanh-nhan\",\"image\":\"\\/data\\/category\\/product_use2.jpg\",\"sort\":\"1\",\"top\":\"on\",\"status\":\"on\",\"_token\":\"lJLQorJIclgNDzMF7lLBeB1MymfzJm1jbGCryPWx\"}', '2022-01-14 05:12:59', '2022-01-14 05:12:59'),
(454, 1, 'sc_admin/category', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2022-01-14 05:13:00', '2022-01-14 05:13:00'),
(455, 1, 'sc_admin/product', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2022-01-14 05:13:06', '2022-01-14 05:13:06'),
(456, 1, 'sc_admin/product/build_create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2022-01-14 05:13:11', '2022-01-14 05:13:11'),
(457, 1, 'sc_admin/product/build_create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2022-01-14 05:13:12', '2022-01-14 05:13:12'),
(458, 1, 'sc_admin/product/build_create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2022-01-14 05:13:13', '2022-01-14 05:13:13'),
(459, 1, 'sc_admin/product/group_create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2022-01-14 05:13:13', '2022-01-14 05:13:13'),
(460, 1, 'sc_admin/product/group_create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2022-01-14 05:13:14', '2022-01-14 05:13:14'),
(461, 1, 'sc_admin/product/group_create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2022-01-14 05:13:15', '2022-01-14 05:13:15'),
(462, 1, 'sc_admin/product', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2022-01-14 05:13:19', '2022-01-14 05:13:19'),
(463, 1, 'sc_admin/product/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2022-01-14 05:13:22', '2022-01-14 05:13:22'),
(464, 1, 'sc_admin/uploads', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"type\":\"product\"}', '2022-01-14 05:13:31', '2022-01-14 05:13:31'),
(465, 1, 'sc_admin/uploads/folders', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"working_dir\":null,\"type\":\"product\",\"_\":\"1642137212420\"}', '2022-01-14 05:13:33', '2022-01-14 05:13:33'),
(466, 1, 'sc_admin/uploads/errors', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"working_dir\":null,\"type\":\"product\",\"_\":\"1642137212421\"}', '2022-01-14 05:13:33', '2022-01-14 05:13:33'),
(467, 1, 'sc_admin/uploads/jsonitems', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"working_dir\":null,\"type\":\"product\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1642137212422\"}', '2022-01-14 05:13:34', '2022-01-14 05:13:34'),
(468, 1, 'sc_admin/category', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2022-01-14 05:13:42', '2022-01-14 05:13:42'),
(469, 1, 'sc_admin/product', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2022-01-14 05:13:46', '2022-01-14 05:13:46'),
(470, 1, 'sc_admin/product/delete', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"ids\":\"10\",\"_token\":\"lJLQorJIclgNDzMF7lLBeB1MymfzJm1jbGCryPWx\"}', '2022-01-14 05:13:54', '2022-01-14 05:13:54'),
(471, 1, 'sc_admin/product', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"_pjax\":\"#pjax-container\"}', '2022-01-14 05:13:56', '2022-01-14 05:13:56'),
(472, 1, 'sc_admin/product/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2022-01-14 05:14:00', '2022-01-14 05:14:00'),
(473, 1, 'sc_admin/category', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2022-01-14 05:14:11', '2022-01-14 05:14:11'),
(474, 1, 'sc_admin/category/delete', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"ids\":\"17,16,15,14,9\",\"_token\":\"lJLQorJIclgNDzMF7lLBeB1MymfzJm1jbGCryPWx\"}', '2022-01-14 05:14:17', '2022-01-14 05:14:17'),
(475, 1, 'sc_admin/category', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"_pjax\":\"#pjax-container\"}', '2022-01-14 05:14:19', '2022-01-14 05:14:19'),
(476, 1, 'sc_admin/product', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2022-01-14 05:14:21', '2022-01-14 05:14:21'),
(477, 1, 'sc_admin/product/edit/17', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2022-01-14 05:14:24', '2022-01-14 05:14:24'),
(478, 1, 'sc_admin/category', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2022-01-14 05:14:33', '2022-01-14 05:14:33'),
(479, 1, 'sc_admin/category/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2022-01-14 05:14:36', '2022-01-14 05:14:36'),
(480, 1, 'sc_admin/category/create', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"descriptions\":{\"vi\":{\"title\":\"N\\u01b0\\u1edbc hoa Niche\",\"keyword\":null,\"description\":null}},\"parent\":\"0\",\"alias\":null,\"image\":null,\"sort\":\"1\",\"top\":\"on\",\"status\":\"on\",\"_token\":\"lJLQorJIclgNDzMF7lLBeB1MymfzJm1jbGCryPWx\"}', '2022-01-14 05:14:53', '2022-01-14 05:14:53'),
(481, 1, 'sc_admin/category', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2022-01-14 05:14:54', '2022-01-14 05:14:54'),
(482, 1, 'sc_admin/product/edit/17', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2022-01-14 05:14:57', '2022-01-14 05:14:57'),
(483, 1, 'sc_admin', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2022-01-14 05:15:37', '2022-01-14 05:15:37'),
(484, 1, 'sc_admin/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2022-01-14 05:15:42', '2022-01-14 05:15:42'),
(485, 1, 'sc_admin/product/edit/17', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2022-01-14 05:15:45', '2022-01-14 05:15:45'),
(486, 1, 'sc_admin/category', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2022-01-14 05:16:06', '2022-01-14 05:16:06'),
(487, 1, 'sc_admin/category/create', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2022-01-14 05:16:11', '2022-01-14 05:16:11'),
(488, 1, 'sc_admin/uploads', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"type\":\"category\"}', '2022-01-14 05:16:32', '2022-01-14 05:16:32'),
(489, 1, 'sc_admin/uploads/folders', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"working_dir\":null,\"type\":\"category\",\"_\":\"1642137392905\"}', '2022-01-14 05:16:33', '2022-01-14 05:16:33'),
(490, 1, 'sc_admin/uploads/errors', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"working_dir\":null,\"type\":\"category\",\"_\":\"1642137392906\"}', '2022-01-14 05:16:34', '2022-01-14 05:16:34'),
(491, 1, 'sc_admin/uploads/jsonitems', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"working_dir\":null,\"type\":\"category\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1642137392907\"}', '2022-01-14 05:16:35', '2022-01-14 05:16:35'),
(492, 1, 'sc_admin/category/create', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"descriptions\":{\"vi\":{\"title\":\"Ch\\u0103m s\\u00f3c t\\u00f3c\",\"keyword\":\"New\",\"description\":\"aa\"}},\"parent\":\"18\",\"alias\":\"aa-nuoc-hoa\",\"image\":\"\\/data\\/category\\/product_use2.jpg\",\"sort\":\"6\",\"top\":\"on\",\"status\":\"on\",\"_token\":\"lJLQorJIclgNDzMF7lLBeB1MymfzJm1jbGCryPWx\"}', '2022-01-14 05:16:42', '2022-01-14 05:16:42'),
(493, 1, 'sc_admin/category', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2022-01-14 05:16:43', '2022-01-14 05:16:43'),
(494, 1, 'sc_admin/product/edit/17', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2022-01-14 05:16:46', '2022-01-14 05:16:46'),
(495, 1, 'sc_admin/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2022-01-14 05:17:20', '2022-01-14 05:17:20'),
(496, 1, 'sc_admin/product/create', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2022-01-14 05:17:23', '2022-01-14 05:17:23'),
(497, 1, 'sc_admin/product/create', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2022-01-14 05:20:31', '2022-01-14 05:20:31'),
(498, 1, 'sc_admin/product/create', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2022-01-14 05:21:09', '2022-01-14 05:21:09'),
(499, 1, 'sc_admin/product/create', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2022-01-14 05:21:47', '2022-01-14 05:21:47'),
(500, 1, 'sc_admin/product/create', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2022-01-14 05:24:57', '2022-01-14 05:24:57'),
(501, 1, 'sc_admin/category', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2022-01-14 05:25:09', '2022-01-14 05:25:09'),
(502, 1, 'sc_admin/category/create', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2022-01-14 05:25:35', '2022-01-14 05:25:35'),
(503, 1, 'sc_admin/category/create', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"descriptions\":{\"vi\":{\"title\":\"S\\u1ea3n ph\\u1ea9m trang \\u0111i\\u1ec3m\",\"keyword\":\"cay canh\",\"description\":\"s\\u00e8dgfhj\"}},\"parent\":\"0\",\"alias\":null,\"image\":null,\"sort\":\"0\",\"top\":\"on\",\"status\":\"on\",\"_token\":\"lJLQorJIclgNDzMF7lLBeB1MymfzJm1jbGCryPWx\"}', '2022-01-14 05:25:58', '2022-01-14 05:25:58'),
(504, 1, 'sc_admin/category', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2022-01-14 05:25:59', '2022-01-14 05:25:59'),
(505, 1, 'sc_admin/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2022-01-14 05:26:03', '2022-01-14 05:26:03'),
(506, 1, 'sc_admin/product/create', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2022-01-14 05:26:09', '2022-01-14 05:26:09'),
(507, 1, 'sc_admin/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2022-01-14 05:27:28', '2022-01-14 05:27:28'),
(508, 1, 'sc_admin/product/edit/11', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2022-01-14 05:27:54', '2022-01-14 05:27:54'),
(509, 1, 'sc_admin/category', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2022-01-14 05:28:34', '2022-01-14 05:28:34'),
(510, 1, 'sc_admin/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2022-01-14 05:30:06', '2022-01-14 05:30:06'),
(511, 1, 'sc_admin/product/create', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2022-01-14 05:30:09', '2022-01-14 05:30:09'),
(512, 1, 'sc_admin/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2022-01-14 05:30:33', '2022-01-14 05:30:33'),
(513, 1, 'sc_admin/product/edit/11', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2022-01-14 05:30:38', '2022-01-14 05:30:38'),
(514, 1, 'sc_admin/product/edit/11', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"descriptions\":{\"vi\":{\"name\":\"Easy Polo Black Edition 11\",\"keyword\":null,\"description\":null,\"content\":\"<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<\\/p>\\r\\n\\r\\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<\\/p>\"}},\"category\":[\"20\"],\"image\":\"\\/data\\/product\\/product_use.jpg\",\"sub_image\":[\"\\/data\\/product\\/product-8.png\",\"\\/data\\/product\\/product-13.png\"],\"sku\":\"SS495A\",\"alias\":\"demo-alias-name-product-11\",\"brand_id\":\"2\",\"supplier_id\":\"1\",\"cost\":\"10000\",\"price\":\"15000\",\"tax_id\":\"auto\",\"price_promotion\":\"600\",\"price_promotion_start\":null,\"price_promotion_end\":null,\"stock\":\"100\",\"weight_class\":null,\"weight\":\"0\",\"length_class\":null,\"length\":\"0\",\"height\":\"0\",\"width\":\"0\",\"property\":\"physical\",\"download_path\":null,\"date_available\":null,\"minimum\":\"0\",\"sort\":\"0\",\"status\":\"on\",\"_token\":\"lJLQorJIclgNDzMF7lLBeB1MymfzJm1jbGCryPWx\"}', '2022-01-14 05:30:52', '2022-01-14 05:30:52'),
(515, 1, 'sc_admin/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2022-01-14 05:30:53', '2022-01-14 05:30:53'),
(516, 1, 'sc_admin/category', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2022-01-14 05:30:56', '2022-01-14 05:30:56'),
(517, 1, 'sc_admin/category/edit/19', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2022-01-14 05:31:04', '2022-01-14 05:31:04'),
(518, 1, 'sc_admin/category/edit/19', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"descriptions\":{\"vi\":{\"title\":\"Ch\\u0103m s\\u00f3c t\\u00f3c\",\"keyword\":\"New\",\"description\":\"aa\"}},\"parent\":\"19\",\"alias\":\"aa-nuoc-hoa\",\"image\":\"\\/data\\/category\\/product_use2.jpg\",\"sort\":\"6\",\"top\":\"on\",\"status\":\"on\",\"_token\":\"lJLQorJIclgNDzMF7lLBeB1MymfzJm1jbGCryPWx\"}', '2022-01-14 05:32:09', '2022-01-14 05:32:09'),
(519, 1, 'sc_admin/category', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2022-01-14 05:32:09', '2022-01-14 05:32:09'),
(520, 1, 'sc_admin/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2022-01-14 05:32:16', '2022-01-14 05:32:16'),
(521, 1, 'sc_admin/product/create', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2022-01-14 05:32:19', '2022-01-14 05:32:19'),
(522, 1, 'sc_admin/category', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2022-01-14 05:32:29', '2022-01-14 05:32:29'),
(523, 1, 'sc_admin/category/edit/19', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2022-01-14 05:32:37', '2022-01-14 05:32:37'),
(524, 1, 'sc_admin/category/create', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2022-01-14 05:32:45', '2022-01-14 05:32:45');
INSERT INTO `sc_admin_log` (`id`, `user_id`, `path`, `method`, `ip`, `user_agent`, `input`, `created_at`, `updated_at`) VALUES
(525, 1, 'sc_admin', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2022-01-14 05:39:07', '2022-01-14 05:39:07'),
(526, 1, 'sc_admin/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2022-01-14 05:39:19', '2022-01-14 05:39:19'),
(527, 1, 'sc_admin/category', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2022-01-14 05:39:20', '2022-01-14 05:39:20'),
(528, 1, 'sc_admin/product/create', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2022-01-14 05:40:32', '2022-01-14 05:40:32'),
(529, 1, 'sc_admin/category', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2022-01-14 05:40:40', '2022-01-14 05:40:40'),
(530, 1, 'sc_admin/category/edit/19', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2022-01-14 05:40:43', '2022-01-14 05:40:43'),
(531, 1, 'sc_admin/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2022-01-14 05:40:47', '2022-01-14 05:40:47'),
(532, 1, 'sc_admin/product/edit/14', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2022-01-14 05:40:51', '2022-01-14 05:40:51'),
(533, 1, 'sc_admin/user', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2022-01-14 05:41:12', '2022-01-14 05:41:12'),
(534, 1, 'sc_admin/page', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2022-01-14 05:41:20', '2022-01-14 05:41:20'),
(535, 1, 'sc_admin/email_template', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2022-01-14 05:41:24', '2022-01-14 05:41:24'),
(536, 1, 'sc_admin/store_maintain', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2022-01-14 05:41:37', '2022-01-14 05:41:37'),
(537, 1, 'sc_admin/order_status', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2022-01-14 05:41:43', '2022-01-14 05:41:43'),
(538, 1, 'sc_admin/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2022-01-14 05:41:48', '2022-01-14 05:41:48'),
(539, 1, 'sc_admin/product/create', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2022-01-14 05:42:00', '2022-01-14 05:42:00'),
(540, 1, 'sc_admin', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2022-01-14 05:47:07', '2022-01-14 05:47:07'),
(541, 1, 'sc_admin/language', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2022-01-14 05:47:21', '2022-01-14 05:47:21'),
(542, 1, 'sc_admin/language/edit/1', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2022-01-14 05:47:28', '2022-01-14 05:47:28'),
(543, 1, 'sc_admin/language/edit/1', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"name\":\"English\",\"code\":\"en\",\"icon\":\"\\/data\\/language\\/flag_uk.png\",\"sort\":\"1\",\"status\":\"on\",\"_token\":\"6Q9KNIDJ79Yb3iVAZ0i2OaKcG7TIa3lGh7ClfDNi\"}', '2022-01-14 05:47:35', '2022-01-14 05:47:35'),
(544, 1, 'sc_admin/language/edit/1', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2022-01-14 05:47:36', '2022-01-14 05:47:36'),
(545, 1, 'sc_admin/category', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2022-01-14 05:47:40', '2022-01-14 05:47:40'),
(546, 1, 'sc_admin/category/create', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2022-01-14 05:47:43', '2022-01-14 05:47:43'),
(547, 1, 'sc_admin/category', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2022-01-14 05:47:58', '2022-01-14 05:47:58'),
(548, 1, 'sc_admin/category/create', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"descriptions\":{\"en\":{\"title\":\"N\\u01b0\\u1edbc hoa ph\\u00e1p\",\"keyword\":null,\"description\":null},\"vi\":{\"title\":\"NH Ph\\u00e1p\",\"keyword\":null,\"description\":null}},\"parent\":\"0\",\"alias\":null,\"image\":null,\"sort\":\"0\",\"top\":\"on\",\"status\":\"on\",\"_token\":\"6Q9KNIDJ79Yb3iVAZ0i2OaKcG7TIa3lGh7ClfDNi\"}', '2022-01-14 05:48:21', '2022-01-14 05:48:21'),
(549, 1, 'sc_admin/category', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2022-01-14 05:48:22', '2022-01-14 05:48:22'),
(550, 1, 'sc_admin/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2022-01-14 05:48:27', '2022-01-14 05:48:27'),
(551, 1, 'sc_admin/product/create', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2022-01-14 05:48:30', '2022-01-14 05:48:30'),
(552, 1, 'sc_admin/category', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2022-01-14 05:48:55', '2022-01-14 05:48:55'),
(553, 1, 'sc_admin/category/edit/20', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2022-01-14 05:49:00', '2022-01-14 05:49:00'),
(554, 1, 'sc_admin/category/edit/19', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2022-01-14 05:49:01', '2022-01-14 05:49:01'),
(555, 1, 'sc_admin/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2022-01-14 05:49:03', '2022-01-14 05:49:03'),
(556, 1, 'sc_admin/product/edit/17', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2022-01-14 05:49:06', '2022-01-14 05:49:06'),
(557, 1, 'sc_admin/product/edit/17', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"descriptions\":{\"en\":{\"name\":null,\"keyword\":null,\"description\":null,\"content\":null},\"vi\":{\"name\":\"Easy Polo Black Edition 17\",\"keyword\":null,\"description\":null,\"content\":\"<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<\\/p>\\r\\n\\r\\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<\\/p>\"}},\"category\":[\"21\"],\"image\":\"\\/data\\/product\\/product_use.jpg\",\"sub_image\":[\"\\/data\\/product\\/product-12.png\",\"\\/data\\/product\\/product-6.png\",\"\\/data\\/product\\/product-2.png\"],\"sku\":\"ALOKK1-AY\",\"alias\":\"demo-alias-name-product-17\",\"brand_id\":\"3\",\"supplier_id\":\"1\",\"cost\":\"10000\",\"price\":\"15000\",\"tax_id\":\"auto\",\"stock\":\"100\",\"weight_class\":null,\"weight\":\"0\",\"length_class\":null,\"length\":\"0\",\"height\":\"0\",\"width\":\"0\",\"property\":\"physical\",\"download_path\":null,\"date_available\":null,\"minimum\":\"5\",\"sort\":\"0\",\"status\":\"on\",\"_token\":\"6Q9KNIDJ79Yb3iVAZ0i2OaKcG7TIa3lGh7ClfDNi\"}', '2022-01-14 05:49:20', '2022-01-14 05:49:20'),
(558, 1, 'sc_admin/product/edit/17', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2022-01-14 05:49:21', '2022-01-14 05:49:21'),
(559, 1, 'sc_admin/product/edit/17', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"descriptions\":{\"en\":{\"name\":\"SSSSSSSS\",\"keyword\":null,\"description\":null,\"content\":\"A\"},\"vi\":{\"name\":\"Easy Polo Black Edition 17\",\"keyword\":null,\"description\":null,\"content\":\"<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<\\/p>\\r\\n\\r\\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<\\/p>\"}},\"category\":[\"21\"],\"image\":\"\\/data\\/product\\/product_use.jpg\",\"sub_image\":[\"\\/data\\/product\\/product-12.png\",\"\\/data\\/product\\/product-6.png\",\"\\/data\\/product\\/product-2.png\"],\"sku\":\"ALOKK1-AY\",\"alias\":\"demo-alias-name-product-17\",\"brand_id\":\"3\",\"supplier_id\":\"1\",\"cost\":\"10000\",\"price\":\"15000\",\"tax_id\":\"auto\",\"stock\":\"100\",\"weight_class\":null,\"weight\":\"0\",\"length_class\":null,\"length\":\"0\",\"height\":\"0\",\"width\":\"0\",\"property\":\"physical\",\"download_path\":null,\"date_available\":null,\"minimum\":\"5\",\"sort\":\"0\",\"status\":\"on\",\"_token\":\"6Q9KNIDJ79Yb3iVAZ0i2OaKcG7TIa3lGh7ClfDNi\"}', '2022-01-14 05:49:31', '2022-01-14 05:49:31'),
(560, 1, 'sc_admin/product', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2022-01-14 05:49:32', '2022-01-14 05:49:32'),
(561, 1, 'sc_admin', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2022-01-14 06:20:05', '2022-01-14 06:20:05'),
(562, 1, 'sc_admin/category', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2022-01-14 06:20:28', '2022-01-14 06:20:28'),
(563, 1, 'sc_admin/category/delete', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"ids\":\"20\",\"_token\":\"6Q9KNIDJ79Yb3iVAZ0i2OaKcG7TIa3lGh7ClfDNi\"}', '2022-01-14 06:20:35', '2022-01-14 06:20:35'),
(564, 1, 'sc_admin/category', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"_pjax\":\"#pjax-container\"}', '2022-01-14 06:20:37', '2022-01-14 06:20:37'),
(565, 1, 'sc_admin/category/delete', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"ids\":\"19\",\"_token\":\"6Q9KNIDJ79Yb3iVAZ0i2OaKcG7TIa3lGh7ClfDNi\"}', '2022-01-14 06:20:40', '2022-01-14 06:20:40'),
(566, 1, 'sc_admin/category', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"_pjax\":\"#pjax-container\"}', '2022-01-14 06:20:42', '2022-01-14 06:20:42'),
(567, 1, 'sc_admin/category/edit/18', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2022-01-14 06:20:45', '2022-01-14 06:20:45'),
(568, 1, 'sc_admin/category/create', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2022-01-14 06:20:47', '2022-01-14 06:20:47'),
(569, 1, 'sc_admin/uploads', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"type\":\"category\"}', '2022-01-14 06:21:09', '2022-01-14 06:21:09'),
(570, 1, 'sc_admin/uploads/folders', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"working_dir\":null,\"type\":\"category\",\"_\":\"1642141269569\"}', '2022-01-14 06:21:10', '2022-01-14 06:21:10'),
(571, 1, 'sc_admin/uploads/errors', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"working_dir\":null,\"type\":\"category\",\"_\":\"1642141269570\"}', '2022-01-14 06:21:11', '2022-01-14 06:21:11'),
(572, 1, 'sc_admin/uploads/jsonitems', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"working_dir\":null,\"type\":\"category\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1642141269571\"}', '2022-01-14 06:21:12', '2022-01-14 06:21:12'),
(573, 1, 'sc_admin/category/create', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"descriptions\":{\"en\":{\"title\":\"N\\u01b0\\u1edbc hoa Intense\",\"keyword\":null,\"description\":null},\"vi\":{\"title\":\"N\\u01b0\\u1edbc hoa Intense\",\"keyword\":null,\"description\":null}},\"parent\":\"0\",\"alias\":null,\"image\":\"\\/data\\/category\\/product_use2.jpg\",\"sort\":\"0\",\"top\":\"on\",\"status\":\"on\",\"_token\":\"6Q9KNIDJ79Yb3iVAZ0i2OaKcG7TIa3lGh7ClfDNi\"}', '2022-01-14 06:21:15', '2022-01-14 06:21:15'),
(574, 1, 'sc_admin/category', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2022-01-14 06:21:16', '2022-01-14 06:21:16'),
(575, 1, 'sc_admin/category/edit/18', 'POST', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"descriptions\":{\"en\":{\"title\":\"N\\u01b0\\u1edbc hoa Niche\",\"keyword\":null,\"description\":null},\"vi\":{\"title\":\"N\\u01b0\\u1edbc hoa Niche\",\"keyword\":null,\"description\":null}},\"parent\":\"0\",\"alias\":\"nuoc-hoa-niche\",\"image\":null,\"sort\":\"1\",\"top\":\"on\",\"status\":\"on\",\"_token\":\"6Q9KNIDJ79Yb3iVAZ0i2OaKcG7TIa3lGh7ClfDNi\"}', '2022-01-14 06:21:28', '2022-01-14 06:21:28'),
(576, 1, 'sc_admin/category', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2022-01-14 06:21:29', '2022-01-14 06:21:29'),
(577, 1, 'sc_admin/product', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2022-01-14 06:38:50', '2022-01-14 06:38:50'),
(578, 1, 'sc_admin/category', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2022-01-14 06:39:17', '2022-01-14 06:39:17'),
(579, 1, 'sc_admin/category/edit/21', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2022-01-14 06:39:42', '2022-01-14 06:39:42'),
(580, 1, 'sc_admin/uploads', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"type\":\"category\"}', '2022-01-14 06:40:33', '2022-01-14 06:40:33'),
(581, 1, 'sc_admin/uploads/folders', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"working_dir\":null,\"type\":\"category\",\"_\":\"1642142435110\"}', '2022-01-14 06:40:36', '2022-01-14 06:40:36'),
(582, 1, 'sc_admin/uploads/errors', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"working_dir\":null,\"type\":\"category\",\"_\":\"1642142435111\"}', '2022-01-14 06:40:36', '2022-01-14 06:40:36'),
(583, 1, 'sc_admin/uploads/jsonitems', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"working_dir\":null,\"type\":\"category\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1642142435112\"}', '2022-01-14 06:40:37', '2022-01-14 06:40:37'),
(584, 1, 'sc_admin/category/edit/21', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"descriptions\":{\"en\":{\"title\":\"N\\u01b0\\u1edbc hoa ph\\u00e1p\",\"keyword\":null,\"description\":null},\"vi\":{\"title\":\"NH Ph\\u00e1p\",\"keyword\":null,\"description\":null}},\"parent\":\"22\",\"alias\":\"nuoc-hoa-phap\",\"image\":\"\\/data\\/category\\/product_use2.jpg\",\"sort\":\"0\",\"top\":\"on\",\"status\":\"on\",\"_token\":\"KZ5cp3PdRvI1Bjr6hOWm7b5yE6efbWhOU04ixXho\"}', '2022-01-14 06:40:51', '2022-01-14 06:40:51'),
(585, 1, 'sc_admin/category', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2022-01-14 06:40:52', '2022-01-14 06:40:52'),
(586, 1, 'sc_admin/category/edit/18', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2022-01-14 06:40:57', '2022-01-14 06:40:57'),
(587, 1, 'sc_admin/uploads', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"type\":\"category\"}', '2022-01-14 06:41:01', '2022-01-14 06:41:01'),
(588, 1, 'sc_admin/uploads/folders', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"working_dir\":null,\"type\":\"category\",\"_\":\"1642142461582\"}', '2022-01-14 06:41:02', '2022-01-14 06:41:02'),
(589, 1, 'sc_admin/uploads/errors', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"working_dir\":null,\"type\":\"category\",\"_\":\"1642142461583\"}', '2022-01-14 06:41:02', '2022-01-14 06:41:02'),
(590, 1, 'sc_admin/uploads/jsonitems', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"working_dir\":null,\"type\":\"category\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1642142461584\"}', '2022-01-14 06:41:03', '2022-01-14 06:41:03'),
(591, 1, 'sc_admin/category/edit/18', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"descriptions\":{\"en\":{\"title\":\"N\\u01b0\\u1edbc hoa Niche\",\"keyword\":null,\"description\":null},\"vi\":{\"title\":\"N\\u01b0\\u1edbc hoa Niche\",\"keyword\":null,\"description\":null}},\"parent\":\"0\",\"alias\":\"nuoc-hoa-niche\",\"image\":\"\\/data\\/category\\/product_use2.jpg\",\"sort\":\"1\",\"top\":\"on\",\"status\":\"on\",\"_token\":\"KZ5cp3PdRvI1Bjr6hOWm7b5yE6efbWhOU04ixXho\"}', '2022-01-14 06:41:06', '2022-01-14 06:41:06'),
(592, 1, 'sc_admin/category', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2022-01-14 06:41:07', '2022-01-14 06:41:07'),
(593, 1, 'sc_admin/category/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2022-01-14 06:41:14', '2022-01-14 06:41:14'),
(594, 1, 'sc_admin/category/create', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"descriptions\":{\"en\":{\"title\":\"N\\u01b0\\u1edbc hoa N\\u1eef\",\"keyword\":null,\"description\":null},\"vi\":{\"title\":\"N\\u01b0\\u1edbc hoa N\\u1eef\",\"keyword\":null,\"description\":null}},\"parent\":\"0\",\"alias\":null,\"image\":null,\"sort\":\"0\",\"top\":\"on\",\"status\":\"on\",\"_token\":\"KZ5cp3PdRvI1Bjr6hOWm7b5yE6efbWhOU04ixXho\"}', '2022-01-14 06:41:44', '2022-01-14 06:41:44'),
(595, 1, 'sc_admin/category', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2022-01-14 06:41:45', '2022-01-14 06:41:45'),
(596, 1, 'sc_admin/category/edit/23', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2022-01-14 06:41:49', '2022-01-14 06:41:49'),
(597, 1, 'sc_admin/uploads', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"type\":\"category\"}', '2022-01-14 06:41:54', '2022-01-14 06:41:54'),
(598, 1, 'sc_admin/uploads/folders', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"working_dir\":null,\"type\":\"category\",\"_\":\"1642142514702\"}', '2022-01-14 06:41:55', '2022-01-14 06:41:55'),
(599, 1, 'sc_admin/uploads/errors', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"working_dir\":null,\"type\":\"category\",\"_\":\"1642142514703\"}', '2022-01-14 06:41:55', '2022-01-14 06:41:55'),
(600, 1, 'sc_admin/uploads/jsonitems', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"working_dir\":null,\"type\":\"category\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1642142514704\"}', '2022-01-14 06:41:56', '2022-01-14 06:41:56'),
(601, 1, 'sc_admin/category/edit/23', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"descriptions\":{\"en\":{\"title\":\"N\\u01b0\\u1edbc hoa N\\u1eef\",\"keyword\":null,\"description\":null},\"vi\":{\"title\":\"N\\u01b0\\u1edbc hoa N\\u1eef\",\"keyword\":null,\"description\":null}},\"parent\":\"0\",\"alias\":\"nuoc-hoa-nu\",\"image\":\"\\/data\\/category\\/product_use2.jpg\",\"sort\":\"0\",\"top\":\"on\",\"status\":\"on\",\"_token\":\"KZ5cp3PdRvI1Bjr6hOWm7b5yE6efbWhOU04ixXho\"}', '2022-01-14 06:41:58', '2022-01-14 06:41:58'),
(602, 1, 'sc_admin/category', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2022-01-14 06:41:59', '2022-01-14 06:41:59'),
(603, 1, 'sc_admin/product', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2022-01-14 06:42:06', '2022-01-14 06:42:06'),
(604, 1, 'sc_admin/product/edit/14', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2022-01-14 06:42:27', '2022-01-14 06:42:27'),
(605, 1, 'sc_admin/product', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2022-01-14 06:42:50', '2022-01-14 06:42:50'),
(606, 1, 'sc_admin/product', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2022-01-14 06:47:20', '2022-01-14 06:47:20'),
(607, 1, 'sc_admin/product/edit/12', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2022-01-14 06:48:15', '2022-01-14 06:48:15'),
(608, 1, 'sc_admin/product/edit/12', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"descriptions\":{\"en\":{\"name\":\"N\\u01b0\\u1edbc hoa N\\u1eef Dubai Mazaaji EDP\",\"keyword\":null,\"description\":null,\"content\":null},\"vi\":{\"name\":\"N\\u01b0\\u1edbc hoa N\\u1eef Dubai Mazaaji EDP\",\"keyword\":null,\"description\":\"Tinh d\\u1ea7u n\\u01b0\\u1edbc hoa Dubai t\\u1ea1i HT Market l\\u00e0 d\\u00f2ng n\\u01b0\\u1edbc hoa n\\u1ed5i ti\\u1ebfng v\\u1edbi m\\u00f9i h\\u01b0\\u01a1ng si\\u00eau quy\\u1ebfn r\\u0169...\",\"content\":\"<p>Phong c&aacute;ch: Sang tr\\u1ecdng, ng\\u1ecdt ng&agrave;o, sexy<\\/p>\\r\\n\\r\\n<p>Th\\u01b0\\u01a1ng hi\\u1ec7u: Lattafa<\\/p>\\r\\n\\r\\n<p>Xu\\u1ea5t x\\u1ee9: Dubai &ndash; UAE<\\/p>\\r\\n\\r\\n<p>\\u0110\\u1ed9 tu\\u1ed5i: 25 tu\\u1ed5i tr\\u1edf l&ecirc;n<\\/p>\\r\\n\\r\\n<p>Dung t&iacute;ch: 100ml<\\/p>\\r\\n\\r\\n<p>Gi\\u1edbi t&iacute;nh: N\\u1eef<\\/p>\\r\\n\\r\\n<p>\\u0110\\u1ed9 l\\u01b0u h\\u01b0\\u01a1ng: 6-8h tr&ecirc;n da, 1-3 ng&agrave;y tr&ecirc;n qu\\u1ea7n &aacute;o<\\/p>\\r\\n\\r\\n<p>\\u0110\\u1ed9 t\\u1ecfa h\\u01b0\\u01a1ng:Xa<\\/p>\\r\\n\\r\\n<p>\\u0110\\u1eb7c tr\\u01b0ng m&ugrave;i h\\u01b0\\u01a1ng: M&ugrave;i hoa h\\u1ed3ng ch\\u1ee7 \\u0111\\u1ea1o<\\/p>\\r\\n\\r\\n<ul>\\r\\n\\t<li>H\\u01b0\\u01a1ng \\u0111\\u1ea7u: Hoa h\\u1ed3ng, hoa sen<\\/li>\\r\\n\\t<li>H\\u01b0\\u01a1ng gi\\u1eefa: Ho\\u1eafc h\\u01b0\\u01a1ng, x\\u1ea1 h\\u01b0\\u01a1ng, lily<\\/li>\\r\\n\\t<li>H\\u01b0\\u01a1ng cu\\u1ed1i: G\\u1ed7 \\u0111&agrave;n h\\u01b0\\u01a1ng, x\\u1ea1 h\\u01b0\\u01a1ng, vani<\\/li>\\r\\n<\\/ul>\"}},\"image\":\"\\/data\\/product\\/product_use.jpg\",\"sub_image\":[\"\\/data\\/product\\/product_use.jpg\",\"\\/data\\/product\\/product_use.jpg\"],\"sku\":\"3D-CARBON175\",\"alias\":\"nuoc-hoa-nu-dubai-mazaaji-edp\",\"brand_id\":\"2\",\"supplier_id\":\"1\",\"cost\":\"0\",\"price\":\"4800000\",\"tax_id\":\"0\",\"price_promotion\":\"2999000\",\"price_promotion_start\":\"2022-01-12\",\"price_promotion_end\":\"2022-03-16\",\"stock\":\"97\",\"weight_class\":null,\"weight\":\"0\",\"length_class\":null,\"length\":\"0\",\"height\":\"0\",\"width\":\"0\",\"property\":\"physical\",\"download_path\":null,\"date_available\":null,\"minimum\":\"1\",\"sort\":\"0\",\"status\":\"on\",\"attribute\":{\"1\":{\"name\":[\"Red\",\"Yellow\"],\"add_price\":[\"20000\",\"20000\"]},\"2\":{\"name\":[\"M\",\"L\"],\"add_price\":[\"50000\",\"20000\"]}},\"_token\":\"KZ5cp3PdRvI1Bjr6hOWm7b5yE6efbWhOU04ixXho\"}', '2022-01-14 06:48:41', '2022-01-14 06:48:41'),
(609, 1, 'sc_admin/product/edit/12', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2022-01-14 06:48:41', '2022-01-14 06:48:41'),
(610, 1, 'sc_admin/product/edit/12', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"descriptions\":{\"en\":{\"name\":\"N\\u01b0\\u1edbc hoa N\\u1eef Dubai Mazaaji EDP\",\"keyword\":null,\"description\":null,\"content\":\"N\\u01b0\\u1edbc hoa N\\u1eef Dubai Mazaaji EDP\"},\"vi\":{\"name\":\"N\\u01b0\\u1edbc hoa N\\u1eef Dubai Mazaaji EDP\",\"keyword\":null,\"description\":\"Tinh d\\u1ea7u n\\u01b0\\u1edbc hoa Dubai t\\u1ea1i HT Market l\\u00e0 d\\u00f2ng n\\u01b0\\u1edbc hoa n\\u1ed5i ti\\u1ebfng v\\u1edbi m\\u00f9i h\\u01b0\\u01a1ng si\\u00eau quy\\u1ebfn r\\u0169...\",\"content\":\"<p>Phong c&aacute;ch: Sang tr\\u1ecdng, ng\\u1ecdt ng&agrave;o, sexy<\\/p>\\r\\n\\r\\n<p>Th\\u01b0\\u01a1ng hi\\u1ec7u: Lattafa<\\/p>\\r\\n\\r\\n<p>Xu\\u1ea5t x\\u1ee9: Dubai &ndash; UAE<\\/p>\\r\\n\\r\\n<p>\\u0110\\u1ed9 tu\\u1ed5i: 25 tu\\u1ed5i tr\\u1edf l&ecirc;n<\\/p>\\r\\n\\r\\n<p>Dung t&iacute;ch: 100ml<\\/p>\\r\\n\\r\\n<p>Gi\\u1edbi t&iacute;nh: N\\u1eef<\\/p>\\r\\n\\r\\n<p>\\u0110\\u1ed9 l\\u01b0u h\\u01b0\\u01a1ng: 6-8h tr&ecirc;n da, 1-3 ng&agrave;y tr&ecirc;n qu\\u1ea7n &aacute;o<\\/p>\\r\\n\\r\\n<p>\\u0110\\u1ed9 t\\u1ecfa h\\u01b0\\u01a1ng:Xa<\\/p>\\r\\n\\r\\n<p>\\u0110\\u1eb7c tr\\u01b0ng m&ugrave;i h\\u01b0\\u01a1ng: M&ugrave;i hoa h\\u1ed3ng ch\\u1ee7 \\u0111\\u1ea1o<\\/p>\\r\\n\\r\\n<ul>\\r\\n\\t<li>H\\u01b0\\u01a1ng \\u0111\\u1ea7u: Hoa h\\u1ed3ng, hoa sen<\\/li>\\r\\n\\t<li>H\\u01b0\\u01a1ng gi\\u1eefa: Ho\\u1eafc h\\u01b0\\u01a1ng, x\\u1ea1 h\\u01b0\\u01a1ng, lily<\\/li>\\r\\n\\t<li>H\\u01b0\\u01a1ng cu\\u1ed1i: G\\u1ed7 \\u0111&agrave;n h\\u01b0\\u01a1ng, x\\u1ea1 h\\u01b0\\u01a1ng, vani<\\/li>\\r\\n<\\/ul>\"}},\"image\":\"\\/data\\/product\\/product_use.jpg\",\"sub_image\":[\"\\/data\\/product\\/product_use.jpg\",\"\\/data\\/product\\/product_use.jpg\"],\"sku\":\"3D-CARBON175\",\"alias\":\"nuoc-hoa-nu-dubai-mazaaji-edp\",\"brand_id\":\"2\",\"supplier_id\":\"1\",\"cost\":\"0\",\"price\":\"4800000\",\"tax_id\":\"0\",\"price_promotion\":\"2999000\",\"price_promotion_start\":\"2022-01-12\",\"price_promotion_end\":\"2022-03-16\",\"stock\":\"97\",\"weight_class\":null,\"weight\":\"0\",\"length_class\":null,\"length\":\"0\",\"height\":\"0\",\"width\":\"0\",\"property\":\"physical\",\"download_path\":null,\"date_available\":null,\"minimum\":\"1\",\"sort\":\"0\",\"status\":\"on\",\"attribute\":{\"1\":{\"name\":[\"Red\",\"Yellow\"],\"add_price\":[\"20000\",\"20000\"]},\"2\":{\"name\":[\"M\",\"L\"],\"add_price\":[\"50000\",\"20000\"]}},\"_token\":\"KZ5cp3PdRvI1Bjr6hOWm7b5yE6efbWhOU04ixXho\"}', '2022-01-14 06:48:49', '2022-01-14 06:48:49'),
(611, 1, 'sc_admin/product/edit/12', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2022-01-14 06:48:49', '2022-01-14 06:48:49'),
(612, 1, 'sc_admin/product/edit/12', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"descriptions\":{\"en\":{\"name\":\"N\\u01b0\\u1edbc hoa N\\u1eef Dubai Mazaaji EDP\",\"keyword\":null,\"description\":null,\"content\":\"N\\u01b0\\u1edbc hoa N\\u1eef Dubai Mazaaji EDP\"},\"vi\":{\"name\":\"N\\u01b0\\u1edbc hoa N\\u1eef Dubai Mazaaji EDP\",\"keyword\":null,\"description\":\"Tinh d\\u1ea7u n\\u01b0\\u1edbc hoa Dubai t\\u1ea1i HT Market l\\u00e0 d\\u00f2ng n\\u01b0\\u1edbc hoa n\\u1ed5i ti\\u1ebfng v\\u1edbi m\\u00f9i h\\u01b0\\u01a1ng si\\u00eau quy\\u1ebfn r\\u0169...\",\"content\":\"<p>Phong c&aacute;ch: Sang tr\\u1ecdng, ng\\u1ecdt ng&agrave;o, sexy<\\/p>\\r\\n\\r\\n<p>Th\\u01b0\\u01a1ng hi\\u1ec7u: Lattafa<\\/p>\\r\\n\\r\\n<p>Xu\\u1ea5t x\\u1ee9: Dubai &ndash; UAE<\\/p>\\r\\n\\r\\n<p>\\u0110\\u1ed9 tu\\u1ed5i: 25 tu\\u1ed5i tr\\u1edf l&ecirc;n<\\/p>\\r\\n\\r\\n<p>Dung t&iacute;ch: 100ml<\\/p>\\r\\n\\r\\n<p>Gi\\u1edbi t&iacute;nh: N\\u1eef<\\/p>\\r\\n\\r\\n<p>\\u0110\\u1ed9 l\\u01b0u h\\u01b0\\u01a1ng: 6-8h tr&ecirc;n da, 1-3 ng&agrave;y tr&ecirc;n qu\\u1ea7n &aacute;o<\\/p>\\r\\n\\r\\n<p>\\u0110\\u1ed9 t\\u1ecfa h\\u01b0\\u01a1ng:Xa<\\/p>\\r\\n\\r\\n<p>\\u0110\\u1eb7c tr\\u01b0ng m&ugrave;i h\\u01b0\\u01a1ng: M&ugrave;i hoa h\\u1ed3ng ch\\u1ee7 \\u0111\\u1ea1o<\\/p>\\r\\n\\r\\n<ul>\\r\\n\\t<li>H\\u01b0\\u01a1ng \\u0111\\u1ea7u: Hoa h\\u1ed3ng, hoa sen<\\/li>\\r\\n\\t<li>H\\u01b0\\u01a1ng gi\\u1eefa: Ho\\u1eafc h\\u01b0\\u01a1ng, x\\u1ea1 h\\u01b0\\u01a1ng, lily<\\/li>\\r\\n\\t<li>H\\u01b0\\u01a1ng cu\\u1ed1i: G\\u1ed7 \\u0111&agrave;n h\\u01b0\\u01a1ng, x\\u1ea1 h\\u01b0\\u01a1ng, vani<\\/li>\\r\\n<\\/ul>\"}},\"category\":[\"21\",\"23\"],\"image\":\"\\/data\\/product\\/product_use.jpg\",\"sub_image\":[\"\\/data\\/product\\/product_use.jpg\",\"\\/data\\/product\\/product_use.jpg\"],\"sku\":\"3D-CARBON175\",\"alias\":\"nuoc-hoa-nu-dubai-mazaaji-edp\",\"brand_id\":\"2\",\"supplier_id\":\"1\",\"cost\":\"0\",\"price\":\"4800000\",\"tax_id\":\"0\",\"price_promotion\":\"2999000\",\"price_promotion_start\":\"2022-01-12\",\"price_promotion_end\":\"2022-03-16\",\"stock\":\"97\",\"weight_class\":null,\"weight\":\"0\",\"length_class\":null,\"length\":\"0\",\"height\":\"0\",\"width\":\"0\",\"property\":\"physical\",\"download_path\":null,\"date_available\":null,\"minimum\":\"1\",\"sort\":\"0\",\"status\":\"on\",\"attribute\":{\"1\":{\"name\":[\"Red\",\"Yellow\"],\"add_price\":[\"20000\",\"20000\"]},\"2\":{\"name\":[\"M\",\"L\"],\"add_price\":[\"50000\",\"20000\"]}},\"_token\":\"KZ5cp3PdRvI1Bjr6hOWm7b5yE6efbWhOU04ixXho\"}', '2022-01-14 06:51:08', '2022-01-14 06:51:08'),
(613, 1, 'sc_admin/product', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2022-01-14 06:51:09', '2022-01-14 06:51:09'),
(614, 1, 'sc_admin/product/edit/11', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2022-01-14 06:51:48', '2022-01-14 06:51:48'),
(615, 1, 'sc_admin/product/edit/13', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2022-01-14 06:51:49', '2022-01-14 06:51:49'),
(616, 1, 'sc_admin/product', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2022-01-14 06:52:00', '2022-01-14 06:52:00'),
(617, 1, 'sc_admin/product/edit/12', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2022-01-14 06:57:23', '2022-01-14 06:57:23'),
(618, 1, 'sc_admin/product/edit/12', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2022-01-14 06:57:52', '2022-01-14 06:57:52'),
(619, 1, 'sc_admin/uploads', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"type\":\"product\"}', '2022-01-14 06:57:58', '2022-01-14 06:57:58'),
(620, 1, 'sc_admin/uploads/folders', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"working_dir\":null,\"type\":\"product\",\"_\":\"1642143479328\"}', '2022-01-14 06:58:00', '2022-01-14 06:58:00'),
(621, 1, 'sc_admin/uploads/errors', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"working_dir\":null,\"type\":\"product\",\"_\":\"1642143479329\"}', '2022-01-14 06:58:00', '2022-01-14 06:58:00'),
(622, 1, 'sc_admin/uploads/jsonitems', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"working_dir\":null,\"type\":\"product\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1642143479330\"}', '2022-01-14 06:58:01', '2022-01-14 06:58:01'),
(623, 1, 'sc_admin/uploads/upload', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"product\",\"_token\":\"KZ5cp3PdRvI1Bjr6hOWm7b5yE6efbWhOU04ixXho\"}', '2022-01-14 06:58:23', '2022-01-14 06:58:23'),
(624, 1, 'sc_admin/uploads/upload', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"product\",\"_token\":\"KZ5cp3PdRvI1Bjr6hOWm7b5yE6efbWhOU04ixXho\"}', '2022-01-14 06:58:23', '2022-01-14 06:58:23'),
(625, 1, 'sc_admin/uploads/folders', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"product\",\"_\":\"1642143479331\"}', '2022-01-14 06:58:25', '2022-01-14 06:58:25'),
(626, 1, 'sc_admin/uploads/upload', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"product\",\"_token\":\"KZ5cp3PdRvI1Bjr6hOWm7b5yE6efbWhOU04ixXho\"}', '2022-01-14 06:58:25', '2022-01-14 06:58:25'),
(627, 1, 'sc_admin/uploads/folders', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"product\",\"_\":\"1642143479332\"}', '2022-01-14 06:58:29', '2022-01-14 06:58:29'),
(628, 1, 'sc_admin/uploads/jsonitems', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"product\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1642143479333\"}', '2022-01-14 06:58:30', '2022-01-14 06:58:30'),
(629, 1, 'sc_admin/uploads/folders', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"product\",\"_\":\"1642143479334\"}', '2022-01-14 06:58:30', '2022-01-14 06:58:30'),
(630, 1, 'sc_admin/uploads/jsonitems', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"product\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1642143479335\"}', '2022-01-14 06:58:31', '2022-01-14 06:58:31'),
(631, 1, 'sc_admin/uploads/jsonitems', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"product\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1642143479336\"}', '2022-01-14 06:58:33', '2022-01-14 06:58:33'),
(632, 1, 'sc_admin/product/edit/12', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"descriptions\":{\"en\":{\"name\":\"N\\u01b0\\u1edbc hoa N\\u1eef Dubai Mazaaji EDP\",\"keyword\":null,\"description\":null,\"content\":\"N\\u01b0\\u1edbc hoa N\\u1eef Dubai Mazaaji EDP\"},\"vi\":{\"name\":\"N\\u01b0\\u1edbc hoa N\\u1eef Dubai Mazaaji EDP\",\"keyword\":null,\"description\":\"Tinh d\\u1ea7u n\\u01b0\\u1edbc hoa Dubai t\\u1ea1i HT Market l\\u00e0 d\\u00f2ng n\\u01b0\\u1edbc hoa n\\u1ed5i ti\\u1ebfng v\\u1edbi m\\u00f9i h\\u01b0\\u01a1ng si\\u00eau quy\\u1ebfn r\\u0169...\",\"content\":\"<p>Phong c&aacute;ch: Sang tr\\u1ecdng, ng\\u1ecdt ng&agrave;o, sexy<\\/p>\\r\\n\\r\\n<p>Th\\u01b0\\u01a1ng hi\\u1ec7u: Lattafa<\\/p>\\r\\n\\r\\n<p>Xu\\u1ea5t x\\u1ee9: Dubai &ndash; UAE<\\/p>\\r\\n\\r\\n<p>\\u0110\\u1ed9 tu\\u1ed5i: 25 tu\\u1ed5i tr\\u1edf l&ecirc;n<\\/p>\\r\\n\\r\\n<p>Dung t&iacute;ch: 100ml<\\/p>\\r\\n\\r\\n<p>Gi\\u1edbi t&iacute;nh: N\\u1eef<\\/p>\\r\\n\\r\\n<p>\\u0110\\u1ed9 l\\u01b0u h\\u01b0\\u01a1ng: 6-8h tr&ecirc;n da, 1-3 ng&agrave;y tr&ecirc;n qu\\u1ea7n &aacute;o<\\/p>\\r\\n\\r\\n<p>\\u0110\\u1ed9 t\\u1ecfa h\\u01b0\\u01a1ng:Xa<\\/p>\\r\\n\\r\\n<p>\\u0110\\u1eb7c tr\\u01b0ng m&ugrave;i h\\u01b0\\u01a1ng: M&ugrave;i hoa h\\u1ed3ng ch\\u1ee7 \\u0111\\u1ea1o<\\/p>\\r\\n\\r\\n<ul>\\r\\n\\t<li>H\\u01b0\\u01a1ng \\u0111\\u1ea7u: Hoa h\\u1ed3ng, hoa sen<\\/li>\\r\\n\\t<li>H\\u01b0\\u01a1ng gi\\u1eefa: Ho\\u1eafc h\\u01b0\\u01a1ng, x\\u1ea1 h\\u01b0\\u01a1ng, lily<\\/li>\\r\\n\\t<li>H\\u01b0\\u01a1ng cu\\u1ed1i: G\\u1ed7 \\u0111&agrave;n h\\u01b0\\u01a1ng, x\\u1ea1 h\\u01b0\\u01a1ng, vani<\\/li>\\r\\n<\\/ul>\"}},\"category\":[\"21\",\"23\"],\"image\":\"\\/data\\/product\\/lattafa-mazaaji-100ml-apa-de-parfum_8367043.jpg\",\"sub_image\":[\"\\/data\\/product\\/product_use.jpg\",\"\\/data\\/product\\/product_use.jpg\"],\"sku\":\"3D-CARBON175\",\"alias\":\"nuoc-hoa-nu-dubai-mazaaji-edp\",\"brand_id\":\"2\",\"supplier_id\":\"1\",\"cost\":\"0\",\"price\":\"4800000\",\"tax_id\":\"0\",\"price_promotion\":\"2999000\",\"price_promotion_start\":\"2022-01-12\",\"price_promotion_end\":\"2022-03-16\",\"stock\":\"97\",\"weight_class\":null,\"weight\":\"0\",\"length_class\":null,\"length\":\"0\",\"height\":\"0\",\"width\":\"0\",\"property\":\"physical\",\"download_path\":null,\"date_available\":null,\"minimum\":\"1\",\"sort\":\"0\",\"status\":\"on\",\"attribute\":{\"1\":{\"name\":[\"Red\",\"Yellow\"],\"add_price\":[\"20000\",\"20000\"]},\"2\":{\"name\":[\"M\",\"L\"],\"add_price\":[\"50000\",\"20000\"]}},\"_token\":\"KZ5cp3PdRvI1Bjr6hOWm7b5yE6efbWhOU04ixXho\"}', '2022-01-14 06:58:41', '2022-01-14 06:58:41'),
(633, 1, 'sc_admin/product', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2022-01-14 06:58:42', '2022-01-14 06:58:42'),
(634, 1, 'sc_admin/store_info', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2022-01-14 07:01:31', '2022-01-14 07:01:31'),
(635, 1, 'sc_admin/uploads', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"type\":\"product\"}', '2022-01-14 07:05:06', '2022-01-14 07:05:06'),
(636, 1, 'sc_admin/uploads/folders', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"working_dir\":null,\"type\":\"product\",\"_\":\"1642143906698\"}', '2022-01-14 07:05:07', '2022-01-14 07:05:07'),
(637, 1, 'sc_admin/uploads/errors', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"working_dir\":null,\"type\":\"product\",\"_\":\"1642143906699\"}', '2022-01-14 07:05:08', '2022-01-14 07:05:08'),
(638, 1, 'sc_admin/uploads/jsonitems', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"working_dir\":null,\"type\":\"product\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1642143906700\"}', '2022-01-14 07:05:08', '2022-01-14 07:05:08'),
(639, 1, 'sc_admin/uploads', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"type\":\"product\"}', '2022-01-14 07:05:17', '2022-01-14 07:05:17'),
(640, 1, 'sc_admin/uploads/folders', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"working_dir\":null,\"type\":\"product\",\"_\":\"1642143917923\"}', '2022-01-14 07:05:18', '2022-01-14 07:05:18'),
(641, 1, 'sc_admin/uploads/errors', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"working_dir\":null,\"type\":\"product\",\"_\":\"1642143917924\"}', '2022-01-14 07:05:19', '2022-01-14 07:05:19'),
(642, 1, 'sc_admin/uploads/jsonitems', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"working_dir\":null,\"type\":\"product\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1642143917925\"}', '2022-01-14 07:05:19', '2022-01-14 07:05:19'),
(643, 1, 'sc_admin/uploads', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"type\":\"product\"}', '2022-01-14 07:05:24', '2022-01-14 07:05:24'),
(644, 1, 'sc_admin/uploads/folders', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"working_dir\":null,\"type\":\"product\",\"_\":\"1642143925416\"}', '2022-01-14 07:05:25', '2022-01-14 07:05:25'),
(645, 1, 'sc_admin/uploads/errors', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"working_dir\":null,\"type\":\"product\",\"_\":\"1642143925417\"}', '2022-01-14 07:05:26', '2022-01-14 07:05:26'),
(646, 1, 'sc_admin/uploads/jsonitems', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"working_dir\":null,\"type\":\"product\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1642143925418\"}', '2022-01-14 07:05:27', '2022-01-14 07:05:27');
INSERT INTO `sc_admin_log` (`id`, `user_id`, `path`, `method`, `ip`, `user_agent`, `input`, `created_at`, `updated_at`) VALUES
(647, 1, 'sc_admin/product/edit/11', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"descriptions\":{\"en\":{\"name\":\"N\\u01b0\\u1edbc Hoa N\\u1eef HUGO BOSS The Scent EDP 50ml The Scent EDP Spray\",\"keyword\":null,\"description\":null,\"content\":\"<h1>N\\u01b0\\u1edbc Hoa N\\u1eef HUGO BOSS The Scent EDP 50ml<\\/h1>\\r\\n\\r\\n<h2>The Scent EDP Spray<\\/h2>\"},\"vi\":{\"name\":\"N\\u01b0\\u1edbc Hoa N\\u1eef HUGO BOSS The Scent EDP 50ml The Scent EDP Spray\",\"keyword\":null,\"description\":null,\"content\":\"<p><strong>N\\u01b0\\u1edbc Hoa N\\u1eef Hugo Boss The Scent EDP<\\/strong><\\/p>\\r\\n\\r\\n<p>Ra m\\u1eaft v&agrave;o n\\u0103m 2016,&nbsp;<strong>Hugo Boss The Scent For Her&nbsp;<\\/strong>l\\u1ea5y c\\u1ea3m h\\u1ee9ng ngh\\u1ec7 thu\\u1eadt t\\u1eeb h\\u01b0\\u01a1ng th\\u01a1m hoa qu\\u1ea3 k\\u1ebft h\\u1ee3p v\\u1edbi m&agrave;u s\\u1eafc t\\u01b0\\u01a1i m\\u1edbi c\\u1ee7a thi\\u1ebft k\\u1ebf b&ecirc;n ngo&agrave;i \\u0111&atilde; g\\u1ee3i l&ecirc;n s\\u1ee9c m\\u1ea1nh quy\\u1ebfn r\\u0169 bao tr&ugrave;m ng\\u01b0\\u1eddi ph\\u1ee5 n\\u1eef. M\\u1edf \\u0111\\u1ea7u m&ugrave;i h\\u01b0\\u01a1ng c\\u1ee7a&nbsp;<strong>Hugo Boss<\\/strong><strong>&nbsp;The Scent<\\/strong>&nbsp;s\\u1ebd l&agrave; h\\u01b0\\u01a1ng th\\u01a1m t\\u01b0\\u01a1i m&aacute;t c\\u1ee7a t&aacute;o k\\u1ebft h\\u1ee3p hoa lan Nam Phi, ti\\u1ebfp \\u0111\\u1ebfn l&agrave; m&ugrave;i h\\u01b0\\u01a1ng quy\\u1ebfn r\\u0169 nh\\u1eb9 nh&agrave;ng c\\u1ee7a m\\u1ed9c t&ecirc;, v&agrave; cu\\u1ed1i c&ugrave;ng s\\u1ebd d\\u1ea7n d\\u1ea7n chuy\\u1ec3n h&oacute;a th&agrave;nh h\\u01b0\\u01a1ng th\\u01a1m ph\\u1ea3ng ph\\u1ea5t c\\u1ee7a ca cao rang, \\u1ea5m &aacute;m v&agrave; n\\u1ed3ng n&agrave;n.<\\/p>\\r\\n\\r\\n<p>&nbsp;<\\/p>\\r\\n\\r\\n<p><img alt=\\\"\\\" data-was-processed=\\\"true\\\" height=\\\"280\\\" src=\\\"https:\\/\\/media.hasaki.vn\\/wysiwyg\\/spa\\/2anuoc-hoa-nu-hugo-boss-the-scent-edp.jpg\\\" width=\\\"500\\\" \\/>&nbsp;<\\/p>\\r\\n\\r\\n<p>&nbsp;<\\/p>\\r\\n\\r\\n<p><strong>N\\u01b0\\u1edbc hoa Hugo Boss The Scent For Her&nbsp;<\\/strong><strong>Eau De Parfum&nbsp;<\\/strong>d&agrave;nh cho nh\\u1eefng c&ocirc; n&agrave;ng ph&oacute;ng kho&aacute;ng, t\\u1ef1 tin. T&ocirc; \\u0111\\u1eadm c&aacute; t&iacute;nh v&agrave; n&eacute;t t&iacute;nh c&aacute;ch ri&ecirc;ng bi\\u1ec7t c\\u1ee7a b\\u1ea1n, The Scent For Her \\u0111\\u1ed3ng h&agrave;nh khi\\u1ebfn c&aacute;c n&agrave;ng tr\\u1edf n&ecirc;n \\u0111\\u1eb7c bi\\u1ec7t h\\u01a1n gi\\u1eefa \\u0111&aacute;m \\u0111&ocirc;ng. Chai n\\u01b0\\u1edbc hoa tinh t\\u1ebf, nh\\u1ecf g\\u1ecdn v\\u1edbi s\\u1eafc h\\u1ed3ng d\\u1ecbu d&agrave;ng, n\\u1eef t&iacute;nh.<\\/p>\\r\\n\\r\\n<p>&nbsp;<\\/p>\\r\\n\\r\\n<p><img alt=\\\"\\\" data-was-processed=\\\"true\\\" height=\\\"282\\\" src=\\\"https:\\/\\/media.hasaki.vn\\/wysiwyg\\/spa\\/3anuoc-hoa-nu-hugo-boss-the-scent-edp.jpg\\\" width=\\\"500\\\" \\/><\\/p>\\r\\n\\r\\n<p>&nbsp;<\\/p>\\r\\n\\r\\n<p>T\\u1eadp \\u0111o&agrave;n th\\u1eddi trang cao c\\u1ea5p&nbsp;<strong>Hugo Boss<\\/strong>&nbsp;hay c&ograve;n g\\u1ecdi l&agrave;&nbsp;<strong>Hugo Boss<\\/strong><strong>&nbsp;<\\/strong><strong>AG<\\/strong>&nbsp;\\u0111\\u01b0\\u1ee3c th&agrave;nh l\\u1eadp v&agrave; \\u0111&oacute;ng tr\\u1ee5 s\\u1edf t\\u1ea1i Metzingen, \\u0110\\u1ee9c v&agrave;o n\\u0103m 1895.&nbsp;V\\u1edbi nh\\u1eefng thi\\u1ebft k\\u1ebf \\u0111\\u1ed9c \\u0111&aacute;o v&agrave; lu&ocirc;n \\u0111&oacute;n tr\\u01b0\\u1edbc c&aacute;c xu h\\u01b0\\u1edbng th\\u1eddi trang,&nbsp;<strong>Hugo Boss<\\/strong>&nbsp;l&agrave; th\\u01b0\\u01a1ng hi\\u1ec7u c\\u1ee7a s\\u1ef1 s\\u1eafc s\\u1ea3o, sang tr\\u1ecdng v&agrave; \\u0111\\u1eb3ng c\\u1ea5p, l&agrave; bi\\u1ec3u t\\u01b0\\u1ee3ng \\u0111&uacute;ng ngh\\u0129a c\\u1ee7a th\\u1eddi trang.<br \\/>\\r\\nV&agrave;o n\\u0103m 1993,&nbsp;<strong>Hugo Boss<\\/strong><strong>&nbsp;<\\/strong>gi\\u1edbi thi\\u1ec7u s\\u1ea3n ph\\u1ea9m n\\u01b0\\u1edbc hoa \\u0111\\u1ea7u ti&ecirc;n.&nbsp;T\\u1eeb \\u0111&oacute; cho \\u0111\\u1ebfn nay, th\\u01b0\\u01a1ng hi\\u1ec7u \\u0111&atilde; nhanh ch&oacute;ng c\\u1eadp nh\\u1eadt xu h\\u01b0\\u1edbng c\\u0169ng nh\\u01b0 cho ra \\u0111\\u1eddi nhi\\u1ec1u d&ograve;ng m\\u1eabu m&atilde; m\\u1edbi. D&ograve;ng n\\u01b0\\u1edbc hoa&nbsp;<strong>Hugo Boss<\\/strong><strong>&nbsp;<\\/strong>\\u0111\\u01b0\\u1ee3c thi\\u1ebft k\\u1ebf v\\u1edbi m\\u1eabu m&atilde; v&agrave; h\\u01b0\\u01a1ng th\\u01a1m mang nhi\\u1ec1u phong c&aacute;ch kh&aacute;c nhau, th&iacute;ch h\\u1ee3p trong nhi\\u1ec1u ho&agrave;n c\\u1ea3nh cho ng\\u01b0\\u1eddi ti&ecirc;u d&ugrave;ng, bao g\\u1ed3m c\\u1ea3 nam v&agrave; n\\u1eef.<\\/p>\\r\\n\\r\\n<p>&nbsp;<\\/p>\\r\\n\\r\\n<p>&nbsp;<img alt=\\\"\\\" data-was-processed=\\\"true\\\" height=\\\"361\\\" src=\\\"https:\\/\\/media.hasaki.vn\\/wysiwyg\\/spa\\/4anuoc-hoa-nu-hugo-boss-the-scent-edp.jpg\\\" width=\\\"500\\\" \\/><\\/p>\\r\\n\\r\\n<p>&nbsp;<\\/p>\\r\\n\\r\\n<p><strong>Phong c&aacute;ch:<\\/strong>&nbsp;N\\u1eef t&iacute;nh, s&agrave;nh \\u0111i\\u1ec7u<\\/p>\\r\\n\\r\\n<p><strong>M&ugrave;i h\\u01b0\\u01a1ng \\u0111\\u1eb7c tr\\u01b0ng<\\/strong><\\/p>\\r\\n\\r\\n<p><strong>H\\u01b0\\u01a1ng \\u0111\\u1ea7u:<\\/strong>&nbsp;Qu\\u1ea3 \\u0111&agrave;o, Hoa lan Nam Phi<\\/p>\\r\\n\\r\\n<p><strong>H\\u01b0\\u01a1ng gi\\u1eefa:<\\/strong>&nbsp;Hoa chi m\\u1ed9c t&ecirc;<\\/p>\\r\\n\\r\\n<p><strong>H\\u01b0\\u01a1ng cu\\u1ed1i:<\\/strong>&nbsp;Ca cao<\\/p>\"}},\"image\":\"\\/data\\/product\\/product_use.jpg\",\"sub_image\":[\"\\/data\\/product\\/Narciso-Rodriguez-For-Her-EDP-100ML_t6av-n0-165x165.png\",\"\\/data\\/product\\/Narciso-Rodriguez-For-Her-EDP-100ML_t6av-n0-165x165.png\"],\"sku\":\"SS495A\",\"alias\":\"demo-alias-name-product-11\",\"brand_id\":\"2\",\"supplier_id\":\"1\",\"cost\":\"10000\",\"price\":\"15000\",\"tax_id\":\"auto\",\"price_promotion\":\"600\",\"price_promotion_start\":null,\"price_promotion_end\":null,\"stock\":\"100\",\"weight_class\":null,\"weight\":\"0\",\"length_class\":null,\"length\":\"0\",\"height\":\"0\",\"width\":\"0\",\"property\":\"physical\",\"download_path\":null,\"date_available\":null,\"minimum\":\"0\",\"sort\":\"0\",\"status\":\"on\",\"_token\":\"KZ5cp3PdRvI1Bjr6hOWm7b5yE6efbWhOU04ixXho\"}', '2022-01-14 07:05:41', '2022-01-14 07:05:41'),
(648, 1, 'sc_admin/product/edit/11', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2022-01-14 07:05:42', '2022-01-14 07:05:42'),
(649, 1, 'sc_admin/product/edit/11', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"descriptions\":{\"en\":{\"name\":\"N\\u01b0\\u1edbc Hoa N\\u1eef HUGO BOSS The Scent EDP 50ml The Scent EDP Spray\",\"keyword\":null,\"description\":null,\"content\":\"<h1>N\\u01b0\\u1edbc Hoa N\\u1eef HUGO BOSS The Scent EDP 50ml<\\/h1>\\r\\n\\r\\n<h2>The Scent EDP Spray<\\/h2>\"},\"vi\":{\"name\":\"N\\u01b0\\u1edbc Hoa N\\u1eef HUGO BOSS The Scent EDP 50ml The Scent EDP Spray\",\"keyword\":null,\"description\":null,\"content\":\"<p><strong>N\\u01b0\\u1edbc Hoa N\\u1eef Hugo Boss The Scent EDP<\\/strong><\\/p>\\r\\n\\r\\n<p>Ra m\\u1eaft v&agrave;o n\\u0103m 2016,&nbsp;<strong>Hugo Boss The Scent For Her&nbsp;<\\/strong>l\\u1ea5y c\\u1ea3m h\\u1ee9ng ngh\\u1ec7 thu\\u1eadt t\\u1eeb h\\u01b0\\u01a1ng th\\u01a1m hoa qu\\u1ea3 k\\u1ebft h\\u1ee3p v\\u1edbi m&agrave;u s\\u1eafc t\\u01b0\\u01a1i m\\u1edbi c\\u1ee7a thi\\u1ebft k\\u1ebf b&ecirc;n ngo&agrave;i \\u0111&atilde; g\\u1ee3i l&ecirc;n s\\u1ee9c m\\u1ea1nh quy\\u1ebfn r\\u0169 bao tr&ugrave;m ng\\u01b0\\u1eddi ph\\u1ee5 n\\u1eef. M\\u1edf \\u0111\\u1ea7u m&ugrave;i h\\u01b0\\u01a1ng c\\u1ee7a&nbsp;<strong>Hugo Boss<\\/strong><strong>&nbsp;The Scent<\\/strong>&nbsp;s\\u1ebd l&agrave; h\\u01b0\\u01a1ng th\\u01a1m t\\u01b0\\u01a1i m&aacute;t c\\u1ee7a t&aacute;o k\\u1ebft h\\u1ee3p hoa lan Nam Phi, ti\\u1ebfp \\u0111\\u1ebfn l&agrave; m&ugrave;i h\\u01b0\\u01a1ng quy\\u1ebfn r\\u0169 nh\\u1eb9 nh&agrave;ng c\\u1ee7a m\\u1ed9c t&ecirc;, v&agrave; cu\\u1ed1i c&ugrave;ng s\\u1ebd d\\u1ea7n d\\u1ea7n chuy\\u1ec3n h&oacute;a th&agrave;nh h\\u01b0\\u01a1ng th\\u01a1m ph\\u1ea3ng ph\\u1ea5t c\\u1ee7a ca cao rang, \\u1ea5m &aacute;m v&agrave; n\\u1ed3ng n&agrave;n.<\\/p>\\r\\n\\r\\n<p>&nbsp;<\\/p>\\r\\n\\r\\n<p><img alt=\\\"\\\" data-was-processed=\\\"true\\\" height=\\\"280\\\" src=\\\"https:\\/\\/media.hasaki.vn\\/wysiwyg\\/spa\\/2anuoc-hoa-nu-hugo-boss-the-scent-edp.jpg\\\" width=\\\"500\\\" \\/>&nbsp;<\\/p>\\r\\n\\r\\n<p>&nbsp;<\\/p>\\r\\n\\r\\n<p><strong>N\\u01b0\\u1edbc hoa Hugo Boss The Scent For Her&nbsp;<\\/strong><strong>Eau De Parfum&nbsp;<\\/strong>d&agrave;nh cho nh\\u1eefng c&ocirc; n&agrave;ng ph&oacute;ng kho&aacute;ng, t\\u1ef1 tin. T&ocirc; \\u0111\\u1eadm c&aacute; t&iacute;nh v&agrave; n&eacute;t t&iacute;nh c&aacute;ch ri&ecirc;ng bi\\u1ec7t c\\u1ee7a b\\u1ea1n, The Scent For Her \\u0111\\u1ed3ng h&agrave;nh khi\\u1ebfn c&aacute;c n&agrave;ng tr\\u1edf n&ecirc;n \\u0111\\u1eb7c bi\\u1ec7t h\\u01a1n gi\\u1eefa \\u0111&aacute;m \\u0111&ocirc;ng. Chai n\\u01b0\\u1edbc hoa tinh t\\u1ebf, nh\\u1ecf g\\u1ecdn v\\u1edbi s\\u1eafc h\\u1ed3ng d\\u1ecbu d&agrave;ng, n\\u1eef t&iacute;nh.<\\/p>\\r\\n\\r\\n<p>&nbsp;<\\/p>\\r\\n\\r\\n<p><img alt=\\\"\\\" data-was-processed=\\\"true\\\" height=\\\"282\\\" src=\\\"https:\\/\\/media.hasaki.vn\\/wysiwyg\\/spa\\/3anuoc-hoa-nu-hugo-boss-the-scent-edp.jpg\\\" width=\\\"500\\\" \\/><\\/p>\\r\\n\\r\\n<p>&nbsp;<\\/p>\\r\\n\\r\\n<p>T\\u1eadp \\u0111o&agrave;n th\\u1eddi trang cao c\\u1ea5p&nbsp;<strong>Hugo Boss<\\/strong>&nbsp;hay c&ograve;n g\\u1ecdi l&agrave;&nbsp;<strong>Hugo Boss<\\/strong><strong>&nbsp;<\\/strong><strong>AG<\\/strong>&nbsp;\\u0111\\u01b0\\u1ee3c th&agrave;nh l\\u1eadp v&agrave; \\u0111&oacute;ng tr\\u1ee5 s\\u1edf t\\u1ea1i Metzingen, \\u0110\\u1ee9c v&agrave;o n\\u0103m 1895.&nbsp;V\\u1edbi nh\\u1eefng thi\\u1ebft k\\u1ebf \\u0111\\u1ed9c \\u0111&aacute;o v&agrave; lu&ocirc;n \\u0111&oacute;n tr\\u01b0\\u1edbc c&aacute;c xu h\\u01b0\\u1edbng th\\u1eddi trang,&nbsp;<strong>Hugo Boss<\\/strong>&nbsp;l&agrave; th\\u01b0\\u01a1ng hi\\u1ec7u c\\u1ee7a s\\u1ef1 s\\u1eafc s\\u1ea3o, sang tr\\u1ecdng v&agrave; \\u0111\\u1eb3ng c\\u1ea5p, l&agrave; bi\\u1ec3u t\\u01b0\\u1ee3ng \\u0111&uacute;ng ngh\\u0129a c\\u1ee7a th\\u1eddi trang.<br \\/>\\r\\nV&agrave;o n\\u0103m 1993,&nbsp;<strong>Hugo Boss<\\/strong><strong>&nbsp;<\\/strong>gi\\u1edbi thi\\u1ec7u s\\u1ea3n ph\\u1ea9m n\\u01b0\\u1edbc hoa \\u0111\\u1ea7u ti&ecirc;n.&nbsp;T\\u1eeb \\u0111&oacute; cho \\u0111\\u1ebfn nay, th\\u01b0\\u01a1ng hi\\u1ec7u \\u0111&atilde; nhanh ch&oacute;ng c\\u1eadp nh\\u1eadt xu h\\u01b0\\u1edbng c\\u0169ng nh\\u01b0 cho ra \\u0111\\u1eddi nhi\\u1ec1u d&ograve;ng m\\u1eabu m&atilde; m\\u1edbi. D&ograve;ng n\\u01b0\\u1edbc hoa&nbsp;<strong>Hugo Boss<\\/strong><strong>&nbsp;<\\/strong>\\u0111\\u01b0\\u1ee3c thi\\u1ebft k\\u1ebf v\\u1edbi m\\u1eabu m&atilde; v&agrave; h\\u01b0\\u01a1ng th\\u01a1m mang nhi\\u1ec1u phong c&aacute;ch kh&aacute;c nhau, th&iacute;ch h\\u1ee3p trong nhi\\u1ec1u ho&agrave;n c\\u1ea3nh cho ng\\u01b0\\u1eddi ti&ecirc;u d&ugrave;ng, bao g\\u1ed3m c\\u1ea3 nam v&agrave; n\\u1eef.<\\/p>\\r\\n\\r\\n<p>&nbsp;<\\/p>\\r\\n\\r\\n<p>&nbsp;<img alt=\\\"\\\" data-was-processed=\\\"true\\\" height=\\\"361\\\" src=\\\"https:\\/\\/media.hasaki.vn\\/wysiwyg\\/spa\\/4anuoc-hoa-nu-hugo-boss-the-scent-edp.jpg\\\" width=\\\"500\\\" \\/><\\/p>\\r\\n\\r\\n<p>&nbsp;<\\/p>\\r\\n\\r\\n<p><strong>Phong c&aacute;ch:<\\/strong>&nbsp;N\\u1eef t&iacute;nh, s&agrave;nh \\u0111i\\u1ec7u<\\/p>\\r\\n\\r\\n<p><strong>M&ugrave;i h\\u01b0\\u01a1ng \\u0111\\u1eb7c tr\\u01b0ng<\\/strong><\\/p>\\r\\n\\r\\n<p><strong>H\\u01b0\\u01a1ng \\u0111\\u1ea7u:<\\/strong>&nbsp;Qu\\u1ea3 \\u0111&agrave;o, Hoa lan Nam Phi<\\/p>\\r\\n\\r\\n<p><strong>H\\u01b0\\u01a1ng gi\\u1eefa:<\\/strong>&nbsp;Hoa chi m\\u1ed9c t&ecirc;<\\/p>\\r\\n\\r\\n<p><strong>H\\u01b0\\u01a1ng cu\\u1ed1i:<\\/strong>&nbsp;Ca cao<\\/p>\"}},\"category\":[\"22\",\"23\"],\"image\":\"\\/data\\/product\\/product_use.jpg\",\"sub_image\":[\"\\/data\\/product\\/Narciso-Rodriguez-For-Her-EDP-100ML_t6av-n0-165x165.png\"],\"sku\":\"SS495A\",\"alias\":\"demo-alias-name-product-11\",\"brand_id\":\"2\",\"supplier_id\":\"1\",\"cost\":\"10000\",\"price\":\"15000\",\"tax_id\":\"auto\",\"price_promotion\":\"600\",\"price_promotion_start\":null,\"price_promotion_end\":null,\"stock\":\"100\",\"weight_class\":null,\"weight\":\"0\",\"length_class\":null,\"length\":\"0\",\"height\":\"0\",\"width\":\"0\",\"property\":\"physical\",\"download_path\":null,\"date_available\":null,\"minimum\":\"0\",\"sort\":\"0\",\"status\":\"on\",\"_token\":\"KZ5cp3PdRvI1Bjr6hOWm7b5yE6efbWhOU04ixXho\"}', '2022-01-14 07:05:57', '2022-01-14 07:05:57'),
(650, 1, 'sc_admin/product', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2022-01-14 07:05:58', '2022-01-14 07:05:58'),
(651, 1, 'sc_admin/product/edit/17', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2022-01-14 07:06:32', '2022-01-14 07:06:32'),
(652, 1, 'sc_admin/uploads', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"type\":\"product\"}', '2022-01-14 07:07:28', '2022-01-14 07:07:28'),
(653, 1, 'sc_admin/uploads/folders', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"working_dir\":null,\"type\":\"product\",\"_\":\"1642144049035\"}', '2022-01-14 07:07:29', '2022-01-14 07:07:29'),
(654, 1, 'sc_admin/uploads/errors', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"working_dir\":null,\"type\":\"product\",\"_\":\"1642144049036\"}', '2022-01-14 07:07:30', '2022-01-14 07:07:30'),
(655, 1, 'sc_admin/uploads/jsonitems', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"working_dir\":null,\"type\":\"product\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1642144049037\"}', '2022-01-14 07:07:31', '2022-01-14 07:07:31'),
(656, 1, 'sc_admin/uploads', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"type\":\"product\"}', '2022-01-14 07:07:41', '2022-01-14 07:07:41'),
(657, 1, 'sc_admin/uploads/folders', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"working_dir\":null,\"type\":\"product\",\"_\":\"1642144061781\"}', '2022-01-14 07:07:42', '2022-01-14 07:07:42'),
(658, 1, 'sc_admin/uploads/errors', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"working_dir\":null,\"type\":\"product\",\"_\":\"1642144061782\"}', '2022-01-14 07:07:42', '2022-01-14 07:07:42'),
(659, 1, 'sc_admin/uploads/jsonitems', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"working_dir\":null,\"type\":\"product\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1642144061783\"}', '2022-01-14 07:07:43', '2022-01-14 07:07:43'),
(660, 1, 'sc_admin/uploads', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"type\":\"product\"}', '2022-01-14 07:07:49', '2022-01-14 07:07:49'),
(661, 1, 'sc_admin/uploads/folders', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"working_dir\":null,\"type\":\"product\",\"_\":\"1642144070015\"}', '2022-01-14 07:07:50', '2022-01-14 07:07:50'),
(662, 1, 'sc_admin/uploads/errors', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"working_dir\":null,\"type\":\"product\",\"_\":\"1642144070016\"}', '2022-01-14 07:07:51', '2022-01-14 07:07:51'),
(663, 1, 'sc_admin/uploads/jsonitems', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"working_dir\":null,\"type\":\"product\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1642144070017\"}', '2022-01-14 07:07:51', '2022-01-14 07:07:51'),
(664, 1, 'sc_admin/uploads', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"type\":\"product\"}', '2022-01-14 07:07:53', '2022-01-14 07:07:53'),
(665, 1, 'sc_admin/uploads/folders', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"working_dir\":null,\"type\":\"product\",\"_\":\"1642144074378\"}', '2022-01-14 07:07:55', '2022-01-14 07:07:55'),
(666, 1, 'sc_admin/uploads/errors', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"working_dir\":null,\"type\":\"product\",\"_\":\"1642144074379\"}', '2022-01-14 07:07:55', '2022-01-14 07:07:55'),
(667, 1, 'sc_admin/uploads/jsonitems', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"working_dir\":null,\"type\":\"product\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1642144074380\"}', '2022-01-14 07:07:56', '2022-01-14 07:07:56'),
(668, 1, 'sc_admin/uploads', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"type\":\"product\"}', '2022-01-14 07:08:01', '2022-01-14 07:08:01'),
(669, 1, 'sc_admin/uploads/folders', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"working_dir\":null,\"type\":\"product\",\"_\":\"1642144081772\"}', '2022-01-14 07:08:02', '2022-01-14 07:08:02'),
(670, 1, 'sc_admin/uploads/errors', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"working_dir\":null,\"type\":\"product\",\"_\":\"1642144081773\"}', '2022-01-14 07:08:02', '2022-01-14 07:08:02'),
(671, 1, 'sc_admin/uploads/jsonitems', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"working_dir\":null,\"type\":\"product\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1642144081774\"}', '2022-01-14 07:08:03', '2022-01-14 07:08:03'),
(672, 1, 'sc_admin/product/edit/17', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"descriptions\":{\"en\":{\"name\":\"N\\u01b0\\u1edbc Hoa Calvin Klein One EDT 200ml\",\"keyword\":null,\"description\":null,\"content\":\"A\"},\"vi\":{\"name\":\"N\\u01b0\\u1edbc Hoa Calvin Klein One EDT 200ml\",\"keyword\":null,\"description\":null,\"content\":\"<p><strong>N\\u01b0\\u1edbc Hoa Calvin Klein One EDT&nbsp;&nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;<\\/strong><\\/p>\\r\\n\\r\\n<p>T\\u1eadp \\u0111o&agrave;n&nbsp;<strong>Calvin Klein<\\/strong>&nbsp;\\u0111\\u01b0\\u1ee3c th&agrave;nh l\\u1eadp v&agrave;o cu\\u1ed1i nh\\u1eefng n\\u0103m 1960, l&agrave; m\\u1ed9t trong nh\\u1eefng th\\u01b0\\u01a1ng hi\\u1ec7u th\\u1eddi trang h&agrave;ng \\u0111\\u1ea7u th\\u1ebf gi\\u1edbi \\u0111\\u01b0\\u1ee3c r\\u1ea5t nhi\\u1ec1u ng\\u01b0\\u1eddi y&ecirc;u th&iacute;ch v\\u1edbi nh\\u1eefng thi\\u1ebft k\\u1ebf mang phong c&aacute;ch \\u0111\\u01a1n gi\\u1ea3n, c\\u1ed5 \\u0111i\\u1ec3n. C&ugrave;ng v\\u1edbi danh ti\\u1ebfng \\u0111&oacute;,&nbsp;c&aacute;c d&ograve;ng n\\u01b0\\u1edbc hoa c\\u1ee7a&nbsp;<strong>Calvin Klein<\\/strong>&nbsp;c\\u0169ng \\u0111&atilde; li&ecirc;n t\\u1ee5c mang v\\u1ec1 nhi\\u1ec1u gi\\u1ea3i th\\u01b0\\u1edfng danh gi&aacute;.&nbsp;H\\u01b0\\u01a1ng th\\u01a1m h\\u1ea5p d\\u1eabn c\\u1ee7a n\\u01b0\\u1edbc hoa&nbsp;<strong>Calvin Klein<\\/strong>&nbsp;mang \\u0111\\u1ebfn m\\u1ed9t xu h\\u01b0\\u1edbng ho&agrave;n to&agrave;n m\\u1edbi, d&ugrave; \\u0111\\u01a1n gi\\u1ea3n nh\\u01b0ng v\\u1eabn tr\\u1edf th&agrave;nh bi\\u1ec3u t\\u01b0\\u1ee3ng th\\u1eddi trang v\\u1ec1 c\\u1ea3 ki\\u1ec3u d&aacute;ng l\\u1eabn m&ugrave;i h\\u01b0\\u01a1ng. Mang \\u0111\\u1ebfn cho ch&uacute;ng ta nh\\u1eefng h\\u01b0\\u01a1ng th\\u01a1m ph&ugrave; h\\u1ee3p cho c\\u1ea3 2 ph&aacute;i,&nbsp;<strong>Calvin Klein<\\/strong>&nbsp;\\u0111&atilde; ch\\u1ee9ng t\\u1ecf \\u0111\\u01b0\\u1ee3c v\\u1ecb tr&iacute; ti&ecirc;n phong c\\u1ee7a m&igrave;nh trong l\\u0129nh v\\u1ef1c n&agrave;y. \\u0110\\u1ebfn nay, h&atilde;ng&nbsp;<strong>Calvin Klein<\\/strong>&nbsp;\\u0111&atilde; c&oacute; h\\u01a1n 100 lo\\u1ea1i n\\u01b0\\u1edbc hoa.<\\/p>\\r\\n\\r\\n<p>&nbsp;<\\/p>\\r\\n\\r\\n<p><img alt=\\\"\\\" data-was-processed=\\\"true\\\" height=\\\"550\\\" src=\\\"https:\\/\\/media.hasaki.vn\\/wysiwyg\\/HaNguyen\\/nuoc-hoa-calvin-klein-one-edt-1.jpg\\\" width=\\\"550\\\" \\/><\\/p>\"}},\"category\":[\"18\",\"21\"],\"image\":\"\\/data\\/product\\/product_use.jpg\",\"sub_image\":[\"\\/data\\/product\\/lattafa-mazaaji-100ml-apa-de-parfum_8367043.jpg\",\"\\/data\\/product\\/giorgio-armani-acqua-di-gioia-orchard.vn-2.jpg\",\"\\/data\\/product\\/Narciso-Rodriguez-For-Her-EDP-100ML_t6av-n0-165x165.png\"],\"sku\":\"ALOKK1-AY\",\"alias\":\"demo-alias-name-product-17\",\"brand_id\":\"3\",\"supplier_id\":\"1\",\"cost\":\"10000\",\"price\":\"15000\",\"tax_id\":\"auto\",\"stock\":\"100\",\"weight_class\":null,\"weight\":\"0\",\"length_class\":null,\"length\":\"0\",\"height\":\"0\",\"width\":\"0\",\"property\":\"physical\",\"download_path\":null,\"date_available\":null,\"minimum\":\"5\",\"sort\":\"0\",\"status\":\"on\",\"_token\":\"KZ5cp3PdRvI1Bjr6hOWm7b5yE6efbWhOU04ixXho\"}', '2022-01-14 07:08:08', '2022-01-14 07:08:08'),
(673, 1, 'sc_admin/product', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2022-01-14 07:08:09', '2022-01-14 07:08:09'),
(674, 1, 'sc_admin/product/edit/17', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2022-01-14 07:08:15', '2022-01-14 07:08:15'),
(675, 1, 'sc_admin/product/edit/17', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"descriptions\":{\"en\":{\"name\":\"N\\u01b0\\u1edbc Hoa Calvin Klein One EDT 200ml\",\"keyword\":null,\"description\":null,\"content\":\"A\"},\"vi\":{\"name\":\"N\\u01b0\\u1edbc Hoa Calvin Klein One EDT 200ml\",\"keyword\":null,\"description\":null,\"content\":\"<p><strong>N\\u01b0\\u1edbc Hoa Calvin Klein One EDT&nbsp;&nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;<\\/strong><\\/p>\\r\\n\\r\\n<p>T\\u1eadp \\u0111o&agrave;n&nbsp;<strong>Calvin Klein<\\/strong>&nbsp;\\u0111\\u01b0\\u1ee3c th&agrave;nh l\\u1eadp v&agrave;o cu\\u1ed1i nh\\u1eefng n\\u0103m 1960, l&agrave; m\\u1ed9t trong nh\\u1eefng th\\u01b0\\u01a1ng hi\\u1ec7u th\\u1eddi trang h&agrave;ng \\u0111\\u1ea7u th\\u1ebf gi\\u1edbi \\u0111\\u01b0\\u1ee3c r\\u1ea5t nhi\\u1ec1u ng\\u01b0\\u1eddi y&ecirc;u th&iacute;ch v\\u1edbi nh\\u1eefng thi\\u1ebft k\\u1ebf mang phong c&aacute;ch \\u0111\\u01a1n gi\\u1ea3n, c\\u1ed5 \\u0111i\\u1ec3n. C&ugrave;ng v\\u1edbi danh ti\\u1ebfng \\u0111&oacute;,&nbsp;c&aacute;c d&ograve;ng n\\u01b0\\u1edbc hoa c\\u1ee7a&nbsp;<strong>Calvin Klein<\\/strong>&nbsp;c\\u0169ng \\u0111&atilde; li&ecirc;n t\\u1ee5c mang v\\u1ec1 nhi\\u1ec1u gi\\u1ea3i th\\u01b0\\u1edfng danh gi&aacute;.&nbsp;H\\u01b0\\u01a1ng th\\u01a1m h\\u1ea5p d\\u1eabn c\\u1ee7a n\\u01b0\\u1edbc hoa&nbsp;<strong>Calvin Klein<\\/strong>&nbsp;mang \\u0111\\u1ebfn m\\u1ed9t xu h\\u01b0\\u1edbng ho&agrave;n to&agrave;n m\\u1edbi, d&ugrave; \\u0111\\u01a1n gi\\u1ea3n nh\\u01b0ng v\\u1eabn tr\\u1edf th&agrave;nh bi\\u1ec3u t\\u01b0\\u1ee3ng th\\u1eddi trang v\\u1ec1 c\\u1ea3 ki\\u1ec3u d&aacute;ng l\\u1eabn m&ugrave;i h\\u01b0\\u01a1ng. Mang \\u0111\\u1ebfn cho ch&uacute;ng ta nh\\u1eefng h\\u01b0\\u01a1ng th\\u01a1m ph&ugrave; h\\u1ee3p cho c\\u1ea3 2 ph&aacute;i,&nbsp;<strong>Calvin Klein<\\/strong>&nbsp;\\u0111&atilde; ch\\u1ee9ng t\\u1ecf \\u0111\\u01b0\\u1ee3c v\\u1ecb tr&iacute; ti&ecirc;n phong c\\u1ee7a m&igrave;nh trong l\\u0129nh v\\u1ef1c n&agrave;y. \\u0110\\u1ebfn nay, h&atilde;ng&nbsp;<strong>Calvin Klein<\\/strong>&nbsp;\\u0111&atilde; c&oacute; h\\u01a1n 100 lo\\u1ea1i n\\u01b0\\u1edbc hoa.<\\/p>\\r\\n\\r\\n<p>&nbsp;<\\/p>\\r\\n\\r\\n<p><img alt=\\\"\\\" data-was-processed=\\\"true\\\" height=\\\"550\\\" src=\\\"https:\\/\\/media.hasaki.vn\\/wysiwyg\\/HaNguyen\\/nuoc-hoa-calvin-klein-one-edt-1.jpg\\\" width=\\\"550\\\" \\/><\\/p>\"}},\"category\":[\"18\",\"21\"],\"image\":\"\\/data\\/product\\/product_use.jpg\",\"sub_image\":[\"\\/data\\/product\\/lattafa-mazaaji-100ml-apa-de-parfum_8367043.jpg\",\"\\/data\\/product\\/giorgio-armani-acqua-di-gioia-orchard.vn-2.jpg\",\"\\/data\\/product\\/Narciso-Rodriguez-For-Her-EDP-100ML_t6av-n0-165x165.png\"],\"sku\":\"ALOKK1-AY\",\"alias\":null,\"brand_id\":\"3\",\"supplier_id\":\"1\",\"cost\":\"10000\",\"price\":\"1665000\",\"tax_id\":\"0\",\"price_promotion\":\"1480000\",\"price_promotion_start\":null,\"price_promotion_end\":null,\"stock\":\"100\",\"weight_class\":null,\"weight\":\"0\",\"length_class\":null,\"length\":\"0\",\"height\":\"0\",\"width\":\"0\",\"property\":\"physical\",\"download_path\":null,\"date_available\":null,\"minimum\":\"5\",\"sort\":\"0\",\"status\":\"on\",\"_token\":\"KZ5cp3PdRvI1Bjr6hOWm7b5yE6efbWhOU04ixXho\"}', '2022-01-14 07:09:16', '2022-01-14 07:09:16'),
(676, 1, 'sc_admin/product', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2022-01-14 07:09:18', '2022-01-14 07:09:18'),
(677, 1, 'sc_admin/product/edit/17', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2022-01-14 07:09:58', '2022-01-14 07:09:58'),
(678, 1, 'sc_admin/uploads', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"type\":\"product\"}', '2022-01-14 07:10:07', '2022-01-14 07:10:07'),
(679, 1, 'sc_admin/uploads/folders', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"working_dir\":null,\"type\":\"product\",\"_\":\"1642144207832\"}', '2022-01-14 07:10:08', '2022-01-14 07:10:08'),
(680, 1, 'sc_admin/uploads/errors', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"working_dir\":null,\"type\":\"product\",\"_\":\"1642144207833\"}', '2022-01-14 07:10:09', '2022-01-14 07:10:09'),
(681, 1, 'sc_admin/uploads/jsonitems', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"working_dir\":null,\"type\":\"product\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1642144207834\"}', '2022-01-14 07:10:09', '2022-01-14 07:10:09'),
(682, 1, 'sc_admin/product/edit/17', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"descriptions\":{\"en\":{\"name\":\"N\\u01b0\\u1edbc Hoa Calvin Klein One EDT 200ml\",\"keyword\":null,\"description\":null,\"content\":\"A\"},\"vi\":{\"name\":\"N\\u01b0\\u1edbc Hoa Calvin Klein One EDT 200ml\",\"keyword\":null,\"description\":null,\"content\":\"<p><strong>N\\u01b0\\u1edbc Hoa Calvin Klein One EDT&nbsp;&nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;<\\/strong><\\/p>\\r\\n\\r\\n<p>T\\u1eadp \\u0111o&agrave;n&nbsp;<strong>Calvin Klein<\\/strong>&nbsp;\\u0111\\u01b0\\u1ee3c th&agrave;nh l\\u1eadp v&agrave;o cu\\u1ed1i nh\\u1eefng n\\u0103m 1960, l&agrave; m\\u1ed9t trong nh\\u1eefng th\\u01b0\\u01a1ng hi\\u1ec7u th\\u1eddi trang h&agrave;ng \\u0111\\u1ea7u th\\u1ebf gi\\u1edbi \\u0111\\u01b0\\u1ee3c r\\u1ea5t nhi\\u1ec1u ng\\u01b0\\u1eddi y&ecirc;u th&iacute;ch v\\u1edbi nh\\u1eefng thi\\u1ebft k\\u1ebf mang phong c&aacute;ch \\u0111\\u01a1n gi\\u1ea3n, c\\u1ed5 \\u0111i\\u1ec3n. C&ugrave;ng v\\u1edbi danh ti\\u1ebfng \\u0111&oacute;,&nbsp;c&aacute;c d&ograve;ng n\\u01b0\\u1edbc hoa c\\u1ee7a&nbsp;<strong>Calvin Klein<\\/strong>&nbsp;c\\u0169ng \\u0111&atilde; li&ecirc;n t\\u1ee5c mang v\\u1ec1 nhi\\u1ec1u gi\\u1ea3i th\\u01b0\\u1edfng danh gi&aacute;.&nbsp;H\\u01b0\\u01a1ng th\\u01a1m h\\u1ea5p d\\u1eabn c\\u1ee7a n\\u01b0\\u1edbc hoa&nbsp;<strong>Calvin Klein<\\/strong>&nbsp;mang \\u0111\\u1ebfn m\\u1ed9t xu h\\u01b0\\u1edbng ho&agrave;n to&agrave;n m\\u1edbi, d&ugrave; \\u0111\\u01a1n gi\\u1ea3n nh\\u01b0ng v\\u1eabn tr\\u1edf th&agrave;nh bi\\u1ec3u t\\u01b0\\u1ee3ng th\\u1eddi trang v\\u1ec1 c\\u1ea3 ki\\u1ec3u d&aacute;ng l\\u1eabn m&ugrave;i h\\u01b0\\u01a1ng. Mang \\u0111\\u1ebfn cho ch&uacute;ng ta nh\\u1eefng h\\u01b0\\u01a1ng th\\u01a1m ph&ugrave; h\\u1ee3p cho c\\u1ea3 2 ph&aacute;i,&nbsp;<strong>Calvin Klein<\\/strong>&nbsp;\\u0111&atilde; ch\\u1ee9ng t\\u1ecf \\u0111\\u01b0\\u1ee3c v\\u1ecb tr&iacute; ti&ecirc;n phong c\\u1ee7a m&igrave;nh trong l\\u0129nh v\\u1ef1c n&agrave;y. \\u0110\\u1ebfn nay, h&atilde;ng&nbsp;<strong>Calvin Klein<\\/strong>&nbsp;\\u0111&atilde; c&oacute; h\\u01a1n 100 lo\\u1ea1i n\\u01b0\\u1edbc hoa.<\\/p>\\r\\n\\r\\n<p>&nbsp;<\\/p>\\r\\n\\r\\n<p><img alt=\\\"\\\" data-was-processed=\\\"true\\\" height=\\\"550\\\" src=\\\"https:\\/\\/media.hasaki.vn\\/wysiwyg\\/HaNguyen\\/nuoc-hoa-calvin-klein-one-edt-1.jpg\\\" width=\\\"550\\\" \\/><\\/p>\"}},\"category\":[\"18\",\"21\"],\"image\":\"\\/data\\/product\\/giorgio-armani-acqua-di-gioia-orchard.vn-2.jpg\",\"sub_image\":[\"\\/data\\/product\\/lattafa-mazaaji-100ml-apa-de-parfum_8367043.jpg\",\"\\/data\\/product\\/giorgio-armani-acqua-di-gioia-orchard.vn-2.jpg\",\"\\/data\\/product\\/Narciso-Rodriguez-For-Her-EDP-100ML_t6av-n0-165x165.png\"],\"sku\":\"ALOKK1-AY\",\"alias\":\"nuoc-hoa-calvin-klein-one-edt-200ml\",\"brand_id\":\"3\",\"supplier_id\":\"1\",\"cost\":\"10000\",\"price\":\"1665000\",\"tax_id\":\"0\",\"price_promotion\":\"1480000\",\"price_promotion_start\":null,\"price_promotion_end\":null,\"stock\":\"100\",\"weight_class\":null,\"weight\":\"0\",\"length_class\":null,\"length\":\"0\",\"height\":\"0\",\"width\":\"0\",\"property\":\"physical\",\"download_path\":null,\"date_available\":null,\"minimum\":\"5\",\"sort\":\"0\",\"status\":\"on\",\"_token\":\"KZ5cp3PdRvI1Bjr6hOWm7b5yE6efbWhOU04ixXho\"}', '2022-01-14 07:10:16', '2022-01-14 07:10:16'),
(683, 1, 'sc_admin/product', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2022-01-14 07:10:17', '2022-01-14 07:10:17'),
(684, 1, 'sc_admin/product/edit/17', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2022-01-14 07:10:37', '2022-01-14 07:10:37'),
(685, 1, 'sc_admin/uploads', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"type\":\"product\"}', '2022-01-14 07:10:47', '2022-01-14 07:10:47'),
(686, 1, 'sc_admin/uploads/folders', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"working_dir\":null,\"type\":\"product\",\"_\":\"1642144247875\"}', '2022-01-14 07:10:48', '2022-01-14 07:10:48'),
(687, 1, 'sc_admin/uploads/errors', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"working_dir\":null,\"type\":\"product\",\"_\":\"1642144247876\"}', '2022-01-14 07:10:48', '2022-01-14 07:10:48'),
(688, 1, 'sc_admin/uploads/jsonitems', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"working_dir\":null,\"type\":\"product\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1642144247877\"}', '2022-01-14 07:10:49', '2022-01-14 07:10:49'),
(689, 1, 'sc_admin/product/edit/17', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"descriptions\":{\"en\":{\"name\":\"N\\u01b0\\u1edbc Hoa Calvin Klein One EDT 200ml\",\"keyword\":null,\"description\":null,\"content\":\"A\"},\"vi\":{\"name\":\"N\\u01b0\\u1edbc Hoa Calvin Klein One EDT 200ml\",\"keyword\":null,\"description\":null,\"content\":\"<p><strong>N\\u01b0\\u1edbc Hoa Calvin Klein One EDT&nbsp;&nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;<\\/strong><\\/p>\\r\\n\\r\\n<p>T\\u1eadp \\u0111o&agrave;n&nbsp;<strong>Calvin Klein<\\/strong>&nbsp;\\u0111\\u01b0\\u1ee3c th&agrave;nh l\\u1eadp v&agrave;o cu\\u1ed1i nh\\u1eefng n\\u0103m 1960, l&agrave; m\\u1ed9t trong nh\\u1eefng th\\u01b0\\u01a1ng hi\\u1ec7u th\\u1eddi trang h&agrave;ng \\u0111\\u1ea7u th\\u1ebf gi\\u1edbi \\u0111\\u01b0\\u1ee3c r\\u1ea5t nhi\\u1ec1u ng\\u01b0\\u1eddi y&ecirc;u th&iacute;ch v\\u1edbi nh\\u1eefng thi\\u1ebft k\\u1ebf mang phong c&aacute;ch \\u0111\\u01a1n gi\\u1ea3n, c\\u1ed5 \\u0111i\\u1ec3n. C&ugrave;ng v\\u1edbi danh ti\\u1ebfng \\u0111&oacute;,&nbsp;c&aacute;c d&ograve;ng n\\u01b0\\u1edbc hoa c\\u1ee7a&nbsp;<strong>Calvin Klein<\\/strong>&nbsp;c\\u0169ng \\u0111&atilde; li&ecirc;n t\\u1ee5c mang v\\u1ec1 nhi\\u1ec1u gi\\u1ea3i th\\u01b0\\u1edfng danh gi&aacute;.&nbsp;H\\u01b0\\u01a1ng th\\u01a1m h\\u1ea5p d\\u1eabn c\\u1ee7a n\\u01b0\\u1edbc hoa&nbsp;<strong>Calvin Klein<\\/strong>&nbsp;mang \\u0111\\u1ebfn m\\u1ed9t xu h\\u01b0\\u1edbng ho&agrave;n to&agrave;n m\\u1edbi, d&ugrave; \\u0111\\u01a1n gi\\u1ea3n nh\\u01b0ng v\\u1eabn tr\\u1edf th&agrave;nh bi\\u1ec3u t\\u01b0\\u1ee3ng th\\u1eddi trang v\\u1ec1 c\\u1ea3 ki\\u1ec3u d&aacute;ng l\\u1eabn m&ugrave;i h\\u01b0\\u01a1ng. Mang \\u0111\\u1ebfn cho ch&uacute;ng ta nh\\u1eefng h\\u01b0\\u01a1ng th\\u01a1m ph&ugrave; h\\u1ee3p cho c\\u1ea3 2 ph&aacute;i,&nbsp;<strong>Calvin Klein<\\/strong>&nbsp;\\u0111&atilde; ch\\u1ee9ng t\\u1ecf \\u0111\\u01b0\\u1ee3c v\\u1ecb tr&iacute; ti&ecirc;n phong c\\u1ee7a m&igrave;nh trong l\\u0129nh v\\u1ef1c n&agrave;y. \\u0110\\u1ebfn nay, h&atilde;ng&nbsp;<strong>Calvin Klein<\\/strong>&nbsp;\\u0111&atilde; c&oacute; h\\u01a1n 100 lo\\u1ea1i n\\u01b0\\u1edbc hoa.<\\/p>\\r\\n\\r\\n<p>&nbsp;<\\/p>\\r\\n\\r\\n<p><img alt=\\\"\\\" data-was-processed=\\\"true\\\" height=\\\"550\\\" src=\\\"https:\\/\\/media.hasaki.vn\\/wysiwyg\\/HaNguyen\\/nuoc-hoa-calvin-klein-one-edt-1.jpg\\\" width=\\\"550\\\" \\/><\\/p>\"}},\"category\":[\"18\",\"21\"],\"image\":\"\\/data\\/product\\/Narciso-Rodriguez-For-Her-EDP-100ML_t6av-n0-165x165.png\",\"sub_image\":[\"\\/data\\/product\\/lattafa-mazaaji-100ml-apa-de-parfum_8367043.jpg\",\"\\/data\\/product\\/giorgio-armani-acqua-di-gioia-orchard.vn-2.jpg\",\"\\/data\\/product\\/Narciso-Rodriguez-For-Her-EDP-100ML_t6av-n0-165x165.png\"],\"sku\":\"ALOKK1-AY\",\"alias\":\"nuoc-hoa-calvin-klein-one-edt-200ml\",\"brand_id\":\"3\",\"supplier_id\":\"1\",\"cost\":\"10000\",\"price\":\"1665000\",\"tax_id\":\"0\",\"price_promotion\":\"1480000\",\"price_promotion_start\":null,\"price_promotion_end\":null,\"stock\":\"100\",\"weight_class\":null,\"weight\":\"0\",\"length_class\":null,\"length\":\"0\",\"height\":\"0\",\"width\":\"0\",\"property\":\"physical\",\"download_path\":null,\"date_available\":null,\"minimum\":\"5\",\"sort\":\"0\",\"status\":\"on\",\"_token\":\"KZ5cp3PdRvI1Bjr6hOWm7b5yE6efbWhOU04ixXho\"}', '2022-01-14 07:10:54', '2022-01-14 07:10:54'),
(690, 1, 'sc_admin/product', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2022-01-14 07:10:55', '2022-01-14 07:10:55'),
(691, 1, 'sc_admin/product/edit/17', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2022-01-14 07:11:06', '2022-01-14 07:11:06'),
(692, 1, 'sc_admin/product', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2022-01-14 07:11:18', '2022-01-14 07:11:18'),
(693, 1, 'sc_admin/product/edit/17', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2022-01-14 07:11:49', '2022-01-14 07:11:49'),
(694, 1, 'sc_admin/uploads', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"type\":\"product\"}', '2022-01-14 07:12:04', '2022-01-14 07:12:04'),
(695, 1, 'sc_admin/uploads/folders', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"working_dir\":null,\"type\":\"product\",\"_\":\"1642144325076\"}', '2022-01-14 07:12:05', '2022-01-14 07:12:05'),
(696, 1, 'sc_admin/uploads/errors', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"working_dir\":null,\"type\":\"product\",\"_\":\"1642144325077\"}', '2022-01-14 07:12:05', '2022-01-14 07:12:05'),
(697, 1, 'sc_admin/uploads/jsonitems', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"working_dir\":null,\"type\":\"product\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1642144325078\"}', '2022-01-14 07:12:06', '2022-01-14 07:12:06'),
(698, 1, 'sc_admin/product/edit/17', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"descriptions\":{\"en\":{\"name\":\"N\\u01b0\\u1edbc Hoa Calvin Klein One EDT 200ml\",\"keyword\":null,\"description\":null,\"content\":\"A\"},\"vi\":{\"name\":\"N\\u01b0\\u1edbc Hoa Calvin Klein One EDT 200ml\",\"keyword\":null,\"description\":null,\"content\":\"<p><strong>N\\u01b0\\u1edbc Hoa Calvin Klein One EDT&nbsp;&nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;<\\/strong><\\/p>\\r\\n\\r\\n<p>T\\u1eadp \\u0111o&agrave;n&nbsp;<strong>Calvin Klein<\\/strong>&nbsp;\\u0111\\u01b0\\u1ee3c th&agrave;nh l\\u1eadp v&agrave;o cu\\u1ed1i nh\\u1eefng n\\u0103m 1960, l&agrave; m\\u1ed9t trong nh\\u1eefng th\\u01b0\\u01a1ng hi\\u1ec7u th\\u1eddi trang h&agrave;ng \\u0111\\u1ea7u th\\u1ebf gi\\u1edbi \\u0111\\u01b0\\u1ee3c r\\u1ea5t nhi\\u1ec1u ng\\u01b0\\u1eddi y&ecirc;u th&iacute;ch v\\u1edbi nh\\u1eefng thi\\u1ebft k\\u1ebf mang phong c&aacute;ch \\u0111\\u01a1n gi\\u1ea3n, c\\u1ed5 \\u0111i\\u1ec3n. C&ugrave;ng v\\u1edbi danh ti\\u1ebfng \\u0111&oacute;,&nbsp;c&aacute;c d&ograve;ng n\\u01b0\\u1edbc hoa c\\u1ee7a&nbsp;<strong>Calvin Klein<\\/strong>&nbsp;c\\u0169ng \\u0111&atilde; li&ecirc;n t\\u1ee5c mang v\\u1ec1 nhi\\u1ec1u gi\\u1ea3i th\\u01b0\\u1edfng danh gi&aacute;.&nbsp;H\\u01b0\\u01a1ng th\\u01a1m h\\u1ea5p d\\u1eabn c\\u1ee7a n\\u01b0\\u1edbc hoa&nbsp;<strong>Calvin Klein<\\/strong>&nbsp;mang \\u0111\\u1ebfn m\\u1ed9t xu h\\u01b0\\u1edbng ho&agrave;n to&agrave;n m\\u1edbi, d&ugrave; \\u0111\\u01a1n gi\\u1ea3n nh\\u01b0ng v\\u1eabn tr\\u1edf th&agrave;nh bi\\u1ec3u t\\u01b0\\u1ee3ng th\\u1eddi trang v\\u1ec1 c\\u1ea3 ki\\u1ec3u d&aacute;ng l\\u1eabn m&ugrave;i h\\u01b0\\u01a1ng. Mang \\u0111\\u1ebfn cho ch&uacute;ng ta nh\\u1eefng h\\u01b0\\u01a1ng th\\u01a1m ph&ugrave; h\\u1ee3p cho c\\u1ea3 2 ph&aacute;i,&nbsp;<strong>Calvin Klein<\\/strong>&nbsp;\\u0111&atilde; ch\\u1ee9ng t\\u1ecf \\u0111\\u01b0\\u1ee3c v\\u1ecb tr&iacute; ti&ecirc;n phong c\\u1ee7a m&igrave;nh trong l\\u0129nh v\\u1ef1c n&agrave;y. \\u0110\\u1ebfn nay, h&atilde;ng&nbsp;<strong>Calvin Klein<\\/strong>&nbsp;\\u0111&atilde; c&oacute; h\\u01a1n 100 lo\\u1ea1i n\\u01b0\\u1edbc hoa.<\\/p>\\r\\n\\r\\n<p>&nbsp;<\\/p>\\r\\n\\r\\n<p><img alt=\\\"\\\" data-was-processed=\\\"true\\\" height=\\\"550\\\" src=\\\"https:\\/\\/media.hasaki.vn\\/wysiwyg\\/HaNguyen\\/nuoc-hoa-calvin-klein-one-edt-1.jpg\\\" width=\\\"550\\\" \\/><\\/p>\"}},\"category\":[\"18\",\"21\"],\"image\":\"\\/data\\/product\\/Narciso-Rodriguez-For-Her-EDP-100ML_t6av-n0-165x165.png\",\"sub_image\":[\"\\/data\\/product\\/lattafa-mazaaji-100ml-apa-de-parfum_8367043.jpg\",\"\\/data\\/product\\/giorgio-armani-acqua-di-gioia-orchard.vn-2.jpg\",\"\\/data\\/product\\/Narciso-Rodriguez-For-Her-EDP-100ML_t6av-n0-165x165.png\"],\"sku\":\"ALOKK1-AY\",\"alias\":\"nuoc-hoa-calvin-klein-one-edt-200ml\",\"brand_id\":\"3\",\"supplier_id\":\"1\",\"cost\":\"10000\",\"price\":\"1665000\",\"tax_id\":\"0\",\"price_promotion\":\"1480000\",\"price_promotion_start\":null,\"price_promotion_end\":null,\"stock\":\"100\",\"weight_class\":null,\"weight\":\"0\",\"length_class\":null,\"length\":\"0\",\"height\":\"0\",\"width\":\"0\",\"property\":\"physical\",\"download_path\":null,\"date_available\":null,\"minimum\":\"5\",\"sort\":\"0\",\"status\":\"on\",\"_token\":\"KZ5cp3PdRvI1Bjr6hOWm7b5yE6efbWhOU04ixXho\"}', '2022-01-14 07:12:11', '2022-01-14 07:12:11'),
(699, 1, 'sc_admin/product', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2022-01-14 07:12:13', '2022-01-14 07:12:13'),
(700, 1, 'sc_admin/product/edit/17', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2022-01-14 07:12:25', '2022-01-14 07:12:25'),
(701, 1, 'sc_admin/uploads', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"type\":\"product\"}', '2022-01-14 07:12:36', '2022-01-14 07:12:36'),
(702, 1, 'sc_admin/uploads/folders', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"working_dir\":null,\"type\":\"product\",\"_\":\"1642144356638\"}', '2022-01-14 07:12:37', '2022-01-14 07:12:37'),
(703, 1, 'sc_admin/uploads/errors', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"working_dir\":null,\"type\":\"product\",\"_\":\"1642144356639\"}', '2022-01-14 07:12:38', '2022-01-14 07:12:38'),
(704, 1, 'sc_admin/uploads/jsonitems', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"working_dir\":null,\"type\":\"product\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1642144356640\"}', '2022-01-14 07:12:38', '2022-01-14 07:12:38'),
(705, 1, 'sc_admin/uploads/jsonitems', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"product\",\"show_list\":\"grid\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1642144356641\"}', '2022-01-14 07:12:56', '2022-01-14 07:12:56'),
(706, 1, 'sc_admin/uploads/upload', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"product\",\"_token\":\"KZ5cp3PdRvI1Bjr6hOWm7b5yE6efbWhOU04ixXho\"}', '2022-01-14 07:13:10', '2022-01-14 07:13:10'),
(707, 1, 'sc_admin/uploads/folders', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"product\",\"_\":\"1642144356642\"}', '2022-01-14 07:13:11', '2022-01-14 07:13:11'),
(708, 1, 'sc_admin/uploads/jsonitems', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"product\",\"show_list\":\"grid\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1642144356643\"}', '2022-01-14 07:13:12', '2022-01-14 07:13:12'),
(709, 1, 'sc_admin/uploads/upload', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"product\",\"_token\":\"KZ5cp3PdRvI1Bjr6hOWm7b5yE6efbWhOU04ixXho\"}', '2022-01-14 07:13:23', '2022-01-14 07:13:23'),
(710, 1, 'sc_admin/uploads', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"type\":\"product\"}', '2022-01-14 07:13:28', '2022-01-14 07:13:28'),
(711, 1, 'sc_admin/uploads/folders', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"working_dir\":null,\"type\":\"product\",\"_\":\"1642144408942\"}', '2022-01-14 07:13:29', '2022-01-14 07:13:29'),
(712, 1, 'sc_admin/uploads/errors', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"working_dir\":null,\"type\":\"product\",\"_\":\"1642144408943\"}', '2022-01-14 07:13:30', '2022-01-14 07:13:30'),
(713, 1, 'sc_admin/uploads/jsonitems', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"working_dir\":null,\"type\":\"product\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1642144408944\"}', '2022-01-14 07:13:31', '2022-01-14 07:13:31'),
(714, 1, 'sc_admin/uploads/jsonitems', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"product\",\"show_list\":\"grid\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1642144408945\"}', '2022-01-14 07:13:35', '2022-01-14 07:13:35'),
(715, 1, 'sc_admin/uploads/jsonitems', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"product\",\"show_list\":\"list\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1642144408946\"}', '2022-01-14 07:13:39', '2022-01-14 07:13:39'),
(716, 1, 'sc_admin/uploads/delete', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"product\",\"items\":[\"product-1.png\",\"product-10.png\",\"product-12.png\",\"product-11.png\",\"product-13.png\",\"product-14.png\",\"product-15.png\"],\"_\":\"1642144408947\"}', '2022-01-14 07:13:57', '2022-01-14 07:13:57'),
(717, 1, 'sc_admin/uploads/folders', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"product\",\"_\":\"1642144408948\"}', '2022-01-14 07:13:57', '2022-01-14 07:13:57'),
(718, 1, 'sc_admin/uploads/jsonitems', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"product\",\"show_list\":\"list\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1642144408949\"}', '2022-01-14 07:13:58', '2022-01-14 07:13:58'),
(719, 1, 'sc_admin/uploads/jsonitems', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"product\",\"show_list\":\"grid\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1642144408950\"}', '2022-01-14 07:14:03', '2022-01-14 07:14:03'),
(720, 1, 'sc_admin/uploads/upload', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"product\",\"_token\":\"KZ5cp3PdRvI1Bjr6hOWm7b5yE6efbWhOU04ixXho\"}', '2022-01-14 07:14:12', '2022-01-14 07:14:12');
INSERT INTO `sc_admin_log` (`id`, `user_id`, `path`, `method`, `ip`, `user_agent`, `input`, `created_at`, `updated_at`) VALUES
(721, 1, 'sc_admin/product/edit/17', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"descriptions\":{\"en\":{\"name\":\"N\\u01b0\\u1edbc Hoa Calvin Klein One EDT 200ml\",\"keyword\":null,\"description\":null,\"content\":\"A\"},\"vi\":{\"name\":\"N\\u01b0\\u1edbc Hoa Calvin Klein One EDT 200ml\",\"keyword\":null,\"description\":null,\"content\":\"<p><strong>N\\u01b0\\u1edbc Hoa Calvin Klein One EDT&nbsp;&nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;<\\/strong><\\/p>\\r\\n\\r\\n<p>T\\u1eadp \\u0111o&agrave;n&nbsp;<strong>Calvin Klein<\\/strong>&nbsp;\\u0111\\u01b0\\u1ee3c th&agrave;nh l\\u1eadp v&agrave;o cu\\u1ed1i nh\\u1eefng n\\u0103m 1960, l&agrave; m\\u1ed9t trong nh\\u1eefng th\\u01b0\\u01a1ng hi\\u1ec7u th\\u1eddi trang h&agrave;ng \\u0111\\u1ea7u th\\u1ebf gi\\u1edbi \\u0111\\u01b0\\u1ee3c r\\u1ea5t nhi\\u1ec1u ng\\u01b0\\u1eddi y&ecirc;u th&iacute;ch v\\u1edbi nh\\u1eefng thi\\u1ebft k\\u1ebf mang phong c&aacute;ch \\u0111\\u01a1n gi\\u1ea3n, c\\u1ed5 \\u0111i\\u1ec3n. C&ugrave;ng v\\u1edbi danh ti\\u1ebfng \\u0111&oacute;,&nbsp;c&aacute;c d&ograve;ng n\\u01b0\\u1edbc hoa c\\u1ee7a&nbsp;<strong>Calvin Klein<\\/strong>&nbsp;c\\u0169ng \\u0111&atilde; li&ecirc;n t\\u1ee5c mang v\\u1ec1 nhi\\u1ec1u gi\\u1ea3i th\\u01b0\\u1edfng danh gi&aacute;.&nbsp;H\\u01b0\\u01a1ng th\\u01a1m h\\u1ea5p d\\u1eabn c\\u1ee7a n\\u01b0\\u1edbc hoa&nbsp;<strong>Calvin Klein<\\/strong>&nbsp;mang \\u0111\\u1ebfn m\\u1ed9t xu h\\u01b0\\u1edbng ho&agrave;n to&agrave;n m\\u1edbi, d&ugrave; \\u0111\\u01a1n gi\\u1ea3n nh\\u01b0ng v\\u1eabn tr\\u1edf th&agrave;nh bi\\u1ec3u t\\u01b0\\u1ee3ng th\\u1eddi trang v\\u1ec1 c\\u1ea3 ki\\u1ec3u d&aacute;ng l\\u1eabn m&ugrave;i h\\u01b0\\u01a1ng. Mang \\u0111\\u1ebfn cho ch&uacute;ng ta nh\\u1eefng h\\u01b0\\u01a1ng th\\u01a1m ph&ugrave; h\\u1ee3p cho c\\u1ea3 2 ph&aacute;i,&nbsp;<strong>Calvin Klein<\\/strong>&nbsp;\\u0111&atilde; ch\\u1ee9ng t\\u1ecf \\u0111\\u01b0\\u1ee3c v\\u1ecb tr&iacute; ti&ecirc;n phong c\\u1ee7a m&igrave;nh trong l\\u0129nh v\\u1ef1c n&agrave;y. \\u0110\\u1ebfn nay, h&atilde;ng&nbsp;<strong>Calvin Klein<\\/strong>&nbsp;\\u0111&atilde; c&oacute; h\\u01a1n 100 lo\\u1ea1i n\\u01b0\\u1edbc hoa.<\\/p>\\r\\n\\r\\n<p>&nbsp;<\\/p>\\r\\n\\r\\n<p><img alt=\\\"\\\" data-was-processed=\\\"true\\\" height=\\\"550\\\" src=\\\"https:\\/\\/media.hasaki.vn\\/wysiwyg\\/HaNguyen\\/nuoc-hoa-calvin-klein-one-edt-1.jpg\\\" width=\\\"550\\\" \\/><\\/p>\"}},\"category\":[\"18\",\"21\"],\"image\":\"\\/data\\/product\\/product_use.jpg\",\"sub_image\":[\"\\/data\\/product\\/lattafa-mazaaji-100ml-apa-de-parfum_8367043.jpg\",\"\\/data\\/product\\/giorgio-armani-acqua-di-gioia-orchard.vn-2.jpg\",\"\\/data\\/product\\/Narciso-Rodriguez-For-Her-EDP-100ML_t6av-n0-165x165.png\"],\"sku\":\"ALOKK1-AY\",\"alias\":\"nuoc-hoa-calvin-klein-one-edt-200ml\",\"brand_id\":\"3\",\"supplier_id\":\"1\",\"cost\":\"10000\",\"price\":\"1665000\",\"tax_id\":\"0\",\"price_promotion\":\"1480000\",\"price_promotion_start\":null,\"price_promotion_end\":null,\"stock\":\"100\",\"weight_class\":null,\"weight\":\"0\",\"length_class\":null,\"length\":\"0\",\"height\":\"0\",\"width\":\"0\",\"property\":\"physical\",\"download_path\":null,\"date_available\":null,\"minimum\":\"5\",\"sort\":\"0\",\"status\":\"on\",\"_token\":\"KZ5cp3PdRvI1Bjr6hOWm7b5yE6efbWhOU04ixXho\"}', '2022-01-14 07:14:18', '2022-01-14 07:14:18'),
(722, 1, 'sc_admin/product', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2022-01-14 07:14:20', '2022-01-14 07:14:20'),
(723, 1, 'sc_admin/product/edit/17', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2022-01-14 07:14:42', '2022-01-14 07:14:42'),
(724, 1, 'sc_admin/uploads', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"type\":\"product\"}', '2022-01-14 07:14:48', '2022-01-14 07:14:48'),
(725, 1, 'sc_admin/uploads/folders', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"working_dir\":null,\"type\":\"product\",\"_\":\"1642144488985\"}', '2022-01-14 07:14:49', '2022-01-14 07:14:49'),
(726, 1, 'sc_admin/uploads/errors', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"working_dir\":null,\"type\":\"product\",\"_\":\"1642144488986\"}', '2022-01-14 07:14:50', '2022-01-14 07:14:50'),
(727, 1, 'sc_admin/uploads/jsonitems', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"working_dir\":null,\"type\":\"product\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1642144488987\"}', '2022-01-14 07:14:50', '2022-01-14 07:14:50'),
(728, 1, 'sc_admin/product/edit/17', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"descriptions\":{\"en\":{\"name\":\"N\\u01b0\\u1edbc Hoa Calvin Klein One EDT 200ml\",\"keyword\":null,\"description\":null,\"content\":\"A\"},\"vi\":{\"name\":\"N\\u01b0\\u1edbc Hoa Calvin Klein One EDT 200ml\",\"keyword\":null,\"description\":null,\"content\":\"<p><strong>N\\u01b0\\u1edbc Hoa Calvin Klein One EDT&nbsp;&nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;<\\/strong><\\/p>\\r\\n\\r\\n<p>T\\u1eadp \\u0111o&agrave;n&nbsp;<strong>Calvin Klein<\\/strong>&nbsp;\\u0111\\u01b0\\u1ee3c th&agrave;nh l\\u1eadp v&agrave;o cu\\u1ed1i nh\\u1eefng n\\u0103m 1960, l&agrave; m\\u1ed9t trong nh\\u1eefng th\\u01b0\\u01a1ng hi\\u1ec7u th\\u1eddi trang h&agrave;ng \\u0111\\u1ea7u th\\u1ebf gi\\u1edbi \\u0111\\u01b0\\u1ee3c r\\u1ea5t nhi\\u1ec1u ng\\u01b0\\u1eddi y&ecirc;u th&iacute;ch v\\u1edbi nh\\u1eefng thi\\u1ebft k\\u1ebf mang phong c&aacute;ch \\u0111\\u01a1n gi\\u1ea3n, c\\u1ed5 \\u0111i\\u1ec3n. C&ugrave;ng v\\u1edbi danh ti\\u1ebfng \\u0111&oacute;,&nbsp;c&aacute;c d&ograve;ng n\\u01b0\\u1edbc hoa c\\u1ee7a&nbsp;<strong>Calvin Klein<\\/strong>&nbsp;c\\u0169ng \\u0111&atilde; li&ecirc;n t\\u1ee5c mang v\\u1ec1 nhi\\u1ec1u gi\\u1ea3i th\\u01b0\\u1edfng danh gi&aacute;.&nbsp;H\\u01b0\\u01a1ng th\\u01a1m h\\u1ea5p d\\u1eabn c\\u1ee7a n\\u01b0\\u1edbc hoa&nbsp;<strong>Calvin Klein<\\/strong>&nbsp;mang \\u0111\\u1ebfn m\\u1ed9t xu h\\u01b0\\u1edbng ho&agrave;n to&agrave;n m\\u1edbi, d&ugrave; \\u0111\\u01a1n gi\\u1ea3n nh\\u01b0ng v\\u1eabn tr\\u1edf th&agrave;nh bi\\u1ec3u t\\u01b0\\u1ee3ng th\\u1eddi trang v\\u1ec1 c\\u1ea3 ki\\u1ec3u d&aacute;ng l\\u1eabn m&ugrave;i h\\u01b0\\u01a1ng. Mang \\u0111\\u1ebfn cho ch&uacute;ng ta nh\\u1eefng h\\u01b0\\u01a1ng th\\u01a1m ph&ugrave; h\\u1ee3p cho c\\u1ea3 2 ph&aacute;i,&nbsp;<strong>Calvin Klein<\\/strong>&nbsp;\\u0111&atilde; ch\\u1ee9ng t\\u1ecf \\u0111\\u01b0\\u1ee3c v\\u1ecb tr&iacute; ti&ecirc;n phong c\\u1ee7a m&igrave;nh trong l\\u0129nh v\\u1ef1c n&agrave;y. \\u0110\\u1ebfn nay, h&atilde;ng&nbsp;<strong>Calvin Klein<\\/strong>&nbsp;\\u0111&atilde; c&oacute; h\\u01a1n 100 lo\\u1ea1i n\\u01b0\\u1edbc hoa.<\\/p>\\r\\n\\r\\n<p>&nbsp;<\\/p>\\r\\n\\r\\n<p><img alt=\\\"\\\" data-was-processed=\\\"true\\\" height=\\\"550\\\" src=\\\"https:\\/\\/media.hasaki.vn\\/wysiwyg\\/HaNguyen\\/nuoc-hoa-calvin-klein-one-edt-1.jpg\\\" width=\\\"550\\\" \\/><\\/p>\"}},\"category\":[\"18\",\"21\"],\"image\":\"\\/data\\/product\\/product_use.jpg\",\"sub_image\":[\"\\/data\\/product\\/lattafa-mazaaji-100ml-apa-de-parfum_8367043.jpg\",\"\\/data\\/product\\/giorgio-armani-acqua-di-gioia-orchard.vn-2.jpg\",\"\\/data\\/product\\/Narciso-Rodriguez-For-Her-EDP-100ML_t6av-n0-165x165.png\"],\"sku\":\"ALOKK1-AY\",\"alias\":\"nuoc-hoa-calvin-klein-one-edt-200ml\",\"brand_id\":\"3\",\"supplier_id\":\"1\",\"cost\":\"10000\",\"price\":\"1665000\",\"tax_id\":\"0\",\"price_promotion\":\"1480000\",\"price_promotion_start\":null,\"price_promotion_end\":null,\"stock\":\"100\",\"weight_class\":null,\"weight\":\"0\",\"length_class\":null,\"length\":\"0\",\"height\":\"0\",\"width\":\"0\",\"property\":\"physical\",\"download_path\":null,\"date_available\":null,\"minimum\":\"5\",\"sort\":\"0\",\"status\":\"on\",\"_token\":\"KZ5cp3PdRvI1Bjr6hOWm7b5yE6efbWhOU04ixXho\"}', '2022-01-14 07:15:01', '2022-01-14 07:15:01'),
(729, 1, 'sc_admin/product', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2022-01-14 07:15:03', '2022-01-14 07:15:03'),
(730, 1, 'sc_admin/product/edit/12', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2022-01-14 07:15:22', '2022-01-14 07:15:22'),
(731, 1, 'sc_admin/uploads', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"type\":\"product\"}', '2022-01-14 07:15:29', '2022-01-14 07:15:29'),
(732, 1, 'sc_admin/uploads/folders', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"working_dir\":null,\"type\":\"product\",\"_\":\"1642144530041\"}', '2022-01-14 07:15:30', '2022-01-14 07:15:30'),
(733, 1, 'sc_admin/uploads/errors', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"working_dir\":null,\"type\":\"product\",\"_\":\"1642144530042\"}', '2022-01-14 07:15:31', '2022-01-14 07:15:31'),
(734, 1, 'sc_admin/uploads/jsonitems', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"working_dir\":null,\"type\":\"product\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1642144530043\"}', '2022-01-14 07:15:31', '2022-01-14 07:15:31'),
(735, 1, 'sc_admin/product/edit/12', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"descriptions\":{\"en\":{\"name\":\"N\\u01b0\\u1edbc hoa N\\u1eef Dubai Mazaaji EDP\",\"keyword\":null,\"description\":null,\"content\":\"N\\u01b0\\u1edbc hoa N\\u1eef Dubai Mazaaji EDP\"},\"vi\":{\"name\":\"N\\u01b0\\u1edbc hoa N\\u1eef Dubai Mazaaji EDP\",\"keyword\":null,\"description\":\"Tinh d\\u1ea7u n\\u01b0\\u1edbc hoa Dubai t\\u1ea1i HT Market l\\u00e0 d\\u00f2ng n\\u01b0\\u1edbc hoa n\\u1ed5i ti\\u1ebfng v\\u1edbi m\\u00f9i h\\u01b0\\u01a1ng si\\u00eau quy\\u1ebfn r\\u0169...\",\"content\":\"<p>Phong c&aacute;ch: Sang tr\\u1ecdng, ng\\u1ecdt ng&agrave;o, sexy<\\/p>\\r\\n\\r\\n<p>Th\\u01b0\\u01a1ng hi\\u1ec7u: Lattafa<\\/p>\\r\\n\\r\\n<p>Xu\\u1ea5t x\\u1ee9: Dubai &ndash; UAE<\\/p>\\r\\n\\r\\n<p>\\u0110\\u1ed9 tu\\u1ed5i: 25 tu\\u1ed5i tr\\u1edf l&ecirc;n<\\/p>\\r\\n\\r\\n<p>Dung t&iacute;ch: 100ml<\\/p>\\r\\n\\r\\n<p>Gi\\u1edbi t&iacute;nh: N\\u1eef<\\/p>\\r\\n\\r\\n<p>\\u0110\\u1ed9 l\\u01b0u h\\u01b0\\u01a1ng: 6-8h tr&ecirc;n da, 1-3 ng&agrave;y tr&ecirc;n qu\\u1ea7n &aacute;o<\\/p>\\r\\n\\r\\n<p>\\u0110\\u1ed9 t\\u1ecfa h\\u01b0\\u01a1ng:Xa<\\/p>\\r\\n\\r\\n<p>\\u0110\\u1eb7c tr\\u01b0ng m&ugrave;i h\\u01b0\\u01a1ng: M&ugrave;i hoa h\\u1ed3ng ch\\u1ee7 \\u0111\\u1ea1o<\\/p>\\r\\n\\r\\n<ul>\\r\\n\\t<li>H\\u01b0\\u01a1ng \\u0111\\u1ea7u: Hoa h\\u1ed3ng, hoa sen<\\/li>\\r\\n\\t<li>H\\u01b0\\u01a1ng gi\\u1eefa: Ho\\u1eafc h\\u01b0\\u01a1ng, x\\u1ea1 h\\u01b0\\u01a1ng, lily<\\/li>\\r\\n\\t<li>H\\u01b0\\u01a1ng cu\\u1ed1i: G\\u1ed7 \\u0111&agrave;n h\\u01b0\\u01a1ng, x\\u1ea1 h\\u01b0\\u01a1ng, vani<\\/li>\\r\\n<\\/ul>\"}},\"category\":[\"21\",\"23\"],\"image\":\"\\/data\\/product\\/product_use.jpg\",\"sub_image\":[\"\\/data\\/product\\/product_use.jpg\",\"\\/data\\/product\\/product_use.jpg\"],\"sku\":\"3D-CARBON175\",\"alias\":\"nuoc-hoa-nu-dubai-mazaaji-edp\",\"brand_id\":\"2\",\"supplier_id\":\"1\",\"cost\":\"0\",\"price\":\"4800000\",\"tax_id\":\"0\",\"price_promotion\":\"2999000\",\"price_promotion_start\":\"2022-01-12\",\"price_promotion_end\":\"2022-03-16\",\"stock\":\"97\",\"weight_class\":null,\"weight\":\"0\",\"length_class\":null,\"length\":\"0\",\"height\":\"0\",\"width\":\"0\",\"property\":\"physical\",\"download_path\":null,\"date_available\":null,\"minimum\":\"1\",\"sort\":\"0\",\"status\":\"on\",\"attribute\":{\"1\":{\"name\":[\"Red\",\"Yellow\"],\"add_price\":[\"20000\",\"20000\"]},\"2\":{\"name\":[\"M\",\"L\"],\"add_price\":[\"50000\",\"20000\"]}},\"_token\":\"KZ5cp3PdRvI1Bjr6hOWm7b5yE6efbWhOU04ixXho\"}', '2022-01-14 07:15:37', '2022-01-14 07:15:37'),
(736, 1, 'sc_admin/product', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2022-01-14 07:15:39', '2022-01-14 07:15:39'),
(737, 1, 'sc_admin/product/edit/13', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2022-01-14 07:16:03', '2022-01-14 07:16:03'),
(738, 1, 'sc_admin/product/edit/13', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"descriptions\":{\"en\":{\"name\":\"N\\u01b0\\u1edbc hoa n\\u1eef jean paul gaultier scandal edt (30ml) - ph\\u00e1p\",\"keyword\":null,\"description\":null,\"content\":\"<h1>N\\u01b0\\u1edbc hoa n\\u1eef jean paul gaultier scandal edt (30ml) - ph&aacute;p<\\/h1>\"},\"vi\":{\"name\":\"N\\u01b0\\u1edbc hoa n\\u1eef jean paul gaultier scandal edt (30ml) - ph\\u00e1p\",\"keyword\":null,\"description\":null,\"content\":\"<p>H\\u1eb3n \\u0111\\u1ed9 ph\\u1ee7 s&oacute;ng v&agrave; s\\u1ef1 c&agrave;n qu&eacute;t kh\\u1eafp c&aacute;c di\\u1ec5n \\u0111&agrave;n v&agrave; c&aacute;c b\\u1ea3ng x\\u1ebfp h\\u1ea1ng nh\\u1eefng chai n\\u01b0\\u1edbc hoa sexy, quy\\u1ebfn r\\u0169 nh\\u1ea5t c\\u1ee7a Scancal l&agrave; \\u0111i\\u1ec1u kh&ocirc;ng c&ograve;n l\\u1ea1 l\\u1eabm g&igrave; v\\u1edbi nhi\\u1ec1u ng\\u01b0\\u1eddi. Th\\u1eadm ch&iacute; \\u1edf Scandal, \\u0111\\u1ecbnh ki\\u1ebfn v\\u1ec1 n\\u01b0\\u1edbc hoa ng\\u1ecdt v&agrave; n\\u1ed3ng th\\u01b0\\u1eddng k&eacute;n ng\\u01b0\\u1eddi c\\u0169ng \\u0111\\u01b0\\u1ee3c thay \\u0111\\u1ed5i quan \\u0111i\\u1ec3m m\\u1ed9t c&aacute;ch \\u0111&aacute;ng k\\u1ec3 \\u1edf r\\u1ea5t nhi\\u1ec1u ng\\u01b0\\u1eddi, b\\u1edfi ng\\u1ecdt th\\u1eadt, n\\u1ed3ng v&agrave; \\u0111\\u1eadm th\\u1eadt, nh\\u1eefng n&oacute; qu&aacute; \\u0111\\u1ed7i sexy v&agrave; h\\u1ea5p d\\u1eabn. Th&aacute;ng 8 n\\u0103m 2018, b\\u1ea3n Flanker \\u0111\\u1ea7u ti&ecirc;n c\\u1ee7a k\\u1ebb c&aacute;m d\\u1ed7 kinh \\u0111i\\u1ec3n &quot;Scandal&quot; \\u0111\\u01b0\\u1ee3c ra m\\u1eaft v\\u1edbi t&ecirc;n g\\u1ecdi l&agrave;&nbsp;<strong>Jean Paul Gaultier Scandal By Night Edp 30Ml<\\/strong>&nbsp;\\u0111&atilde; t\\u1ea1o ra m\\u1ed9t s\\u1ef1 mong ch\\u1edd v&agrave; h&aacute;o h\\u1ee9c v\\u1edbi r\\u1ea5t nhi\\u1ec1u t&iacute;n \\u0111\\u1ed3 n\\u01b0\\u1edbc hoa tr&ecirc;n to&agrave;n th\\u1ebf gi\\u1edbi, \\u0111\\u1eb7c bi\\u1ec7t v\\u1edbi nh\\u1eefng ng\\u01b0\\u1eddi l\\u1ee1 tr&oacute;t say m&ecirc; c&ocirc; n&agrave;ng nguy&ecirc;n b\\u1ea3n Scandal.&nbsp;<\\/p>\\r\\n\\r\\n<p>&nbsp;<\\/p>\\r\\n\\r\\n<p><img src=\\\"https:\\/\\/file.hstatic.net\\/200000117693\\/file\\/jean_paul_gaultier_scandal_edp_30ml_-_4_a561ff8260824894b966b136ec7286c3_grande.jpg\\\" \\/><\\/p>\\r\\n\\r\\n<h2><strong>H\\u01af\\u01a0NG \\u0110\\u1eb6C TR\\u01afNG<\\/strong><\\/h2>\\r\\n\\r\\n<ul>\\r\\n\\t<li>H\\u01b0\\u01a1ng \\u0111\\u1ea7u: M\\u1eadt ong, Chi cam chanh, Cam \\u0111\\u1eafng<\\/li>\\r\\n\\t<li>H\\u01b0\\u01a1ng gi\\u1eefa: Hoa hu\\u1ec7 tr\\u1eafng, C&acirc;y cam t&ugrave;ng Himalaya, Cherry, Hoa Cam, Tr&aacute;i l&ecirc;<\\/li>\\r\\n\\t<li>H\\u01b0\\u01a1ng cu\\u1ed1i: \\u0110\\u1eadu Tonka, C&acirc;y ho\\u1eafc h\\u01b0\\u01a1ng, G\\u1ed7 \\u0111&agrave;n h\\u01b0\\u01a1ng, Vani, X\\u1ea1 h\\u01b0\\u01a1ng<\\/li>\\r\\n<\\/ul>\\r\\n\\r\\n<p>&nbsp;<\\/p>\\r\\n\\r\\n<h2><strong>TH&Ocirc;NG TIN S\\u1ea2N PH\\u1ea8M<\\/strong><\\/h2>\\r\\n\\r\\n<ul>\\r\\n\\t<li>Nh&atilde;n hi\\u1ec7u: Jean Paul Gaultier<\\/li>\\r\\n\\t<li>Gi\\u1edbi t&iacute;nh: N\\u1eef<\\/li>\\r\\n\\t<li>Xu\\u1ea5t x\\u1ee9: Ph&aacute;p<\\/li>\\r\\n\\t<li>Ph&aacute;t h&agrave;nh: 2018<\\/li>\\r\\n\\t<li>N\\u1ed3ng \\u0111\\u1ed9: Eau de parfum<\\/li>\\r\\n\\t<li>Nh&oacute;m h\\u01b0\\u01a1ng: H\\u01b0\\u01a1ng Hoa c\\u1ecf G\\u1ed7 X\\u1ea1 h\\u01b0\\u01a1ng - Floral Woody Musk<\\/li>\\r\\n\\t<li>Phong c&aacute;ch: G\\u1ee3i c\\u1ea3m, S&agrave;nh \\u0111i\\u1ec7u, Khi&ecirc;u kh&iacute;ch<\\/li>\\r\\n<\\/ul>\"}},\"category\":[\"22\",\"21\",\"23\"],\"image\":\"\\/data\\/product\\/product_use.jpg\",\"sku\":\"3D-GOLD175\",\"alias\":\"demo-alias-name-product-13\",\"brand_id\":\"3\",\"supplier_id\":\"1\",\"cost\":\"5000\",\"price\":\"10000\",\"tax_id\":\"0\",\"price_promotion\":\"4000\",\"price_promotion_start\":null,\"price_promotion_end\":null,\"stock\":\"-2\",\"weight_class\":null,\"weight\":\"0\",\"length_class\":null,\"length\":\"0\",\"height\":\"0\",\"width\":\"0\",\"property\":\"physical\",\"download_path\":null,\"date_available\":null,\"minimum\":\"0\",\"sort\":\"0\",\"status\":\"on\",\"_token\":\"KZ5cp3PdRvI1Bjr6hOWm7b5yE6efbWhOU04ixXho\"}', '2022-01-14 07:18:16', '2022-01-14 07:18:16'),
(739, 1, 'sc_admin/product', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2022-01-14 07:18:17', '2022-01-14 07:18:17'),
(740, 1, 'sc_admin/product/edit/14', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2022-01-14 07:19:10', '2022-01-14 07:19:10'),
(741, 1, 'sc_admin/product/edit/14', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"descriptions\":{\"en\":{\"name\":\"N\\u01b0\\u1edbc hoa n\\u1eef paris bleu fleurs de sistelle edp (100ml) - ph\\u00e1p\",\"keyword\":null,\"description\":null,\"content\":\"<p>H\\u1eb3n \\u0111\\u1ed9 ph\\u1ee7 s&oacute;ng v&agrave; s\\u1ef1 c&agrave;n qu&eacute;t kh\\u1eafp c&aacute;c di\\u1ec5n \\u0111&agrave;n v&agrave; c&aacute;c b\\u1ea3ng x\\u1ebfp h\\u1ea1ng nh\\u1eefng chai n\\u01b0\\u1edbc hoa sexy, quy\\u1ebfn r\\u0169 nh\\u1ea5t c\\u1ee7a Scancal l&agrave; \\u0111i\\u1ec1u kh&ocirc;ng c&ograve;n l\\u1ea1 l\\u1eabm g&igrave; v\\u1edbi nhi\\u1ec1u ng\\u01b0\\u1eddi. Th\\u1eadm ch&iacute; \\u1edf Scandal, \\u0111\\u1ecbnh ki\\u1ebfn v\\u1ec1 n\\u01b0\\u1edbc hoa ng\\u1ecdt v&agrave; n\\u1ed3ng th\\u01b0\\u1eddng k&eacute;n ng\\u01b0\\u1eddi c\\u0169ng \\u0111\\u01b0\\u1ee3c thay \\u0111\\u1ed5i quan \\u0111i\\u1ec3m m\\u1ed9t c&aacute;ch \\u0111&aacute;ng k\\u1ec3 \\u1edf r\\u1ea5t nhi\\u1ec1u ng\\u01b0\\u1eddi, b\\u1edfi ng\\u1ecdt th\\u1eadt, n\\u1ed3ng v&agrave; \\u0111\\u1eadm th\\u1eadt, nh\\u1eefng n&oacute; qu&aacute; \\u0111\\u1ed7i sexy v&agrave; h\\u1ea5p d\\u1eabn. Th&aacute;ng 8 n\\u0103m 2018, b\\u1ea3n Flanker \\u0111\\u1ea7u ti&ecirc;n c\\u1ee7a k\\u1ebb c&aacute;m d\\u1ed7 kinh \\u0111i\\u1ec3n &quot;Scandal&quot; \\u0111\\u01b0\\u1ee3c ra m\\u1eaft v\\u1edbi t&ecirc;n g\\u1ecdi l&agrave;&nbsp;<strong>Jean Paul Gaultier Scandal By Night Edp 30Ml<\\/strong>&nbsp;\\u0111&atilde; t\\u1ea1o ra m\\u1ed9t s\\u1ef1 mong ch\\u1edd v&agrave; h&aacute;o h\\u1ee9c v\\u1edbi r\\u1ea5t nhi\\u1ec1u t&iacute;n \\u0111\\u1ed3 n\\u01b0\\u1edbc hoa tr&ecirc;n to&agrave;n th\\u1ebf gi\\u1edbi, \\u0111\\u1eb7c bi\\u1ec7t v\\u1edbi nh\\u1eefng ng\\u01b0\\u1eddi l\\u1ee1 tr&oacute;t say m&ecirc; c&ocirc; n&agrave;ng nguy&ecirc;n b\\u1ea3n Scandal.&nbsp;<\\/p>\\r\\n\\r\\n<p>&nbsp;<\\/p>\\r\\n\\r\\n<p><img src=\\\"https:\\/\\/file.hstatic.net\\/200000117693\\/file\\/jean_paul_gaultier_scandal_edp_30ml_-_4_a561ff8260824894b966b136ec7286c3_grande.jpg\\\" \\/><\\/p>\\r\\n\\r\\n<h2><strong>H\\u01af\\u01a0NG \\u0110\\u1eb6C TR\\u01afNG<\\/strong><\\/h2>\\r\\n\\r\\n<ul>\\r\\n\\t<li>H\\u01b0\\u01a1ng \\u0111\\u1ea7u: M\\u1eadt ong, Chi cam chanh, Cam \\u0111\\u1eafng<\\/li>\\r\\n\\t<li>H\\u01b0\\u01a1ng gi\\u1eefa: Hoa hu\\u1ec7 tr\\u1eafng, C&acirc;y cam t&ugrave;ng Himalaya, Cherry, Hoa Cam, Tr&aacute;i l&ecirc;<\\/li>\\r\\n\\t<li>H\\u01b0\\u01a1ng cu\\u1ed1i: \\u0110\\u1eadu Tonka, C&acirc;y ho\\u1eafc h\\u01b0\\u01a1ng, G\\u1ed7 \\u0111&agrave;n h\\u01b0\\u01a1ng, Vani, X\\u1ea1 h\\u01b0\\u01a1ng<\\/li>\\r\\n<\\/ul>\\r\\n\\r\\n<p>&nbsp;<\\/p>\\r\\n\\r\\n<h2><strong>TH&Ocirc;NG TIN S\\u1ea2N PH\\u1ea8M<\\/strong><\\/h2>\\r\\n\\r\\n<ul>\\r\\n\\t<li>Nh&atilde;n hi\\u1ec7u: Jean Paul Gaultier<\\/li>\\r\\n\\t<li>Gi\\u1edbi t&iacute;nh: N\\u1eef<\\/li>\\r\\n\\t<li>Xu\\u1ea5t x\\u1ee9: Ph&aacute;p<\\/li>\\r\\n\\t<li>Ph&aacute;t h&agrave;nh: 2018<\\/li>\\r\\n\\t<li>N\\u1ed3ng \\u0111\\u1ed9: Eau de parfum<\\/li>\\r\\n\\t<li>Nh&oacute;m h\\u01b0\\u01a1ng: H\\u01b0\\u01a1ng Hoa c\\u1ecf G\\u1ed7 X\\u1ea1 h\\u01b0\\u01a1ng - Floral Woody Musk<\\/li>\\r\\n\\t<li>Phong c&aacute;ch: G\\u1ee3i c\\u1ea3m, S&agrave;nh \\u0111i\\u1ec7u, Khi&ecirc;u kh&iacute;ch<\\/li>\\r\\n<\\/ul>\"},\"vi\":{\"name\":\"N\\u01b0\\u1edbc hoa n\\u1eef paris bleu fleurs de sistelle edp (100ml) - ph\\u00e1p\",\"keyword\":null,\"description\":null,\"content\":\"<p>H\\u1eb3n \\u0111\\u1ed9 ph\\u1ee7 s&oacute;ng v&agrave; s\\u1ef1 c&agrave;n qu&eacute;t kh\\u1eafp c&aacute;c di\\u1ec5n \\u0111&agrave;n v&agrave; c&aacute;c b\\u1ea3ng x\\u1ebfp h\\u1ea1ng nh\\u1eefng chai n\\u01b0\\u1edbc hoa sexy, quy\\u1ebfn r\\u0169 nh\\u1ea5t c\\u1ee7a Scancal l&agrave; \\u0111i\\u1ec1u kh&ocirc;ng c&ograve;n l\\u1ea1 l\\u1eabm g&igrave; v\\u1edbi nhi\\u1ec1u ng\\u01b0\\u1eddi. Th\\u1eadm ch&iacute; \\u1edf Scandal, \\u0111\\u1ecbnh ki\\u1ebfn v\\u1ec1 n\\u01b0\\u1edbc hoa ng\\u1ecdt v&agrave; n\\u1ed3ng th\\u01b0\\u1eddng k&eacute;n ng\\u01b0\\u1eddi c\\u0169ng \\u0111\\u01b0\\u1ee3c thay \\u0111\\u1ed5i quan \\u0111i\\u1ec3m m\\u1ed9t c&aacute;ch \\u0111&aacute;ng k\\u1ec3 \\u1edf r\\u1ea5t nhi\\u1ec1u ng\\u01b0\\u1eddi, b\\u1edfi ng\\u1ecdt th\\u1eadt, n\\u1ed3ng v&agrave; \\u0111\\u1eadm th\\u1eadt, nh\\u1eefng n&oacute; qu&aacute; \\u0111\\u1ed7i sexy v&agrave; h\\u1ea5p d\\u1eabn. Th&aacute;ng 8 n\\u0103m 2018, b\\u1ea3n Flanker \\u0111\\u1ea7u ti&ecirc;n c\\u1ee7a k\\u1ebb c&aacute;m d\\u1ed7 kinh \\u0111i\\u1ec3n &quot;Scandal&quot; \\u0111\\u01b0\\u1ee3c ra m\\u1eaft v\\u1edbi t&ecirc;n g\\u1ecdi l&agrave;&nbsp;<strong>Jean Paul Gaultier Scandal By Night Edp 30Ml<\\/strong>&nbsp;\\u0111&atilde; t\\u1ea1o ra m\\u1ed9t s\\u1ef1 mong ch\\u1edd v&agrave; h&aacute;o h\\u1ee9c v\\u1edbi r\\u1ea5t nhi\\u1ec1u t&iacute;n \\u0111\\u1ed3 n\\u01b0\\u1edbc hoa tr&ecirc;n to&agrave;n th\\u1ebf gi\\u1edbi, \\u0111\\u1eb7c bi\\u1ec7t v\\u1edbi nh\\u1eefng ng\\u01b0\\u1eddi l\\u1ee1 tr&oacute;t say m&ecirc; c&ocirc; n&agrave;ng nguy&ecirc;n b\\u1ea3n Scandal.&nbsp;<\\/p>\\r\\n\\r\\n<p>&nbsp;<\\/p>\\r\\n\\r\\n<p><img src=\\\"https:\\/\\/file.hstatic.net\\/200000117693\\/file\\/jean_paul_gaultier_scandal_edp_30ml_-_4_a561ff8260824894b966b136ec7286c3_grande.jpg\\\" \\/><\\/p>\\r\\n\\r\\n<h2><strong>H\\u01af\\u01a0NG \\u0110\\u1eb6C TR\\u01afNG<\\/strong><\\/h2>\\r\\n\\r\\n<ul>\\r\\n\\t<li>H\\u01b0\\u01a1ng \\u0111\\u1ea7u: M\\u1eadt ong, Chi cam chanh, Cam \\u0111\\u1eafng<\\/li>\\r\\n\\t<li>H\\u01b0\\u01a1ng gi\\u1eefa: Hoa hu\\u1ec7 tr\\u1eafng, C&acirc;y cam t&ugrave;ng Himalaya, Cherry, Hoa Cam, Tr&aacute;i l&ecirc;<\\/li>\\r\\n\\t<li>H\\u01b0\\u01a1ng cu\\u1ed1i: \\u0110\\u1eadu Tonka, C&acirc;y ho\\u1eafc h\\u01b0\\u01a1ng, G\\u1ed7 \\u0111&agrave;n h\\u01b0\\u01a1ng, Vani, X\\u1ea1 h\\u01b0\\u01a1ng<\\/li>\\r\\n<\\/ul>\\r\\n\\r\\n<p>&nbsp;<\\/p>\\r\\n\\r\\n<h2><strong>TH&Ocirc;NG TIN S\\u1ea2N PH\\u1ea8M<\\/strong><\\/h2>\\r\\n\\r\\n<ul>\\r\\n\\t<li>Nh&atilde;n hi\\u1ec7u: Jean Paul Gaultier<\\/li>\\r\\n\\t<li>Gi\\u1edbi t&iacute;nh: N\\u1eef<\\/li>\\r\\n\\t<li>Xu\\u1ea5t x\\u1ee9: Ph&aacute;p<\\/li>\\r\\n\\t<li>Ph&aacute;t h&agrave;nh: 2018<\\/li>\\r\\n\\t<li>N\\u1ed3ng \\u0111\\u1ed9: Eau de parfum<\\/li>\\r\\n\\t<li>Nh&oacute;m h\\u01b0\\u01a1ng: H\\u01b0\\u01a1ng Hoa c\\u1ecf G\\u1ed7 X\\u1ea1 h\\u01b0\\u01a1ng - Floral Woody Musk<\\/li>\\r\\n\\t<li>Phong c&aacute;ch: G\\u1ee3i c\\u1ea3m, S&agrave;nh \\u0111i\\u1ec7u, Khi&ecirc;u kh&iacute;ch<\\/li>\\r\\n<\\/ul>\"}},\"category\":[\"18\",\"21\"],\"image\":\"\\/data\\/product\\/product_use.jpg\",\"sku\":\"LCD12864-3D\",\"alias\":null,\"brand_id\":\"3\",\"supplier_id\":\"1\",\"cost\":\"10000\",\"price\":\"870000\",\"tax_id\":\"0\",\"stock\":\"96\",\"weight_class\":null,\"weight\":\"0\",\"length_class\":null,\"length\":\"0\",\"height\":\"0\",\"width\":\"0\",\"property\":\"physical\",\"download_path\":null,\"date_available\":null,\"minimum\":\"1\",\"sort\":\"0\",\"status\":\"on\",\"_token\":\"KZ5cp3PdRvI1Bjr6hOWm7b5yE6efbWhOU04ixXho\"}', '2022-01-14 07:21:58', '2022-01-14 07:21:58'),
(742, 1, 'sc_admin/product/edit/14', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"descriptions\":{\"en\":{\"name\":\"N\\u01b0\\u1edbc hoa n\\u1eef paris bleu fleurs de sistelle edp (100ml) - ph\\u00e1p\",\"keyword\":null,\"description\":null,\"content\":\"<p>H\\u1eb3n \\u0111\\u1ed9 ph\\u1ee7 s&oacute;ng v&agrave; s\\u1ef1 c&agrave;n qu&eacute;t kh\\u1eafp c&aacute;c di\\u1ec5n \\u0111&agrave;n v&agrave; c&aacute;c b\\u1ea3ng x\\u1ebfp h\\u1ea1ng nh\\u1eefng chai n\\u01b0\\u1edbc hoa sexy, quy\\u1ebfn r\\u0169 nh\\u1ea5t c\\u1ee7a Scancal l&agrave; \\u0111i\\u1ec1u kh&ocirc;ng c&ograve;n l\\u1ea1 l\\u1eabm g&igrave; v\\u1edbi nhi\\u1ec1u ng\\u01b0\\u1eddi. Th\\u1eadm ch&iacute; \\u1edf Scandal, \\u0111\\u1ecbnh ki\\u1ebfn v\\u1ec1 n\\u01b0\\u1edbc hoa ng\\u1ecdt v&agrave; n\\u1ed3ng th\\u01b0\\u1eddng k&eacute;n ng\\u01b0\\u1eddi c\\u0169ng \\u0111\\u01b0\\u1ee3c thay \\u0111\\u1ed5i quan \\u0111i\\u1ec3m m\\u1ed9t c&aacute;ch \\u0111&aacute;ng k\\u1ec3 \\u1edf r\\u1ea5t nhi\\u1ec1u ng\\u01b0\\u1eddi, b\\u1edfi ng\\u1ecdt th\\u1eadt, n\\u1ed3ng v&agrave; \\u0111\\u1eadm th\\u1eadt, nh\\u1eefng n&oacute; qu&aacute; \\u0111\\u1ed7i sexy v&agrave; h\\u1ea5p d\\u1eabn. Th&aacute;ng 8 n\\u0103m 2018, b\\u1ea3n Flanker \\u0111\\u1ea7u ti&ecirc;n c\\u1ee7a k\\u1ebb c&aacute;m d\\u1ed7 kinh \\u0111i\\u1ec3n &quot;Scandal&quot; \\u0111\\u01b0\\u1ee3c ra m\\u1eaft v\\u1edbi t&ecirc;n g\\u1ecdi l&agrave;&nbsp;<strong>Jean Paul Gaultier Scandal By Night Edp 30Ml<\\/strong>&nbsp;\\u0111&atilde; t\\u1ea1o ra m\\u1ed9t s\\u1ef1 mong ch\\u1edd v&agrave; h&aacute;o h\\u1ee9c v\\u1edbi r\\u1ea5t nhi\\u1ec1u t&iacute;n \\u0111\\u1ed3 n\\u01b0\\u1edbc hoa tr&ecirc;n to&agrave;n th\\u1ebf gi\\u1edbi, \\u0111\\u1eb7c bi\\u1ec7t v\\u1edbi nh\\u1eefng ng\\u01b0\\u1eddi l\\u1ee1 tr&oacute;t say m&ecirc; c&ocirc; n&agrave;ng nguy&ecirc;n b\\u1ea3n Scandal.&nbsp;<\\/p>\\r\\n\\r\\n<p>&nbsp;<\\/p>\\r\\n\\r\\n<p><img src=\\\"https:\\/\\/file.hstatic.net\\/200000117693\\/file\\/jean_paul_gaultier_scandal_edp_30ml_-_4_a561ff8260824894b966b136ec7286c3_grande.jpg\\\" \\/><\\/p>\\r\\n\\r\\n<h2><strong>H\\u01af\\u01a0NG \\u0110\\u1eb6C TR\\u01afNG<\\/strong><\\/h2>\\r\\n\\r\\n<ul>\\r\\n\\t<li>H\\u01b0\\u01a1ng \\u0111\\u1ea7u: M\\u1eadt ong, Chi cam chanh, Cam \\u0111\\u1eafng<\\/li>\\r\\n\\t<li>H\\u01b0\\u01a1ng gi\\u1eefa: Hoa hu\\u1ec7 tr\\u1eafng, C&acirc;y cam t&ugrave;ng Himalaya, Cherry, Hoa Cam, Tr&aacute;i l&ecirc;<\\/li>\\r\\n\\t<li>H\\u01b0\\u01a1ng cu\\u1ed1i: \\u0110\\u1eadu Tonka, C&acirc;y ho\\u1eafc h\\u01b0\\u01a1ng, G\\u1ed7 \\u0111&agrave;n h\\u01b0\\u01a1ng, Vani, X\\u1ea1 h\\u01b0\\u01a1ng<\\/li>\\r\\n<\\/ul>\\r\\n\\r\\n<p>&nbsp;<\\/p>\\r\\n\\r\\n<h2><strong>TH&Ocirc;NG TIN S\\u1ea2N PH\\u1ea8M<\\/strong><\\/h2>\\r\\n\\r\\n<ul>\\r\\n\\t<li>Nh&atilde;n hi\\u1ec7u: Jean Paul Gaultier<\\/li>\\r\\n\\t<li>Gi\\u1edbi t&iacute;nh: N\\u1eef<\\/li>\\r\\n\\t<li>Xu\\u1ea5t x\\u1ee9: Ph&aacute;p<\\/li>\\r\\n\\t<li>Ph&aacute;t h&agrave;nh: 2018<\\/li>\\r\\n\\t<li>N\\u1ed3ng \\u0111\\u1ed9: Eau de parfum<\\/li>\\r\\n\\t<li>Nh&oacute;m h\\u01b0\\u01a1ng: H\\u01b0\\u01a1ng Hoa c\\u1ecf G\\u1ed7 X\\u1ea1 h\\u01b0\\u01a1ng - Floral Woody Musk<\\/li>\\r\\n\\t<li>Phong c&aacute;ch: G\\u1ee3i c\\u1ea3m, S&agrave;nh \\u0111i\\u1ec7u, Khi&ecirc;u kh&iacute;ch<\\/li>\\r\\n<\\/ul>\"},\"vi\":{\"name\":\"N\\u01b0\\u1edbc hoa n\\u1eef paris bleu fleurs de sistelle edp (100ml) - ph\\u00e1p\",\"keyword\":null,\"description\":null,\"content\":\"<p>H\\u1eb3n \\u0111\\u1ed9 ph\\u1ee7 s&oacute;ng v&agrave; s\\u1ef1 c&agrave;n qu&eacute;t kh\\u1eafp c&aacute;c di\\u1ec5n \\u0111&agrave;n v&agrave; c&aacute;c b\\u1ea3ng x\\u1ebfp h\\u1ea1ng nh\\u1eefng chai n\\u01b0\\u1edbc hoa sexy, quy\\u1ebfn r\\u0169 nh\\u1ea5t c\\u1ee7a Scancal l&agrave; \\u0111i\\u1ec1u kh&ocirc;ng c&ograve;n l\\u1ea1 l\\u1eabm g&igrave; v\\u1edbi nhi\\u1ec1u ng\\u01b0\\u1eddi. Th\\u1eadm ch&iacute; \\u1edf Scandal, \\u0111\\u1ecbnh ki\\u1ebfn v\\u1ec1 n\\u01b0\\u1edbc hoa ng\\u1ecdt v&agrave; n\\u1ed3ng th\\u01b0\\u1eddng k&eacute;n ng\\u01b0\\u1eddi c\\u0169ng \\u0111\\u01b0\\u1ee3c thay \\u0111\\u1ed5i quan \\u0111i\\u1ec3m m\\u1ed9t c&aacute;ch \\u0111&aacute;ng k\\u1ec3 \\u1edf r\\u1ea5t nhi\\u1ec1u ng\\u01b0\\u1eddi, b\\u1edfi ng\\u1ecdt th\\u1eadt, n\\u1ed3ng v&agrave; \\u0111\\u1eadm th\\u1eadt, nh\\u1eefng n&oacute; qu&aacute; \\u0111\\u1ed7i sexy v&agrave; h\\u1ea5p d\\u1eabn. Th&aacute;ng 8 n\\u0103m 2018, b\\u1ea3n Flanker \\u0111\\u1ea7u ti&ecirc;n c\\u1ee7a k\\u1ebb c&aacute;m d\\u1ed7 kinh \\u0111i\\u1ec3n &quot;Scandal&quot; \\u0111\\u01b0\\u1ee3c ra m\\u1eaft v\\u1edbi t&ecirc;n g\\u1ecdi l&agrave;&nbsp;<strong>Jean Paul Gaultier Scandal By Night Edp 30Ml<\\/strong>&nbsp;\\u0111&atilde; t\\u1ea1o ra m\\u1ed9t s\\u1ef1 mong ch\\u1edd v&agrave; h&aacute;o h\\u1ee9c v\\u1edbi r\\u1ea5t nhi\\u1ec1u t&iacute;n \\u0111\\u1ed3 n\\u01b0\\u1edbc hoa tr&ecirc;n to&agrave;n th\\u1ebf gi\\u1edbi, \\u0111\\u1eb7c bi\\u1ec7t v\\u1edbi nh\\u1eefng ng\\u01b0\\u1eddi l\\u1ee1 tr&oacute;t say m&ecirc; c&ocirc; n&agrave;ng nguy&ecirc;n b\\u1ea3n Scandal.&nbsp;<\\/p>\\r\\n\\r\\n<p>&nbsp;<\\/p>\\r\\n\\r\\n<p><img src=\\\"https:\\/\\/file.hstatic.net\\/200000117693\\/file\\/jean_paul_gaultier_scandal_edp_30ml_-_4_a561ff8260824894b966b136ec7286c3_grande.jpg\\\" \\/><\\/p>\\r\\n\\r\\n<h2><strong>H\\u01af\\u01a0NG \\u0110\\u1eb6C TR\\u01afNG<\\/strong><\\/h2>\\r\\n\\r\\n<ul>\\r\\n\\t<li>H\\u01b0\\u01a1ng \\u0111\\u1ea7u: M\\u1eadt ong, Chi cam chanh, Cam \\u0111\\u1eafng<\\/li>\\r\\n\\t<li>H\\u01b0\\u01a1ng gi\\u1eefa: Hoa hu\\u1ec7 tr\\u1eafng, C&acirc;y cam t&ugrave;ng Himalaya, Cherry, Hoa Cam, Tr&aacute;i l&ecirc;<\\/li>\\r\\n\\t<li>H\\u01b0\\u01a1ng cu\\u1ed1i: \\u0110\\u1eadu Tonka, C&acirc;y ho\\u1eafc h\\u01b0\\u01a1ng, G\\u1ed7 \\u0111&agrave;n h\\u01b0\\u01a1ng, Vani, X\\u1ea1 h\\u01b0\\u01a1ng<\\/li>\\r\\n<\\/ul>\\r\\n\\r\\n<p>&nbsp;<\\/p>\\r\\n\\r\\n<h2><strong>TH&Ocirc;NG TIN S\\u1ea2N PH\\u1ea8M<\\/strong><\\/h2>\\r\\n\\r\\n<ul>\\r\\n\\t<li>Nh&atilde;n hi\\u1ec7u: Jean Paul Gaultier<\\/li>\\r\\n\\t<li>Gi\\u1edbi t&iacute;nh: N\\u1eef<\\/li>\\r\\n\\t<li>Xu\\u1ea5t x\\u1ee9: Ph&aacute;p<\\/li>\\r\\n\\t<li>Ph&aacute;t h&agrave;nh: 2018<\\/li>\\r\\n\\t<li>N\\u1ed3ng \\u0111\\u1ed9: Eau de parfum<\\/li>\\r\\n\\t<li>Nh&oacute;m h\\u01b0\\u01a1ng: H\\u01b0\\u01a1ng Hoa c\\u1ecf G\\u1ed7 X\\u1ea1 h\\u01b0\\u01a1ng - Floral Woody Musk<\\/li>\\r\\n\\t<li>Phong c&aacute;ch: G\\u1ee3i c\\u1ea3m, S&agrave;nh \\u0111i\\u1ec7u, Khi&ecirc;u kh&iacute;ch<\\/li>\\r\\n<\\/ul>\"}},\"category\":[\"18\",\"21\"],\"image\":\"\\/data\\/product\\/product_use.jpg\",\"sku\":\"LCD12864-3D\",\"alias\":null,\"brand_id\":\"3\",\"supplier_id\":\"1\",\"cost\":\"10000\",\"price\":\"870000\",\"tax_id\":\"0\",\"stock\":\"96\",\"weight_class\":null,\"weight\":\"0\",\"length_class\":null,\"length\":\"0\",\"height\":\"0\",\"width\":\"0\",\"property\":\"physical\",\"download_path\":null,\"date_available\":null,\"minimum\":\"1\",\"sort\":\"0\",\"status\":\"on\",\"_token\":\"KZ5cp3PdRvI1Bjr6hOWm7b5yE6efbWhOU04ixXho\"}', '2022-01-14 07:21:59', '2022-01-14 07:21:59'),
(743, 1, 'sc_admin/product/edit/14', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2022-01-14 07:21:59', '2022-01-14 07:21:59'),
(744, 1, 'sc_admin/product/edit/14', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"descriptions\":{\"en\":{\"name\":\"N\\u01b0\\u1edbc hoa n\\u1eef paris bleu fleurs de sistelle edp (100ml) - ph\\u00e1p\",\"keyword\":null,\"description\":null,\"content\":\"<p>H\\u1eb3n \\u0111\\u1ed9 ph\\u1ee7 s&oacute;ng v&agrave; s\\u1ef1 c&agrave;n qu&eacute;t kh\\u1eafp c&aacute;c di\\u1ec5n \\u0111&agrave;n v&agrave; c&aacute;c b\\u1ea3ng x\\u1ebfp h\\u1ea1ng nh\\u1eefng chai n\\u01b0\\u1edbc hoa sexy, quy\\u1ebfn r\\u0169 nh\\u1ea5t c\\u1ee7a Scancal l&agrave; \\u0111i\\u1ec1u kh&ocirc;ng c&ograve;n l\\u1ea1 l\\u1eabm g&igrave; v\\u1edbi nhi\\u1ec1u ng\\u01b0\\u1eddi. Th\\u1eadm ch&iacute; \\u1edf Scandal, \\u0111\\u1ecbnh ki\\u1ebfn v\\u1ec1 n\\u01b0\\u1edbc hoa ng\\u1ecdt v&agrave; n\\u1ed3ng th\\u01b0\\u1eddng k&eacute;n ng\\u01b0\\u1eddi c\\u0169ng \\u0111\\u01b0\\u1ee3c thay \\u0111\\u1ed5i quan \\u0111i\\u1ec3m m\\u1ed9t c&aacute;ch \\u0111&aacute;ng k\\u1ec3 \\u1edf r\\u1ea5t nhi\\u1ec1u ng\\u01b0\\u1eddi, b\\u1edfi ng\\u1ecdt th\\u1eadt, n\\u1ed3ng v&agrave; \\u0111\\u1eadm th\\u1eadt, nh\\u1eefng n&oacute; qu&aacute; \\u0111\\u1ed7i sexy v&agrave; h\\u1ea5p d\\u1eabn. Th&aacute;ng 8 n\\u0103m 2018, b\\u1ea3n Flanker \\u0111\\u1ea7u ti&ecirc;n c\\u1ee7a k\\u1ebb c&aacute;m d\\u1ed7 kinh \\u0111i\\u1ec3n &quot;Scandal&quot; \\u0111\\u01b0\\u1ee3c ra m\\u1eaft v\\u1edbi t&ecirc;n g\\u1ecdi l&agrave;&nbsp;<strong>Jean Paul Gaultier Scandal By Night Edp 30Ml<\\/strong>&nbsp;\\u0111&atilde; t\\u1ea1o ra m\\u1ed9t s\\u1ef1 mong ch\\u1edd v&agrave; h&aacute;o h\\u1ee9c v\\u1edbi r\\u1ea5t nhi\\u1ec1u t&iacute;n \\u0111\\u1ed3 n\\u01b0\\u1edbc hoa tr&ecirc;n to&agrave;n th\\u1ebf gi\\u1edbi, \\u0111\\u1eb7c bi\\u1ec7t v\\u1edbi nh\\u1eefng ng\\u01b0\\u1eddi l\\u1ee1 tr&oacute;t say m&ecirc; c&ocirc; n&agrave;ng nguy&ecirc;n b\\u1ea3n Scandal.&nbsp;<\\/p>\\r\\n\\r\\n<p>&nbsp;<\\/p>\\r\\n\\r\\n<p><img src=\\\"https:\\/\\/file.hstatic.net\\/200000117693\\/file\\/jean_paul_gaultier_scandal_edp_30ml_-_4_a561ff8260824894b966b136ec7286c3_grande.jpg\\\" \\/><\\/p>\\r\\n\\r\\n<h2><strong>H\\u01af\\u01a0NG \\u0110\\u1eb6C TR\\u01afNG<\\/strong><\\/h2>\\r\\n\\r\\n<ul>\\r\\n\\t<li>H\\u01b0\\u01a1ng \\u0111\\u1ea7u: M\\u1eadt ong, Chi cam chanh, Cam \\u0111\\u1eafng<\\/li>\\r\\n\\t<li>H\\u01b0\\u01a1ng gi\\u1eefa: Hoa hu\\u1ec7 tr\\u1eafng, C&acirc;y cam t&ugrave;ng Himalaya, Cherry, Hoa Cam, Tr&aacute;i l&ecirc;<\\/li>\\r\\n\\t<li>H\\u01b0\\u01a1ng cu\\u1ed1i: \\u0110\\u1eadu Tonka, C&acirc;y ho\\u1eafc h\\u01b0\\u01a1ng, G\\u1ed7 \\u0111&agrave;n h\\u01b0\\u01a1ng, Vani, X\\u1ea1 h\\u01b0\\u01a1ng<\\/li>\\r\\n<\\/ul>\\r\\n\\r\\n<p>&nbsp;<\\/p>\\r\\n\\r\\n<h2><strong>TH&Ocirc;NG TIN S\\u1ea2N PH\\u1ea8M<\\/strong><\\/h2>\\r\\n\\r\\n<ul>\\r\\n\\t<li>Nh&atilde;n hi\\u1ec7u: Jean Paul Gaultier<\\/li>\\r\\n\\t<li>Gi\\u1edbi t&iacute;nh: N\\u1eef<\\/li>\\r\\n\\t<li>Xu\\u1ea5t x\\u1ee9: Ph&aacute;p<\\/li>\\r\\n\\t<li>Ph&aacute;t h&agrave;nh: 2018<\\/li>\\r\\n\\t<li>N\\u1ed3ng \\u0111\\u1ed9: Eau de parfum<\\/li>\\r\\n\\t<li>Nh&oacute;m h\\u01b0\\u01a1ng: H\\u01b0\\u01a1ng Hoa c\\u1ecf G\\u1ed7 X\\u1ea1 h\\u01b0\\u01a1ng - Floral Woody Musk<\\/li>\\r\\n\\t<li>Phong c&aacute;ch: G\\u1ee3i c\\u1ea3m, S&agrave;nh \\u0111i\\u1ec7u, Khi&ecirc;u kh&iacute;ch<\\/li>\\r\\n<\\/ul>\"},\"vi\":{\"name\":\"N\\u01b0\\u1edbc hoa n\\u1eef paris bleu fleurs de sistelle edp (100ml) - ph\\u00e1p\",\"keyword\":null,\"description\":null,\"content\":\"<p>H\\u1eb3n \\u0111\\u1ed9 ph\\u1ee7 s&oacute;ng v&agrave; s\\u1ef1 c&agrave;n qu&eacute;t kh\\u1eafp c&aacute;c di\\u1ec5n \\u0111&agrave;n v&agrave; c&aacute;c b\\u1ea3ng x\\u1ebfp h\\u1ea1ng nh\\u1eefng chai n\\u01b0\\u1edbc hoa sexy, quy\\u1ebfn r\\u0169 nh\\u1ea5t c\\u1ee7a Scancal l&agrave; \\u0111i\\u1ec1u kh&ocirc;ng c&ograve;n l\\u1ea1 l\\u1eabm g&igrave; v\\u1edbi nhi\\u1ec1u ng\\u01b0\\u1eddi. Th\\u1eadm ch&iacute; \\u1edf Scandal, \\u0111\\u1ecbnh ki\\u1ebfn v\\u1ec1 n\\u01b0\\u1edbc hoa ng\\u1ecdt v&agrave; n\\u1ed3ng th\\u01b0\\u1eddng k&eacute;n ng\\u01b0\\u1eddi c\\u0169ng \\u0111\\u01b0\\u1ee3c thay \\u0111\\u1ed5i quan \\u0111i\\u1ec3m m\\u1ed9t c&aacute;ch \\u0111&aacute;ng k\\u1ec3 \\u1edf r\\u1ea5t nhi\\u1ec1u ng\\u01b0\\u1eddi, b\\u1edfi ng\\u1ecdt th\\u1eadt, n\\u1ed3ng v&agrave; \\u0111\\u1eadm th\\u1eadt, nh\\u1eefng n&oacute; qu&aacute; \\u0111\\u1ed7i sexy v&agrave; h\\u1ea5p d\\u1eabn. Th&aacute;ng 8 n\\u0103m 2018, b\\u1ea3n Flanker \\u0111\\u1ea7u ti&ecirc;n c\\u1ee7a k\\u1ebb c&aacute;m d\\u1ed7 kinh \\u0111i\\u1ec3n &quot;Scandal&quot; \\u0111\\u01b0\\u1ee3c ra m\\u1eaft v\\u1edbi t&ecirc;n g\\u1ecdi l&agrave;&nbsp;<strong>Jean Paul Gaultier Scandal By Night Edp 30Ml<\\/strong>&nbsp;\\u0111&atilde; t\\u1ea1o ra m\\u1ed9t s\\u1ef1 mong ch\\u1edd v&agrave; h&aacute;o h\\u1ee9c v\\u1edbi r\\u1ea5t nhi\\u1ec1u t&iacute;n \\u0111\\u1ed3 n\\u01b0\\u1edbc hoa tr&ecirc;n to&agrave;n th\\u1ebf gi\\u1edbi, \\u0111\\u1eb7c bi\\u1ec7t v\\u1edbi nh\\u1eefng ng\\u01b0\\u1eddi l\\u1ee1 tr&oacute;t say m&ecirc; c&ocirc; n&agrave;ng nguy&ecirc;n b\\u1ea3n Scandal.&nbsp;<\\/p>\\r\\n\\r\\n<p>&nbsp;<\\/p>\\r\\n\\r\\n<p><img src=\\\"https:\\/\\/file.hstatic.net\\/200000117693\\/file\\/jean_paul_gaultier_scandal_edp_30ml_-_4_a561ff8260824894b966b136ec7286c3_grande.jpg\\\" \\/><\\/p>\\r\\n\\r\\n<h2><strong>H\\u01af\\u01a0NG \\u0110\\u1eb6C TR\\u01afNG<\\/strong><\\/h2>\\r\\n\\r\\n<ul>\\r\\n\\t<li>H\\u01b0\\u01a1ng \\u0111\\u1ea7u: M\\u1eadt ong, Chi cam chanh, Cam \\u0111\\u1eafng<\\/li>\\r\\n\\t<li>H\\u01b0\\u01a1ng gi\\u1eefa: Hoa hu\\u1ec7 tr\\u1eafng, C&acirc;y cam t&ugrave;ng Himalaya, Cherry, Hoa Cam, Tr&aacute;i l&ecirc;<\\/li>\\r\\n\\t<li>H\\u01b0\\u01a1ng cu\\u1ed1i: \\u0110\\u1eadu Tonka, C&acirc;y ho\\u1eafc h\\u01b0\\u01a1ng, G\\u1ed7 \\u0111&agrave;n h\\u01b0\\u01a1ng, Vani, X\\u1ea1 h\\u01b0\\u01a1ng<\\/li>\\r\\n<\\/ul>\\r\\n\\r\\n<p>&nbsp;<\\/p>\\r\\n\\r\\n<h2><strong>TH&Ocirc;NG TIN S\\u1ea2N PH\\u1ea8M<\\/strong><\\/h2>\\r\\n\\r\\n<ul>\\r\\n\\t<li>Nh&atilde;n hi\\u1ec7u: Jean Paul Gaultier<\\/li>\\r\\n\\t<li>Gi\\u1edbi t&iacute;nh: N\\u1eef<\\/li>\\r\\n\\t<li>Xu\\u1ea5t x\\u1ee9: Ph&aacute;p<\\/li>\\r\\n\\t<li>Ph&aacute;t h&agrave;nh: 2018<\\/li>\\r\\n\\t<li>N\\u1ed3ng \\u0111\\u1ed9: Eau de parfum<\\/li>\\r\\n\\t<li>Nh&oacute;m h\\u01b0\\u01a1ng: H\\u01b0\\u01a1ng Hoa c\\u1ecf G\\u1ed7 X\\u1ea1 h\\u01b0\\u01a1ng - Floral Woody Musk<\\/li>\\r\\n\\t<li>Phong c&aacute;ch: G\\u1ee3i c\\u1ea3m, S&agrave;nh \\u0111i\\u1ec7u, Khi&ecirc;u kh&iacute;ch<\\/li>\\r\\n<\\/ul>\"}},\"category\":[\"18\",\"21\"],\"image\":\"\\/data\\/product\\/product_use.jpg\",\"sku\":\"LCD12864-3D\",\"alias\":\"nuoc-hoa-nu-paris-bleu-fleurs-de-sistelle-edp\",\"brand_id\":\"3\",\"supplier_id\":\"1\",\"cost\":\"10000\",\"price\":\"870000\",\"tax_id\":\"0\",\"stock\":\"96\",\"weight_class\":null,\"weight\":\"0\",\"length_class\":null,\"length\":\"0\",\"height\":\"0\",\"width\":\"0\",\"property\":\"physical\",\"download_path\":null,\"date_available\":null,\"minimum\":\"1\",\"sort\":\"0\",\"status\":\"on\",\"_token\":\"KZ5cp3PdRvI1Bjr6hOWm7b5yE6efbWhOU04ixXho\"}', '2022-01-14 07:22:13', '2022-01-14 07:22:13'),
(745, 1, 'sc_admin/product', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2022-01-14 07:22:14', '2022-01-14 07:22:14'),
(746, 1, 'sc_admin/product/edit/14', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2022-01-14 07:24:44', '2022-01-14 07:24:44'),
(747, 1, 'sc_admin/product/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2022-01-14 07:24:51', '2022-01-14 07:24:51'),
(748, 1, 'sc_admin/uploads', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"type\":\"product\"}', '2022-01-14 07:26:49', '2022-01-14 07:26:49'),
(749, 1, 'sc_admin/uploads/folders', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"working_dir\":null,\"type\":\"product\",\"_\":\"1642145210754\"}', '2022-01-14 07:26:51', '2022-01-14 07:26:51'),
(750, 1, 'sc_admin/uploads/errors', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"working_dir\":null,\"type\":\"product\",\"_\":\"1642145210755\"}', '2022-01-14 07:26:52', '2022-01-14 07:26:52'),
(751, 1, 'sc_admin/uploads/jsonitems', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"working_dir\":null,\"type\":\"product\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1642145210756\"}', '2022-01-14 07:26:52', '2022-01-14 07:26:52'),
(752, 1, 'sc_admin/uploads', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"type\":\"product\"}', '2022-01-14 07:27:01', '2022-01-14 07:27:01'),
(753, 1, 'sc_admin/uploads/folders', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"working_dir\":null,\"type\":\"product\",\"_\":\"1642145221929\"}', '2022-01-14 07:27:02', '2022-01-14 07:27:02'),
(754, 1, 'sc_admin/uploads/errors', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"working_dir\":null,\"type\":\"product\",\"_\":\"1642145221930\"}', '2022-01-14 07:27:02', '2022-01-14 07:27:02'),
(755, 1, 'sc_admin/uploads/jsonitems', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"working_dir\":null,\"type\":\"product\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1642145221931\"}', '2022-01-14 07:27:03', '2022-01-14 07:27:03'),
(756, 1, 'sc_admin/uploads', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"type\":\"product\"}', '2022-01-14 07:27:08', '2022-01-14 07:27:08'),
(757, 1, 'sc_admin/uploads/folders', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"working_dir\":null,\"type\":\"product\",\"_\":\"1642145228905\"}', '2022-01-14 07:27:09', '2022-01-14 07:27:09'),
(758, 1, 'sc_admin/uploads/errors', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"working_dir\":null,\"type\":\"product\",\"_\":\"1642145228906\"}', '2022-01-14 07:27:09', '2022-01-14 07:27:09'),
(759, 1, 'sc_admin/uploads/jsonitems', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"working_dir\":null,\"type\":\"product\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1642145228907\"}', '2022-01-14 07:27:10', '2022-01-14 07:27:10'),
(760, 1, 'sc_admin/uploads', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"type\":\"product\"}', '2022-01-14 07:27:16', '2022-01-14 07:27:16'),
(761, 1, 'sc_admin/uploads/folders', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"working_dir\":null,\"type\":\"product\",\"_\":\"1642145237225\"}', '2022-01-14 07:27:17', '2022-01-14 07:27:17'),
(762, 1, 'sc_admin/uploads/errors', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"working_dir\":null,\"type\":\"product\",\"_\":\"1642145237226\"}', '2022-01-14 07:27:18', '2022-01-14 07:27:18'),
(763, 1, 'sc_admin/uploads/jsonitems', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"working_dir\":null,\"type\":\"product\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1642145237227\"}', '2022-01-14 07:27:18', '2022-01-14 07:27:18'),
(764, 1, 'sc_admin/uploads', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"type\":\"product\"}', '2022-01-14 07:27:24', '2022-01-14 07:27:24'),
(765, 1, 'sc_admin/uploads/folders', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"working_dir\":null,\"type\":\"product\",\"_\":\"1642145245228\"}', '2022-01-14 07:27:25', '2022-01-14 07:27:25'),
(766, 1, 'sc_admin/uploads/errors', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"working_dir\":null,\"type\":\"product\",\"_\":\"1642145245229\"}', '2022-01-14 07:27:26', '2022-01-14 07:27:26'),
(767, 1, 'sc_admin/uploads/jsonitems', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"working_dir\":null,\"type\":\"product\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1642145245230\"}', '2022-01-14 07:27:26', '2022-01-14 07:27:26'),
(768, 1, 'sc_admin/uploads', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"type\":\"product\"}', '2022-01-14 07:27:35', '2022-01-14 07:27:35'),
(769, 1, 'sc_admin/uploads/folders', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"working_dir\":null,\"type\":\"product\",\"_\":\"1642145256428\"}', '2022-01-14 07:27:37', '2022-01-14 07:27:37'),
(770, 1, 'sc_admin/uploads/errors', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"working_dir\":null,\"type\":\"product\",\"_\":\"1642145256429\"}', '2022-01-14 07:27:37', '2022-01-14 07:27:37'),
(771, 1, 'sc_admin/uploads/jsonitems', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"working_dir\":null,\"type\":\"product\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1642145256430\"}', '2022-01-14 07:27:38', '2022-01-14 07:27:38'),
(772, 1, 'sc_admin/uploads', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"type\":\"product\"}', '2022-01-14 07:27:55', '2022-01-14 07:27:55'),
(773, 1, 'sc_admin/uploads/folders', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"working_dir\":null,\"type\":\"product\",\"_\":\"1642145276309\"}', '2022-01-14 07:27:57', '2022-01-14 07:27:57'),
(774, 1, 'sc_admin/uploads/errors', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"working_dir\":null,\"type\":\"product\",\"_\":\"1642145276310\"}', '2022-01-14 07:27:57', '2022-01-14 07:27:57'),
(775, 1, 'sc_admin/uploads/jsonitems', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"working_dir\":null,\"type\":\"product\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1642145276311\"}', '2022-01-14 07:27:58', '2022-01-14 07:27:58');
INSERT INTO `sc_admin_log` (`id`, `user_id`, `path`, `method`, `ip`, `user_agent`, `input`, `created_at`, `updated_at`) VALUES
(776, 1, 'sc_admin/product/create', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"kind\":\"0\",\"descriptions\":{\"en\":{\"name\":\"N\\u01b0\\u1edbc hoa tresor midnight love edp 75ml\",\"keyword\":null,\"description\":null,\"content\":\"<h1>N\\u01b0\\u1edbc hoa tresor midnight love edp 75ml<\\/h1>\"},\"vi\":{\"name\":\"N\\u01b0\\u1edbc hoa tresor midnight love edp 75ml\",\"keyword\":\"TRESOR MIDNIGHT\",\"description\":\"N\\u01af\\u1edaC HOA TRESOR MIDNIGHT LOVE EDP 75ML (Tresor Midnight Love EDP 75ml) v\\u00e0 phi\\u00ean b\\u1ea3n c\\u1ea3i ti\\u1ebfn Tr\\u00e9sor Midnight Rose La Coquette \\u0111\\u01b0\\u1ee3c coi l\\u00e0 d\\u00f2ng n\\u01b0\\u1edbc hoa th\\u00e0nh c\\u00f4ng c\\u1ee7a Lanc\\u00f4me.\",\"content\":\"<h3><strong>Th&ocirc;ng tin:<\\/strong><\\/h3>\\r\\n\\r\\n<p><strong>N\\u01af\\u1edaC HOA TRESOR MIDNIGHT LOVE EDP 75ML<\\/strong>&nbsp;(Tresor Midnight Love EDP 75ml) v&agrave; phi&ecirc;n b\\u1ea3n c\\u1ea3i ti\\u1ebfn Tr&eacute;sor Midnight Rose La Coquette \\u0111\\u01b0\\u1ee3c coi l&agrave; d&ograve;ng n\\u01b0\\u1edbc hoa th&agrave;nh c&ocirc;ng c\\u1ee7a Lanc&ocirc;me. L\\u1ea5y c\\u1ea3m h\\u1ee9ng t\\u1eeb thi\\u1ebft k\\u1ebf h&igrave;nh d&aacute;ng b&ecirc;n ngo&agrave;i c\\u1ee7a Tr&eacute;sor In Love,&nbsp;<strong>N\\u01af\\u1edaC HOA TRESOR MIDNIGHT LOVE EDP 75ML<\\/strong>&nbsp;mang \\u0111\\u1ebfn m\\u1ed9t s\\u1ea3n ph\\u1ea9m t&iacute;m huy\\u1ec1n b&iacute; t\\u1ef1a nh\\u01b0 m&agrave;n \\u0111&ecirc;m. V&agrave; \\u0111&uacute;ng nh\\u01b0 t&ecirc;n g\\u1ecdi, m&ugrave;i h\\u01b0\\u01a1ng \\u0111\\u1eadm \\u0111&agrave;, \\u0111\\u1ea7y m&ecirc; ho\\u1eb7c c\\u1ee7a hoa h\\u1ed3ng c&ugrave;ng tr&aacute;i Raspberry h\\u1ed3ng m\\u1ecdng n\\u01b0\\u1edbc ch\\u1eafc ch\\u1eafn l&agrave; m\\u1ed9t ch\\u1ecdn l\\u1ef1a ho&agrave;n h\\u1ea3o cho m\\u1ed9t \\u0111&ecirc;m t&igrave;nh y&ecirc;u l&atilde;ng m\\u1ea1n t\\u1ea1i Paris. Ph\\u1ea3ng ph\\u1ea5t kh&ecirc;u g\\u1ee3i c\\u1ee7a h\\u01b0\\u01a1ng hoa m\\u1eabu \\u0111\\u01a1n c&ugrave;ng s\\u1ef1 thanh l\\u1ecbch tinh t\\u1ebf c\\u1ee7a hoa nh&agrave;i khi\\u1ebfn b\\u1ea5t k\\u1ef3 c&ocirc; g&aacute;i n&agrave;o s\\u1edf h\\u1eefu&nbsp;<strong>N\\u01af\\u1edaC HOA TRESOR MIDNIGHT LOVE EDP 75ML<\\/strong>&nbsp;c\\u0169ng tr\\u1edf th&agrave;nh m\\u1ed9t n\\u1eef ho&agrave;ng.<\\/p>\\r\\n\\r\\n<p><img src=\\\"https:\\/\\/www.lancome.vn\\/wp-content\\/uploads\\/2018\\/06\\/3605532423142_Tresor_Midnight_Rose_1-600x600.jpg\\\" \\/><\\/p>\\r\\n\\r\\n<h3><strong>C&ocirc;ng d\\u1ee5ng:<\\/strong><\\/h3>\\r\\n\\r\\n<p>Duy&ecirc;n d&aacute;ng, tinh ngh\\u1ecbch, h\\u1ea5p d\\u1eabn. S\\u1ef1 k\\u1ebft h\\u1ee3p quy\\u1ebfn r\\u0169 t\\u1eeb qu\\u1ea3 m&acirc;m x&ocirc;i, hoa h\\u1ed3ng, Vanilla v&agrave; x\\u1ea1 h\\u01b0\\u01a1ng \\u0111em \\u0111\\u1ebfn s\\u1ef1 g\\u1ee3i c\\u1ea3m, n\\u1eef t&iacute;nh v&agrave; tinh ngh\\u1ecbch. B\\u1eaft l\\u1ea5y tr&aacute;i tim t&ocirc;i n\\u1ebfu anh c&oacute; th\\u1ec3!<\\/p>\\r\\n\\r\\n<p><img src=\\\"https:\\/\\/www.lancome.vn\\/wp-content\\/uploads\\/2018\\/06\\/Tresor-Midnight-Rose-4-4.jpg\\\" \\/><\\/p>\\r\\n\\r\\n<h3><strong>Th&agrave;nh ph\\u1ea7n:<\\/strong><\\/h3>\\r\\n\\r\\n<p>H\\u01b0\\u01a1ng \\u0111\\u1ea7u: Qu\\u1ea3 m&acirc;m x&ocirc;i, n\\u1ee5 hoa l&yacute; chua.<br \\/>\\r\\nH\\u01b0\\u01a1ng gi\\u1eefa: Hoa h\\u1ed3ng, hoa nh&agrave;i.<br \\/>\\r\\nH\\u01b0\\u01a1ng cu\\u1ed1i: Vanilla, x\\u1ea1 h\\u01b0\\u01a1ng.<br \\/>\\r\\n<br \\/>\\r\\n&nbsp;<\\/p>\\r\\n\\r\\n<p><img src=\\\"https:\\/\\/file.hstatic.net\\/200000117693\\/file\\/3605532423265_309a9741d53d423fb53493732847fc87_grande.jpg\\\" \\/><\\/p>\"}},\"category\":[\"22\",\"21\",\"23\"],\"image\":\"\\/data\\/product\\/product_use.jpg\",\"sub_image\":[\"\\/data\\/product\\/giorgio-armani-acqua-di-gioia-orchard.vn-2.jpg\"],\"sku\":null,\"alias\":null,\"brand_id\":null,\"supplier_id\":null,\"cost\":\"0\",\"price\":\"3550000\",\"tax_id\":\"0\",\"price_promotion\":\"2999000\",\"price_promotion_start\":\"2022-01-14\",\"price_promotion_end\":\"2022-02-01\",\"stock\":\"50\",\"weight_class\":\"oz\",\"weight\":\"0\",\"length_class\":\"cm\",\"length\":\"0\",\"height\":\"0\",\"width\":\"0\",\"property\":\"physical\",\"download_path\":null,\"date_available\":\"2022-01-04\",\"minimum\":\"0\",\"sort\":\"0\",\"status\":\"on\",\"_token\":\"KZ5cp3PdRvI1Bjr6hOWm7b5yE6efbWhOU04ixXho\"}', '2022-01-14 07:28:06', '2022-01-14 07:28:06'),
(777, 1, 'sc_admin/product/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2022-01-14 07:28:06', '2022-01-14 07:28:06'),
(778, 1, 'sc_admin/product/create', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"kind\":\"0\",\"descriptions\":{\"en\":{\"name\":\"N\\u01b0\\u1edbc hoa tresor midnight love edp 75ml\",\"keyword\":null,\"description\":null,\"content\":\"<h1>N\\u01b0\\u1edbc hoa tresor midnight love edp 75ml<\\/h1>\"},\"vi\":{\"name\":\"N\\u01b0\\u1edbc hoa tresor midnight love edp 75ml\",\"keyword\":\"TRESOR MIDNIGHT\",\"description\":\"phi\\u00ean b\\u1ea3n c\\u1ea3i ti\\u1ebfn Tr\\u00e9sor Midnight Rose La Coquette \\u0111\\u01b0\\u1ee3c coi l\\u00e0 d\\u00f2ng n\\u01b0\\u1edbc hoa th\\u00e0nh c\\u00f4ng c\\u1ee7a Lanc\\u00f4me.\",\"content\":\"<h3><strong>Th&ocirc;ng tin:<\\/strong><\\/h3>\\r\\n\\r\\n<p><strong>N\\u01af\\u1edaC HOA TRESOR MIDNIGHT LOVE EDP 75ML<\\/strong>&nbsp;(Tresor Midnight Love EDP 75ml) v&agrave; phi&ecirc;n b\\u1ea3n c\\u1ea3i ti\\u1ebfn Tr&eacute;sor Midnight Rose La Coquette \\u0111\\u01b0\\u1ee3c coi l&agrave; d&ograve;ng n\\u01b0\\u1edbc hoa th&agrave;nh c&ocirc;ng c\\u1ee7a Lanc&ocirc;me. L\\u1ea5y c\\u1ea3m h\\u1ee9ng t\\u1eeb thi\\u1ebft k\\u1ebf h&igrave;nh d&aacute;ng b&ecirc;n ngo&agrave;i c\\u1ee7a Tr&eacute;sor In Love,&nbsp;<strong>N\\u01af\\u1edaC HOA TRESOR MIDNIGHT LOVE EDP 75ML<\\/strong>&nbsp;mang \\u0111\\u1ebfn m\\u1ed9t s\\u1ea3n ph\\u1ea9m t&iacute;m huy\\u1ec1n b&iacute; t\\u1ef1a nh\\u01b0 m&agrave;n \\u0111&ecirc;m. V&agrave; \\u0111&uacute;ng nh\\u01b0 t&ecirc;n g\\u1ecdi, m&ugrave;i h\\u01b0\\u01a1ng \\u0111\\u1eadm \\u0111&agrave;, \\u0111\\u1ea7y m&ecirc; ho\\u1eb7c c\\u1ee7a hoa h\\u1ed3ng c&ugrave;ng tr&aacute;i Raspberry h\\u1ed3ng m\\u1ecdng n\\u01b0\\u1edbc ch\\u1eafc ch\\u1eafn l&agrave; m\\u1ed9t ch\\u1ecdn l\\u1ef1a ho&agrave;n h\\u1ea3o cho m\\u1ed9t \\u0111&ecirc;m t&igrave;nh y&ecirc;u l&atilde;ng m\\u1ea1n t\\u1ea1i Paris. Ph\\u1ea3ng ph\\u1ea5t kh&ecirc;u g\\u1ee3i c\\u1ee7a h\\u01b0\\u01a1ng hoa m\\u1eabu \\u0111\\u01a1n c&ugrave;ng s\\u1ef1 thanh l\\u1ecbch tinh t\\u1ebf c\\u1ee7a hoa nh&agrave;i khi\\u1ebfn b\\u1ea5t k\\u1ef3 c&ocirc; g&aacute;i n&agrave;o s\\u1edf h\\u1eefu&nbsp;<strong>N\\u01af\\u1edaC HOA TRESOR MIDNIGHT LOVE EDP 75ML<\\/strong>&nbsp;c\\u0169ng tr\\u1edf th&agrave;nh m\\u1ed9t n\\u1eef ho&agrave;ng.<\\/p>\\r\\n\\r\\n<p><img src=\\\"https:\\/\\/www.lancome.vn\\/wp-content\\/uploads\\/2018\\/06\\/3605532423142_Tresor_Midnight_Rose_1-600x600.jpg\\\" \\/><\\/p>\\r\\n\\r\\n<h3><strong>C&ocirc;ng d\\u1ee5ng:<\\/strong><\\/h3>\\r\\n\\r\\n<p>Duy&ecirc;n d&aacute;ng, tinh ngh\\u1ecbch, h\\u1ea5p d\\u1eabn. S\\u1ef1 k\\u1ebft h\\u1ee3p quy\\u1ebfn r\\u0169 t\\u1eeb qu\\u1ea3 m&acirc;m x&ocirc;i, hoa h\\u1ed3ng, Vanilla v&agrave; x\\u1ea1 h\\u01b0\\u01a1ng \\u0111em \\u0111\\u1ebfn s\\u1ef1 g\\u1ee3i c\\u1ea3m, n\\u1eef t&iacute;nh v&agrave; tinh ngh\\u1ecbch. B\\u1eaft l\\u1ea5y tr&aacute;i tim t&ocirc;i n\\u1ebfu anh c&oacute; th\\u1ec3!<\\/p>\\r\\n\\r\\n<p><img src=\\\"https:\\/\\/www.lancome.vn\\/wp-content\\/uploads\\/2018\\/06\\/Tresor-Midnight-Rose-4-4.jpg\\\" \\/><\\/p>\\r\\n\\r\\n<h3><strong>Th&agrave;nh ph\\u1ea7n:<\\/strong><\\/h3>\\r\\n\\r\\n<p>H\\u01b0\\u01a1ng \\u0111\\u1ea7u: Qu\\u1ea3 m&acirc;m x&ocirc;i, n\\u1ee5 hoa l&yacute; chua.<br \\/>\\r\\nH\\u01b0\\u01a1ng gi\\u1eefa: Hoa h\\u1ed3ng, hoa nh&agrave;i.<br \\/>\\r\\nH\\u01b0\\u01a1ng cu\\u1ed1i: Vanilla, x\\u1ea1 h\\u01b0\\u01a1ng.<br \\/>\\r\\n<br \\/>\\r\\n&nbsp;<\\/p>\\r\\n\\r\\n<p><img src=\\\"https:\\/\\/file.hstatic.net\\/200000117693\\/file\\/3605532423265_309a9741d53d423fb53493732847fc87_grande.jpg\\\" \\/><\\/p>\"}},\"category\":[\"22\",\"21\",\"23\"],\"image\":\"\\/data\\/product\\/product_use.jpg\",\"sub_image\":[\"\\/data\\/product\\/giorgio-armani-acqua-di-gioia-orchard.vn-2.jpg\"],\"sku\":null,\"alias\":\"nuoc-hoa-tresor-midnight-love-edp-75ml\",\"brand_id\":null,\"supplier_id\":null,\"cost\":\"0\",\"price\":\"3550000\",\"tax_id\":\"0\",\"price_promotion\":\"2999000\",\"price_promotion_start\":\"2022-01-14\",\"price_promotion_end\":\"2022-02-01\",\"stock\":\"50\",\"weight_class\":\"oz\",\"weight\":\"0\",\"length_class\":\"cm\",\"length\":\"0\",\"height\":\"0\",\"width\":\"0\",\"property\":\"physical\",\"download_path\":null,\"date_available\":\"2022-01-04\",\"minimum\":\"0\",\"sort\":\"0\",\"status\":\"on\",\"_token\":\"KZ5cp3PdRvI1Bjr6hOWm7b5yE6efbWhOU04ixXho\"}', '2022-01-14 07:28:20', '2022-01-14 07:28:20'),
(779, 1, 'sc_admin/product/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2022-01-14 07:28:21', '2022-01-14 07:28:21'),
(780, 1, 'sc_admin/product/create', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"kind\":\"0\",\"descriptions\":{\"en\":{\"name\":\"N\\u01b0\\u1edbc hoa tresor midnight love edp 75ml\",\"keyword\":null,\"description\":null,\"content\":\"<h1>N\\u01b0\\u1edbc hoa tresor midnight love edp 75ml<\\/h1>\"},\"vi\":{\"name\":\"N\\u01b0\\u1edbc hoa tresor midnight love edp 75ml\",\"keyword\":\"TRESOR MIDNIGHT\",\"description\":\"Tr\\u00e9sor Midnight Rose La Coquette \\u0111\\u01b0\\u1ee3c coi l\\u00e0 d\\u00f2ng n\\u01b0\\u1edbc hoa th\\u00e0nh c\\u00f4ng c\\u1ee7a h\\u00e3ng\",\"content\":\"<h3><strong>Th&ocirc;ng tin:<\\/strong><\\/h3>\\r\\n\\r\\n<p><strong>N\\u01af\\u1edaC HOA TRESOR MIDNIGHT LOVE EDP 75ML<\\/strong>&nbsp;(Tresor Midnight Love EDP 75ml) v&agrave; phi&ecirc;n b\\u1ea3n c\\u1ea3i ti\\u1ebfn Tr&eacute;sor Midnight Rose La Coquette \\u0111\\u01b0\\u1ee3c coi l&agrave; d&ograve;ng n\\u01b0\\u1edbc hoa th&agrave;nh c&ocirc;ng c\\u1ee7a Lanc&ocirc;me. L\\u1ea5y c\\u1ea3m h\\u1ee9ng t\\u1eeb thi\\u1ebft k\\u1ebf h&igrave;nh d&aacute;ng b&ecirc;n ngo&agrave;i c\\u1ee7a Tr&eacute;sor In Love,&nbsp;<strong>N\\u01af\\u1edaC HOA TRESOR MIDNIGHT LOVE EDP 75ML<\\/strong>&nbsp;mang \\u0111\\u1ebfn m\\u1ed9t s\\u1ea3n ph\\u1ea9m t&iacute;m huy\\u1ec1n b&iacute; t\\u1ef1a nh\\u01b0 m&agrave;n \\u0111&ecirc;m. V&agrave; \\u0111&uacute;ng nh\\u01b0 t&ecirc;n g\\u1ecdi, m&ugrave;i h\\u01b0\\u01a1ng \\u0111\\u1eadm \\u0111&agrave;, \\u0111\\u1ea7y m&ecirc; ho\\u1eb7c c\\u1ee7a hoa h\\u1ed3ng c&ugrave;ng tr&aacute;i Raspberry h\\u1ed3ng m\\u1ecdng n\\u01b0\\u1edbc ch\\u1eafc ch\\u1eafn l&agrave; m\\u1ed9t ch\\u1ecdn l\\u1ef1a ho&agrave;n h\\u1ea3o cho m\\u1ed9t \\u0111&ecirc;m t&igrave;nh y&ecirc;u l&atilde;ng m\\u1ea1n t\\u1ea1i Paris. Ph\\u1ea3ng ph\\u1ea5t kh&ecirc;u g\\u1ee3i c\\u1ee7a h\\u01b0\\u01a1ng hoa m\\u1eabu \\u0111\\u01a1n c&ugrave;ng s\\u1ef1 thanh l\\u1ecbch tinh t\\u1ebf c\\u1ee7a hoa nh&agrave;i khi\\u1ebfn b\\u1ea5t k\\u1ef3 c&ocirc; g&aacute;i n&agrave;o s\\u1edf h\\u1eefu&nbsp;<strong>N\\u01af\\u1edaC HOA TRESOR MIDNIGHT LOVE EDP 75ML<\\/strong>&nbsp;c\\u0169ng tr\\u1edf th&agrave;nh m\\u1ed9t n\\u1eef ho&agrave;ng.<\\/p>\\r\\n\\r\\n<p><img src=\\\"https:\\/\\/www.lancome.vn\\/wp-content\\/uploads\\/2018\\/06\\/3605532423142_Tresor_Midnight_Rose_1-600x600.jpg\\\" \\/><\\/p>\\r\\n\\r\\n<h3><strong>C&ocirc;ng d\\u1ee5ng:<\\/strong><\\/h3>\\r\\n\\r\\n<p>Duy&ecirc;n d&aacute;ng, tinh ngh\\u1ecbch, h\\u1ea5p d\\u1eabn. S\\u1ef1 k\\u1ebft h\\u1ee3p quy\\u1ebfn r\\u0169 t\\u1eeb qu\\u1ea3 m&acirc;m x&ocirc;i, hoa h\\u1ed3ng, Vanilla v&agrave; x\\u1ea1 h\\u01b0\\u01a1ng \\u0111em \\u0111\\u1ebfn s\\u1ef1 g\\u1ee3i c\\u1ea3m, n\\u1eef t&iacute;nh v&agrave; tinh ngh\\u1ecbch. B\\u1eaft l\\u1ea5y tr&aacute;i tim t&ocirc;i n\\u1ebfu anh c&oacute; th\\u1ec3!<\\/p>\\r\\n\\r\\n<p><img src=\\\"https:\\/\\/www.lancome.vn\\/wp-content\\/uploads\\/2018\\/06\\/Tresor-Midnight-Rose-4-4.jpg\\\" \\/><\\/p>\\r\\n\\r\\n<h3><strong>Th&agrave;nh ph\\u1ea7n:<\\/strong><\\/h3>\\r\\n\\r\\n<p>H\\u01b0\\u01a1ng \\u0111\\u1ea7u: Qu\\u1ea3 m&acirc;m x&ocirc;i, n\\u1ee5 hoa l&yacute; chua.<br \\/>\\r\\nH\\u01b0\\u01a1ng gi\\u1eefa: Hoa h\\u1ed3ng, hoa nh&agrave;i.<br \\/>\\r\\nH\\u01b0\\u01a1ng cu\\u1ed1i: Vanilla, x\\u1ea1 h\\u01b0\\u01a1ng.<br \\/>\\r\\n<br \\/>\\r\\n&nbsp;<\\/p>\\r\\n\\r\\n<p><img src=\\\"https:\\/\\/file.hstatic.net\\/200000117693\\/file\\/3605532423265_309a9741d53d423fb53493732847fc87_grande.jpg\\\" \\/><\\/p>\"}},\"category\":[\"22\",\"21\",\"23\"],\"image\":\"\\/data\\/product\\/product_use.jpg\",\"sub_image\":[\"\\/data\\/product\\/giorgio-armani-acqua-di-gioia-orchard.vn-2.jpg\"],\"sku\":null,\"alias\":\"nuoc-hoa-tresor-midnight-love-edp-75ml\",\"brand_id\":null,\"supplier_id\":null,\"cost\":\"0\",\"price\":\"3550000\",\"tax_id\":\"0\",\"price_promotion\":\"2999000\",\"price_promotion_start\":\"2022-01-14\",\"price_promotion_end\":\"2022-02-01\",\"stock\":\"50\",\"weight_class\":\"oz\",\"weight\":\"0\",\"length_class\":\"cm\",\"length\":\"0\",\"height\":\"0\",\"width\":\"0\",\"property\":\"physical\",\"download_path\":null,\"date_available\":\"2022-01-04\",\"minimum\":\"0\",\"sort\":\"0\",\"status\":\"on\",\"_token\":\"KZ5cp3PdRvI1Bjr6hOWm7b5yE6efbWhOU04ixXho\"}', '2022-01-14 07:28:43', '2022-01-14 07:28:43'),
(781, 1, 'sc_admin/product/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2022-01-14 07:28:43', '2022-01-14 07:28:43'),
(782, 1, 'sc_admin/product/create', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"kind\":\"0\",\"descriptions\":{\"en\":{\"name\":\"N\\u01b0\\u1edbc hoa tresor midnight love edp 75ml\",\"keyword\":null,\"description\":null,\"content\":\"<h1>N\\u01b0\\u1edbc hoa tresor midnight love edp 75ml<\\/h1>\"},\"vi\":{\"name\":\"N\\u01b0\\u1edbc hoa tresor midnight love edp 75ml\",\"keyword\":\"TRESOR MIDNIGHT\",\"description\":\"Tr\\u00e9sor Midnight Rose La Coquette \\u0111\\u01b0\\u1ee3c coi l\\u00e0 d\\u00f2ng n\\u01b0\\u1edbc hoa th\\u00e0nh c\\u00f4ng c\\u1ee7a h\\u00e3ng\",\"content\":\"<h3><strong>Th&ocirc;ng tin:<\\/strong><\\/h3>\\r\\n\\r\\n<p><strong>N\\u01af\\u1edaC HOA TRESOR MIDNIGHT LOVE EDP 75ML<\\/strong>&nbsp;(Tresor Midnight Love EDP 75ml) v&agrave; phi&ecirc;n b\\u1ea3n c\\u1ea3i ti\\u1ebfn Tr&eacute;sor Midnight Rose La Coquette \\u0111\\u01b0\\u1ee3c coi l&agrave; d&ograve;ng n\\u01b0\\u1edbc hoa th&agrave;nh c&ocirc;ng c\\u1ee7a Lanc&ocirc;me. L\\u1ea5y c\\u1ea3m h\\u1ee9ng t\\u1eeb thi\\u1ebft k\\u1ebf h&igrave;nh d&aacute;ng b&ecirc;n ngo&agrave;i c\\u1ee7a Tr&eacute;sor In Love,&nbsp;<strong>N\\u01af\\u1edaC HOA TRESOR MIDNIGHT LOVE EDP 75ML<\\/strong>&nbsp;mang \\u0111\\u1ebfn m\\u1ed9t s\\u1ea3n ph\\u1ea9m t&iacute;m huy\\u1ec1n b&iacute; t\\u1ef1a nh\\u01b0 m&agrave;n \\u0111&ecirc;m. V&agrave; \\u0111&uacute;ng nh\\u01b0 t&ecirc;n g\\u1ecdi, m&ugrave;i h\\u01b0\\u01a1ng \\u0111\\u1eadm \\u0111&agrave;, \\u0111\\u1ea7y m&ecirc; ho\\u1eb7c c\\u1ee7a hoa h\\u1ed3ng c&ugrave;ng tr&aacute;i Raspberry h\\u1ed3ng m\\u1ecdng n\\u01b0\\u1edbc ch\\u1eafc ch\\u1eafn l&agrave; m\\u1ed9t ch\\u1ecdn l\\u1ef1a ho&agrave;n h\\u1ea3o cho m\\u1ed9t \\u0111&ecirc;m t&igrave;nh y&ecirc;u l&atilde;ng m\\u1ea1n t\\u1ea1i Paris. Ph\\u1ea3ng ph\\u1ea5t kh&ecirc;u g\\u1ee3i c\\u1ee7a h\\u01b0\\u01a1ng hoa m\\u1eabu \\u0111\\u01a1n c&ugrave;ng s\\u1ef1 thanh l\\u1ecbch tinh t\\u1ebf c\\u1ee7a hoa nh&agrave;i khi\\u1ebfn b\\u1ea5t k\\u1ef3 c&ocirc; g&aacute;i n&agrave;o s\\u1edf h\\u1eefu&nbsp;<strong>N\\u01af\\u1edaC HOA TRESOR MIDNIGHT LOVE EDP 75ML<\\/strong>&nbsp;c\\u0169ng tr\\u1edf th&agrave;nh m\\u1ed9t n\\u1eef ho&agrave;ng.<\\/p>\\r\\n\\r\\n<p><img src=\\\"https:\\/\\/www.lancome.vn\\/wp-content\\/uploads\\/2018\\/06\\/3605532423142_Tresor_Midnight_Rose_1-600x600.jpg\\\" \\/><\\/p>\\r\\n\\r\\n<h3><strong>C&ocirc;ng d\\u1ee5ng:<\\/strong><\\/h3>\\r\\n\\r\\n<p>Duy&ecirc;n d&aacute;ng, tinh ngh\\u1ecbch, h\\u1ea5p d\\u1eabn. S\\u1ef1 k\\u1ebft h\\u1ee3p quy\\u1ebfn r\\u0169 t\\u1eeb qu\\u1ea3 m&acirc;m x&ocirc;i, hoa h\\u1ed3ng, Vanilla v&agrave; x\\u1ea1 h\\u01b0\\u01a1ng \\u0111em \\u0111\\u1ebfn s\\u1ef1 g\\u1ee3i c\\u1ea3m, n\\u1eef t&iacute;nh v&agrave; tinh ngh\\u1ecbch. B\\u1eaft l\\u1ea5y tr&aacute;i tim t&ocirc;i n\\u1ebfu anh c&oacute; th\\u1ec3!<\\/p>\\r\\n\\r\\n<p><img src=\\\"https:\\/\\/www.lancome.vn\\/wp-content\\/uploads\\/2018\\/06\\/Tresor-Midnight-Rose-4-4.jpg\\\" \\/><\\/p>\\r\\n\\r\\n<h3><strong>Th&agrave;nh ph\\u1ea7n:<\\/strong><\\/h3>\\r\\n\\r\\n<p>H\\u01b0\\u01a1ng \\u0111\\u1ea7u: Qu\\u1ea3 m&acirc;m x&ocirc;i, n\\u1ee5 hoa l&yacute; chua.<br \\/>\\r\\nH\\u01b0\\u01a1ng gi\\u1eefa: Hoa h\\u1ed3ng, hoa nh&agrave;i.<br \\/>\\r\\nH\\u01b0\\u01a1ng cu\\u1ed1i: Vanilla, x\\u1ea1 h\\u01b0\\u01a1ng.<br \\/>\\r\\n<br \\/>\\r\\n&nbsp;<\\/p>\\r\\n\\r\\n<p><img src=\\\"https:\\/\\/file.hstatic.net\\/200000117693\\/file\\/3605532423265_309a9741d53d423fb53493732847fc87_grande.jpg\\\" \\/><\\/p>\"}},\"category\":[\"22\",\"21\",\"23\"],\"image\":\"\\/data\\/product\\/product_use.jpg\",\"sub_image\":[\"\\/data\\/product\\/giorgio-armani-acqua-di-gioia-orchard.vn-2.jpg\"],\"sku\":\"TSA7DHA\",\"alias\":\"nuoc-hoa-tresor-midnight-love-edp-75ml\",\"brand_id\":null,\"supplier_id\":null,\"cost\":\"0\",\"price\":\"3550000\",\"tax_id\":\"0\",\"price_promotion\":\"2999000\",\"price_promotion_start\":\"2022-01-14\",\"price_promotion_end\":\"2022-02-01\",\"stock\":\"50\",\"weight_class\":\"oz\",\"weight\":\"0\",\"length_class\":\"cm\",\"length\":\"0\",\"height\":\"0\",\"width\":\"0\",\"property\":\"physical\",\"download_path\":null,\"date_available\":\"2022-01-04\",\"minimum\":\"0\",\"sort\":\"0\",\"status\":\"on\",\"_token\":\"KZ5cp3PdRvI1Bjr6hOWm7b5yE6efbWhOU04ixXho\"}', '2022-01-14 07:28:59', '2022-01-14 07:28:59'),
(783, 1, 'sc_admin/product', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2022-01-14 07:29:00', '2022-01-14 07:29:00'),
(784, 1, 'sc_admin/product/edit/14', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2022-01-14 07:30:00', '2022-01-14 07:30:00'),
(785, 1, 'sc_admin/uploads', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"type\":\"product\"}', '2022-01-14 07:30:12', '2022-01-14 07:30:12'),
(786, 1, 'sc_admin/uploads/folders', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"working_dir\":null,\"type\":\"product\",\"_\":\"1642145412639\"}', '2022-01-14 07:30:13', '2022-01-14 07:30:13'),
(787, 1, 'sc_admin/uploads/errors', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"working_dir\":null,\"type\":\"product\",\"_\":\"1642145412640\"}', '2022-01-14 07:30:13', '2022-01-14 07:30:13'),
(788, 1, 'sc_admin/uploads/jsonitems', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"working_dir\":null,\"type\":\"product\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1642145412641\"}', '2022-01-14 07:30:14', '2022-01-14 07:30:14'),
(789, 1, 'sc_admin/uploads', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"type\":\"product\"}', '2022-01-14 07:30:19', '2022-01-14 07:30:19'),
(790, 1, 'sc_admin/uploads/folders', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"working_dir\":null,\"type\":\"product\",\"_\":\"1642145420309\"}', '2022-01-14 07:30:20', '2022-01-14 07:30:20'),
(791, 1, 'sc_admin/uploads/errors', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"working_dir\":null,\"type\":\"product\",\"_\":\"1642145420310\"}', '2022-01-14 07:30:21', '2022-01-14 07:30:21'),
(792, 1, 'sc_admin/uploads/jsonitems', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"working_dir\":null,\"type\":\"product\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1642145420311\"}', '2022-01-14 07:30:22', '2022-01-14 07:30:22'),
(793, 1, 'sc_admin/product/edit/14', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"descriptions\":{\"en\":{\"name\":\"N\\u01b0\\u1edbc hoa n\\u1eef paris bleu fleurs de sistelle edp (100ml) - ph\\u00e1p\",\"keyword\":null,\"description\":null,\"content\":\"<p>H\\u1eb3n \\u0111\\u1ed9 ph\\u1ee7 s&oacute;ng v&agrave; s\\u1ef1 c&agrave;n qu&eacute;t kh\\u1eafp c&aacute;c di\\u1ec5n \\u0111&agrave;n v&agrave; c&aacute;c b\\u1ea3ng x\\u1ebfp h\\u1ea1ng nh\\u1eefng chai n\\u01b0\\u1edbc hoa sexy, quy\\u1ebfn r\\u0169 nh\\u1ea5t c\\u1ee7a Scancal l&agrave; \\u0111i\\u1ec1u kh&ocirc;ng c&ograve;n l\\u1ea1 l\\u1eabm g&igrave; v\\u1edbi nhi\\u1ec1u ng\\u01b0\\u1eddi. Th\\u1eadm ch&iacute; \\u1edf Scandal, \\u0111\\u1ecbnh ki\\u1ebfn v\\u1ec1 n\\u01b0\\u1edbc hoa ng\\u1ecdt v&agrave; n\\u1ed3ng th\\u01b0\\u1eddng k&eacute;n ng\\u01b0\\u1eddi c\\u0169ng \\u0111\\u01b0\\u1ee3c thay \\u0111\\u1ed5i quan \\u0111i\\u1ec3m m\\u1ed9t c&aacute;ch \\u0111&aacute;ng k\\u1ec3 \\u1edf r\\u1ea5t nhi\\u1ec1u ng\\u01b0\\u1eddi, b\\u1edfi ng\\u1ecdt th\\u1eadt, n\\u1ed3ng v&agrave; \\u0111\\u1eadm th\\u1eadt, nh\\u1eefng n&oacute; qu&aacute; \\u0111\\u1ed7i sexy v&agrave; h\\u1ea5p d\\u1eabn. Th&aacute;ng 8 n\\u0103m 2018, b\\u1ea3n Flanker \\u0111\\u1ea7u ti&ecirc;n c\\u1ee7a k\\u1ebb c&aacute;m d\\u1ed7 kinh \\u0111i\\u1ec3n &quot;Scandal&quot; \\u0111\\u01b0\\u1ee3c ra m\\u1eaft v\\u1edbi t&ecirc;n g\\u1ecdi l&agrave;&nbsp;<strong>Jean Paul Gaultier Scandal By Night Edp 30Ml<\\/strong>&nbsp;\\u0111&atilde; t\\u1ea1o ra m\\u1ed9t s\\u1ef1 mong ch\\u1edd v&agrave; h&aacute;o h\\u1ee9c v\\u1edbi r\\u1ea5t nhi\\u1ec1u t&iacute;n \\u0111\\u1ed3 n\\u01b0\\u1edbc hoa tr&ecirc;n to&agrave;n th\\u1ebf gi\\u1edbi, \\u0111\\u1eb7c bi\\u1ec7t v\\u1edbi nh\\u1eefng ng\\u01b0\\u1eddi l\\u1ee1 tr&oacute;t say m&ecirc; c&ocirc; n&agrave;ng nguy&ecirc;n b\\u1ea3n Scandal.&nbsp;<\\/p>\\r\\n\\r\\n<p>&nbsp;<\\/p>\\r\\n\\r\\n<p><img src=\\\"https:\\/\\/file.hstatic.net\\/200000117693\\/file\\/jean_paul_gaultier_scandal_edp_30ml_-_4_a561ff8260824894b966b136ec7286c3_grande.jpg\\\" \\/><\\/p>\\r\\n\\r\\n<h2><strong>H\\u01af\\u01a0NG \\u0110\\u1eb6C TR\\u01afNG<\\/strong><\\/h2>\\r\\n\\r\\n<ul>\\r\\n\\t<li>H\\u01b0\\u01a1ng \\u0111\\u1ea7u: M\\u1eadt ong, Chi cam chanh, Cam \\u0111\\u1eafng<\\/li>\\r\\n\\t<li>H\\u01b0\\u01a1ng gi\\u1eefa: Hoa hu\\u1ec7 tr\\u1eafng, C&acirc;y cam t&ugrave;ng Himalaya, Cherry, Hoa Cam, Tr&aacute;i l&ecirc;<\\/li>\\r\\n\\t<li>H\\u01b0\\u01a1ng cu\\u1ed1i: \\u0110\\u1eadu Tonka, C&acirc;y ho\\u1eafc h\\u01b0\\u01a1ng, G\\u1ed7 \\u0111&agrave;n h\\u01b0\\u01a1ng, Vani, X\\u1ea1 h\\u01b0\\u01a1ng<\\/li>\\r\\n<\\/ul>\\r\\n\\r\\n<p>&nbsp;<\\/p>\\r\\n\\r\\n<h2><strong>TH&Ocirc;NG TIN S\\u1ea2N PH\\u1ea8M<\\/strong><\\/h2>\\r\\n\\r\\n<ul>\\r\\n\\t<li>Nh&atilde;n hi\\u1ec7u: Jean Paul Gaultier<\\/li>\\r\\n\\t<li>Gi\\u1edbi t&iacute;nh: N\\u1eef<\\/li>\\r\\n\\t<li>Xu\\u1ea5t x\\u1ee9: Ph&aacute;p<\\/li>\\r\\n\\t<li>Ph&aacute;t h&agrave;nh: 2018<\\/li>\\r\\n\\t<li>N\\u1ed3ng \\u0111\\u1ed9: Eau de parfum<\\/li>\\r\\n\\t<li>Nh&oacute;m h\\u01b0\\u01a1ng: H\\u01b0\\u01a1ng Hoa c\\u1ecf G\\u1ed7 X\\u1ea1 h\\u01b0\\u01a1ng - Floral Woody Musk<\\/li>\\r\\n\\t<li>Phong c&aacute;ch: G\\u1ee3i c\\u1ea3m, S&agrave;nh \\u0111i\\u1ec7u, Khi&ecirc;u kh&iacute;ch<\\/li>\\r\\n<\\/ul>\"},\"vi\":{\"name\":\"N\\u01b0\\u1edbc hoa n\\u1eef paris bleu fleurs de sistelle edp (100ml) - ph\\u00e1p\",\"keyword\":null,\"description\":null,\"content\":\"<p>H\\u1eb3n \\u0111\\u1ed9 ph\\u1ee7 s&oacute;ng v&agrave; s\\u1ef1 c&agrave;n qu&eacute;t kh\\u1eafp c&aacute;c di\\u1ec5n \\u0111&agrave;n v&agrave; c&aacute;c b\\u1ea3ng x\\u1ebfp h\\u1ea1ng nh\\u1eefng chai n\\u01b0\\u1edbc hoa sexy, quy\\u1ebfn r\\u0169 nh\\u1ea5t c\\u1ee7a Scancal l&agrave; \\u0111i\\u1ec1u kh&ocirc;ng c&ograve;n l\\u1ea1 l\\u1eabm g&igrave; v\\u1edbi nhi\\u1ec1u ng\\u01b0\\u1eddi. Th\\u1eadm ch&iacute; \\u1edf Scandal, \\u0111\\u1ecbnh ki\\u1ebfn v\\u1ec1 n\\u01b0\\u1edbc hoa ng\\u1ecdt v&agrave; n\\u1ed3ng th\\u01b0\\u1eddng k&eacute;n ng\\u01b0\\u1eddi c\\u0169ng \\u0111\\u01b0\\u1ee3c thay \\u0111\\u1ed5i quan \\u0111i\\u1ec3m m\\u1ed9t c&aacute;ch \\u0111&aacute;ng k\\u1ec3 \\u1edf r\\u1ea5t nhi\\u1ec1u ng\\u01b0\\u1eddi, b\\u1edfi ng\\u1ecdt th\\u1eadt, n\\u1ed3ng v&agrave; \\u0111\\u1eadm th\\u1eadt, nh\\u1eefng n&oacute; qu&aacute; \\u0111\\u1ed7i sexy v&agrave; h\\u1ea5p d\\u1eabn. Th&aacute;ng 8 n\\u0103m 2018, b\\u1ea3n Flanker \\u0111\\u1ea7u ti&ecirc;n c\\u1ee7a k\\u1ebb c&aacute;m d\\u1ed7 kinh \\u0111i\\u1ec3n &quot;Scandal&quot; \\u0111\\u01b0\\u1ee3c ra m\\u1eaft v\\u1edbi t&ecirc;n g\\u1ecdi l&agrave;&nbsp;<strong>Jean Paul Gaultier Scandal By Night Edp 30Ml<\\/strong>&nbsp;\\u0111&atilde; t\\u1ea1o ra m\\u1ed9t s\\u1ef1 mong ch\\u1edd v&agrave; h&aacute;o h\\u1ee9c v\\u1edbi r\\u1ea5t nhi\\u1ec1u t&iacute;n \\u0111\\u1ed3 n\\u01b0\\u1edbc hoa tr&ecirc;n to&agrave;n th\\u1ebf gi\\u1edbi, \\u0111\\u1eb7c bi\\u1ec7t v\\u1edbi nh\\u1eefng ng\\u01b0\\u1eddi l\\u1ee1 tr&oacute;t say m&ecirc; c&ocirc; n&agrave;ng nguy&ecirc;n b\\u1ea3n Scandal.&nbsp;<\\/p>\\r\\n\\r\\n<p>&nbsp;<\\/p>\\r\\n\\r\\n<p><img src=\\\"https:\\/\\/file.hstatic.net\\/200000117693\\/file\\/jean_paul_gaultier_scandal_edp_30ml_-_4_a561ff8260824894b966b136ec7286c3_grande.jpg\\\" \\/><\\/p>\\r\\n\\r\\n<h2><strong>H\\u01af\\u01a0NG \\u0110\\u1eb6C TR\\u01afNG<\\/strong><\\/h2>\\r\\n\\r\\n<ul>\\r\\n\\t<li>H\\u01b0\\u01a1ng \\u0111\\u1ea7u: M\\u1eadt ong, Chi cam chanh, Cam \\u0111\\u1eafng<\\/li>\\r\\n\\t<li>H\\u01b0\\u01a1ng gi\\u1eefa: Hoa hu\\u1ec7 tr\\u1eafng, C&acirc;y cam t&ugrave;ng Himalaya, Cherry, Hoa Cam, Tr&aacute;i l&ecirc;<\\/li>\\r\\n\\t<li>H\\u01b0\\u01a1ng cu\\u1ed1i: \\u0110\\u1eadu Tonka, C&acirc;y ho\\u1eafc h\\u01b0\\u01a1ng, G\\u1ed7 \\u0111&agrave;n h\\u01b0\\u01a1ng, Vani, X\\u1ea1 h\\u01b0\\u01a1ng<\\/li>\\r\\n<\\/ul>\\r\\n\\r\\n<p>&nbsp;<\\/p>\\r\\n\\r\\n<h2><strong>TH&Ocirc;NG TIN S\\u1ea2N PH\\u1ea8M<\\/strong><\\/h2>\\r\\n\\r\\n<ul>\\r\\n\\t<li>Nh&atilde;n hi\\u1ec7u: Jean Paul Gaultier<\\/li>\\r\\n\\t<li>Gi\\u1edbi t&iacute;nh: N\\u1eef<\\/li>\\r\\n\\t<li>Xu\\u1ea5t x\\u1ee9: Ph&aacute;p<\\/li>\\r\\n\\t<li>Ph&aacute;t h&agrave;nh: 2018<\\/li>\\r\\n\\t<li>N\\u1ed3ng \\u0111\\u1ed9: Eau de parfum<\\/li>\\r\\n\\t<li>Nh&oacute;m h\\u01b0\\u01a1ng: H\\u01b0\\u01a1ng Hoa c\\u1ecf G\\u1ed7 X\\u1ea1 h\\u01b0\\u01a1ng - Floral Woody Musk<\\/li>\\r\\n\\t<li>Phong c&aacute;ch: G\\u1ee3i c\\u1ea3m, S&agrave;nh \\u0111i\\u1ec7u, Khi&ecirc;u kh&iacute;ch<\\/li>\\r\\n<\\/ul>\"}},\"category\":[\"18\",\"21\"],\"image\":\"\\/data\\/product\\/product_use.jpg\",\"sub_image\":[\"\\/data\\/product\\/giorgio-armani-acqua-di-gioia-orchard.vn-2.jpg\",\"\\/data\\/product\\/lattafa-mazaaji-100ml-apa-de-parfum_8367043.jpg\"],\"sku\":\"LCD12864-3D\",\"alias\":\"nuoc-hoa-nu-paris-bleu-fleurs-de-sistelle-edp\",\"brand_id\":\"3\",\"supplier_id\":\"1\",\"cost\":\"10000\",\"price\":\"870000\",\"tax_id\":\"0\",\"stock\":\"96\",\"weight_class\":null,\"weight\":\"0\",\"length_class\":null,\"length\":\"0\",\"height\":\"0\",\"width\":\"0\",\"property\":\"physical\",\"download_path\":null,\"date_available\":null,\"minimum\":\"1\",\"sort\":\"0\",\"status\":\"on\",\"_token\":\"KZ5cp3PdRvI1Bjr6hOWm7b5yE6efbWhOU04ixXho\"}', '2022-01-14 07:30:27', '2022-01-14 07:30:27'),
(794, 1, 'sc_admin/product', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2022-01-14 07:30:28', '2022-01-14 07:30:28'),
(795, 1, 'sc_admin/product/edit/18', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2022-01-14 07:31:10', '2022-01-14 07:31:10'),
(796, 1, 'sc_admin/uploads', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"type\":\"product\"}', '2022-01-14 07:32:00', '2022-01-14 07:32:00'),
(797, 1, 'sc_admin/uploads/folders', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"working_dir\":null,\"type\":\"product\",\"_\":\"1642145521511\"}', '2022-01-14 07:32:02', '2022-01-14 07:32:02'),
(798, 1, 'sc_admin/uploads/errors', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"working_dir\":null,\"type\":\"product\",\"_\":\"1642145521512\"}', '2022-01-14 07:32:03', '2022-01-14 07:32:03'),
(799, 1, 'sc_admin/uploads/jsonitems', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"working_dir\":null,\"type\":\"product\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1642145521513\"}', '2022-01-14 07:32:04', '2022-01-14 07:32:04'),
(800, 1, 'sc_admin/product/edit/18', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"descriptions\":{\"en\":{\"name\":\"N\\u01b0\\u1edbc hoa tresor midnight love edp 75ml\",\"keyword\":null,\"description\":null,\"content\":\"<h1>N\\u01b0\\u1edbc hoa tresor midnight love edp 75ml<\\/h1>\"},\"vi\":{\"name\":\"N\\u01b0\\u1edbc hoa tresor midnight love edp 75ml\",\"keyword\":\"TRESOR MIDNIGHT\",\"description\":\"Tr\\u00e9sor Midnight Rose La Coquette \\u0111\\u01b0\\u1ee3c coi l\\u00e0 d\\u00f2ng n\\u01b0\\u1edbc hoa th\\u00e0nh c\\u00f4ng c\\u1ee7a h\\u00e3ng\",\"content\":\"<h3><strong>Th&ocirc;ng tin:<\\/strong><\\/h3>\\r\\n\\r\\n<p><strong>N\\u01af\\u1edaC HOA TRESOR MIDNIGHT LOVE EDP 75ML<\\/strong>&nbsp;(Tresor Midnight Love EDP 75ml) v&agrave; phi&ecirc;n b\\u1ea3n c\\u1ea3i ti\\u1ebfn Tr&eacute;sor Midnight Rose La Coquette \\u0111\\u01b0\\u1ee3c coi l&agrave; d&ograve;ng n\\u01b0\\u1edbc hoa th&agrave;nh c&ocirc;ng c\\u1ee7a Lanc&ocirc;me. L\\u1ea5y c\\u1ea3m h\\u1ee9ng t\\u1eeb thi\\u1ebft k\\u1ebf h&igrave;nh d&aacute;ng b&ecirc;n ngo&agrave;i c\\u1ee7a Tr&eacute;sor In Love,&nbsp;<strong>N\\u01af\\u1edaC HOA TRESOR MIDNIGHT LOVE EDP 75ML<\\/strong>&nbsp;mang \\u0111\\u1ebfn m\\u1ed9t s\\u1ea3n ph\\u1ea9m t&iacute;m huy\\u1ec1n b&iacute; t\\u1ef1a nh\\u01b0 m&agrave;n \\u0111&ecirc;m. V&agrave; \\u0111&uacute;ng nh\\u01b0 t&ecirc;n g\\u1ecdi, m&ugrave;i h\\u01b0\\u01a1ng \\u0111\\u1eadm \\u0111&agrave;, \\u0111\\u1ea7y m&ecirc; ho\\u1eb7c c\\u1ee7a hoa h\\u1ed3ng c&ugrave;ng tr&aacute;i Raspberry h\\u1ed3ng m\\u1ecdng n\\u01b0\\u1edbc ch\\u1eafc ch\\u1eafn l&agrave; m\\u1ed9t ch\\u1ecdn l\\u1ef1a ho&agrave;n h\\u1ea3o cho m\\u1ed9t \\u0111&ecirc;m t&igrave;nh y&ecirc;u l&atilde;ng m\\u1ea1n t\\u1ea1i Paris. Ph\\u1ea3ng ph\\u1ea5t kh&ecirc;u g\\u1ee3i c\\u1ee7a h\\u01b0\\u01a1ng hoa m\\u1eabu \\u0111\\u01a1n c&ugrave;ng s\\u1ef1 thanh l\\u1ecbch tinh t\\u1ebf c\\u1ee7a hoa nh&agrave;i khi\\u1ebfn b\\u1ea5t k\\u1ef3 c&ocirc; g&aacute;i n&agrave;o s\\u1edf h\\u1eefu&nbsp;<strong>N\\u01af\\u1edaC HOA TRESOR MIDNIGHT LOVE EDP 75ML<\\/strong>&nbsp;c\\u0169ng tr\\u1edf th&agrave;nh m\\u1ed9t n\\u1eef ho&agrave;ng.<\\/p>\\r\\n\\r\\n<p><img src=\\\"https:\\/\\/www.lancome.vn\\/wp-content\\/uploads\\/2018\\/06\\/3605532423142_Tresor_Midnight_Rose_1-600x600.jpg\\\" \\/><\\/p>\\r\\n\\r\\n<h3><strong>C&ocirc;ng d\\u1ee5ng:<\\/strong><\\/h3>\\r\\n\\r\\n<p>Duy&ecirc;n d&aacute;ng, tinh ngh\\u1ecbch, h\\u1ea5p d\\u1eabn. S\\u1ef1 k\\u1ebft h\\u1ee3p quy\\u1ebfn r\\u0169 t\\u1eeb qu\\u1ea3 m&acirc;m x&ocirc;i, hoa h\\u1ed3ng, Vanilla v&agrave; x\\u1ea1 h\\u01b0\\u01a1ng \\u0111em \\u0111\\u1ebfn s\\u1ef1 g\\u1ee3i c\\u1ea3m, n\\u1eef t&iacute;nh v&agrave; tinh ngh\\u1ecbch. B\\u1eaft l\\u1ea5y tr&aacute;i tim t&ocirc;i n\\u1ebfu anh c&oacute; th\\u1ec3!<\\/p>\\r\\n\\r\\n<p><img src=\\\"https:\\/\\/www.lancome.vn\\/wp-content\\/uploads\\/2018\\/06\\/Tresor-Midnight-Rose-4-4.jpg\\\" \\/><\\/p>\\r\\n\\r\\n<h3><strong>Th&agrave;nh ph\\u1ea7n:<\\/strong><\\/h3>\\r\\n\\r\\n<p>H\\u01b0\\u01a1ng \\u0111\\u1ea7u: Qu\\u1ea3 m&acirc;m x&ocirc;i, n\\u1ee5 hoa l&yacute; chua.<br \\/>\\r\\nH\\u01b0\\u01a1ng gi\\u1eefa: Hoa h\\u1ed3ng, hoa nh&agrave;i.<br \\/>\\r\\nH\\u01b0\\u01a1ng cu\\u1ed1i: Vanilla, x\\u1ea1 h\\u01b0\\u01a1ng.<br \\/>\\r\\n<br \\/>\\r\\n&nbsp;<\\/p>\\r\\n\\r\\n<p><img src=\\\"https:\\/\\/file.hstatic.net\\/200000117693\\/file\\/3605532423265_309a9741d53d423fb53493732847fc87_grande.jpg\\\" \\/><\\/p>\"}},\"category\":[\"22\",\"21\",\"23\"],\"image\":\"\\/data\\/product\\/product_use.jpg\",\"sub_image\":[\"\\/data\\/product\\/giorgio-armani-acqua-di-gioia-orchard.vn-2.jpg\",\"\\/data\\/product\\/lattafa-mazaaji-100ml-apa-de-parfum_8367043.jpg\"],\"sku\":\"TSA7DHA\",\"alias\":\"nuoc-hoa-tresor-midnight-love-edp-75ml\",\"brand_id\":null,\"supplier_id\":null,\"cost\":\"0\",\"price\":\"3550000\",\"tax_id\":\"0\",\"price_promotion\":\"2999000\",\"price_promotion_start\":\"2022-01-14\",\"price_promotion_end\":\"2022-02-01\",\"stock\":\"50\",\"weight_class\":\"oz\",\"weight\":\"0\",\"length_class\":\"cm\",\"length\":\"0\",\"height\":\"0\",\"width\":\"0\",\"property\":\"physical\",\"download_path\":null,\"date_available\":\"2022-01-04\",\"minimum\":\"0\",\"sort\":\"0\",\"status\":\"on\",\"_token\":\"KZ5cp3PdRvI1Bjr6hOWm7b5yE6efbWhOU04ixXho\"}', '2022-01-14 07:32:10', '2022-01-14 07:32:10'),
(801, 1, 'sc_admin/product', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2022-01-14 07:32:12', '2022-01-14 07:32:12'),
(802, 1, 'sc_admin/product/edit/14', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2022-01-14 07:32:33', '2022-01-14 07:32:33'),
(803, 1, 'sc_admin/product/edit/14', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"descriptions\":{\"en\":{\"name\":\"N\\u01b0\\u1edbc hoa paris bleu fleurs de sistelle\",\"keyword\":null,\"description\":null,\"content\":\"<p>H\\u1eb3n \\u0111\\u1ed9 ph\\u1ee7 s&oacute;ng v&agrave; s\\u1ef1 c&agrave;n qu&eacute;t kh\\u1eafp c&aacute;c di\\u1ec5n \\u0111&agrave;n v&agrave; c&aacute;c b\\u1ea3ng x\\u1ebfp h\\u1ea1ng nh\\u1eefng chai n\\u01b0\\u1edbc hoa sexy, quy\\u1ebfn r\\u0169 nh\\u1ea5t c\\u1ee7a Scancal l&agrave; \\u0111i\\u1ec1u kh&ocirc;ng c&ograve;n l\\u1ea1 l\\u1eabm g&igrave; v\\u1edbi nhi\\u1ec1u ng\\u01b0\\u1eddi. Th\\u1eadm ch&iacute; \\u1edf Scandal, \\u0111\\u1ecbnh ki\\u1ebfn v\\u1ec1 n\\u01b0\\u1edbc hoa ng\\u1ecdt v&agrave; n\\u1ed3ng th\\u01b0\\u1eddng k&eacute;n ng\\u01b0\\u1eddi c\\u0169ng \\u0111\\u01b0\\u1ee3c thay \\u0111\\u1ed5i quan \\u0111i\\u1ec3m m\\u1ed9t c&aacute;ch \\u0111&aacute;ng k\\u1ec3 \\u1edf r\\u1ea5t nhi\\u1ec1u ng\\u01b0\\u1eddi, b\\u1edfi ng\\u1ecdt th\\u1eadt, n\\u1ed3ng v&agrave; \\u0111\\u1eadm th\\u1eadt, nh\\u1eefng n&oacute; qu&aacute; \\u0111\\u1ed7i sexy v&agrave; h\\u1ea5p d\\u1eabn. Th&aacute;ng 8 n\\u0103m 2018, b\\u1ea3n Flanker \\u0111\\u1ea7u ti&ecirc;n c\\u1ee7a k\\u1ebb c&aacute;m d\\u1ed7 kinh \\u0111i\\u1ec3n &quot;Scandal&quot; \\u0111\\u01b0\\u1ee3c ra m\\u1eaft v\\u1edbi t&ecirc;n g\\u1ecdi l&agrave;&nbsp;<strong>Jean Paul Gaultier Scandal By Night Edp 30Ml<\\/strong>&nbsp;\\u0111&atilde; t\\u1ea1o ra m\\u1ed9t s\\u1ef1 mong ch\\u1edd v&agrave; h&aacute;o h\\u1ee9c v\\u1edbi r\\u1ea5t nhi\\u1ec1u t&iacute;n \\u0111\\u1ed3 n\\u01b0\\u1edbc hoa tr&ecirc;n to&agrave;n th\\u1ebf gi\\u1edbi, \\u0111\\u1eb7c bi\\u1ec7t v\\u1edbi nh\\u1eefng ng\\u01b0\\u1eddi l\\u1ee1 tr&oacute;t say m&ecirc; c&ocirc; n&agrave;ng nguy&ecirc;n b\\u1ea3n Scandal.&nbsp;<\\/p>\\r\\n\\r\\n<p>&nbsp;<\\/p>\\r\\n\\r\\n<p><img src=\\\"https:\\/\\/file.hstatic.net\\/200000117693\\/file\\/jean_paul_gaultier_scandal_edp_30ml_-_4_a561ff8260824894b966b136ec7286c3_grande.jpg\\\" \\/><\\/p>\\r\\n\\r\\n<h2><strong>H\\u01af\\u01a0NG \\u0110\\u1eb6C TR\\u01afNG<\\/strong><\\/h2>\\r\\n\\r\\n<ul>\\r\\n\\t<li>H\\u01b0\\u01a1ng \\u0111\\u1ea7u: M\\u1eadt ong, Chi cam chanh, Cam \\u0111\\u1eafng<\\/li>\\r\\n\\t<li>H\\u01b0\\u01a1ng gi\\u1eefa: Hoa hu\\u1ec7 tr\\u1eafng, C&acirc;y cam t&ugrave;ng Himalaya, Cherry, Hoa Cam, Tr&aacute;i l&ecirc;<\\/li>\\r\\n\\t<li>H\\u01b0\\u01a1ng cu\\u1ed1i: \\u0110\\u1eadu Tonka, C&acirc;y ho\\u1eafc h\\u01b0\\u01a1ng, G\\u1ed7 \\u0111&agrave;n h\\u01b0\\u01a1ng, Vani, X\\u1ea1 h\\u01b0\\u01a1ng<\\/li>\\r\\n<\\/ul>\\r\\n\\r\\n<p>&nbsp;<\\/p>\\r\\n\\r\\n<h2><strong>TH&Ocirc;NG TIN S\\u1ea2N PH\\u1ea8M<\\/strong><\\/h2>\\r\\n\\r\\n<ul>\\r\\n\\t<li>Nh&atilde;n hi\\u1ec7u: Jean Paul Gaultier<\\/li>\\r\\n\\t<li>Gi\\u1edbi t&iacute;nh: N\\u1eef<\\/li>\\r\\n\\t<li>Xu\\u1ea5t x\\u1ee9: Ph&aacute;p<\\/li>\\r\\n\\t<li>Ph&aacute;t h&agrave;nh: 2018<\\/li>\\r\\n\\t<li>N\\u1ed3ng \\u0111\\u1ed9: Eau de parfum<\\/li>\\r\\n\\t<li>Nh&oacute;m h\\u01b0\\u01a1ng: H\\u01b0\\u01a1ng Hoa c\\u1ecf G\\u1ed7 X\\u1ea1 h\\u01b0\\u01a1ng - Floral Woody Musk<\\/li>\\r\\n\\t<li>Phong c&aacute;ch: G\\u1ee3i c\\u1ea3m, S&agrave;nh \\u0111i\\u1ec7u, Khi&ecirc;u kh&iacute;ch<\\/li>\\r\\n<\\/ul>\"},\"vi\":{\"name\":\"N\\u01b0\\u1edbc hoa n\\u1eef paris bleu fleurs de sistelle edp (100ml) - ph\\u00e1p\",\"keyword\":null,\"description\":null,\"content\":\"<p>H\\u1eb3n \\u0111\\u1ed9 ph\\u1ee7 s&oacute;ng v&agrave; s\\u1ef1 c&agrave;n qu&eacute;t kh\\u1eafp c&aacute;c di\\u1ec5n \\u0111&agrave;n v&agrave; c&aacute;c b\\u1ea3ng x\\u1ebfp h\\u1ea1ng nh\\u1eefng chai n\\u01b0\\u1edbc hoa sexy, quy\\u1ebfn r\\u0169 nh\\u1ea5t c\\u1ee7a Scancal l&agrave; \\u0111i\\u1ec1u kh&ocirc;ng c&ograve;n l\\u1ea1 l\\u1eabm g&igrave; v\\u1edbi nhi\\u1ec1u ng\\u01b0\\u1eddi. Th\\u1eadm ch&iacute; \\u1edf Scandal, \\u0111\\u1ecbnh ki\\u1ebfn v\\u1ec1 n\\u01b0\\u1edbc hoa ng\\u1ecdt v&agrave; n\\u1ed3ng th\\u01b0\\u1eddng k&eacute;n ng\\u01b0\\u1eddi c\\u0169ng \\u0111\\u01b0\\u1ee3c thay \\u0111\\u1ed5i quan \\u0111i\\u1ec3m m\\u1ed9t c&aacute;ch \\u0111&aacute;ng k\\u1ec3 \\u1edf r\\u1ea5t nhi\\u1ec1u ng\\u01b0\\u1eddi, b\\u1edfi ng\\u1ecdt th\\u1eadt, n\\u1ed3ng v&agrave; \\u0111\\u1eadm th\\u1eadt, nh\\u1eefng n&oacute; qu&aacute; \\u0111\\u1ed7i sexy v&agrave; h\\u1ea5p d\\u1eabn. Th&aacute;ng 8 n\\u0103m 2018, b\\u1ea3n Flanker \\u0111\\u1ea7u ti&ecirc;n c\\u1ee7a k\\u1ebb c&aacute;m d\\u1ed7 kinh \\u0111i\\u1ec3n &quot;Scandal&quot; \\u0111\\u01b0\\u1ee3c ra m\\u1eaft v\\u1edbi t&ecirc;n g\\u1ecdi l&agrave;&nbsp;<strong>Jean Paul Gaultier Scandal By Night Edp 30Ml<\\/strong>&nbsp;\\u0111&atilde; t\\u1ea1o ra m\\u1ed9t s\\u1ef1 mong ch\\u1edd v&agrave; h&aacute;o h\\u1ee9c v\\u1edbi r\\u1ea5t nhi\\u1ec1u t&iacute;n \\u0111\\u1ed3 n\\u01b0\\u1edbc hoa tr&ecirc;n to&agrave;n th\\u1ebf gi\\u1edbi, \\u0111\\u1eb7c bi\\u1ec7t v\\u1edbi nh\\u1eefng ng\\u01b0\\u1eddi l\\u1ee1 tr&oacute;t say m&ecirc; c&ocirc; n&agrave;ng nguy&ecirc;n b\\u1ea3n Scandal.&nbsp;<\\/p>\\r\\n\\r\\n<p>&nbsp;<\\/p>\\r\\n\\r\\n<p><img src=\\\"https:\\/\\/file.hstatic.net\\/200000117693\\/file\\/jean_paul_gaultier_scandal_edp_30ml_-_4_a561ff8260824894b966b136ec7286c3_grande.jpg\\\" \\/><\\/p>\\r\\n\\r\\n<h2><strong>H\\u01af\\u01a0NG \\u0110\\u1eb6C TR\\u01afNG<\\/strong><\\/h2>\\r\\n\\r\\n<ul>\\r\\n\\t<li>H\\u01b0\\u01a1ng \\u0111\\u1ea7u: M\\u1eadt ong, Chi cam chanh, Cam \\u0111\\u1eafng<\\/li>\\r\\n\\t<li>H\\u01b0\\u01a1ng gi\\u1eefa: Hoa hu\\u1ec7 tr\\u1eafng, C&acirc;y cam t&ugrave;ng Himalaya, Cherry, Hoa Cam, Tr&aacute;i l&ecirc;<\\/li>\\r\\n\\t<li>H\\u01b0\\u01a1ng cu\\u1ed1i: \\u0110\\u1eadu Tonka, C&acirc;y ho\\u1eafc h\\u01b0\\u01a1ng, G\\u1ed7 \\u0111&agrave;n h\\u01b0\\u01a1ng, Vani, X\\u1ea1 h\\u01b0\\u01a1ng<\\/li>\\r\\n<\\/ul>\\r\\n\\r\\n<p>&nbsp;<\\/p>\\r\\n\\r\\n<h2><strong>TH&Ocirc;NG TIN S\\u1ea2N PH\\u1ea8M<\\/strong><\\/h2>\\r\\n\\r\\n<ul>\\r\\n\\t<li>Nh&atilde;n hi\\u1ec7u: Jean Paul Gaultier<\\/li>\\r\\n\\t<li>Gi\\u1edbi t&iacute;nh: N\\u1eef<\\/li>\\r\\n\\t<li>Xu\\u1ea5t x\\u1ee9: Ph&aacute;p<\\/li>\\r\\n\\t<li>Ph&aacute;t h&agrave;nh: 2018<\\/li>\\r\\n\\t<li>N\\u1ed3ng \\u0111\\u1ed9: Eau de parfum<\\/li>\\r\\n\\t<li>Nh&oacute;m h\\u01b0\\u01a1ng: H\\u01b0\\u01a1ng Hoa c\\u1ecf G\\u1ed7 X\\u1ea1 h\\u01b0\\u01a1ng - Floral Woody Musk<\\/li>\\r\\n\\t<li>Phong c&aacute;ch: G\\u1ee3i c\\u1ea3m, S&agrave;nh \\u0111i\\u1ec7u, Khi&ecirc;u kh&iacute;ch<\\/li>\\r\\n<\\/ul>\"}},\"category\":[\"18\",\"21\"],\"image\":\"\\/data\\/product\\/product_use.jpg\",\"sub_image\":[\"\\/data\\/product\\/giorgio-armani-acqua-di-gioia-orchard.vn-2.jpg\",\"\\/data\\/product\\/lattafa-mazaaji-100ml-apa-de-parfum_8367043.jpg\"],\"sku\":\"LCD12864-3D\",\"alias\":\"nuoc-hoa-nu-paris-bleu-fleurs-de-sistelle-edp\",\"brand_id\":\"3\",\"supplier_id\":\"1\",\"cost\":\"10000\",\"price\":\"870000\",\"tax_id\":\"0\",\"stock\":\"96\",\"weight_class\":null,\"weight\":\"0\",\"length_class\":null,\"length\":\"0\",\"height\":\"0\",\"width\":\"0\",\"property\":\"physical\",\"download_path\":null,\"date_available\":null,\"minimum\":\"1\",\"sort\":\"0\",\"status\":\"on\",\"_token\":\"KZ5cp3PdRvI1Bjr6hOWm7b5yE6efbWhOU04ixXho\"}', '2022-01-14 07:32:50', '2022-01-14 07:32:50'),
(804, 1, 'sc_admin/product', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2022-01-14 07:32:52', '2022-01-14 07:32:52'),
(805, 1, 'sc_admin/product/edit/14', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2022-01-14 07:33:02', '2022-01-14 07:33:02');
INSERT INTO `sc_admin_log` (`id`, `user_id`, `path`, `method`, `ip`, `user_agent`, `input`, `created_at`, `updated_at`) VALUES
(806, 1, 'sc_admin/product/edit/14', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"descriptions\":{\"en\":{\"name\":\"N\\u01b0\\u1edbc hoa paris bleu fleurs de sistelle\",\"keyword\":null,\"description\":null,\"content\":\"<p>H\\u1eb3n \\u0111\\u1ed9 ph\\u1ee7 s&oacute;ng v&agrave; s\\u1ef1 c&agrave;n qu&eacute;t kh\\u1eafp c&aacute;c di\\u1ec5n \\u0111&agrave;n v&agrave; c&aacute;c b\\u1ea3ng x\\u1ebfp h\\u1ea1ng nh\\u1eefng chai n\\u01b0\\u1edbc hoa sexy, quy\\u1ebfn r\\u0169 nh\\u1ea5t c\\u1ee7a Scancal l&agrave; \\u0111i\\u1ec1u kh&ocirc;ng c&ograve;n l\\u1ea1 l\\u1eabm g&igrave; v\\u1edbi nhi\\u1ec1u ng\\u01b0\\u1eddi. Th\\u1eadm ch&iacute; \\u1edf Scandal, \\u0111\\u1ecbnh ki\\u1ebfn v\\u1ec1 n\\u01b0\\u1edbc hoa ng\\u1ecdt v&agrave; n\\u1ed3ng th\\u01b0\\u1eddng k&eacute;n ng\\u01b0\\u1eddi c\\u0169ng \\u0111\\u01b0\\u1ee3c thay \\u0111\\u1ed5i quan \\u0111i\\u1ec3m m\\u1ed9t c&aacute;ch \\u0111&aacute;ng k\\u1ec3 \\u1edf r\\u1ea5t nhi\\u1ec1u ng\\u01b0\\u1eddi, b\\u1edfi ng\\u1ecdt th\\u1eadt, n\\u1ed3ng v&agrave; \\u0111\\u1eadm th\\u1eadt, nh\\u1eefng n&oacute; qu&aacute; \\u0111\\u1ed7i sexy v&agrave; h\\u1ea5p d\\u1eabn. Th&aacute;ng 8 n\\u0103m 2018, b\\u1ea3n Flanker \\u0111\\u1ea7u ti&ecirc;n c\\u1ee7a k\\u1ebb c&aacute;m d\\u1ed7 kinh \\u0111i\\u1ec3n &quot;Scandal&quot; \\u0111\\u01b0\\u1ee3c ra m\\u1eaft v\\u1edbi t&ecirc;n g\\u1ecdi l&agrave;&nbsp;<strong>Jean Paul Gaultier Scandal By Night Edp 30Ml<\\/strong>&nbsp;\\u0111&atilde; t\\u1ea1o ra m\\u1ed9t s\\u1ef1 mong ch\\u1edd v&agrave; h&aacute;o h\\u1ee9c v\\u1edbi r\\u1ea5t nhi\\u1ec1u t&iacute;n \\u0111\\u1ed3 n\\u01b0\\u1edbc hoa tr&ecirc;n to&agrave;n th\\u1ebf gi\\u1edbi, \\u0111\\u1eb7c bi\\u1ec7t v\\u1edbi nh\\u1eefng ng\\u01b0\\u1eddi l\\u1ee1 tr&oacute;t say m&ecirc; c&ocirc; n&agrave;ng nguy&ecirc;n b\\u1ea3n Scandal.&nbsp;<\\/p>\\r\\n\\r\\n<p>&nbsp;<\\/p>\\r\\n\\r\\n<p><img src=\\\"https:\\/\\/file.hstatic.net\\/200000117693\\/file\\/jean_paul_gaultier_scandal_edp_30ml_-_4_a561ff8260824894b966b136ec7286c3_grande.jpg\\\" \\/><\\/p>\\r\\n\\r\\n<h2><strong>H\\u01af\\u01a0NG \\u0110\\u1eb6C TR\\u01afNG<\\/strong><\\/h2>\\r\\n\\r\\n<ul>\\r\\n\\t<li>H\\u01b0\\u01a1ng \\u0111\\u1ea7u: M\\u1eadt ong, Chi cam chanh, Cam \\u0111\\u1eafng<\\/li>\\r\\n\\t<li>H\\u01b0\\u01a1ng gi\\u1eefa: Hoa hu\\u1ec7 tr\\u1eafng, C&acirc;y cam t&ugrave;ng Himalaya, Cherry, Hoa Cam, Tr&aacute;i l&ecirc;<\\/li>\\r\\n\\t<li>H\\u01b0\\u01a1ng cu\\u1ed1i: \\u0110\\u1eadu Tonka, C&acirc;y ho\\u1eafc h\\u01b0\\u01a1ng, G\\u1ed7 \\u0111&agrave;n h\\u01b0\\u01a1ng, Vani, X\\u1ea1 h\\u01b0\\u01a1ng<\\/li>\\r\\n<\\/ul>\\r\\n\\r\\n<p>&nbsp;<\\/p>\\r\\n\\r\\n<h2><strong>TH&Ocirc;NG TIN S\\u1ea2N PH\\u1ea8M<\\/strong><\\/h2>\\r\\n\\r\\n<ul>\\r\\n\\t<li>Nh&atilde;n hi\\u1ec7u: Jean Paul Gaultier<\\/li>\\r\\n\\t<li>Gi\\u1edbi t&iacute;nh: N\\u1eef<\\/li>\\r\\n\\t<li>Xu\\u1ea5t x\\u1ee9: Ph&aacute;p<\\/li>\\r\\n\\t<li>Ph&aacute;t h&agrave;nh: 2018<\\/li>\\r\\n\\t<li>N\\u1ed3ng \\u0111\\u1ed9: Eau de parfum<\\/li>\\r\\n\\t<li>Nh&oacute;m h\\u01b0\\u01a1ng: H\\u01b0\\u01a1ng Hoa c\\u1ecf G\\u1ed7 X\\u1ea1 h\\u01b0\\u01a1ng - Floral Woody Musk<\\/li>\\r\\n\\t<li>Phong c&aacute;ch: G\\u1ee3i c\\u1ea3m, S&agrave;nh \\u0111i\\u1ec7u, Khi&ecirc;u kh&iacute;ch<\\/li>\\r\\n<\\/ul>\"},\"vi\":{\"name\":\"N\\u01b0\\u1edbc hoaparis bleu fleurs\",\"keyword\":null,\"description\":null,\"content\":\"<p>H\\u1eb3n \\u0111\\u1ed9 ph\\u1ee7 s&oacute;ng v&agrave; s\\u1ef1 c&agrave;n qu&eacute;t kh\\u1eafp c&aacute;c di\\u1ec5n \\u0111&agrave;n v&agrave; c&aacute;c b\\u1ea3ng x\\u1ebfp h\\u1ea1ng nh\\u1eefng chai n\\u01b0\\u1edbc hoa sexy, quy\\u1ebfn r\\u0169 nh\\u1ea5t c\\u1ee7a Scancal l&agrave; \\u0111i\\u1ec1u kh&ocirc;ng c&ograve;n l\\u1ea1 l\\u1eabm g&igrave; v\\u1edbi nhi\\u1ec1u ng\\u01b0\\u1eddi. Th\\u1eadm ch&iacute; \\u1edf Scandal, \\u0111\\u1ecbnh ki\\u1ebfn v\\u1ec1 n\\u01b0\\u1edbc hoa ng\\u1ecdt v&agrave; n\\u1ed3ng th\\u01b0\\u1eddng k&eacute;n ng\\u01b0\\u1eddi c\\u0169ng \\u0111\\u01b0\\u1ee3c thay \\u0111\\u1ed5i quan \\u0111i\\u1ec3m m\\u1ed9t c&aacute;ch \\u0111&aacute;ng k\\u1ec3 \\u1edf r\\u1ea5t nhi\\u1ec1u ng\\u01b0\\u1eddi, b\\u1edfi ng\\u1ecdt th\\u1eadt, n\\u1ed3ng v&agrave; \\u0111\\u1eadm th\\u1eadt, nh\\u1eefng n&oacute; qu&aacute; \\u0111\\u1ed7i sexy v&agrave; h\\u1ea5p d\\u1eabn. Th&aacute;ng 8 n\\u0103m 2018, b\\u1ea3n Flanker \\u0111\\u1ea7u ti&ecirc;n c\\u1ee7a k\\u1ebb c&aacute;m d\\u1ed7 kinh \\u0111i\\u1ec3n &quot;Scandal&quot; \\u0111\\u01b0\\u1ee3c ra m\\u1eaft v\\u1edbi t&ecirc;n g\\u1ecdi l&agrave;&nbsp;<strong>Jean Paul Gaultier Scandal By Night Edp 30Ml<\\/strong>&nbsp;\\u0111&atilde; t\\u1ea1o ra m\\u1ed9t s\\u1ef1 mong ch\\u1edd v&agrave; h&aacute;o h\\u1ee9c v\\u1edbi r\\u1ea5t nhi\\u1ec1u t&iacute;n \\u0111\\u1ed3 n\\u01b0\\u1edbc hoa tr&ecirc;n to&agrave;n th\\u1ebf gi\\u1edbi, \\u0111\\u1eb7c bi\\u1ec7t v\\u1edbi nh\\u1eefng ng\\u01b0\\u1eddi l\\u1ee1 tr&oacute;t say m&ecirc; c&ocirc; n&agrave;ng nguy&ecirc;n b\\u1ea3n Scandal.&nbsp;<\\/p>\\r\\n\\r\\n<p>&nbsp;<\\/p>\\r\\n\\r\\n<p><img src=\\\"https:\\/\\/file.hstatic.net\\/200000117693\\/file\\/jean_paul_gaultier_scandal_edp_30ml_-_4_a561ff8260824894b966b136ec7286c3_grande.jpg\\\" \\/><\\/p>\\r\\n\\r\\n<h2><strong>H\\u01af\\u01a0NG \\u0110\\u1eb6C TR\\u01afNG<\\/strong><\\/h2>\\r\\n\\r\\n<ul>\\r\\n\\t<li>H\\u01b0\\u01a1ng \\u0111\\u1ea7u: M\\u1eadt ong, Chi cam chanh, Cam \\u0111\\u1eafng<\\/li>\\r\\n\\t<li>H\\u01b0\\u01a1ng gi\\u1eefa: Hoa hu\\u1ec7 tr\\u1eafng, C&acirc;y cam t&ugrave;ng Himalaya, Cherry, Hoa Cam, Tr&aacute;i l&ecirc;<\\/li>\\r\\n\\t<li>H\\u01b0\\u01a1ng cu\\u1ed1i: \\u0110\\u1eadu Tonka, C&acirc;y ho\\u1eafc h\\u01b0\\u01a1ng, G\\u1ed7 \\u0111&agrave;n h\\u01b0\\u01a1ng, Vani, X\\u1ea1 h\\u01b0\\u01a1ng<\\/li>\\r\\n<\\/ul>\\r\\n\\r\\n<p>&nbsp;<\\/p>\\r\\n\\r\\n<h2><strong>TH&Ocirc;NG TIN S\\u1ea2N PH\\u1ea8M<\\/strong><\\/h2>\\r\\n\\r\\n<ul>\\r\\n\\t<li>Nh&atilde;n hi\\u1ec7u: Jean Paul Gaultier<\\/li>\\r\\n\\t<li>Gi\\u1edbi t&iacute;nh: N\\u1eef<\\/li>\\r\\n\\t<li>Xu\\u1ea5t x\\u1ee9: Ph&aacute;p<\\/li>\\r\\n\\t<li>Ph&aacute;t h&agrave;nh: 2018<\\/li>\\r\\n\\t<li>N\\u1ed3ng \\u0111\\u1ed9: Eau de parfum<\\/li>\\r\\n\\t<li>Nh&oacute;m h\\u01b0\\u01a1ng: H\\u01b0\\u01a1ng Hoa c\\u1ecf G\\u1ed7 X\\u1ea1 h\\u01b0\\u01a1ng - Floral Woody Musk<\\/li>\\r\\n\\t<li>Phong c&aacute;ch: G\\u1ee3i c\\u1ea3m, S&agrave;nh \\u0111i\\u1ec7u, Khi&ecirc;u kh&iacute;ch<\\/li>\\r\\n<\\/ul>\"}},\"category\":[\"18\",\"21\"],\"image\":\"\\/data\\/product\\/product_use.jpg\",\"sub_image\":[\"\\/data\\/product\\/giorgio-armani-acqua-di-gioia-orchard.vn-2.jpg\",\"\\/data\\/product\\/lattafa-mazaaji-100ml-apa-de-parfum_8367043.jpg\"],\"sku\":\"LCD12864-3D\",\"alias\":\"nuoc-hoa-nu-paris-bleu-fleurs-de-sistelle-edp\",\"brand_id\":\"3\",\"supplier_id\":\"1\",\"cost\":\"10000\",\"price\":\"870000\",\"tax_id\":\"0\",\"stock\":\"96\",\"weight_class\":null,\"weight\":\"0\",\"length_class\":null,\"length\":\"0\",\"height\":\"0\",\"width\":\"0\",\"property\":\"physical\",\"download_path\":null,\"date_available\":null,\"minimum\":\"1\",\"sort\":\"0\",\"status\":\"on\",\"_token\":\"KZ5cp3PdRvI1Bjr6hOWm7b5yE6efbWhOU04ixXho\"}', '2022-01-14 07:33:13', '2022-01-14 07:33:13'),
(807, 1, 'sc_admin/product', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2022-01-14 07:33:14', '2022-01-14 07:33:14'),
(808, 1, 'sc_admin/product/edit/14', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2022-01-14 07:33:34', '2022-01-14 07:33:34'),
(809, 1, 'sc_admin/product/edit/14', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"descriptions\":{\"en\":{\"name\":\"N\\u01b0\\u1edbc hoa paris bleu fleurs de sistelle\",\"keyword\":null,\"description\":null,\"content\":\"<p>H\\u1eb3n \\u0111\\u1ed9 ph\\u1ee7 s&oacute;ng v&agrave; s\\u1ef1 c&agrave;n qu&eacute;t kh\\u1eafp c&aacute;c di\\u1ec5n \\u0111&agrave;n v&agrave; c&aacute;c b\\u1ea3ng x\\u1ebfp h\\u1ea1ng nh\\u1eefng chai n\\u01b0\\u1edbc hoa sexy, quy\\u1ebfn r\\u0169 nh\\u1ea5t c\\u1ee7a Scancal l&agrave; \\u0111i\\u1ec1u kh&ocirc;ng c&ograve;n l\\u1ea1 l\\u1eabm g&igrave; v\\u1edbi nhi\\u1ec1u ng\\u01b0\\u1eddi. Th\\u1eadm ch&iacute; \\u1edf Scandal, \\u0111\\u1ecbnh ki\\u1ebfn v\\u1ec1 n\\u01b0\\u1edbc hoa ng\\u1ecdt v&agrave; n\\u1ed3ng th\\u01b0\\u1eddng k&eacute;n ng\\u01b0\\u1eddi c\\u0169ng \\u0111\\u01b0\\u1ee3c thay \\u0111\\u1ed5i quan \\u0111i\\u1ec3m m\\u1ed9t c&aacute;ch \\u0111&aacute;ng k\\u1ec3 \\u1edf r\\u1ea5t nhi\\u1ec1u ng\\u01b0\\u1eddi, b\\u1edfi ng\\u1ecdt th\\u1eadt, n\\u1ed3ng v&agrave; \\u0111\\u1eadm th\\u1eadt, nh\\u1eefng n&oacute; qu&aacute; \\u0111\\u1ed7i sexy v&agrave; h\\u1ea5p d\\u1eabn. Th&aacute;ng 8 n\\u0103m 2018, b\\u1ea3n Flanker \\u0111\\u1ea7u ti&ecirc;n c\\u1ee7a k\\u1ebb c&aacute;m d\\u1ed7 kinh \\u0111i\\u1ec3n &quot;Scandal&quot; \\u0111\\u01b0\\u1ee3c ra m\\u1eaft v\\u1edbi t&ecirc;n g\\u1ecdi l&agrave;&nbsp;<strong>Jean Paul Gaultier Scandal By Night Edp 30Ml<\\/strong>&nbsp;\\u0111&atilde; t\\u1ea1o ra m\\u1ed9t s\\u1ef1 mong ch\\u1edd v&agrave; h&aacute;o h\\u1ee9c v\\u1edbi r\\u1ea5t nhi\\u1ec1u t&iacute;n \\u0111\\u1ed3 n\\u01b0\\u1edbc hoa tr&ecirc;n to&agrave;n th\\u1ebf gi\\u1edbi, \\u0111\\u1eb7c bi\\u1ec7t v\\u1edbi nh\\u1eefng ng\\u01b0\\u1eddi l\\u1ee1 tr&oacute;t say m&ecirc; c&ocirc; n&agrave;ng nguy&ecirc;n b\\u1ea3n Scandal.&nbsp;<\\/p>\\r\\n\\r\\n<p>&nbsp;<\\/p>\\r\\n\\r\\n<p><img src=\\\"https:\\/\\/file.hstatic.net\\/200000117693\\/file\\/jean_paul_gaultier_scandal_edp_30ml_-_4_a561ff8260824894b966b136ec7286c3_grande.jpg\\\" \\/><\\/p>\\r\\n\\r\\n<h2><strong>H\\u01af\\u01a0NG \\u0110\\u1eb6C TR\\u01afNG<\\/strong><\\/h2>\\r\\n\\r\\n<ul>\\r\\n\\t<li>H\\u01b0\\u01a1ng \\u0111\\u1ea7u: M\\u1eadt ong, Chi cam chanh, Cam \\u0111\\u1eafng<\\/li>\\r\\n\\t<li>H\\u01b0\\u01a1ng gi\\u1eefa: Hoa hu\\u1ec7 tr\\u1eafng, C&acirc;y cam t&ugrave;ng Himalaya, Cherry, Hoa Cam, Tr&aacute;i l&ecirc;<\\/li>\\r\\n\\t<li>H\\u01b0\\u01a1ng cu\\u1ed1i: \\u0110\\u1eadu Tonka, C&acirc;y ho\\u1eafc h\\u01b0\\u01a1ng, G\\u1ed7 \\u0111&agrave;n h\\u01b0\\u01a1ng, Vani, X\\u1ea1 h\\u01b0\\u01a1ng<\\/li>\\r\\n<\\/ul>\\r\\n\\r\\n<p>&nbsp;<\\/p>\\r\\n\\r\\n<h2><strong>TH&Ocirc;NG TIN S\\u1ea2N PH\\u1ea8M<\\/strong><\\/h2>\\r\\n\\r\\n<ul>\\r\\n\\t<li>Nh&atilde;n hi\\u1ec7u: Jean Paul Gaultier<\\/li>\\r\\n\\t<li>Gi\\u1edbi t&iacute;nh: N\\u1eef<\\/li>\\r\\n\\t<li>Xu\\u1ea5t x\\u1ee9: Ph&aacute;p<\\/li>\\r\\n\\t<li>Ph&aacute;t h&agrave;nh: 2018<\\/li>\\r\\n\\t<li>N\\u1ed3ng \\u0111\\u1ed9: Eau de parfum<\\/li>\\r\\n\\t<li>Nh&oacute;m h\\u01b0\\u01a1ng: H\\u01b0\\u01a1ng Hoa c\\u1ecf G\\u1ed7 X\\u1ea1 h\\u01b0\\u01a1ng - Floral Woody Musk<\\/li>\\r\\n\\t<li>Phong c&aacute;ch: G\\u1ee3i c\\u1ea3m, S&agrave;nh \\u0111i\\u1ec7u, Khi&ecirc;u kh&iacute;ch<\\/li>\\r\\n<\\/ul>\"},\"vi\":{\"name\":\"N\\u01b0\\u1edbc hoaparis bleu fleurs  sistelle 100ml\",\"keyword\":null,\"description\":null,\"content\":\"<p>H\\u1eb3n \\u0111\\u1ed9 ph\\u1ee7 s&oacute;ng v&agrave; s\\u1ef1 c&agrave;n qu&eacute;t kh\\u1eafp c&aacute;c di\\u1ec5n \\u0111&agrave;n v&agrave; c&aacute;c b\\u1ea3ng x\\u1ebfp h\\u1ea1ng nh\\u1eefng chai n\\u01b0\\u1edbc hoa sexy, quy\\u1ebfn r\\u0169 nh\\u1ea5t c\\u1ee7a Scancal l&agrave; \\u0111i\\u1ec1u kh&ocirc;ng c&ograve;n l\\u1ea1 l\\u1eabm g&igrave; v\\u1edbi nhi\\u1ec1u ng\\u01b0\\u1eddi. Th\\u1eadm ch&iacute; \\u1edf Scandal, \\u0111\\u1ecbnh ki\\u1ebfn v\\u1ec1 n\\u01b0\\u1edbc hoa ng\\u1ecdt v&agrave; n\\u1ed3ng th\\u01b0\\u1eddng k&eacute;n ng\\u01b0\\u1eddi c\\u0169ng \\u0111\\u01b0\\u1ee3c thay \\u0111\\u1ed5i quan \\u0111i\\u1ec3m m\\u1ed9t c&aacute;ch \\u0111&aacute;ng k\\u1ec3 \\u1edf r\\u1ea5t nhi\\u1ec1u ng\\u01b0\\u1eddi, b\\u1edfi ng\\u1ecdt th\\u1eadt, n\\u1ed3ng v&agrave; \\u0111\\u1eadm th\\u1eadt, nh\\u1eefng n&oacute; qu&aacute; \\u0111\\u1ed7i sexy v&agrave; h\\u1ea5p d\\u1eabn. Th&aacute;ng 8 n\\u0103m 2018, b\\u1ea3n Flanker \\u0111\\u1ea7u ti&ecirc;n c\\u1ee7a k\\u1ebb c&aacute;m d\\u1ed7 kinh \\u0111i\\u1ec3n &quot;Scandal&quot; \\u0111\\u01b0\\u1ee3c ra m\\u1eaft v\\u1edbi t&ecirc;n g\\u1ecdi l&agrave;&nbsp;<strong>Jean Paul Gaultier Scandal By Night Edp 30Ml<\\/strong>&nbsp;\\u0111&atilde; t\\u1ea1o ra m\\u1ed9t s\\u1ef1 mong ch\\u1edd v&agrave; h&aacute;o h\\u1ee9c v\\u1edbi r\\u1ea5t nhi\\u1ec1u t&iacute;n \\u0111\\u1ed3 n\\u01b0\\u1edbc hoa tr&ecirc;n to&agrave;n th\\u1ebf gi\\u1edbi, \\u0111\\u1eb7c bi\\u1ec7t v\\u1edbi nh\\u1eefng ng\\u01b0\\u1eddi l\\u1ee1 tr&oacute;t say m&ecirc; c&ocirc; n&agrave;ng nguy&ecirc;n b\\u1ea3n Scandal.&nbsp;<\\/p>\\r\\n\\r\\n<p>&nbsp;<\\/p>\\r\\n\\r\\n<p><img src=\\\"https:\\/\\/file.hstatic.net\\/200000117693\\/file\\/jean_paul_gaultier_scandal_edp_30ml_-_4_a561ff8260824894b966b136ec7286c3_grande.jpg\\\" \\/><\\/p>\\r\\n\\r\\n<h2><strong>H\\u01af\\u01a0NG \\u0110\\u1eb6C TR\\u01afNG<\\/strong><\\/h2>\\r\\n\\r\\n<ul>\\r\\n\\t<li>H\\u01b0\\u01a1ng \\u0111\\u1ea7u: M\\u1eadt ong, Chi cam chanh, Cam \\u0111\\u1eafng<\\/li>\\r\\n\\t<li>H\\u01b0\\u01a1ng gi\\u1eefa: Hoa hu\\u1ec7 tr\\u1eafng, C&acirc;y cam t&ugrave;ng Himalaya, Cherry, Hoa Cam, Tr&aacute;i l&ecirc;<\\/li>\\r\\n\\t<li>H\\u01b0\\u01a1ng cu\\u1ed1i: \\u0110\\u1eadu Tonka, C&acirc;y ho\\u1eafc h\\u01b0\\u01a1ng, G\\u1ed7 \\u0111&agrave;n h\\u01b0\\u01a1ng, Vani, X\\u1ea1 h\\u01b0\\u01a1ng<\\/li>\\r\\n<\\/ul>\\r\\n\\r\\n<p>&nbsp;<\\/p>\\r\\n\\r\\n<h2><strong>TH&Ocirc;NG TIN S\\u1ea2N PH\\u1ea8M<\\/strong><\\/h2>\\r\\n\\r\\n<ul>\\r\\n\\t<li>Nh&atilde;n hi\\u1ec7u: Jean Paul Gaultier<\\/li>\\r\\n\\t<li>Gi\\u1edbi t&iacute;nh: N\\u1eef<\\/li>\\r\\n\\t<li>Xu\\u1ea5t x\\u1ee9: Ph&aacute;p<\\/li>\\r\\n\\t<li>Ph&aacute;t h&agrave;nh: 2018<\\/li>\\r\\n\\t<li>N\\u1ed3ng \\u0111\\u1ed9: Eau de parfum<\\/li>\\r\\n\\t<li>Nh&oacute;m h\\u01b0\\u01a1ng: H\\u01b0\\u01a1ng Hoa c\\u1ecf G\\u1ed7 X\\u1ea1 h\\u01b0\\u01a1ng - Floral Woody Musk<\\/li>\\r\\n\\t<li>Phong c&aacute;ch: G\\u1ee3i c\\u1ea3m, S&agrave;nh \\u0111i\\u1ec7u, Khi&ecirc;u kh&iacute;ch<\\/li>\\r\\n<\\/ul>\"}},\"category\":[\"18\",\"21\"],\"image\":\"\\/data\\/product\\/product_use.jpg\",\"sub_image\":[\"\\/data\\/product\\/giorgio-armani-acqua-di-gioia-orchard.vn-2.jpg\",\"\\/data\\/product\\/lattafa-mazaaji-100ml-apa-de-parfum_8367043.jpg\"],\"sku\":\"LCD12864-3D\",\"alias\":\"nuoc-hoa-nu-paris-bleu-fleurs-de-sistelle-edp\",\"brand_id\":\"3\",\"supplier_id\":\"1\",\"cost\":\"10000\",\"price\":\"870000\",\"tax_id\":\"0\",\"stock\":\"96\",\"weight_class\":null,\"weight\":\"0\",\"length_class\":null,\"length\":\"0\",\"height\":\"0\",\"width\":\"0\",\"property\":\"physical\",\"download_path\":null,\"date_available\":null,\"minimum\":\"1\",\"sort\":\"0\",\"status\":\"on\",\"_token\":\"KZ5cp3PdRvI1Bjr6hOWm7b5yE6efbWhOU04ixXho\"}', '2022-01-14 07:33:50', '2022-01-14 07:33:50'),
(810, 1, 'sc_admin/product', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2022-01-14 07:33:51', '2022-01-14 07:33:51'),
(811, 1, 'sc_admin/product/edit/14', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2022-01-14 07:34:20', '2022-01-14 07:34:20'),
(812, 1, 'sc_admin/product/edit/14', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"descriptions\":{\"en\":{\"name\":\"N\\u01b0\\u1edbc hoa paris bleu fleurs de sistelle GAULTIER SCANDAL EDT (30ML\",\"keyword\":null,\"description\":null,\"content\":\"<p>H\\u1eb3n \\u0111\\u1ed9 ph\\u1ee7 s&oacute;ng v&agrave; s\\u1ef1 c&agrave;n qu&eacute;t kh\\u1eafp c&aacute;c di\\u1ec5n \\u0111&agrave;n v&agrave; c&aacute;c b\\u1ea3ng x\\u1ebfp h\\u1ea1ng nh\\u1eefng chai n\\u01b0\\u1edbc hoa sexy, quy\\u1ebfn r\\u0169 nh\\u1ea5t c\\u1ee7a Scancal l&agrave; \\u0111i\\u1ec1u kh&ocirc;ng c&ograve;n l\\u1ea1 l\\u1eabm g&igrave; v\\u1edbi nhi\\u1ec1u ng\\u01b0\\u1eddi. Th\\u1eadm ch&iacute; \\u1edf Scandal, \\u0111\\u1ecbnh ki\\u1ebfn v\\u1ec1 n\\u01b0\\u1edbc hoa ng\\u1ecdt v&agrave; n\\u1ed3ng th\\u01b0\\u1eddng k&eacute;n ng\\u01b0\\u1eddi c\\u0169ng \\u0111\\u01b0\\u1ee3c thay \\u0111\\u1ed5i quan \\u0111i\\u1ec3m m\\u1ed9t c&aacute;ch \\u0111&aacute;ng k\\u1ec3 \\u1edf r\\u1ea5t nhi\\u1ec1u ng\\u01b0\\u1eddi, b\\u1edfi ng\\u1ecdt th\\u1eadt, n\\u1ed3ng v&agrave; \\u0111\\u1eadm th\\u1eadt, nh\\u1eefng n&oacute; qu&aacute; \\u0111\\u1ed7i sexy v&agrave; h\\u1ea5p d\\u1eabn. Th&aacute;ng 8 n\\u0103m 2018, b\\u1ea3n Flanker \\u0111\\u1ea7u ti&ecirc;n c\\u1ee7a k\\u1ebb c&aacute;m d\\u1ed7 kinh \\u0111i\\u1ec3n &quot;Scandal&quot; \\u0111\\u01b0\\u1ee3c ra m\\u1eaft v\\u1edbi t&ecirc;n g\\u1ecdi l&agrave;&nbsp;<strong>Jean Paul Gaultier Scandal By Night Edp 30Ml<\\/strong>&nbsp;\\u0111&atilde; t\\u1ea1o ra m\\u1ed9t s\\u1ef1 mong ch\\u1edd v&agrave; h&aacute;o h\\u1ee9c v\\u1edbi r\\u1ea5t nhi\\u1ec1u t&iacute;n \\u0111\\u1ed3 n\\u01b0\\u1edbc hoa tr&ecirc;n to&agrave;n th\\u1ebf gi\\u1edbi, \\u0111\\u1eb7c bi\\u1ec7t v\\u1edbi nh\\u1eefng ng\\u01b0\\u1eddi l\\u1ee1 tr&oacute;t say m&ecirc; c&ocirc; n&agrave;ng nguy&ecirc;n b\\u1ea3n Scandal.&nbsp;<\\/p>\\r\\n\\r\\n<p>&nbsp;<\\/p>\\r\\n\\r\\n<p><img src=\\\"https:\\/\\/file.hstatic.net\\/200000117693\\/file\\/jean_paul_gaultier_scandal_edp_30ml_-_4_a561ff8260824894b966b136ec7286c3_grande.jpg\\\" \\/><\\/p>\\r\\n\\r\\n<h2><strong>H\\u01af\\u01a0NG \\u0110\\u1eb6C TR\\u01afNG<\\/strong><\\/h2>\\r\\n\\r\\n<ul>\\r\\n\\t<li>H\\u01b0\\u01a1ng \\u0111\\u1ea7u: M\\u1eadt ong, Chi cam chanh, Cam \\u0111\\u1eafng<\\/li>\\r\\n\\t<li>H\\u01b0\\u01a1ng gi\\u1eefa: Hoa hu\\u1ec7 tr\\u1eafng, C&acirc;y cam t&ugrave;ng Himalaya, Cherry, Hoa Cam, Tr&aacute;i l&ecirc;<\\/li>\\r\\n\\t<li>H\\u01b0\\u01a1ng cu\\u1ed1i: \\u0110\\u1eadu Tonka, C&acirc;y ho\\u1eafc h\\u01b0\\u01a1ng, G\\u1ed7 \\u0111&agrave;n h\\u01b0\\u01a1ng, Vani, X\\u1ea1 h\\u01b0\\u01a1ng<\\/li>\\r\\n<\\/ul>\\r\\n\\r\\n<p>&nbsp;<\\/p>\\r\\n\\r\\n<h2><strong>TH&Ocirc;NG TIN S\\u1ea2N PH\\u1ea8M<\\/strong><\\/h2>\\r\\n\\r\\n<ul>\\r\\n\\t<li>Nh&atilde;n hi\\u1ec7u: Jean Paul Gaultier<\\/li>\\r\\n\\t<li>Gi\\u1edbi t&iacute;nh: N\\u1eef<\\/li>\\r\\n\\t<li>Xu\\u1ea5t x\\u1ee9: Ph&aacute;p<\\/li>\\r\\n\\t<li>Ph&aacute;t h&agrave;nh: 2018<\\/li>\\r\\n\\t<li>N\\u1ed3ng \\u0111\\u1ed9: Eau de parfum<\\/li>\\r\\n\\t<li>Nh&oacute;m h\\u01b0\\u01a1ng: H\\u01b0\\u01a1ng Hoa c\\u1ecf G\\u1ed7 X\\u1ea1 h\\u01b0\\u01a1ng - Floral Woody Musk<\\/li>\\r\\n\\t<li>Phong c&aacute;ch: G\\u1ee3i c\\u1ea3m, S&agrave;nh \\u0111i\\u1ec7u, Khi&ecirc;u kh&iacute;ch<\\/li>\\r\\n<\\/ul>\"},\"vi\":{\"name\":\"N\\u01b0\\u1edbc hoaparis bleu fleurs  sistelle 100ml\",\"keyword\":null,\"description\":null,\"content\":\"<p>H\\u1eb3n \\u0111\\u1ed9 ph\\u1ee7 s&oacute;ng v&agrave; s\\u1ef1 c&agrave;n qu&eacute;t kh\\u1eafp c&aacute;c di\\u1ec5n \\u0111&agrave;n v&agrave; c&aacute;c b\\u1ea3ng x\\u1ebfp h\\u1ea1ng nh\\u1eefng chai n\\u01b0\\u1edbc hoa sexy, quy\\u1ebfn r\\u0169 nh\\u1ea5t c\\u1ee7a Scancal l&agrave; \\u0111i\\u1ec1u kh&ocirc;ng c&ograve;n l\\u1ea1 l\\u1eabm g&igrave; v\\u1edbi nhi\\u1ec1u ng\\u01b0\\u1eddi. Th\\u1eadm ch&iacute; \\u1edf Scandal, \\u0111\\u1ecbnh ki\\u1ebfn v\\u1ec1 n\\u01b0\\u1edbc hoa ng\\u1ecdt v&agrave; n\\u1ed3ng th\\u01b0\\u1eddng k&eacute;n ng\\u01b0\\u1eddi c\\u0169ng \\u0111\\u01b0\\u1ee3c thay \\u0111\\u1ed5i quan \\u0111i\\u1ec3m m\\u1ed9t c&aacute;ch \\u0111&aacute;ng k\\u1ec3 \\u1edf r\\u1ea5t nhi\\u1ec1u ng\\u01b0\\u1eddi, b\\u1edfi ng\\u1ecdt th\\u1eadt, n\\u1ed3ng v&agrave; \\u0111\\u1eadm th\\u1eadt, nh\\u1eefng n&oacute; qu&aacute; \\u0111\\u1ed7i sexy v&agrave; h\\u1ea5p d\\u1eabn. Th&aacute;ng 8 n\\u0103m 2018, b\\u1ea3n Flanker \\u0111\\u1ea7u ti&ecirc;n c\\u1ee7a k\\u1ebb c&aacute;m d\\u1ed7 kinh \\u0111i\\u1ec3n &quot;Scandal&quot; \\u0111\\u01b0\\u1ee3c ra m\\u1eaft v\\u1edbi t&ecirc;n g\\u1ecdi l&agrave;&nbsp;<strong>Jean Paul Gaultier Scandal By Night Edp 30Ml<\\/strong>&nbsp;\\u0111&atilde; t\\u1ea1o ra m\\u1ed9t s\\u1ef1 mong ch\\u1edd v&agrave; h&aacute;o h\\u1ee9c v\\u1edbi r\\u1ea5t nhi\\u1ec1u t&iacute;n \\u0111\\u1ed3 n\\u01b0\\u1edbc hoa tr&ecirc;n to&agrave;n th\\u1ebf gi\\u1edbi, \\u0111\\u1eb7c bi\\u1ec7t v\\u1edbi nh\\u1eefng ng\\u01b0\\u1eddi l\\u1ee1 tr&oacute;t say m&ecirc; c&ocirc; n&agrave;ng nguy&ecirc;n b\\u1ea3n Scandal.&nbsp;<\\/p>\\r\\n\\r\\n<p>&nbsp;<\\/p>\\r\\n\\r\\n<p><img src=\\\"https:\\/\\/file.hstatic.net\\/200000117693\\/file\\/jean_paul_gaultier_scandal_edp_30ml_-_4_a561ff8260824894b966b136ec7286c3_grande.jpg\\\" \\/><\\/p>\\r\\n\\r\\n<h2><strong>H\\u01af\\u01a0NG \\u0110\\u1eb6C TR\\u01afNG<\\/strong><\\/h2>\\r\\n\\r\\n<ul>\\r\\n\\t<li>H\\u01b0\\u01a1ng \\u0111\\u1ea7u: M\\u1eadt ong, Chi cam chanh, Cam \\u0111\\u1eafng<\\/li>\\r\\n\\t<li>H\\u01b0\\u01a1ng gi\\u1eefa: Hoa hu\\u1ec7 tr\\u1eafng, C&acirc;y cam t&ugrave;ng Himalaya, Cherry, Hoa Cam, Tr&aacute;i l&ecirc;<\\/li>\\r\\n\\t<li>H\\u01b0\\u01a1ng cu\\u1ed1i: \\u0110\\u1eadu Tonka, C&acirc;y ho\\u1eafc h\\u01b0\\u01a1ng, G\\u1ed7 \\u0111&agrave;n h\\u01b0\\u01a1ng, Vani, X\\u1ea1 h\\u01b0\\u01a1ng<\\/li>\\r\\n<\\/ul>\\r\\n\\r\\n<p>&nbsp;<\\/p>\\r\\n\\r\\n<h2><strong>TH&Ocirc;NG TIN S\\u1ea2N PH\\u1ea8M<\\/strong><\\/h2>\\r\\n\\r\\n<ul>\\r\\n\\t<li>Nh&atilde;n hi\\u1ec7u: Jean Paul Gaultier<\\/li>\\r\\n\\t<li>Gi\\u1edbi t&iacute;nh: N\\u1eef<\\/li>\\r\\n\\t<li>Xu\\u1ea5t x\\u1ee9: Ph&aacute;p<\\/li>\\r\\n\\t<li>Ph&aacute;t h&agrave;nh: 2018<\\/li>\\r\\n\\t<li>N\\u1ed3ng \\u0111\\u1ed9: Eau de parfum<\\/li>\\r\\n\\t<li>Nh&oacute;m h\\u01b0\\u01a1ng: H\\u01b0\\u01a1ng Hoa c\\u1ecf G\\u1ed7 X\\u1ea1 h\\u01b0\\u01a1ng - Floral Woody Musk<\\/li>\\r\\n\\t<li>Phong c&aacute;ch: G\\u1ee3i c\\u1ea3m, S&agrave;nh \\u0111i\\u1ec7u, Khi&ecirc;u kh&iacute;ch<\\/li>\\r\\n<\\/ul>\"}},\"category\":[\"18\",\"21\"],\"image\":\"\\/data\\/product\\/product_use.jpg\",\"sub_image\":[\"\\/data\\/product\\/giorgio-armani-acqua-di-gioia-orchard.vn-2.jpg\",\"\\/data\\/product\\/lattafa-mazaaji-100ml-apa-de-parfum_8367043.jpg\"],\"sku\":\"LCD12864-3D\",\"alias\":\"nuoc-hoa-nu-paris-bleu-fleurs-de-sistelle-edp\",\"brand_id\":\"3\",\"supplier_id\":\"1\",\"cost\":\"10000\",\"price\":\"870000\",\"tax_id\":\"0\",\"stock\":\"96\",\"weight_class\":null,\"weight\":\"0\",\"length_class\":null,\"length\":\"0\",\"height\":\"0\",\"width\":\"0\",\"property\":\"physical\",\"download_path\":null,\"date_available\":null,\"minimum\":\"1\",\"sort\":\"0\",\"status\":\"on\",\"_token\":\"KZ5cp3PdRvI1Bjr6hOWm7b5yE6efbWhOU04ixXho\"}', '2022-01-14 07:34:45', '2022-01-14 07:34:45'),
(813, 1, 'sc_admin/product/edit/14', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"descriptions\":{\"en\":{\"name\":\"N\\u01b0\\u1edbc hoa paris bleu fleurs de sistelle GAULTIER SCANDAL EDT (30ML\",\"keyword\":null,\"description\":null,\"content\":\"<p>H\\u1eb3n \\u0111\\u1ed9 ph\\u1ee7 s&oacute;ng v&agrave; s\\u1ef1 c&agrave;n qu&eacute;t kh\\u1eafp c&aacute;c di\\u1ec5n \\u0111&agrave;n v&agrave; c&aacute;c b\\u1ea3ng x\\u1ebfp h\\u1ea1ng nh\\u1eefng chai n\\u01b0\\u1edbc hoa sexy, quy\\u1ebfn r\\u0169 nh\\u1ea5t c\\u1ee7a Scancal l&agrave; \\u0111i\\u1ec1u kh&ocirc;ng c&ograve;n l\\u1ea1 l\\u1eabm g&igrave; v\\u1edbi nhi\\u1ec1u ng\\u01b0\\u1eddi. Th\\u1eadm ch&iacute; \\u1edf Scandal, \\u0111\\u1ecbnh ki\\u1ebfn v\\u1ec1 n\\u01b0\\u1edbc hoa ng\\u1ecdt v&agrave; n\\u1ed3ng th\\u01b0\\u1eddng k&eacute;n ng\\u01b0\\u1eddi c\\u0169ng \\u0111\\u01b0\\u1ee3c thay \\u0111\\u1ed5i quan \\u0111i\\u1ec3m m\\u1ed9t c&aacute;ch \\u0111&aacute;ng k\\u1ec3 \\u1edf r\\u1ea5t nhi\\u1ec1u ng\\u01b0\\u1eddi, b\\u1edfi ng\\u1ecdt th\\u1eadt, n\\u1ed3ng v&agrave; \\u0111\\u1eadm th\\u1eadt, nh\\u1eefng n&oacute; qu&aacute; \\u0111\\u1ed7i sexy v&agrave; h\\u1ea5p d\\u1eabn. Th&aacute;ng 8 n\\u0103m 2018, b\\u1ea3n Flanker \\u0111\\u1ea7u ti&ecirc;n c\\u1ee7a k\\u1ebb c&aacute;m d\\u1ed7 kinh \\u0111i\\u1ec3n &quot;Scandal&quot; \\u0111\\u01b0\\u1ee3c ra m\\u1eaft v\\u1edbi t&ecirc;n g\\u1ecdi l&agrave;&nbsp;<strong>Jean Paul Gaultier Scandal By Night Edp 30Ml<\\/strong>&nbsp;\\u0111&atilde; t\\u1ea1o ra m\\u1ed9t s\\u1ef1 mong ch\\u1edd v&agrave; h&aacute;o h\\u1ee9c v\\u1edbi r\\u1ea5t nhi\\u1ec1u t&iacute;n \\u0111\\u1ed3 n\\u01b0\\u1edbc hoa tr&ecirc;n to&agrave;n th\\u1ebf gi\\u1edbi, \\u0111\\u1eb7c bi\\u1ec7t v\\u1edbi nh\\u1eefng ng\\u01b0\\u1eddi l\\u1ee1 tr&oacute;t say m&ecirc; c&ocirc; n&agrave;ng nguy&ecirc;n b\\u1ea3n Scandal.&nbsp;<\\/p>\\r\\n\\r\\n<p>&nbsp;<\\/p>\\r\\n\\r\\n<p><img src=\\\"https:\\/\\/file.hstatic.net\\/200000117693\\/file\\/jean_paul_gaultier_scandal_edp_30ml_-_4_a561ff8260824894b966b136ec7286c3_grande.jpg\\\" \\/><\\/p>\\r\\n\\r\\n<h2><strong>H\\u01af\\u01a0NG \\u0110\\u1eb6C TR\\u01afNG<\\/strong><\\/h2>\\r\\n\\r\\n<ul>\\r\\n\\t<li>H\\u01b0\\u01a1ng \\u0111\\u1ea7u: M\\u1eadt ong, Chi cam chanh, Cam \\u0111\\u1eafng<\\/li>\\r\\n\\t<li>H\\u01b0\\u01a1ng gi\\u1eefa: Hoa hu\\u1ec7 tr\\u1eafng, C&acirc;y cam t&ugrave;ng Himalaya, Cherry, Hoa Cam, Tr&aacute;i l&ecirc;<\\/li>\\r\\n\\t<li>H\\u01b0\\u01a1ng cu\\u1ed1i: \\u0110\\u1eadu Tonka, C&acirc;y ho\\u1eafc h\\u01b0\\u01a1ng, G\\u1ed7 \\u0111&agrave;n h\\u01b0\\u01a1ng, Vani, X\\u1ea1 h\\u01b0\\u01a1ng<\\/li>\\r\\n<\\/ul>\\r\\n\\r\\n<p>&nbsp;<\\/p>\\r\\n\\r\\n<h2><strong>TH&Ocirc;NG TIN S\\u1ea2N PH\\u1ea8M<\\/strong><\\/h2>\\r\\n\\r\\n<ul>\\r\\n\\t<li>Nh&atilde;n hi\\u1ec7u: Jean Paul Gaultier<\\/li>\\r\\n\\t<li>Gi\\u1edbi t&iacute;nh: N\\u1eef<\\/li>\\r\\n\\t<li>Xu\\u1ea5t x\\u1ee9: Ph&aacute;p<\\/li>\\r\\n\\t<li>Ph&aacute;t h&agrave;nh: 2018<\\/li>\\r\\n\\t<li>N\\u1ed3ng \\u0111\\u1ed9: Eau de parfum<\\/li>\\r\\n\\t<li>Nh&oacute;m h\\u01b0\\u01a1ng: H\\u01b0\\u01a1ng Hoa c\\u1ecf G\\u1ed7 X\\u1ea1 h\\u01b0\\u01a1ng - Floral Woody Musk<\\/li>\\r\\n\\t<li>Phong c&aacute;ch: G\\u1ee3i c\\u1ea3m, S&agrave;nh \\u0111i\\u1ec7u, Khi&ecirc;u kh&iacute;ch<\\/li>\\r\\n<\\/ul>\"},\"vi\":{\"name\":\"N\\u01b0\\u1edbc hoaparis bleu fleurs  sistelle 100ml\",\"keyword\":null,\"description\":null,\"content\":\"<p>H\\u1eb3n \\u0111\\u1ed9 ph\\u1ee7 s&oacute;ng v&agrave; s\\u1ef1 c&agrave;n qu&eacute;t kh\\u1eafp c&aacute;c di\\u1ec5n \\u0111&agrave;n v&agrave; c&aacute;c b\\u1ea3ng x\\u1ebfp h\\u1ea1ng nh\\u1eefng chai n\\u01b0\\u1edbc hoa sexy, quy\\u1ebfn r\\u0169 nh\\u1ea5t c\\u1ee7a Scancal l&agrave; \\u0111i\\u1ec1u kh&ocirc;ng c&ograve;n l\\u1ea1 l\\u1eabm g&igrave; v\\u1edbi nhi\\u1ec1u ng\\u01b0\\u1eddi. Th\\u1eadm ch&iacute; \\u1edf Scandal, \\u0111\\u1ecbnh ki\\u1ebfn v\\u1ec1 n\\u01b0\\u1edbc hoa ng\\u1ecdt v&agrave; n\\u1ed3ng th\\u01b0\\u1eddng k&eacute;n ng\\u01b0\\u1eddi c\\u0169ng \\u0111\\u01b0\\u1ee3c thay \\u0111\\u1ed5i quan \\u0111i\\u1ec3m m\\u1ed9t c&aacute;ch \\u0111&aacute;ng k\\u1ec3 \\u1edf r\\u1ea5t nhi\\u1ec1u ng\\u01b0\\u1eddi, b\\u1edfi ng\\u1ecdt th\\u1eadt, n\\u1ed3ng v&agrave; \\u0111\\u1eadm th\\u1eadt, nh\\u1eefng n&oacute; qu&aacute; \\u0111\\u1ed7i sexy v&agrave; h\\u1ea5p d\\u1eabn. Th&aacute;ng 8 n\\u0103m 2018, b\\u1ea3n Flanker \\u0111\\u1ea7u ti&ecirc;n c\\u1ee7a k\\u1ebb c&aacute;m d\\u1ed7 kinh \\u0111i\\u1ec3n &quot;Scandal&quot; \\u0111\\u01b0\\u1ee3c ra m\\u1eaft v\\u1edbi t&ecirc;n g\\u1ecdi l&agrave;&nbsp;<strong>Jean Paul Gaultier Scandal By Night Edp 30Ml<\\/strong>&nbsp;\\u0111&atilde; t\\u1ea1o ra m\\u1ed9t s\\u1ef1 mong ch\\u1edd v&agrave; h&aacute;o h\\u1ee9c v\\u1edbi r\\u1ea5t nhi\\u1ec1u t&iacute;n \\u0111\\u1ed3 n\\u01b0\\u1edbc hoa tr&ecirc;n to&agrave;n th\\u1ebf gi\\u1edbi, \\u0111\\u1eb7c bi\\u1ec7t v\\u1edbi nh\\u1eefng ng\\u01b0\\u1eddi l\\u1ee1 tr&oacute;t say m&ecirc; c&ocirc; n&agrave;ng nguy&ecirc;n b\\u1ea3n Scandal.&nbsp;<\\/p>\\r\\n\\r\\n<p>&nbsp;<\\/p>\\r\\n\\r\\n<p><img src=\\\"https:\\/\\/file.hstatic.net\\/200000117693\\/file\\/jean_paul_gaultier_scandal_edp_30ml_-_4_a561ff8260824894b966b136ec7286c3_grande.jpg\\\" \\/><\\/p>\\r\\n\\r\\n<h2><strong>H\\u01af\\u01a0NG \\u0110\\u1eb6C TR\\u01afNG<\\/strong><\\/h2>\\r\\n\\r\\n<ul>\\r\\n\\t<li>H\\u01b0\\u01a1ng \\u0111\\u1ea7u: M\\u1eadt ong, Chi cam chanh, Cam \\u0111\\u1eafng<\\/li>\\r\\n\\t<li>H\\u01b0\\u01a1ng gi\\u1eefa: Hoa hu\\u1ec7 tr\\u1eafng, C&acirc;y cam t&ugrave;ng Himalaya, Cherry, Hoa Cam, Tr&aacute;i l&ecirc;<\\/li>\\r\\n\\t<li>H\\u01b0\\u01a1ng cu\\u1ed1i: \\u0110\\u1eadu Tonka, C&acirc;y ho\\u1eafc h\\u01b0\\u01a1ng, G\\u1ed7 \\u0111&agrave;n h\\u01b0\\u01a1ng, Vani, X\\u1ea1 h\\u01b0\\u01a1ng<\\/li>\\r\\n<\\/ul>\\r\\n\\r\\n<p>&nbsp;<\\/p>\\r\\n\\r\\n<h2><strong>TH&Ocirc;NG TIN S\\u1ea2N PH\\u1ea8M<\\/strong><\\/h2>\\r\\n\\r\\n<ul>\\r\\n\\t<li>Nh&atilde;n hi\\u1ec7u: Jean Paul Gaultier<\\/li>\\r\\n\\t<li>Gi\\u1edbi t&iacute;nh: N\\u1eef<\\/li>\\r\\n\\t<li>Xu\\u1ea5t x\\u1ee9: Ph&aacute;p<\\/li>\\r\\n\\t<li>Ph&aacute;t h&agrave;nh: 2018<\\/li>\\r\\n\\t<li>N\\u1ed3ng \\u0111\\u1ed9: Eau de parfum<\\/li>\\r\\n\\t<li>Nh&oacute;m h\\u01b0\\u01a1ng: H\\u01b0\\u01a1ng Hoa c\\u1ecf G\\u1ed7 X\\u1ea1 h\\u01b0\\u01a1ng - Floral Woody Musk<\\/li>\\r\\n\\t<li>Phong c&aacute;ch: G\\u1ee3i c\\u1ea3m, S&agrave;nh \\u0111i\\u1ec7u, Khi&ecirc;u kh&iacute;ch<\\/li>\\r\\n<\\/ul>\"}},\"category\":[\"18\",\"21\"],\"image\":\"\\/data\\/product\\/product_use.jpg\",\"sub_image\":[\"\\/data\\/product\\/giorgio-armani-acqua-di-gioia-orchard.vn-2.jpg\",\"\\/data\\/product\\/lattafa-mazaaji-100ml-apa-de-parfum_8367043.jpg\"],\"sku\":\"LCD12864-3D\",\"alias\":\"nuoc-hoa-nu-paris-bleu-fleurs-de-sistelle-edp\",\"brand_id\":\"3\",\"supplier_id\":\"1\",\"cost\":\"10000\",\"price\":\"870000\",\"tax_id\":\"0\",\"stock\":\"96\",\"weight_class\":null,\"weight\":\"0\",\"length_class\":null,\"length\":\"0\",\"height\":\"0\",\"width\":\"0\",\"property\":\"physical\",\"download_path\":null,\"date_available\":null,\"minimum\":\"1\",\"sort\":\"0\",\"status\":\"on\",\"_token\":\"KZ5cp3PdRvI1Bjr6hOWm7b5yE6efbWhOU04ixXho\"}', '2022-01-14 07:34:46', '2022-01-14 07:34:46'),
(814, 1, 'sc_admin/product', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2022-01-14 07:34:47', '2022-01-14 07:34:47'),
(815, 1, 'sc_admin/product/edit/14', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2022-01-14 07:35:04', '2022-01-14 07:35:04'),
(816, 1, 'sc_admin/product/edit/14', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"descriptions\":{\"en\":{\"name\":\"N\\u01b0\\u1edbc hoa paris bleu fleurs de sistelle GAULTIER SCANDAL EDT (30ML\",\"keyword\":null,\"description\":null,\"content\":\"<p>H\\u1eb3n \\u0111\\u1ed9 ph\\u1ee7 s&oacute;ng v&agrave; s\\u1ef1 c&agrave;n qu&eacute;t kh\\u1eafp c&aacute;c di\\u1ec5n \\u0111&agrave;n v&agrave; c&aacute;c b\\u1ea3ng x\\u1ebfp h\\u1ea1ng nh\\u1eefng chai n\\u01b0\\u1edbc hoa sexy, quy\\u1ebfn r\\u0169 nh\\u1ea5t c\\u1ee7a Scancal l&agrave; \\u0111i\\u1ec1u kh&ocirc;ng c&ograve;n l\\u1ea1 l\\u1eabm g&igrave; v\\u1edbi nhi\\u1ec1u ng\\u01b0\\u1eddi. Th\\u1eadm ch&iacute; \\u1edf Scandal, \\u0111\\u1ecbnh ki\\u1ebfn v\\u1ec1 n\\u01b0\\u1edbc hoa ng\\u1ecdt v&agrave; n\\u1ed3ng th\\u01b0\\u1eddng k&eacute;n ng\\u01b0\\u1eddi c\\u0169ng \\u0111\\u01b0\\u1ee3c thay \\u0111\\u1ed5i quan \\u0111i\\u1ec3m m\\u1ed9t c&aacute;ch \\u0111&aacute;ng k\\u1ec3 \\u1edf r\\u1ea5t nhi\\u1ec1u ng\\u01b0\\u1eddi, b\\u1edfi ng\\u1ecdt th\\u1eadt, n\\u1ed3ng v&agrave; \\u0111\\u1eadm th\\u1eadt, nh\\u1eefng n&oacute; qu&aacute; \\u0111\\u1ed7i sexy v&agrave; h\\u1ea5p d\\u1eabn. Th&aacute;ng 8 n\\u0103m 2018, b\\u1ea3n Flanker \\u0111\\u1ea7u ti&ecirc;n c\\u1ee7a k\\u1ebb c&aacute;m d\\u1ed7 kinh \\u0111i\\u1ec3n &quot;Scandal&quot; \\u0111\\u01b0\\u1ee3c ra m\\u1eaft v\\u1edbi t&ecirc;n g\\u1ecdi l&agrave;&nbsp;<strong>Jean Paul Gaultier Scandal By Night Edp 30Ml<\\/strong>&nbsp;\\u0111&atilde; t\\u1ea1o ra m\\u1ed9t s\\u1ef1 mong ch\\u1edd v&agrave; h&aacute;o h\\u1ee9c v\\u1edbi r\\u1ea5t nhi\\u1ec1u t&iacute;n \\u0111\\u1ed3 n\\u01b0\\u1edbc hoa tr&ecirc;n to&agrave;n th\\u1ebf gi\\u1edbi, \\u0111\\u1eb7c bi\\u1ec7t v\\u1edbi nh\\u1eefng ng\\u01b0\\u1eddi l\\u1ee1 tr&oacute;t say m&ecirc; c&ocirc; n&agrave;ng nguy&ecirc;n b\\u1ea3n Scandal.&nbsp;<\\/p>\\r\\n\\r\\n<p>&nbsp;<\\/p>\\r\\n\\r\\n<p><img src=\\\"https:\\/\\/file.hstatic.net\\/200000117693\\/file\\/jean_paul_gaultier_scandal_edp_30ml_-_4_a561ff8260824894b966b136ec7286c3_grande.jpg\\\" \\/><\\/p>\\r\\n\\r\\n<h2><strong>H\\u01af\\u01a0NG \\u0110\\u1eb6C TR\\u01afNG<\\/strong><\\/h2>\\r\\n\\r\\n<ul>\\r\\n\\t<li>H\\u01b0\\u01a1ng \\u0111\\u1ea7u: M\\u1eadt ong, Chi cam chanh, Cam \\u0111\\u1eafng<\\/li>\\r\\n\\t<li>H\\u01b0\\u01a1ng gi\\u1eefa: Hoa hu\\u1ec7 tr\\u1eafng, C&acirc;y cam t&ugrave;ng Himalaya, Cherry, Hoa Cam, Tr&aacute;i l&ecirc;<\\/li>\\r\\n\\t<li>H\\u01b0\\u01a1ng cu\\u1ed1i: \\u0110\\u1eadu Tonka, C&acirc;y ho\\u1eafc h\\u01b0\\u01a1ng, G\\u1ed7 \\u0111&agrave;n h\\u01b0\\u01a1ng, Vani, X\\u1ea1 h\\u01b0\\u01a1ng<\\/li>\\r\\n<\\/ul>\\r\\n\\r\\n<p>&nbsp;<\\/p>\\r\\n\\r\\n<h2><strong>TH&Ocirc;NG TIN S\\u1ea2N PH\\u1ea8M<\\/strong><\\/h2>\\r\\n\\r\\n<ul>\\r\\n\\t<li>Nh&atilde;n hi\\u1ec7u: Jean Paul Gaultier<\\/li>\\r\\n\\t<li>Gi\\u1edbi t&iacute;nh: N\\u1eef<\\/li>\\r\\n\\t<li>Xu\\u1ea5t x\\u1ee9: Ph&aacute;p<\\/li>\\r\\n\\t<li>Ph&aacute;t h&agrave;nh: 2018<\\/li>\\r\\n\\t<li>N\\u1ed3ng \\u0111\\u1ed9: Eau de parfum<\\/li>\\r\\n\\t<li>Nh&oacute;m h\\u01b0\\u01a1ng: H\\u01b0\\u01a1ng Hoa c\\u1ecf G\\u1ed7 X\\u1ea1 h\\u01b0\\u01a1ng - Floral Woody Musk<\\/li>\\r\\n\\t<li>Phong c&aacute;ch: G\\u1ee3i c\\u1ea3m, S&agrave;nh \\u0111i\\u1ec7u, Khi&ecirc;u kh&iacute;ch<\\/li>\\r\\n<\\/ul>\"},\"vi\":{\"name\":\"N\\u01b0\\u1edbc hoa paris bleu fleurs  sistelle\",\"keyword\":null,\"description\":null,\"content\":\"<p>H\\u1eb3n \\u0111\\u1ed9 ph\\u1ee7 s&oacute;ng v&agrave; s\\u1ef1 c&agrave;n qu&eacute;t kh\\u1eafp c&aacute;c di\\u1ec5n \\u0111&agrave;n v&agrave; c&aacute;c b\\u1ea3ng x\\u1ebfp h\\u1ea1ng nh\\u1eefng chai n\\u01b0\\u1edbc hoa sexy, quy\\u1ebfn r\\u0169 nh\\u1ea5t c\\u1ee7a Scancal l&agrave; \\u0111i\\u1ec1u kh&ocirc;ng c&ograve;n l\\u1ea1 l\\u1eabm g&igrave; v\\u1edbi nhi\\u1ec1u ng\\u01b0\\u1eddi. Th\\u1eadm ch&iacute; \\u1edf Scandal, \\u0111\\u1ecbnh ki\\u1ebfn v\\u1ec1 n\\u01b0\\u1edbc hoa ng\\u1ecdt v&agrave; n\\u1ed3ng th\\u01b0\\u1eddng k&eacute;n ng\\u01b0\\u1eddi c\\u0169ng \\u0111\\u01b0\\u1ee3c thay \\u0111\\u1ed5i quan \\u0111i\\u1ec3m m\\u1ed9t c&aacute;ch \\u0111&aacute;ng k\\u1ec3 \\u1edf r\\u1ea5t nhi\\u1ec1u ng\\u01b0\\u1eddi, b\\u1edfi ng\\u1ecdt th\\u1eadt, n\\u1ed3ng v&agrave; \\u0111\\u1eadm th\\u1eadt, nh\\u1eefng n&oacute; qu&aacute; \\u0111\\u1ed7i sexy v&agrave; h\\u1ea5p d\\u1eabn. Th&aacute;ng 8 n\\u0103m 2018, b\\u1ea3n Flanker \\u0111\\u1ea7u ti&ecirc;n c\\u1ee7a k\\u1ebb c&aacute;m d\\u1ed7 kinh \\u0111i\\u1ec3n &quot;Scandal&quot; \\u0111\\u01b0\\u1ee3c ra m\\u1eaft v\\u1edbi t&ecirc;n g\\u1ecdi l&agrave;&nbsp;<strong>Jean Paul Gaultier Scandal By Night Edp 30Ml<\\/strong>&nbsp;\\u0111&atilde; t\\u1ea1o ra m\\u1ed9t s\\u1ef1 mong ch\\u1edd v&agrave; h&aacute;o h\\u1ee9c v\\u1edbi r\\u1ea5t nhi\\u1ec1u t&iacute;n \\u0111\\u1ed3 n\\u01b0\\u1edbc hoa tr&ecirc;n to&agrave;n th\\u1ebf gi\\u1edbi, \\u0111\\u1eb7c bi\\u1ec7t v\\u1edbi nh\\u1eefng ng\\u01b0\\u1eddi l\\u1ee1 tr&oacute;t say m&ecirc; c&ocirc; n&agrave;ng nguy&ecirc;n b\\u1ea3n Scandal.&nbsp;<\\/p>\\r\\n\\r\\n<p>&nbsp;<\\/p>\\r\\n\\r\\n<p><img src=\\\"https:\\/\\/file.hstatic.net\\/200000117693\\/file\\/jean_paul_gaultier_scandal_edp_30ml_-_4_a561ff8260824894b966b136ec7286c3_grande.jpg\\\" \\/><\\/p>\\r\\n\\r\\n<h2><strong>H\\u01af\\u01a0NG \\u0110\\u1eb6C TR\\u01afNG<\\/strong><\\/h2>\\r\\n\\r\\n<ul>\\r\\n\\t<li>H\\u01b0\\u01a1ng \\u0111\\u1ea7u: M\\u1eadt ong, Chi cam chanh, Cam \\u0111\\u1eafng<\\/li>\\r\\n\\t<li>H\\u01b0\\u01a1ng gi\\u1eefa: Hoa hu\\u1ec7 tr\\u1eafng, C&acirc;y cam t&ugrave;ng Himalaya, Cherry, Hoa Cam, Tr&aacute;i l&ecirc;<\\/li>\\r\\n\\t<li>H\\u01b0\\u01a1ng cu\\u1ed1i: \\u0110\\u1eadu Tonka, C&acirc;y ho\\u1eafc h\\u01b0\\u01a1ng, G\\u1ed7 \\u0111&agrave;n h\\u01b0\\u01a1ng, Vani, X\\u1ea1 h\\u01b0\\u01a1ng<\\/li>\\r\\n<\\/ul>\\r\\n\\r\\n<p>&nbsp;<\\/p>\\r\\n\\r\\n<h2><strong>TH&Ocirc;NG TIN S\\u1ea2N PH\\u1ea8M<\\/strong><\\/h2>\\r\\n\\r\\n<ul>\\r\\n\\t<li>Nh&atilde;n hi\\u1ec7u: Jean Paul Gaultier<\\/li>\\r\\n\\t<li>Gi\\u1edbi t&iacute;nh: N\\u1eef<\\/li>\\r\\n\\t<li>Xu\\u1ea5t x\\u1ee9: Ph&aacute;p<\\/li>\\r\\n\\t<li>Ph&aacute;t h&agrave;nh: 2018<\\/li>\\r\\n\\t<li>N\\u1ed3ng \\u0111\\u1ed9: Eau de parfum<\\/li>\\r\\n\\t<li>Nh&oacute;m h\\u01b0\\u01a1ng: H\\u01b0\\u01a1ng Hoa c\\u1ecf G\\u1ed7 X\\u1ea1 h\\u01b0\\u01a1ng - Floral Woody Musk<\\/li>\\r\\n\\t<li>Phong c&aacute;ch: G\\u1ee3i c\\u1ea3m, S&agrave;nh \\u0111i\\u1ec7u, Khi&ecirc;u kh&iacute;ch<\\/li>\\r\\n<\\/ul>\"}},\"category\":[\"18\",\"21\"],\"image\":\"\\/data\\/product\\/product_use.jpg\",\"sub_image\":[\"\\/data\\/product\\/giorgio-armani-acqua-di-gioia-orchard.vn-2.jpg\",\"\\/data\\/product\\/lattafa-mazaaji-100ml-apa-de-parfum_8367043.jpg\"],\"sku\":\"LCD12864-3D\",\"alias\":\"nuoc-hoa-nu-paris-bleu-fleurs-de-sistelle-edp\",\"brand_id\":\"3\",\"supplier_id\":\"1\",\"cost\":\"10000\",\"price\":\"870000\",\"tax_id\":\"0\",\"stock\":\"96\",\"weight_class\":null,\"weight\":\"0\",\"length_class\":null,\"length\":\"0\",\"height\":\"0\",\"width\":\"0\",\"property\":\"physical\",\"download_path\":null,\"date_available\":null,\"minimum\":\"1\",\"sort\":\"0\",\"status\":\"on\",\"_token\":\"KZ5cp3PdRvI1Bjr6hOWm7b5yE6efbWhOU04ixXho\"}', '2022-01-14 07:35:27', '2022-01-14 07:35:27'),
(817, 1, 'sc_admin/product', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2022-01-14 07:35:28', '2022-01-14 07:35:28'),
(818, 1, 'sc_admin/product/edit/11', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2022-01-14 07:36:02', '2022-01-14 07:36:02'),
(819, 1, 'sc_admin/product/edit/11', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"descriptions\":{\"en\":{\"name\":\"N\\u01b0\\u1edbc Hoa N\\u1eef HUGO BOSS The Scent EDP 50ml The Scent EDP Spray\",\"keyword\":null,\"description\":null,\"content\":\"<h1>N\\u01b0\\u1edbc Hoa N\\u1eef HUGO BOSS The Scent EDP 50ml<\\/h1>\\r\\n\\r\\n<h2>The Scent EDP Spray<\\/h2>\"},\"vi\":{\"name\":\"N\\u01b0\\u1edbc Hoa N\\u1eef HUGO BOSS The Scent EDP 50ml The Scent EDP Spray\",\"keyword\":null,\"description\":null,\"content\":\"<p><strong>N\\u01b0\\u1edbc Hoa N\\u1eef Hugo Boss The Scent EDP<\\/strong><\\/p>\\r\\n\\r\\n<p>Ra m\\u1eaft v&agrave;o n\\u0103m 2016,&nbsp;<strong>Hugo Boss The Scent For Her&nbsp;<\\/strong>l\\u1ea5y c\\u1ea3m h\\u1ee9ng ngh\\u1ec7 thu\\u1eadt t\\u1eeb h\\u01b0\\u01a1ng th\\u01a1m hoa qu\\u1ea3 k\\u1ebft h\\u1ee3p v\\u1edbi m&agrave;u s\\u1eafc t\\u01b0\\u01a1i m\\u1edbi c\\u1ee7a thi\\u1ebft k\\u1ebf b&ecirc;n ngo&agrave;i \\u0111&atilde; g\\u1ee3i l&ecirc;n s\\u1ee9c m\\u1ea1nh quy\\u1ebfn r\\u0169 bao tr&ugrave;m ng\\u01b0\\u1eddi ph\\u1ee5 n\\u1eef. M\\u1edf \\u0111\\u1ea7u m&ugrave;i h\\u01b0\\u01a1ng c\\u1ee7a&nbsp;<strong>Hugo Boss<\\/strong><strong>&nbsp;The Scent<\\/strong>&nbsp;s\\u1ebd l&agrave; h\\u01b0\\u01a1ng th\\u01a1m t\\u01b0\\u01a1i m&aacute;t c\\u1ee7a t&aacute;o k\\u1ebft h\\u1ee3p hoa lan Nam Phi, ti\\u1ebfp \\u0111\\u1ebfn l&agrave; m&ugrave;i h\\u01b0\\u01a1ng quy\\u1ebfn r\\u0169 nh\\u1eb9 nh&agrave;ng c\\u1ee7a m\\u1ed9c t&ecirc;, v&agrave; cu\\u1ed1i c&ugrave;ng s\\u1ebd d\\u1ea7n d\\u1ea7n chuy\\u1ec3n h&oacute;a th&agrave;nh h\\u01b0\\u01a1ng th\\u01a1m ph\\u1ea3ng ph\\u1ea5t c\\u1ee7a ca cao rang, \\u1ea5m &aacute;m v&agrave; n\\u1ed3ng n&agrave;n.<\\/p>\\r\\n\\r\\n<p>&nbsp;<\\/p>\\r\\n\\r\\n<p><img alt=\\\"\\\" data-was-processed=\\\"true\\\" height=\\\"280\\\" src=\\\"https:\\/\\/media.hasaki.vn\\/wysiwyg\\/spa\\/2anuoc-hoa-nu-hugo-boss-the-scent-edp.jpg\\\" width=\\\"500\\\" \\/>&nbsp;<\\/p>\\r\\n\\r\\n<p>&nbsp;<\\/p>\\r\\n\\r\\n<p><strong>N\\u01b0\\u1edbc hoa Hugo Boss The Scent For Her&nbsp;<\\/strong><strong>Eau De Parfum&nbsp;<\\/strong>d&agrave;nh cho nh\\u1eefng c&ocirc; n&agrave;ng ph&oacute;ng kho&aacute;ng, t\\u1ef1 tin. T&ocirc; \\u0111\\u1eadm c&aacute; t&iacute;nh v&agrave; n&eacute;t t&iacute;nh c&aacute;ch ri&ecirc;ng bi\\u1ec7t c\\u1ee7a b\\u1ea1n, The Scent For Her \\u0111\\u1ed3ng h&agrave;nh khi\\u1ebfn c&aacute;c n&agrave;ng tr\\u1edf n&ecirc;n \\u0111\\u1eb7c bi\\u1ec7t h\\u01a1n gi\\u1eefa \\u0111&aacute;m \\u0111&ocirc;ng. Chai n\\u01b0\\u1edbc hoa tinh t\\u1ebf, nh\\u1ecf g\\u1ecdn v\\u1edbi s\\u1eafc h\\u1ed3ng d\\u1ecbu d&agrave;ng, n\\u1eef t&iacute;nh.<\\/p>\\r\\n\\r\\n<p>&nbsp;<\\/p>\\r\\n\\r\\n<p><img alt=\\\"\\\" data-was-processed=\\\"true\\\" height=\\\"282\\\" src=\\\"https:\\/\\/media.hasaki.vn\\/wysiwyg\\/spa\\/3anuoc-hoa-nu-hugo-boss-the-scent-edp.jpg\\\" width=\\\"500\\\" \\/><\\/p>\\r\\n\\r\\n<p>&nbsp;<\\/p>\\r\\n\\r\\n<p>T\\u1eadp \\u0111o&agrave;n th\\u1eddi trang cao c\\u1ea5p&nbsp;<strong>Hugo Boss<\\/strong>&nbsp;hay c&ograve;n g\\u1ecdi l&agrave;&nbsp;<strong>Hugo Boss<\\/strong><strong>&nbsp;<\\/strong><strong>AG<\\/strong>&nbsp;\\u0111\\u01b0\\u1ee3c th&agrave;nh l\\u1eadp v&agrave; \\u0111&oacute;ng tr\\u1ee5 s\\u1edf t\\u1ea1i Metzingen, \\u0110\\u1ee9c v&agrave;o n\\u0103m 1895.&nbsp;V\\u1edbi nh\\u1eefng thi\\u1ebft k\\u1ebf \\u0111\\u1ed9c \\u0111&aacute;o v&agrave; lu&ocirc;n \\u0111&oacute;n tr\\u01b0\\u1edbc c&aacute;c xu h\\u01b0\\u1edbng th\\u1eddi trang,&nbsp;<strong>Hugo Boss<\\/strong>&nbsp;l&agrave; th\\u01b0\\u01a1ng hi\\u1ec7u c\\u1ee7a s\\u1ef1 s\\u1eafc s\\u1ea3o, sang tr\\u1ecdng v&agrave; \\u0111\\u1eb3ng c\\u1ea5p, l&agrave; bi\\u1ec3u t\\u01b0\\u1ee3ng \\u0111&uacute;ng ngh\\u0129a c\\u1ee7a th\\u1eddi trang.<br \\/>\\r\\nV&agrave;o n\\u0103m 1993,&nbsp;<strong>Hugo Boss<\\/strong><strong>&nbsp;<\\/strong>gi\\u1edbi thi\\u1ec7u s\\u1ea3n ph\\u1ea9m n\\u01b0\\u1edbc hoa \\u0111\\u1ea7u ti&ecirc;n.&nbsp;T\\u1eeb \\u0111&oacute; cho \\u0111\\u1ebfn nay, th\\u01b0\\u01a1ng hi\\u1ec7u \\u0111&atilde; nhanh ch&oacute;ng c\\u1eadp nh\\u1eadt xu h\\u01b0\\u1edbng c\\u0169ng nh\\u01b0 cho ra \\u0111\\u1eddi nhi\\u1ec1u d&ograve;ng m\\u1eabu m&atilde; m\\u1edbi. D&ograve;ng n\\u01b0\\u1edbc hoa&nbsp;<strong>Hugo Boss<\\/strong><strong>&nbsp;<\\/strong>\\u0111\\u01b0\\u1ee3c thi\\u1ebft k\\u1ebf v\\u1edbi m\\u1eabu m&atilde; v&agrave; h\\u01b0\\u01a1ng th\\u01a1m mang nhi\\u1ec1u phong c&aacute;ch kh&aacute;c nhau, th&iacute;ch h\\u1ee3p trong nhi\\u1ec1u ho&agrave;n c\\u1ea3nh cho ng\\u01b0\\u1eddi ti&ecirc;u d&ugrave;ng, bao g\\u1ed3m c\\u1ea3 nam v&agrave; n\\u1eef.<\\/p>\\r\\n\\r\\n<p>&nbsp;<\\/p>\\r\\n\\r\\n<p>&nbsp;<img alt=\\\"\\\" data-was-processed=\\\"true\\\" height=\\\"361\\\" src=\\\"https:\\/\\/media.hasaki.vn\\/wysiwyg\\/spa\\/4anuoc-hoa-nu-hugo-boss-the-scent-edp.jpg\\\" width=\\\"500\\\" \\/><\\/p>\\r\\n\\r\\n<p>&nbsp;<\\/p>\\r\\n\\r\\n<p><strong>Phong c&aacute;ch:<\\/strong>&nbsp;N\\u1eef t&iacute;nh, s&agrave;nh \\u0111i\\u1ec7u<\\/p>\\r\\n\\r\\n<p><strong>M&ugrave;i h\\u01b0\\u01a1ng \\u0111\\u1eb7c tr\\u01b0ng<\\/strong><\\/p>\\r\\n\\r\\n<p><strong>H\\u01b0\\u01a1ng \\u0111\\u1ea7u:<\\/strong>&nbsp;Qu\\u1ea3 \\u0111&agrave;o, Hoa lan Nam Phi<\\/p>\\r\\n\\r\\n<p><strong>H\\u01b0\\u01a1ng gi\\u1eefa:<\\/strong>&nbsp;Hoa chi m\\u1ed9c t&ecirc;<\\/p>\\r\\n\\r\\n<p><strong>H\\u01b0\\u01a1ng cu\\u1ed1i:<\\/strong>&nbsp;Ca cao<\\/p>\"}},\"category\":[\"22\",\"23\"],\"image\":\"\\/data\\/product\\/product_use.jpg\",\"sub_image\":[\"\\/data\\/product\\/Narciso-Rodriguez-For-Her-EDP-100ML_t6av-n0-165x165.png\"],\"sku\":\"SS495A\",\"alias\":\"demo-alias-name-product-11\",\"brand_id\":\"2\",\"supplier_id\":\"1\",\"cost\":\"10000\",\"price\":\"2700000\",\"tax_id\":\"auto\",\"price_promotion\":\"2250000\",\"price_promotion_start\":null,\"price_promotion_end\":null,\"stock\":\"100\",\"weight_class\":null,\"weight\":\"0\",\"length_class\":null,\"length\":\"0\",\"height\":\"0\",\"width\":\"0\",\"property\":\"physical\",\"download_path\":null,\"date_available\":null,\"minimum\":\"0\",\"sort\":\"0\",\"status\":\"on\",\"_token\":\"KZ5cp3PdRvI1Bjr6hOWm7b5yE6efbWhOU04ixXho\"}', '2022-01-14 07:36:34', '2022-01-14 07:36:34'),
(820, 1, 'sc_admin/product', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2022-01-14 07:36:35', '2022-01-14 07:36:35'),
(821, 1, 'sc_admin/product/edit/11', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2022-01-14 07:36:47', '2022-01-14 07:36:47'),
(822, 1, 'sc_admin/uploads', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"type\":\"product\"}', '2022-01-14 07:37:01', '2022-01-14 07:37:01'),
(823, 1, 'sc_admin/uploads/folders', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"working_dir\":null,\"type\":\"product\",\"_\":\"1642145822385\"}', '2022-01-14 07:37:03', '2022-01-14 07:37:03'),
(824, 1, 'sc_admin/uploads/errors', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"working_dir\":null,\"type\":\"product\",\"_\":\"1642145822386\"}', '2022-01-14 07:37:03', '2022-01-14 07:37:03'),
(825, 1, 'sc_admin/uploads/jsonitems', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"working_dir\":null,\"type\":\"product\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1642145822387\"}', '2022-01-14 07:37:04', '2022-01-14 07:37:04');
INSERT INTO `sc_admin_log` (`id`, `user_id`, `path`, `method`, `ip`, `user_agent`, `input`, `created_at`, `updated_at`) VALUES
(826, 1, 'sc_admin/product/edit/11', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"descriptions\":{\"en\":{\"name\":\"N\\u01b0\\u1edbc Hoa N\\u1eef HUGO BOSS The Scent EDP 50ml The Scent EDP Spray\",\"keyword\":null,\"description\":null,\"content\":\"<h1>N\\u01b0\\u1edbc Hoa N\\u1eef HUGO BOSS The Scent EDP 50ml<\\/h1>\\r\\n\\r\\n<h2>The Scent EDP Spray<\\/h2>\"},\"vi\":{\"name\":\"N\\u01b0\\u1edbc Hoa N\\u1eef HUGO BOSS The Scent EDP 50ml The Scent EDP Spray\",\"keyword\":null,\"description\":null,\"content\":\"<p><strong>N\\u01b0\\u1edbc Hoa N\\u1eef Hugo Boss The Scent EDP<\\/strong><\\/p>\\r\\n\\r\\n<p>Ra m\\u1eaft v&agrave;o n\\u0103m 2016,&nbsp;<strong>Hugo Boss The Scent For Her&nbsp;<\\/strong>l\\u1ea5y c\\u1ea3m h\\u1ee9ng ngh\\u1ec7 thu\\u1eadt t\\u1eeb h\\u01b0\\u01a1ng th\\u01a1m hoa qu\\u1ea3 k\\u1ebft h\\u1ee3p v\\u1edbi m&agrave;u s\\u1eafc t\\u01b0\\u01a1i m\\u1edbi c\\u1ee7a thi\\u1ebft k\\u1ebf b&ecirc;n ngo&agrave;i \\u0111&atilde; g\\u1ee3i l&ecirc;n s\\u1ee9c m\\u1ea1nh quy\\u1ebfn r\\u0169 bao tr&ugrave;m ng\\u01b0\\u1eddi ph\\u1ee5 n\\u1eef. M\\u1edf \\u0111\\u1ea7u m&ugrave;i h\\u01b0\\u01a1ng c\\u1ee7a&nbsp;<strong>Hugo Boss<\\/strong><strong>&nbsp;The Scent<\\/strong>&nbsp;s\\u1ebd l&agrave; h\\u01b0\\u01a1ng th\\u01a1m t\\u01b0\\u01a1i m&aacute;t c\\u1ee7a t&aacute;o k\\u1ebft h\\u1ee3p hoa lan Nam Phi, ti\\u1ebfp \\u0111\\u1ebfn l&agrave; m&ugrave;i h\\u01b0\\u01a1ng quy\\u1ebfn r\\u0169 nh\\u1eb9 nh&agrave;ng c\\u1ee7a m\\u1ed9c t&ecirc;, v&agrave; cu\\u1ed1i c&ugrave;ng s\\u1ebd d\\u1ea7n d\\u1ea7n chuy\\u1ec3n h&oacute;a th&agrave;nh h\\u01b0\\u01a1ng th\\u01a1m ph\\u1ea3ng ph\\u1ea5t c\\u1ee7a ca cao rang, \\u1ea5m &aacute;m v&agrave; n\\u1ed3ng n&agrave;n.<\\/p>\\r\\n\\r\\n<p>&nbsp;<\\/p>\\r\\n\\r\\n<p><img alt=\\\"\\\" data-was-processed=\\\"true\\\" height=\\\"280\\\" src=\\\"https:\\/\\/media.hasaki.vn\\/wysiwyg\\/spa\\/2anuoc-hoa-nu-hugo-boss-the-scent-edp.jpg\\\" width=\\\"500\\\" \\/>&nbsp;<\\/p>\\r\\n\\r\\n<p>&nbsp;<\\/p>\\r\\n\\r\\n<p><strong>N\\u01b0\\u1edbc hoa Hugo Boss The Scent For Her&nbsp;<\\/strong><strong>Eau De Parfum&nbsp;<\\/strong>d&agrave;nh cho nh\\u1eefng c&ocirc; n&agrave;ng ph&oacute;ng kho&aacute;ng, t\\u1ef1 tin. T&ocirc; \\u0111\\u1eadm c&aacute; t&iacute;nh v&agrave; n&eacute;t t&iacute;nh c&aacute;ch ri&ecirc;ng bi\\u1ec7t c\\u1ee7a b\\u1ea1n, The Scent For Her \\u0111\\u1ed3ng h&agrave;nh khi\\u1ebfn c&aacute;c n&agrave;ng tr\\u1edf n&ecirc;n \\u0111\\u1eb7c bi\\u1ec7t h\\u01a1n gi\\u1eefa \\u0111&aacute;m \\u0111&ocirc;ng. Chai n\\u01b0\\u1edbc hoa tinh t\\u1ebf, nh\\u1ecf g\\u1ecdn v\\u1edbi s\\u1eafc h\\u1ed3ng d\\u1ecbu d&agrave;ng, n\\u1eef t&iacute;nh.<\\/p>\\r\\n\\r\\n<p>&nbsp;<\\/p>\\r\\n\\r\\n<p><img alt=\\\"\\\" data-was-processed=\\\"true\\\" height=\\\"282\\\" src=\\\"https:\\/\\/media.hasaki.vn\\/wysiwyg\\/spa\\/3anuoc-hoa-nu-hugo-boss-the-scent-edp.jpg\\\" width=\\\"500\\\" \\/><\\/p>\\r\\n\\r\\n<p>&nbsp;<\\/p>\\r\\n\\r\\n<p>T\\u1eadp \\u0111o&agrave;n th\\u1eddi trang cao c\\u1ea5p&nbsp;<strong>Hugo Boss<\\/strong>&nbsp;hay c&ograve;n g\\u1ecdi l&agrave;&nbsp;<strong>Hugo Boss<\\/strong><strong>&nbsp;<\\/strong><strong>AG<\\/strong>&nbsp;\\u0111\\u01b0\\u1ee3c th&agrave;nh l\\u1eadp v&agrave; \\u0111&oacute;ng tr\\u1ee5 s\\u1edf t\\u1ea1i Metzingen, \\u0110\\u1ee9c v&agrave;o n\\u0103m 1895.&nbsp;V\\u1edbi nh\\u1eefng thi\\u1ebft k\\u1ebf \\u0111\\u1ed9c \\u0111&aacute;o v&agrave; lu&ocirc;n \\u0111&oacute;n tr\\u01b0\\u1edbc c&aacute;c xu h\\u01b0\\u1edbng th\\u1eddi trang,&nbsp;<strong>Hugo Boss<\\/strong>&nbsp;l&agrave; th\\u01b0\\u01a1ng hi\\u1ec7u c\\u1ee7a s\\u1ef1 s\\u1eafc s\\u1ea3o, sang tr\\u1ecdng v&agrave; \\u0111\\u1eb3ng c\\u1ea5p, l&agrave; bi\\u1ec3u t\\u01b0\\u1ee3ng \\u0111&uacute;ng ngh\\u0129a c\\u1ee7a th\\u1eddi trang.<br \\/>\\r\\nV&agrave;o n\\u0103m 1993,&nbsp;<strong>Hugo Boss<\\/strong><strong>&nbsp;<\\/strong>gi\\u1edbi thi\\u1ec7u s\\u1ea3n ph\\u1ea9m n\\u01b0\\u1edbc hoa \\u0111\\u1ea7u ti&ecirc;n.&nbsp;T\\u1eeb \\u0111&oacute; cho \\u0111\\u1ebfn nay, th\\u01b0\\u01a1ng hi\\u1ec7u \\u0111&atilde; nhanh ch&oacute;ng c\\u1eadp nh\\u1eadt xu h\\u01b0\\u1edbng c\\u0169ng nh\\u01b0 cho ra \\u0111\\u1eddi nhi\\u1ec1u d&ograve;ng m\\u1eabu m&atilde; m\\u1edbi. D&ograve;ng n\\u01b0\\u1edbc hoa&nbsp;<strong>Hugo Boss<\\/strong><strong>&nbsp;<\\/strong>\\u0111\\u01b0\\u1ee3c thi\\u1ebft k\\u1ebf v\\u1edbi m\\u1eabu m&atilde; v&agrave; h\\u01b0\\u01a1ng th\\u01a1m mang nhi\\u1ec1u phong c&aacute;ch kh&aacute;c nhau, th&iacute;ch h\\u1ee3p trong nhi\\u1ec1u ho&agrave;n c\\u1ea3nh cho ng\\u01b0\\u1eddi ti&ecirc;u d&ugrave;ng, bao g\\u1ed3m c\\u1ea3 nam v&agrave; n\\u1eef.<\\/p>\\r\\n\\r\\n<p>&nbsp;<\\/p>\\r\\n\\r\\n<p>&nbsp;<img alt=\\\"\\\" data-was-processed=\\\"true\\\" height=\\\"361\\\" src=\\\"https:\\/\\/media.hasaki.vn\\/wysiwyg\\/spa\\/4anuoc-hoa-nu-hugo-boss-the-scent-edp.jpg\\\" width=\\\"500\\\" \\/><\\/p>\\r\\n\\r\\n<p>&nbsp;<\\/p>\\r\\n\\r\\n<p><strong>Phong c&aacute;ch:<\\/strong>&nbsp;N\\u1eef t&iacute;nh, s&agrave;nh \\u0111i\\u1ec7u<\\/p>\\r\\n\\r\\n<p><strong>M&ugrave;i h\\u01b0\\u01a1ng \\u0111\\u1eb7c tr\\u01b0ng<\\/strong><\\/p>\\r\\n\\r\\n<p><strong>H\\u01b0\\u01a1ng \\u0111\\u1ea7u:<\\/strong>&nbsp;Qu\\u1ea3 \\u0111&agrave;o, Hoa lan Nam Phi<\\/p>\\r\\n\\r\\n<p><strong>H\\u01b0\\u01a1ng gi\\u1eefa:<\\/strong>&nbsp;Hoa chi m\\u1ed9c t&ecirc;<\\/p>\\r\\n\\r\\n<p><strong>H\\u01b0\\u01a1ng cu\\u1ed1i:<\\/strong>&nbsp;Ca cao<\\/p>\"}},\"category\":[\"22\",\"23\"],\"image\":\"\\/data\\/product\\/product_use.jpg\",\"sub_image\":[\"\\/data\\/product\\/Narciso-Rodriguez-For-Her-EDP-100ML_t6av-n0-165x165.png\",\"\\/data\\/product\\/product_use2.jpg\"],\"sku\":\"SS495A\",\"alias\":\"demo-alias-name-product-11\",\"brand_id\":\"2\",\"supplier_id\":\"1\",\"cost\":\"10000\",\"price\":\"2700000\",\"tax_id\":\"auto\",\"price_promotion\":\"2250000\",\"price_promotion_start\":null,\"price_promotion_end\":null,\"stock\":\"100\",\"weight_class\":null,\"weight\":\"0\",\"length_class\":null,\"length\":\"0\",\"height\":\"0\",\"width\":\"0\",\"property\":\"physical\",\"download_path\":null,\"date_available\":null,\"minimum\":\"0\",\"sort\":\"0\",\"status\":\"on\",\"_token\":\"KZ5cp3PdRvI1Bjr6hOWm7b5yE6efbWhOU04ixXho\"}', '2022-01-14 07:37:14', '2022-01-14 07:37:14'),
(827, 1, 'sc_admin/product', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2022-01-14 07:37:15', '2022-01-14 07:37:15'),
(828, 1, 'sc_admin/product/edit/18', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2022-01-14 07:40:42', '2022-01-14 07:40:42'),
(829, 1, 'sc_admin/product/edit/17', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2022-01-14 07:40:48', '2022-01-14 07:40:48'),
(830, 1, 'sc_admin/product/edit/18', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"descriptions\":{\"en\":{\"name\":\"N\\u01b0\\u1edbc hoa tresor midnight love edp 75ml\",\"keyword\":null,\"description\":\"\\u1ea4m \\u00e1p, tinh t\\u1ebf, m\\u1ea1nh m\\u1ebd, m\\u01b0\\u1ee3t m\\u00e0, quy\\u1ebfn r\\u0169 l\\u00e0 nh\\u1eefng g\\u00ec Narciso Rodriguez Narciso Poudree c\\u00f3 th\\u1ec3 mang \\u0111\\u1ebfn cho b\\u1ea1n. M\\u00f9i h\\u01b0\\u01a1ng nh\\u01b0 b\\u1ed3ng b\\u1ec1nh \\u00eam d\\u1ecbu nh\\u01b0ng l\\u1ea1i v\\u00f4 c\\u00f9ng b\\u1ec1n h\\u01b0\\u01a1ng. H\\u01b0\\u01a1ng th\\u01a1m mang \\u0111\\u1ebfn v\\u1edbi nhi\\u1ec1u cung b\\u1eadc c\\u1ea3m x\\u00fac v\\u1edbi nh\\u01b0 c\\u00f9ng nhi\\u1ec1u m\\u00f9i th\\u01a1m k\\u1ebft h\\u1ee3p h\\u00e0i h\\u00f2a.\",\"content\":\"<h1>N\\u01b0\\u1edbc hoa tresor midnight love edp 75ml<\\/h1>\"},\"vi\":{\"name\":\"N\\u01b0\\u1edbc hoa tresor midnight love edp 75ml\",\"keyword\":\"TRESOR MIDNIGHT\",\"description\":\"Tr\\u00e9sor Midnight Rose La Coquette \\u0111\\u01b0\\u1ee3c coi l\\u00e0 d\\u00f2ng n\\u01b0\\u1edbc hoa th\\u00e0nh c\\u00f4ng c\\u1ee7a h\\u00e3ng\",\"content\":\"<h3><strong>Th&ocirc;ng tin:<\\/strong><\\/h3>\\r\\n\\r\\n<p><strong>N\\u01af\\u1edaC HOA TRESOR MIDNIGHT LOVE EDP 75ML<\\/strong>&nbsp;(Tresor Midnight Love EDP 75ml) v&agrave; phi&ecirc;n b\\u1ea3n c\\u1ea3i ti\\u1ebfn Tr&eacute;sor Midnight Rose La Coquette \\u0111\\u01b0\\u1ee3c coi l&agrave; d&ograve;ng n\\u01b0\\u1edbc hoa th&agrave;nh c&ocirc;ng c\\u1ee7a Lanc&ocirc;me. L\\u1ea5y c\\u1ea3m h\\u1ee9ng t\\u1eeb thi\\u1ebft k\\u1ebf h&igrave;nh d&aacute;ng b&ecirc;n ngo&agrave;i c\\u1ee7a Tr&eacute;sor In Love,&nbsp;<strong>N\\u01af\\u1edaC HOA TRESOR MIDNIGHT LOVE EDP 75ML<\\/strong>&nbsp;mang \\u0111\\u1ebfn m\\u1ed9t s\\u1ea3n ph\\u1ea9m t&iacute;m huy\\u1ec1n b&iacute; t\\u1ef1a nh\\u01b0 m&agrave;n \\u0111&ecirc;m. V&agrave; \\u0111&uacute;ng nh\\u01b0 t&ecirc;n g\\u1ecdi, m&ugrave;i h\\u01b0\\u01a1ng \\u0111\\u1eadm \\u0111&agrave;, \\u0111\\u1ea7y m&ecirc; ho\\u1eb7c c\\u1ee7a hoa h\\u1ed3ng c&ugrave;ng tr&aacute;i Raspberry h\\u1ed3ng m\\u1ecdng n\\u01b0\\u1edbc ch\\u1eafc ch\\u1eafn l&agrave; m\\u1ed9t ch\\u1ecdn l\\u1ef1a ho&agrave;n h\\u1ea3o cho m\\u1ed9t \\u0111&ecirc;m t&igrave;nh y&ecirc;u l&atilde;ng m\\u1ea1n t\\u1ea1i Paris. Ph\\u1ea3ng ph\\u1ea5t kh&ecirc;u g\\u1ee3i c\\u1ee7a h\\u01b0\\u01a1ng hoa m\\u1eabu \\u0111\\u01a1n c&ugrave;ng s\\u1ef1 thanh l\\u1ecbch tinh t\\u1ebf c\\u1ee7a hoa nh&agrave;i khi\\u1ebfn b\\u1ea5t k\\u1ef3 c&ocirc; g&aacute;i n&agrave;o s\\u1edf h\\u1eefu&nbsp;<strong>N\\u01af\\u1edaC HOA TRESOR MIDNIGHT LOVE EDP 75ML<\\/strong>&nbsp;c\\u0169ng tr\\u1edf th&agrave;nh m\\u1ed9t n\\u1eef ho&agrave;ng.<\\/p>\\r\\n\\r\\n<p><img src=\\\"https:\\/\\/www.lancome.vn\\/wp-content\\/uploads\\/2018\\/06\\/3605532423142_Tresor_Midnight_Rose_1-600x600.jpg\\\" \\/><\\/p>\\r\\n\\r\\n<h3><strong>C&ocirc;ng d\\u1ee5ng:<\\/strong><\\/h3>\\r\\n\\r\\n<p>Duy&ecirc;n d&aacute;ng, tinh ngh\\u1ecbch, h\\u1ea5p d\\u1eabn. S\\u1ef1 k\\u1ebft h\\u1ee3p quy\\u1ebfn r\\u0169 t\\u1eeb qu\\u1ea3 m&acirc;m x&ocirc;i, hoa h\\u1ed3ng, Vanilla v&agrave; x\\u1ea1 h\\u01b0\\u01a1ng \\u0111em \\u0111\\u1ebfn s\\u1ef1 g\\u1ee3i c\\u1ea3m, n\\u1eef t&iacute;nh v&agrave; tinh ngh\\u1ecbch. B\\u1eaft l\\u1ea5y tr&aacute;i tim t&ocirc;i n\\u1ebfu anh c&oacute; th\\u1ec3!<\\/p>\\r\\n\\r\\n<p><img src=\\\"https:\\/\\/www.lancome.vn\\/wp-content\\/uploads\\/2018\\/06\\/Tresor-Midnight-Rose-4-4.jpg\\\" \\/><\\/p>\\r\\n\\r\\n<h3><strong>Th&agrave;nh ph\\u1ea7n:<\\/strong><\\/h3>\\r\\n\\r\\n<p>H\\u01b0\\u01a1ng \\u0111\\u1ea7u: Qu\\u1ea3 m&acirc;m x&ocirc;i, n\\u1ee5 hoa l&yacute; chua.<br \\/>\\r\\nH\\u01b0\\u01a1ng gi\\u1eefa: Hoa h\\u1ed3ng, hoa nh&agrave;i.<br \\/>\\r\\nH\\u01b0\\u01a1ng cu\\u1ed1i: Vanilla, x\\u1ea1 h\\u01b0\\u01a1ng.<br \\/>\\r\\n<br \\/>\\r\\n&nbsp;<\\/p>\\r\\n\\r\\n<p><img src=\\\"https:\\/\\/file.hstatic.net\\/200000117693\\/file\\/3605532423265_309a9741d53d423fb53493732847fc87_grande.jpg\\\" \\/><\\/p>\"}},\"category\":[\"22\",\"21\",\"23\"],\"image\":\"\\/data\\/product\\/product_use.jpg\",\"sub_image\":[\"\\/data\\/product\\/giorgio-armani-acqua-di-gioia-orchard.vn-2.jpg\",\"\\/data\\/product\\/lattafa-mazaaji-100ml-apa-de-parfum_8367043.jpg\"],\"sku\":\"TSA7DHA\",\"alias\":\"nuoc-hoa-tresor-midnight-love-edp-75ml\",\"brand_id\":null,\"supplier_id\":null,\"cost\":\"0\",\"price\":\"3550000\",\"tax_id\":\"0\",\"price_promotion\":\"2999000\",\"price_promotion_start\":\"2022-01-14\",\"price_promotion_end\":\"2022-02-01\",\"stock\":\"50\",\"weight_class\":\"oz\",\"weight\":\"0\",\"length_class\":\"cm\",\"length\":\"0\",\"height\":\"0\",\"width\":\"0\",\"property\":\"physical\",\"download_path\":null,\"date_available\":\"2022-01-04\",\"minimum\":\"0\",\"sort\":\"0\",\"status\":\"on\",\"_token\":\"KZ5cp3PdRvI1Bjr6hOWm7b5yE6efbWhOU04ixXho\"}', '2022-01-14 07:40:53', '2022-01-14 07:40:53'),
(831, 1, 'sc_admin/product', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2022-01-14 07:40:55', '2022-01-14 07:40:55'),
(832, 1, 'sc_admin/product/edit/17', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"descriptions\":{\"en\":{\"name\":\"N\\u01b0\\u1edbc Hoa Calvin Klein One EDT 200ml\",\"keyword\":null,\"description\":\"\\u1ea4m \\u00e1p, tinh t\\u1ebf, m\\u1ea1nh m\\u1ebd, m\\u01b0\\u1ee3t m\\u00e0, quy\\u1ebfn r\\u0169 l\\u00e0 nh\\u1eefng g\\u00ec Narciso Rodriguez Narciso Poudree c\\u00f3 th\\u1ec3 mang \\u0111\\u1ebfn cho b\\u1ea1n. M\\u00f9i h\\u01b0\\u01a1ng nh\\u01b0 b\\u1ed3ng b\\u1ec1nh \\u00eam d\\u1ecbu nh\\u01b0ng l\\u1ea1i v\\u00f4 c\\u00f9ng b\\u1ec1n h\\u01b0\\u01a1ng. H\\u01b0\\u01a1ng th\\u01a1m mang \\u0111\\u1ebfn v\\u1edbi nhi\\u1ec1u cung b\\u1eadc c\\u1ea3m x\\u00fac v\\u1edbi nh\\u01b0 c\\u00f9ng nhi\\u1ec1u m\\u00f9i th\\u01a1m k\\u1ebft h\\u1ee3p h\\u00e0i h\\u00f2a.\",\"content\":\"A\"},\"vi\":{\"name\":\"N\\u01b0\\u1edbc Hoa Calvin Klein One EDT 200ml\",\"keyword\":null,\"description\":null,\"content\":\"<p><strong>N\\u01b0\\u1edbc Hoa Calvin Klein One EDT&nbsp;&nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;<\\/strong><\\/p>\\r\\n\\r\\n<p>T\\u1eadp \\u0111o&agrave;n&nbsp;<strong>Calvin Klein<\\/strong>&nbsp;\\u0111\\u01b0\\u1ee3c th&agrave;nh l\\u1eadp v&agrave;o cu\\u1ed1i nh\\u1eefng n\\u0103m 1960, l&agrave; m\\u1ed9t trong nh\\u1eefng th\\u01b0\\u01a1ng hi\\u1ec7u th\\u1eddi trang h&agrave;ng \\u0111\\u1ea7u th\\u1ebf gi\\u1edbi \\u0111\\u01b0\\u1ee3c r\\u1ea5t nhi\\u1ec1u ng\\u01b0\\u1eddi y&ecirc;u th&iacute;ch v\\u1edbi nh\\u1eefng thi\\u1ebft k\\u1ebf mang phong c&aacute;ch \\u0111\\u01a1n gi\\u1ea3n, c\\u1ed5 \\u0111i\\u1ec3n. C&ugrave;ng v\\u1edbi danh ti\\u1ebfng \\u0111&oacute;,&nbsp;c&aacute;c d&ograve;ng n\\u01b0\\u1edbc hoa c\\u1ee7a&nbsp;<strong>Calvin Klein<\\/strong>&nbsp;c\\u0169ng \\u0111&atilde; li&ecirc;n t\\u1ee5c mang v\\u1ec1 nhi\\u1ec1u gi\\u1ea3i th\\u01b0\\u1edfng danh gi&aacute;.&nbsp;H\\u01b0\\u01a1ng th\\u01a1m h\\u1ea5p d\\u1eabn c\\u1ee7a n\\u01b0\\u1edbc hoa&nbsp;<strong>Calvin Klein<\\/strong>&nbsp;mang \\u0111\\u1ebfn m\\u1ed9t xu h\\u01b0\\u1edbng ho&agrave;n to&agrave;n m\\u1edbi, d&ugrave; \\u0111\\u01a1n gi\\u1ea3n nh\\u01b0ng v\\u1eabn tr\\u1edf th&agrave;nh bi\\u1ec3u t\\u01b0\\u1ee3ng th\\u1eddi trang v\\u1ec1 c\\u1ea3 ki\\u1ec3u d&aacute;ng l\\u1eabn m&ugrave;i h\\u01b0\\u01a1ng. Mang \\u0111\\u1ebfn cho ch&uacute;ng ta nh\\u1eefng h\\u01b0\\u01a1ng th\\u01a1m ph&ugrave; h\\u1ee3p cho c\\u1ea3 2 ph&aacute;i,&nbsp;<strong>Calvin Klein<\\/strong>&nbsp;\\u0111&atilde; ch\\u1ee9ng t\\u1ecf \\u0111\\u01b0\\u1ee3c v\\u1ecb tr&iacute; ti&ecirc;n phong c\\u1ee7a m&igrave;nh trong l\\u0129nh v\\u1ef1c n&agrave;y. \\u0110\\u1ebfn nay, h&atilde;ng&nbsp;<strong>Calvin Klein<\\/strong>&nbsp;\\u0111&atilde; c&oacute; h\\u01a1n 100 lo\\u1ea1i n\\u01b0\\u1edbc hoa.<\\/p>\\r\\n\\r\\n<p>&nbsp;<\\/p>\\r\\n\\r\\n<p><img alt=\\\"\\\" data-was-processed=\\\"true\\\" height=\\\"550\\\" src=\\\"https:\\/\\/media.hasaki.vn\\/wysiwyg\\/HaNguyen\\/nuoc-hoa-calvin-klein-one-edt-1.jpg\\\" width=\\\"550\\\" \\/><\\/p>\"}},\"category\":[\"18\",\"21\"],\"image\":\"\\/data\\/product\\/product_use.jpg\",\"sub_image\":[\"\\/data\\/product\\/lattafa-mazaaji-100ml-apa-de-parfum_8367043.jpg\",\"\\/data\\/product\\/giorgio-armani-acqua-di-gioia-orchard.vn-2.jpg\",\"\\/data\\/product\\/Narciso-Rodriguez-For-Her-EDP-100ML_t6av-n0-165x165.png\"],\"sku\":\"ALOKK1-AY\",\"alias\":\"nuoc-hoa-calvin-klein-one-edt-200ml\",\"brand_id\":\"3\",\"supplier_id\":\"1\",\"cost\":\"10000\",\"price\":\"1665000\",\"tax_id\":\"0\",\"price_promotion\":\"1480000\",\"price_promotion_start\":null,\"price_promotion_end\":null,\"stock\":\"100\",\"weight_class\":null,\"weight\":\"0\",\"length_class\":null,\"length\":\"0\",\"height\":\"0\",\"width\":\"0\",\"property\":\"physical\",\"download_path\":null,\"date_available\":null,\"minimum\":\"5\",\"sort\":\"0\",\"status\":\"on\",\"_token\":\"KZ5cp3PdRvI1Bjr6hOWm7b5yE6efbWhOU04ixXho\"}', '2022-01-14 07:41:02', '2022-01-14 07:41:02'),
(833, 1, 'sc_admin/product', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2022-01-14 07:41:03', '2022-01-14 07:41:03'),
(834, 1, 'sc_admin/product/edit/18', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2022-01-14 07:41:32', '2022-01-14 07:41:32'),
(835, 1, 'sc_admin/product/edit/18', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"descriptions\":{\"en\":{\"name\":\"N\\u01b0\\u1edbc hoa tresor midnight love edp 75ml\",\"keyword\":null,\"description\":\"\\u1ea4m \\u00e1p, tinh t\\u1ebf, m\\u1ea1nh m\\u1ebd, m\\u01b0\\u1ee3t m\\u00e0, quy\\u1ebfn r\\u0169 l\\u00e0 nh\\u1eefng g\\u00ec Narciso Rodriguez Narciso Poudree c\\u00f3 th\\u1ec3 mang \\u0111\\u1ebfn cho b\\u1ea1n. M\\u00f9i h\\u01b0\\u01a1ng nh\\u01b0 b\\u1ed3ng b\\u1ec1nh \\u00eam d\\u1ecbu nh\\u01b0ng l\\u1ea1i v\\u00f4 c\\u00f9ng b\\u1ec1n h\\u01b0\\u01a1ng. H\\u01b0\\u01a1ng th\\u01a1m mang \\u0111\\u1ebfn v\\u1edbi nhi\\u1ec1u cung b\\u1eadc c\\u1ea3m x\\u00fac v\\u1edbi nh\\u01b0 c\\u00f9ng nhi\\u1ec1u m\\u00f9i th\\u01a1m k\\u1ebft h\\u1ee3p h\\u00e0i h\\u00f2a.\",\"content\":\"<h1>N\\u01b0\\u1edbc hoa tresor midnight love edp 75ml<\\/h1>\"},\"vi\":{\"name\":\"N\\u01b0\\u1edbc hoa tresor midnight love edp 75ml\",\"keyword\":\"TRESOR MIDNIGHT\",\"description\":\"\\u1ea4m \\u00e1p, tinh t\\u1ebf, m\\u1ea1nh m\\u1ebd, m\\u01b0\\u1ee3t m\\u00e0, quy\\u1ebfn r\\u0169 l\\u00e0 nh\\u1eefng g\\u00ec Narciso Rodriguez Narciso Poudree c\\u00f3 th\\u1ec3 mang \\u0111\\u1ebfn cho b\\u1ea1n. M\\u00f9i h\\u01b0\\u01a1ng nh\\u01b0 b\\u1ed3ng b\\u1ec1nh \\u00eam d\\u1ecbu nh\\u01b0ng l\\u1ea1i v\\u00f4 c\\u00f9ng b\\u1ec1n h\\u01b0\\u01a1ng. H\\u01b0\\u01a1ng th\\u01a1m mang \\u0111\\u1ebfn v\\u1edbi nhi\\u1ec1u cung b\\u1eadc c\\u1ea3m x\\u00fac v\\u1edbi nh\\u01b0 c\\u00f9ng nhi\\u1ec1u m\\u00f9i th\\u01a1m k\\u1ebft h\\u1ee3p h\\u00e0i h\\u00f2a.\",\"content\":\"<h3><strong>Th&ocirc;ng tin:<\\/strong><\\/h3>\\r\\n\\r\\n<p><strong>N\\u01af\\u1edaC HOA TRESOR MIDNIGHT LOVE EDP 75ML<\\/strong>&nbsp;(Tresor Midnight Love EDP 75ml) v&agrave; phi&ecirc;n b\\u1ea3n c\\u1ea3i ti\\u1ebfn Tr&eacute;sor Midnight Rose La Coquette \\u0111\\u01b0\\u1ee3c coi l&agrave; d&ograve;ng n\\u01b0\\u1edbc hoa th&agrave;nh c&ocirc;ng c\\u1ee7a Lanc&ocirc;me. L\\u1ea5y c\\u1ea3m h\\u1ee9ng t\\u1eeb thi\\u1ebft k\\u1ebf h&igrave;nh d&aacute;ng b&ecirc;n ngo&agrave;i c\\u1ee7a Tr&eacute;sor In Love,&nbsp;<strong>N\\u01af\\u1edaC HOA TRESOR MIDNIGHT LOVE EDP 75ML<\\/strong>&nbsp;mang \\u0111\\u1ebfn m\\u1ed9t s\\u1ea3n ph\\u1ea9m t&iacute;m huy\\u1ec1n b&iacute; t\\u1ef1a nh\\u01b0 m&agrave;n \\u0111&ecirc;m. V&agrave; \\u0111&uacute;ng nh\\u01b0 t&ecirc;n g\\u1ecdi, m&ugrave;i h\\u01b0\\u01a1ng \\u0111\\u1eadm \\u0111&agrave;, \\u0111\\u1ea7y m&ecirc; ho\\u1eb7c c\\u1ee7a hoa h\\u1ed3ng c&ugrave;ng tr&aacute;i Raspberry h\\u1ed3ng m\\u1ecdng n\\u01b0\\u1edbc ch\\u1eafc ch\\u1eafn l&agrave; m\\u1ed9t ch\\u1ecdn l\\u1ef1a ho&agrave;n h\\u1ea3o cho m\\u1ed9t \\u0111&ecirc;m t&igrave;nh y&ecirc;u l&atilde;ng m\\u1ea1n t\\u1ea1i Paris. Ph\\u1ea3ng ph\\u1ea5t kh&ecirc;u g\\u1ee3i c\\u1ee7a h\\u01b0\\u01a1ng hoa m\\u1eabu \\u0111\\u01a1n c&ugrave;ng s\\u1ef1 thanh l\\u1ecbch tinh t\\u1ebf c\\u1ee7a hoa nh&agrave;i khi\\u1ebfn b\\u1ea5t k\\u1ef3 c&ocirc; g&aacute;i n&agrave;o s\\u1edf h\\u1eefu&nbsp;<strong>N\\u01af\\u1edaC HOA TRESOR MIDNIGHT LOVE EDP 75ML<\\/strong>&nbsp;c\\u0169ng tr\\u1edf th&agrave;nh m\\u1ed9t n\\u1eef ho&agrave;ng.<\\/p>\\r\\n\\r\\n<p><img src=\\\"https:\\/\\/www.lancome.vn\\/wp-content\\/uploads\\/2018\\/06\\/3605532423142_Tresor_Midnight_Rose_1-600x600.jpg\\\" \\/><\\/p>\\r\\n\\r\\n<h3><strong>C&ocirc;ng d\\u1ee5ng:<\\/strong><\\/h3>\\r\\n\\r\\n<p>Duy&ecirc;n d&aacute;ng, tinh ngh\\u1ecbch, h\\u1ea5p d\\u1eabn. S\\u1ef1 k\\u1ebft h\\u1ee3p quy\\u1ebfn r\\u0169 t\\u1eeb qu\\u1ea3 m&acirc;m x&ocirc;i, hoa h\\u1ed3ng, Vanilla v&agrave; x\\u1ea1 h\\u01b0\\u01a1ng \\u0111em \\u0111\\u1ebfn s\\u1ef1 g\\u1ee3i c\\u1ea3m, n\\u1eef t&iacute;nh v&agrave; tinh ngh\\u1ecbch. B\\u1eaft l\\u1ea5y tr&aacute;i tim t&ocirc;i n\\u1ebfu anh c&oacute; th\\u1ec3!<\\/p>\\r\\n\\r\\n<p><img src=\\\"https:\\/\\/www.lancome.vn\\/wp-content\\/uploads\\/2018\\/06\\/Tresor-Midnight-Rose-4-4.jpg\\\" \\/><\\/p>\\r\\n\\r\\n<h3><strong>Th&agrave;nh ph\\u1ea7n:<\\/strong><\\/h3>\\r\\n\\r\\n<p>H\\u01b0\\u01a1ng \\u0111\\u1ea7u: Qu\\u1ea3 m&acirc;m x&ocirc;i, n\\u1ee5 hoa l&yacute; chua.<br \\/>\\r\\nH\\u01b0\\u01a1ng gi\\u1eefa: Hoa h\\u1ed3ng, hoa nh&agrave;i.<br \\/>\\r\\nH\\u01b0\\u01a1ng cu\\u1ed1i: Vanilla, x\\u1ea1 h\\u01b0\\u01a1ng.<br \\/>\\r\\n<br \\/>\\r\\n&nbsp;<\\/p>\\r\\n\\r\\n<p><img src=\\\"https:\\/\\/file.hstatic.net\\/200000117693\\/file\\/3605532423265_309a9741d53d423fb53493732847fc87_grande.jpg\\\" \\/><\\/p>\"}},\"category\":[\"22\",\"21\",\"23\"],\"image\":\"\\/data\\/product\\/product_use.jpg\",\"sub_image\":[\"\\/data\\/product\\/giorgio-armani-acqua-di-gioia-orchard.vn-2.jpg\",\"\\/data\\/product\\/lattafa-mazaaji-100ml-apa-de-parfum_8367043.jpg\"],\"sku\":\"TSA7DHA\",\"alias\":\"nuoc-hoa-tresor-midnight-love-edp-75ml\",\"brand_id\":null,\"supplier_id\":null,\"cost\":\"0\",\"price\":\"3550000\",\"tax_id\":\"0\",\"price_promotion\":\"2999000\",\"price_promotion_start\":\"2022-01-14\",\"price_promotion_end\":\"2022-02-01\",\"stock\":\"50\",\"weight_class\":\"oz\",\"weight\":\"0\",\"length_class\":\"cm\",\"length\":\"0\",\"height\":\"0\",\"width\":\"0\",\"property\":\"physical\",\"download_path\":null,\"date_available\":\"2022-01-04\",\"minimum\":\"0\",\"sort\":\"0\",\"status\":\"on\",\"_token\":\"KZ5cp3PdRvI1Bjr6hOWm7b5yE6efbWhOU04ixXho\"}', '2022-01-14 07:43:04', '2022-01-14 07:43:04'),
(836, 1, 'sc_admin/product', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2022-01-14 07:43:06', '2022-01-14 07:43:06'),
(837, 1, 'sc_admin/product/edit/17', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2022-01-14 07:43:46', '2022-01-14 07:43:46'),
(838, 1, 'sc_admin/product/edit/14', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2022-01-14 07:43:53', '2022-01-14 07:43:53'),
(839, 1, 'sc_admin/product/edit/17', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"descriptions\":{\"en\":{\"name\":\"N\\u01b0\\u1edbc Hoa Calvin Klein One EDT 200ml\",\"keyword\":null,\"description\":\"\\u1ea4m \\u00e1p, tinh t\\u1ebf, m\\u1ea1nh m\\u1ebd, m\\u01b0\\u1ee3t m\\u00e0, quy\\u1ebfn r\\u0169 l\\u00e0 nh\\u1eefng g\\u00ec Narciso Rodriguez Narciso Poudree c\\u00f3 th\\u1ec3 mang \\u0111\\u1ebfn cho b\\u1ea1n. M\\u00f9i h\\u01b0\\u01a1ng nh\\u01b0 b\\u1ed3ng b\\u1ec1nh \\u00eam d\\u1ecbu nh\\u01b0ng l\\u1ea1i v\\u00f4 c\\u00f9ng b\\u1ec1n h\\u01b0\\u01a1ng. H\\u01b0\\u01a1ng th\\u01a1m mang \\u0111\\u1ebfn v\\u1edbi nhi\\u1ec1u cung b\\u1eadc c\\u1ea3m x\\u00fac v\\u1edbi nh\\u01b0 c\\u00f9ng nhi\\u1ec1u m\\u00f9i th\\u01a1m k\\u1ebft h\\u1ee3p h\\u00e0i h\\u00f2a.\",\"content\":\"A\"},\"vi\":{\"name\":\"N\\u01b0\\u1edbc Hoa Calvin Klein One EDT 200ml\",\"keyword\":null,\"description\":\"\\u1ea4m \\u00e1p, tinh t\\u1ebf, m\\u1ea1nh m\\u1ebd, m\\u01b0\\u1ee3t m\\u00e0, quy\\u1ebfn r\\u0169 l\\u00e0 nh\\u1eefng g\\u00ec Narciso Rodriguez Narciso Poudree c\\u00f3 th\\u1ec3 mang \\u0111\\u1ebfn cho b\\u1ea1n. M\\u00f9i h\\u01b0\\u01a1ng nh\\u01b0 b\\u1ed3ng b\\u1ec1nh \\u00eam d\\u1ecbu nh\\u01b0ng l\\u1ea1i v\\u00f4 c\\u00f9ng b\\u1ec1n h\\u01b0\\u01a1ng. H\\u01b0\\u01a1ng th\\u01a1m mang \\u0111\\u1ebfn v\\u1edbi nhi\\u1ec1u cung b\\u1eadc c\\u1ea3m x\\u00fac v\\u1edbi nh\\u01b0 c\\u00f9ng nhi\\u1ec1u m\\u00f9i th\\u01a1m k\\u1ebft h\\u1ee3p h\\u00e0i h\\u00f2a.\",\"content\":\"<p><strong>N\\u01b0\\u1edbc Hoa Calvin Klein One EDT&nbsp;&nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;<\\/strong><\\/p>\\r\\n\\r\\n<p>T\\u1eadp \\u0111o&agrave;n&nbsp;<strong>Calvin Klein<\\/strong>&nbsp;\\u0111\\u01b0\\u1ee3c th&agrave;nh l\\u1eadp v&agrave;o cu\\u1ed1i nh\\u1eefng n\\u0103m 1960, l&agrave; m\\u1ed9t trong nh\\u1eefng th\\u01b0\\u01a1ng hi\\u1ec7u th\\u1eddi trang h&agrave;ng \\u0111\\u1ea7u th\\u1ebf gi\\u1edbi \\u0111\\u01b0\\u1ee3c r\\u1ea5t nhi\\u1ec1u ng\\u01b0\\u1eddi y&ecirc;u th&iacute;ch v\\u1edbi nh\\u1eefng thi\\u1ebft k\\u1ebf mang phong c&aacute;ch \\u0111\\u01a1n gi\\u1ea3n, c\\u1ed5 \\u0111i\\u1ec3n. C&ugrave;ng v\\u1edbi danh ti\\u1ebfng \\u0111&oacute;,&nbsp;c&aacute;c d&ograve;ng n\\u01b0\\u1edbc hoa c\\u1ee7a&nbsp;<strong>Calvin Klein<\\/strong>&nbsp;c\\u0169ng \\u0111&atilde; li&ecirc;n t\\u1ee5c mang v\\u1ec1 nhi\\u1ec1u gi\\u1ea3i th\\u01b0\\u1edfng danh gi&aacute;.&nbsp;H\\u01b0\\u01a1ng th\\u01a1m h\\u1ea5p d\\u1eabn c\\u1ee7a n\\u01b0\\u1edbc hoa&nbsp;<strong>Calvin Klein<\\/strong>&nbsp;mang \\u0111\\u1ebfn m\\u1ed9t xu h\\u01b0\\u1edbng ho&agrave;n to&agrave;n m\\u1edbi, d&ugrave; \\u0111\\u01a1n gi\\u1ea3n nh\\u01b0ng v\\u1eabn tr\\u1edf th&agrave;nh bi\\u1ec3u t\\u01b0\\u1ee3ng th\\u1eddi trang v\\u1ec1 c\\u1ea3 ki\\u1ec3u d&aacute;ng l\\u1eabn m&ugrave;i h\\u01b0\\u01a1ng. Mang \\u0111\\u1ebfn cho ch&uacute;ng ta nh\\u1eefng h\\u01b0\\u01a1ng th\\u01a1m ph&ugrave; h\\u1ee3p cho c\\u1ea3 2 ph&aacute;i,&nbsp;<strong>Calvin Klein<\\/strong>&nbsp;\\u0111&atilde; ch\\u1ee9ng t\\u1ecf \\u0111\\u01b0\\u1ee3c v\\u1ecb tr&iacute; ti&ecirc;n phong c\\u1ee7a m&igrave;nh trong l\\u0129nh v\\u1ef1c n&agrave;y. \\u0110\\u1ebfn nay, h&atilde;ng&nbsp;<strong>Calvin Klein<\\/strong>&nbsp;\\u0111&atilde; c&oacute; h\\u01a1n 100 lo\\u1ea1i n\\u01b0\\u1edbc hoa.<\\/p>\\r\\n\\r\\n<p>&nbsp;<\\/p>\\r\\n\\r\\n<p><img alt=\\\"\\\" data-was-processed=\\\"true\\\" height=\\\"550\\\" src=\\\"https:\\/\\/media.hasaki.vn\\/wysiwyg\\/HaNguyen\\/nuoc-hoa-calvin-klein-one-edt-1.jpg\\\" width=\\\"550\\\" \\/><\\/p>\"}},\"category\":[\"18\",\"21\"],\"image\":\"\\/data\\/product\\/product_use.jpg\",\"sub_image\":[\"\\/data\\/product\\/lattafa-mazaaji-100ml-apa-de-parfum_8367043.jpg\",\"\\/data\\/product\\/giorgio-armani-acqua-di-gioia-orchard.vn-2.jpg\",\"\\/data\\/product\\/Narciso-Rodriguez-For-Her-EDP-100ML_t6av-n0-165x165.png\"],\"sku\":\"ALOKK1-AY\",\"alias\":\"nuoc-hoa-calvin-klein-one-edt-200ml\",\"brand_id\":\"3\",\"supplier_id\":\"1\",\"cost\":\"10000\",\"price\":\"1665000\",\"tax_id\":\"0\",\"price_promotion\":\"1480000\",\"price_promotion_start\":null,\"price_promotion_end\":null,\"stock\":\"100\",\"weight_class\":null,\"weight\":\"0\",\"length_class\":null,\"length\":\"0\",\"height\":\"0\",\"width\":\"0\",\"property\":\"physical\",\"download_path\":null,\"date_available\":null,\"minimum\":\"5\",\"sort\":\"0\",\"status\":\"on\",\"_token\":\"KZ5cp3PdRvI1Bjr6hOWm7b5yE6efbWhOU04ixXho\"}', '2022-01-14 07:44:20', '2022-01-14 07:44:20'),
(840, 1, 'sc_admin/product', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2022-01-14 07:44:21', '2022-01-14 07:44:21'),
(841, 1, 'sc_admin/product/edit/14', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"descriptions\":{\"en\":{\"name\":\"N\\u01b0\\u1edbc hoa paris bleu fleurs de sistelle GAULTIER SCANDAL EDT (30ML\",\"keyword\":null,\"description\":null,\"content\":\"<p>H\\u1eb3n \\u0111\\u1ed9 ph\\u1ee7 s&oacute;ng v&agrave; s\\u1ef1 c&agrave;n qu&eacute;t kh\\u1eafp c&aacute;c di\\u1ec5n \\u0111&agrave;n v&agrave; c&aacute;c b\\u1ea3ng x\\u1ebfp h\\u1ea1ng nh\\u1eefng chai n\\u01b0\\u1edbc hoa sexy, quy\\u1ebfn r\\u0169 nh\\u1ea5t c\\u1ee7a Scancal l&agrave; \\u0111i\\u1ec1u kh&ocirc;ng c&ograve;n l\\u1ea1 l\\u1eabm g&igrave; v\\u1edbi nhi\\u1ec1u ng\\u01b0\\u1eddi. Th\\u1eadm ch&iacute; \\u1edf Scandal, \\u0111\\u1ecbnh ki\\u1ebfn v\\u1ec1 n\\u01b0\\u1edbc hoa ng\\u1ecdt v&agrave; n\\u1ed3ng th\\u01b0\\u1eddng k&eacute;n ng\\u01b0\\u1eddi c\\u0169ng \\u0111\\u01b0\\u1ee3c thay \\u0111\\u1ed5i quan \\u0111i\\u1ec3m m\\u1ed9t c&aacute;ch \\u0111&aacute;ng k\\u1ec3 \\u1edf r\\u1ea5t nhi\\u1ec1u ng\\u01b0\\u1eddi, b\\u1edfi ng\\u1ecdt th\\u1eadt, n\\u1ed3ng v&agrave; \\u0111\\u1eadm th\\u1eadt, nh\\u1eefng n&oacute; qu&aacute; \\u0111\\u1ed7i sexy v&agrave; h\\u1ea5p d\\u1eabn. Th&aacute;ng 8 n\\u0103m 2018, b\\u1ea3n Flanker \\u0111\\u1ea7u ti&ecirc;n c\\u1ee7a k\\u1ebb c&aacute;m d\\u1ed7 kinh \\u0111i\\u1ec3n &quot;Scandal&quot; \\u0111\\u01b0\\u1ee3c ra m\\u1eaft v\\u1edbi t&ecirc;n g\\u1ecdi l&agrave;&nbsp;<strong>Jean Paul Gaultier Scandal By Night Edp 30Ml<\\/strong>&nbsp;\\u0111&atilde; t\\u1ea1o ra m\\u1ed9t s\\u1ef1 mong ch\\u1edd v&agrave; h&aacute;o h\\u1ee9c v\\u1edbi r\\u1ea5t nhi\\u1ec1u t&iacute;n \\u0111\\u1ed3 n\\u01b0\\u1edbc hoa tr&ecirc;n to&agrave;n th\\u1ebf gi\\u1edbi, \\u0111\\u1eb7c bi\\u1ec7t v\\u1edbi nh\\u1eefng ng\\u01b0\\u1eddi l\\u1ee1 tr&oacute;t say m&ecirc; c&ocirc; n&agrave;ng nguy&ecirc;n b\\u1ea3n Scandal.&nbsp;<\\/p>\\r\\n\\r\\n<p>&nbsp;<\\/p>\\r\\n\\r\\n<p><img src=\\\"https:\\/\\/file.hstatic.net\\/200000117693\\/file\\/jean_paul_gaultier_scandal_edp_30ml_-_4_a561ff8260824894b966b136ec7286c3_grande.jpg\\\" \\/><\\/p>\\r\\n\\r\\n<h2><strong>H\\u01af\\u01a0NG \\u0110\\u1eb6C TR\\u01afNG<\\/strong><\\/h2>\\r\\n\\r\\n<ul>\\r\\n\\t<li>H\\u01b0\\u01a1ng \\u0111\\u1ea7u: M\\u1eadt ong, Chi cam chanh, Cam \\u0111\\u1eafng<\\/li>\\r\\n\\t<li>H\\u01b0\\u01a1ng gi\\u1eefa: Hoa hu\\u1ec7 tr\\u1eafng, C&acirc;y cam t&ugrave;ng Himalaya, Cherry, Hoa Cam, Tr&aacute;i l&ecirc;<\\/li>\\r\\n\\t<li>H\\u01b0\\u01a1ng cu\\u1ed1i: \\u0110\\u1eadu Tonka, C&acirc;y ho\\u1eafc h\\u01b0\\u01a1ng, G\\u1ed7 \\u0111&agrave;n h\\u01b0\\u01a1ng, Vani, X\\u1ea1 h\\u01b0\\u01a1ng<\\/li>\\r\\n<\\/ul>\\r\\n\\r\\n<p>&nbsp;<\\/p>\\r\\n\\r\\n<h2><strong>TH&Ocirc;NG TIN S\\u1ea2N PH\\u1ea8M<\\/strong><\\/h2>\\r\\n\\r\\n<ul>\\r\\n\\t<li>Nh&atilde;n hi\\u1ec7u: Jean Paul Gaultier<\\/li>\\r\\n\\t<li>Gi\\u1edbi t&iacute;nh: N\\u1eef<\\/li>\\r\\n\\t<li>Xu\\u1ea5t x\\u1ee9: Ph&aacute;p<\\/li>\\r\\n\\t<li>Ph&aacute;t h&agrave;nh: 2018<\\/li>\\r\\n\\t<li>N\\u1ed3ng \\u0111\\u1ed9: Eau de parfum<\\/li>\\r\\n\\t<li>Nh&oacute;m h\\u01b0\\u01a1ng: H\\u01b0\\u01a1ng Hoa c\\u1ecf G\\u1ed7 X\\u1ea1 h\\u01b0\\u01a1ng - Floral Woody Musk<\\/li>\\r\\n\\t<li>Phong c&aacute;ch: G\\u1ee3i c\\u1ea3m, S&agrave;nh \\u0111i\\u1ec7u, Khi&ecirc;u kh&iacute;ch<\\/li>\\r\\n<\\/ul>\"},\"vi\":{\"name\":\"N\\u01b0\\u1edbc hoa paris bleu fleurs  sistelle\",\"keyword\":null,\"description\":\"\\u1ea4m \\u00e1p, tinh t\\u1ebf, m\\u1ea1nh m\\u1ebd, m\\u01b0\\u1ee3t m\\u00e0, quy\\u1ebfn r\\u0169 l\\u00e0 nh\\u1eefng g\\u00ec Narciso Rodriguez Narciso Poudree c\\u00f3 th\\u1ec3 mang \\u0111\\u1ebfn cho b\\u1ea1n. M\\u00f9i h\\u01b0\\u01a1ng nh\\u01b0 b\\u1ed3ng b\\u1ec1nh \\u00eam d\\u1ecbu nh\\u01b0ng l\\u1ea1i v\\u00f4 c\\u00f9ng b\\u1ec1n h\\u01b0\\u01a1ng. H\\u01b0\\u01a1ng th\\u01a1m mang \\u0111\\u1ebfn v\\u1edbi nhi\\u1ec1u cung b\\u1eadc c\\u1ea3m x\\u00fac v\\u1edbi nh\\u01b0 c\\u00f9ng nhi\\u1ec1u m\\u00f9i th\\u01a1m k\\u1ebft h\\u1ee3p h\\u00e0i h\\u00f2a.\",\"content\":\"<p>H\\u1eb3n \\u0111\\u1ed9 ph\\u1ee7 s&oacute;ng v&agrave; s\\u1ef1 c&agrave;n qu&eacute;t kh\\u1eafp c&aacute;c di\\u1ec5n \\u0111&agrave;n v&agrave; c&aacute;c b\\u1ea3ng x\\u1ebfp h\\u1ea1ng nh\\u1eefng chai n\\u01b0\\u1edbc hoa sexy, quy\\u1ebfn r\\u0169 nh\\u1ea5t c\\u1ee7a Scancal l&agrave; \\u0111i\\u1ec1u kh&ocirc;ng c&ograve;n l\\u1ea1 l\\u1eabm g&igrave; v\\u1edbi nhi\\u1ec1u ng\\u01b0\\u1eddi. Th\\u1eadm ch&iacute; \\u1edf Scandal, \\u0111\\u1ecbnh ki\\u1ebfn v\\u1ec1 n\\u01b0\\u1edbc hoa ng\\u1ecdt v&agrave; n\\u1ed3ng th\\u01b0\\u1eddng k&eacute;n ng\\u01b0\\u1eddi c\\u0169ng \\u0111\\u01b0\\u1ee3c thay \\u0111\\u1ed5i quan \\u0111i\\u1ec3m m\\u1ed9t c&aacute;ch \\u0111&aacute;ng k\\u1ec3 \\u1edf r\\u1ea5t nhi\\u1ec1u ng\\u01b0\\u1eddi, b\\u1edfi ng\\u1ecdt th\\u1eadt, n\\u1ed3ng v&agrave; \\u0111\\u1eadm th\\u1eadt, nh\\u1eefng n&oacute; qu&aacute; \\u0111\\u1ed7i sexy v&agrave; h\\u1ea5p d\\u1eabn. Th&aacute;ng 8 n\\u0103m 2018, b\\u1ea3n Flanker \\u0111\\u1ea7u ti&ecirc;n c\\u1ee7a k\\u1ebb c&aacute;m d\\u1ed7 kinh \\u0111i\\u1ec3n &quot;Scandal&quot; \\u0111\\u01b0\\u1ee3c ra m\\u1eaft v\\u1edbi t&ecirc;n g\\u1ecdi l&agrave;&nbsp;<strong>Jean Paul Gaultier Scandal By Night Edp 30Ml<\\/strong>&nbsp;\\u0111&atilde; t\\u1ea1o ra m\\u1ed9t s\\u1ef1 mong ch\\u1edd v&agrave; h&aacute;o h\\u1ee9c v\\u1edbi r\\u1ea5t nhi\\u1ec1u t&iacute;n \\u0111\\u1ed3 n\\u01b0\\u1edbc hoa tr&ecirc;n to&agrave;n th\\u1ebf gi\\u1edbi, \\u0111\\u1eb7c bi\\u1ec7t v\\u1edbi nh\\u1eefng ng\\u01b0\\u1eddi l\\u1ee1 tr&oacute;t say m&ecirc; c&ocirc; n&agrave;ng nguy&ecirc;n b\\u1ea3n Scandal.&nbsp;<\\/p>\\r\\n\\r\\n<p>&nbsp;<\\/p>\\r\\n\\r\\n<p><img src=\\\"https:\\/\\/file.hstatic.net\\/200000117693\\/file\\/jean_paul_gaultier_scandal_edp_30ml_-_4_a561ff8260824894b966b136ec7286c3_grande.jpg\\\" \\/><\\/p>\\r\\n\\r\\n<h2><strong>H\\u01af\\u01a0NG \\u0110\\u1eb6C TR\\u01afNG<\\/strong><\\/h2>\\r\\n\\r\\n<ul>\\r\\n\\t<li>H\\u01b0\\u01a1ng \\u0111\\u1ea7u: M\\u1eadt ong, Chi cam chanh, Cam \\u0111\\u1eafng<\\/li>\\r\\n\\t<li>H\\u01b0\\u01a1ng gi\\u1eefa: Hoa hu\\u1ec7 tr\\u1eafng, C&acirc;y cam t&ugrave;ng Himalaya, Cherry, Hoa Cam, Tr&aacute;i l&ecirc;<\\/li>\\r\\n\\t<li>H\\u01b0\\u01a1ng cu\\u1ed1i: \\u0110\\u1eadu Tonka, C&acirc;y ho\\u1eafc h\\u01b0\\u01a1ng, G\\u1ed7 \\u0111&agrave;n h\\u01b0\\u01a1ng, Vani, X\\u1ea1 h\\u01b0\\u01a1ng<\\/li>\\r\\n<\\/ul>\\r\\n\\r\\n<p>&nbsp;<\\/p>\\r\\n\\r\\n<h2><strong>TH&Ocirc;NG TIN S\\u1ea2N PH\\u1ea8M<\\/strong><\\/h2>\\r\\n\\r\\n<ul>\\r\\n\\t<li>Nh&atilde;n hi\\u1ec7u: Jean Paul Gaultier<\\/li>\\r\\n\\t<li>Gi\\u1edbi t&iacute;nh: N\\u1eef<\\/li>\\r\\n\\t<li>Xu\\u1ea5t x\\u1ee9: Ph&aacute;p<\\/li>\\r\\n\\t<li>Ph&aacute;t h&agrave;nh: 2018<\\/li>\\r\\n\\t<li>N\\u1ed3ng \\u0111\\u1ed9: Eau de parfum<\\/li>\\r\\n\\t<li>Nh&oacute;m h\\u01b0\\u01a1ng: H\\u01b0\\u01a1ng Hoa c\\u1ecf G\\u1ed7 X\\u1ea1 h\\u01b0\\u01a1ng - Floral Woody Musk<\\/li>\\r\\n\\t<li>Phong c&aacute;ch: G\\u1ee3i c\\u1ea3m, S&agrave;nh \\u0111i\\u1ec7u, Khi&ecirc;u kh&iacute;ch<\\/li>\\r\\n<\\/ul>\"}},\"category\":[\"18\",\"21\"],\"image\":\"\\/data\\/product\\/product_use.jpg\",\"sub_image\":[\"\\/data\\/product\\/giorgio-armani-acqua-di-gioia-orchard.vn-2.jpg\",\"\\/data\\/product\\/lattafa-mazaaji-100ml-apa-de-parfum_8367043.jpg\"],\"sku\":\"LCD12864-3D\",\"alias\":\"nuoc-hoa-nu-paris-bleu-fleurs-de-sistelle-edp\",\"brand_id\":\"3\",\"supplier_id\":\"1\",\"cost\":\"10000\",\"price\":\"870000\",\"tax_id\":\"0\",\"stock\":\"96\",\"weight_class\":null,\"weight\":\"0\",\"length_class\":null,\"length\":\"0\",\"height\":\"0\",\"width\":\"0\",\"property\":\"physical\",\"download_path\":null,\"date_available\":null,\"minimum\":\"1\",\"sort\":\"0\",\"status\":\"on\",\"_token\":\"KZ5cp3PdRvI1Bjr6hOWm7b5yE6efbWhOU04ixXho\"}', '2022-01-14 07:44:26', '2022-01-14 07:44:26'),
(842, 1, 'sc_admin/product', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2022-01-14 07:44:27', '2022-01-14 07:44:27'),
(843, 1, 'sc_admin/product/edit/12', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2022-01-14 07:44:35', '2022-01-14 07:44:35'),
(844, 1, 'sc_admin/product/edit/11', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2022-01-14 07:44:36', '2022-01-14 07:44:36'),
(845, 1, 'sc_admin/product/edit/11', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"descriptions\":{\"en\":{\"name\":\"N\\u01b0\\u1edbc Hoa N\\u1eef HUGO BOSS The Scent EDP 50ml The Scent EDP Spray\",\"keyword\":null,\"description\":null,\"content\":\"<h1>N\\u01b0\\u1edbc Hoa N\\u1eef HUGO BOSS The Scent EDP 50ml<\\/h1>\\r\\n\\r\\n<h2>The Scent EDP Spray<\\/h2>\"},\"vi\":{\"name\":\"N\\u01b0\\u1edbc Hoa N\\u1eef HUGO BOSS The Scent EDP 50ml The Scent EDP Spray\",\"keyword\":null,\"description\":\"\\u1ea4m \\u00e1p, tinh t\\u1ebf, m\\u1ea1nh m\\u1ebd, m\\u01b0\\u1ee3t m\\u00e0, quy\\u1ebfn r\\u0169 l\\u00e0 nh\\u1eefng g\\u00ec Narciso Rodriguez Narciso Poudree c\\u00f3 th\\u1ec3 mang \\u0111\\u1ebfn cho b\\u1ea1n. M\\u00f9i h\\u01b0\\u01a1ng nh\\u01b0 b\\u1ed3ng b\\u1ec1nh \\u00eam d\\u1ecbu nh\\u01b0ng l\\u1ea1i v\\u00f4 c\\u00f9ng b\\u1ec1n h\\u01b0\\u01a1ng. H\\u01b0\\u01a1ng th\\u01a1m mang \\u0111\\u1ebfn v\\u1edbi nhi\\u1ec1u cung b\\u1eadc c\\u1ea3m x\\u00fac v\\u1edbi nh\\u01b0 c\\u00f9ng nhi\\u1ec1u m\\u00f9i th\\u01a1m k\\u1ebft h\\u1ee3p h\\u00e0i h\\u00f2a.\",\"content\":\"<p><strong>N\\u01b0\\u1edbc Hoa N\\u1eef Hugo Boss The Scent EDP<\\/strong><\\/p>\\r\\n\\r\\n<p>Ra m\\u1eaft v&agrave;o n\\u0103m 2016,&nbsp;<strong>Hugo Boss The Scent For Her&nbsp;<\\/strong>l\\u1ea5y c\\u1ea3m h\\u1ee9ng ngh\\u1ec7 thu\\u1eadt t\\u1eeb h\\u01b0\\u01a1ng th\\u01a1m hoa qu\\u1ea3 k\\u1ebft h\\u1ee3p v\\u1edbi m&agrave;u s\\u1eafc t\\u01b0\\u01a1i m\\u1edbi c\\u1ee7a thi\\u1ebft k\\u1ebf b&ecirc;n ngo&agrave;i \\u0111&atilde; g\\u1ee3i l&ecirc;n s\\u1ee9c m\\u1ea1nh quy\\u1ebfn r\\u0169 bao tr&ugrave;m ng\\u01b0\\u1eddi ph\\u1ee5 n\\u1eef. M\\u1edf \\u0111\\u1ea7u m&ugrave;i h\\u01b0\\u01a1ng c\\u1ee7a&nbsp;<strong>Hugo Boss<\\/strong><strong>&nbsp;The Scent<\\/strong>&nbsp;s\\u1ebd l&agrave; h\\u01b0\\u01a1ng th\\u01a1m t\\u01b0\\u01a1i m&aacute;t c\\u1ee7a t&aacute;o k\\u1ebft h\\u1ee3p hoa lan Nam Phi, ti\\u1ebfp \\u0111\\u1ebfn l&agrave; m&ugrave;i h\\u01b0\\u01a1ng quy\\u1ebfn r\\u0169 nh\\u1eb9 nh&agrave;ng c\\u1ee7a m\\u1ed9c t&ecirc;, v&agrave; cu\\u1ed1i c&ugrave;ng s\\u1ebd d\\u1ea7n d\\u1ea7n chuy\\u1ec3n h&oacute;a th&agrave;nh h\\u01b0\\u01a1ng th\\u01a1m ph\\u1ea3ng ph\\u1ea5t c\\u1ee7a ca cao rang, \\u1ea5m &aacute;m v&agrave; n\\u1ed3ng n&agrave;n.<\\/p>\\r\\n\\r\\n<p>&nbsp;<\\/p>\\r\\n\\r\\n<p><img alt=\\\"\\\" data-was-processed=\\\"true\\\" height=\\\"280\\\" src=\\\"https:\\/\\/media.hasaki.vn\\/wysiwyg\\/spa\\/2anuoc-hoa-nu-hugo-boss-the-scent-edp.jpg\\\" width=\\\"500\\\" \\/>&nbsp;<\\/p>\\r\\n\\r\\n<p>&nbsp;<\\/p>\\r\\n\\r\\n<p><strong>N\\u01b0\\u1edbc hoa Hugo Boss The Scent For Her&nbsp;<\\/strong><strong>Eau De Parfum&nbsp;<\\/strong>d&agrave;nh cho nh\\u1eefng c&ocirc; n&agrave;ng ph&oacute;ng kho&aacute;ng, t\\u1ef1 tin. T&ocirc; \\u0111\\u1eadm c&aacute; t&iacute;nh v&agrave; n&eacute;t t&iacute;nh c&aacute;ch ri&ecirc;ng bi\\u1ec7t c\\u1ee7a b\\u1ea1n, The Scent For Her \\u0111\\u1ed3ng h&agrave;nh khi\\u1ebfn c&aacute;c n&agrave;ng tr\\u1edf n&ecirc;n \\u0111\\u1eb7c bi\\u1ec7t h\\u01a1n gi\\u1eefa \\u0111&aacute;m \\u0111&ocirc;ng. Chai n\\u01b0\\u1edbc hoa tinh t\\u1ebf, nh\\u1ecf g\\u1ecdn v\\u1edbi s\\u1eafc h\\u1ed3ng d\\u1ecbu d&agrave;ng, n\\u1eef t&iacute;nh.<\\/p>\\r\\n\\r\\n<p>&nbsp;<\\/p>\\r\\n\\r\\n<p><img alt=\\\"\\\" data-was-processed=\\\"true\\\" height=\\\"282\\\" src=\\\"https:\\/\\/media.hasaki.vn\\/wysiwyg\\/spa\\/3anuoc-hoa-nu-hugo-boss-the-scent-edp.jpg\\\" width=\\\"500\\\" \\/><\\/p>\\r\\n\\r\\n<p>&nbsp;<\\/p>\\r\\n\\r\\n<p>T\\u1eadp \\u0111o&agrave;n th\\u1eddi trang cao c\\u1ea5p&nbsp;<strong>Hugo Boss<\\/strong>&nbsp;hay c&ograve;n g\\u1ecdi l&agrave;&nbsp;<strong>Hugo Boss<\\/strong><strong>&nbsp;<\\/strong><strong>AG<\\/strong>&nbsp;\\u0111\\u01b0\\u1ee3c th&agrave;nh l\\u1eadp v&agrave; \\u0111&oacute;ng tr\\u1ee5 s\\u1edf t\\u1ea1i Metzingen, \\u0110\\u1ee9c v&agrave;o n\\u0103m 1895.&nbsp;V\\u1edbi nh\\u1eefng thi\\u1ebft k\\u1ebf \\u0111\\u1ed9c \\u0111&aacute;o v&agrave; lu&ocirc;n \\u0111&oacute;n tr\\u01b0\\u1edbc c&aacute;c xu h\\u01b0\\u1edbng th\\u1eddi trang,&nbsp;<strong>Hugo Boss<\\/strong>&nbsp;l&agrave; th\\u01b0\\u01a1ng hi\\u1ec7u c\\u1ee7a s\\u1ef1 s\\u1eafc s\\u1ea3o, sang tr\\u1ecdng v&agrave; \\u0111\\u1eb3ng c\\u1ea5p, l&agrave; bi\\u1ec3u t\\u01b0\\u1ee3ng \\u0111&uacute;ng ngh\\u0129a c\\u1ee7a th\\u1eddi trang.<br \\/>\\r\\nV&agrave;o n\\u0103m 1993,&nbsp;<strong>Hugo Boss<\\/strong><strong>&nbsp;<\\/strong>gi\\u1edbi thi\\u1ec7u s\\u1ea3n ph\\u1ea9m n\\u01b0\\u1edbc hoa \\u0111\\u1ea7u ti&ecirc;n.&nbsp;T\\u1eeb \\u0111&oacute; cho \\u0111\\u1ebfn nay, th\\u01b0\\u01a1ng hi\\u1ec7u \\u0111&atilde; nhanh ch&oacute;ng c\\u1eadp nh\\u1eadt xu h\\u01b0\\u1edbng c\\u0169ng nh\\u01b0 cho ra \\u0111\\u1eddi nhi\\u1ec1u d&ograve;ng m\\u1eabu m&atilde; m\\u1edbi. D&ograve;ng n\\u01b0\\u1edbc hoa&nbsp;<strong>Hugo Boss<\\/strong><strong>&nbsp;<\\/strong>\\u0111\\u01b0\\u1ee3c thi\\u1ebft k\\u1ebf v\\u1edbi m\\u1eabu m&atilde; v&agrave; h\\u01b0\\u01a1ng th\\u01a1m mang nhi\\u1ec1u phong c&aacute;ch kh&aacute;c nhau, th&iacute;ch h\\u1ee3p trong nhi\\u1ec1u ho&agrave;n c\\u1ea3nh cho ng\\u01b0\\u1eddi ti&ecirc;u d&ugrave;ng, bao g\\u1ed3m c\\u1ea3 nam v&agrave; n\\u1eef.<\\/p>\\r\\n\\r\\n<p>&nbsp;<\\/p>\\r\\n\\r\\n<p>&nbsp;<img alt=\\\"\\\" data-was-processed=\\\"true\\\" height=\\\"361\\\" src=\\\"https:\\/\\/media.hasaki.vn\\/wysiwyg\\/spa\\/4anuoc-hoa-nu-hugo-boss-the-scent-edp.jpg\\\" width=\\\"500\\\" \\/><\\/p>\\r\\n\\r\\n<p>&nbsp;<\\/p>\\r\\n\\r\\n<p><strong>Phong c&aacute;ch:<\\/strong>&nbsp;N\\u1eef t&iacute;nh, s&agrave;nh \\u0111i\\u1ec7u<\\/p>\\r\\n\\r\\n<p><strong>M&ugrave;i h\\u01b0\\u01a1ng \\u0111\\u1eb7c tr\\u01b0ng<\\/strong><\\/p>\\r\\n\\r\\n<p><strong>H\\u01b0\\u01a1ng \\u0111\\u1ea7u:<\\/strong>&nbsp;Qu\\u1ea3 \\u0111&agrave;o, Hoa lan Nam Phi<\\/p>\\r\\n\\r\\n<p><strong>H\\u01b0\\u01a1ng gi\\u1eefa:<\\/strong>&nbsp;Hoa chi m\\u1ed9c t&ecirc;<\\/p>\\r\\n\\r\\n<p><strong>H\\u01b0\\u01a1ng cu\\u1ed1i:<\\/strong>&nbsp;Ca cao<\\/p>\"}},\"category\":[\"22\",\"23\"],\"image\":\"\\/data\\/product\\/product_use.jpg\",\"sub_image\":[\"\\/data\\/product\\/Narciso-Rodriguez-For-Her-EDP-100ML_t6av-n0-165x165.png\",\"\\/data\\/product\\/product_use2.jpg\"],\"sku\":\"SS495A\",\"alias\":\"demo-alias-name-product-11\",\"brand_id\":\"2\",\"supplier_id\":\"1\",\"cost\":\"10000\",\"price\":\"2700000\",\"tax_id\":\"auto\",\"price_promotion\":\"2250000\",\"price_promotion_start\":null,\"price_promotion_end\":null,\"stock\":\"100\",\"weight_class\":null,\"weight\":\"0\",\"length_class\":null,\"length\":\"0\",\"height\":\"0\",\"width\":\"0\",\"property\":\"physical\",\"download_path\":null,\"date_available\":null,\"minimum\":\"0\",\"sort\":\"0\",\"status\":\"on\",\"_token\":\"KZ5cp3PdRvI1Bjr6hOWm7b5yE6efbWhOU04ixXho\"}', '2022-01-14 07:44:53', '2022-01-14 07:44:53'),
(846, 1, 'sc_admin/product', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2022-01-14 07:44:54', '2022-01-14 07:44:54'),
(847, 1, 'sc_admin/product/edit/12', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"descriptions\":{\"en\":{\"name\":\"N\\u01b0\\u1edbc hoa N\\u1eef Dubai Mazaaji EDP\",\"keyword\":null,\"description\":null,\"content\":\"N\\u01b0\\u1edbc hoa N\\u1eef Dubai Mazaaji EDP\"},\"vi\":{\"name\":\"N\\u01b0\\u1edbc hoa N\\u1eef Dubai Mazaaji EDP\",\"keyword\":null,\"description\":\"\\u1ea4m \\u00e1p, tinh t\\u1ebf, m\\u1ea1nh m\\u1ebd, m\\u01b0\\u1ee3t m\\u00e0, quy\\u1ebfn r\\u0169 l\\u00e0 nh\\u1eefng g\\u00ec Narciso Rodriguez Narciso Poudree c\\u00f3 th\\u1ec3 mang \\u0111\\u1ebfn cho b\\u1ea1n. M\\u00f9i h\\u01b0\\u01a1ng nh\\u01b0 b\\u1ed3ng b\\u1ec1nh \\u00eam d\\u1ecbu nh\\u01b0ng l\\u1ea1i v\\u00f4 c\\u00f9ng b\\u1ec1n h\\u01b0\\u01a1ng. H\\u01b0\\u01a1ng th\\u01a1m mang \\u0111\\u1ebfn v\\u1edbi nhi\\u1ec1u cung b\\u1eadc c\\u1ea3m x\\u00fac v\\u1edbi nh\\u01b0 c\\u00f9ng nhi\\u1ec1u m\\u00f9i th\\u01a1m k\\u1ebft h\\u1ee3p h\\u00e0i h\\u00f2a.\",\"content\":\"<p>Phong c&aacute;ch: Sang tr\\u1ecdng, ng\\u1ecdt ng&agrave;o, sexy<\\/p>\\r\\n\\r\\n<p>Th\\u01b0\\u01a1ng hi\\u1ec7u: Lattafa<\\/p>\\r\\n\\r\\n<p>Xu\\u1ea5t x\\u1ee9: Dubai &ndash; UAE<\\/p>\\r\\n\\r\\n<p>\\u0110\\u1ed9 tu\\u1ed5i: 25 tu\\u1ed5i tr\\u1edf l&ecirc;n<\\/p>\\r\\n\\r\\n<p>Dung t&iacute;ch: 100ml<\\/p>\\r\\n\\r\\n<p>Gi\\u1edbi t&iacute;nh: N\\u1eef<\\/p>\\r\\n\\r\\n<p>\\u0110\\u1ed9 l\\u01b0u h\\u01b0\\u01a1ng: 6-8h tr&ecirc;n da, 1-3 ng&agrave;y tr&ecirc;n qu\\u1ea7n &aacute;o<\\/p>\\r\\n\\r\\n<p>\\u0110\\u1ed9 t\\u1ecfa h\\u01b0\\u01a1ng:Xa<\\/p>\\r\\n\\r\\n<p>\\u0110\\u1eb7c tr\\u01b0ng m&ugrave;i h\\u01b0\\u01a1ng: M&ugrave;i hoa h\\u1ed3ng ch\\u1ee7 \\u0111\\u1ea1o<\\/p>\\r\\n\\r\\n<ul>\\r\\n\\t<li>H\\u01b0\\u01a1ng \\u0111\\u1ea7u: Hoa h\\u1ed3ng, hoa sen<\\/li>\\r\\n\\t<li>H\\u01b0\\u01a1ng gi\\u1eefa: Ho\\u1eafc h\\u01b0\\u01a1ng, x\\u1ea1 h\\u01b0\\u01a1ng, lily<\\/li>\\r\\n\\t<li>H\\u01b0\\u01a1ng cu\\u1ed1i: G\\u1ed7 \\u0111&agrave;n h\\u01b0\\u01a1ng, x\\u1ea1 h\\u01b0\\u01a1ng, vani<\\/li>\\r\\n<\\/ul>\"}},\"category\":[\"21\",\"23\"],\"image\":\"\\/data\\/product\\/product_use.jpg\",\"sub_image\":[\"\\/data\\/product\\/product_use.jpg\",\"\\/data\\/product\\/product_use.jpg\"],\"sku\":\"3D-CARBON175\",\"alias\":\"nuoc-hoa-nu-dubai-mazaaji-edp\",\"brand_id\":\"2\",\"supplier_id\":\"1\",\"cost\":\"0\",\"price\":\"4800000\",\"tax_id\":\"0\",\"price_promotion\":\"2999000\",\"price_promotion_start\":\"2022-01-12\",\"price_promotion_end\":\"2022-03-16\",\"stock\":\"97\",\"weight_class\":null,\"weight\":\"0\",\"length_class\":null,\"length\":\"0\",\"height\":\"0\",\"width\":\"0\",\"property\":\"physical\",\"download_path\":null,\"date_available\":null,\"minimum\":\"1\",\"sort\":\"0\",\"status\":\"on\",\"attribute\":{\"1\":{\"name\":[\"Red\",\"Yellow\"],\"add_price\":[\"20000\",\"20000\"]},\"2\":{\"name\":[\"M\",\"L\"],\"add_price\":[\"50000\",\"20000\"]}},\"_token\":\"KZ5cp3PdRvI1Bjr6hOWm7b5yE6efbWhOU04ixXho\"}', '2022-01-14 07:44:57', '2022-01-14 07:44:57'),
(848, 1, 'sc_admin/product', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2022-01-14 07:44:59', '2022-01-14 07:44:59'),
(849, 1, 'sc_admin/product', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2022-01-14 07:45:05', '2022-01-14 07:45:05'),
(850, 1, 'sc_admin/product/edit/13', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2022-01-14 07:45:08', '2022-01-14 07:45:08');
INSERT INTO `sc_admin_log` (`id`, `user_id`, `path`, `method`, `ip`, `user_agent`, `input`, `created_at`, `updated_at`) VALUES
(851, 1, 'sc_admin/product/edit/13', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '{\"descriptions\":{\"en\":{\"name\":\"N\\u01b0\\u1edbc hoa n\\u1eef jean paul gaultier scandal edt (30ml) - ph\\u00e1p\",\"keyword\":null,\"description\":null,\"content\":\"<h1>N\\u01b0\\u1edbc hoa n\\u1eef jean paul gaultier scandal edt (30ml) - ph&aacute;p<\\/h1>\"},\"vi\":{\"name\":\"N\\u01b0\\u1edbc hoa n\\u1eef jean paul gaultier scandal edt (30ml) - ph\\u00e1p\",\"keyword\":null,\"description\":\"\\u1ea4m \\u00e1p, tinh t\\u1ebf, m\\u1ea1nh m\\u1ebd, m\\u01b0\\u1ee3t m\\u00e0, quy\\u1ebfn r\\u0169 l\\u00e0 nh\\u1eefng g\\u00ec Narciso Rodriguez Narciso Poudree c\\u00f3 th\\u1ec3 mang \\u0111\\u1ebfn cho b\\u1ea1n. M\\u00f9i h\\u01b0\\u01a1ng nh\\u01b0 b\\u1ed3ng b\\u1ec1nh \\u00eam d\\u1ecbu nh\\u01b0ng l\\u1ea1i v\\u00f4 c\\u00f9ng b\\u1ec1n h\\u01b0\\u01a1ng. H\\u01b0\\u01a1ng th\\u01a1m mang \\u0111\\u1ebfn v\\u1edbi nhi\\u1ec1u cung b\\u1eadc c\\u1ea3m x\\u00fac v\\u1edbi nh\\u01b0 c\\u00f9ng nhi\\u1ec1u m\\u00f9i th\\u01a1m k\\u1ebft h\\u1ee3p h\\u00e0i h\\u00f2a.\",\"content\":\"<p>H\\u1eb3n \\u0111\\u1ed9 ph\\u1ee7 s&oacute;ng v&agrave; s\\u1ef1 c&agrave;n qu&eacute;t kh\\u1eafp c&aacute;c di\\u1ec5n \\u0111&agrave;n v&agrave; c&aacute;c b\\u1ea3ng x\\u1ebfp h\\u1ea1ng nh\\u1eefng chai n\\u01b0\\u1edbc hoa sexy, quy\\u1ebfn r\\u0169 nh\\u1ea5t c\\u1ee7a Scancal l&agrave; \\u0111i\\u1ec1u kh&ocirc;ng c&ograve;n l\\u1ea1 l\\u1eabm g&igrave; v\\u1edbi nhi\\u1ec1u ng\\u01b0\\u1eddi. Th\\u1eadm ch&iacute; \\u1edf Scandal, \\u0111\\u1ecbnh ki\\u1ebfn v\\u1ec1 n\\u01b0\\u1edbc hoa ng\\u1ecdt v&agrave; n\\u1ed3ng th\\u01b0\\u1eddng k&eacute;n ng\\u01b0\\u1eddi c\\u0169ng \\u0111\\u01b0\\u1ee3c thay \\u0111\\u1ed5i quan \\u0111i\\u1ec3m m\\u1ed9t c&aacute;ch \\u0111&aacute;ng k\\u1ec3 \\u1edf r\\u1ea5t nhi\\u1ec1u ng\\u01b0\\u1eddi, b\\u1edfi ng\\u1ecdt th\\u1eadt, n\\u1ed3ng v&agrave; \\u0111\\u1eadm th\\u1eadt, nh\\u1eefng n&oacute; qu&aacute; \\u0111\\u1ed7i sexy v&agrave; h\\u1ea5p d\\u1eabn. Th&aacute;ng 8 n\\u0103m 2018, b\\u1ea3n Flanker \\u0111\\u1ea7u ti&ecirc;n c\\u1ee7a k\\u1ebb c&aacute;m d\\u1ed7 kinh \\u0111i\\u1ec3n &quot;Scandal&quot; \\u0111\\u01b0\\u1ee3c ra m\\u1eaft v\\u1edbi t&ecirc;n g\\u1ecdi l&agrave;&nbsp;<strong>Jean Paul Gaultier Scandal By Night Edp 30Ml<\\/strong>&nbsp;\\u0111&atilde; t\\u1ea1o ra m\\u1ed9t s\\u1ef1 mong ch\\u1edd v&agrave; h&aacute;o h\\u1ee9c v\\u1edbi r\\u1ea5t nhi\\u1ec1u t&iacute;n \\u0111\\u1ed3 n\\u01b0\\u1edbc hoa tr&ecirc;n to&agrave;n th\\u1ebf gi\\u1edbi, \\u0111\\u1eb7c bi\\u1ec7t v\\u1edbi nh\\u1eefng ng\\u01b0\\u1eddi l\\u1ee1 tr&oacute;t say m&ecirc; c&ocirc; n&agrave;ng nguy&ecirc;n b\\u1ea3n Scandal.&nbsp;<\\/p>\\r\\n\\r\\n<p>&nbsp;<\\/p>\\r\\n\\r\\n<p><img src=\\\"https:\\/\\/file.hstatic.net\\/200000117693\\/file\\/jean_paul_gaultier_scandal_edp_30ml_-_4_a561ff8260824894b966b136ec7286c3_grande.jpg\\\" \\/><\\/p>\\r\\n\\r\\n<h2><strong>H\\u01af\\u01a0NG \\u0110\\u1eb6C TR\\u01afNG<\\/strong><\\/h2>\\r\\n\\r\\n<ul>\\r\\n\\t<li>H\\u01b0\\u01a1ng \\u0111\\u1ea7u: M\\u1eadt ong, Chi cam chanh, Cam \\u0111\\u1eafng<\\/li>\\r\\n\\t<li>H\\u01b0\\u01a1ng gi\\u1eefa: Hoa hu\\u1ec7 tr\\u1eafng, C&acirc;y cam t&ugrave;ng Himalaya, Cherry, Hoa Cam, Tr&aacute;i l&ecirc;<\\/li>\\r\\n\\t<li>H\\u01b0\\u01a1ng cu\\u1ed1i: \\u0110\\u1eadu Tonka, C&acirc;y ho\\u1eafc h\\u01b0\\u01a1ng, G\\u1ed7 \\u0111&agrave;n h\\u01b0\\u01a1ng, Vani, X\\u1ea1 h\\u01b0\\u01a1ng<\\/li>\\r\\n<\\/ul>\\r\\n\\r\\n<p>&nbsp;<\\/p>\\r\\n\\r\\n<h2><strong>TH&Ocirc;NG TIN S\\u1ea2N PH\\u1ea8M<\\/strong><\\/h2>\\r\\n\\r\\n<ul>\\r\\n\\t<li>Nh&atilde;n hi\\u1ec7u: Jean Paul Gaultier<\\/li>\\r\\n\\t<li>Gi\\u1edbi t&iacute;nh: N\\u1eef<\\/li>\\r\\n\\t<li>Xu\\u1ea5t x\\u1ee9: Ph&aacute;p<\\/li>\\r\\n\\t<li>Ph&aacute;t h&agrave;nh: 2018<\\/li>\\r\\n\\t<li>N\\u1ed3ng \\u0111\\u1ed9: Eau de parfum<\\/li>\\r\\n\\t<li>Nh&oacute;m h\\u01b0\\u01a1ng: H\\u01b0\\u01a1ng Hoa c\\u1ecf G\\u1ed7 X\\u1ea1 h\\u01b0\\u01a1ng - Floral Woody Musk<\\/li>\\r\\n\\t<li>Phong c&aacute;ch: G\\u1ee3i c\\u1ea3m, S&agrave;nh \\u0111i\\u1ec7u, Khi&ecirc;u kh&iacute;ch<\\/li>\\r\\n<\\/ul>\"}},\"category\":[\"22\",\"21\",\"23\"],\"image\":\"\\/data\\/product\\/product_use.jpg\",\"sku\":\"3D-GOLD175\",\"alias\":\"demo-alias-name-product-13\",\"brand_id\":\"3\",\"supplier_id\":\"1\",\"cost\":\"5000\",\"price\":\"10000\",\"tax_id\":\"0\",\"price_promotion\":\"799000\",\"price_promotion_start\":null,\"price_promotion_end\":null,\"stock\":\"-2\",\"weight_class\":null,\"weight\":\"0\",\"length_class\":null,\"length\":\"0\",\"height\":\"0\",\"width\":\"0\",\"property\":\"physical\",\"download_path\":null,\"date_available\":null,\"minimum\":\"0\",\"sort\":\"0\",\"status\":\"on\",\"_token\":\"KZ5cp3PdRvI1Bjr6hOWm7b5yE6efbWhOU04ixXho\"}', '2022-01-14 07:45:35', '2022-01-14 07:45:35'),
(852, 1, 'sc_admin/product', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2022-01-14 07:45:36', '2022-01-14 07:45:36'),
(853, 1, 'sc_admin', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2022-01-14 07:52:29', '2022-01-14 07:52:29'),
(854, 1, 'sc_admin/store_config', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2022-01-14 07:52:36', '2022-01-14 07:52:36'),
(855, 1, 'sc_admin/store_maintain', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2022-01-14 07:52:45', '2022-01-14 07:52:45'),
(856, 1, 'sc_admin/user', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2022-01-14 07:52:53', '2022-01-14 07:52:53'),
(857, 1, 'sc_admin/cache_config', 'GET', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '[]', '2022-01-14 07:52:59', '2022-01-14 07:52:59'),
(858, 1, 'sc_admin', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36', '[]', '2022-01-14 15:29:07', '2022-01-14 15:29:07'),
(859, 1, 'sc_admin/banner', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36', '[]', '2022-01-14 15:29:19', '2022-01-14 15:29:19'),
(860, 1, 'sc_admin/language', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36', '[]', '2022-01-14 15:40:11', '2022-01-14 15:40:11'),
(861, 1, 'sc_admin/store_info', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36', '[]', '2022-01-14 15:40:15', '2022-01-14 15:40:15'),
(862, 1, 'sc_admin/store_info', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36', '[]', '2022-01-14 15:40:18', '2022-01-14 15:40:18'),
(863, 1, 'sc_admin/store_info/update_info', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36', '{\"name\":\"title__en\",\"value\":\"HaMai Perfume\",\"pk\":null,\"_token\":\"cuvrsUnPBGaV6fLzQkYVYjJEymcTeajJ2WUOP9oC\",\"storeId\":\"1\"}', '2022-01-14 15:40:54', '2022-01-14 15:40:54'),
(864, 1, 'sc_admin/store_info/update_info', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36', '{\"name\":\"description__en\",\"value\":\"C\\u1eadp nh\\u1eadt nh\\u1eefng m\\u1eabu n\\u01b0\\u1edbc hoa v\\u00e0 tinh d\\u1ea7u Dubai x\\u00e1ch tay \\u0111ang khuy\\u1ebfn m\\u00e3i!\",\"pk\":null,\"_token\":\"cuvrsUnPBGaV6fLzQkYVYjJEymcTeajJ2WUOP9oC\",\"storeId\":\"1\"}', '2022-01-14 15:41:13', '2022-01-14 15:41:13'),
(865, 1, 'sc_admin/language', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36', '[]', '2022-01-14 15:41:24', '2022-01-14 15:41:24'),
(866, 1, 'sc_admin/language/edit/1', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36', '[]', '2022-01-14 15:41:27', '2022-01-14 15:41:27'),
(867, 1, 'sc_admin/language/edit/1', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36', '{\"name\":\"English\",\"code\":\"en\",\"icon\":\"\\/data\\/language\\/flag_uk.png\",\"sort\":\"1\",\"_token\":\"cuvrsUnPBGaV6fLzQkYVYjJEymcTeajJ2WUOP9oC\"}', '2022-01-14 15:41:37', '2022-01-14 15:41:37'),
(868, 1, 'sc_admin/language/edit/1', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36', '[]', '2022-01-14 15:41:37', '2022-01-14 15:41:37'),
(869, 1, 'sc_admin/language/edit/1', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36', '[]', '2022-01-14 15:57:46', '2022-01-14 15:57:46'),
(870, 1, 'sc_admin/language/edit/1', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36', '[]', '2022-01-14 16:04:27', '2022-01-14 16:04:27'),
(871, 1, 'sc_admin/product', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36', '[]', '2022-01-14 16:04:54', '2022-01-14 16:04:54'),
(872, 1, 'sc_admin/category', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36', '[]', '2022-01-14 16:04:55', '2022-01-14 16:04:55'),
(873, 1, 'sc_admin/category/edit/21', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36', '[]', '2022-01-14 16:04:59', '2022-01-14 16:04:59'),
(874, 1, 'sc_admin/category/edit/21', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36', '{\"descriptions\":{\"vi\":{\"title\":\"N\\u01b0\\u1edbc hoa Ph\\u00e1p\",\"keyword\":null,\"description\":null}},\"parent\":\"22\",\"alias\":\"nuoc-hoa-phap\",\"image\":\"\\/data\\/category\\/product_use2.jpg\",\"sort\":\"0\",\"top\":\"on\",\"status\":\"on\",\"_token\":\"cuvrsUnPBGaV6fLzQkYVYjJEymcTeajJ2WUOP9oC\"}', '2022-01-14 16:05:20', '2022-01-14 16:05:20'),
(875, 1, 'sc_admin/category', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36', '[]', '2022-01-14 16:05:20', '2022-01-14 16:05:20'),
(876, 1, 'sc_admin/store_info', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36', '[]', '2022-01-14 16:11:32', '2022-01-14 16:11:32'),
(877, 1, 'sc_admin/store_info/update_info', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36', '{\"name\":\"title__vi\",\"value\":\"HaMaiPerfume\",\"pk\":null,\"_token\":\"cuvrsUnPBGaV6fLzQkYVYjJEymcTeajJ2WUOP9oC\",\"storeId\":\"1\"}', '2022-01-14 16:12:03', '2022-01-14 16:12:03'),
(878, 1, 'sc_admin/store_info', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36', '[]', '2022-01-14 16:12:59', '2022-01-14 16:12:59'),
(879, 1, 'sc_admin/store_info/update_info', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36', '{\"name\":\"title__vi\",\"value\":\"HaMaiPerfumes\",\"pk\":null,\"_token\":\"cuvrsUnPBGaV6fLzQkYVYjJEymcTeajJ2WUOP9oC\",\"storeId\":\"1\"}', '2022-01-14 16:13:09', '2022-01-14 16:13:09'),
(880, 1, 'sc_admin/store_info/update_info', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36', '{\"name\":\"title__vi\",\"value\":\"HaMaiPerfume\",\"pk\":null,\"_token\":\"cuvrsUnPBGaV6fLzQkYVYjJEymcTeajJ2WUOP9oC\",\"storeId\":\"1\"}', '2022-01-14 16:13:15', '2022-01-14 16:13:15'),
(881, 1, 'sc_admin/uploads', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36', '{\"type\":\"logo\"}', '2022-01-14 16:18:52', '2022-01-14 16:18:52'),
(882, 1, 'sc_admin/uploads/folders', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36', '{\"working_dir\":null,\"type\":\"logo\",\"_\":\"1642177138963\"}', '2022-01-14 16:18:59', '2022-01-14 16:18:59'),
(883, 1, 'sc_admin/uploads/errors', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36', '{\"working_dir\":null,\"type\":\"logo\",\"_\":\"1642177138964\"}', '2022-01-14 16:18:59', '2022-01-14 16:18:59'),
(884, 1, 'sc_admin/uploads/jsonitems', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36', '{\"working_dir\":null,\"type\":\"logo\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1642177138965\"}', '2022-01-14 16:18:59', '2022-01-14 16:18:59'),
(885, 1, 'sc_admin/uploads/upload', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"logo\",\"_token\":\"cuvrsUnPBGaV6fLzQkYVYjJEymcTeajJ2WUOP9oC\"}', '2022-01-14 16:19:53', '2022-01-14 16:19:53'),
(886, 1, 'sc_admin/uploads/folders', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"logo\",\"_\":\"1642177138966\"}', '2022-01-14 16:19:53', '2022-01-14 16:19:53'),
(887, 1, 'sc_admin/uploads/jsonitems', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"logo\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1642177138967\"}', '2022-01-14 16:19:54', '2022-01-14 16:19:54'),
(888, 1, 'sc_admin/store_info/update_info', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36', '{\"name\":\"logo\",\"value\":\"\\/data\\/logo\\/Untitled-1.png\",\"_token\":\"cuvrsUnPBGaV6fLzQkYVYjJEymcTeajJ2WUOP9oC\",\"storeId\":\"1\"}', '2022-01-14 16:19:57', '2022-01-14 16:19:57'),
(889, 1, 'sc_admin/menu', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36', '[]', '2022-01-14 16:23:08', '2022-01-14 16:23:08'),
(890, 1, 'sc_admin/store_info', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36', '[]', '2022-01-14 16:23:11', '2022-01-14 16:23:11'),
(891, 1, 'sc_admin/customer', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36', '[]', '2022-01-14 16:23:38', '2022-01-14 16:23:38'),
(892, 1, 'sc_admin/subscribe', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36', '[]', '2022-01-14 16:23:43', '2022-01-14 16:23:43'),
(893, 1, 'sc_admin/user', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36', '[]', '2022-01-14 16:23:57', '2022-01-14 16:23:57'),
(894, 1, 'sc_admin/user/edit/1', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36', '[]', '2022-01-14 16:23:59', '2022-01-14 16:23:59'),
(895, 1, 'sc_admin/uploads', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36', '{\"type\":\"avatar\"}', '2022-01-14 16:24:02', '2022-01-14 16:24:02'),
(896, 1, 'sc_admin/uploads/folders', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36', '{\"working_dir\":null,\"type\":\"avatar\",\"_\":\"1642177442454\"}', '2022-01-14 16:24:02', '2022-01-14 16:24:02'),
(897, 1, 'sc_admin/uploads/errors', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36', '{\"working_dir\":null,\"type\":\"avatar\",\"_\":\"1642177442455\"}', '2022-01-14 16:24:02', '2022-01-14 16:24:02'),
(898, 1, 'sc_admin/uploads/jsonitems', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36', '{\"working_dir\":null,\"type\":\"avatar\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1642177442456\"}', '2022-01-14 16:24:03', '2022-01-14 16:24:03'),
(899, 1, 'sc_admin/uploads/upload', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"avatar\",\"_token\":\"cuvrsUnPBGaV6fLzQkYVYjJEymcTeajJ2WUOP9oC\"}', '2022-01-14 16:24:08', '2022-01-14 16:24:08'),
(900, 1, 'sc_admin/uploads/folders', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"avatar\",\"_\":\"1642177442457\"}', '2022-01-14 16:24:08', '2022-01-14 16:24:08'),
(901, 1, 'sc_admin/uploads/jsonitems', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"avatar\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1642177442458\"}', '2022-01-14 16:24:08', '2022-01-14 16:24:08'),
(902, 1, 'sc_admin/user/edit/1', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36', '{\"name\":\"Administrator\",\"username\":\"admin\",\"email\":\"admin@admin\",\"avatar\":\"\\/data\\/avatar\\/Untitled-1.png\",\"password\":null,\"password_confirmation\":null,\"store\":\"1\",\"_token\":\"cuvrsUnPBGaV6fLzQkYVYjJEymcTeajJ2WUOP9oC\"}', '2022-01-14 16:24:20', '2022-01-14 16:24:20'),
(903, 1, 'sc_admin/user', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36', '[]', '2022-01-14 16:24:20', '2022-01-14 16:24:20'),
(904, 1, 'sc_admin/banner', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36', '[]', '2022-01-14 16:25:48', '2022-01-14 16:25:48'),
(905, 1, 'sc_admin/banner/edit/3', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36', '[]', '2022-01-14 16:27:04', '2022-01-14 16:27:04'),
(906, 1, 'sc_admin/uploads', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36', '{\"type\":\"banner\"}', '2022-01-14 16:30:15', '2022-01-14 16:30:15'),
(907, 1, 'sc_admin/uploads/folders', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36', '{\"working_dir\":null,\"type\":\"banner\",\"_\":\"1642177815436\"}', '2022-01-14 16:30:15', '2022-01-14 16:30:15'),
(908, 1, 'sc_admin/uploads/errors', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36', '{\"working_dir\":null,\"type\":\"banner\",\"_\":\"1642177815437\"}', '2022-01-14 16:30:15', '2022-01-14 16:30:15'),
(909, 1, 'sc_admin/uploads/jsonitems', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36', '{\"working_dir\":null,\"type\":\"banner\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1642177815438\"}', '2022-01-14 16:30:16', '2022-01-14 16:30:16'),
(910, 1, 'sc_admin/uploads', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36', '{\"type\":\"banner\"}', '2022-01-14 16:31:56', '2022-01-14 16:31:56'),
(911, 1, 'sc_admin/uploads/folders', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36', '{\"working_dir\":null,\"type\":\"banner\",\"_\":\"1642177916583\"}', '2022-01-14 16:31:56', '2022-01-14 16:31:56'),
(912, 1, 'sc_admin/uploads/errors', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36', '{\"working_dir\":null,\"type\":\"banner\",\"_\":\"1642177916584\"}', '2022-01-14 16:31:57', '2022-01-14 16:31:57'),
(913, 1, 'sc_admin/uploads/jsonitems', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36', '{\"working_dir\":null,\"type\":\"banner\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1642177916585\"}', '2022-01-14 16:31:57', '2022-01-14 16:31:57'),
(914, 1, 'sc_admin/uploads', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36', '{\"type\":\"banner\"}', '2022-01-14 16:32:52', '2022-01-14 16:32:52'),
(915, 1, 'sc_admin/uploads/folders', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36', '{\"working_dir\":null,\"type\":\"banner\",\"_\":\"1642177972191\"}', '2022-01-14 16:32:52', '2022-01-14 16:32:52'),
(916, 1, 'sc_admin/uploads/errors', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36', '{\"working_dir\":null,\"type\":\"banner\",\"_\":\"1642177972192\"}', '2022-01-14 16:32:52', '2022-01-14 16:32:52'),
(917, 1, 'sc_admin/uploads/jsonitems', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36', '{\"working_dir\":null,\"type\":\"banner\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1642177972193\"}', '2022-01-14 16:32:52', '2022-01-14 16:32:52'),
(918, 1, 'sc_admin/uploads/upload', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"banner\",\"_token\":\"cuvrsUnPBGaV6fLzQkYVYjJEymcTeajJ2WUOP9oC\"}', '2022-01-14 16:33:30', '2022-01-14 16:33:30'),
(919, 1, 'sc_admin/uploads/folders', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"banner\",\"_\":\"1642177972194\"}', '2022-01-14 16:33:33', '2022-01-14 16:33:33'),
(920, 1, 'sc_admin/uploads/jsonitems', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"banner\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1642177972195\"}', '2022-01-14 16:33:33', '2022-01-14 16:33:33'),
(921, 1, 'sc_admin/banner/edit/3', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36', '{\"image\":\"\\/data\\/banner\\/slider1.jpg\",\"url\":null,\"title\":\"slider01\",\"target\":\"_self\",\"html\":null,\"type\":\"breadcrumb\",\"sort\":\"0\",\"status\":\"on\",\"_token\":\"cuvrsUnPBGaV6fLzQkYVYjJEymcTeajJ2WUOP9oC\"}', '2022-01-14 16:33:53', '2022-01-14 16:33:53'),
(922, 1, 'sc_admin/banner', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36', '[]', '2022-01-14 16:33:53', '2022-01-14 16:33:53'),
(923, 1, 'sc_admin/banner/edit/4', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36', '[]', '2022-01-14 16:34:02', '2022-01-14 16:34:02'),
(924, 1, 'sc_admin/uploads', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36', '{\"type\":\"banner\"}', '2022-01-14 16:34:04', '2022-01-14 16:34:04'),
(925, 1, 'sc_admin/uploads/folders', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36', '{\"working_dir\":null,\"type\":\"banner\",\"_\":\"1642178044461\"}', '2022-01-14 16:34:04', '2022-01-14 16:34:04'),
(926, 1, 'sc_admin/uploads/errors', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36', '{\"working_dir\":null,\"type\":\"banner\",\"_\":\"1642178044462\"}', '2022-01-14 16:34:04', '2022-01-14 16:34:04'),
(927, 1, 'sc_admin/uploads/jsonitems', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36', '{\"working_dir\":null,\"type\":\"banner\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1642178044463\"}', '2022-01-14 16:34:05', '2022-01-14 16:34:05'),
(928, 1, 'sc_admin/uploads/upload', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"banner\",\"_token\":\"cuvrsUnPBGaV6fLzQkYVYjJEymcTeajJ2WUOP9oC\"}', '2022-01-14 16:34:09', '2022-01-14 16:34:09'),
(929, 1, 'sc_admin/uploads/folders', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"banner\",\"_\":\"1642178044464\"}', '2022-01-14 16:34:09', '2022-01-14 16:34:09'),
(930, 1, 'sc_admin/uploads/jsonitems', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"banner\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1642178044465\"}', '2022-01-14 16:34:09', '2022-01-14 16:34:09'),
(931, 1, 'sc_admin/banner/edit/4', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36', '{\"image\":\"\\/data\\/banner\\/slider2.jpg\",\"url\":null,\"title\":\"slider02\",\"target\":\"_self\",\"html\":null,\"type\":\"banner-store\",\"sort\":\"0\",\"status\":\"on\",\"_token\":\"cuvrsUnPBGaV6fLzQkYVYjJEymcTeajJ2WUOP9oC\"}', '2022-01-14 16:34:27', '2022-01-14 16:34:27'),
(932, 1, 'sc_admin/banner', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36', '[]', '2022-01-14 16:34:27', '2022-01-14 16:34:27'),
(933, 1, 'sc_admin/banner/delete', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36', '{\"ids\":\"2\",\"_token\":\"cuvrsUnPBGaV6fLzQkYVYjJEymcTeajJ2WUOP9oC\"}', '2022-01-14 16:34:30', '2022-01-14 16:34:30'),
(934, 1, 'sc_admin/banner', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36', '{\"_pjax\":\"#pjax-container\"}', '2022-01-14 16:34:30', '2022-01-14 16:34:30'),
(935, 1, 'sc_admin/banner/delete', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36', '{\"ids\":\"1\",\"_token\":\"cuvrsUnPBGaV6fLzQkYVYjJEymcTeajJ2WUOP9oC\"}', '2022-01-14 16:34:34', '2022-01-14 16:34:34'),
(936, 1, 'sc_admin/banner', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36', '{\"_pjax\":\"#pjax-container\"}', '2022-01-14 16:34:34', '2022-01-14 16:34:34'),
(937, 1, 'sc_admin/banner/edit/4', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36', '[]', '2022-01-14 16:34:39', '2022-01-14 16:34:39'),
(938, 1, 'sc_admin/banner/edit/4', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36', '{\"image\":\"\\/data\\/banner\\/slider2.jpg\",\"url\":null,\"title\":\"slider02\",\"target\":\"_self\",\"html\":null,\"type\":\"background\",\"sort\":\"0\",\"status\":\"on\",\"_token\":\"cuvrsUnPBGaV6fLzQkYVYjJEymcTeajJ2WUOP9oC\"}', '2022-01-14 16:34:43', '2022-01-14 16:34:43'),
(939, 1, 'sc_admin/banner', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36', '[]', '2022-01-14 16:34:43', '2022-01-14 16:34:43'),
(940, 1, 'sc_admin/banner/edit/4', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36', '[]', '2022-01-14 16:34:49', '2022-01-14 16:34:49'),
(941, 1, 'sc_admin/uploads', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36', '{\"type\":\"banner\"}', '2022-01-14 16:34:51', '2022-01-14 16:34:51'),
(942, 1, 'sc_admin/uploads/folders', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36', '{\"working_dir\":null,\"type\":\"banner\",\"_\":\"1642178092030\"}', '2022-01-14 16:34:52', '2022-01-14 16:34:52'),
(943, 1, 'sc_admin/uploads/errors', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36', '{\"working_dir\":null,\"type\":\"banner\",\"_\":\"1642178092031\"}', '2022-01-14 16:34:52', '2022-01-14 16:34:52'),
(944, 1, 'sc_admin/uploads/jsonitems', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36', '{\"working_dir\":null,\"type\":\"banner\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1642178092032\"}', '2022-01-14 16:34:52', '2022-01-14 16:34:52'),
(945, 1, 'sc_admin/uploads/delete', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"banner\",\"items\":[\"slider2.jpg\"],\"_\":\"1642178092033\"}', '2022-01-14 16:35:05', '2022-01-14 16:35:05'),
(946, 1, 'sc_admin/uploads/folders', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"banner\",\"_\":\"1642178092034\"}', '2022-01-14 16:35:06', '2022-01-14 16:35:06'),
(947, 1, 'sc_admin/uploads/jsonitems', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"banner\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1642178092035\"}', '2022-01-14 16:35:06', '2022-01-14 16:35:06'),
(948, 1, 'sc_admin/uploads/upload', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"banner\",\"_token\":\"cuvrsUnPBGaV6fLzQkYVYjJEymcTeajJ2WUOP9oC\"}', '2022-01-14 16:35:14', '2022-01-14 16:35:14'),
(949, 1, 'sc_admin/uploads/folders', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"banner\",\"_\":\"1642178092036\"}', '2022-01-14 16:35:14', '2022-01-14 16:35:14'),
(950, 1, 'sc_admin/uploads/jsonitems', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"banner\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1642178092037\"}', '2022-01-14 16:35:14', '2022-01-14 16:35:14'),
(951, 1, 'sc_admin/banner/edit/4', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36', '{\"image\":\"\\/data\\/banner\\/slider2.jpg\",\"url\":null,\"title\":\"slider02\",\"target\":\"_self\",\"html\":null,\"type\":\"background\",\"sort\":\"0\",\"status\":\"on\",\"_token\":\"cuvrsUnPBGaV6fLzQkYVYjJEymcTeajJ2WUOP9oC\"}', '2022-01-14 16:35:34', '2022-01-14 16:35:34'),
(952, 1, 'sc_admin/banner', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36', '[]', '2022-01-14 16:35:34', '2022-01-14 16:35:34'),
(953, 1, 'sc_admin/banner/edit/4', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36', '[]', '2022-01-14 16:35:52', '2022-01-14 16:35:52'),
(954, 1, 'sc_admin/banner/edit/4', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36', '{\"image\":\"\\/data\\/banner\\/slider2.jpg\",\"url\":null,\"title\":\"slider02\",\"target\":\"_self\",\"html\":\"<h4>TINH D\\u1ea6U N\\u01af\\u1edaC HOA DUBAI<\\/h4>\\r\\n<a href=\\\"{{{{ sc_route(\'shop\') }}}}\\\">C\\u1eeda h\\u00e0ng<\\/a>\",\"type\":\"background\",\"sort\":\"0\",\"status\":\"on\",\"_token\":\"cuvrsUnPBGaV6fLzQkYVYjJEymcTeajJ2WUOP9oC\"}', '2022-01-14 16:36:13', '2022-01-14 16:36:13'),
(955, 1, 'sc_admin/banner', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36', '[]', '2022-01-14 16:36:13', '2022-01-14 16:36:13'),
(956, 1, 'sc_admin/banner/edit/3', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36', '[]', '2022-01-14 16:36:15', '2022-01-14 16:36:15'),
(957, 1, 'sc_admin/banner/edit/3', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36', '{\"image\":\"\\/data\\/banner\\/slider1.jpg\",\"url\":null,\"title\":\"slider01\",\"target\":\"_self\",\"html\":\"<h4>TINH D\\u1ea6U N\\u01af\\u1edaC HOA DUBAI<\\/h4>\\r\\n<a href=\\\"{{{{ sc_route(\'shop\') }}}}\\\">C\\u1eeda h\\u00e0ng<\\/a>\",\"type\":\"background\",\"sort\":\"0\",\"status\":\"on\",\"_token\":\"cuvrsUnPBGaV6fLzQkYVYjJEymcTeajJ2WUOP9oC\"}', '2022-01-14 16:36:29', '2022-01-14 16:36:29'),
(958, 1, 'sc_admin/banner', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36', '[]', '2022-01-14 16:36:29', '2022-01-14 16:36:29'),
(959, 1, 'sc_admin/banner/edit/3', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36', '[]', '2022-01-14 16:36:39', '2022-01-14 16:36:39'),
(960, 1, 'sc_admin/banner/edit/3', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36', '{\"image\":\"\\/data\\/banner\\/slider1.jpg\",\"url\":null,\"title\":\"slider01\",\"target\":\"_self\",\"html\":\"<h4>TINH D\\u1ea6U N\\u01af\\u1edaC HOA DUBAI<\\/h4>\\r\\n<a href=\\\"{{{{ sc_route(\'shop\') }}}}\\\">C\\u1eeda h\\u00e0ng<\\/a>\",\"type\":\"background\",\"sort\":\"0\",\"status\":\"on\",\"_token\":\"cuvrsUnPBGaV6fLzQkYVYjJEymcTeajJ2WUOP9oC\"}', '2022-01-14 16:36:54', '2022-01-14 16:36:54'),
(961, 1, 'sc_admin/banner', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36', '[]', '2022-01-14 16:36:55', '2022-01-14 16:36:55'),
(962, 1, 'sc_admin/banner/edit/3', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36', '[]', '2022-01-14 16:40:10', '2022-01-14 16:40:10'),
(963, 1, 'sc_admin/banner/edit/3', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36', '{\"image\":\"\\/data\\/banner\\/slider1.jpg\",\"url\":null,\"title\":\"slider01\",\"target\":\"_self\",\"html\":\"<h4>TINH D\\u1ea6U N\\u01af\\u1edaC HOA DUBAI<\\/h4>\\r\\n<a href=\\\"{{sc_route(\'shop\') }}\\\">C\\u1eeda h\\u00e0ng<\\/a>\",\"type\":\"background\",\"sort\":\"0\",\"status\":\"on\",\"_token\":\"cuvrsUnPBGaV6fLzQkYVYjJEymcTeajJ2WUOP9oC\"}', '2022-01-14 16:51:05', '2022-01-14 16:51:05'),
(964, 1, 'sc_admin/banner', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36', '[]', '2022-01-14 16:51:05', '2022-01-14 16:51:05'),
(965, 1, 'sc_admin/banner/edit/3', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36', '[]', '2022-01-14 16:51:07', '2022-01-14 16:51:07'),
(966, 1, 'sc_admin/banner/edit/3', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36', '{\"image\":\"\\/data\\/banner\\/slider1.jpg\",\"url\":null,\"title\":\"slider01\",\"target\":\"_self\",\"html\":\"<h4>TINH D\\u1ea6U N\\u01af\\u1edaC HOA DUBAI<\\/h4>\\r\\n<a href=\\\"{{sc_route(\'shop\') }}\\\">C\\u1eeda h\\u00e0ng<\\/a>\",\"type\":\"background\",\"sort\":\"0\",\"status\":\"on\",\"_token\":\"cuvrsUnPBGaV6fLzQkYVYjJEymcTeajJ2WUOP9oC\"}', '2022-01-14 16:51:11', '2022-01-14 16:51:11'),
(967, 1, 'sc_admin/banner', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36', '[]', '2022-01-14 16:51:11', '2022-01-14 16:51:11'),
(968, 1, 'sc_admin/banner/edit/4', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36', '[]', '2022-01-14 16:51:12', '2022-01-14 16:51:12'),
(969, 1, 'sc_admin/banner/edit/4', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36', '{\"image\":\"\\/data\\/banner\\/slider2.jpg\",\"url\":null,\"title\":\"slider02\",\"target\":\"_self\",\"html\":\"<h4>TINH D\\u1ea6U N\\u01af\\u1edaC HOA DUBAI<\\/h4>\\r\\n<a href=\\\"{{sc_route(\'shop\') }}\\\">C\\u1eeda h\\u00e0ng<\\/a>\",\"type\":\"background\",\"sort\":\"0\",\"status\":\"on\",\"_token\":\"cuvrsUnPBGaV6fLzQkYVYjJEymcTeajJ2WUOP9oC\"}', '2022-01-14 16:51:16', '2022-01-14 16:51:16'),
(970, 1, 'sc_admin/banner', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36', '[]', '2022-01-14 16:51:17', '2022-01-14 16:51:17'),
(971, 1, 'sc_admin/banner/edit/4', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36', '[]', '2022-01-14 16:53:37', '2022-01-14 16:53:37'),
(972, 1, 'sc_admin/banner/edit/4', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36', '[]', '2022-01-14 16:53:44', '2022-01-14 16:53:44'),
(973, 1, 'sc_admin/uploads', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36', '{\"type\":\"banner\"}', '2022-01-14 16:53:46', '2022-01-14 16:53:46'),
(974, 1, 'sc_admin/uploads/folders', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36', '{\"working_dir\":null,\"type\":\"banner\",\"_\":\"1642179227614\"}', '2022-01-14 16:53:47', '2022-01-14 16:53:47'),
(975, 1, 'sc_admin/uploads/errors', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36', '{\"working_dir\":null,\"type\":\"banner\",\"_\":\"1642179227615\"}', '2022-01-14 16:53:48', '2022-01-14 16:53:48'),
(976, 1, 'sc_admin/uploads/jsonitems', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36', '{\"working_dir\":null,\"type\":\"banner\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1642179227616\"}', '2022-01-14 16:53:48', '2022-01-14 16:53:48'),
(977, 1, 'sc_admin/uploads', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36', '{\"type\":\"banner\"}', '2022-01-14 16:53:52', '2022-01-14 16:53:52'),
(978, 1, 'sc_admin/uploads/folders', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36', '{\"working_dir\":null,\"type\":\"banner\",\"_\":\"1642179232525\"}', '2022-01-14 16:53:52', '2022-01-14 16:53:52'),
(979, 1, 'sc_admin/uploads/errors', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36', '{\"working_dir\":null,\"type\":\"banner\",\"_\":\"1642179232526\"}', '2022-01-14 16:53:52', '2022-01-14 16:53:52'),
(980, 1, 'sc_admin/uploads/jsonitems', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36', '{\"working_dir\":null,\"type\":\"banner\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1642179232527\"}', '2022-01-14 16:53:53', '2022-01-14 16:53:53'),
(981, 1, 'sc_admin/banner/edit/4', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36', '{\"image\":\"\\/data\\/banner\\/slider1.jpg\",\"url\":null,\"title\":\"slider02\",\"target\":\"_self\",\"html\":\"<h4>TINH D\\u1ea6U N\\u01af\\u1edaC HOA DUBAI<\\/h4>\\r\\n<a href=\\\"{{sc_route(\'shop\') }}\\\">C\\u1eeda h\\u00e0ng<\\/a>\",\"type\":\"background\",\"sort\":\"0\",\"status\":\"on\",\"_token\":\"cuvrsUnPBGaV6fLzQkYVYjJEymcTeajJ2WUOP9oC\"}', '2022-01-14 16:53:54', '2022-01-14 16:53:54'),
(982, 1, 'sc_admin/banner', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36', '[]', '2022-01-14 16:53:55', '2022-01-14 16:53:55'),
(983, 1, 'sc_admin/banner/edit/3', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36', '[]', '2022-01-14 16:53:56', '2022-01-14 16:53:56'),
(984, 1, 'sc_admin/uploads', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36', '{\"type\":\"banner\"}', '2022-01-14 16:53:58', '2022-01-14 16:53:58'),
(985, 1, 'sc_admin/uploads/folders', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36', '{\"working_dir\":null,\"type\":\"banner\",\"_\":\"1642179238314\"}', '2022-01-14 16:53:58', '2022-01-14 16:53:58'),
(986, 1, 'sc_admin/uploads/errors', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36', '{\"working_dir\":null,\"type\":\"banner\",\"_\":\"1642179238315\"}', '2022-01-14 16:53:58', '2022-01-14 16:53:58'),
(987, 1, 'sc_admin/uploads/jsonitems', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36', '{\"working_dir\":null,\"type\":\"banner\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1642179238316\"}', '2022-01-14 16:53:58', '2022-01-14 16:53:58'),
(988, 1, 'sc_admin/banner/edit/3', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36', '{\"image\":\"\\/data\\/banner\\/slider2.jpg\",\"url\":null,\"title\":\"slider01\",\"target\":\"_self\",\"html\":\"<h4>TINH D\\u1ea6U N\\u01af\\u1edaC HOA DUBAI<\\/h4>\\r\\n<a href=\\\"{{sc_route(\'shop\') }}\\\">C\\u1eeda h\\u00e0ng<\\/a>\",\"type\":\"background\",\"sort\":\"0\",\"status\":\"on\",\"_token\":\"cuvrsUnPBGaV6fLzQkYVYjJEymcTeajJ2WUOP9oC\"}', '2022-01-14 16:54:03', '2022-01-14 16:54:03'),
(989, 1, 'sc_admin/banner', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36', '[]', '2022-01-14 16:54:03', '2022-01-14 16:54:03'),
(990, 1, 'sc_admin/news', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36', '[]', '2022-01-14 16:57:36', '2022-01-14 16:57:36'),
(991, 1, 'sc_admin/news/edit/7', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36', '[]', '2022-01-14 16:57:38', '2022-01-14 16:57:38'),
(992, 1, 'sc_admin/product', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36', '[]', '2022-01-14 16:59:49', '2022-01-14 16:59:49'),
(993, 1, 'sc_admin/product/edit/12', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36', '[]', '2022-01-14 17:00:15', '2022-01-14 17:00:15'),
(994, 1, 'sc_admin/product/edit/12', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36', '[]', '2022-01-14 17:00:39', '2022-01-14 17:00:39'),
(995, 1, 'sc_admin/product/edit/12', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36', '{\"descriptions\":{\"vi\":{\"name\":\"N\\u01b0\\u1edbc hoa N\\u1eef Dubai Mazaaji EDP\",\"keyword\":null,\"description\":\"\\u1ea4m \\u00e1p, tinh t\\u1ebf, m\\u1ea1nh m\\u1ebd, m\\u01b0\\u1ee3t m\\u00e0, quy\\u1ebfn r\\u0169 l\\u00e0 nh\\u1eefng g\\u00ec Narciso Rodriguez Narciso Poudree c\\u00f3 th\\u1ec3 mang \\u0111\\u1ebfn cho b\\u1ea1n. M\\u00f9i h\\u01b0\\u01a1ng nh\\u01b0 b\\u1ed3ng b\\u1ec1nh \\u00eam d\\u1ecbu nh\\u01b0ng l\\u1ea1i v\\u00f4 c\\u00f9ng b\\u1ec1n h\\u01b0\\u01a1ng. H\\u01b0\\u01a1ng th\\u01a1m mang \\u0111\\u1ebfn v\\u1edbi nhi\\u1ec1u cung b\\u1eadc c\\u1ea3m x\\u00fac v\\u1edbi nh\\u01b0 c\\u00f9ng nhi\\u1ec1u m\\u00f9i th\\u01a1m k\\u1ebft h\\u1ee3p h\\u00e0i h\\u00f2a.\",\"content\":\"<p>Phong c&aacute;ch: Sang tr\\u1ecdng, ng\\u1ecdt ng&agrave;o, sexy<\\/p>\\r\\n\\r\\n<p>Th\\u01b0\\u01a1ng hi\\u1ec7u: Lattafa<\\/p>\\r\\n\\r\\n<p>Xu\\u1ea5t x\\u1ee9: Dubai &ndash; UAE<\\/p>\\r\\n\\r\\n<p>\\u0110\\u1ed9 tu\\u1ed5i: 25 tu\\u1ed5i tr\\u1edf l&ecirc;n<\\/p>\\r\\n\\r\\n<p>Dung t&iacute;ch: 100ml<\\/p>\\r\\n\\r\\n<p>Gi\\u1edbi t&iacute;nh: N\\u1eef<\\/p>\\r\\n\\r\\n<p>\\u0110\\u1ed9 l\\u01b0u h\\u01b0\\u01a1ng: 6-8h tr&ecirc;n da, 1-3 ng&agrave;y tr&ecirc;n qu\\u1ea7n &aacute;o<\\/p>\\r\\n\\r\\n<p>\\u0110\\u1ed9 t\\u1ecfa h\\u01b0\\u01a1ng:Xa<\\/p>\\r\\n\\r\\n<p>\\u0110\\u1eb7c tr\\u01b0ng m&ugrave;i h\\u01b0\\u01a1ng: M&ugrave;i hoa h\\u1ed3ng ch\\u1ee7 \\u0111\\u1ea1o<\\/p>\\r\\n\\r\\n<ul>\\r\\n\\t<li>H\\u01b0\\u01a1ng \\u0111\\u1ea7u: Hoa h\\u1ed3ng, hoa sen<\\/li>\\r\\n\\t<li>H\\u01b0\\u01a1ng gi\\u1eefa: Ho\\u1eafc h\\u01b0\\u01a1ng, x\\u1ea1 h\\u01b0\\u01a1ng, lily<\\/li>\\r\\n\\t<li>H\\u01b0\\u01a1ng cu\\u1ed1i: G\\u1ed7 \\u0111&agrave;n h\\u01b0\\u01a1ng, x\\u1ea1 h\\u01b0\\u01a1ng, vani<\\/li>\\r\\n<\\/ul>\"}},\"category\":[\"23\"],\"image\":\"\\/data\\/product\\/product_use.jpg\",\"sub_image\":[\"\\/data\\/product\\/product_use.jpg\",\"\\/data\\/product\\/product_use.jpg\"],\"sku\":\"3D-CARBON175\",\"alias\":\"nuoc-hoa-nu-dubai-mazaaji-edp\",\"brand_id\":\"2\",\"supplier_id\":\"1\",\"cost\":\"0\",\"price\":\"4800000\",\"tax_id\":\"0\",\"price_promotion\":\"2999000\",\"price_promotion_start\":\"2022-01-12\",\"price_promotion_end\":\"2022-03-16\",\"stock\":\"97\",\"weight_class\":null,\"weight\":\"0\",\"length_class\":null,\"length\":\"0\",\"height\":\"0\",\"width\":\"0\",\"property\":\"physical\",\"download_path\":null,\"date_available\":null,\"minimum\":\"1\",\"sort\":\"0\",\"status\":\"on\",\"_token\":\"cuvrsUnPBGaV6fLzQkYVYjJEymcTeajJ2WUOP9oC\"}', '2022-01-14 17:01:43', '2022-01-14 17:01:43'),
(996, 1, 'sc_admin/product', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36', '[]', '2022-01-14 17:01:43', '2022-01-14 17:01:43'),
(997, 1, 'sc_admin/news', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36', '[]', '2022-01-14 17:04:55', '2022-01-14 17:04:55');
INSERT INTO `sc_admin_log` (`id`, `user_id`, `path`, `method`, `ip`, `user_agent`, `input`, `created_at`, `updated_at`) VALUES
(998, 1, 'sc_admin/news/edit/5', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36', '[]', '2022-01-14 17:04:58', '2022-01-14 17:04:58'),
(999, 1, 'sc_admin/news/edit/5', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36', '{\"descriptions\":{\"vi\":{\"title\":\"Tinh d\\u1ea7u n\\u01b0\\u1edbc hoa Dubai gi\\u00e1 bao nhi\\u00eau?\",\"keyword\":null,\"description\":\"Tinh d\\u1ea7u n\\u01b0\\u1edbc hoa Dubai t\\u1ea1i HT Market l\\u00e0 d\\u00f2ng n\\u01b0\\u1edbc hoa n\\u1ed5i ti\\u1ebfng v\\u1edbi m\\u00f9i h\\u01b0\\u01a1ng si\\u00eau quy\\u1ebfn r\\u0169...\",\"content\":\"<header>\\r\\n<h1>Tinh d\\u1ea7u n\\u01b0\\u1edbc hoa Dubai gi&aacute; bao nhi&ecirc;u? c&oacute; \\u0111\\u1eaft kh&ocirc;ng?<\\/h1>\\r\\n<\\/header>\\r\\n\\r\\n<p>Tinh d\\u1ea7u n\\u01b0\\u1edbc hoa Dubai t\\u1ea1i HT Market l&agrave; d&ograve;ng n\\u01b0\\u1edbc hoa n\\u1ed5i ti\\u1ebfng v\\u1edbi m&ugrave;i h\\u01b0\\u01a1ng si&ecirc;u quy\\u1ebfn r\\u0169 c&ugrave;ng \\u0111\\u1ed9 l\\u01b0u h\\u01b0\\u01a1ng l&acirc;u khi\\u1ebfn nhi\\u1ec1u ng\\u01b0\\u1eddi say \\u0111\\u1eafm. Tinh d\\u1ea7u n\\u01b0\\u1edbc hoa Dubai gi&aacute; bao nhi&ecirc;u? C&oacute; \\u0111\\u1eaft kh&ocirc;ng? L&agrave; nh\\u1eefng c&acirc;u h\\u1ecfi m&agrave; nhi\\u1ec1u ng\\u01b0\\u1eddi \\u0111ang ph&acirc;n v&acirc;n.<\\/p>\\r\\n\\r\\n<p><img alt=\\\"tinh dau dubai gia bao nhieu\\\" height=\\\"600\\\" loading=\\\"lazy\\\" sizes=\\\"(max-width: 800px) 100vw, 800px\\\" src=\\\"https:\\/\\/hungthinhmart.com\\/wp-content\\/uploads\\/2017\\/12\\/tinh-dau-nuoc-hoa-dubai-gia-bao-nhieu.jpg\\\" srcset=\\\"https:\\/\\/hungthinhmart.com\\/wp-content\\/uploads\\/2017\\/12\\/tinh-dau-nuoc-hoa-dubai-gia-bao-nhieu.jpg 800w, https:\\/\\/hungthinhmart.com\\/wp-content\\/uploads\\/2017\\/12\\/tinh-dau-nuoc-hoa-dubai-gia-bao-nhieu-510x383.jpg 510w, https:\\/\\/hungthinhmart.com\\/wp-content\\/uploads\\/2017\\/12\\/tinh-dau-nuoc-hoa-dubai-gia-bao-nhieu-400x300.jpg 400w, https:\\/\\/hungthinhmart.com\\/wp-content\\/uploads\\/2017\\/12\\/tinh-dau-nuoc-hoa-dubai-gia-bao-nhieu-768x576.jpg 768w\\\" width=\\\"800\\\" \\/><\\/p>\\r\\n\\r\\n<p><strong>\\u0110\\u1eb3ng c\\u1ea5p tinh d\\u1ea7u n\\u01b0\\u1edbc hoa Dubai t\\u1ea1i&nbsp;HT Market<\\/strong><br \\/>\\r\\nTinh d\\u1ea7u n\\u01b0\\u1edbc hoa Dubai l&agrave; m\\u1ed9t trong nh\\u1eefng d&ograve;ng n\\u01b0\\u1edbc hoa \\u0111ang hot nh\\u1ea5t tr&ecirc;n th\\u1ecb tr\\u01b0\\u1eddng hi\\u1ec7n nay. V\\u1edbi tinh ch\\u1ea5t n\\u01b0\\u1edbc hoa k\\u1ebft h\\u1ee3p v\\u1edbi tinh d\\u1ea7u c\\u1ee7a c&aacute;c h\\u01b0\\u01a1ng li\\u1ec7u t\\u1ef1 nhi&ecirc;n t\\u1ed5ng h\\u1ee3p c&ugrave;ng c&aacute;ch \\u0111i\\u1ec1u ch\\u1ebf \\u0111\\u1eb7c bi\\u1ec7t do ng\\u01b0\\u1eddi d&acirc;n Dubai s&aacute;ng ch\\u1ebf, ch\\u1ec9 m\\u1ed9t v&agrave;i gi\\u1ecdt tinh d\\u1ea7u th&ocirc;i c\\u0169ng \\u0111\\u1ee7 khi\\u1ebfn b\\u1ea1n v\\u1ea5n v\\u01b0\\u01a1ng m&atilde;i kh&ocirc;ng th\\u1ec3 n&agrave;o qu&ecirc;n \\u0111\\u01b0\\u1ee3c. Trong n\\u1ed9i dung tr\\u01b0\\u1edbc HT Market \\u0111&atilde; chia s\\u1ebb cho c&aacute;c b\\u1ea1n b&agrave;i vi\\u1ebft Tinh D\\u1ea7u N\\u01b0\\u1edbc Hoa Dubai Hot Nh\\u1ea5t Hi\\u1ec7n Nay d&agrave;nh cho nh\\u1eefng ai ch\\u01b0a bi\\u1ebft v\\u1ec1 th\\u01b0\\u01a1ng hi\\u1ec7u n&agrave;y. H&ocirc;m nay, ch&uacute;ng t&ocirc;i s\\u1ebd gi\\u1ea3i \\u0111&aacute;p th\\u1eafc m\\u1eafc tinh d\\u1ea7u n\\u01b0\\u1edbc hoa Dubai gi&aacute; bao nhi&ecirc;u? c&oacute; \\u0111\\u1eaft kh&ocirc;ng \\u0111\\u1ec3 c&aacute;c b\\u1ea1n c&oacute; th&ecirc;m ki\\u1ebfn th\\u1ee9c v\\u1ec1 lo\\u1ea1i n\\u01b0\\u1edbc hoa n&agrave;y nh&eacute;!<\\/p>\\r\\n\\r\\n<p><img alt=\\\"tinh dau nuoc hoa dubai gia phai chang\\\" height=\\\"600\\\" loading=\\\"lazy\\\" sizes=\\\"(max-width: 800px) 100vw, 800px\\\" src=\\\"https:\\/\\/hungthinhmart.com\\/wp-content\\/uploads\\/2017\\/12\\/tinh-dau-nuoc-hoa-dubai-gia-phai-chang.jpg\\\" srcset=\\\"https:\\/\\/hungthinhmart.com\\/wp-content\\/uploads\\/2017\\/12\\/tinh-dau-nuoc-hoa-dubai-gia-phai-chang.jpg 800w, https:\\/\\/hungthinhmart.com\\/wp-content\\/uploads\\/2017\\/12\\/tinh-dau-nuoc-hoa-dubai-gia-phai-chang-510x383.jpg 510w, https:\\/\\/hungthinhmart.com\\/wp-content\\/uploads\\/2017\\/12\\/tinh-dau-nuoc-hoa-dubai-gia-phai-chang-400x300.jpg 400w, https:\\/\\/hungthinhmart.com\\/wp-content\\/uploads\\/2017\\/12\\/tinh-dau-nuoc-hoa-dubai-gia-phai-chang-768x576.jpg 768w\\\" width=\\\"800\\\" \\/><\\/p>\\r\\n\\r\\n<p><strong>Tinh d\\u1ea7u n\\u01b0\\u1edbc hoa Dubai gi&aacute; c\\u1ea3 r\\u1ea5t ph\\u1ea3i ch\\u0103ng, ph&ugrave; h\\u1ee3p t&uacute;i ti\\u1ec1n c\\u1ee7a m\\u1ecdi ng\\u01b0\\u1eddi<\\/strong><br \\/>\\r\\nN&oacute;i v\\u1ec1 gi&aacute; c\\u1ea3, \\u0111\\u1ec3 s\\u1edf h\\u1eefu m\\u1ed9t chai n\\u01b0\\u1edbc hoa ch&iacute;nh h&atilde;ng, ch\\u1ea5t l\\u01b0\\u1ee3ng c\\u1ee7a nh\\u1eefng th\\u01b0\\u01a1ng hi\\u1ec7u n\\u1ed5i ti\\u1ebfng nh\\u01b0 Chanel, Gucci, Armani, Burberry,&hellip;b\\u1ea1n ph\\u1ea3i b\\u1ecf ra h&agrave;ng tri\\u1ec7u \\u0111\\u1ebfn h&agrave;ng ch\\u1ee5c tri\\u1ec7u \\u0111\\u1ed3ng cho m\\u1ed9t chai 20ml, 50ml \\u0111\\u1ebfn 100ml,&hellip;Nh\\u01b0ng, b\\u1ea1n ch\\u1ec9 c\\u1ea7n b\\u1ecf ra ch\\u1ec9 ch\\u01b0a t\\u1edbi &frac14; s\\u1ed1 ti\\u1ec1n n&agrave;y cho m\\u1ed9t chai tinh d\\u1ea7u n\\u01b0\\u1edbc hoa Dubai ch&iacute;nh h&atilde;ng v\\u1edbi m&ugrave;i h\\u01b0\\u01a1ng tuy\\u1ec7t \\u0111\\u1ed1i kh&ocirc;ng kh&aacute;c bi\\u1ec7t g&igrave; so v\\u1edbi nh\\u1eefng s\\u1ea3n ph\\u1ea9m n\\u1ed5i ti\\u1ebfng tr&ecirc;n. Q&uacute;a r\\u1ebb ph\\u1ea3i kh&ocirc;ng n&agrave;o?<br \\/>\\r\\nLi\\u1ec7u c&oacute; ch&iacute;nh x&aacute;c nh\\u01b0 v\\u1eady kh&ocirc;ng? T\\u1ea1i sao c&ugrave;ng m&ugrave;i h\\u01b0\\u01a1ng m&agrave; gi&aacute; c\\u1ea3 l\\u1ea1i kh&aacute;c nhau? S\\u1edf d\\u0129 c&oacute; s\\u1ef1 gi\\u1ed1ng nhau nh\\u01b0ng kh&aacute;c bi\\u1ec7t v\\u1ec1 gi&aacute; c\\u1ea3 l&agrave; do c&aacute;c th\\u01b0\\u01a1ng hi\\u1ec7u n\\u1ed5i ti\\u1ebfng h\\u1ecd d&ugrave;ng th\\u01b0\\u01a1ng hi\\u1ec7u v&agrave; \\u0111\\u1ed9 n\\u1ed5i ti\\u1ebfng c\\u1ee7a m&igrave;nh \\u0111\\u1ec3 n&acirc;ng gi&aacute; b&aacute;n, nh\\u1eafm v&agrave;o c&aacute;c kh&aacute;ch h&agrave;ng ti\\u1ec1m n\\u0103ng nh\\u01b0 tri\\u1ec7u ph&uacute;, ca s\\u0129, di\\u1ec5n vi&ecirc;n h\\u1ea1ng A v&agrave; nh\\u1eefng ng\\u01b0\\u1eddi mu\\u1ed1n th\\u1ec3 hi\\u1ec7n \\u0111\\u1eb3ng c\\u1ea5p c\\u1ee7a m&igrave;nh. Ri&ecirc;ng v\\u1edbi tinh d\\u1ea7u n\\u01b0\\u1edbc hoa Dubai, \\u0111&acirc;y l&agrave; s\\u1ea3n ph\\u1ea9m \\u0111\\u01b0\\u1ee3c tinh ch\\u1ebf t\\u1eeb Dubai, m\\u1ed9t qu\\u1ed1c gia c&oacute; kh&iacute; h\\u1eadu n&oacute;ng quanh n\\u0103m.<\\/p>\\r\\n\\r\\n<p><img alt=\\\"tinh d\\u1ea7u n\\u01b0\\u1edbc hoa dubai gi\\u00e1 r\\u1ebb\\\" height=\\\"600\\\" loading=\\\"lazy\\\" sizes=\\\"(max-width: 800px) 100vw, 800px\\\" src=\\\"https:\\/\\/hungthinhmart.com\\/wp-content\\/uploads\\/2017\\/12\\/tinh-dau-nuoc-hoa-dubai-gia-re.jpg\\\" srcset=\\\"https:\\/\\/hungthinhmart.com\\/wp-content\\/uploads\\/2017\\/12\\/tinh-dau-nuoc-hoa-dubai-gia-re.jpg 800w, https:\\/\\/hungthinhmart.com\\/wp-content\\/uploads\\/2017\\/12\\/tinh-dau-nuoc-hoa-dubai-gia-re-510x383.jpg 510w, https:\\/\\/hungthinhmart.com\\/wp-content\\/uploads\\/2017\\/12\\/tinh-dau-nuoc-hoa-dubai-gia-re-400x300.jpg 400w, https:\\/\\/hungthinhmart.com\\/wp-content\\/uploads\\/2017\\/12\\/tinh-dau-nuoc-hoa-dubai-gia-re-768x576.jpg 768w\\\" width=\\\"800\\\" \\/><\\/p>\\r\\n\\r\\n<p><strong>\\u0110\\u1ed9 l\\u01b0u h\\u01b0\\u01a1ng l&ecirc;n \\u0111\\u1ebfn 2 ng&agrave;y &ndash; \\u0111&oacute; l&agrave; \\u0111i\\u1ec1u kh&ocirc;ng s\\u1ea3n ph\\u1ea9m n&agrave;o c&oacute; th\\u1ec3 s&aacute;nh \\u0111\\u01b0\\u1ee3c<\\/strong><br \\/>\\r\\nV\\u1edbi \\u0111i\\u1ec1u ki\\u1ec7n th\\u1eddi ti\\u1ebft n&agrave;y, ng\\u01b0\\u1eddi d&acirc;n Dubai lu&ocirc;n ph\\u1ea3i c&oacute; m\\u1ed9t chai n\\u01b0\\u1edbc hoa trong ng\\u01b0\\u1eddi \\u0111\\u1ec3 s\\u1eed d\\u1ee5ng nh\\u1eb1m kh\\u1eed m&ugrave;i m\\u1ed3 h&ocirc;i c\\u0169ng nh\\u01b0 \\u0111em \\u0111\\u1ebfn h\\u01b0\\u01a1ng th\\u01a1m v&agrave; s\\u1ef1 t\\u1ef1 tin cho m\\u1ed7i ng\\u01b0\\u1eddi. L&agrave; s\\u1ea3n ph\\u1ea9m b\\u1ea5t k\\u1ef3 ng\\u01b0\\u1eddi d&acirc;n Dubai n&agrave;o c\\u0169ng c&oacute; th\\u1ec3 s\\u1edf h\\u1eefu n&ecirc;n gi&aacute; c&aacute; cho m\\u1ed7i chai tinh d\\u1ea7u n\\u01b0\\u1edbc hoa ch\\u1eafc ch\\u1eafn r\\u1ebb h\\u01a1n so v\\u1edbi c&aacute;c th\\u01b0\\u01a1ng hi\\u1ec7u n\\u1ed5i ti\\u1ebfng. Tuy nhi&ecirc;n v\\u1ec1 h\\u01b0\\u01a1ng th\\u01a1m v&agrave; \\u0111\\u1ed9 l\\u01b0u h\\u01b0\\u01a1ng th&igrave; kh&ocirc;ng lo\\u1ea1i n\\u01b0\\u1edbc hoa n&agrave;o c&oacute; th\\u1ec3 s&aacute;nh b\\u1eb1ng. Kh&ocirc;ng tin b\\u1ea1n c&oacute; th\\u1ec3 th\\u1eed s\\u1eed d\\u1ee5ng 2,3 gi\\u1ecdt v&agrave;o c\\u1ed5 tay v&agrave; ho\\u1ea1t \\u0111\\u1ed9ng c\\u1ea3 ng&agrave;y, m&ugrave;i h\\u01b0\\u01a1ng v\\u1eabn dai d\\u1eb3ng theo b\\u1ea1n \\u0111\\u1ebfn t\\u1eadn ng&agrave;y h&ocirc;m sau, d&ugrave; b\\u1ea1n c&oacute; r\\u1eeda hay \\u0111&atilde; t\\u1eafm th&igrave; m&ugrave;i th\\u01a1m v\\u1eabn qu\\u1ea5n qu&yacute;t xung quanh b\\u1ea1n.<\\/p>\\r\\n\\r\\n<p>Tinh d\\u1ea7u n\\u01b0\\u1edbc hoa Dubai gi&aacute; bao nhi&ecirc;u c&oacute; th\\u1ec3 gi&aacute; kh&aacute;c nhau t&ugrave;y v&agrave;o m&ugrave;i h\\u01b0\\u01a1ng, m\\u1eabu m&atilde; chai l\\u1ecd v&agrave; \\u0111\\u1ed9 tinh ch\\u1ea5t. Th\\u01b0\\u1eddng m\\u1ee9c gi&aacute; m&agrave; c&aacute;c c\\u1eeda h&agrave;ng m\\u1ef9 ph\\u1ea9m hay c&aacute;c shop n\\u01b0\\u1edbc hoa \\u0111\\u01b0a ra kh&ocirc;ng ch&ecirc;nh l\\u1ec7ch nhi\\u1ec1u so v\\u1edbi gi&aacute; g\\u1ed1c, s\\u1ed1 ch&ecirc;nh l\\u1ec7ch \\u0111&oacute; l&agrave; ti\\u1ec1n m&agrave; h\\u1ecd \\u0111i l\\u1ea5y h&agrave;ng, ki\\u1ec3m \\u0111\\u1ecbnh, \\u0111&oacute;ng g&oacute;i v&agrave; v\\u1eadn chuy\\u1ec3n \\u0111\\u1ebfn tay b\\u1ea1n, do \\u0111&oacute; b\\u1ea1n v\\u1eabn s\\u1edf h\\u1eefu cho m&igrave;nh m\\u1ed9t chai tinh d\\u1ea7u n\\u01b0\\u1edbc hoa \\u0111\\u1eb3ng c\\u1ea5p v\\u1edbi gi&aacute; v&ocirc; c&ugrave;ng ph\\u1ea3i ch\\u0103ng.<\\/p>\\r\\n\\r\\n<p>&nbsp;<\\/p>\\r\\n\\r\\n<p><img alt=\\\"Tinh d\\u1ea7u n\\u01b0\\u1edbc hoa \\u0111\\u1eb3ng c\\u1ea5p v\\u1edbi gi\\u00e1 r\\u1ebb\\\" height=\\\"600\\\" loading=\\\"lazy\\\" sizes=\\\"(max-width: 800px) 100vw, 800px\\\" src=\\\"https:\\/\\/hungthinhmart.com\\/wp-content\\/uploads\\/2017\\/12\\/tinh-dau-nuoc-hoa-dubai-gia-tot.jpg\\\" srcset=\\\"https:\\/\\/hungthinhmart.com\\/wp-content\\/uploads\\/2017\\/12\\/tinh-dau-nuoc-hoa-dubai-gia-tot.jpg 800w, https:\\/\\/hungthinhmart.com\\/wp-content\\/uploads\\/2017\\/12\\/tinh-dau-nuoc-hoa-dubai-gia-tot-510x383.jpg 510w, https:\\/\\/hungthinhmart.com\\/wp-content\\/uploads\\/2017\\/12\\/tinh-dau-nuoc-hoa-dubai-gia-tot-400x300.jpg 400w, https:\\/\\/hungthinhmart.com\\/wp-content\\/uploads\\/2017\\/12\\/tinh-dau-nuoc-hoa-dubai-gia-tot-768x576.jpg 768w\\\" width=\\\"800\\\" \\/><\\/p>\\r\\n\\r\\n<p>&nbsp;<\\/p>\\r\\n\\r\\n<p><strong>S\\u1edf h\\u1eefu ngay m\\u1ed9t chai tinh d\\u1ea7u n\\u01b0\\u1edbc hoa \\u0111\\u1eb3ng c\\u1ea5p v\\u1edbi gi&aacute; r\\u1ebb nh\\u1ea5t tr&ecirc;n th\\u1ecb tr\\u01b0\\u1eddng t\\u1ea1i&nbsp;HT Market<\\/strong><br \\/>\\r\\nCh&iacute;nh v&igrave; v\\u1eady, t&ugrave;y t\\u1eebng c\\u1eeda h&agrave;ng v&agrave; showroom v&agrave; \\u0111\\u1ecba ch\\u1ec9 b&aacute;n tinh d\\u1ea7u n\\u01b0\\u1edbc hoa Dubai m&agrave; m\\u1ee9c gi&aacute; c\\u1ee7a c&aacute;c lo\\u1ea1i n\\u01b0\\u1edbc hoa n&agrave;y c&oacute; m\\u1ee9c gi&aacute; ch&ecirc;nh nhau t\\u1eeb 100 &ndash; 300 ng&agrave;n cho m\\u1ed9t l\\u1ecd so v\\u1edbi gi&aacute; g\\u1ed1c t\\u1eeb nh&agrave; s\\u1ea3n xu\\u1ea5t. T\\u1ea1i HT Market, m\\u1ee9c ch&ecirc;nh l\\u1ec7ch n&agrave;y r\\u1ea5t th\\u1ea5p do ch&uacute;ng t&ocirc;i tr\\u1ef1c ti\\u1ebfp l\\u1ea5y h&agrave;ng v\\u1ec1, do v\\u1eady, khi c&oacute; nhu c\\u1ea7u mua lo\\u1ea1i tinh d\\u1ea7u n\\u01b0\\u1edbc hoa n&agrave;y, b\\u1ea1n n&ecirc;n \\u0111\\u1ebfn ngay HT Market \\u0111\\u1ec3 \\u0111\\u01b0\\u1ee3c t\\u01b0 v\\u1ea5n v&agrave; mua ngay m\\u1ed9t chai n\\u01b0\\u1edbc hoa v\\u1edbi gi&aacute; th\\u1ea5p nh\\u1ea5t tr&ecirc;n th\\u1ecb tr\\u01b0\\u1eddng nh&eacute;! \\u0110\\u1eb7c bi\\u1ec7t, \\u0111\\u1ed1i v\\u1edbi kh&aacute;ch l\\u1ea5y gi&aacute; s\\u1ec9 th&igrave; m\\u1ee9c gi&aacute; c&ograve;n th\\u1ea5p h\\u01a1n r\\u1ea5t nhi\\u1ec1u!<br \\/>\\r\\nTinh d\\u1ea7u n\\u01b0\\u1edbc hoa Dubai l&agrave; s\\u1ea3n ph\\u1ea9m r\\u1ea5t \\u0111\\u1eaft kh&aacute;ch v&agrave; th\\u01b0\\u1eddng ch\\u1ec9 trong m\\u1ed9t th\\u1eddi gian ng\\u1eafn l&agrave; s\\u1ebd r\\u01a1i v&agrave;o t&igrave;nh tr\\u1ea1ng h\\u1ebft h&agrave;ng nhanh ch&oacute;ng. B\\u1ea1n c&oacute; th\\u1ec3 tham kh\\u1ea3o m\\u1eabu v&agrave; gi&aacute; ngay t\\u1ea1i website https:\\/\\/hungthinhmart.com ho\\u1eb7c Facebook: https:\\/\\/www.facebook.com\\/hungthinhmart\\/ ho\\u1eb7c \\u0111\\u1ec3 l\\u1ea1i s\\u1ed1 \\u0111i\\u1ec7n tho\\u1ea1i b&ecirc;n d\\u01b0\\u1edbi \\u0111\\u1ec3 \\u0111\\u01b0\\u1ee3c ch&uacute;ng t&ocirc;i t\\u01b0 v\\u1ea5n s\\u1edbm nh\\u1ea5t nh&eacute;!<br \\/>\\r\\nHT Market &ndash; Chuy&ecirc;n s\\u1ec9 v&agrave; l\\u1ebb tinh d\\u1ea7u n\\u01b0\\u1edbc hoa Dubai ch&iacute;nh h&atilde;ng tr&ecirc;n to&agrave;n qu\\u1ed1c.<\\/p>\"}},\"alias\":\"tinh-dau-nuoc-hoa-dubai-gia-bao-nhieu\",\"image\":\"\\/data\\/content\\/blog_use.jpg\",\"sort\":\"0\",\"status\":\"on\",\"_token\":\"cuvrsUnPBGaV6fLzQkYVYjJEymcTeajJ2WUOP9oC\"}', '2022-01-14 17:05:04', '2022-01-14 17:05:04'),
(1000, 1, 'sc_admin/news', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36', '[]', '2022-01-14 17:05:04', '2022-01-14 17:05:04'),
(1001, 1, 'sc_admin/news/edit/6', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36', '[]', '2022-01-14 17:05:06', '2022-01-14 17:05:06'),
(1002, 1, 'sc_admin/uploads', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36', '{\"type\":\"content\"}', '2022-01-14 17:05:11', '2022-01-14 17:05:11'),
(1003, 1, 'sc_admin/uploads/folders', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36', '{\"working_dir\":null,\"type\":\"content\",\"_\":\"1642179912040\"}', '2022-01-14 17:05:12', '2022-01-14 17:05:12'),
(1004, 1, 'sc_admin/uploads/errors', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36', '{\"working_dir\":null,\"type\":\"content\",\"_\":\"1642179912041\"}', '2022-01-14 17:05:12', '2022-01-14 17:05:12'),
(1005, 1, 'sc_admin/uploads/jsonitems', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36', '{\"working_dir\":null,\"type\":\"content\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1642179912042\"}', '2022-01-14 17:05:12', '2022-01-14 17:05:12'),
(1006, 1, 'sc_admin/news/edit/6', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36', '{\"descriptions\":{\"vi\":{\"title\":\"Tinh d\\u1ea7u n\\u01b0\\u1edbc hoa Dubai gi\\u00e1 bao nhi\\u00eau?\",\"keyword\":null,\"description\":\"Tinh d\\u1ea7u n\\u01b0\\u1edbc hoa Dubai t\\u1ea1i HT Market l\\u00e0 d\\u00f2ng n\\u01b0\\u1edbc hoa n\\u1ed5i ti\\u1ebfng v\\u1edbi m\\u00f9i h\\u01b0\\u01a1ng si\\u00eau quy\\u1ebfn r\\u0169...\",\"content\":\"<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<\\/p>\\r\\n\\r\\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<\\/p>\"}},\"alias\":\"demo-alias-blog-6\",\"image\":\"\\/data\\/content\\/blog_use.jpg\",\"sort\":\"0\",\"status\":\"on\",\"_token\":\"cuvrsUnPBGaV6fLzQkYVYjJEymcTeajJ2WUOP9oC\"}', '2022-01-14 17:05:16', '2022-01-14 17:05:16'),
(1007, 1, 'sc_admin/news', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36', '[]', '2022-01-14 17:05:16', '2022-01-14 17:05:16'),
(1008, 1, 'sc_admin/store_info', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36', '[]', '2022-01-14 17:06:49', '2022-01-14 17:06:49'),
(1009, 1, 'sc_admin/store_info', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36', '[]', '2022-01-14 17:07:19', '2022-01-14 17:07:19'),
(1010, 1, 'sc_admin/store_info', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36', '[]', '2022-01-14 17:07:28', '2022-01-14 17:07:28'),
(1011, 1, 'sc_admin/store_info', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36', '[]', '2022-01-14 17:07:31', '2022-01-14 17:07:31'),
(1012, 1, 'sc_admin/store_info', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36', '[]', '2022-01-14 17:07:37', '2022-01-14 17:07:37'),
(1013, 1, 'sc_admin/store_info', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36', '[]', '2022-01-14 17:13:20', '2022-01-14 17:13:20'),
(1014, 1, 'sc_admin/store_info', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36', '[]', '2022-01-14 17:13:57', '2022-01-14 17:13:57'),
(1015, 1, 'sc_admin/store_info', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36', '[]', '2022-01-14 17:14:23', '2022-01-14 17:14:23'),
(1016, 1, 'sc_admin/store_block', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36', '[]', '2022-01-14 17:14:35', '2022-01-14 17:14:35'),
(1017, 1, 'sc_admin/store_link', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36', '[]', '2022-01-14 17:14:40', '2022-01-14 17:14:40'),
(1018, 1, 'sc_admin/template', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36', '[]', '2022-01-14 17:14:46', '2022-01-14 17:14:46'),
(1019, 1, 'sc_admin/product', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36', '[]', '2022-01-14 17:14:59', '2022-01-14 17:14:59'),
(1020, 1, 'sc_admin/product', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36', '[]', '2022-01-14 17:15:05', '2022-01-14 17:15:05'),
(1021, 1, 'sc_admin/product', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36', '[]', '2022-01-14 17:15:14', '2022-01-14 17:15:14'),
(1022, 1, 'sc_admin/product', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36', '[]', '2022-01-14 17:15:26', '2022-01-14 17:15:26'),
(1023, 1, 'sc_admin/product', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36', '[]', '2022-01-14 17:15:28', '2022-01-14 17:15:28'),
(1024, 1, 'sc_admin/product', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36', '[]', '2022-01-14 17:15:31', '2022-01-14 17:15:31'),
(1025, 1, 'sc_admin/banner', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36', '[]', '2022-01-14 17:17:51', '2022-01-14 17:17:51'),
(1026, 1, 'sc_admin/banner', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36', '[]', '2022-01-14 17:19:58', '2022-01-14 17:19:58'),
(1027, 1, 'sc_admin/store_info', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36', '[]', '2022-01-14 17:20:26', '2022-01-14 17:20:26'),
(1028, 1, 'sc_admin/page', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36', '[]', '2022-01-14 17:20:36', '2022-01-14 17:20:36'),
(1029, 1, 'sc_admin/news', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36', '[]', '2022-01-14 17:20:39', '2022-01-14 17:20:39'),
(1030, 1, 'sc_admin/store_config', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36', '[]', '2022-01-14 17:20:43', '2022-01-14 17:20:43'),
(1031, 1, 'sc_admin/menu', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36', '[]', '2022-01-14 17:21:02', '2022-01-14 17:21:02'),
(1032, 1, 'sc_admin/menu/edit/29', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36', '[]', '2022-01-14 17:21:09', '2022-01-14 17:21:09'),
(1033, 1, 'sc_admin/product', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36', '[]', '2022-01-14 17:21:27', '2022-01-14 17:21:27'),
(1034, 1, 'sc_admin', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36', '[]', '2022-01-14 17:21:33', '2022-01-14 17:21:33'),
(1035, 1, 'sc_admin/page', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36', '[]', '2022-01-14 17:21:42', '2022-01-14 17:21:42'),
(1036, 1, 'sc_admin/product', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36', '[]', '2022-01-14 17:21:46', '2022-01-14 17:21:46'),
(1037, 1, 'sc_admin/auth/logout', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36', '[]', '2022-01-14 17:21:54', '2022-01-14 17:21:54'),
(1038, 1, 'sc_admin/store_info', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36', '[]', '2022-01-14 17:23:10', '2022-01-14 17:23:10'),
(1039, 1, 'sc_admin/store_info', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36', '[]', '2022-01-14 17:23:15', '2022-01-14 17:23:15'),
(1040, 1, 'sc_admin/store_config', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36', '[]', '2022-01-14 17:23:19', '2022-01-14 17:23:19'),
(1041, 1, 'sc_admin/store_config/update', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36', '{\"name\":\"ADMIN_NAME\",\"value\":\"HaMaiPerfume\",\"pk\":null,\"_token\":\"AJY1ijBgWBVSmBXEDJ1mKhSDXXUcHxdL2Yx3E2r9\",\"storeId\":\"1\"}', '2022-01-14 17:23:43', '2022-01-14 17:23:43'),
(1042, 1, 'sc_admin/store_config/update', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36', '{\"name\":\"ADMIN_TITLE\",\"value\":\"HaMaiPerfume\",\"pk\":null,\"_token\":\"AJY1ijBgWBVSmBXEDJ1mKhSDXXUcHxdL2Yx3E2r9\",\"storeId\":\"1\"}', '2022-01-14 17:23:46', '2022-01-14 17:23:46'),
(1043, 1, 'sc_admin/store_config/update', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36', '{\"name\":\"ADMIN_LOGO\",\"value\":\"HaMaiPerfume\",\"pk\":null,\"_token\":\"AJY1ijBgWBVSmBXEDJ1mKhSDXXUcHxdL2Yx3E2r9\",\"storeId\":\"1\"}', '2022-01-14 17:23:49', '2022-01-14 17:23:49'),
(1044, 1, 'sc_admin/auth/logout', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36', '[]', '2022-01-14 17:23:54', '2022-01-14 17:23:54'),
(1045, 1, 'sc_admin', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36', '[]', '2022-01-14 17:36:20', '2022-01-14 17:36:20'),
(1046, 1, 'sc_admin/banner', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36', '[]', '2022-01-14 17:41:19', '2022-01-14 17:41:19'),
(1047, 1, 'sc_admin/banner/edit/4', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36', '[]', '2022-01-14 17:41:21', '2022-01-14 17:41:21'),
(1048, 1, 'sc_admin/uploads', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36', '{\"type\":\"banner\"}', '2022-01-14 17:41:57', '2022-01-14 17:41:57'),
(1049, 1, 'sc_admin/uploads/folders', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36', '{\"working_dir\":null,\"type\":\"banner\",\"_\":\"1642182117612\"}', '2022-01-14 17:41:57', '2022-01-14 17:41:57'),
(1050, 1, 'sc_admin/uploads/errors', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36', '{\"working_dir\":null,\"type\":\"banner\",\"_\":\"1642182117613\"}', '2022-01-14 17:41:58', '2022-01-14 17:41:58'),
(1051, 1, 'sc_admin/uploads/jsonitems', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36', '{\"working_dir\":null,\"type\":\"banner\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1642182117614\"}', '2022-01-14 17:41:58', '2022-01-14 17:41:58'),
(1052, 1, 'sc_admin/banner/edit/4', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36', '{\"image\":\"\\/data\\/banner\\/slider1.jpg\",\"url\":null,\"title\":\"slider02\",\"target\":\"_self\",\"html\":\"<h4>TINH D\\u1ea6U N\\u01af\\u1edaC HOA DUBAI<\\/h4>\\r\\n<a href=\\\"{{ sc_route(\'shop\') }}\\\">C\\u1eeda h\\u00e0ng<\\/a>\",\"type\":\"background\",\"sort\":\"0\",\"status\":\"on\",\"_token\":\"92DvqLGyoMREZvkfOSaepTbIQrh1E3LGADAwD7g6\"}', '2022-01-14 17:41:59', '2022-01-14 17:41:59'),
(1053, 1, 'sc_admin/banner', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36', '[]', '2022-01-14 17:42:00', '2022-01-14 17:42:00'),
(1054, 1, 'sc_admin/banner/edit/4', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36', '[]', '2022-01-14 17:42:48', '2022-01-14 17:42:48'),
(1055, 1, 'sc_admin/banner/edit/4', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36', '{\"image\":\"\\/data\\/banner\\/slider1.jpg\",\"url\":null,\"title\":\"slider02\",\"target\":\"_self\",\"html\":\"<h4>TINH D\\u1ea6U N\\u01af\\u1edaC HOA DUBAI<\\/h4>\\r\\n<a href=\\\"\\/shop\\\">C\\u1eeda h\\u00e0ng<\\/a>\",\"type\":\"background\",\"sort\":\"0\",\"status\":\"on\",\"_token\":\"92DvqLGyoMREZvkfOSaepTbIQrh1E3LGADAwD7g6\"}', '2022-01-14 17:42:56', '2022-01-14 17:42:56'),
(1056, 1, 'sc_admin/banner', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36', '[]', '2022-01-14 17:42:56', '2022-01-14 17:42:56'),
(1057, 1, 'sc_admin/banner/edit/3', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36', '[]', '2022-01-14 17:43:18', '2022-01-14 17:43:18'),
(1058, 1, 'sc_admin/banner/edit/3', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36', '{\"image\":\"\\/data\\/banner\\/slider2.jpg\",\"url\":null,\"title\":\"slider01\",\"target\":\"_self\",\"html\":\"<h4>TINH D\\u1ea6U N\\u01af\\u1edaC HOA DUBAI<\\/h4>\\r\\n<a href=\\\"\\/shop\\\">C\\u1eeda h\\u00e0ng<\\/a>\",\"type\":\"background\",\"sort\":\"0\",\"status\":\"on\",\"_token\":\"92DvqLGyoMREZvkfOSaepTbIQrh1E3LGADAwD7g6\"}', '2022-01-14 17:43:26', '2022-01-14 17:43:26'),
(1059, 1, 'sc_admin/banner', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36', '[]', '2022-01-14 17:43:26', '2022-01-14 17:43:26'),
(1060, 1, 'sc_admin/banner/edit/4', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36', '[]', '2022-01-14 17:43:29', '2022-01-14 17:43:29'),
(1061, 1, 'sc_admin/banner/edit/4', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36', '{\"image\":\"\\/data\\/banner\\/slider1.jpg\",\"url\":null,\"title\":\"slider01\",\"target\":\"_self\",\"html\":\"<h4>TINH D\\u1ea6U N\\u01af\\u1edaC HOA DUBAI<\\/h4>\\r\\n<a href=\\\"\\/shop\\\">C\\u1eeda h\\u00e0ng<\\/a>\",\"type\":\"background\",\"sort\":\"0\",\"status\":\"on\",\"_token\":\"92DvqLGyoMREZvkfOSaepTbIQrh1E3LGADAwD7g6\"}', '2022-01-14 17:43:36', '2022-01-14 17:43:36'),
(1062, 1, 'sc_admin/banner', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36', '[]', '2022-01-14 17:43:36', '2022-01-14 17:43:36'),
(1063, 1, 'sc_admin/banner/edit/3', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36', '[]', '2022-01-14 17:43:38', '2022-01-14 17:43:38'),
(1064, 1, 'sc_admin/banner/edit/3', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36', '{\"image\":\"\\/data\\/banner\\/slider2.jpg\",\"url\":null,\"title\":\"slider02\",\"target\":\"_self\",\"html\":\"<h4>TINH D\\u1ea6U N\\u01af\\u1edaC HOA DUBAI<\\/h4>\\r\\n<a href=\\\"\\/shop\\\">C\\u1eeda h\\u00e0ng<\\/a>\",\"type\":\"background\",\"sort\":\"0\",\"status\":\"on\",\"_token\":\"92DvqLGyoMREZvkfOSaepTbIQrh1E3LGADAwD7g6\"}', '2022-01-14 17:43:43', '2022-01-14 17:43:43'),
(1065, 1, 'sc_admin/banner', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36', '[]', '2022-01-14 17:43:43', '2022-01-14 17:43:43'),
(1066, 1, 'sc_admin', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36', '[]', '2022-01-15 12:50:03', '2022-01-15 12:50:03'),
(1067, 1, 'sc_admin/category', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36', '[]', '2022-01-15 12:50:12', '2022-01-15 12:50:12'),
(1068, 1, 'sc_admin/product', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36', '[]', '2022-01-15 12:50:21', '2022-01-15 12:50:21'),
(1069, 1, 'sc_admin/banner', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36', '[]', '2022-01-15 12:50:31', '2022-01-15 12:50:31'),
(1070, 1, 'sc_admin/store_info', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36', '[]', '2022-01-15 12:50:53', '2022-01-15 12:50:53'),
(1071, 1, 'sc_admin/store_info/update_info', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36', '{\"name\":\"title__vi\",\"value\":\"HaMaiPerfumes\",\"pk\":null,\"_token\":\"RMuHFT9N7nIJhZdsEw2tdbrdaLI1AY7sEnaJs8s6\",\"storeId\":\"1\"}', '2022-01-15 12:50:58', '2022-01-15 12:50:58'),
(1072, 1, 'sc_admin/store_info/update_info', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36', '{\"name\":\"title__vi\",\"value\":\"HaMaiPerfume\",\"pk\":null,\"_token\":\"RMuHFT9N7nIJhZdsEw2tdbrdaLI1AY7sEnaJs8s6\",\"storeId\":\"1\"}', '2022-01-15 12:51:06', '2022-01-15 12:51:06'),
(1073, 1, 'sc_admin/category', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36', '[]', '2022-01-15 12:51:25', '2022-01-15 12:51:25'),
(1074, 1, 'sc_admin/product', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36', '[]', '2022-01-15 12:52:04', '2022-01-15 12:52:04'),
(1075, 1, 'sc_admin/product', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36', '{\"category_id\":\"18\",\"keyword\":null,\"_pjax\":\"#pjax-container\"}', '2022-01-15 12:52:38', '2022-01-15 12:52:38'),
(1076, 1, 'sc_admin/product', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36', '{\"category_id\":\"22\",\"keyword\":null,\"_pjax\":\"#pjax-container\"}', '2022-01-15 12:52:44', '2022-01-15 12:52:44'),
(1077, 1, 'sc_admin/order', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36', '[]', '2022-01-15 12:52:57', '2022-01-15 12:52:57'),
(1078, 1, 'sc_admin', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36', '[]', '2022-01-15 12:53:00', '2022-01-15 12:53:00'),
(1079, 1, 'sc_admin/order', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36', '[]', '2022-01-15 12:55:08', '2022-01-15 12:55:08'),
(1080, 1, 'sc_admin/order', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36', '{\"from_to\":\"2022-01-12\",\"end_to\":null,\"order_status\":null,\"email\":null,\"keyword\":null,\"_pjax\":\"#pjax-container\"}', '2022-01-15 12:55:23', '2022-01-15 12:55:23'),
(1081, 1, 'sc_admin/order', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36', '{\"from_to\":\"2022-01-12\",\"end_to\":\"2022-01-15\",\"order_status\":\"1\",\"email\":null,\"keyword\":null,\"_pjax\":\"#pjax-container\"}', '2022-01-15 12:55:34', '2022-01-15 12:55:34'),
(1082, 1, 'sc_admin/order', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36', '{\"from_to\":\"2022-01-12\",\"end_to\":\"2022-01-15\",\"order_status\":\"1\",\"email\":null,\"keyword\":null}', '2022-01-15 12:56:35', '2022-01-15 12:56:35'),
(1083, 1, 'sc_admin/order', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36', '{\"from_to\":\"2022-01-10\",\"end_to\":\"2022-01-15\",\"order_status\":\"1\",\"email\":null,\"keyword\":null,\"_pjax\":\"#pjax-container\"}', '2022-01-15 12:56:55', '2022-01-15 12:56:55'),
(1084, 1, 'sc_admin/order', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36', '{\"from_to\":\"2022-01-10\",\"end_to\":\"2022-01-15\",\"order_status\":\"1\",\"email\":null,\"keyword\":null}', '2022-01-15 12:57:00', '2022-01-15 12:57:00'),
(1085, 1, 'sc_admin/order', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36', '[]', '2022-01-15 12:57:14', '2022-01-15 12:57:14'),
(1086, 1, 'sc_admin/order', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36', '[]', '2022-01-15 12:57:32', '2022-01-15 12:57:32'),
(1087, 1, 'sc_admin/order/detail/5', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36', '[]', '2022-01-15 12:57:48', '2022-01-15 12:57:48'),
(1088, 1, 'sc_admin', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36', '[]', '2022-01-15 12:58:08', '2022-01-15 12:58:08'),
(1089, 1, 'sc_admin/store_info', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36', '[]', '2022-01-15 13:00:26', '2022-01-15 13:00:26');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sc_admin_menu`
--

CREATE TABLE `sc_admin_menu` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(11) NOT NULL DEFAULT 0,
  `sort` int(11) NOT NULL DEFAULT 0,
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `uri` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` int(11) NOT NULL DEFAULT 0,
  `hidden` int(11) NOT NULL DEFAULT 0,
  `key` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `sc_admin_menu`
--

INSERT INTO `sc_admin_menu` (`id`, `parent_id`, `sort`, `title`, `icon`, `uri`, `type`, `hidden`, `key`, `created_at`, `updated_at`) VALUES
(1, 6, 1, 'lang::admin.menu_titles.order_manager', 'fas fa-cart-arrow-down', '', 0, 0, 'ORDER_MANAGER', NULL, NULL),
(2, 6, 2, 'lang::admin.menu_titles.catalog_mamager', 'fas fa-folder-open', '', 0, 0, 'CATALOG_MANAGER', NULL, NULL),
(3, 25, 3, 'lang::admin.menu_titles.customer_manager', 'fas fa-users', '', 0, 0, 'CUSTOMER_MANAGER', NULL, NULL),
(4, 8, 201, 'lang::admin.menu_titles.template_layout', 'fab fa-windows', '', 0, 0, 'TEMPLATE', NULL, NULL),
(5, 9, 2, 'lang::admin.menu_titles.admin_global', 'fab fa-whmcs', '', 0, 0, 'CONFIG_SYSTEM', NULL, NULL),
(6, 0, 10, 'lang::admin.menu_titles.ADMIN_SHOP', 'fab fa-shopify', '', 0, 0, 'ADMIN_SHOP', NULL, NULL),
(7, 0, 100, 'lang::admin.menu_titles.ADMIN_CONTENT', 'fas fa-file-signature', '', 0, 0, 'ADMIN_CONTENT', NULL, NULL),
(8, 0, 300, 'lang::admin.menu_titles.ADMIN_EXTENSION', 'fas fa-th', '', 0, 0, 'ADMIN_EXTENSION', NULL, NULL),
(9, 0, 400, 'lang::admin.menu_titles.ADMIN_SYSTEM', 'fas fa-cogs', '', 0, 0, 'ADMIN_SYSTEM', NULL, NULL),
(10, 7, 102, 'lang::page.admin.title', 'fas fa-clone', 'admin::page', 0, 0, NULL, NULL, NULL),
(11, 27, 2, 'lang::shipping_status.admin.title', 'fas fa-truck', 'admin::shipping_status', 0, 0, NULL, NULL, NULL),
(12, 1, 3, 'lang::order.admin.title', 'fas fa-shopping-cart', 'admin::order', 0, 0, NULL, NULL, NULL),
(13, 27, 1, 'lang::order_status.admin.title', 'fas fa-asterisk', 'admin::order_status', 0, 0, NULL, NULL, NULL),
(14, 27, 3, 'lang::payment_status.admin.title', 'fas fa-recycle', 'admin::payment_status', 0, 0, NULL, NULL, NULL),
(15, 2, 0, 'lang::product.admin.title', 'far fa-file-image', 'admin::product', 0, 0, NULL, NULL, NULL),
(16, 2, 0, 'lang::category.admin.title', 'fas fa-folder-open', 'admin::category', 0, 0, NULL, NULL, NULL),
(17, 27, 4, 'lang::supplier.admin.title', 'fas fa-user-secret', 'admin::supplier', 0, 0, NULL, NULL, NULL),
(18, 27, 5, 'lang::brand.admin.title', 'fas fa-university', 'admin::brand', 0, 0, NULL, NULL, NULL),
(19, 27, 8, 'lang::attribute_group.admin.title', 'fas fa-bars', 'admin::attribute_group', 0, 0, NULL, NULL, NULL),
(20, 3, 0, 'lang::customer.admin.title', 'fas fa-user', 'admin::customer', 0, 0, NULL, NULL, NULL),
(21, 3, 0, 'lang::subscribe.admin.title', 'fas fa-user-circle', 'admin::subscribe', 0, 0, NULL, NULL, NULL),
(22, 67, 1, 'lang::store_block.admin.title', 'far fa-newspaper', 'admin::store_block', 0, 0, NULL, NULL, NULL),
(23, 67, 2, 'lang::admin.menu_titles.block_link', 'fab fa-chrome', 'admin::store_link', 0, 0, NULL, NULL, NULL),
(24, 4, 0, 'lang::admin.menu_titles.template_manager', 'fas fa-columns', 'admin::template', 0, 0, NULL, NULL, NULL),
(25, 0, 200, 'lang::admin.menu_titles.ADMIN_MARKETING', 'fas fa-sort-amount-up', '', 0, 0, 'MARKETING', NULL, NULL),
(26, 65, 1, 'lang::store.admin.title', 'fas fa-h-square', 'admin::store_info', 0, 0, NULL, NULL, NULL),
(27, 9, 3, 'lang::admin.menu_titles.setting_system', 'fas fa-tools', '', 0, 0, 'SETTING_SYSTEM', NULL, NULL),
(28, 9, 4, 'lang::admin.menu_titles.error_log', 'far fa-clone', '', 0, 0, '', NULL, NULL),
(29, 25, 0, 'lang::email_template.admin.title', 'fas fa-bars', 'admin::email_template', 0, 0, NULL, NULL, NULL),
(30, 9, 5, 'lang::admin.menu_titles.localisation', 'fab fa-shirtsinbulk', '', 0, 0, NULL, NULL, NULL),
(31, 30, 0, 'lang::language.admin.title', 'fas fa-language', 'admin::language', 0, 0, NULL, NULL, NULL),
(32, 30, 0, 'lang::currency.admin.title', 'far fa-money-bill-alt', 'admin::currency', 0, 0, NULL, NULL, NULL),
(33, 7, 101, 'lang::banner.admin.title', 'fas fa-image', 'admin::banner', 0, 0, NULL, NULL, NULL),
(34, 5, 5, 'lang::backup.admin.title', 'fas fa-save', 'admin::backup', 0, 0, NULL, NULL, NULL),
(35, 8, 202, 'lang::admin.menu_titles.plugins', 'fas fa-puzzle-piece', '', 0, 0, 'PLUGIN', NULL, NULL),
(36, 28, 2, 'lang::admin.menu_titles.webhook', 'fab fa-diaspora', 'admin::config/webhook', 0, 0, NULL, NULL, NULL),
(37, 25, 5, 'lang::admin.menu_titles.report_manager', 'fas fa-chart-pie', '', 0, 0, 'REPORT_MANAGER', NULL, NULL),
(38, 9, 1, 'lang::admin.menu_titles.user_permission', 'fas fa-users-cog', '', 0, 0, 'ADMIN', NULL, NULL),
(39, 35, 0, 'plugin.Payment', 'far fa-money-bill-alt', 'admin::plugin/payment', 0, 0, NULL, NULL, NULL),
(40, 35, 0, 'plugin.Shipping', 'fas fa-ambulance', 'admin::plugin/shipping', 0, 0, NULL, NULL, NULL),
(41, 35, 0, 'plugin.Total', 'fas fa-cog', 'admin::plugin/total', 0, 0, NULL, NULL, NULL),
(42, 35, 100, 'plugin.Other', 'far fa-circle', 'admin::plugin/other', 0, 0, NULL, NULL, NULL),
(43, 35, 0, 'plugin.Cms', 'fab fa-modx', 'admin::plugin/cms', 0, 0, NULL, NULL, NULL),
(44, 67, 2, 'lang::admin.menu_titles.css', 'far fa-file-code', 'admin::store_css', 0, 0, NULL, NULL, NULL),
(45, 25, 4, 'lang::admin.menu_titles.seo_manager', 'fab fa-battle-net', '', 0, 0, 'SEO_MANAGER', NULL, NULL),
(46, 38, 0, 'lang::admin.menu_titles.users', 'fas fa-users', 'admin::user', 0, 0, NULL, NULL, NULL),
(47, 38, 0, 'lang::admin.menu_titles.roles', 'fas fa-user-tag', 'admin::role', 0, 0, NULL, NULL, NULL),
(48, 38, 0, 'lang::admin.menu_titles.permission', 'fas fa-ban', 'admin::permission', 0, 0, NULL, NULL, NULL),
(49, 5, 0, 'lang::admin.menu_titles.menu', 'fas fa-bars', 'admin::menu', 0, 0, NULL, NULL, NULL),
(50, 28, 0, 'lang::admin.menu_titles.operation_log', 'fas fa-history', 'admin::log', 0, 0, NULL, NULL, NULL),
(51, 45, 0, 'lang::admin.menu_titles.seo_config', 'fas fa-bars', 'admin::seo/config', 0, 0, NULL, NULL, NULL),
(52, 7, 103, 'lang::news.admin.title', 'far fa-file-powerpoint', 'admin::news', 0, 0, NULL, NULL, NULL),
(53, 5, 0, 'lang::admin.menu_titles.env_config', 'fas fa-tasks', 'admin::env/config', 0, 0, NULL, NULL, NULL),
(54, 37, 0, 'lang::admin.menu_titles.report_product', 'fas fa-bars', 'admin::report/product', 0, 0, NULL, NULL, NULL),
(57, 65, 2, 'lang::admin.menu_titles.store_config', 'fas fa-cog', 'admin::store_config', 0, 0, NULL, NULL, NULL),
(58, 5, 5, 'lang::admin.menu_titles.cache_manager', 'fab fa-tripadvisor', 'admin::cache_config', 0, 0, NULL, NULL, NULL),
(59, 9, 7, 'lang::admin.menu_titles.api_manager', 'fas fa-plug', '', 0, 0, 'API_MANAGER', NULL, NULL),
(60, 65, 3, 'lang::store_maintain.config_manager.title', 'fas fa-wrench', 'admin::store_maintain', 0, 0, NULL, NULL, NULL),
(61, 27, 9, 'lang::tax.admin.admin_title', 'far fa-calendar-minus', 'admin::tax', 0, 0, NULL, NULL, NULL),
(62, 27, 6, 'lang::weight.admin.title', 'fas fa-balance-scale', 'admin::weight_unit', 0, 0, NULL, NULL, NULL),
(63, 27, 7, 'lang::length.admin.title', 'fas fa-minus', 'admin::length_unit', 0, 0, NULL, NULL, NULL),
(65, 0, 250, 'lang::admin.menu_titles.ADMIN_SHOP_SETTING', 'fas fa-store-alt', '', 0, 0, 'ADMIN_SHOP_SETTING', NULL, NULL),
(66, 59, 1, 'lang::admin.menu_titles.api_config', 'fas fa fa-cog', 'admin::api_connection', 0, 0, NULL, NULL, NULL),
(67, 65, 5, 'lang::admin.menu_titles.layout', 'far fa-object-group', '', 0, 0, NULL, NULL, NULL),
(68, 27, 5, 'lang::custom_field.admin.title', 'fa fa-american-sign-language-interpreting', 'admin::custom_field', 0, 0, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sc_admin_permission`
--

CREATE TABLE `sc_admin_permission` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `http_uri` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `sc_admin_permission`
--

INSERT INTO `sc_admin_permission` (`id`, `name`, `slug`, `http_uri`, `created_at`, `updated_at`) VALUES
(1, 'Auth manager', 'auth.full', 'ANY::sc_admin/auth/*', '2022-01-12 13:04:06', NULL),
(2, 'Dashboard', 'dashboard', 'GET::sc_admin', '2022-01-12 13:04:06', NULL),
(3, 'Base setting', 'base.setting', 'ANY::sc_admin/order_status/*,ANY::sc_admin/shipping_status/*,ANY::sc_admin/payment_status/*,ANY::sc_admin/supplier/*,ANY::sc_admin/brand/*,ANY::sc_admin/custom_field/*,ANY::sc_admin/weight_unit/*,ANY::sc_admin/length_unit/*,ANY::sc_admin/attribute_group/*,ANY::sc_admin/tax/*', '2022-01-12 13:04:06', NULL),
(4, 'Store manager', 'store.full', 'ANY::sc_admin/store_info/*,ANY::sc_admin/store_maintain/*,ANY::sc_admin/store_config/*,ANY::sc_admin/store_css/*,ANY::sc_admin/store_block/*,ANY::sc_admin/store_link/*', '2022-01-12 13:04:06', NULL),
(5, 'Product manager', 'product.full', 'ANY::sc_admin/product/*,ANY::sc_admin/product_property/*,ANY::sc_admin/product_tag/*', '2022-01-12 13:04:06', NULL),
(6, 'Category manager', 'category.full', 'ANY::sc_admin/category/*', '2022-01-12 13:04:06', NULL),
(7, 'Order manager', 'order.full', 'ANY::sc_admin/order/*', '2022-01-12 13:04:06', NULL),
(8, 'Upload management', 'upload.full', 'ANY::sc_admin/uploads/*', '2022-01-12 13:04:06', NULL),
(9, 'Extension manager', 'extension.full', 'ANY::sc_admin/template/*,ANY::sc_admin/plugin/*', '2022-01-12 13:04:06', NULL),
(10, 'Marketing manager', 'marketing.full', 'ANY::sc_admin/shop_discount/*,ANY::sc_admin/email_template/*,ANY::sc_admin/customer/*,ANY::sc_admin/subscribe/*,ANY::sc_admin/seo/*', '2022-01-12 13:04:06', NULL),
(11, 'Report manager', 'report.full', 'ANY::sc_admin/report/*', '2022-01-12 13:04:06', NULL),
(12, 'CMS manager', 'cms.full', 'ANY::sc_admin/page/*,ANY::sc_admin/banner/*,ANY::sc_admin/banner_type/*, ANY::sc_admin/cms_category/*,ANY::sc_admin/cms_content/*,ANY::sc_admin/news/*', '2022-01-12 13:04:06', NULL),
(13, 'Update config', 'change.config', 'POST::sc_admin/store_config/update', '2022-01-12 13:04:06', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sc_admin_role`
--

CREATE TABLE `sc_admin_role` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `sc_admin_role`
--

INSERT INTO `sc_admin_role` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Administrator', 'administrator', '2022-01-12 13:04:06', NULL),
(2, 'Group only View', 'view.all', '2022-01-12 13:04:06', NULL),
(3, 'Manager', 'manager', '2022-01-12 13:04:06', NULL),
(4, 'CMS', 'cms', '2022-01-12 13:04:06', NULL),
(5, 'Accountant', 'accountant', '2022-01-12 13:04:06', NULL),
(6, 'Marketing', 'maketing', '2022-01-12 13:04:06', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sc_admin_role_permission`
--

CREATE TABLE `sc_admin_role_permission` (
  `role_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `sc_admin_role_permission`
--

INSERT INTO `sc_admin_role_permission` (`role_id`, `permission_id`, `created_at`, `updated_at`) VALUES
(3, 1, '2022-01-12 13:04:06', NULL),
(3, 2, '2022-01-12 13:04:06', NULL),
(3, 3, '2022-01-12 13:04:06', NULL),
(3, 4, '2022-01-12 13:04:06', NULL),
(3, 5, '2022-01-12 13:04:06', NULL),
(3, 6, '2022-01-12 13:04:06', NULL),
(3, 7, '2022-01-12 13:04:06', NULL),
(3, 8, '2022-01-12 13:04:06', NULL),
(3, 9, '2022-01-12 13:04:06', NULL),
(3, 10, '2022-01-12 13:04:06', NULL),
(3, 11, '2022-01-12 13:04:06', NULL),
(3, 12, '2022-01-12 13:04:06', NULL),
(3, 13, '2022-01-12 13:04:06', NULL),
(4, 1, '2022-01-12 13:04:06', NULL),
(4, 12, '2022-01-12 13:04:06', NULL),
(5, 1, '2022-01-12 13:04:06', NULL),
(5, 2, '2022-01-12 13:04:06', NULL),
(5, 7, '2022-01-12 13:04:06', NULL),
(5, 11, '2022-01-12 13:04:06', NULL),
(6, 1, '2022-01-12 13:04:06', NULL),
(6, 2, '2022-01-12 13:04:06', NULL),
(6, 8, '2022-01-12 13:04:06', NULL),
(6, 10, '2022-01-12 13:04:06', NULL),
(6, 11, '2022-01-12 13:04:06', NULL),
(6, 12, '2022-01-12 13:04:06', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sc_admin_role_user`
--

CREATE TABLE `sc_admin_role_user` (
  `role_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `sc_admin_role_user`
--

INSERT INTO `sc_admin_role_user` (`role_id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sc_admin_store`
--

CREATE TABLE `sc_admin_store` (
  `id` int(10) UNSIGNED NOT NULL,
  `logo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `long_phone` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `time_active` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(300) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `office` varchar(300) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `warehouse` varchar(300) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `template` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `domain` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `partner` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `code` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `language` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `timezone` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `currency` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1 COMMENT '0:Lock, 1: unlock',
  `active` int(11) NOT NULL DEFAULT 1 COMMENT '0:Maintain, 1: Active'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `sc_admin_store`
--

INSERT INTO `sc_admin_store` (`id`, `logo`, `phone`, `long_phone`, `email`, `time_active`, `address`, `office`, `warehouse`, `template`, `domain`, `partner`, `code`, `language`, `timezone`, `currency`, `status`, `active`) VALUES
(1, '/data/logo/Untitled-1.png', '099999999999', 'Support: 0987654321', 'admin@admin', '', 'Quyết thắng-TP thái nguyên', NULL, NULL, 'maihanperfume_template', 'localhost/maihanperfume/public', '0', 'root', 'vi', 'Asia/Ho_Chi_Minh', 'USD', 1, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sc_admin_store_description`
--

CREATE TABLE `sc_admin_store_description` (
  `store_id` int(11) NOT NULL,
  `lang` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(300) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `keyword` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `maintain_content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `maintain_note` varchar(300) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `sc_admin_store_description`
--

INSERT INTO `sc_admin_store_description` (`store_id`, `lang`, `title`, `description`, `keyword`, `maintain_content`, `maintain_note`) VALUES
(1, 'en', 'HaMai Perfume', 'Cập nhật những mẫu nước hoa và tinh dầu Dubai xách tay đang khuyến mãi!', '', '<center><img src=\"/images/maintenance.png\" />\n    <h3><span style=\"color:#e74c3c;\"><strong>Sorry! We are currently doing site maintenance!</strong></span></h3>\n    </center>', 'Website is in maintenance mode!'),
(1, 'vi', 'HaMaiPerfume', 'Cập nhật những mẫu nước hoa và tinh dầu Dubai xách tay đang khuyến mãi!', '', '<center><img src=\"/images/maintenance.png\" />\n    <h3><span style=\"color:#e74c3c;\"><strong>Xin lỗi! Hiện tại website đang bảo trì!</strong></span></h3>\n    </center>', 'Website đang trong chế độ bảo trì!');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sc_admin_user`
--

CREATE TABLE `sc_admin_user` (
  `id` int(10) UNSIGNED NOT NULL,
  `username` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `theme` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `sc_admin_user`
--

INSERT INTO `sc_admin_user` (`id`, `username`, `password`, `name`, `email`, `avatar`, `remember_token`, `theme`, `created_at`, `updated_at`) VALUES
(1, 'admin', '$2y$10$j8MoUV9V3/DsStylz5DfoOlAk951GEjZaQQmerGg7gh3NjGFkfJF.', 'Administrator', 'admin@admin', '/data/avatar/Untitled-1.png', '11IL5gRg7VTWrsfBKHo6Q6KqtqzKWpFLVLM89akxdSMXXFT58G40SKiSApR5', 'pink', '2022-01-12 13:04:06', '2022-01-14 16:24:20');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sc_admin_user_permission`
--

CREATE TABLE `sc_admin_user_permission` (
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sc_admin_user_store`
--

CREATE TABLE `sc_admin_user_store` (
  `user_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sc_api_connection`
--

CREATE TABLE `sc_api_connection` (
  `id` int(10) UNSIGNED NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `apiconnection` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `apikey` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expire` date DEFAULT NULL,
  `last_active` datetime DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `sc_api_connection`
--

INSERT INTO `sc_api_connection` (`id`, `description`, `apiconnection`, `apikey`, `expire`, `last_active`, `status`) VALUES
(1, 'Demo api connection', 'appmobile', '61ded1c682ad7', NULL, NULL, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sc_shop_attribute_group`
--

CREATE TABLE `sc_shop_attribute_group` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `sort` int(11) NOT NULL DEFAULT 0,
  `type` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'radio,select,checkbox'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `sc_shop_attribute_group`
--

INSERT INTO `sc_shop_attribute_group` (`id`, `name`, `status`, `sort`, `type`) VALUES
(1, 'Color', 1, 1, 'radio'),
(2, 'Size', 1, 2, 'select');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sc_shop_banner`
--

CREATE TABLE `sc_shop_banner` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `target` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `html` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `sort` int(11) NOT NULL DEFAULT 0,
  `click` int(11) NOT NULL DEFAULT 0,
  `type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `store_id` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `sc_shop_banner`
--

INSERT INTO `sc_shop_banner` (`id`, `title`, `image`, `url`, `target`, `html`, `status`, `sort`, `click`, `type`, `store_id`, `created_at`, `updated_at`) VALUES
(3, 'slider02', '/data/banner/slider2.jpg', NULL, '_self', '<h4>TINH DẦU NƯỚC HOA DUBAI</h4>\r\n<a href=\"/shop\">Cửa hàng</a>', 1, 0, 0, 'background', 1, NULL, '2022-01-14 17:43:43'),
(4, 'slider01', '/data/banner/slider1.jpg', NULL, '_self', '<h4>TINH DẦU NƯỚC HOA DUBAI</h4>\r\n<a href=\"/shop\">Cửa hàng</a>', 1, 0, 0, 'background', 1, NULL, '2022-01-14 17:43:36');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sc_shop_banner_type`
--

CREATE TABLE `sc_shop_banner_type` (
  `id` int(10) UNSIGNED NOT NULL,
  `code` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `sc_shop_banner_type`
--

INSERT INTO `sc_shop_banner_type` (`id`, `code`, `name`) VALUES
(1, 'banner', 'Banner website'),
(2, 'background', 'Background website'),
(3, 'breadcrumb', 'Breadcrumb website'),
(4, 'banner-store', 'Banner store'),
(5, 'other', 'Other');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sc_shop_brand`
--

CREATE TABLE `sc_shop_brand` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alias` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `sort` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `sc_shop_brand`
--

INSERT INTO `sc_shop_brand` (`id`, `name`, `alias`, `image`, `url`, `status`, `sort`) VALUES
(1, 'Husq', 'husq', '/data/brand/01-181x52.png', '', 1, 0),
(2, 'Ideal', 'ideal', '/data/brand/02-181x52.png', '', 1, 0),
(3, 'Apex', 'apex', '/data/brand/03-181x52.png', '', 1, 0),
(4, 'CST', 'cst', '/data/brand/04-181x52.png', '', 1, 0),
(5, 'Klein', 'klein', '/data/brand/05-181x52.png', '', 1, 0),
(6, 'Metabo', 'metabo', '/data/brand/06-181x52.png', '', 1, 0),
(7, 'Avatar', 'avatar', '/data/brand/07-181x52.png', '', 1, 0),
(8, 'Brand KA', 'brand-ka', '/data/brand/08-181x52.png', '', 1, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sc_shop_category`
--

CREATE TABLE `sc_shop_category` (
  `id` int(10) UNSIGNED NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `alias` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` int(11) NOT NULL DEFAULT 0,
  `top` int(11) DEFAULT 0,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `sort` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `sc_shop_category`
--

INSERT INTO `sc_shop_category` (`id`, `image`, `alias`, `parent`, `top`, `status`, `sort`) VALUES
(18, '/data/category/product_use2.jpg', 'nuoc-hoa-niche', 0, 1, 1, 1),
(21, '/data/category/product_use2.jpg', 'nuoc-hoa-phap', 22, 1, 1, 0),
(22, '/data/category/product_use2.jpg', 'nuoc-hoa-intense', 0, 1, 1, 0),
(23, '/data/category/product_use2.jpg', 'nuoc-hoa-nu', 0, 1, 1, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sc_shop_category_description`
--

CREATE TABLE `sc_shop_category_description` (
  `category_id` int(11) NOT NULL,
  `lang` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `keyword` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(300) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `sc_shop_category_description`
--

INSERT INTO `sc_shop_category_description` (`category_id`, `lang`, `title`, `keyword`, `description`) VALUES
(18, 'en', 'Nước hoa Niche', NULL, NULL),
(18, 'vi', 'Nước hoa Niche', NULL, NULL),
(21, 'vi', 'Nước hoa Pháp', NULL, NULL),
(22, 'en', 'Nước hoa Intense', NULL, NULL),
(22, 'vi', 'Nước hoa Intense', NULL, NULL),
(23, 'en', 'Nước hoa Nữ', NULL, NULL),
(23, 'vi', 'Nước hoa Nữ', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sc_shop_country`
--

CREATE TABLE `sc_shop_country` (
  `id` int(10) UNSIGNED NOT NULL,
  `code` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `sc_shop_country`
--

INSERT INTO `sc_shop_country` (`id`, `code`, `name`) VALUES
(1, 'AL', 'Albania'),
(2, 'DZ', 'Algeria'),
(3, 'DS', 'American Samoa'),
(4, 'AD', 'Andorra'),
(5, 'AO', 'Angola'),
(6, 'AI', 'Anguilla'),
(7, 'AQ', 'Antarctica'),
(8, 'AG', 'Antigua and Barbuda'),
(9, 'AR', 'Argentina'),
(10, 'AM', 'Armenia'),
(11, 'AW', 'Aruba'),
(12, 'AU', 'Australia'),
(13, 'AT', 'Austria'),
(14, 'AZ', 'Azerbaijan'),
(15, 'BS', 'Bahamas'),
(16, 'BH', 'Bahrain'),
(17, 'BD', 'Bangladesh'),
(18, 'BB', 'Barbados'),
(19, 'BY', 'Belarus'),
(20, 'BE', 'Belgium'),
(21, 'BZ', 'Belize'),
(22, 'BJ', 'Benin'),
(23, 'BM', 'Bermuda'),
(24, 'BT', 'Bhutan'),
(25, 'BO', 'Bolivia'),
(26, 'BA', 'Bosnia and Herzegovina'),
(27, 'BW', 'Botswana'),
(28, 'BV', 'Bouvet Island'),
(29, 'BR', 'Brazil'),
(30, 'IO', 'British Indian Ocean Territory'),
(31, 'BN', 'Brunei Darussalam'),
(32, 'BG', 'Bulgaria'),
(33, 'BF', 'Burkina Faso'),
(34, 'BI', 'Burundi'),
(35, 'KH', 'Cambodia'),
(36, 'CM', 'Cameroon'),
(37, 'CA', 'Canada'),
(38, 'CV', 'Cape Verde'),
(39, 'KY', 'Cayman Islands'),
(40, 'CF', 'Central African Republic'),
(41, 'TD', 'Chad'),
(42, 'CL', 'Chile'),
(43, 'CN', 'China'),
(44, 'CX', 'Christmas Island'),
(45, 'CC', 'Cocos (Keeling) Islands'),
(46, 'CO', 'Colombia'),
(47, 'KM', 'Comoros'),
(48, 'CG', 'Congo'),
(49, 'CK', 'Cook Islands'),
(50, 'CR', 'Costa Rica'),
(51, 'HR', 'Croatia (Hrvatska)'),
(52, 'CU', 'Cuba'),
(53, 'CY', 'Cyprus'),
(54, 'CZ', 'Czech Republic'),
(55, 'DK', 'Denmark'),
(56, 'DJ', 'Djibouti'),
(57, 'DM', 'Dominica'),
(58, 'DO', 'Dominican Republic'),
(59, 'TP', 'East Timor'),
(60, 'EC', 'Ecuador'),
(61, 'EG', 'Egypt'),
(62, 'SV', 'El Salvador'),
(63, 'GQ', 'Equatorial Guinea'),
(64, 'ER', 'Eritrea'),
(65, 'EE', 'Estonia'),
(66, 'ET', 'Ethiopia'),
(67, 'FK', 'Falkland Islands (Malvinas)'),
(68, 'FO', 'Faroe Islands'),
(69, 'FJ', 'Fiji'),
(70, 'FI', 'Finland'),
(71, 'FR', 'France'),
(72, 'FX', 'France, Metropolitan'),
(73, 'GF', 'French Guiana'),
(74, 'PF', 'French Polynesia'),
(75, 'TF', 'French Southern Territories'),
(76, 'GA', 'Gabon'),
(77, 'GM', 'Gambia'),
(78, 'GE', 'Georgia'),
(79, 'DE', 'Germany'),
(80, 'GH', 'Ghana'),
(81, 'GI', 'Gibraltar'),
(82, 'GK', 'Guernsey'),
(83, 'GR', 'Greece'),
(84, 'GL', 'Greenland'),
(85, 'GD', 'Grenada'),
(86, 'GP', 'Guadeloupe'),
(87, 'GU', 'Guam'),
(88, 'GT', 'Guatemala'),
(89, 'GN', 'Guinea'),
(90, 'GW', 'Guinea-Bissau'),
(91, 'GY', 'Guyana'),
(92, 'HT', 'Haiti'),
(93, 'HM', 'Heard and Mc Donald Islands'),
(94, 'HN', 'Honduras'),
(95, 'HK', 'Hong Kong'),
(96, 'HU', 'Hungary'),
(97, 'IS', 'Iceland'),
(98, 'IN', 'India'),
(99, 'IM', 'Isle of Man'),
(100, 'ID', 'Indonesia'),
(101, 'IR', 'Iran (Islamic Republic of)'),
(102, 'IQ', 'Iraq'),
(103, 'IE', 'Ireland'),
(104, 'IL', 'Israel'),
(105, 'IT', 'Italy'),
(106, 'CI', 'Ivory Coast'),
(107, 'JE', 'Jersey'),
(108, 'JM', 'Jamaica'),
(109, 'JP', 'Japan'),
(110, 'JO', 'Jordan'),
(111, 'KZ', 'Kazakhstan'),
(112, 'KE', 'Kenya'),
(113, 'KI', 'Kiribati'),
(114, 'KP', 'Korea,Democratic People\'s Republic of'),
(115, 'KR', 'Korea, Republic of'),
(116, 'XK', 'Kosovo'),
(117, 'KW', 'Kuwait'),
(118, 'KG', 'Kyrgyzstan'),
(119, 'LA', 'Lao People\'s Democratic Republic'),
(120, 'LV', 'Latvia'),
(121, 'LB', 'Lebanon'),
(122, 'LS', 'Lesotho'),
(123, 'LR', 'Liberia'),
(124, 'LY', 'Libyan Arab Jamahiriya'),
(125, 'LI', 'Liechtenstein'),
(126, 'LT', 'Lithuania'),
(127, 'LU', 'Luxembourg'),
(128, 'MO', 'Macau'),
(129, 'MK', 'Macedonia'),
(130, 'MG', 'Madagascar'),
(131, 'MW', 'Malawi'),
(132, 'MY', 'Malaysia'),
(133, 'MV', 'Maldives'),
(134, 'ML', 'Mali'),
(135, 'MT', 'Malta'),
(136, 'MH', 'Marshall Islands'),
(137, 'MQ', 'Martinique'),
(138, 'MR', 'Mauritania'),
(139, 'MU', 'Mauritius'),
(140, 'TY', 'Mayotte'),
(141, 'MX', 'Mexico'),
(142, 'FM', 'Micronesia, Federated States of'),
(143, 'MD', 'Moldova, Republic of'),
(144, 'MC', 'Monaco'),
(145, 'MN', 'Mongolia'),
(146, 'ME', 'Montenegro'),
(147, 'MS', 'Montserrat'),
(148, 'MA', 'Morocco'),
(149, 'MZ', 'Mozambique'),
(150, 'MM', 'Myanmar'),
(151, 'NA', 'Namibia'),
(152, 'NR', 'Nauru'),
(153, 'NP', 'Nepal'),
(154, 'NL', 'Netherlands'),
(155, 'AN', 'Netherlands Antilles'),
(156, 'NC', 'New Caledonia'),
(157, 'NZ', 'New Zealand'),
(158, 'NI', 'Nicaragua'),
(159, 'NE', 'Niger'),
(160, 'NG', 'Nigeria'),
(161, 'NU', 'Niue'),
(162, 'NF', 'Norfolk Island'),
(163, 'MP', 'Northern Mariana Islands'),
(164, 'NO', 'Norway'),
(165, 'OM', 'Oman'),
(166, 'PK', 'Pakistan'),
(167, 'PW', 'Palau'),
(168, 'PS', 'Palestine'),
(169, 'PA', 'Panama'),
(170, 'PG', 'Papua New Guinea'),
(171, 'PY', 'Paraguay'),
(172, 'PE', 'Peru'),
(173, 'PH', 'Philippines'),
(174, 'PN', 'Pitcairn'),
(175, 'PL', 'Poland'),
(176, 'PT', 'Portugal'),
(177, 'PR', 'Puerto Rico'),
(178, 'QA', 'Qatar'),
(179, 'RE', 'Reunion'),
(180, 'RO', 'Romania'),
(181, 'RU', 'Russian Federation'),
(182, 'RW', 'Rwanda'),
(183, 'KN', 'Saint Kitts and Nevis'),
(184, 'LC', 'Saint Lucia'),
(185, 'VC', 'Saint Vincent and the Grenadines'),
(186, 'WS', 'Samoa'),
(187, 'SM', 'San Marino'),
(188, 'ST', 'Sao Tome and Principe'),
(189, 'SA', 'Saudi Arabia'),
(190, 'SN', 'Senegal'),
(191, 'RS', 'Serbia'),
(192, 'SC', 'Seychelles'),
(193, 'SL', 'Sierra Leone'),
(194, 'SG', 'Singapore'),
(195, 'SK', 'Slovakia'),
(196, 'SI', 'Slovenia'),
(197, 'SB', 'Solomon Islands'),
(198, 'SO', 'Somalia'),
(199, 'ZA', 'South Africa'),
(200, 'GS', 'South Georgia South Sandwich Islands'),
(201, 'SS', 'South Sudan'),
(202, 'ES', 'Spain'),
(203, 'LK', 'Sri Lanka'),
(204, 'SH', 'St. Helena'),
(205, 'PM', 'St. Pierre and Miquelon'),
(206, 'SD', 'Sudan'),
(207, 'SR', 'Suriname'),
(208, 'SJ', 'Svalbard and Jan Mayen Islands'),
(209, 'SZ', 'Swaziland'),
(210, 'SE', 'Sweden'),
(211, 'CH', 'Switzerland'),
(212, 'SY', 'Syrian Arab Republic'),
(213, 'TW', 'Taiwan'),
(214, 'TJ', 'Tajikistan'),
(215, 'TZ', 'Tanzania, United Republic of'),
(216, 'TH', 'Thailand'),
(217, 'TG', 'Togo'),
(218, 'TK', 'Tokelau'),
(219, 'TO', 'Tonga'),
(220, 'TT', 'Trinidad and Tobago'),
(221, 'TN', 'Tunisia'),
(222, 'TR', 'Turkey'),
(223, 'TM', 'Turkmenistan'),
(224, 'TC', 'Turks and Caicos Islands'),
(225, 'TV', 'Tuvalu'),
(226, 'UG', 'Uganda'),
(227, 'UA', 'Ukraine'),
(228, 'AE', 'United Arab Emirates'),
(229, 'GB', 'United Kingdom'),
(230, 'US', 'United States'),
(231, 'UM', 'United States minor outlying islands'),
(232, 'UY', 'Uruguay'),
(233, 'UZ', 'Uzbekistan'),
(234, 'VU', 'Vanuatu'),
(235, 'VA', 'Vatican City State'),
(236, 'VE', 'Venezuela'),
(237, 'VN', 'Vietnam'),
(238, 'VG', 'Virgin Islands (British)'),
(239, 'VI', 'Virgin Islands (U.S.)'),
(240, 'WF', 'Wallis and Futuna Islands'),
(241, 'EH', 'Western Sahara'),
(242, 'YE', 'Yemen'),
(243, 'ZR', 'Zaire'),
(244, 'ZM', 'Zambia'),
(245, 'ZW', 'Zimbabwe');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sc_shop_currency`
--

CREATE TABLE `sc_shop_currency` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `symbol` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `exchange_rate` double(8,2) NOT NULL,
  `precision` tinyint(4) NOT NULL DEFAULT 2,
  `symbol_first` tinyint(4) NOT NULL DEFAULT 0,
  `thousands` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ',',
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `sort` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `sc_shop_currency`
--

INSERT INTO `sc_shop_currency` (`id`, `name`, `code`, `symbol`, `exchange_rate`, `precision`, `symbol_first`, `thousands`, `status`, `sort`) VALUES
(1, 'USD Dola', 'USD', '$', 1.00, 0, 0, ',', 0, 0),
(2, 'VietNam Dong', 'VND', '₫', 1.00, 0, 0, ',', 1, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sc_shop_customer`
--

CREATE TABLE `sc_shop_customer` (
  `id` int(10) UNSIGNED NOT NULL,
  `first_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `first_name_kana` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name_kana` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sex` tinyint(4) DEFAULT NULL COMMENT '0:women, 1:men',
  `birthday` date DEFAULT NULL,
  `password` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address_id` int(11) NOT NULL DEFAULT 0,
  `postcode` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address1` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address2` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address3` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT 'VN',
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `store_id` int(11) NOT NULL DEFAULT 1,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `group` tinyint(4) NOT NULL DEFAULT 1,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `provider` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider_id` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `sc_shop_customer`
--

INSERT INTO `sc_shop_customer` (`id`, `first_name`, `last_name`, `first_name_kana`, `last_name_kana`, `email`, `sex`, `birthday`, `password`, `address_id`, `postcode`, `address1`, `address2`, `address3`, `company`, `country`, `phone`, `store_id`, `remember_token`, `status`, `group`, `email_verified_at`, `created_at`, `updated_at`, `provider`, `provider_id`) VALUES
(1, 'Naruto', 'Kun', NULL, NULL, 'test@test.com', NULL, NULL, '$2y$10$4nTcfgmdnOHWaejIt..jG.QZU9TJ1kEwNf8CpDq9QFL7ey8AG29ci', 0, '70000', 'HCM', 'HCM city', NULL, 'KTC', 'VN', '0667151172', 1, NULL, 1, 1, NULL, '2022-01-12 13:04:06', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sc_shop_customer_address`
--

CREATE TABLE `sc_shop_customer_address` (
  `id` int(10) UNSIGNED NOT NULL,
  `customer_id` int(11) NOT NULL,
  `first_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `first_name_kana` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name_kana` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `postcode` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address1` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address2` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address3` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT 'VN',
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `sc_shop_customer_address`
--

INSERT INTO `sc_shop_customer_address` (`id`, `customer_id`, `first_name`, `last_name`, `first_name_kana`, `last_name_kana`, `postcode`, `address1`, `address2`, `address3`, `country`, `phone`) VALUES
(1, 1, 'Naruto', 'Kun', NULL, NULL, '70000', 'HCM', 'HCM city', NULL, 'VN', '0667151172');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sc_shop_custom_field`
--

CREATE TABLE `sc_shop_custom_field` (
  `id` int(10) UNSIGNED NOT NULL,
  `type` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'product, customer',
  `code` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `required` int(11) NOT NULL DEFAULT 0,
  `status` int(11) NOT NULL DEFAULT 1,
  `option` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'radio, select, input',
  `default` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '{"value1":"name1", "value2":"name2"}'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sc_shop_custom_field_detail`
--

CREATE TABLE `sc_shop_custom_field_detail` (
  `id` int(10) UNSIGNED NOT NULL,
  `custom_field_id` int(11) NOT NULL,
  `rel_id` int(11) NOT NULL,
  `text` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sc_shop_email_template`
--

CREATE TABLE `sc_shop_email_template` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `group` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `text` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `store_id` int(11) NOT NULL DEFAULT 1,
  `status` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `sc_shop_email_template`
--

INSERT INTO `sc_shop_email_template` (`id`, `name`, `group`, `text`, `store_id`, `status`) VALUES
(1, 'Reset password', 'forgot_password', '\n<h1 style=\"font-family:Avenir,Helvetica,sans-serif;box-sizing:border-box;color:#2f3133;font-size:19px;font-weight:bold;margin-top:0;text-align:left\">{{$title}}</h1>\n<p style=\"font-family:Avenir,Helvetica,sans-serif;box-sizing:border-box;color:#74787e;font-size:16px;line-height:1.5em;margin-top:0;text-align:left\">{{$reason_sendmail}}</p>\n<table class=\"action\" align=\"center\" width=\"100%\" cellpadding=\"0\" cellspacing=\"0\" style=\"font-family:Avenir,Helvetica,sans-serif;box-sizing:border-box;margin:30px auto;padding:0;text-align:center;width:100%\">\n<tbody><tr>\n  <td align=\"center\" style=\"font-family:Avenir,Helvetica,sans-serif;box-sizing:border-box\">\n  <table width=\"100%\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"font-family:Avenir,Helvetica,sans-serif;box-sizing:border-box\">\n      <tbody><tr>\n      <td align=\"center\" style=\"font-family:Avenir,Helvetica,sans-serif;box-sizing:border-box\">\n          <table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"font-family:Avenir,Helvetica,sans-serif;box-sizing:border-box\">\n          <tbody><tr>\n              <td style=\"font-family:Avenir,Helvetica,sans-serif;box-sizing:border-box\">\n              <a href=\"{{$reset_link}}\" class=\"button button-primary\" style=\"font-family:Avenir,Helvetica,sans-serif;box-sizing:border-box;border-radius:3px;color:#fff;display:inline-block;text-decoration:none;background-color:#3097d1;border-top:10px solid #3097d1;border-right:18px solid #3097d1;border-bottom:10px solid #3097d1;border-left:18px solid #3097d1\" target=\"_blank\">{{$reset_button}}</a>\n              </td>\n          </tr>\n          </tbody>\n      </table>\n      </td>\n      </tr>\n  </tbody>\n  </table>\n  </td>\n</tr>\n</tbody>\n</table>\n<p style=\"font-family:Avenir,Helvetica,sans-serif;box-sizing:border-box;color:#74787e;font-size:16px;line-height:1.5em;margin-top:0;text-align:left\">\n{{$note_sendmail}}\n</p>\n<table class=\"subcopy\" width=\"100%\" cellpadding=\"0\" cellspacing=\"0\" style=\"font-family:Avenir,Helvetica,sans-serif;box-sizing:border-box;border-top:1px solid #edeff2;margin-top:25px;padding-top:25px\">\n<tbody><tr>\n<td style=\"font-family:Avenir,Helvetica,sans-serif;box-sizing:border-box\">\n  <p style=\"font-family:Avenir,Helvetica,sans-serif;box-sizing:border-box;color:#74787e;line-height:1.5em;margin-top:0;text-align:left;font-size:12px\">{{$note_access_link}}</p>\n  </td>\n  </tr>\n</tbody>\n</table>', 1, 1),
(2, 'Customer verification', 'customer_verify', '\n<h1 style=\"font-family:Avenir,Helvetica,sans-serif;box-sizing:border-box;color:#2f3133;font-size:19px;font-weight:bold;margin-top:0;text-align:left\">{{$title}}</h1>\n<p style=\"font-family:Avenir,Helvetica,sans-serif;box-sizing:border-box;color:#74787e;font-size:16px;line-height:1.5em;margin-top:0;text-align:left\">{{$reason_sendmail}}</p>\n<table class=\"action\" align=\"center\" width=\"100%\" cellpadding=\"0\" cellspacing=\"0\" style=\"font-family:Avenir,Helvetica,sans-serif;box-sizing:border-box;margin:30px auto;padding:0;text-align:center;width:100%\">\n<tbody><tr>\n  <td align=\"center\" style=\"font-family:Avenir,Helvetica,sans-serif;box-sizing:border-box\">\n  <table width=\"100%\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"font-family:Avenir,Helvetica,sans-serif;box-sizing:border-box\">\n      <tbody><tr>\n      <td align=\"center\" style=\"font-family:Avenir,Helvetica,sans-serif;box-sizing:border-box\">\n          <table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"font-family:Avenir,Helvetica,sans-serif;box-sizing:border-box\">\n          <tbody><tr>\n              <td style=\"font-family:Avenir,Helvetica,sans-serif;box-sizing:border-box\">\n              <a href=\"{{$url_verify}}\" class=\"button button-primary\" style=\"font-family:Avenir,Helvetica,sans-serif;box-sizing:border-box;border-radius:3px;color:#fff;display:inline-block;text-decoration:none;background-color:#3097d1;border-top:10px solid #3097d1;border-right:18px solid #3097d1;border-bottom:10px solid #3097d1;border-left:18px solid #3097d1\" target=\"_blank\">{{$button}}</a>\n              </td>\n          </tr>\n          </tbody>\n      </table>\n      </td>\n      </tr>\n  </tbody>\n  </table>\n  </td>\n</tr>\n</tbody>\n</table>\n<p style=\"font-family:Avenir,Helvetica,sans-serif;box-sizing:border-box;color:#74787e;font-size:16px;line-height:1.5em;margin-top:0;text-align:left\">\n{{$note_sendmail}}\n</p>\n<table class=\"subcopy\" width=\"100%\" cellpadding=\"0\" cellspacing=\"0\" style=\"font-family:Avenir,Helvetica,sans-serif;box-sizing:border-box;border-top:1px solid #edeff2;margin-top:25px;padding-top:25px\">\n<tbody><tr>\n<td style=\"font-family:Avenir,Helvetica,sans-serif;box-sizing:border-box\">\n  <p style=\"font-family:Avenir,Helvetica,sans-serif;box-sizing:border-box;color:#74787e;line-height:1.5em;margin-top:0;text-align:left;font-size:12px\">{{$note_access_link}}</p>\n  </td>\n  </tr>\n</tbody>\n</table>', 1, 1),
(3, 'Welcome new customer', 'welcome_customer', '\n<h1 style=\"font-family:Avenir,Helvetica,sans-serif;box-sizing:border-box;color:#2f3133;font-size:19px;font-weight:bold;margin-top:0;text-align:center\">{{$title}}</h1>\n<p style=\"text-align:center;\">Welcome to my site!</p>', 1, 1),
(4, 'Send form contact to admin', 'contact_to_admin', '\n<table class=\"inner-body\" align=\"center\" cellpadding=\"0\" cellspacing=\"0\">\n<tr>\n<td>\n<b>Name</b>: {{$name}}<br>\n<b>Email</b>: {{$email}}<br>\n<b>Phone</b>: {{$phone}}<br>\n</td>\n</tr>\n</table>\n<hr>\n<p style=\"text-align: center;\">Content:<br>\n<table class=\"inner-body\" align=\"center\" cellpadding=\"0\" cellspacing=\"0\" border=\"0\">\n<tr>\n<td>{{$content}}</td>\n</tr>\n</table>', 1, 1),
(5, 'New order to admin', 'order_success_to_admin', '\n<table class=\"inner-body\" align=\"center\" cellpadding=\"0\" cellspacing=\"0\">\n  <tr>\n      <td>\n          <b>Order ID</b>: {{$orderID}}<br>\n          <b>Customer name</b>: {{$toname}}<br>\n          <b>Email</b>: {{$email}}<br>\n          <b>Address</b>: {{$address}}<br>\n          <b>Phone</b>: {{$phone}}<br>\n          <b>Order note</b>: {{$comment}}\n      </td>\n  </tr>\n</table>\n<hr>\n<p style=\"text-align: center;\">Order detail:<br>\n===================================<br></p>\n<table class=\"inner-body\" align=\"center\" cellpadding=\"0\" cellspacing=\"0\" border=\"1\">\n  {{$orderDetail}}\n  <tr>\n      <td colspan=\"2\"></td>\n      <td colspan=\"2\" style=\"font-weight: bold;\">Sub total</td>\n      <td colspan=\"2\" align=\"right\">{{$subtotal}}</td>\n  </tr>\n  <tr>\n      <td colspan=\"2\"></td>\n      <td colspan=\"2\" style=\"font-weight: bold;\">Shipping fee</td>\n      <td colspan=\"2\" align=\"right\">{{$shipping}}</td>\n  </tr>\n  <tr>\n      <td colspan=\"2\"></td>\n      <td colspan=\"2\" style=\"font-weight: bold;\">Discount</td>\n      <td colspan=\"2\" align=\"right\">{{$discount}}</td>\n  </tr>\n  <tr>\n      <td colspan=\"2\"></td>\n      <td colspan=\"2\" style=\"font-weight: bold;\">Total</td>\n      <td colspan=\"2\" align=\"right\">{{$total}}</td>\n  </tr>\n</table>', 1, 1),
(6, 'New order to customr', 'order_success_to_customer', '\n<table class=\"inner-body\" align=\"center\" cellpadding=\"0\" cellspacing=\"0\">\n<tr>\n  <td>\n      <b>Order ID</b>: {{$orderID}}<br>\n      <b>Customer name</b>: {{$toname}}<br>\n      <b>Address</b>: {{$address}}<br>\n      <b>Phone</b>: {{$phone}}<br>\n      <b>Order note</b>: {{$comment}}\n  </td>\n</tr>\n</table>\n<hr>\n<p style=\"text-align: center;\">Order detail:<br>\n===================================<br></p>\n<table class=\"inner-body\" align=\"center\" cellpadding=\"0\" cellspacing=\"0\" border=\"1\">\n{{$orderDetail}}\n<tr>\n  <td colspan=\"2\"></td>\n  <td colspan=\"2\" style=\"font-weight: bold;\">Sub total</td>\n  <td colspan=\"2\" align=\"right\">{{$subtotal}}</td>\n</tr>\n<tr>\n  <td colspan=\"2\"></td>\n  <td colspan=\"2\" style=\"font-weight: bold;\">Shipping fee</td>\n  <td colspan=\"2\" align=\"right\">{{$shipping}}</td>\n</tr>\n<tr>\n  <td colspan=\"2\"></td>\n  <td colspan=\"2\" style=\"font-weight: bold;\">Discount</td>\n  <td colspan=\"2\" align=\"right\">{{$discount}}</td>\n</tr>\n<tr>\n  <td colspan=\"2\"></td>\n  <td colspan=\"2\" style=\"font-weight: bold;\">Total</td>\n  <td colspan=\"2\" align=\"right\">{{$total}}</td>\n</tr>\n</table>', 1, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sc_shop_language`
--

CREATE TABLE `sc_shop_language` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `rtl` tinyint(4) DEFAULT 0 COMMENT 'Layout RTL',
  `sort` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `sc_shop_language`
--

INSERT INTO `sc_shop_language` (`id`, `name`, `code`, `icon`, `status`, `rtl`, `sort`) VALUES
(1, 'English', 'en', '/data/language/flag_uk.png', 0, 0, 1),
(2, 'Tiếng Việt', 'vi', '/data/language/flag_vn.png', 1, 0, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sc_shop_layout_page`
--

CREATE TABLE `sc_shop_layout_page` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `sc_shop_layout_page`
--

INSERT INTO `sc_shop_layout_page` (`id`, `key`, `name`) VALUES
(1, 'home', 'lang::layout.page_position.home'),
(2, 'shop_home', 'lang::layout.page_position.shop_home'),
(3, 'shop_product_list', 'lang::layout.page_position.product_list'),
(4, 'product_detail', 'lang::layout.page_position.product_detail'),
(5, 'shop_cart', 'lang::layout.page_position.shop_cart'),
(6, 'shop_item_list', 'lang::layout.page_position.item_list'),
(7, 'shop_item_detail', 'lang::layout.page_position.item_detail'),
(8, 'shop_news', 'lang::layout.page_position.news_list'),
(9, 'shop_news_detail', 'lang::layout.page_position.news_detail'),
(10, 'shop_auth', 'lang::layout.page_position.shop_auth'),
(11, 'shop_profile', 'lang::layout.page_position.shop_profile'),
(12, 'shop_page', 'lang::layout.page_position.shop_page'),
(13, 'shop_contact', 'lang::layout.page_position.shop_contact'),
(14, 'content_list', 'lang::layout.page_position.content_list'),
(15, 'content_detail', 'lang::layout.page_position.content_detail'),
(16, 'store_home', 'lang::layout.page_position.store_home'),
(17, 'store_product_list', 'lang::layout.page_position.store_product_list');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sc_shop_layout_position`
--

CREATE TABLE `sc_shop_layout_position` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `sc_shop_layout_position`
--

INSERT INTO `sc_shop_layout_position` (`id`, `key`, `name`) VALUES
(1, 'meta', 'lang::layout.page_block.meta'),
(2, 'header', 'lang::layout.page_block.header'),
(3, 'top', 'lang::layout.page_block.top'),
(4, 'bottom', 'lang::layout.page_block.bottom'),
(5, 'left', 'lang::layout.page_block.left'),
(6, 'right', 'lang::layout.page_block.right'),
(7, 'banner_top', 'lang::layout.page_block.banner_top');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sc_shop_length`
--

CREATE TABLE `sc_shop_length` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `sc_shop_length`
--

INSERT INTO `sc_shop_length` (`id`, `name`, `description`) VALUES
(1, 'mm', 'Millimeter'),
(2, 'cm', 'Centimeter'),
(3, 'm', 'Meter'),
(4, 'in', 'Inch');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sc_shop_link`
--

CREATE TABLE `sc_shop_link` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `target` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `group` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `module` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `sort` int(11) NOT NULL DEFAULT 0,
  `store_id` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `sc_shop_link`
--

INSERT INTO `sc_shop_link` (`id`, `name`, `url`, `target`, `group`, `module`, `status`, `sort`, `store_id`) VALUES
(1, 'lang::front.contact', 'route::contact', '_self', 'menu', '', 1, 3, 1),
(2, 'lang::front.about', 'route::page.detail::about', '_self', 'menu', '', 1, 4, 1),
(3, 'lang::front.my_profile', 'route::login', '_self', 'footer', '', 1, 5, 1),
(4, 'lang::front.compare_page', 'route::compare', '_self', 'footer', '', 1, 4, 1),
(5, 'lang::front.wishlist_page', 'route::wishlist', '_self', 'footer', '', 1, 3, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sc_shop_news`
--

CREATE TABLE `sc_shop_news` (
  `id` int(10) UNSIGNED NOT NULL,
  `image` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `alias` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sort` int(11) NOT NULL DEFAULT 0,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `store_id` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `sc_shop_news`
--

INSERT INTO `sc_shop_news` (`id`, `image`, `alias`, `sort`, `status`, `store_id`, `created_at`, `updated_at`) VALUES
(5, '/data/content/blog_use.jpg', 'tinh-dau-nuoc-hoa-dubai-gia-bao-nhieu', 0, 1, 1, '2022-01-11 17:00:00', '2022-01-13 01:35:24'),
(6, '/data/content/blog_use.jpg', 'demo-alias-blog-6', 0, 1, 1, '2022-01-11 17:00:00', '2022-01-13 03:14:46'),
(7, '/data/content/blog_use.jpg', 'tinh-dau-nuoc-hoa-mui-nao-thom-nhat', 0, 1, 1, '2022-01-13 03:12:18', '2022-01-13 03:12:18');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sc_shop_news_description`
--

CREATE TABLE `sc_shop_news_description` (
  `news_id` int(11) NOT NULL,
  `lang` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `keyword` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(300) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `sc_shop_news_description`
--

INSERT INTO `sc_shop_news_description` (`news_id`, `lang`, `title`, `keyword`, `description`, `content`) VALUES
(5, 'vi', 'Tinh dầu nước hoa Dubai giá bao nhiêu?', NULL, 'Tinh dầu nước hoa Dubai tại HT Market là dòng nước hoa nổi tiếng với mùi hương siêu quyến rũ...', '<header>\r\n<h1>Tinh dầu nước hoa Dubai gi&aacute; bao nhi&ecirc;u? c&oacute; đắt kh&ocirc;ng?</h1>\r\n</header>\r\n\r\n<p>Tinh dầu nước hoa Dubai tại HT Market l&agrave; d&ograve;ng nước hoa nổi tiếng với m&ugrave;i hương si&ecirc;u quyến rũ c&ugrave;ng độ lưu hương l&acirc;u khiến nhiều người say đắm. Tinh dầu nước hoa Dubai gi&aacute; bao nhi&ecirc;u? C&oacute; đắt kh&ocirc;ng? L&agrave; những c&acirc;u hỏi m&agrave; nhiều người đang ph&acirc;n v&acirc;n.</p>\r\n\r\n<p><img alt=\"tinh dau dubai gia bao nhieu\" height=\"600\" loading=\"lazy\" sizes=\"(max-width: 800px) 100vw, 800px\" src=\"https://hungthinhmart.com/wp-content/uploads/2017/12/tinh-dau-nuoc-hoa-dubai-gia-bao-nhieu.jpg\" srcset=\"https://hungthinhmart.com/wp-content/uploads/2017/12/tinh-dau-nuoc-hoa-dubai-gia-bao-nhieu.jpg 800w, https://hungthinhmart.com/wp-content/uploads/2017/12/tinh-dau-nuoc-hoa-dubai-gia-bao-nhieu-510x383.jpg 510w, https://hungthinhmart.com/wp-content/uploads/2017/12/tinh-dau-nuoc-hoa-dubai-gia-bao-nhieu-400x300.jpg 400w, https://hungthinhmart.com/wp-content/uploads/2017/12/tinh-dau-nuoc-hoa-dubai-gia-bao-nhieu-768x576.jpg 768w\" width=\"800\" /></p>\r\n\r\n<p><strong>Đẳng cấp tinh dầu nước hoa Dubai tại&nbsp;HT Market</strong><br />\r\nTinh dầu nước hoa Dubai l&agrave; một trong những d&ograve;ng nước hoa đang hot nhất tr&ecirc;n thị trường hiện nay. Với tinh chất nước hoa kết hợp với tinh dầu của c&aacute;c hương liệu tự nhi&ecirc;n tổng hợp c&ugrave;ng c&aacute;ch điều chế đặc biệt do người d&acirc;n Dubai s&aacute;ng chế, chỉ một v&agrave;i giọt tinh dầu th&ocirc;i cũng đủ khiến bạn vấn vương m&atilde;i kh&ocirc;ng thể n&agrave;o qu&ecirc;n được. Trong nội dung trước HT Market đ&atilde; chia sẻ cho c&aacute;c bạn b&agrave;i viết Tinh Dầu Nước Hoa Dubai Hot Nhất Hiện Nay d&agrave;nh cho những ai chưa biết về thương hiệu n&agrave;y. H&ocirc;m nay, ch&uacute;ng t&ocirc;i sẽ giải đ&aacute;p thắc mắc tinh dầu nước hoa Dubai gi&aacute; bao nhi&ecirc;u? c&oacute; đắt kh&ocirc;ng để c&aacute;c bạn c&oacute; th&ecirc;m kiến thức về loại nước hoa n&agrave;y nh&eacute;!</p>\r\n\r\n<p><img alt=\"tinh dau nuoc hoa dubai gia phai chang\" height=\"600\" loading=\"lazy\" sizes=\"(max-width: 800px) 100vw, 800px\" src=\"https://hungthinhmart.com/wp-content/uploads/2017/12/tinh-dau-nuoc-hoa-dubai-gia-phai-chang.jpg\" srcset=\"https://hungthinhmart.com/wp-content/uploads/2017/12/tinh-dau-nuoc-hoa-dubai-gia-phai-chang.jpg 800w, https://hungthinhmart.com/wp-content/uploads/2017/12/tinh-dau-nuoc-hoa-dubai-gia-phai-chang-510x383.jpg 510w, https://hungthinhmart.com/wp-content/uploads/2017/12/tinh-dau-nuoc-hoa-dubai-gia-phai-chang-400x300.jpg 400w, https://hungthinhmart.com/wp-content/uploads/2017/12/tinh-dau-nuoc-hoa-dubai-gia-phai-chang-768x576.jpg 768w\" width=\"800\" /></p>\r\n\r\n<p><strong>Tinh dầu nước hoa Dubai gi&aacute; cả rất phải chăng, ph&ugrave; hợp t&uacute;i tiền của mọi người</strong><br />\r\nN&oacute;i về gi&aacute; cả, để sở hữu một chai nước hoa ch&iacute;nh h&atilde;ng, chất lượng của những thương hiệu nổi tiếng như Chanel, Gucci, Armani, Burberry,&hellip;bạn phải bỏ ra h&agrave;ng triệu đến h&agrave;ng chục triệu đồng cho một chai 20ml, 50ml đến 100ml,&hellip;Nhưng, bạn chỉ cần bỏ ra chỉ chưa tới &frac14; số tiền n&agrave;y cho một chai tinh dầu nước hoa Dubai ch&iacute;nh h&atilde;ng với m&ugrave;i hương tuyệt đối kh&ocirc;ng kh&aacute;c biệt g&igrave; so với những sản phẩm nổi tiếng tr&ecirc;n. Q&uacute;a rẻ phải kh&ocirc;ng n&agrave;o?<br />\r\nLiệu c&oacute; ch&iacute;nh x&aacute;c như vậy kh&ocirc;ng? Tại sao c&ugrave;ng m&ugrave;i hương m&agrave; gi&aacute; cả lại kh&aacute;c nhau? Sở dĩ c&oacute; sự giống nhau nhưng kh&aacute;c biệt về gi&aacute; cả l&agrave; do c&aacute;c thương hiệu nổi tiếng họ d&ugrave;ng thương hiệu v&agrave; độ nổi tiếng của m&igrave;nh để n&acirc;ng gi&aacute; b&aacute;n, nhắm v&agrave;o c&aacute;c kh&aacute;ch h&agrave;ng tiềm năng như triệu ph&uacute;, ca sĩ, diễn vi&ecirc;n hạng A v&agrave; những người muốn thể hiện đẳng cấp của m&igrave;nh. Ri&ecirc;ng với tinh dầu nước hoa Dubai, đ&acirc;y l&agrave; sản phẩm được tinh chế từ Dubai, một quốc gia c&oacute; kh&iacute; hậu n&oacute;ng quanh năm.</p>\r\n\r\n<p><img alt=\"tinh dầu nước hoa dubai giá rẻ\" height=\"600\" loading=\"lazy\" sizes=\"(max-width: 800px) 100vw, 800px\" src=\"https://hungthinhmart.com/wp-content/uploads/2017/12/tinh-dau-nuoc-hoa-dubai-gia-re.jpg\" srcset=\"https://hungthinhmart.com/wp-content/uploads/2017/12/tinh-dau-nuoc-hoa-dubai-gia-re.jpg 800w, https://hungthinhmart.com/wp-content/uploads/2017/12/tinh-dau-nuoc-hoa-dubai-gia-re-510x383.jpg 510w, https://hungthinhmart.com/wp-content/uploads/2017/12/tinh-dau-nuoc-hoa-dubai-gia-re-400x300.jpg 400w, https://hungthinhmart.com/wp-content/uploads/2017/12/tinh-dau-nuoc-hoa-dubai-gia-re-768x576.jpg 768w\" width=\"800\" /></p>\r\n\r\n<p><strong>Độ lưu hương l&ecirc;n đến 2 ng&agrave;y &ndash; đ&oacute; l&agrave; điều kh&ocirc;ng sản phẩm n&agrave;o c&oacute; thể s&aacute;nh được</strong><br />\r\nVới điều kiện thời tiết n&agrave;y, người d&acirc;n Dubai lu&ocirc;n phải c&oacute; một chai nước hoa trong người để sử dụng nhằm khử m&ugrave;i mồ h&ocirc;i cũng như đem đến hương thơm v&agrave; sự tự tin cho mỗi người. L&agrave; sản phẩm bất kỳ người d&acirc;n Dubai n&agrave;o cũng c&oacute; thể sở hữu n&ecirc;n gi&aacute; c&aacute; cho mỗi chai tinh dầu nước hoa chắc chắn rẻ hơn so với c&aacute;c thương hiệu nổi tiếng. Tuy nhi&ecirc;n về hương thơm v&agrave; độ lưu hương th&igrave; kh&ocirc;ng loại nước hoa n&agrave;o c&oacute; thể s&aacute;nh bằng. Kh&ocirc;ng tin bạn c&oacute; thể thử sử dụng 2,3 giọt v&agrave;o cổ tay v&agrave; hoạt động cả ng&agrave;y, m&ugrave;i hương vẫn dai dẳng theo bạn đến tận ng&agrave;y h&ocirc;m sau, d&ugrave; bạn c&oacute; rửa hay đ&atilde; tắm th&igrave; m&ugrave;i thơm vẫn quấn qu&yacute;t xung quanh bạn.</p>\r\n\r\n<p>Tinh dầu nước hoa Dubai gi&aacute; bao nhi&ecirc;u c&oacute; thể gi&aacute; kh&aacute;c nhau t&ugrave;y v&agrave;o m&ugrave;i hương, mẫu m&atilde; chai lọ v&agrave; độ tinh chất. Thường mức gi&aacute; m&agrave; c&aacute;c cửa h&agrave;ng mỹ phẩm hay c&aacute;c shop nước hoa đưa ra kh&ocirc;ng ch&ecirc;nh lệch nhiều so với gi&aacute; gốc, số ch&ecirc;nh lệch đ&oacute; l&agrave; tiền m&agrave; họ đi lấy h&agrave;ng, kiểm định, đ&oacute;ng g&oacute;i v&agrave; vận chuyển đến tay bạn, do đ&oacute; bạn vẫn sở hữu cho m&igrave;nh một chai tinh dầu nước hoa đẳng cấp với gi&aacute; v&ocirc; c&ugrave;ng phải chăng.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"Tinh dầu nước hoa đẳng cấp với giá rẻ\" height=\"600\" loading=\"lazy\" sizes=\"(max-width: 800px) 100vw, 800px\" src=\"https://hungthinhmart.com/wp-content/uploads/2017/12/tinh-dau-nuoc-hoa-dubai-gia-tot.jpg\" srcset=\"https://hungthinhmart.com/wp-content/uploads/2017/12/tinh-dau-nuoc-hoa-dubai-gia-tot.jpg 800w, https://hungthinhmart.com/wp-content/uploads/2017/12/tinh-dau-nuoc-hoa-dubai-gia-tot-510x383.jpg 510w, https://hungthinhmart.com/wp-content/uploads/2017/12/tinh-dau-nuoc-hoa-dubai-gia-tot-400x300.jpg 400w, https://hungthinhmart.com/wp-content/uploads/2017/12/tinh-dau-nuoc-hoa-dubai-gia-tot-768x576.jpg 768w\" width=\"800\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Sở hữu ngay một chai tinh dầu nước hoa đẳng cấp với gi&aacute; rẻ nhất tr&ecirc;n thị trường tại&nbsp;HT Market</strong><br />\r\nCh&iacute;nh v&igrave; vậy, t&ugrave;y từng cửa h&agrave;ng v&agrave; showroom v&agrave; địa chỉ b&aacute;n tinh dầu nước hoa Dubai m&agrave; mức gi&aacute; của c&aacute;c loại nước hoa n&agrave;y c&oacute; mức gi&aacute; ch&ecirc;nh nhau từ 100 &ndash; 300 ng&agrave;n cho một lọ so với gi&aacute; gốc từ nh&agrave; sản xuất. Tại HT Market, mức ch&ecirc;nh lệch n&agrave;y rất thấp do ch&uacute;ng t&ocirc;i trực tiếp lấy h&agrave;ng về, do vậy, khi c&oacute; nhu cầu mua loại tinh dầu nước hoa n&agrave;y, bạn n&ecirc;n đến ngay HT Market để được tư vấn v&agrave; mua ngay một chai nước hoa với gi&aacute; thấp nhất tr&ecirc;n thị trường nh&eacute;! Đặc biệt, đối với kh&aacute;ch lấy gi&aacute; sỉ th&igrave; mức gi&aacute; c&ograve;n thấp hơn rất nhiều!<br />\r\nTinh dầu nước hoa Dubai l&agrave; sản phẩm rất đắt kh&aacute;ch v&agrave; thường chỉ trong một thời gian ngắn l&agrave; sẽ rơi v&agrave;o t&igrave;nh trạng hết h&agrave;ng nhanh ch&oacute;ng. Bạn c&oacute; thể tham khảo mẫu v&agrave; gi&aacute; ngay tại website https://hungthinhmart.com hoặc Facebook: https://www.facebook.com/hungthinhmart/ hoặc để lại số điện thoại b&ecirc;n dưới để được ch&uacute;ng t&ocirc;i tư vấn sớm nhất nh&eacute;!<br />\r\nHT Market &ndash; Chuy&ecirc;n sỉ v&agrave; lẻ tinh dầu nước hoa Dubai ch&iacute;nh h&atilde;ng tr&ecirc;n to&agrave;n quốc.</p>'),
(6, 'vi', 'Tinh dầu nước hoa Dubai giá bao nhiêu?', NULL, 'Tinh dầu nước hoa Dubai tại HT Market là dòng nước hoa nổi tiếng với mùi hương siêu quyến rũ...', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>'),
(7, 'vi', 'Tinh dầu nước hoa mùi nào thơm nhất', NULL, 'Không chỉ mang lại hương thơm nhẹ nhàng mà tinh dầu nước hoa Dubai còn giúp giải tỏa căng thẳng, mệt mỏi với hương thơm nhẹ nhàng tự nhiên đầy quyến rũ', '<header>\r\n<h1>Tinh dầu nước hoa m&ugrave;i n&agrave;o thơm nhất?</h1>\r\n</header>\r\n\r\n<p><em>Kh&ocirc;ng chỉ mang lại hương thơm nhẹ nh&agrave;ng m&agrave; tinh dầu nước hoa Dubai c&ograve;n gi&uacute;p giải tỏa căng thẳng, mệt mỏi với hương thơm nhẹ nh&agrave;ng tự nhi&ecirc;n đầy quyến rũ. Vậy tinh dầu nước hoa Dubai m&ugrave;i n&agrave;o thơm nhất v&agrave; ti&ecirc;u ch&iacute; chọn lựa m&ugrave;i thơm nước hoa th&iacute;ch hợp ch&uacute;ng ta c&ugrave;ng t&igrave;m hiểu.</em></p>\r\n\r\n<p>Hiện nay tinh dầu nước hoa Dubai được xem l&agrave; loại tinh dầu được ưa chuộng nhất hiện nay, với hương thơm tinh tế được chiết xuất tự nhi&ecirc;n với hoa, cỏ, hương gỗ&hellip; Tinh dầu nước hoa du nhập v&agrave;o thị trường Việt Nam v&agrave; nhanh ch&oacute;ng được đ&oacute;n nhận bởi rất nhiều người v&agrave; cả l&agrave;ng nghệ sĩ nổi tiếng.</p>\r\n\r\n<figure aria-describedby=\"caption-attachment-1199\" id=\"attachment_1199\"><img alt=\"Tinh dầu nước hoa Dubai mùi nào thơm \" height=\"556\" loading=\"lazy\" sizes=\"(max-width: 800px) 100vw, 800px\" src=\"https://hungthinhmart.com/wp-content/uploads/2018/05/tinh-dau-nuoc-hoa-dubai-mui-nao-thom-nhat.jpg\" srcset=\"https://hungthinhmart.com/wp-content/uploads/2018/05/tinh-dau-nuoc-hoa-dubai-mui-nao-thom-nhat.jpg 800w, https://hungthinhmart.com/wp-content/uploads/2018/05/tinh-dau-nuoc-hoa-dubai-mui-nao-thom-nhat-510x354.jpg 510w, https://hungthinhmart.com/wp-content/uploads/2018/05/tinh-dau-nuoc-hoa-dubai-mui-nao-thom-nhat-400x278.jpg 400w, https://hungthinhmart.com/wp-content/uploads/2018/05/tinh-dau-nuoc-hoa-dubai-mui-nao-thom-nhat-768x534.jpg 768w\" width=\"800\" />\r\n<figcaption id=\"caption-attachment-1199\">Tinh dầu nước hoa Dubai với nhiều hương thơm tinh tế</figcaption>\r\n</figure>\r\n\r\n<p>C&oacute; rất nhiều người thắc mắc tinh dầu nước hoa Dubai m&ugrave;i n&agrave;o thơm nhất? C&acirc;u hỏi n&agrave;y thật kh&oacute; trả lời bởi tinh dầu nước hoa Dubai c&oacute; h&agrave;ng trăm m&ugrave;i thơm kh&aacute;c nhau, mỗi m&ugrave;i lại c&oacute; những đặc trưng kh&aacute;c nhau ph&ugrave; hợp với từng ho&agrave;n cảnh hay với từng người. HT Market sẽ giới thiệu với bạn một số m&ugrave;i thơm được nhiều người lựa chọn dưới đ&acirc;y.</p>\r\n\r\n<h2>Tinh dầu nước hoa Dubai m&ugrave;i n&agrave;o thơm nhất được nhiều người y&ecirc;u th&iacute;ch?</h2>\r\n\r\n<p>Mục lục</p>\r\n\r\n<nav>\r\n<ul>\r\n	<li><a href=\"https://hungthinhmart.com/tinh-dau-nuoc-hoa-mui-nao-thom-nhat#Tinh_dau_nuoc_hoa_Dubai_mui_nao_thom_nhat_duoc_nhieu_nguoi_yeu_thich\" title=\"Tinh dầu nước hoa Dubai mùi nào thơm nhất được nhiều người yêu thích?\">Tinh dầu nước hoa Dubai m&ugrave;i n&agrave;o thơm nhất được nhiều người y&ecirc;u th&iacute;ch?</a></li>\r\n	<li><a href=\"https://hungthinhmart.com/tinh-dau-nuoc-hoa-mui-nao-thom-nhat#Chon_tinh_dau_nuoc_hoa_voi_huong_thom_theo_mua\" title=\"Chọn tinh dầu nước hoa với hương thơm theo mùa\">Chọn tinh dầu nước hoa với hương thơm theo m&ugrave;a</a></li>\r\n</ul>\r\n</nav>\r\n\r\n<p>Nước hoa Dubai lưu giữ hương thơm cực kỳ laaum do vậy bạn c&oacute; thể sử dụng tinh dầu nước hoa để tạo n&ecirc;n sự tinh tế, nổi bật v&agrave; cuốn h&uacute;t hơn cho mỗi sự kiện trong ng&agrave;y.</p>\r\n\r\n<p><strong>Miss Universe</strong>&nbsp;&ndash; Mang lại m&ugrave;i hương năng động v&agrave; tươi trẻ. Với những th&agrave;nh phần ch&iacute;nh: Xạ hương, tinh chất &ocirc; Liu, tinh chất Bạch Đ&agrave;n, tinh chất hoa Nh&agrave;i.</p>\r\n\r\n<figure aria-describedby=\"caption-attachment-1200\" id=\"attachment_1200\"><img alt=\"Mùi hương Miss Universe năng động tươi trẻ \" height=\"771\" loading=\"lazy\" sizes=\"(max-width: 800px) 100vw, 800px\" src=\"https://hungthinhmart.com/wp-content/uploads/2018/05/tinh-dau-nuoc-hoa-dubai-mui-Miss-Universe.jpg\" srcset=\"https://hungthinhmart.com/wp-content/uploads/2018/05/tinh-dau-nuoc-hoa-dubai-mui-Miss-Universe.jpg 800w, https://hungthinhmart.com/wp-content/uploads/2018/05/tinh-dau-nuoc-hoa-dubai-mui-Miss-Universe-510x492.jpg 510w, https://hungthinhmart.com/wp-content/uploads/2018/05/tinh-dau-nuoc-hoa-dubai-mui-Miss-Universe-400x386.jpg 400w, https://hungthinhmart.com/wp-content/uploads/2018/05/tinh-dau-nuoc-hoa-dubai-mui-Miss-Universe-768x740.jpg 768w\" width=\"800\" />\r\n<figcaption id=\"caption-attachment-1200\">M&ugrave;i hương Miss Universe năng động tươi trẻ</figcaption>\r\n</figure>\r\n\r\n<p><strong>Lucky</strong>&nbsp;&ndash; Với hương thơm nồng n&agrave;n, c&aacute; t&iacute;nh được chiết xuất từ hương thơm của Đ&agrave;n hương, tinh chất Hoa hồng, Oải hương, v&agrave; tinh dầu Trầm. Loại tinh dầu n&agrave;y th&iacute;ch hợp cho cả nam giới v&agrave; nữ giới.</p>\r\n\r\n<p><strong>Extra Pure</strong>&nbsp;&ndash; Mang hương thơm vanille v&ocirc; c&ugrave;ng sexy gợi cảm, m&ugrave;i hương th&iacute;ch hợp với những buổi hẹn h&ograve; l&atilde;ng mạn.</p>\r\n\r\n<p><strong>Fantabulous</strong>&nbsp;&ndash; Với hương vitamin ngọt lịm, hương thơm với c&aacute;c th&agrave;nh phần oải hương, tinh dầu Trầm, tinh chất hoa Violet, Đ&agrave;n hương.</p>\r\n\r\n<p><strong>Cool moon</strong>&nbsp;&ndash; M&ugrave;i hương mang đến sự tươi m&aacute;t v&agrave; trẻ trung, thoải m&aacute;i d&ugrave;ng được cho cả nam giới v&agrave; nữ giới.</p>\r\n\r\n<h2>Chọn tinh dầu nước hoa với hương thơm theo m&ugrave;a</h2>\r\n\r\n<p>Ngo&agrave;i những hương thơm được nhắc đến ở tr&ecirc;n, để trả lời cho c&acirc;u hỏi tinh dầu nước hoa Dubai m&ugrave;i n&agrave;o thơm nhất c&ograve;n c&oacute; nhiều yếu tố ảnh hưởng đến c&aacute;c m&ugrave;a trong năm. Theo đ&oacute; t&ugrave;y v&agrave;o mỗi m&ugrave;a trong năm m&agrave; ch&uacute;ng ta c&oacute; thể chọn được những hương thơm th&iacute;ch hợp như:</p>\r\n\r\n<p><img alt=\"nuoc hoa nu Carolina Herrera Good Girl\" height=\"972\" loading=\"lazy\" sizes=\"(max-width: 856px) 100vw, 856px\" src=\"https://hungthinhmart.com/wp-content/uploads/2017/12/nuoc-hoa-nu-Carolina-Herrera-Good-Girl.jpg\" srcset=\"https://hungthinhmart.com/wp-content/uploads/2017/12/nuoc-hoa-nu-Carolina-Herrera-Good-Girl.jpg 856w, https://hungthinhmart.com/wp-content/uploads/2017/12/nuoc-hoa-nu-Carolina-Herrera-Good-Girl-510x579.jpg 510w, https://hungthinhmart.com/wp-content/uploads/2017/12/nuoc-hoa-nu-Carolina-Herrera-Good-Girl-352x400.jpg 352w, https://hungthinhmart.com/wp-content/uploads/2017/12/nuoc-hoa-nu-Carolina-Herrera-Good-Girl-768x872.jpg 768w\" width=\"856\" /></p>\r\n\r\n<p><strong>M&ugrave;a xu&acirc;n:</strong>&nbsp;M&ugrave;a xu&acirc;n với sự giao thoa đất trời, bạn c&oacute; thể chọn những m&ugrave;i hương tinh dầu nước hoa với những hương thơm nhẹ nh&agrave;ng như hương cam, chanh tươi&hellip; để ph&ugrave; hợp với sự tươi vui v&agrave; hưng phấn của m&ugrave;a xu&acirc;n tươi đẹp.</p>\r\n\r\n<p><strong>M&ugrave;a h&egrave; s&ocirc;i động:</strong>&nbsp;Thời tiết n&oacute;ng bức của m&ugrave;a h&egrave; sẽ t&aacute;c động v&agrave; l&agrave;m tinh dầu nước hoa nhanh bay hơi hơn, do vậy bạn n&ecirc;n chọn những hương thơm mang lại sự sảng khoasim dịu m&aacute;t để sử dụng.</p>\r\n\r\n<p><strong>M&ugrave;a động kh&ocirc;ng kh&iacute; lạnh</strong>: V&agrave;o m&ugrave;a đ&ocirc;ng kh&ocirc;ng kh&iacute; lạnh hơn n&ecirc;n m&ugrave;i hương cũng lưu lại l&acirc;u hơn tr&ecirc;n cơ thể, bạn ho&agrave;n to&agrave;n c&oacute; thể chọn c&aacute;c hương thơm ưa th&iacute;ch hoặc những m&ugrave;i hương nồng n&agrave;n đều th&iacute;ch hợp.</p>\r\n\r\n<p><strong>M&ugrave;a thu nhẹ nh&agrave;ng</strong>: V&agrave;o tiết thời m&ugrave;a thu nhẹ nh&agrave;ng bạn c&oacute; thể lựa chọn những hương thơm nhẹ c&oacute; m&ugrave;i thoang thoảng hay m&ugrave;i quế tinh tế&hellip;</p>\r\n\r\n<p>Để t&igrave;m mua tinh dầu nước hoa Dubai ch&iacute;nh h&atilde;ng v&agrave; t&igrave;m được nước hoa Dubai m&ugrave;i n&agrave;o thơm nhất, h&atilde;y đến với HT Market &ndash; đại l&yacute; ph&acirc;n phối c&aacute;c sản phẩm tinh dầu nước hoa Dubai tr&ecirc;n cả nước với mức gi&aacute; thấp hơn so với mặt bằng chung tr&ecirc;n thị trường. Hi vọng với những th&ocirc;ng tin tr&ecirc;n bạn sẽ biết c&aacute;ch lựa chọn hương thơm ph&ugrave; hợp.</p>');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sc_shop_order`
--

CREATE TABLE `sc_shop_order` (
  `id` int(10) UNSIGNED NOT NULL,
  `customer_id` int(11) NOT NULL,
  `domain` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subtotal` int(11) DEFAULT 0,
  `shipping` int(11) DEFAULT 0,
  `discount` int(11) DEFAULT 0,
  `payment_status` int(11) NOT NULL DEFAULT 1,
  `shipping_status` int(11) NOT NULL DEFAULT 1,
  `status` int(11) NOT NULL DEFAULT 0,
  `tax` int(11) DEFAULT 0,
  `total` int(11) DEFAULT 0,
  `currency` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `exchange_rate` double(8,2) DEFAULT NULL,
  `received` int(11) DEFAULT 0,
  `balance` int(11) DEFAULT 0,
  `first_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `first_name_kana` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name_kana` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address1` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address2` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address3` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT 'VN',
  `company` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `postcode` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment` varchar(300) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_method` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_method` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ip` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `transaction` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `sc_shop_order`
--

INSERT INTO `sc_shop_order` (`id`, `customer_id`, `domain`, `subtotal`, `shipping`, `discount`, `payment_status`, `shipping_status`, `status`, `tax`, `total`, `currency`, `exchange_rate`, `received`, `balance`, `first_name`, `last_name`, `first_name_kana`, `last_name_kana`, `address1`, `address2`, `address3`, `country`, `company`, `postcode`, `phone`, `email`, `comment`, `payment_method`, `shipping_method`, `user_agent`, `ip`, `transaction`, `created_at`, `updated_at`) VALUES
(1, 0, 'http://localhost/hamaiperfume', 2999000, 0, 0, 1, 1, 1, 0, 2999000, 'VND', 1.00, 0, 2999000, 'DO', 'Hung', NULL, NULL, 'TP Thái Nguyên', 'Quyet thang', NULL, 'VN', NULL, NULL, '1656788729', 'VUVANLONG798@GMAIL.COM', NULL, 'Cash', 'ShippingStandard', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '::1', NULL, '2022-01-13 14:43:44', '2022-01-13 14:43:44'),
(2, 0, 'http://localhost/hamaiperfume', 60000, 0, 0, 1, 1, 1, 0, 60000, 'VND', 1.00, 0, 60000, 'DO', 'Hung', NULL, NULL, 'TP Thái Nguyên', 'Quyet thang', NULL, 'VN', NULL, NULL, '1656788729', 'hung12345678@GMAIL.COM', NULL, 'Cash', 'ShippingStandard', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '::1', NULL, '2022-01-13 14:45:08', '2022-01-13 14:45:08'),
(3, 0, 'http://localhost/hamaiperfume', 3003000, 0, 0, 1, 1, 1, 0, 3003000, 'VND', 1.00, 0, 3003000, 'DO', 'Hung', NULL, NULL, 'TP Thái Nguyên', 'Quyet thang', NULL, 'VN', NULL, NULL, '1656788729', 'hung12345678@GMAIL.COM', 'dfdf', 'Cash', 'ShippingStandard', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '::1', NULL, '2022-01-13 14:51:19', '2022-01-13 14:51:19'),
(4, 0, 'http://localhost/hamaiperfume', 3003000, 0, 0, 1, 1, 1, 0, 3003000, 'VND', 1.00, 0, 3003000, 'DO', 'Hung', NULL, NULL, 'TP Thái Nguyên', 'Quyet thang', NULL, 'VN', NULL, NULL, '1656788729', 'hung12345678@GMAIL.COM', 'fdfdf', 'Cash', 'ShippingStandard', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '::1', NULL, '2022-01-13 14:58:01', '2022-01-13 14:58:01'),
(5, 0, 'http://127.0.0.1:8000', 8608000, 0, 0, 1, 1, 1, 0, 8608000, 'VND', 1.00, 0, 8608000, 'Hùng', 'Hùng Văn Đỗ', NULL, NULL, 'Xã Quyết Thắng- Thành Phố Thái Nguyên- tỉnh Thái Nguyên', 'gfdg', NULL, 'VN', NULL, NULL, '0396645809', 'dohung28599@gmail.com', 'hghgg', 'Cash', 'ShippingStandard', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36', '127.0.0.1', NULL, '2022-01-15 12:56:29', '2022-01-15 12:56:29');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sc_shop_order_detail`
--

CREATE TABLE `sc_shop_order_detail` (
  `id` int(10) UNSIGNED NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int(11) NOT NULL DEFAULT 0,
  `qty` int(11) NOT NULL DEFAULT 0,
  `store_id` int(11) NOT NULL DEFAULT 1,
  `total_price` int(11) NOT NULL DEFAULT 0,
  `tax` int(11) NOT NULL DEFAULT 0,
  `sku` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `currency` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `exchange_rate` double(8,2) DEFAULT NULL,
  `attribute` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `sc_shop_order_detail`
--

INSERT INTO `sc_shop_order_detail` (`id`, `order_id`, `product_id`, `name`, `price`, `qty`, `store_id`, `total_price`, `tax`, `sku`, `currency`, `exchange_rate`, `attribute`, `created_at`, `updated_at`) VALUES
(1, 1, 12, 'Nước hoa Nữ Dubai Mazaaji EDP', 2999000, 1, 1, 2999000, 0, '3D-CARBON175', 'VND', 1.00, '[]', '2022-01-13 14:43:44', '2022-01-13 14:43:44'),
(2, 2, 14, 'Easy Polo Black Edition 14', 15000, 4, 1, 60000, 0, 'LCD12864-3D', 'VND', 1.00, '[]', '2022-01-13 14:45:08', '2022-01-13 14:45:08'),
(3, 3, 13, 'Easy Polo Black Edition 13', 4000, 1, 1, 4000, 0, '3D-GOLD175', 'VND', 1.00, '[]', '2022-01-13 14:51:19', '2022-01-13 14:51:19'),
(4, 3, 12, 'Nước hoa Nữ Dubai Mazaaji EDP', 2999000, 1, 1, 2999000, 0, '3D-CARBON175', 'VND', 1.00, '[]', '2022-01-13 14:51:19', '2022-01-13 14:51:19'),
(5, 4, 13, 'Easy Polo Black Edition 13', 4000, 1, 1, 4000, 0, '3D-GOLD175', 'VND', 1.00, '[]', '2022-01-13 14:58:01', '2022-01-13 14:58:01'),
(6, 4, 12, 'Nước hoa Nữ Dubai Mazaaji EDP', 2999000, 1, 1, 2999000, 0, '3D-CARBON175', 'VND', 1.00, '[]', '2022-01-13 14:58:01', '2022-01-13 14:58:01'),
(7, 5, 14, 'Nước hoa paris bleu fleurs  sistelle', 870000, 3, 1, 2610000, 0, 'LCD12864-3D', 'VND', 1.00, '[]', '2022-01-15 12:56:29', '2022-01-15 12:56:29'),
(8, 5, 12, 'Nước hoa Nữ Dubai Mazaaji EDP', 2999000, 2, 1, 5998000, 0, '3D-CARBON175', 'VND', 1.00, '[]', '2022-01-15 12:56:29', '2022-01-15 12:56:29');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sc_shop_order_history`
--

CREATE TABLE `sc_shop_order_history` (
  `id` int(10) UNSIGNED NOT NULL,
  `order_id` int(11) NOT NULL,
  `content` varchar(300) COLLATE utf8mb4_unicode_ci NOT NULL,
  `admin_id` int(11) NOT NULL DEFAULT 0,
  `customer_id` int(11) NOT NULL DEFAULT 0,
  `order_status_id` int(11) NOT NULL DEFAULT 0,
  `add_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `sc_shop_order_history`
--

INSERT INTO `sc_shop_order_history` (`id`, `order_id`, `content`, `admin_id`, `customer_id`, `order_status_id`, `add_date`) VALUES
(1, 1, 'New order', 1, 0, 1, '2022-01-13 21:43:44'),
(2, 2, 'New order', 1, 0, 1, '2022-01-13 21:45:08'),
(3, 3, 'New order', 1, 0, 1, '2022-01-13 21:51:19'),
(4, 4, 'New order', 1, 0, 1, '2022-01-13 21:58:02'),
(5, 5, 'New order', 1, 0, 1, '2022-01-15 19:56:29');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sc_shop_order_status`
--

CREATE TABLE `sc_shop_order_status` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `sc_shop_order_status`
--

INSERT INTO `sc_shop_order_status` (`id`, `name`) VALUES
(1, 'New'),
(2, 'Processing'),
(3, 'Hold'),
(4, 'Canceled'),
(5, 'Done'),
(6, 'Failed');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sc_shop_order_total`
--

CREATE TABLE `sc_shop_order_total` (
  `id` int(10) UNSIGNED NOT NULL,
  `order_id` int(11) NOT NULL,
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` int(11) NOT NULL DEFAULT 0,
  `text` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sort` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `sc_shop_order_total`
--

INSERT INTO `sc_shop_order_total` (`id`, `order_id`, `title`, `code`, `value`, `text`, `sort`, `created_at`, `updated_at`) VALUES
(1, 1, 'Tiền hàng', 'subtotal', 2999000, '2,999,000₫', 1, '2022-01-13 14:43:44', NULL),
(2, 1, 'Thuế', 'tax', 0, '0₫', 2, '2022-01-13 14:43:44', NULL),
(3, 1, 'Vận chuyển cơ bản', 'shipping', 0, '0₫', 10, '2022-01-13 14:43:44', NULL),
(4, 1, 'Giảm giá', 'discount', 0, '0', 20, '2022-01-13 14:43:44', NULL),
(5, 1, 'Tổng tiền', 'total', 2999000, '2,999,000₫', 100, '2022-01-13 14:43:44', NULL),
(6, 1, 'Đã nhận', 'received', 0, '0', 200, '2022-01-13 14:43:44', NULL),
(7, 2, 'Tiền hàng', 'subtotal', 60000, '60,000₫', 1, '2022-01-13 14:45:08', NULL),
(8, 2, 'Thuế', 'tax', 0, '0₫', 2, '2022-01-13 14:45:08', NULL),
(9, 2, 'Vận chuyển cơ bản', 'shipping', 0, '0₫', 10, '2022-01-13 14:45:08', NULL),
(10, 2, 'Giảm giá', 'discount', 0, '0', 20, '2022-01-13 14:45:08', NULL),
(11, 2, 'Tổng tiền', 'total', 60000, '60,000₫', 100, '2022-01-13 14:45:08', NULL),
(12, 2, 'Đã nhận', 'received', 0, '0', 200, '2022-01-13 14:45:08', NULL),
(13, 3, 'Tiền hàng', 'subtotal', 3003000, '3,003,000₫', 1, '2022-01-13 14:51:19', NULL),
(14, 3, 'Thuế', 'tax', 0, '0₫', 2, '2022-01-13 14:51:19', NULL),
(15, 3, 'Vận chuyển cơ bản', 'shipping', 0, '0₫', 10, '2022-01-13 14:51:19', NULL),
(16, 3, 'Giảm giá', 'discount', 0, '0', 20, '2022-01-13 14:51:19', NULL),
(17, 3, 'Tổng tiền', 'total', 3003000, '3,003,000₫', 100, '2022-01-13 14:51:19', NULL),
(18, 3, 'Đã nhận', 'received', 0, '0', 200, '2022-01-13 14:51:19', NULL),
(19, 4, 'Tiền hàng', 'subtotal', 3003000, '3,003,000₫', 1, '2022-01-13 14:58:01', NULL),
(20, 4, 'Thuế', 'tax', 0, '0₫', 2, '2022-01-13 14:58:01', NULL),
(21, 4, 'Vận chuyển cơ bản', 'shipping', 0, '0₫', 10, '2022-01-13 14:58:01', NULL),
(22, 4, 'Giảm giá', 'discount', 0, '0', 20, '2022-01-13 14:58:01', NULL),
(23, 4, 'Tổng tiền', 'total', 3003000, '3,003,000₫', 100, '2022-01-13 14:58:01', NULL),
(24, 4, 'Đã nhận', 'received', 0, '0', 200, '2022-01-13 14:58:01', NULL),
(25, 5, 'Tiền hàng', 'subtotal', 8608000, '8,608,000₫', 1, '2022-01-15 12:56:29', NULL),
(26, 5, 'Thuế', 'tax', 0, '0₫', 2, '2022-01-15 12:56:29', NULL),
(27, 5, 'Vận chuyển cơ bản', 'shipping', 0, '0₫', 10, '2022-01-15 12:56:29', NULL),
(28, 5, 'Giảm giá', 'discount', 0, '0', 20, '2022-01-15 12:56:29', NULL),
(29, 5, 'Tổng tiền', 'total', 8608000, '8,608,000₫', 100, '2022-01-15 12:56:29', NULL),
(30, 5, 'Đã nhận', 'received', 0, '0', 200, '2022-01-15 12:56:29', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sc_shop_page`
--

CREATE TABLE `sc_shop_page` (
  `id` int(10) UNSIGNED NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `alias` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `store_id` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `sc_shop_page`
--

INSERT INTO `sc_shop_page` (`id`, `image`, `alias`, `status`, `store_id`) VALUES
(1, NULL, 'about', 1, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sc_shop_page_description`
--

CREATE TABLE `sc_shop_page_description` (
  `page_id` int(11) NOT NULL,
  `lang` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `keyword` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(300) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `sc_shop_page_description`
--

INSERT INTO `sc_shop_page_description` (`page_id`, `lang`, `title`, `keyword`, `description`, `content`) VALUES
(1, 'en', 'About', NULL, NULL, '<h1>VỀ KING PERFUME</h1>\r\n\r\n<p>KING PERFUME được th&agrave;nh lập v&agrave;o năm 2017, l&agrave; một trong những đơn vị chuy&ecirc;n ph&acirc;n phối d&ograve;ng sản phẩm Tinh dầu nước hoa Dubai ch&iacute;nh h&atilde;ng.</p>\r\n\r\n<p>KING PERFUME ra đời nhằm khai th&aacute;c nhu cầu đang tăng l&ecirc;n của thị trường nước hoa Việt Nam, KING PERFUME được kh&aacute;ch h&agrave;ng đ&aacute;nh gi&aacute; rất cao về d&ograve;ng sản phẩm tinh dầu Dubai v&agrave; nước hoa Dubai do mẫu m&atilde; phong ph&uacute; v&agrave; chất lượng tốt.</p>\r\n\r\n<p><img alt=\"\" height=\"700\" loading=\"lazy\" sizes=\"(max-width: 1884px) 100vw, 1884px\" src=\"https://shopkingperfume.com/wp-content/uploads/2021/04/banner.png\" srcset=\"https://shopkingperfume.com/wp-content/uploads/2021/04/banner.png 1884w, https://shopkingperfume.com/wp-content/uploads/2021/04/banner-400x149.png 400w, https://shopkingperfume.com/wp-content/uploads/2021/04/banner-1024x380.png 1024w, https://shopkingperfume.com/wp-content/uploads/2021/04/banner-768x285.png 768w, https://shopkingperfume.com/wp-content/uploads/2021/04/banner-1536x571.png 1536w, https://shopkingperfume.com/wp-content/uploads/2021/04/banner-510x189.png 510w\" width=\"1884\" /></p>\r\n\r\n<p>Cho đến nay, KING PERFUME lu&ocirc;n nỗ lực kh&ocirc;ng ngừng trong việc đa dạng ho&aacute; d&ograve;ng sản phẩm để phục vụ nhu cầu ng&agrave;y c&agrave;ng cao của kh&aacute;ch h&agrave;ng. Bởi vậy, ngo&agrave;i cung cấp sản phẩm tinh dầu Dubai nội địa, tinh dầu Dubai thiết kế, ch&uacute;ng t&ocirc;i c&ograve;n cập nhập th&ecirc;m nhiều sản phẩm tốt cho sức khoẻ như Saffaron, Mỹ phẩm Jericho nhập khẩu từ Israel,&hellip;</p>\r\n\r\n<p>Ngo&agrave;i ra KING PERFUME c&ograve;n chuy&ecirc;n order h&agrave;ng x&aacute;ch tay ch&iacute;nh h&atilde;ng từ thị trường Mỹ, &Uacute;c, H&agrave;n, Nhật,&hellip; với nhiều sản phẩm đa dạng như mỹ phẩm, nước hoa, thực phẩm chức năng, gi&agrave;y d&eacute;p, t&uacute;i x&aacute;ch,&hellip;.</p>\r\n\r\n<p>KING PERFUME&nbsp;tin rằng với những nỗ lực v&agrave; chất lượng sản phẩm mang tới, ch&uacute;ng t&ocirc;i sẽ c&ograve;n ph&aacute;t triển hơn nữa trong thời gian sắp tới. Đến với ch&uacute;ng t&ocirc;i, kh&aacute;ch h&agrave;ng ti&ecirc;u d&ugrave;ng sẽ lựa chọn được những sản phẩm ch&iacute;nh h&atilde;ng với chất lượng tốt nhất tr&ecirc;n thị trường.</p>\r\n\r\n<h2><strong>VỀ THƯƠNG HIỆU DUBAI LUXYRY</strong></h2>\r\n\r\n<p>Hiện nay tr&ecirc;n thị trường c&oacute; rất nhiều đơn vị b&aacute;n sản phẩm tinh dầu nước hoa Dubai v&agrave; nước hoa Dubai, tuy nhi&ecirc;n chưa thực sự c&oacute; nhiều đơn vị uy t&iacute;n v&agrave; b&aacute;n sản phẩm n&agrave;y chất lượng. Nhu cầu sở hữu một chai tinh dầu nước hoa tăng cao cũng dẫn đến h&agrave;ng giả, h&agrave;ng nh&aacute;i, h&agrave;ng k&eacute;m chất lượng xuất hiện tr&agrave;n lan.</p>\r\n\r\n<p>Hiểu được điều đ&oacute;, DUBAI LUXURY l&agrave; thương hiệu tinh dầu nước hoa Dubai do KING PERFUME x&aacute;ch tay v&agrave; ph&acirc;n phối ra đời nhằm mang đến cho qu&yacute; kh&aacute;ch h&agrave;ng những sản phẩm tinh dầu nước hoa, nước hoa Dubai CH&Iacute;NH H&Atilde;NG &ndash; CHẤT LƯỢNG &ndash; UY T&Iacute;N H&Agrave;NG ĐẦU.</p>\r\n\r\n<figure aria-describedby=\"caption-attachment-3680\" id=\"attachment_3680\"><img alt=\"Logo và bao bì sản phẩm thương hiệu Dubai Luxury\" height=\"498\" loading=\"lazy\" sizes=\"(max-width: 640px) 100vw, 640px\" src=\"https://shopkingperfume.com/wp-content/uploads/2019/11/bao-bi-nuoc-hoa-dubai-luxury-1024x797.jpg\" srcset=\"https://shopkingperfume.com/wp-content/uploads/2019/11/bao-bi-nuoc-hoa-dubai-luxury-1024x797.jpg 1024w, https://shopkingperfume.com/wp-content/uploads/2019/11/bao-bi-nuoc-hoa-dubai-luxury-510x397.jpg 510w, https://shopkingperfume.com/wp-content/uploads/2019/11/bao-bi-nuoc-hoa-dubai-luxury-400x311.jpg 400w, https://shopkingperfume.com/wp-content/uploads/2019/11/bao-bi-nuoc-hoa-dubai-luxury-768x598.jpg 768w, https://shopkingperfume.com/wp-content/uploads/2019/11/bao-bi-nuoc-hoa-dubai-luxury.jpg 1200w\" width=\"640\" />\r\n<figcaption id=\"caption-attachment-3680\">Logo v&agrave; bao b&igrave; sản phẩm thương hiệu Dubai Luxury</figcaption>\r\n</figure>\r\n\r\n<p>Sản phẩm của ch&uacute;ng t&ocirc;i CAM KẾT đều l&agrave; h&agrave;ng ch&iacute;nh h&atilde;ng 100%, n&oacute;i kh&ocirc;ng với h&agrave;ng giả, h&agrave;ng pha, h&agrave;ng k&eacute;m chất lượng.</p>\r\n\r\n<p>Với ti&ecirc;u ch&iacute; mang đến cho kh&aacute;ch h&agrave;ng những sản phẩm ĐỘC Đ&Aacute;O &ndash; SANG TRỌNG &ndash; ĐẲNG CẤP, KING PERFUME tin rằng sẽ mang đến cho qu&yacute; kh&aacute;ch h&agrave;ng những sản phẩm &ldquo;CHẤT LƯỢNG VƯỢT NIỀM TIN&rdquo;, tức l&agrave; chất lượng vượt tr&ecirc;n cả sự mong đợi của qu&yacute; kh&aacute;ch!</p>\r\n\r\n<p>H&atilde;y đến với KING PERFUME ngay h&ocirc;m nay để trải nghiệm v&agrave; sở hữu những m&ugrave;i hương ph&ugrave; hợp để thể hiện c&aacute; t&iacute;nh, sự đẳng cấp của ch&iacute;nh bạn!</p>'),
(1, 'vi', 'Giới thiệu', NULL, NULL, '<h1>VỀ KING PERFUME</h1>\r\n\r\n<p>KING PERFUME được th&agrave;nh lập v&agrave;o năm 2017, l&agrave; một trong những đơn vị chuy&ecirc;n ph&acirc;n phối d&ograve;ng sản phẩm Tinh dầu nước hoa Dubai ch&iacute;nh h&atilde;ng.</p>\r\n\r\n<p>KING PERFUME ra đời nhằm khai th&aacute;c nhu cầu đang tăng l&ecirc;n của thị trường nước hoa Việt Nam, KING PERFUME được kh&aacute;ch h&agrave;ng đ&aacute;nh gi&aacute; rất cao về d&ograve;ng sản phẩm tinh dầu Dubai v&agrave; nước hoa Dubai do mẫu m&atilde; phong ph&uacute; v&agrave; chất lượng tốt.</p>\r\n\r\n<p><img alt=\"\" height=\"700\" loading=\"lazy\" sizes=\"(max-width: 1884px) 100vw, 1884px\" src=\"https://shopkingperfume.com/wp-content/uploads/2021/04/banner.png\" srcset=\"https://shopkingperfume.com/wp-content/uploads/2021/04/banner.png 1884w, https://shopkingperfume.com/wp-content/uploads/2021/04/banner-400x149.png 400w, https://shopkingperfume.com/wp-content/uploads/2021/04/banner-1024x380.png 1024w, https://shopkingperfume.com/wp-content/uploads/2021/04/banner-768x285.png 768w, https://shopkingperfume.com/wp-content/uploads/2021/04/banner-1536x571.png 1536w, https://shopkingperfume.com/wp-content/uploads/2021/04/banner-510x189.png 510w\" width=\"1884\" /></p>\r\n\r\n<p>Cho đến nay, KING PERFUME lu&ocirc;n nỗ lực kh&ocirc;ng ngừng trong việc đa dạng ho&aacute; d&ograve;ng sản phẩm để phục vụ nhu cầu ng&agrave;y c&agrave;ng cao của kh&aacute;ch h&agrave;ng. Bởi vậy, ngo&agrave;i cung cấp sản phẩm tinh dầu Dubai nội địa, tinh dầu Dubai thiết kế, ch&uacute;ng t&ocirc;i c&ograve;n cập nhập th&ecirc;m nhiều sản phẩm tốt cho sức khoẻ như Saffaron, Mỹ phẩm Jericho nhập khẩu từ Israel,&hellip;</p>\r\n\r\n<p>Ngo&agrave;i ra KING PERFUME c&ograve;n chuy&ecirc;n order h&agrave;ng x&aacute;ch tay ch&iacute;nh h&atilde;ng từ thị trường Mỹ, &Uacute;c, H&agrave;n, Nhật,&hellip; với nhiều sản phẩm đa dạng như mỹ phẩm, nước hoa, thực phẩm chức năng, gi&agrave;y d&eacute;p, t&uacute;i x&aacute;ch,&hellip;.</p>\r\n\r\n<p>KING PERFUME&nbsp;tin rằng với những nỗ lực v&agrave; chất lượng sản phẩm mang tới, ch&uacute;ng t&ocirc;i sẽ c&ograve;n ph&aacute;t triển hơn nữa trong thời gian sắp tới. Đến với ch&uacute;ng t&ocirc;i, kh&aacute;ch h&agrave;ng ti&ecirc;u d&ugrave;ng sẽ lựa chọn được những sản phẩm ch&iacute;nh h&atilde;ng với chất lượng tốt nhất tr&ecirc;n thị trường.</p>\r\n\r\n<h2><strong>VỀ THƯƠNG HIỆU DUBAI LUXYRY</strong></h2>\r\n\r\n<p>Hiện nay tr&ecirc;n thị trường c&oacute; rất nhiều đơn vị b&aacute;n sản phẩm tinh dầu nước hoa Dubai v&agrave; nước hoa Dubai, tuy nhi&ecirc;n chưa thực sự c&oacute; nhiều đơn vị uy t&iacute;n v&agrave; b&aacute;n sản phẩm n&agrave;y chất lượng. Nhu cầu sở hữu một chai tinh dầu nước hoa tăng cao cũng dẫn đến h&agrave;ng giả, h&agrave;ng nh&aacute;i, h&agrave;ng k&eacute;m chất lượng xuất hiện tr&agrave;n lan.</p>\r\n\r\n<p>Hiểu được điều đ&oacute;, DUBAI LUXURY l&agrave; thương hiệu tinh dầu nước hoa Dubai do KING PERFUME x&aacute;ch tay v&agrave; ph&acirc;n phối ra đời nhằm mang đến cho qu&yacute; kh&aacute;ch h&agrave;ng những sản phẩm tinh dầu nước hoa, nước hoa Dubai CH&Iacute;NH H&Atilde;NG &ndash; CHẤT LƯỢNG &ndash; UY T&Iacute;N H&Agrave;NG ĐẦU.</p>\r\n\r\n<figure aria-describedby=\"caption-attachment-3680\" id=\"attachment_3680\"><img alt=\"Logo và bao bì sản phẩm thương hiệu Dubai Luxury\" height=\"498\" loading=\"lazy\" sizes=\"(max-width: 640px) 100vw, 640px\" src=\"https://shopkingperfume.com/wp-content/uploads/2019/11/bao-bi-nuoc-hoa-dubai-luxury-1024x797.jpg\" srcset=\"https://shopkingperfume.com/wp-content/uploads/2019/11/bao-bi-nuoc-hoa-dubai-luxury-1024x797.jpg 1024w, https://shopkingperfume.com/wp-content/uploads/2019/11/bao-bi-nuoc-hoa-dubai-luxury-510x397.jpg 510w, https://shopkingperfume.com/wp-content/uploads/2019/11/bao-bi-nuoc-hoa-dubai-luxury-400x311.jpg 400w, https://shopkingperfume.com/wp-content/uploads/2019/11/bao-bi-nuoc-hoa-dubai-luxury-768x598.jpg 768w, https://shopkingperfume.com/wp-content/uploads/2019/11/bao-bi-nuoc-hoa-dubai-luxury.jpg 1200w\" width=\"640\" />\r\n<figcaption id=\"caption-attachment-3680\">Logo v&agrave; bao b&igrave; sản phẩm thương hiệu Dubai Luxury</figcaption>\r\n</figure>\r\n\r\n<p>Sản phẩm của ch&uacute;ng t&ocirc;i CAM KẾT đều l&agrave; h&agrave;ng ch&iacute;nh h&atilde;ng 100%, n&oacute;i kh&ocirc;ng với h&agrave;ng giả, h&agrave;ng pha, h&agrave;ng k&eacute;m chất lượng.</p>\r\n\r\n<p>Với ti&ecirc;u ch&iacute; mang đến cho kh&aacute;ch h&agrave;ng những sản phẩm ĐỘC Đ&Aacute;O &ndash; SANG TRỌNG &ndash; ĐẲNG CẤP, KING PERFUME tin rằng sẽ mang đến cho qu&yacute; kh&aacute;ch h&agrave;ng những sản phẩm &ldquo;CHẤT LƯỢNG VƯỢT NIỀM TIN&rdquo;, tức l&agrave; chất lượng vượt tr&ecirc;n cả sự mong đợi của qu&yacute; kh&aacute;ch!</p>\r\n\r\n<p>H&atilde;y đến với KING PERFUME ngay h&ocirc;m nay để trải nghiệm v&agrave; sở hữu những m&ugrave;i hương ph&ugrave; hợp để thể hiện c&aacute; t&iacute;nh, sự đẳng cấp của ch&iacute;nh bạn!</p>');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sc_shop_password_resets`
--

CREATE TABLE `sc_shop_password_resets` (
  `email` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sc_shop_payment_status`
--

CREATE TABLE `sc_shop_payment_status` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `sc_shop_payment_status`
--

INSERT INTO `sc_shop_payment_status` (`id`, `name`) VALUES
(1, 'Unpaid'),
(2, 'Partial payment'),
(3, 'Paid'),
(4, 'Refurn');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sc_shop_product`
--

CREATE TABLE `sc_shop_product` (
  `id` int(10) UNSIGNED NOT NULL,
  `sku` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `upc` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'upc code',
  `ean` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'ean code',
  `jan` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'jan code',
  `isbn` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'isbn code',
  `mpn` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'mpn code',
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `brand_id` int(11) DEFAULT 0,
  `supplier_id` int(11) DEFAULT 0,
  `price` int(11) DEFAULT 0,
  `cost` int(11) DEFAULT 0,
  `stock` int(11) DEFAULT 0,
  `sold` int(11) DEFAULT 0,
  `minimum` int(11) DEFAULT 0,
  `weight_class` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `weight` int(11) DEFAULT 0,
  `length_class` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `length` int(11) DEFAULT 0,
  `width` int(11) DEFAULT 0,
  `height` int(11) DEFAULT 0,
  `kind` tinyint(4) DEFAULT 0 COMMENT '0:single, 1:bundle, 2:group',
  `property` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT 'physical',
  `tax_id` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT '0' COMMENT '0:No-tax, auto: Use tax default',
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `sort` int(11) NOT NULL DEFAULT 0,
  `view` int(11) NOT NULL DEFAULT 0,
  `alias` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_store_id` int(11) DEFAULT 1,
  `store_id` int(11) NOT NULL DEFAULT 1,
  `date_lastview` datetime DEFAULT NULL,
  `date_available` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `sc_shop_product`
--

INSERT INTO `sc_shop_product` (`id`, `sku`, `upc`, `ean`, `jan`, `isbn`, `mpn`, `image`, `brand_id`, `supplier_id`, `price`, `cost`, `stock`, `sold`, `minimum`, `weight_class`, `weight`, `length_class`, `length`, `width`, `height`, `kind`, `property`, `tax_id`, `status`, `sort`, `view`, `alias`, `category_store_id`, `store_id`, `date_lastview`, `date_available`, `created_at`, `updated_at`) VALUES
(11, 'SS495A', NULL, NULL, NULL, NULL, NULL, '/data/product/product_use.jpg', 2, 1, 2700000, 10000, 100, 0, 0, '', 0, '', 0, 0, 0, 0, 'physical', 'auto', 1, 0, 7, 'demo-alias-name-product-11', 0, 1, '2022-01-14 14:37:17', NULL, NULL, '2022-01-14 07:37:17'),
(12, '3D-CARBON175', NULL, NULL, NULL, NULL, NULL, '/data/product/product_use.jpg', 2, 1, 4800000, 0, 95, 5, 1, '', 0, '', 0, 0, 0, 0, 'physical', '0', 1, 0, 145, 'nuoc-hoa-nu-dubai-mazaaji-edp', 0, 1, '2022-01-14 23:59:21', NULL, NULL, '2022-01-15 12:56:29'),
(13, '3D-GOLD175', NULL, NULL, NULL, NULL, NULL, '/data/product/product_use.jpg', 3, 1, 10000, 5000, -2, 2, 0, '', 0, '', 0, 0, 0, 0, 'physical', '0', 1, 0, 21, 'demo-alias-name-product-13', 0, 1, '2022-01-15 19:47:30', NULL, NULL, '2022-01-15 12:47:30'),
(14, 'LCD12864-3D', NULL, NULL, NULL, NULL, NULL, '/data/product/product_use.jpg', 3, 1, 870000, 10000, 93, 7, 1, '', 0, '', 0, 0, 0, 0, 'physical', '0', 1, 0, 34, 'nuoc-hoa-nu-paris-bleu-fleurs-de-sistelle-edp', 0, 1, '2022-01-15 19:59:52', NULL, NULL, '2022-01-15 12:59:52'),
(17, 'ALOKK1-AY', NULL, NULL, NULL, NULL, NULL, '/data/product/product_use.jpg', 3, 1, 1665000, 10000, 100, 0, 5, '', 0, '', 0, 0, 0, 0, 'physical', '0', 1, 0, 15, 'nuoc-hoa-calvin-klein-one-edt-200ml', 0, 1, '2022-01-15 19:48:13', NULL, NULL, '2022-01-15 12:48:13'),
(18, 'TSA7DHA', NULL, NULL, NULL, NULL, NULL, '/data/product/product_use.jpg', 0, 0, 3550000, 0, 50, 0, 0, 'oz', 0, 'cm', 0, 0, 0, 0, 'physical', '0', 1, 0, 9, 'nuoc-hoa-tresor-midnight-love-edp-75ml', 0, 1, '2022-01-14 22:11:02', '2022-01-04', '2022-01-14 07:28:59', '2022-01-14 15:11:02');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sc_shop_product_attribute`
--

CREATE TABLE `sc_shop_product_attribute` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `attribute_group_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `add_price` int(11) NOT NULL DEFAULT 0,
  `sort` int(11) NOT NULL DEFAULT 0,
  `status` tinyint(4) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sc_shop_product_build`
--

CREATE TABLE `sc_shop_product_build` (
  `build_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sc_shop_product_category`
--

CREATE TABLE `sc_shop_product_category` (
  `product_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `sc_shop_product_category`
--

INSERT INTO `sc_shop_product_category` (`product_id`, `category_id`) VALUES
(11, 22),
(11, 23),
(12, 23),
(13, 21),
(13, 22),
(13, 23),
(14, 18),
(14, 21),
(17, 18),
(17, 21),
(18, 21),
(18, 22),
(18, 23);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sc_shop_product_description`
--

CREATE TABLE `sc_shop_product_description` (
  `product_id` int(11) NOT NULL,
  `lang` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `keyword` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(300) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `sc_shop_product_description`
--

INSERT INTO `sc_shop_product_description` (`product_id`, `lang`, `name`, `keyword`, `description`, `content`) VALUES
(11, 'en', 'Nước Hoa Nữ HUGO BOSS The Scent EDP 50ml The Scent EDP Spray', NULL, NULL, '<h1>Nước Hoa Nữ HUGO BOSS The Scent EDP 50ml</h1>\r\n\r\n<h2>The Scent EDP Spray</h2>'),
(11, 'vi', 'Nước Hoa Nữ HUGO BOSS The Scent EDP 50ml The Scent EDP Spray', NULL, 'Ấm áp, tinh tế, mạnh mẽ, mượt mà, quyến rũ là những gì Narciso Rodriguez Narciso Poudree có thể mang đến cho bạn. Mùi hương như bồng bềnh êm dịu nhưng lại vô cùng bền hương. Hương thơm mang đến với nhiều cung bậc cảm xúc với như cùng nhiều mùi thơm kết hợp hài hòa.', '<p><strong>Nước Hoa Nữ Hugo Boss The Scent EDP</strong></p>\r\n\r\n<p>Ra mắt v&agrave;o năm 2016,&nbsp;<strong>Hugo Boss The Scent For Her&nbsp;</strong>lấy cảm hứng nghệ thuật từ hương thơm hoa quả kết hợp với m&agrave;u sắc tươi mới của thiết kế b&ecirc;n ngo&agrave;i đ&atilde; gợi l&ecirc;n sức mạnh quyến rũ bao tr&ugrave;m người phụ nữ. Mở đầu m&ugrave;i hương của&nbsp;<strong>Hugo Boss</strong><strong>&nbsp;The Scent</strong>&nbsp;sẽ l&agrave; hương thơm tươi m&aacute;t của t&aacute;o kết hợp hoa lan Nam Phi, tiếp đến l&agrave; m&ugrave;i hương quyến rũ nhẹ nh&agrave;ng của mộc t&ecirc;, v&agrave; cuối c&ugrave;ng sẽ dần dần chuyển h&oacute;a th&agrave;nh hương thơm phảng phất của ca cao rang, ấm &aacute;m v&agrave; nồng n&agrave;n.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"\" data-was-processed=\"true\" height=\"280\" src=\"https://media.hasaki.vn/wysiwyg/spa/2anuoc-hoa-nu-hugo-boss-the-scent-edp.jpg\" width=\"500\" />&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Nước hoa Hugo Boss The Scent For Her&nbsp;</strong><strong>Eau De Parfum&nbsp;</strong>d&agrave;nh cho những c&ocirc; n&agrave;ng ph&oacute;ng kho&aacute;ng, tự tin. T&ocirc; đậm c&aacute; t&iacute;nh v&agrave; n&eacute;t t&iacute;nh c&aacute;ch ri&ecirc;ng biệt của bạn, The Scent For Her đồng h&agrave;nh khiến c&aacute;c n&agrave;ng trở n&ecirc;n đặc biệt hơn giữa đ&aacute;m đ&ocirc;ng. Chai nước hoa tinh tế, nhỏ gọn với sắc hồng dịu d&agrave;ng, nữ t&iacute;nh.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"\" data-was-processed=\"true\" height=\"282\" src=\"https://media.hasaki.vn/wysiwyg/spa/3anuoc-hoa-nu-hugo-boss-the-scent-edp.jpg\" width=\"500\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Tập đo&agrave;n thời trang cao cấp&nbsp;<strong>Hugo Boss</strong>&nbsp;hay c&ograve;n gọi l&agrave;&nbsp;<strong>Hugo Boss</strong><strong>&nbsp;</strong><strong>AG</strong>&nbsp;được th&agrave;nh lập v&agrave; đ&oacute;ng trụ sở tại Metzingen, Đức v&agrave;o năm 1895.&nbsp;Với những thiết kế độc đ&aacute;o v&agrave; lu&ocirc;n đ&oacute;n trước c&aacute;c xu hướng thời trang,&nbsp;<strong>Hugo Boss</strong>&nbsp;l&agrave; thương hiệu của sự sắc sảo, sang trọng v&agrave; đẳng cấp, l&agrave; biểu tượng đ&uacute;ng nghĩa của thời trang.<br />\r\nV&agrave;o năm 1993,&nbsp;<strong>Hugo Boss</strong><strong>&nbsp;</strong>giới thiệu sản phẩm nước hoa đầu ti&ecirc;n.&nbsp;Từ đ&oacute; cho đến nay, thương hiệu đ&atilde; nhanh ch&oacute;ng cập nhật xu hướng cũng như cho ra đời nhiều d&ograve;ng mẫu m&atilde; mới. D&ograve;ng nước hoa&nbsp;<strong>Hugo Boss</strong><strong>&nbsp;</strong>được thiết kế với mẫu m&atilde; v&agrave; hương thơm mang nhiều phong c&aacute;ch kh&aacute;c nhau, th&iacute;ch hợp trong nhiều ho&agrave;n cảnh cho người ti&ecirc;u d&ugrave;ng, bao gồm cả nam v&agrave; nữ.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;<img alt=\"\" data-was-processed=\"true\" height=\"361\" src=\"https://media.hasaki.vn/wysiwyg/spa/4anuoc-hoa-nu-hugo-boss-the-scent-edp.jpg\" width=\"500\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Phong c&aacute;ch:</strong>&nbsp;Nữ t&iacute;nh, s&agrave;nh điệu</p>\r\n\r\n<p><strong>M&ugrave;i hương đặc trưng</strong></p>\r\n\r\n<p><strong>Hương đầu:</strong>&nbsp;Quả đ&agrave;o, Hoa lan Nam Phi</p>\r\n\r\n<p><strong>Hương giữa:</strong>&nbsp;Hoa chi mộc t&ecirc;</p>\r\n\r\n<p><strong>Hương cuối:</strong>&nbsp;Ca cao</p>'),
(12, 'vi', 'Nước hoa Nữ Dubai Mazaaji EDP', NULL, 'Ấm áp, tinh tế, mạnh mẽ, mượt mà, quyến rũ là những gì Narciso Rodriguez Narciso Poudree có thể mang đến cho bạn. Mùi hương như bồng bềnh êm dịu nhưng lại vô cùng bền hương. Hương thơm mang đến với nhiều cung bậc cảm xúc với như cùng nhiều mùi thơm kết hợp hài hòa.', '<p>Phong c&aacute;ch: Sang trọng, ngọt ng&agrave;o, sexy</p>\r\n\r\n<p>Thương hiệu: Lattafa</p>\r\n\r\n<p>Xuất xứ: Dubai &ndash; UAE</p>\r\n\r\n<p>Độ tuổi: 25 tuổi trở l&ecirc;n</p>\r\n\r\n<p>Dung t&iacute;ch: 100ml</p>\r\n\r\n<p>Giới t&iacute;nh: Nữ</p>\r\n\r\n<p>Độ lưu hương: 6-8h tr&ecirc;n da, 1-3 ng&agrave;y tr&ecirc;n quần &aacute;o</p>\r\n\r\n<p>Độ tỏa hương:Xa</p>\r\n\r\n<p>Đặc trưng m&ugrave;i hương: M&ugrave;i hoa hồng chủ đạo</p>\r\n\r\n<ul>\r\n	<li>Hương đầu: Hoa hồng, hoa sen</li>\r\n	<li>Hương giữa: Hoắc hương, xạ hương, lily</li>\r\n	<li>Hương cuối: Gỗ đ&agrave;n hương, xạ hương, vani</li>\r\n</ul>'),
(13, 'en', 'Nước hoa nữ jean paul gaultier scandal edt (30ml) - pháp', NULL, NULL, '<h1>Nước hoa nữ jean paul gaultier scandal edt (30ml) - ph&aacute;p</h1>'),
(13, 'vi', 'Nước hoa nữ jean paul gaultier scandal edt (30ml) - pháp', NULL, 'Ấm áp, tinh tế, mạnh mẽ, mượt mà, quyến rũ là những gì Narciso Rodriguez Narciso Poudree có thể mang đến cho bạn. Mùi hương như bồng bềnh êm dịu nhưng lại vô cùng bền hương. Hương thơm mang đến với nhiều cung bậc cảm xúc với như cùng nhiều mùi thơm kết hợp hài hòa.', '<p>Hẳn độ phủ s&oacute;ng v&agrave; sự c&agrave;n qu&eacute;t khắp c&aacute;c diễn đ&agrave;n v&agrave; c&aacute;c bảng xếp hạng những chai nước hoa sexy, quyến rũ nhất của Scancal l&agrave; điều kh&ocirc;ng c&ograve;n lạ lẫm g&igrave; với nhiều người. Thậm ch&iacute; ở Scandal, định kiến về nước hoa ngọt v&agrave; nồng thường k&eacute;n người cũng được thay đổi quan điểm một c&aacute;ch đ&aacute;ng kể ở rất nhiều người, bởi ngọt thật, nồng v&agrave; đậm thật, những n&oacute; qu&aacute; đỗi sexy v&agrave; hấp dẫn. Th&aacute;ng 8 năm 2018, bản Flanker đầu ti&ecirc;n của kẻ c&aacute;m dỗ kinh điển &quot;Scandal&quot; được ra mắt với t&ecirc;n gọi l&agrave;&nbsp;<strong>Jean Paul Gaultier Scandal By Night Edp 30Ml</strong>&nbsp;đ&atilde; tạo ra một sự mong chờ v&agrave; h&aacute;o hức với rất nhiều t&iacute;n đồ nước hoa tr&ecirc;n to&agrave;n thế giới, đặc biệt với những người lỡ tr&oacute;t say m&ecirc; c&ocirc; n&agrave;ng nguy&ecirc;n bản Scandal.&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img src=\"https://file.hstatic.net/200000117693/file/jean_paul_gaultier_scandal_edp_30ml_-_4_a561ff8260824894b966b136ec7286c3_grande.jpg\" /></p>\r\n\r\n<h2><strong>HƯƠNG ĐẶC TRƯNG</strong></h2>\r\n\r\n<ul>\r\n	<li>Hương đầu: Mật ong, Chi cam chanh, Cam đắng</li>\r\n	<li>Hương giữa: Hoa huệ trắng, C&acirc;y cam t&ugrave;ng Himalaya, Cherry, Hoa Cam, Tr&aacute;i l&ecirc;</li>\r\n	<li>Hương cuối: Đậu Tonka, C&acirc;y hoắc hương, Gỗ đ&agrave;n hương, Vani, Xạ hương</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h2><strong>TH&Ocirc;NG TIN SẢN PHẨM</strong></h2>\r\n\r\n<ul>\r\n	<li>Nh&atilde;n hiệu: Jean Paul Gaultier</li>\r\n	<li>Giới t&iacute;nh: Nữ</li>\r\n	<li>Xuất xứ: Ph&aacute;p</li>\r\n	<li>Ph&aacute;t h&agrave;nh: 2018</li>\r\n	<li>Nồng độ: Eau de parfum</li>\r\n	<li>Nh&oacute;m hương: Hương Hoa cỏ Gỗ Xạ hương - Floral Woody Musk</li>\r\n	<li>Phong c&aacute;ch: Gợi cảm, S&agrave;nh điệu, Khi&ecirc;u kh&iacute;ch</li>\r\n</ul>'),
(14, 'en', 'Nước hoa paris bleu fleurs de sistelle GAULTIER SCANDAL EDT (30ML', NULL, NULL, '<p>Hẳn độ phủ s&oacute;ng v&agrave; sự c&agrave;n qu&eacute;t khắp c&aacute;c diễn đ&agrave;n v&agrave; c&aacute;c bảng xếp hạng những chai nước hoa sexy, quyến rũ nhất của Scancal l&agrave; điều kh&ocirc;ng c&ograve;n lạ lẫm g&igrave; với nhiều người. Thậm ch&iacute; ở Scandal, định kiến về nước hoa ngọt v&agrave; nồng thường k&eacute;n người cũng được thay đổi quan điểm một c&aacute;ch đ&aacute;ng kể ở rất nhiều người, bởi ngọt thật, nồng v&agrave; đậm thật, những n&oacute; qu&aacute; đỗi sexy v&agrave; hấp dẫn. Th&aacute;ng 8 năm 2018, bản Flanker đầu ti&ecirc;n của kẻ c&aacute;m dỗ kinh điển &quot;Scandal&quot; được ra mắt với t&ecirc;n gọi l&agrave;&nbsp;<strong>Jean Paul Gaultier Scandal By Night Edp 30Ml</strong>&nbsp;đ&atilde; tạo ra một sự mong chờ v&agrave; h&aacute;o hức với rất nhiều t&iacute;n đồ nước hoa tr&ecirc;n to&agrave;n thế giới, đặc biệt với những người lỡ tr&oacute;t say m&ecirc; c&ocirc; n&agrave;ng nguy&ecirc;n bản Scandal.&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img src=\"https://file.hstatic.net/200000117693/file/jean_paul_gaultier_scandal_edp_30ml_-_4_a561ff8260824894b966b136ec7286c3_grande.jpg\" /></p>\r\n\r\n<h2><strong>HƯƠNG ĐẶC TRƯNG</strong></h2>\r\n\r\n<ul>\r\n	<li>Hương đầu: Mật ong, Chi cam chanh, Cam đắng</li>\r\n	<li>Hương giữa: Hoa huệ trắng, C&acirc;y cam t&ugrave;ng Himalaya, Cherry, Hoa Cam, Tr&aacute;i l&ecirc;</li>\r\n	<li>Hương cuối: Đậu Tonka, C&acirc;y hoắc hương, Gỗ đ&agrave;n hương, Vani, Xạ hương</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h2><strong>TH&Ocirc;NG TIN SẢN PHẨM</strong></h2>\r\n\r\n<ul>\r\n	<li>Nh&atilde;n hiệu: Jean Paul Gaultier</li>\r\n	<li>Giới t&iacute;nh: Nữ</li>\r\n	<li>Xuất xứ: Ph&aacute;p</li>\r\n	<li>Ph&aacute;t h&agrave;nh: 2018</li>\r\n	<li>Nồng độ: Eau de parfum</li>\r\n	<li>Nh&oacute;m hương: Hương Hoa cỏ Gỗ Xạ hương - Floral Woody Musk</li>\r\n	<li>Phong c&aacute;ch: Gợi cảm, S&agrave;nh điệu, Khi&ecirc;u kh&iacute;ch</li>\r\n</ul>'),
(14, 'vi', 'Nước hoa paris bleu fleurs  sistelle', NULL, 'Ấm áp, tinh tế, mạnh mẽ, mượt mà, quyến rũ là những gì Narciso Rodriguez Narciso Poudree có thể mang đến cho bạn. Mùi hương như bồng bềnh êm dịu nhưng lại vô cùng bền hương. Hương thơm mang đến với nhiều cung bậc cảm xúc với như cùng nhiều mùi thơm kết hợp hài hòa.', '<p>Hẳn độ phủ s&oacute;ng v&agrave; sự c&agrave;n qu&eacute;t khắp c&aacute;c diễn đ&agrave;n v&agrave; c&aacute;c bảng xếp hạng những chai nước hoa sexy, quyến rũ nhất của Scancal l&agrave; điều kh&ocirc;ng c&ograve;n lạ lẫm g&igrave; với nhiều người. Thậm ch&iacute; ở Scandal, định kiến về nước hoa ngọt v&agrave; nồng thường k&eacute;n người cũng được thay đổi quan điểm một c&aacute;ch đ&aacute;ng kể ở rất nhiều người, bởi ngọt thật, nồng v&agrave; đậm thật, những n&oacute; qu&aacute; đỗi sexy v&agrave; hấp dẫn. Th&aacute;ng 8 năm 2018, bản Flanker đầu ti&ecirc;n của kẻ c&aacute;m dỗ kinh điển &quot;Scandal&quot; được ra mắt với t&ecirc;n gọi l&agrave;&nbsp;<strong>Jean Paul Gaultier Scandal By Night Edp 30Ml</strong>&nbsp;đ&atilde; tạo ra một sự mong chờ v&agrave; h&aacute;o hức với rất nhiều t&iacute;n đồ nước hoa tr&ecirc;n to&agrave;n thế giới, đặc biệt với những người lỡ tr&oacute;t say m&ecirc; c&ocirc; n&agrave;ng nguy&ecirc;n bản Scandal.&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img src=\"https://file.hstatic.net/200000117693/file/jean_paul_gaultier_scandal_edp_30ml_-_4_a561ff8260824894b966b136ec7286c3_grande.jpg\" /></p>\r\n\r\n<h2><strong>HƯƠNG ĐẶC TRƯNG</strong></h2>\r\n\r\n<ul>\r\n	<li>Hương đầu: Mật ong, Chi cam chanh, Cam đắng</li>\r\n	<li>Hương giữa: Hoa huệ trắng, C&acirc;y cam t&ugrave;ng Himalaya, Cherry, Hoa Cam, Tr&aacute;i l&ecirc;</li>\r\n	<li>Hương cuối: Đậu Tonka, C&acirc;y hoắc hương, Gỗ đ&agrave;n hương, Vani, Xạ hương</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h2><strong>TH&Ocirc;NG TIN SẢN PHẨM</strong></h2>\r\n\r\n<ul>\r\n	<li>Nh&atilde;n hiệu: Jean Paul Gaultier</li>\r\n	<li>Giới t&iacute;nh: Nữ</li>\r\n	<li>Xuất xứ: Ph&aacute;p</li>\r\n	<li>Ph&aacute;t h&agrave;nh: 2018</li>\r\n	<li>Nồng độ: Eau de parfum</li>\r\n	<li>Nh&oacute;m hương: Hương Hoa cỏ Gỗ Xạ hương - Floral Woody Musk</li>\r\n	<li>Phong c&aacute;ch: Gợi cảm, S&agrave;nh điệu, Khi&ecirc;u kh&iacute;ch</li>\r\n</ul>'),
(17, 'en', 'Nước Hoa Calvin Klein One EDT 200ml', NULL, 'Ấm áp, tinh tế, mạnh mẽ, mượt mà, quyến rũ là những gì Narciso Rodriguez Narciso Poudree có thể mang đến cho bạn. Mùi hương như bồng bềnh êm dịu nhưng lại vô cùng bền hương. Hương thơm mang đến với nhiều cung bậc cảm xúc với như cùng nhiều mùi thơm kết hợp hài hòa.', 'A'),
(17, 'vi', 'Nước Hoa Calvin Klein One EDT 200ml', NULL, 'Ấm áp, tinh tế, mạnh mẽ, mượt mà, quyến rũ là những gì Narciso Rodriguez Narciso Poudree có thể mang đến cho bạn. Mùi hương như bồng bềnh êm dịu nhưng lại vô cùng bền hương. Hương thơm mang đến với nhiều cung bậc cảm xúc với như cùng nhiều mùi thơm kết hợp hài hòa.', '<p><strong>Nước Hoa Calvin Klein One EDT&nbsp;&nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</strong></p>\r\n\r\n<p>Tập đo&agrave;n&nbsp;<strong>Calvin Klein</strong>&nbsp;được th&agrave;nh lập v&agrave;o cuối những năm 1960, l&agrave; một trong những thương hiệu thời trang h&agrave;ng đầu thế giới được rất nhiều người y&ecirc;u th&iacute;ch với những thiết kế mang phong c&aacute;ch đơn giản, cổ điển. C&ugrave;ng với danh tiếng đ&oacute;,&nbsp;c&aacute;c d&ograve;ng nước hoa của&nbsp;<strong>Calvin Klein</strong>&nbsp;cũng đ&atilde; li&ecirc;n tục mang về nhiều giải thưởng danh gi&aacute;.&nbsp;Hương thơm hấp dẫn của nước hoa&nbsp;<strong>Calvin Klein</strong>&nbsp;mang đến một xu hướng ho&agrave;n to&agrave;n mới, d&ugrave; đơn giản nhưng vẫn trở th&agrave;nh biểu tượng thời trang về cả kiểu d&aacute;ng lẫn m&ugrave;i hương. Mang đến cho ch&uacute;ng ta những hương thơm ph&ugrave; hợp cho cả 2 ph&aacute;i,&nbsp;<strong>Calvin Klein</strong>&nbsp;đ&atilde; chứng tỏ được vị tr&iacute; ti&ecirc;n phong của m&igrave;nh trong lĩnh vực n&agrave;y. Đến nay, h&atilde;ng&nbsp;<strong>Calvin Klein</strong>&nbsp;đ&atilde; c&oacute; hơn 100 loại nước hoa.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"\" data-was-processed=\"true\" height=\"550\" src=\"https://media.hasaki.vn/wysiwyg/HaNguyen/nuoc-hoa-calvin-klein-one-edt-1.jpg\" width=\"550\" /></p>'),
(18, 'en', 'Nước hoa tresor midnight love edp 75ml', NULL, 'Ấm áp, tinh tế, mạnh mẽ, mượt mà, quyến rũ là những gì Narciso Rodriguez Narciso Poudree có thể mang đến cho bạn. Mùi hương như bồng bềnh êm dịu nhưng lại vô cùng bền hương. Hương thơm mang đến với nhiều cung bậc cảm xúc với như cùng nhiều mùi thơm kết hợp hài hòa.', '<h1>Nước hoa tresor midnight love edp 75ml</h1>'),
(18, 'vi', 'Nước hoa tresor midnight love edp 75ml', 'TRESOR MIDNIGHT', 'Ấm áp, tinh tế, mạnh mẽ, mượt mà, quyến rũ là những gì Narciso Rodriguez Narciso Poudree có thể mang đến cho bạn. Mùi hương như bồng bềnh êm dịu nhưng lại vô cùng bền hương. Hương thơm mang đến với nhiều cung bậc cảm xúc với như cùng nhiều mùi thơm kết hợp hài hòa.', '<h3><strong>Th&ocirc;ng tin:</strong></h3>\r\n\r\n<p><strong>NƯỚC HOA TRESOR MIDNIGHT LOVE EDP 75ML</strong>&nbsp;(Tresor Midnight Love EDP 75ml) v&agrave; phi&ecirc;n bản cải tiến Tr&eacute;sor Midnight Rose La Coquette được coi l&agrave; d&ograve;ng nước hoa th&agrave;nh c&ocirc;ng của Lanc&ocirc;me. Lấy cảm hứng từ thiết kế h&igrave;nh d&aacute;ng b&ecirc;n ngo&agrave;i của Tr&eacute;sor In Love,&nbsp;<strong>NƯỚC HOA TRESOR MIDNIGHT LOVE EDP 75ML</strong>&nbsp;mang đến một sản phẩm t&iacute;m huyền b&iacute; tựa như m&agrave;n đ&ecirc;m. V&agrave; đ&uacute;ng như t&ecirc;n gọi, m&ugrave;i hương đậm đ&agrave;, đầy m&ecirc; hoặc của hoa hồng c&ugrave;ng tr&aacute;i Raspberry hồng mọng nước chắc chắn l&agrave; một chọn lựa ho&agrave;n hảo cho một đ&ecirc;m t&igrave;nh y&ecirc;u l&atilde;ng mạn tại Paris. Phảng phất kh&ecirc;u gợi của hương hoa mẫu đơn c&ugrave;ng sự thanh lịch tinh tế của hoa nh&agrave;i khiến bất kỳ c&ocirc; g&aacute;i n&agrave;o sở hữu&nbsp;<strong>NƯỚC HOA TRESOR MIDNIGHT LOVE EDP 75ML</strong>&nbsp;cũng trở th&agrave;nh một nữ ho&agrave;ng.</p>\r\n\r\n<p><img src=\"https://www.lancome.vn/wp-content/uploads/2018/06/3605532423142_Tresor_Midnight_Rose_1-600x600.jpg\" /></p>\r\n\r\n<h3><strong>C&ocirc;ng dụng:</strong></h3>\r\n\r\n<p>Duy&ecirc;n d&aacute;ng, tinh nghịch, hấp dẫn. Sự kết hợp quyến rũ từ quả m&acirc;m x&ocirc;i, hoa hồng, Vanilla v&agrave; xạ hương đem đến sự gợi cảm, nữ t&iacute;nh v&agrave; tinh nghịch. Bắt lấy tr&aacute;i tim t&ocirc;i nếu anh c&oacute; thể!</p>\r\n\r\n<p><img src=\"https://www.lancome.vn/wp-content/uploads/2018/06/Tresor-Midnight-Rose-4-4.jpg\" /></p>\r\n\r\n<h3><strong>Th&agrave;nh phần:</strong></h3>\r\n\r\n<p>Hương đầu: Quả m&acirc;m x&ocirc;i, nụ hoa l&yacute; chua.<br />\r\nHương giữa: Hoa hồng, hoa nh&agrave;i.<br />\r\nHương cuối: Vanilla, xạ hương.<br />\r\n<br />\r\n&nbsp;</p>\r\n\r\n<p><img src=\"https://file.hstatic.net/200000117693/file/3605532423265_309a9741d53d423fb53493732847fc87_grande.jpg\" /></p>');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sc_shop_product_download`
--

CREATE TABLE `sc_shop_product_download` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_id` int(11) NOT NULL,
  `path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sc_shop_product_group`
--

CREATE TABLE `sc_shop_product_group` (
  `group_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sc_shop_product_image`
--

CREATE TABLE `sc_shop_product_image` (
  `id` int(10) UNSIGNED NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_id` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `sc_shop_product_image`
--

INSERT INTO `sc_shop_product_image` (`id`, `image`, `product_id`) VALUES
(97, '/data/product/giorgio-armani-acqua-di-gioia-orchard.vn-2.jpg', 18),
(98, '/data/product/lattafa-mazaaji-100ml-apa-de-parfum_8367043.jpg', 18),
(99, '/data/product/lattafa-mazaaji-100ml-apa-de-parfum_8367043.jpg', 17),
(100, '/data/product/giorgio-armani-acqua-di-gioia-orchard.vn-2.jpg', 17),
(101, '/data/product/Narciso-Rodriguez-For-Her-EDP-100ML_t6av-n0-165x165.png', 17),
(102, '/data/product/giorgio-armani-acqua-di-gioia-orchard.vn-2.jpg', 14),
(103, '/data/product/lattafa-mazaaji-100ml-apa-de-parfum_8367043.jpg', 14),
(104, '/data/product/Narciso-Rodriguez-For-Her-EDP-100ML_t6av-n0-165x165.png', 11),
(105, '/data/product/product_use2.jpg', 11),
(108, '/data/product/product_use.jpg', 12),
(109, '/data/product/product_use.jpg', 12);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sc_shop_product_promotion`
--

CREATE TABLE `sc_shop_product_promotion` (
  `product_id` int(11) NOT NULL,
  `price_promotion` int(11) NOT NULL,
  `date_start` datetime DEFAULT NULL,
  `date_end` datetime DEFAULT NULL,
  `status_promotion` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `sc_shop_product_promotion`
--

INSERT INTO `sc_shop_product_promotion` (`product_id`, `price_promotion`, `date_start`, `date_end`, `status_promotion`, `created_at`, `updated_at`) VALUES
(11, 2250000, NULL, NULL, 1, '2022-01-14 07:44:53', '2022-01-14 07:44:53'),
(12, 2999000, '2022-01-12 00:00:00', '2022-03-16 00:00:00', 1, '2022-01-14 17:01:43', '2022-01-14 17:01:43'),
(13, 799000, NULL, NULL, 1, '2022-01-14 07:45:35', '2022-01-14 07:45:35'),
(17, 1480000, NULL, NULL, 1, '2022-01-14 07:44:20', '2022-01-14 07:44:20'),
(18, 2999000, '2022-01-14 00:00:00', '2022-02-01 00:00:00', 1, '2022-01-14 07:43:04', '2022-01-14 07:43:04');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sc_shop_product_property`
--

CREATE TABLE `sc_shop_product_property` (
  `id` int(10) UNSIGNED NOT NULL,
  `code` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `sc_shop_product_property`
--

INSERT INTO `sc_shop_product_property` (`id`, `code`, `name`) VALUES
(1, 'physical', 'Product physical'),
(2, 'download', 'Product download');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sc_shop_sessions`
--

CREATE TABLE `sc_shop_sessions` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_id` int(10) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payload` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sc_shop_shipping_standard`
--

CREATE TABLE `sc_shop_shipping_standard` (
  `id` int(10) UNSIGNED NOT NULL,
  `fee` int(11) NOT NULL,
  `shipping_free` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `sc_shop_shipping_standard`
--

INSERT INTO `sc_shop_shipping_standard` (`id`, `fee`, `shipping_free`) VALUES
(1, 20, 10000);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sc_shop_shipping_status`
--

CREATE TABLE `sc_shop_shipping_status` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `sc_shop_shipping_status`
--

INSERT INTO `sc_shop_shipping_status` (`id`, `name`) VALUES
(1, 'Not sent'),
(2, 'Sending'),
(3, 'Shipping done');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sc_shop_shoppingcart`
--

CREATE TABLE `sc_shop_shoppingcart` (
  `identifier` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `instance` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `store_id` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sc_shop_store_block`
--

CREATE TABLE `sc_shop_store_block` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `position` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `page` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `text` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `sort` int(11) NOT NULL DEFAULT 0,
  `store_id` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `sc_shop_store_block`
--

INSERT INTO `sc_shop_store_block` (`id`, `name`, `position`, `page`, `type`, `text`, `status`, `sort`, `store_id`) VALUES
(1, 'Facebook code', 'top', '*', 'html', '\n  <div id=\"fb-root\"></div>\n  <script>(function(d, s, id) {\n  var js, fjs = d.getElementsByTagName(s)[0];\n  if (d.getElementById(id)) return;\n  js = d.createElement(s); js.id = id;\n  js.src = \'//connect.facebook.net/vi_VN/sdk.js#xfbml=1&version=v2.8&appId=934208239994473\';\n  fjs.parentNode.insertBefore(js, fjs);\n  }(document, \'script\', \'facebook-jssdk\'));\n  </script>', 1, 0, 1),
(2, 'Google Analytics', 'header', '*', 'html', '\n  <!-- Global site tag (gtag.js) - Google Analytics -->\n  <script async src=\"https://www.googletagmanager.com/gtag/js?id=UA-128658138-1\"></script>\n  <script>\n  window.dataLayer = window.dataLayer || [];\n  function gtag(){dataLayer.push(arguments);}\n  gtag(\'js\', new Date());\n  gtag(\'config\', \'UA-128658138-1\');\n  </script>', 1, 0, 1),
(3, 'Product special', 'left', '*', 'view', 'product_special', 1, 1, 1),
(4, 'Brands', 'left', '*', 'view', 'brands_left', 1, 3, 1),
(5, 'Banner home', 'banner_top', 'home', 'view', 'banner_image', 1, 0, 1),
(6, 'Categories', 'left', 'home,shop_home', 'view', 'categories', 1, 4, 1),
(7, 'Product last view', 'left', '*', 'view', 'product_lastview', 1, 0, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sc_shop_store_css`
--

CREATE TABLE `sc_shop_store_css` (
  `css` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `store_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `sc_shop_store_css`
--

INSERT INTO `sc_shop_store_css` (`css`, `store_id`) VALUES
('\n.sc-overlay {\n  position: fixed;\n  top: 50%;\n  left: 50%;\n  transform: translate(-50%, -50%);\n  transform: -webkit-translate(-50%, -50%);\n  transform: -moz-translate(-50%, -50%);\n  transform: -ms-translate(-50%, -50%);\n  color:#1f222b;\n  z-index: 9999;\n  background: rgba(255,255,255,0.7);\n}\n  \n#sc-loading{\n  display: none;\n  position: absolute;\n  top: 0;\n  left: 0;\n  width: 100%;\n  height: 100%;\n  z-index: 50;\n  background: rgba(255,255,255,0.7);\n}\n/*end loading */\n  \n/*price*/\n.sc-new-price{\n  color:#FE980F;\n  font-size: 14px;\n  padding: 10px 5px;\n  font-weight:bold;\n  }\n  .sc-old-price {\n  text-decoration: line-through;\n  color: #a95d5d;\n  font-size: 13px;\n  padding: 10px;\n  }\n  /*end price*/\n.sc-product-build{\n  font-size: 20px;\n  font-weight: bold;\n}\n.sc-product-build img{\n  width: 50px;\n}\n.sc-product-group  img{\n  width: 100px;\n  cursor: pointer;\n  }\n.sc-product-group:hover{\n  box-shadow: 0px 0px 2px #999;\n}\n.sc-product-group:active{\n  box-shadow: 0px 0px 2px #ff00ff;\n}\n.sc-product-group.active{\n  box-shadow: 0px 0px 2px #ff00ff;\n}\n\n.sc-shipping-address td{\n  padding: 3px !important;\n}\n.sc-shipping-address textarea,\n.sc-shipping-address input[type=\"text\"],\n.sc-shipping-address option{\n  width: 100%;\n  padding: 7px !important;\n}\n.row_cart>td{\n  vertical-align: middle !important;\n}\ninput[type=\"number\"]{\n  text-align: center;\n  padding:2px;\n}\n.sc-notice{\n  clear: both;\n  clear: both;\n  font-size: 20px;\n  background: #f3f3f3;\n  width: 100%;\n}\nimg.new {\n  position: absolute;\n  right: 0px;\n  top: 0px;\n  padding: 0px !important;\n}\n.pointer {\n  cursor: pointer;\n}\n.add-to-cart-list {\n  padding: 5px 10px !important;\n  margin: 2px !important;\n  letter-spacing: 0px !important;\n  font-size: 12px !important;\n  border-radius: 5px;\n}\n.help-block {\n  font-size: 12px;\n  color: red;\n  font-style: italic;\n}\n                  ', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sc_shop_subscribe`
--

CREATE TABLE `sc_shop_subscribe` (
  `id` int(10) UNSIGNED NOT NULL,
  `email` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` varchar(300) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `store_id` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `sc_shop_subscribe`
--

INSERT INTO `sc_shop_subscribe` (`id`, `email`, `phone`, `content`, `status`, `store_id`, `created_at`, `updated_at`) VALUES
(1, 'trilong7799@gmail.com', NULL, NULL, 1, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sc_shop_supplier`
--

CREATE TABLE `sc_shop_supplier` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alias` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `store_id` int(11) NOT NULL DEFAULT 1,
  `sort` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `sc_shop_supplier`
--

INSERT INTO `sc_shop_supplier` (`id`, `name`, `alias`, `email`, `phone`, `image`, `address`, `url`, `status`, `store_id`, `sort`) VALUES
(1, 'ABC distributor', 'abc-distributor', 'abc@abc.com', '012496657567', '/data/supplier/supplier.png', '', '', 1, 1, 0),
(2, 'XYZ distributor', 'xyz-distributor', 'xyz@xyz.com', '012496657567', '/data/supplier/supplier.png', '', '', 1, 1, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sc_shop_tax`
--

CREATE TABLE `sc_shop_tax` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sc_shop_weight`
--

CREATE TABLE `sc_shop_weight` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `sc_shop_weight`
--

INSERT INTO `sc_shop_weight` (`id`, `name`, `description`) VALUES
(1, 'g', 'Gram'),
(2, 'kg', 'Kilogram'),
(3, 'lb', 'Pound '),
(4, 'oz', 'Ounce ');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Chỉ mục cho bảng `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Chỉ mục cho bảng `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_auth_codes_user_id_index` (`user_id`);

--
-- Chỉ mục cho bảng `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Chỉ mục cho bảng `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

--
-- Chỉ mục cho bảng `sc_admin_config`
--
ALTER TABLE `sc_admin_config`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `sc_admin_config_key_store_id_unique` (`key`,`store_id`),
  ADD KEY `sc_admin_config_code_index` (`code`);

--
-- Chỉ mục cho bảng `sc_admin_log`
--
ALTER TABLE `sc_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sc_admin_log_user_id_index` (`user_id`);

--
-- Chỉ mục cho bảng `sc_admin_menu`
--
ALTER TABLE `sc_admin_menu`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `sc_admin_menu_key_unique` (`key`);

--
-- Chỉ mục cho bảng `sc_admin_permission`
--
ALTER TABLE `sc_admin_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `sc_admin_permission_name_unique` (`name`),
  ADD UNIQUE KEY `sc_admin_permission_slug_unique` (`slug`);

--
-- Chỉ mục cho bảng `sc_admin_role`
--
ALTER TABLE `sc_admin_role`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `sc_admin_role_slug_unique` (`slug`);

--
-- Chỉ mục cho bảng `sc_admin_role_permission`
--
ALTER TABLE `sc_admin_role_permission`
  ADD PRIMARY KEY (`role_id`,`permission_id`),
  ADD KEY `sc_admin_role_permission_role_id_permission_id_index` (`role_id`,`permission_id`);

--
-- Chỉ mục cho bảng `sc_admin_role_user`
--
ALTER TABLE `sc_admin_role_user`
  ADD KEY `sc_admin_role_user_role_id_user_id_index` (`role_id`,`user_id`);

--
-- Chỉ mục cho bảng `sc_admin_store`
--
ALTER TABLE `sc_admin_store`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `sc_admin_store_code_unique` (`code`),
  ADD KEY `sc_admin_store_domain_index` (`domain`),
  ADD KEY `sc_admin_store_partner_index` (`partner`);

--
-- Chỉ mục cho bảng `sc_admin_store_description`
--
ALTER TABLE `sc_admin_store_description`
  ADD PRIMARY KEY (`store_id`,`lang`),
  ADD KEY `sc_admin_store_description_lang_index` (`lang`);

--
-- Chỉ mục cho bảng `sc_admin_user`
--
ALTER TABLE `sc_admin_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `sc_admin_user_username_unique` (`username`),
  ADD UNIQUE KEY `sc_admin_user_email_unique` (`email`);

--
-- Chỉ mục cho bảng `sc_admin_user_permission`
--
ALTER TABLE `sc_admin_user_permission`
  ADD PRIMARY KEY (`user_id`,`permission_id`),
  ADD KEY `sc_admin_user_permission_user_id_permission_id_index` (`user_id`,`permission_id`);

--
-- Chỉ mục cho bảng `sc_admin_user_store`
--
ALTER TABLE `sc_admin_user_store`
  ADD PRIMARY KEY (`user_id`,`store_id`);

--
-- Chỉ mục cho bảng `sc_api_connection`
--
ALTER TABLE `sc_api_connection`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `sc_api_connection_apiconnection_unique` (`apiconnection`);

--
-- Chỉ mục cho bảng `sc_shop_attribute_group`
--
ALTER TABLE `sc_shop_attribute_group`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `sc_shop_banner`
--
ALTER TABLE `sc_shop_banner`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sc_shop_banner_type_index` (`type`),
  ADD KEY `sc_shop_banner_store_id_index` (`store_id`);

--
-- Chỉ mục cho bảng `sc_shop_banner_type`
--
ALTER TABLE `sc_shop_banner_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `sc_shop_banner_type_code_unique` (`code`);

--
-- Chỉ mục cho bảng `sc_shop_brand`
--
ALTER TABLE `sc_shop_brand`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sc_shop_brand_alias_index` (`alias`);

--
-- Chỉ mục cho bảng `sc_shop_category`
--
ALTER TABLE `sc_shop_category`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sc_shop_category_alias_index` (`alias`);

--
-- Chỉ mục cho bảng `sc_shop_category_description`
--
ALTER TABLE `sc_shop_category_description`
  ADD UNIQUE KEY `sc_shop_category_description_category_id_lang_unique` (`category_id`,`lang`),
  ADD KEY `sc_shop_category_description_lang_index` (`lang`);

--
-- Chỉ mục cho bảng `sc_shop_country`
--
ALTER TABLE `sc_shop_country`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `sc_shop_country_code_unique` (`code`);

--
-- Chỉ mục cho bảng `sc_shop_currency`
--
ALTER TABLE `sc_shop_currency`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `sc_shop_currency_code_unique` (`code`);

--
-- Chỉ mục cho bảng `sc_shop_customer`
--
ALTER TABLE `sc_shop_customer`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `sc_shop_customer_email_provider_provider_id_unique` (`email`,`provider`,`provider_id`),
  ADD KEY `sc_shop_customer_address_id_index` (`address_id`),
  ADD KEY `sc_shop_customer_store_id_index` (`store_id`);

--
-- Chỉ mục cho bảng `sc_shop_customer_address`
--
ALTER TABLE `sc_shop_customer_address`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sc_shop_customer_address_customer_id_index` (`customer_id`);

--
-- Chỉ mục cho bảng `sc_shop_custom_field`
--
ALTER TABLE `sc_shop_custom_field`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sc_shop_custom_field_type_index` (`type`),
  ADD KEY `sc_shop_custom_field_code_index` (`code`);

--
-- Chỉ mục cho bảng `sc_shop_custom_field_detail`
--
ALTER TABLE `sc_shop_custom_field_detail`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sc_shop_custom_field_detail_custom_field_id_index` (`custom_field_id`),
  ADD KEY `sc_shop_custom_field_detail_rel_id_index` (`rel_id`);

--
-- Chỉ mục cho bảng `sc_shop_email_template`
--
ALTER TABLE `sc_shop_email_template`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sc_shop_email_template_store_id_index` (`store_id`);

--
-- Chỉ mục cho bảng `sc_shop_language`
--
ALTER TABLE `sc_shop_language`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `sc_shop_language_code_unique` (`code`);

--
-- Chỉ mục cho bảng `sc_shop_layout_page`
--
ALTER TABLE `sc_shop_layout_page`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `sc_shop_layout_page_key_unique` (`key`);

--
-- Chỉ mục cho bảng `sc_shop_layout_position`
--
ALTER TABLE `sc_shop_layout_position`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `sc_shop_layout_position_key_unique` (`key`);

--
-- Chỉ mục cho bảng `sc_shop_length`
--
ALTER TABLE `sc_shop_length`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `sc_shop_length_name_unique` (`name`);

--
-- Chỉ mục cho bảng `sc_shop_link`
--
ALTER TABLE `sc_shop_link`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sc_shop_link_store_id_index` (`store_id`);

--
-- Chỉ mục cho bảng `sc_shop_news`
--
ALTER TABLE `sc_shop_news`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sc_shop_news_alias_index` (`alias`),
  ADD KEY `sc_shop_news_store_id_index` (`store_id`);

--
-- Chỉ mục cho bảng `sc_shop_news_description`
--
ALTER TABLE `sc_shop_news_description`
  ADD UNIQUE KEY `sc_shop_news_description_news_id_lang_unique` (`news_id`,`lang`);

--
-- Chỉ mục cho bảng `sc_shop_order`
--
ALTER TABLE `sc_shop_order`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sc_shop_order_customer_id_index` (`customer_id`);

--
-- Chỉ mục cho bảng `sc_shop_order_detail`
--
ALTER TABLE `sc_shop_order_detail`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `sc_shop_order_history`
--
ALTER TABLE `sc_shop_order_history`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `sc_shop_order_status`
--
ALTER TABLE `sc_shop_order_status`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `sc_shop_order_total`
--
ALTER TABLE `sc_shop_order_total`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `sc_shop_page`
--
ALTER TABLE `sc_shop_page`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sc_shop_page_alias_index` (`alias`),
  ADD KEY `sc_shop_page_store_id_index` (`store_id`);

--
-- Chỉ mục cho bảng `sc_shop_page_description`
--
ALTER TABLE `sc_shop_page_description`
  ADD UNIQUE KEY `sc_shop_page_description_page_id_lang_unique` (`page_id`,`lang`),
  ADD KEY `sc_shop_page_description_lang_index` (`lang`);

--
-- Chỉ mục cho bảng `sc_shop_password_resets`
--
ALTER TABLE `sc_shop_password_resets`
  ADD KEY `sc_shop_password_resets_email_index` (`email`);

--
-- Chỉ mục cho bảng `sc_shop_payment_status`
--
ALTER TABLE `sc_shop_payment_status`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `sc_shop_product`
--
ALTER TABLE `sc_shop_product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sc_shop_product_sku_index` (`sku`),
  ADD KEY `sc_shop_product_brand_id_index` (`brand_id`),
  ADD KEY `sc_shop_product_supplier_id_index` (`supplier_id`),
  ADD KEY `sc_shop_product_kind_index` (`kind`),
  ADD KEY `sc_shop_product_property_index` (`property`),
  ADD KEY `sc_shop_product_tax_id_index` (`tax_id`),
  ADD KEY `sc_shop_product_status_index` (`status`),
  ADD KEY `sc_shop_product_alias_index` (`alias`),
  ADD KEY `sc_shop_product_category_store_id_index` (`category_store_id`),
  ADD KEY `sc_shop_product_store_id_index` (`store_id`);

--
-- Chỉ mục cho bảng `sc_shop_product_attribute`
--
ALTER TABLE `sc_shop_product_attribute`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sc_shop_product_attribute_product_id_attribute_group_id_index` (`product_id`,`attribute_group_id`);

--
-- Chỉ mục cho bảng `sc_shop_product_build`
--
ALTER TABLE `sc_shop_product_build`
  ADD PRIMARY KEY (`build_id`,`product_id`);

--
-- Chỉ mục cho bảng `sc_shop_product_category`
--
ALTER TABLE `sc_shop_product_category`
  ADD PRIMARY KEY (`product_id`,`category_id`);

--
-- Chỉ mục cho bảng `sc_shop_product_description`
--
ALTER TABLE `sc_shop_product_description`
  ADD UNIQUE KEY `sc_shop_product_description_product_id_lang_unique` (`product_id`,`lang`),
  ADD KEY `sc_shop_product_description_lang_index` (`lang`);

--
-- Chỉ mục cho bảng `sc_shop_product_download`
--
ALTER TABLE `sc_shop_product_download`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `sc_shop_product_group`
--
ALTER TABLE `sc_shop_product_group`
  ADD PRIMARY KEY (`group_id`,`product_id`);

--
-- Chỉ mục cho bảng `sc_shop_product_image`
--
ALTER TABLE `sc_shop_product_image`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sc_shop_product_image_product_id_index` (`product_id`);

--
-- Chỉ mục cho bảng `sc_shop_product_promotion`
--
ALTER TABLE `sc_shop_product_promotion`
  ADD PRIMARY KEY (`product_id`);

--
-- Chỉ mục cho bảng `sc_shop_product_property`
--
ALTER TABLE `sc_shop_product_property`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `sc_shop_product_property_code_unique` (`code`);

--
-- Chỉ mục cho bảng `sc_shop_sessions`
--
ALTER TABLE `sc_shop_sessions`
  ADD UNIQUE KEY `sc_shop_sessions_id_unique` (`id`);

--
-- Chỉ mục cho bảng `sc_shop_shipping_standard`
--
ALTER TABLE `sc_shop_shipping_standard`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `sc_shop_shipping_status`
--
ALTER TABLE `sc_shop_shipping_status`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `sc_shop_shoppingcart`
--
ALTER TABLE `sc_shop_shoppingcart`
  ADD KEY `sc_shop_shoppingcart_identifier_instance_index` (`identifier`,`instance`),
  ADD KEY `sc_shop_shoppingcart_store_id_index` (`store_id`);

--
-- Chỉ mục cho bảng `sc_shop_store_block`
--
ALTER TABLE `sc_shop_store_block`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sc_shop_store_block_store_id_index` (`store_id`);

--
-- Chỉ mục cho bảng `sc_shop_store_css`
--
ALTER TABLE `sc_shop_store_css`
  ADD UNIQUE KEY `sc_shop_store_css_store_id_unique` (`store_id`);

--
-- Chỉ mục cho bảng `sc_shop_subscribe`
--
ALTER TABLE `sc_shop_subscribe`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sc_shop_subscribe_email_index` (`email`),
  ADD KEY `sc_shop_subscribe_store_id_index` (`store_id`);

--
-- Chỉ mục cho bảng `sc_shop_supplier`
--
ALTER TABLE `sc_shop_supplier`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sc_shop_supplier_alias_index` (`alias`),
  ADD KEY `sc_shop_supplier_store_id_index` (`store_id`);

--
-- Chỉ mục cho bảng `sc_shop_tax`
--
ALTER TABLE `sc_shop_tax`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `sc_shop_weight`
--
ALTER TABLE `sc_shop_weight`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `sc_shop_weight_name_unique` (`name`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `sc_admin_config`
--
ALTER TABLE `sc_admin_config`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=123;

--
-- AUTO_INCREMENT cho bảng `sc_admin_log`
--
ALTER TABLE `sc_admin_log`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1090;

--
-- AUTO_INCREMENT cho bảng `sc_admin_menu`
--
ALTER TABLE `sc_admin_menu`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT cho bảng `sc_admin_permission`
--
ALTER TABLE `sc_admin_permission`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT cho bảng `sc_admin_role`
--
ALTER TABLE `sc_admin_role`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `sc_admin_store`
--
ALTER TABLE `sc_admin_store`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `sc_admin_user`
--
ALTER TABLE `sc_admin_user`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `sc_api_connection`
--
ALTER TABLE `sc_api_connection`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `sc_shop_attribute_group`
--
ALTER TABLE `sc_shop_attribute_group`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `sc_shop_banner`
--
ALTER TABLE `sc_shop_banner`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `sc_shop_banner_type`
--
ALTER TABLE `sc_shop_banner_type`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `sc_shop_brand`
--
ALTER TABLE `sc_shop_brand`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `sc_shop_category`
--
ALTER TABLE `sc_shop_category`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT cho bảng `sc_shop_country`
--
ALTER TABLE `sc_shop_country`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=246;

--
-- AUTO_INCREMENT cho bảng `sc_shop_currency`
--
ALTER TABLE `sc_shop_currency`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `sc_shop_customer`
--
ALTER TABLE `sc_shop_customer`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `sc_shop_customer_address`
--
ALTER TABLE `sc_shop_customer_address`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `sc_shop_custom_field`
--
ALTER TABLE `sc_shop_custom_field`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `sc_shop_custom_field_detail`
--
ALTER TABLE `sc_shop_custom_field_detail`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `sc_shop_email_template`
--
ALTER TABLE `sc_shop_email_template`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `sc_shop_language`
--
ALTER TABLE `sc_shop_language`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `sc_shop_layout_page`
--
ALTER TABLE `sc_shop_layout_page`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT cho bảng `sc_shop_layout_position`
--
ALTER TABLE `sc_shop_layout_position`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `sc_shop_length`
--
ALTER TABLE `sc_shop_length`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `sc_shop_link`
--
ALTER TABLE `sc_shop_link`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `sc_shop_news`
--
ALTER TABLE `sc_shop_news`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `sc_shop_order`
--
ALTER TABLE `sc_shop_order`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `sc_shop_order_detail`
--
ALTER TABLE `sc_shop_order_detail`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `sc_shop_order_history`
--
ALTER TABLE `sc_shop_order_history`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `sc_shop_order_status`
--
ALTER TABLE `sc_shop_order_status`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `sc_shop_order_total`
--
ALTER TABLE `sc_shop_order_total`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT cho bảng `sc_shop_page`
--
ALTER TABLE `sc_shop_page`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `sc_shop_payment_status`
--
ALTER TABLE `sc_shop_payment_status`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `sc_shop_product`
--
ALTER TABLE `sc_shop_product`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT cho bảng `sc_shop_product_attribute`
--
ALTER TABLE `sc_shop_product_attribute`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT cho bảng `sc_shop_product_download`
--
ALTER TABLE `sc_shop_product_download`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `sc_shop_product_image`
--
ALTER TABLE `sc_shop_product_image`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=110;

--
-- AUTO_INCREMENT cho bảng `sc_shop_product_property`
--
ALTER TABLE `sc_shop_product_property`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `sc_shop_shipping_standard`
--
ALTER TABLE `sc_shop_shipping_standard`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `sc_shop_shipping_status`
--
ALTER TABLE `sc_shop_shipping_status`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `sc_shop_store_block`
--
ALTER TABLE `sc_shop_store_block`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `sc_shop_subscribe`
--
ALTER TABLE `sc_shop_subscribe`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `sc_shop_supplier`
--
ALTER TABLE `sc_shop_supplier`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `sc_shop_tax`
--
ALTER TABLE `sc_shop_tax`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `sc_shop_weight`
--
ALTER TABLE `sc_shop_weight`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
