-- Adminer 4.2.2 MySQL dump

SET NAMES utf8;
SET time_zone = '+00:00';
SET foreign_key_checks = 0;
SET sql_mode = 'NO_AUTO_VALUE_ON_ZERO';

DROP TABLE IF EXISTS `ads`;
CREATE TABLE `ads` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(100) COLLATE utf8_bin NOT NULL,
  `content` text COLLATE utf8_bin NOT NULL,
  `address` varchar(200) COLLATE utf8_bin NOT NULL,
  `date_created` int(10) unsigned NOT NULL,
  `date_updated` int(11) unsigned NOT NULL,
  `date_expire` int(10) unsigned NOT NULL,
  `user_id` int(11) unsigned NOT NULL,
  `ad_type` int(10) unsigned NOT NULL,
  `payment` varchar(250) COLLATE utf8_bin NOT NULL,
  `active` int(11) NOT NULL,
  `image` varchar(200) COLLATE utf8_bin NOT NULL,
  `latitude` varchar(200) COLLATE utf8_bin NOT NULL,
  `longitude` varchar(200) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;


DROP TABLE IF EXISTS `ad_has_tag`;
CREATE TABLE `ad_has_tag` (
  `ad_id` int(10) unsigned NOT NULL,
  `tag_id` int(10) unsigned NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;


DROP TABLE IF EXISTS `ad_types`;
CREATE TABLE `ad_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;


DROP TABLE IF EXISTS `tags`;
CREATE TABLE `tags` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;


DROP TABLE IF EXISTS `uploads`;
CREATE TABLE `uploads` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `sortid` int(11) unsigned DEFAULT NULL,
  `category` int(11) unsigned DEFAULT NULL,
  `name` varchar(200) COLLATE utf8_bin DEFAULT NULL,
  `filename` varchar(200) COLLATE utf8_bin DEFAULT NULL,
  `ext` varchar(4) COLLATE utf8_bin DEFAULT NULL,
  `page` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `pid` int(11) unsigned DEFAULT NULL,
  `size` int(11) unsigned DEFAULT NULL,
  `online` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;


DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `firstname` varchar(100) COLLATE utf8_bin NOT NULL,
  `lastname` varchar(100) COLLATE utf8_bin NOT NULL,
  `address` varchar(50) COLLATE utf8_bin NOT NULL,
  `latitude` varchar(100) COLLATE utf8_bin NOT NULL,
  `longitude` varchar(100) COLLATE utf8_bin NOT NULL,
  `email` varchar(50) COLLATE utf8_bin NOT NULL,
  `phone` int(15) unsigned NOT NULL,
  `password` varchar(200) COLLATE utf8_bin NOT NULL,
  `premium` int(10) unsigned NOT NULL COMMENT '1 = TRUE, 0 = FALSE',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;


DROP TABLE IF EXISTS `user_has_created_ads`;
CREATE TABLE `user_has_created_ads` (
  `user_id` int(10) unsigned NOT NULL,
  `ad_id` int(10) unsigned NOT NULL,
  `date` int(10) unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;


DROP TABLE IF EXISTS `user_interested_in_ad`;
CREATE TABLE `user_interested_in_ad` (
  `ad_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `date` int(11) NOT NULL,
  `denied` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;


-- 2016-01-18 21:23:43