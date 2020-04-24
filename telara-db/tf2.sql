-- phpMyAdmin SQL Dump
-- version 4.1.12
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 04-12-2018 a las 07:38:54
-- Versión del servidor: 5.5.36
-- Versión de PHP: 5.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `tf2`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `accounts`
--

CREATE TABLE IF NOT EXISTS `accounts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  `password` char(40) NOT NULL,
  `secret` char(16) DEFAULT NULL,
  `type` int(11) NOT NULL DEFAULT '1',
  `premdays` int(11) NOT NULL DEFAULT '0',
  `coins` int(12) NOT NULL DEFAULT '0',
  `lastday` int(10) unsigned NOT NULL DEFAULT '0',
  `email` varchar(255) NOT NULL DEFAULT '',
  `creation` int(11) NOT NULL DEFAULT '0',
  `vote` int(11) NOT NULL DEFAULT '0',
  `key` varchar(20) NOT NULL DEFAULT '0',
  `email_new` varchar(255) NOT NULL DEFAULT '',
  `email_new_time` int(11) NOT NULL DEFAULT '0',
  `rlname` varchar(255) NOT NULL DEFAULT '',
  `location` varchar(255) NOT NULL DEFAULT '',
  `page_access` int(11) NOT NULL DEFAULT '0',
  `email_code` varchar(255) NOT NULL DEFAULT '',
  `next_email` int(11) NOT NULL DEFAULT '0',
  `premium_points` int(11) NOT NULL DEFAULT '0',
  `create_date` int(11) NOT NULL DEFAULT '0',
  `create_ip` int(11) NOT NULL DEFAULT '0',
  `last_post` int(11) NOT NULL DEFAULT '0',
  `flag` varchar(80) NOT NULL DEFAULT '',
  `vip_time` int(11) NOT NULL DEFAULT '0',
  `guild_points` int(11) NOT NULL DEFAULT '0',
  `guild_points_stats` int(11) NOT NULL DEFAULT '0',
  `passed` int(11) NOT NULL DEFAULT '0',
  `block` int(11) NOT NULL DEFAULT '0',
  `refresh` int(11) NOT NULL DEFAULT '0',
  `birth_date` varchar(50) NOT NULL DEFAULT '0',
  `gender` varchar(20) NOT NULL DEFAULT '0',
  `loyalty_points` bigint(20) NOT NULL DEFAULT '0',
  `authToken` varchar(100) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  UNIQUE KEY `name_2` (`name`),
  UNIQUE KEY `name_3` (`name`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Volcado de datos para la tabla `accounts`
--

INSERT INTO `accounts` (`id`, `name`, `password`, `secret`, `type`, `premdays`, `coins`, `lastday`, `email`, `creation`, `vote`, `key`, `email_new`, `email_new_time`, `rlname`, `location`, `page_access`, `email_code`, `next_email`, `premium_points`, `create_date`, `create_ip`, `last_post`, `flag`, `vip_time`, `guild_points`, `guild_points_stats`, `passed`, `block`, `refresh`, `birth_date`, `gender`, `loyalty_points`, `authToken`) VALUES
(1, '1', '060d38973b4ba4051fa6ca22f9acd4be7d1557fe', NULL, 1, 0, 0, 0, '', 0, 0, '0', '', 0, '', '', 9999, '', 0, 0, 0, 0, 0, 'unknown', 0, 0, 0, 0, 0, 0, '', '', 0, ''),
(2, 'GOD', '21298df8a3277357ee55b01df9530b535cf08ec1', NULL, 5, 0, 100, 0, 'gamemaster@tibia.com', 1507160060, 0, '', '', 0, '', '', 3, '', 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, '', '', 0, '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `account_bans`
--

CREATE TABLE IF NOT EXISTS `account_bans` (
  `account_id` int(11) NOT NULL,
  `reason` varchar(255) NOT NULL,
  `banned_at` bigint(20) NOT NULL,
  `expires_at` bigint(20) NOT NULL,
  `banned_by` int(11) NOT NULL,
  PRIMARY KEY (`account_id`),
  KEY `banned_by` (`banned_by`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `account_ban_history`
--

CREATE TABLE IF NOT EXISTS `account_ban_history` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `account_id` int(11) NOT NULL,
  `reason` varchar(255) NOT NULL,
  `banned_at` bigint(20) NOT NULL,
  `expired_at` bigint(20) NOT NULL,
  `banned_by` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `account_id` (`account_id`),
  KEY `banned_by` (`banned_by`),
  KEY `account_id_2` (`account_id`),
  KEY `account_id_3` (`account_id`),
  KEY `account_id_4` (`account_id`),
  KEY `account_id_5` (`account_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `account_viplist`
--

