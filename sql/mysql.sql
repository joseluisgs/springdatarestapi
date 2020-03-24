-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 24-03-2020 a las 17:22:51
-- Versión del servidor: 10.4.6-MariaDB
-- Versión de PHP: 7.3.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `springdatarestapi`
--
DROP DATABASE IF EXISTS `springdatarestapi`;
CREATE DATABASE IF NOT EXISTS `springdatarestapi` DEFAULT CHARACTER SET utf8 COLLATE utf8_spanish_ci;
USE `springdatarestapi`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ciudad`
--

DROP TABLE IF EXISTS `ciudad`;
CREATE TABLE IF NOT EXISTS `ciudad` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `lat` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `lng` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `nombre` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `pais_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK479gu8gh6s75va0hxbne1kjlm` (`pais_id`)
) ENGINE=MyISAM AUTO_INCREMENT=41 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `ciudad`
--

INSERT INTO `ciudad` (`id`, `lat`, `lng`, `nombre`, `pais_id`) VALUES
(1, '37.392529', '-5.994072', 'Sevilla', 1),
(2, '40.416775', '-3.703790', 'Madrid', 1),
(3, '41.390205', '2.154007', 'Barcelona', 1),
(4, '39.466667', '-0.375000', 'Valencia', 1),
(6, '43.262985', '-2.935013', 'Bilbao', 1),
(7, '42.878212', '-8.544844', 'Santiago de Compostela', 1),
(8, '37.984047', '-1.128575', 'Murcia', 1),
(9, '37.178055', '-3.600833', 'Granada', 1),
(10, '43.462776', '-3.805000', 'Santander', 1),
(11, '-0.180653', '-78.467834', 'Quito', 2),
(12, '-2.203816', '-79.897453', 'Guayaquil', 2),
(13, '-2.8922671', '-79.0594206', 'Cuenca', 2),
(14, '-1.241667', '-78.619720', 'Ambato', 2),
(15, '-0.9683162', '-80.7795552', 'Manta', 2),
(16, '-3.989038', '-79.203560', 'Loja', 2),
(17, '-3.2568593', '-79.9785388', 'Machala', 2),
(18, '-1.0484448', '-80.3971017', 'Portoviejo', 2),
(19, '0.35162', '-78.1579214', 'Ibarra', 2),
(20, '-0.931556', '-78.6146048', 'Latacunga', 2),
(21, '4.624335', '-74.063644', 'Bogotá', 3),
(22, '6.2441988', '-75.651252', 'Medellín', 3),
(23, '10.4001968', '-75.543545,13', 'Cartagena de Indias', 3),
(24, '10.9838099', '-74.8530371', 'Barranquilla', 3),
(25, '3.3950619', '-76.5957045', 'Cali', 3),
(26, '7.1192047', '-73.1679976', 'Bucaramanga', 3),
(27, '7.9087586', '-72.5394401', 'Cúcuta', 3),
(28, '11.2315247', '-74.1999066', 'Santa Marta', 3),
(29, '4.8047737', '-75.7487811', 'Pereira', 3),
(30, '5.0686966', '-75.5186626', 'Manizales', 3),
(31, '19.39068', '-99.2836984', 'Ciudad de México', 4),
(32, '20.9800512', '-89.7029586', 'Mérida', 4),
(33, '20.6737777', '-103.4054535', 'Guadalajara', 4),
(34, '25.6487281', '-100.4431815', 'Monterry', 4),
(35, '32.49674', '-117.017847', 'Tijuana', 4),
(36, '31.6538179', '-106.5890202', 'Ciudad Juárez', 4),
(37, '21.1213285', '-86.9192737', 'Cancún', 4),
(38, '20.6121228', '-100.4802575', 'Santiago de Querétaro', 4),
(39, '16.8354485', '-99.932349', 'Acapulco', 4),
(40, '22.1127046', '-101.0261098', 'San Luis Potosí', 4);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `hibernate_sequence`
--

DROP TABLE IF EXISTS `hibernate_sequence`;
CREATE TABLE IF NOT EXISTS `hibernate_sequence` (
  `next_not_cached_value` bigint(21) NOT NULL,
  `minimum_value` bigint(21) NOT NULL,
  `maximum_value` bigint(21) NOT NULL,
  `start_value` bigint(21) NOT NULL COMMENT 'start value when sequences is created or value if RESTART is used',
  `increment` bigint(21) NOT NULL COMMENT 'increment value',
  `cache_size` bigint(21) UNSIGNED NOT NULL,
  `cycle_option` tinyint(1) UNSIGNED NOT NULL COMMENT '0 if no cycles are allowed, 1 if the sequence should begin a new cycle when maximum_value is passed',
  `cycle_count` bigint(21) NOT NULL COMMENT 'How many cycles have been done'
) ENGINE=InnoDB;

--
-- Volcado de datos para la tabla `hibernate_sequence`
--

INSERT INTO `hibernate_sequence` (`next_not_cached_value`, `minimum_value`, `maximum_value`, `start_value`, `increment`, `cache_size`, `cycle_option`, `cycle_count`) VALUES
(100, 1, 9223372036854775806, 100, 1, 1000, 0, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pais`
--

DROP TABLE IF EXISTS `pais`;
CREATE TABLE IF NOT EXISTS `pais` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `pais`
--

INSERT INTO `pais` (`id`, `nombre`) VALUES
(1, 'España'),
(2, 'Ecuador'),
(3, 'Colombia'),
(4, 'México');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
