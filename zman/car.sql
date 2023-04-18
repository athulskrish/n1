-- phpMyAdmin SQL Dump
-- version 3.2.0.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Dec 30, 2022 at 02:11 PM
-- Server version: 5.1.36
-- PHP Version: 5.3.0

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `car`
--

-- --------------------------------------------------------

--
-- Table structure for table `cars`
--

CREATE TABLE IF NOT EXISTS `cars` (
  `carid` int(10) NOT NULL AUTO_INCREMENT,
  `sellerid` int(10) NOT NULL,
  `company` varchar(80) NOT NULL,
  `model` varchar(80) NOT NULL,
  `price` int(7) NOT NULL,
  `city` varchar(80) NOT NULL,
  `fuel_type` varchar(30) NOT NULL,
  `body_type` varchar(40) NOT NULL,
  `description` varchar(150) NOT NULL,
  `seller_ph` int(10) NOT NULL,
  `Registration_no` varchar(30) NOT NULL,
  `km` int(8) NOT NULL,
  `photo` varchar(180) NOT NULL,
  `status` int(5) NOT NULL DEFAULT '0',
  PRIMARY KEY (`carid`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `cars`
--

INSERT INTO `cars` (`carid`, `sellerid`, `company`, `model`, `price`, `city`, `fuel_type`, `body_type`, `description`, `seller_ph`, `Registration_no`, `km`, `photo`, `status`) VALUES
(1, 0, 'BMW', 'SERIES 3', 200000, 'Punalur', 'petrol', 'muv', 'DD', 2147483647, 'EE22', 11222, '', 0),
(2, 0, 'maruthy', '2016', 500000, 'kollam', 'petrol', 'suv', 'good maintained', 2147483647, 'kl 02 al 1212', 45000, '', 0),
(3, 0, 'benz', 'c class', 2600000, 'tvm', 'diesel', 'sudan', 'well maintained', 2147483647, 'kl 02 al 1010', 25000, '', 0),
(4, 0, 'audi', '2018', 5000000, 'malappuram', 'diesel', 'suv', 'well maintained', 2147483647, 'kl 02 al 2020', 25000, '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE IF NOT EXISTS `contact` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `email` varchar(60) NOT NULL,
  `subject` varchar(100) NOT NULL,
  `message` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`id`, `name`, `email`, `subject`, `message`) VALUES
(1, 'Athul', 'athul@gmail.com', 'jijijo', 'kk'),
(2, 'neraj', 'neraj@gmail.com', ' nil', 'fd gftg hfg gtyu'),
(3, 'anu', 'anu@gmail.com', 'anu', 'hai bro'),
(4, 'dheera', 'dheeera@gmail.com', 'dheera', 'how do yo do');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE IF NOT EXISTS `customer` (
  `cid` int(10) NOT NULL AUTO_INCREMENT,
  `loginid` int(10) NOT NULL,
  `name` varchar(80) NOT NULL,
  `email` varchar(25) NOT NULL,
  `address` varchar(300) NOT NULL,
  `phno` int(12) NOT NULL,
  PRIMARY KEY (`cid`),
  UNIQUE KEY `loginid` (`loginid`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`cid`, `loginid`, `name`, `email`, `address`, `phno`) VALUES
(1, 1, 'loja', 'loja@gmail.com', 'loja', 1234567890),
(2, 2, 'neraj', 'neraj@gmail.com', 'neraj bhavan', 2147483647),
(3, 3, 'Athul', 'athul@gmail.com', 'home', 2147483647),
(4, 4, 'Anzil', 'anzil@gmail.com', 'home', 2147483647),
(5, 6, 'Neraj Lal', 'nerajnerajlal@gmail.com', 'lal bhavan Mukkoodu p.o Mulavana', 2147483647),
(6, 7, 'anandhu', 'anandhu@gmail.com', 'anandhu bhavan kundara p.o Mulavana', 2147483647);

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE IF NOT EXISTS `login` (
  `lid` int(10) NOT NULL AUTO_INCREMENT,
  `email` varchar(30) NOT NULL,
  `password` varchar(80) NOT NULL,
  `status` enum('0','1','2') NOT NULL,
  `user` varchar(30) NOT NULL,
  PRIMARY KEY (`lid`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`lid`, `email`, `password`, `status`, `user`) VALUES
(1, 'loja@gmail.com', '123', '2', 'user'),
(2, 'neraj@gmail.com', 'neraj', '2', 'user'),
(3, 'athul@gmail.com', '123', '1', 'user'),
(4, 'anzil@gmail.com', '123', '1', 'user'),
(5, 'admin@gmail.com', 'Admin123@', '1', 'admin'),
(6, 'nerajnerajlal@gmail.com', 'Neraj123@', '1', 'user'),
(7, 'anandhu@gmail.com', 'anandhu', '1', 'user');

-- --------------------------------------------------------

--
-- Table structure for table `seller`
--

CREATE TABLE IF NOT EXISTS `seller` (
  `sid` int(10) NOT NULL AUTO_INCREMENT,
  `loginid` int(10) NOT NULL,
  `name` varchar(80) NOT NULL,
  `address` varchar(200) NOT NULL,
  `phno` int(10) NOT NULL,
  PRIMARY KEY (`sid`),
  UNIQUE KEY `loginid` (`loginid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `seller`
--

