-- phpMyAdmin SQL Dump
-- version 3.5.1
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 05-03-2015 a las 10:59:23
-- Versión del servidor: 5.5.24-log
-- Versión de PHP: 5.4.3

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `oscar`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bre8p_assets`
--

CREATE TABLE IF NOT EXISTS `bre8p_assets` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Clave primaria',
  `parent_id` int(11) NOT NULL DEFAULT '0' COMMENT 'Anidadas al conjunto padre.',
  `lft` int(11) NOT NULL DEFAULT '0' COMMENT 'Anidadas conjunto lft.',
  `rgt` int(11) NOT NULL DEFAULT '0' COMMENT 'Anidadas conjunto rgt.',
  `level` int(10) unsigned NOT NULL COMMENT 'Nivel de la caché en el árbol anidado.',
  `name` varchar(50) NOT NULL COMMENT 'Nombre único para el activo.\n',
  `title` varchar(100) NOT NULL COMMENT 'Título descriptivo para el activo.',
  `rules` varchar(5120) NOT NULL COMMENT 'Control de acceso codificado de JSON.',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_asset_name` (`name`),
  KEY `idx_lft_rgt` (`lft`,`rgt`),
  KEY `idx_parent_id` (`parent_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=35 ;

--
-- Volcado de datos para la tabla `bre8p_assets`
--

INSERT INTO `bre8p_assets` (`id`, `parent_id`, `lft`, `rgt`, `level`, `name`, `title`, `rules`) VALUES
(1, 0, 1, 67, 0, 'root.1', 'Root Asset', '{"core.login.site":{"6":1,"2":1},"core.login.admin":{"6":1},"core.login.offline":{"6":1},"core.admin":{"8":1},"core.manage":{"7":1},"core.create":{"6":1,"3":1},"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"core.edit.own":{"6":1,"3":1}}'),
(2, 1, 1, 2, 1, 'com_admin', 'com_admin', '{}'),
(3, 1, 3, 6, 1, 'com_banners', 'com_banners', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(4, 1, 7, 8, 1, 'com_cache', 'com_cache', '{"core.admin":{"7":1},"core.manage":{"7":1}}'),
(5, 1, 9, 10, 1, 'com_checkin', 'com_checkin', '{"core.admin":{"7":1},"core.manage":{"7":1}}'),
(6, 1, 11, 12, 1, 'com_config', 'com_config', '{}'),
(7, 1, 13, 16, 1, 'com_contact', 'com_contact', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(8, 1, 17, 20, 1, 'com_content', 'com_content', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":{"3":1},"core.delete":[],"core.edit":{"4":1},"core.edit.state":{"5":1},"core.edit.own":[]}'),
(9, 1, 21, 22, 1, 'com_cpanel', 'com_cpanel', '{}'),
(10, 1, 23, 24, 1, 'com_installer', 'com_installer', '{"core.admin":[],"core.manage":{"7":0},"core.delete":{"7":0},"core.edit.state":{"7":0}}'),
(11, 1, 25, 26, 1, 'com_languages', 'com_languages', '{"core.admin":{"7":1},"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(12, 1, 27, 28, 1, 'com_login', 'com_login', '{}'),
(13, 1, 29, 30, 1, 'com_mailto', 'com_mailto', '{}'),
(14, 1, 31, 32, 1, 'com_massmail', 'com_massmail', '{}'),
(15, 1, 33, 34, 1, 'com_media', 'com_media', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":{"3":1},"core.delete":{"5":1}}'),
(16, 1, 35, 36, 1, 'com_menus', 'com_menus', '{"core.admin":{"7":1},"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(17, 1, 37, 38, 1, 'com_messages', 'com_messages', '{"core.admin":{"7":1},"core.manage":{"7":1}}'),
(18, 1, 39, 40, 1, 'com_modules', 'com_modules', '{"core.admin":{"7":1},"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(19, 1, 41, 44, 1, 'com_newsfeeds', 'com_newsfeeds', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(20, 1, 45, 46, 1, 'com_plugins', 'com_plugins', '{"core.admin":{"7":1},"core.manage":[],"core.edit":[],"core.edit.state":[]}'),
(21, 1, 47, 48, 1, 'com_redirect', 'com_redirect', '{"core.admin":{"7":1},"core.manage":[]}'),
(22, 1, 49, 50, 1, 'com_search', 'com_search', '{"core.admin":{"7":1},"core.manage":{"6":1}}'),
(23, 1, 51, 52, 1, 'com_templates', 'com_templates', '{"core.admin":{"7":1},"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(24, 1, 53, 56, 1, 'com_users', 'com_users', '{"core.admin":{"7":1},"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(25, 1, 57, 60, 1, 'com_weblinks', 'com_weblinks', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":{"3":1},"core.delete":[],"core.edit":{"4":1},"core.edit.state":{"5":1},"core.edit.own":[]}'),
(26, 1, 61, 62, 1, 'com_wrapper', 'com_wrapper', '{}'),
(27, 8, 18, 19, 2, 'com_content.category.2', 'Sin categoría', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(28, 3, 4, 5, 2, 'com_banners.category.3', 'Sin categoría', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(29, 7, 14, 15, 2, 'com_contact.category.4', 'Sin categoría', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(30, 19, 42, 43, 2, 'com_newsfeeds.category.5', 'Sin categoría', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(31, 25, 58, 59, 2, 'com_weblinks.category.6', 'Sin categoría', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(32, 24, 54, 55, 1, 'com_users.notes.category.7', 'Uncategorised', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(33, 1, 63, 64, 1, 'com_finder', 'com_finder', '{"core.admin":{"7":1},"core.manage":{"6":1}}'),
(34, 1, 65, 66, 1, 'com_joomlaupdate', 'com_joomlaupdate', '{"core.admin":[],"core.manage":[],"core.delete":[],"core.edit.state":[]}');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bre8p_associations`
--

CREATE TABLE IF NOT EXISTS `bre8p_associations` (
  `id` varchar(50) NOT NULL COMMENT 'A reference to the associated item.',
  `context` varchar(50) NOT NULL COMMENT 'The context of the associated item.',
  `key` char(32) NOT NULL COMMENT 'The key for the association computed from an md5 on associated ids.',
  PRIMARY KEY (`context`,`id`),
  KEY `idx_key` (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bre8p_banners`
--

CREATE TABLE IF NOT EXISTS `bre8p_banners` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cid` int(11) NOT NULL DEFAULT '0',
  `type` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `imptotal` int(11) NOT NULL DEFAULT '0',
  `impmade` int(11) NOT NULL DEFAULT '0',
  `clicks` int(11) NOT NULL DEFAULT '0',
  `clickurl` varchar(200) NOT NULL DEFAULT '',
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `catid` int(10) unsigned NOT NULL DEFAULT '0',
  `description` text NOT NULL,
  `custombannercode` varchar(2048) NOT NULL,
  `sticky` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `params` text NOT NULL,
  `own_prefix` tinyint(1) NOT NULL DEFAULT '0',
  `metakey_prefix` varchar(255) NOT NULL DEFAULT '',
  `purchase_type` tinyint(4) NOT NULL DEFAULT '-1',
  `track_clicks` tinyint(4) NOT NULL DEFAULT '-1',
  `track_impressions` tinyint(4) NOT NULL DEFAULT '-1',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `reset` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `language` char(7) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `idx_state` (`state`),
  KEY `idx_own_prefix` (`own_prefix`),
  KEY `idx_metakey_prefix` (`metakey_prefix`),
  KEY `idx_banner_catid` (`catid`),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bre8p_banner_clients`
--

CREATE TABLE IF NOT EXISTS `bre8p_banner_clients` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `contact` varchar(255) NOT NULL DEFAULT '',
  `email` varchar(255) NOT NULL DEFAULT '',
  `extrainfo` text NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `metakey` text NOT NULL,
  `own_prefix` tinyint(4) NOT NULL DEFAULT '0',
  `metakey_prefix` varchar(255) NOT NULL DEFAULT '',
  `purchase_type` tinyint(4) NOT NULL DEFAULT '-1',
  `track_clicks` tinyint(4) NOT NULL DEFAULT '-1',
  `track_impressions` tinyint(4) NOT NULL DEFAULT '-1',
  PRIMARY KEY (`id`),
  KEY `idx_own_prefix` (`own_prefix`),
  KEY `idx_metakey_prefix` (`metakey_prefix`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bre8p_banner_tracks`
--

CREATE TABLE IF NOT EXISTS `bre8p_banner_tracks` (
  `track_date` datetime NOT NULL,
  `track_type` int(10) unsigned NOT NULL,
  `banner_id` int(10) unsigned NOT NULL,
  `count` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`track_date`,`track_type`,`banner_id`),
  KEY `idx_track_date` (`track_date`),
  KEY `idx_track_type` (`track_type`),
  KEY `idx_banner_id` (`banner_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bre8p_categories`
--

CREATE TABLE IF NOT EXISTS `bre8p_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `asset_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK para la tabla de #__assets.',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0',
  `lft` int(11) NOT NULL DEFAULT '0',
  `rgt` int(11) NOT NULL DEFAULT '0',
  `level` int(10) unsigned NOT NULL DEFAULT '0',
  `path` varchar(255) NOT NULL DEFAULT '',
  `extension` varchar(50) NOT NULL DEFAULT '',
  `title` varchar(255) NOT NULL,
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `note` varchar(255) NOT NULL DEFAULT '',
  `description` mediumtext NOT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  `metadesc` varchar(1024) NOT NULL COMMENT 'La meta descripción de la página.',
  `metakey` varchar(1024) NOT NULL COMMENT 'Las palabras clave para la página.',
  `metadata` varchar(2048) NOT NULL COMMENT 'Propiedades de metadatos codificados JSON.',
  `created_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `language` char(7) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `cat_idx` (`extension`,`published`,`access`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_path` (`path`),
  KEY `idx_left_right` (`lft`,`rgt`),
  KEY `idx_alias` (`alias`),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

--
-- Volcado de datos para la tabla `bre8p_categories`
--

INSERT INTO `bre8p_categories` (`id`, `asset_id`, `parent_id`, `lft`, `rgt`, `level`, `path`, `extension`, `title`, `alias`, `note`, `description`, `published`, `checked_out`, `checked_out_time`, `access`, `params`, `metadesc`, `metakey`, `metadata`, `created_user_id`, `created_time`, `modified_user_id`, `modified_time`, `hits`, `language`) VALUES
(1, 0, 0, 0, 13, 0, '', 'system', 'ROOT', 'root', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{}', '', '', '', 0, '2009-10-18 16:07:09', 0, '0000-00-00 00:00:00', 0, '*'),
(2, 27, 1, 1, 2, 1, 'uncategorised', 'com_content', 'Sin categoría', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 42, '2010-06-28 13:26:37', 0, '0000-00-00 00:00:00', 0, '*'),
(3, 28, 1, 3, 4, 1, 'uncategorised', 'com_banners', 'Sin categoría', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":"","foobar":""}', '', '', '{"page_title":"","author":"","robots":""}', 42, '2010-06-28 13:27:35', 0, '0000-00-00 00:00:00', 0, '*'),
(4, 29, 1, 5, 6, 1, 'uncategorised', 'com_contact', 'Sin categoría', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 42, '2010-06-28 13:27:57', 0, '0000-00-00 00:00:00', 0, '*'),
(5, 30, 1, 7, 8, 1, 'uncategorised', 'com_newsfeeds', 'Sin categoría', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 42, '2010-06-28 13:28:15', 0, '0000-00-00 00:00:00', 0, '*'),
(6, 31, 1, 9, 10, 1, 'uncategorised', 'com_weblinks', 'Sin categoría', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 42, '2010-06-28 13:28:33', 0, '0000-00-00 00:00:00', 0, '*'),
(7, 32, 1, 11, 12, 1, 'uncategorised', 'com_users', 'Sin categoría', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 42, '2010-06-28 13:28:33', 0, '0000-00-00 00:00:00', 0, '*');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bre8p_contact_details`
--

CREATE TABLE IF NOT EXISTS `bre8p_contact_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `con_position` varchar(255) DEFAULT NULL,
  `address` text,
  `suburb` varchar(100) DEFAULT NULL,
  `state` varchar(100) DEFAULT NULL,
  `country` varchar(100) DEFAULT NULL,
  `postcode` varchar(100) DEFAULT NULL,
  `telephone` varchar(255) DEFAULT NULL,
  `fax` varchar(255) DEFAULT NULL,
  `misc` mediumtext,
  `image` varchar(255) DEFAULT NULL,
  `imagepos` varchar(20) DEFAULT NULL,
  `email_to` varchar(255) DEFAULT NULL,
  `default_con` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `catid` int(11) NOT NULL DEFAULT '0',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `mobile` varchar(255) NOT NULL DEFAULT '',
  `webpage` varchar(255) NOT NULL DEFAULT '',
  `sortname1` varchar(255) NOT NULL,
  `sortname2` varchar(255) NOT NULL,
  `sortname3` varchar(255) NOT NULL,
  `language` char(7) NOT NULL,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `metadata` text NOT NULL,
  `featured` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Establecer si el artículo aparece.',
  `xreference` varchar(50) NOT NULL COMMENT 'Una referencia para los vínculos a datos externos conjuntos.',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`published`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`created_by`),
  KEY `idx_featured_catid` (`featured`,`catid`),
  KEY `idx_language` (`language`),
  KEY `idx_xreference` (`xreference`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bre8p_content`
--

CREATE TABLE IF NOT EXISTS `bre8p_content` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `asset_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK a la tabla de #__assets.',
  `title` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `title_alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '' COMMENT 'Deprecated in Joomla! 3.0',
  `introtext` mediumtext NOT NULL,
  `fulltext` mediumtext NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `sectionid` int(10) unsigned NOT NULL DEFAULT '0',
  `mask` int(10) unsigned NOT NULL DEFAULT '0',
  `catid` int(10) unsigned NOT NULL DEFAULT '0',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `images` text NOT NULL,
  `urls` text NOT NULL,
  `attribs` varchar(5120) NOT NULL,
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  `parentid` int(10) unsigned NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `metadata` text NOT NULL,
  `featured` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Establecer si el artículo aparece.',
  `language` char(7) NOT NULL COMMENT 'El código de idioma para el artículo.',
  `xreference` varchar(50) NOT NULL COMMENT 'Una referencia para los vínculos a datos externos conjuntos.',
  PRIMARY KEY (`id`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`state`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`created_by`),
  KEY `idx_featured_catid` (`featured`,`catid`),
  KEY `idx_language` (`language`),
  KEY `idx_xreference` (`xreference`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bre8p_content_frontpage`
--

CREATE TABLE IF NOT EXISTS `bre8p_content_frontpage` (
  `content_id` int(11) NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`content_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bre8p_content_rating`
--

CREATE TABLE IF NOT EXISTS `bre8p_content_rating` (
  `content_id` int(11) NOT NULL DEFAULT '0',
  `rating_sum` int(10) unsigned NOT NULL DEFAULT '0',
  `rating_count` int(10) unsigned NOT NULL DEFAULT '0',
  `lastip` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`content_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bre8p_core_log_searches`
--

CREATE TABLE IF NOT EXISTS `bre8p_core_log_searches` (
  `search_term` varchar(128) NOT NULL DEFAULT '',
  `hits` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bre8p_extensions`
--

CREATE TABLE IF NOT EXISTS `bre8p_extensions` (
  `extension_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `type` varchar(20) NOT NULL,
  `element` varchar(100) NOT NULL,
  `folder` varchar(100) NOT NULL,
  `client_id` tinyint(3) NOT NULL,
  `enabled` tinyint(3) NOT NULL DEFAULT '1',
  `access` int(10) unsigned NOT NULL DEFAULT '1',
  `protected` tinyint(3) NOT NULL DEFAULT '0',
  `manifest_cache` text NOT NULL,
  `params` text NOT NULL,
  `custom_data` text NOT NULL,
  `system_data` text NOT NULL,
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) DEFAULT '0',
  `state` int(11) DEFAULT '0',
  PRIMARY KEY (`extension_id`),
  KEY `element_clientid` (`element`,`client_id`),
  KEY `element_folder_clientid` (`element`,`folder`,`client_id`),
  KEY `extension` (`type`,`element`,`folder`,`client_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=801 ;

--
-- Volcado de datos para la tabla `bre8p_extensions`
--

INSERT INTO `bre8p_extensions` (`extension_id`, `name`, `type`, `element`, `folder`, `client_id`, `enabled`, `access`, `protected`, `manifest_cache`, `params`, `custom_data`, `system_data`, `checked_out`, `checked_out_time`, `ordering`, `state`) VALUES
(1, 'com_mailto', 'component', 'com_mailto', '', 0, 1, 1, 1, '{"legacy":false,"name":"com_mailto","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_MAILTO_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(2, 'com_wrapper', 'component', 'com_wrapper', '', 0, 1, 1, 1, '{"legacy":false,"name":"com_wrapper","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.\\n\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_WRAPPER_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(3, 'com_admin', 'component', 'com_admin', '', 1, 1, 1, 1, '{"legacy":false,"name":"com_admin","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.\\n\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_ADMIN_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(4, 'com_banners', 'component', 'com_banners', '', 1, 1, 1, 0, '{"legacy":false,"name":"com_banners","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.\\n\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_BANNERS_XML_DESCRIPTION","group":""}', '{"purchase_type":"3","track_impressions":"0","track_clicks":"0","metakey_prefix":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(5, 'com_cache', 'component', 'com_cache', '', 1, 1, 1, 1, '{"legacy":false,"name":"com_cache","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_CACHE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(6, 'com_categories', 'component', 'com_categories', '', 1, 1, 1, 1, '{"legacy":false,"name":"com_categories","type":"component","creationDate":"December 2007","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_CATEGORIES_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(7, 'com_checkin', 'component', 'com_checkin', '', 1, 1, 1, 1, '{"legacy":false,"name":"com_checkin","type":"component","creationDate":"Unknown","author":"Joomla! Project","copyright":"(C) 2005 - 2008 Open Source Matters. All rights reserved.\\n\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_CHECKIN_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(8, 'com_contact', 'component', 'com_contact', '', 1, 1, 1, 0, '{"legacy":false,"name":"com_contact","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.\\n\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_CONTACT_XML_DESCRIPTION","group":""}', '{"show_contact_category":"hide","show_contact_list":"0","presentation_style":"sliders","show_name":"1","show_position":"1","show_email":"0","show_street_address":"1","show_suburb":"1","show_state":"1","show_postcode":"1","show_country":"1","show_telephone":"1","show_mobile":"1","show_fax":"1","show_webpage":"1","show_misc":"1","show_image":"1","image":"","allow_vcard":"0","show_articles":"0","show_profile":"0","show_links":"0","linka_name":"","linkb_name":"","linkc_name":"","linkd_name":"","linke_name":"","contact_icons":"0","icon_address":"","icon_email":"","icon_telephone":"","icon_mobile":"","icon_fax":"","icon_misc":"","show_headings":"1","show_position_headings":"1","show_email_headings":"0","show_telephone_headings":"1","show_mobile_headings":"0","show_fax_headings":"0","allow_vcard_headings":"0","show_suburb_headings":"1","show_state_headings":"1","show_country_headings":"1","show_email_form":"1","show_email_copy":"1","banned_email":"","banned_subject":"","banned_text":"","validate_session":"1","custom_reply":"0","redirect":"","show_category_crumb":"0","metakey":"","metadesc":"","robots":"","author":"","rights":"","xreference":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(9, 'com_cpanel', 'component', 'com_cpanel', '', 1, 1, 1, 1, '{"legacy":false,"name":"com_cpanel","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_CPANEL_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10, 'com_installer', 'component', 'com_installer', '', 1, 1, 1, 1, '{"legacy":false,"name":"com_installer","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_INSTALLER_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(11, 'com_languages', 'component', 'com_languages', '', 1, 1, 1, 1, '{"legacy":false,"name":"com_languages","type":"component","creationDate":"2006","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.\\n\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_LANGUAGES_XML_DESCRIPTION","group":""}', '{"administrator":"es-ES","site":"es-ES"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(12, 'com_login', 'component', 'com_login', '', 1, 1, 1, 1, '{"legacy":false,"name":"com_login","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_LOGIN_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(13, 'com_media', 'component', 'com_media', '', 1, 1, 0, 1, '{"legacy":false,"name":"com_media","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_MEDIA_XML_DESCRIPTION","group":""}', '{"upload_extensions":"bmp,csv,doc,gif,ico,jpg,jpeg,odg,odp,ods,odt,pdf,png,ppt,swf,txt,xcf,xls,BMP,CSV,DOC,GIF,ICO,JPG,JPEG,ODG,ODP,ODS,ODT,PDF,PNG,PPT,SWF,TXT,XCF,XLS","upload_maxsize":"10","file_path":"images","image_path":"images","restrict_uploads":"1","allowed_media_usergroup":"3","check_mime":"1","image_extensions":"bmp,gif,jpg,png","ignore_extensions":"","upload_mime":"image\\/jpeg,image\\/gif,image\\/png,image\\/bmp,application\\/x-shockwave-flash,application\\/msword,application\\/excel,application\\/pdf,application\\/powerpoint,text\\/plain,application\\/x-zip","upload_mime_illegal":"text\\/html","enable_flash":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(14, 'com_menus', 'component', 'com_menus', '', 1, 1, 1, 1, '{"legacy":false,"name":"com_menus","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_MENUS_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(15, 'com_messages', 'component', 'com_messages', '', 1, 1, 1, 1, '{"legacy":false,"name":"com_messages","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_MESSAGES_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(16, 'com_modules', 'component', 'com_modules', '', 1, 1, 1, 1, '{"legacy":false,"name":"com_modules","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_MODULES_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(17, 'com_newsfeeds', 'component', 'com_newsfeeds', '', 1, 1, 1, 0, '{"legacy":false,"name":"com_newsfeeds","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_NEWSFEEDS_XML_DESCRIPTION","group":""}', '{"show_feed_image":"1","show_feed_description":"1","show_item_description":"1","feed_word_count":"0","show_headings":"1","show_name":"1","show_articles":"0","show_link":"1","show_description":"1","show_description_image":"1","display_num":"","show_pagination_limit":"1","show_pagination":"1","show_pagination_results":"1","show_cat_items":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(18, 'com_plugins', 'component', 'com_plugins', '', 1, 1, 1, 1, '{"legacy":false,"name":"com_plugins","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_PLUGINS_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(19, 'com_search', 'component', 'com_search', '', 1, 1, 1, 1, '{"legacy":false,"name":"com_search","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.\\n\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_SEARCH_XML_DESCRIPTION","group":""}', '{"enabled":"0","show_date":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(20, 'com_templates', 'component', 'com_templates', '', 1, 1, 1, 1, '{"legacy":false,"name":"com_templates","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_TEMPLATES_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(21, 'com_weblinks', 'component', 'com_weblinks', '', 1, 1, 1, 0, '{"legacy":false,"name":"com_weblinks","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.\\n\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_WEBLINKS_XML_DESCRIPTION","group":""}', '{"show_comp_description":"1","comp_description":"","show_link_hits":"1","show_link_description":"1","show_other_cats":"0","show_headings":"0","show_numbers":"0","show_report":"1","count_clicks":"1","target":"0","link_icons":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(22, 'com_content', 'component', 'com_content', '', 1, 1, 0, 1, '{"legacy":false,"name":"com_content","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_CONTENT_XML_DESCRIPTION","group":""}', '{"article_layout":"_:default","show_title":"1","link_titles":"1","show_intro":"1","show_category":"1","link_category":"1","show_parent_category":"0","link_parent_category":"0","show_author":"1","link_author":"0","show_create_date":"0","show_modify_date":"0","show_publish_date":"1","show_item_navigation":"1","show_vote":"0","show_readmore":"1","show_readmore_title":"1","readmore_limit":"100","show_icons":"1","show_print_icon":"1","show_email_icon":"1","show_hits":"1","show_noauth":"0","show_publishing_options":"1","show_article_options":"1","show_urls_images_frontend":"0","show_urls_images_backend":"1","targeta":0,"targetb":0,"targetc":0,"float_intro":"left","float_fulltext":"left","category_layout":"_:blog","show_category_title":"0","show_description":"0","show_description_image":"0","maxLevel":"1","show_empty_categories":"0","show_no_articles":"1","show_subcat_desc":"1","show_cat_num_articles":"0","show_base_description":"1","maxLevelcat":"-1","show_empty_categories_cat":"0","show_subcat_desc_cat":"1","show_cat_num_articles_cat":"1","num_leading_articles":"1","num_intro_articles":"4","num_columns":"2","num_links":"4","multi_column_order":"0","show_subcategory_content":"0","show_pagination_limit":"1","filter_field":"hide","show_headings":"1","list_show_date":"0","date_format":"","list_show_hits":"1","list_show_author":"1","orderby_pri":"order","orderby_sec":"rdate","order_date":"published","show_pagination":"2","show_pagination_results":"1","show_feed_link":"1","feed_summary":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(23, 'com_config', 'component', 'com_config', '', 1, 1, 0, 1, '{"legacy":false,"name":"com_config","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_CONFIG_XML_DESCRIPTION","group":""}', '{"filters":{"1":{"filter_type":"NH","filter_tags":"","filter_attributes":""},"6":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"7":{"filter_type":"NONE","filter_tags":"","filter_attributes":""},"2":{"filter_type":"NH","filter_tags":"","filter_attributes":""},"3":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"4":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"5":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"10":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"12":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"8":{"filter_type":"NONE","filter_tags":"","filter_attributes":""}}}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(24, 'com_redirect', 'component', 'com_redirect', '', 1, 1, 0, 1, '{"legacy":false,"name":"com_redirect","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_REDIRECT_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(25, 'com_users', 'component', 'com_users', '', 1, 1, 0, 1, '{"legacy":false,"name":"com_users","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_USERS_XML_DESCRIPTION","group":""}', '{"allowUserRegistration":"1","new_usertype":"2","useractivation":"1","frontend_userparams":"1","mailSubjectPrefix":"","mailBodySuffix":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(27, 'com_finder', 'component', 'com_finder', '', 1, 1, 0, 0, '{"legacy":false,"name":"com_finder","type":"component","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_FINDER_XML_DESCRIPTION","group":""}', '{"show_description":"1","description_length":255,"allow_empty_query":"0","show_url":"1","show_advanced":"1","expand_advanced":"0","show_date_filters":"0","highlight_terms":"1","opensearch_name":"","opensearch_description":"","batch_size":"50","memory_table_limit":30000,"title_multiplier":"1.7","text_multiplier":"0.7","meta_multiplier":"1.2","path_multiplier":"2.0","misc_multiplier":"0.3","stemmer":"snowball"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(28, 'com_joomlaupdate', 'component', 'com_joomlaupdate', '', 1, 1, 0, 1, '{"legacy":false,"name":"com_joomlaupdate","type":"component","creationDate":"February 2012","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_JOOMLAUPDATE_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(100, 'PHPMailer', 'library', 'phpmailer', '', 0, 1, 1, 1, '{"legacy":false,"name":"PHPMailer","type":"library","creationDate":"2001","author":"PHPMailer","copyright":"(c) 2001-2003, Brent R. Matzelle, (c) 2004-2009, Andy Prevost. All Rights Reserved., (c) 2010-2011, Jim Jagielski. All Rights Reserved.","authorEmail":"jimjag@gmail.com","authorUrl":"https:\\/\\/code.google.com\\/a\\/apache-extras.org\\/p\\/phpmailer\\/","version":"5.2","description":"LIB_PHPMAILER_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(101, 'SimplePie', 'library', 'simplepie', '', 0, 1, 1, 1, '{"legacy":false,"name":"SimplePie","type":"library","creationDate":"2004","author":"SimplePie","copyright":"Copyright (c) 2004-2009, Ryan Parman and Geoffrey Sneddon","authorEmail":"","authorUrl":"http:\\/\\/simplepie.org\\/","version":"1.2","description":"LIB_SIMPLEPIE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(102, 'phputf8', 'library', 'phputf8', '', 0, 1, 1, 1, '{"legacy":false,"name":"phputf8","type":"library","creationDate":"2006","author":"Harry Fuecks","copyright":"Copyright various authors","authorEmail":"hfuecks@gmail.com","authorUrl":"http:\\/\\/sourceforge.net\\/projects\\/phputf8","version":"0.5","description":"LIB_PHPUTF8_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(103, 'Joomla! Platform', 'library', 'joomla', '', 0, 1, 1, 1, '{"legacy":false,"name":"Joomla! Platform","type":"library","creationDate":"2008","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"http:\\/\\/www.joomla.org","version":"11.4","description":"LIB_JOOMLA_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(200, 'mod_articles_archive', 'module', 'mod_articles_archive', '', 0, 1, 1, 1, '{"legacy":false,"name":"mod_articles_archive","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters.\\n\\t\\tAll rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_ARTICLES_ARCHIVE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(201, 'mod_articles_latest', 'module', 'mod_articles_latest', '', 0, 1, 1, 1, '{"legacy":false,"name":"mod_articles_latest","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_LATEST_NEWS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(202, 'mod_articles_popular', 'module', 'mod_articles_popular', '', 0, 1, 1, 0, '{"legacy":false,"name":"mod_articles_popular","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_POPULAR_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(203, 'mod_banners', 'module', 'mod_banners', '', 0, 1, 1, 1, '{"legacy":false,"name":"mod_banners","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_BANNERS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(204, 'mod_breadcrumbs', 'module', 'mod_breadcrumbs', '', 0, 1, 1, 1, '{"legacy":false,"name":"mod_breadcrumbs","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_BREADCRUMBS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(205, 'mod_custom', 'module', 'mod_custom', '', 0, 1, 1, 1, '{"legacy":false,"name":"mod_custom","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_CUSTOM_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(206, 'mod_feed', 'module', 'mod_feed', '', 0, 1, 1, 1, '{"legacy":false,"name":"mod_feed","type":"module","creationDate":"July 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_FEED_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(207, 'mod_footer', 'module', 'mod_footer', '', 0, 1, 1, 1, '{"legacy":false,"name":"mod_footer","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_FOOTER_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(208, 'mod_login', 'module', 'mod_login', '', 0, 1, 1, 1, '{"legacy":false,"name":"mod_login","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_LOGIN_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(209, 'mod_menu', 'module', 'mod_menu', '', 0, 1, 1, 1, '{"legacy":false,"name":"mod_menu","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_MENU_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(210, 'mod_articles_news', 'module', 'mod_articles_news', '', 0, 1, 1, 0, '{"legacy":false,"name":"mod_articles_news","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_ARTICLES_NEWS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(211, 'mod_random_image', 'module', 'mod_random_image', '', 0, 1, 1, 0, '{"legacy":false,"name":"mod_random_image","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_RANDOM_IMAGE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(212, 'mod_related_items', 'module', 'mod_related_items', '', 0, 1, 1, 0, '{"legacy":false,"name":"mod_related_items","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_RELATED_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(213, 'mod_search', 'module', 'mod_search', '', 0, 1, 1, 0, '{"legacy":false,"name":"mod_search","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_SEARCH_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(214, 'mod_stats', 'module', 'mod_stats', '', 0, 1, 1, 0, '{"legacy":false,"name":"mod_stats","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_STATS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(215, 'mod_syndicate', 'module', 'mod_syndicate', '', 0, 1, 1, 1, '{"legacy":false,"name":"mod_syndicate","type":"module","creationDate":"May 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_SYNDICATE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(216, 'mod_users_latest', 'module', 'mod_users_latest', '', 0, 1, 1, 1, '{"legacy":false,"name":"mod_users_latest","type":"module","creationDate":"December 2009","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_USERS_LATEST_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(217, 'mod_weblinks', 'module', 'mod_weblinks', '', 0, 1, 1, 0, '{"legacy":false,"name":"mod_weblinks","type":"module","creationDate":"July 2009","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_WEBLINKS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(218, 'mod_whosonline', 'module', 'mod_whosonline', '', 0, 1, 1, 0, '{"legacy":false,"name":"mod_whosonline","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_WHOSONLINE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(219, 'mod_wrapper', 'module', 'mod_wrapper', '', 0, 1, 1, 0, '{"legacy":false,"name":"mod_wrapper","type":"module","creationDate":"October 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_WRAPPER_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(220, 'mod_articles_category', 'module', 'mod_articles_category', '', 0, 1, 1, 1, '{"legacy":false,"name":"mod_articles_category","type":"module","creationDate":"February 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_ARTICLES_CATEGORY_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(221, 'mod_articles_categories', 'module', 'mod_articles_categories', '', 0, 1, 1, 1, '{"legacy":false,"name":"mod_articles_categories","type":"module","creationDate":"February 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_ARTICLES_CATEGORIES_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(222, 'mod_languages', 'module', 'mod_languages', '', 0, 1, 1, 1, '{"legacy":false,"name":"mod_languages","type":"module","creationDate":"February 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_LANGUAGES_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(223, 'mod_finder', 'module', 'mod_finder', '', 0, 1, 0, 0, '{"legacy":false,"name":"mod_finder","type":"module","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_FINDER_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(300, 'mod_custom', 'module', 'mod_custom', '', 1, 1, 1, 1, '{"legacy":false,"name":"mod_custom","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_CUSTOM_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(301, 'mod_feed', 'module', 'mod_feed', '', 1, 1, 1, 0, '{"legacy":false,"name":"mod_feed","type":"module","creationDate":"July 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_FEED_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(302, 'mod_latest', 'module', 'mod_latest', '', 1, 1, 1, 0, '{"legacy":false,"name":"mod_latest","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_LATEST_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(303, 'mod_logged', 'module', 'mod_logged', '', 1, 1, 1, 0, '{"legacy":false,"name":"mod_logged","type":"module","creationDate":"January 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_LOGGED_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(304, 'mod_login', 'module', 'mod_login', '', 1, 1, 1, 1, '{"legacy":false,"name":"mod_login","type":"module","creationDate":"March 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_LOGIN_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(305, 'mod_menu', 'module', 'mod_menu', '', 1, 1, 1, 0, '{"legacy":false,"name":"mod_menu","type":"module","creationDate":"March 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_MENU_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(307, 'mod_popular', 'module', 'mod_popular', '', 1, 1, 1, 0, '{"legacy":false,"name":"mod_popular","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_POPULAR_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(308, 'mod_quickicon', 'module', 'mod_quickicon', '', 1, 1, 1, 1, '{"legacy":false,"name":"mod_quickicon","type":"module","creationDate":"Nov 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_QUICKICON_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(309, 'mod_status', 'module', 'mod_status', '', 1, 1, 1, 0, '{"legacy":false,"name":"mod_status","type":"module","creationDate":"Feb 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_STATUS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(310, 'mod_submenu', 'module', 'mod_submenu', '', 1, 1, 1, 0, '{"legacy":false,"name":"mod_submenu","type":"module","creationDate":"Feb 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_SUBMENU_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(311, 'mod_title', 'module', 'mod_title', '', 1, 1, 1, 0, '{"legacy":false,"name":"mod_title","type":"module","creationDate":"Nov 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_TITLE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(312, 'mod_toolbar', 'module', 'mod_toolbar', '', 1, 1, 1, 1, '{"legacy":false,"name":"mod_toolbar","type":"module","creationDate":"Nov 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_TOOLBAR_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(313, 'mod_multilangstatus', 'module', 'mod_multilangstatus', '', 1, 1, 1, 0, '{"legacy":false,"name":"mod_multilangstatus","type":"module","creationDate":"September 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_MULTILANGSTATUS_XML_DESCRIPTION","group":""}', '{"cache":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(314, 'mod_version', 'module', 'mod_version', '', 1, 1, 1, 0, '{"legacy":false,"name":"mod_version","type":"module","creationDate":"January 2012","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_VERSION_XML_DESCRIPTION","group":""}', '{"format":"short","product":"1","cache":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(400, 'plg_authentication_gmail', 'plugin', 'gmail', 'authentication', 0, 0, 1, 0, '{"legacy":false,"name":"plg_authentication_gmail","type":"plugin","creationDate":"February 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_GMAIL_XML_DESCRIPTION","group":""}', '{"applysuffix":"0","suffix":"","verifypeer":"1","user_blacklist":""}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(401, 'plg_authentication_joomla', 'plugin', 'joomla', 'authentication', 0, 1, 1, 1, '{"legacy":false,"name":"plg_authentication_joomla","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_AUTH_JOOMLA_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(402, 'plg_authentication_ldap', 'plugin', 'ldap', 'authentication', 0, 0, 1, 0, '{"legacy":false,"name":"plg_authentication_ldap","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_LDAP_XML_DESCRIPTION","group":""}', '{"host":"","port":"389","use_ldapV3":"0","negotiate_tls":"0","no_referrals":"0","auth_method":"bind","base_dn":"","search_string":"","users_dn":"","username":"admin","password":"bobby7","ldap_fullname":"fullName","ldap_email":"mail","ldap_uid":"uid"}', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(404, 'plg_content_emailcloak', 'plugin', 'emailcloak', 'content', 0, 1, 1, 0, '{"legacy":false,"name":"plg_content_emailcloak","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_CONTENT_EMAILCLOAK_XML_DESCRIPTION","group":""}', '{"mode":"1"}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(405, 'plg_content_geshi', 'plugin', 'geshi', 'content', 0, 0, 1, 0, '{"legacy":false,"name":"plg_content_geshi","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"","authorUrl":"qbnz.com\\/highlighter","version":"2.5.0","description":"PLG_CONTENT_GESHI_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(406, 'plg_content_loadmodule', 'plugin', 'loadmodule', 'content', 0, 1, 1, 0, '{"legacy":false,"name":"plg_content_loadmodule","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_LOADMODULE_XML_DESCRIPTION","group":""}', '{"style":"xhtml"}', '', '', 0, '2011-09-18 15:22:50', 0, 0),
(407, 'plg_content_pagebreak', 'plugin', 'pagebreak', 'content', 0, 1, 1, 1, '{"legacy":false,"name":"plg_content_pagebreak","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_CONTENT_PAGEBREAK_XML_DESCRIPTION","group":""}', '{"title":"1","multipage_toc":"1","showall":"1"}', '', '', 0, '0000-00-00 00:00:00', 4, 0),
(408, 'plg_content_pagenavigation', 'plugin', 'pagenavigation', 'content', 0, 1, 1, 1, '{"legacy":false,"name":"plg_content_pagenavigation","type":"plugin","creationDate":"January 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_PAGENAVIGATION_XML_DESCRIPTION","group":""}', '{"position":"1"}', '', '', 0, '0000-00-00 00:00:00', 5, 0),
(409, 'plg_content_vote', 'plugin', 'vote', 'content', 0, 1, 1, 1, '{"legacy":false,"name":"plg_content_vote","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_VOTE_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 6, 0),
(410, 'plg_editors_codemirror', 'plugin', 'codemirror', 'editors', 0, 1, 1, 1, '{"legacy":false,"name":"plg_editors_codemirror","type":"plugin","creationDate":"28 March 2011","author":"Marijn Haverbeke","copyright":"","authorEmail":"N\\/A","authorUrl":"","version":"1.0","description":"PLG_CODEMIRROR_XML_DESCRIPTION","group":""}', '{"linenumbers":"0","tabmode":"indent"}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(411, 'plg_editors_none', 'plugin', 'none', 'editors', 0, 1, 1, 1, '{"legacy":false,"name":"plg_editors_none","type":"plugin","creationDate":"August 2004","author":"Unknown","copyright":"","authorEmail":"N\\/A","authorUrl":"","version":"2.5.0","description":"PLG_NONE_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(412, 'plg_editors_tinymce', 'plugin', 'tinymce', 'editors', 0, 1, 1, 1, '{"legacy":false,"name":"plg_editors_tinymce","type":"plugin","creationDate":"2005-2012","author":"Moxiecode Systems AB","copyright":"Moxiecode Systems AB","authorEmail":"N\\/A","authorUrl":"tinymce.moxiecode.com\\/","version":"3.5.4.1","description":"PLG_TINY_XML_DESCRIPTION","group":""}', '{"mode":"1","skin":"0","entity_encoding":"raw","lang_mode":"0","lang_code":"es","text_direction":"ltr","content_css":"1","content_css_custom":"","relative_urls":"1","newlines":"0","invalid_elements":"script,applet,iframe","extended_elements":"","toolbar":"top","toolbar_align":"left","html_height":"550","html_width":"750","resizing":"true","resize_horizontal":"false","element_path":"1","fonts":"1","paste":"1","searchreplace":"1","insertdate":"1","format_date":"%Y-%m-%d","inserttime":"1","format_time":"%H:%M:%S","colors":"1","table":"1","smilies":"1","media":"1","hr":"1","directionality":"1","fullscreen":"1","style":"1","layer":"1","xhtmlxtras":"1","visualchars":"1","nonbreaking":"1","template":"1","blockquote":"1","wordcount":"1","advimage":"1","advlink":"1","advlist":"1","autosave":"1","contextmenu":"1","inlinepopups":"1","custom_plugin":"","custom_button":""}', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(413, 'plg_editors-xtd_article', 'plugin', 'article', 'editors-xtd', 0, 1, 1, 1, '{"legacy":false,"name":"plg_editors-xtd_article","type":"plugin","creationDate":"October 2009","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_ARTICLE_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(414, 'plg_editors-xtd_image', 'plugin', 'image', 'editors-xtd', 0, 1, 1, 0, '{"legacy":false,"name":"plg_editors-xtd_image","type":"plugin","creationDate":"August 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_IMAGE_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(415, 'plg_editors-xtd_pagebreak', 'plugin', 'pagebreak', 'editors-xtd', 0, 1, 1, 0, '{"legacy":false,"name":"plg_editors-xtd_pagebreak","type":"plugin","creationDate":"August 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_EDITORSXTD_PAGEBREAK_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(416, 'plg_editors-xtd_readmore', 'plugin', 'readmore', 'editors-xtd', 0, 1, 1, 0, '{"legacy":false,"name":"plg_editors-xtd_readmore","type":"plugin","creationDate":"March 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_READMORE_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 4, 0),
(417, 'plg_search_categories', 'plugin', 'categories', 'search', 0, 1, 1, 0, '{"legacy":false,"name":"plg_search_categories","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_SEARCH_CATEGORIES_XML_DESCRIPTION","group":""}', '{"search_limit":"50","search_content":"1","search_archived":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(418, 'plg_search_contacts', 'plugin', 'contacts', 'search', 0, 1, 1, 0, '{"legacy":false,"name":"plg_search_contacts","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_SEARCH_CONTACTS_XML_DESCRIPTION","group":""}', '{"search_limit":"50","search_content":"1","search_archived":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(419, 'plg_search_content', 'plugin', 'content', 'search', 0, 1, 1, 0, '{"legacy":false,"name":"plg_search_content","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_SEARCH_CONTENT_XML_DESCRIPTION","group":""}', '{"search_limit":"50","search_content":"1","search_archived":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(420, 'plg_search_newsfeeds', 'plugin', 'newsfeeds', 'search', 0, 1, 1, 0, '{"legacy":false,"name":"plg_search_newsfeeds","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_SEARCH_NEWSFEEDS_XML_DESCRIPTION","group":""}', '{"search_limit":"50","search_content":"1","search_archived":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(421, 'plg_search_weblinks', 'plugin', 'weblinks', 'search', 0, 1, 1, 0, '{"legacy":false,"name":"plg_search_weblinks","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_SEARCH_WEBLINKS_XML_DESCRIPTION","group":""}', '{"search_limit":"50","search_content":"1","search_archived":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(422, 'plg_system_languagefilter', 'plugin', 'languagefilter', 'system', 0, 0, 1, 1, '{"legacy":false,"name":"plg_system_languagefilter","type":"plugin","creationDate":"July 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_SYSTEM_LANGUAGEFILTER_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(423, 'plg_system_p3p', 'plugin', 'p3p', 'system', 0, 1, 1, 1, '{"legacy":false,"name":"plg_system_p3p","type":"plugin","creationDate":"September 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_P3P_XML_DESCRIPTION","group":""}', '{"headers":"NOI ADM DEV PSAi COM NAV OUR OTRo STP IND DEM"}', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(424, 'plg_system_cache', 'plugin', 'cache', 'system', 0, 0, 1, 1, '{"legacy":false,"name":"plg_system_cache","type":"plugin","creationDate":"February 2007","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_CACHE_XML_DESCRIPTION","group":""}', '{"browsercache":"0","cachetime":"15"}', '', '', 0, '0000-00-00 00:00:00', 9, 0),
(425, 'plg_system_debug', 'plugin', 'debug', 'system', 0, 1, 1, 0, '{"legacy":false,"name":"plg_system_debug","type":"plugin","creationDate":"December 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_DEBUG_XML_DESCRIPTION","group":""}', '{"profile":"1","queries":"1","memory":"1","language_files":"1","language_strings":"1","strip-first":"1","strip-prefix":"","strip-suffix":""}', '', '', 0, '0000-00-00 00:00:00', 4, 0),
(426, 'plg_system_log', 'plugin', 'log', 'system', 0, 1, 1, 1, '{"legacy":false,"name":"plg_system_log","type":"plugin","creationDate":"April 2007","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_LOG_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 5, 0),
(427, 'plg_system_redirect', 'plugin', 'redirect', 'system', 0, 1, 1, 1, '{"legacy":false,"name":"plg_system_redirect","type":"plugin","creationDate":"April 2009","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_REDIRECT_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 6, 0);
INSERT INTO `bre8p_extensions` (`extension_id`, `name`, `type`, `element`, `folder`, `client_id`, `enabled`, `access`, `protected`, `manifest_cache`, `params`, `custom_data`, `system_data`, `checked_out`, `checked_out_time`, `ordering`, `state`) VALUES
(428, 'plg_system_remember', 'plugin', 'remember', 'system', 0, 1, 1, 1, '{"legacy":false,"name":"plg_system_remember","type":"plugin","creationDate":"April 2007","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_REMEMBER_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 7, 0),
(429, 'plg_system_sef', 'plugin', 'sef', 'system', 0, 1, 1, 0, '{"legacy":false,"name":"plg_system_sef","type":"plugin","creationDate":"December 2007","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_SEF_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 8, 0),
(430, 'plg_system_logout', 'plugin', 'logout', 'system', 0, 1, 1, 1, '{"legacy":false,"name":"plg_system_logout","type":"plugin","creationDate":"April 2009","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_SYSTEM_LOGOUT_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(431, 'plg_user_contactcreator', 'plugin', 'contactcreator', 'user', 0, 0, 1, 1, '{"legacy":false,"name":"plg_user_contactcreator","type":"plugin","creationDate":"August 2009","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_CONTACTCREATOR_XML_DESCRIPTION","group":""}', '{"autowebpage":"","category":"34","autopublish":"0"}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(432, 'plg_user_joomla', 'plugin', 'joomla', 'user', 0, 1, 1, 0, '{"legacy":false,"name":"plg_user_joomla","type":"plugin","creationDate":"December 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2009 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_USER_JOOMLA_XML_DESCRIPTION","group":""}', '{"autoregister":"1"}', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(433, 'plg_user_profile', 'plugin', 'profile', 'user', 0, 0, 1, 1, '{"legacy":false,"name":"plg_user_profile","type":"plugin","creationDate":"January 2008","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_USER_PROFILE_XML_DESCRIPTION","group":""}', '{"register-require_address1":"1","register-require_address2":"1","register-require_city":"1","register-require_region":"1","register-require_country":"1","register-require_postal_code":"1","register-require_phone":"1","register-require_website":"1","register-require_favoritebook":"1","register-require_aboutme":"1","register-require_tos":"1","register-require_dob":"1","profile-require_address1":"1","profile-require_address2":"1","profile-require_city":"1","profile-require_region":"1","profile-require_country":"1","profile-require_postal_code":"1","profile-require_phone":"1","profile-require_website":"1","profile-require_favoritebook":"1","profile-require_aboutme":"1","profile-require_tos":"1","profile-require_dob":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(434, 'plg_extension_joomla', 'plugin', 'joomla', 'extension', 0, 1, 1, 1, '{"legacy":false,"name":"plg_extension_joomla","type":"plugin","creationDate":"May 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_EXTENSION_JOOMLA_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(435, 'plg_content_joomla', 'plugin', 'joomla', 'content', 0, 1, 1, 0, '{"legacy":false,"name":"plg_content_joomla","type":"plugin","creationDate":"November 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_CONTENT_JOOMLA_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(436, 'plg_system_languagecode', 'plugin', 'languagecode', 'system', 0, 0, 1, 0, '{"legacy":false,"name":"plg_system_languagecode","type":"plugin","creationDate":"November 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_SYSTEM_LANGUAGECODE_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 10, 0),
(437, 'plg_quickicon_joomlaupdate', 'plugin', 'joomlaupdate', 'quickicon', 0, 1, 1, 1, '{"legacy":false,"name":"plg_quickicon_joomlaupdate","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_QUICKICON_JOOMLAUPDATE_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(438, 'plg_quickicon_extensionupdate', 'plugin', 'extensionupdate', 'quickicon', 0, 1, 1, 1, '{"legacy":false,"name":"plg_quickicon_extensionupdate","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_QUICKICON_EXTENSIONUPDATE_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(439, 'plg_captcha_recaptcha', 'plugin', 'recaptcha', 'captcha', 0, 1, 1, 0, '{"legacy":false,"name":"plg_captcha_recaptcha","type":"plugin","creationDate":"December 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_CAPTCHA_RECAPTCHA_XML_DESCRIPTION","group":""}', '{"public_key":"","private_key":"","theme":"clean"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(440, 'plg_system_highlight', 'plugin', 'highlight', 'system', 0, 1, 1, 0, '{"legacy":false,"name":"plg_system_highlight","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_SYSTEM_HIGHLIGHT_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 7, 0),
(441, 'plg_content_finder', 'plugin', 'finder', 'content', 0, 0, 1, 0, '{"legacy":false,"name":"plg_content_finder","type":"plugin","creationDate":"December 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_CONTENT_FINDER_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(442, 'plg_finder_categories', 'plugin', 'categories', 'finder', 0, 1, 1, 0, '{"legacy":false,"name":"plg_finder_categories","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_FINDER_CATEGORIES_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(443, 'plg_finder_contacts', 'plugin', 'contacts', 'finder', 0, 1, 1, 0, '{"legacy":false,"name":"plg_finder_contacts","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_FINDER_CONTACTS_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(444, 'plg_finder_content', 'plugin', 'content', 'finder', 0, 1, 1, 0, '{"legacy":false,"name":"plg_finder_content","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_FINDER_CONTENT_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(445, 'plg_finder_newsfeeds', 'plugin', 'newsfeeds', 'finder', 0, 1, 1, 0, '{"legacy":false,"name":"plg_finder_newsfeeds","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_FINDER_NEWSFEEDS_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 4, 0),
(446, 'plg_finder_weblinks', 'plugin', 'weblinks', 'finder', 0, 1, 1, 0, '{"legacy":false,"name":"plg_finder_weblinks","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_FINDER_WEBLINKS_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 5, 0),
(500, 'atomic', 'template', 'atomic', '', 0, 1, 1, 0, '{"legacy":false,"name":"atomic","type":"template","creationDate":"10\\/10\\/09","author":"Ron Severdia","copyright":"Copyright (C) 2005 - 2012 Open Source Matters, Inc. All rights reserved.","authorEmail":"contact@kontentdesign.com","authorUrl":"http:\\/\\/www.kontentdesign.com","version":"2.5.0","description":"TPL_ATOMIC_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(502, 'bluestork', 'template', 'bluestork', '', 1, 1, 1, 0, '{"legacy":false,"name":"bluestork","type":"template","creationDate":"07\\/02\\/09","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters, Inc. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"TPL_BLUESTORK_XML_DESCRIPTION","group":""}', '{"useRoundedCorners":"1","showSiteName":"0","textBig":"0","highContrast":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(503, 'beez_20', 'template', 'beez_20', '', 0, 1, 1, 0, '{"legacy":false,"name":"beez_20","type":"template","creationDate":"25 November 2009","author":"Angie Radtke","copyright":"Copyright (C) 2005 - 2012 Open Source Matters, Inc. All rights reserved.","authorEmail":"a.radtke@derauftritt.de","authorUrl":"http:\\/\\/www.der-auftritt.de","version":"2.5.0","description":"TPL_BEEZ2_XML_DESCRIPTION","group":""}', '{"wrapperSmall":"53","wrapperLarge":"72","sitetitle":"","sitedescription":"","navposition":"center","templatecolor":"nature"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(504, 'hathor', 'template', 'hathor', '', 1, 1, 1, 0, '{"legacy":false,"name":"hathor","type":"template","creationDate":"May 2010","author":"Andrea Tarr","copyright":"Copyright (C) 2005 - 2012 Open Source Matters, Inc. All rights reserved.","authorEmail":"hathor@tarrconsulting.com","authorUrl":"http:\\/\\/www.tarrconsulting.com","version":"2.5.0","description":"TPL_HATHOR_XML_DESCRIPTION","group":""}', '{"showSiteName":"0","colourChoice":"0","boldText":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(505, 'beez5', 'template', 'beez5', '', 0, 1, 1, 0, '{"legacy":false,"name":"beez5","type":"template","creationDate":"21 May 2010","author":"Angie Radtke","copyright":"Copyright (C) 2005 - 2012 Open Source Matters, Inc. All rights reserved.","authorEmail":"a.radtke@derauftritt.de","authorUrl":"http:\\/\\/www.der-auftritt.de","version":"2.5.0","description":"TPL_BEEZ5_XML_DESCRIPTION","group":""}', '{"wrapperSmall":"53","wrapperLarge":"72","sitetitle":"","sitedescription":"","navposition":"center","html5":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(600, 'English (United Kingdom)', 'language', 'en-GB', '', 0, 1, 1, 1, '{"legacy":false,"name":"English (United Kingdom)","type":"language","creationDate":"2008-03-15","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.5","description":"en-GB site language","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(601, 'English (United Kingdom)', 'language', 'en-GB', '', 1, 1, 1, 1, '{"legacy":false,"name":"English (United Kingdom)","type":"language","creationDate":"2008-03-15","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.5","description":"en-GB administrator language","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(604, 'Español (Formal Internacional)', 'language', 'es-ES', '', 1, 1, 1, 0, '{"legacy":false,"name":"Espa\\u00f1ol (Formal Internacional)","type":"language","creationDate":"2012-09-14","author":"Proyecto Joomla! Spanish","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. Todos los derechos reservados.","authorEmail":"joomlaspanish@joomlaspanish.org","authorUrl":"www.joomlaspanish.org","version":"2.5.8","description":"es-ES idioma administrador para Joomla 2.5","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(605, 'Español (España)', 'language', 'es-ES', '', 0, 1, 1, 0, '{"legacy":false,"name":"Espa\\u00f1ol (Espa\\u00f1a)","type":"language","creationDate":"2012-09-14","author":"Joomla! Spanish","copyright":"Copyright (C) 2005 - 2012 Open Source Matters & joomlaspanish.org. All rights reserved.","authorEmail":"joomlaspanish@joomlaspanish.org","authorUrl":"www.joomlaspanish.org","version":"2.5.8","description":"es-ES Idiomas parte frontend Joomla 2.5 por www.joomlaspanish.org","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(700, 'files_joomla', 'file', 'joomla', '', 0, 1, 1, 1, '{"legacy":false,"name":"files_joomla","type":"file","creationDate":"November 2012","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.8","description":"FILES_JOOMLA_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(800, 'PKG_JOOMLA', 'package', 'pkg_joomla', '', 0, 1, 1, 1, '{"legacy":false,"name":"PKG_JOOMLA","type":"package","creationDate":"2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"http:\\/\\/www.joomla.org","version":"2.5.0","description":"PKG_JOOMLA_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bre8p_finder_filters`
--

CREATE TABLE IF NOT EXISTS `bre8p_finder_filters` (
  `filter_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `alias` varchar(255) NOT NULL,
  `state` tinyint(1) NOT NULL DEFAULT '1',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL,
  `created_by_alias` varchar(255) NOT NULL,
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `map_count` int(10) unsigned NOT NULL DEFAULT '0',
  `data` text NOT NULL,
  `params` mediumtext,
  PRIMARY KEY (`filter_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bre8p_finder_links`
--

CREATE TABLE IF NOT EXISTS `bre8p_finder_links` (
  `link_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `url` varchar(255) NOT NULL,
  `route` varchar(255) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `indexdate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `md5sum` varchar(32) DEFAULT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '1',
  `state` int(5) DEFAULT '1',
  `access` int(5) DEFAULT '0',
  `language` varchar(8) NOT NULL,
  `publish_start_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_end_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `start_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `end_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `list_price` double unsigned NOT NULL DEFAULT '0',
  `sale_price` double unsigned NOT NULL DEFAULT '0',
  `type_id` int(11) NOT NULL,
  `object` mediumblob NOT NULL,
  PRIMARY KEY (`link_id`),
  KEY `idx_type` (`type_id`),
  KEY `idx_title` (`title`),
  KEY `idx_md5` (`md5sum`),
  KEY `idx_url` (`url`(75)),
  KEY `idx_published_list` (`published`,`state`,`access`,`publish_start_date`,`publish_end_date`,`list_price`),
  KEY `idx_published_sale` (`published`,`state`,`access`,`publish_start_date`,`publish_end_date`,`sale_price`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bre8p_finder_links_terms0`
--

CREATE TABLE IF NOT EXISTS `bre8p_finder_links_terms0` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bre8p_finder_links_terms1`
--

CREATE TABLE IF NOT EXISTS `bre8p_finder_links_terms1` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bre8p_finder_links_terms2`
--

CREATE TABLE IF NOT EXISTS `bre8p_finder_links_terms2` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bre8p_finder_links_terms3`
--

CREATE TABLE IF NOT EXISTS `bre8p_finder_links_terms3` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bre8p_finder_links_terms4`
--

CREATE TABLE IF NOT EXISTS `bre8p_finder_links_terms4` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bre8p_finder_links_terms5`
--

CREATE TABLE IF NOT EXISTS `bre8p_finder_links_terms5` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bre8p_finder_links_terms6`
--

CREATE TABLE IF NOT EXISTS `bre8p_finder_links_terms6` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bre8p_finder_links_terms7`
--

CREATE TABLE IF NOT EXISTS `bre8p_finder_links_terms7` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bre8p_finder_links_terms8`
--

CREATE TABLE IF NOT EXISTS `bre8p_finder_links_terms8` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bre8p_finder_links_terms9`
--

CREATE TABLE IF NOT EXISTS `bre8p_finder_links_terms9` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bre8p_finder_links_termsa`
--

CREATE TABLE IF NOT EXISTS `bre8p_finder_links_termsa` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bre8p_finder_links_termsb`
--

CREATE TABLE IF NOT EXISTS `bre8p_finder_links_termsb` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bre8p_finder_links_termsc`
--

CREATE TABLE IF NOT EXISTS `bre8p_finder_links_termsc` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bre8p_finder_links_termsd`
--

CREATE TABLE IF NOT EXISTS `bre8p_finder_links_termsd` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bre8p_finder_links_termse`
--

CREATE TABLE IF NOT EXISTS `bre8p_finder_links_termse` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bre8p_finder_links_termsf`
--

CREATE TABLE IF NOT EXISTS `bre8p_finder_links_termsf` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bre8p_finder_taxonomy`
--

CREATE TABLE IF NOT EXISTS `bre8p_finder_taxonomy` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL,
  `state` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `access` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ordering` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `parent_id` (`parent_id`),
  KEY `state` (`state`),
  KEY `ordering` (`ordering`),
  KEY `access` (`access`),
  KEY `idx_parent_published` (`parent_id`,`state`,`access`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Volcado de datos para la tabla `bre8p_finder_taxonomy`
--

INSERT INTO `bre8p_finder_taxonomy` (`id`, `parent_id`, `title`, `state`, `access`, `ordering`) VALUES
(1, 0, 'ROOT', 0, 0, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bre8p_finder_taxonomy_map`
--

CREATE TABLE IF NOT EXISTS `bre8p_finder_taxonomy_map` (
  `link_id` int(10) unsigned NOT NULL,
  `node_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`node_id`),
  KEY `link_id` (`link_id`),
  KEY `node_id` (`node_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bre8p_finder_terms`
--

CREATE TABLE IF NOT EXISTS `bre8p_finder_terms` (
  `term_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `phrase` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `weight` float unsigned NOT NULL DEFAULT '0',
  `soundex` varchar(75) NOT NULL,
  `links` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  UNIQUE KEY `idx_term` (`term`),
  KEY `idx_term_phrase` (`term`,`phrase`),
  KEY `idx_stem_phrase` (`stem`,`phrase`),
  KEY `idx_soundex_phrase` (`soundex`,`phrase`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bre8p_finder_terms_common`
--

CREATE TABLE IF NOT EXISTS `bre8p_finder_terms_common` (
  `term` varchar(75) NOT NULL,
  `language` varchar(3) NOT NULL,
  KEY `idx_word_lang` (`term`,`language`),
  KEY `idx_lang` (`language`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `bre8p_finder_terms_common`
--

INSERT INTO `bre8p_finder_terms_common` (`term`, `language`) VALUES
('a', 'en'),
('about', 'en'),
('after', 'en'),
('ago', 'en'),
('all', 'en'),
('am', 'en'),
('an', 'en'),
('and', 'en'),
('ani', 'en'),
('any', 'en'),
('are', 'en'),
('aren''t', 'en'),
('as', 'en'),
('at', 'en'),
('be', 'en'),
('but', 'en'),
('by', 'en'),
('for', 'en'),
('from', 'en'),
('get', 'en'),
('go', 'en'),
('how', 'en'),
('if', 'en'),
('in', 'en'),
('into', 'en'),
('is', 'en'),
('isn''t', 'en'),
('it', 'en'),
('its', 'en'),
('me', 'en'),
('more', 'en'),
('most', 'en'),
('must', 'en'),
('my', 'en'),
('new', 'en'),
('no', 'en'),
('none', 'en'),
('not', 'en'),
('noth', 'en'),
('nothing', 'en'),
('of', 'en'),
('off', 'en'),
('often', 'en'),
('old', 'en'),
('on', 'en'),
('onc', 'en'),
('once', 'en'),
('onli', 'en'),
('only', 'en'),
('or', 'en'),
('other', 'en'),
('our', 'en'),
('ours', 'en'),
('out', 'en'),
('over', 'en'),
('page', 'en'),
('she', 'en'),
('should', 'en'),
('small', 'en'),
('so', 'en'),
('some', 'en'),
('than', 'en'),
('thank', 'en'),
('that', 'en'),
('the', 'en'),
('their', 'en'),
('theirs', 'en'),
('them', 'en'),
('then', 'en'),
('there', 'en'),
('these', 'en'),
('they', 'en'),
('this', 'en'),
('those', 'en'),
('thus', 'en'),
('time', 'en'),
('times', 'en'),
('to', 'en'),
('too', 'en'),
('true', 'en'),
('under', 'en'),
('until', 'en'),
('up', 'en'),
('upon', 'en'),
('use', 'en'),
('user', 'en'),
('users', 'en'),
('veri', 'en'),
('version', 'en'),
('very', 'en'),
('via', 'en'),
('want', 'en'),
('was', 'en'),
('way', 'en'),
('were', 'en'),
('what', 'en'),
('when', 'en'),
('where', 'en'),
('whi', 'en'),
('which', 'en'),
('who', 'en'),
('whom', 'en'),
('whose', 'en'),
('why', 'en'),
('wide', 'en'),
('will', 'en'),
('with', 'en'),
('within', 'en'),
('without', 'en'),
('would', 'en'),
('yes', 'en'),
('yet', 'en'),
('you', 'en'),
('your', 'en'),
('yours', 'en');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bre8p_finder_tokens`
--

CREATE TABLE IF NOT EXISTS `bre8p_finder_tokens` (
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `phrase` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `weight` float unsigned NOT NULL DEFAULT '1',
  `context` tinyint(1) unsigned NOT NULL DEFAULT '2',
  KEY `idx_word` (`term`),
  KEY `idx_context` (`context`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bre8p_finder_tokens_aggregate`
--

CREATE TABLE IF NOT EXISTS `bre8p_finder_tokens_aggregate` (
  `term_id` int(10) unsigned NOT NULL,
  `map_suffix` char(1) NOT NULL,
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `phrase` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `term_weight` float unsigned NOT NULL,
  `context` tinyint(1) unsigned NOT NULL DEFAULT '2',
  `context_weight` float unsigned NOT NULL,
  `total_weight` float unsigned NOT NULL,
  KEY `token` (`term`),
  KEY `keyword_id` (`term_id`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bre8p_finder_types`
--

CREATE TABLE IF NOT EXISTS `bre8p_finder_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `mime` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `title` (`title`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bre8p_languages`
--

CREATE TABLE IF NOT EXISTS `bre8p_languages` (
  `lang_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `lang_code` char(7) NOT NULL,
  `title` varchar(50) NOT NULL,
  `title_native` varchar(50) NOT NULL,
  `sef` varchar(50) NOT NULL,
  `image` varchar(50) NOT NULL,
  `description` varchar(512) NOT NULL,
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `sitename` varchar(1024) NOT NULL DEFAULT '',
  `published` int(11) NOT NULL DEFAULT '0',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`lang_id`),
  UNIQUE KEY `idx_sef` (`sef`),
  UNIQUE KEY `idx_image` (`image`),
  UNIQUE KEY `idx_langcode` (`lang_code`),
  KEY `idx_access` (`access`),
  KEY `idx_ordering` (`ordering`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Volcado de datos para la tabla `bre8p_languages`
--

INSERT INTO `bre8p_languages` (`lang_id`, `lang_code`, `title`, `title_native`, `sef`, `image`, `description`, `metakey`, `metadesc`, `sitename`, `published`, `access`, `ordering`) VALUES
(1, 'en-GB', 'English (UK)', 'English (UK)', 'en', 'en', '', '', '', '', 1, 0, 1),
(3, 'es-ES', 'Español (Formal Internacional) (ES)', 'Español (Formal Internacional) (ES)', 'es', 'es', '', '', '', '', 1, 0, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bre8p_menu`
--

CREATE TABLE IF NOT EXISTS `bre8p_menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `menutype` varchar(24) NOT NULL COMMENT 'The type of menu this item belongs to. FK to #__menu_types.menutype',
  `title` varchar(255) NOT NULL COMMENT 'The display title of the menu item.',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT 'The SEF alias of the menu item.',
  `note` varchar(255) NOT NULL DEFAULT '',
  `path` varchar(1024) NOT NULL COMMENT 'The computed path of the menu item based on the alias field.',
  `link` varchar(1024) NOT NULL COMMENT 'The actually link the menu item refers to.',
  `type` varchar(16) NOT NULL COMMENT 'The type of link: Component, URL, Alias, Separator',
  `published` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'The published state of the menu link.',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '1' COMMENT 'The parent menu item in the menu tree.',
  `level` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'The relative level in the tree.',
  `component_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to #__extensions.id',
  `ordering` int(11) NOT NULL DEFAULT '0' COMMENT 'The relative ordering of the menu item in the tree.',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to #__users.id',
  `checked_out_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'The time the menu item was checked out.',
  `browserNav` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'The click behaviour of the link.',
  `access` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'The access level required to view the menu item.',
  `img` varchar(255) NOT NULL COMMENT 'The image of the menu item.',
  `template_style_id` int(10) unsigned NOT NULL DEFAULT '0',
  `params` text NOT NULL COMMENT 'JSON encoded data for the menu item.',
  `lft` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `home` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Indicates if this menu item is the home or default page.',
  `language` char(7) NOT NULL DEFAULT '',
  `client_id` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_client_id_parent_id_alias_language` (`client_id`,`parent_id`,`alias`,`language`),
  KEY `idx_componentid` (`component_id`,`menutype`,`published`,`access`),
  KEY `idx_menutype` (`menutype`),
  KEY `idx_left_right` (`lft`,`rgt`),
  KEY `idx_alias` (`alias`),
  KEY `idx_path` (`path`(255)),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=102 ;

--
-- Volcado de datos para la tabla `bre8p_menu`
--

INSERT INTO `bre8p_menu` (`id`, `menutype`, `title`, `alias`, `note`, `path`, `link`, `type`, `published`, `parent_id`, `level`, `component_id`, `ordering`, `checked_out`, `checked_out_time`, `browserNav`, `access`, `img`, `template_style_id`, `params`, `lft`, `rgt`, `home`, `language`, `client_id`) VALUES
(1, '', 'Menu_Item_Root', 'root', '', '', '', '', 1, 0, 0, 0, 0, 0, '0000-00-00 00:00:00', 0, 0, '', 0, '', 0, 41, 0, '*', 0),
(2, 'menu', 'com_banners', 'Banners', '', 'Banners', 'index.php?option=com_banners', 'component', 0, 1, 1, 4, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners', 0, '', 1, 10, 0, '*', 1),
(3, 'menu', 'com_banners', 'Banners', '', 'Banners/Banners', 'index.php?option=com_banners', 'component', 0, 2, 2, 4, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners', 0, '', 2, 3, 0, '*', 1),
(4, 'menu', 'com_banners_categories', 'Categorías', '', 'Banners/Categorías', 'index.php?option=com_categories&extension=com_banners', 'component', 0, 2, 2, 6, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners-cat', 0, '', 4, 5, 0, '*', 1),
(5, 'menu', 'com_banners_clients', 'Clientes', '', 'Banners/Clients', 'index.php?option=com_banners&view=clients', 'component', 0, 2, 2, 4, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners-clients', 0, '', 6, 7, 0, '*', 1),
(6, 'menu', 'com_banners_tracks', 'Tracks', '', 'Banners/Tracks', 'index.php?option=com_banners&view=tracks', 'component', 0, 2, 2, 4, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners-tracks', 0, '', 8, 9, 0, '*', 1),
(7, 'menu', 'com_contact', 'Contactos', '', 'Contacts', 'index.php?option=com_contact', 'component', 0, 1, 1, 8, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:contact', 0, '', 11, 16, 0, '*', 1),
(8, 'menu', 'com_contact', 'Contactos', '', 'Contacts/Contacts', 'index.php?option=com_contact', 'component', 0, 7, 2, 8, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:contact', 0, '', 12, 13, 0, '*', 1),
(9, 'menu', 'com_contact_categories', 'Categorías', '', 'Contactos/Categorías', 'index.php?option=com_categories&extension=com_contact', 'component', 0, 7, 2, 6, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:contact-cat', 0, '', 14, 15, 0, '*', 1),
(10, 'menu', 'com_messages', 'Mensajes', '', 'Messaging', 'index.php?option=com_messages', 'component', 0, 1, 1, 15, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:messages', 0, '', 17, 22, 0, '*', 1),
(11, 'menu', 'com_messages_add', 'Nuevo mensaje privado', '', 'Messaging/New Private Message', 'index.php?option=com_messages&task=message.add', 'component', 0, 10, 2, 15, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:messages-add', 0, '', 18, 19, 0, '*', 1),
(12, 'menu', 'com_messages_read', 'Leer mensaje privado', '', 'Messaging/Read Private Message', 'index.php?option=com_messages', 'component', 0, 10, 2, 15, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:messages-read', 0, '', 20, 21, 0, '*', 1),
(13, 'menu', 'com_newsfeeds', 'Noticias Feeds', '', 'News Feeds', 'index.php?option=com_newsfeeds', 'component', 0, 1, 1, 17, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:newsfeeds', 0, '', 23, 28, 0, '*', 1),
(14, 'menu', 'com_newsfeeds_feeds', 'Feeds', '', 'News Feeds/Feeds', 'index.php?option=com_newsfeeds', 'component', 0, 13, 2, 17, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:newsfeeds', 0, '', 24, 25, 0, '*', 1),
(15, 'menu', 'com_newsfeeds_categories', 'Categorías', '', 'News Feeds/Categorías', 'index.php?option=com_categories&extension=com_newsfeeds', 'component', 0, 13, 2, 6, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:newsfeeds-cat', 0, '', 26, 27, 0, '*', 1),
(16, 'menu', 'com_redirect', 'Redireccionar', '', 'Redireccionar', 'index.php?option=com_redirect', 'component', 0, 1, 1, 24, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:redirect', 0, '', 37, 38, 0, '*', 1),
(17, 'menu', 'com_search', 'Buscar', '', 'Search', 'index.php?option=com_search', 'component', 0, 1, 1, 19, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:search', 0, '', 29, 30, 0, '*', 1),
(18, 'menu', 'com_weblinks', 'Enlaces', '', 'Weblinks', 'index.php?option=com_weblinks', 'component', 0, 1, 1, 21, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:weblinks', 0, '', 31, 36, 0, '*', 1),
(19, 'menu', 'com_weblinks_links', 'Enlaces web', '', 'Weblinks/Links', 'index.php?option=com_weblinks', 'component', 0, 18, 2, 21, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:weblinks', 0, '', 32, 33, 0, '*', 1),
(20, 'menu', 'com_weblinks_categories', 'Categorías', '', 'Weblinks/Categories', 'index.php?option=com_categories&extension=com_weblinks', 'component', 0, 18, 2, 6, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:weblinks-cat', 0, '', 34, 35, 0, '*', 1),
(21, 'menu', 'com_finder', 'Búsqueda inteligente', '', 'Búsqueda inteligente', 'index.php?option=com_finder', 'component', 0, 1, 1, 27, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:finder', 0, '', 41, 42, 0, '*', 1),
(22, 'menu', 'com_joomlaupdate', 'Actualizar Joomla!', '', 'Actualizar Joomla!', 'index.php?option=com_joomlaupdate', 'component', 0, 1, 1, 28, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:joomlaupdate', 0, '', 41, 42, 0, '*', 1),
(101, 'mainmenu', 'Inicio', 'home', '', 'home', 'index.php?option=com_content&view=featured', 'component', 1, 1, 1, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"num_leading_articles":"1","num_intro_articles":"3","num_columns":"3","num_links":"0","orderby_pri":"","orderby_sec":"front","order_date":"","multi_column_order":"1","show_pagination":"2","show_pagination_results":"1","show_noauth":"","article-allow_ratings":"","article-allow_comments":"","show_feed_link":"1","feed_summary":"","show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_readmore":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","show_page_heading":1,"page_title":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 39, 40, 1, '*', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bre8p_menu_types`
--

CREATE TABLE IF NOT EXISTS `bre8p_menu_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `menutype` varchar(24) NOT NULL,
  `title` varchar(48) NOT NULL,
  `description` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_menutype` (`menutype`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Volcado de datos para la tabla `bre8p_menu_types`
--

INSERT INTO `bre8p_menu_types` (`id`, `menutype`, `title`, `description`) VALUES
(1, 'mainmenu', 'Menú Principal', 'El menú principal del sitio');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bre8p_messages`
--

CREATE TABLE IF NOT EXISTS `bre8p_messages` (
  `message_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id_from` int(10) unsigned NOT NULL DEFAULT '0',
  `user_id_to` int(10) unsigned NOT NULL DEFAULT '0',
  `folder_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `date_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `state` tinyint(1) NOT NULL DEFAULT '0',
  `priority` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `subject` varchar(255) NOT NULL DEFAULT '',
  `message` text NOT NULL,
  PRIMARY KEY (`message_id`),
  KEY `useridto_state` (`user_id_to`,`state`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bre8p_messages_cfg`
--

CREATE TABLE IF NOT EXISTS `bre8p_messages_cfg` (
  `user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `cfg_name` varchar(100) NOT NULL DEFAULT '',
  `cfg_value` varchar(255) NOT NULL DEFAULT '',
  UNIQUE KEY `idx_user_var_name` (`user_id`,`cfg_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bre8p_modules`
--

CREATE TABLE IF NOT EXISTS `bre8p_modules` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL DEFAULT '',
  `note` varchar(255) NOT NULL DEFAULT '',
  `content` text NOT NULL,
  `ordering` int(11) NOT NULL DEFAULT '0',
  `position` varchar(50) NOT NULL DEFAULT '',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `module` varchar(50) DEFAULT NULL,
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `showtitle` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `params` text NOT NULL,
  `client_id` tinyint(4) NOT NULL DEFAULT '0',
  `language` char(7) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `published` (`published`,`access`),
  KEY `newsfeeds` (`module`,`published`),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=87 ;

--
-- Volcado de datos para la tabla `bre8p_modules`
--

INSERT INTO `bre8p_modules` (`id`, `title`, `note`, `content`, `ordering`, `position`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `published`, `module`, `access`, `showtitle`, `params`, `client_id`, `language`) VALUES
(1, 'Menú Principal', '', '', 1, 'position-7', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_menu', 1, 1, '{"menutype":"mainmenu","startLevel":"0","endLevel":"0","showAllChildren":"0","tag_id":"","class_sfx":"","window_open":"","layout":"","moduleclass_sfx":"_menu","cache":"1","cache_time":"900","cachemode":"itemid"}', 0, '*'),
(2, 'Acceso', '', '', 1, 'login', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_login', 1, 1, '', 1, '*'),
(3, 'Artículos populares', '', '', 3, 'cpanel', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_popular', 3, 1, '{"count":"5","catid":"","user_id":"0","layout":"","moduleclass_sfx":"","cache":"0"}', 1, '*'),
(4, 'Últimos artículos añadidos', '', '', 4, 'cpanel', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_latest', 3, 1, '{"count":"5","ordering":"c_dsc","catid":"","user_id":"0","layout":"","moduleclass_sfx":"","cache":"0"}', 1, '*'),
(8, 'Barra de herramientas', '', '', 1, 'toolbar', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_toolbar', 3, 1, '', 1, '*'),
(9, 'Iconos rápidos', '', '', 1, 'icon', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_quickicon', 3, 1, '', 1, '*'),
(10, 'Usuarios conectados', '', '', 2, 'cpanel', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_logged', 3, 1, '', 1, '*'),
(12, 'Menú Administrador', '', '', 1, 'menu', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_menu', 3, 1, '{"layout":"","moduleclass_sfx":"","shownew":"1","showhelp":"1","cache":"0"}', 1, '*'),
(13, 'Submenú Administrador', '', '', 1, 'submenu', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_submenu', 3, 1, '', 1, '*'),
(14, 'Estado usuarios', '', '', 1, 'status', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_status', 3, 1, '', 1, '*'),
(15, 'Título', '', '', 1, 'title', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_title', 3, 1, '', 1, '*'),
(16, 'Formulario de acceso', '', '', 7, 'position-7', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_login', 1, 1, '{"greeting":"1","name":"0"}', 0, '*'),
(17, 'Ruta', '', '', 1, 'position-2', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_breadcrumbs', 1, 1, '{"moduleclass_sfx":"","showHome":"1","homeText":"Inicio","showComponent":"1","separator":"","cache":"1","cache_time":"900","cachemode":"itemid"}', 0, '*'),
(18, 'Anuncio', '', '', 1, 'position-10', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_banners', 1, 0, '{"target":"1","count":"1","cid":"3","catid":[""],"tag_search":"0","ordering":"0","header_text":"","footer_text":"Cursos Online","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900"}', 0, '*'),
(79, 'Estatus Multilenguaje', '', '', 1, 'status', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_multilangstatus', 3, 1, '{"layout":"_:default","moduleclass_sfx":"","cache":"0"}', 1, '*'),
(86, 'Versión de Joomla', '', '', 1, 'footer', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_version', 3, 1, '{"format":"short","product":"1","layout":"_:default","moduleclass_sfx":"","cache":"0"}', 1, '*');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bre8p_modules_menu`
--

CREATE TABLE IF NOT EXISTS `bre8p_modules_menu` (
  `moduleid` int(11) NOT NULL DEFAULT '0',
  `menuid` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`moduleid`,`menuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `bre8p_modules_menu`
--

INSERT INTO `bre8p_modules_menu` (`moduleid`, `menuid`) VALUES
(1, 0),
(2, 0),
(3, 0),
(4, 0),
(6, 0),
(7, 0),
(8, 0),
(9, 0),
(10, 0),
(12, 0),
(13, 0),
(14, 0),
(15, 0),
(16, 0),
(17, 0),
(79, 0),
(86, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bre8p_newsfeeds`
--

CREATE TABLE IF NOT EXISTS `bre8p_newsfeeds` (
  `catid` int(11) NOT NULL DEFAULT '0',
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL DEFAULT '',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `link` varchar(200) NOT NULL DEFAULT '',
  `filename` varchar(200) DEFAULT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `numarticles` int(10) unsigned NOT NULL DEFAULT '1',
  `cache_time` int(10) unsigned NOT NULL DEFAULT '3600',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `rtl` tinyint(4) NOT NULL DEFAULT '0',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `language` char(7) NOT NULL DEFAULT '',
  `params` text NOT NULL,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `metadata` text NOT NULL,
  `xreference` varchar(50) NOT NULL COMMENT 'Una referencia para los vínculos a datos externos conjuntos.',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`published`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`created_by`),
  KEY `idx_language` (`language`),
  KEY `idx_xreference` (`xreference`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bre8p_overrider`
--

CREATE TABLE IF NOT EXISTS `bre8p_overrider` (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `constant` varchar(255) NOT NULL,
  `string` text NOT NULL,
  `file` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bre8p_redirect_links`
--

CREATE TABLE IF NOT EXISTS `bre8p_redirect_links` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `old_url` varchar(255) NOT NULL,
  `new_url` varchar(255) NOT NULL,
  `referer` varchar(150) NOT NULL,
  `comment` varchar(255) NOT NULL,
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `published` tinyint(4) NOT NULL,
  `created_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_link_old` (`old_url`),
  KEY `idx_link_modifed` (`modified_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bre8p_schemas`
--

CREATE TABLE IF NOT EXISTS `bre8p_schemas` (
  `extension_id` int(11) NOT NULL,
  `version_id` varchar(20) NOT NULL,
  PRIMARY KEY (`extension_id`,`version_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `bre8p_schemas`
--

INSERT INTO `bre8p_schemas` (`extension_id`, `version_id`) VALUES
(700, '2.5.8');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bre8p_session`
--

CREATE TABLE IF NOT EXISTS `bre8p_session` (
  `session_id` varchar(200) NOT NULL DEFAULT '',
  `client_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `guest` tinyint(4) unsigned DEFAULT '1',
  `time` varchar(14) DEFAULT '',
  `data` mediumtext,
  `userid` int(11) DEFAULT '0',
  `username` varchar(150) DEFAULT '',
  `usertype` varchar(50) DEFAULT '',
  PRIMARY KEY (`session_id`),
  KEY `whosonline` (`guest`,`usertype`),
  KEY `userid` (`userid`),
  KEY `time` (`time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bre8p_template_styles`
--

CREATE TABLE IF NOT EXISTS `bre8p_template_styles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `template` varchar(50) NOT NULL DEFAULT '',
  `client_id` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `home` char(7) NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL DEFAULT '',
  `params` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_template` (`template`),
  KEY `idx_home` (`home`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Volcado de datos para la tabla `bre8p_template_styles`
--

INSERT INTO `bre8p_template_styles` (`id`, `template`, `client_id`, `home`, `title`, `params`) VALUES
(2, 'bluestork', 1, '1', 'Bluestork - Defecto', '{"useRoundedCorners":"1","showSiteName":"0"}'),
(3, 'atomic', 0, '0', 'Atomic - Defecto', '{}'),
(4, 'beez_20', 0, '1', 'Beez2 - Defecto', '{"wrapperSmall":"53","wrapperLarge":"72","logo":"images\\/logo-js.png","sitetitle":"Joomla! Spanish","sitedescription":"Gestor de Contenido Open Source 2.5","navposition":"left","templatecolor":"personal","html5":"0"}'),
(5, 'hathor', 1, '0', 'Hathor - Default', '{"showSiteName":"0","colourChoice":"","boldText":"0"}'),
(6, 'beez5', 0, '0', 'Beez5 - Default', '{"wrapperSmall":"53","wrapperLarge":"72","logo":"images\\/sampledata\\/fruitshop\\/fruits.gif","sitetitle":"Joomla!","sitedescription":"Open Source Content Management","navposition":"left","html5":"0"}');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bre8p_updates`
--

CREATE TABLE IF NOT EXISTS `bre8p_updates` (
  `update_id` int(11) NOT NULL AUTO_INCREMENT,
  `update_site_id` int(11) DEFAULT '0',
  `extension_id` int(11) DEFAULT '0',
  `categoryid` int(11) DEFAULT '0',
  `name` varchar(100) DEFAULT '',
  `description` text NOT NULL,
  `element` varchar(100) DEFAULT '',
  `type` varchar(20) DEFAULT '',
  `folder` varchar(20) DEFAULT '',
  `client_id` tinyint(3) DEFAULT '0',
  `version` varchar(10) DEFAULT '',
  `data` text NOT NULL,
  `detailsurl` text NOT NULL,
  `infourl` text NOT NULL,
  PRIMARY KEY (`update_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Actualizaciones disponibles' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bre8p_update_categories`
--

CREATE TABLE IF NOT EXISTS `bre8p_update_categories` (
  `categoryid` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) DEFAULT '',
  `description` text NOT NULL,
  `parent` int(11) DEFAULT '0',
  `updatesite` int(11) DEFAULT '0',
  PRIMARY KEY (`categoryid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Actualizar Categorías' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bre8p_update_sites`
--

CREATE TABLE IF NOT EXISTS `bre8p_update_sites` (
  `update_site_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT '',
  `type` varchar(20) DEFAULT '',
  `location` text NOT NULL,
  `enabled` int(11) DEFAULT '0',
  `last_check_timestamp` bigint(20) DEFAULT '0',
  PRIMARY KEY (`update_site_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Actualizar Sitios' AUTO_INCREMENT=4 ;

--
-- Volcado de datos para la tabla `bre8p_update_sites`
--

INSERT INTO `bre8p_update_sites` (`update_site_id`, `name`, `type`, `location`, `enabled`, `last_check_timestamp`) VALUES
(1, 'Joomla Core', 'collection', 'http://update.joomla.org/core/list.xml', 1, 0),
(2, 'Directorio de Extensiones Joomla', 'collection', 'http://update.joomla.org/jed/list.xml', 1, 0),
(3, 'Accredited Joomla! Translations', 'collection', 'http://update.joomla.org/language/translationlist.xml', 1, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bre8p_update_sites_extensions`
--

CREATE TABLE IF NOT EXISTS `bre8p_update_sites_extensions` (
  `update_site_id` int(11) NOT NULL DEFAULT '0',
  `extension_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`update_site_id`,`extension_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Enlaces de los sitios de extensiones para actualizar';

--
-- Volcado de datos para la tabla `bre8p_update_sites_extensions`
--

INSERT INTO `bre8p_update_sites_extensions` (`update_site_id`, `extension_id`) VALUES
(1, 700),
(2, 700),
(3, 600);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bre8p_usergroups`
--

CREATE TABLE IF NOT EXISTS `bre8p_usergroups` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Clave primaria',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'ID Lista de referencia adyacente',
  `lft` int(11) NOT NULL DEFAULT '0' COMMENT 'Anidadas conjunto lft.',
  `rgt` int(11) NOT NULL DEFAULT '0' COMMENT 'Anidadas conjunto rgt.',
  `title` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_usergroup_parent_title_lookup` (`parent_id`,`title`),
  KEY `idx_usergroup_title_lookup` (`title`),
  KEY `idx_usergroup_adjacency_lookup` (`parent_id`),
  KEY `idx_usergroup_nested_set_lookup` (`lft`,`rgt`) USING BTREE
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=9 ;

--
-- Volcado de datos para la tabla `bre8p_usergroups`
--

INSERT INTO `bre8p_usergroups` (`id`, `parent_id`, `lft`, `rgt`, `title`) VALUES
(1, 0, 1, 20, 'Publico'),
(2, 1, 6, 17, 'Registrado'),
(3, 2, 7, 14, 'Autor'),
(4, 3, 8, 11, 'Editor'),
(5, 4, 9, 10, 'Publicador'),
(6, 1, 2, 5, 'Gestor'),
(7, 6, 3, 4, 'Administrador'),
(8, 1, 18, 19, 'Super Usuarios');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bre8p_users`
--

CREATE TABLE IF NOT EXISTS `bre8p_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `username` varchar(150) NOT NULL DEFAULT '',
  `email` varchar(100) NOT NULL DEFAULT '',
  `password` varchar(100) NOT NULL DEFAULT '',
  `usertype` varchar(25) NOT NULL DEFAULT '',
  `block` tinyint(4) NOT NULL DEFAULT '0',
  `sendEmail` tinyint(4) DEFAULT '0',
  `registerDate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `lastvisitDate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `activation` varchar(100) NOT NULL DEFAULT '',
  `params` text NOT NULL,
  `lastResetTime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Date of last password reset',
  `resetCount` int(11) NOT NULL DEFAULT '0' COMMENT 'Count of password resets since lastResetTime',
  PRIMARY KEY (`id`),
  KEY `usertype` (`usertype`),
  KEY `idx_name` (`name`),
  KEY `idx_block` (`block`),
  KEY `username` (`username`),
  KEY `email` (`email`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=884 ;

--
-- Volcado de datos para la tabla `bre8p_users`
--

INSERT INTO `bre8p_users` (`id`, `name`, `username`, `email`, `password`, `usertype`, `block`, `sendEmail`, `registerDate`, `lastvisitDate`, `activation`, `params`, `lastResetTime`, `resetCount`) VALUES
(883, 'Super User', 'admin', 'oscaarr.97@gmail.com', '44f4afefe40bc49e827ec952256146ba:uvsdX1X58K4fQchd5llkD99vbcJzsJXp', 'deprecated', 0, 1, '2015-01-29 11:19:34', '0000-00-00 00:00:00', '0', '', '0000-00-00 00:00:00', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bre8p_user_notes`
--

CREATE TABLE IF NOT EXISTS `bre8p_user_notes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `catid` int(10) unsigned NOT NULL DEFAULT '0',
  `subject` varchar(100) NOT NULL DEFAULT '',
  `body` text NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_user_id` int(10) unsigned NOT NULL,
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `review_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `idx_user_id` (`user_id`),
  KEY `idx_category_id` (`catid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bre8p_user_profiles`
--

CREATE TABLE IF NOT EXISTS `bre8p_user_profiles` (
  `user_id` int(11) NOT NULL,
  `profile_key` varchar(100) NOT NULL,
  `profile_value` varchar(255) NOT NULL,
  `ordering` int(11) NOT NULL DEFAULT '0',
  UNIQUE KEY `idx_user_id_profile_key` (`user_id`,`profile_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Tabla para almacenar el perfil de usuario';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bre8p_user_usergroup_map`
--

CREATE TABLE IF NOT EXISTS `bre8p_user_usergroup_map` (
  `user_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Clave externa a #__users.id',
  `group_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Clave externa a #__usergroups.id',
  PRIMARY KEY (`user_id`,`group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `bre8p_user_usergroup_map`
--

INSERT INTO `bre8p_user_usergroup_map` (`user_id`, `group_id`) VALUES
(883, 8);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bre8p_viewlevels`
--

CREATE TABLE IF NOT EXISTS `bre8p_viewlevels` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Clave primaria',
  `title` varchar(100) NOT NULL DEFAULT '',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `rules` varchar(5120) NOT NULL COMMENT 'Control de acceso codificado de JSON.',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_assetgroup_title_lookup` (`title`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Volcado de datos para la tabla `bre8p_viewlevels`
--

INSERT INTO `bre8p_viewlevels` (`id`, `title`, `ordering`, `rules`) VALUES
(1, 'Publico', 0, '[1]'),
(2, 'Registrado', 1, '[6,2,8]'),
(3, 'Especial', 2, '[6,3,8]');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bre8p_weblinks`
--

CREATE TABLE IF NOT EXISTS `bre8p_weblinks` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `catid` int(11) NOT NULL DEFAULT '0',
  `sid` int(11) NOT NULL DEFAULT '0',
  `title` varchar(250) NOT NULL DEFAULT '',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `url` varchar(250) NOT NULL DEFAULT '',
  `description` text NOT NULL,
  `date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `hits` int(11) NOT NULL DEFAULT '0',
  `state` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `archived` tinyint(1) NOT NULL DEFAULT '0',
  `approved` tinyint(1) NOT NULL DEFAULT '1',
  `access` int(11) NOT NULL DEFAULT '1',
  `params` text NOT NULL,
  `language` char(7) NOT NULL DEFAULT '',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `metadata` text NOT NULL,
  `featured` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Establecer si el link aparece.',
  `xreference` varchar(50) NOT NULL COMMENT 'Una referencia para activar vínculos a datos externos conjuntos.',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`state`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`created_by`),
  KEY `idx_featured_catid` (`featured`,`catid`),
  KEY `idx_language` (`language`),
  KEY `idx_xreference` (`xreference`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `onr_assets`
--

CREATE TABLE IF NOT EXISTS `onr_assets` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Clave primaria',
  `parent_id` int(11) NOT NULL DEFAULT '0' COMMENT 'Anidadas al conjunto padre.',
  `lft` int(11) NOT NULL DEFAULT '0' COMMENT 'Anidadas conjunto lft.',
  `rgt` int(11) NOT NULL DEFAULT '0' COMMENT 'Anidadas conjunto rgt.',
  `level` int(10) unsigned NOT NULL COMMENT 'Nivel de la caché en el árbol anidado.',
  `name` varchar(50) NOT NULL COMMENT 'Nombre único para el activo.\n',
  `title` varchar(100) NOT NULL COMMENT 'Título descriptivo para el activo.',
  `rules` varchar(5120) NOT NULL COMMENT 'Control de acceso codificado de JSON.',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_asset_name` (`name`),
  KEY `idx_lft_rgt` (`lft`,`rgt`),
  KEY `idx_parent_id` (`parent_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=195 ;

--
-- Volcado de datos para la tabla `onr_assets`
--

INSERT INTO `onr_assets` (`id`, `parent_id`, `lft`, `rgt`, `level`, `name`, `title`, `rules`) VALUES
(1, 0, 1, 458, 0, 'root.1', 'Root Asset', '{"core.login.site":{"6":1,"2":1},"core.login.admin":{"6":1},"core.login.offline":[],"core.admin":{"8":1},"core.manage":{"7":1},"core.create":{"6":1,"3":1},"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"core.edit.own":{"6":1,"3":1}}'),
(2, 1, 2, 3, 1, 'com_admin', 'com_admin', '{}'),
(3, 1, 4, 11, 1, 'com_banners', 'com_banners', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(4, 1, 12, 13, 1, 'com_cache', 'com_cache', '{"core.admin":{"7":1},"core.manage":{"7":1}}'),
(5, 1, 14, 15, 1, 'com_checkin', 'com_checkin', '{"core.admin":{"7":1},"core.manage":{"7":1}}'),
(6, 1, 16, 17, 1, 'com_config', 'com_config', '{}'),
(7, 1, 18, 87, 1, 'com_contact', 'com_contact', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(8, 1, 88, 333, 1, 'com_content', 'com_content', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":{"3":1},"core.delete":[],"core.edit":{"4":1},"core.edit.state":{"5":1},"core.edit.own":[]}'),
(9, 1, 334, 335, 1, 'com_cpanel', 'com_cpanel', '{}'),
(10, 1, 336, 337, 1, 'com_installer', 'com_installer', '{"core.admin":[],"core.manage":{"7":0},"core.delete":{"7":0},"core.edit.state":{"7":0}}'),
(11, 1, 338, 339, 1, 'com_languages', 'com_languages', '{"core.admin":{"7":1},"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(12, 1, 340, 341, 1, 'com_login', 'com_login', '{}'),
(13, 1, 342, 343, 1, 'com_mailto', 'com_mailto', '{}'),
(14, 1, 344, 345, 1, 'com_massmail', 'com_massmail', '{}'),
(15, 1, 346, 347, 1, 'com_media', 'com_media', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":{"3":1},"core.delete":{"5":1},"core.edit":[],"core.edit.state":[]}'),
(16, 1, 348, 349, 1, 'com_menus', 'com_menus', '{"core.admin":{"7":1},"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(17, 1, 37, 38, 1, 'com_messages', 'com_messages', '{"core.admin":{"7":1},"core.manage":{"7":1}}'),
(18, 1, 352, 353, 1, 'com_modules', 'com_modules', '{"core.admin":{"7":1},"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(19, 1, 354, 361, 1, 'com_newsfeeds', 'com_newsfeeds', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(20, 1, 362, 363, 1, 'com_plugins', 'com_plugins', '{"core.admin":{"7":1},"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(21, 1, 364, 365, 1, 'com_redirect', 'com_redirect', '{"core.admin":{"7":1},"core.manage":[]}'),
(22, 1, 366, 367, 1, 'com_search', 'com_search', '{"core.admin":{"7":1},"core.manage":{"6":1}}'),
(23, 1, 368, 369, 1, 'com_templates', 'com_templates', '{"core.admin":{"7":1},"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(24, 1, 370, 373, 1, 'com_users', 'com_users', '{"core.admin":{"7":1},"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(25, 1, 374, 391, 1, 'com_weblinks', 'com_weblinks', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":{"3":1,"10":0,"12":0},"core.delete":[],"core.edit":{"4":1},"core.edit.state":{"5":1}}'),
(26, 1, 392, 393, 1, 'com_wrapper', 'com_wrapper', '{}'),
(33, 1, 454, 455, 1, 'com_finder', 'com_finder', '{"core.admin":{"7":1},"core.manage":{"6":1}}'),
(34, 8, 105, 140, 2, 'com_content.category.9', 'Sin categorizar', '{"core.create":{"10":0,"12":0},"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(35, 3, 7, 8, 2, 'com_banners.category.10', 'Sin categorizar', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(36, 7, 23, 24, 2, 'com_contact.category.11', 'Sin categorizar', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(37, 19, 357, 358, 2, 'com_newsfeeds.category.12', 'Sin categorizar', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(38, 25, 381, 382, 2, 'com_weblinks.category.13', 'Sin categorizar', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(39, 8, 141, 332, 2, 'com_content.category.14', 'Datos Ejemplo Articulos', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(40, 3, 9, 10, 2, 'com_banners.category.15', 'Datos Ejemplo Anuncios', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(41, 7, 25, 86, 2, 'com_contact.category.16', 'Datos Ejemplo Contacto', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(42, 19, 359, 360, 2, 'com_newsfeeds.category.17', 'Datos Ejemplo Noticias Externas', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(43, 25, 383, 390, 2, 'com_weblinks.category.18', 'Datos Ejemplo Enlaces Web', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(44, 39, 142, 273, 3, 'com_content.category.19', 'Joomla!', '{"core.create":{"10":0,"12":0},"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(45, 44, 143, 250, 4, 'com_content.category.20', 'Extensiones', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(46, 45, 144, 159, 5, 'com_content.category.21', 'Componentes', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(47, 45, 160, 219, 5, 'com_content.category.22', 'Modulos', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(48, 45, 220, 231, 5, 'com_content.category.23', 'Plantillas', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(49, 45, 232, 233, 5, 'com_content.category.24', 'Idiomas', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(50, 45, 234, 249, 5, 'com_content.category.25', 'Plugins', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(51, 39, 274, 305, 3, 'com_content.category.26', 'Sitio Parque', '{"core.create":{"10":0,"12":0},"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(52, 51, 275, 280, 4, 'com_content.category.27', 'Blog Parque', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(53, 51, 281, 302, 4, 'com_content.category.28', 'Galeria Fotografica', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(54, 39, 306, 319, 3, 'com_content.category.29', 'Sitio Tienda de Frutas', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(55, 54, 307, 312, 4, 'com_content.category.30', 'Productores', '{"core.create":{"12":0},"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(56, 43, 382, 383, 3, 'com_weblinks.category.31', 'Enlaces Parque', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(57, 43, 384, 387, 3, 'com_weblinks.category.32', 'Enlaces eespecificos de Joomla!', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(58, 57, 385, 386, 4, 'com_weblinks.category.33', 'Otros Recursos', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(59, 41, 26, 27, 3, 'com_contact.category.34', 'Sitio Parque', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(60, 41, 28, 85, 3, 'com_contact.category.35', 'Sitio Tienda', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(61, 60, 29, 30, 4, 'com_contact.category.36', 'Personal', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(62, 60, 31, 84, 4, 'com_contact.category.37', 'Enciclopedia de Frutas', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(63, 62, 32, 33, 5, 'com_contact.category.38', 'A', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(64, 62, 34, 35, 5, 'com_contact.category.39', 'B', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(65, 62, 36, 37, 5, 'com_contact.category.40', 'C', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(66, 62, 38, 39, 5, 'com_contact.category.41', 'D', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(67, 62, 40, 41, 5, 'com_contact.category.42', 'E', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(68, 62, 42, 43, 5, 'com_contact.category.43', 'F', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(69, 62, 44, 45, 5, 'com_contact.category.44', 'G', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(70, 62, 46, 47, 5, 'com_contact.category.45', 'H', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(71, 62, 48, 49, 5, 'com_contact.category.46', 'I', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(72, 62, 50, 51, 5, 'com_contact.category.47', 'J', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(73, 62, 52, 53, 5, 'com_contact.category.48', 'K', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(74, 62, 54, 55, 5, 'com_contact.category.49', 'L', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(75, 62, 56, 57, 5, 'com_contact.category.50', 'M', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(76, 62, 58, 59, 5, 'com_contact.category.51', 'N', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(77, 62, 60, 61, 5, 'com_contact.category.52', 'O', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(78, 62, 62, 63, 5, 'com_contact.category.53', 'P', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(79, 62, 64, 65, 5, 'com_contact.category.54', 'Q', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(80, 62, 66, 67, 5, 'com_contact.category.55', 'R', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(81, 62, 68, 69, 5, 'com_contact.category.56', 'S', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(82, 62, 70, 71, 5, 'com_contact.category.57', 'T', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(83, 62, 72, 73, 5, 'com_contact.category.58', 'U', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(84, 62, 74, 75, 5, 'com_contact.category.59', 'V', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(85, 62, 76, 77, 5, 'com_contact.category.60', 'W', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(86, 62, 78, 79, 5, 'com_contact.category.61', 'X', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(87, 62, 80, 81, 5, 'com_contact.category.62', 'Y', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(88, 62, 82, 83, 5, 'com_contact.category.63', 'Z', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(89, 46, 145, 146, 6, 'com_content.article.1', 'Administrador de Componentes', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(90, 93, 162, 163, 7, 'com_content.article.2', 'Modulo Archivo', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(91, 93, 164, 165, 7, 'com_content.article.3', 'Modulo Articulos Categoria', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(92, 93, 166, 167, 7, 'com_content.article.4', 'Modulo Articulos Categoria', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(93, 47, 161, 176, 6, 'com_content.category.64', 'Modulos Contenido', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(94, 47, 177, 184, 6, 'com_content.category.65', 'Modulos Usuario', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(95, 47, 185, 198, 6, 'com_content.category.66', 'Mostrar Modulos', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(96, 47, 199, 210, 6, 'com_content.category.67', 'Utilidad Modulos', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(97, 48, 221, 222, 6, 'com_content.category.68', 'Atomic', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(98, 48, 223, 224, 6, 'com_content.category.69', 'Beez 20', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(99, 48, 225, 226, 6, 'com_content.category.70', 'Beez5', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(100, 48, 227, 228, 6, 'com_content.category.71', 'Via Lactea', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(101, 50, 235, 236, 6, 'com_content.article.5', 'Autenticacion', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(102, 51, 303, 304, 4, 'com_content.article.6', 'Parques Australianos ', '{"core.delete":[],"core.edit":{"2":1},"core.edit.state":[]}'),
(103, 95, 186, 187, 7, 'com_content.article.7', 'Modulo Anuncios', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(104, 44, 251, 252, 4, 'com_content.article.8', 'Principiantes', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(105, 46, 147, 148, 6, 'com_content.article.9', 'Contacto', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(106, 46, 149, 150, 6, 'com_content.article.10', 'Contenido', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(107, 109, 293, 294, 6, 'com_content.article.11', 'Cradle Mountain', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(108, 53, 282, 291, 5, 'com_content.category.72', 'Animales', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(109, 53, 292, 301, 5, 'com_content.category.73', 'Escenario', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(110, 95, 188, 189, 7, 'com_content.article.12', 'Modulo HTML personalizado', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(111, 54, 313, 314, 4, 'com_content.article.13', 'Direcciones', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(112, 50, 237, 238, 6, 'com_content.article.14', 'Editores', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(113, 50, 239, 240, 6, 'com_content.article.15', 'Editores-xtd', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(114, 95, 190, 191, 7, 'com_content.article.16', 'Mostrar Feed', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(115, 52, 276, 277, 5, 'com_content.article.17', 'Primer Post Blog', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(116, 52, 278, 279, 5, 'com_content.article.18', 'Segundo Post Blog', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(117, 95, 192, 193, 7, 'com_content.article.19', 'Modulo Pie de Pagina', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(118, 54, 315, 316, 4, 'com_content.article.20', 'Tienda de Frutas', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(119, 44, 253, 254, 4, 'com_content.article.21', 'Obtener Ayuda', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(120, 44, 255, 256, 4, 'com_content.article.22', 'Primeros Pasos', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(121, 55, 308, 309, 5, 'com_content.article.23', 'Happy Orange Orchard', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(122, 44, 257, 258, 4, 'com_content.article.24', 'Joomla!', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(123, 108, 283, 284, 6, 'com_content.article.25', 'Koala', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(124, 96, 200, 201, 7, 'com_content.article.26', 'Conmutar Idioma', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(125, 93, 168, 169, 7, 'com_content.article.27', 'Modulo Ultimos Articulos', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(126, 94, 178, 179, 7, 'com_content.article.28', 'Modulo Acceso', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(127, 166, 214, 215, 7, 'com_content.article.29', 'Modulo Menu', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(128, 93, 170, 171, 7, 'com_content.article.30', 'Contenido Mas Leido', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(129, 93, 172, 173, 7, 'com_content.article.31', 'Noticias de Ultima Hora', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(130, 44, 259, 260, 4, 'com_content.article.32', 'Parametros', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(131, 108, 285, 286, 6, 'com_content.article.33', 'Phyllopteryx', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(132, 109, 295, 296, 6, 'com_content.article.34', 'Pinnacles', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(133, 44, 261, 262, 4, 'com_content.article.35', 'Profesionales', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(134, 95, 194, 195, 7, 'com_content.article.36', 'Modulo Imagen Aleatoria', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(135, 93, 174, 175, 7, 'com_content.article.37', 'Modulo Articulos  Relacionados', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(136, 44, 263, 264, 4, 'com_content.article.38', 'Sitios de Ejemplo', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(137, 46, 151, 152, 6, 'com_content.article.39', 'Buscar', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(138, 96, 202, 203, 7, 'com_content.article.40', 'Modulo de Busqueda', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(139, 50, 241, 242, 6, 'com_content.article.41', 'Buscar ', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(140, 39, 320, 321, 3, 'com_content.article.42', 'Mapa Web', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(141, 108, 287, 288, 6, 'com_content.article.43', 'Spotted Quoll', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(142, 96, 204, 205, 7, 'com_content.article.44', 'Modulo Estadisticas', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(143, 96, 206, 207, 7, 'com_content.article.45', 'Modulo Redifusion', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(144, 50, 243, 244, 6, 'com_content.article.46', 'Sistema', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(145, 44, 265, 266, 4, 'com_content.article.47', 'La Comunidad Joomla!', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(146, 44, 267, 268, 4, 'com_content.article.48', 'El Proyecto Joomla!', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(147, 48, 229, 230, 6, 'com_content.article.49', 'Tipografia', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(148, 44, 269, 270, 4, 'com_content.article.50', 'Mejoras', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(149, 50, 245, 246, 6, 'com_content.article.51', 'Usuario', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(150, 46, 153, 154, 6, 'com_content.article.52', 'Usuarios', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(151, 44, 271, 272, 4, 'com_content.article.53', 'Uso de Joomla!', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(152, 46, 155, 156, 6, 'com_content.article.54', 'Enlaces Web', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(153, 95, 196, 197, 7, 'com_content.article.55', 'Modulo Enlaces Web', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(154, 94, 180, 181, 7, 'com_content.article.56', 'Usuarios en Linea', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(155, 108, 289, 290, 6, 'com_content.article.57', 'Wobbegone', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(156, 55, 310, 311, 5, 'com_content.article.58', 'Sandia Maravillosa', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(157, 96, 208, 209, 7, 'com_content.article.59', 'Modulo Wrapper', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(158, 46, 157, 158, 6, 'com_content.article.60', 'Noticias Externas', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(159, 166, 216, 217, 7, 'com_content.article.61', 'Modulo Ruta', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(160, 50, 247, 248, 6, 'com_content.article.62', 'Contenido', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(162, 109, 297, 298, 6, 'com_content.article.64', 'Blue Mountain Rain Forest', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(163, 109, 299, 300, 6, 'com_content.article.65', 'Ormiston Pound', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(165, 94, 182, 183, 7, 'com_content.article.66', 'Modulo Ultimos Usuarios', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(166, 47, 213, 218, 6, 'com_content.category.75', 'Modulo del Menu', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(167, 54, 317, 318, 4, 'com_content.category.76', 'Recetas', '{"core.create":{"12":1},"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(168, 34, 106, 107, 3, 'com_content.article.67', '¿Que hay de nuevo en la 1.5?', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(169, 24, 371, 372, 2, 'com_users.notes.category.77', 'Uncategorised', ''),
(170, 50, 251, 252, 6, 'com_content.article.68', 'Captcha', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(171, 50, 253, 254, 6, 'com_content.article.69', 'Quick Icons', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(172, 96, 210, 211, 7, 'com_content.article.70', 'Smart Search', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(173, 1, 464, 465, 1, 'com_joomlaupdate', 'com_joomlaupdate', '{"core.admin":[],"core.manage":[],"core.delete":[],"core.edit.state":[]}'),
(174, 34, 108, 109, 3, 'com_content.article.71', 'Noves Tecnologies', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(175, 34, 110, 111, 3, 'com_content.article.72', 'Disc Durs SDD', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(176, 34, 112, 113, 3, 'com_content.article.73', 'Dispositius Mobils', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(177, 34, 114, 115, 3, 'com_content.article.74', 'Grafe', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(178, 34, 116, 117, 3, 'com_content.article.75', 'Smartwatch', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(179, 34, 118, 127, 3, 'com_content.category.78', 'Esports', '{"core.create":{"6":1,"3":1},"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"core.edit.own":{"6":1,"3":1}}'),
(180, 179, 119, 120, 4, 'com_content.article.76', 'Futbol', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(181, 179, 121, 122, 4, 'com_content.article.77', 'Basquet', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(182, 179, 123, 124, 4, 'com_content.article.78', 'Handbol', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(183, 179, 125, 126, 4, 'com_content.article.79', 'Tenis', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(185, 39, 324, 325, 3, 'com_content.article.80', 'Impressores 3D', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(186, 39, 326, 327, 3, 'com_content.article.81', 'Google Glass', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(187, 39, 328, 329, 3, 'com_content.article.82', 'Drons', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(188, 39, 330, 331, 3, 'com_content.article.83', 'Televisors 4k i pantalla curva', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(189, 34, 128, 129, 3, 'com_content.article.84', 'Català', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(190, 34, 130, 131, 3, 'com_content.article.85', 'Español', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(191, 34, 132, 133, 3, 'com_content.article.86', 'English', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(192, 34, 134, 135, 3, 'com_content.article.87', 'Español', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(193, 34, 136, 137, 3, 'com_content.article.88', 'Català', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(194, 34, 138, 139, 3, 'com_content.article.89', 'English', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `onr_associations`
--

CREATE TABLE IF NOT EXISTS `onr_associations` (
  `id` varchar(50) NOT NULL COMMENT 'A reference to the associated item.',
  `context` varchar(50) NOT NULL COMMENT 'The context of the associated item.',
  `key` char(32) NOT NULL COMMENT 'The key for the association computed from an md5 on associated ids.',
  PRIMARY KEY (`context`,`id`),
  KEY `idx_key` (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `onr_banners`
--

CREATE TABLE IF NOT EXISTS `onr_banners` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cid` int(11) NOT NULL DEFAULT '0',
  `type` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `imptotal` int(11) NOT NULL DEFAULT '0',
  `impmade` int(11) NOT NULL DEFAULT '0',
  `clicks` int(11) NOT NULL DEFAULT '0',
  `clickurl` varchar(200) NOT NULL DEFAULT '',
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `catid` int(10) unsigned NOT NULL DEFAULT '0',
  `description` text NOT NULL,
  `custombannercode` varchar(2048) NOT NULL,
  `sticky` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `params` text NOT NULL,
  `own_prefix` tinyint(1) NOT NULL DEFAULT '0',
  `metakey_prefix` varchar(255) NOT NULL DEFAULT '',
  `purchase_type` tinyint(4) NOT NULL DEFAULT '-1',
  `track_clicks` tinyint(4) NOT NULL DEFAULT '-1',
  `track_impressions` tinyint(4) NOT NULL DEFAULT '-1',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `reset` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `language` char(7) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `idx_state` (`state`),
  KEY `idx_own_prefix` (`own_prefix`),
  KEY `idx_metakey_prefix` (`metakey_prefix`),
  KEY `idx_banner_catid` (`catid`),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Volcado de datos para la tabla `onr_banners`
--

INSERT INTO `onr_banners` (`id`, `cid`, `type`, `name`, `alias`, `imptotal`, `impmade`, `clicks`, `clickurl`, `state`, `catid`, `description`, `custombannercode`, `sticky`, `ordering`, `metakey`, `params`, `own_prefix`, `metakey_prefix`, `purchase_type`, `track_clicks`, `track_impressions`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `reset`, `created`, `language`) VALUES
(2, 2, 0, 'Webempresa', 'webempresa', 0, 129, 2, 'http://webempresa.com', 1, 15, 'Diseño y Hosting sobre Joomla!', '', 0, 1, '', '{"imageurl":"images\\/banners\\/webempresa.png","width":"","height":"","alt":"Webempresa"}', 0, '', -1, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2010-01-12 00:25:24', '*'),
(3, 3, 0, 'PixelPro', 'PixelPro', 0, 127, 1, 'http://pixelpro.es', 1, 15, 'PixelPro cursos de Joomla!.', '', 0, 2, '', '{"imageurl":"images\\/banners\\/pixelpro.png","width":"","height":"","alt":"PixelPro"}', 0, '', -1, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2010-01-12 00:35:30', '*'),
(4, 1, 0, 'Soporte Joomla! Spanish', 'support-joomla-spanish', 0, 124, 0, 'http://joomlaspanish.org', 1, 15, 'Tus contribuciones de tiempo, talento y dinero a Joomla! son posibles.', '', 0, 3, '', '{"imageurl":"images\\/banners\\/logo.png","width":"","height":"","alt":""}', 0, '', -1, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2010-01-12 00:55:54', '*');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `onr_banner_clients`
--

CREATE TABLE IF NOT EXISTS `onr_banner_clients` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `contact` varchar(255) NOT NULL DEFAULT '',
  `email` varchar(255) NOT NULL DEFAULT '',
  `extrainfo` text NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `metakey` text NOT NULL,
  `own_prefix` tinyint(4) NOT NULL DEFAULT '0',
  `metakey_prefix` varchar(255) NOT NULL DEFAULT '',
  `purchase_type` tinyint(4) NOT NULL DEFAULT '-1',
  `track_clicks` tinyint(4) NOT NULL DEFAULT '-1',
  `track_impressions` tinyint(4) NOT NULL DEFAULT '-1',
  PRIMARY KEY (`id`),
  KEY `idx_own_prefix` (`own_prefix`),
  KEY `idx_metakey_prefix` (`metakey_prefix`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Volcado de datos para la tabla `onr_banner_clients`
--

INSERT INTO `onr_banner_clients` (`id`, `name`, `contact`, `email`, `extrainfo`, `state`, `checked_out`, `checked_out_time`, `metakey`, `own_prefix`, `metakey_prefix`, `purchase_type`, `track_clicks`, `track_impressions`) VALUES
(1, 'Joomla! Spanish', 'Administrator', 'email@email.com', '', 1, 0, '0000-00-00 00:00:00', '', 0, '', -1, 0, 0),
(2, 'Webempresa', 'Webempresa', 'info@webempresa.com', '', 1, 0, '0000-00-00 00:00:00', '', 0, '', -1, 0, 0),
(3, 'PixelPro', 'PixelPro', 'info@pixelpro.es', '', 1, 0, '0000-00-00 00:00:00', '', 0, '', -1, 0, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `onr_banner_tracks`
--

CREATE TABLE IF NOT EXISTS `onr_banner_tracks` (
  `track_date` datetime NOT NULL,
  `track_type` int(10) unsigned NOT NULL,
  `banner_id` int(10) unsigned NOT NULL,
  `count` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`track_date`,`track_type`,`banner_id`),
  KEY `idx_track_date` (`track_date`),
  KEY `idx_track_type` (`track_type`),
  KEY `idx_banner_id` (`banner_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `onr_categories`
--

CREATE TABLE IF NOT EXISTS `onr_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `asset_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK para la tabla de #__assets.',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0',
  `lft` int(11) NOT NULL DEFAULT '0',
  `rgt` int(11) NOT NULL DEFAULT '0',
  `level` int(10) unsigned NOT NULL DEFAULT '0',
  `path` varchar(255) NOT NULL DEFAULT '',
  `extension` varchar(50) NOT NULL DEFAULT '',
  `title` varchar(255) NOT NULL,
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `note` varchar(255) NOT NULL DEFAULT '',
  `description` mediumtext NOT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  `metadesc` varchar(1024) NOT NULL COMMENT 'La meta descripción de la página.',
  `metakey` varchar(1024) NOT NULL COMMENT 'Las palabras clave para la página.',
  `metadata` varchar(2048) NOT NULL COMMENT 'Propiedades de metadatos codificados JSON.',
  `created_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `language` char(7) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `cat_idx` (`extension`,`published`,`access`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_path` (`path`),
  KEY `idx_left_right` (`lft`,`rgt`),
  KEY `idx_alias` (`alias`),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=79 ;

--
-- Volcado de datos para la tabla `onr_categories`
--

INSERT INTO `onr_categories` (`id`, `asset_id`, `parent_id`, `lft`, `rgt`, `level`, `path`, `extension`, `title`, `alias`, `note`, `description`, `published`, `checked_out`, `checked_out_time`, `access`, `params`, `metadesc`, `metakey`, `metadata`, `created_user_id`, `created_time`, `modified_user_id`, `modified_time`, `hits`, `language`) VALUES
(1, 0, 0, 0, 137, 0, '', 'system', 'ROOT', 'root', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{}', '', '', '', 894, '2011-01-01 00:00:01', 0, '2011-01-01 00:00:01', 0, '*'),
(9, 34, 1, 131, 134, 1, 'uncategorised', 'com_content', 'Sin categoría', 'sin-categoria', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 894, '2010-07-10 13:52:03', 42, '2010-07-12 16:09:07', 0, '*'),
(10, 35, 1, 129, 130, 1, 'uncategorised', 'com_banners', 'Sin categoría', 'sin-categoria', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":"","foobar":""}', '', '', '{"page_title":"","author":"","robots":""}', 894, '2010-07-10 13:52:16', 0, '0000-00-00 00:00:00', 0, '*'),
(11, 36, 1, 125, 126, 1, 'uncategorised', 'com_contact', 'Sin categoría', 'sin-categoria', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 894, '2010-07-10 13:53:00', 0, '0000-00-00 00:00:00', 0, '*'),
(12, 37, 1, 61, 62, 1, 'uncategorised', 'com_newsfeeds', 'Sin categoría', 'sin-categoria', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 894, '2010-07-10 13:53:28', 0, '0000-00-00 00:00:00', 0, '*'),
(13, 38, 1, 57, 58, 1, 'uncategorised', 'com_weblinks', 'Sin categoría', 'sin-categoria', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 894, '2010-07-10 13:53:59', 0, '0000-00-00 00:00:00', 0, '*'),
(14, 39, 1, 9, 56, 1, 'sample-data-articles', 'com_content', 'Datos ejemplo Artículos', 'sample-data-articles', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 894, '2010-07-10 14:21:35', 0, '0000-00-00 00:00:00', 0, '*'),
(15, 40, 1, 127, 128, 1, 'sample-data-banners', 'com_banners', 'Datos ejemplo Anuncios', 'sample-data-banners', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":"","foobar":""}', '', '', '{"page_title":"","author":"","robots":""}', 894, '2010-07-10 14:22:27', 0, '0000-00-00 00:00:00', 0, '*'),
(16, 41, 1, 63, 124, 1, 'sample-data-contact', 'com_contact', 'Datos ejemplo Contacto', 'sample-data-contact', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 894, '2010-07-10 14:23:15', 0, '0000-00-00 00:00:00', 0, '*'),
(17, 42, 1, 59, 60, 1, 'sample-data-newsfeeds', 'com_newsfeeds', 'Datos ejemplo Noticias Externas', 'sample-data-newsfeeds', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 894, '2010-07-10 14:24:14', 0, '0000-00-00 00:00:00', 0, '*'),
(18, 43, 1, 1, 8, 1, 'sample-data-weblinks', 'com_weblinks', 'Datos ejemplo Enlaces Web', 'sample-data-weblinks', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 894, '2010-07-10 14:26:42', 0, '0000-00-00 00:00:00', 0, '*'),
(19, 44, 14, 10, 39, 2, 'sample-data-articles/joomla', 'com_content', 'Joomla!', 'joomla', '', '', 1, 894, '2015-02-03 10:53:08', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 894, '2010-07-10 15:19:05', 42, '2010-07-12 18:08:51', 0, '*'),
(20, 45, 19, 11, 38, 3, 'sample-data-articles/joomla/extensions', 'com_content', 'Extensiones', 'extensiones', '', '<p>El sistema de gestión de contenidos Joomla! permite crear páginas web de diversos tipos utilizando extensiones. Hay cinco tipos básicos de extensiones: componentes, módulos, plantillas, idiomas y plugins. Su sitio web incluye las extensiones que necesita para crear un sitio web básico en Inglés, pero miles de extensiones adicionales de todos los tipos están disponibles. El <a href="http://extensions.joomla.org" style="color: #1b57b1; text-decoration: none; font-weight: normal;">Directorio de Extensiones de Joomla!</a> es el más grande de extensiones para Joomla!.</p>', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 894, '2010-07-10 15:19:42', 42, '2010-07-11 12:21:46', 0, '*'),
(21, 46, 20, 12, 13, 4, 'sample-data-articles/joomla/extensions/components', 'com_content', 'Componentes', 'componentes', '', '<p><img src="administrator/templates/bluestork/images/header/icon-48-component.png" class="image-left" alt="Component Image" ="==" /"="/"" ="" />Los componentes son las extensiones más grandes que producen el contenido principal de su sitio. Cada componente tiene un o más "vistas" que controlan cómo se muestra el contenido.En el administrador de Joomla! no se encuentran extensiones adicionales como menús, redirecciones y los gestores de extensiones.</p>', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 894, '2010-07-10 15:20:18', 42, '2010-09-14 00:29:05', 0, '*'),
(22, 47, 20, 14, 25, 4, 'sample-data-articles/joomla/extensions/modules', 'com_content', 'Módulos', 'modulos', '', '<p><img src="administrator/templates/bluestork/images/header/icon-48-module.png" alt="Media Image" class="image-left" />Los módulos son pequeños bloques de contenido que se pueden mostrar en las posiciones de una página web. Los menús del sitio se muestran en los módulos. El núcleo de Joomla! incluye 17 módulos independientes que van desde el acceso hasta la búsqueda de imágenes aleatorias. Cada módulo tiene un nombre que comienza mod_ pero cuando se muestra tiene un título. En las descripciones de esta sección, los títulos son los mismos que los nombres.</p>', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 894, '2010-07-10 15:20:49', 42, '2010-09-14 00:29:37', 0, '*'),
(23, 48, 20, 26, 33, 4, 'sample-data-articles/joomla/extensions/templates', 'com_content', 'Plantillas', 'plantillas', '', '<p><img src="administrator/templates/bluestork/images/header/icon-48-themes.png" border="0" alt="Media Image" align="left" />Plantillas de darle una apariencia a su sitio. Estas determinan el diseño, colores, tipos de letra, gráficos y otros aspectos del diseño que hacen que su sitio sea único. La instalación de Joomla! viene con cuatro plantillas empaquetadas previamente.</p>', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 894, '2010-07-10 15:21:27', 42, '2010-07-12 01:02:27', 0, '*'),
(24, 49, 20, 34, 35, 4, 'sample-data-articles/joomla/extensions/languages', 'com_content', 'Idiomas', 'idiomas', '', '<p><img src="administrator/templates/bluestork/images/header/icon-48-language.png" border="0" alt="Languages Image" align="left" />Joomla se instala en Inglés, pero las traducciones de las interfaces, los datos de muestra y pantallas de ayuda están disponibles en docenas de idiomas.</p>\r\n<p><a href="http://community.joomla.org/translations.html"></p>Traducción de información</a></p>\r\n<p>Si no hay un paquete de idioma disponible para su idioma, las instrucciones están disponibles para la creación de su propia traducción, que también puede contribuir con la comunidad a través de un equipo de traducción para crear una traducción acreditada.</p>\r\n<p>Las traducciones de las interfaces se instalan mediante el gestor de extensiones en el administrador del sitio y luego se gestionan con el gestor de idiomas.Si tiene dos o más idiomas instalados es posible utilizar el módulo y plugin de selección de idiomas. Siempre se deben usar juntos. Puede crear contenidos multilingües y marcar su contenido, los elementos de menú o módulos en un determinado idioma siguiendo las <a href="http://docs.joomla.org/Language_Switcher_Tutorial_for_Joomla_1.6">instrucciones completas</a> para que sus usuarios sean capaces de seleccionar el idioma de contenido específico utilizando el módulo. Por defecto, tanto el plugin y módulo están deshabilitados.</p>\r\n<p>Hay una serie de extensiones que pueden ayudar a manejar las traducciones de contenido disponibles en el <a href="http://extensions.joomla.org"> Directorio de Extensiones de Joomla!.</a>.</p>', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 894, '2010-07-10 15:22:27', 42, '2010-07-12 01:08:26', 0, '*'),
(25, 50, 20, 36, 37, 4, 'sample-data-articles/joomla/extensions/plugins', 'com_content', 'Plugins', 'plugins', '', '<p><img src="administrator/templates/bluestork/images/header/icon-48-plugin.png" border="0" alt="Plugin Image" align="left" />Los plugins son pequeñas extensiones orientadas mejorar las tareas del framework de Joomla!. Algunos están asociados con extensiones en particular y otros, tales como editores, se utilizan en todas las de Joomla!. La mayoría de los usuarios principiantes no necesitan cambiar ninguno de los plugins que se instalan con Joomla!.</p>', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 894, '2010-07-10 15:23:22', 42, '2010-07-12 01:07:01', 0, '*'),
(26, 51, 14, 40, 49, 2, 'sample-data-articles/park-site', 'com_content', 'Sitio web Parque', 'sitio-web-parque', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 894, '2010-07-10 15:26:53', 42, '2010-07-12 16:50:51', 0, 'en-GB'),
(27, 52, 26, 41, 42, 3, 'sample-data-articles/park-site/park-blog', 'com_content', 'Blog Parque', 'blog-parque', '', '<p>Here is where I will blog all about the parks of Australia.</p>\r\n<p><em>You can make a blog on your website by creating a category to write you blog posts in (this one is called Park Blog). Each blog post will be an article in that category. If you make a category blog menu link with 1 column it will look like this page, if you display the category description (this part) displayed. </em></p>\r\n<p><em>To enhance your blog you may want to add Ã‚Â extensions forÃ‚Â <a href="http://extensions.joomla.org/extensions/contacts-and-feedback/articles-comments" style="color: #1b57b1; text-decoration: none; font-weight: normal;">comments</a>,<a href="http://extensions.joomla.org/extensions/social-web" style="color: #1b57b1; text-decoration: none; font-weight: normal;"> interacting with social network sites</a>,Ã‚Â <a href="http://extensions.joomla.org/extensions/content-sharing" style="color: #1b57b1; text-decoration: none; font-weight: normal;">tagging</a>, andÃ‚Â <a href="http://extensions.joomla.org/extensions/content-sharing" style="color: #1b57b1; text-decoration: none; font-weight: normal;">keeping in contact with your readers</a>.Ã‚Â Ã‚Â Ã‚Â You will also enable the syndication that is included in Joomla! (in the Integration Options set Show Feed Link to Show an make sure to display the syndication module on the page).</em></p>', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 894, '2010-07-10 15:29:34', 42, '2010-07-11 22:31:33', 0, 'en-GB'),
(28, 53, 26, 43, 48, 3, 'sample-data-articles/park-site/photo-gallery', 'com_content', 'Galería Fotográfica', 'galeria-fotografica', '', '<p><img src="images/sampledata/parks/banner_cradle.jpg" border="0" /></p>\r\n<p>These are my photos from parks I have visited (I didn''t take them, they are all from <a href="http://commons.wikimedia.org/wiki/Main_Page">Wikimedia Commons</a>).</p>\r\n<p><em>This shows you how to make a simple image gallery using articles in com_content. </em></p>\r\n<p><em>In each article put a thumbnail image before a "readmore" and the fiull size image after it. Set the article to Show Intro Text: Hide. </em></p>', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 894, '2010-07-10 15:36:24', 42, '2010-07-11 22:39:39', 0, 'en-GB'),
(29, 54, 14, 50, 55, 2, 'sample-data-articles/fruit-shop-site', 'com_content', 'Sitio web Tienda de Frutas', 'sitio-tienda-de-frutas', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 894, '2010-07-10 16:07:22', 42, '2010-07-12 19:39:19', 0, '*'),
(30, 55, 29, 51, 52, 3, 'sample-data-articles/fruit-shop-site/growers', 'com_content', 'Productores', 'productores', '', '<p>Buscamos en todo el campo los mejores frutos para los productores.</p>\r\n<p><em>Usted puede dejar que cada proveedor tenga una página que él o ella pueda editar. Para ver esto en acción tendrá que crear los usuarios que sean proveedores y asignarlos como autores de los artículos de proveedores.</em></p>', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 894, '2010-07-10 16:15:26', 42, '2010-07-12 20:20:23', 0, '*'),
(31, 56, 18, 2, 3, 2, 'sample-data-weblinks/park-links', 'com_weblinks', 'Enlaces Parque', 'enlaces-parque', '', '<p>Aquí se encuentran los enlaces de algunos de mis parques favoritos.</p>\r\n<p><em>El componente de enlaces web proporciona una manera fácil de hacer enlaces a sitios externos que son constantemente formateados y categorizados. Puede crear vínculos a partir de la parte delantera de su sitio web.</em></p>', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 894, '2010-07-10 16:21:00', 42, '2010-07-11 22:43:03', 0, 'en-GB'),
(32, 57, 18, 4, 7, 2, 'sample-data-weblinks/joomla-specific-links', 'com_weblinks', 'Enlaces especificos Joomla!', 'joomla-specific-links', '', '<p><div style="font-family: Tahoma, Helvetica, Arial, sans-serif; font-size: 76%; background-color: #ffffff; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; line-height: 1.3em; color: #333333;"><p>A selection of links that are all related to the Joomla! Project.</p></div></p>', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 894, '2010-07-10 16:22:39', 0, '0000-00-00 00:00:00', 0, '*'),
(33, 58, 32, 5, 6, 3, 'sample-data-weblinks/joomla-specific-links/other-resources', 'com_weblinks', 'Otros recuros', 'other-resources', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 894, '2010-07-10 16:24:17', 0, '0000-00-00 00:00:00', 0, '*'),
(34, 59, 16, 64, 65, 2, 'sample-data-contact/park-site', 'com_contact', 'Sitio web Parque', 'sitio-web-parque', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 894, '2010-07-10 16:28:06', 42, '2010-07-11 22:35:55', 0, 'en-GB'),
(35, 60, 16, 66, 123, 2, 'sample-data-contact/shop-site', 'com_contact', 'Sitio web Tienda', 'sitio-tienda', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 894, '2010-07-10 16:28:20', 0, '0000-00-00 00:00:00', 0, '*'),
(36, 61, 35, 67, 68, 3, 'sample-data-contact/shop-site/staff', 'com_contact', 'Equipo', 'equipo', '', '<p>Por favor, no dude en contactar con nuestro personal en cualquier momento si necesita ayuda.</p>', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 894, '2010-07-10 16:29:22', 0, '0000-00-00 00:00:00', 0, '*'),
(37, 62, 35, 69, 122, 3, 'sample-data-contact/shop-site/fruit-encyclopedia', 'com_contact', 'Enciclopedia Frutas', 'enciclopedia-frutas', '', '<p></p><p>Nuestro directorio de información sobre los diferentes tipos de frutas.</p><p>Nos encanta la fruta y queremos que el mundo sepa más acerca de todas sus muchas variedades.</p><p>Aunque es pequeña ahora, trabajamos en ella cada vez que tenemos una oportunidad.</p><p>Todas las imágenes se pueden encontrar en <a href="http://commons.wikimedia.org/wiki/Main_Page">Wikimedia Commons</a>.</p><p><img src="images/sampledata/fruitshop/apple.jpg" border="0" alt="Apples" title="Apples" /></p><p><em>Esta enciclopedia se lleva a cabo mediante el componente de contacto, cada fruto se separa en un contacto y una categoría para cada letra. Se utiliza un estilo CSS para crear el diseño horizontal de las líneas del alfabeto.</em></p><p><em>Si quisiera, podría permitir a algunos usuarios (como su cultivadores) tener acceso a esta categoría sólo en el componente de contacto y dejar que le ayuden a crear nuevos contenidos para la enciclopedia.</em></p><p> </p>', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 894, '2010-07-10 16:41:12', 0, '0000-00-00 00:00:00', 0, '*'),
(38, 63, 37, 70, 71, 4, 'sample-data-contact/shop-site/fruit-encyclopedia/a', 'com_contact', 'A', 'a', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 894, '2010-07-10 16:43:24', 0, '0000-00-00 00:00:00', 0, '*'),
(39, 64, 37, 72, 73, 4, 'sample-data-contact/shop-site/fruit-encyclopedia/b', 'com_contact', 'B', 'b', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 894, '2011-01-01 00:00:01', 0, '2011-01-01 00:00:01', 0, '*'),
(40, 65, 37, 74, 75, 4, 'sample-data-contact/shop-site/fruit-encyclopedia/c', 'com_contact', 'C', 'c', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 894, '2011-01-01 00:00:01', 0, '2011-01-01 00:00:01', 0, '*'),
(41, 66, 37, 76, 77, 4, 'sample-data-contact/shop-site/fruit-encyclopedia/d', 'com_contact', 'D', 'd', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 894, '2011-01-01 00:00:01', 0, '2011-01-01 00:00:01', 0, '*'),
(42, 67, 37, 78, 79, 4, 'sample-data-contact/shop-site/fruit-encyclopedia/e', 'com_contact', 'E', 'e', '', '', 0, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 894, '2011-01-01 00:00:01', 0, '2011-01-01 00:00:01', 0, '*'),
(43, 68, 37, 80, 81, 4, 'sample-data-contact/shop-site/fruit-encyclopedia/f', 'com_contact', 'F', 'f', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 894, '2011-01-01 00:00:01', 0, '2011-01-01 00:00:01', 0, '*'),
(44, 69, 37, 82, 83, 4, 'sample-data-contact/shop-site/fruit-encyclopedia/g', 'com_contact', 'G', 'g', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 894, '2011-01-01 00:00:01', 0, '2011-01-01 00:00:01', 0, '*'),
(45, 70, 37, 84, 85, 4, 'sample-data-contact/shop-site/fruit-encyclopedia/h', 'com_contact', 'H', 'h', '', '', 0, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 894, '2011-01-01 00:00:01', 0, '2011-01-01 00:00:01', 0, '*'),
(46, 71, 37, 86, 87, 4, 'sample-data-contact/shop-site/fruit-encyclopedia/i', 'com_contact', 'I', 'i', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 894, '2011-01-01 00:00:01', 0, '2011-01-01 00:00:01', 0, '*'),
(47, 72, 37, 88, 89, 4, 'sample-data-contact/shop-site/fruit-encyclopedia/j', 'com_contact', 'J', 'j', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 894, '2011-01-01 00:00:01', 0, '2011-01-01 00:00:01', 0, '*'),
(48, 73, 37, 90, 91, 4, 'sample-data-contact/shop-site/fruit-encyclopedia/k', 'com_contact', 'K', 'k', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 894, '2011-01-01 00:00:01', 0, '2011-01-01 00:00:01', 0, '*'),
(49, 74, 37, 92, 93, 4, 'sample-data-contact/shop-site/fruit-encyclopedia/l', 'com_contact', 'L', 'l', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 894, '2011-01-01 00:00:01', 0, '2011-01-01 00:00:01', 0, '*'),
(50, 75, 37, 94, 95, 4, 'sample-data-contact/shop-site/fruit-encyclopedia/m', 'com_contact', 'M', 'm', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 894, '2011-01-01 00:00:01', 0, '2011-01-01 00:00:01', 0, '*'),
(51, 76, 37, 96, 97, 4, 'sample-data-contact/shop-site/fruit-encyclopedia/n', 'com_contact', 'N', 'n', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 894, '2011-01-01 00:00:01', 0, '2011-01-01 00:00:01', 0, '*'),
(52, 77, 37, 98, 99, 4, 'sample-data-contact/shop-site/fruit-encyclopedia/o', 'com_contact', 'O', 'o', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 894, '2011-01-01 00:00:01', 0, '2011-01-01 00:00:01', 0, '*'),
(53, 78, 37, 100, 101, 4, 'sample-data-contact/shop-site/fruit-encyclopedia/p', 'com_contact', 'P', 'p', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 894, '2011-01-01 00:00:01', 0, '2011-01-01 00:00:01', 0, '*'),
(54, 79, 37, 102, 103, 4, 'sample-data-contact/shop-site/fruit-encyclopedia/q', 'com_contact', 'Q', 'q', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 894, '2011-01-01 00:00:01', 0, '2011-01-01 00:00:01', 0, '*'),
(55, 80, 37, 104, 105, 4, 'sample-data-contact/shop-site/fruit-encyclopedia/r', 'com_contact', 'R', 'r', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 894, '2011-01-01 00:00:01', 0, '2011-01-01 00:00:01', 0, '*'),
(56, 81, 37, 106, 107, 4, 'sample-data-contact/shop-site/fruit-encyclopedia/s', 'com_contact', 'S', 's', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 894, '2011-01-01 00:00:01', 0, '2011-01-01 00:00:01', 0, '*'),
(57, 82, 37, 108, 109, 4, 'sample-data-contact/shop-site/fruit-encyclopedia/t', 'com_contact', 'T', 't', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 894, '2011-01-01 00:00:01', 0, '2011-01-01 00:00:01', 0, '*'),
(58, 83, 37, 110, 111, 4, 'sample-data-contact/shop-site/fruit-encyclopedia/u', 'com_contact', 'U', 'u', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 894, '2011-01-01 00:00:01', 0, '2011-01-01 00:00:01', 0, '*'),
(59, 84, 37, 112, 113, 4, 'sample-data-contact/shop-site/fruit-encyclopedia/v', 'com_contact', 'V', 'v', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 894, '2011-01-01 00:00:01', 0, '2011-01-01 00:00:01', 0, '*'),
(60, 85, 37, 114, 115, 4, 'sample-data-contact/shop-site/fruit-encyclopedia/w', 'com_contact', 'W', 'w', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 894, '2011-01-01 00:00:01', 0, '2011-01-01 00:00:01', 0, '*'),
(61, 86, 37, 116, 117, 4, 'sample-data-contact/shop-site/fruit-encyclopedia/x', 'com_contact', 'X', 'x', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 894, '2011-01-01 00:00:01', 0, '2011-01-01 00:00:01', 0, '*'),
(62, 87, 37, 118, 119, 4, 'sample-data-contact/shop-site/fruit-encyclopedia/y', 'com_contact', 'Y', 'y', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 894, '2011-01-01 00:00:01', 0, '2011-01-01 00:00:01', 0, '*'),
(63, 88, 37, 120, 121, 4, 'sample-data-contact/shop-site/fruit-encyclopedia/z', 'com_contact', 'Z', 'z', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 894, '2011-01-01 00:00:01', 0, '2011-01-01 00:00:01', 0, '*'),
(64, 93, 22, 15, 16, 5, 'sample-data-articles/joomla/extensions/modules/articles-modules', 'com_content', 'Módulos Contenido', 'articles-modules', '', '<p>Los módulos de contenido muestran el artículo y otra información del componente de contenido.</p>', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 894, '2010-07-10 18:32:13', 42, '2010-07-11 13:34:00', 0, '*'),
(65, 94, 22, 17, 18, 5, 'sample-data-articles/joomla/extensions/modules/user-modules', 'com_content', 'Módulos Usuario', 'user-modules', '', '<p>Los módulos de usuario interactuan con el sistema del usuario, permitiendo a los usuarios acceder, mostrar quien está conectado, y mostrar la mayoría de los usuarios registrados recientemente.</p>', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 894, '2010-07-10 18:33:19', 0, '0000-00-00 00:00:00', 0, '*'),
(66, 95, 22, 19, 20, 5, 'sample-data-articles/joomla/extensions/modules/display-modules', 'com_content', 'Mostrar Módulos', 'display-modules', '', '<p>Estos módulos muestran información de otros componentes de contenido y usuario. Estos incluyen vínculos, fuentes de noticias y el gestor multimedia.</p>', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 894, '2010-07-10 18:34:49', 0, '0000-00-00 00:00:00', 0, '*'),
(67, 96, 22, 21, 22, 5, 'sample-data-articles/joomla/extensions/modules/utility-modules', 'com_content', 'Utilidad Módulos', 'utility-modules', '', '<p>La utilidad de módulos proporciona una buena funcionalidad, como la búsqueda, la sindicación y las estadísticas.</p>', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 894, '2010-07-10 18:36:18', 0, '0000-00-00 00:00:00', 0, '*'),
(68, 97, 23, 31, 32, 5, 'sample-data-articles/joomla/extensions/templates/atomic', 'com_content', 'Atomic', 'atomic', '', '<p>Atómic es una plantilla mínima diseñada para ser un esqueleto para realizar su propia plantilla y aprender sobre las plantillas de Joomla!.</p>\r\n<p style="margin-top: 8px; margin-right: 0px; margin-bottom: 8px; margin-left: 0px; line-height: 1.7em; padding: 0px;">[screen shot]</p>\r\n<p style="margin-top: 8px; margin-right: 0px; margin-bottom: 8px; margin-left: 0px; line-height: 1.7em; padding: 0px;">\r\n<ul>\r\n<li>Pagina de Inicio</li>\r\n<li>Tipografía</li>\r\n</ul>\r\n</p>', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 894, '2010-07-10 19:03:11', 42, '2010-07-11 16:14:38', 0, '*'),
(69, 98, 23, 27, 28, 5, 'sample-data-articles/joomla/extensions/templates/beez-20', 'com_content', 'Beez 20', 'beez-20', '', '<p><img src="templates/beez_20/template_thumbnail.png" border="0" alt="Beez_20 thumbnail" align="right" style="float: right; margin: 5px,80px,5px,25px;" /></p>\r\n<p>Beez 2.0 es una plantilla versátil y fácil de personalizar que trabaja para una variedad de sitios. Cumple con los estándares de accesibilidad y demuestra una serie de técnicas CSS y Javascript. Es la plantilla predeterminada que se instala con Joomla!</p>\r\n<ul>\r\n<li>Pagina de Inicio</li>\r\n<li>Tipografía</li>\r\n</ul>', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 894, '2010-07-10 19:06:19', 42, '2010-07-11 16:01:27', 0, '*'),
(70, 99, 23, 29, 30, 5, 'sample-data-articles/joomla/extensions/templates/beez5', 'com_content', 'Beez5', 'beez5', '', '<p><img src="templates/beez5/template_thumbnail.png" border="0" alt="Beez5 Thumbnail" align="right" style="float: right;" /></p>\r\n<p>Ã‚Â </p>\r\n<p>Beez 5 es una implementación de HTML5 en una plantilla de Joomla!. Utiliza una serie de técnicas HTML5 para mejorar la presentación de un sitio. Se utiliza como plantilla para el sitio de muestra de la tienda de frutas.</p>\r\n<ul>\r\n<li>Pagina de Inicio</li>\r\n<li>Tipografía</li>\r\n</ul>', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 894, '2010-07-10 19:10:16', 42, '2010-07-11 16:07:51', 0, '*'),
(72, 108, 28, 44, 45, 4, 'sample-data-articles/park-site/photo-gallery/animals', 'com_content', 'Animales', 'animals', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 894, '2010-07-10 20:04:21', 42, '2010-07-11 22:31:53', 0, 'en-GB'),
(73, 109, 28, 46, 47, 4, 'sample-data-articles/park-site/photo-gallery/scenery', 'com_content', 'Escenario', 'scenery', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 894, '2010-07-10 20:04:44', 42, '2010-07-11 22:32:00', 0, 'en-GB'),
(75, 166, 22, 23, 24, 5, 'sample-data-articles/joomla/extensions/modules/navigation-modules', 'com_content', 'Navigation Modules', 'navigation-modules', '', '<p>Navigation modules help your visitors move through your site and find what they need.</p>\r\n<p>Menus provide your site with structure and help your visitors navigate your site.  Although they are all based on the same menu module, the variety of ways menus are used in the sample data show how flexible this module is.</p>\r\n<p>A menu can range from extremely simple (for example the top menu or the menu for the Australian Parks sample site) to extremely complex (for example the About Joomla! menu with its many levels). They can also be used for other types of presentation such as the site map linked from the "This Site" menu.</p>\r\n<p>Breadcrumbs provide users with information about where they are in a site.</p>', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 894, '2011-01-01 00:00:01', 42, '2011-01-01 00:00:01', 0, '*'),
(76, 167, 29, 53, 54, 3, 'sample-data-articles/fruit-shop-site/recipes', 'com_content', 'Recetas', 'recetas', '', '<p>Los clientes pueden publicar aquí sus recetas favoritas de frutas.</p>\r\n<p>A good idea is to promote the use of metadata keywords to make finding other recipes for the same fruit easier.</p>\r\n<p><em>To see this in action, create a user assigned to the customer group and a user assigned to the suppliers group. These users will be able to create their own recipe pages and edit those pages. The will not be able to edit other users'' pages.</em><br /><br /></p>', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 894, '2011-01-01 00:00:01', 42, '2011-01-01 00:00:01', 0, '*'),
(77, 169, 1, 135, 136, 1, 'uncategorised', 'com_users.notes', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 894, '2011-01-01 00:00:01', 0, '2011-01-01 00:00:01', 0, '*'),
(78, 179, 9, 132, 133, 2, 'sin-categoria/esports', 'com_content', 'Esports', 'esports', '', '<p>Esports</p>', 1, 894, '2015-02-05 12:16:25', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 894, '2015-02-05 12:02:41', 894, '2015-02-05 12:04:34', 0, '*');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `onr_contact_details`
--

CREATE TABLE IF NOT EXISTS `onr_contact_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `con_position` varchar(255) DEFAULT NULL,
  `address` text,
  `suburb` varchar(100) DEFAULT NULL,
  `state` varchar(100) DEFAULT NULL,
  `country` varchar(100) DEFAULT NULL,
  `postcode` varchar(100) DEFAULT NULL,
  `telephone` varchar(255) DEFAULT NULL,
  `fax` varchar(255) DEFAULT NULL,
  `misc` mediumtext,
  `image` varchar(255) DEFAULT NULL,
  `imagepos` varchar(20) DEFAULT NULL,
  `email_to` varchar(255) DEFAULT NULL,
  `default_con` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `catid` int(11) NOT NULL DEFAULT '0',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `mobile` varchar(255) NOT NULL DEFAULT '',
  `webpage` varchar(255) NOT NULL DEFAULT '',
  `sortname1` varchar(255) NOT NULL,
  `sortname2` varchar(255) NOT NULL,
  `sortname3` varchar(255) NOT NULL,
  `language` char(7) NOT NULL,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `metadata` text NOT NULL,
  `featured` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Establecer si el artículo aparece.',
  `xreference` varchar(50) NOT NULL COMMENT 'Una referencia para los vínculos a datos externos conjuntos.',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`published`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`created_by`),
  KEY `idx_featured_catid` (`featured`,`catid`),
  KEY `idx_language` (`language`),
  KEY `idx_xreference` (`xreference`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=9 ;

--
-- Volcado de datos para la tabla `onr_contact_details`
--

INSERT INTO `onr_contact_details` (`id`, `name`, `alias`, `con_position`, `address`, `suburb`, `state`, `country`, `postcode`, `telephone`, `fax`, `misc`, `image`, `imagepos`, `email_to`, `default_con`, `published`, `checked_out`, `checked_out_time`, `ordering`, `params`, `user_id`, `catid`, `access`, `mobile`, `webpage`, `sortname1`, `sortname2`, `sortname3`, `language`, `created`, `created_by`, `created_by_alias`, `modified`, `modified_by`, `metakey`, `metadesc`, `metadata`, `featured`, `xreference`, `publish_up`, `publish_down`) VALUES
(1, 'Nombre de contacto aquí', 'name', 'Position', 'Street Address', 'Suburb', 'State', 'Country', 'Zip Code', 'Telephone', 'Fax', '<p>Information about or by the contact.</p>', 'images/powered_by.png', 'top', 'email@email.com', 1, 1, 0, '0000-00-00 00:00:00', 1, '{"show_contact_category":"","show_contact_list":"","presentation_style":"","show_name":"","show_position":"","show_email":"","show_street_address":"","show_suburb":"","show_state":"","show_postcode":"","show_country":"","show_telephone":"","show_mobile":"","show_fax":"","show_webpage":"","show_misc":"","show_image":"","allow_vcard":"","show_articles":"","show_profile":"","show_links":"","linka_name":"Twitter","linka":"http:\\/\\/twitter.com\\/joomla","linkb_name":"YouTube","linkb":"http:\\/\\/www.youtube.com\\/user\\/joomla","linkc_name":"Ustream","linkc":"http:\\/\\/www.ustream.tv\\/joomla","linkd_name":"FriendFeed","linkd":"http:\\/\\/friendfeed.com\\/joomla","linke_name":"Scribed","linke":"http:\\/\\/www.scribd.com\\/people\\/view\\/504592-joomla","show_email_form":"","show_email_copy":"","banned_email":"","banned_subject":"","banned_text":"","validate_session":"","custom_reply":"","redirect":""}', 0, 16, 1, '', '', 'last', 'first', 'middle', 'en-GB', '0000-00-00 00:00:00', 894, '', '2010-07-11 13:07:29', 42, '', '', '{"robots":"","rights":""}', 1, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 'Webmaster', 'webmaster', '', '', '', '', '', '', '', '', '', '', NULL, 'webmaster@example.com', 0, 1, 0, '0000-00-00 00:00:00', 1, '{"show_contact_category":"","show_contact_list":"","presentation_style":"","show_name":"","show_position":"","show_email":"","show_street_address":"","show_suburb":"","show_state":"","show_postcode":"","show_country":"","show_telephone":"","show_mobile":"","show_fax":"","show_webpage":"","show_misc":"","show_image":"","allow_vcard":"","show_articles":"","show_profile":"","show_links":"","linka_name":"","linka":"","linkb_name":"","linkb":"","linkc_name":"","linkc":"","linkd_name":"","linkd":"","linke_name":"","linke":"","show_email_form":"1","show_email_copy":"1","banned_email":"","banned_subject":"","banned_text":"","validate_session":"1","custom_reply":"","redirect":""}', 0, 34, 1, '', '', '', '', '', 'en-GB', '0000-00-00 00:00:00', 894, '', '2010-08-23 03:03:54', 42, '', '', '{"robots":"","rights":""}', 1, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 'Propietario', 'owner', '', '', '', '', '', '', '', '', '<p>Yo soy el dueño de esta tienda.</p>', '', NULL, '', 0, 1, 0, '0000-00-00 00:00:00', 2, '{"show_contact_category":"","show_contact_list":"","presentation_style":"","show_name":"","show_position":"","show_email":"","show_street_address":"","show_suburb":"","show_state":"","show_postcode":"","show_country":"","show_telephone":"","show_mobile":"","show_fax":"","show_webpage":"","show_misc":"","show_image":"","allow_vcard":"","show_articles":"","show_profile":"","show_links":"","linka_name":"","linka":"","linkb_name":"","linkb":"","linkc_name":"","linkc":"","linkd_name":"","linkd":"","linke_name":"","linke":"","show_email_form":"","show_email_copy":"","banned_email":"","banned_subject":"","banned_text":"","validate_session":"","custom_reply":"","redirect":""}', 0, 36, 1, '', '', '', '', '', '*', '0000-00-00 00:00:00', 894, '', '2010-07-11 13:07:22', 42, '', '', '{"robots":"","rights":""}', 1, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, 'Comprador', 'buyer', '', '', '', '', '', '', '', '', '<p>I am in charge of buying fruit. If you sell good fruit, contact me.</p>', '', NULL, '', 0, 1, 0, '0000-00-00 00:00:00', 1, '{"show_contact_category":"","show_contact_list":"","presentation_style":"","show_name":"","show_position":"","show_email":"","show_street_address":"","show_suburb":"","show_state":"","show_postcode":"","show_country":"","show_telephone":"","show_mobile":"","show_fax":"","show_webpage":"","show_misc":"","show_image":"","allow_vcard":"","show_articles":"","show_profile":"","show_links":"0","linka_name":"","linka":"","linkb_name":"","linkb":"","linkc_name":"","linkc":"","linkd_name":"","linkd":"","linke_name":"","linke":"","show_email_form":"","show_email_copy":"","banned_email":"","banned_subject":"","banned_text":"","validate_session":"","custom_reply":"","redirect":""}', 0, 36, 1, '', '', '', '', '', '*', '0000-00-00 00:00:00', 894, '', '2010-07-10 23:48:49', 42, '', '', '{"robots":"","rights":""}', 1, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(5, 'Plátanos', 'bananas', '', '', '', '', '', '', '', '', '<p>Bananas are a great source of potassium.</p><p>Ã‚Â </p>', 'images/sampledata/fruitshop/bananas_2.jpg', NULL, '', 0, 1, 0, '0000-00-00 00:00:00', 1, '{"show_contact_category":"","show_contact_list":"","presentation_style":"plain","show_name":"","show_position":"","show_email":"","show_street_address":"","show_suburb":"","show_state":"","show_postcode":"","show_country":"","show_telephone":"","show_mobile":"","show_fax":"","show_webpage":"","show_misc":"","show_image":"","allow_vcard":"","show_articles":"","show_profile":"","show_links":"0","linka_name":"","linka":"","linkb_name":"","linkb":"","linkc_name":"","linkc":"","linkd_name":"","linkd":"","linke_name":"","linke":"","show_email_form":"","show_email_copy":"","banned_email":"","banned_subject":"","banned_text":"","validate_session":"","custom_reply":"","redirect":""}', 0, 39, 1, '', 'http://en.wikipedia.org/wiki/Banana', '', '', '', '*', '0000-00-00 00:00:00', 894, '', '2010-07-10 23:49:11', 42, '', '', '{"robots":"","rights":""}', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(6, 'Manzanas', 'apples', '', '', '', '', '', '', '', '', '<p>Applies are a versatile fruit, used for eating, cooking, and preserving.</p><p>There are more that 7500 different kinds of apples grown around the world.</p>', 'images/sampledata/fruitshop/apple.jpg', NULL, '', 0, 1, 0, '0000-00-00 00:00:00', 1, '{"show_contact_category":"","show_contact_list":"","presentation_style":"plain","show_name":"","show_position":"","show_email":"","show_street_address":"","show_suburb":"","show_state":"","show_postcode":"","show_country":"","show_telephone":"","show_mobile":"","show_fax":"","show_webpage":"","show_misc":"","show_image":"","allow_vcard":"","show_articles":"","show_profile":"","show_links":"0","linka_name":"","linka":"","linkb_name":"","linkb":"","linkc_name":"","linkc":"","linkd_name":"","linkd":"","linke_name":"","linke":"","show_email_form":"","show_email_copy":"","banned_email":"","banned_subject":"","banned_text":"","validate_session":"","custom_reply":"","redirect":""}', 0, 38, 1, '', 'http://en.wikipedia.org/wiki/Apple', '', '', '', '*', '0000-00-00 00:00:00', 894, '', '2010-07-10 23:49:11', 42, '', '', '{"robots":"","rights":""}', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(7, 'Tamarindos', 'tamarind', '', '', '', '', '', '', '', '', '<p>Tamarinds are a versatile fruit used around the world. In its young form it is used in hot sauces; ripened it is the basis for many freshing drinks.</p><p>Ã‚Â </p>', 'images/sampledata/fruitshop/tamarind.jpg', NULL, '', 0, 1, 0, '0000-00-00 00:00:00', 1, '{"show_contact_category":"","show_contact_list":"","presentation_style":"plain","show_name":"","show_position":"","show_email":"","show_street_address":"","show_suburb":"","show_state":"","show_postcode":"","show_country":"","show_telephone":"","show_mobile":"","show_fax":"","show_webpage":"","show_misc":"","show_image":"","allow_vcard":"","show_articles":"","show_profile":"","show_links":"","linka_name":"","linka":"","linkb_name":"","linkb":"","linkc_name":"","linkc":"","linkd_name":"","linkd":"","linke_name":"","linke":"","show_email_form":"","show_email_copy":"","banned_email":"","banned_subject":"","banned_text":"","validate_session":"","custom_reply":"","redirect":""}', 0, 57, 1, '', 'http://en.wikipedia.org/wiki/Tamarind', '', '', '', '*', '0000-00-00 00:00:00', 894, '', '2010-07-10 23:49:11', 42, '', '', '{"robots":"","rights":""}', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(8, 'Dirección Tienda', 'shop-address', '', '', 'Our City', 'Our Province', 'Our Country', '', '555-555-5555', '', '<p>Aquí están las direcciones de cómo llegar a nuestra tienda.</p>', '', NULL, '', 0, 1, 0, '0000-00-00 00:00:00', 1, '{"show_contact_category":"","show_contact_list":"","presentation_style":"","show_name":"","show_position":"","show_email":"","show_street_address":"","show_suburb":"","show_state":"","show_postcode":"","show_country":"","show_telephone":"","show_mobile":"","show_fax":"","show_webpage":"","show_misc":"","show_image":"","allow_vcard":"","show_articles":"","show_profile":"","show_links":"","linka_name":"","linka":"","linkb_name":"","linkb":"","linkc_name":"","linkc":"","linkd_name":"","linkd":"","linke_name":"","linke":"","show_email_form":"","show_email_copy":"","banned_email":"","banned_subject":"","banned_text":"","validate_session":"","custom_reply":"","redirect":""}', 0, 35, 1, '', '', '', '', '', '*', '0000-00-00 00:00:00', 894, '', '2010-08-23 03:03:54', 42, '', '', '{"robots":"","rights":""}', 1, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `onr_content`
--

CREATE TABLE IF NOT EXISTS `onr_content` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `asset_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK a la tabla de #__assets.',
  `title` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `title_alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '' COMMENT 'Deprecated in Joomla! 3.0',
  `introtext` mediumtext NOT NULL,
  `fulltext` mediumtext NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `sectionid` int(10) unsigned NOT NULL DEFAULT '0',
  `mask` int(10) unsigned NOT NULL DEFAULT '0',
  `catid` int(10) unsigned NOT NULL DEFAULT '0',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `images` text NOT NULL,
  `urls` text NOT NULL,
  `attribs` varchar(5120) NOT NULL,
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  `parentid` int(10) unsigned NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `metadata` text NOT NULL,
  `featured` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Establecer si el artículo aparece.',
  `language` char(7) NOT NULL COMMENT 'El código de idioma para el artículo.',
  `xreference` varchar(50) NOT NULL COMMENT 'Una referencia para los vínculos a datos externos conjuntos.',
  PRIMARY KEY (`id`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`state`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`created_by`),
  KEY `idx_featured_catid` (`featured`,`catid`),
  KEY `idx_language` (`language`),
  KEY `idx_xreference` (`xreference`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=90 ;

--
-- Volcado de datos para la tabla `onr_content`
--

INSERT INTO `onr_content` (`id`, `asset_id`, `title`, `alias`, `title_alias`, `introtext`, `fulltext`, `state`, `sectionid`, `mask`, `catid`, `created`, `created_by`, `created_by_alias`, `modified`, `modified_by`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `images`, `urls`, `attribs`, `version`, `parentid`, `ordering`, `metakey`, `metadesc`, `access`, `hits`, `metadata`, `featured`, `language`, `xreference`) VALUES
(1, 89, 'Administrador de componentes', 'administrator-components', '', '<p>Todos los componentes se utilizan también en el área del administrador de su sitio web. In addition to the ones listed here, there are components in the administrator that do not have direct front end displays, but do help shape your site. The most important ones for most users are</p>\r\n<ul>\r\n<li>Media Manager</li>\r\n<li>Extensions Manager</li>\r\n<li>Menu Manager</li>\r\n<li>Global Configuration</li>\r\n<li>Banners</li>\r\n<li>Redirect</li>\r\n</ul>\r\n<hr title="Media Manager" alt="Media Manager" class="system-pagebreak" style="color: gray; border: 1px dashed gray;" />\r\n<p> </p>\r\n<h3>Media Manager</h3>\r\n<p>The media manager component lets you upload and insert images into content throughout your site. Optionally, you can enable the flash uploader which will allow you to to upload multiple images. <a href="http://help.joomla.org/proxy/index.php?option=com_help&amp;keyref=Help16:Content_Media_Manager">Help</a></p>\r\n<hr title="Extensions Manager" alt="Extensions Manager" class="system-pagebreak" style="color: gray; border: 1px dashed gray;" />\r\n<h3>Extensions Manager</h3>\r\n<p>The extensions manager lets you install, update, uninstall and manage all of your extensions. The extensions manager has been extensively redesigned, although the core install and uninstall functionality remains the same as in Joomla! 1.5. <a href="http://help.joomla.org/proxy/index.php?option=com_help&amp;keyref=Help16:Extensions_Extension_Manager_Install">Help</a></p>\r\n<hr title="Menu Manager" alt="Menu Manager" class="system-pagebreak" style="color: gray; border: 1px dashed gray;" />\r\n<h3>Menu Manager</h3>\r\n<p>The menu manager lets you create the menus you see displayed on your site. It also allows you to assign modules and template styles to specific menu links. <a href="http://help.joomla.org/proxy/index.php?option=com_help&amp;keyref=Help16:Menus_Menu_Manager">Help</a></p>\r\n<hr title="Global Configuration" alt="Global Configuration" class="system-pagebreak" style="color: gray; border: 1px dashed gray;" />\r\n<h3>Global Configuration</h3>\r\n<p>The global configuration is where the site administrator configures things such as whether search engine friendly urls are enabled, the site meta data (descriptive text used by search engines and indexers) and other functions. For many beginning users simply leaving the settings on default is a good way to begin, although when your site is ready for the public you will want to change the meta data to match its content. <a href="http://help.joomla.org/proxy/index.php?option=com_help&amp;keyref=Help16:Site_Global_Configuration">Help</a></p>\r\n<hr title="Banners" alt="Banners" class="system-pagebreak" style="color: gray; border: 1px dashed gray;" />\r\n<h3>Banners</h3>\r\n<p>The banners component provides a simple way to display a rotating image in a module and, if you wish to have advertising, a way to track the number of times an image is viewed and clicked. <a href="http://help.joomla.org/proxy/index.php?option=com_help&amp;keyref=Help16:Components_Banners_Banners_Edit">Help</a></p>\r\n<hr title="Redirect" class="system-pagebreak" />\r\n<h3><br />Redirect</h3>\r\n<p>The redirect component is used to manage broken links that produce Page Not Found (404) errors. If enabled it will allow you to redirect broken links to specific pages. It can also be used to manage migration related URL changes. <a href="http://help.joomla.org/proxy/index.php?option=com_help&amp;keyref=Help16:Components_Redirect_Manager">Help</a></p>', '', 1, 0, 0, 21, '2011-01-01 00:00:01', 894, 'Joomla!', '2011-12-27 11:03:19', 42, 0, '0000-00-00 00:00:00', '2011-01-01 00:00:01', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":"","urlatext":"","targeta":"","urlb":"","urlbtext":"","targetb":"","urlc":"","urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 9, 0, 7, '', '', 1, 2, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(2, 90, 'Modulo Archivo', 'modulo-archivo', '', '<p>This module shows a list of the calendar months containing archived articles. After you have changed the status of an article to archived, this list will be automatically generated.Ã‚Â <a href="http://docs.joomla.org/Screen.modulessite.edit.15#Archived_Content" title="Archive Module">Help</a></p>\r\n<p>{loadposition archiveload}</p>', '', 1, 0, 0, 64, '2010-07-10 18:05:32', 894, 'Joomla!', '2010-09-14 11:22:24', 42, 0, '0000-00-00 00:00:00', '2010-07-10 18:37:13', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","page_title":"","alternative_readmore":"","layout":""}', 7, 0, 5, 'modules, content', '', 1, 3, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(3, 91, 'Modulo Categorias Articulo', 'modulo-categorias-articulo', '', '<p>This module displays a list of categories from one parent category.Ã‚Â <a href="http://docs.joomla.org/Help15:Screen.modulessite.edit.15#Categories" title="Categories Module">Help</a></p>\r\n<p>{loadposition articlescategoriesload}</p>\r\n<p>Ã‚Â </p>', '', 1, 0, 0, 64, '2010-07-10 18:12:46', 894, '', '2010-09-14 11:22:06', 42, 0, '0000-00-00 00:00:00', '2010-07-10 18:14:22', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","page_title":"","alternative_readmore":"","layout":""}', 7, 0, 6, 'modules, content', '', 1, 2, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(4, 92, 'Modulo Categorias Articulos', 'modulo-categorias-articulos', '', '<p>This module allows you to display the articles in a specific category. Help.</p>\r\n<p>{loadposition articlescategoryload}</p>', '', 1, 0, 0, 64, '2010-07-10 18:14:09', 894, 'Joomla!', '2010-09-14 11:20:05', 42, 0, '0000-00-00 00:00:00', '2010-07-10 18:14:09', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","page_title":"","alternative_readmore":"","layout":""}', 6, 0, 7, '', 'articles,content', 1, 5, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(5, 101, 'Autenticacion', 'autenticacion', '', '<p>The authentication plugins operate when users login to your site or administrator. The Joomla! authentication is in operation by default but you can enable Gmail or LDAP or install a plugin for a different system. An example is included that may be used to create a new authentication plugin.</p><p>Default on:</p><ul><li>Joomla</li></ul><p>Default off:</p><ul><li>Gmail</li><li>LDAP</li></ul>', '', 1, 0, 0, 25, '2010-07-10 19:19:17', 894, 'Joomla!', '2010-07-10 19:51:19', 42, 0, '0000-00-00 00:00:00', '2010-07-10 19:39:58', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_readmore":"","show_print_icon":"","show_email_icon":"","show_hits":"","page_title":"","alternative_readmore":"","layout":""}', 4, 0, 3, '', '', 1, 2, '', 0, '*', ''),
(6, 102, 'Parques Australianos ', 'parques-australianos', '', '<p><img src="images/sampledata/parks/banner_cradle.jpg" border="0" alt="Anuncio Cuna del Parque" /></p><p>&iexcl;Bienvenido!</p><p>Este es un sitio básico sobre los parques fascinantes y hermosos de Australia..</p><p>On this site you can read all about my travels to different parks, see photos, and find links to park websites.</p><p><em>Este sitio de muestra es un ejemplo del uso del núcleo de Joomla! para crear un sitio web básico, ya sea un "sitio sencillo," Un blog personal, o como una forma de presentar información sobre un tema en el que estás interesado.</em></p><p><em> Lee más sobre el sitio en el módulo Sobre los Parques.</em></p><p></p>', '', 1, 0, 0, 26, '2010-07-10 19:24:58', 894, 'Parks webmaster', '2010-07-10 19:51:09', 42, 0, '0000-00-00 00:00:00', '2010-07-10 19:39:52', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_readmore":"","show_print_icon":"","show_email_icon":"","show_hits":"","page_title":"","alternative_readmore":"","layout":""}', 4, 0, 1, '', '', 1, 7, '', 0, '*', ''),
(7, 103, 'Modulo Anuncios', 'modulo-anuncios', '', '<p>The banner module is used to display the banners that are managed by the banners component in the site administrator.</p><p>{loadposition bannersload}</p>', '', 1, 0, 0, 66, '2010-07-10 19:47:47', 894, 'Joomla!', '2010-08-23 03:00:39', 42, 0, '0000-00-00 00:00:00', '2010-07-10 19:47:47', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_readmore":"","show_print_icon":"","show_email_icon":"","show_hits":"","page_title":"","alternative_readmore":"","layout":""}', 3, 0, 6, '', '', 1, 4, '', 0, '*', ''),
(8, 104, 'Principiantes', 'principiantes', '', '<p>Si este es su primer sitio Joomla! o su primer sitio web, usted ha venido al lugar correcto. Joomla! le ayudará a obtener su sitio web en funcionamiento de forma rápida y sencilla.</p><p>Comience con su sitio por el acceso utilizando la cuenta de administrador que ha creado al instalar Joomla!.</p>', '<p>Explore los artículos y otros recursos primero aquí en los datos de su sitio para aprender más acerca de cómo funciona Joomla!. (Cuando haya terminado de leer, puede eliminar o archivar todo esto.) El posible que desee visitar las áreas para principiantes de la <a href="http://docs.joomla.org">Documentación de Joomla</a> y <a href="http://forum.joomla.org">Foros de Soporte.</a>.</p><p>Usted también puede inscribirse en la lista de correos de seguridad de Joomla! y la lista de correos de anuncios. Para su inspiración visite el sitio Joomla Showcase para ver una increíble variedad de formas en la que se uso Joomla! para contar sus historias en la web.</p><p>El paquete de instalación básico de Joomla! le permitirá obtener un gran sitio en funcionamiento, pero cuando esté listo para más características el poder de Joomla! está en las formas creativas en que los desarrolladores lo han extendido para hacer todo tipo de cosas. Visite el Directorio de Extensiones de Joomla! de para ver miles de extensiones que puede hacer casi cualquier cosa que pueda desear en un sitio web. &iquest;No puede encontrar lo que necesita? Es posible que desee encontrar un profesional de Joomla! en el Directorio de Recursos de Joomla!.</p><p>&iquest;Quieres saber más? Considere asistir a un Joomla! Day u otro evento o participar en un Grupo de Usuarios de Joomla! local. &iquest;No puede encontrar uno cerca de usted? Ponlo en marcha tú mismo.</p>', 1, 0, 0, 19, '2010-07-10 19:50:02', 894, 'Joomla!', '2010-08-23 03:02:28', 42, 0, '0000-00-00 00:00:00', '2010-07-10 19:50:53', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_readmore":"","show_print_icon":"","show_email_icon":"","show_hits":"","page_title":"","alternative_readmore":"","layout":""}', 3, 0, 3, '', '', 1, 0, '', 1, '*', ''),
(9, 105, 'Contacto', 'contacto', '', '<p>El componente del contacto proporciona una forma de presentar los formularios de contacto e información para su sitio o crear un directorio complejo que puede ser usado para muchos propósitos diferentes. Ayuda</p>', '', 1, 0, 0, 21, '2010-07-10 19:54:09', 894, 'Joomla!', '2010-09-14 11:42:23', 42, 0, '0000-00-00 00:00:00', '2010-07-10 23:13:05', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_readmore":"","show_print_icon":"","show_email_icon":"","show_hits":"","page_title":"","alternative_readmore":"","layout":""}', 4, 0, 2, '', '', 1, 5, '', 0, '*', ''),
(10, 106, 'Contenido', 'contenido', '', '<p>El componente de contenido (com_content) se utiliza para escribir artículos. Es muy flexible y tiene el mayor número de puntos de vista construidos en el. Los artículos se pueden crear y editar desde la parte delantera, por lo que usar este componente para crear contenido de su sitio es más fácil. Ayuda</p>', '', 1, 0, 0, 21, '2010-07-10 19:56:38', 894, '', '2010-07-10 23:13:20', 42, 0, '0000-00-00 00:00:00', '2010-07-10 23:13:20', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_readmore":"","show_print_icon":"","show_email_icon":"","show_hits":"","page_title":"","alternative_readmore":"","layout":""}', 4, 0, 1, '', '', 1, 14, '', 0, '*', ''),
(11, 107, 'Cradle Mountain', 'cradle-mountain', '', '<p><img src="images/sampledata/parks/landscape/250px_cradle_mountain_seen_from_barn_bluff.jpg" border="0" alt="Cradle Mountain" style="vertical-align: middle;" /></p>', '<p><img src="images/sampledata/parks/landscape/800px_cradle_mountain_seen_from_barn_bluff.jpg" border="0" alt="Cradle Mountain" style="vertical-align: middle;" /></p><p>Ã‚Â </p><p class="caption">Source: http://commons.wikimedia.org/wiki/File:Rainforest,bluemountainsNSW.jpg</p><p class="caption">Author: Alan J.W.C.</p><p class="caption">License: GNU Free Documentation License v . 1.2 or later</p>', 1, 0, 0, 73, '2010-07-10 20:01:42', 894, 'Parks Webmaster', '2010-08-23 02:58:49', 42, 0, '0000-00-00 00:00:00', '2010-07-10 20:06:01', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_readmore":"","show_print_icon":"","show_email_icon":"","show_hits":"","page_title":"","alternative_readmore":"","layout":""}', 4, 0, 1, '', '', 1, 0, '', 0, '*', ''),
(12, 110, 'Modulo HTML personalizado', 'modulo-html-personalizado', '', '<p>Este módulo le permite crear su propio módulo HTML mediante un editor WYSIWYG<a href="http://docs.joomla.org/Help15:Screen.modulessite.edit.15#Custom_HTML" title="Módulo HTML personalizado">Ayuda</a></p><p>{loadposition customload}</p>', '', 1, 0, 0, 66, '2010-07-10 20:07:23', 894, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2010-07-10 20:07:23', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_readmore":"","show_print_icon":"","show_email_icon":"","show_hits":"","page_title":"","alternative_readmore":"","layout":""}', 2, 0, 1, '', '', 1, 5, '', 0, '*', ''),
(13, 111, 'Direcciones', 'direcciones', '', '<p>Así es como se encuentra nuestra tienda.</p><p>En coche</p><p>Conducir por la calle principal hasta la intersección con la primera Avenida, hasta ver nuestro símbolo.</p><p>A pie</p><p>Desde el centro de la ciudad, camine hacia el norte de la calle principal hasta que vea nuestro símbolo.</p><p>En autobús</p><p>Tome el autobús número 73 hasta la última parada. Estamos en la esquina noreste.</p>', '', 1, 0, 0, 29, '2010-07-10 20:12:32', 894, 'Fruit Shop Webmaster', '2010-08-23 03:02:28', 42, 0, '0000-00-00 00:00:00', '2010-07-10 20:12:32', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_readmore":"","show_print_icon":"","show_email_icon":"","show_hits":"","page_title":"","alternative_readmore":"","layout":""}', 3, 0, 2, '', '', 1, 3, '', 0, '*', ''),
(14, 112, 'Editores', 'editores', '', '<p>Editors are used thoughout Joomla! where content is created. TinyMCE is the default choice in most locations although CodeMirror is used in the template manager. No Editor provides a text box for html content.</p><p>Default on:</p><ul><li>CodeMirror Help</li><li>TinyMCE Help</li><li>No Editor Help</li></ul><p>Default off:</p><ul><li>None</li></ul>', '', 1, 0, 0, 25, '2010-07-10 20:26:06', 894, 'Joomla!', '2010-08-23 02:58:49', 42, 0, '0000-00-00 00:00:00', '2010-07-10 20:26:06', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_readmore":"","show_print_icon":"","show_email_icon":"","show_hits":"","page_title":"","alternative_readmore":"","layout":""}', 4, 0, 5, '', '', 1, 3, '', 0, '*', ''),
(15, 113, 'Editores-xtd', 'editores-xtd', '', '<p>These plugins are behind the buttons found beneath your editor. They only run when an editor plugin runs.</p><p>Default on:</p><ul><li>Editor Button: Image</li><li>Editor Button: Readmore</li><li>Editor Button: Page Break</li><li>Editor Button: Article</li></ul><p>Default off:</p><ul><li>None</li></ul>', '', 1, 0, 0, 25, '2010-07-10 20:27:20', 894, 'Joomla!', '2010-08-23 02:58:49', 42, 0, '0000-00-00 00:00:00', '2010-07-10 20:27:20', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_readmore":"","show_print_icon":"","show_email_icon":"","show_hits":"","page_title":"","alternative_readmore":"","layout":""}', 2, 0, 6, '', '', 1, 2, '', 0, '*', ''),
(16, 114, 'Mostrar Enlaces Externos', 'feed-display', '', '<p>This module allows the displaying of a syndicated feed. <a href="http://docs.joomla.org/Help15:Screen.modulessite.edit.15#Feed_Display" title="Feed Display Module">Help</a></p><p>{loadposition feeddisplayload}</p>', '', 1, 0, 0, 66, '2010-07-10 20:29:29', 894, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_readmore":"","show_print_icon":"","show_email_icon":"","show_hits":"","page_title":"","alternative_readmore":"","layout":""}', 2, 0, 2, '', '', 1, 5, '', 0, '*', ''),
(17, 115, 'Primer Post Blog', 'first-blog-post', '', '<p><em>Lorem Ipsum is filler text that is commonly used by designers before the content for a new site is ready.</em></p><p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed faucibus purus vitae diam posuere nec eleifend elit dictum. Aenean sit amet erat purus, id fermentum lorem. Integer elementum tristique lectus, non posuere quam pretium sed. Quisque scelerisque erat at urna condimentum euismod. Fusce vestibulum facilisis est, a accumsan massa aliquam in. In auctor interdum mauris a luctus. Morbi euismod tempor dapibus. Duis dapibus posuere quam. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. In eu est nec erat sollicitudin hendrerit. Pellentesque sed turpis nunc, sit amet laoreet velit. Praesent vulputate semper nulla nec varius. Aenean aliquam, justo at blandit sodales, mauris leo viverra orci, sed sodales mauris orci vitae magna.</p>', '<p>Quisque a massa sed libero tristique suscipit. Morbi tristique molestie metus, vel vehicula nisl ultrices pretium. Sed sit amet est et sapien condimentum viverra. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Phasellus viverra tortor porta orci convallis ac cursus erat sagittis. Vivamus aliquam, purus non luctus adipiscing, orci urna imperdiet eros, sed tincidunt neque sapien et leo. Cras fermentum, dolor id tempor vestibulum, neque lectus luctus mauris, nec congue tellus arcu nec augue. Nulla quis mi arcu, in bibendum quam. Sed placerat laoreet fermentum. In varius lobortis consequat. Proin vulputate felis ac arcu lacinia adipiscing. Morbi molestie, massa id sagittis luctus, sem sapien sollicitudin quam, in vehicula quam lectus quis augue. Integer orci lectus, bibendum in fringilla sit amet, rutrum eget enim. Curabitur at libero vitae lectus gravida luctus. Nam mattis, ligula sit amet vestibulum feugiat, eros sem sodales mi, nec dignissim ante elit quis nisi. Nulla nec magna ut leo convallis sagittis ac non erat. Etiam in augue nulla, sed tristique orci. Vestibulum quis eleifend sapien.</p><p>Nam ut orci vel felis feugiat posuere ut eu lorem. In risus tellus, sodales eu eleifend sed, imperdiet id nulla. Nunc at enim lacus. Etiam dignissim, arcu quis accumsan varius, dui dui faucibus erat, in molestie mauris diam ac lacus. Sed sit amet egestas nunc. Nam sollicitudin lacinia sapien, non gravida eros convallis vitae. Integer vehicula dui a elit placerat venenatis. Nullam tincidunt ligula aliquet dui interdum feugiat. Maecenas ultricies, lacus quis facilisis vehicula, lectus diam consequat nunc, euismod eleifend metus felis eu mauris. Aliquam dapibus, ipsum a dapibus commodo, dolor arcu accumsan neque, et tempor metus arcu ut massa. Curabitur non risus vitae nisl ornare pellentesque. Pellentesque nec ipsum eu dolor sodales aliquet. Vestibulum egestas scelerisque tincidunt. Integer adipiscing ultrices erat vel rhoncus.</p><p>Integer ac lectus ligula. Nam ornare nisl id magna tincidunt ultrices. Phasellus est nisi, condimentum at sollicitudin vel, consequat eu ipsum. In venenatis ipsum in ligula tincidunt bibendum id et leo. Vivamus quis purus massa. Ut enim magna, pharetra ut condimentum malesuada, auctor ut ligula. Proin mollis, urna a aliquam rutrum, risus erat cursus odio, a convallis enim lectus ut lorem. Nullam semper egestas quam non mattis. Vestibulum venenatis aliquet arcu, consectetur pretium erat pulvinar vel. Vestibulum in aliquet arcu. Ut dolor sem, pellentesque sit amet vestibulum nec, tristique in orci. Sed lacinia metus vel purus pretium sit amet commodo neque condimentum.</p><p>Aenean laoreet aliquet ullamcorper. Nunc tincidunt luctus tellus, eu lobortis sapien tincidunt sed. Donec luctus accumsan sem, at porttitor arcu vestibulum in. Sed suscipit malesuada arcu, ac porttitor orci volutpat in. Vestibulum consectetur vulputate eros ut porttitor. Aenean dictum urna quis erat rutrum nec malesuada tellus elementum. Quisque faucibus, turpis nec consectetur vulputate, mi enim semper mi, nec porttitor libero magna ut lacus. Quisque sodales, leo ut fermentum ullamcorper, tellus augue gravida magna, eget ultricies felis dolor vitae justo. Vestibulum blandit placerat neque, imperdiet ornare ipsum malesuada sed. Quisque bibendum quam porta diam molestie luctus. Sed metus lectus, ornare eu vulputate vel, eleifend facilisis augue. Maecenas eget urna velit, ac volutpat velit. Nam id bibendum ligula. Donec pellentesque, velit eu convallis sodales, nisi dui egestas nunc, et scelerisque lectus quam ut ipsum.</p>', 1, 0, 0, 27, '2010-07-10 20:31:31', 894, '', '2010-07-10 20:34:02', 42, 0, '0000-00-00 00:00:00', '2010-07-10 20:33:58', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_readmore":"","show_print_icon":"","show_email_icon":"","show_hits":"","page_title":"","alternative_readmore":"","layout":""}', 4, 0, 0, '', '', 1, 5, '', 0, '*', ''),
(18, 116, 'Segundo Post Blog', 'second-blog-post', '', '<p><em>Lorem Ipsum is text that is traditionally used by designers when working on a site before the content is ready.</em></p><p>Pellentesque bibendum metus ut dolor fermentum ut pulvinar tortor hendrerit. Nam vel odio vel diam tempus iaculis in non urna. Curabitur scelerisque, nunc id interdum vestibulum, felis elit luctus dui, ac dapibus tellus mauris tempus augue. Duis congue facilisis lobortis. Phasellus neque erat, tincidunt non lacinia sit amet, rutrum vitae nunc. Sed placerat lacinia fermentum. Integer justo sem, cursus id tristique eget, accumsan vel sapien. Curabitur ipsum neque, elementum vel vestibulum ut, lobortis a nisl. Fusce malesuada mollis purus consectetur auctor. Morbi tellus nunc, dapibus sit amet rutrum vel, laoreet quis mauris. Aenean nec sem nec purus bibendum venenatis. Mauris auctor commodo libero, in adipiscing dui adipiscing eu. Praesent eget orci ac nunc sodales varius.</p>', '<p>Nam eget venenatis lorem. Vestibulum a interdum sapien. Suspendisse potenti. Quisque auctor purus nec sapien venenatis vehicula malesuada velit vehicula. Fusce vel diam dolor, quis facilisis tortor. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Pellentesque libero nisi, pellentesque quis cursus sit amet, vehicula vitae nisl. Curabitur nec nunc ac sem tincidunt auctor. Phasellus in mattis magna. Donec consequat orci eget tortor ultricies rutrum. Mauris luctus vulputate molestie. Proin tincidunt vehicula euismod. Nam congue leo non erat cursus a adipiscing ipsum congue. Nulla iaculis purus sit amet turpis aliquam sit amet dapibus odio tincidunt. Ut augue diam, congue ut commodo pellentesque, fermentum mattis leo. Sed iaculis urna id enim dignissim sodales at a ipsum. Quisque varius lobortis mollis. Nunc purus magna, pellentesque pellentesque convallis sed, varius id ipsum. Etiam commodo mi mollis erat scelerisque fringilla. Nullam bibendum massa sagittis diam ornare rutrum.</p><p>Praesent convallis metus ut elit faucibus tempus in quis dui. Donec fringilla imperdiet nibh, sit amet fringilla velit congue et. Quisque commodo luctus ligula, vitae porttitor eros venenatis in. Praesent aliquet commodo orci id varius. Nulla nulla nibh, varius id volutpat nec, sagittis nec eros. Cras et dui justo. Curabitur malesuada facilisis neque, sed tempus massa tincidunt ut. Sed suscipit odio in lacus auctor vehicula non ut lacus. In hac habitasse platea dictumst. Sed nulla nisi, lacinia in viverra at, blandit vel tellus. Nulla metus erat, ultrices non pretium vel, varius nec sem. Morbi sollicitudin mattis lacus quis pharetra. Donec tincidunt mollis pretium. Proin non libero justo, vitae mattis diam. Integer vel elit in enim varius posuere sed vitae magna. Duis blandit tempor elementum. Vestibulum molestie dui nisi.</p><p>Curabitur volutpat interdum lorem sed tempus. Sed placerat quam non ligula lacinia sodales. Cras ultrices justo at nisi luctus hendrerit. Quisque sit amet placerat justo. In id sapien eu neque varius pharetra sed in sapien. Etiam nisl nunc, suscipit sed gravida sed, scelerisque ut nisl. Mauris quis massa nisl, aliquet posuere ligula. Etiam eget tortor mauris. Sed pellentesque vestibulum commodo. Mauris vitae est a libero dapibus dictum fringilla vitae magna.</p><p>Nulla facilisi. Praesent eget elit et mauris gravida lobortis ac nec risus. Ut vulputate ullamcorper est, volutpat feugiat lacus convallis non. Maecenas quis sem odio, et aliquam libero. Integer vel tortor eget orci tincidunt pulvinar interdum at erat. Integer ullamcorper consequat eros a pellentesque. Cras sagittis interdum enim in malesuada. Etiam non nunc neque. Fusce non ligula at tellus porta venenatis. Praesent tortor orci, fermentum sed tincidunt vel, varius vel dui. Duis pulvinar luctus odio, eget porta justo vulputate ac. Nulla varius feugiat lorem sed tempor. Phasellus pulvinar dapibus magna eget egestas. In malesuada lectus at justo pellentesque vitae rhoncus nulla ultrices. Proin ut sem sem. Donec eu suscipit ipsum. Cras eu arcu porttitor massa feugiat aliquet at quis nisl.</p>', 1, 0, 0, 27, '2010-07-10 20:33:28', 894, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2010-07-10 20:33:28', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_readmore":"","show_print_icon":"","show_email_icon":"","show_hits":"","page_title":"","alternative_readmore":"","layout":""}', 2, 0, 0, '', '', 1, 0, '', 0, '*', ''),
(19, 117, 'Modulo Pie de Pagina', 'modulo-pie-de-pagina', '', '<p>This module shows the Joomla! copyright information. <a href="http://docs.joomla.org/Help15:Screen.modulessite.edit.15#Footer" title="Footer Module">Help</a></p><p>{loadposition footerload}</p>', '', 1, 0, 0, 66, '2010-07-10 20:53:39', 894, 'Joomla!', '2010-07-10 20:56:22', 42, 0, '0000-00-00 00:00:00', '2010-07-10 20:56:22', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_readmore":"","show_print_icon":"","show_email_icon":"","show_hits":"","page_title":"","alternative_readmore":"","layout":""}', 3, 0, 3, '', '', 1, 2, '', 0, '*', ''),
(20, 118, 'Tienda de Frutas', 'tienda-de-frutas', '', '<h2>Bienvenido a la Tienda de Fruta</h2><p>Vendemos frutas de todo el mundo. Por favor, use nuestro sitio web para aprender más acerca de nuestro negocio. Esperamos que usted venga a nuestra tienda y compre algo de fruta.</p><p ><em>Este mini sitio le mostrará cómo es posible crear un sitio para un negocio, en este caso para la venta de frutas. Muestra cómo utilizar los controles de acceso para administrar el contenido del sitio. Si estás construyendo un sitio real, puede ser que desee para ampliarlo con comercio electrónico, un catálogo, listas de correo u otras mejoras, muchas de las cuales están disponibles a través del </em><a href="http://extensions.joomla.org"><em>Directorio de Extensiones de Joomla!.</em></a>.</p><p><em>Para entender este sitio es probable que desee crear un usuario con los grupos establecidos para los clientes y crear un grupo para los cultivadores. Al iniciar la sesión con privilegios diferentes usted puede ver cómo funciona el control de acceso.</em></p>', '', 1, 0, 0, 29, '2010-07-10 20:54:54', 894, 'Fruit Shop Webmaster', '2010-08-23 03:02:28', 42, 0, '0000-00-00 00:00:00', '2010-07-10 20:56:32', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_readmore":"","show_print_icon":"","show_email_icon":"","show_hits":"","page_title":"","alternative_readmore":"","layout":""}', 3, 0, 1, '', '', 1, 4, '', 0, '*', ''),
(21, 119, 'Obtener Ayuda', 'obtener-ayuda', '', '<p>There are lots of places you can get help with Joomla!.</p><p>In many places you will see the help icon [image]. Click on this for more information about the options and functions of items on your screen.</p><ul><li><a href="http://forum.joomla.org">Support Forums</a></li><li><a href="http://docs.joomla.org">Documentation</a></li><li><a href="http://resources.joomla.org">Professionals</a></li><li><a href="http://shop.joomla.org/amazoncom-bookstores.html">Books</a></li></ul>', '', 1, 0, 0, 19, '2010-07-10 20:55:56', 894, 'Joomla!', '2010-08-23 03:02:28', 42, 0, '0000-00-00 00:00:00', '2010-07-10 20:55:56', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_readmore":"","show_print_icon":"","show_email_icon":"","show_hits":"","page_title":"","alternative_readmore":"","layout":""}', 3, 0, 8, '', '', 1, 9, '', 0, '*', ''),
(22, 120, 'Primeros Pasos', 'primeros-pasos', '', '<p>Es fácil empezar a crear su sitio web. Conocer algunos de los fundamentos será de ayuda.</p><h3>&iquest;Qué es un Sistema de Gestión de Contenidos?</h3><p>Un sistema de gestión de contenidos es un software que te permite crear y administrar páginas web fácilmente separando la creación de contenidos de los mecanismos necesarios para presentarlo en la web.</p><p>En este sitio, el contenido se almacena en una <em>base de datos</em>.  La imagen y la apariencia son creadas por una <em>plantilla</em>. El software de Joomla! reúne la plantilla y el contenido para crear páginas web.</p><h3>Sitio y administración</h3><p>Su sitio tiene actualmente dos sitios separados. El sitio (también llamado la parte delantera o frontend) es lo que verán los visitantes de su sitio. El administrador (también llamado el backend) es utilizado por personas que gestionan su sitio. Puede acceder al administrador haciendo clic en el enlace "Administrador del sitio" en el menú "Este sitio" o mediante la adición/administradoral final del nombre de dominio.</p><p>Entra en el administrador con el nombre de usuario y contraseña creada durante la instalación de Joomla!.</p><h3>Inicio de sesión</h3><p>Para acceder a la parte delantera de su sitio utiliza el módulo de entrada o en el enlace del menú de inicio de sesión en el "El Sitio" del menú. Utilice el nombre de usuario una contraseña que se crearon como parte del proceso de instalación. Una vez conectado usted podrá crear y editar artículos.</p><p>En la gestión de su sitio será capaz de crear contenido que sólo los usuarios registrados pueden ver.</p><h3>Creación de un artículo</h3><p>Una vez que se ha identificado, un nuevo menú será visible. Para crear un nuevo artículo, haga clic en el "Enviar artículo" que aparece en ese menú.</p><p>La interfaz del nuevo artículo le da un montón de opciones, pero todo lo que necesita hacer es agregar un título y poner algo en el área de contenido. Para que sea más fácil de encontrar, establecer el estado de publicado y poner en la categoría de Joomla!</p><div>Usted puede editar un artículo existente haciendo clic en el icono de edición (si está disponible).</div><h3>Obtenga más información</h3><p>Hay mucho más que aprender acerca de cómo utilizar Joomla! para crear el sitio web que usted imagina. Usted puede aprender mucho más en el sitio de <a href="http://docs.joomla.org">documentación de Joomla!</a> y en los<a href="http://forum.joomla.org"> foros de Joomla!.</a>.</p>', '', 1, 0, 0, 19, '2010-07-10 20:57:51', 894, 'Joomla!', '2010-08-23 03:02:28', 42, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_readmore":"","show_print_icon":"","show_email_icon":"","show_hits":"","page_title":"","alternative_readmore":"","layout":""}', 2, 0, 9, '', '', 1, 15, '', 0, '*', ''),
(23, 121, 'Huerto de Naranjas feliz', 'huerto-de-naranjas-feliz', '', '<p>En nuestra huerta cultivamos las mejores naranjas del mundo, así como otros cítricos como el limón y el pomelo. Nuestra familia ha estado atendiendo este huerto por generaciones.</p>', '', 1, 0, 0, 30, '2010-07-10 20:58:46', 894, 'Fruit Shop Webmaster', '2010-08-23 03:02:28', 42, 0, '0000-00-00 00:00:00', '2010-07-10 20:58:46', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_readmore":"","show_print_icon":"","show_email_icon":"","show_hits":"","page_title":"","alternative_readmore":"","layout":""}', 2, 0, 2, '', '', 1, 1, '', 0, '*', ''),
(24, 122, 'Joomla!', 'joomla', '', '<p><img src="images/25_spanish_logo_142.png" border="0" alt="Joomla! Spanish 2.5" title="Joomla! Spanish 2.5" hspace="6" align="left" />¡Felicidades! Usted tiene un sitio Joomla! 2.5 adaptado y traducido por Joomla! Spanish. Con Joomla! hace que sea fácil el crear y construir un sitio web de la manera que quiera y que sea bastante sencillo de actualizar y mantener.</p>\r\n<p>Joomla! es una plataforma flexible y potente, tanto si esta construyendo un pequeño sitio para usted o para un proyecto WEB de grandes dimensiones y con cientos de miles de visitantes. Joomla! es de código abierto (Open Source), lo que significa que puede funcionar de la manera que usted desea.</p>', '', 1, 0, 0, 19, '2010-07-10 21:00:06', 894, 'Joomla!', '2011-08-12 22:59:32', 42, 0, '0000-00-00 00:00:00', '2010-07-10 21:00:06', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":""}', 8, 0, 2, '', '', 1, 6, '{"robots":"","author":"","rights":"","xreference":""}', 1, '*', ''),
(25, 123, 'Koala', 'koala', '', '<p><img src="images/sampledata/parks/animals/180px_koala_ag1.jpg" border="0" alt="Koala  Thumbnail" width="180" height="123" style="vertical-align: middle; border: 0;" /></p>', '<p><img src="images/sampledata/parks/animals/800px_koala_ag1.jpg" border="0" alt="Koala Climbing Tree" width="500" height="341" style="vertical-align: middle; border: 0;" /></p><p>Ã‚Â </p><p>Ã‚Â </p><p class="caption">Source: http://commons.wikimedia.org/wiki/File:Koala-ag1.jpg</p><p class="caption">Author: Arnaud Gaillard</p><p><span class="caption">License: Creative Commons Share Alike Attribution Generic 1.0</span></p>', 1, 0, 0, 72, '2010-07-10 21:02:10', 894, 'Parks Webmaster', '2010-08-23 03:00:39', 42, 0, '0000-00-00 00:00:00', '2010-07-10 21:02:28', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_readmore":"","show_print_icon":"","show_email_icon":"","show_hits":"","page_title":"","alternative_readmore":"","layout":""}', 3, 0, 2, '', '', 1, 0, '', 0, '*', ''),
(26, 124, 'Conmutar Idioma', 'language-switcher', '', '<p>The language switcher module allows you to take advantage of the language tags that are available when content, modules and menu links are created.</p><p>This module displays a list of available Content Languages for switching between them.</p><p>When switching languages, it redirects to the Home page defined for the chosen language. Thereafter, the navigation will be the one defined for that language.</p><p><strong>The language filter plugin must be enabled for this module to work properly.</strong></p><p><strong></strong> <a href="http://docs.joomla.org/Help15:Screen.modulessite.edit.15#Language_Switcher" title="Language Switcher Module">Help</a></p><p>To view an example of the language switch moduler module, go to the site administrator and enable the language filter plugin and the language switcher module labellled "language switcher" and visit the fruit shop or park sample sites. Then follow<a href="http://docs.joomla.org/Language_Switcher_Tutorial_for_Joomla_1.6"> the instructions in this tutorial</a>.</p>', '', 1, 0, 0, 67, '2010-07-10 21:07:16', 894, 'Joomla!', '2010-08-23 02:58:49', 42, 0, '0000-00-00 00:00:00', '2010-07-10 21:07:16', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_readmore":"","show_print_icon":"","show_email_icon":"","show_hits":"","page_title":"","alternative_readmore":"","layout":""}', 2, 0, 3, '', '', 1, 3, '', 0, '*', ''),
(27, 125, 'Modulo Ultimos Articulos', 'latest-articles-module', '', '<p>This Module shows a list of the most recently published and current Articles. Some that are shown may have expired even though they are the most recent. <a href="http://docs.joomla.org/Help15:Screen.modulessite.edit.15#Latest_News" title="Latest Articles">Help</a></p>\r\n<p>{loadposition articleslatestload}</p>', '', 1, 0, 0, 64, '2010-07-10 21:08:42', 894, '', '2010-09-14 11:21:33', 42, 0, '0000-00-00 00:00:00', '2010-09-14 11:21:23', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","page_title":"","alternative_readmore":"","layout":""}', 4, 0, 1, 'modules, content', '', 1, 5, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(28, 126, 'Modulo Acceso', 'login-module', '', '<p>This module displays a username and password login form. It also displays a link to retrieve a forgotten password. If user registration is enabled (in the Global Configuration settings), another link will be shown to enable self-registration for users. <a href="http://docs.joomla.org/Help15:Screen.modulessite.edit.15#Login" title="Login">Help</a></p><p>{loadposition loginload}</p>', '', 1, 0, 0, 65, '2010-07-10 21:10:16', 894, 'Joomla!', '2010-08-23 02:58:49', 42, 0, '0000-00-00 00:00:00', '2010-07-10 21:10:16', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_readmore":"","show_print_icon":"","show_email_icon":"","show_hits":"","page_title":"","alternative_readmore":"","layout":""}', 3, 0, 2, '', '', 1, 4, '', 0, '*', ''),
(29, 127, 'Modulo Menu', 'menu-module', '', '<p>This module displays a menu on the site (frontend). Ã‚Â Menus can be displayed in a wide variety of ways by using the menu options and css menu styles.</p>\r\n<p>{loadposition menuload}</p>', '', 1, 0, 0, 75, '2010-07-10 21:21:52', 894, 'Joomla!', '2010-08-23 03:02:54', 42, 0, '0000-00-00 00:00:00', '2010-07-11 14:59:41', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_readmore":"","show_print_icon":"","show_email_icon":"","show_hits":"","page_title":"","alternative_readmore":"","layout":""}', 3, 0, 1, '', '', 1, 3, '', 0, '*', ''),
(30, 128, 'Contenido mas leido', 'most-read-content', '', '<p>This Module shows a list of the currently published Articles which have the highest number of page views. <a href="http://docs.joomla.org/Help15:Screen.modulessite.edit.15#Most_Read_Content" title="Most Read Content">Help</a></p>\r\n<p>{loadposition articlespopularload}</p>', '', 1, 0, 0, 64, '2010-07-10 21:25:23', 894, 'Joomla!', '2010-09-14 11:21:05', 42, 0, '0000-00-00 00:00:00', '2010-07-10 21:25:23', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","page_title":"","alternative_readmore":"","layout":""}', 5, 0, 2, 'modules, content', '', 1, 1, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(31, 129, 'Noticias de Última Hora', 'news-flash', '', '<p>Displays a set number of articles from a category based on date or random selection. <a href="http://docs.joomla.org/Help15:Screen.modulessite.edit.15#NewsFlash" title="News Flash Module">Help</a></p>\r\n<p>{loadposition newsflashload}</p>', '', 1, 0, 0, 64, '2010-07-10 21:28:50', 894, '', '2010-09-14 11:20:50', 42, 0, '0000-00-00 00:00:00', '2010-09-14 11:20:50', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","page_title":"","alternative_readmore":"","layout":""}', 3, 0, 3, 'modules, content', '', 1, 3, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(32, 130, 'Opciones', 'opciones', '', '<p>As you make your Joomla! site using the extension you will control the details of the display using <em>parameter</em><strong>s</strong>. Parameters control everything from whether the author''s name is displayed to who can view what to the number of items shown on a list.</p><p>Default parameters for each components are changed using the Options button on the component toolbar.</p><p>Parameters can also be set on an individual item, such as an article or contact and in menu links.</p><p>If you are happy with how your site looks, it is fine to leave all of the parameters set to the defaults that were created when your site was installed. As you become more experienced with Joomla! you will use parameters more.</p><p>Ã‚Â </p>', '', 1, 0, 0, 19, '2010-07-10 21:35:48', 894, 'Joomla!', '2010-08-23 03:02:28', 42, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_readmore":"","show_print_icon":"","show_email_icon":"","show_hits":"","page_title":"","alternative_readmore":"","layout":""}', 2, 0, 10, '', '', 1, 11, '', 0, '*', '');
INSERT INTO `onr_content` (`id`, `asset_id`, `title`, `alias`, `title_alias`, `introtext`, `fulltext`, `state`, `sectionid`, `mask`, `catid`, `created`, `created_by`, `created_by_alias`, `modified`, `modified_by`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `images`, `urls`, `attribs`, `version`, `parentid`, `ordering`, `metakey`, `metadesc`, `access`, `hits`, `metadata`, `featured`, `language`, `xreference`) VALUES
(33, 131, 'Phyllopteryx', 'phyllopteryx', '', '<p><img src="images/sampledata/parks/animals/200px_phyllopteryx_taeniolatus1.jpg" border="0" style="vertical-align: middle;" /></p><p>Ã‚Â </p>', '<p><img src="images/sampledata/parks/animals/800px_phyllopteryx_taeniolatus1.jpg" border="0" style="vertical-align: middle;" /></p><p>Ã‚Â </p><p>Source: http://en.wikipedia.org/wiki/File:Phyllopteryx_taeniolatus1.jpg</p><p>Author: Richard Ling</p><p>License: GNU Free Documentation License v 1.2 or later</p>', 1, 0, 0, 72, '2010-07-10 21:37:12', 894, 'Parks Webmaster', '2010-08-23 03:00:39', 42, 0, '0000-00-00 00:00:00', '2010-07-10 21:37:12', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_readmore":"","show_print_icon":"","show_email_icon":"","show_hits":"","page_title":"","alternative_readmore":"","layout":""}', 2, 0, 3, '', '', 1, 0, '', 0, '*', ''),
(34, 132, 'Pinnacles', 'pinnacles', '', '<p><img src="images/sampledata/parks/landscape/120px_pinnacles_western_australia.jpg" border="0" alt="Kings Canyon" width="120" height="90" style="vertical-align: middle; border: 0;" /></p>', '<p><img src="images/sampledata/parks/landscape/800px_pinnacles_western_australia.jpg" border="0" alt="King''s Canyon" width="500" height="374" style="vertical-align: middle; border: 0;" /></p><p>Ã‚Â </p><p class="caption">Source: http://commons.wikimedia.org/wiki/File:Pinnacles_Western_Australia.jpg</p><p class="caption">Author: <a class="new" href="http://commons.wikimedia.org/w/index.php?title=User:Markdoe&action=edit&redlink=1" title="User:Markdoe (page does not exist)"></a>Martin Gloss</p><p class="caption">License: GNU Free Documentation license v 1.2 or later.</p>', 1, 0, 0, 73, '2010-07-10 21:38:36', 894, 'Parks Webmaster', '2010-08-23 02:58:49', 42, 0, '0000-00-00 00:00:00', '2010-07-11 07:21:29', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_readmore":"","show_print_icon":"","show_email_icon":"","show_hits":"","page_title":"","alternative_readmore":"","layout":""}', 3, 0, 4, '', '', 1, 1, '', 0, '*', ''),
(35, 133, 'Profesionales', 'professionales', '', '<p>Joomla! 1.6 continúa el desarrollo del Framework de Joomla y CMS como una forma poderosa y flexible para llevar su visión de la web a la realidad. Con el administrador ya plenamente MVC, la capacidad de controlar su imagen y la gestión de extensiones es completa.</p>', '<p>Trabaja con múltiples estilos de la plantilla y reemplazalos, crear el diseño que desea es más fácil que nunca. Limitación del soporte a PHP 5.x y fin del soporte heredado para las extensiones en Joomla 1.0 harán Joomla! más ligero y más rápido que nunca. Los archivos de idioma ahora se pueden reemplazar sin perder los cambios durante una actualización. Con el XML adecuado sus usuarios actualizarán las extensiones con un solo clic.</p><p>Se han incorporado listas de control de acceso con un nuevo sistema desarrollado para Joomla!. El sistema de ACL está diseñado pensando en los desarrolladores, por lo que es más fácil de incorporar en sus extensiones. El nuevo conjunto de librerías anidadas le permiten incorporar categorías con niveles de profundidad infinitos y otra variedad de formas.</p><p>Nuevas librerías permiten la creación de todo tipo de interacciones sencillas del usuario. MooTools 1.2 proporciona un framework Javascript altamente flexible que es un gran avance con respecto MooTools 1.0.</p><p>Nuevos eventos en todo el núcleo permiten la  integración de tus plugins donde quieras en un instante.</p><p>Más información sobre:</p><ul><li>[Trabajar con ACL] </li><li>[Trabajar con categorías anidadas] </li><li>[Uso de la biblioteca de formularios] </li><li>[Trabajar con Mootools 1.2] </li><li>[Utilización del sistema de sobreescribir] </li><li>[API de Joomla!]</li><li>[Uso de JDatabaseQuery] </li><li>[Triggers] </li><li>[Xmlrpc] </li><li>[Instalación y actualización de las extensiones]</li><li>[Configuración del entorno de desarrollo]</li></ul>', 1, 0, 0, 19, '2010-07-10 21:47:11', 894, 'Joomla!', '2010-08-23 03:02:28', 42, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_readmore":"","show_print_icon":"","show_email_icon":"","show_hits":"","page_title":"","alternative_readmore":"","layout":""}', 3, 0, 6, '', '', 1, 0, '', 1, '*', ''),
(36, 134, 'Modulo Imagen Aleatoria', 'modulo-imagen-aleatoria', '', '<p>This Module displays a random image from your chosen image directory. <a href="http://docs.joomla.org/Help15:Screen.modulessite.edit.15#Random_Image" title="Random Image Module">Help</a></p><p>{loadposition randomimageload}</p>', '', 1, 0, 0, 66, '2010-07-10 21:51:54', 894, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_readmore":"","show_print_icon":"","show_email_icon":"","show_hits":"","page_title":"","alternative_readmore":"","layout":""}', 2, 0, 4, '', '', 1, 2, '', 0, '*', ''),
(37, 135, 'Modulo articulos relacionados', 'modulo-articulos-relacionados', '', '<p>This Module displays other Articles that are related to the one currently being viewed. These relations are established by the Meta Keywords.Ã‚Â Ã‚Â All the keywords of the current Article are searched against all the keywords of all other published articles. <a href="http://docs.joomla.org/Help15:Screen.modulessite.edit.15#Related_Articles" title="Related Items Module">Help</a></p>\r\n<p>{loadposition relateditemsload}</p>', '', 1, 0, 0, 64, '2010-07-10 21:53:14', 894, 'Joomla!', '2010-09-14 11:23:07', 42, 0, '0000-00-00 00:00:00', '2010-09-14 11:23:07', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","page_title":"","alternative_readmore":"","layout":""}', 3, 0, 4, 'modules, content', '', 1, 4, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(38, 136, 'Sitios de ejemplo', 'sitios-ejemplo', '', '<p>Su instalación incluye datos de ejemplo, diseñados para mostrar el resultado de algunas de las opciones que tiene para la creación de su sitio web. Además de la información sobre Joomla! hay dos ejemplos de "sitios de un sitio", diseñados para ayudarle a empezar con la creación de su propio sitio.</p><p>El primer sitio es un sitio simple sobre<a href="index.php?Itemid=243">Parques Australianos</a>. Eso muestra que es rápido y fácil crear un sitio personal con sólo los bloques de creación que forman parte de Joomla!. Incluye un blog personal, vínculos, y una galería de imágenes muy simple.</p><p>El segundo sitio es un poco más complejo y representa lo que podría hacer si usted está creando un sitio para una pequeña empresa, en este caso una <a href="index.php/welcome.html"></a><a href="index.php?Itemid=429">Tienda de Frutas</a>.</p><p>En la construcción de cualquiera de los sitios de estilo, o algo completamente diferente, es probable que desee añadir<a href="http://extensions.joomla.org">extensiones</a>y/o bien crear o comprar su propia plantilla. Muchos usuarios de Joomla! empiezan por modificar la<a href="http://docs.joomla.org/How_do_you_modify_a_template%3F">plantilla</a> que vienen con la distribución del núcleo para que incluyan imágenes especiales y otros elementos de diseño relacionados con la objeto de su sitio.</p>', '', 1, 0, 0, 19, '2010-07-10 21:55:29', 894, 'Joomla!', '2010-08-23 03:02:28', 42, 0, '0000-00-00 00:00:00', '2010-07-10 21:55:41', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_readmore":"","show_print_icon":"","show_email_icon":"","show_hits":"","page_title":"","alternative_readmore":"","layout":""}', 3, 0, 11, '', '', 1, 9, '', 0, '*', ''),
(39, 137, 'Buscar', 'buscar-componente', '', '<p>El componente de búsqueda provee funcionalidades de búsqueda básicas de la información contenida en los componentes del núcleo. Muchas extensiones de terceros también se pueden buscar por el componente de búsqueda. Ayuda</p>', '', 1, 0, 0, 21, '2010-07-10 21:57:00', 894, 'Joomla!', '2010-07-10 23:14:32', 42, 0, '0000-00-00 00:00:00', '2010-07-10 21:57:00', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_readmore":"","show_print_icon":"","show_email_icon":"","show_hits":"","page_title":"","alternative_readmore":"","layout":""}', 3, 0, 3, '', '', 1, 3, '', 0, '*', ''),
(40, 138, 'Modulo de busqueda', 'modulo-busqueda', '', '<p>En este módulo mostrará un cuadro de búsqueda. <a href="http://docs.joomla.org/Help15:Screen.modulessite.edit.15#Search" title="Search">Help</a></p><p>{loadposition searchload}</p>', '', 1, 0, 0, 67, '2010-07-10 22:00:58', 894, 'Joomla!', '2010-08-23 02:58:49', 42, 0, '0000-00-00 00:00:00', '2010-07-10 22:00:58', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_readmore":"","show_print_icon":"","show_email_icon":"","show_hits":"","page_title":"","alternative_readmore":"","layout":""}', 2, 0, 4, '', '', 1, 2, '', 0, '*', ''),
(41, 139, 'Buscar ', 'plugin-buscar', '', '<p>El componente de búsqueda utiliza plugins para controlar en qué partes de su sitio Joomla! busca. Usted puede optar por desactivar algunas áreas para mejorar el rendimiento o por otras razones. Muchas extensiones de Joomla! de terceros tienen plugins de búsqueda que extienden donde se lleva a cabo  la búsqueda.</p><p>Por defecto habilitado:</p><ul><li>Ayuda Contenido</li><li>Ayuda Contactos</li><li>Ayuda Enlaces Web</li><li>Ayuda Noticias Externas</li><li>Ayuda Categorías</li></ul>', '', 1, 0, 0, 25, '2010-07-10 22:02:17', 894, 'Joomla!', '2010-07-10 23:15:44', 42, 0, '0000-00-00 00:00:00', '2010-07-10 23:15:44', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_readmore":"","show_print_icon":"","show_email_icon":"","show_hits":"","page_title":"","alternative_readmore":"","layout":""}', 3, 0, 1, '', '', 1, 2, '', 0, '*', ''),
(42, 140, 'Mapa del Sitio', 'mapa-sitio', '', '<p>{loadposition sitemapload}</p><p><em>By putting all of your content into nested categories you can give users and search engines access to everything using a menu.</em></p>', '', 1, 0, 0, 14, '2010-07-10 22:03:35', 894, 'Joomla!', '2010-08-23 02:58:49', 42, 0, '0000-00-00 00:00:00', '2010-07-10 22:03:35', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_readmore":"","show_print_icon":"","show_email_icon":"","show_hits":"","page_title":"","alternative_readmore":"","layout":""}', 2, 0, 4, '', '', 1, 2, '', 0, '*', ''),
(43, 141, 'Spotted Quoll', 'spotted-quoll', '', '<p><img src="images/sampledata/parks/animals/220px_spottedquoll_2005_seanmcclean.jpg" border="0" alt="Spotted Quoll" style="vertical-align: middle; border: 0;" /></p>', '<p><img src="images/sampledata/parks/animals/789px_spottedquoll_2005_seanmcclean.jpg" border="0" alt="Spotted Quoll" style="vertical-align: middle;" /></p><p>Ã‚Â </p><p>Source: http://en.wikipedia.org/wiki/File:SpottedQuoll_2005_SeanMcClean.jpg</p><p>Author: Sean McClean</p><p>License: GNU Free Documentation License v 1.2 or later</p>', 1, 0, 0, 72, '2010-07-10 22:04:40', 894, 'Parks Webmaster', '2010-08-23 03:00:39', 42, 0, '0000-00-00 00:00:00', '2010-07-10 22:04:40', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_readmore":"","show_print_icon":"","show_email_icon":"","show_hits":"","page_title":"","alternative_readmore":"","layout":""}', 2, 0, 4, '', '', 1, 0, '', 0, '*', ''),
(44, 142, 'Modulo Estadísticas', 'estadisticas', '', '<p>The Statistics Module shows information about your server installation together with statistics on the Web site users, number of Articles in your database and the number of Web links you provide.</p><p>{loadposition statisticsload}</p>', '', 1, 0, 0, 67, '2010-07-10 22:05:45', 894, 'Joomla!', '2010-08-23 02:58:49', 42, 0, '0000-00-00 00:00:00', '2010-07-10 22:06:09', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_readmore":"","show_print_icon":"","show_email_icon":"","show_hits":"","page_title":"","alternative_readmore":"","layout":""}', 3, 0, 5, '', '', 1, 2, '', 0, '*', ''),
(45, 143, 'Modulo sindicación', 'modulo-sindicacion', '', '<p>The syndicate module allows you to display a link that allows users to take a feed from your site. It will only display on pages for which feeds are possible. That means it will not display on single article, contact or weblinks pages, such as this one. <a href="http://docs.joomla.org/Help15:Screen.modulessite.edit.15#Syndicate" title="Synicate Module">Help</a></p><p>{loadposition syndicateload}</p>', '', 1, 0, 0, 67, '2010-07-10 22:07:51', 894, '', '2010-08-23 02:58:49', 42, 0, '0000-00-00 00:00:00', '2010-07-10 22:07:51', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_readmore":"","show_print_icon":"","show_email_icon":"","show_hits":"","page_title":"","alternative_readmore":"","layout":""}', 2, 0, 6, '', '', 1, 3, '', 0, '*', ''),
(46, 144, 'Sistema', 'system', '', '<p>System plugins operate every time a page on your site loads. They control such things as your URLS, whether users can check a "remember me" box on the login module, and whether caching is enabled. Ã‚Â New in 1.6 is the redirect plugin that with the redirect component assist you in managing changes in URLs.</p><p>Default on:</p><ul><li>Remember me Help</li><li>SEFÃ‚Â Help</li><li>DebugÃ‚Â Help</li></ul><p>Default off:</p><ul><li>CacheÃ‚Â Help</li><li>LogÃ‚Â Help</li><li>RedirectÃ‚Â Help</li></ul>', '', 1, 0, 0, 25, '2010-07-10 22:09:41', 894, 'Joomla!', '2010-07-10 23:15:54', 42, 0, '0000-00-00 00:00:00', '2010-07-10 22:09:41', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_readmore":"","show_print_icon":"","show_email_icon":"","show_hits":"","page_title":"","alternative_readmore":"","layout":""}', 3, 0, 2, '', '', 1, 2, '', 0, '*', ''),
(47, 145, 'La Comunidad Joomla!', 'la-comunidad-joomla', '', '<p>Joomla! significa "todos juntos", y es una comunidad de personas trabajando y divirtiéndose juntos que hace Joomla! posible. Miles de personas cada año participan en la comunidad Joomla!, y esperamos que sea uno de ellos.<a href="index.php?option=com_content&view=article&catid=40&id=27">Módulo Archivo</a></p><p>Las personas con todo tipo de habilidades, de todos los niveles y de todo el mundo son bienvenidos a unirse. Participar en los sitios web de la familia <a href="http://joomla.org">Joomla.org</a> (el<a href="http://forum.joomla.org"> foro </a>es un gran lugar para empezar). &iexcl;Vamos a un<a href="http://community.joomla.org/events.html"> evento Joomla!</a>. Iniciar o unirse a un <a href="http://community.joomla.org/user-groups.html">Grupo de Usuarios de Joomla!</a>. Si usted es un desarrollador, administrador, diseñador, usuario final o fan, hay maneras para que usted pueda participar y contribuir.</p>', '', 1, 0, 0, 19, '2010-07-10 22:11:09', 894, 'Joomla!', '2010-08-23 03:02:28', 42, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_readmore":"","show_print_icon":"","show_email_icon":"","show_hits":"","page_title":"","alternative_readmore":"","layout":""}', 2, 0, 4, '', '', 1, 13, '', 0, '*', ''),
(48, 146, 'El Proyecto Joomla!', 'el-proyecto-joomla', '', '<p>El Proyecyo Joomla! consta de todas las personas que hacen y apoyan la Plataforma y el Sistema de Gestión de Contenidos Web de Joomla!.</p><p>Nuestra misión es proporcionar una plataforma flexible para la publicación digital y la colaboración.</p><p>Los valores centrales son:</p><ul><li>Libertad</li><li>Igualdad</li><li>Confianza</li><li>Comunidad</li><li>Colaboración</li><li>Usabilidad</li></ul><p>En nuestra visión, vemos:</p><ul><li>Las personas publicando y colaborando en sus comunidades y en todo el mundo</li><li>El software que es gratuito, seguro y de alta calidad</li><li>Una comunidad que es agradable y gratificante para participar</li><li>Las personas de todo el mundo en sus idiomas preferidos</li><li>Un proyecto que actúa de manera autónoma</li><li>Un proyecto que es socialmente responsable</li><li>Un proyecto dedicado a mantener la confianza de sus usuarios</li></ul><p>Hay millones de usuarios en todo el mundo y miles de personas que contribuyen con el proyecto Joomla!. Trabajan en tres grupos principales: el Grupo de Trabajo de Producción, responsable de todo lo que ocurre en el software y la documentación, el Grupo de Trabajo de Comunidad, responsable de la creación de una consolidación de la comunidad; y la Open Source Matters, la organización sin ánimo de lucro encargada de la gestión jurídica, financiera y las cuestiones de organización.</p><p>Joomla! es un proyecto de código libre y abierto, que usa la Licencia Pública General GNU versión 2 o posterior.</p>', '', 1, 0, 0, 19, '2010-07-10 22:20:16', 894, '', '2010-08-23 03:02:28', 42, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_readmore":"","show_print_icon":"","show_email_icon":"","show_hits":"","page_title":"","alternative_readmore":"","layout":""}', 3, 0, 1, '', '', 1, 10, '', 0, '*', ''),
(49, 147, 'Tipografia', 'tipografia', '', '<h1>H1 ABCDEFGHIJKLMNOPQRSTUVWXYZ abcdefghijklmonpqrstuvwzyz</h1><h2>H2 ABCDEFGHIJKLMNOPQRSTUVWXYZ abcdefghijklmonpqrstuvwzyz</h2><h3>H3 ABCDEFGHIJKLMNOPQRSTUVWXYZ abcdefghijklmonpqrstuvwzyz</h3><h4>H4 ABCDEFGHIJKLMNOPQRSTUVWXYZ abcdefghijklmonpqrstuvwzyz</h4><h5>H5 ABCDEFGHIJKLMNOPQRSTUVWXYZ abcdefghijklmonpqrstuvwzyz</h5><h6>H6 ABCDEFGHIJKLMNOPQRSTUVWXYZ abcdefghijklmonpqrstuvwzyz</h6><p>P The quick brown fox ran over the lazy dog. THE QUICK BROWN FOX RAN OVER THE LAZY DOG.</p><ul><li>Item</li><li>Item</li><li>Item<br /> <ul><li>Item</li><li>Item</li><li>Item<br /> <ul><li>Item</li><li>Item</li><li>Item</li></ul></li></ul></li></ul><ol><li>tem</li><li>Item</li><li>Item<br /> <ol><li>Item</li><li>Item</li><li>Item<br /><ol><li>Item</li><li>Item</li><li>Item</li></ol></li></ol> </li></ol>', '', 1, 0, 0, 23, '2010-07-10 22:22:26', 894, 'Joomla!', '2010-08-23 02:59:04', 42, 0, '0000-00-00 00:00:00', '2010-07-10 22:22:26', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_readmore":"","show_print_icon":"","show_email_icon":"","show_hits":"","page_title":"","alternative_readmore":"","layout":""}', 2, 0, 1, '', '', 1, 14, '', 0, '*', ''),
(50, 148, 'Actualizadores', 'actualizadores', '', '<p>Si usted es un usuario experimentado de Joomla! 1.5, 1.6 le resultará muy familiar. Hay nuevas plantillas e interfaces de usuario mejoradas, pero la mayoría de la funcionalidad es la misma. Los mayores cambios fueron la mejora del control de acceso (ACL) y las categorías anidadas.</p>', '<p>El administrador de nuevos usuarios le permite manejar quién tiene acceso a lo que esta en su sitio. Puede dejar los grupos de acceso exactamente de la forma que tenía en Joomla! 1.5 o hacerlos tan complicados como usted desee.Usted puede aprender más sobre cómo funciona el <a href="http://docs.joomla.org/ACL_Tutorial_for_Joomla_1.6"> control de acceso</a> en la <a href="http://docs.joomla.org">Documentación del sitio de Joomla!</a></p><p>En Joomla 1.5 y 1.0 el contenido fue organizado en secciones y categorías. En la 1.6 las secciones han desaparecido, y usted puede crear categorías dentro de las categorías, e ir tan profundamente como usted quiera. Los datos de ejemplo ofrecen muchos ejemplos de la utilización de categorías anidadas.</p><p>Todas las plantillas se han rediseñado para mejorar la accesibilidad y la flexibilidad. Si desea mantener los diseños de 1.5, usted puede encontrarlos en la carpeta html de la plantilla Vía Láctea. Basta con copiar los diseños que desee a la carpeta html de la plantilla.</p><p>Actualización de su sitio y de las extensiones cuando se necesita ahora es más fácil que nunca gracias a la instalación de mejoras.</p><p>Para obtener más información acerca de cómo<a href="http://docs.joomla.org/Migrating_from_1.5_to_1.6"> mover un sitio de Joomla! 1.5 a un sitio de instalación de Joomla! 1.6 leer este artículo.</a>.</p>', 1, 0, 0, 19, '2010-07-10 22:38:22', 894, '', '2010-08-23 03:02:28', 42, 0, '0000-00-00 00:00:00', '2010-07-10 22:38:22', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_readmore":"","show_print_icon":"","show_email_icon":"","show_hits":"","page_title":"","alternative_readmore":"","layout":""}', 2, 0, 5, '', '', 1, 0, '', 1, '*', ''),
(51, 149, 'Usuario', 'plugins-usuario', '', '<p>Por defecto habilitado:</p><ul><li>Ayuda Joomla!</li></ul><p>Por defecto deshabilitado:</p><p>Dos nuevos plugins están disponibles en 1.6, pero están desactivados por defecto.</p><ul><li>Crear Contacto, Ayuda<br />Crea un nuevo registro de contacto vinculado a cada nuevo usuario creado. </li><li>Perfil, Ayuda<br />Este plugin de perfil ejemplo permite insertar campos adicionales en el registro del usuario y mostrarlos el perfil. Esto pretende ser una muestra de los tipos de extensiones según el perfil que puede que desee crear.</li></ul>', '', 1, 0, 0, 25, '2010-07-10 22:43:34', 894, 'Joomla!', '2010-08-23 02:58:49', 42, 0, '0000-00-00 00:00:00', '2010-07-10 23:16:15', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_readmore":"","show_print_icon":"","show_email_icon":"","show_hits":"","page_title":"","alternative_readmore":"","layout":""}', 3, 0, 4, '', '', 1, 2, '', 0, '*', ''),
(52, 150, 'Usuarios', 'componente-usuarios', '', '<p>The users extension lets your site visitors register, login and logout, change their passwords and other information, and recover lost passwords. In the administrator it allows you to create, block and manage users and create user groups and access levels. Help</p>\r\n<p>Please note that some of the user views will not display if you are not logged in to the site.</p>', '', 1, 0, 0, 21, '2010-07-10 22:46:05', 894, 'Joomla!', '2010-08-23 03:00:39', 42, 0, '0000-00-00 00:00:00', '2010-07-10 23:13:53', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_readmore":"","show_print_icon":"","show_email_icon":"","show_hits":"","page_title":"","alternative_readmore":"","layout":""}', 4, 0, 5, '', '', 1, 3, '', 0, '*', ''),
(53, 151, 'Usando Joomla!', 'usando-joomla', '', '<p>Con Joomla! puede crear cualquier cosa, desde una simple página web personal a un complejo de comercio electrónico o un sitio social con millones de visitantes.</p><p>Esta sección de datos de ejemplo  le ofrece una breve introducción a los conceptos de Joomla! y al material de referencia para ayudarle a entender como funciona el trabajo en Joomla!.</p><p><em>Cuando no se ya no necesitan los datos de ejemplo, puede simplemente anular la publicación de la categoría de datos de ejemplo que se encuentra dentro de cada extensión en el administrador del sitio o puede eliminar por completo cada artículo y todas las categorías. </em></p>', '', 1, 0, 0, 19, '2010-07-10 23:00:59', 894, 'Joomla!', '2010-08-23 03:02:28', 42, 0, '0000-00-00 00:00:00', '2010-07-10 23:00:59', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_readmore":"","show_print_icon":"","show_email_icon":"","show_hits":"","page_title":"","alternative_readmore":"","layout":""}', 2, 0, 7, '', '', 1, 24, '', 0, '*', ''),
(54, 152, 'Enlaces Web', 'enlaces-web', '', '<p>Weblinks (com_weblinks) is a component that provides a structured way to organize external links and present them in a visually attractive, consistent and informative way. Help</p>', '', 1, 0, 0, 21, '2010-07-10 23:02:42', 894, 'Joomla!', '2010-08-23 03:00:39', 42, 0, '0000-00-00 00:00:00', '2010-07-10 23:02:42', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_readmore":"","show_print_icon":"","show_email_icon":"","show_hits":"","page_title":"","alternative_readmore":"","layout":""}', 3, 0, 6, '', '', 1, 10, '', 0, '*', ''),
(55, 153, 'Modulo Enlaces Web', 'weblinks-module', '', '<p>This module displays the list of weblinks in a category. Ã‚Â <a href="http://docs.joomla.org/Help15:Screen.modulessite.edit.15#Weblinks" title="Weblinks Module">Help</a></p><p>{loadposition weblinksload}</p>', '', 1, 0, 0, 66, '2010-07-10 23:04:41', 894, 'Joomla!', '2010-08-23 03:00:39', 42, 0, '0000-00-00 00:00:00', '2010-07-10 23:04:41', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_readmore":"","show_print_icon":"","show_email_icon":"","show_hits":"","page_title":"","alternative_readmore":"","layout":""}', 2, 0, 5, '', '', 1, 3, '', 0, '*', ''),
(56, 154, 'Usuarios en Linea', 'usuarios-en-linea', '', '<p>The Who''s Online Module displays the number of Anonymous Users (e.g. Guests) and Registered Users (ones logged in) that are currently accessing the Web site. <a href="http://docs.joomla.org/Help15:Screen.modulessite.edit.15#Who.27s_Online" title="Who''s Online">Help</a></p><p>{loadposition whosonlineload}</p>', '', 1, 0, 0, 65, '2010-07-10 23:06:16', 894, 'Joomla!', '2010-08-23 02:58:49', 42, 0, '0000-00-00 00:00:00', '2010-07-10 23:06:16', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_readmore":"","show_print_icon":"","show_email_icon":"","show_hits":"","page_title":"","alternative_readmore":"","layout":""}', 2, 0, 1, '', '', 1, 3, '', 0, '*', ''),
(57, 155, 'Wobbegone', 'wobbegone', '', '<p><img src="images/sampledata/parks/animals/180px_wobbegong.jpg" border="0" alt="Wobbegone" style="vertical-align: middle; border: 0;" /></p>', '<p><img src="images/sampledata/parks/animals/800px_wobbegong.jpg" border="0" style="vertical-align: middle; border: 0;" /></p><p>Source: http://en.wikipedia.org/wiki/File:Wobbegong.jpg</p><p>Author: Richard Ling</p><p>Rights: GNU Free Documentation License v 1.2 or later</p>', 1, 0, 0, 72, '2010-07-10 23:07:30', 894, 'Parks Webmaster', '2010-08-23 03:00:39', 42, 0, '0000-00-00 00:00:00', '2010-07-10 23:07:29', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_readmore":"","show_print_icon":"","show_email_icon":"","show_hits":"","page_title":"","alternative_readmore":"","layout":""}', 2, 0, 1, '', '', 1, 0, '', 0, '*', ''),
(58, 156, 'Sandia maravillosa', 'sandia-maravillosa', '', '<p>La sandía es un regalo maravilloso y saludable. Producimos la sandía más dulce del mundo. Tenemos la sandía más grande producida en nuestro país.</p>', '', 1, 0, 0, 30, '2010-07-10 23:09:14', 894, 'Fruit Shop Webmaster', '2010-08-23 03:02:28', 42, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_readmore":"","show_print_icon":"","show_email_icon":"","show_hits":"","page_title":"","alternative_readmore":"","layout":""}', 2, 0, 1, '', '', 1, 0, '', 0, '*', ''),
(59, 157, 'Modulo Wrapper', 'wrapper-module', '', '<p>This module shows an iFrame window to specified location. <a href="http://docs.joomla.org/Help15:Screen.modulessite.edit.15#Wrapper" title="Wrapper Module">Help</a></p><p>{loadposition wrapperload}</p>', '', 1, 0, 0, 67, '2010-07-10 23:10:10', 894, 'Joomla!', '2010-08-23 02:58:49', 42, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_readmore":"","show_print_icon":"","show_email_icon":"","show_hits":"","page_title":"","alternative_readmore":"","layout":""}', 2, 0, 1, '', '', 1, 1, '', 0, '*', ''),
(60, 158, 'Noticias Externas', 'news-feeds', '', '<p>News Feeds (com_newsfeeds) provides a way to organize and present news feeds. News feeds are a way that you present information from another site on your site. For example, the joomla.org website has numerous feeds that you an incorporate on your site. You an use menus to present a single feed, a list of feeds in a category, or or a list of all feed categories. Help</p>', '', 1, 0, 0, 21, '2010-07-11 00:28:23', 894, 'Joomla!', '2010-08-23 03:00:39', 42, 0, '0000-00-00 00:00:00', '2010-07-11 00:28:23', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_readmore":"","show_print_icon":"","show_email_icon":"","show_hits":"","page_title":"","alternative_readmore":"","layout":""}', 2, 0, 4, '', '', 1, 3, '', 0, '*', ''),
(61, 159, 'Modulo Ruta', 'breadcrumbs-module', '', '<p>Breadcrumbs provide a pathway for users to navigate through the site. <a href="http://docs.joomla.org/Help15:Screen.modulessite.edit.15#Breadcrumbs" title="Breacrumbs Module">Help</a></p><p>{loadposition breadcrumbsload}</p>', '', 1, 0, 0, 67, '2010-07-11 01:30:25', 894, 'Joomla!', '2010-08-23 02:58:49', 42, 0, '0000-00-00 00:00:00', '2010-07-11 01:30:25', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_readmore":"","show_print_icon":"","show_email_icon":"","show_hits":"","page_title":"","alternative_readmore":"","layout":""}', 2, 0, 2, '', '', 1, 3, '', 0, '*', ''),
(62, 160, 'Contenido', 'content-plugins', '', '<p>Content plugins run when specific kinds of pages are loaded. They do things ranging from protecting email addresses from harvesters to creating page breaks.</p><p>Default on:</p><ul><li>Email Cloaking Help</li><li>Load Module Help</li><li>Page Break Help</li><li>Page Navigation Help</li><li>Rating Help</li></ul><p>Default off:</p><ul><li>Code Highlighting (Geshi) Help</li></ul>', '', 1, 0, 0, 25, '2010-07-11 06:19:31', 894, 'Joomla!', '2010-08-23 02:58:49', 42, 0, '0000-00-00 00:00:00', '2010-07-11 06:19:31', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_readmore":"","show_print_icon":"","show_email_icon":"","show_hits":"","page_title":"","alternative_readmore":"","layout":""}', 2, 0, 7, '', '', 1, 3, '', 0, '*', ''),
(64, 162, 'Blue Mountain Rain Forest', 'blue-mountain-rain-forest', '', '<p><img src="images/sampledata/parks/landscape/120px_rainforest_bluemountainsnsw.jpg" border="0" alt="Rain Forest Blue Mountrains" /></p>', '<p><img src="images/sampledata/parks/landscape/727px_rainforest_bluemountainsnsw.jpg" border="0" alt="Rain Forest Blue Mountrains" style="vertical-align: middle;" /></p><p>Ã‚Â </p><p class="caption">Source: http://commons.wikimedia.org/wiki/File:Rainforest,bluemountainsNSW.jpg</p><p class="caption">Author: Adam J.W.C.</p><p class="caption">License: GNU Free Documentation License</p>', 1, 0, 0, 73, '2010-07-11 07:19:35', 894, 'Parks Webmaster', '2010-08-23 02:58:49', 42, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_readmore":"","show_print_icon":"","show_email_icon":"","show_hits":"","page_title":"","alternative_readmore":"","layout":""}', 2, 0, 2, '', '', 1, 0, '', 0, '*', ''),
(65, 163, 'Ormiston Pound', 'ormiston-pound', '', '<p><img src="images/sampledata/parks/landscape/180px_ormiston_pound.jpg" border="0" alt="Ormiston Pound" style="border: 0;" /></p>', '<p><img src="images/sampledata/parks/landscape/800px_ormiston_pound.jpg" border="0" alt="Ormiston Pound" height="375" style="vertical-align: middle; border: 0;" /></p><p>Ã‚Â </p><p class="caption">Source: http://commons.wikimedia.org/wiki/File:Ormiston_Pound.JPG</p><p class="caption">Author:</p><p class="caption">License: GNU Free Public Documentation License</p>', 1, 0, 0, 73, '2010-07-11 07:21:18', 894, 'Parks Webmaster', '2010-08-23 02:58:49', 42, 0, '0000-00-00 00:00:00', '2010-07-11 07:21:18', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_readmore":"","show_print_icon":"","show_email_icon":"","show_hits":"","page_title":"","alternative_readmore":"","layout":""}', 3, 0, 3, '', '', 1, 0, '', 0, '*', ''),
(66, 165, 'Modulo Últimos Usuarios', 'latest-users-module', '', '<p>This module displays the latest registered users. Help</p>\r\n<p>{loadposition userslatestload}</p>', '', 1, 0, 0, 65, '2010-07-11 13:54:30', 894, 'Joomla!', '2010-08-23 02:58:49', 42, 0, '0000-00-00 00:00:00', '2010-07-11 13:55:19', '0000-00-00 00:00:00', '', '', '{"show_title":"1","link_titles":"","show_intro":"","show_category":"1","link_category":"1","show_parent_category":"","link_parent_category":"","show_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_readmore":"","show_print_icon":"","show_email_icon":"","show_hits":"","page_title":"","alternative_readmore":"","layout":""}', 3, 0, 3, '', '', 1, 4, '', 0, '*', ''),
(67, 168, 'What''s New in 1.5?', 'whats-new-in-15', '', '<p>This article deliberately archived as an example.</p><p>As with previous releases, Joomla! provides a unified and easy-to-use framework for delivering content for Web sites of all kinds. To support the changing nature of the Internet and emerging Web technologies, Joomla! required substantial restructuring of its core functionality and we also used this effort to simplify many challenges within the current user interface. Joomla! 1.5 has many new features.</p>\r\n<p style="margin-bottom: 0in;">In Joomla! 1.5, you''''ll notice:</p>\r\n<ul>\r\n<li>Substantially improved usability, manageability, and scalability far beyond the original Mambo foundations</li>\r\n<li>Expanded accessibility to support internationalisation, double-byte characters and right-to-left support for Arabic, Farsi, and Hebrew languages among others</li>\r\n<li>Extended integration of external applications through Web services</li>\r\n<li>Enhanced content delivery, template and presentation capabilities to support accessibility standards and content delivery to any destination</li>\r\n<li>A more sustainable and flexible framework for Component and Extension developers</li>\r\n<li>Backward compatibility with previous releases of Components, Templates, Modules, and other Extensions</li>\r\n</ul>', '', 2, 0, 0, 9, '2011-01-01 00:00:01', 894, 'Joomla! 1.5', '2011-01-01 00:00:01', 0, 0, '0000-00-00 00:00:00', '2011-01-01 00:00:01', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_readmore":"","show_print_icon":"","show_email_icon":"","show_hits":"","page_title":"","alternative_readmore":"","layout":""}', 1, 0, 10, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(68, 170, 'Captcha', 'captcha', '', '<p>The Captcha plugins are used to prevent spam submissions on your forms such as registration, contact and login. You basic installation of Joomla includes one Captcha plugin which leverages the ReCaptcha® service but you may install other plugins connecting to different Captcha systems.</p>\r\n<p>Default on:</p>\r\n<ul>\r\n<li>ReCaptcha <a href="http://help.joomla.org/proxy/index.php?option=com_help&amp;amp;keyref=Help17:Extensions_Plugin_Manager_Edit">help</a></li>\r\n</ul>\r\n<p>Note: ReCaptcha is a the trademark of Google Inc. and is an independent product not associated with or endorsed by the Joomla Project. You will need to register and agree to the Terms of Service at Recaptcha.net to use this plugin. Complete instructions are available if you edit the ReCaptcha plugin in the Plugin Manager.</p>', '', 1, 0, 0, 25, '2012-01-17 03:20:45', 894, 'Joomla!', '2012-01-17 03:35:46', 42, 0, '0000-00-00 00:00:00', '2012-01-17 03:20:45', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":"","urlatext":"","targeta":"","urlb":"","urlbtext":"","targetb":"","urlc":"","urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 2, 0, 1, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(69, 171, 'Iconos rápidos', 'quick-icons', '', '<p> The Quick Icon plugin group is used to provide notification that updates to Joomla! or installed extensions are available and should be applied. These notifications display on your administrator control panel, which is the page you see when you first log in to your site administrator.</p>\r\n<p>Default on:</p>\r\n<ul>\r\n<li>Quick icon - Joomla! extensions updates notification <a href="http://help.joomla.org/proxy/index.php?option=com_help&amp;amp;keyref=Help17:Extensions_Plugin_Manager_Edit">Help</a>.</li>\r\n<li>Quick icon - Joomla! update notification <a href="http://help.joomla.org/proxy/index.php?option=com_help&amp;amp;keyref=Help17:Extensions_Plugin_Manager_Edit">Help</a></li>\r\n</ul>', '', 1, 0, 0, 25, '2012-01-17 03:27:39', 894, 'Joomla!', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2012-01-17 03:27:39', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":"","urlatext":"","targeta":"","urlb":"","urlbtext":"","targetb":"","urlc":"","urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 1, 0, 0, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(70, 170, 'Búsqueda inteligente', 'busqueda-inteligente', '', '<p>This module provides search using the Smart Search component. You should only use it if you have indexed your content and either have enabled the Smart Search content plugin or are keeping the index of your site updated manually. <a href="http://help.joomla.org/proxy/index.php?option=com_help&amp;amp;keyref=Help25:Extensions_Module_Manager_Smart_Search">Help</a>.</p>\r\n<div class="sample-module">{loadmodule finder,Smart Search}</div>', '', 1, 0, 0, 67, '2012-01-17 03:42:36', 894, '', '2012-01-17 16:15:48', 42, 0, '0000-00-00 00:00:00', '2012-01-17 03:42:36', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":"","urlatext":"","targeta":"","urlb":"","urlbtext":"","targetb":"","urlc":"","urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 10, 0, 0, '', '', 1, 13, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(71, 174, 'Noves Tecnologies', 'noves-tecnologies', '', '<p>Hace referencia a los últimos desarrollos tecnológicos y sus aplicaciones (programas, procesos y aplicaciones).</p>\r\n<p>Las nuevas tecnologías se centran en los procesos de comunicación y las agrupamos en tres áreas: la informática, el vídeo y la telecomunicación, con interrelaciones y desarrollos a más de un área.</p>\r\n<p>Existe una confusión en identificar las nuevas tecnologías con la informática por la presencia de microprocesadores en casi todos los nuevos aparatos y por la función que tiene ésta en la sociedad actual. Hacen referencia también al desarrollo tecnológico en el diseño de procesos, programas y aplicaciones.</p>', '', 1, 0, 0, 9, '2015-02-05 10:54:27', 894, '', '2015-02-05 11:15:41', 894, 0, '0000-00-00 00:00:00', '2015-02-05 10:54:27', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":null,"urlatext":"","targeta":"","urlb":null,"urlbtext":"","targetb":"","urlc":null,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 5, 0, 9, '', '', 1, 38, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(72, 175, 'Disc Durs SDD', 'disc-durs-sdd', '', '<p>Una unidad de estado sólido o SSD (acrónimo en inglés de solid-state drive) es un dispositivo de almacenamiento de datos que usa una memoria no volátil, como la memoria flash, para almacenar datos, en lugar de los platos giratorios magnéticos encontrados en los discos duros convencionales. En comparación con los discos duros tradicionales, las unidades de estado sólido son menos sensibles a los golpes, son prácticamente inaudibles y tienen un menor tiempo de acceso y de latencia. Las SSD hacen uso de la misma interfaz que los discos duros por lo que son fácilmente intercambiables sin tener que recurrir a adaptadores o tarjetas de expansión para compatibilizarlos con el equipo.</p>', '', 1, 0, 0, 9, '2015-02-05 11:38:07', 894, '', '2015-02-05 11:42:18', 894, 0, '0000-00-00 00:00:00', '2015-02-05 11:38:07', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":null,"urlatext":"","targeta":"","urlb":null,"urlbtext":"","targetb":"","urlc":null,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 2, 0, 8, '', '', 1, 8, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', '');
INSERT INTO `onr_content` (`id`, `asset_id`, `title`, `alias`, `title_alias`, `introtext`, `fulltext`, `state`, `sectionid`, `mask`, `catid`, `created`, `created_by`, `created_by_alias`, `modified`, `modified_by`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `images`, `urls`, `attribs`, `version`, `parentid`, `ordering`, `metakey`, `metadesc`, `access`, `hits`, `metadata`, `featured`, `language`, `xreference`) VALUES
(73, 176, 'Dispositius Mobils', 'dispositius-mobils', '', '<p>Un dispositiu mòbil és un aparell de mides reduïdes i lleugers que pot ser utilitzat mentre es transporten. Normalment tenen capacitat per a connectar-se a la xarxa i solen estar dissenyats per a realitzar una tasca concreta; tot i això, hi ha dispositius que ens permeten realitzar diferents tasques amb el mateix aparell.</p>\r\n<p>Aquests dispositius normalment també poden connectar-se a un ordinador per tal de complementar les seves funcions, actualitzar-se, transferir dades, etc.</p>', '', 1, 0, 0, 9, '2015-02-05 11:48:55', 894, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2015-02-05 11:48:55', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":null,"urlatext":"","targeta":"","urlb":null,"urlbtext":"","targetb":"","urlc":null,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 1, 0, 7, '', '', 1, 3, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(74, 177, 'Grafe', 'grafe', '', '<p>El grafè és un al·lòtrop del carboni que té una estructura laminar plana, d''un sol àtom de gruix, composta per àtoms de carboni densament empaquetats en una xarxa cristal·lina bidimensional en forma de rusc d''abella. Els àtoms que formen el grafè es mantenen units mitjançant enllaços covalents que es formen a partir de la superposició dels híbrids sp<sup>2</sup> dels carbonis enllaçats. Aquest material es caracteritza per posseir una alta conductivitat tèrmica i elèctrica, i per combinar una alta elasticitat i lleugeresa amb una duresa extrema.</p>\r\n<p>L''any 2010, va ser concedit el premi Nobel de física a Andre Geim i Konstantin Novoselov de la Universitat de Manchester pels experiments i treballs científics que han dut a terme sobre el grafè. D''ençà que el grafè ha esdevingut un dels materials en què més ha treballat i investigat últimament la comunitat científica. El motiu d''aquesta rellevància són les potencials aplicacions que té aquest material en el món de la nanotecnologia, l''electrònica, etc. així com els efectes físics que s''hi poden observar experimentalment.</p>', '', 1, 0, 0, 9, '2015-02-05 11:51:09', 894, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2015-02-05 11:51:09', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":null,"urlatext":"","targeta":"","urlb":null,"urlbtext":"","targetb":"","urlc":null,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 1, 0, 6, '', '', 1, 4, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(75, 178, 'Smartwatch', 'smartwatch', '', '<p>El Sony SmartWatch, es un reloj inteligente de la compañía japonesa Sony, que puede conectarse a la mayoría de teléfonos inteligentes que poseen el sistema operativo Android para servir como control remoto. Puede conectarse a redes sociales comoFacebook o Twitter, así como también puede leer mensajes de correo electrónico de Gmail y POP3. Sony SmartWach es el sucesor del Sony Ericsson LiveView. El dispositivo fue lanzado en abril de 2012.<sup id="cite_ref-2"><br /><a href="http://es.wikipedia.org/wiki/Sony_SmartWatch#cite_note-2"></a></sup></p>', '', 1, 0, 0, 9, '2015-02-05 11:54:29', 894, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2015-02-05 11:54:29', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":null,"urlatext":"","targeta":"","urlb":null,"urlbtext":"","targetb":"","urlc":null,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 1, 0, 5, '', '', 1, 3, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(76, 180, 'Futbol', 'futbol', '', '<p>El lunes se cerraba el mercado invernal en numerosos países europeos –en España se había clausurado el viernes—, ocasión que la UEFA aprovechó para lanzar a través de su página web y de las redes sociales una encuesta respecto a las mejores adquisiciones de los clubes. El máximo organismo futbolístico del continente cifraba su hipotético censo en más de 50 millones de seguidores y ayer mismo ofrecía los primeros resultados con una gran conclusión: el regreso de Fernando Torres al Atlético de Madrid es la gran operación del mes de enero.</p>\r\n<p>Wilfried Bony, Seydou Doumbia, Xherdan Shaqiri y André Schurrle también aparecen en el Top 5 europeo, tras fichar respectivamente por Manchester City, Roma, Inter y Wolfsburgo, pero el nombre y la imagen del delantero rojiblanco son los primeros que se registran.</p>\r\n<p>“En una emotiva despedida antes de marcharse al Liverpool, Torres dijo: “Espero que esto no sea un adiós, sino un hasta luego”. Siete años y medio después, el de Fuenlabrada vuelve a casa y ya ha dejado su huella. Torres ya tiene 30 años, pero para los seguidores rojiblancos siempre será El Niño”, explica la propia UEFA al presentar los resultados.</p>\r\n<div style="margin: 0px; padding: 0px; border: 0px none; color: #000000; font-family: Tahoma, Geneva, sans-serif; font-size: medium; line-height: normal;"><br style="margin: 0px; padding: 0px; border: 0px none;" /><br style="margin: 0px; padding: 0px; border: 0px none;" />Leer más:<a href="http://www.marca.com/2015/02/05/futbol/equipos/atletico/1423120231.html?cid=FCOPY33701" style="margin: 0px; padding: 0px; border: 0px none; color: #25adda;">Fernando Torres, mejor adquisición del mercado invernal - MARCA.com</a></div>', '', 1, 0, 0, 78, '2015-02-05 12:08:32', 894, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2015-02-05 12:08:32', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":null,"urlatext":"","targeta":"","urlb":null,"urlbtext":"","targetb":"","urlc":null,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 1, 0, 3, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(77, 181, 'Basquet', 'basquet', '', '<p>El baloncesto, basquetbol o básquetbol (del inglés basketball; de basket, ''canasta'', y ball, ''pelota''),<sup id="cite_ref-basketbol_sin_tilde_1-0">Nota 1</sup> o simplementebásquet,<sup id="cite_ref-2">1</sup> es un deporte de equipo que se puede desarrollar tanto en pista cubierta como en descubierta, en el que dos conjuntos de cinco jugadores cada uno, intentan anotar puntos, también llamados canastas o dobles y/o triples introduciendo un balón en un aro colocado a 3,05 metros del suelo del que cuelga una red, lo que le da un aspecto de cesta o canasta.</p>\r\n<p style="margin: 0.5em 0px; line-height: 22.3999996185303px; color: #252525; font-family: sans-serif; font-size: 14px;">Las federaciones nacionales de los países hispanohablantes del Caribe y Centroamérica, México, Colombia, Venezuela, Perú,España y Guinea Ecuatorial, lo denominan baloncesto.Las federaciones nacionales de los demás países sudamericanos de habla hispana lo denominan básquetbol.<sup id="cite_ref-3">2</sup> La Asociación panamericana (FIBA) utiliza en español la denominación baloncesto, mientras que la Asociación sudamericana (ABASU) utiliza la denominación básquetbol. También es llamado basquetbol <sup id="cite_ref-basketbol_sin_tilde_1-1">Nota 1</sup> obásquet, sobre todo en la Argentina y Perú, por la castellanización de su nombre original en inglés: basketball.<sup id="cite_ref-4" class="reference" style="line-height: 1em; unicode-bidi: -webkit-isolate;"><a href="http://es.wikipedia.org/wiki/Baloncesto#cite_note-4" style="color: #0b0080; white-space: nowrap; background: none;"><br /></a></sup></p>', '', 1, 0, 0, 78, '2015-02-05 12:11:58', 894, '', '2015-02-05 12:13:31', 894, 0, '0000-00-00 00:00:00', '2015-02-05 12:11:58', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":null,"urlatext":"","targeta":"","urlb":null,"urlbtext":"","targetb":"","urlc":null,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 2, 0, 2, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(78, 182, 'Handbol', 'handbol', '', '<p>L''handbol és un <a href="http://ca.wikipedia.org/wiki/Esports_d%27equip" title="Esports d''equip">esport de conjunt</a> que es practica amb les mans entre dos <a href="http://ca.wikipedia.org/w/index.php?title=Equip&amp;action=edit&amp;redlink=1" title="Equip (encara no existeix)">equips</a>. L''objectiu és introduir la pilota a la porteria contrària i evitar que l''introdueixin a la porteria del teu equip. Per aconseguir-ho s''utilitzen <a href="http://ca.wikipedia.org/w/index.php?title=Passada&amp;action=edit&amp;redlink=1" title="Passada (encara no existeix)">passades</a> i, en general, <a href="http://ca.wikipedia.org/w/index.php?title=Jugada&amp;action=edit&amp;redlink=1" title="Jugada (encara no existeix)">jugades</a>, que acaben amb un llançament. L''handbol de set és el que es juga habitualment en l''actualitat, i és <a href="http://ca.wikipedia.org/wiki/Esports_ol%C3%ADmpics" title="Esports olímpics">esport olímpic</a> des de l''any 1972. Juguen a cada equip sis <a href="http://ca.wikipedia.org/w/index.php?title=Jugador&amp;action=edit&amp;redlink=1" title="Jugador (encara no existeix)">jugadors</a> de camp i un porter. Se sol practicar en un <a href="http://ca.wikipedia.org/wiki/Pavell%C3%B3_esportiu" title="Pavelló esportiu">pavelló esportiu</a> tancat i es caracteritza pel joc ràpid i l''elevat nombre de <a href="http://ca.wikipedia.org/wiki/Gol" title="Gol">gols</a> que es marquen (normalment més de 20 gols cada equip). L''espai de l''àrea està reservat per al porter. Cap jugador de camp hi pot entrar de forma intencionada o per obtenir avantatge.</p>', '', 1, 0, 0, 78, '2015-02-05 12:14:22', 894, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2015-02-05 12:14:22', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":null,"urlatext":"","targeta":"","urlb":null,"urlbtext":"","targetb":"","urlc":null,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 1, 0, 1, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(79, 183, 'Tenis', 'tenis', '', '<p>El serbio Novak Djokovic, ganador por quinta vez del Abierto de Australia, se disparó hasta los 13.045 puntos en cabeza de la clasificación mundial de tenis, y el finalista derrotado, el británico Andy Murray, gana dos puestos y se sitúa cuarto, a solo 230 puntos del español Rafa Nadal.</p>\r\n<p>El canadiense Milos Raonic asciende también dos plazas y alcanza el mejor puesto de su carrera, el sexto, mientras que el polaco Stan Wawrinkra pierde cinco y está noveno, justo por delante del español David Ferrer, que continúa cerrando el Top-10.</p>', '', 1, 0, 0, 78, '2015-02-05 12:15:39', 894, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2015-02-05 12:15:39', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":null,"urlatext":"","targeta":"","urlb":null,"urlbtext":"","targetb":"","urlc":null,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 1, 0, 0, '', '', 1, 1, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(80, 185, 'Impressores 3D', 'impressores-3d', '', '<p>\r\n	Una&nbsp;impressora 3D&nbsp;és una màquina que serveix per produir objectes&nbsp;3D&nbsp;físics d''un model virtual creat per un ordinador. Sorgeixen amb la idea de convertir arxius de disseny assistit per computador de tipus&nbsp;CAD&nbsp;en prototips reals. En l''actualitat són utilitzats per la prefabricació de peces o components, en sectors com l''arquitectura&nbsp;i el&nbsp;disseny industrial. El sector en què aquest tipus d''eines resulta més comú és el de les&nbsp;pròtesis&nbsp;mèdiques, on resulten ideals donada la facilitat per adaptar cada peça fabricada a les característiques exactes de cada pacient.</p>\r\n', '', 1, 0, 0, 14, '2015-02-12 11:39:40', 894, '', '2015-02-12 11:39:54', 894, 0, '0000-00-00 00:00:00', '2015-02-12 11:39:40', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":null,"urlatext":"","targeta":"","urlb":null,"urlbtext":"","targetb":"","urlc":null,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 2, 0, 3, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(81, 186, 'Google Glass', 'google-glass', '', '<p style="margin: 0.5em 0px; line-height: 22.3999996185303px; color: rgb(37, 37, 37); font-family: sans-serif; font-size: 14px;">\r\n	<b>Google Glass</b>&nbsp;(estilitzat com a GLΛSS) són unes ulleres de&nbsp;<a href="http://ca.wikipedia.org/wiki/Realitat_augmentada" style="text-decoration: none; color: rgb(11, 0, 128); background: none;" title="Realitat augmentada">realitat augmentada</a>&nbsp;desenvolupades per&nbsp;<a href="http://ca.wikipedia.org/wiki/Google" style="text-decoration: none; color: rgb(11, 0, 128); background: none;" title="Google">Google</a>&nbsp;que funcionen com un ordinador portàtil, amb una pantalla HMD muntada davant dels ulls,<sup class="reference" id="cite_ref-1" style="line-height: 1em; unicode-bidi: -webkit-isolate;"><a href="http://ca.wikipedia.org/wiki/Google_Glass#cite_note-1" style="text-decoration: none; color: rgb(11, 0, 128); white-space: nowrap; background: none;">[1]</a></sup>&nbsp;dins del projecte de recerca i desenvolupament Glass, amb la missió de produir un ordinador ubic per al mercat de masses.</p>\r\n<p style="margin: 0.5em 0px; line-height: 22.3999996185303px; color: rgb(37, 37, 37); font-family: sans-serif; font-size: 14px;">\r\n	Google Glass mostra la informació disponible dels usuaris de mòbil intel·ligent, sense haver d''utilitzar les mans, permetent l''accés a Internet amb la utilització i reconeixement d''ordres de veu. El sistema operatiu d''aquestes ulleres de realitat augmentada és&nbsp;<a href="http://ca.wikipedia.org/wiki/Android" style="text-decoration: none; color: rgb(11, 0, 128); background: none;" title="Android">Android</a>.</p>\r\n', '', 1, 0, 0, 14, '2015-02-12 11:44:05', 894, '', '0000-00-00 00:00:00', 0, 894, '2015-02-12 11:44:21', '2015-02-12 11:44:05', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":null,"urlatext":"","targeta":"","urlb":null,"urlbtext":"","targetb":"","urlc":null,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 1, 0, 2, '', '', 1, 1, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(82, 187, 'Drons', 'drons', '', '<p style="margin: 0.5em 0px; line-height: 22.3999996185303px; color: rgb(37, 37, 37); font-family: sans-serif; font-size: 14px;">\r\n	Un&nbsp;<b>vehículo aéreo no tripulado</b>&nbsp;(VANT) o&nbsp;<b>dron</b><sup class="reference" id="cite_ref-1" style="line-height: 1em; unicode-bidi: -webkit-isolate;"><a href="http://es.wikipedia.org/wiki/Veh%C3%ADculo_a%C3%A9reo_no_tripulado#cite_note-1" style="text-decoration: none; color: rgb(11, 0, 128); white-space: nowrap; background: none;">nota 1</a></sup>&nbsp;es una&nbsp;<a href="http://es.wikipedia.org/wiki/Aeronave" style="text-decoration: none; color: rgb(11, 0, 128); background: none;" title="Aeronave">aeronave</a>&nbsp;que vuela sin&nbsp;<a href="http://es.wikipedia.org/wiki/Tripulaci%C3%B3n" style="text-decoration: none; color: rgb(11, 0, 128); background: none;" title="Tripulación">tripulación</a>.</p>\r\n<p style="margin: 0.5em 0px; line-height: 22.3999996185303px; color: rgb(37, 37, 37); font-family: sans-serif; font-size: 14px;">\r\n	Aunque hay VANT de uso civil, también son usados en aplicaciones&nbsp;<a href="http://es.wikipedia.org/wiki/Militar" style="text-decoration: none; color: rgb(11, 0, 128); background: none;" title="Militar">militares</a>, donde son denominados&nbsp;<a href="http://es.wikipedia.org/wiki/Veh%C3%ADculo_a%C3%A9reo_de_combate_no_tripulado" style="text-decoration: none; color: rgb(11, 0, 128); background: none;" title="Vehículo aéreo de combate no tripulado">vehículo aéreo de combate no tripulado</a>&nbsp;—<i>UCAV</i>&nbsp;por su nombre en&nbsp;<a href="http://es.wikipedia.org/wiki/Idioma_ingl%C3%A9s" style="text-decoration: none; color: rgb(11, 0, 128); background: none;" title="Idioma inglés">inglés</a>—. Para distinguir los VANT de los misiles, un VANT se define como un vehículo sin tripulación reutilizable, capaz de mantener un nivel de vuelo controlado y sostenido, y propulsado por un&nbsp;<a href="http://es.wikipedia.org/wiki/Motor_de_explosi%C3%B3n" style="text-decoration: none; color: rgb(11, 0, 128); background: none;" title="Motor de explosión">motor de explosión</a>&nbsp;o&nbsp;<a href="http://es.wikipedia.org/wiki/Motor_de_reacci%C3%B3n" style="text-decoration: none; color: rgb(11, 0, 128); background: none;" title="Motor de reacción">de reacción</a>. Por tanto, los&nbsp;<a href="http://es.wikipedia.org/wiki/Misil_de_crucero" style="text-decoration: none; color: rgb(11, 0, 128); background: none;" title="Misil de crucero">misiles de crucero</a>&nbsp;no son considerados VANT porque, como la mayoría de los&nbsp;<a href="http://es.wikipedia.org/wiki/Misil" style="text-decoration: none; color: rgb(11, 0, 128); background: none;" title="Misil">misiles</a>, el propio vehículo es un arma que no se puede reutilizar, a pesar de que también es no tripulado y en algunos casos guiado remotamente.</p>\r\n', '', 1, 0, 0, 14, '2015-02-12 11:47:42', 894, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2015-02-12 11:47:42', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":null,"urlatext":"","targeta":"","urlb":null,"urlbtext":"","targetb":"","urlc":null,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 1, 0, 1, '', '', 1, 1, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(83, 188, 'Televisors 4k i pantalla curva', 'televisors-4k-i-pantalla-curva', '', '<p style="margin: 20px 0px 0px; color: rgb(51, 51, 51); font-family: ''Lucida Grande'', Arial, ''Helvetica Neue'', sans-serif; font-size: 14px; line-height: 24px;">\r\n	<strong>LG</strong>&nbsp;va a tener un IFA 2014 bastante movido, al margen de teléfonos y&nbsp;<a href="http://www.xataka.com/accesorios/lg-g-watch-r-la-respuesta-de-los-coreanos-al-moto-360" style="color: rgb(75, 138, 32); text-decoration: none; outline: none;">relojes con diseño circular</a>, también esperamos noticias interesantes relativas a televisores. Por lo pronto ya ha anunciado la puesta en el mercado de dos nuevos televisores&nbsp;<strong>OLED</strong>&nbsp;con lo último en tecnología, a precio alto, pero menos de lo esperado.</p>\r\n<p style="margin: 20px 0px 0px; color: rgb(51, 51, 51); font-family: ''Lucida Grande'', Arial, ''Helvetica Neue'', sans-serif; font-size: 14px; line-height: 24px;">\r\n	Hablamos de un par de modelos con&nbsp;<strong>paneles curvos y resolución 4K</strong>, posiblemente serán los primeros en el mercado en aunar todas estas especificaciones y tecnología. Eso sí, ninguno de ellos es especialmente pequeño, ya que nos vamos a&nbsp;<strong>77 y 65 pulgadas</strong>.</p>\r\n', '', 1, 0, 0, 14, '2015-02-12 11:49:17', 894, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2015-02-12 11:49:17', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":null,"urlatext":"","targeta":"","urlb":null,"urlbtext":"","targetb":"","urlc":null,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 1, 0, 0, '', '', 1, 1, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(84, 189, 'Català', 'catala', '', '<p>\r\n	Article en català</p>\r\n', '', 1, 0, 0, 9, '2015-02-24 10:59:01', 894, '', '2015-02-24 12:03:32', 894, 0, '0000-00-00 00:00:00', '2015-02-24 10:59:01', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":null,"urlatext":"","targeta":"","urlb":null,"urlbtext":"","targetb":"","urlc":null,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 2, 0, 4, '', '', 1, 2, '{"robots":"","author":"","rights":"","xreference":""}', 0, 'ca_Es', ''),
(85, 190, 'Español', 'espanol', '', '<p>\r\n	Articulo en español</p>\r\n', '', -2, 0, 0, 9, '2015-02-24 10:59:29', 894, '', '2015-02-24 11:34:31', 894, 0, '0000-00-00 00:00:00', '2015-02-24 10:59:29', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":null,"urlatext":"","targeta":"","urlb":null,"urlbtext":"","targetb":"","urlc":null,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 2, 0, 1, '', '', 1, 15, '{"robots":"","author":"","rights":"","xreference":""}', 0, 'es-ES', ''),
(86, 191, 'English', 'english', '', '<p>\r\n	Article in english</p>\r\n', '', 1, 0, 0, 9, '2015-02-24 10:59:57', 894, '', '2015-02-24 12:03:56', 894, 0, '0000-00-00 00:00:00', '2015-02-24 10:59:57', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":null,"urlatext":"","targeta":"","urlb":null,"urlbtext":"","targetb":"","urlc":null,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 2, 0, 3, '', '', 1, 2, '{"robots":"","author":"","rights":"","xreference":""}', 0, 'en-GB', ''),
(87, 192, 'Español', 'esp', '', '<p>\r\n	Español</p>\r\n', '', 1, 0, 0, 9, '2015-02-24 12:11:07', 894, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2015-02-24 12:11:07', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":null,"urlatext":"","targeta":"","urlb":null,"urlbtext":"","targetb":"","urlc":null,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 1, 0, 2, '', '', 1, 14, '{"robots":"","author":"","rights":"","xreference":""}', 0, 'es-ES', ''),
(88, 193, 'Català', 'cat', '', '<p>\r\n	Català</p>\r\n', '', 1, 0, 0, 9, '2015-02-24 12:11:31', 894, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2015-02-24 12:11:31', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":null,"urlatext":"","targeta":"","urlb":null,"urlbtext":"","targetb":"","urlc":null,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 1, 0, 1, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, 'ca_Es', ''),
(89, 194, 'English', 'eng', '', '<p>\r\n	English</p>\r\n', '', 1, 0, 0, 9, '2015-02-24 12:12:11', 894, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2015-02-24 12:12:11', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":null,"urlatext":"","targeta":"","urlb":null,"urlbtext":"","targetb":"","urlc":null,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 1, 0, 0, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, 'en-GB', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `onr_content_frontpage`
--

CREATE TABLE IF NOT EXISTS `onr_content_frontpage` (
  `content_id` int(11) NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`content_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `onr_content_frontpage`
--

INSERT INTO `onr_content_frontpage` (`content_id`, `ordering`) VALUES
(8, 2),
(24, 1),
(35, 4),
(50, 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `onr_content_rating`
--

CREATE TABLE IF NOT EXISTS `onr_content_rating` (
  `content_id` int(11) NOT NULL DEFAULT '0',
  `rating_sum` int(10) unsigned NOT NULL DEFAULT '0',
  `rating_count` int(10) unsigned NOT NULL DEFAULT '0',
  `lastip` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`content_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `onr_core_log_searches`
--

CREATE TABLE IF NOT EXISTS `onr_core_log_searches` (
  `search_term` varchar(128) NOT NULL DEFAULT '',
  `hits` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `onr_extensions`
--

CREATE TABLE IF NOT EXISTS `onr_extensions` (
  `extension_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `type` varchar(20) NOT NULL,
  `element` varchar(100) NOT NULL,
  `folder` varchar(100) NOT NULL,
  `client_id` tinyint(3) NOT NULL,
  `enabled` tinyint(3) NOT NULL DEFAULT '1',
  `access` int(10) unsigned NOT NULL DEFAULT '1',
  `protected` tinyint(3) NOT NULL DEFAULT '0',
  `manifest_cache` text NOT NULL,
  `params` text NOT NULL,
  `custom_data` text NOT NULL,
  `system_data` text NOT NULL,
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) DEFAULT '0',
  `state` int(11) DEFAULT '0',
  PRIMARY KEY (`extension_id`),
  KEY `element_clientid` (`element`,`client_id`),
  KEY `element_folder_clientid` (`element`,`folder`,`client_id`),
  KEY `extension` (`type`,`element`,`folder`,`client_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=812 ;

--
-- Volcado de datos para la tabla `onr_extensions`
--

INSERT INTO `onr_extensions` (`extension_id`, `name`, `type`, `element`, `folder`, `client_id`, `enabled`, `access`, `protected`, `manifest_cache`, `params`, `custom_data`, `system_data`, `checked_out`, `checked_out_time`, `ordering`, `state`) VALUES
(1, 'com_mailto', 'component', 'com_mailto', '', 0, 1, 1, 1, '{"legacy":false,"name":"com_mailto","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_MAILTO_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(2, 'com_wrapper', 'component', 'com_wrapper', '', 0, 1, 1, 1, '{"legacy":false,"name":"com_wrapper","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.\\n\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_WRAPPER_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(3, 'com_admin', 'component', 'com_admin', '', 1, 1, 1, 1, '{"legacy":false,"name":"com_admin","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.\\n\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_ADMIN_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(4, 'com_banners', 'component', 'com_banners', '', 1, 1, 1, 0, '{"legacy":false,"name":"com_banners","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.\\n\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_BANNERS_XML_DESCRIPTION","group":""}', '{"purchase_type":"3","track_impressions":"0","track_clicks":"0","metakey_prefix":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(5, 'com_cache', 'component', 'com_cache', '', 1, 1, 1, 1, '{"legacy":false,"name":"com_cache","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_CACHE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(6, 'com_categories', 'component', 'com_categories', '', 1, 1, 1, 1, '{"legacy":false,"name":"com_categories","type":"component","creationDate":"December 2007","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_CATEGORIES_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(7, 'com_checkin', 'component', 'com_checkin', '', 1, 1, 1, 1, '{"legacy":false,"name":"com_checkin","type":"component","creationDate":"Unknown","author":"Joomla! Project","copyright":"(C) 2005 - 2008 Open Source Matters. All rights reserved.\\n\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_CHECKIN_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(8, 'com_contact', 'component', 'com_contact', '', 1, 1, 1, 0, '{"legacy":false,"name":"com_contact","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.\\n\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_CONTACT_XML_DESCRIPTION","group":""}', '{"show_contact_category":"hide","show_contact_list":"0","presentation_style":"sliders","show_name":"1","show_position":"1","show_email":"0","show_street_address":"1","show_suburb":"1","show_state":"1","show_postcode":"1","show_country":"1","show_telephone":"1","show_mobile":"1","show_fax":"1","show_webpage":"1","show_misc":"1","show_image":"1","image":"","allow_vcard":"0","show_articles":"0","show_profile":"0","show_links":"0","linka_name":"","linkb_name":"","linkc_name":"","linkd_name":"","linke_name":"","contact_icons":"0","icon_address":"","icon_email":"","icon_telephone":"","icon_mobile":"","icon_fax":"","icon_misc":"","show_headings":"1","show_position_headings":"1","show_email_headings":"0","show_telephone_headings":"1","show_mobile_headings":"0","show_fax_headings":"0","allow_vcard_headings":"0","show_suburb_headings":"1","show_state_headings":"1","show_country_headings":"1","show_email_form":"1","show_email_copy":"1","banned_email":"","banned_subject":"","banned_text":"","validate_session":"1","custom_reply":"0","redirect":"","show_category_crumb":"0","metakey":"","metadesc":"","robots":"","author":"","rights":"","xreference":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(9, 'com_cpanel', 'component', 'com_cpanel', '', 1, 1, 1, 1, '{"legacy":false,"name":"com_cpanel","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_CPANEL_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10, 'com_installer', 'component', 'com_installer', '', 1, 1, 1, 1, '{"legacy":false,"name":"com_installer","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_INSTALLER_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(11, 'com_languages', 'component', 'com_languages', '', 1, 1, 1, 1, '{"legacy":false,"name":"com_languages","type":"component","creationDate":"2006","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.\\n\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_LANGUAGES_XML_DESCRIPTION","group":""}', '{"administrator":"es-ES","site":"es-ES"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(12, 'com_login', 'component', 'com_login', '', 1, 1, 1, 1, '{"legacy":false,"name":"com_login","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_LOGIN_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(13, 'com_media', 'component', 'com_media', '', 1, 1, 0, 1, '{"legacy":false,"name":"com_media","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_MEDIA_XML_DESCRIPTION","group":""}', '{"upload_extensions":"bmp,csv,doc,gif,ico,jpg,jpeg,odg,odp,ods,odt,pdf,png,ppt,swf,txt,xcf,xls,BMP,CSV,DOC,GIF,ICO,JPG,JPEG,ODG,ODP,ODS,ODT,PDF,PNG,PPT,SWF,TXT,XCF,XLS","upload_maxsize":"10","file_path":"images","image_path":"images","restrict_uploads":"1","allowed_media_usergroup":"3","check_mime":"1","image_extensions":"bmp,gif,jpg,png","ignore_extensions":"","upload_mime":"image\\/jpeg,image\\/gif,image\\/png,image\\/bmp,application\\/x-shockwave-flash,application\\/msword,application\\/excel,application\\/pdf,application\\/powerpoint,text\\/plain,application\\/x-zip","upload_mime_illegal":"text\\/html","enable_flash":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(14, 'com_menus', 'component', 'com_menus', '', 1, 1, 1, 1, '{"legacy":false,"name":"com_menus","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_MENUS_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(15, 'com_messages', 'component', 'com_messages', '', 1, 1, 1, 1, '{"legacy":false,"name":"com_messages","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_MESSAGES_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(16, 'com_modules', 'component', 'com_modules', '', 1, 1, 1, 1, '{"legacy":false,"name":"com_modules","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_MODULES_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(17, 'com_newsfeeds', 'component', 'com_newsfeeds', '', 1, 1, 1, 0, '{"legacy":false,"name":"com_newsfeeds","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_NEWSFEEDS_XML_DESCRIPTION","group":""}', '{"show_feed_image":"1","show_feed_description":"1","show_item_description":"1","feed_word_count":"0","show_headings":"1","show_name":"1","show_articles":"0","show_link":"1","show_description":"1","show_description_image":"1","display_num":"","show_pagination_limit":"1","show_pagination":"1","show_pagination_results":"1","show_cat_items":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(18, 'com_plugins', 'component', 'com_plugins', '', 1, 1, 1, 1, '{"legacy":false,"name":"com_plugins","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_PLUGINS_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(19, 'com_search', 'component', 'com_search', '', 1, 1, 1, 1, '{"legacy":false,"name":"com_search","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.\\n\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_SEARCH_XML_DESCRIPTION","group":""}', '{"enabled":"0","show_date":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(20, 'com_templates', 'component', 'com_templates', '', 1, 1, 1, 1, '{"legacy":false,"name":"com_templates","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_TEMPLATES_XML_DESCRIPTION","group":""}', '{"template_positions_display":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(21, 'com_weblinks', 'component', 'com_weblinks', '', 1, 1, 1, 0, '{"legacy":false,"name":"com_weblinks","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.\\n\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_WEBLINKS_XML_DESCRIPTION","group":""}', '{"show_comp_description":"1","comp_description":"","show_link_hits":"1","show_link_description":"1","show_other_cats":"0","show_headings":"0","show_numbers":"0","show_report":"1","count_clicks":"1","target":"0","link_icons":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(22, 'com_content', 'component', 'com_content', '', 1, 1, 0, 1, '{"legacy":false,"name":"com_content","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_CONTENT_XML_DESCRIPTION","group":""}', '{"article_layout":"_:default","show_title":"1","link_titles":"1","show_intro":"1","show_category":"1","link_category":"1","show_parent_category":"0","link_parent_category":"0","show_author":"1","link_author":"0","show_create_date":"0","show_modify_date":"0","show_publish_date":"1","show_item_navigation":"1","show_vote":"0","show_readmore":"1","show_readmore_title":"1","readmore_limit":"100","show_icons":"1","show_print_icon":"1","show_email_icon":"1","show_hits":"1","show_noauth":"0","show_publishing_options":"1","show_article_options":"1","show_urls_images_frontend":"0","show_urls_images_backend":"1","targeta":0,"targetb":0,"targetc":0,"float_intro":"left","float_fulltext":"left","category_layout":"_:blog","show_category_title":"0","show_description":"0","show_description_image":"0","maxLevel":"1","show_empty_categories":"0","show_no_articles":"1","show_subcat_desc":"1","show_cat_num_articles":"0","show_base_description":"1","maxLevelcat":"-1","show_empty_categories_cat":"0","show_subcat_desc_cat":"1","show_cat_num_articles_cat":"1","num_leading_articles":"1","num_intro_articles":"4","num_columns":"2","num_links":"4","multi_column_order":"0","show_subcategory_content":"0","show_pagination_limit":"1","filter_field":"hide","show_headings":"1","list_show_date":"0","date_format":"","list_show_hits":"1","list_show_author":"1","orderby_pri":"order","orderby_sec":"rdate","order_date":"published","show_pagination":"2","show_pagination_results":"1","show_feed_link":"1","feed_summary":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(23, 'com_config', 'component', 'com_config', '', 1, 1, 0, 1, '{"legacy":false,"name":"com_config","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_CONFIG_XML_DESCRIPTION","group":""}', '{"filters":{"1":{"filter_type":"NH","filter_tags":"","filter_attributes":""},"6":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"7":{"filter_type":"NONE","filter_tags":"","filter_attributes":""},"2":{"filter_type":"NH","filter_tags":"","filter_attributes":""},"3":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"4":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"5":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"10":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"12":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"8":{"filter_type":"NONE","filter_tags":"","filter_attributes":""}}}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(24, 'com_redirect', 'component', 'com_redirect', '', 1, 1, 0, 1, '{"legacy":false,"name":"com_redirect","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_REDIRECT_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(25, 'com_users', 'component', 'com_users', '', 1, 1, 0, 1, '{"legacy":false,"name":"com_users","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_USERS_XML_DESCRIPTION","group":""}', '{"allowUserRegistration":"1","new_usertype":"2","useractivation":"1","frontend_userparams":"1","mailSubjectPrefix":"","mailBodySuffix":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(27, 'com_finder', 'component', 'com_finder', '', 1, 1, 0, 0, '{"legacy":false,"name":"com_finder","type":"component","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_FINDER_XML_DESCRIPTION","group":""}', '{"show_description":"1","description_length":255,"allow_empty_query":"0","show_url":"1","show_advanced":"1","expand_advanced":"0","show_date_filters":"0","highlight_terms":"1","opensearch_name":"","opensearch_description":"","batch_size":"50","memory_table_limit":30000,"title_multiplier":"1.7","text_multiplier":"0.7","meta_multiplier":"1.2","path_multiplier":"2.0","misc_multiplier":"0.3","stemmer":"snowball"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(28, 'com_joomlaupdate', 'component', 'com_joomlaupdate', '', 1, 1, 0, 1, '{"legacy":false,"name":"com_joomlaupdate","type":"component","creationDate":"February 2012","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_JOOMLAUPDATE_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(100, 'PHPMailer', 'library', 'phpmailer', '', 0, 1, 1, 1, '{"legacy":false,"name":"PHPMailer","type":"library","creationDate":"2001","author":"PHPMailer","copyright":"(c) 2001-2003, Brent R. Matzelle, (c) 2004-2009, Andy Prevost. All Rights Reserved., (c) 2010-2011, Jim Jagielski. All Rights Reserved.","authorEmail":"jimjag@gmail.com","authorUrl":"https:\\/\\/code.google.com\\/a\\/apache-extras.org\\/p\\/phpmailer\\/","version":"5.2","description":"LIB_PHPMAILER_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(101, 'SimplePie', 'library', 'simplepie', '', 0, 1, 1, 1, '{"legacy":false,"name":"SimplePie","type":"library","creationDate":"2004","author":"SimplePie","copyright":"Copyright (c) 2004-2009, Ryan Parman and Geoffrey Sneddon","authorEmail":"","authorUrl":"http:\\/\\/simplepie.org\\/","version":"1.2","description":"LIB_SIMPLEPIE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(102, 'phputf8', 'library', 'phputf8', '', 0, 1, 1, 1, '{"legacy":false,"name":"phputf8","type":"library","creationDate":"2006","author":"Harry Fuecks","copyright":"Copyright various authors","authorEmail":"hfuecks@gmail.com","authorUrl":"http:\\/\\/sourceforge.net\\/projects\\/phputf8","version":"0.5","description":"LIB_PHPUTF8_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(103, 'Joomla! Platform', 'library', 'joomla', '', 0, 1, 1, 1, '{"legacy":false,"name":"Joomla! Platform","type":"library","creationDate":"2008","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"http:\\/\\/www.joomla.org","version":"11.4","description":"LIB_JOOMLA_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(200, 'mod_articles_archive', 'module', 'mod_articles_archive', '', 0, 1, 1, 1, '{"legacy":false,"name":"mod_articles_archive","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters.\\n\\t\\tAll rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_ARTICLES_ARCHIVE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(201, 'mod_articles_latest', 'module', 'mod_articles_latest', '', 0, 1, 1, 1, '{"legacy":false,"name":"mod_articles_latest","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_LATEST_NEWS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(202, 'mod_articles_popular', 'module', 'mod_articles_popular', '', 0, 1, 1, 0, '{"legacy":false,"name":"mod_articles_popular","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_POPULAR_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(203, 'mod_banners', 'module', 'mod_banners', '', 0, 1, 1, 1, '{"legacy":false,"name":"mod_banners","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_BANNERS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(204, 'mod_breadcrumbs', 'module', 'mod_breadcrumbs', '', 0, 1, 1, 1, '{"legacy":false,"name":"mod_breadcrumbs","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_BREADCRUMBS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(205, 'mod_custom', 'module', 'mod_custom', '', 0, 1, 1, 1, '{"legacy":false,"name":"mod_custom","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_CUSTOM_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(206, 'mod_feed', 'module', 'mod_feed', '', 0, 1, 1, 1, '{"legacy":false,"name":"mod_feed","type":"module","creationDate":"July 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_FEED_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(207, 'mod_footer', 'module', 'mod_footer', '', 0, 1, 1, 1, '{"legacy":false,"name":"mod_footer","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_FOOTER_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(208, 'mod_login', 'module', 'mod_login', '', 0, 1, 1, 1, '{"legacy":false,"name":"mod_login","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_LOGIN_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(209, 'mod_menu', 'module', 'mod_menu', '', 0, 1, 1, 1, '{"legacy":false,"name":"mod_menu","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_MENU_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(210, 'mod_articles_news', 'module', 'mod_articles_news', '', 0, 1, 1, 0, '{"legacy":false,"name":"mod_articles_news","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_ARTICLES_NEWS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(211, 'mod_random_image', 'module', 'mod_random_image', '', 0, 1, 1, 0, '{"legacy":false,"name":"mod_random_image","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_RANDOM_IMAGE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(212, 'mod_related_items', 'module', 'mod_related_items', '', 0, 1, 1, 0, '{"legacy":false,"name":"mod_related_items","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_RELATED_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(213, 'mod_search', 'module', 'mod_search', '', 0, 1, 1, 0, '{"legacy":false,"name":"mod_search","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_SEARCH_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(214, 'mod_stats', 'module', 'mod_stats', '', 0, 1, 1, 0, '{"legacy":false,"name":"mod_stats","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_STATS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(215, 'mod_syndicate', 'module', 'mod_syndicate', '', 0, 1, 1, 1, '{"legacy":false,"name":"mod_syndicate","type":"module","creationDate":"May 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_SYNDICATE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(216, 'mod_users_latest', 'module', 'mod_users_latest', '', 0, 1, 1, 1, '{"legacy":false,"name":"mod_users_latest","type":"module","creationDate":"December 2009","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_USERS_LATEST_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(217, 'mod_weblinks', 'module', 'mod_weblinks', '', 0, 1, 1, 0, '{"legacy":false,"name":"mod_weblinks","type":"module","creationDate":"July 2009","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_WEBLINKS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(218, 'mod_whosonline', 'module', 'mod_whosonline', '', 0, 1, 1, 0, '{"legacy":false,"name":"mod_whosonline","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_WHOSONLINE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(219, 'mod_wrapper', 'module', 'mod_wrapper', '', 0, 1, 1, 0, '{"legacy":false,"name":"mod_wrapper","type":"module","creationDate":"October 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_WRAPPER_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(220, 'mod_articles_category', 'module', 'mod_articles_category', '', 0, 1, 1, 1, '{"legacy":false,"name":"mod_articles_category","type":"module","creationDate":"February 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_ARTICLES_CATEGORY_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(221, 'mod_articles_categories', 'module', 'mod_articles_categories', '', 0, 1, 1, 1, '{"legacy":false,"name":"mod_articles_categories","type":"module","creationDate":"February 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_ARTICLES_CATEGORIES_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(222, 'mod_languages', 'module', 'mod_languages', '', 0, 1, 1, 1, '{"legacy":false,"name":"mod_languages","type":"module","creationDate":"February 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_LANGUAGES_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(223, 'mod_finder', 'module', 'mod_finder', '', 0, 1, 0, 0, '{"legacy":false,"name":"mod_finder","type":"module","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_FINDER_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(300, 'mod_custom', 'module', 'mod_custom', '', 1, 1, 1, 1, '{"legacy":false,"name":"mod_custom","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_CUSTOM_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(301, 'mod_feed', 'module', 'mod_feed', '', 1, 1, 1, 0, '{"legacy":false,"name":"mod_feed","type":"module","creationDate":"July 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_FEED_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(302, 'mod_latest', 'module', 'mod_latest', '', 1, 1, 1, 0, '{"legacy":false,"name":"mod_latest","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_LATEST_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(303, 'mod_logged', 'module', 'mod_logged', '', 1, 1, 1, 0, '{"legacy":false,"name":"mod_logged","type":"module","creationDate":"January 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_LOGGED_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(304, 'mod_login', 'module', 'mod_login', '', 1, 1, 1, 1, '{"legacy":false,"name":"mod_login","type":"module","creationDate":"March 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_LOGIN_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(305, 'mod_menu', 'module', 'mod_menu', '', 1, 1, 1, 0, '{"legacy":false,"name":"mod_menu","type":"module","creationDate":"March 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_MENU_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(307, 'mod_popular', 'module', 'mod_popular', '', 1, 1, 1, 0, '{"legacy":false,"name":"mod_popular","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_POPULAR_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(308, 'mod_quickicon', 'module', 'mod_quickicon', '', 1, 1, 1, 1, '{"legacy":false,"name":"mod_quickicon","type":"module","creationDate":"Nov 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_QUICKICON_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(309, 'mod_status', 'module', 'mod_status', '', 1, 1, 1, 0, '{"legacy":false,"name":"mod_status","type":"module","creationDate":"Feb 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_STATUS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(310, 'mod_submenu', 'module', 'mod_submenu', '', 1, 1, 1, 0, '{"legacy":false,"name":"mod_submenu","type":"module","creationDate":"Feb 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_SUBMENU_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(311, 'mod_title', 'module', 'mod_title', '', 1, 1, 1, 0, '{"legacy":false,"name":"mod_title","type":"module","creationDate":"Nov 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_TITLE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(312, 'mod_toolbar', 'module', 'mod_toolbar', '', 1, 1, 1, 1, '{"legacy":false,"name":"mod_toolbar","type":"module","creationDate":"Nov 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_TOOLBAR_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(313, 'mod_multilangstatus', 'module', 'mod_multilangstatus', '', 1, 1, 1, 0, '{"legacy":false,"name":"mod_multilangstatus","type":"module","creationDate":"September 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_MULTILANGSTATUS_XML_DESCRIPTION","group":""}', '{"cache":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(314, 'mod_version', 'module', 'mod_version', '', 1, 1, 1, 0, '{"legacy":false,"name":"mod_version","type":"module","creationDate":"January 2012","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_VERSION_XML_DESCRIPTION","group":""}', '{"format":"short","product":"1","cache":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(400, 'plg_authentication_gmail', 'plugin', 'gmail', 'authentication', 0, 0, 1, 0, '{"legacy":false,"name":"plg_authentication_gmail","type":"plugin","creationDate":"February 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_GMAIL_XML_DESCRIPTION","group":""}', '{"applysuffix":"0","suffix":"","verifypeer":"1","user_blacklist":""}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(401, 'plg_authentication_joomla', 'plugin', 'joomla', 'authentication', 0, 1, 1, 1, '{"legacy":false,"name":"plg_authentication_joomla","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_AUTH_JOOMLA_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(402, 'plg_authentication_ldap', 'plugin', 'ldap', 'authentication', 0, 0, 1, 0, '{"legacy":false,"name":"plg_authentication_ldap","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_LDAP_XML_DESCRIPTION","group":""}', '{"host":"","port":"389","use_ldapV3":"0","negotiate_tls":"0","no_referrals":"0","auth_method":"bind","base_dn":"","search_string":"","users_dn":"","username":"admin","password":"bobby7","ldap_fullname":"fullName","ldap_email":"mail","ldap_uid":"uid"}', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(404, 'plg_content_emailcloak', 'plugin', 'emailcloak', 'content', 0, 1, 1, 0, '{"legacy":false,"name":"plg_content_emailcloak","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_CONTENT_EMAILCLOAK_XML_DESCRIPTION","group":""}', '{"mode":"1"}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(405, 'plg_content_geshi', 'plugin', 'geshi', 'content', 0, 0, 1, 0, '{"legacy":false,"name":"plg_content_geshi","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"","authorUrl":"qbnz.com\\/highlighter","version":"2.5.0","description":"PLG_CONTENT_GESHI_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(406, 'plg_content_loadmodule', 'plugin', 'loadmodule', 'content', 0, 1, 1, 0, '{"legacy":false,"name":"plg_content_loadmodule","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_LOADMODULE_XML_DESCRIPTION","group":""}', '{"style":"xhtml"}', '', '', 0, '2011-09-18 15:22:50', 0, 0),
(407, 'plg_content_pagebreak', 'plugin', 'pagebreak', 'content', 0, 1, 1, 1, '{"legacy":false,"name":"plg_content_pagebreak","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_CONTENT_PAGEBREAK_XML_DESCRIPTION","group":""}', '{"title":"1","multipage_toc":"1","showall":"1"}', '', '', 0, '0000-00-00 00:00:00', 4, 0),
(408, 'plg_content_pagenavigation', 'plugin', 'pagenavigation', 'content', 0, 1, 1, 1, '{"legacy":false,"name":"plg_content_pagenavigation","type":"plugin","creationDate":"January 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_PAGENAVIGATION_XML_DESCRIPTION","group":""}', '{"position":"1"}', '', '', 0, '0000-00-00 00:00:00', 5, 0),
(409, 'plg_content_vote', 'plugin', 'vote', 'content', 0, 1, 1, 1, '{"legacy":false,"name":"plg_content_vote","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_VOTE_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 6, 0),
(410, 'plg_editors_codemirror', 'plugin', 'codemirror', 'editors', 0, 1, 1, 1, '{"legacy":false,"name":"plg_editors_codemirror","type":"plugin","creationDate":"28 March 2011","author":"Marijn Haverbeke","copyright":"","authorEmail":"N\\/A","authorUrl":"","version":"1.0","description":"PLG_CODEMIRROR_XML_DESCRIPTION","group":""}', '{"linenumbers":"0","tabmode":"indent"}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(411, 'plg_editors_none', 'plugin', 'none', 'editors', 0, 1, 1, 1, '{"legacy":false,"name":"plg_editors_none","type":"plugin","creationDate":"August 2004","author":"Unknown","copyright":"","authorEmail":"N\\/A","authorUrl":"","version":"2.5.0","description":"PLG_NONE_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(412, 'plg_editors_tinymce', 'plugin', 'tinymce', 'editors', 0, 1, 1, 1, '{"legacy":false,"name":"plg_editors_tinymce","type":"plugin","creationDate":"2005-2012","author":"Moxiecode Systems AB","copyright":"Moxiecode Systems AB","authorEmail":"N\\/A","authorUrl":"tinymce.moxiecode.com\\/","version":"3.5.4.1","description":"PLG_TINY_XML_DESCRIPTION","group":""}', '{"mode":"1","skin":"0","entity_encoding":"raw","lang_mode":"0","lang_code":"es","text_direction":"ltr","content_css":"1","content_css_custom":"","relative_urls":"1","newlines":"0","invalid_elements":"script,applet,iframe","extended_elements":"","toolbar":"top","toolbar_align":"left","html_height":"550","html_width":"750","resizing":"true","resize_horizontal":"false","element_path":"1","fonts":"1","paste":"1","searchreplace":"1","insertdate":"1","format_date":"%Y-%m-%d","inserttime":"1","format_time":"%H:%M:%S","colors":"1","table":"1","smilies":"1","media":"1","hr":"1","directionality":"1","fullscreen":"1","style":"1","layer":"1","xhtmlxtras":"1","visualchars":"1","nonbreaking":"1","template":"1","blockquote":"1","wordcount":"1","advimage":"1","advlink":"1","advlist":"1","autosave":"1","contextmenu":"1","inlinepopups":"1","custom_plugin":"","custom_button":""}', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(413, 'plg_editors-xtd_article', 'plugin', 'article', 'editors-xtd', 0, 1, 1, 1, '{"legacy":false,"name":"plg_editors-xtd_article","type":"plugin","creationDate":"October 2009","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_ARTICLE_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(414, 'plg_editors-xtd_image', 'plugin', 'image', 'editors-xtd', 0, 1, 1, 0, '{"legacy":false,"name":"plg_editors-xtd_image","type":"plugin","creationDate":"August 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_IMAGE_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(415, 'plg_editors-xtd_pagebreak', 'plugin', 'pagebreak', 'editors-xtd', 0, 1, 1, 0, '{"legacy":false,"name":"plg_editors-xtd_pagebreak","type":"plugin","creationDate":"August 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_EDITORSXTD_PAGEBREAK_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(416, 'plg_editors-xtd_readmore', 'plugin', 'readmore', 'editors-xtd', 0, 1, 1, 0, '{"legacy":false,"name":"plg_editors-xtd_readmore","type":"plugin","creationDate":"March 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_READMORE_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 4, 0),
(417, 'plg_search_categories', 'plugin', 'categories', 'search', 0, 1, 1, 0, '{"legacy":false,"name":"plg_search_categories","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_SEARCH_CATEGORIES_XML_DESCRIPTION","group":""}', '{"search_limit":"50","search_content":"1","search_archived":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(418, 'plg_search_contacts', 'plugin', 'contacts', 'search', 0, 1, 1, 0, '{"legacy":false,"name":"plg_search_contacts","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_SEARCH_CONTACTS_XML_DESCRIPTION","group":""}', '{"search_limit":"50","search_content":"1","search_archived":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(419, 'plg_search_content', 'plugin', 'content', 'search', 0, 1, 1, 0, '{"legacy":false,"name":"plg_search_content","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_SEARCH_CONTENT_XML_DESCRIPTION","group":""}', '{"search_limit":"50","search_content":"1","search_archived":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(420, 'plg_search_newsfeeds', 'plugin', 'newsfeeds', 'search', 0, 1, 1, 0, '{"legacy":false,"name":"plg_search_newsfeeds","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_SEARCH_NEWSFEEDS_XML_DESCRIPTION","group":""}', '{"search_limit":"50","search_content":"1","search_archived":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(421, 'plg_search_weblinks', 'plugin', 'weblinks', 'search', 0, 1, 1, 0, '{"legacy":false,"name":"plg_search_weblinks","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_SEARCH_WEBLINKS_XML_DESCRIPTION","group":""}', '{"search_limit":"50","search_content":"1","search_archived":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(422, 'plg_system_languagefilter', 'plugin', 'languagefilter', 'system', 0, 1, 1, 1, '{"legacy":false,"name":"plg_system_languagefilter","type":"plugin","creationDate":"July 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_SYSTEM_LANGUAGEFILTER_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(423, 'plg_system_p3p', 'plugin', 'p3p', 'system', 0, 1, 1, 1, '{"legacy":false,"name":"plg_system_p3p","type":"plugin","creationDate":"September 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_P3P_XML_DESCRIPTION","group":""}', '{"headers":"NOI ADM DEV PSAi COM NAV OUR OTRo STP IND DEM"}', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(424, 'plg_system_cache', 'plugin', 'cache', 'system', 0, 0, 1, 1, '{"legacy":false,"name":"plg_system_cache","type":"plugin","creationDate":"February 2007","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_CACHE_XML_DESCRIPTION","group":""}', '{"browsercache":"0","cachetime":"15"}', '', '', 0, '0000-00-00 00:00:00', 9, 0),
(425, 'plg_system_debug', 'plugin', 'debug', 'system', 0, 1, 1, 0, '{"legacy":false,"name":"plg_system_debug","type":"plugin","creationDate":"December 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_DEBUG_XML_DESCRIPTION","group":""}', '{"profile":"1","queries":"1","memory":"1","language_files":"1","language_strings":"1","strip-first":"1","strip-prefix":"","strip-suffix":""}', '', '', 0, '0000-00-00 00:00:00', 4, 0),
(426, 'plg_system_log', 'plugin', 'log', 'system', 0, 1, 1, 1, '{"legacy":false,"name":"plg_system_log","type":"plugin","creationDate":"April 2007","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_LOG_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 5, 0),
(427, 'plg_system_redirect', 'plugin', 'redirect', 'system', 0, 1, 1, 1, '{"legacy":false,"name":"plg_system_redirect","type":"plugin","creationDate":"April 2009","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_REDIRECT_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 6, 0);
INSERT INTO `onr_extensions` (`extension_id`, `name`, `type`, `element`, `folder`, `client_id`, `enabled`, `access`, `protected`, `manifest_cache`, `params`, `custom_data`, `system_data`, `checked_out`, `checked_out_time`, `ordering`, `state`) VALUES
(428, 'plg_system_remember', 'plugin', 'remember', 'system', 0, 1, 1, 1, '{"legacy":false,"name":"plg_system_remember","type":"plugin","creationDate":"April 2007","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_REMEMBER_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 7, 0),
(429, 'plg_system_sef', 'plugin', 'sef', 'system', 0, 1, 1, 0, '{"legacy":false,"name":"plg_system_sef","type":"plugin","creationDate":"December 2007","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_SEF_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 8, 0),
(430, 'plg_system_logout', 'plugin', 'logout', 'system', 0, 1, 1, 1, '{"legacy":false,"name":"plg_system_logout","type":"plugin","creationDate":"April 2009","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_SYSTEM_LOGOUT_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(431, 'plg_user_contactcreator', 'plugin', 'contactcreator', 'user', 0, 0, 1, 1, '{"legacy":false,"name":"plg_user_contactcreator","type":"plugin","creationDate":"August 2009","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_CONTACTCREATOR_XML_DESCRIPTION","group":""}', '{"autowebpage":"","category":"34","autopublish":"0"}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(432, 'plg_user_joomla', 'plugin', 'joomla', 'user', 0, 1, 1, 0, '{"legacy":false,"name":"plg_user_joomla","type":"plugin","creationDate":"December 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2009 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_USER_JOOMLA_XML_DESCRIPTION","group":""}', '{"autoregister":"1"}', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(433, 'plg_user_profile', 'plugin', 'profile', 'user', 0, 0, 1, 1, '{"legacy":false,"name":"plg_user_profile","type":"plugin","creationDate":"January 2008","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_USER_PROFILE_XML_DESCRIPTION","group":""}', '{"register-require_address1":"1","register-require_address2":"1","register-require_city":"1","register-require_region":"1","register-require_country":"1","register-require_postal_code":"1","register-require_phone":"1","register-require_website":"1","register-require_favoritebook":"1","register-require_aboutme":"1","register-require_tos":"1","register-require_dob":"1","profile-require_address1":"1","profile-require_address2":"1","profile-require_city":"1","profile-require_region":"1","profile-require_country":"1","profile-require_postal_code":"1","profile-require_phone":"1","profile-require_website":"1","profile-require_favoritebook":"1","profile-require_aboutme":"1","profile-require_tos":"1","profile-require_dob":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(434, 'plg_extension_joomla', 'plugin', 'joomla', 'extension', 0, 1, 1, 1, '{"legacy":false,"name":"plg_extension_joomla","type":"plugin","creationDate":"May 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_EXTENSION_JOOMLA_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(435, 'plg_content_joomla', 'plugin', 'joomla', 'content', 0, 1, 1, 0, '{"legacy":false,"name":"plg_content_joomla","type":"plugin","creationDate":"November 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_CONTENT_JOOMLA_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(436, 'plg_system_languagecode', 'plugin', 'languagecode', 'system', 0, 0, 1, 0, '{"legacy":false,"name":"plg_system_languagecode","type":"plugin","creationDate":"November 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_SYSTEM_LANGUAGECODE_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 10, 0),
(437, 'plg_quickicon_joomlaupdate', 'plugin', 'joomlaupdate', 'quickicon', 0, 1, 1, 1, '{"legacy":false,"name":"plg_quickicon_joomlaupdate","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_QUICKICON_JOOMLAUPDATE_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(438, 'plg_quickicon_extensionupdate', 'plugin', 'extensionupdate', 'quickicon', 0, 1, 1, 1, '{"legacy":false,"name":"plg_quickicon_extensionupdate","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_QUICKICON_EXTENSIONUPDATE_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(439, 'plg_captcha_recaptcha', 'plugin', 'recaptcha', 'captcha', 0, 1, 1, 0, '{"legacy":false,"name":"plg_captcha_recaptcha","type":"plugin","creationDate":"December 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_CAPTCHA_RECAPTCHA_XML_DESCRIPTION","group":""}', '{"public_key":"","private_key":"","theme":"clean"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(440, 'plg_system_highlight', 'plugin', 'highlight', 'system', 0, 1, 1, 0, '{"legacy":false,"name":"plg_system_highlight","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_SYSTEM_HIGHLIGHT_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 7, 0),
(441, 'plg_content_finder', 'plugin', 'finder', 'content', 0, 0, 1, 0, '{"legacy":false,"name":"plg_content_finder","type":"plugin","creationDate":"December 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_CONTENT_FINDER_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(442, 'plg_finder_categories', 'plugin', 'categories', 'finder', 0, 1, 1, 0, '{"legacy":false,"name":"plg_finder_categories","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_FINDER_CATEGORIES_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(443, 'plg_finder_contacts', 'plugin', 'contacts', 'finder', 0, 1, 1, 0, '{"legacy":false,"name":"plg_finder_contacts","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_FINDER_CONTACTS_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(444, 'plg_finder_content', 'plugin', 'content', 'finder', 0, 1, 1, 0, '{"legacy":false,"name":"plg_finder_content","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_FINDER_CONTENT_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(445, 'plg_finder_newsfeeds', 'plugin', 'newsfeeds', 'finder', 0, 1, 1, 0, '{"legacy":false,"name":"plg_finder_newsfeeds","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_FINDER_NEWSFEEDS_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 4, 0),
(446, 'plg_finder_weblinks', 'plugin', 'weblinks', 'finder', 0, 1, 1, 0, '{"legacy":false,"name":"plg_finder_weblinks","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_FINDER_WEBLINKS_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 5, 0),
(500, 'atomic', 'template', 'atomic', '', 0, 1, 1, 0, '{"legacy":false,"name":"atomic","type":"template","creationDate":"10\\/10\\/09","author":"Ron Severdia","copyright":"Copyright (C) 2005 - 2012 Open Source Matters, Inc. All rights reserved.","authorEmail":"contact@kontentdesign.com","authorUrl":"http:\\/\\/www.kontentdesign.com","version":"2.5.0","description":"TPL_ATOMIC_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(502, 'bluestork', 'template', 'bluestork', '', 1, 1, 1, 0, '{"legacy":false,"name":"bluestork","type":"template","creationDate":"07\\/02\\/09","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters, Inc. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"TPL_BLUESTORK_XML_DESCRIPTION","group":""}', '{"useRoundedCorners":"1","showSiteName":"0","textBig":"0","highContrast":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(503, 'beez_20', 'template', 'beez_20', '', 0, 1, 1, 0, '{"legacy":false,"name":"beez_20","type":"template","creationDate":"25 November 2009","author":"Angie Radtke","copyright":"Copyright (C) 2005 - 2012 Open Source Matters, Inc. All rights reserved.","authorEmail":"a.radtke@derauftritt.de","authorUrl":"http:\\/\\/www.der-auftritt.de","version":"2.5.0","description":"TPL_BEEZ2_XML_DESCRIPTION","group":""}', '{"wrapperSmall":"53","wrapperLarge":"72","sitetitle":"","sitedescription":"","navposition":"center","templatecolor":"nature"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(504, 'hathor', 'template', 'hathor', '', 1, 1, 1, 0, '{"legacy":false,"name":"hathor","type":"template","creationDate":"May 2010","author":"Andrea Tarr","copyright":"Copyright (C) 2005 - 2012 Open Source Matters, Inc. All rights reserved.","authorEmail":"hathor@tarrconsulting.com","authorUrl":"http:\\/\\/www.tarrconsulting.com","version":"2.5.0","description":"TPL_HATHOR_XML_DESCRIPTION","group":""}', '{"showSiteName":"0","colourChoice":"0","boldText":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(505, 'beez5', 'template', 'beez5', '', 0, 1, 1, 0, '{"legacy":false,"name":"beez5","type":"template","creationDate":"21 May 2010","author":"Angie Radtke","copyright":"Copyright (C) 2005 - 2012 Open Source Matters, Inc. All rights reserved.","authorEmail":"a.radtke@derauftritt.de","authorUrl":"http:\\/\\/www.der-auftritt.de","version":"2.5.0","description":"TPL_BEEZ5_XML_DESCRIPTION","group":""}', '{"wrapperSmall":"53","wrapperLarge":"72","sitetitle":"","sitedescription":"","navposition":"center","html5":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(600, 'English (United Kingdom)', 'language', 'en-GB', '', 0, 1, 1, 1, '{"legacy":false,"name":"English (United Kingdom)","type":"language","creationDate":"2008-03-15","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.5","description":"en-GB site language","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(601, 'English (United Kingdom)', 'language', 'en-GB', '', 1, 1, 1, 1, '{"legacy":false,"name":"English (United Kingdom)","type":"language","creationDate":"2008-03-15","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.5","description":"en-GB administrator language","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(604, 'Español (Formal Internacional)', 'language', 'es-ES', '', 1, 1, 1, 0, '{"legacy":false,"name":"Espa\\u00f1ol (Formal Internacional)","type":"language","creationDate":"2012-09-14","author":"Proyecto Joomla! Spanish","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. Todos los derechos reservados.","authorEmail":"joomlaspanish@joomlaspanish.org","authorUrl":"www.joomlaspanish.org","version":"2.5.8","description":"es-ES idioma administrador para Joomla 2.5","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(605, 'Español (España)', 'language', 'es-ES', '', 0, 1, 1, 0, '{"legacy":false,"name":"Espa\\u00f1ol (Espa\\u00f1a)","type":"language","creationDate":"2012-09-14","author":"Joomla! Spanish","copyright":"Copyright (C) 2005 - 2012 Open Source Matters & joomlaspanish.org. All rights reserved.","authorEmail":"joomlaspanish@joomlaspanish.org","authorUrl":"www.joomlaspanish.org","version":"2.5.8","description":"es-ES Idiomas parte frontend Joomla 2.5 por www.joomlaspanish.org","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(700, 'files_joomla', 'file', 'joomla', '', 0, 1, 1, 1, '{"legacy":false,"name":"files_joomla","type":"file","creationDate":"November 2012","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.8","description":"FILES_JOOMLA_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(800, 'PKG_JOOMLA', 'package', 'pkg_joomla', '', 0, 1, 1, 1, '{"legacy":false,"name":"PKG_JOOMLA","type":"package","creationDate":"2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"http:\\/\\/www.joomla.org","version":"2.5.0","description":"PKG_JOOMLA_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(801, 'System - Helix Framework', 'plugin', 'helix', 'system', 0, 0, 1, 0, '{"legacy":false,"name":"System - Helix Framework","type":"plugin","creationDate":"March 2011","author":"JoomShaper.com","copyright":"Copyright (C) 2010 - 2014 JoomShaper. All rights reserved.","authorEmail":"support@joomshaper.com","authorUrl":"www.joomshaper.com","version":"2.1.7","description":"Helix Framework - JoomShaper Template Framework for Joomla 2.5 and 3.X","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(802, 'AVoce', 'template', 'avoce', '', 0, 1, 1, 0, '{"legacy":true,"name":"A Voce","type":"template","creationDate":"3 Dec 2011","author":"Alexander Hilliger","copyright":"Copyright (C) 2005 - 2011 Hilliger Media, All rights reserved.","authorEmail":"alexander@hilliger-media.de","authorUrl":"http:\\/\\/www.hilliger-media.de","version":"1.0.0","description":"\\n\\t\\n\\t\\n<style type=\\"text\\/css\\">\\n.Title {\\n\\tfont-size:20px;\\n\\tfont-family:Verdana, Geneva, sans-serif;\\n\\tfont-weight:bold;\\n\\tfont-style:normal;\\n\\tfont-variant:small-caps;\\n\\tcolor: #002240;\\n}\\n\\n.logo_description {\\n\\tfont-family: Verdana, Geneva, sans-serif;\\n\\tfont-size: 10px;\\n\\tfont-style: normal;\\n\\tfont-weight: normal;\\n\\tfont-variant: normal;\\n\\tcolor: #666;\\n}\\n\\n.default {\\n\\tfont-family: Verdana, Geneva, sans-serif;\\n\\tfont-size: 12px;\\n\\tfont-style: normal;\\n\\tline-height: normal;\\n\\tfont-weight: bold;\\n\\tfont-variant: normal;\\n\\tcolor: #666;\\n}\\n\\n.thankyou {\\n\\tfont-family: Verdana, Geneva, sans-serif;\\n\\tfont-size: 10px;\\n\\tfont-style: normal;\\n\\tfont-weight: bold;\\n\\tfont-variant: normal;\\n\\tcolor: #652525;\\n}\\n\\n<\\/style>\\n<br \\/>\\n<span class=\\"Title\\">A Voce<\\/span>\\n<br \\/>\\n<span class=\\"default\\">This Template is  for PERSONAL  use only!<\\/span>\\n<br \\/><br \\/>\\n<table width=\\"342\\" border=\\"0\\" cellpadding=\\"0\\" cellspacing=\\"0\\">\\n  <tr>\\n    <td width=\\"311\\"><span class=\\"logo_description\\"><span class=\\"thankyou\\">Thank you for downloading our Template! Please visit our Shop for further Templates, Graphics and addional Materials. <a href=\\"http:\\/\\/shop.hilliger-media.de\\" target=\\"_blank\\">shop.hilliger-media.de<\\/a><\\/span><\\/span><\\/td>\\n  <\\/tr>\\n<\\/table>\\n<br \\/>\\n<img src=\\"..\\/templates\\/avoce\\/template_thumbnail.png\\" alt=\\"preview\\" width=\\"200\\" height=\\"150\\" border=\\"1\\">\\n<div style=\\"clear:both;\\"><\\/div>\\n<table width=\\"342\\" border=\\"0\\" cellpadding=\\"0\\" cellspacing=\\"2\\">\\n  <tr>\\n    <td width=\\"18\\"><img src=\\"..\\/templates\\/avoce\\/images\\/info\\/picture_add.png\\" width=\\"16\\" height=\\"16\\" alt=\\"Download Logo\\" \\/><\\/td>\\n    <td width=\\"311\\" class=\\"bold\\"><span class=\\"description_extended\\"><span class=\\"download\\"><span class=\\"default\\"><a href=\\"http:\\/\\/shop.hilliger-media.de\\/index.php?page=shop.product_details&flypage=free_flypage.tpl&product_id=278&category_id=50&option=com_virtuemart&Itemid=1\\" target=\\"_blank\\">Download the Logo-File<\\/a><\\/span><\\/span><\\/span><\\/td>\\n  <\\/tr>\\n<\\/table>\\n<table width=\\"342\\" border=\\"0\\" cellpadding=\\"0\\" cellspacing=\\"0\\">\\n  <tr>\\n    <td width=\\"311\\"><span class=\\"logo_description\\">Please use the Logo-File to add personal Logos or Titles to the Template. Requirements:\\n    Any graphic program that supports PNG and JPG images format.<\\/span><\\/td>\\n  <\\/tr>\\n<\\/table>\\n\\n<h4 class=\\"description_extended\\"><span class=\\"default\\">The extended version is available in our shop with<br \\/>\\nthe following additional features:<\\/span><\\/h4>\\n<table border=\\"0\\" cellpadding=\\"0\\" cellspacing=\\"2\\">\\n  <tr>\\n    <td width=\\"195\\" height=\\"30\\"><span class=\\"default\\">FEAUTURE<\\/span><\\/td>\\n    <td width=\\"70\\"><span class=\\"default\\">FREE<\\/span><\\/td>\\n    <td width=\\"70\\"><span class=\\"default\\">EXTENDED<\\/span><\\/td>\\n  <\\/tr>\\n  <tr>\\n    <td><span class=\\"default\\">TopMenu<\\/span><\\/td>\\n    <td width=\\"70\\"><span class=\\"default\\"><img src=\\"..\\/templates\\/avoce\\/images\\/info\\/12-em-check.png\\" alt=\\"ok\\" width=\\"12\\" height=\\"12\\" class=\\"icons\\" \\/><\\/span><\\/td>\\n    <td width=\\"70\\"><span class=\\"default\\"><img src=\\"..\\/templates\\/avoce\\/images\\/info\\/12-em-check.png\\" width=\\"12\\" height=\\"12\\" alt=\\"included\\" \\/><\\/span><\\/td>\\n  <\\/tr>\\n  <tr>\\n    <td><span class=\\"default\\">LeftModule<\\/span><\\/td>\\n    <td width=\\"70\\"><span class=\\"default\\"><img src=\\"..\\/templates\\/avoce\\/images\\/info\\/12-em-check.png\\" width=\\"12\\" height=\\"12\\" alt=\\"included\\" \\/><\\/span><\\/td>\\n    <td width=\\"70\\"><span class=\\"default\\"><img src=\\"..\\/templates\\/avoce\\/images\\/info\\/12-em-check.png\\" width=\\"12\\" height=\\"12\\" alt=\\"included\\" \\/><\\/span><\\/td>\\n  <\\/tr>\\n  <tr>\\n    <td><span class=\\"default\\">RightModule<\\/span><\\/td>\\n    <td width=\\"70\\"><span class=\\"default\\"><img src=\\"..\\/templates\\/avoce\\/images\\/info\\/12-em-cross.png\\" width=\\"12\\" height=\\"12\\" alt=\\"not_included\\" \\/><\\/span><\\/td>\\n    <td width=\\"70\\"><span class=\\"default\\"><img src=\\"..\\/templates\\/avoce\\/images\\/info\\/12-em-check.png\\" width=\\"12\\" height=\\"12\\" alt=\\"included\\" \\/><\\/span><\\/td>\\n  <\\/tr>\\n  <tr>\\n    <td><span class=\\"default\\">user1Module<\\/span><\\/td>\\n    <td width=\\"70\\"><span class=\\"default\\"><img src=\\"..\\/templates\\/avoce\\/images\\/info\\/12-em-cross.png\\" width=\\"12\\" height=\\"12\\" alt=\\"not_included\\" \\/><\\/span><\\/td>\\n    <td width=\\"70\\"><span class=\\"default\\"><img src=\\"..\\/templates\\/avoce\\/images\\/info\\/12-em-check.png\\" width=\\"12\\" height=\\"12\\" alt=\\"included\\" \\/><\\/span><\\/td>\\n  <\\/tr>\\n  <tr>\\n    <td><span class=\\"default\\">user2Module<\\/span><\\/td>\\n    <td width=\\"70\\"><span class=\\"default\\"><img src=\\"..\\/templates\\/avoce\\/images\\/info\\/12-em-cross.png\\" width=\\"12\\" height=\\"12\\" alt=\\"not_included\\" \\/><\\/span><\\/td>\\n    <td width=\\"70\\"><span class=\\"default\\"><img src=\\"..\\/templates\\/avoce\\/images\\/info\\/12-em-check.png\\" width=\\"12\\" height=\\"12\\" alt=\\"included\\" \\/><\\/span><\\/td>\\n  <\\/tr>\\n  <tr>\\n    <td><span class=\\"default\\">TopMenu supports SubItems<\\/span><\\/td>\\n    <td width=\\"70\\"><span class=\\"default\\"><img src=\\"..\\/templates\\/avoce\\/images\\/info\\/12-em-cross.png\\" width=\\"12\\" height=\\"12\\" alt=\\"not_included\\" \\/><\\/span><\\/td>\\n    <td width=\\"70\\"><span class=\\"default\\"><img src=\\"..\\/templates\\/avoce\\/images\\/info\\/12-em-check.png\\" width=\\"12\\" height=\\"12\\" alt=\\"included\\" \\/><\\/span><\\/td>\\n  <\\/tr>\\n  <tr>\\n    <td><span class=\\"default\\">No Ads<\\/span><\\/td>\\n    <td width=\\"70\\"><span class=\\"default\\"><img src=\\"..\\/templates\\/avoce\\/images\\/info\\/12-em-cross.png\\" width=\\"12\\" height=\\"12\\" alt=\\"not_included\\" \\/><\\/span><\\/td>\\n    <td width=\\"70\\"><span class=\\"default\\"><img src=\\"..\\/templates\\/avoce\\/images\\/info\\/12-em-check.png\\" width=\\"12\\" height=\\"12\\" alt=\\"included\\" \\/><\\/span><\\/td>\\n  <\\/tr>\\n  <tr>\\n    <td><span class=\\"default\\">Commercial use<\\/span><\\/td>\\n    <td width=\\"70\\"><span class=\\"default\\"><img src=\\"..\\/templates\\/avoce\\/images\\/info\\/12-em-cross.png\\" width=\\"12\\" height=\\"12\\" alt=\\"not_included\\" \\/><\\/span><\\/td>\\n    <td width=\\"70\\"><span class=\\"default\\"><img src=\\"..\\/templates\\/avoce\\/images\\/info\\/12-em-check.png\\" width=\\"12\\" height=\\"12\\" alt=\\"included\\" \\/><\\/span><\\/td>\\n  <\\/tr>\\n<\\/table>\\n<br>\\n<table width=\\"342\\" border=\\"0\\" cellpadding=\\"0\\" cellspacing=\\"2\\">\\n  <tr>\\n    <td width=\\"18\\"><img src=\\"..\\/templates\\/avoce\\/images\\/info\\/shopping-cart-blue.gif\\" width=\\"14\\" height=\\"14\\" alt=\\"shopping\\" \\/><\\/td>\\n    <td width=\\"311\\" class=\\"bold\\"><span class=\\"description_extended\\"><span class=\\"download\\"><a href=\\"http:\\/\\/shop.hilliger-media.de\\/index.php?page=shop.product_details&flypage=hilliger_flypage.tpl&product_id=279&category_id=1&option=com_virtuemart&Itemid=1\\" target=\\"_blank\\">Buy the Extended &quot;AVoceExt&quot; Template<\\/a><\\/span><\\/span><\\/td>\\n  <\\/tr>\\n<\\/table>\\n<br \\/>\\n<p><span class=\\"default\\">Designed by <a href=\\"http:\\/\\/shop.hilliger-media.de\\" target=\\"_blank\\">Hilliger Media<\\/a> (Copyright &copy; 2011)<\\/span><br \\/>\\n<\\/p>\\n\\n\\n\\t\\n\\t","group":""}', '{"contentstyle":"content_id04","menustyle":"menu_border","leftmodules":"on","leftwidth":"left_200","showTitle":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `onr_extensions` (`extension_id`, `name`, `type`, `element`, `folder`, `client_id`, `enabled`, `access`, `protected`, `manifest_cache`, `params`, `custom_data`, `system_data`, `checked_out`, `checked_out_time`, `ordering`, `state`) VALUES
(803, 'Editor - JoomlaCK', 'plugin', 'jckeditor', 'editors', 0, 1, 1, 0, '{"legacy":false,"name":"Editor - JoomlaCK","type":"plugin","creationDate":"Novemeber 2012 ","author":"WebxSolution Ltd","copyright":"","authorEmail":"","authorUrl":"","version":"6.0.5","description":"Welcome to the next-generation of internet based editors. The JCK Editor''s performance is truly amazing, thanks to its plug-n-play state-of-the-art API engine and is much more than an Out-of-the-Box installation of the CKEditor. Weve been under the hood and Joomla-ised its logic into a seamless and extendable integration.  Users can now customise the editor from the largest growing extension base of all Joomla editors, choose what tool-bars, setup user permissions, create and edit the editors own typography style-sheet and configure the editor for real-time editing! And whats more - when you have created your bespoke configuration you can now export your setting via the all new JCK Manager component!\\n\\n\\t\\t<a id=\\"jckmodal-install\\" href=\\"..\\/plugins\\/editors\\/jckeditor\\/install\\/index.php\\" rel=\\"{handler: ''iframe'' , size: {x:571, y:400}}\\" title=\\"test\\" style=\\"visibility:hidden\\">test<\\/a>\\n\\t\\t<style type=\\"text\\/css\\">\\n\\t\\t\\t#sbox-btn-close { display:none;}\\n\\t\\t\\t#sbox-window{ background-color : #000000;}\\n\\t\\t<\\/style>\\n\\t\\t<script type=\\"text\\/javascript\\">\\n\\t\\tif (typeof SqueezeBox == \\"undefined\\") \\n\\t\\t{\\n\\t\\t\\t\\t var head = document.getElementsByTagName(''head'')[0];\\n\\t\\t\\t\\t var link = document.createElement(''link'');\\n\\t\\t\\t \\t link.type = ''text\\/css'';\\n\\t\\t\\t\\t link.rel = ''stylesheet'';\\n\\t\\t\\t\\t link.href = ''..\\/media\\/system\\/css\\/modal.css'';\\n\\t\\t\\t\\t head.appendChild(link);\\n\\t\\t\\t\\t\\n\\t\\t\\t\\tvar script = document.createElement(''script'');\\n\\t\\t\\t\\tscript.type= ''text\\/javascript'';\\n\\t\\t\\t\\tscript.src= ''..\\/media\\/system\\/js\\/modal.js'';\\n\\t\\t\\t\\thead.appendChild(script);\\n\\t\\t\\t\\n\\t\\t\\tif(script && script.onreadystatechange)\\n\\t\\t\\t{\\n\\t\\t\\t\\tscript.onreadystatechange = function() \\n\\t\\t\\t\\t{\\n\\t\\t\\t\\t   if (this.readyState == ''complete'')\\n\\t\\t\\t\\t   {\\n\\t\\t\\t\\t\\t\\tif($$(''#system-message dd.error ul'').length < 1) \\/\\/check to see if there are no errors reported\\n\\t\\t\\t\\t\\t\\t{\\n\\t\\t\\t\\t\\t\\t\\tvar wizard = document.getElementById(\\"jckmodal-install\\");\\n\\t\\t\\t\\t\\t\\t\\tSqueezeBox.fromElement(wizard,\\t{ parse: ''rel''});\\n\\t\\t\\t\\t\\t\\t\\t(function()\\n\\t\\t\\t\\t\\t\\t\\t{\\n\\t\\t\\t\\t\\t\\t\\t\\tSqueezeBox.bound  &&  SqueezeBox.overlay.removeEvent(''click'',SqueezeBox.bound.close) || SqueezeBox.overlay.removeEvent(''click'',SqueezeBox.listeners.close);\\n\\t\\t\\t\\t\\t\\t\\t}).delay(250);\\t\\n\\t\\t\\t\\t\\t\\t}\\t\\n\\t\\t\\t\\t   }\\t\\n\\t\\t\\t\\t};\\n\\t\\t\\t}\\n\\t\\t\\telse\\n\\t\\t\\t{\\n\\t\\t\\t\\tif(script)\\n\\t\\t\\t\\t{\\t\\t\\n\\t\\t\\t\\t\\tscript.onload =  function()\\n\\t\\t\\t\\t\\t{\\n\\t\\t\\t\\t\\t\\t\\n\\t\\t\\t\\t\\t\\tif($$(''#system-message dd.error ul'').length < 1) \\/\\/check to see if there are no errors reported\\n\\t\\t\\t\\t\\t\\t{\\n\\t\\t\\t\\t\\t\\t\\tvar wizard = document.getElementById(\\"jckmodal-install\\");\\n\\t\\t\\t\\t\\t\\t\\tSqueezeBox.fromElement(wizard,\\t{ parse: ''rel''});\\n\\t\\t\\t\\t\\t\\t\\t(function()\\n\\t\\t\\t\\t\\t\\t\\t{\\n\\t\\t\\t\\t\\t\\t\\t\\tSqueezeBox.bound  &&  SqueezeBox.overlay.removeEvent(''click'',SqueezeBox.bound.close) || SqueezeBox.overlay.removeEvent(''click'',SqueezeBox.listeners.close);\\n\\t\\t\\t\\t\\t\\t\\t}).delay(250);\\t\\n\\t\\t\\t\\t\\t\\t}\\n\\t\\t\\t\\t\\t}\\n\\t\\t\\t\\t}\\n\\t\\t\\t}\\n\\t\\t}\\n\\t\\telse\\n\\t\\t{\\n\\t\\t\\tif($$(''#system-message dd.error ul'').length < 1) \\/\\/check to see if there are no errors reported\\n\\t\\t\\t\\t{\\n\\t\\t\\t\\t\\tvar wizard = document.getElementById(\\"jckmodal-install\\");\\n\\t\\t\\t\\t\\tSqueezeBox.fromElement(wizard,\\t{ parse: ''rel''});\\n\\t\\t\\t\\t\\t(function()\\n\\t\\t\\t\\t\\t{\\n\\t\\t\\t\\t\\t\\tSqueezeBox.bound  &&  SqueezeBox.overlay.removeEvent(''click'',SqueezeBox.bound.close) || SqueezeBox.overlay.removeEvent(''click'',SqueezeBox.listeners.close);\\n\\t\\t\\t\\t\\t}).delay(250);\\t\\n\\t\\t\\t\\t}\\n\\t\\t}\\t\\n\\t\\t<\\/script>\\n\\t","group":""}', '{"ftfamily":"","ftcolor":"","ftsize":"","bgcolor":"#FFFFFF","task":"finish","useUserFolders":"0","userFolderType":"username","template":"","content_css_custom":"","jcktypography":"1","content_css":1,"editor_css":0,"jcktypographycontent":"\\ufeff\\/*\\r\\n * JCK Editor Typography Style-sheet\\r\\n * @author: Paul Franklin\\r\\n * @website: http:\\/\\/www.joomlackeditor.com\\r\\n * @version: 1.3\\r\\n * @copyright (C) WebxSolution Ltd 2011 - 2012. All rights reserved\\r\\n * @license: GPLv2\\r\\n * @terms: http:\\/\\/www.joomlackeditor.com\\/terms-of-use\\r\\n * @icons: You are permitted to use the Dryicons set as a WebxSolution''s customer within the terms of the Dryicons commercial license. The details of this license can be view at dryicons.com\\/terms\\/commercial\\/\\r\\n *\\/ \\r\\n \\r\\n \\/* ADD GENERAL BODY FOR EDITOR\\r\\n-------------------------------------------------------------------------*\\/\\r\\n\\/* The body class defines the document''s body. This usually contains generic default font, size & color which is used across your site.\\r\\nIf your template does not have a dedicated style-sheet for  your content typography, or the editor''s ''Style'' box is being populated with thousands of useless classes due to your typography being found in different style-sheets, you can improve the users workflow by adding these styles to the classes as defined below. As the editor is set to read from this style-sheet it will automatically be used in the editor''s editing area. *\\/\\r\\n\\r\\nbody {}\\r\\n\\r\\n \\/* ADD PARAGRAPH FORMAT STYLES FOR EDITOR\\r\\n-------------------------------------------------------------------------*\\/\\r\\n\\r\\nh1 {}\\r\\nh2 {}\\r\\nh3 {}\\r\\nh4 {}\\r\\nh5 {}\\r\\nh6 {}\\r\\npre {}\\r\\naddress {}\\r\\nhr {}\\r\\n\\r\\n \\/* Preformatted text\\r\\n----------------------------------------------------------------------------------------------------*\\/\\r\\n\\r\\nblockquote {\\r\\n    background: none repeat scroll 0 0 #CCCCCC;\\r\\n    border-left: 10px solid #8F8F8F;\\r\\n    color: #544C4A;\\r\\n    font: italic 12pt\\/1.2em Georgia;\\r\\n    margin: 10px !important;\\r\\n    padding: 10px !important;\\r\\n    text-shadow: 1px 1px 1px #ffffff;\\r\\n    width: 60%;\\r\\n    border-radius: 0 10px 0 10px;\\r\\n    -moz-border-radius: 0 10px 0 10px;\\r\\n    -webkit-border: 0 10px 0 10px;\\r\\n}\\r\\n\\r\\nblockquote p { display: inline; }\\r\\n\\r\\nblockquote:before {\\r\\n    content: url(\\"blockquotes.png\\") !important;\\r\\n\\tbackground: none repeat scroll 0 0 transparent !important;\\r\\n    margin-right: 15px;\\r\\n    vertical-align: super;\\r\\n\\tposition: relative !important;\\r\\n}\\r\\n\\r\\nblockquote:after { background: none repeat scroll 0 0 transparent !important; }\\r\\n\\r\\nspan.dropcap  {\\r\\n    color: #333333;\\r\\n    display: block;\\r\\n    float: left;\\r\\n    font: 60px\\/40px Georgia,Times,serif;\\r\\n    padding: 7px 8px 0 0;\\r\\n}\\r\\n\\r\\n \\/* Text Highlight\\r\\n----------------------------------------------------------------------------------------------------*\\/\\r\\nspan.bluhlight-jck, span.grehlight-jck, span.redhlight-jck, span.blahlight-jck , span.yelhlight-jck {\\r\\n    border-radius: 5px 5px 5px 5px;\\r\\n    color: #FFFFFF;\\r\\n    display: inline;\\r\\n    font-weight: bold;\\r\\n\\ttext-shadow: none;\\r\\n    padding: 2px 4px;\\r\\n\\tfont-size: 13px;\\r\\n}\\r\\n\\r\\nspan.bluhlight-jck {  background: none repeat scroll 0 0 #3E6A86;}\\r\\nspan.grehlight-jck {  background: none repeat scroll 0 0 #b9cd96;}\\r\\nspan.redhlight-jck {  background: none repeat scroll 0 0 #AA1428;}\\r\\nspan.blahlight-jck {  background: none repeat scroll 0 0 #000000;}\\r\\nspan.yelhlight-jck {  background: none repeat scroll 0 0 #F2F096; color: #544C4A;}\\r\\n \\r\\n\\/* Box Styles\\r\\n----------------------------------------------------------------------------------------------------*\\/\\r\\n.blubox-jck, .grebox-jck, .redbox-jck, .blabox-jck, .yelbox-jck   {\\r\\n\\tbackground: none repeat scroll 0 0 #FAFAFA;\\r\\n\\tborder-style: solid;\\r\\n    border-width: 1px 1px 1px 8px;\\r\\n\\tmargin: 10px 0 20px !important;\\r\\n    padding: 8px 8px 8px 20px !important;\\r\\n\\t-webkit-border-top-left-radius: 15px;\\r\\n    -webkit-border-bottom-left-radius: 15px;\\r\\n    -moz-border-radius-topleft: 15px;\\r\\n    -moz-border-radius-bottomleft: 15px;\\r\\n    border-top-left-radius: 15px;\\r\\n    border-bottom-left-radius: 15px;\\r\\n\\tcolor: #444444 !important;\\r\\n\\ttext-shadow: 1px 1px 1px #ffffff;\\r\\n}\\r\\n\\r\\n.blubox-jck  {  border-color: #DDDDDD #DDDDDD #DDDDDD #3E6A86;}\\r\\n.grebox-jck  {  border-color: #DDDDDD #DDDDDD #DDDDDD #b9cd96;}\\r\\n.redbox-jck {  border-color: #DDDDDD #DDDDDD #DDDDDD #AA1428;}\\r\\n.blabox-jck  {  border-color: #DDDDDD #DDDDDD #DDDDDD #000000;}\\r\\n.yelbox-jck  {  border-color: #DDDDDD #DDDDDD #DDDDDD #F2F096; color: #544C4A;}\\r\\n\\r\\n\\/* Icon Library\\r\\n----------------------------------------------------------------------------------------------------*\\/\\r\\n.info-jck, .warning-jck, .film-jck, .pin-jck , .lightbulb-jck , .recycle-jck , .camera-jck, .comment-jck, .chat-jck, .document-jck, .accessible-jck, .star-jck, .heart-jck, .previous-jck, .cart-jck, .attachment-jck, .calculator-jck, .cut-jck, .dollar-jck, .pound-jck , .euro-jck, .mail-jck, .support-jck, .next-jck, .sound-jck   {\\r\\n    display: block;\\r\\n    padding: 20px 0 20px 60px !important;\\r\\n\\tmargin-bottom: 20px !important;\\r\\n\\tbackground-color: transparent !important;\\r\\n    background-position: left center !important;\\r\\n    background-repeat: no-repeat !important;\\r\\n}\\r\\n\\r\\n.info-jck { background: url(\\"info.png\\")}\\r\\n.warning-jck { background: url(\\"warning.png\\")}\\r\\n.film-jck { background: url(\\"film.png\\")}\\r\\n.pin-jck {background: url(\\"pin.png\\")}\\r\\n.lightbulb-jck {background: url(\\"light_bulb.png\\")}\\r\\n.recycle-jck { background: url(\\"recycle.png\\")}\\r\\n.camera-jck { background: url(\\"camera.png\\")}\\r\\n.comment-jck { background: url(\\"comment.png\\")}\\r\\n.chat-jck  { background: url(\\"chat.png\\")}\\r\\n.document-jck { background: url(\\"document.png\\")}\\r\\n.accessible-jck { background: url(\\"accessible.png\\")}\\r\\n.star-jck { background: url(\\"star.png\\")}\\r\\n.heart-jck { background: url(\\"heart.png\\")}\\r\\n.previous-jck { background: url(\\"previous.png\\")}\\r\\n.cart-jck { background: url(\\"cart.png\\")}\\r\\n.attachment-jck { background: url(\\"attachment.png\\")}\\r\\n.calculator-jck { background: url(\\"calculator.png\\")}\\r\\n.cut-jck { background: url(\\"cut.png\\")}\\r\\n.dollar-jck { background: url(\\"dollar_currency_sign.png\\")}\\r\\n.pound-jck { background: url(\\"sterling_pound_currency_sign.png\\")}\\r\\n.euro-jck { background: url(\\"euro_currency_sign.png\\")}\\r\\n.mail-jck { background: url(\\"mail.png\\")}\\r\\n.support-jck { background: url(\\"support.png\\")}\\r\\n.next-jck  { background: url(\\"next.png\\")}\\r\\n.sound-jck  { background: url(\\"sound.png\\")}\\r\\n\\r\\n.flash-jck  { background: url(\\"flash.png\\")}\\r\\n.zip-jck  { background: url(\\"zip_download.png\\")}\\r\\n.pdf-jck  { background: url(\\"pdf.png\\")}\\r\\n.video-jck  { background: url(\\"video_clip.png\\")}\\r\\n\\r\\n\\r\\n\\/* Tooltips \\r\\n----------------------------------------------------------------------------------------------------*\\/\\r\\n\\r\\n.flashtip-jck, .ziptip-jck, .pdftip-jck, .videotip-jck, .infotip-jck, .warningtip-jck, .filmtip-jck, .pintip-jck , .lightbulbtip-jck , .recycletip-jck , .cameratip-jck, .commenttip-jck, .chattip-jck, .documenttip-jck, .accessibletip-jck, .startip-jck, .hearttip-jck, .previoustip-jck, .carttip-jck, .attachmenttip-jck, .calculatortip-jck, .cuttip-jck, .dollartip-jck, .poundtip-jck , .eurotip-jck, .mailtip-jck, .supporttip-jck, .nexttip-jck, .soundtip-jck, .download-DOC, .download-IMG  { color: #444444 !important; }\\r\\n\\r\\na.flashtip-jck, a.ziptip-jck, a.pdftip-jck, a.videotip-jck, a.infotip-jck, a.warningtip-jck, a.filmtip-jck, a.pintip-jck , a.lightbulbtip-jck , a.recycletip-jck , a.cameratip-jck, a.commenttip-jck, a.chattip-jck, a.documenttip-jck, a.accessibletip-jck, a.startip-jck, a.hearttip-jck, a.previoustip-jck, a.carttip-jck, a.attachmenttip-jck, a.calculatortip-jck, a.cuttip-jck, a.dollartip-jck, a.poundtip-jck , a.eurotip-jck, a.mailtip-jck, a.supporttip-jck , a.nexttip-jck, a.soundtip-jck, a .download-DOC , a .download-IMG { color: #095197 !important; }\\r\\n\\r\\n.flashtip-jck, .ziptip-jck, .pdftip-jck, .videotip-jck, .infotip-jck, .warningtip-jck, .filmtip-jck, .pintip-jck , .lightbulbtip-jck , .recycletip-jck , .cameratip-jck, .commenttip-jck, .chattip-jck, .documenttip-jck, .accessibletip-jck, .startip-jck, .hearttip-jck, .previoustip-jck, .carttip-jck, .attachmenttip-jck, .calculatortip-jck, .cuttip-jck, .dollartip-jck, .poundtip-jck , .eurotip-jck, .mailtip-jck, .supporttip-jck, .nexttip-jck, .soundtip-jck, .download-DOC, .download-IMG ,\\r\\n a.flashtip-jck, a.ziptip-jck, a.pdftip-jck, a.videotip-jck, a.infotip-jck, a.warningtip-jck, a.filmtip-jck, a.pintip-jck , a.lightbulbtip-jck , a.recycletip-jck , a.cameratip-jck, a.commenttip-jck, a.chattip-jck, a.documenttip-jck, a.accessibletip-jck, a.startip-jck, a.hearttip-jck, a.previoustip-jck, a.carttip-jck, a.attachmenttip-jck, a.calculatortip-jck, a.cuttip-jck, a.dollartip-jck, a.poundtip-jck , a.eurotip-jck, a.mailtip-jck, a.supporttip-jck , a.nexttip-jck, a.soundtip-jck, a .download-DOC , a .download-IMG\\r\\n{\\r\\n    display: block;\\r\\n\\tmargin-bottom: 20px;\\r\\n\\tbackground-color: #FAFAFA !important;\\r\\n    background-position: left center !important;\\r\\n    background-repeat: no-repeat !important;\\r\\n\\tbackground-size: 28px auto !important;\\r\\n    border-bottom: 1px dotted #C8C8C8;\\r\\n    border-top: 1px dotted #C8C8C8;\\r\\n    display: block;\\r\\n    margin: 10px 0 !important;\\r\\n    padding: 7px 10px 7px 35px !important;\\r\\n\\t-webkit-transition: background-color 800ms ease-in-out;\\r\\n\\t-moz-transition: background-color 800ms ease-in-out;\\r\\n\\t-o-transition: background-color 800ms ease-in-out;\\r\\n\\ttransition: background-color 800ms ease-in-out;\\r\\n\\ttext-shadow: 1px 1px 1px #ffffff;\\r\\n\\tfont-size: 14px;\\r\\n\\theight: 21px;\\r\\n}\\r\\n\\r\\na.flashtip-jck:hover, a.ziptip-jck:hover, a.pdftip-jck:hover, a.videotip-jck:hover, a.infotip-jck:hover, a.warningtip-jck:hover, a.filmtip-jck:hover, a.pintip-jck:hover , a.lightbulbtip-jck:hover , a.recycletip-jck:hover , a.cameratip-jck:hover, a.commenttip-jck:hover, a.chattip-jck:hover, a.documenttip-jck:hover, a.accessibletip-jck:hover, a.startip-jck:hover, a.hearttip-jck:hover, a.previoustip-jck:hover, a.carttip-jck:hover, a.attachmenttip-jck:hover, a.calculatortip-jck:hover, a.cuttip-jck:hover, a.dollartip-jck:hover, a.poundtip-jck:hover, a.eurotip-jck:hover, a.mailtip-jck:hover, a.supporttip-jck:hover, a.nexttip-jck:hover, a.soundtip-jck:hover, a.download-DOC:hover, a.download-IMG:hover { color: #095197 !important; }\\r\\n\\r\\n.flashtip-jck:hover, .ziptip-jck:hover, .pdftip-jck:hover, .videotip-jck:hover, .infotip-jck:hover, .warningtip-jck:hover, .filmtip-jck:hover, .pintip-jck:hover , .lightbulbtip-jck:hover , .recycletip-jck:hover , .cameratip-jck:hover, .commenttip-jck:hover, .chattip-jck:hover, .documenttip-jck:hover, .accessibletip-jck:hover, .startip-jck:hover, .hearttip-jck:hover, .previoustip-jck:hover, .carttip-jck:hover, .attachmenttip-jck:hover, .calculatortip-jck:hover, .cuttip-jck:hover, .dollartip-jck:hover, .poundtip-jck:hover, .eurotip-jck:hover, .mailtip-jck:hover, .supporttip-jck:hover, .nexttip-jck:hover, .soundtip-jck:hover, .download-DOC:hover, .download-IMG:hover, a.flashtip-jck:hover, a.ziptip-jck:hover, a.pdftip-jck:hover, a.videotip-jck:hover, a.infotip-jck:hover, a.warningtip-jck:hover, a.filmtip-jck:hover, a.pintip-jck:hover , a.lightbulbtip-jck:hover, a.recycletip-jck:hover, a.cameratip-jck:hover, a.commenttip-jck:hover, a.chattip-jck:hover, a.documenttip-jck:hover, a.accessibletip-jck:hover, a.startip-jck:hover, a.hearttip-jck:hover, a.previoustip-jck:hover, a.carttip-jck:hover, a.attachmenttip-jck:hover, a.calculatortip-jck:hover, a.cuttip-jck:hover, a.dollartip-jck:hover, a.poundtip-jck:hover, a.eurotip-jck:hover, a.mailtip-jck:hover, a.supporttip-jck, a.nexttip-jck:hover, a.soundtip-jck:hover, a.download-DOC:hover, a.download-IMG:hover {\\r\\n    background-color: #F2F2F2 !important;\\r\\n\\t-webkit-transition: background-color 400ms ease-in-out;\\r\\n\\t-moz-transition: background-color 400ms ease-in-out;\\r\\n\\t-o-transition: background-color 400ms ease-in-out;\\r\\n\\ttransition: background-color 400ms ease-in-out;\\r\\n\\tbackground-repeat: no-repeat !important;\\r\\n}\\r\\n\\r\\n.flashtip-jck, .flashtip-jck:hover, a.flashtip-jck:hover { background-image: url(\\"flash.png\\")!important}\\r\\n.ziptip-jck, .ziptip-jck:hover, a.ziptip-jck:hover   { background-image: url(\\"zip_download.png\\")!important}\\r\\n.pdftip-jck, .pdftip-jck:hover, a.pdftip-jck:hover  { background-image: url(\\"pdf.png\\")!important}\\r\\n.videotip-jck , .videotip-jck:hover, a.videotip-jck:hover  { background-image: url(\\"video_clip.png\\")!important}\\r\\n.download-IMG span, .download-DOC span:hover , a.download-DOC span:hover { font-weight: bold;}\\r\\n.infotip-jck, .infotip-jck:hover, a.infotip-jck:hover  { background-image: url(\\"info.png\\")!important}\\r\\n.warningtip-jck, .warningtip-jck:hover , a.warningtip-jck:hover { background-image: url(\\"warning.png\\")!important}\\r\\n.filmtip-jck, .filmtip-jck:hover, a.filmtip-jck:hover { background-image: url(\\"film.png\\")!important}\\r\\n.pintip-jck, .pintip-jck:hover , a.pintip-jck:hover {background-image: url(\\"pin.png\\")!important}\\r\\n.lightbulbtip-jck, .lightbulbtip-jck:hover , a.lightbulbtip-jck:hover {background-image: url(\\"light_bulb.png\\")!important}\\r\\n.recycletip-jck, .recycletip-jck :hover, a.recycletip-jck :hover { background-image: url(\\"recycle.png\\")!important}\\r\\n.cameratip-jck, .cameratip-jck:hover, a.cameratip-jck:hover .download-IMG, .download-IMG:hover, a.download-IMG:hover  { background-image: url(\\"camera.png\\")!important}\\r\\n.commenttip-jck, .commenttip-jck:hover, a.commenttip-jck:hover { background-image: url(\\"comment.png\\")!important}\\r\\n.chattip-jck, .chattip-jck:hover , a.chattip-jck:hover   { background-image: url(\\"chat.png\\")!important}\\r\\n.documenttip-jck, .documenttip-jck:hover, a.documenttip-jck:hover { background-image: url(\\"document.png\\")!important}\\r\\n.accessibletip-jck, .accessibletip-jck:hover, a.accessibletip-jck:hover { background-image: url(\\"accessible.png\\")!important}\\r\\n.startip-jck, .startip-jck:hover , a.startip-jck:hover { background-image: url(\\"star.png\\")!important}\\r\\n.hearttip-jck, .hearttip-jck:hover, a.hearttip-jck:hover  { background-image: url(\\"heart.png\\")!important}\\r\\n.previoustip-jck, .previoustip-jck:hover, a.previoustip-jck:hover { background-image: url(\\"previous.png\\")!important}\\r\\n.carttip-jck, .carttip-jck :hover, a.carttip-jck :hover { background-image: url(\\"cart.png\\")!important}\\r\\n.attachmenttip-jck, .attachmenttip-jck:hover, a.attachmenttip-jck:hover, .download-DOC, .download-DOC:hover , a.download-DOC:hover { background: url(\\"attachment.png\\")!important}\\r\\n.calculatortip-jck, .calculatortip-jck:hover , a.calculatortip-jck:hover  { background-image: url(\\"calculator.png\\")!important}\\r\\n.cuttip-jck, .cuttip-jck:hover, a.cuttip-jck:hover { background-image: url(\\"cut.png\\")!important}\\r\\n.dollartip-jck , .dollartip-jck:hover, a.dollartip-jck:hover { background-image: url(\\"dollar_currency_sign.png\\")!important}\\r\\n.poundtip-jck, .poundtip-jck:hover, a.poundtip-jck:hover{ background-image: url(\\"sterling_pound_currency_sign.png\\")!important}\\r\\n.eurotip-jck, .eurotip-jck:hover , a.eurotip-jck:hover { background-image: url(\\"euro_currency_sign.png\\")!important}\\r\\n.mailtip-jck, .mailtip-jck:hover , a.mailtip-jck:hover  { background-image: url(\\"mail.png\\")!important}\\r\\n.supporttip-jck, .supporttip-jck:hover , a.supporttip-jck:hover { background-image: url(\\"support.png\\")!important}\\r\\n.nexttip-jck, .nexttip-jck:hover, a.nexttip-jck:hover  { background-image: url(\\"next.png\\")!important}\\r\\n.soundtip-jck, .soundtip-jck:hover , a.soundtip-jck:hover { background-image: url(\\"sound.png\\")!important}\\r\\n\\r\\n\\/* Number Disc''s\\r\\n----------------------------------------------------------------------------------------------------*\\/\\r\\nspan.bludisc-jck, span.bludisc-black-jck, span.gredisc-jck, span.gredisc-black-jck, span.reddisc-jck, span.reddisc-black-jck, span.bladisc-jck, span.bladisc-black-jck, span.yeldisc-jck, span.yeldisc-black-jck {\\r\\n    background-image: url(\\"mask-white.png\\");\\r\\n    background-position: left top !important;\\r\\n    background-repeat: no-repeat !important;\\r\\n    color: #FFFFFF;\\r\\n    display: block;\\r\\n    float: left;\\r\\n    font-size: 19px;\\r\\n    margin-right: 10px;\\r\\n    text-align: center;\\r\\n    width: 42px;\\r\\n\\theight: 31px; \\r\\n\\tpadding-top: 11px;\\r\\n\\tline-height: 15px;\\r\\n\\ttext-indent: -1px;\\r\\n\\tfont-family: georgia;\\r\\n\\ttext-shadow: 1px 1px 1px #5e5e5e;\\r\\n}\\r\\n\\r\\nspan.bludisc-black-jck, span.gredisc-black-jck, span.reddisc-black-jck , span.bladisc-black-jck , span.yeldisc-black-jck { \\r\\n\\tbackground-image: url(\\"mask-black.png\\")!important;\\r\\n\\t-webkit-border-radius: 20px;\\r\\n    -moz-border-radius: 20px;\\r\\n    border-radius: 20px;\\r\\n}\\r\\n\\r\\nspan.bludisc-jck, span.bludisc-black-jck {  background-color: #3E6A86;}\\r\\nspan.gredisc-jck, span.gredisc-black-jck {  background-color: #b9cd96;}\\r\\nspan.reddisc-jck, span.reddisc-black-jck {  background-color: #AA1428;}\\r\\nspan.bladisc-jck, span.bladisc-black-jck {  background-color: #000000;}\\r\\nspan.yeldisc-jck, span.yeldisc-black-jck {  background-color: #F2F096; color: #000000; text-shadow: 0px 1px 1px #444444;}\\r\\n\\r\\n\\/* Images Styles\\r\\n-------------------------------------------------------------------------*\\/\\r\\nimg.jck_img_align_left {\\r\\n    float: left; \\r\\n    margin: 3px 5px 0 0;\\r\\n    padding: 1px;\\r\\n}\\r\\n\\r\\nimg.jck_img_align_right {\\r\\n    float: right; \\r\\n    margin: 3px 0 0 5px;\\r\\n    padding: 1px;\\r\\n}\\r\\n\\r\\nimg.caption { background-color:inherit;}\\r\\n\\r\\nimg.image_holder {\\r\\n    background: none repeat scroll 0 0 #FFFFFF;\\r\\n    border: 5px solid #EFEFEF;\\r\\n    float: left;\\r\\n    margin: 3px 5px 0 0;\\r\\n    padding: 1px;\\r\\n}\\r\\n\\r\\nimg.fade_in {\\r\\n\\t-webkit-transition: all 500ms ease-in-out;\\r\\n\\t-moz-transition: all 500ms ease-in-out;\\r\\n\\t-o-transition: all 500ms ease-in-out;\\r\\n\\ttransition: all 500ms ease-in-out;\\r\\n\\t-webkit-box-shadow: 0 0 3px #000000;\\r\\n\\t-moz-box-shadow: 0 0 3px #000000;\\r\\n\\tbox-shadow: 0 0 3px #000000;\\r\\n\\tborder: 10px solid #FFFFFF;\\r\\n    height: 200px;\\r\\n    opacity: 0.5;\\r\\n    overflow: hidden;\\r\\n    position: relative;\\r\\n\\tmargin: 3px;\\r\\n\\tcursor:url(cursor_zoom.png),auto;\\r\\n}\\r\\n\\r\\nimg.fade_in:hover {\\r\\n\\t-webkit-box-shadow: 0 0 10px #000000;\\r\\n\\t-moz-box-shadow: 0 0 10px #000000;\\r\\n\\tbox-shadow: 0 0 10px #000000;\\r\\n    opacity: 1;\\r\\n}\\r\\n\\r\\nimg.zoom  { \\r\\n\\t-webkit-transition: all 500ms ease-in-out;\\r\\n\\t-moz-transition: all 500ms ease-in-out;\\r\\n\\t-o-transition: all 500ms ease-in-out;\\r\\n\\ttransition: all 500ms ease-in-out;\\r\\n    background: none repeat scroll 0 0 #FFFFFF;\\r\\n\\t-webkit-box-shadow: 0 3px 6px rgba(0, 0, 0, 0.25);\\r\\n\\t-moz-box-shadow: 0 3px 6px rgba(0, 0, 0, 0.25);\\r\\n\\tbox-shadow: 0 3px 6px rgba(0, 0, 0, 0.25);\\r\\n    color: #333333;\\r\\n    display: inline;\\r\\n    float: left;\\r\\n    font-size: 18px;\\r\\n    margin: 0 60px 27px;\\r\\n    padding: 10px 10px 15px;\\r\\n    text-align: center;\\r\\n    text-decoration: none;\\r\\n    width: auto;\\r\\n\\tfont-family: serif;\\r\\n\\theight: 100px !important;\\r\\n\\twidth: auto !important;\\r\\n\\tmargin: 0 20px 27px 0px;\\r\\n\\tcursor:url(cursor_zoom.png),auto;\\r\\n}\\r\\n\\r\\nimg.zoom:hover {\\r\\n    -moz-transform: scale(1.75);\\r\\n\\t-webkit-transform: scale(1.75);\\r\\n\\t-o-transform: scale(1.75);\\r\\n\\t-webkit-transition: all 500ms ease-in-out;\\r\\n\\t-moz-transition: all 500ms ease-in-out;\\r\\n\\t-o-transition: all 500ms ease-in-out;\\r\\n\\ttransition: all 500ms ease-in-out;\\r\\n\\t-webkit-box-shadow: 0 3px 6px rgba(0, 0, 0, 0.5);\\r\\n\\t-moz-box-shadow: 0 3px 6px rgba(0, 0, 0, 0.5);\\r\\n\\tbox-shadow: 0 3px 6px rgba(0, 0, 0, 0.5); \\r\\n    position: relative;\\r\\n    z-index: 50;\\r\\n\\tmargin: 0 -60px 27px 80px;\\r\\n}\\r\\n\\r\\nimg.polaroids_zoom  {\\r\\n    -moz-transform: rotate(-2deg);\\r\\n\\t-webkit-transform: rotate(2deg); \\r\\n\\t-o-transform: rotate(2deg); \\r\\n\\t-webkit-transition: all 500ms ease-in-out;\\r\\n\\t-moz-transition: all 500ms ease-in-out;\\r\\n\\t-o-transition: all 500ms ease-in-out;\\r\\n\\ttransition: all 500ms ease-in-out;\\r\\n    background: none repeat scroll 0 0 #FFFFFF;\\r\\n\\t-webkit-box-shadow: 0 3px 6px rgba(0, 0, 0, 0.25);\\r\\n\\t-moz-box-shadow: 0 3px 6px rgba(0, 0, 0, 0.25);\\r\\n\\tbox-shadow: 0 3px 6px rgba(0, 0, 0, 0.25);\\r\\n    color: #333333;\\r\\n    display: inline;\\r\\n    float: left;\\r\\n    font-size: 18px;\\r\\n    margin: 0 20px 27px 30px;\\r\\n    padding: 10px 10px 15px;\\r\\n    text-align: center;\\r\\n    text-decoration: none;\\r\\n    width: auto;\\r\\n\\tfont-family: serif;\\r\\n\\theight: 100px !important;\\r\\n\\twidth: auto !important;\\r\\n\\tcursor:url(cursor_zoom.png),auto;\\r\\n}\\r\\n\\r\\nimg.polaroids_zoom:hover {\\r\\n    -moz-transform: scale(1.30);\\r\\n\\t-webkit-transform: scale(1.30);\\r\\n\\t-o-transform: scale(1.30);\\r\\n\\t-webkit-transition: all 500ms ease-in-out;\\r\\n\\t-moz-transition: all 500ms ease-in-out;\\r\\n\\t-o-transition: all 500ms ease-in-out;\\r\\n\\ttransition: all 500ms ease-in-out;\\r\\n\\t-webkit-box-shadow: 0 3px 6px rgba(0, 0, 0, 0.5);\\r\\n\\t-moz-box-shadow: 0 3px 6px rgba(0, 0, 0, 0.5);\\r\\n\\tbox-shadow: 0 3px 6px rgba(0, 0, 0, 0.5); \\r\\n    position: relative;\\r\\n    z-index: 50;\\r\\n}\\r\\n\\r\\nimg.screenshot_blue, img.screenshot_green , img.screenshot_red, img.screenshot_black, img.screenshot_gray, img.screenshot_yellow  {\\r\\n    margin: 5px 0;\\r\\n    padding: 10px;\\r\\n\\tbackground: #ffffff;\\r\\n\\tbackground: -moz-linear-gradient(top, #ffffff 0%, #e5e5e5 100%);\\r\\n\\tbackground: -webkit-gradient(linear, left top, left bottom, color-stop(0%,#ffffff), color-stop(100%,#e5e5e5));\\r\\n\\tbackground: -webkit-linear-gradient(top, #ffffff 0%,#e5e5e5 100%);\\r\\n\\tbackground: -o-linear-gradient(top, #ffffff 0%,#e5e5e5 100%);\\r\\n\\tbackground: -ms-linear-gradient(top, #ffffff 0%,#e5e5e5 100%);\\r\\n\\tbackground: linear-gradient(top, #ffffff 0%,#e5e5e5 100%);\\r\\n\\tfilter: progid:DXImageTransform.Microsoft.gradient( startColorstr=''#ffffff'', endColorstr=''#e5e5e5'',GradientType=0 );\\r\\n\\topacity: 1;\\r\\n}\\r\\n\\r\\nimg.screenshot_blue { border: 10px solid #3E6A86;}\\r\\nimg.screenshot_green  { border: 10px solid #b9cd96;}\\r\\nimg.screenshot_red  { border: 10px solid #AA1428;}\\r\\nimg.screenshot_black  { border: 10px solid #000000;}\\r\\nimg.screenshot_gray { border: 10px solid #F0F0F0;}\\r\\nimg.screenshot_yellow { border: 10px solid #544C4A;}\\r\\n\\r\\n\\/* Tables Styles\\r\\n-------------------------------------------------------------------------*\\/\\r\\ntable.table_style_blue, table.table_style_green, table.table_style_red, table.table_style_black, table.table_style_yellow  {\\r\\n    border: 1px solid #DDDDDD;\\r\\n    border-collapse: collapse;\\r\\n    color: #404040;\\r\\n    width: 100%;\\r\\n}\\r\\n\\r\\ntable.table_style_blue tbody tr, table.table_style_green tbody tr, table.table_style_red tbody tr, table.table_style_black tbody tr, table.table_style_yellow tbody tr  {\\r\\n    background: none repeat scroll 0 0 #F2F2F2;\\r\\n\\tborder: 1px solid #DDDDDD;\\r\\n\\t-webkit-transition: all 800ms ease-in-out;\\r\\n\\t-moz-transition: all 800ms ease-in-out;\\r\\n\\t-o-transition: all 800ms ease-in-out;\\r\\n\\ttransition: all 800ms ease-in-out;\\r\\n}\\r\\n\\r\\ntable.table_style_blue tbody tr:hover , table.table_style_green tbody tr:hover, table.table_style_red tbody tr:hover, table.table_style_black tbody tr:hover, table.table_style_yellow tbody tr:hover  {\\r\\n    background: none repeat scroll 0 0 #E5E5E5;\\r\\n\\t-webkit-transition: all 300ms ease-in-out;\\r\\n\\t-moz-transition: all 300ms ease-in-out;\\r\\n\\t-o-transition: all 300ms ease-in-out;\\r\\n\\ttransition: all 300ms ease-in-out;\\r\\n}\\r\\n\\r\\ntable.table_style_blue tbody tr td, table.table_style_green tbody tr td, table.table_style_red tbody tr td, table.table_style_black tbody tr td, table.table_style_yellow tbody tr td {\\r\\n    line-height: 22px;\\r\\n\\ttext-indent: 5px;\\r\\n\\tborder: 1px solid #DDDDDD;\\r\\n}\\r\\n\\r\\ntable.table_style_blue caption, table.table_style_green caption, table.table_style_red caption, table.table_style_black caption, table.table_style_yellow caption  {\\r\\n    color: #FFFFFF;\\r\\n    font-weight: 700;\\r\\n    line-height: 22px;\\r\\n    text-align: center;\\r\\n    text-transform: uppercase;\\r\\n}\\r\\n\\r\\ntable.table_style_blue caption { background: none repeat scroll 0 0 #3E6A86;}\\r\\ntable.table_style_green caption { background: none repeat scroll 0 0 #b9cd96;}\\r\\ntable.table_style_red caption { background: none repeat scroll 0 0 #AA1428;}\\r\\ntable.table_style_black caption { background: none repeat scroll 0 0 #000000;}\\r\\ntable.table_style_yellow caption { background: none repeat scroll 0 0 #F2F096; color: #544C4A;}"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(804, 'System - JCK Modal', 'plugin', 'jckmodal', 'system', 0, 0, 1, 0, '{"legacy":true,"name":"System - JCK Modal","type":"plugin","creationDate":"April 2011","author":"WebxSolution Ltd","copyright":"Copyright 2011 WebxSolution Ltd. All rights reserved.","authorEmail":"studio@webxsolution.com","authorUrl":"www.webxsolution.com","version":"1.0","description":"Forces Joomla to initialise the Modal JS classes required by JTree Link''s modal option.","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(805, 'com_jckman', 'component', 'com_jckman', '', 1, 1, 0, 0, '{"legacy":false,"name":"com_jckman","type":"component","creationDate":"Oct 2012","author":"Andrew Williams","copyright":"2012 - 2013 WebxSolutions Ltd","authorEmail":"","authorUrl":"","version":"4.8.3","description":" \\n\\t<p>JoomlaCK Editor Manager v4.8.4<\\/p> \\n\\t","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(806, 'jcksuite', 'package', 'pkg_jcksuite', '', 0, 1, 1, 0, '{"legacy":false,"name":"JCK Suite","type":"package","creationDate":"Nov 2012","author":"Andrew Williams","copyright":"","authorEmail":"","authorUrl":"","version":"6.0.5","description":"Welcome to the next-generation of internet based editors. The JCK Editor''s performance is truly amazing, thanks to its plug-n-play state-of-the-art API engine and is much more than an Out-of-the-Box installation of the CKEditor. Weve been under the hood and Joomla-ised its logic into a seamless and extendable integration.  Users can now customise the editor from the largest growing extension base of all Joomla editors, choose what tool-bars, setup user permissions, create and edit the editors own typography style-sheet and configure the editor for real-time editing! And whats more - when you have created your bespoke configuration you can now export your setting via the all new JCK Manager component!","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(807, 'System - JCK Typography', 'plugin', 'jcktypography', 'system', 0, 1, 1, 0, '{"legacy":true,"name":"System - JCK Typography","type":"plugin","creationDate":"Nov 2011","author":"JCK","copyright":"Copyright (C) 2011- 2012 All rights reserved.","authorEmail":"andrew@joomlackeditor.com","authorUrl":"www.joomlackeditor.com","version":"3.4.8","description":"Adds JCK Typography styles to template","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(808, 'GTranslate', 'module', 'mod_gtranslate', '', 0, 1, 0, 0, '{"legacy":false,"name":"GTranslate","type":"module","creationDate":"September 2010","author":"Edvard Ananyan","copyright":"Copyright (C) 2008-2013 Edvard Ananyan. All rights reserved.","authorEmail":"edo888@gmail.com","authorUrl":"http:\\/\\/gtranslate.net","version":"3.0.x.32","description":"\\n    \\n    <span style=''float:left;font-weight:normal;text-align:left;''>GTranslate - Makes your website multilingual and available to the world.<br\\/><br\\/><a href=''http:\\/\\/gtranslate.net\\/docs\\/54-joomla-module-documentation'' target=''_blank'' class=''btn btn-large btn-info''><i class=''icon-support''><\\/i> Documentation<\\/a> &nbsp; <a href=''http:\\/\\/extensions.joomla.org\\/extensions\\/languages\\/automatic-translations\\/4823'' target=''_blank'' class=''btn btn-large btn-warning''><i class=''icon-comments''><\\/i> Reviews<\\/a><br\\/><br\\/>\\n    <h3>Tour Video<\\/h3>\\n    <iframe src=\\"http:\\/\\/player.vimeo.com\\/video\\/30132555?title=1&amp;byline=0&amp;portrait=0\\" width=\\"568\\" height=\\"360\\" frameborder=\\"0\\" webkitAllowFullScreen mozallowfullscreen allowFullScreen><\\/iframe>\\n    <p>If you would like to <i>edit translations manually<\\/i> and have <i>SEF URLs<\\/i> (http:\\/\\/domain.com<u>\\/es\\/<\\/u>, http:\\/\\/domain.com<u>\\/fr\\/<\\/u>, http:\\/\\/domain.com<u>\\/it\\/<\\/u>, etc.) for translated languages or you want your <i>translated pages to be indexed<\\/i> in search engines to <i>increase international traffic<\\/i> you may consider <a href=\\"http:\\/\\/gtranslate.net\\/features?xyz=997\\" target=\\"_blank\\">GTranslate Pro<\\/a> version.<\\/p>\\n    <h3>Translation Delivery Network<\\/h3>\\n    <iframe src=\\"http:\\/\\/player.vimeo.com\\/video\\/38686858?title=1&amp;byline=0&amp;portrait=0\\" width=\\"568\\" height=\\"360\\" frameborder=\\"0\\" webkitAllowFullScreen mozallowfullscreen allowFullScreen><\\/iframe>\\n    <p>If you would like to use our next generation <i>cloud service<\\/i> which will allow you to <i>host your languages<\\/i> on top level country domain name (ccTLD) to <i>rank higher<\\/i> on local search engines results you may consider <a href=\\"http:\\/\\/gtranslate.net\\/features?xyz=997\\" target=\\"_blank\\">GTranslate Enterprise<\\/a> a <a href=\\"http:\\/\\/gtranslate.net\\/translation-delivery-network\\" target=\\"_blank\\">Translation Delivery Network<\\/a>. In that case for example for Spanish you can have <u>es.domain.com<\\/u> or <u>domain.es<\\/u> if you own it.<\\/p>\\n    <br\\/><b>Version: 3.0.x.32<\\/b><br\\/>Copyright &copy; 2008-2013 Edvard Ananyan, All rights reserved. <a href=''http:\\/\\/gtranslate.net'' target=''_blank''><b>http:\\/\\/gtranslate.net<\\/b><\\/a><\\/span>\\n    \\n    ","group":""}', '{"moduleclass_sfx":"","pro_version":"0","enterprise_version":"0","method":"onfly","look":"both","flag_size":"16","orientation":"h","new_tab":"0","analytics":"0","language":"en","show_af":"1","show_sq":"1","show_ar":"1","show_hy":"1","show_az":"1","show_eu":"1","show_be":"1","show_bg":"1","show_ca":"1","show_zh-CN":"1","show_zh-TW":"1","show_hr":"1","show_cs":"1","show_da":"1","show_nl":"1","show_en":"2","show_et":"1","show_tl":"1","show_fi":"1","show_fr":"2","show_gl":"1","show_ka":"1","show_de":"2","show_el":"1","show_ht":"1","show_iw":"1","show_hi":"1","show_hu":"1","show_is":"1","show_id":"1","show_ga":"1","show_it":"2","show_ja":"1","show_ko":"1","show_lv":"1","show_lt":"1","show_mk":"1","show_ms":"1","show_mt":"1","show_no":"1","show_fa":"1","show_pl":"1","show_pt":"2","show_ro":"1","show_ru":"2","show_sr":"1","show_sk":"1","show_sl":"1","show_es":"2","show_sw":"1","show_sv":"1","show_th":"1","show_tr":"1","show_uk":"1","show_ur":"1","show_vi":"1","show_cy":"1","show_yi":"1","cache":"1","cache_time":"900","cachemode":"static"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(809, 'CatalanCatal-ca_ES', 'language', 'ca-ES', '', 0, 1, 0, 0, '{"legacy":false,"name":"Catalan (Catal\\u00e0 - ca_ES)","type":"language","creationDate":"2014-12-12","author":"Catalan translation team","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"el.libre@tradu.cat","authorUrl":"www.catmidia.cat","version":"2.5.28.1","description":"Catalan language pack for Joomla! 2.5 - Site - Paquet d`idioma catal\\u00e0 per Joomla 2.5 - Lloc Web (FrontEnd) Fet per www.catmidia.cat","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(810, 'CatalanCatal-ca_ES', 'language', 'ca-ES', '', 1, 1, 0, 0, '{"legacy":false,"name":"Catalan (Catal\\u00e0 - ca_ES)","type":"language","creationDate":"2014-12-12","author":"Catalan Translation Team","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"el.libre@tradu.cat","authorUrl":"www.catmidia.cat","version":"2.5.28.1","description":"Catalan language pack for Joomla! 2.5 - Administration - Paquet d`idioma catal\\u00e0 per Joomla 2.5 - Administraci\\u00f3 (BackEnd) Fet per www.catmidia.cat","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(811, 'ca-ES', 'package', 'pkg_ca-ES', '', 0, 1, 1, 0, '{"legacy":false,"name":"Catalan Language Pack","type":"package","creationDate":"2014-12-12","author":"Catalan Translation Team","copyright":"","authorEmail":"el.libre@tradu.cat","authorUrl":"http:\\/\\/www.catmidia.cat","version":"2.5.28.1","description":"Joomla 2.5.28 catalan language package","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `onr_finder_filters`
--

CREATE TABLE IF NOT EXISTS `onr_finder_filters` (
  `filter_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `alias` varchar(255) NOT NULL,
  `state` tinyint(1) NOT NULL DEFAULT '1',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL,
  `created_by_alias` varchar(255) NOT NULL,
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `map_count` int(10) unsigned NOT NULL DEFAULT '0',
  `data` text NOT NULL,
  `params` mediumtext,
  PRIMARY KEY (`filter_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `onr_finder_links`
--

CREATE TABLE IF NOT EXISTS `onr_finder_links` (
  `link_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `url` varchar(255) NOT NULL,
  `route` varchar(255) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `indexdate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `md5sum` varchar(32) DEFAULT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '1',
  `state` int(5) DEFAULT '1',
  `access` int(5) DEFAULT '0',
  `language` varchar(8) NOT NULL,
  `publish_start_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_end_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `start_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `end_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `list_price` double unsigned NOT NULL DEFAULT '0',
  `sale_price` double unsigned NOT NULL DEFAULT '0',
  `type_id` int(11) NOT NULL,
  `object` mediumblob NOT NULL,
  PRIMARY KEY (`link_id`),
  KEY `idx_type` (`type_id`),
  KEY `idx_title` (`title`),
  KEY `idx_md5` (`md5sum`),
  KEY `idx_url` (`url`(75)),
  KEY `idx_published_list` (`published`,`state`,`access`,`publish_start_date`,`publish_end_date`,`list_price`),
  KEY `idx_published_sale` (`published`,`state`,`access`,`publish_start_date`,`publish_end_date`,`sale_price`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `onr_finder_links_terms0`
--

CREATE TABLE IF NOT EXISTS `onr_finder_links_terms0` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `onr_finder_links_terms1`
--

CREATE TABLE IF NOT EXISTS `onr_finder_links_terms1` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `onr_finder_links_terms2`
--

CREATE TABLE IF NOT EXISTS `onr_finder_links_terms2` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `onr_finder_links_terms3`
--

CREATE TABLE IF NOT EXISTS `onr_finder_links_terms3` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `onr_finder_links_terms4`
--

CREATE TABLE IF NOT EXISTS `onr_finder_links_terms4` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `onr_finder_links_terms5`
--

CREATE TABLE IF NOT EXISTS `onr_finder_links_terms5` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `onr_finder_links_terms6`
--

CREATE TABLE IF NOT EXISTS `onr_finder_links_terms6` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `onr_finder_links_terms7`
--

CREATE TABLE IF NOT EXISTS `onr_finder_links_terms7` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `onr_finder_links_terms8`
--

CREATE TABLE IF NOT EXISTS `onr_finder_links_terms8` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `onr_finder_links_terms9`
--

CREATE TABLE IF NOT EXISTS `onr_finder_links_terms9` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `onr_finder_links_termsa`
--

CREATE TABLE IF NOT EXISTS `onr_finder_links_termsa` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `onr_finder_links_termsb`
--

CREATE TABLE IF NOT EXISTS `onr_finder_links_termsb` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `onr_finder_links_termsc`
--

CREATE TABLE IF NOT EXISTS `onr_finder_links_termsc` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `onr_finder_links_termsd`
--

CREATE TABLE IF NOT EXISTS `onr_finder_links_termsd` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `onr_finder_links_termse`
--

CREATE TABLE IF NOT EXISTS `onr_finder_links_termse` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `onr_finder_links_termsf`
--

CREATE TABLE IF NOT EXISTS `onr_finder_links_termsf` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `onr_finder_taxonomy`
--

CREATE TABLE IF NOT EXISTS `onr_finder_taxonomy` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL,
  `state` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `access` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ordering` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `parent_id` (`parent_id`),
  KEY `state` (`state`),
  KEY `ordering` (`ordering`),
  KEY `access` (`access`),
  KEY `idx_parent_published` (`parent_id`,`state`,`access`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Volcado de datos para la tabla `onr_finder_taxonomy`
--

INSERT INTO `onr_finder_taxonomy` (`id`, `parent_id`, `title`, `state`, `access`, `ordering`) VALUES
(1, 0, 'ROOT', 0, 0, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `onr_finder_taxonomy_map`
--

CREATE TABLE IF NOT EXISTS `onr_finder_taxonomy_map` (
  `link_id` int(10) unsigned NOT NULL,
  `node_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`node_id`),
  KEY `link_id` (`link_id`),
  KEY `node_id` (`node_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `onr_finder_terms`
--

CREATE TABLE IF NOT EXISTS `onr_finder_terms` (
  `term_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `phrase` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `weight` float unsigned NOT NULL DEFAULT '0',
  `soundex` varchar(75) NOT NULL,
  `links` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  UNIQUE KEY `idx_term` (`term`),
  KEY `idx_term_phrase` (`term`,`phrase`),
  KEY `idx_stem_phrase` (`stem`,`phrase`),
  KEY `idx_soundex_phrase` (`soundex`,`phrase`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `onr_finder_terms_common`
--

CREATE TABLE IF NOT EXISTS `onr_finder_terms_common` (
  `term` varchar(75) NOT NULL,
  `language` varchar(3) NOT NULL,
  KEY `idx_word_lang` (`term`,`language`),
  KEY `idx_lang` (`language`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `onr_finder_terms_common`
--

INSERT INTO `onr_finder_terms_common` (`term`, `language`) VALUES
('a', 'en'),
('about', 'en'),
('after', 'en'),
('ago', 'en'),
('all', 'en'),
('am', 'en'),
('an', 'en'),
('and', 'en'),
('ani', 'en'),
('any', 'en'),
('are', 'en'),
('aren''t', 'en'),
('as', 'en'),
('at', 'en'),
('be', 'en'),
('but', 'en'),
('by', 'en'),
('for', 'en'),
('from', 'en'),
('get', 'en'),
('go', 'en'),
('how', 'en'),
('if', 'en'),
('in', 'en'),
('into', 'en'),
('is', 'en'),
('isn''t', 'en'),
('it', 'en'),
('its', 'en'),
('me', 'en'),
('more', 'en'),
('most', 'en'),
('must', 'en'),
('my', 'en'),
('new', 'en'),
('no', 'en'),
('none', 'en'),
('not', 'en'),
('noth', 'en'),
('nothing', 'en'),
('of', 'en'),
('off', 'en'),
('often', 'en'),
('old', 'en'),
('on', 'en'),
('onc', 'en'),
('once', 'en'),
('onli', 'en'),
('only', 'en'),
('or', 'en'),
('other', 'en'),
('our', 'en'),
('ours', 'en'),
('out', 'en'),
('over', 'en'),
('page', 'en'),
('she', 'en'),
('should', 'en'),
('small', 'en'),
('so', 'en'),
('some', 'en'),
('than', 'en'),
('thank', 'en'),
('that', 'en'),
('the', 'en'),
('their', 'en'),
('theirs', 'en'),
('them', 'en'),
('then', 'en'),
('there', 'en'),
('these', 'en'),
('they', 'en'),
('this', 'en'),
('those', 'en'),
('thus', 'en'),
('time', 'en'),
('times', 'en'),
('to', 'en'),
('too', 'en'),
('true', 'en'),
('under', 'en'),
('until', 'en'),
('up', 'en'),
('upon', 'en'),
('use', 'en'),
('user', 'en'),
('users', 'en'),
('veri', 'en'),
('version', 'en'),
('very', 'en'),
('via', 'en'),
('want', 'en'),
('was', 'en'),
('way', 'en'),
('were', 'en'),
('what', 'en'),
('when', 'en'),
('where', 'en'),
('whi', 'en'),
('which', 'en'),
('who', 'en'),
('whom', 'en'),
('whose', 'en'),
('why', 'en'),
('wide', 'en'),
('will', 'en'),
('with', 'en'),
('within', 'en'),
('without', 'en'),
('would', 'en'),
('yes', 'en'),
('yet', 'en'),
('you', 'en'),
('your', 'en'),
('yours', 'en');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `onr_finder_tokens`
--

CREATE TABLE IF NOT EXISTS `onr_finder_tokens` (
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `phrase` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `weight` float unsigned NOT NULL DEFAULT '1',
  `context` tinyint(1) unsigned NOT NULL DEFAULT '2',
  KEY `idx_word` (`term`),
  KEY `idx_context` (`context`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `onr_finder_tokens_aggregate`
--

CREATE TABLE IF NOT EXISTS `onr_finder_tokens_aggregate` (
  `term_id` int(10) unsigned NOT NULL,
  `map_suffix` char(1) NOT NULL,
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `phrase` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `term_weight` float unsigned NOT NULL,
  `context` tinyint(1) unsigned NOT NULL DEFAULT '2',
  `context_weight` float unsigned NOT NULL,
  `total_weight` float unsigned NOT NULL,
  KEY `token` (`term`),
  KEY `keyword_id` (`term_id`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `onr_finder_types`
--

CREATE TABLE IF NOT EXISTS `onr_finder_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `mime` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `title` (`title`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `onr_jckplugins`
--

CREATE TABLE IF NOT EXISTS `onr_jckplugins` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL DEFAULT '',
  `name` varchar(100) NOT NULL,
  `type` varchar(100) NOT NULL DEFAULT 'command',
  `row` tinyint(4) NOT NULL DEFAULT '0',
  `icon` varchar(255) NOT NULL DEFAULT '',
  `published` tinyint(3) NOT NULL DEFAULT '0',
  `editable` tinyint(3) NOT NULL DEFAULT '0',
  `checked_out` int(11) NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `iscore` tinyint(3) NOT NULL DEFAULT '0',
  `acl` text,
  `params` text NOT NULL,
  `parentid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `plugin` (`name`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=101 ;

--
-- Volcado de datos para la tabla `onr_jckplugins`
--

INSERT INTO `onr_jckplugins` (`id`, `title`, `name`, `type`, `row`, `icon`, `published`, `editable`, `checked_out`, `checked_out_time`, `iscore`, `acl`, `params`, `parentid`) VALUES
(1, 'Scayt', 'scayt', 'plugin', 1, '-192', 1, 1, 0, '0000-00-00 00:00:00', 1, NULL, '', 82),
(2, '', 'sourcearea', 'plugin', 0, '', 1, 1, 0, '0000-00-00 00:00:00', 1, NULL, '', NULL),
(3, 'Source', 'source', 'command', 1, '0', 1, 1, 0, '0000-00-00 00:00:00', 1, NULL, '', 2),
(4, 'Preview', 'preview', 'plugin', 1, '-64', 1, 1, 0, '0000-00-00 00:00:00', 1, NULL, '', NULL),
(5, 'Cut', 'cut', 'command', 1, '-96', 1, 1, 0, '0000-00-00 00:00:00', 1, NULL, '', 60),
(6, 'Copy', 'copy', 'command', 1, '-112', 1, 1, 0, '0000-00-00 00:00:00', 1, NULL, '', 60),
(7, 'Paste', 'paste', 'command', 1, '-128', 1, 1, 0, '0000-00-00 00:00:00', 1, NULL, '', 60),
(8, 'PasteText', 'pastetext', 'plugin', 1, '-144', 1, 1, 0, '0000-00-00 00:00:00', 1, NULL, '', NULL),
(9, 'Find', 'find', 'plugin', 1, '-240', 1, 1, 0, '0000-00-00 00:00:00', 1, NULL, '', NULL),
(10, 'Replace', 'replace', 'command', 1, '-256', 1, 1, 0, '0000-00-00 00:00:00', 1, NULL, '', 9),
(11, 'SelectAll', 'selectall', 'command', 1, '-272', 1, 1, 0, '0000-00-00 00:00:00', 1, NULL, '', 61),
(12, 'RemoveFormat', 'removeformat', 'plugin', 1, '-288', 1, 1, 0, '0000-00-00 00:00:00', 1, NULL, '', NULL),
(13, 'Bold', 'bold', 'command', 2, '-304', 1, 1, 0, '0000-00-00 00:00:00', 1, NULL, '', 58),
(14, 'Italic', 'italic', 'command', 2, '-320', 1, 1, 0, '0000-00-00 00:00:00', 1, NULL, '', 58),
(15, 'Strike', 'strike', 'command', 2, '-352', 1, 1, 0, '0000-00-00 00:00:00', 1, NULL, '', 58),
(16, 'Subscript', 'subscript', 'command', 2, '-368', 1, 1, 0, '0000-00-00 00:00:00', 1, NULL, '', 58),
(17, 'Superscript', 'superscript', 'command', 2, '-384', 1, 1, 0, '0000-00-00 00:00:00', 1, NULL, '', 58),
(18, 'Underline', 'underline', 'command', 2, '-336', 1, 1, 0, '0000-00-00 00:00:00', 1, NULL, '', 58),
(19, 'Smiley', 'smiley', 'plugin', 2, '-640', 1, 1, 0, '0000-00-00 00:00:00', 1, NULL, '', NULL),
(20, 'Link', 'link', 'plugin', 2, '-528', 1, 1, 0, '0000-00-00 00:00:00', 1, NULL, '', NULL),
(21, 'Image', 'image', 'plugin', 2, '-576', 1, 1, 0, '0000-00-00 00:00:00', 1, NULL, '', NULL),
(22, 'Flash', 'flash', 'plugin', 2, '-592', 0, 1, 0, '0000-00-00 00:00:00', 1, NULL, '', NULL),
(23, 'SpecialChar', 'specialchar', 'plugin', 2, '-656', 1, 1, 0, '0000-00-00 00:00:00', 1, NULL, '', NULL),
(24, 'PageBreak', 'pagebreak', 'plugin', 2, '-672', 1, 1, 0, '0000-00-00 00:00:00', 1, NULL, '', NULL),
(25, 'SpellChecker', 'checkspell', 'command', 1, '-192', 1, 1, 0, '0000-00-00 00:00:00', 1, NULL, '', 82),
(26, '', 'tableresize', 'plugin', 2, '', 1, 1, 0, '0000-00-00 00:00:00', 1, NULL, '', 82),
(27, '', 'tabletools', 'plugin', 0, '', 1, 1, 0, '0000-00-00 00:00:00', 1, NULL, '', 82),
(28, 'TextColor', 'textcolor', 'command', 3, '-704', 1, 1, 0, '0000-00-00 00:00:00', 1, NULL, '', 62),
(29, 'BGColor', 'bgcolor', 'command', 3, '-720', 1, 1, 0, '0000-00-00 00:00:00', 1, NULL, '', 62),
(30, 'Form', 'form', 'command', 1, '-752', 1, 1, 0, '0000-00-00 00:00:00', 1, NULL, '', 75),
(31, 'Radio', 'radio', 'command', 1, '-784', 1, 1, 0, '0000-00-00 00:00:00', 1, NULL, '', 75),
(32, 'TextField', 'textfield', 'command', 1, '-800', 1, 1, 0, '0000-00-00 00:00:00', 1, NULL, '', 75),
(33, 'Textarea', 'textarea', 'command', 1, '-816', 1, 1, 0, '0000-00-00 00:00:00', 1, NULL, '', 75),
(34, 'ShowBlocks', 'showblocks', 'plugin', 3, '-1136', 1, 1, 0, '0000-00-00 00:00:00', 1, NULL, '', NULL),
(35, 'Select', 'select', 'command', 1, '-832', 1, 1, 0, '0000-00-00 00:00:00', 1, NULL, '', 75),
(36, 'ImageButton', 'imagebutton', 'command', 1, '-864', 1, 1, 0, '0000-00-00 00:00:00', 1, NULL, '', 75),
(37, 'HiddenField', 'hiddenfield', 'command', 1, '-880', 1, 1, 0, '0000-00-00 00:00:00', 1, NULL, '', 75),
(38, 'Checkbox', 'checkbox', 'command', 1, '-768', 1, 1, 0, '0000-00-00 00:00:00', 1, NULL, '', 75),
(39, 'Button', 'button', 'command', 1, '-848', 1, 1, 0, '0000-00-00 00:00:00', 1, NULL, '', 75),
(40, 'NumberedList', 'numberedlist', 'command', 2, '-400', 1, 1, 0, '0000-00-00 00:00:00', 1, NULL, '', 90),
(41, 'BulletedList', 'bulletedlist', 'command', 2, '-416', 1, 1, 0, '0000-00-00 00:00:00', 1, NULL, '', 90),
(42, 'Indent', 'indent', 'plugin', 2, '-448', 1, 1, 0, '0000-00-00 00:00:00', 1, NULL, '', NULL),
(43, 'Outdent', 'outdent', 'command', 2, '-432', 1, 1, 0, '0000-00-00 00:00:00', 1, NULL, '', 42),
(44, 'JustifyLeft', 'justifyleft', 'command', 2, '-464', 1, 1, 0, '0000-00-00 00:00:00', 1, NULL, '', 55),
(45, 'JustifyCenter', 'justifycenter', 'command', 2, '-480', 1, 1, 0, '0000-00-00 00:00:00', 1, NULL, '', 55),
(46, 'JustifyBlock', 'justifyblock', 'command', 2, '-512', 1, 1, 0, '0000-00-00 00:00:00', 1, NULL, '', 55),
(47, 'JustifyRight', 'justifyright', 'command', 2, '-496', 1, 1, 0, '0000-00-00 00:00:00', 1, NULL, '', 55),
(48, 'Blockquote', 'blockquote', 'plugin', 2, '-1152', 1, 1, 0, '0000-00-00 00:00:00', 1, NULL, '', NULL),
(49, 'About', 'about', 'plugin', 3, '-736', 0, 1, 0, '0000-00-00 00:00:00', 1, NULL, '', NULL),
(50, 'Maximize', 'maximize', 'plugin', 3, '-1040', 1, 1, 0, '0000-00-00 00:00:00', 1, NULL, '', NULL),
(51, '', 'div', 'plugin', 0, '', 1, 1, 0, '0000-00-00 00:00:00', 1, NULL, '', NULL),
(52, 'CreateDiv', 'creatediv', 'command', 2, '-1168', 1, 1, 0, '0000-00-00 00:00:00', 1, NULL, '', 51),
(53, '', 'editdiv', 'command', 0, '-1184', 1, 1, 0, '0000-00-00 00:00:00', 1, NULL, '', 51),
(54, '', 'removediv', 'command', 0, '-1200', 1, 1, 0, '0000-00-00 00:00:00', 1, NULL, '', 51),
(55, '', 'justify', 'plugin', 0, '', 1, 1, 0, '0000-00-00 00:00:00', 1, NULL, '', NULL),
(56, '', 'a11yhelp', 'plugin', 0, '', 1, 1, 0, '0000-00-00 00:00:00', 1, NULL, '', NULL),
(58, '', 'basicstyles', 'plugin', 0, '', 1, 1, 0, '0000-00-00 00:00:00', 1, NULL, '', NULL),
(59, 'Table', 'table', 'plugin', 2, '-608', 1, 1, 0, '0000-00-00 00:00:00', 1, NULL, '', NULL),
(60, '', 'clipboard', 'plugin', 0, '', 1, 1, 0, '0000-00-00 00:00:00', 1, NULL, '', NULL),
(61, '', 'selection', 'plugin', 0, '', 1, 1, 0, '0000-00-00 00:00:00', 1, NULL, '', NULL),
(62, '', 'colorbutton', 'plugin', 0, '', 1, 1, 0, '0000-00-00 00:00:00', 1, NULL, '', NULL),
(63, 'Unlink', 'unlink', 'command', 2, '-544', 1, 1, 0, '0000-00-00 00:00:00', 1, NULL, '', 20),
(64, 'Anchor', 'anchor', 'command', 2, '-560', 1, 1, 0, '0000-00-00 00:00:00', 1, NULL, '', 20),
(65, '', 'contextmenu', 'plugin', 0, '', 1, 1, 0, '0000-00-00 00:00:00', 1, NULL, '', NULL),
(66, '', 'editingblock', 'plugin', 0, '', 1, 1, 0, '0000-00-00 00:00:00', 1, NULL, '', NULL),
(67, '', 'elementspath', 'plugin', 0, '', 1, 1, 0, '0000-00-00 00:00:00', 1, NULL, '', NULL),
(68, '', 'enterkey', 'plugin', 0, '', 1, 1, 0, '0000-00-00 00:00:00', 1, NULL, '', NULL),
(69, '', 'entities', 'plugin', 0, '', 1, 1, 0, '0000-00-00 00:00:00', 1, NULL, '', NULL),
(70, '', 'toolbar', 'plugin', 0, '', 1, 1, 0, '0000-00-00 00:00:00', 1, NULL, '', NULL),
(71, '', 'jfilebrowser', 'filebrowser', 0, '', 1, 1, 0, '0000-00-00 00:00:00', 1, NULL, '', NULL),
(72, 'Styles', 'stylescombo', 'plugin', 3, '', 1, 1, 0, '0000-00-00 00:00:00', 1, NULL, '', NULL),
(73, 'Font', 'font', 'plugin', 3, '', 1, 1, 0, '0000-00-00 00:00:00', 1, NULL, '', NULL),
(74, 'Format', 'format', 'plugin', 3, '', 1, 1, 0, '0000-00-00 00:00:00', 1, NULL, '', NULL),
(75, '', 'forms', 'plugin', 0, '', 1, 1, 0, '0000-00-00 00:00:00', 1, NULL, '', NULL),
(76, 'About', 'jabout', 'plugin', 3, '-736', 1, 1, 0, '0000-00-00 00:00:00', 1, NULL, '', NULL),
(77, 'Flash', 'jflash', 'plugin', 2, '-592', 1, 1, 0, '0000-00-00 00:00:00', 1, NULL, '', NULL),
(78, 'Save', 'jsave', 'plugin', 1, '-32', 1, 1, 0, '0000-00-00 00:00:00', 1, NULL, '', NULL),
(79, 'JTreeLink', 'jtreelink', 'plugin', 2, 'images/jtreelink.png', 1, 1, 0, '0000-00-00 00:00:00', 1, NULL, '', NULL),
(80, 'HorizontalRule', 'horizontalrule', 'plugin', 2, '-624', 1, 1, 0, '0000-00-00 00:00:00', 1, NULL, '', NULL),
(81, 'Print', 'print', 'plugin', 1, '-176', 1, 1, 0, '0000-00-00 00:00:00', 1, NULL, '', NULL),
(82, '', 'wsc', 'plugin', 0, '', 1, 1, 0, '0000-00-00 00:00:00', 1, NULL, '', NULL),
(83, '', 'showborders', 'plugin', 0, '', 1, 1, 0, '0000-00-00 00:00:00', 1, NULL, '', NULL),
(84, '', 'tab', 'plugin', 0, '', 1, 1, 0, '0000-00-00 00:00:00', 1, NULL, '', NULL),
(85, 'Undo', 'undo', 'plugin', 1, '-208', 1, 1, 0, '0000-00-00 00:00:00', 1, NULL, '', NULL),
(86, 'Redo', 'redo', 'command', 1, '-224', 1, 1, 0, '0000-00-00 00:00:00', 1, NULL, '', 86),
(87, '', 'resize', 'plugin', 0, '', 1, 1, 0, '0000-00-00 00:00:00', 1, NULL, '', NULL),
(88, 'Templates', 'templates', 'plugin', 1, '-80', 1, 1, 0, '0000-00-00 00:00:00', 1, NULL, '', NULL),
(89, '', 'wysiwygarea', 'plugin', 0, '', 1, 1, 0, '0000-00-00 00:00:00', 1, NULL, '', NULL),
(90, '', 'list', 'plugin', 0, '', 1, 1, 0, '0000-00-00 00:00:00', 1, NULL, '', NULL),
(92, 'FontSize', 'fontsize', 'command', 3, '', 1, 1, 0, '0000-00-00 00:00:00', 1, NULL, '', 73),
(93, 'PasteFromWord', 'pastefromword', 'plugin', 1, '-160', 1, 1, 0, '0000-00-00 00:00:00', 1, NULL, '', NULL),
(94, 'Mobileimage', 'mobileimage', 'plugin', 1, 'icon.png', 1, 1, 0, '0000-00-00 00:00:00', 1, NULL, '', NULL),
(57, '', 'autogrow', 'plugin', 0, '', 0, 1, 0, '0000-00-00 00:00:00', 1, NULL, '', NULL),
(95, '', 'html5support', 'plugin', 0, '', 1, 1, 0, '0000-00-00 00:00:00', 1, NULL, '', NULL),
(96, 'Video', 'video', 'plugin', 3, 'images/icon.png', 1, 1, 0, '0000-00-00 00:00:00', 1, NULL, '', 95),
(97, 'Audio', 'audio', 'plugin', 3, 'images/icon.png', 1, 1, 0, '0000-00-00 00:00:00', 1, NULL, '', 95),
(98, 'UIColor', 'uicolor', 'plugin', 3, 'uicolor.gif', 1, 1, 0, '0000-00-00 00:00:00', 1, NULL, '', NULL),
(99, '', 'imagedragndrop', 'plugin', 0, '', 1, 1, 0, '0000-00-00 00:00:00', 1, NULL, '', NULL),
(100, '', 'ie9selectionoverride', 'plugin', 0, '', 1, 1, 0, '0000-00-00 00:00:00', 1, NULL, '', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `onr_jcktoolbarplugins`
--

CREATE TABLE IF NOT EXISTS `onr_jcktoolbarplugins` (
  `toolbarid` int(11) NOT NULL,
  `pluginid` int(11) NOT NULL,
  `row` int(11) NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `state` tinyint(3) NOT NULL DEFAULT '0',
  PRIMARY KEY (`toolbarid`,`pluginid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `onr_jcktoolbars`
--

CREATE TABLE IF NOT EXISTS `onr_jcktoolbars` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL DEFAULT '',
  `name` varchar(100) NOT NULL,
  `published` tinyint(3) NOT NULL DEFAULT '0',
  `checked_out` int(11) NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `iscore` tinyint(3) NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `toolbar` (`name`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Volcado de datos para la tabla `onr_jcktoolbars`
--

INSERT INTO `onr_jcktoolbars` (`id`, `title`, `name`, `published`, `checked_out`, `checked_out_time`, `iscore`, `params`) VALUES
(1, 'Full', 'full', 1, 0, '0000-00-00 00:00:00', 1, ''),
(2, 'Publisher', 'publisher', 1, 0, '0000-00-00 00:00:00', 1, ''),
(3, 'Basic', 'basic', 1, 0, '0000-00-00 00:00:00', 1, ''),
(4, 'Blog', 'blog', 1, 0, '0000-00-00 00:00:00', 1, ''),
(5, 'Image', 'image', 1, 0, '0000-00-00 00:00:00', 1, '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `onr_languages`
--

CREATE TABLE IF NOT EXISTS `onr_languages` (
  `lang_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `lang_code` char(7) NOT NULL,
  `title` varchar(50) NOT NULL,
  `title_native` varchar(50) NOT NULL,
  `sef` varchar(50) NOT NULL,
  `image` varchar(50) NOT NULL,
  `description` varchar(512) NOT NULL,
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `sitename` varchar(1024) NOT NULL DEFAULT '',
  `published` int(11) NOT NULL DEFAULT '0',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`lang_id`),
  UNIQUE KEY `idx_sef` (`sef`),
  UNIQUE KEY `idx_image` (`image`),
  UNIQUE KEY `idx_langcode` (`lang_code`),
  KEY `idx_access` (`access`),
  KEY `idx_ordering` (`ordering`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Volcado de datos para la tabla `onr_languages`
--

INSERT INTO `onr_languages` (`lang_id`, `lang_code`, `title`, `title_native`, `sef`, `image`, `description`, `metakey`, `metadesc`, `sitename`, `published`, `access`, `ordering`) VALUES
(1, 'en-GB', 'English (UK)', 'English (UK)', 'en', 'en', '', '', '', '', 1, 0, 1),
(3, 'es-ES', 'Español (Formal Internacional) (ES)', 'Español (Formal Internacional) (ES)', 'es', 'es', '', '', '', '', 1, 0, 1),
(4, 'ca_Es', 'Català', 'Català', 'ca', 'ca', '', '', '', '', 1, 1, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `onr_menu`
--

CREATE TABLE IF NOT EXISTS `onr_menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `menutype` varchar(24) NOT NULL COMMENT 'The type of menu this item belongs to. FK to #__menu_types.menutype',
  `title` varchar(255) NOT NULL COMMENT 'The display title of the menu item.',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT 'The SEF alias of the menu item.',
  `note` varchar(255) NOT NULL DEFAULT '',
  `path` varchar(1024) NOT NULL COMMENT 'The computed path of the menu item based on the alias field.',
  `link` varchar(1024) NOT NULL COMMENT 'The actually link the menu item refers to.',
  `type` varchar(16) NOT NULL COMMENT 'The type of link: Component, URL, Alias, Separator',
  `published` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'The published state of the menu link.',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '1' COMMENT 'The parent menu item in the menu tree.',
  `level` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'The relative level in the tree.',
  `component_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to #__extensions.id',
  `ordering` int(11) NOT NULL DEFAULT '0' COMMENT 'The relative ordering of the menu item in the tree.',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to #__users.id',
  `checked_out_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'The time the menu item was checked out.',
  `browserNav` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'The click behaviour of the link.',
  `access` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'The access level required to view the menu item.',
  `img` varchar(255) NOT NULL COMMENT 'The image of the menu item.',
  `template_style_id` int(10) unsigned NOT NULL DEFAULT '0',
  `params` text NOT NULL COMMENT 'JSON encoded data for the menu item.',
  `lft` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `home` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Indicates if this menu item is the home or default page.',
  `language` char(7) NOT NULL DEFAULT '',
  `client_id` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_client_id_parent_id_alias_language` (`client_id`,`parent_id`,`alias`,`language`),
  KEY `idx_componentid` (`component_id`,`menutype`,`published`,`access`),
  KEY `idx_menutype` (`menutype`),
  KEY `idx_left_right` (`lft`,`rgt`),
  KEY `idx_alias` (`alias`),
  KEY `idx_path` (`path`(255)),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=501 ;

--
-- Volcado de datos para la tabla `onr_menu`
--

INSERT INTO `onr_menu` (`id`, `menutype`, `title`, `alias`, `note`, `path`, `link`, `type`, `published`, `parent_id`, `level`, `component_id`, `ordering`, `checked_out`, `checked_out_time`, `browserNav`, `access`, `img`, `template_style_id`, `params`, `lft`, `rgt`, `home`, `language`, `client_id`) VALUES
(1, '', 'Menu_Item_Root', 'root', '', '', '', '', 1, 0, 0, 0, 0, 0, '0000-00-00 00:00:00', 0, 0, '', 0, '', 0, 339, 0, '*', 0),
(2, 'menu', 'com_banners', 'Banners', '', 'Banners', 'index.php?option=com_banners', 'component', 0, 1, 1, 4, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners', 0, '', 13, 22, 0, '*', 1),
(3, 'menu', 'com_banners', 'Banners', '', 'Banners/Banners', 'index.php?option=com_banners', 'component', 0, 2, 2, 4, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners', 0, '', 14, 15, 0, '*', 1),
(4, 'menu', 'com_banners_categories', 'Categories', '', 'Banners/Categories', 'index.php?option=com_categories&extension=com_banners', 'component', 0, 2, 2, 6, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners-cat', 0, '', 16, 17, 0, '*', 1),
(5, 'menu', 'com_banners_clients', 'Clients', '', 'Banners/Clients', 'index.php?option=com_banners&view=clients', 'component', 0, 2, 2, 4, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners-clients', 0, '', 18, 19, 0, '*', 1),
(6, 'menu', 'com_banners_tracks', 'Tracks', '', 'Banners/Tracks', 'index.php?option=com_banners&view=tracks', 'component', 0, 2, 2, 4, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners-tracks', 0, '', 20, 21, 0, '*', 1),
(7, 'menu', 'com_contact', 'Contacts', '', 'Contacts', 'index.php?option=com_contact', 'component', 0, 1, 1, 8, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:contact', 0, '', 23, 28, 0, '*', 1),
(8, 'menu', 'com_contact', 'Contacts', '', 'Contacts/Contacts', 'index.php?option=com_contact', 'component', 0, 7, 2, 8, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:contact', 0, '', 24, 25, 0, '*', 1),
(9, 'menu', 'com_contact_categories', 'Categories', '', 'Contacts/Categories', 'index.php?option=com_categories&extension=com_contact', 'component', 0, 7, 2, 6, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:contact-cat', 0, '', 26, 27, 0, '*', 1),
(10, 'menu', 'com_messages', 'Messaging', '', 'Messaging', 'index.php?option=com_messages', 'component', 0, 1, 1, 15, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:messages', 0, '', 29, 34, 0, '*', 1),
(11, 'menu', 'com_messages_add', 'New Private Message', '', 'Messaging/New Private Message', 'index.php?option=com_messages&task=message.add', 'component', 0, 10, 2, 15, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:messages-add', 0, '', 30, 31, 0, '*', 1),
(12, 'menu', 'com_messages_read', 'Read Private Message', '', 'Messaging/Read Private Message', 'index.php?option=com_messages', 'component', 0, 10, 2, 15, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:messages-read', 0, '', 32, 33, 0, '*', 1),
(13, 'menu', 'com_newsfeeds', 'News Feeds', '', 'News Feeds', 'index.php?option=com_newsfeeds', 'component', 0, 1, 1, 17, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:newsfeeds', 0, '', 35, 40, 0, '*', 1),
(14, 'menu', 'com_newsfeeds_feeds', 'Feeds', '', 'News Feeds/Feeds', 'index.php?option=com_newsfeeds', 'component', 0, 13, 2, 17, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:newsfeeds', 0, '', 36, 37, 0, '*', 1),
(15, 'menu', 'com_newsfeeds_categories', 'Categories', '', 'News Feeds/Categories', 'index.php?option=com_categories&extension=com_newsfeeds', 'component', 0, 13, 2, 6, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:newsfeeds-cat', 0, '', 38, 39, 0, '*', 1),
(16, 'menu', 'com_redirect', 'Redirect', '', 'Redirect', 'index.php?option=com_redirect', 'component', 0, 1, 1, 24, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:redirect', 0, '', 55, 56, 0, '*', 1),
(17, 'menu', 'com_search', 'Búsqueda básica', '', 'Búsqueda básica', 'index.php?option=com_search', 'component', 0, 1, 1, 19, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:search', 0, '', 45, 46, 0, '*', 1),
(18, 'menu', 'com_weblinks', 'Weblinks', '', 'Weblinks', 'index.php?option=com_weblinks', 'component', 0, 1, 1, 21, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:weblinks', 0, '', 49, 54, 0, '*', 1),
(19, 'menu', 'com_weblinks_links', 'Links', '', 'Weblinks/Links', 'index.php?option=com_weblinks', 'component', 0, 18, 2, 21, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:weblinks', 0, '', 50, 51, 0, '*', 1),
(20, 'menu', 'com_weblinks_categories', 'Categories', '', 'Weblinks/Categories', 'index.php?option=com_categories&extension=com_weblinks', 'component', 0, 18, 2, 6, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:weblinks-cat', 0, '', 52, 53, 0, '*', 1),
(21, 'menu', 'com_finder', 'Búsqueda inteligente', '', 'Búsqueda inteligente', 'index.php?option=com_finder', 'component', 0, 1, 1, 27, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:finder', 0, '', 43, 44, 0, '*', 1),
(22, 'menu', 'com_joomlaupdate', 'Joomla! Update', '', 'Joomla! Update', 'index.php?option=com_joomlaupdate', 'component', 0, 1, 1, 28, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:joomlaupdate', 0, '', 41, 42, 0, '*', 1),
(201, 'usermenu', 'Su perfil', 'your-profile', '', 'your-profile', 'index.php?option=com_users&view=profile', 'component', 1, 1, 1, 25, 0, 0, '0000-00-00 00:00:00', 0, 2, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 239, 240, 1, '*', 0),
(207, 'top', 'JoomlaSpanish', 'joomlaspanishorg', '', 'joomlaspanishorg', 'http://joomlaspanish.org', 'url', 1, 1, 1, 0, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":""}', 237, 238, 0, '*', 0),
(227, 'aboutjoomla', 'Weblinks Categories', 'weblinks-categories', '', 'using-joomla/extensions/components/weblinks-component/weblinks-categories', 'index.php?option=com_weblinks&view=categories&id=18', 'component', 1, 265, 5, 21, 6, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_base_description":"","categories_description":"","maxLevelcat":"-1","show_empty_categories_cat":"","show_subcat_desc_cat":"","show_cat_num_links_cat":"","show_category_title":"","show_description":"","show_description_image":"","maxLevel":"-1","show_empty_categories":"","show_subcat_desc":"","show_cat_num_links":"","show_pagination_limit":"","show_headings":"","show_link_description":"","show_link_hits":"","show_pagination":"","show_pagination_results":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 91, 92, 0, '*', 0),
(229, 'aboutjoomla', 'Single Contact', 'single-contact', '', 'using-joomla/extensions/components/contact-component/single-contact', 'index.php?option=com_contact&view=contact&id=1', 'component', 1, 270, 5, 8, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_category_crumb":"","presentation_style":"","show_contact_category":"","show_contact_list":"","show_name":"","show_position":"","show_email":"","show_street_address":"","show_suburb":"","show_state":"","show_postcode":"","show_country":"","show_telephone":"","show_mobile":"","show_fax":"","show_webpage":"","show_misc":"","show_image":"","allow_vcard":"","show_articles":"","show_links":"","linka_name":"","linkb_name":"","linkc_name":"","linkd_name":"","linke_name":"","show_email_form":"","show_email_copy":"","banned_email":"","banned_subject":"","banned_text":"","validate_session":"","custom_reply":"","redirect":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","show_page_heading":0,"page_title":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 81, 82, 0, '*', 0),
(233, 'mainmenu', 'Acceso', 'login', '', 'login', 'index.php?option=com_users&view=login', 'component', 1, 1, 1, 25, -3, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","show_page_heading":0,"page_title":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 11, 12, 0, '*', 0),
(234, 'parks', 'Park Blog', 'park-blog', '', 'park-blog', 'index.php?option=com_content&view=category&layout=blog&id=27', 'component', 1, 1, 1, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 114, '{"maxLevel":"","show_empty_categories":"","show_description":"1","show_description_image":"1","show_category_title":"","show_cat_num_articles":"","num_leading_articles":"1","num_intro_articles":"4","num_columns":"1","num_links":"4","multi_column_order":"","orderby_pri":"","orderby_sec":"","order_date":"","show_pagination":"2","show_noauth":"","show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_readmore":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_feed_link":"1","feed_summary":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","show_page_heading":0,"page_title":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 243, 244, 0, 'en-GB', 0),
(238, 'mainmenu', 'Sitios de ejemplo', 'sample-sites', '', 'sample-sites', 'index.php?option=com_content&view=article&id=38', 'component', 1, 1, 1, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_noauth":"","show_title":"","link_titles":"","show_intro":"","show_category":"0","link_category":"","show_parent_category":"0","link_parent_category":"","show_author":"0","link_author":"","show_create_date":"0","show_modify_date":"0","show_publish_date":"0","show_item_navigation":"0","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"0","robots":"","rights":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","show_page_heading":0,"page_title":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","secure":0}', 267, 272, 0, '*', 0),
(242, 'parks', 'Write a Blog Post', 'write-a-blog-post', '', 'write-a-blog-post', 'index.php?option=com_content&view=form&layout=edit', 'component', 1, 1, 1, 22, 0, 0, '0000-00-00 00:00:00', 0, 3, '', 114, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","show_page_heading":0,"page_title":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 245, 246, 0, 'en-GB', 0),
(243, 'parks', 'Parks Home', 'parks-home', '', 'parks-home', 'index.php?option=com_content&view=article&id=6', 'component', 1, 1, 1, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 114, '{"show_noauth":"","show_title":"0","link_titles":"","show_intro":"","show_category":"0","link_category":"0","show_parent_category":"","link_parent_category":"","show_author":"0","link_author":"","show_create_date":"0","show_modify_date":"0","show_publish_date":"0","show_item_navigation":"0","show_icons":"","show_print_icon":"0","show_email_icon":"0","show_hits":"0","robots":"","rights":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","show_page_heading":0,"page_title":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","secure":0}', 241, 242, 0, 'en-GB', 0),
(244, 'parks', 'Image Gallery', 'image-gallery', '', 'image-gallery', 'index.php?option=com_content&view=categories&id=28', 'component', 1, 1, 1, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 114, '{"show_base_description":"1","categories_description":"","maxLevelcat":"","show_empty_categories_cat":"","show_subcat_desc_cat":"","show_cat_num_articles_cat":"","drill_down_layout":"1","show_category_title":"","show_description":"1","show_description_image":"1","maxLevel":"-1","show_empty_categories":"","show_subcat_desc":"","show_cat_num_articles":"","num_leading_articles":"1","num_intro_articles":"4","num_columns":"2","num_links":"4","multi_column_order":"","orderby_pri":"","orderby_sec":"","order_date":"","show_pagination":"","show_pagination_results":"","show_pagination_limit":"","filter_field":"","show_headings":"","list_show_date":"","date_format":"","list_show_hits":"","list_show_author":"","show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_readmore":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","show_feed_link":"","feed_summary":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 247, 252, 0, 'en-GB', 0),
(249, 'aboutjoomla', 'Submit a Weblink', 'submit-a-weblink', '', 'using-joomla/extensions/components/weblinks-component/submit-a-weblink', 'index.php?option=com_weblinks&view=form&layout=edit', 'component', 1, 265, 5, 21, 0, 0, '0000-00-00 00:00:00', 0, 3, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","show_page_heading":0,"page_title":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 87, 88, 0, '*', 0),
(251, 'aboutjoomla', 'Contact Categories', 'contact-categories', '', 'using-joomla/extensions/components/contact-component/contact-categories', 'index.php?option=com_contact&view=categories&id=16', 'component', 1, 270, 5, 8, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_base_description":"","categories_description":"","maxLevel":"-1","show_empty_categories":"","show_description":"","show_description_image":"","show_cat_num_articles":"","display_num":"","show_headings":"","filter_field":"","show_pagination":"","show_noauth":"","presentation_style":"sliders","show_name":"","show_position":"","show_email":"","show_street_address":"","show_suburb":"","show_state":"","show_postcode":"","show_country":"","show_telephone":"","show_mobile":"","show_fax":"","show_webpage":"","show_misc":"","show_image":"","allow_vcard":"","show_articles":"","show_links":"1","linka_name":"","linkb_name":"","linkc_name":"","linkd_name":"","linke_name":"","show_email_form":"","show_email_copy":"","banned_email":"","banned_subject":"","banned_text":"","validate_session":"","custom_reply":"","redirect":"","show_feed_link":"","feed_summary":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","show_page_heading":0,"page_title":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 77, 78, 0, '*', 0),
(252, 'aboutjoomla', 'News Feed Categories', 'new-feed-categories', '', 'using-joomla/extensions/components/news-feeds-component/new-feed-categories', 'index.php?option=com_newsfeeds&view=categories&id=0', 'component', 1, 267, 5, 17, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_base_description":"1","categories_description":"Because this links to the root category the \\"uncategorised\\" category is displayed. ","maxLevel":"-1","show_empty_categories":"1","show_description":"1","show_description_image":"1","show_cat_num_articles":"1","display_num":"","show_headings":"","orderby_pri":"","orderby_sec":"","order_date":"","show_pagination":"","show_noauth":"","show_feed_image":"","show_feed_description":"","show_item_description":"","feed_character_count":"0","show_feed_link":"","feed_summary":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","show_page_heading":0,"page_title":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 95, 96, 0, '*', 0),
(253, 'aboutjoomla', 'News Feed Category', 'news-feed-category', '', 'using-joomla/extensions/components/news-feeds-component/news-feed-category', 'index.php?option=com_newsfeeds&view=category&id=17', 'component', 1, 267, 5, 17, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"maxLevel":"-1","show_empty_categories":"","show_description":"","show_description_image":"","show_cat_num_articles":"","display_num":"","show_headings":"","orderby_pri":"","orderby_sec":"","order_date":"","show_pagination":"","show_noauth":"","show_feed_image":"","show_feed_description":"","show_item_description":"","feed_character_count":"0","show_feed_link":"","feed_summary":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","show_page_heading":0,"page_title":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 99, 100, 0, '*', 0),
(254, 'aboutjoomla', 'Single News Feed', 'single-news-feed', '', 'using-joomla/extensions/components/news-feeds-component/single-news-feed', 'index.php?option=com_newsfeeds&view=newsfeed&id=4', 'component', 1, 267, 5, 17, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_feed_image":"","show_feed_description":"","show_item_description":"","feed_character_count":"0","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","show_page_heading":0,"page_title":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 97, 98, 0, '*', 0),
(255, 'aboutjoomla', 'Buscar', 'search', '', 'using-joomla/extensions/components/search-component/search', 'index.php?option=com_search&view=search', 'component', 1, 276, 5, 19, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"search_areas":"1","show_date":"1","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","show_page_heading":0,"page_title":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 117, 118, 0, '*', 0),
(256, 'aboutjoomla', 'Archived Articles', 'archived-articles', '', 'using-joomla/extensions/components/content-component/archived-articles', 'index.php?option=com_content&view=archive', 'component', 1, 266, 5, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"orderby_sec":"","order_date":"","display_num":"","filter_field":"","show_category":"1","link_category":"1","show_title":"1","link_titles":"1","show_intro":"1","show_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_readmore":"","show_hits":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","show_page_heading":0,"page_title":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 71, 72, 0, '*', 0),
(257, 'aboutjoomla', 'Single Article', 'single-article', '', 'using-joomla/extensions/components/content-component/single-article', 'index.php?option=com_content&view=article&id=6', 'component', 1, 266, 5, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_noauth":"","show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","robots":"","rights":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","show_page_heading":0,"page_title":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","secure":0}', 61, 62, 0, '*', 0),
(259, 'aboutjoomla', 'Article Category Blog', 'article-category-blog', '', 'using-joomla/extensions/components/content-component/article-category-blog', 'index.php?option=com_content&view=category&layout=blog&id=27', 'component', 1, 266, 5, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"maxLevel":"","show_empty_categories":"","show_description":"0","show_description_image":"0","show_category_title":"","show_cat_num_articles":"","num_leading_articles":"1","num_intro_articles":"4","num_columns":"2","num_links":"4","multi_column_order":"","orderby_pri":"","orderby_sec":"","order_date":"","show_pagination":"2","show_noauth":"","show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_readmore":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_feed_link":"1","feed_summary":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","show_page_heading":0,"page_title":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 65, 66, 0, '*', 0),
(260, 'aboutjoomla', 'Article Category List', 'article-category-list', '', 'using-joomla/extensions/components/content-component/article-category-list', 'index.php?option=com_content&view=category&id=19', 'component', 1, 266, 5, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_category_title":"","show_description":"","show_description_image":"","maxLevel":"","show_empty_categories":"","show_no_articles":"","show_subcat_desc":"","show_cat_num_articles":"","page_subheading":"","show_pagination_limit":"","filter_field":"","show_headings":"","list_show_date":"","date_format":"","list_show_hits":"","list_show_author":"","orderby_pri":"","orderby_sec":"alpha","order_date":"","show_pagination":"","show_pagination_results":"","display_num":"10","show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_readmore":"","show_readmore_title":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","show_feed_link":"","feed_summary":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 67, 68, 0, '*', 0),
(262, 'aboutjoomla', 'Featured Articles', 'featured-articles', '', 'using-joomla/extensions/components/content-component/featured-articles', 'index.php?option=com_content&view=featured', 'component', 1, 266, 5, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"maxLevel":"","show_empty_categories":"","show_description":"","show_description_image":"","show_cat_num_articles":"","num_leading_articles":"1","num_intro_articles":"4","num_columns":"2","num_links":"4","multi_column_order":"1","orderby_pri":"","orderby_sec":"front","order_date":"","show_pagination":"2","show_noauth":"","show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_readmore":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_feed_link":"1","feed_summary":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","show_page_heading":0,"page_title":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 69, 70, 0, '*', 0),
(263, 'aboutjoomla', 'Submit Article', 'submit-article', '', 'using-joomla/extensions/components/content-component/submit-article', 'index.php?option=com_content&view=form&layout=edit', 'component', 1, 266, 5, 22, 0, 0, '0000-00-00 00:00:00', 0, 3, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","show_page_heading":0,"page_title":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 73, 74, 0, '*', 0),
(265, 'aboutjoomla', 'Weblinks Component', 'weblinks-component', '', 'using-joomla/extensions/components/weblinks-component', 'index.php?option=com_content&view=article&id=54', 'component', 1, 268, 4, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_noauth":"","show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","robots":"","rights":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","show_page_heading":0,"page_title":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","secure":0}', 86, 93, 0, '*', 0),
(266, 'aboutjoomla', 'Content Component', 'content-component', '', 'using-joomla/extensions/components/content-component', 'index.php?option=com_content&view=article&id=10', 'component', 1, 268, 4, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"article-allow_ratings":"","article-allow_comments":"","show_category":"","link_category":"","show_title":"","link_titles":"","show_intro":"","show_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","show_page_heading":0,"page_title":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 60, 75, 0, '*', 0),
(267, 'aboutjoomla', 'News Feeds Component', 'news-feeds-component', '', 'using-joomla/extensions/components/news-feeds-component', 'index.php?option=com_content&view=article&id=60', 'component', 1, 268, 4, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_noauth":"","show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","robots":"","rights":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","show_page_heading":1,"page_title":"Newsfeeds Categories View ","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","secure":0}', 94, 101, 0, '*', 0),
(268, 'aboutjoomla', 'Components', 'components', '', 'using-joomla/extensions/components', 'index.php?option=com_content&view=category&layout=blog&id=21', 'component', 1, 277, 3, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_category_title":"","show_description":"1","show_description_image":"","maxLevel":"","show_empty_categories":"","show_subcat_desc":"","show_cat_num_articles":"","page_subheading":"","num_leading_articles":"0","num_intro_articles":"7","num_columns":"1","num_links":"0","multi_column_order":"","orderby_pri":"","orderby_sec":"order","order_date":"","show_pagination":"0","show_pagination_results":"","show_title":"","link_titles":"","show_intro":"","show_category":"0","link_category":"","show_parent_category":"0","link_parent_category":"","show_author":"0","link_author":"0","show_create_date":"0","show_modify_date":"0","show_publish_date":"0","show_item_navigation":"0","show_readmore":"","show_icons":"0","show_print_icon":"0","show_email_icon":"0","show_hits":"0","show_noauth":"","show_feed_link":"","feed_summary":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 59, 124, 0, '*', 0),
(270, 'aboutjoomla', 'Contacto Component', 'contact-component', '', 'using-joomla/extensions/components/contact-component', 'index.php?option=com_content&view=article&id=9', 'component', 1, 268, 4, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_noauth":"","show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","robots":"","rights":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","show_page_heading":0,"page_title":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","secure":0}', 76, 85, 0, '*', 0),
(271, 'aboutjoomla', 'Users Component', 'users-component', '', 'using-joomla/extensions/components/users-component', 'index.php?option=com_content&view=article&id=52', 'component', 1, 268, 4, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_noauth":"","show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","robots":"","rights":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","show_page_heading":0,"page_title":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","secure":0}', 102, 115, 0, '*', 0),
(272, 'aboutjoomla', 'Article Categories', 'article-categories', '', 'using-joomla/extensions/components/content-component/article-categories', 'index.php?option=com_content&view=categories&id=14', 'component', 1, 266, 5, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_base_description":"","categories_description":"","maxLevel":"-1","show_empty_categories":"","show_description":"","show_description_image":"","show_cat_num_articles":"","display_num":"","category_layout":"","show_headings":"","show_date":"","date_format":"","filter_field":"","num_leading_articles":"1","num_intro_articles":"4","num_columns":"2","num_links":"4","multi_column_order":"","orderby_pri":"","orderby_sec":"","order_date":"","show_pagination":"","show_noauth":"","show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_readmore":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_feed_link":"","feed_summary":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","show_page_heading":0,"page_title":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 63, 64, 0, '*', 0),
(273, 'aboutjoomla', 'Administrator Components', 'administrator-components', '', 'using-joomla/extensions/components/administrator-components', 'index.php?option=com_content&view=article&id=1', 'component', 1, 268, 4, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_noauth":"","show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","robots":"","rights":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","show_page_heading":0,"page_title":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","secure":0}', 122, 123, 0, '*', 0),
(274, 'aboutjoomla', 'Weblinks Single Category', 'weblinks-single-category', '', 'using-joomla/extensions/components/weblinks-component/weblinks-single-category', 'index.php?option=com_weblinks&view=category&id=32', 'component', 1, 265, 5, 21, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"maxLevel":"-1","show_empty_categories":"","show_description":"","show_description_image":"","show_cat_num_articles":"","display_num":"","show_headings":"","orderby_pri":"","show_pagination":"","show_noauth":"","show_feed_link":"1","feed_summary":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","show_page_heading":0,"page_title":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 89, 90, 0, '*', 0),
(275, 'aboutjoomla', 'Contact Single Category', 'contact-single-category', '', 'using-joomla/extensions/components/contact-component/contact-single-category', 'index.php?option=com_contact&view=category&catid=26&id=36', 'component', 1, 270, 5, 8, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"maxLevel":"-1","show_empty_categories":"","show_description":"","show_description_image":"","show_cat_num_articles":"","display_num":"20","show_headings":"","filter_field":"","show_pagination":"","show_noauth":"","presentation_style":"sliders","show_name":"","show_position":"","show_email":"","show_street_address":"","show_suburb":"","show_state":"","show_postcode":"","show_country":"","show_telephone":"","show_mobile":"","show_fax":"","show_webpage":"","show_misc":"","show_image":"","allow_vcard":"","show_articles":"","show_links":"1","linka_name":"","linkb_name":"","linkc_name":"","linkd_name":"","linke_name":"","show_email_form":"","show_email_copy":"","banned_email":"","banned_subject":"","banned_text":"","validate_session":"","custom_reply":"","redirect":"","show_feed_link":"1","feed_summary":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","show_page_heading":0,"page_title":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 79, 80, 0, '*', 0),
(276, 'aboutjoomla', 'Search Component', 'search-component', '', 'using-joomla/extensions/components/search-component', 'index.php?option=com_content&view=article&id=39', 'component', 1, 268, 4, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_noauth":"","show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","robots":"","rights":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","show_page_heading":0,"page_title":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","secure":0}', 116, 121, 0, '*', 0),
(277, 'aboutjoomla', 'Using Extensions', 'extensions', '', 'using-joomla/extensions', 'index.php?option=com_content&view=categories&id=20', 'component', 1, 280, 2, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_base_description":"1","categories_description":"","maxLevelcat":"1","show_empty_categories_cat":"1","show_subcat_desc_cat":"1","show_cat_num_articles_cat":"0","drill_down_layout":"0","show_category_title":"","show_description":"1","show_description_image":"1","maxLevel":"1","show_empty_categories":"1","show_subcat_desc":"","show_cat_num_articles":"","num_leading_articles":"1","num_intro_articles":"4","num_columns":"2","num_links":"4","multi_column_order":"","orderby_pri":"","orderby_sec":"","order_date":"","show_pagination":"","show_pagination_results":"","show_pagination_limit":"","filter_field":"","show_headings":"","list_show_date":"","date_format":"","list_show_hits":"","list_show_author":"","show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_readmore":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","show_feed_link":"","feed_summary":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 58, 223, 0, '*', 0),
(278, 'aboutjoomla', 'El proyecto Joomla!', 'the-joomla-project', '', 'the-joomla-project', 'index.php?option=com_content&view=article&id=48', 'component', 1, 1, 1, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_noauth":"","show_title":"1","link_titles":"","show_intro":"","show_category":"0","link_category":"","show_parent_category":"0","link_parent_category":"","show_author":"0","link_author":"","show_create_date":"0","show_modify_date":"0","show_publish_date":"0","show_item_navigation":"0","show_icons":"1","show_print_icon":"","show_email_icon":"","show_hits":"0","robots":"","rights":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","show_page_heading":0,"page_title":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","secure":0}', 229, 230, 0, '*', 0),
(279, 'aboutjoomla', 'The Joomla! Community', 'the-joomla-community', '', 'the-joomla-community', 'index.php?option=com_content&view=article&id=47', 'component', 1, 1, 1, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_noauth":"","show_title":"","link_titles":"0","show_intro":"","show_category":"0","link_category":"","show_parent_category":"0","link_parent_category":"","show_author":"0","link_author":"","show_create_date":"0","show_modify_date":"0","show_publish_date":"0","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"0","robots":"","rights":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","show_page_heading":0,"page_title":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","secure":0}', 231, 232, 0, '*', 0),
(280, 'aboutjoomla', 'Usando Joomla!', 'using-joomla', '', 'using-joomla', 'index.php?option=com_content&view=article&id=53', 'component', 1, 1, 1, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"1","link_titles":"0","show_intro":"1","show_category":"0","link_category":"","show_parent_category":"0","link_parent_category":"","show_author":"0","link_author":"","show_create_date":"0","show_modify_date":"0","show_publish_date":"0","show_item_navigation":"0","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"0","show_noauth":"0","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 57, 228, 0, '*', 0),
(281, 'aboutjoomla', 'Modulos', 'modules', '', 'using-joomla/extensions/modules', 'index.php?option=com_content&view=category&id=22', 'component', 1, 277, 3, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_category_title":"","show_description":"1","show_description_image":"1","maxLevel":"1","show_empty_categories":"1","show_no_articles":"0","show_subcat_desc":"1","show_cat_num_articles":"","page_subheading":"","show_pagination_limit":"","filter_field":"","show_headings":"","list_show_date":"","date_format":"","list_show_hits":"","list_show_author":"","show_pagination":"","show_pagination_results":"","show_title":"1","link_titles":"","show_intro":"","show_category":"0","link_category":"0","show_parent_category":"0","link_parent_category":"","show_author":"0","link_author":"0","show_create_date":"0","show_modify_date":"0","show_publish_date":"0","show_item_navigation":"0","show_vote":"","show_readmore":"0","show_icons":"0","show_print_icon":"0","show_email_icon":"0","show_hits":"0","show_noauth":"","show_feed_link":"","feed_summary":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 125, 184, 0, '*', 0),
(282, 'aboutjoomla', 'Templates', 'templates', '', 'using-joomla/extensions/templates', 'index.php?option=com_content&view=category&id=23', 'component', 1, 277, 3, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_category_title":"","show_description":"1","show_description_image":"","maxLevel":"2","show_empty_categories":"1","show_no_articles":"0","show_subcat_desc":"1","show_cat_num_articles":"","page_subheading":"","show_pagination_limit":"0","filter_field":"hide","show_headings":"0","list_show_date":"0","date_format":"","list_show_hits":"0","list_show_author":"0","show_pagination":"0","show_pagination_results":"","show_title":"1","link_titles":"1","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_readmore":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","show_feed_link":"","feed_summary":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"Templates","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 185, 204, 0, '*', 0),
(283, 'aboutjoomla', 'Idiomas', 'languages', '', 'using-joomla/extensions/languages', 'index.php?option=com_content&view=category&layout=blog&id=24', 'component', 1, 277, 3, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"maxLevel":"","show_empty_categories":"","show_description":"1","show_description_image":"1","show_category_title":"1","show_cat_num_articles":"","num_leading_articles":"1","num_intro_articles":"4","num_columns":"2","num_links":"4","multi_column_order":"","orderby_pri":"","orderby_sec":"","order_date":"","show_pagination":"","show_noauth":"","show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_readmore":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_feed_link":"","feed_summary":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","show_page_heading":0,"page_title":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 205, 206, 0, '*', 0),
(284, 'aboutjoomla', 'Plugins', 'plugins', '', 'using-joomla/extensions/plugins', 'index.php?option=com_content&view=category&layout=blog&id=25', 'component', 1, 277, 3, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"maxLevel":"","show_empty_categories":"","show_description":"1","show_description_image":"","show_category_title":"1","show_cat_num_articles":"","num_leading_articles":"0","num_intro_articles":"7","num_columns":"1","num_links":"0","multi_column_order":"","orderby_pri":"","orderby_sec":"order","order_date":"","show_pagination":"","show_noauth":"","show_title":"","link_titles":"","show_intro":"","show_category":"0","link_category":"0","show_parent_category":"0","link_parent_category":"0","show_author":"0","link_author":"","show_create_date":"0","show_modify_date":"0","show_publish_date":"0","show_item_navigation":"","show_readmore":"","show_icons":"0","show_print_icon":"0","show_email_icon":"0","show_hits":"0","show_feed_link":"","feed_summary":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","show_page_heading":0,"page_title":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 207, 222, 0, '*', 0),
(285, 'aboutjoomla', 'Typography Atomic', 'typography-atomic', '', 'using-joomla/extensions/templates/atomic/typography-atomic', 'index.php?option=com_content&view=article&id=49', 'component', 1, 422, 5, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 3, '{"show_noauth":"","show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","robots":"","rights":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","show_page_heading":0,"page_title":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","secure":0}', 199, 200, 0, '*', 0),
(290, 'mainmenu', 'Artículos', 'artículos', '', 'site-map/artículos', 'index.php?option=com_content&view=categories&id=0', 'component', 1, 294, 2, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"categories_description":"","maxLevel":"-1","show_empty_categories":"","show_description":"","show_description_image":"","show_cat_num_articles":"","display_num":"","category_layout":"","show_headings":"","show_date":"","date_format":"","filter_field":"","num_leading_articles":"1","num_intro_articles":"4","num_columns":"2","num_links":"4","multi_column_order":"","orderby_pri":"","orderby_sec":"","order_date":"","show_pagination":"","show_noauth":"","show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_readmore":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","article-allow_ratings":"","article-allow_comments":"","show_feed_link":"","feed_summary":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","show_page_heading":0,"page_title":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 4, 5, 0, '*', 0),
(294, 'mainmenu', 'Mapa del sitio', 'site-map', '', 'site-map', 'index.php?option=com_content&view=article&id=42', 'component', 1, 1, 1, 22, -4, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_noauth":"","show_title":"","link_titles":"","show_intro":"","show_category":"0","link_category":"","show_parent_category":"0","link_parent_category":"","show_author":"0","link_author":"","show_create_date":"0","show_modify_date":"0","show_publish_date":"0","show_item_navigation":"0","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"0","robots":"","rights":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","show_page_heading":0,"page_title":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","secure":0}', 3, 10, 0, '*', 0),
(296, 'parks', 'Park Links', 'park-links', '', 'park-links', 'index.php?option=com_weblinks&view=category&id=31', 'component', 1, 1, 1, 21, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 114, '{"maxLevel":"-1","show_empty_categories":"","show_description":"1","show_description_image":"1","show_cat_num_articles":"","display_num":"","show_headings":"0","orderby_pri":"","show_pagination":"","show_noauth":"","show_feed_link":"1","feed_summary":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","show_page_heading":0,"page_title":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 253, 254, 0, 'en-GB', 0),
(300, 'aboutjoomla', 'Últimos usuarios', 'latest-users', '', 'using-joomla/extensions/modules/user-modules/latest-users', 'index.php?option=com_content&view=article&id=66', 'component', 1, 412, 5, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_noauth":"","show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","robots":"","rights":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","show_page_heading":0,"page_title":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","secure":0}', 149, 150, 0, '*', 0),
(301, 'aboutjoomla', 'Who''s Online', 'whos-online', '', 'using-joomla/extensions/modules/user-modules/whos-online', 'index.php?option=com_content&view=article&id=56', 'component', 1, 412, 5, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_noauth":"","show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","robots":"","rights":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","show_page_heading":0,"page_title":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","secure":0}', 151, 152, 0, '*', 0),
(302, 'aboutjoomla', 'Most Read', 'most-read', '', 'using-joomla/extensions/modules/content-modules/most-read', 'index.php?option=com_content&view=article&id=30', 'component', 1, 411, 5, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_noauth":"","show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","robots":"","rights":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","show_page_heading":0,"page_title":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","secure":0}', 133, 134, 0, '*', 0);
INSERT INTO `onr_menu` (`id`, `menutype`, `title`, `alias`, `note`, `path`, `link`, `type`, `published`, `parent_id`, `level`, `component_id`, `ordering`, `checked_out`, `checked_out_time`, `browserNav`, `access`, `img`, `template_style_id`, `params`, `lft`, `rgt`, `home`, `language`, `client_id`) VALUES
(303, 'aboutjoomla', 'Menu', 'menu', '', 'using-joomla/extensions/modules/navigation-modules/menu', 'index.php?option=com_content&view=article&id=29', 'component', 1, 415, 5, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_noauth":"","show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","robots":"","rights":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","show_page_heading":0,"page_title":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","secure":0}', 127, 128, 0, '*', 0),
(304, 'aboutjoomla', 'Statistics', 'statistics', '', 'using-joomla/extensions/modules/utility-modules/statistics', 'index.php?option=com_content&view=article&id=44', 'component', 1, 414, 5, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_noauth":"","show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","robots":"","rights":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","show_page_heading":0,"page_title":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","secure":0}', 173, 174, 0, '*', 0),
(305, 'aboutjoomla', 'Banner', 'banner', '', 'using-joomla/extensions/modules/display-modules/banner', 'index.php?option=com_content&view=article&id=7', 'component', 1, 413, 5, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_noauth":"","show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","robots":"","rights":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","show_page_heading":0,"page_title":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","secure":0}', 159, 160, 0, '*', 0),
(306, 'aboutjoomla', 'Buscar', 'search', '', 'using-joomla/extensions/modules/utility-modules/search', 'index.php?option=com_content&view=article&id=40', 'component', 1, 414, 5, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_noauth":"","show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","robots":"","rights":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","show_page_heading":0,"page_title":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","secure":0}', 175, 176, 0, '*', 0),
(307, 'aboutjoomla', 'Random Image', 'random-image', '', 'using-joomla/extensions/modules/display-modules/random-image', 'index.php?option=com_content&view=article&id=36', 'component', 1, 413, 5, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_noauth":"","show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","robots":"","rights":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","show_page_heading":0,"page_title":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","secure":0}', 157, 158, 0, '*', 0),
(309, 'aboutjoomla', 'News Flash', 'news-flash', '', 'using-joomla/extensions/modules/content-modules/news-flash', 'index.php?option=com_content&view=article&id=31', 'component', 1, 411, 5, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_noauth":"","show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","robots":"","rights":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","show_page_heading":0,"page_title":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","secure":0}', 135, 136, 0, '*', 0),
(310, 'aboutjoomla', 'Latest Articles', 'latest-articles', '', 'using-joomla/extensions/modules/content-modules/latest-articles', 'index.php?option=com_content&view=article&id=27', 'component', 1, 411, 5, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_noauth":"","show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","robots":"","rights":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","show_page_heading":0,"page_title":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","secure":0}', 137, 138, 0, '*', 0),
(311, 'aboutjoomla', 'Syndicate', 'syndicate', '', 'using-joomla/extensions/modules/utility-modules/syndicate', 'index.php?option=com_content&view=article&id=45', 'component', 1, 414, 5, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_noauth":"","show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","robots":"","rights":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","show_page_heading":0,"page_title":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","secure":0}', 171, 172, 0, '*', 0),
(312, 'aboutjoomla', 'Login', 'login', '', 'using-joomla/extensions/modules/user-modules/login', 'index.php?option=com_content&view=article&id=28', 'component', 1, 412, 5, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_noauth":"","show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","robots":"","rights":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","show_page_heading":0,"page_title":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","secure":0}', 153, 154, 0, '*', 0),
(313, 'aboutjoomla', 'Wrapper', 'wrapper', '', 'using-joomla/extensions/modules/utility-modules/wrapper', 'index.php?option=com_content&view=article&id=59', 'component', 1, 414, 5, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_noauth":"","show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","robots":"","rights":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","show_page_heading":0,"page_title":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","secure":0}', 179, 180, 0, '*', 0),
(316, 'aboutjoomla', 'Home Page Atomic', 'home-page-atomic', '', 'using-joomla/extensions/templates/atomic/home-page-atomic', 'index.php?option=com_content&view=featured', 'component', 1, 422, 5, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 3, '{"maxLevel":"","show_empty_categories":"","show_description":"","show_description_image":"","show_cat_num_articles":"","num_leading_articles":"1","num_intro_articles":"3","num_columns":"3","num_links":"0","multi_column_order":"1","orderby_pri":"","orderby_sec":"front","order_date":"","show_pagination":"2","show_noauth":"","show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_readmore":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_feed_link":"1","feed_summary":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","show_page_heading":0,"page_title":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 201, 202, 0, '*', 0),
(317, 'aboutjoomla', 'System', 'system', '', 'using-joomla/extensions/plugins/system', 'index.php?option=com_content&view=article&id=46', 'component', 1, 284, 4, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_noauth":"","show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","robots":"","rights":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","show_page_heading":0,"page_title":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","secure":0}', 220, 221, 0, '*', 0),
(318, 'aboutjoomla', 'Authentication', 'authentication', '', 'using-joomla/extensions/plugins/authentication', 'index.php?option=com_content&view=article&id=5', 'component', 1, 284, 4, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_noauth":"","show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","robots":"","rights":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","show_page_heading":0,"page_title":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","secure":0}', 208, 209, 0, '*', 0),
(319, 'aboutjoomla', 'Content', 'content', '', 'using-joomla/extensions/plugins/content', 'index.php?option=com_content&view=article&id=62', 'component', 1, 284, 4, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_noauth":"","show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","robots":"","rights":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","show_page_heading":0,"page_title":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","secure":0}', 210, 211, 0, '*', 0),
(320, 'aboutjoomla', 'Editores', 'editors', '', 'using-joomla/extensions/plugins/editors', 'index.php?option=com_content&view=article&id=14', 'component', 1, 284, 4, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_noauth":"","show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","robots":"","rights":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","show_page_heading":0,"page_title":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","secure":0}', 212, 213, 0, '*', 0),
(321, 'aboutjoomla', 'Editores Extended', 'editors-extended', '', 'using-joomla/extensions/plugins/editors-extended', 'index.php?option=com_content&view=article&id=15', 'component', 1, 284, 4, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_noauth":"","show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","robots":"","rights":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","show_page_heading":0,"page_title":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","secure":0}', 214, 215, 0, '*', 0),
(322, 'aboutjoomla', 'Buscar', 'search', '', 'using-joomla/extensions/plugins/search', 'index.php?option=com_content&view=article&id=41', 'component', 1, 284, 4, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_noauth":"","show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","robots":"","rights":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","show_page_heading":0,"page_title":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","secure":0}', 216, 217, 0, '*', 0),
(323, 'aboutjoomla', 'Usuario', 'user', '', 'using-joomla/extensions/plugins/user', 'index.php?option=com_content&view=article&id=51', 'component', 1, 284, 4, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_noauth":"","show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","robots":"","rights":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","show_page_heading":0,"page_title":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","secure":0}', 218, 219, 0, '*', 0),
(324, 'aboutjoomla', 'Footer', 'footer', '', 'using-joomla/extensions/modules/display-modules/footer', 'index.php?option=com_content&view=article&id=19', 'component', 1, 413, 5, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_noauth":"","show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","robots":"","rights":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","show_page_heading":0,"page_title":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","secure":0}', 163, 164, 0, '*', 0),
(325, 'aboutjoomla', 'Archivo', 'archive', '', 'using-joomla/extensions/modules/content-modules/archive', 'index.php?option=com_content&view=article&id=2', 'component', 1, 411, 5, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_noauth":"","show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","robots":"","rights":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","show_page_heading":0,"page_title":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","secure":0}', 139, 140, 0, '*', 0),
(326, 'aboutjoomla', 'Related Items', 'related-items', '', 'using-joomla/extensions/modules/content-modules/related-items', 'index.php?option=com_content&view=article&id=37', 'component', 1, 411, 5, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_noauth":"","show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","robots":"","rights":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","show_page_heading":0,"page_title":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","secure":0}', 141, 142, 0, '*', 0),
(399, 'parks', 'Animals', 'animals', '', 'image-gallery/animals', 'index.php?option=com_content&view=category&layout=blog&id=72', 'component', 1, 244, 2, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 114, '{"maxLevel":"","show_empty_categories":"","show_description":"1","show_description_image":"0","show_category_title":"","show_cat_num_articles":"","num_leading_articles":"0","num_intro_articles":"6","num_columns":"2","num_links":"4","multi_column_order":"1","orderby_pri":"","orderby_sec":"","order_date":"","show_pagination":"2","show_noauth":"","show_title":"","link_titles":"","show_intro":"0","show_category":"1","link_category":"1","show_parent_category":"","link_parent_category":"","show_author":"0","link_author":"","show_create_date":"0","show_modify_date":"0","show_publish_date":"0","show_item_navigation":"1","show_readmore":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_feed_link":"1","feed_summary":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","show_page_heading":0,"page_title":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 248, 249, 0, 'en-GB', 0),
(400, 'parks', 'Scenery', 'scenery', '', 'image-gallery/scenery', 'index.php?option=com_content&view=category&layout=blog&id=73', 'component', 1, 244, 2, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 114, '{"maxLevel":"","show_empty_categories":"","show_description":"0","show_description_image":"0","show_category_title":"","show_cat_num_articles":"","num_leading_articles":"0","num_intro_articles":"4","num_columns":"2","num_links":"4","multi_column_order":"1","orderby_pri":"","orderby_sec":"","order_date":"","show_pagination":"2","show_noauth":"","show_title":"","link_titles":"","show_intro":"0","show_category":"1","link_category":"","show_parent_category":"0","link_parent_category":"0","show_author":"0","link_author":"0","show_create_date":"0","show_modify_date":"0","show_publish_date":"0","show_item_navigation":"1","show_readmore":"1","show_icons":"0","show_print_icon":"0","show_email_icon":"0","show_hits":"0","show_feed_link":"1","feed_summary":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","show_page_heading":0,"page_title":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 250, 251, 0, 'en-GB', 0),
(402, 'aboutjoomla', 'Login Form', 'login-form', '', 'using-joomla/extensions/components/users-component/login-form', 'index.php?option=com_users&view=login', 'component', 1, 271, 5, 25, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"login_redirect_url":"","logindescription_show":"1","login_description":"","login_image":"","logout_redirect_url":"","logoutdescription_show":"1","logout_description":"","logout_image":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","show_page_heading":0,"page_title":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 103, 104, 0, '*', 0),
(403, 'aboutjoomla', 'User Profile', 'user-profile', '', 'using-joomla/extensions/components/users-component/user-profile', 'index.php?option=com_users&view=profile', 'component', 1, 271, 5, 25, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","show_page_heading":0,"page_title":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 105, 106, 0, '*', 0),
(404, 'aboutjoomla', 'Edit User Profile', 'edit-user-profile', '', 'using-joomla/extensions/components/users-component/edit-user-profile', 'index.php?option=com_users&view=profile&layout=edit', 'component', 1, 271, 5, 25, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","show_page_heading":0,"page_title":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 107, 108, 0, '*', 0),
(405, 'aboutjoomla', 'Registration Form', 'registration-form', '', 'using-joomla/extensions/components/users-component/registration-form', 'index.php?option=com_users&view=registration', 'component', 1, 271, 5, 25, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","show_page_heading":0,"page_title":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 109, 110, 0, '*', 0),
(406, 'aboutjoomla', 'Username Reminder Request', 'username-reminder', '', 'using-joomla/extensions/components/users-component/username-reminder', 'index.php?option=com_users&view=remind', 'component', 1, 271, 5, 25, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","show_page_heading":0,"page_title":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 111, 112, 0, '*', 0),
(409, 'aboutjoomla', 'Password Reset', 'password-reset', '', 'using-joomla/extensions/components/users-component/password-reset', 'index.php?option=com_users&view=reset', 'component', 1, 271, 5, 25, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","show_page_heading":0,"page_title":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 113, 114, 0, '*', 0),
(410, 'aboutjoomla', 'Feed Display', 'feed-display', '', 'using-joomla/extensions/modules/display-modules/feed-display', 'index.php?option=com_content&view=article&id=16', 'component', 1, 413, 5, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_noauth":"","show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","robots":"","rights":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","show_page_heading":0,"page_title":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","secure":0}', 161, 162, 0, '*', 0),
(411, 'aboutjoomla', 'Content Modules', 'content-modules', '', 'using-joomla/extensions/modules/content-modules', 'index.php?option=com_content&view=category&id=64', 'component', 1, 281, 4, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"maxLevel":"0","show_category_title":"1","page_subheading":"","show_empty_categories":"1","show_description":"1","show_description_image":"","show_cat_num_articles":"","display_num":"0","show_headings":"0","list_show_title":"1","list_show_date":"0","date_format":"","list_show_hits":"0","list_show_author":"0","filter_field":"hide","orderby_pri":"","orderby_sec":"order","order_date":"","show_pagination":"","show_pagination_limit":"0","show_noauth":"","show_title":"","link_titles":"","show_intro":"","show_category":"1","link_category":"1","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_readmore":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_feed_link":"","feed_summary":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","show_page_heading":0,"page_title":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 132, 147, 0, '*', 0),
(412, 'aboutjoomla', 'User Modules', 'user-modules', '', 'using-joomla/extensions/modules/user-modules', 'index.php?option=com_content&view=category&id=65', 'component', 1, 281, 4, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"maxLevel":"0","show_category_title":"1","page_subheading":"","show_empty_categories":"","show_description":"1","show_description_image":"","show_cat_num_articles":"","display_num":"0","show_headings":"0","list_show_title":"1","list_show_date":"","date_format":"","list_show_hits":"0","list_show_author":"0","filter_field":"hide","orderby_pri":"","orderby_sec":"order","order_date":"","show_pagination":"","show_pagination_limit":"0","show_noauth":"","show_title":"","link_titles":"","show_intro":"","show_category":"1","link_category":"1","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_readmore":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_feed_link":"","feed_summary":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","show_page_heading":0,"page_title":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 148, 155, 0, '*', 0),
(413, 'aboutjoomla', 'Display Modules', 'display-modules', '', 'using-joomla/extensions/modules/display-modules', 'index.php?option=com_content&view=category&id=66', 'component', 1, 281, 4, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"maxLevel":"0","show_category_title":"1","page_subheading":"","show_empty_categories":"","show_description":"1","show_description_image":"1","show_cat_num_articles":"","display_num":"0","show_headings":"0","list_show_title":"1","list_show_date":"","date_format":"","list_show_hits":"0","list_show_author":"0","filter_field":"hide","orderby_pri":"","orderby_sec":"order","order_date":"","show_pagination":"","show_pagination_limit":"0","show_noauth":"","show_title":"","link_titles":"","show_intro":"","show_category":"1","link_category":"1","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_readmore":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_feed_link":"","feed_summary":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","show_page_heading":0,"page_title":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 156, 169, 0, '*', 0),
(414, 'aboutjoomla', 'Utility Modules', 'utility-modules', '', 'using-joomla/extensions/modules/utility-modules', 'index.php?option=com_content&view=category&id=67', 'component', 1, 281, 4, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"maxLevel":"0","show_category_title":"1","page_subheading":"","show_empty_categories":"","show_description":"1","show_description_image":"1","show_cat_num_articles":"","display_num":"0","show_headings":"0","list_show_title":"0","list_show_date":"0","date_format":"","list_show_hits":"0","list_show_author":"0","filter_field":"","orderby_pri":"","orderby_sec":"order","order_date":"","show_pagination":"","show_pagination_limit":"0","show_noauth":"","show_title":"","link_titles":"","show_intro":"","show_category":"1","link_category":"1","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_readmore":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_feed_link":"","feed_summary":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","show_page_heading":0,"page_title":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 170, 183, 0, '*', 0),
(415, 'aboutjoomla', 'Navigation Modules', 'navigation-modules', '', 'using-joomla/extensions/modules/navigation-modules', 'index.php?option=com_content&view=category&id=75', 'component', 1, 281, 4, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"maxLevel":"","show_category_title":"","page_subheading":"","show_empty_categories":"","show_description":"","show_description_image":"","show_cat_num_articles":"","display_num":"","show_headings":"","list_show_title":"","list_show_date":"","date_format":"","list_show_hits":"","list_show_author":"","filter_field":"","orderby_pri":"","orderby_sec":"","order_date":"","show_pagination":"","show_pagination_limit":"","show_noauth":"","show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_readmore":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_feed_link":"","feed_summary":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","show_page_heading":0,"page_title":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 126, 131, 0, '*', 0),
(416, 'aboutjoomla', 'Breadcrumbs', 'breadcrumbs', '', 'using-joomla/extensions/modules/navigation-modules/breadcrumbs', 'index.php?option=com_content&view=article&id=61', 'component', 1, 415, 5, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 129, 130, 0, '*', 0),
(417, 'aboutjoomla', 'Weblinks', 'weblinks', '', 'using-joomla/extensions/modules/display-modules/weblinks', 'index.php?option=com_content&view=article&id=55', 'component', 1, 413, 5, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_noauth":"","show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","robots":"","rights":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","show_page_heading":0,"page_title":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","secure":0}', 165, 166, 0, '*', 0),
(418, 'aboutjoomla', 'Custom HTML', 'custom-html', '', 'using-joomla/extensions/modules/display-modules/custom-html', 'index.php?option=com_content&view=article&id=12', 'component', 1, 413, 5, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_noauth":"","show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","robots":"","rights":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","show_page_heading":0,"page_title":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","secure":0}', 167, 168, 0, '*', 0),
(419, 'aboutjoomla', 'Beez 2', 'beez-2', '', 'using-joomla/extensions/templates/beez-2', 'index.php?option=com_content&view=category&layout=blog&id=69', 'component', 1, 282, 4, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"maxLevel":"","show_empty_categories":"","show_description":"1","show_description_image":"","show_category_title":"","show_cat_num_articles":"","num_leading_articles":"1","num_intro_articles":"4","num_columns":"2","num_links":"4","multi_column_order":"","orderby_pri":"","orderby_sec":"","order_date":"","show_pagination":"","show_noauth":"","show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_readmore":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_feed_link":"","feed_summary":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","show_page_heading":0,"page_title":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 186, 191, 0, '*', 0),
(422, 'aboutjoomla', 'Atomic', 'atomic', '', 'using-joomla/extensions/templates/atomic', 'index.php?option=com_content&view=category&layout=blog&id=68', 'component', 1, 282, 4, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"maxLevel":"","show_empty_categories":"","show_description":"1","show_description_image":"","show_category_title":"","show_cat_num_articles":"","num_leading_articles":"2","num_intro_articles":"4","num_columns":"2","num_links":"4","multi_column_order":"","orderby_pri":"","orderby_sec":"","order_date":"","show_pagination":"","show_noauth":"","show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_readmore":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_feed_link":"","feed_summary":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","show_page_heading":0,"page_title":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 198, 203, 0, '*', 0),
(423, 'aboutjoomla', 'Typography Beez 2', 'typography-beez-2', '', 'using-joomla/extensions/templates/beez-2/typography-beez-2', 'index.php?option=com_content&view=article&id=49', 'component', 1, 419, 5, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 4, '{"show_noauth":"","show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","robots":"","rights":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","show_page_heading":0,"page_title":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","secure":0}', 187, 188, 0, '*', 0),
(424, 'aboutjoomla', 'Home Page Beez 2', 'home-page-beez-2', '', 'using-joomla/extensions/templates/beez-2/home-page-beez-2', 'index.php?option=com_content&view=featured', 'component', 1, 419, 5, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 4, '{"maxLevel":"","show_empty_categories":"","show_description":"","show_description_image":"","show_cat_num_articles":"","num_leading_articles":"1","num_intro_articles":"3","num_columns":"3","num_links":"0","multi_column_order":"1","orderby_pri":"","orderby_sec":"front","order_date":"","show_pagination":"2","show_noauth":"","show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_readmore":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_feed_link":"1","feed_summary":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","show_page_heading":0,"page_title":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 189, 190, 0, '*', 0),
(427, 'fruitshop', 'Fruit Encyclopedia', 'fruit-encyclopedia', '', 'fruit-encyclopedia', 'index.php?option=com_contact&view=categories&id=37', 'component', 1, 1, 1, 8, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 6, '{"show_base_description":"1","categories_description":"","maxLevel":"-1","show_empty_categories":"1","show_description":"1","show_description_image":"1","show_cat_num_articles":"1","display_num":"","show_headings":"0","filter_field":"hide","show_pagination":"","show_noauth":"","presentation_style":"","show_name":"","show_position":"","show_email":"","show_street_address":"","show_suburb":"","show_state":"","show_postcode":"","show_country":"","show_telephone":"","show_mobile":"","show_fax":"","show_webpage":"","show_misc":"","show_image":"","allow_vcard":"","show_articles":"","show_links":"1","linka_name":"","linkb_name":"","linkc_name":"","linkd_name":"","linke_name":"","show_email_form":"","show_email_copy":"","banned_email":"","banned_subject":"","banned_text":"","validate_session":"","custom_reply":"","redirect":"","show_feed_link":"","feed_summary":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","show_page_heading":0,"page_title":"","page_heading":"","pageclass_sfx":" categories-listalphabet","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 257, 258, 0, '*', 0),
(429, 'fruitshop', 'Bienvenido', 'welcome', 'Fruit store front page', 'welcome', 'index.php?option=com_content&view=article&id=20', 'component', 1, 1, 1, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 6, '{"show_noauth":"","show_title":"0","link_titles":"0","show_intro":"1","show_category":"0","link_category":"0","show_parent_category":"","link_parent_category":"","show_author":"0","link_author":"","show_create_date":"0","show_modify_date":"0","show_publish_date":"0","show_item_navigation":"0","show_icons":"0","show_print_icon":"0","show_email_icon":"0","show_hits":"0","robots":"","rights":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","show_page_heading":0,"page_title":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","secure":0}', 255, 256, 0, '*', 0),
(430, 'fruitshop', 'Contactar', 'contact-us', '', 'contact-us', 'index.php?option=com_contact&view=category&catid=47&id=36', 'component', 1, 1, 1, 8, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 6, '{"maxLevel":"-1","show_empty_categories":"","show_description":"","show_description_image":"","show_cat_num_articles":"","display_num":"20","show_headings":"0","filter_field":"hide","show_pagination":"","show_noauth":"","presentation_style":"","show_name":"","show_position":"","show_email":"","show_street_address":"","show_suburb":"","show_state":"","show_postcode":"","show_country":"","show_telephone":"","show_mobile":"","show_fax":"","show_webpage":"","show_misc":"","show_image":"","allow_vcard":"","show_articles":"","show_links":"1","linka_name":"","linkb_name":"","linkc_name":"","linkd_name":"","linke_name":"","show_email_form":"","show_email_copy":"","banned_email":"","banned_subject":"","banned_text":"","validate_session":"","custom_reply":"","redirect":"","show_feed_link":"1","feed_summary":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","show_page_heading":0,"page_title":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 261, 262, 0, '*', 0),
(431, 'fruitshop', 'Growers', 'growers', '', 'growers', 'index.php?option=com_content&view=category&layout=blog&id=30', 'component', 1, 1, 1, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 6, '{"maxLevel":"0","show_empty_categories":"","show_description":"1","show_description_image":"","show_category_title":"1","show_cat_num_articles":"","num_leading_articles":"5","num_intro_articles":"0","num_columns":"1","num_links":"4","multi_column_order":"","orderby_pri":"","orderby_sec":"alpha","order_date":"","show_pagination":"","show_noauth":"","show_title":"1","link_titles":"1","show_intro":"1","show_category":"0","link_category":"","show_parent_category":"0","link_parent_category":"0","show_author":"0","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"0","show_item_navigation":"","show_readmore":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"0","show_feed_link":"","feed_summary":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","show_page_heading":0,"page_title":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 259, 260, 0, '*', 0),
(432, 'fruitshop', 'Acceso ', 'shop-login', '', 'shop-login', 'index.php?option=com_users&view=login', 'component', 1, 1, 1, 25, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 6, '{"login_redirect_url":"","logindescription_show":"1","login_description":"","login_image":"","logout_redirect_url":"","logoutdescription_show":"1","logout_description":"","logout_image":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","show_page_heading":0,"page_title":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 263, 264, 0, '*', 0),
(433, 'fruitshop', 'Direcciones', 'directions', '', 'directions', 'index.php?option=com_content&view=article&id=13', 'component', 1, 1, 1, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 6, '{"show_noauth":"","show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","robots":"","rights":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","show_page_heading":0,"page_title":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","secure":0}', 265, 266, 0, '*', 0),
(435, 'mainmenu', 'Inicio', 'homepage', '', 'homepage', 'index.php?option=com_content&view=featured', 'component', 1, 1, 1, 22, -5, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"num_leading_articles":"1","num_intro_articles":"3","num_columns":"3","num_links":"0","multi_column_order":"1","orderby_pri":"","orderby_sec":"front","order_date":"","show_pagination":"2","show_pagination_results":"","show_title":"1","link_titles":"","show_intro":"","show_category":"0","link_category":"0","show_parent_category":"0","link_parent_category":"0","show_author":"0","link_author":"0","show_create_date":"0","show_modify_date":"0","show_publish_date":"0","show_item_navigation":"0","show_vote":"","show_readmore":"1","show_readmore_title":"","show_icons":"0","show_print_icon":"0","show_email_icon":"0","show_hits":"0","show_noauth":"","show_feed_link":"1","feed_summary":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 1, 2, 0, '*', 0),
(436, 'aboutjoomla', 'Obtener ayuda', 'getting-help', '', 'using-joomla/getting-help', 'index.php?option=com_content&view=article&id=21', 'component', 1, 280, 2, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_noauth":"","show_title":"","link_titles":"","show_intro":"","show_category":"0","link_category":"","show_parent_category":"0","link_parent_category":"","show_author":"0","link_author":"","show_create_date":"0","show_modify_date":"0","show_publish_date":"0","show_item_navigation":"0","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"0","robots":"","rights":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","show_page_heading":0,"page_title":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","secure":0}', 226, 227, 0, '*', 0),
(437, 'aboutjoomla', 'Primeros pasos', 'getting-started', '', 'getting-started', 'index.php?option=com_content&view=article&id=22', 'component', 1, 1, 1, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"1","link_titles":"0","show_intro":"","show_category":"0","link_category":"","show_parent_category":"0","link_parent_category":"","show_author":"0","link_author":"","show_create_date":"0","show_modify_date":"0","show_publish_date":"0","show_item_navigation":"0","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"0","show_noauth":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 47, 48, 0, '*', 0),
(438, 'mainmenu', 'Enlaces web', 'weblinks', '', 'site-map/weblinks', 'index.php?option=com_weblinks&view=categories&id=0', 'component', 1, 294, 2, 21, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"categories_description":"","maxLevel":"-1","show_empty_categories":"","show_description":"","show_description_image":"","show_cat_num_articles":"","display_num":"","show_headings":"","orderby_pri":"","show_pagination":"","show_noauth":"","article-allow_ratings":"","article-allow_comments":"","show_feed_link":"","feed_summary":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","show_page_heading":0,"page_title":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 6, 7, 0, '*', 0),
(439, 'mainmenu', 'Contactos', 'contacts', '', 'site-map/contacts', 'index.php?option=com_contact&view=categories&id=0', 'component', 1, 294, 2, 8, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"categories_description":"","maxLevel":"-1","show_empty_categories":"","show_description":"","show_description_image":"","show_cat_num_articles":"","display_num":"","show_headings":"","filter_field":"","show_pagination":"","show_noauth":"","show_name":"","show_position":"","show_email":"","show_street_address":"","show_suburb":"","show_state":"","show_postcode":"","show_country":"","show_telephone":"","show_mobile":"","show_fax":"","show_webpage":"","show_misc":"","show_image":"","allow_vcard":"","show_articles":"","show_links":"1","linka_name":"","linkb_name":"","linkc_name":"","linkd_name":"","linke_name":"","show_email_form":"","show_email_copy":"","banned_email":"","banned_subject":"","banned_text":"","validate_session":"","custom_reply":"","redirect":"","article-allow_ratings":"","article-allow_comments":"","show_feed_link":"","feed_summary":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","show_page_heading":0,"page_title":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 8, 9, 0, '*', 0),
(443, 'aboutjoomla', 'Article Categories', 'article-categories-view', '', 'using-joomla/extensions/modules/content-modules/article-categories-view', 'index.php?option=com_content&view=article&id=3', 'component', 1, 411, 5, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_noauth":"","show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","robots":"","rights":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","show_page_heading":0,"page_title":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","secure":0}', 143, 144, 0, '*', 0),
(444, 'top', 'Ejemplo de sitios', 'sample-sites-2', '', 'sample-sites-2', 'index.php?Itemid=', 'alias', 1, 1, 1, 0, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"aliasoptions":"238","menu-anchor_title":"","menu-anchor_css":"","menu_image":""}', 235, 236, 0, '*', 0);
INSERT INTO `onr_menu` (`id`, `menutype`, `title`, `alias`, `note`, `path`, `link`, `type`, `published`, `parent_id`, `level`, `component_id`, `ordering`, `checked_out`, `checked_out_time`, `browserNav`, `access`, `img`, `template_style_id`, `params`, `lft`, `rgt`, `home`, `language`, `client_id`) VALUES
(445, 'mainmenu', 'Parks', 'parks', '', 'sample-sites/parks', 'index.php?Itemid=', 'alias', 1, 238, 2, 0, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"aliasoptions":"243","menu-anchor_title":"","menu-anchor_css":"","menu_image":""}', 268, 269, 0, '*', 0),
(446, 'mainmenu', 'Shop', 'shop', '', 'sample-sites/shop', 'index.php?Itemid=', 'alias', 1, 238, 2, 0, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"aliasoptions":"429","menu-anchor_title":"","menu-anchor_css":"","menu_image":""}', 270, 271, 0, '*', 0),
(447, 'aboutjoomla', 'Language Switcher', 'language-switcher', '', 'using-joomla/extensions/modules/utility-modules/language-switcher', 'index.php?option=com_content&view=article&id=26', 'component', 1, 414, 5, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_noauth":"","show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","robots":"","rights":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","show_page_heading":0,"page_title":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","secure":0}', 177, 178, 0, '*', 0),
(448, 'mainmenu', 'Administrador del sitio', 'site-administrator', '', 'site-administrator', 'administrator', 'url', 1, 1, 1, 0, 0, 0, '0000-00-00 00:00:00', 1, 1, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":""}', 273, 274, 0, '*', 0),
(449, 'usermenu', 'Enviar un artículo', 'submit-an-article', '', 'submit-an-article', 'index.php?option=com_content&view=form&layout=edit', 'component', 1, 1, 1, 22, 0, 0, '0000-00-00 00:00:00', 0, 3, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 275, 276, 0, '*', 0),
(450, 'usermenu', 'Enviar un enlace', 'submit-a-web-link', '', 'submit-a-web-link', 'index.php?option=com_weblinks&view=form&layout=edit', 'component', 1, 1, 1, 21, 0, 0, '0000-00-00 00:00:00', 0, 3, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 277, 278, 0, '*', 0),
(452, 'aboutjoomla', 'Featured Contacts', 'featured-contacts', '', 'using-joomla/extensions/components/contact-component/featured-contacts', 'index.php?option=com_contact&view=featured&id=16', 'component', 1, 270, 5, 8, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"maxLevel":"-1","show_empty_categories":"","show_description":"","show_description_image":"","show_cat_num_articles":"","display_num":"","show_headings":"","filter_field":"","show_pagination":"","show_noauth":"","presentation_style":"sliders","show_name":"","show_position":"","show_email":"","show_street_address":"","show_suburb":"","show_state":"","show_postcode":"","show_country":"","show_telephone":"","show_mobile":"","show_fax":"","show_webpage":"","show_misc":"","show_image":"","allow_vcard":"","show_articles":"","show_links":"1","linka_name":"","linkb_name":"","linkc_name":"","linkd_name":"","linke_name":"","show_email_form":"","show_email_copy":"","banned_email":"","banned_subject":"","banned_text":"","validate_session":"","custom_reply":"","redirect":"","show_feed_link":"","feed_summary":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","show_page_heading":1,"page_title":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 83, 84, 0, '*', 0),
(453, 'aboutjoomla', 'Parameters', 'parameters', '', 'using-joomla/parameters', 'index.php?option=com_content&view=article&id=32', 'component', 1, 280, 2, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_noauth":"1","show_title":"1","link_titles":"1","show_intro":"1","show_category":"1","link_category":"1","show_parent_category":"1","link_parent_category":"1","show_author":"1","link_author":"1","show_create_date":"1","show_modify_date":"1","show_publish_date":"1","show_item_navigation":"1","show_icons":"1","show_print_icon":"1","show_email_icon":"1","show_hits":"1","robots":"","rights":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","show_page_heading":0,"page_title":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","secure":0}', 224, 225, 0, '*', 0),
(455, 'mainmenu', 'Ejemplo de paginas', 'example-pages', '', 'example-pages', 'index.php?Itemid=', 'alias', 1, 1, 1, 0, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"aliasoptions":"268","menu-anchor_title":"","menu-anchor_css":"","menu_image":""}', 279, 280, 0, '*', 0),
(456, 'aboutjoomla', 'Beez5', 'beez5', '', 'using-joomla/extensions/templates/beez5', 'index.php?option=com_content&view=category&layout=blog&id=70', 'component', 1, 282, 4, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"maxLevel":"","show_empty_categories":"","show_description":"1","show_description_image":"","show_category_title":"","show_cat_num_articles":"","num_leading_articles":"1","num_intro_articles":"4","num_columns":"2","num_links":"4","multi_column_order":"","orderby_pri":"","orderby_sec":"","order_date":"","show_pagination":"","show_noauth":"","show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_readmore":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_feed_link":"","feed_summary":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","show_page_heading":1,"page_title":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 192, 197, 0, '*', 0),
(457, 'aboutjoomla', 'Typography Beez5', 'typography-beez-5', '', 'using-joomla/extensions/templates/beez5/typography-beez-5', 'index.php?option=com_content&view=article&id=49', 'component', 1, 456, 5, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_noauth":"","show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","robots":"","rights":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","show_page_heading":1,"page_title":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","secure":0}', 193, 194, 0, '*', 0),
(458, 'aboutjoomla', 'Home Page Beez5', 'home-page-beez5', '', 'using-joomla/extensions/templates/beez5/home-page-beez5', 'index.php?option=com_content&view=featured', 'component', 1, 456, 5, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"maxLevel":"","show_empty_categories":"","show_description":"","show_description_image":"","show_cat_num_articles":"","num_leading_articles":"1","num_intro_articles":"3","num_columns":"3","num_links":"0","multi_column_order":"","orderby_pri":"","orderby_sec":"front","order_date":"","show_pagination":"","show_noauth":"","show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_readmore":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_feed_link":"","feed_summary":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","show_page_heading":1,"page_title":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 195, 196, 0, '*', 0),
(459, 'aboutjoomla', 'Article Category', 'article-category', '', 'using-joomla/extensions/modules/content-modules/article-category', 'index.php?option=com_content&view=article&id=4', 'component', 1, 411, 5, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_noauth":"","show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","robots":"","rights":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","show_page_heading":1,"page_title":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","secure":0}', 145, 146, 0, '*', 0),
(462, 'fruitshop', 'Add a recipe', 'add-a-recipe', '', 'add-a-recipe', 'index.php?option=com_content&view=form&layout=edit', 'component', 1, 1, 1, 22, 0, 0, '0000-00-00 00:00:00', 0, 4, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","show_page_heading":1,"page_title":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 281, 282, 0, '*', 0),
(463, 'fruitshop', 'Recipes', 'recipes', '', 'recipes', 'index.php?option=com_content&view=category&id=76', 'component', 1, 1, 1, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 6, '{"maxLevel":"0","show_category_title":"1","page_subheading":"","show_empty_categories":"0","show_description":"1","show_description_image":"","show_cat_num_articles":"","display_num":"","show_headings":"","list_show_title":"","list_show_date":"","date_format":"","list_show_hits":"","list_show_author":"","filter_field":"","orderby_pri":"","orderby_sec":"","order_date":"","show_pagination":"","show_pagination_limit":"","show_noauth":"","show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_readmore":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_feed_link":"","feed_summary":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","show_page_heading":0,"page_title":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 283, 284, 0, '*', 0),
(464, 'top', 'Inicio', 'inicio', '', 'inicio', 'index.php?Itemid=', 'alias', 1, 1, 1, 0, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"aliasoptions":"435","menu-anchor_title":"","menu-anchor_css":"","menu_image":""}', 233, 234, 0, '*', 0),
(466, 'aboutjoomla', 'Búsqueda Inteligente', 'smart-search', '', 'using-joomla/extensions/components/search-component/smart-search', 'index.php?option=com_finder&view=search&q=&f=', 'component', 1, 276, 5, 27, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_date_filters":"","show_advanced":"","expand_advanced":"","show_description":"","description_length":255,"show_url":"","show_pagination_limit":"","show_pagination":"","show_pagination_results":"","allow_empty_query":"0","search_order":"","show_feed":"0","show_feed_text":"0","show_feed_link":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 119, 120, 0, '*', 0),
(467, 'aboutjoomla', 'Búsqueda Inteligente', 'smart-search', '', 'using-joomla/extensions/modules/utility-modules/smart-search', 'index.php?option=com_content&view=article&id=70', 'component', 1, 414, 5, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 181, 182, 0, '*', 0),
(468, 'aboutjoomla', 'Articles i Categories', 'articles-i-categories', '', 'articles-i-categories', 'index.php?option=com_content&view=article&id=71', 'component', 1, 1, 1, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 285, 286, 0, '*', 0),
(469, 'aboutjoomla', 'Noves Tecnologies', 'articulo-simple', '', 'articulo-simple', 'index.php?option=com_content&view=article&id=71', 'component', 1, 1, 1, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 301, 320, 0, '*', 0),
(470, 'aboutjoomla', 'Disc Durs SDD', 'disc-durs-sdd', '', 'articulo-simple/disc-durs-sdd', 'index.php?option=com_content&view=article&id=72', 'component', 1, 469, 2, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 304, 305, 0, '*', 0),
(471, 'top', 'Disc Durs SDD', 'disc-durs', '', 'articulo-simple/disc-durs', 'index.php?option=com_content&view=article&id=72', 'component', -2, 469, 2, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 302, 303, 0, '*', 0),
(472, 'aboutjoomla', 'Dispositius Mobils', 'dispositius-mobils', '', 'articulo-simple/dispositius-mobils', 'index.php?option=com_content&view=article&id=73', 'component', 1, 469, 2, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 306, 307, 0, '*', 0),
(473, 'aboutjoomla', 'Grafe', 'grafe', '', 'articulo-simple/grafe', 'index.php?option=com_content&view=article&id=74', 'component', 1, 469, 2, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 308, 309, 0, '*', 0),
(474, 'aboutjoomla', 'Smartwatch', 'smartwatch', '', 'articulo-simple/smartwatch', 'index.php?option=com_content&view=article&id=75', 'component', 1, 469, 2, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 310, 311, 0, '*', 0),
(475, 'top', 'Esports', 'esports', '', 'esports', 'index.php?option=com_content&view=categories&id=78', 'component', 1, 1, 1, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_base_description":"","categories_description":"","maxLevelcat":"","show_empty_categories_cat":"","show_subcat_desc_cat":"","show_cat_num_articles_cat":"","show_category_title":"","show_description":"","show_description_image":"","maxLevel":"","show_empty_categories":"","show_no_articles":"","show_subcat_desc":"","show_cat_num_articles":"","num_leading_articles":"1","num_intro_articles":"4","num_columns":"2","num_links":"4","multi_column_order":"","show_subcategory_content":"","orderby_pri":"","orderby_sec":"","order_date":"","show_pagination":"","show_pagination_results":"","show_pagination_limit":"","filter_field":"","show_headings":"","list_show_date":"","date_format":"","list_show_hits":"","list_show_author":"","display_num":"10","show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_readmore":"","show_readmore_title":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","show_feed_link":"","feed_summary":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 287, 288, 0, '*', 0),
(482, 'main', 'COM_JCKMAN_MENU_NAME', 'com-jckman-menu-name', '', 'com-jckman-menu-name', 'index.php?option=com_jckman', 'component', 0, 1, 1, 805, 0, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_jckman/icons/jcklogo.png', 0, '', 289, 300, 0, '', 1),
(483, 'main', 'COM_JCKMAN_SUBMENU_CPANEL_NAME', 'com-jckman-submenu-cpanel-name', '', 'com-jckman-menu-name/com-jckman-submenu-cpanel-name', 'index.php?option=com_jckman&controller=cpanel', 'component', 0, 482, 2, 805, 0, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_jckman/icons/icon-16-cpanel.png', 0, '', 290, 291, 0, '', 1),
(484, 'main', 'COM_JCKMAN_SUBMENU_INSTALL_NAME', 'com-jckman-submenu-install-name', '', 'com-jckman-menu-name/com-jckman-submenu-install-name', 'index.php?option=com_jckman&controller=Install', 'component', 0, 482, 2, 805, 0, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_jckman/icons/icon-16-installer.png', 0, '', 292, 293, 0, '', 1),
(485, 'main', 'COM_JCKMAN_SUBMENU_PLUGIN_NAME', 'com-jckman-submenu-plugin-name', '', 'com-jckman-menu-name/com-jckman-submenu-plugin-name', 'index.php?option=com_jckman&controller=list', 'component', 0, 482, 2, 805, 0, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_jckman/icons/icon-16-pluginmanager.png', 0, '', 294, 295, 0, '', 1),
(486, 'main', 'COM_JCKMAN_SUBMENU_LAYOUT_NAME', 'com-jckman-submenu-layout-name', '', 'com-jckman-menu-name/com-jckman-submenu-layout-name', 'index.php?option=com_jckman&controller=toolbars', 'component', 0, 482, 2, 805, 0, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_jckman/icons/icon-16-layout.png', 0, '', 296, 297, 0, '', 1),
(487, 'main', 'COM_JCKMAN_SUBMENU_IMPORT_NAME', 'com-jckman-submenu-import-name', '', 'com-jckman-menu-name/com-jckman-submenu-import-name', 'index.php?option=com_jckman&controller=import', 'component', 0, 482, 2, 805, 0, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_jckman/icons/icon-16-restore.png', 0, '', 298, 299, 0, '', 1),
(488, 'aboutjoomla', 'Impressores 3D', 'impressores-3d', '', 'articulo-simple/impressores-3d', 'index.php?option=com_content&view=article&id=80', 'component', 1, 469, 2, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 312, 313, 0, '*', 0),
(489, 'aboutjoomla', 'Google Glass', 'google-glass', '', 'articulo-simple/google-glass', 'index.php?option=com_content&view=article&id=81', 'component', 1, 469, 2, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 314, 315, 0, '*', 0),
(490, 'aboutjoomla', 'Drons', 'drons', '', 'articulo-simple/drons', 'index.php?option=com_content&view=article&id=82', 'component', 1, 469, 2, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 316, 317, 0, '*', 0),
(491, 'aboutjoomla', 'Televisors 4k i pantalla curva', 'televisors-4k-i-pantalla-curva', '', 'articulo-simple/televisors-4k-i-pantalla-curva', 'index.php?option=com_content&view=article&id=83', 'component', 1, 469, 2, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 318, 319, 0, '*', 0),
(498, 'espanol', 'Español', 'esp', '', 'esp', 'index.php?option=com_content&view=article&id=87', 'component', 1, 1, 1, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 333, 334, 1, 'es-ES', 0),
(499, 'catala', 'Català', 'cat', '', 'cat', 'index.php?option=com_content&view=article&id=84', 'component', 1, 1, 1, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 335, 336, 1, 'ca_Es', 0),
(500, 'english', 'English', 'eng', '', 'eng', 'index.php?option=com_content&view=article&id=86', 'component', 1, 1, 1, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 337, 338, 1, 'en-GB', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `onr_menu_types`
--

CREATE TABLE IF NOT EXISTS `onr_menu_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `menutype` varchar(24) NOT NULL,
  `title` varchar(48) NOT NULL,
  `description` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_menutype` (`menutype`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=17 ;

--
-- Volcado de datos para la tabla `onr_menu_types`
--

INSERT INTO `onr_menu_types` (`id`, `menutype`, `title`, `description`) VALUES
(2, 'usermenu', 'Menu Usuario', 'Un menu para los usuarios registrados'),
(3, 'top', 'Ejemplos Enlaces', 'Enlaces para los principales tipos de usuarios'),
(4, 'aboutjoomla', 'Sobre Joomla!', 'Todo sobre Joomla!'),
(5, 'parks', 'Parques Australianos', 'Menu principal de un sitio sobre los parques de Australia'),
(6, 'mainmenu', 'Menu Principal', 'Menu de Inicio'),
(7, 'fruitshop', 'Tienda de Frutas', 'Menu para el sitio de la tienda de ejemplo.'),
(14, 'espanol', 'Español', ''),
(15, 'catala', 'Català', ''),
(16, 'english', 'English', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `onr_messages`
--

CREATE TABLE IF NOT EXISTS `onr_messages` (
  `message_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id_from` int(10) unsigned NOT NULL DEFAULT '0',
  `user_id_to` int(10) unsigned NOT NULL DEFAULT '0',
  `folder_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `date_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `state` tinyint(1) NOT NULL DEFAULT '0',
  `priority` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `subject` varchar(255) NOT NULL DEFAULT '',
  `message` text NOT NULL,
  PRIMARY KEY (`message_id`),
  KEY `useridto_state` (`user_id_to`,`state`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `onr_messages_cfg`
--

CREATE TABLE IF NOT EXISTS `onr_messages_cfg` (
  `user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `cfg_name` varchar(100) NOT NULL DEFAULT '',
  `cfg_value` varchar(255) NOT NULL DEFAULT '',
  UNIQUE KEY `idx_user_var_name` (`user_id`,`cfg_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `onr_modules`
--

CREATE TABLE IF NOT EXISTS `onr_modules` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL DEFAULT '',
  `note` varchar(255) NOT NULL DEFAULT '',
  `content` text NOT NULL,
  `ordering` int(11) NOT NULL DEFAULT '0',
  `position` varchar(50) NOT NULL DEFAULT '',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `module` varchar(50) DEFAULT NULL,
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `showtitle` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `params` text NOT NULL,
  `client_id` tinyint(4) NOT NULL DEFAULT '0',
  `language` char(7) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `published` (`published`,`access`),
  KEY `newsfeeds` (`module`,`published`),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=108 ;

--
-- Volcado de datos para la tabla `onr_modules`
--

INSERT INTO `onr_modules` (`id`, `title`, `note`, `content`, `ordering`, `position`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `published`, `module`, `access`, `showtitle`, `params`, `client_id`, `language`) VALUES
(1, 'Menú Principal', '', '', 1, 'position-7', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_menu', 1, 1, '{"menutype":"mainmenu","startLevel":"0","endLevel":"0","showAllChildren":"0","tag_id":"","class_sfx":"","window_open":"","layout":"","moduleclass_sfx":"_menu","cache":"1","cache_time":"900","cachemode":"itemid"}', 0, '*'),
(2, 'Acceso', '', '', 1, 'login', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_login', 1, 1, '', 1, '*'),
(3, 'Artículos populares', '', '', 3, 'cpanel', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_popular', 3, 1, '{"count":"5","catid":"","user_id":"0","layout":"","moduleclass_sfx":"","cache":"0"}', 1, '*'),
(4, 'Últimos artículos añadidos', '', '', 4, 'cpanel', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_latest', 3, 1, '{"count":"5","ordering":"c_dsc","catid":"","user_id":"0","layout":"","moduleclass_sfx":"","cache":"0"}', 1, '*'),
(8, 'Barra de herramientas', '', '', 1, 'toolbar', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_toolbar', 3, 1, '', 1, '*'),
(9, 'Iconos rápidos', '', '', 1, 'icon', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_quickicon', 3, 1, '', 1, '*'),
(10, 'Usuarios conectados', '', '', 2, 'cpanel', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_logged', 3, 1, '', 1, '*'),
(12, 'Menú Administrador', '', '', 1, 'menu', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_menu', 3, 1, '{"layout":"","moduleclass_sfx":"","shownew":"1","showhelp":"1","cache":"0"}', 1, '*'),
(13, 'Submenú Administrador', '', '', 1, 'submenu', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_submenu', 3, 1, '', 1, '*'),
(14, 'Estado usuarios', '', '', 1, 'status', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_status', 3, 1, '', 1, '*'),
(15, 'Título', '', '', 1, 'title', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_title', 3, 1, '', 1, '*'),
(16, 'Formulario de acceso', '', '', 7, 'position-7', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_login', 1, 1, '{"pretext":"","posttext":"","login":"","logout":"","greeting":"1","name":"0","usesecure":"0","layout":"_:default","moduleclass_sfx":"","cache":"0"}', 0, '*'),
(17, 'Ruta', '', '', 1, 'position-2', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_breadcrumbs', 1, 1, '{"moduleclass_sfx":"","showHome":"1","homeText":"Inicio","showComponent":"1","separator":"","cache":"1","cache_time":"900","cachemode":"itemid"}', 0, '*'),
(18, 'Anuncio', '', '', 1, 'position-10', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_banners', 1, 0, '{"target":"1","count":"1","cid":"3","catid":[""],"tag_search":"0","ordering":"0","header_text":"","footer_text":"Cursos Online","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900"}', 0, '*'),
(19, 'Menu Usuario', '', '', 3, 'position-7', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_menu', 2, 1, '{"menutype":"usermenu","startLevel":"1","endLevel":"0","showAllChildren":"0","tag_id":"","class_sfx":"","window_open":"","layout":"","moduleclass_sfx":"_menu","cache":"1","cache_time":"900","cachemode":"itemid"}', 0, '*'),
(20, 'Arriba', '', '', 1, 'position-1', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_menu', 1, 1, '{"menutype":"top","startLevel":"1","endLevel":"0","showAllChildren":"0","tag_id":"","class_sfx":"","maxdepth":"10","window_open":"","layout":"","moduleclass_sfx":"","cache":"0"}', 0, '*'),
(22, 'Parques Australianos ', '', '', 2, 'position-5', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_menu', 1, 1, '{"menutype":"parks","startLevel":"1","endLevel":"0","showAllChildren":"0","tag_id":"","class_sfx":"","window_open":"","layout":"","moduleclass_sfx":"","cache":"0","cache_time":"900","cachemode":"itemid"}', 0, 'en-GB'),
(23, 'Sobre Joomla!', '', '', 4, 'position-7', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_menu', 1, 1, '{"menutype":"aboutjoomla","startLevel":"1","endLevel":"0","showAllChildren":"0","tag_id":"","class_sfx":"","window_open":"","layout":"","moduleclass_sfx":"_menu","cache":"0","cache_time":"900","cachemode":"itemid"}', 0, '*'),
(25, 'Mapa del Sitio', '', '', 1, 'sitemapload', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_menu', 1, 0, '{"menutype":"mainmenu","startLevel":"2","endLevel":"3","showAllChildren":"1","tag_id":"","class_sfx":"sitemap","window_open":"","layout":"","moduleclass_sfx":"","cache":"0","cache_time":"900","cachemode":"itemid"}', 0, '*'),
(26, 'Este Sitio', '', '', 5, 'position-7', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_menu', 1, 1, '{"menutype":"mainmenu","startLevel":"1","endLevel":"1","showAllChildren":"0","tag_id":"","class_sfx":"","window_open":"","layout":"","moduleclass_sfx":"_menu","cache":"0","cache_time":"900","cachemode":"itemid"}', 0, '*'),
(27, 'Articulos Archivados', '', '', 1, 'archiveload', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_articles_archive', 1, 1, '{"count":"10","layout":"","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(28, 'Ultimas Noticias', '', '', 1, 'articleslatestload', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_articles_latest', 1, 1, '{"catid":["19"],"count":"5","ordering":"c_dsc","user_id":"0","show_featured":"","layout":"","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(29, 'Contenido Mas Leido', '', '', 1, 'articlespopularload', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_articles_popular', 1, 1, '{"show_front":"1","count":"5","catid":["26","29"],"layout":"","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(30, 'Mostrar Feeds (hilos)', '', '', 1, 'feeddisplayload', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_feed', 1, 1, '{"rssurl":"http:\\/\\/community.joomla.org\\/blogs\\/community.feed?type=rss","rssrtl":"0","rsstitle":"1","rssdesc":"1","rssimage":"1","rssitems":"3","rssitemdesc":"1","word_count":"0","layout":"","moduleclass_sfx":"","cache":"1","cache_time":"900"}', 0, '*'),
(31, 'Noticias Ultima Hora: Ultimas', '', '', 1, 'newsflashload', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_articles_news', 1, 1, '{"catid":["20"],"image":"0","item_title":"0","link_titles":"","item_heading":"h4","showLastSeparator":"1","readmore":"1","count":"1","ordering":"a.publish_up","layout":"horizontal","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"itemid"}', 0, '*'),
(33, 'Imagen Aleatoria', '', '', 1, 'randomimageload', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_random_image', 1, 1, '{"type":"jpg","folder":"images\\/sampledata\\/parks\\/animals","link":"","width":"180","height":"","layout":"","moduleclass_sfx":"","cache":"0"}', 0, '*'),
(34, 'Elementos Articulos Relacionados', '', '', 1, 'relateditemsload', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_related_items', 1, 1, '{"showDate":"0","layout":"","moduleclass_sfx":"","owncache":"1"}', 0, '*'),
(35, 'Buscar', '', '', 1, 'searchload', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_search', 1, 1, '{"width":"20","text":"","button":"","button_pos":"right","imagebutton":"","button_text":"","set_itemid":"","layout":"","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"itemid"}', 0, '*'),
(36, 'Estadisticas', '', '', 1, 'statisticsload', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_stats', 1, 1, '{"serverinfo":"1","siteinfo":"1","counter":"1","increase":"0","layout":"","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(37, 'Noticias externas', '', '', 1, 'syndicateload', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_syndicate', 1, 1, '{"text":"Feed Entries","format":"rss","layout":"","moduleclass_sfx":"","cache":"0"}', 0, '*'),
(38, 'Ultimos Usuarios', '', '', 1, 'userslatestload', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_users_latest', 1, 1, '{"shownumber":"5","linknames":"0","linktowhat":"0","layout":"","moduleclass_sfx":"","cache":"0","cache_time":"900","cachemode":"static"}', 0, '*'),
(39, 'Quien esta en Linea', '', '', 1, 'whosonlineload', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_whosonline', 1, 1, '{"showmode":"2","linknames":"0","linktowhat":"0","layout":"","moduleclass_sfx":"","cache":"0"}', 0, '*'),
(40, 'Wrapper', '', '', 1, 'wrapperload', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_wrapper', 1, 1, '{"url":"http:\\/\\/fsf.org","add":"1","scrolling":"auto","width":"100%","height":"200","height_auto":"1","target":"","layout":"","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(41, 'Pie de Pagina', '', '', 1, 'footerload', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_footer', 1, 1, '{"layout":"","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(44, 'Acceso', '', '', 1, 'loginload', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_login', 1, 1, '{"pretext":"","posttext":"","login":"280","logout":"280","greeting":"1","name":"0","usesecure":"0","layout":"","moduleclass_sfx":"","cache":"0"}', 0, '*'),
(45, 'Menu', '', '', 1, 'menuload', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_menu', 1, 1, '{"menutype":"mainmenu","startLevel":"1","endLevel":"0","showAllChildren":"0","tag_id":"","class_sfx":"","window_open":"","layout":"","moduleclass_sfx":"","cache":"0","cache_time":"900","cachemode":"itemid"}', 0, '*'),
(47, 'Ultimos Blogs Parques', '', '', 6, 'position-7', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_articles_latest', 1, 1, '{"count":"5","ordering":"c_dsc","user_id":"0","show_front":"1","catid":"35","layout":"","moduleclass_sfx":"","cache":"1","cache_time":"900"}', 0, 'en-GB'),
(48, 'Personalizar HTML', '', '<p>Este es un módulo HTML personalizado. Esto significa que puede introducir cualquier contenido que desee.</p>', 1, 'customload', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 1, '{"prepare_content":"1","layout":"","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(49, 'Enlaces Web', '', '', 1, 'weblinksload', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_weblinks', 1, 1, '{"catid":"32","count":"5","ordering":"title","direction":"asc","target":"3","description":"0","hits":"0","count_clicks":"0","layout":"","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(52, 'Ruta', '', '', 1, 'breadcrumbsload', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_breadcrumbs', 1, 1, '{"showHome":"1","homeText":"Home","showLast":"1","separator":"","layout":"","moduleclass_sfx":"","cache":"0","cache_time":"900","cachemode":"itemid"}', 0, '*'),
(56, 'Anuncios', '', '', 1, 'bannersload', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_banners', 1, 1, '{"target":"1","count":"1","cid":"1","catid":["15"],"tag_search":"0","ordering":"random","header_text":"","footer_text":"","layout":"","moduleclass_sfx":"","cache":"1","cache_time":"900"}', 0, '*'),
(57, 'Tienda de Frutas', '', '', 3, 'position-5', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_menu', 1, 1, '{"menutype":"fruitshop","startLevel":"1","endLevel":"0","showAllChildren":"0","tag_id":"","class_sfx":"","window_open":"","layout":"","moduleclass_sfx":"","cache":"0","cache_time":"900","cachemode":"itemid"}', 0, '*'),
(58, 'Especial', '', '<h1>&iexcl;Esta semana tenemos en especial a mitad de precio las deliciosas naranjas!</h1><div>&iexcl;Sólo para nuestros clientes especiales!</div><div>Utilice el código: Joomla! when ordering</div><p><em>Este módulo sólo puede ser visto por la gente en el grupo de clientes o superior.</em></p>', 1, 'position-12', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 4, 1, '{"prepare_content":"1","layout":"","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(61, 'Articulos Categorias', '', '', 1, 'articlescategoriesload', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_articles_categories', 1, 1, '{"parent":"29","show_description":"0","show_children":"0","maxlevel":"0","count":"0","layout":"","moduleclass_sfx":"","owncache":"1","cache_time":"900"}', 0, '*'),
(62, 'Conmutar Idioma', '', '', 3, 'position-4', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_languages', 1, 1, '{"header_text":"","footer_text":"","image":"1","layout":"","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(63, 'Buscar', '', '', 1, 'position-0', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_search', 1, 1, '{"width":"20","text":"","button":"","button_pos":"right","imagebutton":"1","button_text":"","set_itemid":"","layout":"","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"itemid"}', 0, '*'),
(64, 'Conmutar Idioma', '', '', 1, 'languageswitcherload', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_languages', 1, 1, '{"header_text":"","footer_text":"","dropdown":"0","image":"1","inline":"1","show_active":"1","full_name":"1","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(65, 'Sobre Tienda de Frutas', '', '<p>El sitio de la Tienda de Frutas muestra una serie de características de Joomla!.</p><p>La plantilla utiliza clases de hojas de estilo en cascada para cambiar el diseño de los elementos, como la creación de la lista alfabética horizontal en la Enciclopedia de Frutas.</p><p> </p>', 1, 'position-4', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 1, '{"prepare_content":"1","layout":"","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(67, 'Extensiones', '', '', 2, 'position-7', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_menu', 1, 1, '{"menutype":"aboutjoomla","startLevel":"1","endLevel":"6","showAllChildren":"0","tag_id":"","class_sfx":"-menu","window_open":"","layout":"","moduleclass_sfx":"","cache":"0","cache_time":"900","cachemode":"itemid"}', 0, '*'),
(68, 'Sobre Parques', '', '<p>El sitio de muestra de Parques está diseñado como un sitio simple que puede ser actualizado sistemáticamente desde la parte delantera (frontend) de Joomla!.</p><p>As a site, it is largely focused on a blog which can be updated using the front end article submission.</p><p>New weblinks can also be added through the front end.</p><p>A simple image gallery uses com_content with thumbnails displayed in a blog layout and full size images shown in article layout.</p><p>The Parks site features the language switch module. All of the content and modules are tagged as English (en-GB). If a second language pack is added with sample data this can be filtered using the language switch.</p><p>Parks uses HTML5 which is a major web standard (along with XHTML which is used in other areas of sample data).</p>', 2, 'position-4', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 1, '{"prepare_content":"1","layout":"","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(69, 'Articulos Categoria', '', '', 1, 'articlescategoryload', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_articles_category', 1, 1, '{"mode":"normal","show_on_article_page":"1","show_front":"show","count":"0","category_filtering_type":"1","catid":["72"],"show_child_category_articles":"0","levels":"1","author_filtering_type":"1","created_by":[""],"author_alias_filtering_type":"1","created_by_alias":[""],"excluded_articles":"","date_filtering":"off","date_field":"a.created","start_date_range":"","end_date_range":"","relative_date":"30","article_ordering":"a.title","article_ordering_direction":"ASC","article_grouping":"none","article_grouping_direction":"ksort","month_year_format":"F Y","item_heading":"4","show_date":"0","show_date_field":"created","show_date_format":"Y-m-d H:i:s","show_category":"0","show_hits":"0","show_author":"0","show_introtext":"0","introtext_limit":"100","layout":"","moduleclass_sfx":"","owncache":"1","cache_time":"900"}', 0, '*'),
(70, 'Buscar (Plantilla Atomic)', '', '', 1, 'atomic-search', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_search', 1, 0, '{"width":"20","text":"","button":"","button_pos":"right","imagebutton":"","button_text":"","set_itemid":"","layout":"","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"itemid"}', 0, '*'),
(71, 'Menu Superior (Plantilla Atomic)', '', '', 1, 'atomic-topmenu', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_menu', 1, 0, '{"menutype":"aboutjoomla","startLevel":"1","endLevel":"0","showAllChildren":"0","tag_id":"","class_sfx":"","window_open":"","layout":"","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"itemid"}', 0, '*'),
(72, 'Cita Superior (Plantilla Atomic)', '', '<hr />\r\n<h2 class="alt">Gestión de Contenidos de gran alcance y un framework extensible simple.</h2>\r\n<hr />', 1, 'atomic-topquote', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 0, '{"prepare_content":"1","layout":"","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(73, 'Columna Inferior Izquierda (Plantilla Atomic)', '', '<h6>Esta es una columna anidada</h6>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.</p>', 1, 'atomic-bottomleft', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 0, '{"prepare_content":"1","layout":"","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(74, 'Columna Inferior Centro (Plantilla Atomic)', '', '<h6>Esta es otra columna anidada</h6>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.</p>', 1, 'atomic-bottommiddle', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 0, '{"prepare_content":"1","layout":"","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(75, 'Barra lateral (Plantilla Atomic)', '', '<h3>A <span class="alt">Simple</span> barra lateral</h3>\r\n<p>Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Cras ornare mattis nunc. Mauris venenatis, pede sed aliquet vehicula, lectus tellus pulvinar neque, non cursus sem nisi vel augue.</p>\r\n<p class="quiet">Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Cras ornare mattis nunc. Mauris venenatis, pede sed aliquet vehicula, lectus tellus pulvinar neque, non cursus sem nisi vel augue.</p>\r\n<h5>Incremental leading</h5>\r\n<p class="incr">Vestibulum ante ipsum primis in faucibus orci luctus vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Cras ornare mattis nunc. Mauris venenatis, pede sed aliquet vehicula, lectus tellus pulvinar neque, non cursus sem nisi vel augue. sed aliquet vehicula, lectus tellus.</p>\r\n<p class="incr">Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Cras ornare mattis nunc. Mauris venenatis, pede sed aliquet vehicula, lectus tellus pulvinar neque, non cursus sem nisi vel augue. sed aliquet vehicula, lectus tellus pulvinar neque, non cursus sem nisi vel augue. ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Cras ornare mattis nunc. Mauris venenatis, pede sed aliquet vehicula, lectus tellus pulvinar neque, non cursus sem nisi vel augue. sed aliquet vehicula, lectus tellus pulvinar neque, non cursus sem nisi vel augue.</p>', 1, 'atomic-sidebar', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 0, '{"prepare_content":"1","layout":"","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(76, 'Acceso (Plantilla Atomic)', '', '', 2, 'atomic-sidebar', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_login', 1, 0, '{"pretext":"","posttext":"","login":"","logout":"","greeting":"1","name":"0","usesecure":"0","layout":"","moduleclass_sfx":"","cache":"0"}', 0, '*'),
(77, 'Diseño y Hosting Joomla!', '', '', 1, 'position-11', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_banners', 1, 0, '{"target":"1","count":"1","cid":"2","catid":["15"],"tag_search":"0","ordering":"0","header_text":"","footer_text":"Dise\\u00f1o y Hosting Joomla!","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900"}', 0, '*'),
(78, 'Joomla Spanish', '', '', 1, 'position-9', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_banners', 1, 0, '{"target":"1","count":"1","cid":"1","catid":["15"],"tag_search":"0","ordering":"0","header_text":"","footer_text":"Joomla! en tu idioma","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900"}', 0, '*'),
(79, 'Estatus Multilenguaje', '', '', 1, 'status', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_multilangstatus', 3, 1, '{"layout":"_:default","moduleclass_sfx":"","cache":"0"}', 1, '*'),
(84, 'Módulo de Búsqueda Inteligente', '', '', 2, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_finder', 1, 1, '{"searchfilter":"","show_autosuggest":"1","show_advanced":"0","layout":"_:default","moduleclass_sfx":"","field_size":20,"alt_label":"","show_label":"0","label_pos":"top","show_button":"0","button_pos":"right","opensearch":"1","opensearch_title":""}', 0, '*'),
(86, 'Versión de Joomla', '', '', 1, 'footer', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_version', 3, 1, '{"format":"short","product":"1","layout":"_:default","moduleclass_sfx":"","cache":"0"}', 1, '*'),
(96, 'JCK Manager v4.8.3', '', '<div style="padding: 5px;">\r\n			<img alt="" src="components/com_jckman/icons/jck-manager-logo.png" style="margin: 3px 2px 0pt 0pt;" />\r\n		</div>\r\n		<div style="padding:5px;"> \r\n		Installed version: 4.8.3<br/> \r\n		Author: <a href="http://www.joomlackeditor.com">www.joomlackeditor.com</a><br/>\r\n		Copyright &copy; WebxSolution Ltd, All rights reserved.<br/>\r\n		License: GPLv2.0<br/>\r\n		For licensing information please visit the following web sites:<br/>\r\n		<a href="http://joomlackeditor.com/terms-of-use">http://joomlackeditor.com/terms-of-use</a>\r\n		</div>\r\n		<div style="padding: 5px;">\r\n		The JCK Manager is a way of effortlessly extending the JCK Editor without the need of programming knowledge! And because the Editor is built upon a state-of-the-art plug-and-play architecture you can expand it and shape it in any direction!\r\n			<br />\r\n			<br />\r\n		</div>', 1, 'jck_cpanel', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 1, '{"prepare_content":0}', 1, ''),
(97, 'JCK Plugin Manager - (FAQs)', '', '<div style="padding: 5px;">\r\n			<img alt="" src="components/com_jckman/icons/icon-48-plugin.png" style="float: left; margin: 3px 2px 0pt 0pt;" />The Plugin Manager controls what buttons are displayed in the editor&rsquo;s interface. It allows plugins to be published, unpublished, and assigned to specific tool-bars with the ability to setup user permissions.<br/> <br/> \r\n			In addition to these great features the Plugin Manager will also allow you to define three default parameters for the dialog popup screens: Height, Title and Width. And if this was not enough you can add further customizable options for your JCK plugins as parameters are just like any standard Joomla extensions! \r\n			<br />\r\n			<br />\r\n		</div>', 2, 'jck_cpanel', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 1, '{"prepare_content":0}', 1, ''),
(98, 'JCK Plugin Installer - (FAQs)', '', '<div style="padding: 5px;">\r\n			<img alt="" src="components/com_jckman/icons/icon-48-installer.png" style="float: left; margin: 3px 2px 0pt 0pt;" />The Plugin installer allows you to install and uninstall JCK plugins. A JCK plugin consists of an extension that interacts with the editor. These plugins or extensions are used to enable the user to quickly and simply customise or expand the functionality of the editor. This could be done to meet your needs to portfolio images in a stylish gallery light-box or to expand the editor with media or image editing extensions. The possibilities are endless!\r\n		<br />\r\n		</div>\r\n		<div style="padding: 5px;">\r\n		Please click here to visit the official Plug-in Store: <a href="http://www.joomlackeditor.com/ckeditor-plugins-repository">http://www.joomlackeditor.com/ckeditor-plugins-repository </a>\r\n		<br />\r\n		<br />\r\n		</div>', 3, 'jck_cpanel', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 1, '{"prepare_content":0}', 1, ''),
(99, 'System Check - (FAQs)', '', '<div style="padding: 5px;">\r\n			<img alt="" src="components/com_jckman/icons/icon-48-systemcheck.png" style="float: left; margin: 3px 2px 0pt 0pt;" />The manager has an intelligent API that will work to rectify any server-side file permissions which is required for the editor to upload and administer files.  It does this by automatically performing a health check on your system and notifies you of these problems and will try to fix them for you.\r\n		<br />\r\n		</div>\r\n		<div style="padding: 5px;">\r\n		This also reinitiates the helpful installation wizard which will walk you step by step through the process of setting up the basic functionally of the editor. This is done to help you get the best of the JCK Editor! \r\n		<br />\r\n		<br />\r\n		</div>', 4, 'jck_cpanel', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 1, '{"prepare_content":0}', 1, ''),
(100, 'Layout Manager - (FAQs)', '', '<div style="padding: 5px;">\r\n			<img alt="" src="components/com_jckman/icons/icon-48-layout.png" style="float: left; margin: 3px 2px 0pt 0pt;" />It allows complete control over the editor&rsquo;s layout. You can create your own bespoke toolbars, position plugins, create new toolbars, publish and unpublish toolbars! It&rsquo;s surprisingly easy do thanks to its simple drag-and-drop interface. \r\n			<br />\r\n			<br />\r\n		</div>', 5, 'jck_cpanel', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 1, '{"prepare_content":0}', 1, ''),
(101, 'Backup - (FAQs)', '', '<div style="padding: 5px;">\r\n			<img alt="" src="components/com_jckman/icons/icon-48-export.png" style="float: left; margin: 3px 2px 0pt 0pt;" /> The Backup wizard gives you the ability to create backup copies of your editor&rsquo;s configuration and files.  This includes backing up your JCK plugins and settings, your JCK Manager configuration (including toolbars and user permissions) and lastly your editor&rsquo;s configuration. It does this by creating a clone and exporting it as a tar.gz file ready for you to reinstate via the JCK Managers backup restore feature!\r\n		<br />\r\n		</div>\r\n		<div style="padding: 5px;">\r\n		This feature is very useful, and can be used to export restore points prior to upgrading or used to export your custom configuration to another Joomla compatible system!\r\n		<br />\r\n		<br />\r\n		</div>', 6, 'jck_cpanel', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 1, '{"prepare_content":0}', 1, ''),
(102, 'Restore - (FAQs)', '', '<div style="padding: 5px;">\r\n			<img alt="" src="components/com_jckman/icons/icon-48-import.png" style="float: left; margin: 3px 2px 0pt 0pt;" /> To restore a back it is very easy! All you need to do is click in the &lsquo;Restore&rsquo;s icon, navigate to the tar.gz backup file and click in the &lsquo;Upload File &amp; install&rsquo;s button. Or if you want to migrate your configuration from one server to another, all you need to do is install the JCK Editor &amp; Manager first, and repeat the above &ndash; job done!\r\n		</div>', 7, 'jck_cpanel', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 1, '{"prepare_content":0}', 1, ''),
(103, 'Sync - (FAQs)', '', '<div style="padding: 5px;">\r\n			<img alt="" src="components/com_jckman/icons/icon-48-sync.png" style="float: left; margin: 3px 2px 0pt 0pt;" />The JCK Manager keeps a hard copy of your editor&rsquo;s settings and plugins. At any given moment you can use the &lsquo;Sync&rsquo; button to synchronize this data back to the JCK Editor. This is especially useful as it will allow you to uninstall and reinstall the editor during upgrade, before synchronizing your editor&rsquo;s settings back!\r\n		</div>', 8, 'jck_cpanel', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 1, '{"prepare_content":0}', 1, ''),
(104, 'JCK PLugMan Control Panel Icons', '', '', 1, 'jck_icon', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_jckquickicon', 1, 0, '', 1, ''),
(105, 'GTranslate', '', '', 1, 'banner', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_gtranslate', 1, 1, '{"moduleclass_sfx":"","pro_version":"0","enterprise_version":"0","method":"onfly","look":"both","flag_size":"16","orientation":"h","new_tab":"0","analytics":"0","language":"en","show_af":"1","show_sq":"1","show_ar":"1","show_hy":"1","show_az":"1","show_eu":"1","show_be":"1","show_bg":"1","show_ca":"1","show_zh-CN":"1","show_zh-TW":"1","show_hr":"1","show_cs":"1","show_da":"1","show_nl":"1","show_en":"2","show_et":"1","show_tl":"1","show_fi":"1","show_fr":"2","show_gl":"1","show_ka":"1","show_de":"2","show_el":"1","show_ht":"1","show_iw":"1","show_hi":"1","show_hu":"1","show_is":"1","show_id":"1","show_ga":"1","show_it":"2","show_ja":"1","show_ko":"1","show_lv":"1","show_lt":"1","show_mk":"1","show_ms":"1","show_mt":"1","show_no":"1","show_fa":"1","show_pl":"1","show_pt":"2","show_ro":"1","show_ru":"2","show_sr":"1","show_sk":"1","show_sl":"1","show_es":"2","show_sw":"1","show_sv":"1","show_th":"1","show_tr":"1","show_uk":"1","show_ur":"1","show_vi":"1","show_cy":"1","show_yi":"1","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(106, 'cambiar idioma', '', '', 1, 'position-0', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_languages', 1, 1, '{"header_text":"","footer_text":"","dropdown":"0","image":"1","inline":"1","show_active":"1","full_name":"1","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"itemid"}', 0, '*'),
(107, 'Cambiar idioma', '', '', 1, 'position-7', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_languages', 1, 1, '{"header_text":"","footer_text":"","dropdown":"0","image":"1","inline":"1","show_active":"1","full_name":"1","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"itemid"}', 0, '*');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `onr_modules_menu`
--

CREATE TABLE IF NOT EXISTS `onr_modules_menu` (
  `moduleid` int(11) NOT NULL DEFAULT '0',
  `menuid` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`moduleid`,`menuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `onr_modules_menu`
--

INSERT INTO `onr_modules_menu` (`moduleid`, `menuid`) VALUES
(1, 101),
(2, 0),
(3, 0),
(4, 0),
(6, 0),
(7, 0),
(8, 0),
(9, 0),
(10, 0),
(12, 0),
(13, 0),
(14, 0),
(15, 0),
(16, 0),
(17, 0),
(18, 0),
(19, -463),
(19, -462),
(19, -433),
(19, -432),
(19, -431),
(19, -430),
(19, -429),
(19, -427),
(19, -400),
(19, -399),
(19, -296),
(19, -244),
(19, -243),
(19, -242),
(19, -234),
(20, 0),
(22, 231),
(22, 234),
(22, 238),
(22, 242),
(22, 243),
(22, 244),
(22, 296),
(22, 399),
(22, 400),
(23, -463),
(23, -462),
(23, -433),
(23, -432),
(23, -431),
(23, -430),
(23, -429),
(23, -427),
(23, -400),
(23, -399),
(23, -296),
(23, -244),
(23, -243),
(23, -242),
(23, -238),
(23, -234),
(25, 294),
(26, -463),
(26, -462),
(26, -433),
(26, -432),
(26, -431),
(26, -430),
(26, -429),
(26, -427),
(26, -400),
(26, -399),
(26, -296),
(26, -244),
(26, -243),
(26, -242),
(26, -238),
(26, -234),
(27, 325),
(28, 310),
(29, 302),
(30, 410),
(31, 309),
(32, 309),
(33, 307),
(34, 326),
(35, 306),
(36, 304),
(37, 311),
(38, 300),
(39, 301),
(40, 313),
(41, 324),
(44, 312),
(45, 303),
(47, 231),
(47, 234),
(47, 242),
(47, 243),
(47, 244),
(47, 296),
(47, 399),
(47, 400),
(48, 418),
(49, 417),
(52, 416),
(56, 305),
(57, 238),
(57, 427),
(57, 429),
(57, 430),
(57, 431),
(57, 432),
(57, 433),
(57, 462),
(57, 463),
(58, 427),
(58, 429),
(58, 430),
(58, 431),
(58, 432),
(58, 433),
(58, 462),
(58, 463),
(61, 443),
(62, 231),
(62, 234),
(62, 242),
(62, 243),
(62, 244),
(62, 296),
(62, 399),
(62, 400),
(63, 0),
(64, 447),
(65, 427),
(65, 429),
(65, 430),
(65, 431),
(65, 432),
(65, 433),
(65, 462),
(65, 463),
(68, 243),
(69, 459),
(70, 285),
(70, 316),
(71, 285),
(71, 316),
(72, 285),
(72, 316),
(73, 285),
(73, 316),
(74, 285),
(74, 316),
(75, 285),
(75, 316),
(76, 285),
(76, 316),
(77, 0),
(78, 0),
(79, 0),
(84, 467),
(86, 0),
(105, 0),
(106, 0),
(107, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `onr_newsfeeds`
--

CREATE TABLE IF NOT EXISTS `onr_newsfeeds` (
  `catid` int(11) NOT NULL DEFAULT '0',
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL DEFAULT '',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `link` varchar(200) NOT NULL DEFAULT '',
  `filename` varchar(200) DEFAULT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `numarticles` int(10) unsigned NOT NULL DEFAULT '1',
  `cache_time` int(10) unsigned NOT NULL DEFAULT '3600',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `rtl` tinyint(4) NOT NULL DEFAULT '0',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `language` char(7) NOT NULL DEFAULT '',
  `params` text NOT NULL,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `metadata` text NOT NULL,
  `xreference` varchar(50) NOT NULL COMMENT 'Una referencia para los vínculos a datos externos conjuntos.',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`published`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`created_by`),
  KEY `idx_language` (`language`),
  KEY `idx_xreference` (`xreference`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Volcado de datos para la tabla `onr_newsfeeds`
--

INSERT INTO `onr_newsfeeds` (`catid`, `id`, `name`, `alias`, `link`, `filename`, `published`, `numarticles`, `cache_time`, `checked_out`, `checked_out_time`, `ordering`, `rtl`, `access`, `language`, `params`, `created`, `created_by`, `created_by_alias`, `modified`, `modified_by`, `metakey`, `metadesc`, `metadata`, `xreference`, `publish_up`, `publish_down`) VALUES
(17, 1, 'Joomla! Anuncios', 'joomla-announcements', 'http://www.joomla.org/announcements.feed?type=rss', NULL, 1, 5, 3600, 0, '0000-00-00 00:00:00', 1, 0, 1, 'en-GB', '{"show_feed_image":"","show_feed_description":"","show_item_description":"","feed_character_count":"0"}', '0000-00-00 00:00:00', 894, '', '2010-07-10 23:40:09', 42, '', '', '{"robots":"","author":"","rights":""}', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(17, 2, 'Joomla! Nuevas Extensiones', 'new-joomla-extensions', 'http://feeds.joomla.org/JoomlaExtensions', NULL, 1, 5, 3600, 0, '0000-00-00 00:00:00', 4, 0, 1, 'en-GB', '{"show_feed_image":"","show_feed_description":"","show_item_description":"","feed_character_count":"0"}', '0000-00-00 00:00:00', 894, '', '2010-08-23 02:49:21', 42, '', '', '{"robots":"","author":"","rights":""}', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(17, 3, 'Joomla! Noticias de Seguridad', 'joomla-security-news', 'http://feeds.joomla.org/JoomlaSecurityNews', NULL, 1, 5, 3600, 0, '0000-00-00 00:00:00', 2, 0, 1, 'en-GB', '{"show_feed_image":"","show_feed_description":"","show_item_description":"","feed_character_count":"0"}', '0000-00-00 00:00:00', 894, '', '2010-08-23 02:49:21', 42, '', '', '{"robots":"","author":"","rights":""}', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(17, 4, 'Joomla! Conectar', 'joomla-connect', 'http://feeds.joomla.org/JoomlaConnect', NULL, 1, 5, 3600, 0, '0000-00-00 00:00:00', 3, 0, 1, 'en-GB', '{"show_feed_image":"","show_feed_description":"","show_item_description":"","feed_character_count":"0"}', '0000-00-00 00:00:00', 894, '', '2010-08-23 02:49:21', 42, '', '', '{"robots":"","author":"","rights":""}', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `onr_overrider`
--

CREATE TABLE IF NOT EXISTS `onr_overrider` (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `constant` varchar(255) NOT NULL,
  `string` text NOT NULL,
  `file` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `onr_redirect_links`
--

CREATE TABLE IF NOT EXISTS `onr_redirect_links` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `old_url` varchar(255) NOT NULL,
  `new_url` varchar(255) NOT NULL,
  `referer` varchar(150) NOT NULL,
  `comment` varchar(255) NOT NULL,
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `published` tinyint(4) NOT NULL,
  `created_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_link_old` (`old_url`),
  KEY `idx_link_modifed` (`modified_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `onr_schemas`
--

CREATE TABLE IF NOT EXISTS `onr_schemas` (
  `extension_id` int(11) NOT NULL,
  `version_id` varchar(20) NOT NULL,
  PRIMARY KEY (`extension_id`,`version_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `onr_schemas`
--

INSERT INTO `onr_schemas` (`extension_id`, `version_id`) VALUES
(700, '2.5.8');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `onr_session`
--

CREATE TABLE IF NOT EXISTS `onr_session` (
  `session_id` varchar(200) NOT NULL DEFAULT '',
  `client_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `guest` tinyint(4) unsigned DEFAULT '1',
  `time` varchar(14) DEFAULT '',
  `data` mediumtext,
  `userid` int(11) DEFAULT '0',
  `username` varchar(150) DEFAULT '',
  `usertype` varchar(50) DEFAULT '',
  PRIMARY KEY (`session_id`),
  KEY `whosonline` (`guest`,`usertype`),
  KEY `userid` (`userid`),
  KEY `time` (`time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `onr_session`
--

INSERT INTO `onr_session` (`session_id`, `client_id`, `guest`, `time`, `data`, `userid`, `username`, `usertype`) VALUES
('3utgg22c21pg1s8i2qco0c2rl3', 1, 0, '1425552726', '__default|a:8:{s:15:"session.counter";i:4;s:19:"session.timer.start";i:1425552717;s:18:"session.timer.last";i:1425552721;s:17:"session.timer.now";i:1425552726;s:22:"session.client.browser";s:102:"Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.111 Safari/537.36";s:8:"registry";O:9:"JRegistry":1:{s:7:"\0*\0data";O:8:"stdClass":2:{s:11:"application";O:8:"stdClass":1:{s:4:"lang";s:0:"";}s:13:"com_installer";O:8:"stdClass":2:{s:7:"message";s:0:"";s:17:"extension_message";s:0:"";}}}s:4:"user";O:5:"JUser":25:{s:9:"\0*\0isRoot";b:1;s:2:"id";s:3:"894";s:4:"name";s:10:"Super User";s:8:"username";s:5:"admin";s:5:"email";s:20:"oscaarr.97@gmail.com";s:8:"password";s:65:"b2906198c6300eaad01d75e2b489b4a4:kwIW1nR9cOsIMmuFIn4J9XhS18oI8h0q";s:14:"password_clear";s:0:"";s:8:"usertype";s:10:"deprecated";s:5:"block";s:1:"0";s:9:"sendEmail";s:1:"1";s:12:"registerDate";s:19:"2015-01-28 12:18:17";s:13:"lastvisitDate";s:19:"2015-03-03 11:34:26";s:10:"activation";s:1:"0";s:6:"params";s:0:"";s:6:"groups";a:1:{i:8;s:1:"8";}s:5:"guest";i:0;s:13:"lastResetTime";s:19:"0000-00-00 00:00:00";s:10:"resetCount";s:1:"0";s:10:"\0*\0_params";O:9:"JRegistry":1:{s:7:"\0*\0data";O:8:"stdClass":0:{}}s:14:"\0*\0_authGroups";a:2:{i:0;i:1;i:1;i:8;}s:14:"\0*\0_authLevels";a:4:{i:0;i:1;i:1;i:1;i:2;i:2;i:3;i:3;}s:15:"\0*\0_authActions";N;s:12:"\0*\0_errorMsg";N;s:10:"\0*\0_errors";a:0:{}s:3:"aid";i:0;}s:13:"session.token";s:32:"4f82403eca7a9501f5b91c98d567c8b7";}', 894, 'admin', ''),
('jikc4ql77ei7cg5lfi8ue9aov3', 0, 1, '1425552650', '__default|a:10:{s:15:"session.counter";i:3;s:19:"session.timer.start";i:1425552643;s:18:"session.timer.last";i:1425552645;s:17:"session.timer.now";i:1425552650;s:22:"session.client.browser";s:102:"Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.111 Safari/537.36";s:8:"registry";O:9:"JRegistry":1:{s:7:"\0*\0data";O:8:"stdClass":0:{}}s:4:"user";O:5:"JUser":25:{s:9:"\0*\0isRoot";b:0;s:2:"id";i:0;s:4:"name";N;s:8:"username";N;s:5:"email";N;s:8:"password";N;s:14:"password_clear";s:0:"";s:8:"usertype";N;s:5:"block";N;s:9:"sendEmail";i:0;s:12:"registerDate";N;s:13:"lastvisitDate";N;s:10:"activation";N;s:6:"params";N;s:6:"groups";a:0:{}s:5:"guest";i:1;s:13:"lastResetTime";N;s:10:"resetCount";N;s:10:"\0*\0_params";O:9:"JRegistry":1:{s:7:"\0*\0data";O:8:"stdClass":0:{}}s:14:"\0*\0_authGroups";a:1:{i:0;i:1;}s:14:"\0*\0_authLevels";a:2:{i:0;i:1;i:1;i:1;}s:15:"\0*\0_authActions";N;s:12:"\0*\0_errorMsg";N;s:10:"\0*\0_errors";a:0:{}s:3:"aid";i:0;}s:16:"com_mailto.links";a:1:{s:40:"262d9eec2df3afe8a98d99234c51c3663b26ca8b";O:8:"stdClass":2:{s:4:"link";s:102:"http://localhost/joomla/index.php?option=com_content&view=article&id=87:esp&catid=9&Itemid=498&lang=es";s:6:"expiry";i:1425552647;}}s:13:"session.token";s:32:"88e2996bafd94f82606bbeba4d82b0d6";s:10:"jckplugins";a:8:{i:0;O:8:"stdClass":2:{s:4:"type";s:7:"default";s:4:"name";s:9:"dragndrop";}i:1;O:8:"stdClass":2:{s:4:"type";s:7:"default";s:4:"name";s:10:"index.html";}i:2;O:8:"stdClass":2:{s:4:"type";s:7:"default";s:4:"name";s:4:"user";}i:3;O:8:"stdClass":2:{s:4:"type";s:10:"stylesheet";s:4:"name";s:5:"beez5";}i:4;O:8:"stdClass":2:{s:4:"type";s:10:"stylesheet";s:4:"name";s:10:"beezlayout";}i:5;O:8:"stdClass":2:{s:4:"type";s:10:"stylesheet";s:4:"name";s:12:"beezpersonal";}i:6;O:8:"stdClass":2:{s:4:"type";s:10:"stylesheet";s:4:"name";s:10:"index.html";}i:7;O:8:"stdClass":2:{s:4:"type";s:10:"stylesheet";s:4:"name";s:13:"jcktypography";}}}', 0, '', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `onr_template_styles`
--

CREATE TABLE IF NOT EXISTS `onr_template_styles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `template` varchar(50) NOT NULL DEFAULT '',
  `client_id` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `home` char(7) NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL DEFAULT '',
  `params` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_template` (`template`),
  KEY `idx_home` (`home`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=116 ;

--
-- Volcado de datos para la tabla `onr_template_styles`
--

INSERT INTO `onr_template_styles` (`id`, `template`, `client_id`, `home`, `title`, `params`) VALUES
(2, 'bluestork', 1, '1', 'Bluestork - Defecto', '{"useRoundedCorners":"1","showSiteName":"0"}'),
(3, 'atomic', 0, '0', 'Atomic - Defecto', '{}'),
(4, 'beez_20', 0, '1', 'Beez2 - Defecto', '{"wrapperSmall":53,"wrapperLarge":72,"logo":"images\\/logo-js.png","sitetitle":"Joomla! Spanish","sitedescription":"Gestor de Contenido Open Source 2.5","navposition":"left","templatecolor":"personal"}'),
(5, 'hathor', 1, '0', 'Hathor - Default', '{"showSiteName":"0","colourChoice":"","boldText":"0"}'),
(6, 'beez5', 0, '0', 'Beez5 - Default', '{"wrapperSmall":"53","wrapperLarge":"72","logo":"images\\/sampledata\\/fruitshop\\/fruits.gif","sitetitle":"Joomla!","sitedescription":"Open Source Content Management","navposition":"left","html5":"0"}'),
(114, 'beez_20', 0, '0', 'Beez2 - Sitio de parques', '{"wrapperSmall":"53","wrapperLarge":"72","logo":"","sitetitle":"Australian Parks","sitedescription":"Parks Sample Site","navposition":"center","templatecolor":"nature"}'),
(115, 'avoce', 0, '0', 'AVoce - Defecto', '{"contentstyle":"content_id04","menustyle":"menu_border","leftmodules":"on","leftwidth":"left_200","showTitle":"0"}');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `onr_updates`
--

CREATE TABLE IF NOT EXISTS `onr_updates` (
  `update_id` int(11) NOT NULL AUTO_INCREMENT,
  `update_site_id` int(11) DEFAULT '0',
  `extension_id` int(11) DEFAULT '0',
  `categoryid` int(11) DEFAULT '0',
  `name` varchar(100) DEFAULT '',
  `description` text NOT NULL,
  `element` varchar(100) DEFAULT '',
  `type` varchar(20) DEFAULT '',
  `folder` varchar(20) DEFAULT '',
  `client_id` tinyint(3) DEFAULT '0',
  `version` varchar(10) DEFAULT '',
  `data` text NOT NULL,
  `detailsurl` text NOT NULL,
  `infourl` text NOT NULL,
  PRIMARY KEY (`update_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Actualizaciones disponibles' AUTO_INCREMENT=90 ;

--
-- Volcado de datos para la tabla `onr_updates`
--

INSERT INTO `onr_updates` (`update_id`, `update_site_id`, `extension_id`, `categoryid`, `name`, `description`, `element`, `type`, `folder`, `client_id`, `version`, `data`, `detailsurl`, `infourl`) VALUES
(1, 1, 700, 0, 'Joomla', '', 'joomla', 'file', '', 0, '2.5.28', '', 'http://update.joomla.org/core/extension.xml', ''),
(2, 1, 700, 0, 'Joomla', '', 'joomla', 'file', '', 0, '2.5.28', '', 'http://update.joomla.org/core/extension.xml', ''),
(3, 3, 0, 0, 'Armenian', '', 'pkg_hy-AM', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/hy-AM_details.xml', ''),
(4, 3, 0, 0, 'Bahasa Indonesia', '', 'pkg_id-ID', 'package', '', 0, '2.5.28.1', '', 'http://update.joomla.org/language/details/id-ID_details.xml', ''),
(5, 3, 0, 0, 'Danish', '', 'pkg_da-DK', 'package', '', 0, '2.5.28.1', '', 'http://update.joomla.org/language/details/da-DK_details.xml', ''),
(6, 3, 0, 0, 'Khmer', '', 'pkg_km-KH', 'package', '', 0, '2.5.7.1', '', 'http://update.joomla.org/language/details/km-KH_details.xml', ''),
(7, 3, 0, 0, 'Swedish', '', 'pkg_sv-SE', 'package', '', 0, '2.5.28.1', '', 'http://update.joomla.org/language/details/sv-SE_details.xml', ''),
(8, 3, 0, 0, 'Hungarian', '', 'pkg_hu-HU', 'package', '', 0, '2.5.14.1', '', 'http://update.joomla.org/language/details/hu-HU_details.xml', ''),
(9, 3, 0, 0, 'Bulgarian', '', 'pkg_bg-BG', 'package', '', 0, '2.5.7.1', '', 'http://update.joomla.org/language/details/bg-BG_details.xml', ''),
(10, 3, 0, 0, 'French', '', 'pkg_fr-FR', 'package', '', 0, '2.5.28.2', '', 'http://update.joomla.org/language/details/fr-FR_details.xml', ''),
(11, 3, 0, 0, 'Italian', '', 'pkg_it-IT', 'package', '', 0, '2.5.28.1', '', 'http://update.joomla.org/language/details/it-IT_details.xml', ''),
(12, 3, 0, 0, 'Spanish', '', 'pkg_es-ES', 'package', '', 0, '2.5.28.1', '', 'http://update.joomla.org/language/details/es-ES_details.xml', ''),
(13, 3, 0, 0, 'Dutch', '', 'pkg_nl-NL', 'package', '', 0, '2.5.28.1', '', 'http://update.joomla.org/language/details/nl-NL_details.xml', ''),
(14, 3, 0, 0, 'Turkish', '', 'pkg_tr-TR', 'package', '', 0, '2.5.20.1', '', 'http://update.joomla.org/language/details/tr-TR_details.xml', ''),
(15, 3, 0, 0, 'Ukrainian', '', 'pkg_uk-UA', 'package', '', 0, '2.5.13.11', '', 'http://update.joomla.org/language/details/uk-UA_details.xml', ''),
(16, 3, 0, 0, 'Slovak', '', 'pkg_sk-SK', 'package', '', 0, '2.5.27.1', '', 'http://update.joomla.org/language/details/sk-SK_details.xml', ''),
(17, 3, 0, 0, 'Belarusian', '', 'pkg_be-BY', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/be-BY_details.xml', ''),
(18, 3, 0, 0, 'Belarusian', '', 'pkg_be-BY', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/be-BY_details.xml', ''),
(19, 3, 0, 0, 'Latvian', '', 'pkg_lv-LV', 'package', '', 0, '2.5.28.1', '', 'http://update.joomla.org/language/details/lv-LV_details.xml', ''),
(20, 3, 0, 0, 'Estonian', '', 'pkg_et-EE', 'package', '', 0, '2.5.28.1', '', 'http://update.joomla.org/language/details/et-EE_details.xml', ''),
(21, 3, 0, 0, 'Romanian', '', 'pkg_ro-RO', 'package', '', 0, '2.5.11.1', '', 'http://update.joomla.org/language/details/ro-RO_details.xml', ''),
(22, 3, 0, 0, 'Romanian', '', 'pkg_ro-RO', 'package', '', 0, '2.5.11.1', '', 'http://update.joomla.org/language/details/ro-RO_details.xml', ''),
(23, 3, 0, 0, 'Flemish', '', 'pkg_nl-BE', 'package', '', 0, '2.5.27.1', '', 'http://update.joomla.org/language/details/nl-BE_details.xml', ''),
(24, 3, 0, 0, 'Macedonian', '', 'pkg_mk-MK', 'package', '', 0, '2.5.28.1', '', 'http://update.joomla.org/language/details/mk-MK_details.xml', ''),
(25, 3, 0, 0, 'Japanese', '', 'pkg_ja-JP', 'package', '', 0, '2.5.28.1', '', 'http://update.joomla.org/language/details/ja-JP_details.xml', ''),
(26, 3, 0, 0, 'Serbian Latin', '', 'pkg_sr-YU', 'package', '', 0, '2.5.28.1', '', 'http://update.joomla.org/language/details/sr-YU_details.xml', ''),
(27, 3, 0, 0, 'Arabic Unitag', '', 'pkg_ar-AA', 'package', '', 0, '2.5.28.1', '', 'http://update.joomla.org/language/details/ar-AA_details.xml', ''),
(28, 3, 0, 0, 'German', '', 'pkg_de-DE', 'package', '', 0, '2.5.28.1', '', 'http://update.joomla.org/language/details/de-DE_details.xml', ''),
(29, 3, 0, 0, 'Norwegian Bokmal', '', 'pkg_nb-NO', 'package', '', 0, '2.5.28.1', '', 'http://update.joomla.org/language/details/nb-NO_details.xml', ''),
(30, 3, 0, 0, 'English AU', '', 'pkg_en-AU', 'package', '', 0, '2.5.22.2', '', 'http://update.joomla.org/language/details/en-AU_details.xml', ''),
(31, 3, 0, 0, 'English US', '', 'pkg_en-US', 'package', '', 0, '2.5.22.1', '', 'http://update.joomla.org/language/details/en-US_details.xml', ''),
(32, 3, 0, 0, 'Serbian Cyrillic', '', 'pkg_sr-RS', 'package', '', 0, '2.5.28.1', '', 'http://update.joomla.org/language/details/sr-RS_details.xml', ''),
(33, 3, 0, 0, 'Lithuanian', '', 'pkg_lt-LT', 'package', '', 0, '2.5.7.1', '', 'http://update.joomla.org/language/details/lt-LT_details.xml', ''),
(34, 3, 0, 0, 'Albanian', '', 'pkg_sq-AL', 'package', '', 0, '2.5.1.5', '', 'http://update.joomla.org/language/details/sq-AL_details.xml', ''),
(35, 3, 0, 0, 'Czech', '', 'pkg_cs-CZ', 'package', '', 0, '2.5.28.2', '', 'http://update.joomla.org/language/details/cs-CZ_details.xml', ''),
(36, 3, 0, 0, 'Persian', '', 'pkg_fa-IR', 'package', '', 0, '2.5.28.1', '', 'http://update.joomla.org/language/details/fa-IR_details.xml', ''),
(37, 3, 0, 0, 'Galician', '', 'pkg_gl-ES', 'package', '', 0, '2.5.7.4', '', 'http://update.joomla.org/language/details/gl-ES_details.xml', ''),
(38, 3, 0, 0, 'Polish', '', 'pkg_pl-PL', 'package', '', 0, '2.5.25.1', '', 'http://update.joomla.org/language/details/pl-PL_details.xml', ''),
(39, 3, 0, 0, 'Syriac', '', 'pkg_sy-IQ', 'package', '', 0, '2.5.28.1', '', 'http://update.joomla.org/language/details/sy-IQ_details.xml', ''),
(40, 3, 0, 0, 'Portuguese', '', 'pkg_pt-PT', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/pt-PT_details.xml', ''),
(41, 3, 0, 0, 'Russian', '', 'pkg_ru-RU', 'package', '', 0, '2.5.24.1', '', 'http://update.joomla.org/language/details/ru-RU_details.xml', ''),
(42, 3, 0, 0, 'Hebrew', '', 'pkg_he-IL', 'package', '', 0, '2.5.7.1', '', 'http://update.joomla.org/language/details/he-IL_details.xml', ''),
(44, 3, 0, 0, 'Laotian', '', 'pkg_lo-LA', 'package', '', 0, '2.5.6.1', '', 'http://update.joomla.org/language/details/lo-LA_details.xml', ''),
(45, 3, 0, 0, 'Afrikaans', '', 'pkg_af-ZA', 'package', '', 0, '2.5.16.1', '', 'http://update.joomla.org/language/details/af-ZA_details.xml', ''),
(46, 3, 0, 0, 'Chinese Simplified', '', 'pkg_zh-CN', 'package', '', 0, '2.5.20.1', '', 'http://update.joomla.org/language/details/zh-CN_details.xml', ''),
(47, 3, 0, 0, 'Greek', '', 'pkg_el-GR', 'package', '', 0, '2.5.6.1', '', 'http://update.joomla.org/language/details/el-GR_details.xml', ''),
(48, 3, 0, 0, 'Finnish', '', 'pkg_fi-FI', 'package', '', 0, '2.5.28.1', '', 'http://update.joomla.org/language/details/fi-FI_details.xml', ''),
(49, 3, 0, 0, 'Portuguese Brazil', '', 'pkg_pt-BR', 'package', '', 0, '2.5.9.1', '', 'http://update.joomla.org/language/details/pt-BR_details.xml', ''),
(50, 3, 0, 0, 'Chinese Traditional', '', 'pkg_zh-TW', 'package', '', 0, '2.5.28.1', '', 'http://update.joomla.org/language/details/zh-TW_details.xml', ''),
(51, 3, 0, 0, 'Vietnamese', '', 'pkg_vi-VN', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/vi-VN_details.xml', ''),
(52, 3, 0, 0, 'Kurdish Sorani', '', 'pkg_ckb-IQ', 'package', '', 0, '2.5.9.1', '', 'http://update.joomla.org/language/details/ckb-IQ_details.xml', ''),
(53, 3, 0, 0, 'Bengali', '', 'pkg_bn-BD', 'package', '', 0, '2.5.0.1', '', 'http://update.joomla.org/language/details/bn-BD_details.xml', ''),
(54, 3, 0, 0, 'Bosnian', '', 'pkg_bs-BA', 'package', '', 0, '2.5.24.1', '', 'http://update.joomla.org/language/details/bs-BA_details.xml', ''),
(55, 3, 0, 0, 'Croatian', '', 'pkg_hr-HR', 'package', '', 0, '2.5.13.1', '', 'http://update.joomla.org/language/details/hr-HR_details.xml', ''),
(56, 3, 0, 0, 'Azeri', '', 'pkg_az-AZ', 'package', '', 0, '2.5.7.1', '', 'http://update.joomla.org/language/details/az-AZ_details.xml', ''),
(57, 3, 0, 0, 'Norwegian Nynorsk', '', 'pkg_nn-NO', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/nn-NO_details.xml', ''),
(58, 3, 0, 0, 'Tamil India', '', 'pkg_ta-IN', 'package', '', 0, '2.5.28.1', '', 'http://update.joomla.org/language/details/ta-IN_details.xml', ''),
(59, 3, 0, 0, 'Scottish Gaelic', '', 'pkg_gd-GB', 'package', '', 0, '2.5.7.1', '', 'http://update.joomla.org/language/details/gd-GB_details.xml', ''),
(60, 3, 0, 0, 'Thai', '', 'pkg_th-TH', 'package', '', 0, '2.5.28.1', '', 'http://update.joomla.org/language/details/th-TH_details.xml', ''),
(61, 3, 0, 0, 'Basque', '', 'pkg_eu-ES', 'package', '', 0, '1.7.0.1', '', 'http://update.joomla.org/language/details/eu-ES_details.xml', ''),
(62, 3, 0, 0, 'Uyghur', '', 'pkg_ug-CN', 'package', '', 0, '2.5.7.2', '', 'http://update.joomla.org/language/details/ug-CN_details.xml', ''),
(63, 3, 0, 0, 'Korean', '', 'pkg_ko-KR', 'package', '', 0, '2.5.11.1', '', 'http://update.joomla.org/language/details/ko-KR_details.xml', ''),
(64, 3, 0, 0, 'Hindi', '', 'pkg_hi-IN', 'package', '', 0, '2.5.6.1', '', 'http://update.joomla.org/language/details/hi-IN_details.xml', ''),
(65, 3, 0, 0, 'Welsh', '', 'pkg_cy-GB', 'package', '', 0, '2.5.6.1', '', 'http://update.joomla.org/language/details/cy-GB_details.xml', ''),
(66, 3, 0, 0, 'Swahili', '', 'pkg_sw-KE', 'package', '', 0, '2.5.28.1', '', 'http://update.joomla.org/language/details/sw-KE_details.xml', ''),
(67, 3, 0, 0, 'Tamil India', '', 'pkg_ta-IN', 'package', '', 0, '2.5.28.2', '', 'http://update.joomla.org/language/details/ta-IN_details.xml', ''),
(68, 3, 0, 0, 'Tamil India', '', 'pkg_ta-IN', 'package', '', 0, '2.5.28.2', '', 'http://update.joomla.org/language/details/ta-IN_details.xml', ''),
(69, 3, 0, 0, 'Portuguese', '', 'pkg_pt-PT', 'package', '', 0, '2.5.28.1', '', 'http://update.joomla.org/language/details/pt-PT_details.xml', ''),
(70, 3, 0, 0, 'Tamil India', '', 'pkg_ta-IN', 'package', '', 0, '2.5.28.2', '', 'http://update.joomla.org/language/details/ta-IN_details.xml', ''),
(71, 3, 0, 0, 'Portuguese', '', 'pkg_pt-PT', 'package', '', 0, '2.5.28.1', '', 'http://update.joomla.org/language/details/pt-PT_details.xml', ''),
(72, 3, 0, 0, 'Portuguese', '', 'pkg_pt-PT', 'package', '', 0, '2.5.28.1', '', 'http://update.joomla.org/language/details/pt-PT_details.xml', ''),
(73, 3, 0, 0, 'Tamil India', '', 'pkg_ta-IN', 'package', '', 0, '2.5.28.2', '', 'http://update.joomla.org/language/details/ta-IN_details.xml', ''),
(74, 3, 0, 0, 'Tamil India', '', 'pkg_ta-IN', 'package', '', 0, '2.5.28.2', '', 'http://update.joomla.org/language/details/ta-IN_details.xml', ''),
(75, 3, 0, 0, 'Portuguese', '', 'pkg_pt-PT', 'package', '', 0, '2.5.28.1', '', 'http://update.joomla.org/language/details/pt-PT_details.xml', ''),
(76, 3, 0, 0, 'Tamil India', '', 'pkg_ta-IN', 'package', '', 0, '2.5.28.2', '', 'http://update.joomla.org/language/details/ta-IN_details.xml', ''),
(77, 3, 0, 0, 'Portuguese', '', 'pkg_pt-PT', 'package', '', 0, '2.5.28.1', '', 'http://update.joomla.org/language/details/pt-PT_details.xml', ''),
(78, 3, 0, 0, 'Tamil India', '', 'pkg_ta-IN', 'package', '', 0, '2.5.28.2', '', 'http://update.joomla.org/language/details/ta-IN_details.xml', ''),
(79, 4, 801, 0, 'System - Helix Framework', '', 'helix', 'plugin', 'system', 0, '2.1.8', '', 'http://www.joomshaper.com/updates/plg_system_helix.xml', ''),
(80, 5, 803, 0, 'Editor - JoomlaCK', 'Welcome to the next-generation of internet based editors. The JCK Editors performance is truly amazing, thanks to its plug-n-play state-of-the-art API engine and is much more than an Out-of-the-Box installation of the CKEditor. Weve been under the hood and Joomla-ised its logic into a seamless and extendable integration.  Users can now customise the editor from the largest growing extension base of all Joomla editors, choose what tool-bars, setup user permissions, create and edit the editors own typography style-sheet and configure the editor for real-time editing! And whats more - when you have created your bespoke configuration you can now export your setting via the all new JCK Manager component!', 'jckeditor', 'plugin', 'editors', 0, '6.5.2', '', 'http://www.joomlackeditor.com/upgrade/plg_jckeditor.xml', 'http://www.joomlackeditor.com'),
(81, 6, 805, 0, 'JoomlaCK Manager', 'JoomlaCK Editor Manager v5.2', 'com_jckman', 'component', '', 1, '5.2', '', 'http://www.joomlackeditor.com/upgrade/com_jckman.xml', 'http://www.joomlackeditor.com'),
(82, 3, 0, 0, 'Portuguese', '', 'pkg_pt-PT', 'package', '', 0, '2.5.28.1', '', 'http://update.joomla.org/language/details/pt-PT_details.xml', ''),
(83, 3, 0, 0, 'Tamil India', '', 'pkg_ta-IN', 'package', '', 0, '2.5.28.2', '', 'http://update.joomla.org/language/details/ta-IN_details.xml', ''),
(84, 3, 0, 0, 'Portuguese', '', 'pkg_pt-PT', 'package', '', 0, '2.5.28.1', '', 'http://update.joomla.org/language/details/pt-PT_details.xml', ''),
(85, 3, 0, 0, 'Tamil India', '', 'pkg_ta-IN', 'package', '', 0, '2.5.28.2', '', 'http://update.joomla.org/language/details/ta-IN_details.xml', ''),
(86, 3, 0, 0, 'Portuguese', '', 'pkg_pt-PT', 'package', '', 0, '2.5.28.1', '', 'http://update.joomla.org/language/details/pt-PT_details.xml', ''),
(87, 3, 0, 0, 'Tamil India', '', 'pkg_ta-IN', 'package', '', 0, '2.5.28.2', '', 'http://update.joomla.org/language/details/ta-IN_details.xml', ''),
(88, 3, 0, 0, 'Portuguese', '', 'pkg_pt-PT', 'package', '', 0, '2.5.28.1', '', 'http://update.joomla.org/language/details/pt-PT_details.xml', ''),
(89, 3, 0, 0, 'Tamil India', '', 'pkg_ta-IN', 'package', '', 0, '2.5.28.2', '', 'http://update.joomla.org/language/details/ta-IN_details.xml', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `onr_update_categories`
--

CREATE TABLE IF NOT EXISTS `onr_update_categories` (
  `categoryid` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) DEFAULT '',
  `description` text NOT NULL,
  `parent` int(11) DEFAULT '0',
  `updatesite` int(11) DEFAULT '0',
  PRIMARY KEY (`categoryid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Actualizar Categorías' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `onr_update_sites`
--

CREATE TABLE IF NOT EXISTS `onr_update_sites` (
  `update_site_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT '',
  `type` varchar(20) DEFAULT '',
  `location` text NOT NULL,
  `enabled` int(11) DEFAULT '0',
  `last_check_timestamp` bigint(20) DEFAULT '0',
  PRIMARY KEY (`update_site_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Actualizar Sitios' AUTO_INCREMENT=7 ;

--
-- Volcado de datos para la tabla `onr_update_sites`
--

INSERT INTO `onr_update_sites` (`update_site_id`, `name`, `type`, `location`, `enabled`, `last_check_timestamp`) VALUES
(1, 'Joomla Core', 'collection', 'http://update.joomla.org/core/list.xml', 0, 1424774932),
(2, 'Directorio de Extensiones Joomla', 'collection', 'http://update.joomla.org/jed/list.xml', 0, 1424774932),
(3, 'Accredited Joomla! Translations', 'collection', 'http://update.joomla.org/language/translationlist.xml', 0, 1424775708),
(4, 'System - Helix Framework', 'extension', 'http://www.joomshaper.com/updates/plg_system_helix.xml', 0, 1424775721),
(5, 'JoomlaCK Editor Update Site', 'extension', 'http://www.joomlackeditor.com/upgrade/plg_jckeditor.xml', 0, 1424775721),
(6, 'JoomlaCK Editor Update Site', 'extension', 'http://www.joomlackeditor.com/upgrade/com_jckman.xml', 0, 1424778637);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `onr_update_sites_extensions`
--

CREATE TABLE IF NOT EXISTS `onr_update_sites_extensions` (
  `update_site_id` int(11) NOT NULL DEFAULT '0',
  `extension_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`update_site_id`,`extension_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Enlaces de los sitios de extensiones para actualizar';

--
-- Volcado de datos para la tabla `onr_update_sites_extensions`
--

INSERT INTO `onr_update_sites_extensions` (`update_site_id`, `extension_id`) VALUES
(1, 700),
(2, 700),
(3, 600),
(3, 811),
(4, 801),
(5, 803),
(6, 805);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `onr_usergroups`
--

CREATE TABLE IF NOT EXISTS `onr_usergroups` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Clave primaria',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'ID Lista de referencia adyacente',
  `lft` int(11) NOT NULL DEFAULT '0' COMMENT 'Anidadas conjunto lft.',
  `rgt` int(11) NOT NULL DEFAULT '0' COMMENT 'Anidadas conjunto rgt.',
  `title` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_usergroup_parent_title_lookup` (`parent_id`,`title`),
  KEY `idx_usergroup_title_lookup` (`title`),
  KEY `idx_usergroup_adjacency_lookup` (`parent_id`),
  KEY `idx_usergroup_nested_set_lookup` (`lft`,`rgt`) USING BTREE
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=13 ;

--
-- Volcado de datos para la tabla `onr_usergroups`
--

INSERT INTO `onr_usergroups` (`id`, `parent_id`, `lft`, `rgt`, `title`) VALUES
(1, 0, 1, 20, 'Público'),
(2, 1, 6, 17, 'Registrado'),
(3, 2, 7, 14, 'Autor'),
(4, 3, 8, 11, 'Editor'),
(5, 4, 9, 10, 'Publicador'),
(6, 1, 2, 5, 'Gestor'),
(7, 6, 3, 4, 'Administrador'),
(8, 1, 18, 19, 'Super Usuarios'),
(10, 3, 12, 13, 'Proveedores Tienda (Ejemplo)'),
(12, 2, 15, 16, 'Grupo de Clientes (Ejemplo)');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `onr_users`
--

CREATE TABLE IF NOT EXISTS `onr_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `username` varchar(150) NOT NULL DEFAULT '',
  `email` varchar(100) NOT NULL DEFAULT '',
  `password` varchar(100) NOT NULL DEFAULT '',
  `usertype` varchar(25) NOT NULL DEFAULT '',
  `block` tinyint(4) NOT NULL DEFAULT '0',
  `sendEmail` tinyint(4) DEFAULT '0',
  `registerDate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `lastvisitDate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `activation` varchar(100) NOT NULL DEFAULT '',
  `params` text NOT NULL,
  `lastResetTime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Date of last password reset',
  `resetCount` int(11) NOT NULL DEFAULT '0' COMMENT 'Count of password resets since lastResetTime',
  PRIMARY KEY (`id`),
  KEY `usertype` (`usertype`),
  KEY `idx_name` (`name`),
  KEY `idx_block` (`block`),
  KEY `username` (`username`),
  KEY `email` (`email`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=899 ;

--
-- Volcado de datos para la tabla `onr_users`
--

INSERT INTO `onr_users` (`id`, `name`, `username`, `email`, `password`, `usertype`, `block`, `sendEmail`, `registerDate`, `lastvisitDate`, `activation`, `params`, `lastResetTime`, `resetCount`) VALUES
(894, 'Super User', 'admin', 'oscaarr.97@gmail.com', 'b2906198c6300eaad01d75e2b489b4a4:kwIW1nR9cOsIMmuFIn4J9XhS18oI8h0q', 'deprecated', 0, 1, '2015-01-28 12:18:17', '2015-03-05 10:52:01', '0', '', '0000-00-00 00:00:00', 0),
(895, 'Registrat', 'Registrat', 'registrat@joomla.es', '79e0f8583e76a060a7e5c6bb9e27f238:HqqHmit9kAPwIhxASXHHSPfxlA6Wvuty', '', 0, 0, '2015-03-03 11:02:16', '2015-03-03 11:51:40', '', '{"admin_style":"","admin_language":"","language":"","editor":"","helpsite":"","timezone":""}', '0000-00-00 00:00:00', 0),
(896, 'autor', 'autor', 'autor@joomla.es', '5d46b30a320e632d35463401052ef935:xfbuUnqpqTMw1etMJmCpuguuL5ICH5Rx', '', 0, 0, '2015-03-03 11:02:56', '2015-03-03 11:43:10', '', '{"admin_style":"","admin_language":"","language":"","editor":"","helpsite":"","timezone":""}', '0000-00-00 00:00:00', 0),
(897, 'editor', 'editor', 'editor@joomla.es', '7a987d4b0e825e19e231c1a0d7142014:lcKOBahyB5HVgkbuCjvYklCobxggUeIS', '', 0, 0, '2015-03-03 11:03:40', '0000-00-00 00:00:00', '', '{"admin_style":"","admin_language":"","language":"","editor":"","helpsite":"","timezone":""}', '0000-00-00 00:00:00', 0),
(898, 'publicador', 'publicador', 'publicador@joomla.es', '07e91277cf8b7400a9a27033fe3e0437:GNY1LbDJecn7CqskCsUy3rPc6yfwOq0i', '', 0, 0, '2015-03-03 11:04:36', '2015-03-03 11:50:31', '', '{"admin_style":"","admin_language":"","language":"","editor":"","helpsite":"","timezone":""}', '0000-00-00 00:00:00', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `onr_user_notes`
--

CREATE TABLE IF NOT EXISTS `onr_user_notes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `catid` int(10) unsigned NOT NULL DEFAULT '0',
  `subject` varchar(100) NOT NULL DEFAULT '',
  `body` text NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_user_id` int(10) unsigned NOT NULL,
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `review_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `idx_user_id` (`user_id`),
  KEY `idx_category_id` (`catid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `onr_user_profiles`
--

CREATE TABLE IF NOT EXISTS `onr_user_profiles` (
  `user_id` int(11) NOT NULL,
  `profile_key` varchar(100) NOT NULL,
  `profile_value` varchar(255) NOT NULL,
  `ordering` int(11) NOT NULL DEFAULT '0',
  UNIQUE KEY `idx_user_id_profile_key` (`user_id`,`profile_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Tabla para almacenar el perfil de usuario';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `onr_user_usergroup_map`
--

CREATE TABLE IF NOT EXISTS `onr_user_usergroup_map` (
  `user_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Clave externa a #__users.id',
  `group_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Clave externa a #__usergroups.id',
  PRIMARY KEY (`user_id`,`group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `onr_user_usergroup_map`
--

INSERT INTO `onr_user_usergroup_map` (`user_id`, `group_id`) VALUES
(894, 8),
(895, 2),
(896, 3),
(897, 4),
(898, 5);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `onr_viewlevels`
--

CREATE TABLE IF NOT EXISTS `onr_viewlevels` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Clave primaria',
  `title` varchar(100) NOT NULL DEFAULT '',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `rules` varchar(5120) NOT NULL COMMENT 'Control de acceso codificado de JSON.',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_assetgroup_title_lookup` (`title`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Volcado de datos para la tabla `onr_viewlevels`
--

INSERT INTO `onr_viewlevels` (`id`, `title`, `ordering`, `rules`) VALUES
(1, 'Publico', 0, '[1]'),
(2, 'Registrado', 1, '[6,2,8]'),
(3, 'Especial', 2, '[6,3,8]'),
(4, 'Nivel Acceso Clientes (Ejemplo)', 3, '[6,3,12]');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `onr_weblinks`
--

CREATE TABLE IF NOT EXISTS `onr_weblinks` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `catid` int(11) NOT NULL DEFAULT '0',
  `sid` int(11) NOT NULL DEFAULT '0',
  `title` varchar(250) NOT NULL DEFAULT '',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `url` varchar(250) NOT NULL DEFAULT '',
  `description` text NOT NULL,
  `date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `hits` int(11) NOT NULL DEFAULT '0',
  `state` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `archived` tinyint(1) NOT NULL DEFAULT '0',
  `approved` tinyint(1) NOT NULL DEFAULT '1',
  `access` int(11) NOT NULL DEFAULT '1',
  `params` text NOT NULL,
  `language` char(7) NOT NULL DEFAULT '',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `metadata` text NOT NULL,
  `featured` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Establecer si el link aparece.',
  `xreference` varchar(50) NOT NULL COMMENT 'Una referencia para activar vínculos a datos externos conjuntos.',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`state`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`created_by`),
  KEY `idx_featured_catid` (`featured`,`catid`),
  KEY `idx_language` (`language`),
  KEY `idx_xreference` (`xreference`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10 ;

--
-- Volcado de datos para la tabla `onr_weblinks`
--

INSERT INTO `onr_weblinks` (`id`, `catid`, `sid`, `title`, `alias`, `url`, `description`, `date`, `hits`, `state`, `checked_out`, `checked_out_time`, `ordering`, `archived`, `approved`, `access`, `params`, `language`, `created`, `created_by`, `created_by_alias`, `modified`, `modified_by`, `metakey`, `metadesc`, `metadata`, `featured`, `xreference`, `publish_up`, `publish_down`) VALUES
(1, 32, 0, 'Joomla!', 'joomla', 'http://www.joomla.org', '<p>Home of Joomla!</p>', '0000-00-00 00:00:00', 3, 1, 0, '0000-00-00 00:00:00', 1, 0, 1, 1, '{"target":"0","count_clicks":""}', 'en-GB', '2011-01-01 00:00:01', 894, '', '2011-01-01 00:00:01', 42, '', '', '{"robots":"","author":"","rights":""}', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 33, 0, 'php.net', 'php', 'http://www.php.net', '<p>The language that Joomla! is developed in</p>', '0000-00-00 00:00:00', 6, 1, 0, '0000-00-00 00:00:00', 1, 0, 1, 1, '{"target":"","count_clicks":""}', 'en-GB', '2011-01-01 00:00:01', 894, '', '2011-01-01 00:00:01', 42, '', '', '{"robots":"","author":"","rights":""}', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 33, 0, 'MySQL', 'mysql', 'http://www.mysql.com', '<p>The most commonly used database for Joomla!.</p>', '0000-00-00 00:00:00', 1, 1, 0, '0000-00-00 00:00:00', 2, 0, 1, 1, '{"target":"","width":"","height":"","count_clicks":""}', 'en-GB', '2011-01-01 00:00:01', 894, '', '2012-01-17 16:19:43', 42, '', '', '{"robots":"","rights":""}', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, 32, 0, 'OpenSourceMatters', 'opensourcematters', 'http://www.opensourcematters.org', '<p>Home of OSM</p>', '0000-00-00 00:00:00', 11, 1, 0, '0000-00-00 00:00:00', 3, 0, 1, 1, '{"target":"0","count_clicks":""}', 'en-GB', '2011-01-01 00:00:01', 894, '', '2011-01-01 00:00:01', 42, '', '', '{"robots":"","author":"","rights":""}', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(5, 32, 0, 'Joomla! - Forums', 'joomla-forums', 'http://forum.joomla.org', '<p>Joomla! Forums</p>', '0000-00-00 00:00:00', 4, 1, 0, '0000-00-00 00:00:00', 2, 0, 1, 1, '{"target":"0","count_clicks":""}', 'en-GB', '2011-01-01 00:00:01', 894, '', '2011-01-01 00:00:01', 42, '', '', '{"robots":"","author":"","rights":""}', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(6, 33, 0, 'Ohloh Tracking of Joomla!', 'ohloh-tracking-of-joomla', 'http://www.ohloh.net/projects/20', '<p>Objective reports from Ohloh about Joomla''s development activity. Joomla! has some star developers with serious kudos.</p>', '0000-00-00 00:00:00', 1, 1, 0, '0000-00-00 00:00:00', 3, 0, 1, 1, '{"target":"0","count_clicks":""}', 'en-GB', '2011-01-01 00:00:01', 894, '', '2011-01-01 00:00:01', 42, '', '', '{"robots":"","author":"","rights":""}', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(7, 31, 0, 'Baw Baw National Park', 'baw-baw-national-park', 'http://www.parkweb.vic.gov.au/1park_display.cfm?park=44', '<p>Park of the Austalian Alps National Parks system, Baw Baw  features sub alpine vegetation, beautiful views, and opportunities for hiking, skiing and other outdoor activities.</p>', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00 00:00:00', 1, 0, 1, 1, '{"target":"0","count_clicks":""}', 'en-GB', '2011-01-01 00:00:01', 894, '', '2011-01-01 00:00:01', 42, '', '', '{"robots":"","author":"","rights":""}', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(8, 31, 0, 'Kakadu', 'kakadu', 'http://www.environment.gov.au/parks/kakadu/index.html', '<p>Kakadu is known for both its cultural heritage and its natural features. It is one of a small number of places listed as World Heritage Places for both reasons. Extensive rock art is found there.</p>', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00 00:00:00', 2, 0, 1, 1, '{"target":"0","count_clicks":""}', 'en-GB', '2011-01-01 00:00:01', 894, '', '2011-01-01 00:00:01', 42, '', '', '{"robots":"","author":"","rights":""}', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(9, 31, 0, 'Pulu Keeling', 'pulu-keeling', 'http://www.environment.gov.au/parks/cocos/index.html', '<p>Located on an atoll 2000 kilometers north of Perth, Pulu Keeling is Australia''s smallest national park.</p>', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00 00:00:00', 3, 0, 1, 1, '{"target":"0","count_clicks":""}', 'en-GB', '2011-01-01 00:00:01', 894, '', '2011-01-01 00:00:01', 42, '', '', '{"robots":"","author":"","rights":""}', 0, '', '2010-07-10 23:44:03', '0000-00-00 00:00:00');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