CREATE TABLE IF NOT EXISTS `account_viplist` (
  `account_id` int(11) NOT NULL COMMENT 'id of account whose viplist entry it is',
  `player_id` int(11) NOT NULL COMMENT 'id of target player of viplist entry',
  `description` varchar(128) NOT NULL DEFAULT '',
  `icon` tinyint(2) unsigned NOT NULL DEFAULT '0',
  `notify` tinyint(1) NOT NULL DEFAULT '0',
  UNIQUE KEY `account_player_index` (`account_id`,`player_id`),
  KEY `account_id` (`account_id`),
  KEY `player_id` (`player_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `announcements`
--

CREATE TABLE IF NOT EXISTS `announcements` (
  `id` int(10) NOT NULL,
  `title` varchar(50) NOT NULL,
  `text` varchar(255) NOT NULL,
  `date` varchar(20) NOT NULL,
  `author` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `blessings_history`
--

CREATE TABLE IF NOT EXISTS `blessings_history` (
  `id` int(11) NOT NULL,
  `player_id` int(11) NOT NULL,
  `blessing` tinyint(4) NOT NULL,
  `loss` tinyint(1) NOT NULL,
  `timestamp` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `global_storage`
--

CREATE TABLE IF NOT EXISTS `global_storage` (
  `key` varchar(32) NOT NULL,
  `value` text NOT NULL,
  UNIQUE KEY `key` (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `guilds`
--

CREATE TABLE IF NOT EXISTS `guilds` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `ownerid` int(11) NOT NULL,
  `creationdata` int(11) NOT NULL,
  `motd` varchar(255) NOT NULL DEFAULT '',
  `description` text NOT NULL,
  `guild_logo` mediumblob,
  `create_ip` int(11) NOT NULL DEFAULT '0',
  `balance` bigint(20) unsigned NOT NULL DEFAULT '0',
  `last_execute_points` int(11) NOT NULL DEFAULT '0',
  `logo_gfx_name` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  UNIQUE KEY `ownerid` (`ownerid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Disparadores `guilds`
--
DROP TRIGGER IF EXISTS `oncreate_guilds`;
DELIMITER //
CREATE TRIGGER `oncreate_guilds` AFTER INSERT ON `guilds`
 FOR EACH ROW BEGIN
    INSERT INTO `guild_ranks` (`name`, `level`, `guild_id`) VALUES ('The Leader', 3, NEW.`id`);
    INSERT INTO `guild_ranks` (`name`, `level`, `guild_id`) VALUES ('Vice-Leader', 2, NEW.`id`);
    INSERT INTO `guild_ranks` (`name`, `level`, `guild_id`) VALUES ('Member', 1, NEW.`id`);
END
//
DELIMITER ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `guildwar_kills`
--

CREATE TABLE IF NOT EXISTS `guildwar_kills` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `killer` varchar(50) NOT NULL,
  `target` varchar(50) NOT NULL,
  `killerguild` int(11) NOT NULL DEFAULT '0',
  `targetguild` int(11) NOT NULL DEFAULT '0',
  `warid` int(11) NOT NULL DEFAULT '0',
  `time` bigint(15) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `warid` (`warid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `guild_invites`
--

CREATE TABLE IF NOT EXISTS `guild_invites` (
  `player_id` int(11) NOT NULL DEFAULT '0',
  `guild_id` int(11) NOT NULL DEFAULT '0',
  `date` int(11) NOT NULL,
  PRIMARY KEY (`player_id`,`guild_id`),
  KEY `guild_id` (`guild_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `guild_membership`
--

CREATE TABLE IF NOT EXISTS `guild_membership` (
  `player_id` int(11) NOT NULL,
  `guild_id` int(11) NOT NULL,
  `rank_id` int(11) NOT NULL,
  `nick` varchar(15) NOT NULL DEFAULT '',
  PRIMARY KEY (`player_id`),
  KEY `guild_id` (`guild_id`),
  KEY `rank_id` (`rank_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `guild_ranks`
--

CREATE TABLE IF NOT EXISTS `guild_ranks` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `guild_id` int(11) NOT NULL COMMENT 'guild',
  `name` varchar(255) NOT NULL COMMENT 'rank name',
  `level` int(11) NOT NULL COMMENT 'rank level - leader, vice, member, maybe something else',
  PRIMARY KEY (`id`),
  KEY `guild_id` (`guild_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `guild_wars`
--

CREATE TABLE IF NOT EXISTS `guild_wars` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `guild1` int(11) NOT NULL DEFAULT '0',
  `guild2` int(11) NOT NULL DEFAULT '0',
  `name1` varchar(255) NOT NULL,
  `name2` varchar(255) NOT NULL,
  `status` tinyint(2) NOT NULL DEFAULT '0',
  `started` bigint(15) NOT NULL DEFAULT '0',
  `ended` bigint(15) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `guild1` (`guild1`),
  KEY `guild2` (`guild2`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `houses`
--

CREATE TABLE IF NOT EXISTS `houses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `owner` int(11) NOT NULL,
  `paid` int(10) unsigned NOT NULL DEFAULT '0',
  `warnings` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL,
  `rent` int(11) NOT NULL DEFAULT '0',
  `town_id` int(11) NOT NULL DEFAULT '0',
  `bid` int(11) NOT NULL DEFAULT '0',
  `bid_end` int(11) NOT NULL DEFAULT '0',
  `last_bid` int(11) NOT NULL DEFAULT '0',
  `highest_bidder` int(11) NOT NULL DEFAULT '0',
  `size` int(11) NOT NULL DEFAULT '0',
  `beds` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `owner` (`owner`),
  KEY `town_id` (`town_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=113 ;

--
-- Volcado de datos para la tabla `houses`
--

INSERT INTO `houses` (`id`, `owner`, `paid`, `warnings`, `name`, `rent`, `town_id`, `bid`, `bid_end`, `last_bid`, `highest_bidder`, `size`, `beds`) VALUES
(1, 0, 0, 0, 'Rhyves Flats 14', 0, 2, 0, 0, 0, 0, 17, 1),
(2, 0, 0, 0, 'Rhyves Flats 15', 0, 2, 0, 0, 0, 0, 19, 1),
(3, 0, 0, 0, 'Rhyves Flats 16', 0, 2, 0, 0, 0, 0, 13, 1),
(4, 0, 0, 0, 'Baraganor Boulevard 1', 0, 3, 0, 0, 0, 0, 29, 1),
(5, 0, 0, 0, 'Saund Top 1', 0, 5, 0, 0, 0, 0, 16, 1),
(6, 0, 0, 0, 'Kazgal Close 1', 0, 3, 0, 0, 0, 0, 32, 1),
(7, 0, 0, 0, 'Tower Flat', 0, 2, 0, 0, 0, 0, 13, 1),
(8, 0, 0, 0, 'Castle Street 1', 0, 2, 0, 0, 0, 0, 29, 1),
(9, 0, 0, 0, 'Seaview 2', 0, 2, 0, 0, 0, 0, 42, 2),
(10, 0, 0, 0, 'Seaview 1', 0, 2, 0, 0, 0, 0, 29, 1),
(11, 0, 0, 0, 'Hill Hut 1', 0, 2, 0, 0, 0, 0, 26, 1),
(12, 0, 0, 0, 'Hill Hut 2', 0, 2, 0, 0, 0, 0, 26, 1),
(13, 0, 0, 0, 'Farm Lane 1', 0, 2, 0, 0, 0, 0, 20, 1),
(14, 0, 0, 0, 'Farm Lane 2', 0, 2, 0, 0, 0, 0, 34, 1),
(15, 0, 0, 0, 'Church Avenue 1', 0, 2, 0, 0, 0, 0, 21, 1),
(16, 0, 0, 0, 'Church Avenue 2', 0, 2, 0, 0, 0, 0, 21, 1),
(17, 0, 0, 0, 'Church Avenue 3', 0, 2, 0, 0, 0, 0, 37, 1),
(18, 0, 0, 0, 'Church Avenue 4', 0, 2, 0, 0, 0, 0, 29, 1),
(19, 0, 0, 0, 'Church Avenue 5', 0, 2, 0, 0, 0, 0, 19, 1),
(20, 0, 0, 0, 'Church Avenue 7', 0, 2, 0, 0, 0, 0, 23, 1),
(23, 0, 0, 0, 'City Walls 1', 0, 2, 0, 0, 0, 0, 29, 1),
(24, 0, 0, 0, 'City Walls 2', 0, 2, 0, 0, 0, 0, 29, 1),
(25, 0, 0, 0, 'City Walls 3', 0, 2, 0, 0, 0, 0, 39, 1),
(26, 0, 0, 0, 'City Walls 4', 0, 2, 0, 0, 0, 0, 39, 1),
(27, 0, 0, 0, 'Hilltop 1', 0, 2, 0, 0, 0, 0, 31, 1),
(28, 0, 0, 0, 'Hilltop 2', 0, 2, 0, 0, 0, 0, 36, 1),
(29, 0, 0, 0, 'Hilltop 3', 0, 2, 0, 0, 0, 0, 45, 1),
(30, 0, 0, 0, 'Hilltop Hall', 0, 2, 0, 0, 0, 0, 191, 2),
(31, 0, 0, 0, 'Rhyves Flats 1', 0, 2, 0, 0, 0, 0, 13, 1),
(32, 0, 0, 0, 'Rhyves Flats 2', 0, 2, 0, 0, 0, 0, 13, 1),
(33, 0, 0, 0, 'Rhyves Flats 3', 0, 2, 0, 0, 0, 0, 13, 1),
(34, 0, 0, 0, 'Rhyves Flats 4', 0, 2, 0, 0, 0, 0, 13, 1),
(35, 0, 0, 0, 'Rhyves Flats 5', 0, 2, 0, 0, 0, 0, 13, 1),
(36, 0, 0, 0, 'Rhyves Flats 6', 0, 2, 0, 0, 0, 0, 13, 1),
(37, 0, 0, 0, 'Rhyves Flats 7', 0, 2, 0, 0, 0, 0, 13, 1),
(38, 0, 0, 0, 'Rhyves Flats 8', 0, 2, 0, 0, 0, 0, 13, 1),
(39, 0, 0, 0, 'Rhyves Flats 9', 0, 2, 0, 0, 0, 0, 25, 1),
(40, 0, 0, 0, 'Rhyves Flats 10', 0, 2, 0, 0, 0, 0, 15, 1),
(41, 0, 0, 0, 'Rhyves Flats 11', 0, 2, 0, 0, 0, 0, 13, 1),
(42, 0, 0, 0, 'Rhyves Flats 13', 0, 2, 0, 0, 0, 0, 17, 1),
(43, 0, 0, 0, 'Rhyves Flats 12', 0, 2, 0, 0, 0, 0, 14, 1),
(44, 0, 0, 0, 'Baraganor Boulevard 2', 0, 3, 0, 0, 0, 0, 33, 1),
(45, 0, 0, 0, 'Baraganor Boulevard 3', 0, 3, 0, 0, 0, 0, 33, 1),
(46, 0, 0, 0, 'Baraganor Boulevard 4', 0, 3, 0, 0, 0, 0, 29, 1),
(47, 0, 0, 0, 'Baraganor Boulevard 5', 0, 3, 0, 0, 0, 0, 29, 1),
(48, 0, 0, 0, 'Baraganor Boulevard 6', 0, 3, 0, 0, 0, 0, 29, 1),
(49, 0, 0, 0, 'Baraganor Boulevard 7', 0, 3, 0, 0, 0, 0, 34, 1),
(50, 0, 0, 0, 'Baraganor Boulevard 8', 0, 3, 0, 0, 0, 0, 34, 1),
(51, 0, 0, 0, 'Kazgal Close 2', 0, 3, 0, 0, 0, 0, 34, 1),
(52, 0, 0, 0, 'Kazgal Close 3', 0, 3, 0, 0, 0, 0, 33, 1),
(53, 0, 0, 0, 'Kazgal Close 4', 0, 3, 0, 0, 0, 0, 34, 1),
(54, 0, 0, 0, 'Kazgal Close 5', 0, 3, 0, 0, 0, 0, 34, 1),
(55, 0, 0, 0, 'Kazgal Close6', 0, 3, 0, 0, 0, 0, 34, 1),
(56, 0, 0, 0, 'Kazgal Close 7', 0, 3, 0, 0, 0, 0, 34, 1),
(57, 0, 0, 0, 'Kazgal Close 8', 0, 3, 0, 0, 0, 0, 34, 1),
(58, 0, 0, 0, 'Hammersmith Hall', 0, 3, 0, 0, 0, 0, 203, 4),
(59, 0, 0, 0, 'Varnack''s Cavern', 0, 3, 0, 0, 0, 0, 224, 4),
(60, 0, 0, 0, 'Saund Street 1', 0, 5, 0, 0, 0, 0, 13, 1),
(61, 0, 0, 0, 'Saund Street 2', 0, 5, 0, 0, 0, 0, 17, 1),
(62, 0, 0, 0, 'Saund Street 3', 0, 5, 0, 0, 0, 0, 13, 1),
(63, 0, 0, 0, 'Saund Street 4', 0, 0, 0, 0, 0, 0, 17, 1),
(64, 0, 0, 0, 'Saund Street 5', 0, 5, 0, 0, 0, 0, 13, 2),
(65, 0, 0, 0, 'Saund Top 2', 0, 5, 0, 0, 0, 0, 17, 1),
(66, 0, 0, 0, 'Saund Top 3', 0, 5, 0, 0, 0, 0, 16, 2),
(67, 0, 0, 0, 'Dock Street 1', 0, 4, 0, 0, 0, 0, 21, 1),
(68, 0, 0, 0, 'Dock Street 2', 0, 4, 0, 0, 0, 0, 23, 1),
(69, 0, 0, 0, 'Dock Street 3', 0, 4, 0, 0, 0, 0, 45, 1),
(70, 0, 0, 0, 'Nomad Hill 1', 0, 4, 0, 0, 0, 0, 18, 1),
(71, 0, 0, 0, 'Nomad Hill 2', 0, 4, 0, 0, 0, 0, 20, 1),
(72, 0, 0, 0, 'Nomad Hill 3', 0, 4, 0, 0, 0, 0, 28, 2),
(73, 0, 0, 0, 'Great Hall 1', 0, 4, 0, 0, 0, 0, 26, 1),
(74, 0, 0, 0, 'Great Hall 2', 0, 4, 0, 0, 0, 0, 30, 2),
(75, 0, 0, 0, 'Tarat Road 1', 0, 4, 0, 0, 0, 0, 26, 1),
(76, 0, 0, 0, 'Temple Terrace 1', 0, 4, 0, 0, 0, 0, 36, 1),
(77, 0, 0, 0, 'Temple Terrace 2', 0, 4, 0, 0, 0, 0, 33, 1),
(78, 0, 0, 0, 'Temple Terrace 3', 0, 4, 0, 0, 0, 0, 33, 1),
(79, 0, 0, 0, 'Tarat Road 2', 0, 4, 0, 0, 0, 0, 26, 1),
(80, 0, 0, 0, 'Tarat Road 3', 0, 4, 0, 0, 0, 0, 35, 1),
(81, 0, 0, 0, 'Tarat Road 4', 0, 4, 0, 0, 0, 0, 23, 1),
(82, 0, 0, 0, 'Tarat Road 6', 0, 4, 0, 0, 0, 0, 50, 2),
(83, 0, 0, 0, 'Tarat Road 7', 0, 4, 0, 0, 0, 0, 16, 1),
(84, 0, 0, 0, 'Tarat Road 8', 0, 4, 0, 0, 0, 0, 29, 1),
(85, 0, 0, 0, 'Tarat Road 9', 0, 4, 0, 0, 0, 0, 25, 2),
(86, 0, 0, 0, 'Smith Lane 1', 0, 4, 0, 0, 0, 0, 26, 1),
(87, 0, 0, 0, 'Smith Lane 2', 0, 4, 0, 0, 0, 0, 31, 1),
(88, 0, 0, 0, 'Smith Lane 3', 0, 0, 0, 0, 0, 0, 37, 2),
(89, 0, 0, 0, 'Smith Lane 4', 0, 4, 0, 0, 0, 0, 29, 1),
(90, 0, 0, 0, 'Smith Lane 5', 0, 4, 0, 0, 0, 0, 21, 1),
(91, 0, 0, 0, 'Smith Lane 6', 0, 0, 0, 0, 0, 0, 30, 2),
(92, 0, 0, 0, 'Smith Lane 7', 0, 4, 0, 0, 0, 0, 30, 1),
(93, 0, 0, 0, 'Smith Lane Shop', 0, 4, 0, 0, 0, 0, 37, 1),
(94, 0, 0, 0, 'Snowcapped Street 1', 0, 4, 0, 0, 0, 0, 26, 1),
(95, 0, 0, 0, 'Snowcapped Street 2', 0, 4, 0, 0, 0, 0, 21, 1),
(96, 0, 0, 0, 'Snowcapped Street 3', 0, 4, 0, 0, 0, 0, 21, 1),
(97, 0, 0, 0, 'Wall Flat 1', 0, 4, 0, 0, 0, 0, 17, 1),
(98, 0, 0, 0, 'Wall Flat 2', 0, 4, 0, 0, 0, 0, 17, 1),
(99, 0, 0, 0, 'Wall Flat 3', 0, 4, 0, 0, 0, 0, 32, 1),
(100, 0, 0, 0, 'Wall Flat 4', 0, 4, 0, 0, 0, 0, 13, 1),
(101, 0, 0, 0, 'Farm Lane 3', 0, 2, 0, 0, 0, 0, 29, 2),
(102, 0, 0, 0, 'Farm Lane 4', 0, 2, 0, 0, 0, 0, 35, 1),
(103, 0, 0, 0, 'The Square 1', 0, 2, 0, 0, 0, 0, 25, 1),
(104, 0, 0, 0, 'The Square 2 (Shop)', 0, 2, 0, 0, 0, 0, 37, 2),
(105, 0, 0, 0, 'Central Hall', 0, 2, 0, 0, 0, 0, 209, 8),
(106, 0, 0, 0, 'The Square 3', 0, 2, 0, 0, 0, 0, 21, 1),
(107, 0, 0, 0, 'The Square 4 (Shop)', 0, 2, 0, 0, 0, 0, 42, 1),
(108, 0, 0, 0, 'Church Avenue 6', 0, 2, 0, 0, 0, 0, 24, 1),
(109, 0, 0, 0, 'Castle Street 2', 0, 2, 0, 0, 0, 0, 26, 1),
(110, 0, 0, 0, 'Castle Street 3', 0, 2, 0, 0, 0, 0, 28, 1),
(111, 0, 0, 0, 'Armory Flat 1', 0, 2, 0, 0, 0, 0, 26, 2),
(112, 0, 0, 0, 'Armory Flat 2', 0, 2, 0, 0, 0, 0, 24, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `house_lists`
--

CREATE TABLE IF NOT EXISTS `house_lists` (
  `house_id` int(11) NOT NULL,
  `listid` int(11) NOT NULL,
  `list` text NOT NULL,
  KEY `house_id` (`house_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ip_bans`
--

CREATE TABLE IF NOT EXISTS `ip_bans` (
  `ip` int(10) unsigned NOT NULL,
  `reason` varchar(255) NOT NULL,
  `banned_at` bigint(20) NOT NULL,
  `expires_at` bigint(20) NOT NULL,
  `banned_by` int(11) NOT NULL,
  PRIMARY KEY (`ip`),
  KEY `banned_by` (`banned_by`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `live_casts`
--

CREATE TABLE IF NOT EXISTS `live_casts` (
  `player_id` int(11) NOT NULL,
  `cast_name` varchar(255) NOT NULL,
  `password` tinyint(1) NOT NULL DEFAULT '0',
  `description` varchar(255) DEFAULT NULL,
  `spectators` smallint(5) DEFAULT '0',
  UNIQUE KEY `player_id_2` (`player_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `market_history`
--

CREATE TABLE IF NOT EXISTS `market_history` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `player_id` int(11) NOT NULL,
  `sale` tinyint(1) NOT NULL DEFAULT '0',
  `itemtype` int(10) unsigned NOT NULL,
  `amount` smallint(5) unsigned NOT NULL,
  `price` int(10) unsigned NOT NULL DEFAULT '0',
  `expires_at` bigint(20) unsigned NOT NULL,
  `inserted` bigint(20) unsigned NOT NULL,
  `state` tinyint(1) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `player_id` (`player_id`,`sale`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `market_offers`
--

CREATE TABLE IF NOT EXISTS `market_offers` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `player_id` int(11) NOT NULL,
  `sale` tinyint(1) NOT NULL DEFAULT '0',
  `itemtype` int(10) unsigned NOT NULL,
  `amount` smallint(5) unsigned NOT NULL,
  `created` bigint(20) unsigned NOT NULL,
  `anonymous` tinyint(1) NOT NULL DEFAULT '0',
  `price` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `sale` (`sale`,`itemtype`),
  KEY `created` (`created`),
  KEY `player_id` (`player_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `newsticker`
--

CREATE TABLE IF NOT EXISTS `newsticker` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `date` int(11) NOT NULL,
  `text` varchar(255) NOT NULL,
  `icon` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pagseguro`
--

CREATE TABLE IF NOT EXISTS `pagseguro` (
  `date` datetime NOT NULL,
  `code` varchar(50) NOT NULL,
  `reference` varchar(200) NOT NULL,
  `type` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `lastEventDate` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pagseguro_transactions`
--

CREATE TABLE IF NOT EXISTS `pagseguro_transactions` (
  `transaction_code` varchar(36) NOT NULL,
  `name` varchar(200) DEFAULT NULL,
  `payment_method` varchar(50) NOT NULL,
  `status` varchar(50) NOT NULL,
  `item_count` int(11) NOT NULL,
  `data` datetime NOT NULL,
  `payment_amount` float DEFAULT '0',
  UNIQUE KEY `transaction_code` (`transaction_code`,`status`),
  KEY `name` (`name`),
  KEY `status` (`status`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `players`
--

CREATE TABLE IF NOT EXISTS `players` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `group_id` int(11) NOT NULL DEFAULT '1',
  `account_id` int(11) NOT NULL DEFAULT '0',
  `level` int(11) NOT NULL DEFAULT '1',
  `vocation` int(11) NOT NULL DEFAULT '0',
  `health` int(11) NOT NULL DEFAULT '150',
  `healthmax` int(11) NOT NULL DEFAULT '150',
  `experience` bigint(20) NOT NULL DEFAULT '0',
  `lookbody` int(11) NOT NULL DEFAULT '0',
  `lookfeet` int(11) NOT NULL DEFAULT '0',
  `lookhead` int(11) NOT NULL DEFAULT '0',
  `looklegs` int(11) NOT NULL DEFAULT '0',
  `looktype` int(11) NOT NULL DEFAULT '136',
  `lookaddons` int(11) NOT NULL DEFAULT '0',
  `maglevel` int(11) NOT NULL DEFAULT '0',
  `mana` int(11) NOT NULL DEFAULT '0',
  `manamax` int(11) NOT NULL DEFAULT '0',
  `manaspent` int(11) unsigned NOT NULL DEFAULT '0',
  `soul` int(10) unsigned NOT NULL DEFAULT '0',
  `town_id` int(11) NOT NULL DEFAULT '0',
  `posx` int(11) NOT NULL DEFAULT '0',
  `posy` int(11) NOT NULL DEFAULT '0',
  `posz` int(11) NOT NULL DEFAULT '0',
  `conditions` blob NOT NULL,
  `cap` int(11) NOT NULL DEFAULT '0',
  `sex` int(11) NOT NULL DEFAULT '0',
  `lastlogin` bigint(20) unsigned NOT NULL DEFAULT '0',
  `lastip` int(10) unsigned NOT NULL DEFAULT '0',
  `save` tinyint(1) NOT NULL DEFAULT '1',
  `skull` tinyint(1) NOT NULL DEFAULT '0',
  `skulltime` int(11) NOT NULL DEFAULT '0',
  `lastlogout` bigint(20) unsigned NOT NULL DEFAULT '0',
  `blessings` tinyint(2) NOT NULL DEFAULT '0',
  `blessings1` tinyint(4) NOT NULL DEFAULT '0',
  `blessings2` tinyint(4) NOT NULL DEFAULT '0',
  `blessings3` tinyint(4) NOT NULL DEFAULT '0',
  `blessings4` tinyint(4) NOT NULL DEFAULT '0',
  `blessings5` tinyint(4) NOT NULL DEFAULT '0',
  `blessings6` tinyint(4) NOT NULL DEFAULT '0',
  `blessings7` tinyint(4) NOT NULL DEFAULT '0',
  `blessings8` tinyint(4) NOT NULL DEFAULT '0',
  `onlinetime` int(11) NOT NULL DEFAULT '0',
  `deletion` bigint(15) NOT NULL DEFAULT '0',
  `balance` bigint(20) unsigned NOT NULL DEFAULT '0',
  `offlinetraining_time` smallint(5) unsigned NOT NULL DEFAULT '43200',
  `offlinetraining_skill` int(11) NOT NULL DEFAULT '-1',
  `stamina` smallint(5) unsigned NOT NULL DEFAULT '2520',
  `skill_fist` int(10) unsigned NOT NULL DEFAULT '10',
  `skill_fist_tries` bigint(20) unsigned NOT NULL DEFAULT '0',
  `skill_club` int(10) unsigned NOT NULL DEFAULT '10',
  `skill_club_tries` bigint(20) unsigned NOT NULL DEFAULT '0',
  `skill_sword` int(10) unsigned NOT NULL DEFAULT '10',
  `skill_sword_tries` bigint(20) unsigned NOT NULL DEFAULT '0',
  `skill_axe` int(10) unsigned NOT NULL DEFAULT '10',
  `skill_axe_tries` bigint(20) unsigned NOT NULL DEFAULT '0',
  `skill_dist` int(10) unsigned NOT NULL DEFAULT '10',
  `skill_dist_tries` bigint(20) unsigned NOT NULL DEFAULT '0',
  `skill_shielding` int(10) unsigned NOT NULL DEFAULT '10',
  `skill_shielding_tries` bigint(20) unsigned NOT NULL DEFAULT '0',
  `skill_fishing` int(10) unsigned NOT NULL DEFAULT '10',
  `skill_fishing_tries` bigint(20) unsigned NOT NULL DEFAULT '0',
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  `description` varchar(255) NOT NULL DEFAULT '',
  `comment` text NOT NULL DEFAULT '',
  `create_ip` int(11) NOT NULL DEFAULT '0',
  `create_date` int(11) NOT NULL DEFAULT '0',
  `hide_char` int(11) NOT NULL DEFAULT '0',
  `cast` tinyint(1) NOT NULL DEFAULT '0',
  `skill_critical_hit_chance` int(10) unsigned NOT NULL DEFAULT '0',
  `skill_critical_hit_chance_tries` bigint(20) unsigned NOT NULL DEFAULT '0',
  `skill_critical_hit_damage` int(10) unsigned NOT NULL DEFAULT '0',
  `skill_critical_hit_damage_tries` bigint(20) unsigned NOT NULL DEFAULT '0',
  `skill_life_leech_chance` int(10) unsigned NOT NULL DEFAULT '0',
  `skill_life_leech_chance_tries` bigint(20) unsigned NOT NULL DEFAULT '0',
  `skill_life_leech_amount` int(10) unsigned NOT NULL DEFAULT '0',
  `skill_life_leech_amount_tries` bigint(20) unsigned NOT NULL DEFAULT '0',
  `skill_mana_leech_chance` int(10) unsigned NOT NULL DEFAULT '0',
  `skill_mana_leech_chance_tries` bigint(20) unsigned NOT NULL DEFAULT '0',
  `skill_mana_leech_amount` int(10) unsigned NOT NULL DEFAULT '0',
  `skill_mana_leech_amount_tries` bigint(20) unsigned NOT NULL DEFAULT '0',
  `skill_criticalhit_chance` bigint(20) unsigned NOT NULL DEFAULT '0',
  `skill_criticalhit_damage` bigint(20) unsigned NOT NULL DEFAULT '0',
  `skill_lifeleech_chance` bigint(20) unsigned NOT NULL DEFAULT '0',
  `skill_lifeleech_amount` bigint(20) unsigned NOT NULL DEFAULT '0',
  `skill_manaleech_chance` bigint(20) unsigned NOT NULL DEFAULT '0',
  `skill_manaleech_amount` bigint(20) unsigned NOT NULL DEFAULT '0',
  `prey_stamina_1` int(11) DEFAULT NULL,
  `prey_stamina_2` int(11) DEFAULT NULL,
  `prey_stamina_3` int(11) DEFAULT NULL,
  `prey_column` smallint(6) NOT NULL DEFAULT '1',
  `bonus_reroll` int(11) NOT NULL DEFAULT '0',
  `xpboost_stamina` smallint(5) DEFAULT NULL,
  `xpboost_value` tinyint(4) DEFAULT NULL,
  `marriage_status` bigint(20) unsigned NOT NULL DEFAULT '0',
  `hide_skills` int(11) DEFAULT NULL,
  `hide_set` int(11) DEFAULT NULL,
  `former` varchar(255) NOT NULL DEFAULT '-',
  `signature` varchar(255) NOT NULL DEFAULT '',
  `marriage_spouse` int(11) NOT NULL DEFAULT '-1',
  `loyalty_ranking` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  KEY `account_id` (`account_id`),
  KEY `vocation` (`vocation`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Volcado de datos para la tabla `players`
--

INSERT INTO `players` (`id`, `name`, `group_id`, `account_id`, `level`, `vocation`, `health`, `healthmax`, `experience`, `lookbody`, `lookfeet`, `lookhead`, `looklegs`, `looktype`, `lookaddons`, `maglevel`, `mana`, `manamax`, `manaspent`, `soul`, `town_id`, `posx`, `posy`, `posz`, `conditions`, `cap`, `sex`, `lastlogin`, `lastip`, `save`, `skull`, `skulltime`, `lastlogout`, `blessings`, `blessings1`, `blessings2`, `blessings3`, `blessings4`, `blessings5`, `blessings6`, `blessings7`, `blessings8`, `onlinetime`, `deletion`, `balance`, `offlinetraining_time`, `offlinetraining_skill`, `stamina`, `skill_fist`, `skill_fist_tries`, `skill_club`, `skill_club_tries`, `skill_sword`, `skill_sword_tries`, `skill_axe`, `skill_axe_tries`, `skill_dist`, `skill_dist_tries`, `skill_shielding`, `skill_shielding_tries`, `skill_fishing`, `skill_fishing_tries`, `deleted`, `description`, `comment`, `create_ip`, `create_date`, `hide_char`, `cast`, `skill_critical_hit_chance`, `skill_critical_hit_chance_tries`, `skill_critical_hit_damage`, `skill_critical_hit_damage_tries`, `skill_life_leech_chance`, `skill_life_leech_chance_tries`, `skill_life_leech_amount`, `skill_life_leech_amount_tries`, `skill_mana_leech_chance`, `skill_mana_leech_chance_tries`, `skill_mana_leech_amount`, `skill_mana_leech_amount_tries`, `skill_criticalhit_chance`, `skill_criticalhit_damage`, `skill_lifeleech_chance`, `skill_lifeleech_amount`, `skill_manaleech_chance`, `skill_manaleech_amount`, `prey_stamina_1`, `prey_stamina_2`, `prey_stamina_3`, `prey_column`, `bonus_reroll`, `xpboost_stamina`, `xpboost_value`, `marriage_status`, `hide_skills`, `hide_set`, `former`, `signature`, `marriage_spouse`, `loyalty_ranking`) VALUES
(1, 'Rook Sample', 1, 1, 1, 0, 150, 150, 0, 106, 95, 78, 116, 128, 0, 0, 5, 5, 0, 0, 2, 0, 0, 0, '', 400, 0, 1407021967, 1793873073, 1, 0, 0, 1407021968, 0, 0, 0, 0, 0, 0, 0, 0, 0, 203, 0, 0, 43200, -1, 2520, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, 1, 0, NULL, NULL, 0, NULL, NULL, '-', '', -1, 0),
(2, 'Sorcerer Sample', 1, 1, 8, 1, 185, 185, 4200, 106, 95, 78, 116, 128, 0, 0, 40, 40, 0, 0, 2, 0, 0, 0, '', 470, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 43200, -1, 2520, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 0, '', '', 0, 1507158878, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, 1, 0, NULL, NULL, 0, NULL, NULL, '-', '', -1, 0),
(3, 'Druid Sample', 1, 1, 8, 2, 185, 185, 4200, 106, 95, 78, 116, 128, 0, 0, 40, 40, 0, 0, 2, 0, 0, 0, '', 470, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 43200, -1, 2520, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 0, '', '', 0, 1507158900, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, 1, 0, NULL, NULL, 0, NULL, NULL, '-', '', -1, 0),
(4, 'Paladin Sample', 1, 1, 8, 3, 185, 185, 4200, 106, 95, 78, 116, 128, 0, 0, 40, 40, 0, 0, 2, 0, 0, 0, '', 470, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 43200, -1, 2520, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 0, '', '', 0, 1507158919, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, 1, 0, NULL, NULL, 0, NULL, NULL, '-', '', -1, 0),
(5, 'Knight Sample', 1, 1, 8, 4, 185, 185, 4200, 106, 95, 78, 116, 128, 0, 0, 40, 40, 0, 0, 2, 0, 0, 0, '', 470, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 43200, -1, 2520, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 0, '', '', 0, 1507158938, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, 1, 0, NULL, NULL, 0, NULL, NULL, '-', '', -1, 0),
(6, 'Community Manager', 5, 2, 22, 0, 255, 255, 150000, 94, 79, 79, 107, 128, 3, 0, 110, 110, 0, 0, 2, 198, 375, 7, '', 610, 1, 1543367236, 16777343, 1, 0, 0, 1543369311, 127, 1, 1, 1, 1, 1, 1, 1, 1, 1538541037, 0, 4000, 43200, -1, 2520, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 0, '', '', 0, 1507160111, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, NULL, NULL, '-', '', -1, 0),
(7, 'Mulass', 1, 1, 8, 1, 185, 185, 4200, 106, 95, 78, 116, 128, 0, 0, 40, 40, 0, 0, 1, 0, 0, 0, '', 470, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 43200, -1, 2520, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 0, '', '', 2130706433, 1540269069, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, 1, 0, NULL, NULL, 0, NULL, NULL, '-', '', -1, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `players_online`
--

CREATE TABLE IF NOT EXISTS `players_online` (
  `player_id` int(11) NOT NULL,
  PRIMARY KEY (`player_id`)
) ENGINE=MEMORY DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `player_deaths`
--

CREATE TABLE IF NOT EXISTS `player_deaths` (
  `player_id` int(11) NOT NULL,
  `time` bigint(20) unsigned NOT NULL DEFAULT '0',
  `level` int(11) NOT NULL DEFAULT '1',
  `killed_by` varchar(255) NOT NULL,
  `is_player` tinyint(1) NOT NULL DEFAULT '1',
  `mostdamage_by` varchar(100) NOT NULL,
  `mostdamage_is_player` tinyint(1) NOT NULL DEFAULT '0',
  `unjustified` tinyint(1) NOT NULL DEFAULT '0',
  `mostdamage_unjustified` tinyint(1) NOT NULL DEFAULT '0',
  KEY `player_id` (`player_id`),
  KEY `killed_by` (`killed_by`),
  KEY `mostdamage_by` (`mostdamage_by`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `player_depotitems`
--

CREATE TABLE IF NOT EXISTS `player_depotitems` (
  `player_id` int(11) NOT NULL,
  `sid` int(11) NOT NULL COMMENT 'any given range eg 0-100 will be reserved for depot lockers and all > 100 will be then normal items inside depots',
  `pid` int(11) NOT NULL DEFAULT '0',
  `itemtype` smallint(6) NOT NULL,
  `count` smallint(5) NOT NULL DEFAULT '0',
  `attributes` blob NOT NULL,
  UNIQUE KEY `player_id_2` (`player_id`,`sid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `player_former_names`
--

CREATE TABLE IF NOT EXISTS `player_former_names` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `player_id` int(11) NOT NULL,
  `former_name` varchar(35) NOT NULL,
  `date` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `player_id` (`player_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `player_inboxitems`
--

CREATE TABLE IF NOT EXISTS `player_inboxitems` (
  `player_id` int(11) NOT NULL,
  `sid` int(11) NOT NULL,
  `pid` int(11) NOT NULL DEFAULT '0',
  `itemtype` smallint(6) NOT NULL,
  `count` smallint(5) NOT NULL DEFAULT '0',
  `attributes` blob NOT NULL,
  UNIQUE KEY `player_id_2` (`player_id`,`sid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `player_items`
--

CREATE TABLE IF NOT EXISTS `player_items` (
  `player_id` int(11) NOT NULL DEFAULT '0',
  `pid` int(11) NOT NULL DEFAULT '0',
  `sid` int(11) NOT NULL DEFAULT '0',
  `itemtype` mediumint(6) NOT NULL DEFAULT '0',
  `count` smallint(5) NOT NULL DEFAULT '0',
  `attributes` blob NOT NULL,
  KEY `player_id` (`player_id`),
  KEY `sid` (`sid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `player_items`
--

INSERT INTO `player_items` (`player_id`, `pid`, `sid`, `itemtype`, `count`, `attributes`) VALUES
(6, 3, 101, 1987, 1, ''),
(6, 4, 102, 2650, 1, ''),
(6, 6, 103, 2190, 1, ''),
(6, 11, 104, 26052, 1, ''),
(6, 101, 105, 2160, 5, 0x0f05),
(6, 101, 106, 2382, 1, ''),
(6, 101, 107, 2674, 1, 0x0f01),
(6, 101, 108, 2554, 1, ''),
(6, 101, 109, 2120, 1, '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `player_kills`
--

CREATE TABLE IF NOT EXISTS `player_kills` (
  `player_id` int(11) NOT NULL,
  `time` bigint(20) unsigned NOT NULL DEFAULT '0',
  `target` int(11) NOT NULL,
  `unavenged` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `player_misc`
--

CREATE TABLE IF NOT EXISTS `player_misc` (
  `player_id` int(11) NOT NULL,
  `info` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `player_misc`
--

INSERT INTO `player_misc` (`player_id`, `info`) VALUES
(6, 0x7b7d);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `player_namelocks`
--

CREATE TABLE IF NOT EXISTS `player_namelocks` (
  `player_id` int(11) NOT NULL,
  `reason` varchar(255) NOT NULL,
  `namelocked_at` bigint(20) NOT NULL,
  `namelocked_by` int(11) NOT NULL,
  PRIMARY KEY (`player_id`),
  KEY `namelocked_by` (`namelocked_by`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `player_prey`
--

CREATE TABLE IF NOT EXISTS `player_prey` (
  `player_id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `mindex` smallint(6) NOT NULL,
  `mcolumn` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `player_preytimes`
--

CREATE TABLE IF NOT EXISTS `player_preytimes` (
  `player_id` int(11) NOT NULL,
  `bonus_type1` int(11) NOT NULL,
  `bonus_value1` int(11) NOT NULL,
  `bonus_name1` varchar(50) NOT NULL,
  `bonus_type2` int(11) NOT NULL,
  `bonus_value2` int(11) NOT NULL,
  `bonus_name2` varchar(50) NOT NULL,
  `bonus_type3` int(11) NOT NULL,
  `bonus_value3` int(11) NOT NULL,
  `bonus_name3` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `player_preytimes`
--

INSERT INTO `player_preytimes` (`player_id`, `bonus_type1`, `bonus_value1`, `bonus_name1`, `bonus_type2`, `bonus_value2`, `bonus_name2`, `bonus_type3`, `bonus_value3`, `bonus_name3`) VALUES
(6, 0, 0, '', 0, 0, '', 0, 0, '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `player_rewards`
--

CREATE TABLE IF NOT EXISTS `player_rewards` (
  `player_id` int(11) NOT NULL,
  `sid` int(11) NOT NULL,
  `pid` int(11) NOT NULL DEFAULT '0',
  `itemtype` smallint(6) NOT NULL,
  `count` smallint(5) NOT NULL DEFAULT '0',
  `attributes` blob NOT NULL,
  UNIQUE KEY `player_id_2` (`player_id`,`sid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `player_spells`
--

CREATE TABLE IF NOT EXISTS `player_spells` (
  `player_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  KEY `player_id` (`player_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `player_storage`
--

CREATE TABLE IF NOT EXISTS `player_storage` (
  `player_id` int(11) NOT NULL DEFAULT '0',
  `key` int(10) unsigned NOT NULL DEFAULT '0',
  `value` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`player_id`,`key`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `player_storage`
--

INSERT INTO `player_storage` (`player_id`, `key`, `value`) VALUES
(6, 14018, 1),
(6, 14118, 0),
(6, 15000, 100),
(6, 15007, 150),
(6, 32150, 0),
(6, 50722, 0),
(6, 65000, 2),
(6, 65001, 2),
(6, 65100, 100),
(6, 65101, 150),
(6, 99963, 1),
(6, 10002011, 100);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sellchar`
--

CREATE TABLE IF NOT EXISTS `sellchar` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(40) NOT NULL,
  `vocation` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `status` varchar(40) NOT NULL,
  `oldid` varchar(40) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Volcado de datos para la tabla `sellchar`
--

INSERT INTO `sellchar` (`id`, `name`, `vocation`, `price`, `status`, `oldid`) VALUES
(1, 'Mulass', 1, 20, '1', '2');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `server_config`
--

CREATE TABLE IF NOT EXISTS `server_config` (
  `config` varchar(50) NOT NULL,
  `value` varchar(256) NOT NULL DEFAULT '',
  PRIMARY KEY (`config`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `server_config`
--

INSERT INTO `server_config` (`config`, `value`) VALUES
('db_version', '24'),
('double', 'desactived'),
('motd_hash', 'd40f8dcfa99c13f947571211f86d3e1edd1b329c'),
('motd_num', '2'),
('players_record', '1');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `store_history`
--

CREATE TABLE IF NOT EXISTS `store_history` (
  `account_id` int(11) NOT NULL,
  `mode` smallint(2) NOT NULL DEFAULT '0',
  `description` varchar(3500) NOT NULL,
  `coin_amount` int(12) NOT NULL,
  `time` bigint(20) unsigned NOT NULL,
  `timestamp` int(11) NOT NULL DEFAULT '0',
  `id` int(11) NOT NULL,
  `coins` int(11) NOT NULL DEFAULT '0',
  KEY `account_id` (`account_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tile_store`
--

CREATE TABLE IF NOT EXISTS `tile_store` (
  `house_id` int(11) NOT NULL,
  `data` longblob NOT NULL,
  KEY `house_id` (`house_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tile_store`
--

INSERT INTO `tile_store` (`house_id`, `data`) VALUES
(1, 0xa50063010601000000de0600),
(1, 0xa50064010601000000df0600),
(1, 0xa70067010601000000bc0400),
(2, 0xa4006a010601000000bc0400),
(2, 0xa1006d010601000000dc0600),
(2, 0xa2006d010601000000dd0600),
(3, 0xa10063010601000000de0600),
(3, 0xa10064010601000000df0600),
(3, 0xa30067010601000000bc0400),
(4, 0xfb00e1010c01000000f31300),
(4, 0xfd00e1010b01000000f31300),
(4, 0xff00e1010b01000000da0600),
(4, 0xff00e2010b01000000db0600),
(5, 0xdf002f020501000000de0600),
(5, 0xdf0030020501000000df0600),
(5, 0xe40030020501000000b90400),
(6, 0xe400e1010b01000000da0600),
(6, 0xe800e1010c01000000f31300),
(7, 0x87005f010401000000da0600),
(7, 0x840060010401000000691800),
(7, 0x870060010401000000db0600),
(8, 0x70005c010701000000da0600),
(8, 0x70005d010701000000db0600),
(8, 0x74005d010701000000691800),
(9, 0x76005f010601000000e00600),
(9, 0x77005f010601000000e10600),
(9, 0x7200630106010000006c1800),
(9, 0x740061010601000000691800),
(9, 0x760062010601000000e00600),
(9, 0x770062010601000000e10600),
(10, 0x70005c010501000000e00600),
(10, 0x71005c010501000000e10600),
(10, 0x740061010501000000691800),
(11, 0x82006b010601000000691800),
(11, 0x870069010601000000da0600),
(11, 0x87006a010601000000db0600),
(12, 0x8600680105010000006c1800),
(12, 0x83006d010501000000e00600),
(12, 0x84006d010501000000e10600),
(13, 0x6e0077010701000000dc0600),
(13, 0x6f0077010701000000dd0600),
(13, 0x710079010701000000bd0400),
(13, 0x74007b010701000000ba0400),
(14, 0x6e0088010601000000bd0400),
(14, 0x6d008c010601000000dc0600),
(14, 0x6e008c010601000000dd0600),
(14, 0x730087010701000000ba0400),
(15, 0x940077010701000000b90400),
(15, 0x980075010701000000de0600),
(15, 0x980076010701000000df0600),
(16, 0x94007e010701000000b90400),
(16, 0x98007e010701000000de0600),
(16, 0x98007f010701000000df0600),
(17, 0x950089010701000000de0600),
(17, 0x95008a010701000000df0600),
(17, 0x97008f010701000000bc0400),
(18, 0x970095010701000000bc0400),
(18, 0x940098010701000000dc0600),
(18, 0x950098010701000000dd0600),
(19, 0x9c008c010701000000de0600),
(19, 0x9c008d010701000000df0600),
(19, 0x9f008f010701000000bc0400),
(20, 0x9f0099010701000000de0600),
(20, 0x9f009a010701000000df0600),
(20, 0xa20095010701000000bc0400),
(23, 0x6c009d010701000000da0600),
(23, 0x6c009e010701000000db0600),
(23, 0x72009e010701000000691800),
(24, 0x6c009d010601000000da0600),
(24, 0x6c009e010601000000db0600),
(24, 0x72009e010601000000691800),
(25, 0xbd0065010701000000da0600),
(25, 0xbd0066010701000000db0600),
(25, 0xc100690107010000006c1800),
(26, 0xbd0065010601000000da0600),
(26, 0xbd0066010601000000db0600),
(26, 0xc100690106010000006c1800),
(27, 0x9f0096010601000000dc0600),
(27, 0xa00096010601000000dd0600),
(27, 0xa50099010601000000b90400),
(28, 0xb40088010601000000da0600),
(28, 0xb40089010601000000db0600),
(28, 0xb1008f0106010000006c1800),
(29, 0xb3009c010601000000691800),
(29, 0xb4009d010501000000e00600),
(29, 0xb5009d010501000000e10600),
(30, 0xbc0098010401000000691800),
(30, 0xbc009c010401000000691800),
(30, 0xbe009e0105010000006c1800),
(30, 0xbc00a1010501000000dc0600),
(30, 0xbd00a1010501000000dd0600),
(30, 0xbf00a1010501000000dc0600),
(30, 0xc000960105010000006c1800),
(30, 0xc100960105010000006c1800),
(30, 0xc3009b010401000000691800),
(30, 0xc000a1010501000000dd0600),
(31, 0xa1006d010701000000dc0600),
(31, 0xa2006d010701000000dd0600),
(31, 0xa5006c010701000000b90400),
(32, 0xa10067010701000000dc0600),
(32, 0xa20067010701000000dd0600),
(32, 0xa50068010701000000b90400),
(33, 0xa10063010701000000dc0600),
(33, 0xa20063010701000000dd0600),
(33, 0xa50065010701000000b90400),
(34, 0xa90067010701000000de0600),
(34, 0xa90068010701000000df0600),
(34, 0xab006a010701000000bc0400),
(35, 0xb3006b010701000000dc0600),
(35, 0xb4006b010701000000dd0600),
(35, 0xb0006c010701000000b90400),
(36, 0xb30067010701000000dc0600),
(36, 0xb40067010701000000dd0600),
(36, 0xb00068010701000000b90400),
(37, 0xb30063010701000000dc0600),
(37, 0xb40063010701000000dd0600),
(37, 0xb00064010701000000b90400),
(38, 0xa90063010701000000dc0600),
(38, 0xaa0063010701000000dd0600),
(38, 0xad0065010701000000b90400),
(39, 0xb40063010601000000de0600),
(39, 0xb00065010601000000b90400),
(39, 0xb40064010601000000df0600),
(39, 0xfe00b5010c010000001a0700),
(40, 0xb40067010601000000de0600),
(40, 0xb00068010601000000b90400),
(40, 0xb40068010601000000df0600),
(41, 0xb4006b010601000000de0600),
(41, 0xb0006c010601000000b90400),
(41, 0xb4006c010601000000df0600),
(42, 0xaa006a010601000000bc0400),
(42, 0xa8006d010601000000dc0600),
(42, 0xa9006d010601000000dd0600),
(43, 0xaa0063010601000000de0600),
(43, 0xaa0064010601000000df0600),
(43, 0xab0067010601000000bc0400),
(44, 0x0401da010b01000000ea1300),
(44, 0x0401d8010c01000000ea1300),
(44, 0x0401dc010b01000000e00600),
(44, 0x0501dc010b01000000e10600),
(45, 0x0a01da010b01000000ea1300),
(45, 0x0a01d8010c01000000ea1300),
(45, 0x0a01dc010b01000000e00600),
(45, 0x0b01dc010b01000000e10600),
(46, 0x0f01d5010b01000000f31300),
(46, 0x0d01d5010c01000000f31300),
(46, 0x1101d5010b01000000da0600),
(46, 0x1101d6010b01000000db0600),
(47, 0x0f01cf010b01000000f31300),
(47, 0x0d01cf010c01000000f31300),
(47, 0x1101cf010b01000000da0600),
(47, 0x1101d0010b01000000db0600),
(48, 0x0f01c9010b01000000f31300),
(48, 0x0d01c9010c01000000f31300),
(48, 0x1101c9010b01000000da0600),
(48, 0x1101ca010b01000000db0600),
(49, 0x0a01c1010b01000000e00600),
(49, 0x0a01c3010b01000000ea1300),
(49, 0x0b01c1010b01000000e10600),
(49, 0x0a01c5010c01000000ea1300),
(50, 0x0401c1010b01000000e00600),
(50, 0x0401c3010b01000000ea1300),
(50, 0x0501c1010b01000000e10600),
(50, 0x0401c5010c01000000ea1300),
(51, 0xe000da010b01000000ea1300),
(51, 0xe000d8010c01000000ea1300),
(51, 0xe000dc010b01000000e00600),
(51, 0xe100dc010b01000000e10600),
(52, 0xda00da010b01000000ea1300),
(52, 0xda00d8010c01000000ea1300),
(52, 0xda00dc010b01000000e00600),
(52, 0xdb00dc010b01000000e10600),
(53, 0xd200d5010b01000000da0600),
(53, 0xd200d6010b01000000db0600),
(53, 0xd600d5010c01000000f31300),
(54, 0xd200cf010b01000000da0600),
(54, 0xd400cf010b01000000f31300),
(54, 0xd600cf010c01000000f31300),
(54, 0xd200d0010b01000000db0600),
(55, 0xd200c9010b01000000da0600),
(55, 0xd200ca010b01000000db0600),
(55, 0xd400c9010b01000000f31300),
(55, 0xd600c9010c01000000f31300),
(56, 0xda00c1010b01000000e00600),
(56, 0xda00c3010b01000000ea1300),
(56, 0xdb00c1010b01000000e10600),
(56, 0xda00c5010c01000000ea1300),
(57, 0xe000c1010b01000000e00600),
(57, 0xe000c3010b01000000ea1300),
(57, 0xe100c1010b01000000e10600),
(57, 0xe000c5010c01000000ea1300),
(58, 0xde00b6010c01000000b90400),
(58, 0xdb00b8010b01000000bc0400),
(58, 0xd900bd010b01000000e00600),
(58, 0xda00bd010b01000000e10600),
(58, 0xdb00bd010b01000000e00600),
(58, 0xdc00bd010b01000000e10600),
(58, 0xde00bd010b01000000e00600),
(58, 0xdf00bd010b01000000e10600),
(58, 0xe500b6010c01000000b90400),
(58, 0xe500b7010c01000000b90400),
(58, 0xe000b8010b01000000bc0400),
(58, 0xe300b9010c01000000bc0400),
(58, 0xe000bd010b01000000e00600),
(58, 0xe100bd010b01000000e10600),
(59, 0xfe00bc010c01000000b90400),
(59, 0x0101b6010b01000000b90400),
(59, 0x0401b5010c01000000b90400),
(59, 0x0101b9010c01000000bc0400),
(59, 0x0401b8010b01000000bc0400),
(59, 0x0901b8010b01000000bc0400),
(59, 0x0201bd010b01000000e00600),
(59, 0x0301bd010b01000000e10600),
(59, 0x0401bd010b01000000e00600),
(59, 0x0501bd010b01000000e10600),
(59, 0x0701bd010b01000000e00600),
(59, 0x0401bc010c01000000b90400),
(59, 0x0801bd010b01000000e10600),
(59, 0x0a01bd010b01000000e00600),
(59, 0x0b01bd010b01000000e10600),
(60, 0xe50021020601000000dc0600),
(60, 0xe60021020601000000dd0600),
(60, 0xe70025020601000000bc0400),
(61, 0xe00021020601000000dc0600),
(61, 0xe10021020601000000dd0600),
(61, 0xe20025020601000000bc0400),
(62, 0xf2002a020601000000b90400),
(62, 0xf60029020601000000de0600),
(62, 0xf6002a020601000000df0600),
(63, 0xe9002f020601000000dc0600),
(63, 0xea002f020601000000dd0600),
(63, 0xed002e020601000000b90400),
(64, 0xf2002e020601000000b90400),
(64, 0xf5002d020601000000dc0600),
(64, 0xf6002d020602000000dc0600dd0600),
(65, 0xe8002e020501000000b90400),
(65, 0xec002c020501000000de0600),
(65, 0xec002d020501000000df0600),
(66, 0xdf002b020501000000dc0600),
(66, 0xdf002d020501000000dc0600),
(66, 0xe0002b020501000000dd0600),
(66, 0xe0002d020501000000dd0600),
(66, 0xe4002d020501000000b90400),
(67, 0xac01e9000601000000dc0600),
(67, 0xad01e9000601000000dd0600),
(67, 0xae01ed000601000000eb1a00),
(68, 0x9b01e6000701000000de0600),
(68, 0x9b01e7000701000000df0600),
(68, 0x9b01eb000701000000eb1a00),
(68, 0x9d01ed000701000000f41a00),
(69, 0x9c01d2000601000000dc0600),
(69, 0x9d01d2000601000000dd0600),
(69, 0x9b01d5000601000000f41a00),
(69, 0x9e01d4000701000000f41a00),
(70, 0x9401d7000601000000dc0600),
(70, 0x9501d7000601000000dd0600),
(70, 0x9501d90006010000008b1a00),
(70, 0x9601dd000601000000901b00),
(71, 0x8801e7000601000000dc0600),
(71, 0x8901e7000601000000dd0600),
(71, 0x8b01e50006010000008d1a00),
(71, 0x8f01e50006010000008e1b00),
(72, 0x8601d7000501000000dc0600),
(72, 0x8701d7000501000000dd0600),
(72, 0x8601da000501000000dc0600),
(72, 0x8701da000501000000dd0600),
(72, 0x8a01da0005010000008d1a00),
(72, 0x8d01dd000501000000901b00),
(73, 0xad01d2000601000000de0600),
(73, 0xad01d3000601000000df0600),
(73, 0xb101d3000601000000f41a00),
(73, 0xb401d1000601000000eb1a00),
(74, 0xb601cf000601000000f41a00),
(74, 0xb701d3000601000000de0600),
(74, 0xb901d1000601000000eb1a00),
(74, 0xba01d3000601000000de0600),
(74, 0xb701d4000601000000df0600),
(74, 0xba01d4000601000000df0600),
(75, 0xac01c1000701000000de0600),
(75, 0xac01c2000701000000df0600),
(75, 0xb101c3000701000000f41a00),
(76, 0xdf01be000701000000f41a00),
(76, 0xe401bb000701000000de0600),
(76, 0xe401bc000701000000df0600),
(77, 0xe301b7000701000000f41a00),
(77, 0xe601bb000701000000dc0600),
(77, 0xe701bb000701000000dd0600),
(78, 0xe701b1000601000000e00600),
(78, 0xe801b1000601000000e10600),
(78, 0xeb01b0000601000000851b00),
(79, 0xb901bb000701000000de0600),
(79, 0xb901bc000701000000df0600),
(79, 0xb801c0000701000000eb1a00),
(80, 0xbb01bb000701000000dc0600),
(80, 0xbc01bb000701000000dd0600),
(80, 0xbc01be000701000000eb1a00),
(80, 0xbe01c3000701000000eb1a00),
(81, 0xbf01bd000701000000dc0600),
(81, 0xc001bd000701000000dd0600),
(81, 0xc101bc000701000000f41a00),
(81, 0xc301bf000701000000eb1a00),
(82, 0xc401c9000701000000eb1a00),
(82, 0xc501ce000701000000eb1a00),
(82, 0xc701cf000701000000de0600),
(82, 0xc601d1000701000000dc0600),
(82, 0xc701d0000701000000df0600),
(82, 0xc701d1000701000000dd0600),
(83, 0xc701ba000701000000dc0600),
(83, 0xc801ba000701000000dd0600),
(83, 0xc701bf000701000000eb1a00),
(84, 0xce01c8000701000000f41a00),
(84, 0xd401c8000701000000de0600),
(84, 0xd401c9000701000000df0600),
(85, 0xbb01bb000601000000dc0600),
(85, 0xbc01bb000601000000dd0600),
(85, 0xbf01bb000601000000dc0600),
(85, 0xbe01bf000601000000eb1a00),
(85, 0xc001bb000601000000dd0600),
(86, 0xd501b4000701000000dc0600),
(86, 0xd601b4000701000000dd0600),
(86, 0xda01b7000701000000f41a00),
(87, 0xda01af000701000000f41a00),
(87, 0xd501b2000701000000dc0600),
(87, 0xd601b2000701000000dd0600),
(88, 0xd201a6000701000000dc0600),
(88, 0xd301a6000701000000dd0600),
(88, 0xd201ab000701000000dc0600),
(88, 0xd301ab000701000000dd0600),
(88, 0xd801a8000701000000f41a00),
(89, 0xd301a1000701000000de0600),
(89, 0xd301a2000701000000df0600),
(89, 0xda01a3000701000000f41a00),
(90, 0xd5019c000701000000de0600),
(90, 0xd5019d000701000000df0600),
(90, 0xda019e000701000000f41a00),
(91, 0xd801a4000601000000f41a00),
(91, 0xd401aa000601000000de0600),
(91, 0xd401ab000601000000df0600),
(91, 0xd601a8000601000000eb1a00),
(91, 0xd701aa000601000000de0600),
(91, 0xd701ab000601000000df0600),
(92, 0xd401a1000601000000de0600),
(92, 0xd401a2000601000000df0600),
(92, 0xd601a0000601000000eb1a00),
(92, 0xd901a0000601000000eb1a00),
(93, 0xe3019f000701000000620600),
(93, 0xe6019f000701000000f41a00),
(93, 0xe7019d000701000000dc0600),
(93, 0xe8019d000701000000dd0600),
(93, 0xe001a0000701000000f41a00),
(94, 0xab01c3000601000000f41a00),
(94, 0xb001c4000601000000de0600),
(94, 0xb001c5000601000000df0600),
(95, 0xab01ba000601000000de0600),
(95, 0xab01bb000601000000df0600),
(95, 0xa901bf000601000000eb1a00),
(96, 0xa301ba000601000000dc0600),
(96, 0xa401ba000601000000dd0600),
(96, 0xa501bf000601000000eb1a00),
(97, 0xb401b3000701000000e00600),
(97, 0xb501b3000701000000e10600),
(97, 0xb401b5000701000000791b00),
(97, 0xb601b7000701000000821b00),
(98, 0xb401b6000601000000791b00),
(98, 0xb501b7000601000000da0600),
(98, 0xb601b5000601000000821b00),
(98, 0xb501b8000601000000db0600),
(99, 0xce01b3000501000000821b00),
(99, 0xcc01b7000501000000791b00),
(99, 0xce01b9000501000000821b00),
(99, 0xd201b2000501000000da0600),
(99, 0xd201b3000501000000db0600),
(100, 0xce019b000601000000821b00),
(100, 0xd10199000601000000da0600),
(100, 0xd1019a000601000000db0600),
(101, 0x6c0089010701000000e00600),
(101, 0x6d0089010701000000e10600),
(101, 0x6c008c010701000000e00600),
(101, 0x6d008c010701000000e10600),
(101, 0x73008b010701000000ba0400),
(102, 0x720089010601000000da0600),
(102, 0x72008a010601000000db0600),
(102, 0x71008d010601000000bd0400),
(102, 0x73008f010701000000ba0400),
(103, 0x7f00950107010000006d1800),
(103, 0x810091010701000000de0600),
(103, 0x810092010701000000df0600),
(104, 0x7a008e0107010000006a1800),
(104, 0x7d008d010701000000620600),
(104, 0x81008b010701000000e00600),
(104, 0x82008b010701000000e10600),
(104, 0x80008d0107010000006a1800),
(104, 0x81008f010701000000e00600),
(104, 0x82008f010701000000e10600),
(105, 0x7d007e0107010000006d1800),
(105, 0x7d00840106010000006d1800),
(105, 0x7d00840107010000006d1800),
(105, 0x810080010501000000e00600),
(105, 0x810083010501000000e00600),
(105, 0x820080010501000000e10600),
(105, 0x820083010501000000e10600),
(105, 0x830083010501000000e00600),
(105, 0x8000820106010000006a1800),
(105, 0x8000810107010000006f1800),
(105, 0x840083010501000000e10600),
(105, 0x8000870106010000006a1800),
(105, 0x830085010601000000e00600),
(105, 0x830086010601000000e00600),
(105, 0x830087010601000000e00600),
(105, 0x8300850107010000006d1800),
(105, 0x840085010601000000e10600),
(105, 0x840086010601000000e10600),
(105, 0x840087010601000000e10600),
(105, 0x830088010601000000e00600),
(105, 0x830089010601000000e00600),
(105, 0x8000880107010000006a1800),
(105, 0x840088010601000000e10600),
(105, 0x840089010601000000e10600),
(106, 0x88007d0107010000006d1800),
(106, 0x890081010701000000e00600),
(106, 0x8a0081010701000000e10600),
(107, 0x860083010701000000de0600),
(107, 0x860084010701000000df0600),
(107, 0x8800850107010000006d1800),
(107, 0x8b00840107010000006a1800),
(107, 0x8d0085010701000000711800),
(107, 0x8e00870107010000006a1800),
(108, 0x9e0094010701000000bc0400),
(108, 0x9c0098010701000000bc0400),
(108, 0x9c009a010701000000dc0600),
(108, 0x9d009a010701000000dd0600),
(109, 0x6a0058010701000000da0600),
(109, 0x6a0059010701000000db0600),
(109, 0x6f0059010701000000691800),
(110, 0x6f00520107010000006d1800),
(110, 0x700050010701000000da0600),
(110, 0x700051010701000000db0600),
(110, 0x730055010701000000691800),
(111, 0xb5007b010601000000e00600),
(111, 0xb6007b010601000000e10600),
(111, 0xba007a0106010000006c1800),
(111, 0xb5007e010601000000e00600),
(111, 0xb6007e010601000000e10600),
(111, 0xb7007d0106010000006a1800),
(112, 0xb70073010601000000da0600),
(112, 0xb600750106010000006c1800),
(112, 0xb70074010601000000db0600),
(112, 0xb800780106010000006a1800);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `z_forum`
--

CREATE TABLE IF NOT EXISTS `z_forum` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `first_post` int(11) NOT NULL DEFAULT '0',
  `last_post` int(11) NOT NULL DEFAULT '0',
  `section` int(3) NOT NULL DEFAULT '0',
  `replies` int(20) NOT NULL DEFAULT '0',
  `views` int(20) NOT NULL DEFAULT '0',
  `author_aid` int(20) NOT NULL DEFAULT '0',
  `author_guid` int(20) NOT NULL DEFAULT '0',
  `post_text` text NOT NULL,
  `post_topic` varchar(255) NOT NULL,
  `post_smile` tinyint(1) NOT NULL DEFAULT '0',
  `post_date` int(20) NOT NULL DEFAULT '0',
  `last_edit_aid` int(20) NOT NULL DEFAULT '0',
  `edit_date` int(20) NOT NULL DEFAULT '0',
  `post_ip` varchar(15) NOT NULL DEFAULT '0.0.0.0',
  `icon_id` int(11) NOT NULL,
  `news_icon` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `section` (`section`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `z_network_box`
--

CREATE TABLE IF NOT EXISTS `z_network_box` (
  `id` int(11) NOT NULL,
  `network_name` varchar(10) NOT NULL,
  `network_link` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `z_news_tickers`
--

CREATE TABLE IF NOT EXISTS `z_news_tickers` (
  `date` int(11) NOT NULL DEFAULT '1',
  `author` int(11) NOT NULL,
  `image_id` int(3) NOT NULL DEFAULT '0',
  `text` text NOT NULL,
  `hide_ticker` tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `z_ots_comunication`
--

CREATE TABLE IF NOT EXISTS `z_ots_comunication` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `action` varchar(255) NOT NULL,
  `param1` varchar(255) NOT NULL,
  `param2` varchar(255) NOT NULL,
  `param3` varchar(255) NOT NULL,
  `param4` varchar(255) NOT NULL,
  `param5` varchar(255) NOT NULL,
  `param6` varchar(255) NOT NULL,
  `param7` varchar(255) NOT NULL,
  `delete_it` int(2) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `z_ots_guildcomunication`
--

CREATE TABLE IF NOT EXISTS `z_ots_guildcomunication` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `action` varchar(255) NOT NULL,
  `param1` varchar(255) NOT NULL,
  `param2` varchar(255) NOT NULL,
  `param3` varchar(255) NOT NULL,
  `param4` varchar(255) NOT NULL,
  `param5` varchar(255) NOT NULL,
  `param6` varchar(255) NOT NULL,
  `param7` varchar(255) NOT NULL,
  `delete_it` int(2) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=13382 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `z_polls`
--

CREATE TABLE IF NOT EXISTS `z_polls` (
  `id` int(11) NOT NULL,
  `question` varchar(255) NOT NULL,
  `end` int(11) NOT NULL,
  `start` int(11) NOT NULL,
  `answers` int(11) NOT NULL,
  `votes_all` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `z_polls_answers`
--

CREATE TABLE IF NOT EXISTS `z_polls_answers` (
  `poll_id` int(11) NOT NULL,
  `answer_id` int(11) NOT NULL,
  `answer` varchar(255) NOT NULL,
  `votes` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `z_shop_category`
--

CREATE TABLE IF NOT EXISTS `z_shop_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `desc` varchar(255) NOT NULL,
  `button` varchar(50) NOT NULL,
  `hide` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Volcado de datos para la tabla `z_shop_category`
--

INSERT INTO `z_shop_category` (`id`, `name`, `desc`, `button`, `hide`) VALUES
(1, 'Extra Services', 'Buy an extra service to transfer a character to another game world, to change your character name or sex, to change your account name, or to get a new recovery key.', '_sbutton_getextraservice.gif', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `z_shop_donates`
--

CREATE TABLE IF NOT EXISTS `z_shop_donates` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` int(11) NOT NULL,
  `reference` varchar(50) NOT NULL,
  `account_name` varchar(50) NOT NULL,
  `method` varchar(50) NOT NULL,
  `price` varchar(20) NOT NULL,
  `coins` int(11) NOT NULL,
  `status` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=266 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `z_shop_donate_confirm`
--

CREATE TABLE IF NOT EXISTS `z_shop_donate_confirm` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` int(11) NOT NULL,
  `account_name` varchar(50) NOT NULL,
  `donate_id` int(11) NOT NULL,
  `msg` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=41 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `z_shop_history_item`
--

CREATE TABLE IF NOT EXISTS `z_shop_history_item` (
  `id` int(11) NOT NULL,
  `to_name` varchar(255) NOT NULL DEFAULT '0',
  `to_account` int(11) NOT NULL DEFAULT '0',
  `from_nick` varchar(255) NOT NULL,
  `from_account` int(11) NOT NULL DEFAULT '0',
  `price` int(11) NOT NULL DEFAULT '0',
  `offer_id` varchar(255) NOT NULL DEFAULT '',
  `trans_state` varchar(255) NOT NULL,
  `trans_start` int(11) NOT NULL DEFAULT '0',
  `trans_real` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `z_shop_offer`
--

CREATE TABLE IF NOT EXISTS `z_shop_offer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `points` int(11) NOT NULL DEFAULT '0',
  `itemid1` int(11) NOT NULL DEFAULT '0',
  `count1` int(11) NOT NULL DEFAULT '0',
  `itemid2` int(11) NOT NULL DEFAULT '0',
  `count2` int(11) NOT NULL DEFAULT '0',
  `offer_type` varchar(255) DEFAULT NULL,
  `offer_description` text NOT NULL,
  `offer_name` varchar(255) NOT NULL,
  `offer_category` int(11) NOT NULL,
  `offer_new` int(11) NOT NULL,
  `pid` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8932 ;

--
-- Volcado de datos para la tabla `z_shop_offer`
--

INSERT INTO `z_shop_offer` (`id`, `points`, `itemid1`, `count1`, `itemid2`, `count2`, `offer_type`, `offer_description`, `offer_name`, `offer_category`, `offer_new`, `pid`) VALUES
(2091, 10, 2091, 1, 0, 0, 'itemvip', '[Vip 15 Days] Click Sobre a VIP.', 'Donate 15 Days', 3, 1, 0),
(2092, 20, 2091, 1, 0, 0, 'itemvip', '[Vip 30 Days] Click Sobre a VIP.', 'Donate 30 Days', 3, 1, 0),
(2093, 35, 2091, 1, 0, 0, 'itemvip', 'VIP 60 Days [Vip 60 Days] Click Sobre a VIP.', 'Donate 60 Days', 3, 1, 0),
(2160, 5, 2160, 1, 0, 0, 'item', '100 crystal coins.', '100x Crystal Coin', 2, 0, 0),
(2352, 10, 2352, 1, 0, 0, 'item', 'Donate Arrow (Atk:75, Def:50).', 'Donate Arrow', 1, 0, 0),
(2471, 5, 2471, 1, 0, 0, 'item', 'Golden Helmet.', 'Golden Helmet', 2, 0, 0),
(2493, 5, 2493, 1, 0, 0, 'item', 'Demon Helmet', 'Demon Helmet', 2, 0, 0),
(2494, 5, 2494, 1, 0, 0, 'item', 'Demon Armor.', 'Demon Armor', 2, 0, 0),
(2514, 5, 2514, 1, 0, 0, 'item', 'Mastermind Shield, It is an enchanted shield.', 'Mastermind Shield', 2, 0, 0),
(2522, 5, 2522, 1, 0, 0, 'item', 'Great Shield', 'Great Shield', 2, 1, 0),
(2640, 5, 2640, 1, 0, 0, 'item', 'Pair of Soft Boots (fast regeneration)', 'Soft Boots', 2, 0, 0),
(6300, 7, 6300, 1, 0, 0, 'item', 'xp ring that is brand-new A chave para os spaw das Morgana.', 'Xp Ring', 3, 0, 0),
(7410, 10, 7410, 1, 0, 0, 'item', 'Donate Staff 150~300, for druids and sorcerers..', 'Donate Staff', 1, 0, 0),
(8877, 5, 8877, 1, 0, 0, 'item', 'Lavos Armor', 'Lavos Armor', 2, 1, 0),
(8878, 5, 8878, 1, 0, 0, 'item', 'Crystaline Armor', 'Crystaline Armorvoltage armor', 2, 0, 0),
(8879, 5, 8879, 1, 0, 0, 'item', 'Voltage armor', 'voltage armor', 2, 0, 0),
(8881, 5, 8881, 1, 0, 0, 'item', 'fireborn giant armor', 'fireborn giant armor', 2, 1, 0),
(8882, 5, 8882, 1, 0, 0, 'item', 'earthborn titan armor', 'earthborn titan armor', 2, 1, 0),
(8883, 5, 8883, 1, 0, 0, 'item', 'windborn colossus armor', 'windborn colossus armor', 2, 0, 0),
(8884, 5, 8884, 1, 0, 0, 'item', 'oceanborn leviathan armor', 'oceanborn leviathan armor', 2, 0, 0),
(8925, 10, 8925, 1, 0, 0, 'item', 'Donate Axe (Atk:60, Def:40).', 'Donate Axe', 1, 0, 0),
(8928, 10, 8928, 1, 0, 0, 'item', 'Donate Hammer (Atk:60, Def:40).', 'Donate Hammer', 1, 0, 0),
(8931, 10, 8931, 1, 0, 0, 'item', 'Donate Sword (Atk:60, Def:40).', 'Donate Sword', 1, 0, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `z_shop_payment`
--

CREATE TABLE IF NOT EXISTS `z_shop_payment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ref` varchar(10) NOT NULL,
  `account_name` varchar(50) NOT NULL,
  `service_id` int(11) NOT NULL,
  `service_category_id` int(11) NOT NULL,
  `payment_method_id` int(11) NOT NULL,
  `price` varchar(50) NOT NULL,
  `coins` int(11) unsigned NOT NULL,
  `status` varchar(50) NOT NULL DEFAULT 'waiting',
  `date` int(11) NOT NULL,
  `gift` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=1586 ;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `account_bans`
--
ALTER TABLE `account_bans`
  ADD CONSTRAINT `account_bans_ibfk_1` FOREIGN KEY (`account_id`) REFERENCES `accounts` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `account_bans_ibfk_2` FOREIGN KEY (`banned_by`) REFERENCES `players` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `account_ban_history`
--
ALTER TABLE `account_ban_history`
  ADD CONSTRAINT `account_ban_history_ibfk_2` FOREIGN KEY (`banned_by`) REFERENCES `players` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `account_ban_history_ibfk_3` FOREIGN KEY (`account_id`) REFERENCES `accounts` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `account_ban_history_ibfk_4` FOREIGN KEY (`account_id`) REFERENCES `accounts` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `account_ban_history_ibfk_5` FOREIGN KEY (`account_id`) REFERENCES `accounts` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `account_ban_history_ibfk_6` FOREIGN KEY (`account_id`) REFERENCES `accounts` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `account_viplist`
--
ALTER TABLE `account_viplist`
  ADD CONSTRAINT `account_viplist_ibfk_1` FOREIGN KEY (`account_id`) REFERENCES `accounts` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `account_viplist_ibfk_2` FOREIGN KEY (`player_id`) REFERENCES `players` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `guilds`
--
ALTER TABLE `guilds`
  ADD CONSTRAINT `guilds_ibfk_1` FOREIGN KEY (`ownerid`) REFERENCES `players` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `guildwar_kills`
--
ALTER TABLE `guildwar_kills`
  ADD CONSTRAINT `guildwar_kills_ibfk_1` FOREIGN KEY (`warid`) REFERENCES `guild_wars` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `guild_invites`
--
ALTER TABLE `guild_invites`
  ADD CONSTRAINT `guild_invites_ibfk_1` FOREIGN KEY (`player_id`) REFERENCES `players` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `guild_invites_ibfk_2` FOREIGN KEY (`guild_id`) REFERENCES `guilds` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `guild_membership`
--
ALTER TABLE `guild_membership`
  ADD CONSTRAINT `guild_membership_ibfk_1` FOREIGN KEY (`player_id`) REFERENCES `players` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `guild_membership_ibfk_2` FOREIGN KEY (`guild_id`) REFERENCES `guilds` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `guild_membership_ibfk_3` FOREIGN KEY (`rank_id`) REFERENCES `guild_ranks` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `guild_ranks`
--
ALTER TABLE `guild_ranks`
  ADD CONSTRAINT `guild_ranks_ibfk_1` FOREIGN KEY (`guild_id`) REFERENCES `guilds` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `house_lists`
--
ALTER TABLE `house_lists`
  ADD CONSTRAINT `house_lists_ibfk_1` FOREIGN KEY (`house_id`) REFERENCES `houses` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `ip_bans`
--
ALTER TABLE `ip_bans`
  ADD CONSTRAINT `ip_bans_ibfk_1` FOREIGN KEY (`banned_by`) REFERENCES `players` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `live_casts`
--
ALTER TABLE `live_casts`
  ADD CONSTRAINT `live_casts_ibfk_1` FOREIGN KEY (`player_id`) REFERENCES `players` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `market_history`
--
ALTER TABLE `market_history`
  ADD CONSTRAINT `market_history_ibfk_1` FOREIGN KEY (`player_id`) REFERENCES `players` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `market_offers`
--
ALTER TABLE `market_offers`
  ADD CONSTRAINT `market_offers_ibfk_1` FOREIGN KEY (`player_id`) REFERENCES `players` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `players`
--
ALTER TABLE `players`
  ADD CONSTRAINT `players_ibfk_1` FOREIGN KEY (`account_id`) REFERENCES `accounts` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `player_deaths`
--
ALTER TABLE `player_deaths`
  ADD CONSTRAINT `player_deaths_ibfk_1` FOREIGN KEY (`player_id`) REFERENCES `players` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `player_depotitems`
--
ALTER TABLE `player_depotitems`
  ADD CONSTRAINT `player_depotitems_ibfk_1` FOREIGN KEY (`player_id`) REFERENCES `players` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `player_inboxitems`
--
ALTER TABLE `player_inboxitems`
  ADD CONSTRAINT `player_inboxitems_ibfk_1` FOREIGN KEY (`player_id`) REFERENCES `players` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `player_items`
--
ALTER TABLE `player_items`
  ADD CONSTRAINT `player_items_ibfk_1` FOREIGN KEY (`player_id`) REFERENCES `players` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `player_namelocks`
--
ALTER TABLE `player_namelocks`
  ADD CONSTRAINT `player_namelocks_ibfk_1` FOREIGN KEY (`player_id`) REFERENCES `players` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `player_namelocks_ibfk_2` FOREIGN KEY (`namelocked_by`) REFERENCES `players` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `player_rewards`
--
ALTER TABLE `player_rewards`
  ADD CONSTRAINT `player_rewards_ibfk_1` FOREIGN KEY (`player_id`) REFERENCES `players` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `player_spells`
--
ALTER TABLE `player_spells`
  ADD CONSTRAINT `player_spells_ibfk_1` FOREIGN KEY (`player_id`) REFERENCES `players` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `player_storage`
--
ALTER TABLE `player_storage`
  ADD CONSTRAINT `player_storage_ibfk_1` FOREIGN KEY (`player_id`) REFERENCES `players` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `store_history`
--
ALTER TABLE `store_history`
  ADD CONSTRAINT `store_history_ibfk_1` FOREIGN KEY (`account_id`) REFERENCES `accounts` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `tile_store`
--
ALTER TABLE `tile_store`
  ADD CONSTRAINT `tile_store_ibfk_1` FOREIGN KEY (`house_id`) REFERENCES `houses` (`id`) ON DELETE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
