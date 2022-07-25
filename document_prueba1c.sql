-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 24-07-2022 a las 20:08:43
-- Versión del servidor: 10.4.24-MariaDB
-- Versión de PHP: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `document_prueba1c`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cargos`
--

CREATE TABLE `cargos` (
  `id` int(10) NOT NULL,
  `cargo` tinytext CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `proceso_id` varchar(50) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='cargos de empleados';

--
-- Volcado de datos para la tabla `cargos`
--

INSERT INTO `cargos` (`id`, `cargo`, `proceso_id`) VALUES
(1, 'DIRECTOR ASISTENCIAL', '3'),
(2, 'DIRECTOR ADMINISTRATIVO', '4'),
(3, 'AUXILAIR ASISTENCIAL', '7'),
(4, 'GESTOR DE ADMISION', '1'),
(5, 'GESTOR DE FACTURACION', '5'),
(6, 'GESTOR AGENDAMIENTO', '1'),
(7, 'LIDER ADMINISTRATIVO', '5'),
(8, 'LIDER GESTION HUMANA', '2'),
(9, 'GESTOR DE AGENDAMIENTO', '1'),
(10, 'SERVICIOS GENERALES', '5'),
(11, 'GESTOR DE COMPRAS', '5'),
(12, 'GESTOR CONTABLE', '5'),
(13, 'LIDER DE ADMISIONES', '1'),
(14, 'LIDER ASISTENCIAL', '7'),
(15, 'TERAPEUTA', '7'),
(16, 'MEDICO ESPECIALISTA', '7'),
(17, 'GESTOR DE COMUNICACIONES', '3'),
(18, 'LIDER DE TECNOLOGIA', '3'),
(19, 'GESTOR DEL CLIENTE', '1'),
(20, 'GESTOR DE LOGISTICA', '3'),
(21, 'LIDER DE CALIDAD', '6'),
(22, 'GESTOR DE CALIDAD', '6'),
(23, 'LIDER DE AGENDAMIENTO', '1');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categoriaeventos`
--

