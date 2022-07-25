-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 24-07-2022 a las 20:07:47
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
-- Base de datos: `snu`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cargos`
--

CREATE TABLE `cargos` (
  `id` int(11) NOT NULL,
  `cliente_id` int(11) DEFAULT NULL,
  `codigo` int(10) NOT NULL,
  `cargo` tinytext COLLATE utf8_spanish_ci NOT NULL,
  `proceso_id` varchar(50) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci COMMENT='cargos de empleados';

--
-- Volcado de datos para la tabla `cargos`
--

INSERT INTO `cargos` (`id`, `cliente_id`, `codigo`, `cargo`, `proceso_id`) VALUES
(1, 21, 1, 'Sin Cargo', 'N/A'),
(2, 21, 2, 'DIRECTOR GENERAL', 'GD'),
(3, 21, 3, 'ASESOR DE CALIDAD', 'GC'),
(4, 21, 4, 'DIRECTOR ADMINISTRATIVO Y FINANCIERO', 'GA'),
(5, 21, 5, 'DIRECTOR ACADEMICO', 'GP'),
(6, 21, 6, 'ASISTENTE DE PUBLICIDAD', 'GA'),
(7, 21, 7, 'ASISTENTE COMERCIAL', 'GA'),
(8, 21, 8, 'ASISTENTE LOGISTICA', 'GA'),
(9, 21, 9, 'ASISTENTE ADMINISTRATIVO Y CONTABLE', 'GA'),
(10, 21, 10, 'ASESOR EDUCATIVO', 'GP'),
(11, 21, 11, 'ASISTENTE ACADEMICO', 'GP'),
(12, 21, 12, 'ASISTENTE OCUPACIONAL', 'GA'),
(13, 21, 13, 'ASISTENTE DE BIENESTAR', 'GB'),
(14, 13, 1, 'Sin Cargo', 'N/A'),
(15, 13, 2, 'DIRECTOR GENERAL', 'GD'),
(16, 13, 3, 'ASESOR DE CALIDAD', 'GC'),
(17, 13, 4, 'DIRECTOR ADMINISTRATIVO Y FINANCIERO', 'GA'),
(18, 13, 5, 'DIRECTOR ACADEMICO', 'GP'),
(19, 13, 6, 'ASISTENTE DE PUBLICIDAD', 'GA'),
(20, 13, 7, 'ASISTENTE COMERCIAL', 'GA'),
(21, 13, 8, 'ASISTENTE LOGISTICA', 'GA'),
(22, 13, 9, 'ASISTENTE ADMINISTRATIVO Y CONTABLE', 'GA'),
(23, 13, 10, 'ASESOR EDUCATIVO', 'GP'),
(24, 13, 11, 'ASISTENTE ACADEMICO', 'GP'),
(25, 13, 12, 'ASISTENTE OCUPACIONAL', 'GP'),
(26, 13, 13, 'ASISTENTE DE BIENESTAR', 'GP'),
(27, 3, 1, 'Sin Cargo', 'N/A'),
(28, 3, 2, 'DIRECTOR GENERAL', 'GD'),
(29, 3, 3, 'ASESOR CONTABLE', 'GF'),
(30, 3, 4, 'ASESOR JURIDICA', 'GF'),
(31, 3, 5, 'ASESOR CALIDAD', 'GC'),
(32, 3, 6, 'DIRECTOR COMERCIAL', 'GM'),
(33, 3, 7, 'DIRECTOR ACADEMICO', 'GP'),
(34, 3, 8, 'DIRECTOR ADMINISTRATIVO', 'GF'),
(35, 3, 9, 'ASESOR DE CALIDAD', 'GC'),
(36, 3, 10, 'SUBGERENTE COMERCIAL', 'GM'),
(37, 3, 11, 'SUPERVISION COMERCIAL', 'GM'),
(38, 3, 12, 'ASESOR COMERCIAL', 'GM'),
(39, 3, 13, 'COORDINADOR ACADEMICO', 'GP'),
(40, 3, 14, 'SECRETARIA ACADEMICA', 'GP'),
(41, 3, 15, 'DOCENTE', 'GP'),
(42, 3, 16, 'ESTUDIANTES', 'GP'),
(43, 3, 17, 'CARTERA', 'GF'),
(44, 3, 18, 'RECEPCION', 'GF'),
(45, 3, 19, 'MENSAJERO', 'GF'),
(46, 3, 20, 'SERVICIOS GENERALES', 'GF'),
(47, 6, 1, 'GERENTE-DIRECTOR DE OBRA', '1'),
(48, 8, 1, 'ADMINISTRADOR', 'GD'),
(49, 5, 1, 'directora de talento humano', 'TH'),
(50, 5, 2, 'Director comercial\n', ''),
(51, 5, 3, 'Director tecnico y calidad\n', ''),
(52, 5, 4, 'Director contabilidady financiero\n', ''),
(53, 5, 5, 'Director operaciones\n', ''),
(54, 5, 6, 'Director abastecimiento\n', ''),
(55, 5, 7, 'Director gestion humana\n', ''),
(56, 5, 8, 'Jefe gestora adminsitrativa', ''),
(57, 5, 0, 'Diseñador grafico', ''),
(58, 5, 0, 'Asesor comercial', ''),
(59, 5, 0, 'Analista de calidad', ''),
(60, 5, 0, 'Analista de datos', ''),
(61, 5, 0, 'Asistente de diseño', ''),
(62, 5, 0, 'Auxiliar comercial', ''),
(63, 5, 0, 'Asistente servicio al cliente', ''),
(64, 5, 0, 'Auxiliar tecnico\n', ''),
(65, 5, 0, 'Auxiliar tecnico', ''),
(66, 5, 0, 'Jefe inventarios', ''),
(67, 5, 0, 'Tesorero', ''),
(68, 5, 0, 'Analista contabilidad I, II, III', ''),
(69, 5, 0, 'Analista cartera', ''),
(70, 5, 0, 'Auxiliar inventarios', ''),
(71, 5, 0, 'Asistente de gerencia', ''),
(72, 5, 0, 'Asistente DG SI', ''),
(73, 5, 0, 'Auxiliar SI aseo', ''),
(74, 5, 0, 'Auxiliar SI aseo', ''),
(75, 5, 0, 'Auxiliar SI aseo', ''),
(76, 5, 0, 'Auxiliar SI CED\n', ''),
(77, 5, 0, 'Analista logistica', ''),
(78, 5, 0, 'Auxiliar bodega\n', ''),
(79, 5, 0, 'Supernumerario\n', ''),
(80, 5, 0, 'Coordiandor SG-SST\n', ''),
(81, 5, 0, 'Auxiliar gestion humana\n', ''),
(82, 5, 0, 'Recepcionista\n', ''),
(83, 16, 1, 'DIRECTOR ADMINISTRATIVO', 'GI'),
(84, 16, 2, 'DIRECTOR DE PROYECTOS', 'GD'),
(85, 16, 3, 'ASISTENTE CONTABLE', 'GF'),
(86, 16, 4, 'ASISTENTE DE BIENESTAR', 'GB'),
(87, 16, 5, 'ASISTENTE TECNOLOGICO', 'GP'),
(88, 16, 6, 'ASISTENTE COMERCIAL', 'GM'),
(89, 9, 1, 'DIRECTOR DE CALIDAD', 'GC'),
(90, 9, 2, 'COORDINADOR DE CALIDAD', 'GC'),
(91, 11, 15, 'DIRECTOR DE CALIDAD', 'GC'),
(92, 11, 1, 'DIRECTOR DE GENERAL', 'GD'),
(93, 11, 1, 'Facilitador De Operaciones ', 'GC'),
(94, 11, 2, 'Coordinador De Sistemas ', 'GC'),
(95, 11, 3, 'Director Artistico ', 'GC'),
(96, 11, 4, 'Recepcionista', 'GC'),
(97, 11, 5, 'Subgerente', 'GC'),
(98, 11, 6, 'Auxiliar De Talento Humano ', 'GC'),
(99, 11, 7, 'Director Tecnico ', 'GC'),
(100, 11, 8, 'Contadora ', 'GA'),
(101, 11, 9, 'Coordinador Academica', 'GP'),
(102, 11, 10, 'Asesor Comercial ', 'GC'),
(103, 11, 11, 'Jefe De Talento Humano ', 'GB'),
(104, 11, 12, 'Directora Academica', 'GC'),
(105, 11, 13, 'Director General ', 'GD'),
(106, 11, 14, 'Asesora Comercial ', 'GC'),
(107, 16, 7, 'ABOGADO', 'GD'),
(108, 15, 1, 'ASESOR DE SGI', 'GI'),
(109, 0, 0, 'cargo', 'sgc_id'),
(110, 15, 2, 'DIRECCION ASISTENCIAL', 'GD'),
(111, 15, 3, 'DIRECCION ADMINISTRATIVO', 'GD'),
(112, 15, 4, 'AUXILIAR ACTIVIDADES FISICAS', 'GB'),
(113, 15, 5, 'GESTOR DE ADMISION', 'GA'),
(114, 15, 6, 'LIDER DE FACTURACION', 'GA'),
(115, 15, 7, 'GESTOR AGENDAMIENTO', 'GA'),
(116, 15, 8, 'LIDER ADMINISTRATIVO', 'GA'),
(117, 15, 9, 'LIDER GESTION HUMANA', 'GB'),
(118, 15, 10, 'GESTOR ADMINISTRATIVO', 'GF'),
(119, 15, 11, 'SERVICIOS GENERALES', 'GB'),
(120, 15, 12, 'AUXILIAR ACTIVIDADES FISICAS', 'GB'),
(121, 15, 13, 'GESTOR AUDITORIA FACTURACION', 'GA'),
(122, 15, 14, 'LIDER DE ADMISIONES', 'GA'),
(123, 15, 15, 'GESTOR AUDITORIA DE PROCESOS', 'GA'),
(124, 15, 16, 'GESTOR PROCESOS CLINICOS', 'GS'),
(125, 15, 17, 'GESTOR PROCESOS ADMINISTRATIVOS', 'GF'),
(126, 15, 18, 'GESTOR COMUNICACIONES INTERNAS', 'GB'),
(127, 15, 19, 'ANALISTA DE GESTION DE INFORMACION', 'GB'),
(128, 15, 20, 'SERVICIO AL CLIENTE EN SALA SIAU', 'GA'),
(129, 15, 21, 'GESTOR COMUNICACIONES INTERNAS', 'GB'),
(130, 15, 22, 'ASESOR SST', 'GI'),
(131, 12, 1, 'ASISTENTE COMERCIAL', 'PC'),
(132, 12, 2, 'COORDINADOR ACADEMICO', 'PP'),
(133, 12, 2, 'COORDINADOR DE TALENTO HUMANO', 'PT'),
(134, 12, 2, 'SECRETARIO ACADEMICO', 'PP'),
(135, 17, 1, 'DIRECTOR', 'GI'),
(136, 17, 1, 'ASISTENTES', 'GI'),
(137, NULL, 0, 'Sin Cargo123', 'GB');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE `clientes` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) DEFAULT NULL,
  `direccion` varchar(500) DEFAULT NULL,
  `telefono` varchar(100) DEFAULT NULL,
  `correos` text DEFAULT NULL,
  `salario` bigint(20) DEFAULT NULL,
  `matriz` varchar(500) DEFAULT NULL,
  `fechainicio` date NOT NULL,
  `rector` varchar(255) DEFAULT NULL COMMENT 'Escribir el nombre del rector',
  `rect_telefono` varchar(50) DEFAULT NULL COMMENT 'telefono del recto',
  `filename` varchar(1000) DEFAULT NULL,
  `dir` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Volcado de datos para la tabla `clientes`
--

INSERT INTO `clientes` (`id`, `nombre`, `direccion`, `telefono`, `correos`, `salario`, `matriz`, `fechainicio`, `rector`, `rect_telefono`, `filename`, `dir`) VALUES
(12, 'Carrusel', '-----', '----------', 'gerencia@calidadsg.com~gerencia@calidadsg.com~gerencia@calidadsg.com', NULL, NULL, '0000-00-00', '', '', 'carrusel.png', 'img/uploads/colegio/filename'),
(13, 'LA ANUNCIACIÓN', 'Calle 56#1355', '4380547', 'rectorianunciacion@gmail.com~asesorsgci@gmail.com~anunciaciondocumental@gmail.com', NULL, NULL, '0000-00-00', 'Laura Ines Mena Jacome', '', 'logoAnun.jpg', 'img/uploads/colegio/filename'),
(14, 'PIO', 'AVENIDA 2 NORTE # 24N - 91', '6682452', 'jhonma1@yahoo.com~admitivo.poli.2017@gmail.com~asistacademicapio@gmail.com', 900000, NULL, '0000-00-00', 'JHON MAURICIO GUERRERO SOTO', '3184146564', 'Logo_PIO_2.png', 'img/uploads/colegio/filename'),
(15, 'AFICENTER', 'Cra 43A # 5A-30', '3678', 'wilmergiron.aficenter@gmail.com~~', 900000, NULL, '0000-00-00', 'YAMILETH', '3167838907', 'LOGO_AFICENTER1.png', 'img/uploads/colegio/filename'),
(16, 'FIRMA CALIDADSG', 'Cra 28 #28-66', '3116003382', 'asesorsgci@gmail.com~~', NULL, NULL, '0000-00-00', 'FABIAN MEZA', '3184146564', 'LOGO_FIRMA.png', 'img/uploads/colegio/filename'),
(17, 'ARINGENIERIA', 'CALLE 13 #66 BIS-57', '3104900167', 'arfoing.civil@hotmail.com~info@ARINGENIERIA.com~info@ARINGENIERIA.com', 890000, NULL, '0000-00-00', 'ALBERTO RICO FRANCO', '123', 'AR_INGENIERO.jpg', 'img/uploads/colegio/filename'),
(18, 'BM Industrias Metalmecanica', 'Carrera 40 #13-45', '3167918509', 'bmindustrias@gmail.com~~', 1000000, NULL, '0000-00-00', 'Catherine', '3167918509', 'logo_BM_industrias.jpg', 'img/uploads/colegio/filename'),
(19, 'SOLUCIONES CONTABLES', 'CALE', '3116003382', 'asesorsgci@gmail.com~~', NULL, NULL, '0000-00-00', 'WILLIAM', '3116003382', 'LOGO_WSC.png', 'img/uploads/colegio/filename'),
(20, 'INSTITUCION EDUCATIVA ASEVIS', 'Carrera 39 # 9-62', '3183708713', 'asevis.educacion@gmail.com~~', 945001, NULL, '0000-00-00', 'VICTOR RUIZ', '3183708713', 'Logo_asevis_R.png', 'img/uploads/colegio/filename'),
(21, 'CALIDAD DEV', 'CALIDAD DEV', '123456789', 'DESARROLLO@CALIDADSG.COM~~', 987000, NULL, '0000-00-00', 'CALIDAD DEV', '45698', 'software_developer_icon_png_2_Transparent_Images.png', 'img/uploads/colegio/filename'),
(22, 'INFA', 'avenida 3n 38n 29', '6647482', 'direccionamiento@institutofatima.edu.co~~', 980000, NULL, '0000-00-00', 'yirle an sanchez', '3017257525', 'cropped_logo_infa_v5.png', 'img/uploads/colegio/filename'),
(23, 'HOGAR GERIATRICO TU CASA', '1', '1', 'INFO@INFO.COM~INFO@INFO.COM~INFO@INFO.COM', 1117000, NULL, '0000-00-00', 'A', '8956', 'LOGO_FUND.jpg', 'img/uploads/colegio/filename'),
(24, 'FERTILITY CARE COLOMBIA S.A.S', 'CR 30 CORREDOR UNIVERSITARIO 1 850 OF 729', '3858633', 'fertilitycare.col@gmail.com~fertilitycare.col@gmail.com~fertilitycare.col@gmail.com', NULL, NULL, '0000-00-00', 'ANA MARIA VARGAS GARCIA', '3858633', 'logo_091.png', 'img/uploads/colegio/filename'),
(25, 'PFIV', 'CALLE 15 22 B 12', '3004355886', 'proyectosnuevos1021@gmail.com~proyectosnuevos1021@gmail.com~proyectosnuevos1021@gmail.com', 1000000, NULL, '0000-00-00', 'MARLY PALACIOS MORENO', '3003579615', 'LOGO.jpg', 'img/uploads/colegio/filename'),
(26, 'COLOMBO', 'Av. cra 70 # 103 – 25, Bogotá, Colombia', '3186321549-3177368635', 'educacion@colombojaponesa.comm~gerente.admon@colombojaponesa.comm~', 1, NULL, '0000-00-00', 'Ninfer Betancourt', '317-6431963', 'descarga.jpg', 'img/uploads/colegio/filename'),
(27, 'ALCIFRONTE', 'Calle 44 No 12E-13 B/Chapinero', '316 493 6548', 'ferchigu@hotmail.com~info@escueladeoperarios.com.co~', NULL, NULL, '0000-00-00', 'Fernando Chica Gutíerrez', '3163851936', 'logo.jpeg', 'img/uploads/colegio/filename'),
(28, 'Corporación Universal de los Andes', '25258', '252525', 'cua@info.com~cua@info.com~cua@info.com', 1000000, NULL, '0000-00-00', 'Ruben dario narvaez', '', 'cua.png', 'img/uploads/colegio/filename');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `phinxlog`
--

CREATE TABLE `phinxlog` (
  `version` bigint(20) NOT NULL,
  `migration_name` varchar(100) DEFAULT NULL,
  `start_time` timestamp NULL DEFAULT NULL,
  `end_time` timestamp NULL DEFAULT NULL,
  `breakpoint` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `phinxlog`
--

INSERT INTO `phinxlog` (`version`, `migration_name`, `start_time`, `end_time`, `breakpoint`) VALUES
(20220613165030, 'Initial', '2022-06-13 21:50:30', '2022-06-13 21:50:30', 0);

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
-- Estructura de tabla para la tabla `rols`
--

CREATE TABLE `rols` (
  `id` int(11) NOT NULL,
  `rol` varchar(255) NOT NULL,
  `created` date NOT NULL,
  `modified` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `rols`
--

INSERT INTO `rols` (`id`, `rol`, `created`, `modified`) VALUES
(1, 'root', '0000-00-00', '0000-00-00'),
(2, 'administrador', '0000-00-00', '0000-00-00'),
(3, 'funcionario\r\n', '0000-00-00', '0000-00-00'),
(4, 'proveedor', '0000-00-00', '0000-00-00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `squemas`
--

CREATE TABLE `squemas` (
  `id` int(11) NOT NULL,
  `squema` varchar(255) NOT NULL,
  `cliente_id` varchar(255) NOT NULL,
  `created` date NOT NULL,
  `modified` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `squemas`
--

INSERT INTO `squemas` (`id`, `squema`, `cliente_id`, `created`, `modified`) VALUES
(1, 'document_prueba1c', '21', '2018-12-04', '2021-09-27'),
(2, 'document_prueba2c', '2', '2018-12-04', '2018-12-04'),
(3, 'document_lessaru_c', '3', '2018-12-21', '2018-12-21'),
(4, 'document_prueba', '', '2020-01-19', '2020-01-19'),
(5, 'document_carrucel', '12', '2020-01-01', '2020-02-27'),
(6, 'document_anunciacion_c', '13', '2020-05-04', '2020-05-04'),
(7, 'document_poli_c', '14', '2020-08-26', '2020-10-05'),
(8, 'document_aficenter', '15', '2020-09-25', '2020-09-25'),
(9, 'document_calidadsg', '16', '2020-10-05', '2020-10-06'),
(10, 'document_aringenieria', '17', '2020-12-29', '2020-12-29'),
(11, 'document_bm', '18', '2021-03-29', '2021-03-29'),
(12, 'document_swc', '19', '2021-04-21', '2021-04-21'),
(13, 'document_asevis', '20', '2021-07-12', '2021-07-12'),
(14, 'document_desarrollo', '21', '2021-09-27', '2021-09-27'),
(15, 'document_dev', '', '2021-09-27', '2021-09-27'),
(16, 'document_doc_infa', '22', '2021-10-26', '2022-05-27'),
(17, 'document_htucasa', '23', '2021-12-21', '2022-01-11'),
(18, 'document_fertilitycare', '24', '2022-01-11', '2022-01-11'),
(19, 'documentalsg_colombo', '26', '2022-05-02', '2022-05-02'),
(20, 'documentalsg_alcifronte', '27', '2022-05-02', '2022-05-02'),
(21, 'documentalsg_polivalle', '25', '2022-05-03', '2022-05-04'),
(22, 'documentalsg_cua', '28', '2022-06-14', '2022-06-14');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `nombres` varchar(255) NOT NULL,
  `apellidos` varchar(255) NOT NULL,
  `identificacion` int(11) NOT NULL,
  `role_id` int(255) NOT NULL,
  `cargo_id` int(11) NOT NULL,
  `colegio_id` int(11) DEFAULT NULL,
  `squema_id` int(11) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `activo` int(11) NOT NULL,
  `created` date NOT NULL,
  `modified` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `nombres`, `apellidos`, `identificacion`, `role_id`, `cargo_id`, `colegio_id`, `squema_id`, `email`, `username`, `password`, `activo`, `created`, `modified`) VALUES
(1, 'DIEGO', 'BONILLA', 16648857, 2, 13, 13, 6, 'd.diego.bonilla@laanunciacioncali.edu.co', 'dbonilla', '$2a$10$hMlaWPud6hw/eVaegRC.eOTVmd2AnymrAuxNKty4ui1PJDeOfDNj6', 1, '2021-05-12', '2022-05-06'),
(2, 'ENEYDA', 'BALLESTEROS MADARIAGA', 32442847, 2, 13, 13, 6, 'd.htaeneyda.ballesteros@laanunciacioncali.edu.co', 'eballesteros', '$2a$10$hMlaWPud6hw/eVaegRC.eOTVmd2AnymrAuxNKty4ui1PJDeOfDNj6', 1, '2021-05-12', '2022-05-06'),
(3, 'EDITH MARGOTH', 'VALLEJOS ZUÑIGA', 36862296, 2, 3, 13, 6, 'talento@laanunciacioncali.edu.co', 'Evallejos', '$2a$10$9OvwiAzyT.jkg8r5NrhxvuH6wITVJ.MgR6MklwJ3XJb4u9TmGu0Hu', 0, '2021-05-12', '2022-05-06'),
(4, 'SANDRA MILENA ', 'SANCHEZ GONZALEZ', 38642569, 2, 13, 13, 6, 'd.sandra.sanchez@laanunciacioncali.edu.co', 'ssanchez', '$2a$10$hMlaWPud6hw/eVaegRC.eOTVmd2AnymrAuxNKty4ui1PJDeOfDNj6', 1, '2021-05-12', '2022-05-06'),
(5, 'NOHORA ELENA', 'RODRIGUEZ ANGEL', 31999639, 2, 13, 13, 6, 'd.nohora.rodriguez@laanunciacioncali.edu.co', 'nrodriguez', '$2a$10$hMlaWPud6hw/eVaegRC.eOTVmd2AnymrAuxNKty4ui1PJDeOfDNj6', 1, '2021-05-12', '2022-05-06'),
(6, 'JOSE GREGORIO', 'RENDON OROZCO', 94427640, 2, 13, 13, 6, 'd.jose.rendon@laanunciacioncali.edu.co', 'jrendon', '$2a$10$hMlaWPud6hw/eVaegRC.eOTVmd2AnymrAuxNKty4ui1PJDeOfDNj6', 1, '2021-05-12', '2022-05-06'),
(7, 'GLORIA INES', 'RAMIREZ  VELASQUEZ', 42068864, 2, 8, 13, 6, 'gloriaines@gmail.com', 'gramirez', '$2a$10$hMlaWPud6hw/eVaegRC.eOTVmd2AnymrAuxNKty4ui1PJDeOfDNj6', 1, '2021-05-12', '2022-05-06'),
(8, 'MARIS', 'QUINONES ESTUPIÑAN', 66998391, 2, 13, 13, 6, 'd.maris.quinonez@laanunciacioncali.edu.co', 'mquinones', '$2a$10$hMlaWPud6hw/eVaegRC.eOTVmd2AnymrAuxNKty4ui1PJDeOfDNj6', 1, '2021-05-12', '2022-05-06'),
(9, 'CINDI JOHANNA', 'OSPINA POSADA', 1130671743, 2, 13, 13, 6, 'd.cindy.ospina@laanunciacioncali.edu.co', 'cospina', '$2a$10$hMlaWPud6hw/eVaegRC.eOTVmd2AnymrAuxNKty4ui1PJDeOfDNj6', 1, '2021-05-12', '2022-05-06'),
(10, 'SHARON JULIANA', 'ORTIZ', 1151965759, 2, 13, 13, 6, 'd.sharon.ortiz@laanunciacioncali.edu.co', 'sortiz', '$2a$10$hMlaWPud6hw/eVaegRC.eOTVmd2AnymrAuxNKty4ui1PJDeOfDNj6', 1, '2021-05-12', '2022-05-06'),
(11, 'JUAN DANYSTER', 'MONTOYA', 1144040011, 2, 13, 13, 6, 'd.juan.montoya@laanunciacioncali.edu.co', 'jmontoya', '$2a$10$hMlaWPud6hw/eVaegRC.eOTVmd2AnymrAuxNKty4ui1PJDeOfDNj6', 1, '2021-05-12', '2022-05-06'),
(12, 'ALVARO PIO', 'MOMPOTES', 6265875, 2, 8, 13, 6, '?alvaropio2009@hotmail.com', 'amompotes', '$2a$10$hMlaWPud6hw/eVaegRC.eOTVmd2AnymrAuxNKty4ui1PJDeOfDNj6', 1, '2021-05-12', '2022-05-06'),
(13, 'ANGELICA MARIA', 'LUGO CARDONA', 1143837717, 2, 13, 13, 6, 'd.angelica.lugo@laanunciacioncali.edu.co', 'alugo', '$2a$10$hMlaWPud6hw/eVaegRC.eOTVmd2AnymrAuxNKty4ui1PJDeOfDNj6', 1, '2021-05-12', '2022-05-06'),
(14, 'BILI ALEXER', 'JALVIN YACUMAL', 1061696252, 2, 13, 13, 6, 'd.bili.jalvin@laanunciacioncali.edu.co', 'Bjalvin', '$2a$10$CT.BU4TVfX/YnQNMwizOsOyUXCrLUr3gCfbahUEscK88pnMRrPXg2', 0, '2021-05-12', '2022-05-06'),
(15, 'FLORENTINA NOEMI', 'HUAMAN LIZARME ', 289724, 2, 13, 13, 6, 'd.noemi.huaman@laanunciacioncali.edu.co', 'fhuaman', '$2a$10$hMlaWPud6hw/eVaegRC.eOTVmd2AnymrAuxNKty4ui1PJDeOfDNj6', 1, '2021-05-12', '2022-05-06'),
(16, 'MARIA ALEJANDRA', 'GUITIERREZ', 1045023387, 2, 13, 13, 6, 'd.maria.gutierrez@laanunciacioncali.edu.co', 'mguitierrez', '$2a$10$hMlaWPud6hw/eVaegRC.eOTVmd2AnymrAuxNKty4ui1PJDeOfDNj6', 1, '2021-05-12', '2022-05-06'),
(17, 'ZURI YULIANA', 'GRAJALES  SANCHEZ', 1130645299, 2, 8, 13, 6, 'zurygrajales1985@gmail.com', 'zgrajales', '$2a$10$hMlaWPud6hw/eVaegRC.eOTVmd2AnymrAuxNKty4ui1PJDeOfDNj6', 1, '2021-05-12', '2022-05-06'),
(18, 'DANIEL FELIPE', 'GIRALDO ACOSTA', 1144075782, 2, 13, 13, 6, 'd.daniel.giraldo@laanunciacioncali.edu.co', 'dgiraldo', '$2a$10$hMlaWPud6hw/eVaegRC.eOTVmd2AnymrAuxNKty4ui1PJDeOfDNj6', 1, '2021-05-12', '2022-05-06'),
(19, 'OLGA LUCIA', 'GARCIA LASSO', 1116433564, 2, 13, 13, 6, 'd.olga.garcia@laanunciacioncali.edu.co', 'ogarcia', '$2a$10$hMlaWPud6hw/eVaegRC.eOTVmd2AnymrAuxNKty4ui1PJDeOfDNj6', 1, '2021-05-12', '2022-05-06'),
(20, 'ELIZABETH ', 'PERILLA ORTIZ', 1143840425, 2, 10, 13, 6, 'secretaria@laanunciacioncali.edu.co', 'Eperilla', '$2a$10$QFTa5srKNJMLCxk4hAwcS.OxX2xjw415QPfv7FmHvVIhllZPwMbTi', 0, '2021-05-12', '2022-05-06'),
(21, 'ANA ISABEL', 'ESCUDERO ARENAS', 67022518, 2, 13, 13, 6, 'ana.escudero@laanunciacioncali.edu.co', 'aescudero', '$2a$10$hMlaWPud6hw/eVaegRC.eOTVmd2AnymrAuxNKty4ui1PJDeOfDNj6', 1, '2021-05-12', '2022-05-06'),
(22, 'JUAN PABLO', 'CEBALLOS NAÑEZ', 1130649212, 2, 13, 13, 6, 'juanpabloceballos17@yahoo.com', 'jceballos', '$2a$10$hMlaWPud6hw/eVaegRC.eOTVmd2AnymrAuxNKty4ui1PJDeOfDNj6', 1, '2021-05-12', '2022-05-06'),
(23, 'JUAN FERNANDO', 'CASANOVA RUCO', 16796432, 2, 13, 13, 6, 'd.juan.casanova@laanunciacioncali.edu.co', 'jcasanova', '$2a$10$hMlaWPud6hw/eVaegRC.eOTVmd2AnymrAuxNKty4ui1PJDeOfDNj6', 1, '2021-05-12', '2022-05-06'),
(24, 'LAURA STEFANIA', 'CARDONA', 1144067672, 2, 13, 13, 6, 'd.laura.cardona@laanunciacioncali.edu.co', 'lcardona', '$2a$10$hMlaWPud6hw/eVaegRC.eOTVmd2AnymrAuxNKty4ui1PJDeOfDNj6', 1, '2021-05-12', '2022-05-06'),
(25, 'ANGIE VANESSA', 'CAICEDO MORA', 1143824521, 2, 13, 13, 6, 'd.angie.caicedo@laanunciacioncali.edu.co', 'acaicedo', '$2a$10$hMlaWPud6hw/eVaegRC.eOTVmd2AnymrAuxNKty4ui1PJDeOfDNj6', 1, '2021-05-12', '2022-05-06'),
(190, 'carrucel', 'carrucel', 23123, 4, 0, NULL, 5, 'korikenti2@gmail.com', 'carrucel', '$2a$10$wsBnCbH5uAkxkSLHpcQM4OOKZAfgOvA0s9Bz0DZQ7EKZHd3bJGpGq', 1, '0000-00-00', '0000-00-00'),
(194, 'Luz Alba ', 'Giraldo Patiño', 24867763, 2, 16, 13, 6, 'cartera@laanunciacioncali.edu.co', 'lgiraldo', '$2a$10$qnM8ZROBiIv8ySfZ7rSns.Md9YASy3AbwWY8Ned9cBK0mJ7Gn2RgS', 0, '0000-00-00', '2022-05-06'),
(195, 'Laura Ines', 'Mena Jacome', 242397, 1, 1, 13, 6, 'rectorianunciacion@gmail.com', 'Lmena', '$2a$10$2jn0UK3.gyX3F7r8NCxgvOwzkFhwk0zEKcexvNx9QiM1Ps6JaxOa2', 0, '2021-05-12', '2022-05-06'),
(196, 'William  Alfredo ', 'Ceron Chates ', 94410555, 2, 13, 13, 6, 'd.william.ceron@laanunciacioncali.edu.co', 'Wceron', '$2a$10$GYsQh0WA.kCLzDiJHWfpbOH.SAKgLiao9ZReWO9XMfWqyJkEYy2ce', 0, '0000-00-00', '2022-05-06'),
(197, 'Shirley Offir ', 'Ararat', 66879419, 2, 13, 13, 6, 'shofarvi07@gmail.com', 'sararat', '$2a$10$hMlaWPud6hw/eVaegRC.eOTVmd2AnymrAuxNKty4ui1PJDeOfDNj6', 1, '0000-00-00', '2022-05-06'),
(198, 'Noralba ', 'Fajardo Viafara', 26789901, 2, 13, 13, 6, 'secretariaconsac@gmail.com', 'Noralba', '$2a$10$hMlaWPud6hw/eVaegRC.eOTVmd2AnymrAuxNKty4ui1PJDeOfDNj6', 1, '0000-00-00', '2022-05-06'),
(199, 'Gilma ', 'Bravo', 26789902, 2, 13, 13, 6, 'consacweb@gmail.com', 'cartera', '$2a$10$hMlaWPud6hw/eVaegRC.eOTVmd2AnymrAuxNKty4ui1PJDeOfDNj6', 1, '0000-00-00', '2022-05-06'),
(200, 'Katherine ', ' Buitron', 26789903, 2, 13, 13, 6, 'consacweb@gmail.com', 'contabilidad', '$2a$10$hMlaWPud6hw/eVaegRC.eOTVmd2AnymrAuxNKty4ui1PJDeOfDNj6', 1, '0000-00-00', '2022-05-06'),
(201, 'Johanna Isabel ', 'Rios Tenorio', 66659047, 2, 9, 13, 6, 'academico@laanunciacioncali.edu.co', 'jrios', '$2a$10$5qIeKiJXadq0rRUCNn3Pgupkh1WgbtvO.StCy77xFToRoXWt3c39O', 0, '0000-00-00', '2022-05-11'),
(211, 'Diego Alberto ', 'Arias', 94430892, 2, 0, 13, 6, 'diduar1@hotmail.com', 'darias', '$2a$10$hMlaWPud6hw/eVaegRC.eOTVmd2AnymrAuxNKty4ui1PJDeOfDNj6', 1, '0000-00-00', '2022-05-06'),
(213, 'Leyka Magrith', 'Fernandez', 31977177, 2, 13, 13, 6, 'leykapachis@hotmail.com', 'l', '$2a$10$UZeA79cGm9zalXd4/8gtqe.4pZYyClajHf6lnGMbXOk0WQ92N2EEW', 1, '0000-00-00', '2022-05-06'),
(215, ' Doris Aline ', 'Lopez', 30721193, 2, 0, 13, 6, 'htaline.25@gmail.com', 'dalopez', '$2a$10$hMlaWPud6hw/eVaegRC.eOTVmd2AnymrAuxNKty4ui1PJDeOfDNj6', 1, '0000-00-00', '2022-05-06'),
(230, 'Ana Bella ', 'Lopez Caceres', 31903267, 2, 0, 13, 6, 'secretariaconsac@gmail.com', 'ablopez', '$2a$10$hMlaWPud6hw/eVaegRC.eOTVmd2AnymrAuxNKty4ui1PJDeOfDNj6', 1, '0000-00-00', '2022-05-06'),
(231, 'maria eugenia', 'Gaona Alvear', 31988678, 2, 13, 13, 6, 'anunciaciondocumental@gmail.com', 'ngaona', '$2a$10$hMlaWPud6hw/eVaegRC.eOTVmd2AnymrAuxNKty4ui1PJDeOfDNj6', 1, '0000-00-00', '2022-04-19'),
(232, 'Lewis Sammy ', 'Sinisterra Garces', 1107040548, 2, 4, 13, 6, 'contabilidad@laanunciacioncali.edu.co', 'Lgarces', '$2a$10$hnJ0bb3S2DZXKJg9LFLQfO3jowrDIGIHJs7vi01M6zgqOuMVmDbdS', 0, '0000-00-00', '2022-05-06'),
(233, 'BARBARA ', 'ALBARRACIN CELY', 23588191, 2, 13, 13, 6, 'barbaradejesus.albarracin@gmail.com', 'bcely', '$2a$10$hMlaWPud6hw/eVaegRC.eOTVmd2AnymrAuxNKty4ui1PJDeOfDNj6', 1, '0000-00-00', '2022-05-06'),
(234, 'MAURICIO', 'CALDERON', 94544482, 2, 0, 13, 6, 'sistemasconsac@gmail.com', 'Mcalderon', '$2a$10$hMlaWPud6hw/eVaegRC.eOTVmd2AnymrAuxNKty4ui1PJDeOfDNj6', 1, '0000-00-00', '2022-05-06'),
(236, 'Dora Melfy ', 'Serna Orejuela', 66853031, 2, 14, 13, 6, 'psicologia@laanunciacioncali.edu.co', 'Dserna', '$2a$10$HgHOK2/86zShxcVZngNErOf8SeRVkVPEW2ahxIKom3W6oPxFlnq0i', 0, '0000-00-00', '2022-05-06'),
(247, '14696620', '14696620', 14696620, 4, 0, NULL, NULL, 'korikenti2@gmail.com', '14696620', '$2a$10$hieyG/ueInqVB7e.K/K9AuWVJ2JXnPMf.X1LsbnhGiAQUSNtxZhYm', 0, '0000-00-00', '0000-00-00'),
(248, 'FABIAN', 'MEZA', 78945625, 4, 0, NULL, NULL, 'asesorsgci@gmail.com', 'user', '$2a$10$nEh2mDVMXSL7rWGSwyWuS.Ch8XHFV/2aINpsStYL4io/yVUvhYCZ.', 1, '0000-00-00', '0000-00-00'),
(249, 'CRISTIAN CAMILO', 'HIDALGO NIEVA', 1130600410, 2, 13, 13, 6, 'cristianh@gmail.com', 'chidalgo', '$2a$10$hMlaWPud6hw/eVaegRC.eOTVmd2AnymrAuxNKty4ui1PJDeOfDNj6', 1, '0000-00-00', '2022-05-06'),
(250, 'politecnico', 'politecnico', 2356, 1, 0, 14, 7, 'firmacalidadsg1@gmail.com', 'politecnico', '$2a$10$nEh2mDVMXSL7rWGSwyWuS.Ch8XHFV/2aINpsStYL4io/yVUvhYCZ.', 0, '2021-05-12', '0000-00-00'),
(251, 'Carolina', 'Duarte Vanegas', 31480460, 2, 24, 14, 7, 'direccion.comunidad@pio.edu.co', 'cduarte', '$2a$10$nEh2mDVMXSL7rWGSwyWuS.Ch8XHFV/2aINpsStYL4io/yVUvhYCZ.', 0, '2021-05-12', '2021-10-05'),
(252, 'Alexander Garzon', 'Garzon', 18610487, 2, 25, 14, 7, 'politecnico.internacional.o@gmail.com', 'agarzon', '$2a$10$aCGYkOQKboisORyXCWpbPeFhUvAbfC/JDSwQTgsIfyZlcvRyX7gAu', 0, '2021-05-12', '2022-03-17'),
(253, 'Julian David', 'Saavedra Vanegas ', 1130634238, 2, 2, 14, 7, 'comercialpiosas@gmail.com', 'jsaavedra', '$2a$10$nEh2mDVMXSL7rWGSwyWuS.Ch8XHFV/2aINpsStYL4io/yVUvhYCZ.', 1, '2021-05-12', '2021-10-05'),
(254, 'Matha', 'Trujillo Jimenez', 38556670, 2, 9, 14, 7, 'admitivo.poli.2017@gmail.com', 'mtrujillo', '$2a$10$nEh2mDVMXSL7rWGSwyWuS.Ch8XHFV/2aINpsStYL4io/yVUvhYCZ.', 1, '2021-05-12', '2021-10-05'),
(255, 'David', 'Arias Restrepo', 1143824403, 2, 11, 14, 7, 'david.arias@misena.edu.co', 'drestrepo', '$2a$10$nEh2mDVMXSL7rWGSwyWuS.Ch8XHFV/2aINpsStYL4io/yVUvhYCZ.', 0, '2021-05-12', '2021-10-05'),
(256, 'Blanca Ruth', 'Rivera Gomez', 31961489, 2, 9, 14, 7, 'politecnico.inter.occidente@gmail.com', 'brivera', '$2a$10$nEh2mDVMXSL7rWGSwyWuS.Ch8XHFV/2aINpsStYL4io/yVUvhYCZ.', 1, '2021-05-12', '2021-10-05'),
(257, 'Jhon Mauricio', 'Guerrero Soto', 94411642, 2, 1, 14, 7, 'jhonma1@yahoo.com', 'jhonmag', '$2a$10$nEh2mDVMXSL7rWGSwyWuS.Ch8XHFV/2aINpsStYL4io/yVUvhYCZ.', 0, '2021-05-12', '2021-10-05'),
(258, 'Fabiola', 'Guzman', 29678853, 2, 7, 14, 7, 'fabiola_maria_g@hotmail.com', 'fguzman', '$2a$10$nEh2mDVMXSL7rWGSwyWuS.Ch8XHFV/2aINpsStYL4io/yVUvhYCZ.', 0, '2021-05-12', '2021-10-05'),
(259, 'Nestor Fabian', 'Higuita Gaviria', 1151950191, 2, 9, 14, 7, 'asesorpio03@gmail.com', 'nhiguita', '$2a$10$nEh2mDVMXSL7rWGSwyWuS.Ch8XHFV/2aINpsStYL4io/yVUvhYCZ.', 1, '2021-05-12', '2021-10-05'),
(260, 'Jose Javier', 'Bedoya', 146050127, 2, 9, 14, 7, 'politecnico.occidente.jose@gmail.com', 'jbedoya', '$2a$10$nEh2mDVMXSL7rWGSwyWuS.Ch8XHFV/2aINpsStYL4io/yVUvhYCZ.', 1, '2021-05-12', '2021-10-05'),
(261, 'Carolina', 'Mayor Sandoval', 27662791, 2, 26, 14, 7, 'caromas79@hotmail.com', 'cmayor', '$2a$10$zlzIyLij3vpMGrBPBRSMF.SS6HAX4N/7MKMb9WtV/1g8j3o88IO7a', 0, '2021-05-12', '2021-10-05'),
(262, 'Lina Maria', 'Restrepo', 40332532, 2, 9, 14, 7, 'linaresteban877@hotmail.es', 'lrestrepo', '$2a$10$nEh2mDVMXSL7rWGSwyWuS.Ch8XHFV/2aINpsStYL4io/yVUvhYCZ.', 1, '2021-05-12', '2021-10-05'),
(263, 'Mayra Alejandra', 'Yule Vallejo', 1118298515, 2, 8, 14, 7, 'mayrayule@hotmail.com', 'myule', '$2a$10$nEh2mDVMXSL7rWGSwyWuS.Ch8XHFV/2aINpsStYL4io/yVUvhYCZ.', 0, '2021-05-12', '2021-10-05'),
(264, 'Katherine', 'Ramirez Arias', 113637538, 4, 15, NULL, NULL, 'enirehtak@hotmail.com', 'kramirez', '$2a$10$nEh2mDVMXSL7rWGSwyWuS.Ch8XHFV/2aINpsStYL4io/yVUvhYCZ.', 0, '2021-05-12', '0000-00-00'),
(265, 'Diana Carolina', 'Daza Zambrano', 67030735, 2, 12, 14, 7, 'gaby_osorio01@hotmail.com', 'ddaza', '$2a$10$nEh2mDVMXSL7rWGSwyWuS.Ch8XHFV/2aINpsStYL4io/yVUvhYCZ.', 0, '2021-05-12', '2021-10-05'),
(266, 'Luz Nelly', 'Popayan Orlas', 34566905, 2, 9, 14, 7, 'luznelly881@gmail.com', 'lpopayan', '$2a$10$MlelyyeUFpgsfiu5PMUbveZhP3jTVmFMrLwy5WBaCa0y..B8YnspS', 0, '2021-05-12', '2021-10-05'),
(267, 'Dayana Yulieth', 'Bautista Talaga', 1144186588, 2, 9, 14, 7, 'angelapericor@gmail.com', 'dbautista', '$2a$10$nEh2mDVMXSL7rWGSwyWuS.Ch8XHFV/2aINpsStYL4io/yVUvhYCZ.', 1, '2021-05-12', '2021-10-05'),
(268, 'Angela Patricia', 'Perico Rodriguez', 38793339, 2, 9, 14, 7, 'angelapericor@gmail.com', 'aperico', '$2a$10$nEh2mDVMXSL7rWGSwyWuS.Ch8XHFV/2aINpsStYL4io/yVUvhYCZ.', 1, '2021-05-12', '2021-10-05'),
(269, 'Paubla Andrea', 'Lucumi Mosquera', 1107073448, 2, 11, 14, 7, 'palucumim@gmail.com', 'plucumi', '$2a$10$nEh2mDVMXSL7rWGSwyWuS.Ch8XHFV/2aINpsStYL4io/yVUvhYCZ.', 0, '2021-05-12', '2021-10-05'),
(270, 'LINA', '	CORTES	HOLGUIN', 38460883, 2, 9, 14, 7, 'linacortes81@yahoo.com', 'lcortes', '$2a$10$nEh2mDVMXSL7rWGSwyWuS.Ch8XHFV/2aINpsStYL4io/yVUvhYCZ.', 1, '2021-05-12', '2021-10-05'),
(271, 'ENITH', 'AGUDELO 	POZO', 34516285, 2, 11, 14, 7, 'eagudelopozo@gmail.com', 'eagudelo', '$2a$10$nEh2mDVMXSL7rWGSwyWuS.Ch8XHFV/2aINpsStYL4io/yVUvhYCZ.', 0, '2021-05-12', '2021-10-05'),
(272, 'Katherine 	Andrea', 'Damian Aldana', 1144026906, 2, 11, 14, 7, 'instructor.contable@pio.edu.co', 'kdamian', '$2a$10$nEh2mDVMXSL7rWGSwyWuS.Ch8XHFV/2aINpsStYL4io/yVUvhYCZ.', 0, '2021-05-12', '2021-10-05'),
(273, 'ANA 	MRIA', ' MONTALVO CASTANEA', 1107059512, 2, 6, 14, 7, 'anamariamontalvo0119@gmail.com', 'amontalvo', '$2a$10$nEh2mDVMXSL7rWGSwyWuS.Ch8XHFV/2aINpsStYL4io/yVUvhYCZ.', 0, '2021-05-12', '2021-10-05'),
(274, 'Monica', 'paz', 25273338, 2, 9, 14, 7, 'coordinacion@pio.edu.co', 'monica', '$2a$10$nEh2mDVMXSL7rWGSwyWuS.Ch8XHFV/2aINpsStYL4io/yVUvhYCZ.', 1, '2021-05-12', '2021-10-05'),
(275, 'Yuliana', 'Agudelo Jimenez', 29568415, 2, 12, 14, 7, 'secretaria.academica@pio.edu.co', 'yagudelo', '$2a$10$nEh2mDVMXSL7rWGSwyWuS.Ch8XHFV/2aINpsStYL4io/yVUvhYCZ.', 0, '2021-05-12', '2021-10-05'),
(276, 'Luis Felipe', 'Casamachin', 1151968651, 2, 9, 14, 7, 'asistencia.cartera@pio.edu.co', 'lfelipe', '$2a$10$vxn1IUcB1yc.nmYhdhJARuAImbKaN0joJBhOQorNMv0isIB2O/CJa', 0, '2021-05-12', '2021-10-19'),
(277, 'Enmanuel', 'Varona', 1144192173, 2, 13, 14, 7, 'ehnma@hotmail.com', 'evarona', '$2a$10$nEh2mDVMXSL7rWGSwyWuS.Ch8XHFV/2aINpsStYL4io/yVUvhYCZ.', 1, '2021-05-12', '2021-10-05'),
(279, 'LINA', 'MORENO', 67027229, 2, 16, 15, 8, 'linamariam8@gmail.com', 'lmoreno', '$2a$10$Dd1vAg.fAXcDz8leEb5xjuycq/so4ZihBcSMz8yzzo26F0q2ozKJ2', 0, '2021-05-12', '2021-05-14'),
(280, 'YAMILETH', 'ARIAS VELASQUEZ', 66841273, 2, 1, 15, 8, 'aficenter.yav@gmail.com', 'yarias', '$2a$10$v10szgrdWLcC38G0Juf8QeAWOf/OjhmTGOQrGZUfRGMAkuuhkKY4O', 0, '2021-05-12', '2022-04-19'),
(281, 'WILMER ', 'GIRON MENESES', 94061513, 2, 8, 15, 8, 'wilmergiron.aficenter@gmail.com', 'wgiron', '$2a$10$nzrSh0Nlfp7SHkN7BXmjTu/sj9XcQaiyySfR9tlhk.Hffu4KaH7MS', 0, '2021-05-12', '2022-06-14'),
(283, 'DANIELA', 'VIVAS', 1193523216, 2, 17, 15, 8, 'danielavivas.aficenter@gmail.com', 'dvivas', '$2a$10$cdbH.rQbl4J9GOLrtiaiX.tuRFIe9LMofNydpD2eDE6PKlrcVvQeO', 0, '2021-05-12', '2021-05-15'),
(285, 'KAREN SAVITRI', 'MUELAS VELASCO', 1107082030, 2, 16, 15, 8, 'karen.aficenter@gmail.com', 'ksmuelas', '$2a$10$vWkXglwHPIqb1ZlTP.cgGunpAFFAdBWBbjHDZkGX67/Cs2CHUx7vu', 0, '2021-05-12', '2021-05-10'),
(286, 'YESLY VIVIANA ', 'CAMAYO GUACHETA', 1061728081, 2, 16, 15, 8, 'operaciones.aficenter@gmail.com', 'yvcamayo', '$2a$10$1TiTkIaG.VHlbONDOEpC2OgK8T5BG8HDUuAN9jh06wJoeNeqAMuzm', 1, '2021-05-12', '2021-05-10'),
(287, 'MICHAEL ALEJANDRO ', 'FALLA ARIAS', 1144173531, 2, 16, 15, 8, 'callcenter2.aficenter@gmail.com', 'mafallas', '$2a$10$vWkXglwHPIqb1ZlTP.cgGunpAFFAdBWBbjHDZkGX67/Cs2CHUx7vu', 0, '2021-05-12', '2021-05-10'),
(288, 'MARIA ANDREA ', 'GAONA GUACHETA', 1061799248, 2, 16, 15, 8, 'andreagaona.aficenter@gmail.com', 'magaona', '$2a$10$vWkXglwHPIqb1ZlTP.cgGunpAFFAdBWBbjHDZkGX67/Cs2CHUx7vu', 0, '2021-05-12', '2021-05-10'),
(289, 'DIANA MARCELA ', 'BOLIVAR MUNOZ', 1130619945, 2, 7, 15, 8, 'gestorfacturacion.aficenter@gmail.com', 'dmbolivar', '$2a$10$vWkXglwHPIqb1ZlTP.cgGunpAFFAdBWBbjHDZkGX67/Cs2CHUx7vu', 1, '2021-05-12', '2021-05-10'),
(290, 'MARIA NATHALIA ', 'MAZO', 1005867637, 2, 16, 15, 8, 'agendamiento2@aficenter.com.co', 'mnmazo', '$2a$10$HAWWRJGvSyS.dVXDtrf7webXbflvWrcONzCwuk0DGsG.xkkPcL.GG', 0, '2021-05-12', '2021-05-10'),
(291, 'FELIPE ', 'CARABALI CARABALI', 1143864305, 2, 16, 15, 8, 'felipecarabali.aficenter@gmail.com', 'fcarabali', '$2a$10$vWkXglwHPIqb1ZlTP.cgGunpAFFAdBWBbjHDZkGX67/Cs2CHUx7vu', 0, '2021-05-12', '2021-05-10'),
(292, 'JUAN CAMILO ', 'BOCANEGRA MOSQUERA', 1113541195, 2, 23, 15, 8, 'camilobocanegra.aficenter@gmail.com', 'jcbocanegra', '$2a$10$2hoOUZ74bFJcUV2NiarjYuUwDU6EvOeBfSjBQGx9Sq/z.eERmupaK', 0, '2021-05-12', '0000-00-00'),
(293, 'SANDRA MILENA ', 'CASTILLO RAMIREZ', 1143846926, 2, 16, 15, 8, 'sandracastillo.aficenter@gmail.com', 'smcastillo', '$2a$10$vWkXglwHPIqb1ZlTP.cgGunpAFFAdBWBbjHDZkGX67/Cs2CHUx7vu', 0, '2021-05-12', '2021-05-10'),
(294, 'DAYANY JULIETH ', 'DORADO ORTEGA', 1151952838, 2, 16, 15, 8, 'juliethdorado.aficenter@gmail.com', 'djdorado', '$2a$10$vWkXglwHPIqb1ZlTP.cgGunpAFFAdBWBbjHDZkGX67/Cs2CHUx7vu', 0, '2021-05-12', '2021-05-10'),
(295, 'CLAUDIA LORENA ', 'CHARRIA MANZANO', 1113516752, 2, 16, 15, 8, 'claudia.charria@gmail.com', 'clcharria', '$2a$10$vWkXglwHPIqb1ZlTP.cgGunpAFFAdBWBbjHDZkGX67/Cs2CHUx7vu', 0, '2021-05-12', '2021-05-10'),
(296, 'GISSEL DAYAN ', 'SKINNER LOPEZ', 1144100247, 2, 16, 15, 8, 'gisselskinner.aficenter@gmail.com', 'gdskinner', '$2a$10$vWkXglwHPIqb1ZlTP.cgGunpAFFAdBWBbjHDZkGX67/Cs2CHUx7vu', 0, '2021-05-12', '2021-05-10'),
(297, 'TATIANA ', 'CHAUX VALENCIA', 1130643050, 2, 16, 15, 8, 'tatianachaux.aficenter@gmail.com', 'tchaux', '$2a$10$vWkXglwHPIqb1ZlTP.cgGunpAFFAdBWBbjHDZkGX67/Cs2CHUx7vu', 0, '2021-05-12', '2021-05-10'),
(298, 'DIANA CAROLINA ', 'RIOS BOCANEGRA', 1144178400, 2, 6, 15, 8, 'dianacarolina.aficenter@gmail.com', 'dcrios', '$2a$10$vWkXglwHPIqb1ZlTP.cgGunpAFFAdBWBbjHDZkGX67/Cs2CHUx7vu', 1, '2021-05-12', '2021-05-10'),
(299, 'JUAN PABLO ', 'MARMOLEJO CUELLAR', 1144098937, 2, 13, 15, 8, 'marmoc97@gmail.com', 'jpmarmolejo', '$2a$10$46.TGLO/gp6Xmqju4qm0KOZr8Xb3Md4t3mRKon7rOgHGV8cpnUMSC', 0, '2021-05-12', '0000-00-00'),
(300, 'ISABELLA ', 'ALZATE ARIAS', 1144106068, 2, 16, 15, 8, 'isa.alzate302@hotmail.com', 'ialzate', '$2a$10$vWkXglwHPIqb1ZlTP.cgGunpAFFAdBWBbjHDZkGX67/Cs2CHUx7vu', 0, '2021-05-12', '2021-05-10'),
(301, 'GAEL ', 'CORRE ALZATE', 1144103236, 2, 7, 15, 8, 'gaelcorre.aficenter@gmail.com', 'gcorre', '$2a$10$vWkXglwHPIqb1ZlTP.cgGunpAFFAdBWBbjHDZkGX67/Cs2CHUx7vu', 1, '2021-05-12', '2021-05-10'),
(302, 'JOSE LUIS', 'MONTANO SILVA', 1143979415, 2, 18, 15, 8, 'josemontano.aficenter@gmail.com', 'jmontano', '$2a$10$nQ9L0FwZEN1vQp96hcCOB.zaPJo56kmOM.8I/YrrHGQ6zm1WsEnNC', 0, '2021-05-12', '2022-04-19'),
(303, 'JHON STEVEN ', 'MUNOZ CATANO', 1143878367, 2, 16, 15, 8, 'jhonestiven3558@gmail.com', 'jsmunoz', '$2a$10$vWkXglwHPIqb1ZlTP.cgGunpAFFAdBWBbjHDZkGX67/Cs2CHUx7vu', 0, '2021-05-12', '2021-05-10'),
(304, 'DIANA MILDRED ', 'RODRIGUEZ MARMOLEJO', 1151953869, 2, 16, 15, 8, 'dianarodriguezcs.aficenter@gmail.com', 'dmrodriguez', '$2a$10$vWkXglwHPIqb1ZlTP.cgGunpAFFAdBWBbjHDZkGX67/Cs2CHUx7vu', 1, '2021-05-12', '2021-05-10'),
(305, 'MARILUZ ', 'ANACONA NUNEZ', 38462363, 2, 16, 15, 8, 'Maryana182009@hotmail.com', 'manacona', '$2a$10$vWkXglwHPIqb1ZlTP.cgGunpAFFAdBWBbjHDZkGX67/Cs2CHUx7vu', 1, '2021-05-12', '2021-05-10'),
(306, 'FABIAN', 'MEZA', 146997911, 4, 0, NULL, NULL, 'asesorsgci@gmail.com', 'fabian', '$2a$10$IygvigMe7NJqBSdUfeBE3ejYWWy0cpkX5GmGenbGXw9fJRQa40w/i', 0, '2020-10-05', '2022-04-05'),
(307, 'KATHERINE ', 'RAMIRES', 1113637538, 4, 1, NULL, NULL, 'medico@calidadsg.com', 'kamirez', '$2a$10$nEh2mDVMXSL7rWGSwyWuS.Ch8XHFV/2aINpsStYL4io/yVUvhYCZ.', 0, '2020-10-05', '2020-10-22'),
(309, 'SANDRA', 'ARAUJO', 146997914, 2, 4, 16, 9, 'sami-178@hotmail.com', 'saraujo', '$2a$10$3zD3GajT4h4iyL/QODXp9.QVfdKvOJusgnn4Mk6N9NgVqY3g6QzXm', 0, '2020-10-06', '2020-10-28'),
(310, 'CLAUDIA', 'GARCIA', 1113672310, 2, 4, 16, 9, 'firmacalidadsg2@gmail.com', 'cgarcia88', '$2a$10$nEh2mDVMXSL7rWGSwyWuS.Ch8XHFV/2aINpsStYL4io/yVUvhYCZ.', 1, '2020-10-05', '2022-03-19'),
(311, 'Lorena milena', 'Thomas Fernandez', 57141161, 2, 14, 13, 6, 'enfermeria@laanunciacioncali.edu.co', 'Ltomas', '$2a$10$7K7XXAhQkkrMw2iRyhxNvOn.sv0R8cFmMhVYhDqEd2U9y5Ccgkt2q', 0, '2020-10-07', '2022-05-06'),
(312, 'OCTAVIO', 'ZULUAGA ALZATE', 94252980, 2, 8, 13, 6, 'octaviozuluaga96@gmail.com', 'ozuluaga', '$2a$10$hMlaWPud6hw/eVaegRC.eOTVmd2AnymrAuxNKty4ui1PJDeOfDNj6', 1, '2021-05-12', '2022-05-06'),
(314, 'Admin', 'FIRMA CALIDADSG', 901256342, 4, 1, NULL, NULL, 'firmacalidadsg@gmail.com', 'admin', '$2a$10$nEh2mDVMXSL7rWGSwyWuS.Ch8XHFV/2aINpsStYL4io/yVUvhYCZ.', 0, '0000-00-00', '0000-00-00'),
(317, 'ALEXander', 'OREJU', 78958, 2, 1, 14, 7, 'DESARROLLO@calidadsg.com', 'aorejuela10', '$2a$10$7gVQq1h3kDmHzvcg/WfyOuNiTK3KxSZ1gSSid/nkvsRjYM0O6Eb6O', 1, '2020-10-13', '2021-10-05'),
(319, 'FABIAN', 'MEZA', 14699791, 1, 21, 15, 8, 'firmacalidad1@gmail.com', 'fcalidad', '$2a$10$nEh2mDVMXSL7rWGSwyWuS.Ch8XHFV/2aINpsStYL4io/yVUvhYCZ.', 0, '2021-05-12', '2022-04-19'),
(320, 'INGRID NATHALIA ', 'RUIZ BERNAL', 1002952331, 2, 12, 14, 7, 'seguridadysalud@pio.edu.co', 'iruiz', '$2a$10$fS0jUnqPmvuc1F3Mhond9.nuM.EHnJc0/UoXSVN8C3TkCM/QNHbbq', 1, '2020-11-07', '2021-10-05'),
(321, 'MARIA ISABEL', 'DUARTE MURILLO', 1144173426, 2, 13, 14, 7, 'coordinacion.comunidad@pio.edu.co', 'mduarte', '$2a$10$o/e5CF.rB6ClzV4OdYBD4eiBSxqIgVBWbu4f9rB7L.RsB0X.vAO4u', 0, '2020-11-07', '2022-05-16'),
(326, 'MARIELLY GERLEINE', 'PINILLOS GUTIERREZ', 1130640663, 2, 11, 15, 8, 'proveedores@aficenter.com.co', 'mpinillos', '$2a$10$AM1CFvq/vz8kwzTIFwSJHeEFiotz1ua4DgQwMO556wvIMKJvfAM4.', 1, '2021-05-12', '0000-00-00'),
(327, 'ADRIANA  MARCELA', 'LOPEZ MEJIA', 27143777, 2, 16, 15, 8, 'alopez@aficenter.com.co', 'alopez', '$2a$10$gNfmetOFFhqDiH4JHwqaqeY.vBPGrBpeTZGgRNMTjGQJblIRhV.wK', 1, '2021-05-12', '2021-05-10'),
(330, 'OTONIEL', 'VELASCO', 16897982, 2, 13, 13, 6, 'otoniel.velasco@correounivalle.edu.co', 'ovelasco', '$2a$10$hMlaWPud6hw/eVaegRC.eOTVmd2AnymrAuxNKty4ui1PJDeOfDNj6', 1, '2021-05-12', '2022-05-06'),
(331, 'ARINGENIERIA', 'ARINGENIERIA', 80000, 2, 1, 17, 10, 'arfoing.civil2@hotmail.com', '80000', '$2a$10$USgTqfOUNSkT8KhgA2mt2eROgxv7ME8EcvLod5cP/DZQKu8L5w7Fy', 0, '2020-12-29', '2020-12-29'),
(332, 'ALBERTO', 'RICO FRANCO', 6265826, 2, 4, 17, 10, 'arfoing.civil@hotmail.com', 'arico', '$2a$10$zLpXGTrSSNikiPZpyPHr7eZcEdj5js5dDUb0/yg7WbgmZDtTEW2lm', 0, '2020-12-29', '2022-04-19'),
(334, 'DIANA MARCELA', 'ZAMORA RODRIGUEZ', 1143824727, 2, 7, 15, 8, 'dmzamora.aficenter@gmail.com', 'dmzamora', '$2a$10$uVQNGuVtpSQjvgkiT4er1.P8RUor3cqH3bsc2KX7IQrQej3qOncey', 1, '2021-05-12', '0000-00-00'),
(336, 'OLGA', 'CASTRO', 39532590, 4, 21, 20, 13, 'ocasrey@gmail.com', 'ocastro', '$2a$10$jQghrIrc98JvNrjitpZBm.CpnuGvnqXyn8J7fg.ZWSJgt6H43X52S', 0, '2021-05-12', '2022-05-03'),
(339, 'STEFANNY', 'ORDONEZ RUIZ', 1143984865, 2, 7, 16, 9, 'firmacalidadsg1@gmail.com', 'sordonez', '$2a$10$KjZHSfUvLJKIPoKq2fNGeeywlceMxs428.Uwo9YCWERfZv/.2Vh9y', 1, '2021-02-08', '2021-02-08'),
(340, 'ANGIE LIZETH', 'RODRIGUEZ LOPEZ', 1143856654, 2, 15, 15, 8, 'anligaga10@hotmail.com', 'arodriguez', '$2a$10$n2Ot5NZAM/lBq3TdWrXQLOKUZUU5wdkI2JKg70Ga1437GJaWhvCrC', 0, '2021-05-12', '2021-05-10'),
(341, 'ANGELO FERNANDO', 'ROBLEDO COLONIA', 1144140914, 2, 15, 15, 8, 'angelorobledo.aficenter@gmail.com', 'afrobledo', '$2a$10$XQxPu4.YfOufRQiOyn569el1Miom6vKFhGcDdBdkog7T.IraTHEJu', 0, '2021-05-12', '2021-08-11'),
(342, 'YICEL', 'MUNOZ GOMEZ', 1080901934, 2, 15, 15, 8, 'gissmu94@gmail.com', 'ymunoz', '$2a$10$LD7pIJyBCoIzgNrTD3YPiuPoED1y/uDmYpstoMeXtI0glg5CzXcJS', 0, '2021-05-12', '2021-05-10'),
(343, 'ANGIE LIZETH', 'GALEANO GALLEGO', 1143839788, 2, 15, 15, 8, 'angielrl.0917@gmail.com', 'agaleano', '$2a$10$UmLjUC0/VpIMf76hlYq1yuD9tjHseUsI1c5VW7qGluazTqEevpBci', 0, '2021-05-12', '2021-05-10'),
(344, 'JHON FREDDY', 'GRAJALES MORA', 1144029107, 2, 15, 15, 8, 'jhongrajales.ft@hotmail.com', 'jgrajales', '$2a$10$.S58ybL3EPBVl7GKib5a9elNUlv3ID68TJyeuGF.LRuS77b4g3RJ.', 0, '2021-05-12', '2021-05-10'),
(345, 'VALENTINA', 'BERNAL QUINTERO', 1144190148, 2, 15, 15, 8, 'valenbernalq@gmail.com', 'vbernal', '$2a$10$ZnovUqC5Wm5QVJISl3c37u/SYRaXMr6uTKirOsIvZ9/.OBrDrtdoa', 0, '2021-05-12', '2021-05-10'),
(346, 'MILLER ALBERTO ', 'QUIJANO', 10303969, 2, 15, 15, 8, 'millerqg@hotmail.com', 'mquijano', '$2a$10$LH6LB2wNf7fPhAe6IIk83ut/vro5IUYnZ.QKLzygqSEHBPm/6JtgW', 0, '2021-05-12', '2021-05-10'),
(347, 'CHRISTIAN JOSE', 'MENDEZ LONDONO', 1144034059, 2, 15, 15, 8, 'cristianmendez-2013@hotmail.com', 'cmendez', '$2a$10$mf5KkD0AXmc2pmscAoN6d.RwMISmVEmpuNWccDeDxG51L5hGbv/ie', 0, '2021-05-12', '2021-05-10'),
(348, 'DAVID LEONARDO', 'LAVERDE AGUIRRE', 1130667878, 2, 16, 15, 8, 'daleo.laverde@gmail.com', 'dlaverde', '$2a$10$kmrrLitqFXWVp6NIl5PIHu3DVWQAyM4tIN.MsTwvUWeNFyNWWMrDG', 0, '2021-05-12', '2021-05-10'),
(349, 'JOSE ANTONIO', 'AVENDANO', 16771993, 2, 16, 15, 8, 'joseavendano1122@yahoo.com', 'javendano', '$2a$10$quRgLulolJ/laXFX612YQuzqyrlcFplF4UFUMgSTFacl0xPoPK9hC', 0, '2021-05-12', '2021-05-10'),
(350, 'SARA INES', 'CANTILLO MONTOYA', 1130613143, 2, 16, 15, 8, 'saraicmontoya@gmail.com', 'scantillo', '$2a$10$lxwuJ/uPBdRa1THYL01rv.zkfwE4NARA.wE8O4EwA0KP0mwYj4amK', 0, '2021-05-12', '2021-05-10'),
(352, 'MICHAEL SANTIAGO', 'NARVAEZ ZARATE', 1151951328, 2, 15, 15, 8, 'msantiago.narvaez93@gmail.com', 'snarvaez', '$2a$10$Mxf1JmQy8vSfi6J9vDl.Tef/B3rdspfdmzvuU2FkFmD4c7SGl0RAq', 1, '2021-05-12', '2021-05-10'),
(353, 'DIANA KATHERINE', 'PUENTE CHACON', 1144189049, 2, 15, 15, 8, 'diana0917.dp@gmail.com', 'dpuente', '$2a$10$8LFv/5KLtmoT98Cqjj2jsOeNhyGmNUnoY488HVXZz3qskfVIiNvKu', 0, '2021-05-12', '2021-05-10'),
(354, 'VALERIA', 'ORDONEZ FALLA', 1144180450, 2, 15, 15, 8, 'valeriafalla0405@gmail.com', 'vordonez', '$2a$10$9WZ9mBnUouYxyUy59DYGweYlFhum4Z21iAfMk0QS1Ju2uYmER8VEG', 0, '2021-05-12', '2021-05-10'),
(355, 'ANGELA', 'YIZETH AGUIRRE', 67002503, 2, 16, 15, 8, 'angelayizeth@gmail.com', 'ayaguirre', '$2a$10$2TBcJ/1TKOEUGFVAXseBieRtAU29zfdSTlXb5wzg3At0bNX7E0cCm', 0, '2021-05-12', '2021-05-10'),
(356, 'MARIA', 'MERCEDES PAZ', 34546329, 2, 16, 15, 8, 'mariamercypaz@hotmail.com', 'mpaz', '$2a$10$M32UMYEKNBzIhVQSVO1BiuWhM5AjI78rFzTbfx59VitPQcsdUoPRu', 0, '2021-05-12', '2021-05-10'),
(357, 'DAVID', 'BARONA GONZALES', 16379411, 2, 16, 15, 8, 'drbaronagonzalez@gmail.com', 'dbarona', '$2a$10$Ef9.93Q/KE.iWv6DkjL2sOLCYNarFwE/F2vYPlwrNCRi1Wm4bGbOG', 0, '2021-05-12', '2021-05-10'),
(358, 'JOSE JOAQUIN', 'DIAZ', 16367075, 2, 16, 15, 8, 'jojoadiba@gmail.com', 'jdiaz', '$2a$10$G8F3KVnM0.qfLYbzkhy2r.tpnD6eKXhClTM2DWgLL35ZfGBlXRTXK', 0, '2021-05-12', '2021-05-10'),
(359, 'SELENE ANDREA', 'OTERO MUNOZ', 1144071279, 2, 15, 15, 8, 'selene.andrea.otero@correounivalle.edu.co', 'sotero', '$2a$10$0S0vy/NZihqpkXux6RRAau5aK2letU7nCh1.J7fSFVqTAXzoygwDa', 0, '2021-05-12', '2021-05-10'),
(360, 'CARLOS ALBERTO', 'CASTANO', 1143862569, 2, 16, 15, 8, 'carloscq95@hotmail.com', 'ccastano', '$2a$10$EBzNVKJvo2qZVosp4pFgauk7Kb6S0GReiP8ESQwN/kVvAD87FA93C', 0, '2021-05-12', '2021-05-10'),
(361, 'DANIELA', 'PERDOMO ACOSTA', 1143867623, 2, 16, 15, 8, 'daniela.perdomo@correounivalle.edu.co', 'dperdomo', '$2a$10$qYDUiY7Y8X2GlRg69cMjzeJCLGqlnr2cbVM7eOE2sqkBqHhWJP0ru', 0, '2021-05-12', '2021-05-10'),
(362, 'ANDRES FELIPE', 'OROZCO DAVALOS', 1144172305, 2, 15, 15, 8, 'anfecai@hotmail.com', 'forozco', '$2a$10$EgsXt1SsPOxa361OR5cL4eyGyjYZIh7HWlllSxw99cgp4mG5Q/Ob6', 0, '2021-05-12', '2021-05-10'),
(363, 'JUAN JOSE', 'CRUZ MONTES', 1144198892, 2, 15, 15, 8, 'juanjo.cruz9718@gmail.com', 'jcruz', '$2a$10$ujeiDgVj/ZeOggKcgREG0.uMvZ8V8I7NQUY1nVgEvO9bOnY9OoAV.', 0, '2021-05-12', '2021-05-10'),
(364, 'SEBASTIAN', 'RUIZ TORRES', 1144179357, 2, 16, 15, 8, 'sebastian.ruiz.torres@correounivalle.edu.co', 'sruiz', '$2a$10$qvCUGKY6R/SYN0DgCrBFFufMMxE5SdEaSt6pME5hYWmyMT7AuGspK', 0, '2021-05-12', '2021-05-10'),
(365, 'CONSUELO DEL CARMEN', 'DCROZ ESTUPINA', 31962809, 2, 16, 15, 8, 'consuelodecroz29@gmail.com', 'cdcroz', '$2a$10$t5Uqwl7ffLag5HvKkpbpeu2NLN.EKePJgw08VzMNJv6CAj.36aL0W', 0, '2021-05-12', '2021-05-10'),
(366, 'MONICA VIVIANA', 'CAMPINO SILVA', 1143968644, 2, 15, 15, 8, 'monica.campino@correounivalle.edu.co', 'mcampino', '$2a$10$5rmQnyVz86o84Y.JHHcjA.panWHNvS0lPelx6UIVJ0N6sphsqdLaK', 0, '2021-05-12', '2021-05-10'),
(367, 'ANDRES FELIPE', 'CAICEDO RODRIGUEZ', 94534923, 2, 16, 15, 8, 'andres.1110@hotmail.com', 'anfecai', '$2a$10$aIYVZW9jsyzRSqE2Fl4ArOjVE38eC2D/a7kRN9rkxRGJ2pVMQwy26', 0, '2021-05-12', '2021-05-10'),
(368, 'PAOLA CAROLINA', 'GUERRERO RIVERA', 1143857512, 2, 15, 15, 8, 'paoguerrero19@hotmail.com', 'pguerrero', '$2a$10$BchxHKcXGeKkmY09myjNhOHggr5KZady4JRuJCotyKWIyZsjsYN1S', 0, '2021-05-12', '2021-05-10'),
(369, 'JORGE IGNACIO', 'CALDERON CASTRILLON', 1144097824, 2, 15, 15, 8, 'calderon.jorge0408@gmail.com', 'jcalderon', '$2a$10$x0szCXn36etsF4kXMITEYe/p4SD98GAUTeNdGrxFu7U3fR.hYS4tC', 0, '2021-05-12', '2021-05-10'),
(370, 'DIEGO ALEJANDRO', 'OROZCO MEDINA', 1144199926, 2, 16, 15, 8, 'ddiego1710@gmail.com', 'dorozco', '$2a$10$9WC1W7h3jAmzmLBqAdgBGudR4bvDmKpmm4acFPvG/oNhx.1oQrPzK', 0, '2021-05-12', '2021-05-10'),
(371, 'ERICK ESNEYDER', 'MEDINA CRUZ', 1143867732, 2, 15, 15, 8, 'Erick9527mc@gmail.com', 'emedina', '$2a$10$r97OX.psFWjo.ub6jLJuy.n07pPaHVItq1XZ.ThtW5tcHlTOl/WIq', 0, '2021-05-12', '2021-05-10'),
(372, 'PAOLA ANDREA', 'GARCIA TOLOSA', 1144177635, 2, 15, 15, 8, 'paolaandreagarciatolosa@gmail.com', 'pgarcia', '$2a$10$p2obkeLfPFoQrTBvaAtkBulhZqhLTlMQjFRd7VotkBR5vrQyymAfy', 0, '2021-05-12', '2021-05-10'),
(373, 'NEIDA MILENA', 'ADRADA CORDOBA', 59313684, 2, 14, 15, 8, 'liderasistencial@aficenter.com.co', 'nadrada', '$2a$10$fQMzmlXFnSLhe2ViZWFR3eLnczAmmVGrlU/w207tMUE102gthz45W', 1, '2021-05-12', '0000-00-00'),
(374, 'LAURA', 'CORREDOR', 100642640, 2, 4, 16, 9, 'firmacalidadsg2@gmail.com', 'LAURA', '$2a$10$fQMzmlXFnSLhe2ViZWFR3eLnczAmmVGrlU/w207tMUE102gthz45W', 1, '2021-03-01', '2021-10-06'),
(376, 'CATHERINE', 'URRESTE CANIZALEZ', 1113629570, 2, 1, 18, 11, 'gerencia@bmindustrias.com', 'CURRESTE', '$2a$10$.OgLhUVXIVPN5rZBjid1t.KDQ/o77eZ/pXpGVIeI0JPpvrlKxMsX2', 0, '2021-03-29', '2022-04-19'),
(377, 'Yuri anyeli', 'realpe marulanda', 1151934842, 2, 13, 14, 7, 'asistencia.comunidad@pio.edu.co', 'Yuri realpe', '$2a$10$pi5VOTq.JVJ8mNxdaYccfeiyKTpAvCttyGhQrHUUqxGa0ytl8CXHa', 1, '2021-04-08', '2021-10-05'),
(379, 'ARINGENIERIA', 'ew', 123442, 2, 9, 17, 10, 'arfoing.civil1@hotmail.com', 'admin122222', '$2a$10$eTTXFexjB88lCzsFMK6hUOgSRSbuEbZPfkCrbptQT4cHAaDO6hGY2', 0, '2021-04-09', '2021-04-09'),
(380, 'ANTONIO', 'GRUESO', 1113655337, 4, 91, NULL, NULL, 'firmacalidadsg1@gmail.com', 'agrueso', '$2a$10$nEh2mDVMXSL7rWGSwyWuS.Ch8XHFV/2aINpsStYL4io/yVUvhYCZ.', 0, '2021-04-20', '0000-00-00'),
(381, 'Marlon ', 'Serna Serna', 1006206117, 2, 7, 15, 8, 'lideradministrativo@aficenter.com.co', 'mserna', '$2a$10$VVJ/3PmhQRyzxf.J5RH/XudWo139zEwIVBctpbuAatk5291CLNreq', 0, '2021-04-17', '2021-04-17'),
(382, 'LEIDY XIOMARA', 'RUIZ CANIZALES', 66662017, 2, 2, 18, 11, 'contabilidad@bmindustrias.com', 'LRUIZ', '$2a$10$QVfOlHYjVkc5uAW6mloJLOJtb9ntz7yBIXgq5wDh8pi9mDibpu8/W', 0, '2021-04-20', '2021-10-05'),
(383, 'MARIA LORENA', 'MARIN JIMENEZ', 1007102509, 2, 17, 18, 11, 'bmseguridad2019@gmail.com', 'MMARIN', '$2a$10$T8VYf67SjvLax68psZelie0Hmmz.636AcmboS6nItFMMfyPYHDScu', 0, '2021-04-20', '2022-04-19'),
(384, 'KAROLL DANIELA', 'OCHOA BARIONA', 1107509282, 2, 3, 18, 11, 'compras@bmindustrias.com', 'KOCHOA', '$2a$10$xnbe0XI0SCiBQDtt85bq3.HjTQpM1hjhZPQh1zcPxnTQXKB.LXXwu', 0, '2021-04-20', '2021-10-05'),
(385, 'MONICA ', 'SANCHEZ', 1130649299, 2, 4, 18, 11, 'alfredomoya@bmindustrias.com', 'MSANCHEZ', '$2a$10$IvaI.oaVfhFqxnWrcoLmBes064dZJDkzCK2X90hbJeGHgVUn7Upym', 0, '2021-04-20', '2021-10-05'),
(386, 'ALFREDO', 'MOYA VELASQUEZ', 16718032, 2, 5, 18, 11, 'alfredomoya@bmindustrias.com', 'AMOYA', '$2a$10$fdKwyIYT0QfuKoYbtV1Qn.aZhHze.5V5sfWDPTblnHfxqjS0dvCc.', 0, '2021-04-20', '2022-04-19'),
(387, 'EDGAR EDUARDO', 'DIAZ QUINTERO', 93362375, 2, 6, 18, 11, 'comercial1@bmindustrias.com', 'EDIAZ', '$2a$10$3iwogOzSLdbJsyzAizdZROqZxP4Bf232BigIEwxs6jJzy1DRVgO9W', 0, '2021-04-20', '2021-10-05'),
(388, 'CARLOS ALBERTO', 'SAAVEDRA LOZANO', 6551104, 2, 6, 18, 11, 'comercial@bmindustrias.com', 'CSAAVEDRA', '$2a$10$lMJRD7/NCixqgtl25FNjTOb3BgnRX2d/eGu47tSfmwyCUslyFSBVy', 0, '2021-04-20', '2021-10-05'),
(389, 'FABIO', 'BORRERO VARGAS', 16632387, 2, 6, 18, 11, 'fabioborrerovargas@gmail.com', 'FBORRERO', '$2a$10$QnkX86eWp95NNxF8gLVHE.dIZoJxLnNos9.3Y3QM0ez3/J/Okm9Ly', 0, '2021-04-20', '2021-10-06'),
(390, 'RAFAEL', 'VARGAS MEJIA', 1130660355, 2, 7, 18, 11, 'elsarcomejia@hotmail.com', 'RVARGAS', '$2a$10$bRJYlYrZi67WCnOqTX8LROmGkrR/SWLFCRHTb4.NF7AfZES/dHriG', 0, '2021-04-20', '2021-10-05'),
(391, 'willam', 's', 214748364, 1, 1, 19, 12, 'william32_19@hotmail.com', 'william', '$2a$10$BbmACpBF6oCqPZGnemQCEeGEd9Xj0pAON3S9qyqcOROoDJxGBGY3u', 0, '2021-04-21', '2021-04-21'),
(392, 'Yeison Ferney', 'Restrepo', 98707168, 2, 11, 15, 8, 'proveedores@aficenter.com.co', 'yrestrepo', '$2a$10$GAG/0fq72Ge9Z61.CQc3XOSgtQKa9PFZRMJGnDdtzmuWwQvUQieem', 0, '2021-05-10', '2021-05-10'),
(393, 'Ramiro ', 'Vidales', 94402392, 2, 7, 15, 8, '', 'rvidales', '$2a$10$Nhw9tqozUrgi7fNbGfnwWOmdouH3m.eFbTMd7VrENYuCIozuWPlnK', 0, '2021-06-09', '2021-06-09'),
(394, 'Mary Eliana', 'Alvarez Martinez', 1089290782, 2, 14, 15, 8, '', 'malvarez', '$2a$10$uGEMT4WZPgW5sKs/WZU86umSOPbVwy4kaS4rRs9lG7Y2yazNmgYUm', 0, '2021-06-16', '2021-06-16'),
(395, 'Carlos ', 'Tejada', 11111111, 2, 0, 15, 8, '', 'ctejada', '$2a$10$rNBKFK38FV7nfdAnd6aNzeQMKEtH1.U1BGVi1dvHmTITHekRihic6', 0, '2021-06-30', '2021-06-30'),
(396, 'JADER ', 'ROCHA ALVAREZ', 16268652, 1, 8, 16, 9, 'jader.rochaalvarez1587@gmail.com', 'JROCHA', '$2a$10$aMJviyfXgmNIrvx1StM7qehnMg9VLkcxg9oEPHGqe4ALHI8splJmK', 0, '2021-07-08', '2021-10-05'),
(397, 'VICTOR JAIME ', 'RUIZ HERNANDEZ ', 805017089, 2, 7, 20, 13, 'admin@asevis.com', 'vruiz', '$2a$10$fLDx//RXRm2JtKJxGCorSe4DgKmxA2F3PHmg7fbD8vtNr.t5PdFUi', 0, '2021-07-12', '2022-04-19'),
(398, ' Aymer Harold', 'España Buitrago', 94380794, 2, 7, 15, 8, '', 'hespaña', '$2a$10$lwZkPDkv97mZ39v.bnhDZeiHHHQfOwRCPLI.1KS/qa8Oes5SJU9cS', 0, '2021-07-29', '2021-07-29'),
(399, 'Valeria', 'Díaz Hoyos', 1006101088, 2, 7, 20, 13, 'hoyosvaleria229@gmail.com', 'vdiaz', '$2a$10$rgPzoSdZ6TgXznazXjgX1uCOwrflGBpmcxYud6muTM6yd97l3t6ci', 1, '2021-08-20', '2022-05-26'),
(400, 'Mildred carolina', 'Pachano Ramos', 8277008, 2, 24, 20, 13, 'mildredpachano1@gmail.com', 'Mpachano', '$2a$10$.ZkUILjoLe1ujEyywk.wpep0kyzGvOf1AqmNfIgMdbVzQPx7OxxHu', 0, '2021-08-20', '2022-03-08'),
(401, 'PAOLA', 'BONILLA', 1010099061, 2, 9, 16, 8, 'firmacalidadsg1@gmail.com', 'PB', '$2a$10$IS9dthCud9xJtLQVZ1o.keKP5QPNWMqslnpw0c/GkjHSJoK3pCm0C', 1, '2021-08-31', '2021-12-01'),
(402, 'Jhon', 'Albear', 115194393, 2, 18, 15, 8, '', 'jalbear', '$2a$10$cQlt409t.vCoGlTA8w5gpufV1z.XrfoVaWYKLedSzQNz/JlR9Tn6q', 0, '2021-09-01', '2022-04-19'),
(403, 'LINA MARIA', 'PALAU DOSMAN', 1144169654, 2, 27, 20, 13, 'linadosman@hotmail.com', 'L8P8D9A2', '$2a$10$04z5ogkyvzZd8/KGrU7twuX4RdwWXb.w6fstv/tNwhJxPnztXIyRi', 0, '2021-09-08', '2021-11-08'),
(404, 'H. GLORIA HELENA', 'BENJUMEA LOPEZ', 25097204, 2, 14, 13, 6, 'convivencia@laanunciacioncali.edu.co', 'glopez', '$2a$10$U4vfLhYzSs88O5EiMF/UfuxZK2BBUBAEyxxktxvYzmRuNNMsxvTka', 0, '2021-09-13', '2022-05-06'),
(405, 'ALEXANDER', 'OREJUELA', 14696620, 1, 6, 16, 9, 'firmacalidadsgpublicitario@gmail.com', 'AOREJUELA', '$2a$10$OdKPRaB/7U5yPVgKq8MJkOF6Q6ngZtleVkPt3JaqR1OXaatLhnZda', 0, '2021-09-23', '2022-03-17'),
(406, 'dev', 'dev', 14696620, 4, 22, 21, 1, 'alexsanderorejuela@gmail.com', '14696620', '$2a$10$TXVewzqVUs7lJnb1doNANuncR/uP1os7Yje4rVIydruz8i2pGsSwC', 0, '2021-09-27', '2022-04-19'),
(407, 'alex', 'dev', 123654, 1, 4, 21, 1, 'desarrollo@calidadsg.com', 'devUser', '$2a$10$7qvVHFNbOpeWfM9rbD7aaeFO1SEpeith.DC6AwtYgElc25qd3gP3W', 0, '2021-09-27', '2022-04-19'),
(408, 'MABEL', 'GOMEZ TORRES', 67004583, 2, 4, 14, 7, '', 'MGOMEZ', '$2a$10$lTyKNgTZt4akHg46Kdd1xuErkdWn19kfpBuMzUBFJusuvauRtXDn6', 0, '2021-10-05', '2022-03-17'),
(409, 'ALBERTO DAVID', 'ARTEAGA JIMENEZ', 14702787, 2, 11, 14, 7, '', 'AARTEAGA', '$2a$10$BCNUPHfGQHggcQ8LKGsm2OI/AvZFLYEilci3EdfJwt5ggrTuXnlTi', 0, '2021-10-05', '2022-03-17'),
(410, 'YAMILETH', 'GAVIRIA GAVIRIA', 1144141104, 2, 11, 14, 7, '', 'YGAVIRIA', '$2a$10$6wQORpNZHkb4pAqUgLLlCOasEVjzGM0ByY6Pv4DWCrjrMiJJhTR0a', 0, '2021-10-05', '2022-03-17'),
(411, 'ELSA MARIA ', 'BRITTO PEREZ', 66924057, 2, 11, 14, 7, '', 'EBRITTO', '$2a$10$V4n5yCSNFQbcKAk5WYnYhOkT/tYPt0sOyQuewG2IwddvbtShIzWmy', 0, '2021-10-05', '2022-03-17'),
(412, 'JESUS ANTONIO ', 'SANDOVAL CORDOBA', 94405635, 2, 11, 14, 7, '', 'JSANDOVAL', '$2a$10$LXh4qhWitQI8rRThuZEiM.5Lv9aXp20guXDd4ZnGvVsKx7cATCAWS', 0, '2021-10-05', '2022-03-17'),
(413, 'ALEJANDRO', 'OLIVEROS RODRIGUEZ', 9736870, 2, 11, 14, 7, '', 'AOLIVEOS', '$2a$10$iGhNo6ZbaX8V0.u47nEcFeMTEyCOqljj7LSTzCwQ6d9mpJKIv.ePC', 0, '2021-10-05', '2022-03-17'),
(414, 'CARMEN ELIZA', 'SALAS OLAVE', 66941311, 2, 11, 14, 7, '', 'CSALAS', '$2a$10$X1G4JIVybFtShZZ79lAKtOO1heEnNMkRra8SEHClIX21MoxvH6i/m', 0, '2021-10-05', '2022-03-17'),
(415, 'ELIANA', 'SAUCEDO PAEZ', 1077633395, 2, 11, 14, 7, '', 'ESAUCEDO', '$2a$10$0JJkRRAVIFjKiaziE638q.dE3KUW/OA6zT7IAHSX8M2MO4ifuxShK', 0, '2021-10-05', '2022-03-17'),
(416, 'JEFFERSSON ALEXANDER', 'HENAO URBANO', 1130620832, 2, 11, 14, 7, '', 'JHENAO', '$2a$10$EX0nf7EaRskwIP19Y0LaBuA9Bu/Q2jb6aJrCsSwI0kKd6KXkxV2Yu', 0, '2021-10-05', '2022-03-17'),
(417, 'RICHARD NIXON ', 'MARTINEZ NOGUERA', 15814498, 2, 11, 14, 7, '', 'RMARTINEZ', '$2a$10$xKrq8aimS2bO5Db62rvGt.LtUb.ceCFtDQSgE8kMcWYxT8Snca6bC', 0, '2021-10-05', '2022-03-17'),
(418, 'JULIANA', 'CUESTA VARGAS', 1053837640, 2, 11, 14, 7, '', 'JCUESTA', '$2a$10$16A/ktzAKL9ugvqM2HWCG.Byt33KHbdwRIIx78m2QrFLsmEi/PTzG', 0, '2021-10-05', '2022-03-17'),
(419, 'SAMARA ANDREA', 'ALEGRIA MUÑOZ', 1061767648, 2, 11, 14, 7, '', 'SALEGRIA', '$2a$10$u2.7Ou6opmwyi4bts3Kcd.I5w584duJ3/e2aEtFzzBL.dCjZ2kOeO', 0, '2021-10-05', '2022-03-17'),
(420, 'ALEJANDRO', 'CALERO JIMENEZ', 94531607, 2, 11, 14, 7, '', 'ACALERO', '$2a$10$8AXmnD/qUoiTRg/.H9GMa.WzMwqPqjpZnGl5a/l3ZToi7ijvyy2aS', 0, '2021-10-05', '2022-03-17'),
(421, 'DIANA ALEXANDRA', 'CELIS PEREA', 67024215, 2, 11, 14, 7, '', 'DCELIS', '$2a$10$/87oD7XKp9YT002OPKkWQOmaWAVAxPdeUVd/8w8HJbfah6wDhCqoa', 0, '2021-10-05', '2022-03-17'),
(422, 'LIZETH VIVIANA', 'ASPRILLA ALVAREZ', 1107034009, 2, 11, 14, 7, '', 'LASPRILLA', '$2a$10$kV2eJvxagITMpImBESxNxOf2C0hlME6kstFP4V4dDE8.B8hw7B7o2', 0, '2021-10-05', '2022-03-17'),
(423, 'GABRIEL RODOLFO', 'IZQUIERDO BRAVO', 512480, 2, 11, 14, 7, '', 'GIZQUIERDO', '$2a$10$QJ8uaVGNY8NnLD0avtQuquwT6pj9d0Os3WXqLzkNwesC1zCjNSk.a', 0, '2021-10-05', '2022-03-17'),
(424, 'NURY ALEXANDRA', 'URREGO FLOREZ', 1151934175, 2, 11, 14, 7, '', 'NURREGO', '$2a$10$u17p1P.cPf8n04HpTwv7segNI8EhjaaRoAzhlMQbCYuxBXVu3pAs2', 0, '2021-10-05', '2022-03-17'),
(425, 'CILIA ENA', 'SALGADO ARIAS', 31890719, 2, 11, 14, 7, '', 'CSALGADO', '$2a$10$W4JmooPOhCqZR6Alrx.uB.c6KSxwyVJCXoLZJ6D8b1V0.EseHJlny', 0, '2021-10-05', '2022-03-17'),
(426, 'CESAR IVAN', 'ARBOLEDA SALINAS', 1113623805, 2, 11, 14, 7, '', 'CARBOLEDA', '$2a$10$JwKob1MS3MnuUVeEQ.WoY.1o7D.OzpzgqT0IndaLY0EIfJ8hxAioC', 0, '2021-10-05', '2022-03-17'),
(427, 'MARCELA YANETH', 'ORTIZ DELGADO', 66951941, 2, 11, 14, 7, '', 'MORTIZ', '$2a$10$RF7X0BvU90odE7YVzmxgz.3E3yplW9Xt3c8wLpjqcB5Wcjiehflgy', 0, '2021-10-05', '2022-03-17'),
(428, 'CARLOS ANDRES', 'MINOTHA ZAPATA', 1151946397, 2, 11, 14, 7, '', 'CMINOTHA', '$2a$10$BxHCpt6jkwQEZL5GpwbIveNbi8Zv0Z3Me8fcN3kCnJil7XndLFyDe', 0, '2021-10-05', '2022-03-17'),
(429, 'FRANCISCO ALEJANDRO', 'CASTAÑEDA ORBEZ', 1144153465, 2, 11, 14, 7, '', 'FCASTAÑEDA', '$2a$10$PYXCenMYZhrkh7BHpN/a8eqE0leOpihnQDKy5bWT8.fzXikMOJ/Ii', 0, '2021-10-05', '2022-03-17'),
(430, 'JUAN SEBASTIAN', 'RICO CASTRILLON', 1144157688, 2, 11, 14, 7, '', 'JRICO', '$2a$10$hCjodTw.9Yh4gGELKgzSZuRtxSq2DHj6rjFo0l5b3keym.KKeQoG6', 0, '2021-10-05', '2022-03-17'),
(431, 'ALBA LUCIA', 'COLLAZOS HERNANDEZ', 1143949626, 2, 11, 14, 7, '', 'ACOLLAZOS', '$2a$10$w.S6//w37OT/ZksLyJeo7uihNVElkPdIClTuIZyAB/X0W4bbxSAfG', 0, '2021-10-06', '2022-03-17'),
(432, 'LEIKA MARGRIT', 'FERNANDEZ GRISALES', 31977177, 2, 13, 13, 6, '', 'Lfernandez', '$2a$10$qgrFAJhIOzaZ6O1.rUYlYelKlMmFhCZlG7J4JebdZoSptMyY08kve', 0, '2021-10-06', '2022-05-06'),
(433, 'MARIA ALEJANDRA', 'GUTIERREZ MARIN', 1045023387, 2, 13, 13, 6, '', 'MGUTIERREZ', '$2a$10$k8QaO90B/ofiGPCL55kBjeT1nPC09l30WKBHJvgMmtf.WjeYIWdMO', 1, '2021-10-06', '2022-05-06'),
(434, 'LINA MARCELA', 'MARIN GAONA', 1144126014, 2, 13, 13, 6, '', 'LMARIN', '$2a$10$xJSHZdKKFbhL04h.n9Qp8utQjAbRI1YHUK2zOaC6E6HuksejBZiQu', 1, '2021-10-06', '2022-05-06'),
(435, 'DIANA', 'MUÑOZ HERNANDEZ', 29974839, 2, 13, 13, 6, '', 'DMUÑOZ', '$2a$10$lJvZ4eAdxI0CEc89kLyNx.tF9jJmq00CVipB//ctmVVcVf4cpRM7W', 1, '2021-10-06', '2022-05-06'),
(436, 'OSCAR FABIAN ', 'PEREZ GONZALES', 16460942, 2, 13, 13, 6, '', 'OPEREZ', '$2a$10$h6eRNH9JkHaPJ1KvlWpTRuvv2qjyHNRcFX.kelYCUh8Uwf3jggDqW', 1, '2021-10-06', '2022-05-06'),
(437, 'BEATRIZ', 'RINCON REYES', 66710038, 2, 13, 13, 6, '', 'BRINCON', '$2a$10$RbvboYus3mjM0UrDoY9Z5eRHf3iIgdw0OVAsqDJ2A8PuL5zTXtwYK', 1, '2021-10-06', '2022-05-06'),
(438, 'TATIANA', 'RIOS TENORIO', 66660562, 2, 13, 13, 6, '', 'TRIOS', '$2a$10$lG.BGr4aR65mhI4Y0A6NdOzLwTihnaNz7MPge8GTkwb6KpBiW8BKm', 1, '2021-10-06', '2022-05-06'),
(439, 'LILIANA', 'ROSERO RODRGUEZ', 67017489, 2, 13, 13, 6, '', 'LROSERO', '$2a$10$mg4aDQ6HWL4MJOspX8ODduRHPGR.LPc6hSMk5wrL89676ah8JLI4u', 1, '2021-10-06', '2022-05-06'),
(440, 'ESTEFANY JINETH', 'RUANO PINCHAO', 1085942514, 2, 13, 13, 6, '', 'ERUANO', '$2a$10$gBukfkZ8A8HfimSf6AXEluDJ7iFCR8COoV6jIqu7j/DIEswa3KQ9u', 1, '2021-10-06', '2022-05-06'),
(441, 'JHONATAN', 'ZAPATA GUTIERREZ', 1113309344, 2, 13, 13, 6, '', 'JZAPATA', '$2a$10$Qd6QrsurNNPDsbjneaUOQ.eA00w2vU8XiSHGh6HRsZ92WBoBji1ge', 1, '2021-10-06', '2022-05-06'),
(442, 'JEFFERSON ', 'FIGUEROA JARAMILLO', 1130614061, 2, 8, 13, 6, '', 'JFIGUEROA', '$2a$10$XKdwcMNuTYCE46y2hXTfZ.TLsuYLPpGzUQ75o/aJZk3vsS/nEF53i', 1, '2021-10-06', '2022-05-06'),
(443, 'AIDA LUZ', 'BAÑOL', 66999555, 2, 12, 14, 7, 'aydluz_02@hotmail.com', 'ABAÑOL', '$2a$10$Gb8Lw3Dk.XA5jXIAQ8C.9u7YagmeqtJ/xCoAbhXGOvMdPlEJeSG3S', 0, '2021-10-06', '2022-03-17'),
(444, 'ANDREA JOHANNA', 'PARRA FONSECA', 1107059512, 2, 8, 14, 7, 'andrea.jparraf@gmail.com', 'APARRA', '$2a$10$J.tsdotG4qP6vofpJD0VwOVWCknlMwQ3Url7hfG9KFaYP7PGbLHZe', 0, '2021-10-06', '2022-03-17'),
(445, 'DAYANA', 'CASTRO BERMUDEZ', 1192912250, 2, 8, 14, 7, 'jdking100@hotmail.com', 'DCASTRO', '$2a$10$G7EOygnNcXsCuipf2ifK/O5clsqOYK27KLLuPxkb1CI0aQTZ46Gya', 0, '2021-10-06', '2022-03-17'),
(446, 'JEISON ANDRES ', 'VALENCIA CANOAS', 1118303065, 2, 1, 14, 7, 'escuela.gastronomica@pio.edu.co', 'JVALENCIA', '$2a$10$Keox7eTv3uMr3Lxy.hD40OGL/IsodIj6oZAWIeIswiZFA2X4O9BGi', 0, '2021-10-06', '2022-04-19'),
(447, 'JESSICA ', 'RAMIREZ COLLAZOS', 1151944804, 2, 11, 14, 7, 'jessik2101@hotmail.com', 'JRAMIREZ', '$2a$10$NWOezR0ohlRwtTVLcbQoxOVT3FxAxMeAAgxpnQ7MNr.vG9xSmBDJW', 0, '2021-10-06', '2022-03-17'),
(448, 'KATHERIN', 'GALVIS ALZATE', 1144188519, 2, 12, 14, 7, 'katheringalvisalzate@gmail.com', 'KGALVIS', '$2a$10$3uS4MUxHX1qwuHTbm9DZU.5DQZ6EVa9LQwsiRkYJy3bpDIzGoSzfK', 0, '2021-10-06', '2022-03-17'),
(449, 'KATHERINE', 'OLIVEROS HERNANDEZ', 1130632388, 2, 12, 14, 7, 'kateoliv16@gmail.com', 'KOLIVEROS', '$2a$10$mTv3z/rnqxZK6wDgh8/EzuSuH.dyrZRhs7VgRtTYU3.u4BTEtr2eu', 0, '2021-10-06', '2022-03-17'),
(450, 'KATHERINE', 'RAMIREZ ARIAS', 1113637538, 2, 1, 14, 7, '', 'KRAMIREZ', '$2a$10$XvXkGsLfHVCsYX/GaTqTLetRYDWIgc8XtQe4SY4ibJR14fv8nRKFK', 0, '2021-10-06', '2022-03-17'),
(451, 'PAOLA YULIETH ', 'ERAZO BOTINA', 1143847211, 2, 8, 14, 7, 'paolaerazo77@gmail.com', 'PERAZO', '$2a$10$z4K3CwBW4dfvNesIwyjC4u2wMUzsZQxymxjBLQagZUrjIg/NSiBIG', 0, '2021-10-06', '2022-03-17'),
(452, 'YEINER GABRIEL ', 'ROMERO JARAMILLO', 29692057, 2, 8, 14, 7, 'yeiner.romer.2017@gmail.com', 'YROMERO', '$2a$10$m3vob.lKIAg2aoaadM4GPeAEG9wWq4xo0Sq7fCMNNOWIaIS.PpM/i', 0, '2021-10-06', '2022-03-17'),
(453, 'HABIT ELIAS', 'ADECHINE RAMOS', 1082947270, 2, 12, 14, 7, 'adechine@gmail.com', 'HADECHINE', '$2a$10$N7ZPJ3MmtcCsViIKdetKw.bguEpsFhwZ5xH7EX4RXAOIunYYn3E9q', 0, '2021-10-06', '2022-03-17'),
(454, 'DAIRO', 'GARCIA', 1117509030, 2, 11, 14, 7, 'dairogarcia_25@hotmail.com', 'DGARCIA', '$2a$10$tLNwFnrXGICUGLQIkgBUteBoJ.BM4Gjeg/wWSg4HzkNLGqtPT0OtS', 0, '2021-10-06', '2022-03-17'),
(455, 'YIRLE AN ', 'SANCHEZ ESCOBAR', 66952419, 2, 40, 22, 16, 'direccionamiento@hotmail.com', 'YSANCHEZ', '$2a$10$kDbUUkt9kGc7T2kQ0IV3D.5hgMIKV3Qgv44fwkq5M8/0VcOM6aQym', 0, '2021-10-26', '2022-03-29'),
(456, 'ANDRES FELIPE ', 'CANO BROWN', 1006172904, 2, 31, 22, 16, '', 'ACANO', '$2a$10$YGQ6nCFAFDMcnncLWyX5i.4WmZHXztYAk/DruzJWbelaa.UbY7AjC', 0, '2021-10-26', '2021-10-26'),
(457, 'CRISTIAN DAVID ', 'CRUZ APONTE', 1010027529, 2, 38, 22, 16, '', 'CCRUZ', '$2a$10$y4xgC8Q6rhuwAkVKyKtHpeyUcbizivQC4cKfWK57nfvtW7ituxolW', 0, '2021-10-26', '2021-10-26'),
(458, 'DIANA LORENA', 'CAMAYO DIAZ', 1113621034, 2, 38, 22, 16, '', 'DCAMAYO', '$2a$10$GmewH4jdnsfP19IjGHx.AOH1KvOm8WMim4iIeL9xyzB5pcbQBAZY2', 0, '2021-10-26', '2021-10-26'),
(459, 'DIEGO ARMANDO', ' HERNANDEZ ESCOBAR', 16945880, 2, 26, 22, 16, 'Dieguito297@hotmail.com', 'DHERNANDEZ', '$2a$10$27HPL9pC/ViEay3HJXcf8OfIIt4r9zIMNEGwneuEgp7mYXivVgCXe', 0, '2021-10-26', '2022-03-29'),
(460, 'ELIZABETH ', 'MORENO COBO', 66763681, 2, 34, 22, 16, 'eliza.morenoc.emc@gmail.com', 'EMORENO', '$2a$10$4rFEkDUcixWGR0GhXOMog.hjI3ZThwLIM.Z7OOjRhexmunjhyYUG.', 0, '2021-10-26', '2022-03-29'),
(461, 'HUMBERTO ', 'OSSA RAMIREZ', 16449671, 2, 27, 22, 16, '', 'HOSSA', '$2a$10$8e5R/de1.SHetnTnSCpxHeyg0BUIIm78qXKDyyxmLjsrQcSASd6Ae', 0, '2021-10-26', '2021-10-26'),
(462, 'KENIA ', 'ORTIZ OSORIO', 1144194421, 2, 35, 22, 16, 'keniaortizdesign@gmail.com', 'KORTIZ', '$2a$10$FW.8jdwoc.zX9VKr3LNUWuTP0cEKiG0UxjzUmzDX/cxqKXt20T64q', 0, '2021-10-26', '2022-03-29'),
(463, 'LAURA VANESSA ', 'ZAMORANO PAMA ', 1144212907, 2, 32, 22, 16, '', 'LZAMORANO', '$2a$10$kn5xU3YU7gHr.S2qnuwR2.61.tmQ8DNi/IsJX84J4MxOZu0KGzzCm', 0, '2021-10-26', '2021-10-26'),
(464, 'LINA MARCELA ', 'GUZMAN GARCIA', 1113620098, 2, 32, 22, 16, '', 'LGUZMAN', '$2a$10$9DcYS/MaMT/GoTscN4aLOejgphRjFJkszJk0VFQ6frBCUN/3IreF2', 0, '2021-10-26', '2021-10-26'),
(465, 'LUIS EDUARDO ', 'PEREZ MARIN', 1112219055, 2, 38, 22, 16, '', 'LPEREZ', '$2a$10$EQrUzlMpzd7P0OK1240OIehRHhFXM/WC7n5zlZGfJTJwfet4b/FNa', 0, '2021-10-26', '2021-10-26'),
(466, 'LUZ CARIME ', 'CHAUX BOCANEGRA', 66660412, 2, 32, 22, 16, '', 'LCHAUX', '$2a$10$ZfBqJq2v1QYCHhnEqnmMR.CGGQdcq6MxwSCzeuP.l2rRSo9Az2Vxa', 0, '2021-10-26', '2021-10-26'),
(467, 'MAGYURY YAMILETH ', 'VELASQUEZ RENTERIA', 1118282827, 2, 39, 22, 16, 'mayitovr42@gmail.com', 'MVELASQUEZ', '$2a$10$kVqxnORpIojobUF9M1xJwu7KkNCFK41IZBKJvzmalPXzcC25muX1K', 0, '2021-10-26', '2022-03-29'),
(468, 'YAHAIRA ', 'ORTIZ OSORIO', 1144181955, 2, 31, 22, 16, 'Yahi3@hotmail.com', 'YORTIZ', '$2a$10$N/.BA55liTtNKd.UBEQODuhjLRm6apGV.eOu9Lw0I4PwEaqyLevAy', 0, '2021-10-26', '2022-03-29'),
(469, 'YULLI VANESSA', ' MORA LOPEZ', 1113638038, 2, 31, 22, 16, '', 'YMORA', '$2a$10$IegxKfwOVpXvQ14.4igRkuNKHlUur3JRuXJCkKd7hlMMq/v0fWA6K', 0, '2021-10-26', '2022-04-19'),
(470, 'FABIAN', ' MEZA MURILLO', 14699791, 2, 37, 22, 16, '', 'FMEZA', '$2a$10$6i8SkpOdLdRJmltHa4NRheMbMPoPjNzaOiNl6YKuSH8j/2bicLfRK', 0, '2021-10-26', '2021-10-26'),
(471, 'KATHERINE ', 'RAMIREZ ARIAS', 1113637538, 1, 41, 22, 16, 'firmacalidad1@gmail.com', 'KRAMIREZ', '$2a$10$eiiUVO4nQt8CsrJvdK6.4eoWtKq8CfFqvwfIfbRvhG6SpzCnSyex.', 0, '2021-10-26', '2022-04-19'),
(472, 'FABIAN ', 'MEZA MURILLO', 14699791, 1, 21, 20, 13, 'firmacalidad1@gmail.com', 'FMEZA', '$2a$10$r471GFxw7A..tHGJtenPEOqplqbU9tAFATlhyNBHolgs.BpKxu9jG', 0, '2021-10-26', '2022-04-19'),
(473, 'KATHERINE', ' RAMIREZ ARIAS', 1113637538, 4, 1, NULL, NULL, '', 'karias', '$2a$10$qp6PJb2kW8FmJslfiP70suaMfGyBjeJ4UTCsRJN6VeWTcBoQJ7xhK', 0, '2021-10-26', '2022-04-05'),
(474, 'KATHERINE', ' RAMIREZ ARIAS', 1113637538, 4, 19, 18, 11, '', 'KARIAS', '$2a$10$b1G0El08PNI5hGZLEGUyvOeSE4xc9d8QxbCzDJ8JLNjNhT1t3169W', 1, '2021-10-26', '2021-10-26'),
(475, 'FABIAN ', 'MEZA MURILLO', 14699791, 2, 27, 14, 7, '', 'FMEZA', '$2a$10$TxUNO6FoH88PEexE4rOjFOJ0AG5nVEXskmPByvzCi0Lpqve9PttVW', 0, '2021-10-26', '2022-03-17'),
(476, 'MICHELL DAHIANNA', 'GIRALDO LEAL', 1006308217, 4, 4, 16, 23, '', 'mgiraldo', '$2a$10$oiko3eYC65rvgx/YjQ095e7gg.5szhpIndPb5O1JpsLYo.hDECCd.', 1, '2021-12-13', '2022-03-16'),
(478, 'FERTILITY ', 'CARE COLOMBIA S.A.S', 901097178, 1, 1, 24, 17, 'firmacalidad1@gmail.com', '901097178', '$2a$10$/9kRsI1yqKf1zq1erC599.EnREdkJoZx/Am9sR2TkZ/U6M3iFE1zK', 0, '2022-01-11', '2022-04-18'),
(479, 'DAVID ', 'CARDENAS MONTEGRANARIO', 94315328, 2, 22, 17, 10, '', 'dcardenas', '$2a$10$lp.iTf5wGJpssFQxzIkHa.Fbh4YMLRwoYuYKZMYRSWN3RPzbLBNL.', 0, '2022-02-08', '2022-04-19'),
(480, 'CHRISTIAN ', 'ALVAREZ', 16376354, 2, 9, 24, 18, '', 'calvarez', '$2a$10$lheTdhNV0EpYKYM0v0aIJu4ucGsx0P.BXs/.8O7sW9fiJ9u7iMEj.', 0, '2022-02-24', '2022-05-26'),
(481, 'ANDREA', 'DORIA', 1067888094, 2, 4, 24, 18, '', 'adoria', '$2a$10$dlYCZObPpVruB1bGIBbHKubyT39Z6NsJ5P.MbAZHSGyvW0Wzurwk.', 0, '2022-02-24', '2022-03-17'),
(482, 'DIEGO ARMANDO', 'FORERO SANCHEZ', 1082838357, 2, 8, 24, 18, '', 'dforero', '$2a$10$AiSe4Ys385jZVbo6zkSB5e0hc5cZovfp/biZvXiyicxYHdyIsLWP6', 0, '2022-02-24', '2022-04-28'),
(483, 'MAURICIO ANDRES', 'NOVOA SAENZ', 1067880113, 2, 3, 24, 18, '', 'mnovoa', '$2a$10$X15l8dTWVr1kACrncCXrHuBUoRPc817E3X05tmOGACuAZVhqseMYK', 0, '2022-02-24', '2022-04-13');
INSERT INTO `users` (`id`, `nombres`, `apellidos`, `identificacion`, `role_id`, `cargo_id`, `colegio_id`, `squema_id`, `email`, `username`, `password`, `activo`, `created`, `modified`) VALUES
(484, 'KAREN SOFIA ', 'PINERES BALZA', 1045744411, 2, 7, 24, 18, '', 'kpineres', '$2a$10$PZ45B4cWfPkS4EzXAGILDOdJr6FzUtWgMPWovGcqdV0L3cVvrSGW6', 0, '2022-02-24', '2022-03-17'),
(485, 'MICHELLE', 'SANDOVAL POLO', 1140876813, 2, 11, 24, 18, '', 'msandoval', '$2a$10$tnyhQ6aeaf6zo4z0EcuyF.l4rDp8aBEv8ldCXFYCAa3lhsLMz5X5C', 0, '2022-02-24', '2022-05-02'),
(486, 'LUZ ALBERY', 'ORTIZ SALAZAR', 66777148, 4, 4, 16, 9, '', 'lortiz', '$2a$10$s1ElkSwguCzSZZFHjfWr/.xW6fTrj4IGUBS21IrADT8nekpIyzQfe', 0, '2022-03-09', '2022-03-24'),
(487, 'DIANA', 'GARZON ', 1005976784, 4, 1, NULL, NULL, '', 'dgarzon', '$2a$10$lvlZSFly6NYGHN92wSG56.eQudVFI/bOerIVS3n6zwgykv/Z569uq', 0, '2022-03-16', '2022-06-16'),
(488, ' Astrid Carolina', ' Hollman Posso', 1042452056, 2, 11, 24, 18, '', 'ahollman', '$2a$10$1xCH0CleXFU7Y5GIXmnKheHsPw8Pu0tJwjcH9GXPFL9xWZZt1CdHS', 0, '2022-03-17', '2022-04-27'),
(489, 'Aringenieria', 'Aringenieria', 2309, 1, 2, 17, 10, '', 'Aringenieria', '$2a$10$SMLUsPSH75eHhvB.GCMiTeJSfqA2lfBNobv5TUTJBcALD4y./A5mW', 0, '2022-04-19', '2022-04-19'),
(490, 'anunciacion', 'anunciacion', 3456, 1, 0, 13, 6, '', 'anunciación', '$2a$10$E/bgnAXj/d4VAoPD1/qere0pyAN1wYNSovMrlhqT4lvIjFwlreOJm', 0, '2022-04-19', '2022-04-19'),
(491, 'bm industrias', 'metalmecanica', 3456, 1, 1, 18, 11, '', 'bm', '$2a$10$P.Smsdre/2VPcws5.0mIe.gT4oH8cQdKS0.PRoI887lfAocc1fOqO', 0, '2022-04-19', '2022-04-19'),
(492, 'Kelly Johanna', 'Marquez Machado', 1140881873, 2, 10, 24, 18, '', 'kellym', '$2a$10$jazqkECzObpzd7EnmFM0nuQcQKs/aE5aaLcDRA5aqSKf5FU8u/A5G', 0, '2022-04-27', '2022-04-27'),
(493, 'ANA MARIA', 'VARGAS GARCIA', 66658075, 2, 2, 24, 18, '', 'avargas', '$2a$10$o/pBBz9srPAy4zyFb5tb7e5d8VG4a/DfDxmqeZ3SLs5cd4oJMfUo6', 0, '2022-04-27', '2022-05-06'),
(494, 'TEDDY EDWARD', 'QUINTANA VILLALBA', 72007148, 2, 12, 24, 18, '', 'tquintana', '$2a$10$0fe1dKWRZYghqWBpgl1NyuBDenZLnvztMod1E0ZcYKAfZGDfBBx7O', 1, '2022-04-28', '2022-06-09'),
(495, 'Colombo', '901202174', 901202174, 1, 0, 26, 19, '', '901202174', '$2a$10$iAKuDx7SaeOdhKOH0mH.3uxl.lcyCCFZKe/B4qyUDfZXMqac6i/e6', 0, '2022-05-02', '2022-05-02'),
(496, 'Alcifronte', '900545851', 900545851, 1, 1, 27, 20, 'firmacalidad1@gmail.comm', '900545851', '$2a$10$dzDfjAgOFwgnZsARGPF6KuTjjDov98LGHbYgNEi/OBVMtQt8tdCPW', 0, '2022-05-02', '2022-06-08'),
(497, 'PoliValle', '9010921720', 2147483647, 1, 0, 25, 21, 'firmacalidad1@gmail.com', '9010921720', '$2a$10$ypA6ibT505HK2HRvC.LgsupNGS7jA9qK7FyUo3/TiJpYZqi35voIe', 0, '2022-05-04', '2022-05-12'),
(498, 'Ninfer ', 'Betancourt', 51995394, 2, 1, 26, 19, 'educacion@colombojaponesa.comm', 'Bninfer', '$2a$10$WNTAgxR2LUjhuQZ6jstsTuBADyiwNEhy25udYfjcmcpXIdm4QPwfO', 0, '2022-05-04', '2022-05-10'),
(499, 'Kana', 'Kimura', 1011285, 2, 4, 26, 19, 'kana.kimura@colombojaponesa.comm', 'Kkimura', '$2a$10$h2KLAHm1.gPemvSDKisMiuADvZIeo4yDJmbp6Xm/Ce6BPJeS9liJ2', 0, '2022-05-04', '2022-06-16'),
(500, 'Zaida', 'Lombana', 52430896, 2, 3, 26, 19, 'zaida.lombana@colombojaponesa.comm', 'Zlombana', '$2a$10$/SbkZGW.h2mA9g8W25dMRuLPuqtlfqa0A0wagqa.4MR.89uc2xnJe', 0, '2022-05-04', '2022-06-16'),
(501, 'Carolina', 'Mogollon', 1121928287, 2, 6, 26, 19, 'carolina.mogollon@colombojaponesa.comm', 'Cmogollon', '$2a$10$HyizOs9ZIk493QBiwHjxAutM.dC1jLARKFWysuzCzCCvxzu0.vA/q', 0, '2022-05-04', '2022-06-16'),
(502, 'Fabian', 'meza', 123, 2, 2, 26, 19, 'asesorsgci@gmail.com', 'FFcalidad', '$2a$10$6Lz6u1anUftx/p1DfVVuSO0DgW8tIkqiOkdUTRH/Qp3A5Hw1TzgWy', 0, '2022-05-04', '2022-05-05'),
(503, 'Elizabeth', 'Ortiz', 52264033, 2, 5, 26, 19, 'gerente.admon@colombojaponesa.comm', 'Eortiz', '$2a$10$W5GGm7VDbFXzpg9lx4uKl.rGHRslL.pA/AF37ihUTNwbW08wDMHUO', 0, '2022-05-04', '2022-06-16'),
(504, 'LAURA ', 'GOMEZ', 1193563542, 2, 14, 24, 18, '', 'Lgomez', '$2a$10$pYPNubsKmKVt8mKehc0LAeY4a7CojNYpeM1MlntX2xqFFVaRnzqt2', 0, '2022-05-05', '2022-05-05'),
(505, 'Vanessa', 'Mendez', 53090551, 2, 7, 26, 19, 'academica@colombojaponesa.comm', 'Vmendez', '$2a$10$xyfIJb6FsuG0Et0fQ5oHCeDumFH2kOnJcLmXC9CfTORnxAJs8nNIW', 0, '2022-05-10', '2022-05-10'),
(506, 'Milena', 'Vega', 55068088, 2, 2, 26, 19, '', 'Mvega', '$2a$10$jHl5YZRLvkYGiZi3.Gl6ruQelAi19cNe13iDFHVS5/cqQjXmk2DrC', 0, '2022-05-24', '2022-05-24'),
(507, 'Derlin Dahiana', 'Manrique Ceron', 1010052362, 2, 3, 20, 13, '', 'Dmanrique', '$2a$10$MpZo1jKeV3996tx4n5WcvexAzknE8GeMJFgos0pglBNc/VLwQmHkG', 0, '2022-05-26', '2022-05-26'),
(508, 'Anngie Natalia', 'Salamanca Zuñiga', 1010155137, 2, 7, 20, 13, '', 'Asalamanca', '$2a$10$yx7af1TDrCEW9RuNphmVu.xR8yvboA//YUcLf0n4rwAyHzq8jRAyy', 0, '2022-05-26', '2022-05-26'),
(509, 'Ronaldo ', 'Garcia Gonzalez', 1113688304, 1, 0, 21, 16, '', 'RGarcia', '$2a$10$NBlX65MiLnhQgH9rLUDTeOt8HK0Xk01PAyA6ATn2/E/XsgFsS/9.m', 1, '2022-05-27', '2022-06-03'),
(510, 'Fernando', 'Chica', 16768526, 2, 1, 27, 20, 'firmacalidad1@gmail.comm', 'Fchica', '$2a$10$Mah84t/X/MpHWgygHfvYVuX048CNZSzZZmSdFWlgiyUsHYxe6k11e', 0, '2022-06-08', '2022-06-08'),
(511, 'Santiago ', 'Chica', 1108638395, 2, 5, 27, 20, 'santiagochica013@gmail.com', 'Schica', '$2a$10$Rrsz/KEywMy0GwCTCb3GaeGjD0ggkMw834HuELumcJcYZKjxhcWi.', 0, '2022-06-08', '2022-06-15'),
(512, 'Oswall', 'Chica', 111111, 2, 3, 27, 20, 'firmacalidad1@gmail.comm', 'Ochica', '$2a$10$YOPT1YGL5kUgV26HwPnfL.nrwKf1WMNbkCecDU4bpy35zqvkfdDiu', 0, '2022-06-08', '2022-06-08'),
(513, 'Ángel', 'Pechené', 1111, 1, 4, 27, 20, 'firmacalidad1@gmail.comm', 'Apechene', '$2a$10$/eXiYEDhaAM0AZjK.GIdB.tFMVJAxREs/b.7RSCGrfPcm/4rQZDZK', 0, '2022-06-08', '2022-06-08'),
(514, 'Clara', 'Florez', 1111, 2, 5, 27, 20, 'firmacalidad1@gmail.comm', 'Cflorez', '$2a$10$81xkDL3Rp6h9Y0avbu.ZrukFV2HItjsu7rM3ySYBuj2ilg/VJwF4u', 0, '2022-06-08', '2022-06-08'),
(515, 'MOISES', 'PEÑA', 1001938715, 2, 12, 24, 18, '', 'Mpeña', '$2a$10$zrZHNaDcLrdaQK2mL2nk0uhB25vZP/bBVrtDCAb1/go6qlTDwFDFq', 0, '2022-06-09', '2022-06-09'),
(516, 'Ruben Dario ', 'Narvaez', 159753, 1, 0, 28, 22, '', '', '$2a$10$xQaZ5sTFmtKwY1LyooLINeybky4CtAa0uygX.o9yS14C.CdogDvUC', 0, '2022-06-14', '2022-06-14');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `nombres` varchar(255) NOT NULL,
  `apellidos` varchar(255) NOT NULL,
  `identificacion` bigint(20) NOT NULL,
  `cliente_id` int(11) NOT NULL,
  `cargo_id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `rol_id` int(11) NOT NULL,
  `squema_id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `estado` int(11) NOT NULL COMMENT '1=activo, 0=inactivo',
  `created` date NOT NULL,
  `modified` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `nombres`, `apellidos`, `identificacion`, `cliente_id`, `cargo_id`, `email`, `rol_id`, `squema_id`, `username`, `password`, `estado`, `created`, `modified`) VALUES
(1, 'alexander', 'orejuela', 14696623, 1, 4, '', 1, 0, 'ao', 'c20ad4d76fe97759aa27a0c99bff6710', 1, '0000-00-00', '2022-06-13');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `cargos`
--
ALTER TABLE `cargos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `phinxlog`
--
ALTER TABLE `phinxlog`
  ADD PRIMARY KEY (`version`);

--
-- Indices de la tabla `rols`
--
ALTER TABLE `rols`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `squemas`
--
ALTER TABLE `squemas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `cargos`
--
ALTER TABLE `cargos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=138;

--
-- AUTO_INCREMENT de la tabla `clientes`
--
ALTER TABLE `clientes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT de la tabla `rols`
--
ALTER TABLE `rols`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `squemas`
--
ALTER TABLE `squemas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=517;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
