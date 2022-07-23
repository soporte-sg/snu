-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 21-07-2022 a las 11:12:54
-- Versión del servidor: 5.7.38-cll-lve
-- Versión de PHP: 7.4.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `document_principalcambios`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cargos`
--

CREATE TABLE `cargos` (
  `id` int(11) NOT NULL,
  `configuracion_id` int(11) DEFAULT NULL,
  `codigo` int(10) NOT NULL,
  `cargo` tinytext COLLATE utf8_spanish_ci NOT NULL,
  `sgc_id` varchar(50) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci COMMENT='cargos de empleados';

--
-- Volcado de datos para la tabla `cargos`
--

INSERT INTO `cargos` (`id`, `configuracion_id`, `codigo`, `cargo`, `sgc_id`) VALUES
(1, 14, 1, 'Sin Cargo', 'N/A'),
(2, 14, 2, 'DIRECTOR GENERAL', 'GD'),
(3, 14, 3, 'ASESOR DE CALIDAD', 'GC'),
(4, 14, 4, 'DIRECTOR ADMINISTRATIVO Y FINANCIERO', 'GA'),
(5, 14, 5, 'DIRECTOR ACADEMICO', 'GP'),
(6, 14, 6, 'ASISTENTE DE PUBLICIDAD', 'GA'),
(7, 14, 7, 'ASISTENTE COMERCIAL', 'GA'),
(8, 14, 8, 'ASISTENTE LOGISTICA', 'GA'),
(9, 14, 9, 'ASISTENTE ADMINISTRATIVO Y CONTABLE', 'GA'),
(10, 14, 10, 'ASESOR EDUCATIVO', 'GP'),
(11, 14, 11, 'ASISTENTE ACADEMICO', 'GP'),
(12, 14, 12, 'ASISTENTE OCUPACIONAL', 'GA'),
(13, 14, 13, 'ASISTENTE DE BIENESTAR', 'GB'),
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

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `cargos`
--
ALTER TABLE `cargos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `configuracion_id` (`configuracion_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `cargos`
--
ALTER TABLE `cargos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=138;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
