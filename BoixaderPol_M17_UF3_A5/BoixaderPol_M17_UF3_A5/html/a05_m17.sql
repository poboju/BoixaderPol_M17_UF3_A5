-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3306
-- Tiempo de generación: 28-01-2021 a las 11:54:17
-- Versión del servidor: 5.7.24
-- Versión de PHP: 7.0.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `a05_m17`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `activitat1`
--

DROP TABLE IF EXISTS `activitat1`;
CREATE TABLE IF NOT EXISTS `activitat1` (
  `id` int(10) NOT NULL,
  `username` varchar(15) NOT NULL,
  `password` varchar(15) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `activitat1`
--

INSERT INTO `activitat1` (`id`, `username`, `password`) VALUES
(1, 'polboixader', 'JVjv2020');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `entrades`
--

DROP TABLE IF EXISTS `entrades`;
CREATE TABLE IF NOT EXISTS `entrades` (
  `pseudonimo` varchar(15) NOT NULL,
  `motiu` varchar(500) NOT NULL,
  `categoria` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `entrades`
--

INSERT INTO `entrades` (`pseudonimo`, `motiu`, `categoria`) VALUES
('', '', ''),
('', '', ''),
('', '', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuaris`
--

DROP TABLE IF EXISTS `usuaris`;
CREATE TABLE IF NOT EXISTS `usuaris` (
  `id_usuari` int(10) NOT NULL AUTO_INCREMENT,
  `username` varchar(15) NOT NULL,
  `password` varchar(15) NOT NULL,
  PRIMARY KEY (`id_usuari`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `usuaris`
--

INSERT INTO `usuaris` (`id_usuari`, `username`, `password`) VALUES
(1, 'aa', 'aa'),
(2, 'pol', 'pol2001');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
