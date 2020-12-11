-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Dec 11, 2020 at 12:44 PM
-- Server version: 5.7.31
-- PHP Version: 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `el_dnevnik`
--

-- --------------------------------------------------------

--
-- Table structure for table `ocjene`
--

DROP TABLE IF EXISTS `ocjene`;
CREATE TABLE IF NOT EXISTS `ocjene` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ucenik_id` int(11) NOT NULL,
  `predmet` varchar(200) NOT NULL,
  `ocjena` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ocjene`
--

INSERT INTO `ocjene` (`id`, `ucenik_id`, `predmet`, `ocjena`) VALUES
(1, 6, 'Programiranje', 3),
(2, 6, 'Matemetika', 4),
(3, 5, 'RaÄunalstvo', 4),
(4, 5, 'Engleski', 5),
(5, 7, 'BazePodataka', 4),
(6, 7, 'Programiranje', 5),
(7, 9, 'Matemetika', 3),
(8, 9, 'Programiranje', 2),
(9, 10, 'BazePodataka', 4),
(10, 10, 'Programiranje', 4);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL,
  `nastavnik` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`, `nastavnik`) VALUES
(1, 'nastavnik', 'nastavnik@gmail.com', '$2y$10$b2IT8FIDMB6zhtBGJUIbTecILp8xJ7oZfTLCOOMHoFqKzIkI8sk1G', 1),
(9, 'ucenik', 'ucenik@gmail.com', '$2y$10$PsQrPS/NnsXzfaQS0Fiuie4TXSrGsKb9IuuwXM3rvDWEK9fELGf4i', 0),
(10, 'ucenik2', 'ucenik2@gmail.com', '$2y$10$3nwqnWntqwEgvZBtFj/rH.d37H7HaJOK1qOM.xJOrqUepzNAcE81.', 0);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