CREATE TABLE `categoriaeventos` (
  `id` int(11) NOT NULL,
  `nombreevento` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `sigla` varchar(5) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `correoresponsable` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `created` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `categoriaeventos`
--

INSERT INTO `categoriaeventos` (`id`, `nombreevento`, `sigla`, `correoresponsable`, `created`) VALUES
(1, 'Actos Inseguros', 'AI', 'INFO@INFO.COM', '0000-00-00'),
(2, 'Condición Insegura', 'CI', '', '0000-00-00'),
(3, 'Salida No Conforme', 'SNC', 'INFO@INFO.COM', '2021-04-07'),
(4, 'Evento Adverso', 'EA', 'INFO@INFO.COM', '2021-04-07'),
(5, 'Incidente', 'INC', 'INFO@INFO.COM', '2021-04-07'),
(6, 'Accidente', 'ACC', 'INFO@INFO.COM', '2021-04-07'),
(7, 'sistema seguridad informacion', 'ES', 'INFO@INFO.COM', '2022-07-18');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `documentos`
--

CREATE TABLE `documentos` (
  `id` int(11) NOT NULL,
  `CodDocumento` varchar(14) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `Proceso` char(10) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `NomDocumento` varchar(200) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `Version` int(4) NOT NULL,
  `Recuperacion` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `proteccion` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `Almacenamiento` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `preservacion` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `Emision` date NOT NULL,
  `Actualizacion` date NOT NULL,
  `filename` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `dir` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estadisticas`
--

CREATE TABLE `estadisticas` (
  `id` int(11) NOT NULL,
  `url` varchar(255) NOT NULL,
  `navegador` varchar(255) NOT NULL,
  `usuario` varchar(255) NOT NULL,
  `fecha_hora` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `estadisticas`
--

INSERT INTO `estadisticas` (`id`, `url`, `navegador`, `usuario`, `fecha_hora`) VALUES
(1, 'http://localhost/snu/?c=clientes&a=verificar&id=21', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.5060.114 Safari/537.36', 'alexander orejuela', '2022-07-21 09:50:48'),
(2, 'http://localhost/snu/?c=clientes&a=dashboard', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.5060.114 Safari/537.36', 'alexander orejuela', '2022-07-21 09:51:17'),
(3, 'http://localhost/snu/?c=solicitudes&a=index', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.5060.114 Safari/537.36', 'alexander orejuela', '2022-07-21 09:56:46'),
(4, 'http://localhost/snu/?c=solicitudes&a=add', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.5060.114 Safari/537.36', 'alexander orejuela', '2022-07-21 09:57:06'),
(5, 'http://localhost/snu/?c=solicitudes&a=index', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.5060.114 Safari/537.36', 'alexander orejuela', '2022-07-21 09:58:03'),
(6, 'http://localhost/snu/?c=solicitudes&a=add', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.5060.114 Safari/537.36', 'alexander orejuela', '2022-07-21 09:58:26'),
(7, 'http://localhost/snu/?c=solicitudes&a=index', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.5060.114 Safari/537.36', 'alexander orejuela', '2022-07-21 09:58:49'),
(8, 'http://localhost/snu/?c=documentos&a=index', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.5060.114 Safari/537.36', 'alexander orejuela', '2022-07-21 10:00:26'),
(9, 'http://localhost/snu/?c=doc_exts&a=index', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.5060.114 Safari/537.36', 'alexander orejuela', '2022-07-21 10:01:00'),
(10, 'http://localhost/snu/?c=doc_exts&a=index', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.5060.114 Safari/537.36', 'alexander orejuela', '2022-07-21 10:01:34'),
(11, 'http://localhost/snu/?c=doc_exts&a=index', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.5060.114 Safari/537.36', 'alexander orejuela', '2022-07-21 10:02:23'),
(12, 'http://localhost/snu/?c=autoreportes&a=add', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.5060.114 Safari/537.36', 'alexander orejuela', '2022-07-21 10:02:48'),
(13, 'http://localhost/snu/?c=doc_exts&a=index', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.5060.114 Safari/537.36', 'alexander orejuela', '2022-07-21 10:03:04'),
(14, 'http://localhost/snu/?c=autoreportes&a=add', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.5060.114 Safari/537.36', 'alexander orejuela', '2022-07-21 10:10:55'),
(15, 'http://localhost/snu/?c=autoreportes&a=add', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.5060.114 Safari/537.36', 'alexander orejuela', '2022-07-21 10:30:04'),
(16, 'http://localhost/snu/?c=autoreportes&a=add', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.5060.114 Safari/537.36', 'alexander orejuela', '2022-07-21 11:55:48'),
(17, 'http://localhost/snu/?c=autoreportes&a=add', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.5060.114 Safari/537.36', 'alexander orejuela', '2022-07-21 12:05:14'),
(18, 'http://localhost/snu/?c=autoreportes&a=add', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.5060.114 Safari/537.36', 'alexander orejuela', '2022-07-21 12:06:35'),
(19, 'http://localhost/snu/?c=autoreportes&a=add', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.5060.114 Safari/537.36', 'alexander orejuela', '2022-07-21 12:09:35'),
(20, 'http://localhost/snu/?c=autoreportes&a=add', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.5060.114 Safari/537.36', 'alexander orejuela', '2022-07-21 12:16:56'),
(21, 'http://localhost/snu/?c=autoreportes&a=add', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.5060.114 Safari/537.36', 'alexander orejuela', '2022-07-21 12:25:02'),
(22, 'http://localhost/snu/?c=autoreportes&a=add', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.5060.114 Safari/537.36', 'alexander orejuela', '2022-07-21 02:30:53'),
(23, 'http://localhost/snu/?c=autoreportes&a=add', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.5060.114 Safari/537.36', 'alexander orejuela', '2022-07-21 02:55:28'),
(24, 'http://localhost/snu/?c=solicitudes&a=index', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.5060.114 Safari/537.36', 'alexander orejuela', '2022-07-21 02:55:32'),
(25, 'http://localhost/snu/?c=autoreportes&a=add', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.5060.114 Safari/537.36', 'alexander orejuela', '2022-07-21 02:55:57'),
(26, 'http://localhost/snu/?c=autoreportes&a=index', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.5060.114 Safari/537.36', 'alexander orejuela', '2022-07-21 02:56:24'),
(27, 'http://localhost/snu/?c=autoreportes&a=index', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.5060.114 Safari/537.36', 'alexander orejuela', '2022-07-21 02:58:53'),
(28, 'http://localhost/snu/?c=autoreportes&a=index', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.5060.114 Safari/537.36', 'alexander orejuela', '2022-07-21 03:01:41'),
(29, 'http://localhost/snu/?c=autoreportes&a=index', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.5060.114 Safari/537.36', 'alexander orejuela', '2022-07-21 03:13:07'),
(30, 'http://localhost/snu/?c=autoreportes&a=index', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.5060.114 Safari/537.36', 'alexander orejuela', '2022-07-21 03:16:16'),
(31, 'http://localhost/snu/?c=autoreportes&a=index', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.5060.114 Safari/537.36', 'alexander orejuela', '2022-07-21 03:19:12'),
(32, 'http://localhost/snu/?c=autoreportes&a=index', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.5060.114 Safari/537.36', 'alexander orejuela', '2022-07-21 03:21:29'),
(33, 'http://localhost/snu/?c=autoreportes&a=index', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.5060.114 Safari/537.36', 'alexander orejuela', '2022-07-21 03:35:09'),
(34, 'http://localhost/snu/?c=autoreportes&a=index', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.5060.114 Safari/537.36', 'alexander orejuela', '2022-07-21 04:08:05'),
(35, 'http://localhost/snu/?c=autoreportes&a=index', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.5060.114 Safari/537.36', 'alexander orejuela', '2022-07-21 04:35:55'),
(36, 'http://localhost/snu/?c=autoreportes&a=index', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.5060.114 Safari/537.36', 'alexander orejuela', '2022-07-21 04:36:25'),
(37, 'http://localhost/snu/?c=autoreportes&a=index', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.5060.114 Safari/537.36', 'alexander orejuela', '2022-07-21 04:37:29'),
(38, 'http://localhost/snu/?c=autoreportes&a=index', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.5060.114 Safari/537.36', 'alexander orejuela', '2022-07-21 04:38:39'),
(39, 'http://localhost/snu/?c=autoreportes&a=index', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.5060.114 Safari/537.36', 'alexander orejuela', '2022-07-21 04:39:38'),
(40, 'http://localhost/snu/?c=autoreportes&a=index', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.5060.114 Safari/537.36', 'alexander orejuela', '2022-07-21 04:41:31'),
(41, 'http://localhost/snu/?c=autoreportes&a=index', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.5060.114 Safari/537.36', 'alexander orejuela', '2022-07-21 04:42:31'),
(42, 'http://localhost/snu/?c=autoreportes&a=index', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.5060.114 Safari/537.36', 'alexander orejuela', '2022-07-21 04:43:33'),
(43, 'http://localhost/snu/?c=autoreportes&a=index', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.5060.114 Safari/537.36', 'alexander orejuela', '2022-07-21 04:44:23'),
(44, 'http://localhost/snu/?c=autoreportes&a=index', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.5060.114 Safari/537.36', 'alexander orejuela', '2022-07-21 04:45:59'),
(45, 'http://localhost/snu/?c=autoreportes&a=index', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.5060.114 Safari/537.36', 'alexander orejuela', '2022-07-21 04:51:24'),
(46, 'http://localhost/snu/?c=autoreportes&a=index', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.5060.114 Safari/537.36', 'alexander orejuela', '2022-07-21 04:54:37'),
(47, 'http://localhost/snu/?c=autoreportes&a=index', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.5060.114 Safari/537.36', 'alexander orejuela', '2022-07-21 04:56:30'),
(48, 'http://localhost/snu/?c=autoreportes&a=add', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.5060.114 Safari/537.36', 'alexander orejuela', '2022-07-21 04:58:17'),
(49, 'http://localhost/snu/?c=autoreportes&a=add', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.5060.114 Safari/537.36', 'alexander orejuela', '2022-07-21 04:58:45'),
(50, 'http://localhost/snu/?c=autoreportes&a=add', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.5060.114 Safari/537.36', 'alexander orejuela', '2022-07-21 04:59:17'),
(51, 'http://localhost/snu/?c=autoreportes&a=add', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.5060.114 Safari/537.36', 'alexander orejuela', '2022-07-21 05:00:04'),
(52, 'http://localhost/snu/?c=autoreportes&a=add', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.5060.114 Safari/537.36', 'alexander orejuela', '2022-07-21 05:00:41'),
(53, 'http://localhost/snu/?c=autoreportes&a=add', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.5060.114 Safari/537.36', 'alexander orejuela', '2022-07-21 05:02:59'),
(54, 'http://localhost/snu/?c=autoreportes&a=add', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.5060.114 Safari/537.36', 'alexander orejuela', '2022-07-21 05:03:17'),
(55, 'http://localhost/snu/?c=autoreportes&a=add', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.5060.114 Safari/537.36', 'alexander orejuela', '2022-07-21 05:04:42'),
(56, 'http://localhost/snu/?c=autoreportes&a=add', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.5060.114 Safari/537.36', 'alexander orejuela', '2022-07-21 05:05:03'),
(57, 'http://localhost/snu/?c=autoreportes&a=add', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.5060.114 Safari/537.36', 'alexander orejuela', '2022-07-21 05:07:44'),
(58, 'http://localhost/snu/?c=autoreportes&a=add', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.5060.114 Safari/537.36', 'alexander orejuela', '2022-07-21 05:10:21'),
(59, 'http://localhost/snu/?c=autoreportes&a=add', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.5060.114 Safari/537.36', 'alexander orejuela', '2022-07-21 05:10:50'),
(60, 'http://localhost/snu/?c=autoreportes&a=add', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.5060.114 Safari/537.36', 'alexander orejuela', '2022-07-21 05:12:31'),
(61, 'http://localhost/snu/?c=autoreportes&a=add', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.5060.114 Safari/537.36', 'alexander orejuela', '2022-07-21 05:19:06'),
(62, 'http://localhost/snu/?c=autoreportes&a=add', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.5060.114 Safari/537.36', 'alexander orejuela', '2022-07-21 05:20:08'),
(63, 'http://localhost/snu/?c=autoreportes&a=add', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.5060.114 Safari/537.36', 'alexander orejuela', '2022-07-21 05:21:27'),
(64, 'http://localhost/snu/?c=autoreportes&a=add', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.5060.114 Safari/537.36', 'alexander orejuela', '2022-07-21 05:22:14'),
(65, 'http://localhost/snu/?c=autoreportes&a=add', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.5060.114 Safari/537.36', 'alexander orejuela', '2022-07-21 05:23:07'),
(66, 'http://localhost/snu/?c=autoreportes&a=add', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.5060.114 Safari/537.36', 'alexander orejuela', '2022-07-21 05:36:45'),
(67, 'http://localhost/snu/?c=autoreportes&a=add', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.5060.114 Safari/537.36', 'alexander orejuela', '2022-07-21 05:39:14'),
(68, 'http://localhost/snu/?c=autoreportes&a=add', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.5060.114 Safari/537.36', 'alexander orejuela', '2022-07-21 05:49:07'),
(69, 'http://localhost/snu/?c=autoreportes&a=add', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.5060.114 Safari/537.36', 'alexander orejuela', '2022-07-21 05:55:53'),
(70, 'http://localhost/snu/?c=autoreportes&a=add', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.5060.114 Safari/537.36', 'alexander orejuela', '2022-07-21 05:56:29'),
(71, 'http://localhost/snu/?c=autoreportes&a=add', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.5060.114 Safari/537.36', 'alexander orejuela', '2022-07-21 05:59:46'),
(72, 'http://localhost/snu/?c=autoreportes&a=add', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.5060.114 Safari/537.36', 'alexander orejuela', '2022-07-21 07:02:29'),
(73, 'http://localhost/snu/?c=autoreportes&a=add', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.5060.114 Safari/537.36', 'alexander orejuela', '2022-07-21 07:45:46'),
(74, 'http://localhost/snu/?c=autoreportes&a=add', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.5060.114 Safari/537.36', 'alexander orejuela', '2022-07-21 07:53:15'),
(75, 'http://localhost/snu/?c=autoreportes&a=add', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.5060.114 Safari/537.36', 'alexander orejuela', '2022-07-21 07:53:25'),
(76, 'http://localhost/snu/?c=autoreportes&a=add', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.5060.114 Safari/537.36', 'alexander orejuela', '2022-07-21 07:53:57'),
(77, 'http://localhost/snu/?c=autoreportes&a=add', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.5060.114 Safari/537.36', 'alexander orejuela', '2022-07-21 07:55:43'),
(78, 'http://localhost/snu/?c=clientes&a=verificar&id=21', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'alexander orejuela', '2022-07-22 09:20:37'),
(79, 'http://localhost/snu/?c=clientes&a=dashboard', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'alexander orejuela', '2022-07-22 09:21:04'),
(80, 'http://localhost/snu/?c=solicitudes&a=index', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'alexander orejuela', '2022-07-22 09:21:27'),
(81, 'http://localhost/snu/?c=solicitudes&a=index', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'alexander orejuela', '2022-07-22 09:21:35'),
(82, 'http://localhost/snu/?c=solicitudes&a=index', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'alexander orejuela', '2022-07-22 09:21:45'),
(83, 'http://localhost/snu/?c=solicitudes&a=index', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'alexander orejuela', '2022-07-22 09:21:55'),
(84, 'http://localhost/snu/?c=solicitudes&a=index', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'alexander orejuela', '2022-07-22 09:21:57'),
(85, 'http://localhost/snu/?c=autoreportes&a=add', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'alexander orejuela', '2022-07-22 09:22:31'),
(86, 'http://localhost/snu/?c=autoreportes&a=add', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'alexander orejuela', '2022-07-22 09:22:47'),
(87, 'http://localhost/snu/?c=autoreportes&a=add', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'alexander orejuela', '2022-07-22 09:30:31'),
(88, 'http://localhost/snu/?c=autoreportes&a=buscarIndex', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'alexander orejuela', '2022-07-22 09:30:35'),
(89, 'http://localhost/snu/?c=autoreportes&a=buscarIndex', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'alexander orejuela', '2022-07-22 09:30:44'),
(90, 'http://localhost/snu/?c=autoreportes&a=buscarIndex', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'alexander orejuela', '2022-07-22 09:32:56'),
(91, 'http://localhost/snu/?c=autoreportes&a=buscarIndex', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'alexander orejuela', '2022-07-22 09:33:36'),
(92, 'http://localhost/snu/?c=autoreportes&a=buscarIndex', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'alexander orejuela', '2022-07-22 09:33:55'),
(93, 'http://localhost/snu/?c=autoreportes&a=buscarIndex', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'alexander orejuela', '2022-07-22 09:34:22'),
(94, 'http://localhost/snu/?c=autoreportes&a=buscarIndex', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'alexander orejuela', '2022-07-22 09:34:30'),
(95, 'http://localhost/snu/?c=autoreportes&a=buscarIndex', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'alexander orejuela', '2022-07-22 09:39:52'),
(96, 'http://localhost/snu/?c=autoreportes&a=buscarIndex', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'alexander orejuela', '2022-07-22 09:40:53'),
(97, 'http://localhost/snu/?c=autoreportes&a=buscarIndex', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'alexander orejuela', '2022-07-22 09:43:47'),
(98, 'http://localhost/snu/?c=autoreportes&a=buscarIndex', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'alexander orejuela', '2022-07-22 09:44:17'),
(99, 'http://localhost/snu/?c=autoreportes&a=buscarIndex', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'alexander orejuela', '2022-07-22 09:48:29'),
(100, 'http://localhost/snu/?c=autoreportes&a=buscarIndex', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'alexander orejuela', '2022-07-22 09:49:01'),
(101, 'http://localhost/snu/?c=autoreportes&a=buscarIndex', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'alexander orejuela', '2022-07-22 09:58:01'),
(102, 'http://localhost/snu/?c=autoreportes&a=buscarIndex', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'alexander orejuela', '2022-07-22 09:58:13'),
(103, 'http://localhost/snu/?c=autoreportes&a=buscarIndex', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'alexander orejuela', '2022-07-22 09:59:19'),
(104, 'http://localhost/snu/?c=autoreportes&a=buscarIndex', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'alexander orejuela', '2022-07-22 10:08:48'),
(105, 'http://localhost/snu/?c=autoreportes&a=buscarIndex', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'alexander orejuela', '2022-07-22 10:35:06'),
(106, 'http://localhost/snu/?c=autoreportes&a=buscarIndex', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'alexander orejuela', '2022-07-22 11:00:16'),
(107, 'http://localhost/snu/?c=autoreportes&a=buscarIndex', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'alexander orejuela', '2022-07-22 11:01:33'),
(108, 'http://localhost/snu/?c=autoreportes&a=buscarIndex', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'alexander orejuela', '2022-07-22 11:42:50'),
(109, 'http://localhost/snu/?c=autoreportes&a=buscarIndex', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'alexander orejuela', '2022-07-22 11:44:07'),
(110, 'http://localhost/snu/?c=autoreportes&a=buscarIndex', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'alexander orejuela', '2022-07-22 11:52:54'),
(111, 'http://localhost/snu/?c=autoreportes&a=buscarIndex', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'alexander orejuela', '2022-07-22 11:55:14'),
(112, 'http://localhost/snu/?c=autoreportes&a=buscarIndex', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'alexander orejuela', '2022-07-22 12:05:24'),
(113, 'http://localhost/snu/?c=autoreportes&a=buscarIndex', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'alexander orejuela', '2022-07-22 12:06:45'),
(114, 'http://localhost/snu/?c=autoreportes&a=buscarIndex', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'alexander orejuela', '2022-07-22 12:30:31'),
(115, 'http://localhost/snu/?c=autoreportes&a=buscarIndex', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'alexander orejuela', '2022-07-22 02:42:33'),
(116, 'http://localhost/snu/?c=autoreportes&a=buscarIndex', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'alexander orejuela', '2022-07-22 02:45:09'),
(117, 'http://localhost/snu/?c=autoreportes&a=buscarIndex', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'alexander orejuela', '2022-07-22 02:59:06'),
(118, 'http://localhost/snu/?c=clientes&a=verificar&id=21', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'alexander orejuela', '2022-07-22 03:03:21'),
(119, 'http://localhost/snu/?c=clientes&a=dashboard', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'alexander orejuela', '2022-07-22 03:03:24'),
(120, 'http://localhost/snu/?c=clientes&a=dashboard', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'alexander orejuela', '2022-07-22 03:06:53'),
(121, 'http://localhost/snu/?c=clientes&a=dashboard', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'alexander orejuela', '2022-07-22 03:08:31'),
(122, 'http://localhost/snu/?c=clientes&a=dashboard', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'alexander orejuela', '2022-07-22 03:10:00'),
(123, 'http://localhost/snu/?c=clientes&a=dashboard', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'alexander orejuela', '2022-07-22 03:11:36'),
(124, 'http://localhost/snu/?c=clientes&a=dashboard', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'alexander orejuela', '2022-07-22 03:11:51'),
(125, 'http://localhost/snu/?c=clientes&a=dashboard', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'alexander orejuela', '2022-07-22 03:44:13'),
(126, 'http://localhost/snu/?c=clientes&a=dashboard', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'alexander orejuela', '2022-07-22 03:50:19'),
(127, 'http://localhost/snu/?c=clientes&a=dashboard', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'alexander orejuela', '2022-07-22 03:50:29'),
(128, 'http://localhost/snu/?c=clientes&a=dashboard', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'alexander orejuela', '2022-07-22 04:09:11'),
(129, 'http://localhost/snu/?c=clientes&a=dashboard', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'alexander orejuela', '2022-07-22 04:10:12'),
(130, 'http://localhost/snu/?c=clientes&a=dashboard', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'alexander orejuela', '2022-07-22 04:17:32'),
(131, 'http://localhost/snu/?c=clientes&a=dashboard', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'alexander orejuela', '2022-07-22 04:18:59'),
(132, 'http://localhost/snu/?c=clientes&a=dashboard', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'alexander orejuela', '2022-07-22 04:20:08'),
(133, 'http://localhost/snu/?c=autoreportes&a=buscarIndex', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'alexander orejuela', '2022-07-22 04:20:18'),
(134, 'http://localhost/snu/?c=autoreportes&a=buscarIndex', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'alexander orejuela', '2022-07-22 05:15:37'),
(135, 'http://localhost/snu/?c=autoreportes&a=buscarIndex', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'alexander orejuela', '2022-07-22 05:17:40'),
(136, 'http://localhost/snu/?c=autoreportes&a=buscarIndex', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'alexander orejuela', '2022-07-22 05:18:08'),
(137, 'http://localhost/snu/?c=autoreportes&a=buscarIndex', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'alexander orejuela', '2022-07-22 05:18:43'),
(138, 'http://localhost/snu/?c=autoreportes&a=buscarIndex', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'alexander orejuela', '2022-07-22 05:22:40'),
(139, 'http://localhost/snu/?c=autoreportes&a=buscarIndex', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'alexander orejuela', '2022-07-22 05:26:10'),
(140, 'http://localhost/snu/?c=autoreportes&a=buscarIndex', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'alexander orejuela', '2022-07-22 05:33:10'),
(141, 'http://localhost/snu/?c=autoreportes&a=buscarIndex', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'alexander orejuela', '2022-07-22 05:34:05'),
(142, 'http://localhost/snu/?c=autoreportes&a=buscarIndex', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'alexander orejuela', '2022-07-22 05:37:08'),
(143, 'http://localhost/snu/?c=autoreportes&a=buscarIndex', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'alexander orejuela', '2022-07-22 05:38:12'),
(144, 'http://localhost/snu/?c=autoreportes&a=buscarIndex', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'alexander orejuela', '2022-07-22 05:38:47'),
(145, 'http://localhost/snu/?c=autoreportes&a=buscarIndex', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'alexander orejuela', '2022-07-22 05:40:11'),
(146, 'http://localhost/snu/?c=autoreportes&a=buscarIndex', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'alexander orejuela', '2022-07-22 05:41:16'),
(147, 'http://localhost/snu/?c=autoreportes&a=buscarIndex', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'alexander orejuela', '2022-07-22 05:41:49'),
(148, 'http://localhost/snu/?c=autoreportes&a=buscarIndex', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'alexander orejuela', '2022-07-22 05:42:09'),
(149, 'http://localhost/snu/?c=autoreportes&a=buscarIndex', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'alexander orejuela', '2022-07-22 05:58:37'),
(150, 'http://localhost/snu/?c=autoreportes&a=buscarIndex', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'alexander orejuela', '2022-07-22 05:58:51'),
(151, 'http://localhost/snu/?c=indicadors&a=index', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'alexander orejuela', '2022-07-22 05:58:54'),
(152, 'http://localhost/snu/?c=clientes&a=verificar&id=21', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'alexander orejuela', '2022-07-22 06:02:18'),
(153, 'http://localhost/snu/?c=clientes&a=dashboard', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'alexander orejuela', '2022-07-22 06:02:25'),
(154, 'http://localhost/snu/?c=indicadors&a=index', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'alexander orejuela', '2022-07-22 06:02:29'),
(155, 'http://localhost/snu/?c=indicadors&a=index', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'alexander orejuela', '2022-07-22 06:07:13'),
(156, 'http://localhost/snu/?c=indicadors&a=index', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'alexander orejuela', '2022-07-23 09:25:15'),
(157, 'http://localhost/snu/?c=indicadors&a=index', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'alexander orejuela', '2022-07-23 09:26:06'),
(158, 'http://localhost/snu/?c=indicadors&a=index', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'alexander orejuela', '2022-07-23 09:31:05'),
(159, 'http://localhost/snu/?c=indicadors&a=index', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'alexander orejuela', '2022-07-23 09:43:51'),
(160, 'http://localhost/snu/?c=indicadors&a=index', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'alexander orejuela', '2022-07-23 09:56:38'),
(161, 'http://localhost/snu/?c=indicadors&a=index', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'alexander orejuela', '2022-07-23 10:00:00'),
(162, 'http://localhost/snu/?c=indicadors&a=index', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'alexander orejuela', '2022-07-23 10:01:23'),
(163, 'http://localhost/snu/?c=indicadors&a=index', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'alexander orejuela', '2022-07-23 10:04:45'),
(164, 'http://localhost/snu/?c=indicadors&a=index', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'alexander orejuela', '2022-07-23 10:13:58'),
(165, 'http://localhost/snu/?c=indicadors&a=index', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'alexander orejuela', '2022-07-23 10:15:34'),
(166, 'http://localhost/snu/?c=indicadors&a=index', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'alexander orejuela', '2022-07-23 10:18:18'),
(167, 'http://localhost/snu/?c=indicadors&a=index', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'alexander orejuela', '2022-07-23 10:22:27'),
(168, 'http://localhost/snu/?c=indicadors&a=add', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'alexander orejuela', '2022-07-23 10:52:45'),
(169, 'http://localhost/snu/?c=indicadors&a=add', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'alexander orejuela', '2022-07-23 10:52:52'),
(170, 'http://localhost/snu/?c=indicadors&a=add', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'alexander orejuela', '2022-07-23 11:00:04'),
(171, 'http://localhost/snu/?c=indicadors&a=add', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'alexander orejuela', '2022-07-23 11:00:19'),
(172, 'http://localhost/snu/?c=indicadors&a=index', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'alexander orejuela', '2022-07-23 11:01:00'),
(173, 'http://localhost/snu/?c=indicadors&a=index', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'alexander orejuela', '2022-07-23 11:02:04'),
(174, 'http://localhost/snu/?c=indicadors&a=index', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'alexander orejuela', '2022-07-23 11:03:33'),
(175, 'http://localhost/snu/?c=indicadors&a=index', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'alexander orejuela', '2022-07-23 11:04:16'),
(176, 'http://localhost/snu/?c=clientes&a=verificar&id=21', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'alexander orejuela', '2022-07-23 11:05:34'),
(177, 'http://localhost/snu/?c=clientes&a=verificar&id=21', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'alexander orejuela', '2022-07-23 11:05:45'),
(178, 'http://localhost/snu/?c=clientes&a=dashboard', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'alexander orejuela', '2022-07-23 11:06:01'),
(179, 'http://localhost/snu/?c=clientes&a=dashboard', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'alexander orejuela', '2022-07-23 11:06:08'),
(180, 'http://localhost/snu/?c=indicadors&a=index', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'alexander orejuela', '2022-07-23 11:06:10'),
(181, 'http://localhost/snu/?c=indicadors&a=index', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'alexander orejuela', '2022-07-23 11:06:27'),
(182, 'http://localhost/snu/?c=clientes&a=dashboard', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'alexander orejuela', '2022-07-23 11:06:29'),
(183, 'http://localhost/snu/?c=clientes&a=dashboard', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'alexander orejuela', '2022-07-23 11:06:52'),
(184, 'http://localhost/snu/?c=indicadors&a=index', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'alexander orejuela', '2022-07-23 11:06:55'),
(185, 'http://localhost/snu/?c=indicadors&a=index', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'alexander orejuela', '2022-07-23 11:07:38'),
(186, 'http://localhost/snu/?c=indicadors&a=index', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'alexander orejuela', '2022-07-23 11:07:56'),
(187, 'http://localhost/snu/?c=indicadors&a=index', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'alexander orejuela', '2022-07-23 11:08:26'),
(188, 'http://localhost/snu/?c=indicadors&a=index', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'alexander orejuela', '2022-07-23 11:08:33'),
(189, 'http://localhost/snu/?c=indicadors&a=index', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'alexander orejuela', '2022-07-23 11:10:04'),
(190, 'http://localhost/snu/?c=indicadors&a=index', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'alexander orejuela', '2022-07-23 11:11:01'),
(191, 'http://localhost/snu/?c=indicadors&a=index', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'alexander orejuela', '2022-07-23 11:11:47'),
(192, 'http://localhost/snu/?c=indicadors&a=index', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'alexander orejuela', '2022-07-23 11:14:17'),
(193, 'http://localhost/snu/?c=indicadors&a=index', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'alexander orejuela', '2022-07-23 11:14:46'),
(194, 'http://localhost/snu/?c=indicadors&a=index', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'alexander orejuela', '2022-07-23 11:15:13'),
(195, 'http://localhost/snu/?c=indicadors&a=index', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'alexander orejuela', '2022-07-23 11:18:12'),
(196, 'http://localhost/snu/?c=indicadors&a=index', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'alexander orejuela', '2022-07-23 11:59:49'),
(197, 'http://localhost/snu/?c=indicadors&a=index', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'alexander orejuela', '2022-07-23 12:01:10'),
(198, 'http://localhost/snu/?c=indicadors&a=index', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'alexander orejuela', '2022-07-23 12:08:44'),
(199, 'http://localhost/snu/?c=indicadors&a=index', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'alexander orejuela', '2022-07-23 12:12:18'),
(200, 'http://localhost/snu/?c=indicadors&a=add&id=6', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'alexander orejuela', '2022-07-23 12:12:51'),
(201, 'http://localhost/snu/?c=indicadors&a=add&id=6', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'alexander orejuela', '2022-07-23 12:13:38'),
(202, 'http://localhost/snu/?c=indicadors&a=add&id=6', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'alexander orejuela', '2022-07-23 12:13:45'),
(203, 'http://localhost/snu/?c=indicadors&a=add&id=6', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'alexander orejuela', '2022-07-23 12:13:47'),
(204, 'http://localhost/snu/?c=indicadors&a=add&id=6', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'alexander orejuela', '2022-07-23 12:14:00'),
(205, 'http://localhost/snu/?c=indicadors&a=index', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'alexander orejuela', '2022-07-23 12:14:02'),
(206, 'http://localhost/snu/?c=indicadors&a=add&id=6', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'alexander orejuela', '2022-07-23 12:14:04'),
(207, 'http://localhost/snu/?c=indicadors&a=add&id=6', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'alexander orejuela', '2022-07-23 12:15:29'),
(208, 'http://localhost/snu/?c=clientes&a=dashboard', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'alexander orejuela', '2022-07-23 12:17:08'),
(209, 'http://localhost/snu/?c=clientes&a=dashboard', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'alexander orejuela', '2022-07-23 12:17:20'),
(210, 'http://localhost/snu/?c=clientes&a=dashboard', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'alexander orejuela', '2022-07-23 12:17:26'),
(211, 'http://localhost/snu/?c=clientes&a=dashboard', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'alexander orejuela', '2022-07-23 12:18:26'),
(212, 'http://localhost/snu/?c=clientes&a=dashboard', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'alexander orejuela', '2022-07-23 12:21:59'),
(213, 'http://localhost/snu/?c=clientes&a=dashboard', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'alexander orejuela', '2022-07-23 12:22:57'),
(214, 'http://localhost/snu/?c=indicadors&a=index', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'alexander orejuela', '2022-07-23 12:22:59'),
(215, 'http://localhost/snu/?c=clientes&a=dashboard', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'alexander orejuela', '2022-07-23 12:23:03'),
(216, 'http://localhost/snu/?c=clientes&a=dashboard', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'alexander orejuela', '2022-07-23 12:24:42'),
(217, 'http://localhost/snu/?c=clientes&a=dashboard', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'alexander orejuela', '2022-07-23 12:38:41'),
(218, 'http://localhost/snu/?c=indicadors&a=index', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'alexander orejuela', '2022-07-23 12:39:08'),
(219, 'http://localhost/snu/?c=clientes&a=dashboard', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'alexander orejuela', '2022-07-23 12:39:10'),
(220, 'http://localhost/snu/?c=clientes&a=dashboard', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'alexander orejuela', '2022-07-23 12:46:31'),
(221, 'http://localhost/snu/?c=clientes&a=dashboard', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'alexander orejuela', '2022-07-23 12:59:02'),
(222, 'http://localhost/snu/?c=clientes&a=dashboard', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'alexander orejuela', '2022-07-23 01:05:35'),
(223, 'http://localhost/snu/?c=clientes&a=verificar&id=21', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'alexander orejuela', '2022-07-23 07:43:41'),
(224, 'http://localhost/snu/?c=clientes&a=dashboard', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'alexander orejuela', '2022-07-23 07:43:46'),
(225, 'http://localhost/snu/?c=indicadors&a=index', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'alexander orejuela', '2022-07-23 07:43:48'),
(226, 'http://localhost/snu/?c=indicadors&a=index', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'alexander orejuela', '2022-07-23 07:52:33'),
(227, 'http://localhost/snu/?c=indicadors&a=index', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'alexander orejuela', '2022-07-23 07:52:59'),
(228, 'http://localhost/snu/?c=indicadors&a=add', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'alexander orejuela', '2022-07-23 07:54:33'),
(229, 'http://localhost/snu/?c=solicitudes&a=index', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'alexander orejuela', '2022-07-23 07:54:41'),
(230, 'http://localhost/snu/?c=solicitudes&a=index', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'alexander orejuela', '2022-07-23 07:56:36'),
(231, 'http://localhost/snu/?c=solicitudes&a=index', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'alexander orejuela', '2022-07-23 07:57:01'),
(232, 'http://localhost/snu/?c=solicitudes&a=add', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'alexander orejuela', '2022-07-23 07:57:10');
INSERT INTO `estadisticas` (`id`, `url`, `navegador`, `usuario`, `fecha_hora`) VALUES
(233, 'http://localhost/snu/?c=indicadors&a=index', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'alexander orejuela', '2022-07-23 07:57:11'),
(234, 'http://localhost/snu/?c=indicadors&a=index', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'alexander orejuela', '2022-07-23 07:58:33'),
(235, 'http://localhost/snu/?c=indicadors&a=index', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'alexander orejuela', '2022-07-23 08:03:31'),
(236, 'http://localhost/snu/?c=indicadors&a=index', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'alexander orejuela', '2022-07-23 08:07:27'),
(237, 'http://localhost/snu/?c=indicadors&a=add', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'alexander orejuela', '2022-07-23 08:21:01'),
(238, 'http://localhost/snu/?c=indicadors&a=index', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'alexander orejuela', '2022-07-23 08:21:08'),
(239, 'http://localhost/snu/?c=indicadors&a=index', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'alexander orejuela', '2022-07-23 08:22:53'),
(240, 'http://localhost/snu/?c=indicadors&a=add&id=2', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'alexander orejuela', '2022-07-23 08:22:57'),
(241, 'http://localhost/snu/?c=indicadors&a=index', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'alexander orejuela', '2022-07-23 08:23:36'),
(242, 'http://localhost/snu/?c=indicadors&a=add&id=2', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'alexander orejuela', '2022-07-23 08:23:38'),
(243, 'http://localhost/snu/?c=indicadors&a=add&id=2', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'alexander orejuela', '2022-07-23 08:25:23'),
(244, 'http://localhost/snu/?c=indicadors&a=add&id=2', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'alexander orejuela', '2022-07-23 08:25:48'),
(245, 'http://localhost/snu/?c=indicadors&a=add&id=2', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'alexander orejuela', '2022-07-23 08:33:48'),
(246, 'http://localhost/snu/?c=indicadors&a=add&id=2', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'alexander orejuela', '2022-07-24 10:17:09'),
(247, 'http://localhost/snu/?c=indicadors&a=add&id=2', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'alexander orejuela', '2022-07-24 10:19:33'),
(248, 'http://localhost/snu/?c=indicadors&a=add&id=2', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'alexander orejuela', '2022-07-24 10:21:08'),
(249, 'http://localhost/snu/?c=indicadors&a=index', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'alexander orejuela', '2022-07-24 10:29:14'),
(250, 'http://localhost/snu/?c=indicadors&a=add&id=2', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'alexander orejuela', '2022-07-24 10:29:16'),
(251, 'http://localhost/snu/?c=indicadors&a=index', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'alexander orejuela', '2022-07-24 10:35:36'),
(252, 'http://localhost/snu/?c=indicadors&a=index', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'alexander orejuela', '2022-07-24 10:36:02'),
(253, 'http://localhost/snu/?c=indicadors&a=index', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'alexander orejuela', '2022-07-24 10:36:18');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `formatos`
--

CREATE TABLE `formatos` (
  `id` int(11) NOT NULL,
  `CodFormato` varchar(20) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `Proceso` varchar(5) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `NomFormato` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `RutaFormato` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `Version` int(4) NOT NULL,
  `Emision` date NOT NULL,
  `Actualizacion` date NOT NULL,
  `Almacenamiento` varchar(200) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `Proteccion` varchar(60) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `TipoRecuperacion` varchar(255) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `Recuperacion` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `TiempoRetencion` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `DispFinal` varchar(20) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `Responsable` varchar(40) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `indicadors`
--

CREATE TABLE `indicadors` (
  `id` int(11) NOT NULL,
  `proceso_id` int(11) NOT NULL,
  `formula_id` int(11) NOT NULL,
  `nombre` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `cargo_id` int(11) NOT NULL COMMENT 'cargo responsable del indicador',
  `definicion` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `interpretacion` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `periodicidad` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `meta` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT '>,  >=,  <=,  <',
  `num_meta` int(11) NOT NULL,
  `fecha_control` date NOT NULL COMMENT 'fecha para  validar el ingreso de los datos',
  `tipo` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT 'general, sst'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `indicadors`
--

INSERT INTO `indicadors` (`id`, `proceso_id`, `formula_id`, `nombre`, `cargo_id`, `definicion`, `interpretacion`, `periodicidad`, `meta`, `num_meta`, `fecha_control`, `tipo`) VALUES
(2, 5, 1, '% Satisfacción del cliente', 1, ' Encuesta de satisfacción', '.', 'semestral', '>=', 87, '2021-01-05', ''),
(3, 1, 1, '% Evaluación Competencias', 4, '   Herramienta de ponderación', '.', 'anual', '>=', 80, '2021-01-05', ''),
(4, 1, 1, '% Evaluación de desempeño ', 1, 'Herramienta de ponderación', '.', 'semestral', '>=', 80, '2021-01-05', ''),
(5, 1, 1, '% Cumplimiento plan de formación', 1, ' Presupuesto', '.', 'anual', '>=', 80, '2021-01-05', ''),
(6, 1, 1, '% Cumplimiento al plan anual sst', 1, ' Plan anual de SST', 'El plan anual del SG SST en el semestre \"X\" del año 20\"XX \" tiene un % de cumplimiento', 'semestral', '>=', 80, '2021-01-05', ''),
(7, 5, 1, '% Cumplimiento a proyecto', 2, '  Software control de proyectos', '.', 'semestral', '>=', 80, '2021-01-05', ''),
(8, 5, 1, '% Desempeño de procesos', 2, ' consolidado de acciones tomadas por proceso', '.', 'semestral', '>=', 80, '2021-01-05', ''),
(9, 5, 3, ' Contratos efectivos', 2, 'Contrato firmado entre las partes', '.', 'semestral', '>=', 3, '2021-01-05', ''),
(10, 1, 3, '% Evaluación proveedores', 9, ' Información suministrada por el proveedor', ' .', 'semestral', '>=', 80, '2021-01-05', ''),
(11, 1, 1, '% Cumplimiento a presupuesto', 4, 'Presupuesto y balances contables', '.', 'semestral', '>=', 80, '2021-01-05', ''),
(27, 5, 1, '% Eficacia de soporte', 2, ' Registro de soporte', '0', 'semestral', '>=', 80, '2021-02-28', ''),
(28, 6, 1, '% Frecuencia de accidentalidad', 1, '   Reportes de FURAT y Caracterizacion de accidente de trabajo y enfermedad laboral', '   Por cada cien  (100) trabajadores que laboraron en el mes, se presentaron X accidentes de trabajo', 'mensual', '<', 1, '2021-01-05', ''),
(29, 6, 10, '% Severidad de accidentalidad', 1, ' Reportes de FURAT- y Caracterizacion de accidente de trabajo y enfermedad laboral		', '  Por cada cien (100) trabajadores que laboraron en el mes, se perdieron X días por accidente de trabajo', 'mensual', '<', 1, '2021-01-05', ''),
(30, 6, 1, '% Ausentismo por causa médica', 1, 'Ausentismo', 'En el mes se perdió X% de días programados de trabajo por incapacidad médica', 'mensual', '<=', 5, '2021-01-05', ''),
(31, 6, 1, '% Mortalidad por Accidentes de trabajo', 1, '  0', '  En el año, el X% de accidentes de trabajo fueron mortales', 'anual', '<=', 1, '2021-01-05', ''),
(32, 6, 7, '% Prevalencia de la enfermedad laboral', 1, 'Reportes de Enfermedad Laboral- GR-FR-030 Caracterizacion de accidente de trabajo y enfermedad laboral		', ' Por cada 100.000 trabajadores existen X casos de enfermedad laboral en el periodo Z', 'anual', '<=', 1, '2021-01-05', ''),
(33, 6, 11, '% Incidencia de la enfermedad laboral', 1, 'Reportes de Enfermedad Laboral- GR-FR-030 Caracterizacion de accidente de trabajo y enfermedad laboral		', 'Por cada 100.000 trabajadores existen X casos nuevos de enfermedad laboral en el periodo Z', 'anual', '<=', 1, '2021-01-05', ''),
(34, 5, 1, '% Control de actividades', 2, '  INFORME DE SEGUIMIENTO', ' El X% corresponde al control de los proyectos en cada una de las actividades necesarias para el logro de los objetivos ', 'mensual', '>=', 90, '2021-11-05', ''),
(36, 5, 1, '% Eficacia al seguimiento', 9, 'Consolidado de seguimiento', '.', 'mensual', '>=', 85, '2021-01-05', ''),
(37, 5, 1, '% Grado de cumplimiento de mantenimiento de software', 9, 'Software control de proyectos', 'Planificación de actividades de  actualización y mejoramiento de software.', 'semestral', '', 0, '2022-06-05', ''),
(38, 5, 3, '% Tratamiento de eventos relacionados.', 9, 'Consolidado de acciones tomadas para responder al cliente.\r\n', '\"Registro de soporte\r\nTratamiento de las peticiones en referencia a software\"\r\n', 'trimestral', '', 0, '2022-06-05', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `metas`
--

CREATE TABLE `metas` (
  `id` int(11) NOT NULL,
  `indicador_id` int(11) NOT NULL,
  `comparativo` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `valor` int(11) NOT NULL,
  `fecha_uso` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `metas`
--

INSERT INTO `metas` (`id`, `indicador_id`, `comparativo`, `valor`, `fecha_uso`) VALUES
(1, 2, '>=', 80, '2021-01-05'),
(2, 3, '>=', 80, '2021-01-05'),
(3, 4, '>=', 80, '2111-01-05'),
(4, 5, '>=', 80, '2021-01-05'),
(5, 6, '>=', 80, '2021-01-05'),
(6, 7, '>=', 80, '2020-01-05'),
(7, 8, '>=', 80, '2021-01-05'),
(8, 9, '>=', 3, '2021-05-10'),
(9, 10, '>=', 80, '2021-05-01'),
(10, 11, '>=', 80, '2021-05-01'),
(11, 27, '>=', 80, '2021-05-01'),
(12, 28, '< ', 1, '2021-01-05'),
(13, 29, '< ', 1, '2021-11-25'),
(14, 30, '<=', 5, '2021-05-01'),
(15, 31, '<=', 1, '2021-05-01'),
(16, 32, '<=', 1, '2021-05-01'),
(17, 33, '<=', 1, '2021-05-01'),
(18, 34, '>=', 90, '2021-05-01'),
(19, 36, '>=', 85, '2021-05-01'),
(20, 37, '>=', 89, '0000-00-00'),
(21, 37, '>=', 85, '2022-06-05'),
(22, 38, '>=', 85, '2022-06-05'),
(23, 2, '=', 4, '2022-07-22');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `modelos`
--

CREATE TABLE `modelos` (
  `id` int(11) NOT NULL,
  `formula` varchar(11) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `modelos`
--

INSERT INTO `modelos` (`id`, `formula`) VALUES
(1, 'A/B*100'),
(2, 'A-B*100'),
(3, 'A/B'),
(4, 'A-B'),
(5, 'A*B/100'),
(6, 'A*B+100'),
(7, '(A+B/C)*100'),
(8, 'A'),
(10, '(A+B/C)*100'),
(11, 'A/B * 10000');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `procesos`
--

CREATE TABLE `procesos` (
  `id` int(11) NOT NULL,
  `Iniciales` char(6) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `NombreProceso` varchar(80) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `tipo` int(11) DEFAULT NULL,
  `cod_int` varchar(20) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `procesos`
--

INSERT INTO `procesos` (`id`, `Iniciales`, `NombreProceso`, `tipo`, `cod_int`) VALUES
(1, 'GA', 'GESTION ADMINISTRATIVA', 1, 'P4'),
(2, 'GB', 'GESTION DE BIENESTAR', 1, 'P5'),
(3, 'GC', 'GESTION DE CALIDAD', 1, 'P2'),
(4, 'GD', 'GESTION DIRECTIVA', 1, 'P1'),
(5, 'GP', 'GESTION PEDAGOGICA', 1, 'P3');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sgcexternos`
--

CREATE TABLE `sgcexternos` (
  `id` int(11) NOT NULL,
  `codigo` varchar(11) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `proceso` varchar(255) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `nombre` varchar(255) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `expedicion` date NOT NULL,
  `descripcion` varchar(500) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `filename` varchar(255) NOT NULL,
  `dir` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `solicitudes`
--

CREATE TABLE `solicitudes` (
  `id` int(8) NOT NULL,
  `NombreSolicitante` varchar(20) COLLATE utf8_spanish_ci NOT NULL,
  `FechaSolicitud` date NOT NULL,
  `Proceso` char(10) COLLATE utf8_spanish_ci NOT NULL,
  `TipoSolicitud` varchar(20) COLLATE utf8_spanish_ci NOT NULL,
  `Codigo` varchar(20) COLLATE utf8_spanish_ci NOT NULL,
  `VersionCambiar` int(8) NOT NULL,
  `TipoDocumento` varchar(16) COLLATE utf8_spanish_ci NOT NULL,
  `Descripcion` text COLLATE utf8_spanish_ci NOT NULL,
  `EjecucionCambio` date NOT NULL,
  `Aprobado` enum('','si','no','revision') COLLATE utf8_spanish_ci DEFAULT NULL,
  `Observaciones` text COLLATE utf8_spanish_ci NOT NULL,
  `filename` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `dir` varchar(255) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci COMMENT='GC-RG-003';

--
-- Volcado de datos para la tabla `solicitudes`
--

INSERT INTO `solicitudes` (`id`, `NombreSolicitante`, `FechaSolicitud`, `Proceso`, `TipoSolicitud`, `Codigo`, `VersionCambiar`, `TipoDocumento`, `Descripcion`, `EjecucionCambio`, `Aprobado`, `Observaciones`, `filename`, `dir`) VALUES
(1, 'Alexander Orejuela', '2022-07-21', 'GA', 'creacion', 'Codigo Automatico', 0, 'documento', 'hola mundo', '0000-00-00', NULL, '', '', 'Assets/Solicitudes/CALIDAD DEV/');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_condiciones`
--

CREATE TABLE `tb_condiciones` (
  `id` int(11) NOT NULL,
  `clasificacionIncidente` varchar(255) CHARACTER SET latin1 NOT NULL,
  `tipoIncidente` varchar(255) CHARACTER SET latin1 NOT NULL,
  `correcionIncidente` varchar(255) CHARACTER SET latin1 NOT NULL,
  `fechaRegistro` date NOT NULL,
  `usuario` varchar(255) CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `tb_condiciones`
--

INSERT INTO `tb_condiciones` (`id`, `clasificacionIncidente`, `tipoIncidente`, `correcionIncidente`, `fechaRegistro`, `usuario`) VALUES
(1, 'SNC', 'Control de cartera', 'revision de cartera y ajuste inmediato', '2021-04-03', 'sistema'),
(2, 'SNC', 'Pólizas', 'Reportar inconsistencia a la aseguradora; solicitar de nuevo el carn?; solicitar p?lizas al inicio de actividad acad?mica', '2021-04-03', 'sistema'),
(3, 'SNC', 'Incumolimiento en seguimiento de actividades', 'Realizar el seguimeinto en un tiempo no mayor a 24 horas', '2021-10-07', 'sistema'),
(4, 'SNC', 'Induccion del personal', 'Establecer el cronograma para desarrollar el plan de inducción', '2016-09-06', 'SISTEMA'),
(5, 'SNC', 'Limpieza y orden ', 'Realizar aseo de la institución', '2016-09-06', 'SISTEMA'),
(6, 'SNC', 'Contratacion personal ', 'Elaboracion de contrato debidamente firmado y actualizaci?n en la planta de cargos en un plazo m?x. a 3 d?as', '2016-09-06', 'SISTEMA'),
(7, 'SNC', 'Recuperación de cartera', 'Realizar cobro de cartera a los clientes en un tiempo no mayor a 72 horas', '2021-10-07', 'sistema'),
(8, 'SNC', 'Informes financieros', 'Presentar informa en un tiempo menor a 72 horas siguientes', '2016-09-06', 'SISTEMA'),
(9, 'AI', 'Limpiar, ajustar o mover un equipo en movimiento', 'Capacitacion/Entrenamiento', '2016-09-06', 'SISTEMA'),
(10, 'AI', 'uso inadecuado u omision del uso de elementos de proteccion personal (EPP) ', 'Capacitacion/Entrenamiento', '2016-09-06', 'SISTEMA'),
(11, 'AI', 'Adoptar una posici?n incorrecta en los puestos de trabajo.', 'Capacitacion/Entrenamiento', '2016-09-06', 'SISTEMA'),
(12, 'AI', 'Omitir colocacion de avisos como se?al de advertencia en caso de pisos humedos, derrames etc', 'Capacitacion/Entrenamiento', '2016-09-06', 'SISTEMA'),
(13, 'AI', 'Levantar cargas manualmente en forma incorrecta.', 'Capacitacion/Entrenamiento', '2016-09-06', 'SISTEMA'),
(14, 'AI', 'Bromas o juegos pesados (distraer, fastidiar, molestar, asustar, chantajear pesadamente, lanzar materiales, exhibirse burlonamente, etc.)', 'Capacitacion/Entrenamiento', '2016-09-06', 'SISTEMA'),
(15, 'AI', 'Uso inadecuado de material o equipo para lo cual no esta dise?ado', 'Capacitacion/Entrenamiento', '2016-09-06', 'SISTEMA'),
(16, 'AI', 'Agarrar los objetos inseguramente', 'Capacitacion/Entrenamiento', '2016-09-06', 'SISTEMA'),
(17, 'AI', 'Usar equipos de trabajo defectuosos', 'Capacitacion/Entrenamiento', '2016-09-06', 'SISTEMA'),
(18, 'AI', 'No usar las herramientas o equidos adecuados seg?n la actividad', 'Capacitacion/Entrenamiento', '2016-09-06', 'SISTEMA'),
(19, 'AI', 'Correr por las instalaciones', 'Capacitacion/Entrenamiento', '2016-09-06', 'SISTEMA'),
(20, 'AI', 'Tirar objetos', 'Capacitacion/Entrenamiento', '2016-09-06', 'SISTEMA'),
(21, 'AI', 'Mezclar sustancias quimicas, sin verificacion de procedimientos', 'Capacitacion/Entrenamiento', '2016-09-06', 'SISTEMA'),
(22, 'AI', 'Disposicion insegura de materiales; herramientas; desechos; etc.', 'Capacitacion/Entrenamiento', '2016-09-06', 'SISTEMA'),
(23, 'AI', 'Usar equipo inseguro, defectuoso o inhabilitado', 'Capacitacion/Entrenamiento', '2016-09-06', 'SISTEMA'),
(24, 'CI', 'Disconfort termico ( por calor o frio)', 'Control de ingenieria/ adecuacion de espacios', '2016-09-06', 'SISTEMA'),
(25, 'SNC', 'Contratacion de personal sin cumplimiento de perfil de cargos', 'Seguir lineamiento de procedimiento de contratacion', '2016-09-06', 'SISTEMA'),
(26, 'CI', 'Desorden y desaseo en el area', 'Orden y aseo', '2016-09-06', 'SISTEMA'),
(27, 'CI', 'Areas sin demarcacion ni se?alizacion ', 'Demarcacion /Se?alizacion', '2016-09-06', 'SISTEMA'),
(28, 'CI', 'Piso humedo ', 'Se?alizacion del area y secado', '2016-09-06', 'SISTEMA'),
(29, 'CI', 'Hundimiento e irregularidad de los pisos', 'Se?alizacion y mantenimiento', '2016-09-06', 'SISTEMA'),
(30, 'CI', 'Almacenamiento inadecuado de los materiales', 'Adquisicion/Reubicacion/ Capacitacion', '2016-09-06', 'SISTEMA'),
(31, 'CI', 'Transporte inadecuado de los materiales', 'Adquisicion/Reubicacion', '2016-09-06', 'SISTEMA'),
(32, 'AI', 'Inapropiada clasificaci?n de residuos solido', 'Capacitacion/entrenamiento/adquisicion', '2016-09-06', 'SISTEMA'),
(33, 'AI', 'Bajar las escaleras sin apoyo de al menos un miembro superior', 'Capacitacion', '2016-09-06', 'SISTEMA'),
(34, 'CI', 'Mobiliario en mal estado', 'Mantenimiento/Adquisicion ', '2016-09-06', 'SISTEMA'),
(35, 'CI', 'No suministro al personal de elementos de proteccion adecuados a sus peligros', 'Adquisicion', '2016-09-06', 'SISTEMA'),
(36, 'CI', 'Prolongacion excesiva de la vida util del elemento', 'Inspeccion de seguridad/adquisiciones', '2016-09-06', 'SISTEMA'),
(37, 'AI', 'Exponerse sin necesidad al peligro', 'Capacitacion/Entranamiento', '2016-09-06', 'SISTEMA'),
(38, 'CI', 'Sobrecarga de tomas', 'Reubicacion de conectores /Inspeccion seguridad', '2016-09-06', 'SISTEMA'),
(39, 'CI', 'Carencia del equipo de proteccion personal necesario', 'Adquisicion/entrenamiento', '2016-09-06', 'SISTEMA'),
(40, 'CI', 'Obstruccion de los pasillos; salidas; etc.', 'Reubicacion', '2016-09-06', 'SISTEMA'),
(41, 'AI', 'No comunicar los riegos.', 'Capacitacion/Entranamiento', '2016-09-06', 'SISTEMA'),
(42, 'CI', 'Ventilacion inadecuada ', 'Adquisicion/Reubicacion', '2016-09-06', 'SISTEMA'),
(43, 'CI', 'Insuficiente espacio de trabajo', 'Reubicacion', '2016-09-06', 'SISTEMA'),
(44, 'CI', 'Iluminacion inadecuada (insuficiente luz para la operacion; brillo; etc.)', 'Adquisicion/reubicacion', '2016-09-06', 'SISTEMA'),
(45, 'CI', 'Material o equipo defectuoso', 'Mantenimiento', '2016-09-06', 'SISTEMA'),
(46, 'AI', 'Uso de herramientas o equipo inadecuado o inapropiado (no defectuoso)', 'Capacitacion/Entrenamiento', '2016-09-06', 'SISTEMA'),
(47, 'CI', 'Areas de almacenamiento inadecuadas', 'Se?alizacion', '2016-09-06', 'SISTEMA'),
(48, 'CI', 'Sin aislamiento (electrico)', 'Mantenimiento', '2016-09-06', 'SISTEMA'),
(49, 'CI', 'Conexiones; interruptores; etc.; descubiertos (electrico)', 'Mantenimiento', '2016-09-06', 'SISTEMA'),
(50, 'CI', 'Materiales sin rotulo o inadecuadamente rotulados', 'Serializacion', '2016-09-06', 'SISTEMA'),
(51, 'AI', 'Hacer caso omiso a la se?alizacion ', 'Correccion de postura', '2016-09-10', 'SISTEMA'),
(52, 'AI', 'Trabajar bajo los efectos del Alcohol y/o sustancias psicoactivas.', 'Capacitacion/Entrenamiento', '2016-09-26', 'SISTEMA'),
(53, 'CI', 'Mobiliario defectuoso o con partes peligrosas', 'mantenimiento/ inspeccion de seguridad.', '2016-09-29', 'SISTEMA'),
(54, 'AI', 'Inclumpliente a lineamientos,procedimientos, politicas y/o protocolos institucionales ', 'Capacitacion/Entrenamiento', '2016-09-26', 'SISTEMA'),
(55, 'CI', 'Elementos inadecuados para disposicion de residuos', 'Adquisicion', '2017-02-13', 'SISTEMA'),
(56, 'CI', 'Hay fugas o perdidas de agua', 'Mantenimiento', '2017-03-23', 'SISTEMA'),
(57, 'SNC', 'Datos basicos del cliente no veraz', 'verificar y actualizar los datos del cleinte.', '2017-04-10', 'SISTEMA'),
(58, 'SNC', 'Incumplimiento en el tiempo de entrega; fecha del certificado; firmas; numero de cedula; nombre incompleto; intensidad horario errada.', 'Volver a expedir el diploma con los criterios solicitados; en un plazo maximo de 8 dias', '2017-04-12', 'SISTEMA'),
(59, 'SNC', 'RP con el mismo numero de DIF mes', 'Buena tarde;\ninformo que los RP del mes de Marzo- Abril  ambos tienen el consecutivo 1592544   correspondientes a la estudiante 160112033; esto genera inconsistencias en los saldos.', '2017-04-25', 'SISTEMA'),
(60, 'SNC', 'Incumplimiento a procedimientos definidos por  la institucion', 'Realizar capacitacion en el procedimiento incumplido.', '2017-04-25', 'SISTEMA'),
(61, 'SNC', 'Documentos de ingreso incompletos', 'Solicitud y almacenamiento de los requisitos de ingreso en carpeta digital.', '2017-05-09', 'SISTEMA'),
(62, 'SNC', 'incumplimiento en procedimiento de apertura de grupos', 'Ajuste de actividades- reentrenamiento en el cargo ', '2017-05-22', 'SISTEMA'),
(63, 'CI', 'Conexiones el?ctricas en mal estado', 'Mantenimiento', '2017-06-08', 'SISTEMA'),
(64, 'SNC', 'ARL elaborar con errores de identificacion o de nombre', 'Revision y entrega de documentos soportes de ARL en  tiempo menor a 12 horas', '2017-07-13', 'SISTEMA'),
(65, 'SNC', 'Facturación errada', 'Elaborar factura en un tiempo no superior a 72 horas', '2017-10-02', 'SISTEMA'),
(66, 'SNC', 'Documentos no controlados', 'Se requiere descargar el documento y/o formato del listado maestro de documentos y/o registros y volver a realizar el documento a remitir.', '2017-10-23', 'SISTEMA'),
(67, 'CI', 'Maquina o equipo o mobiliario no asegurado', 'Se requiere asegurar la maquina o equipo que coloca en riesgo al personal.', '2018-06-07', 'SISTEMA'),
(68, 'CI', 'Falta de demarcacion en superificies con cambios de alturas ', 'Demarcacion /Se?alizacion', '2020-08-20', 'SISTEMA'),
(69, 'AI', 'No llamar la atencion ante actos o condiciones ?inseguras a los compa?eros de trabajo', 'Capacitacion/Entrenamiento', '0000-00-00', ''),
(70, 'AI', 'Poner fuera de servicio los dispositivos de seguridad.', 'Capacitacion/Entrenamiento', '0000-00-00', ''),
(71, 'ES', 'Politicas para la seguridad de la informacion', 'Es conveniente contar  con procedimiento que documente como y a traves de que autoridad debemos contactarnopara repportar los incidenetes o para para efectos de contonuidad de negocio ( bomberos  policia  telecomunicaciones-claro  electricidad).', '2022-07-18', 'sistema'),
(72, 'ES', 'Revision de las politicas para la seguridad de la informacion', 'Es fundamental contar con los roles y responsabilidades frente a la seguridad de la informacion frente a los activo individuales y especificos  las atividades de gestion del riesgo de la si  la aceptacion del riesgos residua  la proteccion de activos  ori', '2022-07-18', 'sistema'),
(73, 'ES', 'Roles y responsabilidades para la seguridad de la Informacion', 'Es fundamental que las funciones y areas de responsabilidad en conflicto se deben separar para evitar modificaciones no autorizadas o no intencional ( validar claves y acceso a los diferentes software).', '2022-07-18', 'sistema'),
(74, 'ES', 'Separacion de Deberes', 'La entidad debe terner unas politicas definidas y socializadas', '2022-07-18', 'sistema'),
(75, 'ES', 'Contacto con las Autoridades', 'La seguridad de la informacion se debera llevar a cada proyecto que se desarrolle  teniendo en cuenta: a- los objetivos de la S.I.  valoracion de los riesgos  seguridad de la informacion en todas las fases.', '2022-07-18', 'sistema'),
(76, 'ES', 'Contacto con grupos de interes especial', 'Realizar contacto con grupos de interes que permitan la retroalimentacion en mejorar prActicas y permaneceer al dia con la informacion de seguridad pertinente.', '2022-07-18', 'sistema'),
(77, 'ES', 'Seguridad de la Informacion en la gestion de proyectos', 'Se debe implementar este control porque es resultado de la promesa de valor a los clientes', '2022-07-18', 'sistema'),
(78, 'ES', 'Politica para Dispositivos Moviles', 'Se considera necesario contar con una politica de dispositivos moviles  debido a que en ellos se contiene informacion de los clientes o prospectos  informacion de alto valor para la empresa. Identificar las amenazas  permitir el borrado remoto de los dato', '2022-07-18', 'sistema'),
(79, 'ES', 'Teletrabajo', 'La empresa actualmente no cuenta con la modalidad de teletrabajo  todas las actividades se realizan en la oficina.', '2022-07-18', 'sistema'),
(80, 'ES', 'Seleccion', 'Adicionar la referencia comercial y una personal  confirmacion de la formacion academica  verificacion de identificacion o pasaporte   antecedentes penales  ', '2022-07-18', 'sistema'),
(81, 'ES', 'Terminos y condiciones del empleo', 'Se debe verificar que el personal ha firmado el acuerdo de confidencialidad y no divulgacion  las responsabilidades  y derechos legales  frente a derechos de autor o legislacion sobre proteccion de datos.  manejo de la informacion  recibida por partes ext', '2022-07-18', 'sistema'),
(82, 'ES', 'Responsabilidades de la Direccion', 'Se debe realizar capacitacion sobre la seguridad de la informacion a todo nivel de la organizaion  con el adecuado uso de los activos y la politica de seguridad de la informacion para lograr un nivel impotante de toma de conciencia.', '2022-07-18', 'sistema'),
(83, 'ES', 'Toma de conciencia, educacion y formacion en Seguridad', 'Se debe elaborar un programa de toma de conciencia en seguridad de la informacion  tenindo en cuenta compromiso de la direccion  conocer y cumplir las reglas y obligaciones  rendicion de cuentas por las acciones y omisiones   procedimeintos basicos de seg', '2022-07-18', 'sistema'),
(84, 'ES', 'Proceso Disciplinario', 'Incluir en el reglamento interno  los procesos por violacion a la seguridad de la informacion.', '2022-07-18', 'sistema'),
(85, 'ES', 'Terminacion o cambio de responsabilidades de Empleo', 'Se debe revisar el contrato  y el acuerdo de confidencialidad debido a las responsabilidades y deberes que siguen siendo validos despues de la terminacion del empleo.', '2022-07-18', 'sistema'),
(86, 'ES', 'Inventario de Activos', 'Se cuenta con el inventario de activos  pero este debe ser revisado a profundida  ademas poder clasificar y asignar propiedad.', '2022-07-18', 'sistema'),
(87, 'ES', 'Propiedad de los Activos', 'Asignar el responsable de los activos y comunicar la responsabilidad   el propietrio puede ser individuo o una entidad como el caso de los hosting.', '2022-07-18', 'sistema'),
(88, 'ES', 'Uso aceptable de los activos', 'Se deben documentar y socializar al personal las reglas para el uso aceptable de la informacion y de activos asociados y hacer politica de escritorio limpio  y pantalla limpia.', '2022-07-18', 'sistema'),
(89, 'ES', 'Devolucion de Activos', 'Elaborar procedimiento para la entrega de los activos utilizados asi como tambien en caso de que el equipo sea propio se debe seguir el procedimiento para transferir la informacion a la organizacion.', '2022-07-18', 'sistema'),
(90, 'ES', 'Clasificacion de la Informacion', 'Realizar la clasificacion de la informacion teniendo en cuenta la confidencialidad  integridad y disponibilidad.', '2022-07-18', 'sistema'),
(91, 'ES', 'Etiquetado de la Informacion', 'Se debe documentar el mecanimos como se realiza eletiquetado de los activos segun la clasificacion identificada.', '2022-07-18', 'sistema'),
(92, 'ES', 'Manejo de Activos', 'Procedimentar el manejo  procesamiento  almacenamiento y comunicacion de la informacion de conformidad a la clasificacion.', '2022-07-18', 'sistema'),
(93, 'ES', 'Gestion de medios removibles', 'Elaborar el procedimiento de medios removibles  adoptando directrices antes  durante y despues de la tranferencia de la informacion.', '2022-07-18', 'sistema'),
(94, 'ES', 'Disposicion de Medios', 'Documentar la disposicion de los medios cuando ya no se requieran.', '2022-07-18', 'sistema'),
(95, 'ES', 'Transferencia de medios fisicos', 'git ', '2022-07-18', 'sistema'),
(96, 'ES', 'Politica del Control de Acceso', 'Elaborar la politica de control de acceso y socializar a todo el personal', '2022-07-18', 'sistema'),
(97, 'ES', 'Acceso a redes y servicios de red', 'Elaborar la politica de uso de las redes y de servicios de red. Para que el personal tenga claro el uso adecuado de la red.', '2022-07-18', 'sistema'),
(98, 'ES', 'Registro y cancelacion de acceso de usuarios', 'Asegurar documentalmente y socializar el proceso formal para el registro y de cancelacion de  registro de usuarios.', '2022-07-18', 'sistema'),
(99, 'ES', 'Suministro de acceso de usuarios', 'Establecer el mecanismo para la autorizacion de acceso al sistema de informacion  no permitir que este activado antes de cumplir el procedimiento.', '2022-07-18', 'sistema'),
(100, 'ES', 'Gestion de Derechos de acceso privilegiado', 'Este derecho asignado debe estar en la politica de acceso  se deben validar los niveles de autorizacion y los accesos priviligiados  deben ser asignado a usuarios diferentes a los de actividades regulares del negocio.', '2022-07-18', 'sistema'),
(101, 'ES', 'Gestion de la Informacion secreta para la autenticacion de los usuarios', 'La empresa no requiere utilizar esta autenticacion debido a que son pocos trabajadores y cada unos tiene asignado su usuario y clave  con el nivel de responsabilidad y de acceso', '2022-07-18', 'sistema'),
(102, 'ES', 'Revision de los derechos de acceso de los usuarios', 'No se ha establecido los criterios y frecuencia para la revision de derechos de acceso.', '2022-07-18', 'sistema'),
(103, 'ES', 'Retiro o ajusste de los derechos de los usuarios', 'En caso de que una persona sea despedida o que se retire  es fundamental documentar el mecanismo para desactivar el acceso y comunicar a las partes interesadas que la persona no continuo en la empresa.', '2022-07-18', 'sistema'),
(104, 'ES', 'Restriccion de acceso a la informacion', 'Esablecer paracticas para estalecer las contrasenas de autenticacion   lograr toma de conciencia  tener en cuenta la herramienta Single Sign On (SSO)', '2022-07-18', 'sistema'),
(105, 'ES', 'Procesamiento de Ingreso Seguro', 'El software debe contener menu para controlar el acceso a la funcionalidad de las aplicaciones.  la metodologia utilizada debe ser en todos los entronos  nivel tecnologico.', '2022-07-18', 'sistema'),
(106, 'ES', 'Sistema de Gestion de contrasenas', 'Documentar el metodo de ingreso seguro   asi como tambien validar que se contenga la fecha  y hora de ingreso  almacenar los ingresos no exitosos desde el ultimo ingreso.', '2022-07-18', 'sistema'),
(107, 'ES', 'Uso de programas utilitarios privilegiados', 'Establecer mecanismo para almacenar las contrasenas y llevar al usuario a registrar contrasenas de calidad y no visualizar la contrasena.', '2022-07-18', 'sistema'),
(108, 'ES', 'Control de acceso a codigos fuente de programas', 'Establecer el mecanimos para para restringir y controlar el uso de los programasutilitarios   logrando la identificacion  autenticacion y autorizacion para los programas.', '2022-07-18', 'sistema'),
(109, 'ES', 'Politica sobre el uso de controles criptograficos', 'Documentar el mecanismo de asegurar el codigo fuente   asi como tambien conservar informacion de la auditoria (Audit log)', '2022-07-18', 'sistema'),
(110, 'ES', 'Gestionde allaves', 'Establecer la politica sobre el uso de controles criptograficos', '2022-07-18', 'sistema'),
(111, 'ES', 'Perimetro de Seguridad Fisica', 'Dentro de la politica de las llaves criptografico se debe contemplar   generacion  almacenamiento  archivo  recuperacion  distribucion  retiro y destruccion.', '2022-07-18', 'sistema'),
(112, 'ES', 'Controles de acceso Fisicos', 'Se consiedera necesario documentar los los perimetro  la oficina cuenta con puerta con llave y camaras de seguridad 24 horas.', '2022-07-18', 'sistema'),
(113, 'ES', 'Seguridad de oficinas, recintos e instalaciones', 'Se considera conveniente contrar con el contrl de acceso a las instalaciones  tanto los funcionarios como los visitantes  dejando registro de la fecha y hora.', '2022-07-18', 'sistema'),
(114, 'ES', 'Proteccion contra ameenazas externas y ambientales', 'La oficina cuenta con barrearas que evita el ingreso al publico no autorizado.', '2022-07-18', 'sistema'),
(115, 'ES', 'Trabajo en areas seguras', 'La empresa cuenta con el plan de emergencia y con la implementacion de SST lo que contempla todo lo necesario para el espacio de trabajo.', '2022-07-18', 'sistema'),
(116, 'ES', 'Areas de despacho y carga', 'La empresa no cuenta con areas seguras  debido a que es una oficina de espacio limitado.', '2022-07-18', 'sistema'),
(117, 'ES', 'Ubicacion y proteccion de los equipos', 'La empresa no cuenta con areas de despacho y carga   la actividad que se realiza es directamente en la oficina y no se trabaja ningun producto de carga  en caso de existir la entrega de alguna compra se realiza en el primer escritorio de la oficina.', '2022-07-18', 'sistema'),
(118, 'ES', 'Servicios de suministro', 'Se considera necesario incluir dentro de la proteccion de los equipos adoptando controles para minimiza el riesgo como incendio  robo  agua  polvo entre otros.', '2022-07-18', 'sistema'),
(119, 'ES', 'Seguridad del cableado', 'Analizar los diferentes riesgos de fallas por servicios suministrados  energia  agua  internet  telefonia  ventilacion  entre otros.', '2022-07-18', 'sistema'),
(120, 'ES', 'Mantenimiento de equipos', 'La oficina cuenta con la seguridad de cableado debidamente protegido y separados entre ellos.', '2022-07-18', 'sistema'),
(121, 'ES', 'Retiro de activos', 'Es conveniente asegurar que los mantenimiento en las fechas definida y llevar a todos los activos.', '2022-07-18', 'sistema'),
(122, 'ES', 'Seguridad de equipos y activos fuera de las instalaciones', 'Se considera necesario activar el mecanismo de retiro de activos con el que cuenta la empresa para asegurar que cada vez que sale el portatil de la oficina queda debidamente registrado y cuando se devuelve.', '2022-07-18', 'sistema'),
(123, 'ES', 'Disposicion segura o reutilizacion de equipos', 'Se debe incluir el control de la saldida de estos activos en la politica de dispositivos moviles con el objetio de contemplar los riesgos por perdida o robo.', '2022-07-18', 'sistema'),
(124, 'ES', 'Equipo de usuario desatendido', 'Se debe documentar el mecanismo por el cual se realiza  no hay dificulta debido a que los debidos almacenamientos son en nube  pero importante tener en cuenta para cuando se restaura una computadora.', '2022-07-18', 'sistema'),
(125, 'ES', 'Pantalla de escritorio limpio y panatalla limpia', 'verificar que la totalidad e los computadores cuenta con contrasena cuando se deja de usar.', '2022-07-18', 'sistema'),
(126, 'ES', 'Procedimientos operacionales y responsabilidades', 'Asegurar la toma de conciencia de la politica de escritorio limpio / pantalla limpia.', '2022-07-18', 'sistema'),
(127, 'ES', 'Procedimientos de operacion documentados', 'Se debe establecer documentalmente y colcoar a disposicion de todos los usuarios  las actividades de encendido  apagado  copias de respaldo  mantenimiento  manejo de medios  seguridad en manejo de correo  rastreo de auditoria   entre otros.', '2022-07-18', 'sistema'),
(128, 'ES', 'Gestion de cambios', 'Establecer el mecanismo para controlar los cambios en los desarrollos de software.', '2022-07-18', 'sistema'),
(129, 'ES', 'Gestion de capacidad', 'Establecer mecanismos de revison periodica para proyectar la capacidad de almacenamiento  eliminacion  de datos obsoletos  optimizar consultas de bases de datos  negacion o restriccion de ancho de banda  entre otros.', '2022-07-18', 'sistema'),
(130, 'ES', 'Separacion de los ambientes de desarrollo, pruebas y operacion', 'Establecer documentalmente cuales serian los ambientes de prueba  asi como tambien asignar en las responsabilidades quienes seria el desarrollador  quien realice las pruebas y quien opere la aplicacion.', '2022-07-18', 'sistema'),
(131, 'ES', 'Controles contra codigos maliciosos', 'Desarrollar procedimiento donde se explique las directrices necesarias para minimizar eventos con codigo malicioso  como el uso de software no autorizado  acceso a paginas web peligrosas o cualquier archivo recibido de dudosa procedencia.', '2022-07-18', 'sistema'),
(132, 'ES', 'Respaldo de la Informacion', 'Se considera conveniente actualizar el procedimeinto de copias de seguridad teniendo en cuenta la ampliacion del alcance y determinar un cronograma para pruebas con regularias de la eficacia de la copia.', '2022-07-18', 'sistema'),
(133, 'ES', 'Registro de eventos', 'Establecer el registro de ingreso  con la adquisicion de hadware que permita el control y registro con las caracteristicas necesarias.', '2022-07-18', 'sistema'),
(134, 'ES', 'Proteccion de la Informacion de Registro', 'Se debe definir el mecanismo de proteccion de los registro.', '2022-07-18', 'sistema'),
(135, 'ES', 'Registros del administrador y del operador', 'Se debe establecer como revisar los registros realizados por el administrador y operador y de esta manera poder rendir cuentas de los usuarios privilegiados.', '2022-07-18', 'sistema'),
(136, 'ES', 'Sincronizacion de relojes', 'Se debe verificar que todas las maquinas esten sincronizdas.', '2022-07-18', 'sistema'),
(137, 'ES', 'Instalacion de software en sistemas operativos', 'Establecer proceedimiento para controlar la instalcion de software en el sistema operativo  para esto es fundamental  tener actualizado la version del SO   ussar software que cuente con respaldo.', '2022-07-18', 'sistema'),
(138, 'ES', 'Gestion de las Vulnerabilidades tecnicas', 'Se debe aplicar el analisis a la totalidad de activos indentificados detectando la vulnerabilidad y los risgos asociados.', '2022-07-18', 'sistema'),
(139, 'ES', 'Restricciones sobre la instalacion de software', 'Se debe establecer politicas estrictas y que deben estar contenpladas el el perfil de cargo de los trabajadores', '2022-07-18', 'sistema'),
(140, 'ES', 'Controles de auditorias de sistemas de Informacion', 'Es conveniente asegurar el alcance de las auditorias  de sistemas de informacion.', '2022-07-18', 'sistema'),
(141, 'ES', 'Controles de Redes', 'Se cuenta con red de internet  esta esta conroaldad por usuario y clave  no se tiene descripcion y responsable.', '2022-07-18', 'sistema'),
(142, 'ES', 'Seguridad de los servicios de Red', 'Se debe asegurar que los equipos cuenten con el antivirus y que la conexion se realice desde la oficina.', '2022-07-18', 'sistema'),
(143, 'ES', 'Separacion de las Redes', 'No se cuenta con dominios de redes  por lo tanto no se ve conveniente la separacion de redes.', '2022-07-18', 'sistema'),
(144, 'ES', 'Politicas y procedimientos de transferencia de Informacion', 'Establecer politica  procedimeintos y controles de trasnferencia  paesar que no es es utilizado directamente en la prestacion de servicio es fundamental definir el canal para realizar esta actividad en caso que se requiera con un cliente.', '2022-07-18', 'sistema'),
(145, 'ES', 'Acuerdos sobre transferencia de informacion', 'Aqui toma valor el contrato con los clientes  agregar dentro del paragrafo acuerdo de transferencia.', '2022-07-18', 'sistema'),
(146, 'ES', 'Mensajeria Electronica', 'Establecer mecanismo de control para proteger la informacion del correo electronico  redes sociales e intercabio de datos.', '2022-07-18', 'sistema'),
(147, 'ES', 'Acuerdos de Confidencialidad o no divulgacion', 'Validar el contrato del personalcon las considereaciones definidas para asegurar que el acuerdo de confidencialidad p de no divulgacion esta dbidamente detallado. ', '2022-07-18', 'sistema'),
(148, 'ES', 'Analisis y especificacion de requisitos de seguridad de la Informacion', ' Se debe establecer los criterios necesarios como entradas al analisis  en los requerimiento s de seguridad de la informacion  como consolidado de indicadores  por incidentes  resultado de las amnazas o la necesidad de proteccion  requerida de los activos', '2022-07-18', 'sistema'),
(149, 'ES', 'Seguridad de servicios de aplicaciones en redes Publicas', 'Aplicar la politica de controles criptograficos                                                                                                                                                                                                                ', '2022-07-18', 'sistema'),
(150, 'ES', 'Proteccion de los servicios de las aplicaciones transaccionales', 'Se debe documentar el mecanismo para la proteccion de transacciones de los servicios de aplicacion.', '2022-07-18', 'sistema'),
(151, 'ES', 'Seguridad de los procesos de desarrollo y soporte', 'Establecer la politica para el desarrollo de software', '2022-07-18', 'sistema'),
(152, 'ES', 'Politica de desarrollo seguro', 'Establecer el mecanismo  para el control de cambios  del software', '2022-07-18', 'sistema'),
(153, 'ES', 'Procedimientos de control de cambios en sistemas', 'Definir el responsable y la frecuencia de revision tecnica de los desarrollos.', '2022-07-18', 'sistema'),
(154, 'ES', 'Revision tecnica de las aplicaciones despues de cambios en la plataforma de operacion', 'Establece cuales serian las restricciones a los cambios.', '2022-07-18', 'sistema'),
(155, 'ES', 'Restriccion en los cambios a los paquetes de software', 'Socializar al personal los principios del sistema de informacion', '2022-07-18', 'sistema'),
(156, 'ES', 'Principios de construccion de sistemas seguros', 'Los ambientes en la oficina para el desaroolo s on seguros.', '2022-07-18', 'sistema'),
(157, 'ES', 'Ambiente de desarrollo seguro', 'Se debe analizar las amenzas de los servicios contratados externamente.', '2022-07-18', 'sistema'),
(158, 'ES', 'Desarrollo contratado externamente', 'Se debe establecer el mecanimso de las pruebas de seguridad que se realizan.', '2022-07-18', 'sistema'),
(159, 'ES', 'Pruebas de seguridad en sistemas', 'Se debe establecer el mecanimso para las pruebas de aceptacion.', '2022-07-18', 'sistema'),
(160, 'ES', 'Pruebas de aceptacion de sistemas', 'Se debe establecer y socializar al personal como se protegen los datos.', '2022-07-18', 'sistema'),
(161, 'ES', 'Proteccion de los datos de prueba', 'Realizar socializacion a los proveedores de la politica de seguridad de la informacion.', '2022-07-18', 'sistema'),
(162, 'ES', 'Politica de seguridad de la informacion para las relaciones con los proveedores', 'Definir la responsabilidad y alcance en el acuerdo con los proveedores.', '2022-07-18', 'sistema'),
(163, 'ES', 'Tratamiento de la seguridad dentro de los acuerdos con proveedores', 'Se debe establecer los canales de comunicacion en pro de segurar la cadena de suministros.', '2022-07-18', 'sistema'),
(164, 'ES', 'Cadena de Suministro de tecnologia de informacion y comunicaciones', 'Se cuenta con un mecanismo para realizar seguimiento  revision y evaluar a los proveedores ', '2022-07-18', 'sistema'),
(165, 'ES', 'Seguimiento y revision de los servicios de los proveedores', 'El proveedor debe infromar los cmabios que realicen en el servicio.', '2022-07-18', 'sistema'),
(166, 'ES', 'Gestion de cambios en los servicios de los proveedores', 'Se debe establecer el responsables y actualizar el procedimiento de incidentes.', '2022-07-18', 'sistema'),
(167, 'ES', 'Resposabilidades y procedimientos', 'Se cuenta con un metodo para registrar los eventos.', '2022-07-18', 'sistema'),
(168, 'ES', 'Reporte de eventos de seguridad de la informacion', 'Se cuenta con el mecanismo para reportar por parte de los trabajadores debilidad identificada en el sistema de gestion de SI.', '2022-07-18', 'sistema'),
(169, 'ES', 'Reportes de debilidades de seguridad de la informacion', 'Se cuenta con un mecanismo para el tratamiento de los eventos y estadisticamente tambien los indicadores.', '2022-07-18', 'sistema'),
(170, 'ES', 'Evaluacion de eventos de seguridad de la informacion y decisiones sobre ellos', 'Se cuenta con el mecanismo para la respuesta a los incidentes', '2022-07-18', 'sistema'),
(171, 'ES', 'Respuesta a incidentes de seguridad de la Informacion', 'Se debe establecer la frecuencia para validar el arendizaje adquirido', '2022-07-18', 'sistema'),
(172, 'ES', 'Aprendizaje obtenido de los incidentes de seguridad de la Informacion', 'Las evidencias son fundamentales para realizar el analisis de cualquier evento.', '2022-07-18', 'sistema'),
(173, 'ES', 'Recoleccion de Evidencia', 'Desde el plan estrategico y la informacion documentada se logra implemntar la continuidad de seguridad de la informacion.', '2022-07-18', 'sistema'),
(174, 'ES', 'Planificacion de la continuidad de la seguridad de la Informacion', 'Establecer los controles de continuidad de la seguridad de la informacion con periodos definidos y poder validar la recuperacion de desastres.', '2022-07-18', 'sistema'),
(175, 'ES', 'Implementacion de la continuidad de la Seguridad de la Informacion', 'Iniciar a realizar los procesos de desarrollo con redundancia  con el objetivo de umplir con la disponibilidad.', '2022-07-18', 'sistema'),
(176, 'ES', 'Verificacion, revision y evaluacion de la continuidad de seguridad de la Informacion', 'Se han definido en el listado maestro de documentos externos.', '2022-07-18', 'sistema'),
(177, 'ES', 'Disponibilidad de instalaciones de procesamiento de informacion', 'Establecer y publicar la politica de propiesdad intelectual', '2022-07-18', 'sistema'),
(178, 'ES', 'Identificacion de la legislacion aplicable y de los requisitos contractuales', 'Se debe clasificar los registros  los cuales podrian ser registros contables  registros de transacciones  registro de auditoria y procedimeintos operacionales.', '2022-07-18', 'sistema'),
(179, 'ES', 'Derechos de propieedad Intelectual', 'Establecer politica de proteccion de datos como indica la ley y apoyado en lo referenciado en el ISO 29100', '2022-07-18', 'sistema'),
(180, 'ES', 'Proteccion de Registros', 'establecer las resticciones sobre el uso de la criptografia', '2022-07-18', 'sistema'),
(181, 'ES', 'Privacidad y proteccion de informacion de datos personales', 'Se cuenta con un programa de auditoria   pero no se ha incluido el SGSI  lo que seria necesario para poder dar cumplimiento a este item', '2022-07-18', 'sistema'),
(182, 'ES', 'Reglamentacion de Controles Criptograficos', 'Se cuenta con los procedimeintos documentados para dejar evidencia de las acciones necesarias para dar cumplimiento a las politicas y normas de seguridad.', '2022-07-18', 'sistema'),
(183, 'ES', 'Revision Independiente de la Seguridad de la Informacion', 'Se deben establecer el mecanismo para realizar las revisiones de cumplimiento tecnico.', '2022-07-18', 'sistema'),
(184, 'ES', 'Cumplimiento con las politicas y normas de seguridad', '', '2022-07-18', 'sistema'),
(185, 'ES', 'Revision del cumplimiento tecnico', '', '2022-07-18', 'sistema');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_proceso_noconformes`
--

CREATE TABLE `tb_proceso_noconformes` (
  `id` int(11) NOT NULL,
  `proceso` varchar(255) CHARACTER SET latin1 NOT NULL,
  `cargo_id` int(11) NOT NULL,
  `TbCondiciones_id` int(11) NOT NULL,
  `descEvento` varchar(1000) CHARACTER SET latin1 NOT NULL,
  `lugarEvento` varchar(255) CHARACTER SET latin1 DEFAULT NULL,
  `estado` varchar(50) CHARACTER SET latin1 NOT NULL,
  `fechaRegistro` date NOT NULL,
  `fechaValidacion` date DEFAULT NULL,
  `respuesta` varchar(1000) CHARACTER SET latin1 DEFAULT NULL,
  `usuario` varchar(255) CHARACTER SET latin1 DEFAULT NULL,
  `observacion_1` varchar(1000) CHARACTER SET latin1 DEFAULT NULL,
  `observacion` varchar(1000) CHARACTER SET latin1 DEFAULT NULL,
  `fechaRespuesta` date DEFAULT NULL,
  `num_accion_corr` int(11) DEFAULT NULL,
  `conciliacion` varchar(10) DEFAULT NULL,
  `taccion` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `tb_proceso_noconformes`
--

INSERT INTO `tb_proceso_noconformes` (`id`, `proceso`, `cargo_id`, `TbCondiciones_id`, `descEvento`, `lugarEvento`, `estado`, `fechaRegistro`, `fechaValidacion`, `respuesta`, `usuario`, `observacion_1`, `observacion`, `fechaRespuesta`, `num_accion_corr`, `conciliacion`, `taccion`) VALUES
(1, 'GA', 4, 32, 'asfafasfasf', 'safsafsaf', 'Revisión', '2022-07-21', '0000-00-00', ' \"Lo necesitamos que responda: “por qué paso, que hacer para que no vuelva a pasar y cuando se realiza\". ', '', NULL, '', '2022-07-22', 0, 'no', 'Corrección'),
(2, 'GA', 4, 32, 'asfafasfasf', 'safsafsaf', 'Revisión', '2022-07-21', '0000-00-00', ' \"Lo necesitamos que responda: “por qué paso, que hacer para que no vuelva a pasar y cuando se realiza\". ', '', NULL, '', '0000-00-00', 0, 'no', 'Corrección'),
(3, 'GA', 4, 22, 'xcvxcvcvxcvxcvxcv', 'cxvxvxcvxcvx', 'Rechazado', '2022-07-21', '0000-00-00', '', 'alexander orejuela', NULL, '', '0000-00-00', 0, '', ''),
(4, 'GA', 4, 22, 'asdasdasdsadsa', 'sadasdas', 'Aprobacion', '2022-07-21', '2022-07-22', '', 'alexander orejuela', NULL, 'saasdfasdfdsfdsfsdafdfads', '0000-00-00', 0, '', ''),
(5, 'GA', 4, 32, 'fdfsdsdfdsfsdf', 'gsdsdfsddsfdf', 'Revisión', '2022-07-21', NULL, ' \"Lo necesitamos que responda: “por qué paso, que hacer para que no vuelva a pasar y cuando se realiza\". ', 'alexander orejuela', NULL, NULL, '0000-00-00', 0, 'no', 'Corrección'),
(6, 'GA', 4, 45, 'sadadsadsadsa', 'adsadsadsad', 'Aprobacion', '2022-07-22', '2022-07-22', '', 'alexander orejuela', NULL, 'asdaddadasasdsdafsdfdsfdsfadsdfds', '0000-00-00', 0, '', '');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `cargos`
--
ALTER TABLE `cargos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `categoriaeventos`
--
ALTER TABLE `categoriaeventos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `estadisticas`
--
ALTER TABLE `estadisticas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `indicadors`
--
ALTER TABLE `indicadors`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `metas`
--
ALTER TABLE `metas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `modelos`
--
ALTER TABLE `modelos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `sgcexternos`
--
ALTER TABLE `sgcexternos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `solicitudes`
--
ALTER TABLE `solicitudes`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tb_condiciones`
--
ALTER TABLE `tb_condiciones`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tb_proceso_noconformes`
--
ALTER TABLE `tb_proceso_noconformes`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `cargos`
--
ALTER TABLE `cargos`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT de la tabla `categoriaeventos`
--
ALTER TABLE `categoriaeventos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `estadisticas`
--
ALTER TABLE `estadisticas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=254;

--
-- AUTO_INCREMENT de la tabla `indicadors`
--
ALTER TABLE `indicadors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT de la tabla `metas`
--
ALTER TABLE `metas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT de la tabla `modelos`
--
ALTER TABLE `modelos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de la tabla `sgcexternos`
--
ALTER TABLE `sgcexternos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `solicitudes`
--
ALTER TABLE `solicitudes`
  MODIFY `id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `tb_condiciones`
--
ALTER TABLE `tb_condiciones`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=186;

--
-- AUTO_INCREMENT de la tabla `tb_proceso_noconformes`
--
ALTER TABLE `tb_proceso_noconformes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
