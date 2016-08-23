-- phpMyAdmin SQL Dump
-- version 4.2.12deb2+deb8u1build0.15.04.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Aug 23, 2016 at 12:14 PM
-- Server version: 5.6.28-0ubuntu0.15.04.1
-- PHP Version: 5.6.4-4ubuntu6.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `cradle_kitchen`
--

-- --------------------------------------------------------

--
-- Table structure for table `app`
--

CREATE TABLE IF NOT EXISTS `app` (
`app_id` int(10) unsigned NOT NULL,
  `app_active` int(1) unsigned NOT NULL DEFAULT '1',
  `app_name` varchar(255) NOT NULL,
  `app_domain` varchar(255) NOT NULL,
  `app_website` varchar(255) DEFAULT NULL,
  `app_permissions` varchar(255) DEFAULT NULL,
  `app_token` varchar(255) NOT NULL,
  `app_secret` varchar(255) NOT NULL,
  `app_created` datetime NOT NULL,
  `app_updated` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `app_profile`
--

CREATE TABLE IF NOT EXISTS `app_profile` (
  `app_id` int(10) unsigned NOT NULL,
  `profile_id` int(10) unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth`
--

CREATE TABLE IF NOT EXISTS `auth` (
`auth_id` int(10) unsigned NOT NULL,
  `auth_active` int(1) unsigned NOT NULL DEFAULT '1',
  `auth_slug` varchar(255) NOT NULL,
  `auth_password` varchar(255) NOT NULL,
  `auth_permissions` varchar(255) DEFAULT NULL,
  `auth_token` varchar(255) NOT NULL,
  `auth_secret` varchar(255) NOT NULL,
  `auth_type` varchar(255) NOT NULL DEFAULT 'user',
  `auth_created` datetime NOT NULL,
  `auth_updated` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_profile`
--

CREATE TABLE IF NOT EXISTS `auth_profile` (
  `auth_id` int(10) unsigned NOT NULL,
  `profile_id` int(10) unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `file`
--

CREATE TABLE IF NOT EXISTS `file` (
`file_id` int(10) unsigned NOT NULL,
  `file_active` int(1) unsigned NOT NULL DEFAULT '1',
  `file_link` varchar(255) NOT NULL,
  `file_path` varchar(255) DEFAULT NULL,
  `file_mime` varchar(255) DEFAULT NULL,
  `file_created` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `profile`
--

CREATE TABLE IF NOT EXISTS `profile` (
`profile_id` int(10) unsigned NOT NULL,
  `profile_active` int(1) unsigned NOT NULL DEFAULT '1',
  `profile_name` varchar(255) NOT NULL,
  `profile_email` varchar(255) DEFAULT NULL,
  `profile_image` varchar(255) DEFAULT NULL,
  `profile_number` varchar(255) DEFAULT NULL,
  `profile_created` datetime NOT NULL,
  `profile_updated` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `app`
--
ALTER TABLE `app`
 ADD PRIMARY KEY (`app_id`), ADD KEY `app_active` (`app_active`);

--
-- Indexes for table `app_profile`
--
ALTER TABLE `app_profile`
 ADD PRIMARY KEY (`app_id`,`profile_id`);

--
-- Indexes for table `auth`
--
ALTER TABLE `auth`
 ADD PRIMARY KEY (`auth_id`), ADD KEY `auth_active` (`auth_active`);

--
-- Indexes for table `auth_profile`
--
ALTER TABLE `auth_profile`
 ADD PRIMARY KEY (`auth_id`,`profile_id`);

--
-- Indexes for table `file`
--
ALTER TABLE `file`
 ADD PRIMARY KEY (`file_id`), ADD KEY `file_active` (`file_active`);

--
-- Indexes for table `profile`
--
ALTER TABLE `profile`
 ADD PRIMARY KEY (`profile_id`), ADD KEY `profile_active` (`profile_active`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `app`
--
ALTER TABLE `app`
MODIFY `app_id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `auth`
--
ALTER TABLE `auth`
MODIFY `auth_id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `file`
--
ALTER TABLE `file`
MODIFY `file_id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `profile`
--
ALTER TABLE `profile`
MODIFY `profile_id` int(10) unsigned NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
