-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jun 16, 2022 at 10:14 AM
-- Server version: 5.7.38-cll-lve
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `document_principalcambios`
--

-- --------------------------------------------------------

--
-- Table structure for table `cargos`
--

CREATE TABLE `cargos` (
  `id` int(11) NOT NULL,
  `configuracion_id` int(11) DEFAULT NULL,
  `codigo` int(10) NOT NULL,
  `cargo` tinytext COLLATE utf8_spanish_ci NOT NULL,
  `sgc_id` varchar(50) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci COMMENT='cargos de empleados';

--
-- Dumping data for table `cargos`
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

-- --------------------------------------------------------

--
-- Table structure for table `colegios`
--

CREATE TABLE `colegios` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) DEFAULT NULL,
  `direccion` varchar(500) DEFAULT NULL,
  `telefono` varchar(100) DEFAULT NULL,
  `correos` text,
  `salario` bigint(20) DEFAULT NULL,
  `matriz` varchar(500) DEFAULT NULL,
  `fechainicio` date NOT NULL,
  `rector` varchar(255) DEFAULT NULL COMMENT 'Escribir el nombre del rector',
  `rect_telefono` varchar(50) DEFAULT NULL COMMENT 'telefono del recto',
  `filename` varchar(1000) DEFAULT NULL,
  `dir` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `colegios`
--

INSERT INTO `colegios` (`id`, `nombre`, `direccion`, `telefono`, `correos`, `salario`, `matriz`, `fechainicio`, `rector`, `rect_telefono`, `filename`, `dir`) VALUES
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
-- Table structure for table `configuracion`
--

CREATE TABLE `configuracion` (
  `id` int(11) NOT NULL,
  `nombre` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `logo` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `fechainicio` date NOT NULL,
  `color1` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `color2` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `color3` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `carpeta` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `configuracion`
--

INSERT INTO `configuracion` (`id`, `nombre`, `logo`, `fechainicio`, `color1`, `color2`, `color3`, `carpeta`) VALUES
(1, 'Politecnico Internacional De Occidente', 'pio.png', '2017-01-02', 'pio.png', '#8ac5ff', '', 'polictecnico'),
(2, 'COLEGIO NUESTRA SEÃ‘ORA DE LA ANUNCIACIÃ“N', 'logoAnun.jpg', '2018-11-28', 'logoAnun.jpg', '#00ffff', '', 'anunciacion'),
(3, 'Lesaru Centro Educativo', 'lessaru.png', '2017-08-18', 'lessaru.png', '#bbffbb', '', 'lesaru'),
(4, 'CORPORACIÃ“N UNIVERSAL DE LOS ANDES', 'logo-corregido.png', '2016-09-06', 'logo-corregido.png', '#66b3ff', '', 'losandes'),
(5, 'IMPORMEDICAL', 'IMPORMEDICAL LOGO.jpg', '2019-07-02', 'bianco_puro.jpg', '#3c9dff', '', 'impormedical'),
(6, 'AR INGENIERIA', 'AR INGENIERO.jpg', '2019-04-04', 'bianco_puro.jpg', '#ddc46c', '', 'ARINGENIERIA'),
(7, 'CALIDADSG', 'FIRMA CALIDADSG-BANNER.gif', '2019-04-05', 'Firma CalidadSG.jpeg', '#fda351', '', 'CALIDADSG'),
(8, 'ORAL CLINIC', 'Oral clinic.jpg', '2019-05-21', '', '#9dceff', '', 'ORALCLINIC'),
(9, 'Demo', 'Demo400x320.png', '2019-08-01', 'Demo400x320.png', '#f3f3f3', '', 'demo'),
(11, 'ESCUELA DE BELLEZA CARRUSEL', 'LOGO CARRUSEL FONDO BLANCO.png', '2019-10-17', 'LOGO CARRUSEL FONDO BLANCO.png', '#da36a0', '', 'CARRUSEL');

-- --------------------------------------------------------

--
-- Table structure for table `contactos`
--

CREATE TABLE `contactos` (
  `id` int(11) NOT NULL,
  `url` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `empresa_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `contactos`
--

INSERT INTO `contactos` (`id`, `url`, `empresa_id`) VALUES
(1, 'https://pio.edu.co/', 14),
(2, 'https://aficenter.com.co/', 15),
(3, 'https://asevis.edu.co/', 20),
(4, 'http://bmindustrias.com/', 18),
(5, 'https://calidadsg.com/\r\n', 16),
(6, 'https://calidadsg.com/', 21);

-- --------------------------------------------------------

--
-- Table structure for table `pqrs`
--

CREATE TABLE `pqrs` (
  `id` int(11) NOT NULL,
  `url` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `tipo_peticion` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `nombres` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `apellidos` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `identificacion` bigint(20) DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `n_contacto` bigint(20) NOT NULL,
  `descripcion` text COLLATE utf8_unicode_ci NOT NULL,
  `fecha_registro` date NOT NULL,
  `estado` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `radicado` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `empresa` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `responsable` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `f_asignacion` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `pqrs`
--

INSERT INTO `pqrs` (`id`, `url`, `tipo_peticion`, `nombres`, `apellidos`, `identificacion`, `email`, `n_contacto`, `descripcion`, `fecha_registro`, `estado`, `radicado`, `empresa`, `responsable`, `f_asignacion`) VALUES
(32, '16', 'reclamo', 'Sandra', 'Torres', NULL, 'sandratorreslocutora@gmail.com', 3013968325, 'No los conozco, pero me estan legando mensajes de que mi contraseña con ustedes ha sido hackeada, no entiendo de que se trata. Por favor comuniquense conmigo.', '2021-10-24', 'cerrado', 'Rad-1262', '', '', '0000-00-00'),
(35, '13', 'felicitacion', 'William', 'Ceron', NULL, 'd.william.ceron@laanunciacioncali.edu.co', 3122575256, 'Es una herramienta apropiada para mejorar el proceso de calidad', '2021-11-09', 'asignado', 'Rad-2357', '', 'William  Alfredo  Ceron Chates ', '2022-05-06'),
(36, '13', 'reclamo', 'Laura Inés ', 'Mena Jácome ', NULL, 'rectorianunciacion@gmail.com', 3206757055, 'Pido a comunicaciones que haga la inducción respectiva para el manejo de PQRSF desde la plataforma y desde la página web. ', '2021-11-10', 'asignado', 'Rad-3889', '', 'William  Alfredo  Ceron Chates ', '2022-05-06'),
(37, '21', 'felicitacion', 'sharon viviana', 'MUÑOZ HURTADO', 1113637538, 'sharon@gmail.com', 3113368555, 'Es un hecho establecido hace demasiado tiempo que un lector se distraerá con el contenido del texto de un sitio mientras que mira su diseño. El punto de usar Lorem Ipsum es que tiene una distribución más o menos normal de las letras, al contrario de usar textos como por ejemplo \"Contenido aquí, contenido aquí\". Estos textos hacen parecerlo un español que se puede leer. Muchos paquetes de autoedición y editores de páginas web usan el Lorem Ipsum como su texto por defecto, y al hacer una búsqueda de \"Lorem Ipsum\" va a dar por resultado muchos sitios web que usan este texto si se encuentran en estado de desarrollo. Muchas versiones han evolucionado a través de los años, algunas veces por accidente, otras veces a propósito (por ejemplo insertándole humor y cosas por el estilo', '2021-11-10', 'cerrado', 'Rad-2755', '', '', '0000-00-00'),
(38, '14', 'reclamo', 'DANIELA', 'PINEDA COLORADO', NULL, 'servicioalcliente@pio.edu.co', 0, 'Me siento inconforme con los proveedores de los uniformes Yo pague hace más de 1 mes mi uniforme y cuando fui a la toma de medidas el 15 de julio 2021 me dijeron q en 20 dias me lo tenían listo y es la fecha hoy agosto 26 2021 y no me dan respuesta', '2021-11-11', 'cerrado', 'Rad-8591', '', '', '0000-00-00'),
(39, '16', 'felicitacion', 'Jeison', 'Valencia', NULL, 'servicioalcliente@pio.edu.co', 3182463469, 'muchas gracias por atención y colaboración', '2021-11-11', 'cerrado', 'Rad-9139', '', '', '0000-00-00'),
(40, '14', 'reclamo', 'VICTORIA EUGENIA', 'LAMO TORRES', 37894191, 'victorialamo@gmail.com', 3042307672, 'La queja o reclamo, es una sugerencia para invitar no solo al personal docente, sino también al personal encargado de realizar el aseo de las aulas, para que en el primer caso, el docente deje organizado el salón, entendiéndose por el orden de sillas y limpieza de las aulas y, en el caso del personal de aseo, que los aseos se hagan de manera anticipada y no improvisada, no es el caso de día de hoy, en otras fechas. Adicional, no se trata de responder aun reclamo o sugerencia con altaneria, de manera irrespetuosa, es importante la buena actitud. Sugerencia mejorar, la actitud desde y hacia el cliente interno.', '2021-11-11', 'cerrado', 'Rad-9796', '', '', '0000-00-00'),
(41, '14', 'queja', 'Lady ', 'Manios', 38640023, 'lajomaciand@gmil.com', 3122749265, 'Cordial saludo\r\nQuiero manifestar mi descontento con la institución ya que en este segundo corte he notado muchas inconsistencias y esto me a desmotivado mucho a tal punto de pensar en retirarme.\r\nEn uno de los módulos el profesor siempre llega tarde y por lo general las clases son fuera de contexto ya que se debería enfocar mas en el área que estamos estudiando, con esto no quiero decir que sea malo abordar otros temas, pero solo vemos clases 2 horas y pienso que este el tiempo se debe aprovechar al máximo.\r\nEn cuanto a los seminarios virtuales, estos deberían ser vistos solo por la comunidad estudiantil, ya que se esta generando un cobro y no me parece coherente que quede disponible al publico, también deberían estar avisando constantemente si este tiene algún costo, para estar preparados económicamente y realizar el pago oportuno, para que no cierren plataformas. \r\n   \r\n\r\n', '2021-11-13', 'cerrado', 'Rad-2113', '', '', '0000-00-00'),
(42, '14', 'queja', 'Carolina', 'Montilla', 1108558600, 'carolinamontilla160@gmail.com', 3152949460, 'Inconformidad con la demora de exactamente 5 meses para la entrega de uniformes y carnet de identificación\r\n\r\nEl cambio repentino de los módulos asignados es decir ética y emprendimiento los cuales se podrían ver finalizando el técnico\r\n\r\nEl convenio con las instalaciones deportivas (gimnasios) para cumplir con las prácticas en los horarios establecidos y que no 30 minutos antes se dé por finalizada por parte de los prestadores \r\n\r\nEl descontento de pagos obligatorios para asistir a conferencias virtuales, donde no son privadas por tanto por ser al público no debería de tener algún costo (Al ser una conferencia por YouTube se da la facilidad de verla en cualquier momento y quien pueda hacerlo). Y no se justifica el cierre obligatorio de plataforma hasta no realizar el pago \r\n\r\nEl incumplimiento con los horarios establecidos de la primera clase de la jornada, el horario establecido esta para iniciar 7:30 am, y no 40 minutos después que son de gran perdida \r\n', '2021-11-13', 'cerrado', 'Rad-6381', '', '', '0000-00-00'),
(43, '14', 'peticion', 'JENNY ESMERALDA', 'GUZMAN RIVERA', 31568365, 'j3nnyeg@gmail.com', 3163177339, 'Radica Derecho de petición', '2021-11-17', 'cerrado', 'Rad-3732', '', '', '0000-00-00'),
(44, '00', 'sugerencia', 'PRUEBA', 'APELLIDO', NULL, 'medico@calidadsg.com', 3116003382, 'Es conveniente aumentar la información en el formulario.', '2021-11-18', 'abierto', 'Rad-527', '', '', '0000-00-00'),
(45, '14', 'felicitacion', 'DAIRO', 'GARCIA MORENO', 1117509030, 'dairogarcia_25@hotmail.com', 3127211303, 'quiero felicitar a Alexander ', '2021-11-18', 'cerrado', 'Rad-8573', '', '', '0000-00-00'),
(46, '14', 'felicitacion', 'DAIRO', 'GARCIA MORENO', 1117509030, 'dairogarcia_25@hotmail.com', 3127211303, 'quiero felicitar a Alexander ', '2021-11-18', 'cerrado', 'Rad-6942', '', '', '0000-00-00'),
(47, '14', 'peticion', 'Leydi', 'Rodriguez', NULL, 'leidyjhoanarodriguez140@gmail.com', 3216762367, 'Certificados', '2021-11-22', 'cerrado', 'Rad-3625', '', '', '0000-00-00'),
(48, '22', 'peticion', 'SANDRA PATRICIA', 'BOHORQUEZ HENAO', NULL, 'sandrapb9306@hotmail.com', 3163986035, 'Cordial saludo infa el día de hoy nos comunicamos con ustedes para solicitar una reunión con el encargado de los planes académicos en la sede de Palmira ,somos el grupo 7 p de administrativo en salud grupo sabatino por el motivo de que no tenemos hasta la fecha un plan de estudio debidamente estructurado y ya hemos tenido varios inconvenientes en muchas ocasiones de antemano agradecemos la atención prestada .', '2021-11-23', 'cerrado', 'Rad-484', '', 'FABIAN MEZA', '2021-11-25'),
(49, '14', 'sugerencia', 'Caren Tatiana ', 'Mejia ortiz', 1143874292, 'karentatiana11@outlook.com', 3156998934, 'Buenas, quiero solicitar inscripción, me comunico a lo números y no contesta, gracias ', '2021-11-25', 'cerrado', 'Rad-9239', '', '', '0000-00-00'),
(50, '22', 'sugerencia', 'karina Alejandra', 'Pelaez Henao', NULL, 'Kpelaezhenao@gmail.com', 3166488502, 'es un buen instituto, los asesores nos dieron muy buena enseñanza, su dedicación a nosotros , su paciencia. Muchas gracias ', '2021-11-27', 'cerrado', 'Rad-8541', '', 'FABIAN MEZA', '2021-11-29'),
(51, '22', 'felicitacion', 'juliana ', 'Campo Hernandez', NULL, 'julianach2719@outlook.com', 3183259084, 'agradecimientos infinitos a cada uno de los asesores, tanto teoricos, como practicos, cada uno es un excelente ser humano, gracias por la dedicacion, paciencia, motivacion y cariño que nos brindaron en este proceso. De cada uno aprendi demasiadas cosas. Mil y mil gracias y felicitarlos por tan bonita labor.....', '2021-11-27', 'cerrado', 'Rad-1571', '', 'FABIAN MEZA', '2021-11-29'),
(52, '22', 'felicitacion', 'anyela maria', 'gallego bedoya', NULL, 'gallegoanyi12@gmail.com', 3152758006, 'contenta con mi aprendisaje', '2021-11-27', 'cerrado', 'Rad-2943', '', 'FABIAN MEZA', '2021-11-29'),
(53, '22', 'felicitacion', 'angélica patricia', 'castillo Rodríguez', NULL, 'angelikacastillo1820@gmail.com', 3227229009, 'me parece que son muy buenos accesores y uno cada día aprende mucho de ellos', '2021-11-27', 'cerrado', 'Rad-6207', '', 'FABIAN MEZA', '2021-11-29'),
(54, '22', 'felicitacion', 'Maria camila ', 'castillo orobio ', NULL, 'castilloorobio2014@gmail.com', 3165802914, 'muchas gracias a todos los asesores tanto de practicas como de teoria por todo lo que me enseñaron en esta etapa que ha sido una buena experiencia para mi ', '2021-11-27', 'cerrado', 'Rad-7436', '', 'FABIAN MEZA', '2021-11-29'),
(55, '22', 'felicitacion', 'ana maria ', 'botina cabezas', NULL, 'ambotina88@misena.edu.co', 1113632917, 'un proceso muy bonito te enfrentas con tus miedos he inseguridades se aprende mucho \n ', '2021-11-27', 'cerrado', 'Rad-4061', '', 'FABIAN MEZA', '2021-11-29'),
(56, '00', 'sugerencia', 'yenni paola ', 'quiñones ', NULL, 'Yennipaolaquinones510@gmail.com', 3104131016, 'información ', '2021-11-27', 'abierto', 'Rad-7484', '', '', '0000-00-00'),
(57, '22', 'felicitacion', 'laura marcela ', 'torres quintero ', NULL, 'lquintero2730@gmail.com', 3137592477, 'muchas gracias por ser un buen instituto, gracias a todos los asesores que me formaron en esta etapa de aprendizaje , mil bendiciones a todos ', '2021-11-27', 'cerrado', 'Rad-6930', '', 'FABIAN MEZA', '2021-11-29'),
(58, '14', 'peticion', 'Carolina', 'Casas', NULL, 'carolina.casas@sitel.com', 0, 'Buenas Tardes , he tratado de comunicarme por todos los medios para que me ayuden enviandome Hojas de vida para practicante y no he tenido una respuesta. me podrain ayudar?', '2021-11-29', 'cerrado', 'Rad-785', '', '', '0000-00-00'),
(59, '14', 'peticion', 'Carolina', 'Ledesma', 1151964154, 'carolinaledesma-m@outlok.com', 3153124859, 'Hola buen dia , soy estudiante de la noctura del tecnico auxiliar administrativo en salud , estoy muy  insatisfecha con el modulo de las TIC , son muy pocas clases que se han visto ,  de todo el modulo si hemos tenido encuentro unas 5 a 6 veces es mucho ,  nos afectamos tanto por los dias festivos , como por el profesor a cargo de este modulo , asi como estamos en la obligacion de cumplir con nuestro compromiso financiero ,asi cuando no cumplimos con el pago de la cuota somos bloqueados de la plataforma, quiero que se nos cumplan acabalidad este modulo , GRACIAS ', '2021-11-30', 'cerrado', 'Rad-3155', '', '', '0000-00-00'),
(60, '14', 'queja', 'SANDRA ', 'CISNEROS ', NULL, 'scl.auditor@celac.com.co', 3115222784, 'prueba', '2021-11-30', 'cerrado', 'Rad-4992', '', '', '0000-00-00'),
(61, '14', 'queja', 'Eddyn', 'González Torres ', 1144209679, 'eddin9898@gmail.com', 3058903799, 'Buenas tardes \r\nMe dirijo a ustedes ya que no se que más hacer para que me solucionen, debido a que ya hace 2 años terminé de hacer mi doble titulación en Recursos Humanos, dónde tenía que hacer un proyecto productivo pero se llegó al acuerdo con Cordinación académica que no era necesario ya que no me iba a graduar para esas fechas, dijeron que me estarían informando para cuando empezaría el proyecto productivo, sin embargo nunca me dieron dicha información e ido varias veces a la institución y tampoco me dan solución, en estos momentos ya no puedo seguir con lo del proyecto productivo porque saldré del país, lo cual necesito una solución lo más rápido posible porque ya llevo 2 años con este incovenuente y nadie me soluciona, ni presencial ni tampoco por teléfono está es mi penultima opción donde si no recibo una ayuda, me ire por lo legal porque ni carrera ya está pagada en su totalidad ', '2021-11-30', 'cerrado', 'Rad-8686', '', '', '0000-00-00'),
(62, '14', 'sugerencia', 'Daniela ', 'Angulo ', 1010102554, 'anguloodaniielaa@gmail.com', 3168559096, 'Buenas tardes \r\nCordial saludo \r\n\r\nA quien interese \r\n\r\nPor este medio, hago una sugerencia en cuanto a los uniformes, ya que para mí gusto el material salió de pésima calidad, porque tiene una costura horrible, todos esos hilos se salen, el cierre de me mantiene bajando y la verdad es muy incómodo para mí, y a parte de eso el día de ayer Lunes 29 de Noviembre cuando me estaba colocando el uniforme para ir a mis respectivas prácticas se me cayeron dos botones la verdad estos uniformes me pareció una falta de respeto, porque si así mismo cuesta así mismo debería ser la calidad.\r\n\r\nGracias.', '2021-11-30', 'cerrado', 'Rad-6762', '', '', '0000-00-00'),
(63, '14', 'sugerencia', 'Daniela ', 'Angulo ', NULL, 'anguloodaniielaa@gmail.com', 3168559096, 'Buenas tardes \r\nCordial saludo \r\n\r\nA quien interese \r\n\r\nPor este medio, hago una sugerencia en cuanto a los uniformes, ya que para mí gusto el material salió de pésima calidad, porque tiene una costura horrible, todos esos hilos se salen, el cierre de me mantiene bajando y la verdad es muy incómodo para mí, y a parte de eso el día de ayer Lunes 29 de Noviembre cuando me estaba colocando el uniforme para ir a mis respectivas prácticas se me cayeron dos botones la verdad estos uniformes me pareció una falta de respeto, porque si así mismo cuesta así mismo debería ser la calidad.\r\n\r\nGracias.', '2021-11-30', 'cerrado', 'Rad-3454', '', '', '0000-00-00'),
(64, '14', 'queja', 'Valentina', 'Galeano', 1005944689, 'valengaleano0313@gmail.com', 3207283368, '1- Mi primer queja es que deberían ser más puntuales en horas de brindar informaciones por ejemplo la de los horarios , son muy inserios no se ponen de acuerdo, como es eso de que un docente nos diga que tenemos clase con otro sabiendo que en la plataforma no aparece y si es presencial también deberían avisar o enviar algún correo CON TIEMPO \r\n2-Deben mejorar en la parte financiera,administradora y actualicen la plataforma \r\n3- TODOS LOS DOCENTES son EXCELENTES  pero el instituto como tal ,deben mejorar muchas cosas porque por lo he visto  no soy la única que se queja de lo mismo ', '2021-12-01', 'cerrado', 'Rad-4788', '', '', '0000-00-00'),
(65, '14', 'reclamo', 'KAREN', 'GONZALEZ BURBANO', 1144171420, 'karenzgob478@gmail.com', 3186664080, 'Buenos días,  respetados señores, POLITÉCNICO INTERNACIONAL DE OCCIDENTE\r\n\r\nSolicito muy comedidamente la copia del contrato que firme con ustedes en Junio de  2020, con el fin de verificar en qué casos debo pagar una tercera póliza la cual según el área de tesorería debo cancelar porque continuó recibiendo educación en la institución, pero esto no ha sido por mi retraso en notas o por estar mal académicamente, esto a sido  por las múltiples cancelaciones de clase de docentes y nuevo agendamiento de estas por parte del PIO, por lo cual no tengo por qué verse afectada como cliente, debe ser la institución (PIO) que debe observar mi caso y darse cuenta cual es el tiempo que realmente estuve recibido clases sin interrupción.\r\n\r\nPor otro lado 6 meses corresponden a práctica laboral donde la póliza estudiantil NO me va a cubrir absolutamente nada, además cuando inicie clases recuerdo perfectamente que el director el Señor Alexander Garzón, via zoom ya que ese dia tenia una calamidad y no pudo asistir me explicó que las clases de la columna vertebral del técnico laboral auxiliar contable se realizaron presenciales y hasta la fecha las únicas dos materias fundamentales de esta carrera que he podido ver presencial han sido laboratorio contable y nomina, es decir todo lo demás fue virtual así que por este aspecto la póliza tampoco cubrirá nada.\r\nimage.png\r\n\r\n\r\n En ese orden de ideas yo no tengo porque pagar tres cuotas de póliza, por tal motivo necesito la copia del contrato.\r\n\r\nConfirmo que con lo anterior no dejaré de cancelarles a lo que me comprometi al principio,  pero NO cancelare una tercera cuota la cual no es por mi, si no por los retrasos de clases, y esto me ha exigido continuar en la institución cuando ya debí haber terminado.\r\n\r\nley 155 de 1994 \r\n\r\n \r\nimage.png\r\n\r\n\r\nQuedo atenta, muchas gracias.\r\n\r\n\r\nCordialmente \r\n', '2021-12-01', 'cerrado', 'Rad-4053', '', '', '0000-00-00'),
(66, '14', 'peticion', 'MARIA JOSE ', 'FONSECA ROMO', 1114620082, 'mariajo16.01.2004@gmail.com', 3107320489, 'Buenas hablan con María José fonseca TI 1114620082. \r\nVengo aquí, porque la verdad estoy muy cansada de cómo manejan las cosas en ese instituto. \r\nEn fin, el viernes pasado realice en horas de la tarde tipo 3:00 pm. \r\nHice el proceso de siempre, mandé foto del recibo de pago a WhatsApp etc, pero no me dan respuesta alguna, me dejaron en visto.\r\nEl día sábado les volví a escribir desde la mañana muy temprano, igual no me respondieron y perdí las clases que eran virtuales ese sábado.\r\n\r\nEl lunes igual, les escribí no me respondieron. Y el martes responden bien campante que fue exitoso. \r\n\r\nVoy a la plataforma y esta bloqueada aún, y me cobran 50 mil por días de Mora. \r\n\r\nMi pregunta es como me van a solucionar el pago de Mora porque no los voy a dar. No tengo el dinero además yo pague la mensualidad a tiempo. \r\n\r\n¿Hacen esta técnica para robar dinero o solo fue falla? \r\n\r\nY segundo como me van a solucionar las clases perdidas. ', '2021-12-03', 'cerrado', 'Rad-4282', '', '', '0000-00-00'),
(67, '22', 'peticion', 'July ', 'Ortiz', NULL, 'juvane040893@gmail.com', 3153010949, 'Nos gustaría que nos permitieran hacer integraciones grupales ( compartir) en esta navidad ', '2021-12-03', 'cerrado', 'Rad-1609', '', 'FABIAN MEZA', '2021-12-05'),
(68, '00', 'sugerencia', 'Johan Sebastián ', 'Utima Orozco ', NULL, 'lerma230@hotmail.com', 3173438542, 'Que mejores la calidad de los salones y en los Docentes la igualdad en todos los estudiantes No lo canso de decir igual en los estudiantes ', '2021-12-03', 'abierto', 'Rad-9683', '', '', '0000-00-00'),
(69, '22', 'felicitacion', 'Claritza hinestroza ', 'Hinestroza cuero ', NULL, '@', 313, 'Felicitar al jefe johan David Gil por su manera de enseñanza, apoyo y confianza que nos brinda, para que por medio de nuestros esfuerzos podamos salir adelante \nSiempre esta dispuesto para ayudarnos aunque muchas veces no solemos ser los mejores estudiantes muchas veces por disciplina pero es un super buen Jefe', '2021-12-03', 'cerrado', 'Rad-5890', '', 'FABIAN MEZA', '2021-12-05'),
(70, '22', 'queja', 'Lesly Daniela ', 'Zuñiga Lasprilla', NULL, 'danizl0522@hotmail.com', 3187001211, 'Buen dia, mi queja es que el personal financiero no responde mis mensajes de wp llevo varios dias esperando respuesta acerca de unas dudas que tengo sobre mi estado financiero por favor pido pronta respuesta y ayuda ya que me queda difícil dirigirme personalmente al instituto, gracias.', '2021-12-04', 'cerrado', 'Rad-2364', '', 'FABIAN MEZA', '2021-12-06'),
(71, '14', 'queja', 'ASTRID VANESSA', 'CARDONA TORRES', 1130677476, 'auxhigi@gmail.com', 3158796287, 'El salon de sistemas se encuentra en  condiciones no optimas de uso ya que no contamos con aire acondicionado y si pagamos merecemos una buena atención al estudiante, quedo atenta muchas gracias.', '2021-12-04', 'cerrado', 'Rad-8764', '', '', '0000-00-00'),
(72, '14', 'peticion', 'JENIFER ', 'Ordoñez Montenegro ', 1113532468, 'jeniisofi2470@hotmail.com', 3059396838, 'buena tarde. \r\nla siguiente es para informar que desde que empezó el paro se me fue imposible seguir pagando la mensualidad de la carrera ya que tuve muchos inconvenientes familiares, estos meses estuve realizando las practicas de la carrera pero lo que ganaba era para poder ayudar a mi madre es por esa la razón que no volví a pagar.... quería saber como podría hacer o si tengo que firmar algún documento donde me permitan culminar mi carrera y poder graduarme ya que falta muy poco. les agradecería que me pudieran ayudar.\r\ngracias por la atención prestada ', '2021-12-04', 'cerrado', 'Rad-1241', '', '', '0000-00-00'),
(73, '22', 'queja', 'Jensy ', 'Galeano ', NULL, 'certificacion@celac.com.co', 3187662472, 'Prueba auditoría ', '2021-12-06', 'cerrado', 'Rad-3421', '', 'FABIAN MEZA', '2021-12-08'),
(74, '14', 'reclamo', 'Wanda', 'montañp', 1111923086, 'mathiasqm0205@gmail.com', 3229181984, 'Hola, buenas noches, quiero realizar un reclamo sobre el tema de los uniformes, creo que exigen comprar un uniforme que a la final muchos no terminan usando, se demoran demasiado tiempo para entregar un uniforme, lo pague desde el mes de octubre, y esta es la fecha que no me lo entregan. yo necesito usarlo. eso habla muy mal de la institución educativa y la empresa que se supone esta encargada de hacer los uniformes.  busque una empresa que sea responsable y que cumpla. no se justifica tanta demora', '2021-12-08', 'cerrado', 'Rad-2116', '', '', '0000-00-00'),
(75, '14', 'peticion', 'Wanda', 'montaño', 1111923086, 'mathiasqm0205@gmail.com', 3127077025, 'Hola buenas noches, debido a lo sucedido hace unas semanas en el pio, dentro de la institución educativa. que un señor, prácticamente nos estafo, pidiéndonos dinero salón por salón, entrando de manera fácil y sin supervisión, diciendo que tenia permiso del pio para pedir dinero, y que fue mentira, quiero pedirle a ustedes señores pio, que por la seguridad de los estudiantes y todos los que laboras destro del pio, poner un vigilante por lo menos, a la entrada del pio, para que no cualquiera entre a robar o poner en peligro a alguien, esto lo pido a nombre de todos los alumnos y alumnas que sentimos esta mista inquietud y preocupación. de no sentirnos seguros dentro del pio. gracias y espero que ustedes tomen en cuenta esta peticion.', '2021-12-08', 'cerrado', 'Rad-1063', '', '', '0000-00-00'),
(76, '14', 'sugerencia', 'Wanda', 'montaño', 1111923086, 'mathiasqm0205@gmail.com', 3127077025, 'Hola buenas noches, quisiera sugerir que tomaran en cuenta que para la cantidad de alumnos que somos en el pio, se necesita un area para comer, se deberia habilitas un salon, con mesas sillas, calentador, lava platos. por que el area que hay es demasiado pequeña he incomoda. esta debajo de las escaleras, y la mesa y sillas que hay en ese lugar son aproximadamente 4, para la cantidad de alunmos creo que no es el lugar adecuado. ademas que es muy invomodo comer en frente del pio, por donde esta el rio, llevando sol y oliendo marihuna, aparte que corremos peligros ya que estamos expuestos en esa area. agradezco que tomen en cuenta mi sugerencia, es una necesidad,', '2021-12-08', 'cerrado', 'Rad-4316', '', '', '0000-00-00'),
(77, '14', 'peticion', 'KELLY JOHANA ', 'GUERRA BORJA', NULL, 'johanitha0927@gmail.com', 3163663378, 'Buena noche quiero. Soy estudiante de administrativo en salud no he 2021-1  y quiero solicitar una cita con la coordinadora academia para tratar un tema que a mi grupo le atañe debido a que sentimos falencias en unos temas y  de paso pedir que por favor nos brinden mas días de clase con otro docente el profe cruz el cual tenemos la ultima clase este miércoles 15 por favor agradeceria nos brinden el espacio para que tanto mis compañeros y yo  podamos hablar con la coordinadora academia.... Muchas gracias', '2021-12-09', 'cerrado', 'Rad-7645', '', '', '0000-00-00'),
(78, '22', 'sugerencia', 'DAVID FERNANDO', 'ORTIZ MARQUINEZ', NULL, 'Fernando.marw@gmail.com', 3145151392, 'Buenas tardes, se hace la solicitud de que el área académica tenga acceso y permisos a la modificación de inscripción del área comercial en el SIINFA ya que algunos estudiantes el estado de ellos se encuentra en \"NO\" y si no se encuentra en \"SI\" no se le puede asignar planes ni sacar los documentos para el carnet del estudiante.', '2021-12-10', 'cerrado', 'Rad-937', '', 'FABIAN MEZA', '2021-12-12'),
(79, '14', 'queja', 'HUSSEIN BENHASAN', 'ZAPATA ROJAS', 1107527624, 'husseinzapata@gmail.com', 3177572467, 'entrega de uniforme, se anexa documento, PQRS radicado fisico', '2021-12-10', 'cerrado', 'Rad-4262', '', '', '0000-00-00'),
(80, '14', 'queja', 'Valentina ', 'Galeano PEREZ', 1005944689, 'valengaleano0313@gmail.com', 3207283368, 'Buenas tardes \r\nSoy la estudiante valentina ,me acabo de dar cuenta que a ustedes los trabajadores del pio los robaron, de verdad creo que todos sabíamos que eso iba pasar, por que no colocan rejas,porque no colocan vigilantes, porque entonces cierren y abran esa puerta , allá cualquier persona entra y sale como si nada , si los roban a uno ustedes no se hacen cargo \r\nDe verdad deberian mejorar mucho,es un instituto que abren puertas pero deben De tener \"Más seguridad con los estudiantes\" por favor muchas gracias ', '2021-12-10', 'cerrado', 'Rad-2505', '', '', '0000-00-00'),
(81, '14', 'queja', 'Daniela ', 'Angulo ', 1010102554, 'anguloodaniielaa@gmail.com', 3168559096, 'Buenas noches \r\n\r\nCordial saludo \r\n\r\nA quien interese \r\n\r\nLa presente de esta queja, es porque el día de hoy en la clases de facturación el profesor Jesús me saco de la clase por bostezar y listo respeto su decisión, pero la verdad me parece una falta de respeto, que después de que yo llegue a mi casa, compañeros me escribieran que una compañera también hizo lo mismo y a ella no le dijo nada, la verdad pienso que la ley debería ser para todos.', '2021-12-10', 'cerrado', 'Rad-8559', '', '', '0000-00-00'),
(82, '14', 'queja', 'Daniela ', 'Angulo ', NULL, 'anguloodaniielaa@gmail.com', 3168559096, 'Buenas noches \r\n\r\nCordial saludo \r\n\r\nA quien interese \r\n\r\nLa presente de esta queja, es porque el día de hoy en la clases de facturación el profesor Jesús me saco de la clase por bostezar y listo respeto su decisión, pero la verdad me parece una falta de respeto, que después de que yo llegue a mi casa, compañeros me escribieran que una compañera también hizo lo mismo y a ella no le dijo nada, la verdad pienso que la ley debería ser para todos.', '2021-12-10', 'cerrado', 'Rad-9905', '', '', '0000-00-00'),
(83, '14', 'queja', 'Daniela ', 'Angulo ', NULL, 'anguloodaniielaa@gmail.com', 3168559096, 'Buenas noches \r\n\r\nCordial saludo \r\n\r\nA quien interese \r\n\r\nLa presente queja es para informar que el día de hoy, en horas de la tarde el profesor Jesús de facturación, me saco de su clase por bostesar, y listo respeto su decisión pero me parece una falta de respeto y me dió muchísima rabia, cuando yo llegue a mi casa, porque el a mi me dijo que no me iba hacer entrar a su clase, y veo que tres compañer@s me escriben a decirme que otra compañera hizo lo mismo y a ella no le dijo absolutamente nada, la verdad no entiendo a qué está jugando ese profesor? Cuál es la modalidad que el maneja? Porque se supone que la ley debe ser para todos, si me saco a mi de su clase por bostesar por qué no lo hizo con la otra compañera? Yo quiero saber si es que me la va a empezar a montar o qué, porque si es así la verdad quisiera hacer mi carta de retiro de una vez de esta institución. \r\n\r\nGracias.', '2021-12-10', 'cerrado', 'Rad-1869', '', '', '0000-00-00'),
(84, '22', 'queja', 'Mayerline ', 'Brand palomino ', NULL, 'Mayer-isma15@hotmail.com', 3145056256, 'Estoy inconforme con el manejo de la página,sobre todo con el lado financiero  que no se preocupan por esa página pero si por estar pasando listados de los estudiantes en mora cuando no es  culpa de uno que los pagos no carguen de inmediato que uno los realiza ', '2021-12-11', 'cerrado', 'Rad-6091', '', 'FABIAN MEZA', '2021-12-13'),
(85, '14', 'felicitacion', 'Wanda', 'Montaño viveros', NULL, 'mathiasqm0205@gmail.com', 3127077025, 'Hola buenas noches, quiero felicitar y agradecer a el Sr. Jeison Valencia. por dar una respuesta y solución tan rápida a mi reclamo, me siento muy satisfecha. gracias por su amabilidad, y por hacer un trabajo eficiente.', '2021-12-12', 'cerrado', 'Rad-7003', '', '', '0000-00-00'),
(86, '14', 'queja', 'Mildred Dayana', 'Diaz Gonzalez', 1234192212, 'diazdayana21@gmail.com', 3154968990, 'Cordial saludo,\r\nMuy respetuosamente por este medio informo mi inconformidad conforme a la entrega del uniforme, primero tener que hacer el traslado a otra parte para la toma de medidas, segundo lo pagué desde el día 10 de noviembre y dijeron que para el 14 de diciembre ya hacían la entrega y el día de hoy 14 de diciembre se pregunta en el área administrativa que por favor me hiciera la entrega del uniforme y la respuesta fue que no ha llegado que tengo que esperarme hasta enero para poder reclamar el uniforme.\r\n\r\nMe parece que es una falta de respeto que digan una cosa y no cumplan, como sugerencia deben de cambiar de proveedor.\r\n\r\nPor favor solicito me puedan dar una pronta solución con la entrega del uniforme, para poder arreglar el uniforme en vacaciones y en enero ya venir uniformada.\r\n\r\nMuchas gracias ', '2021-12-14', 'cerrado', 'Rad-1049', '', '', '0000-00-00'),
(87, '14', 'queja', 'Daniela ', 'Carabalí', 1144208974, 'cvdaniela12@gmail.com', 3175375933, 'Buenos días,\r\nMi siguiente inconformidad es porque ha transcurrido un mes y aún no me hacen la entrega del uniforme de asistencia administrativa en salud y el día jueves 16 salimos a vacaciones, solicito por favor nos puedan resolver el asunto o entregar de los que tienen archivados, gracias quedó atenta.', '2021-12-14', 'cerrado', 'Rad-483', '', '', '0000-00-00'),
(88, '14', 'queja', 'Daifenny ', 'Maya manzano', NULL, 'mecanico.1@hotmail.com', 3174820597, 'Buenos dias por este medio le informo que  tengo una  inconformidad ya que el tiempo estipulado de entrega del uniforme era el 14 de diciembre y preguntamos y nos dicen que no ha llegado gracias', '2021-12-14', 'cerrado', 'Rad-2308', '', '', '0000-00-00'),
(89, '14', 'queja', 'Saidy Gylete', 'Riascos Celorio', 1130648460, 'saidymaria86@gmail.com', 3226725441, 'Se radica PQRS físico en las instalaciones del PIO', '2021-12-14', 'cerrado', 'Rad-9423', '', '', '0000-00-00'),
(90, '14', 'queja', 'DANIELA', 'CALDERON MACHADO', NULL, 'danielacaldewron@gmail.com', 3176626708, 'Queja por entrega de uniforme radica PQRS fisico en las instalaciones del PIO', '2021-12-14', 'cerrado', 'Rad-5163', '', '', '0000-00-00'),
(91, '14', 'sugerencia', 'JUAN CAMILO', 'ACEVEDO GALEANO', 1005870653, 'camilo-acevedo1@hotmail.com', 3165415026, 'Radica PQRS  en las instalaciones del PIO ', '2021-12-14', 'cerrado', 'Rad-976', '', '', '0000-00-00'),
(92, '14', 'queja', 'Daniel Fernando', 'UL GUETIO', 1062321416, 'daniellullk@gmail.com', 3042112350, 'Señores:\r\nPOLITÉCNICO INTERNACIONAL DE OCCIDENTE Alexander Vásquez.\r\nCoordinador académico.\r\nAvenida 2 norte # 20N – 91\r\nSan Vicente.\r\nSantiago de Cali, Valle del Cauca.\r\nAsunto: QUEJA POR INCUMPLIMIENTO AL MANUAL DE CONVIVENCIA (DOCENTE).\r\nArt. 60 DEBERES DEL ASESOR EDUCATIVO.\r\nCordial saludo.\r\nPor medio del presente oficio, los estudiantes del 2021-04 Auxiliar Administrativo y contable, queremos expresarle de una manera muy respetuosa la inconformidad que tenemos debido a los inconvenientes que se han venido presentando con la docente de contabilidad general VICTORIA GUTIERREZ, ya que en repetidas ocasiones ha incumplido con las clases que se encuentran programadas en el Q10. Entendemos que este tipo de actitudes y acciones representan una falta al manual de convivencia:\r\nArt. 60 DEBERES DEL ASESOR EDUCATIVO.\r\n2. Cumplir con la planeación de área, de clases y actividades académicas de las sesiones de clase. 5. Asistir puntualmente a su jornada de sesión de clase programada y demás actividades programadas por el PIO y permanecer en ellas hasta su finalización.\r\n14. Utilizar los anuncios de la plataforma q10 para comunicarse con los estudiantes y establecer los acuerdos\r\nSantiago de Cali, 14-12-2021\r\n\r\nEn ningún momento se nos notificó por ningún medio la cancelación de la clase con fecha 04-12-2021, también hay fechas de clases anteriores suspendidas sin una notificación previa.\r\nSomos muchos estudiantes los que tenemos que abordar varios buses, salir de nuestros trabajos y continuar con la clases, algunos de nosotros incluso vivimos lejos pero tratamos de cumplir con nuestras responsabilidades porque tenemos un compromiso serio y por lo tanto creemos que no es justo que en un Instituto en donde nos recalcan siempre el respeto y la responsabilidad pasen estas cosas, por lo anterior ya mencionado esperamos que ustedes se pongan en nuestros zapatos y vean el esfuerzo que hacemos a diario.\r\nNosotros estamos más que comprometidos a dar lo mejor de cada uno y poder llegar hasta el final.\r\nAgradecemos a usted y esperemos que por favor nos colabore con esta situación.\r\nAtentamente:\r\nESTUDIANTES 2021-04\r\nAUXLIAR ADMINISTRATIVO Y CONTABLE.', '2021-12-14', 'cerrado', 'Rad-3712', '', '', '0000-00-00'),
(93, '14', 'queja', 'Diana María ', 'Ramos Gracia ', NULL, 'dmrg1084@gmail.com', 3135335844, 'Cordial saludo.\r\nPor medio del presente oficio, los estudiantes del 2021-04 Auxiliar Administrativo y \r\ncontable, queremos expresarle de una manera muy respetuosa la inconformidad \r\nque tenemos debido a los inconvenientes que se han venido presentando con la \r\ndocente de contabilidad general VICTORIA GUTIERREZ, ya que en repetidas \r\nocasiones ha incumplido con las clases que se encuentran programadas en el Q10.\r\nEntendemos que este tipo de actitudes y acciones representan una falta al manual \r\nde convivencia:\r\nArt. 60 DEBERES DEL ASESOR EDUCATIVO.\r\n2. Cumplir con la planeación de área, de clases y actividades académicas de las sesiones de clase.\r\n5. Asistir puntualmente a su jornada de sesión de clase programada y demás actividades \r\nprogramadas por el PIO y permanecer en ellas hasta su finalización.\r\n14. Utilizar los anuncios de la plataforma q10 para comunicarse con los estudiantes y establecer los acuerdos.\r\nEn ningún momento se nos notificó por ningún medio la cancelación de la clase \r\ncon fecha 04-12-2021, también hay fechas de clases anteriores suspendidas sin \r\nuna notificación previa.\r\nSomos muchos estudiantes los que tenemos que abordar varios buses, salir de \r\nnuestros trabajos y continuar con la clases, algunos de nosotros incluso vivimos \r\nlejos pero tratamos de cumplir con nuestras responsabilidades porque tenemos un \r\ncompromiso serio y por lo tanto creemos que no es justo que en un Instituto en \r\ndonde nos recalcan siempre el respeto y la responsabilidad pasen estas cosas, por \r\nlo anterior ya mencionado esperamos que ustedes se pongan en nuestros zapatos \r\ny vean el esfuerzo que hacemos a diario.\r\nNosotros estamos más que comprometidos a dar lo mejor de cada uno y poder \r\nllegar hasta el final.\r\nAgradecemos a usted y esperemos que por favor nos colabore con esta situación.\r\nAgradecemos a usted y esperemos que por favor nos colabore con esta situación.\r\nAtentamente:\r\nESTUDIANTES 2021-04\r\nAUXLIAR ADMINISTRATIVO Y CONTABLE.', '2021-12-15', 'cerrado', 'Rad-4914', '', '', '0000-00-00'),
(94, '14', 'queja', 'luis', 'hernandez', NULL, 'riceefloww@hotmail.com', 3152658396, 'POLITÉCNICO INTERNACIONAL DE OCCIDENTE\r\nAlexander Vásquez.\r\nCoordinador académico.\r\nAvenida 2 norte # 20N – 91\r\nSan Vicente.\r\nSantiago de Cali, Valle del Cauca.\r\nAsunto: QUEJA POR INCUMPLIMIENTO AL MANUAL DE CONVIVENCIA\r\n(DOCENTE).\r\nArt. 60 DEBERES DEL ASESOR EDUCATIVO.\r\nCordial saludo.\r\nPor medio del presente oficio, los estudiantes del 2021-04 Auxiliar Administrativo y\r\ncontable, queremos expresarle de una manera muy respetuosa la inconformidad\r\nque tenemos debido a los inconvenientes que se han venido presentando con la\r\ndocente de contabilidad general VICTORIA GUTIERREZ, ya que en repetidas\r\nocasiones ha incumplido con las clases que se encuentran programadas en el Q10.\r\nEntendemos que este tipo de actitudes y acciones representan una falta al manual\r\nde convivencia:\r\nArt. 60 DEBERES DEL ASESOR EDUCATIVO.\r\n2. Cumplir con la planeación de área, de clases y actividades académicas de las sesiones de clase.\r\n5. Asistir puntualmente a su jornada de sesión de clase programada y demás actividades\r\nprogramadas por el PIO y permanecer en ellas hasta su finalización.\r\n14. Utilizar los anuncios de la plataforma q10 para comunicarse con los estudiantes y establecer los\r\nacuerdos\r\nEn ningún momento se nos notificó por ningún medio la cancelación de la clase\r\ncon fecha 04-12-2021, también hay fechas de clases anteriores suspendidas sin\r\nuna notificación previa.\r\nSomos muchos estudiantes los que tenemos que abordar varios buses, salir de\r\nnuestros trabajos y continuar con la clases, algunos de nosotros incluso vivimos\r\nlejos pero tratamos de cumplir con nuestras responsabilidades porque tenemos un\r\ncompromiso serio y por lo tanto creemos que no es justo que en un Instituto en\r\ndonde nos recalcan siempre el respeto y la responsabilidad pasen estas cosas, por\r\nlo anterior ya mencionado esperamos que ustedes se pongan en nuestros zapatos\r\ny vean el esfuerzo que hacemos a diario.\r\nNosotros estamos más que comprometidos a dar lo mejor de cada uno y poder\r\nllegar hasta el final.\r\nAgradecemos a usted y esperemos que por fav', '2021-12-15', 'cerrado', 'Rad-3021', '', '', '0000-00-00'),
(95, '14', 'peticion', 'Miguel eduardo ', 'Solano Diaz ', 1144080533, 'miguelsolano1435@outlook.com', 3215241088, 'El día 15 de diciembre de 2021 se realiza un cambio de horario a ultima hora pero en horas no pertinentes como las 10:37 de la noche por lo tanto muchos de los compañeros no pudieron ver yo solicito que se de prioridad al cuerpo estudiantil de brindarle una información clara y con suficiente tiempo de horario para notificar el cambio. Gracias ', '2021-12-16', 'cerrado', 'Rad-489', '', '', '0000-00-00'),
(96, '14', 'queja', 'Martha liliana', 'Gutiérrez ', 1144196829, 'lilianaguti-15@hotmail.com', 3126528989, 'Me permito comunicar mi inconformidad sobre el tema de los uniformes por qué realizar el pago el día 14/octubre /2021 y hasta la fecha no me han entregado mi uniforme, me dicen que lo entregan en el mes de enero , y me siento inconforme por qué se pago antes del corte para que llegara a tiempo por qué en el mes de abril se acaba mi tiempo lectivo . Si no se puede solucionar solicito la devolución de mi dinero', '2021-12-16', 'cerrado', 'Rad-5330', '', '', '0000-00-00'),
(97, '14', 'reclamo', 'Suany marcela', 'Labrada victoria', NULL, 'suannylabrada@hotmail.com', 3173365658, 'Buenas tardes cordial saludo, el día 8 de noviembre hice el pago de mi uniforme, y me dijeron que son 20 días hábiles para la entrega y ya ha pasado más de una semana y no me han hecho la entrega ', '2021-12-16', 'cerrado', 'Rad-6436', '', '', '0000-00-00'),
(98, '14', 'peticion', 'Danny Jefferson', 'Montaño Candelo', NULL, 'dannymontano11@gmail.com', 3172269183, 'Buen día. \r\n\r\nMe dirijo a ustedes en calidad de estudiante de la institución para solicitarle respetuosamente que se me brinda pronta solución con el uniforme de la institución, puesto que l tiempo que estaremos en formación antes de practicas será muy corto y el proveedor no brinda garantías aunque el plazo de entrega ya se cumplió. \r\n\r\nagradezco mucho su pronta gestión. ', '2021-12-17', 'cerrado', 'Rad-9506', '', '', '0000-00-00'),
(99, '22', 'queja', 'lizeth', 'moran romero', NULL, 'lizr03065@gmail.com', 1067463401, 'Desde noviembre del presente año no permite consultar el estado de cuenta por la plataforma del estudiante.\nPor otro lado manifiesto inconformidad con la practicas que venimos realizando ya que no nos permiten estar en urgencias. Tenia una buena reputaciòn del instituto pero personalmente no recomiendo. No claridad en el contrato.', '2021-12-18', 'cerrado', 'Rad-4492', '', 'FABIAN MEZA', '2021-12-20'),
(100, '14', 'queja', 'Suany marcela', 'Labrada victoria', NULL, 'suannylabrada@hotmail.com', 3173365658, 'Buenas tardes, anteriormente hice un reclamo respecto al uniforme que no se me ha sido entregado y ya han pasado más de los 20 dias de plazo para la entrega, para que por favor me solucionen algo, y como sugerencia deberían de cambiar de proveedores, porque no solamente soy yo la que se queja al respecto sino muchos estudiantes, porque no se cumple la fecha de entrega de los uniformes, muchas gracias quedó atenta ', '2021-12-20', 'cerrado', 'Rad-4606', '', '', '0000-00-00'),
(101, '14', 'queja', 'NICOLL VANESSA', 'VARGAS MORENO', 1006435983, 'nvargasmoreno6@gmail.com', 3227259509, 'Buenos dias\r\n\r\nMe comunico para poner una queja, Me he acercado en reiteradas ocasiones al politécnico y no me han entregado mis diplomas, y se justifican con el hecho de que aun no están firmados, entonces si hubiera ido a a graduación si me los hubieran dado? eso no tiene sentido, me dicen relajadamente que debo esperar hasta enero pero no entiendo porque si se supone que todos los diplomas tenían que estar listo, no se donde mas me pueda comunicar para poner mi queja y que me den solución', '2021-12-21', 'cerrado', 'Rad-8979', '', '', '0000-00-00'),
(102, '22', 'peticion', 'Karol Dayana ', 'Quintero Sanchez', NULL, 'karolda2003@hotmail.com', 3187142053, 'Quisiera saber cuando me doy cuenta si quede o no en el instituto ya que el formulario de inscripción fue de manera virtual, muchas gracias.', '2021-12-21', 'cerrado', 'Rad-285', '', 'FABIAN MEZA', '2021-12-23'),
(103, '22', 'peticion', 'Elizabeth ', 'Moreno Cob', NULL, 'egresados@institutofatima.edu.cop', 3044650080, 'Copio requerimiento de la supervisora Mònica Bedoya.  Apreciada Elizabeth, estoy tratando de subir al aplicativo las supervisiones realizadas, pero al actualizar para guardar la información esta no aparece, he perdido todo el trabajo de la mañana tratando de subir las visitas.\n\nPor favor solicitar a quien corresponda revisar este aspecto en el aplicativo ya que se está perdiendo tiempo al tratar de actualizar la información.\nGracias', '2021-12-29', 'cerrado', 'Rad-1753', '', 'FABIAN MEZA', '2021-12-31'),
(104, '22', 'peticion', 'Elizabeth ', 'Moreno Cobo', NULL, 'egresados@institutofatima.edu.cop', 3044650080, 'Se observo que en al cambia el estado a egresado en el SIINFa, a algunos estuidantes si se consultan individuales, si aparece como egresados, pero si se consulta por egresados no aparecen: VALERIA DEL MAR SIERRA VIDAL	207819397	1107516263\nDIANA CAROLINA CRUZ SANCHEZ	200119172	1005967366\nDANIELA CHAGUENDO TALAGA	200119390	1007753695\n', '2021-12-29', 'cerrado', 'Rad-1359', '', 'FABIAN MEZA', '2021-12-31'),
(105, '16', 'peticion', 'jesus gerardo', 'olaya cuero', NULL, 'andres5130@hotmail.com', 3143223377, 'nuestra institución educativa esta interesada en certificarse en la norma NTC 5555', '2022-01-06', 'cerrado', 'Rad-3042', '', '', '0000-00-00'),
(106, '14', 'peticion', 'heillyn vivian', 'chavarro alzate ', NULL, 'heillynchavarroo@gmail.com', 3003295265, 'Buena tarde la siguiente es para es que hasta el dia tengo al dia mis pagos pero tengo bloqueada la plataforma del area de salud ocupacional lo cual no puedo ingresar a ella para poder subir mis trabajos y poder seguir con ellos. pido por favor revisargracias.', '2022-01-08', 'cerrado', 'Rad-235', '', '', '0000-00-00'),
(107, '14', 'queja', 'JUAN SEBASTIAN ', 'MUÑOZ CUADROS', 1005967633, 'juansebastianm68@gmail.com', 318, 'Cordial saludo\r\nSe recibe llamada de la acudiente del estudiante la Sra. Alejandra Rico, quien informa estar disgustada porque realizo el pago de la mensualidad el 4 de enero y a la fecha 11 de enero del 2022 el estudiante aparece en mora, y no puede ingresar a las clases virtuales, por vía whatsapp la acudiente envia pantallazo de que escribió en la fecha anteriormente mencionada al numero de tesorería.', '2022-01-11', 'cerrado', 'Rad-4488', '', '', '0000-00-00'),
(108, '22', 'peticion', 'ISABELLA', 'Grajales Ospina', NULL, 'isabellagrajales25@gmail.com', 3172221451, 'Buenas tardes era para preguntar cual era mi numero de formulario por favor; gracias.', '2022-01-11', 'cerrado', 'Rad-7685', '', 'FABIAN MEZA', '2022-01-13'),
(109, '20', 'felicitacion', 'Lina maria', 'Palau dosman', NULL, 'Linadosman@hotmail.com', 3116085689, 'Felicitaciones', '2022-01-12', 'abierto', 'Rad-8401', '', '', '0000-00-00'),
(110, '14', 'peticion', 'wendy yarisa', 'cabezas klinger', NULL, 'wendy.yarisa@gmail.com', 3158599525, 'buenas tardes el motivo de esta peticion es para saber para cuando sera posible que me puedan patrocinar o hacer las practicas ya que en el momento me en cuentro desempleada y ya casi termino la teoria ', '2022-01-12', 'cerrado', 'Rad-1706', '', '', '0000-00-00'),
(111, '14', 'reclamo', 'ANDRES FERNEY ', 'CUARTAS REINNA', NULL, 'ANDRESCUARTAS1407@GMAIL.COM', 3004955794, 'BUENAS TARDES LA PRESENTE ES PARA HACER EL RECLAMO DE PORQUE LA INSTITUCIÒN COMO ENTIDAD PRESTADORA DEL SERVICIO DE EDUCACIÒN A VENIDO PRESENTANDO FALLAS EN EL PROCESO DE ENTREAGA DE UNIFORMES CIN LA ENTIDAD PRESTADORA DEL SERVICIO DE UNIFORMIDAD , DONDE HACE ,APROXIMADAMENTE 2 MESES O MÀS ME SUGERIERON PAGAR LA CUOOTA DEL UNIFORME YHASTA  ENNNONCES NO HE RECIBIDO RESPUESTA OPORTUNA POR PARTE DE NADIE . YA QUE SE ARGUMENTAN QUE VAN EN LA ENTREGA POR FECHAS DE CORTES ,PERO DEBERIAN TENER UA MEJOR ADMINISRACIÒN O MANEJO YA QUE EL UNIFORME SE UTILIZA SOLO PARA EL PROCESO  DE LA ETPA DE PARENDIZAJE , Y NO EN RELACIÒN CIN LA DEMORA DE DICHA ENTREGA NO ES VALIDO NI JUSTO LA INVERSICIÒN DE DICHA EXIGENCIA QUE SOLO SE CUMPLE PARA EL ESTUDIANTE MAS NO PARA LA ENTIDAD PRESTADORA DEL DISEÑO O ENTREGA DE UNIFORMES. GRACIAS POR SU  ATENCIÒN \r\nQUEDO ATENTO A SU RESPUESTA.', '2022-01-13', 'cerrado', 'Rad-7969', '', '', '0000-00-00'),
(112, '14', 'sugerencia', 'ANDRES FERNEY ', 'CUARTAS REINA', 1113307786, 'andrescuartas1407@gmail.com', 3106343852, 'BUENAS TARDES LA PRESENTE ES PARA PRESENTAR ANTE USTEDES UNA SUGERENCIA  DE QUE SE TENGA MAS EN CUENTA LA BUENA ORGANIZCIÒN Y RESPUESTA  INMEDIATA.\r\nA  LOS PROCESOS ADMINISTRATIVOS Y DE TESORERIA , PARA  EL DESBLOQUEO DE LA PLATAFORMA Q10 CUANDIO SE PRESENTA LA FALTA DE PAGO ATIEMPO YA QUE ENN OCACIONES HAY MUCHOS ERRORES DONDE SE A PAGADO Y S HACE LA RECLAMACIÒN Y LA PLATAFORMA ES UN COMPLIQUE PARA SU DESBLOQUEO , YA QUE LOS CANALES DE ATENCIÒN  WSHAP Y EL NUMERODE CELULR 3204670358 , NO ES CONTESTADO A TIEMPO .\r\nY DE ESTA MANERA SE ATRAZA EL PROCESO DEASISTENCIA A CLASES VIRTULES , TRABAJOS ETC.\r\nDEBERIAN HABER MAS PERSONAL SI ES QUE ,ESE ES EL PROBLEMA QUE RADICA PARA LASOLICITUD DE RESPUESTA ADICHO ESCENARIO. QUEDO TAENTO \r\nGRACIAS POR SU ATENCIÒN.\r\n', '2022-01-13', 'cerrado', 'Rad-7839', '', '', '0000-00-00'),
(113, '22', 'reclamo', 'angi rocio', 'Muñoz hoyos ', NULL, 'hoyosangie29@gmail.com', 3153636266, 'Buena día, me dirijo a ustedes ya que me parece una falta de respeto, no dar solución a un error generado por el establecimiento. Pues llevo mucho tiempo aclarando el problema que tengo como estudiante de tené 2 códigos los cuales me han generado inconvenientes a la hora de generar las facturas de pago, e realizado todo lo que me han dicho y ahora que ya casi termino me doy cuenta me estoy desertada según porque no he pagado. Espero una solución pronta ya que estoy próxima a terminar mis practicas. Gracias atte  angi roció muñoz estudiante de Asf 65sp cod 208019516\' cc 1107092960', '2022-01-13', 'cerrado', 'Rad-2374', '', 'FABIAN MEZA', '2022-01-15'),
(114, '22', 'reclamo', 'angi rocio', 'Muñoz hoyos ', NULL, 'hoyosangie29@gmail.com', 3153636266, 'Buena día, me dirijo a ustedes ya que me parece una falta de respeto, no dar solución a un error generado por el establecimiento. Pues llevo mucho tiempo aclarando el problema que tengo como estudiante de tené 2 códigos los cuales me han generado inconvenientes a la hora de generar las facturas de pago, e realizado todo lo que me han dicho y ahora que ya casi termino me doy cuenta me estoy desertada según porque no he pagado. Espero una solución pronta ya que estoy próxima a terminar mis practicas. Gracias atte  angi roció muñoz estudiante de Asf 65sp cod 208019516\' cc 1107092960', '2022-01-13', 'cerrado', 'Rad-7084', '', 'FABIAN MEZA', '2022-01-15'),
(115, '22', 'reclamo', 'angi rocio', 'Muñoz hoyos ', NULL, 'hoyosangie29@gmail.com', 3153636266, 'Buena día, me dirijo a ustedes ya que me parece una falta de respeto, no dar solución a un error generado por el establecimiento. Pues llevo mucho tiempo aclarando el problema que tengo como estudiante de tené 2 códigos los cuales me han generado inconvenientes a la hora de generar las facturas de pago, e realizado todo lo que me han dicho y ahora que ya casi termino me doy cuenta me estoy desertada según porque no he pagado. Espero una solución pronta ya que estoy próxima a terminar mis practicas. Gracias atte  angi roció muñoz estudiante de Asf 65sp cod 208019516\' cc 1107092960', '2022-01-13', 'cerrado', 'Rad-5912', '', 'FABIAN MEZA', '2022-01-15'),
(116, '14', 'queja', 'Ingrid Lorena', 'Suarez Ramirez', NULL, 'ingridloren22@hotmail.com', 3222608309, 'Mi queja es el tema de los uniformes, \r\nSe que existe un proveedor que hacen los respectivos uniformes   y ustedes son ajenos a ellos , pero es muy desmotivante que desde   el 23 de septiembre 2021 pague el uniforme  , no me dieron la información como era y solo hasta el 11 de noviembre 2021 tome las medidas  , acorde a lo estipulado el corte era el 12  de noviembre 2021 y se cuenta 20 días hábiles el cual ya pasaron 20 dias y aun no se tiene respuesta por parte del proveedor.Ni por llamada , ni por mensaje. Y me preocupa que en el manual de convivencia  Articulo 10 , Faltas disciplinarias  . Articulo 11 Faltas Leves  . Portal el uniforme de manera inadecuada.\r\nNo presentar en la practica el uniforme en el instituto.Que por falta de los uniformes tenga una falta.\r\n Adicional en presencial las personas de servicio al cliente en el pio siempre salen con evasivas y no dan una respuesta apropiada.\r\nEs enero 14  -2022 .Y aun no tengo respuesta . Quedo atenta , muchas gracias.', '2022-01-14', 'cerrado', 'Rad-6422', '', '', '0000-00-00');
INSERT INTO `pqrs` (`id`, `url`, `tipo_peticion`, `nombres`, `apellidos`, `identificacion`, `email`, `n_contacto`, `descripcion`, `fecha_registro`, `estado`, `radicado`, `empresa`, `responsable`, `f_asignacion`) VALUES
(117, '14', 'queja', 'luis santiago ', 'buitrago guerrero ', NULL, 'buitragosantiago47@gmail.com', 3156140809, 'llevamos esperando mucho tiempo por la entrega de los UNIFORMES DE VETERINARIA \r\nnisiquiera una llamada o algun mensaje nos han dado \r\nnos parece una falta de respeto y mucha irresponsabilidad de parte de pio pues ya hemos preguntado personalmente y nos salen con que nos van a llamar y esto nunca pasa ', '2022-01-14', 'cerrado', 'Rad-6733', '', '', '0000-00-00'),
(118, '14', 'queja', 'Nicole Gabriela ', 'Torres Gomez', NULL, 'nicoltorres716@gmail.com', 3153139308, 'Buenas tardes, \r\nPrimero que todo nunca me dieron información sobre como era la situación de la toma de medidas, nunca dijeron el lugar, nada.\r\n El 14 de octubre de 2021 pague el uniforme y 8 dias después fui a que me tomaran las medidas, o sea, el 22 de octubre de 2021 y esta es la fecha que ni siquiera un mensaje de texto me han enviado, y ya pasaron los 20 dias, me preocupa eso, espero una pronta respuesta, quedo atenta, muchas gracias.', '2022-01-14', 'cerrado', 'Rad-7767', '', '', '0000-00-00'),
(119, '14', 'queja', 'Laura ', 'Rivera Diaz', NULL, 'laura.rivera.036@gmail.com', 3112597388, 'Buenas tardes, la presente queja recoge varios aspectos. Pertenezco al curso de Auxiliar Veterinaria Sabatino: Inicialmente, los docentes no presentan los temas que se evaluaran a lo largo del módulo, son muy pocos los que han hecho esa labor, además tampoco se establece el tiempo de duración del módulo, en varias ocasiones algunos docentes no estaban enterados de que solo les quedaba una clase o en algunos casos han solicitado una o dos clases más. Como segundo punto, en la ignorancia respecto a mi conocimiento de los temas tratados en el curso hasta ahora, estamos crudos, como se diría vulgarmente, cabe resaltar que es el primer semestre, sin embargo hemos visto aproximadamente 4 módulos de temas fijos en el auxiliar ( es decir, quitando servicio al cliente, emprendimiento, etc.) y hay estudiantes que no tienen temas claros; Queda totalmente claro que esto no es una carrera universitaria y que los temas son básicos y generalizados, pero como instituto pueden probar realizar un examen al grupo en cuanto a las materias vistas y el nivel va a ser extremadamente bajo, con todo respeto no soy quien para juzgar al instituto o sus métodos de enseñanza, pero los conocimiento implantados en los estudiantes han estado por debajo de lo básico en varios aspectos. Como último punto, debo resaltar el desorden por parte del área administrativa o de gestión, realmente no sabría con exactitud los encargados, hoy ( viernes,14 de Enero 2021) llamé en horas de la mañana para confirmar si el día de mañana es presencial o no, me dijeron que confirmarían por medio de la monitora del grupo y son las 7:21pm y no se ha confirmado nada, teniendo en cuenta que hay estudiantes que están fuera de la ciudad, hay un grupo de whatsap para los grupos sabatinos de los diferentes cursos y solo se usó en la inducción, en la plataforma no hay nada y por medio del correo tampoco. Me disculpo si en algún momento le falte el respeto a la institución, sin embargo tanto mi familia como yo, nos esforzamos por la parte económica y en mi caso por la dedicación, por ende supongo que tengo el derecho de realizar dicha queja. Quedo atenta y muchas gracias.', '2022-01-14', 'cerrado', 'Rad-3505', '', '', '0000-00-00'),
(120, '14', 'queja', 'JUAN SEBASTIAN ', 'CARDONA GOMEZ', NULL, 'juansebas1245@gmail.com', 3182440951, 'Buenos dias me comunico con ustedes por que presento una queja en muchos sentidos no me siento conforme con la clase con la profesora Elsa Maria Britto Perez no da las clases como son, no tenemos notas y me veo preocupado con ella por que no se como voy yo ni mis compañeros.\r\n2. Otra problematica es con el uniforme llevamos 4meses y nada a una compañera le contestaron mal y ya ni contestan los telefonos la respuesta que dan es que vayamos por las telas y que las hagamos en otra parte.\r\n3 el horario esta descuadrado no es el horario como nos asignaron desde un principio cambian de la noche a la mañana y aparece materia de la profe elsa terminada cuando nadie a terminado con ella ninguna de las 2 materias que nos dan\r\n\r\nEntonces yo pido por fa solucion por que no voy a pagar mas dinero para que no enseñen lo  que se debe espero pronto respuesta muchas gracias', '2022-01-15', 'cerrado', 'Rad-4673', '', '', '0000-00-00'),
(121, '14', 'sugerencia', 'Jennifer', 'Martinez Correa', NULL, 'jennifermusick92@gmail.com', 3017887272, 'Deberíamos ingresar a la presencialidad el 24 de enero nos estamos quedando atrasados y las clases que deberíamos ver en 4 horas las vemos en dos horas y nos están perjudicando nosotros somos formación cerrada con valle del Lili y también deberían poner un orden con el horario nos están cruzando las capacitaciones con las clases virtuales del pío muchas gracias ojalá sean escuchadas mis sugerencias ', '2022-01-17', 'cerrado', 'Rad-2947', '', '', '0000-00-00'),
(122, '22', 'felicitacion', 'Emelly ', 'Yankovich ', NULL, 'emellyyanko@gmail.com', 3155563555, 'Yo felicito a la profesor claudia mosquera, por explicat muy bien y tener tanta paciencia cuando ni entendemos algun tema. ', '2022-01-21', 'cerrado', 'Rad-86', '', 'FABIAN MEZA', '2022-01-23'),
(123, '14', 'felicitacion', 'Ana María ', 'Montalvo', NULL, 'coordinacion.academica@pio.edu.co', 3126912318, 'Felicito por el servicio prestado de limpieza en los últimos días ', '2022-01-21', 'cerrado', 'Rad-5961', '', '', '0000-00-00'),
(124, '14', 'felicitacion', 'Paubla ', 'Lucumi', NULL, 'coordinacion.salud@pio.esu.co', 3158582374, 'Realizó reconocimiento y felicitaciones por el servicio de limpieza y organización de la institución en el transcurso del mes de enero. Felicitaciones Jazmin ☺️', '2022-01-21', 'cerrado', 'Rad-2570', '', '', '0000-00-00'),
(125, '14', 'queja', 'nathalia', 'suarez', NULL, 'nata-132620@hotmail.com', 3145719327, 'Buenas tardes la siguiente es para comentar mi inconformidad con los horarios ya que el inicio de clase a las 730 se me hace muy temprano por el motivo de que vivo muy lejos y tengo una bebe la cual me la reciben a esa hora a la guarderia y no la puedo dejar mas temprano tambien el cambio que tuvieron que una clase es de 730 a 1030 y otra empieza a las 2:30 el lapso de tiempo entre las clases es de 3 horas tiempo que tiene que quedarse uno expuesto en la calle. ya que ustedes se basan en lo que uno firmo al ingresar. el horario estipulado de ingreso era a las 8 y el de salida a las 5. gracias por su atenciom.', '2022-01-25', 'cerrado', 'Rad-1192', '', '', '0000-00-00'),
(126, '16', 'peticion', 'yahaira ', 'ortiz osorio', NULL, 'recursoshumanos@institutofatima.edu.co', 3122033188, 'cordial saludo,\r\nsolicito amablemente capacitación en  cuanto a la documentación que maneja talento humano en el SIINFA.\r\nGracias', '2022-01-26', 'cerrado', 'Rad-2985', '', '', '0000-00-00'),
(127, '14', 'reclamo', 'BRAYNI LIZQUENI ', 'Timana Chilito', 1002806393, 'braynilizquenit@gmail.com', 3218797317, 'Cordial saludo me dirijo a ustedes por la inconformidad que que tengo con la programación de los horarios y la hora de llegada. \r\nLa verdad estoy muy inconforme con el tipo de horario ya que es es un desorden total de que nos asignen una clase y luego nos la quinten o que luego nos digan que si hay clases presenciales y a luego que no. Eso me parece una parte respeto para nosotros como estudiantes y hablando también con la hora de llegada que ahora es a las 7:30 al principio nos digieron y se suponía que entrábamos a las 8:00am porque tienen que colocar ahora ese tipo de hora tengan en cuenta que no todos los estudiantes vivimos serca al instituto hay unos que viven por yumbo, jamundi. Deben colocar medidas y areglar eso porfavor. \r\nCon los horarios también por ejemplo hoy fue una compañera de enfermería no tenía que estudiar presencial deben tener más claridad y darnos horarios y horas de entrada exacta. Gracias por su atención', '2022-01-26', 'cerrado', 'Rad-8509', '', 'JEISON ANDRES  VALENCIA CANOAS', '2022-03-17'),
(128, '16', 'peticion', 'Natali', 'Riaño', NULL, 'natalirb0829@gmail.com', 3124933747, 'Estamos interesados en la certificacion ', '2022-01-27', 'cerrado', 'Rad-6355', '', '', '0000-00-00'),
(129, '22', 'peticion', 'VICTOR HUGO', 'GUALTEROS', NULL, 'bienestar@aunarcali.edu.co', 3163683548, 'HORARIO DE ENFERMERA PRÁCTICANTE\nCordial saludo, muy amablemente le solicito el favor de informarme si tiene una estudiante practicante una ENFERMERÍA en los siguientes horarios o unos horarios similares, para acompañar la labor y funciones de la enfermera de la Corporación Universitaria Autónoma de Nariño, AUNAR Cali, que está realizando su quinto (5°) semestre de medicina. \nLunes	Martes	Miércoles	Jueves	Viernes\n2:00 pm A  6:00 pm\n	2:00 pm  A 6:00 pm\n	9:00 am A 12:00md y de 2:00pm A   6:00 pm	9:00 am A 12:00md y de 2:00pm A   6:00 pm	7:00 am A 11:00AM\n\n4 HORAS	4 HORAS	7 HORAS	7 HORAS	4 HORAS\n\n', '2022-01-31', 'cerrado', 'Rad-4497', '', 'FABIAN MEZA', '2022-02-02'),
(130, '22', 'felicitacion', 'Yessica paola ', 'muñoz castaño ', NULL, 'yessicap1927@gmail.com', 3128681715, 'Para los jefes tatiana, susana, betty, yeison :) Darles muchas gracias por aportar a mi vida con sus conocimientos, su paciencia por creer en mi y por cada uno de sus sugerencias en mi desarrollo. DLB ', '2022-01-31', 'cerrado', 'Rad-3958', '', 'FABIAN MEZA', '2022-02-02'),
(131, '22', 'felicitacion', 'vanessa ', 'gonzalez', NULL, 'vgonzalezpedrero@gmail.com', 3127087531, 'para los jefes betty ,jeison,susana , tatiana  agradecimiento por  sugerencias y opiniones para mi \nformacion ', '2022-01-31', 'cerrado', 'Rad-4391', '', 'FABIAN MEZA', '2022-02-02'),
(132, '22', 'queja', 'HAROLD DIEGO ', 'REYES HOLGUIN', NULL, 'HDR14@HOTMAIL.COM', 3004345963, 'HE TRATADO DE COMUNICARME CON LA LINEA 2741376 Y EL WHATSAPP 3107061547 Y EN NINGUNO DE LOS DOS CONTESTAN, PARA QUE TIENEN ESTAS LINEAS DE ATENCION SI NO VA TENER PERSONAL DISPONIBLE PARA QUE LOS CONTESTE. GRACIAS', '2022-02-01', 'cerrado', 'Rad-3008', '', 'FABIAN MEZA', '2022-02-03'),
(133, '14', 'reclamo', 'Ana Milena', 'Vélez Arévalo', 31713902, 'mi.arevalo@hotmail.com', 3153014057, 'Buen Día, desde que empecé a estudiar muy entusiasmada, me desilusiona mucho la falta de responsabilidad en la no entrega de los uniformes, a la fecha no tengo respuesta del instituto donde me he dirigido físicamente, ni del lugar que los hacen. Estos son detalles que desinflan mucho y se ve mal la institución.', '2022-02-04', 'cerrado', 'Rad-2520', '', 'JEISON ANDRES  VALENCIA CANOAS', '2022-03-18'),
(134, '14', 'queja', 'Ana Milena', 'Vélez Arévalo', NULL, 'mi.arevalo@hotmail.com', 3153014057, 'Buen Día.\r\nLa verdad entre muy feliz a la institución con todo la energía y la excelente charla que ustedes daban,  pero cada ves más me iba desmotivando, el primer día nos tocó una docente que nos puse a leer como si fuéramos expertos y entiéndase como pueda. lo maravilloso que a la siguiente clase tuvimos la dicha de tener l profesor Dairo que es un maestro, pero lastimosamente en enero nos dejo de dar clase, ahora estamos con un profesor que no tiene la chispa para enseñar, y siento que nos da la clase por \"encima\" como dice él porque no vamos hacer profesionales. en estética paso lo mismo, teníamos una maravillosa docente y cuando un día nos despidió, lo bueno es que entro otra docente con toda la buena actitud, pero en ese cambio se pierde mucho tiempo, cambio metodologías, estética es  practica y hemos perdido demasiado tiempo aumentado virtualidad. Hablando con los compañeros del grupo sentimos que nos ven como los menos, la verdad no es el  mismo interés que les ponen ejemplo: a los de enfermería q a veterinaria no se si es en todos los casos. algo muy sencillo los carnets, todos tenían carnets y nosotros pregunten, paso semanas y nada, tuvimos que ir un grupo grande y nos dijeron que no habían llegado que esperáramos en ese momento abrió el cajón la persona que nos atendió y había varios carnets y la primera foto una compañera, nos tuvieron que entregar los carnets por obligación. somos los últimos en recibir noticias que que va a pasar los sábados, ya que en otras facultades ya lo saben y tienen todo planeado. lo Último están acabando las materias, y llevamos la semanas saliendo temprano porque no nos han asignado materias nuevas. mañana sábado 5 de febrero de 2022 nos van hacer ir para dos materias. hay compañeros que se demoran 3 horas en venir de sus casas para ver dos materias. La verdad no veo nada de lo que me vendieron y he decido hoy retirarme del instituto.\r\nGracias. ', '2022-02-04', 'cerrado', 'Rad-8901', '', 'JEISON ANDRES  VALENCIA CANOAS', '2022-03-18'),
(136, '22', 'peticion', 'Elizabeth ', 'Moreno Cobo', NULL, 'egresados@institutofatima.edu.cop', 3122072996, 'En dic 15/21 se cargaron al rethus 10 estudiantes egresados y posteriormente se hizo la actualizacion a egresado en el Siinfa. Hoy para una verificacion de titulo consulto al estudiante en egresados y no aparece, si lo consulto por estudiante si aparece como si estuviera egresados. Esto impacta para la consulta de egresados porque ninguno aparece. Para validacion adjunto una cedula para que sea consultado tanto por estudiante como por egresados. En espera instruccion para enviar archivo. Muchas gracias.\nCedula 1006296031 Maria Jose Pino\n', '2022-02-11', 'cerrado', 'Rad-344', '', 'FABIAN MEZA', '2022-02-13'),
(137, '22', 'peticion', 'Maria alejandra ', 'Castro Calderón ', NULL, 'malejacc1997@gmail.com', 3185643909, 'quisiera saber el costo de matricula y semestre ', '2022-02-11', 'cerrado', 'Rad-6796', '', 'FABIAN MEZA', '2022-02-13'),
(138, '16', 'peticion', 'IRMA LEONOR', 'TORRES RODRIGUEZ', NULL, 'torresrirma@yahoo.es', 3132534404, 'El día de hoy 14 de febrero 2022 ni me llevaron a Davita calle 26 ni me retornaron, esperé hasta las 11;54 am y no llegó el conductor programado.\r\nEn total tuve que pagar $32.000, 18.500 de ida y 13.500 de retorno.\r\nSolicito el reembolso de dicha plata.\r\nAgradezco su atención', '2022-02-14', 'cerrado', 'Rad-9926', '', '', '0000-00-00'),
(139, '14', 'peticion', 'Gabriela', 'Pérez', 1110287770, 'perezgabriela.23456@gmail.com', 3175553570, 'Buenas noches, soy Aux de enfermería y espero que se encuentren bien, Queria porfavor pedir que me cargaran las lecciones #4 y #7 del modulo de filosofía y también cargar el modulo de técnicas de estudio. Muchas gracias', '2022-02-14', 'cerrado', 'Rad-6218', '', 'Paubla Andrea Lucumi Mosquera', '2022-04-19'),
(140, '22', 'queja', 'Elizabeth ', 'Moreno Cobo', NULL, 'egresados@institutofatima.edu.cop', 3122072996, 'EN SIINFA la estudiante Nayibi con cc 1143992166 aparece en grupo 68p de farmacia, al querer ingresar la practica empresarial no aparece en el grupo, por lo cual no se deja adicionar., por ende tampoco prodran ingresar la supervisión.', '2022-02-15', 'cerrado', 'Rad-1760', '', 'FABIAN MEZA', '2022-02-17'),
(141, '14', 'reclamo', 'Angela', 'Gómez', NULL, 'anyelagomez1125@gmail.com', 3147290504, 'pague la casualidad y no me deja entrar ala plataforma', '2022-02-15', 'cerrado', 'Rad-3189', '', 'Luz Nelly Popayan Orlas', '2022-03-18'),
(142, '16', 'peticion', 'Meyer', 'Caldera', NULL, 'celestino67@theaccessuk.org', 0, '', '2022-02-15', 'cerrado', 'Rad-2063', '', '', '0000-00-00'),
(143, '14', 'queja', 'Tatiana ', 'Trullo', 1108332656, 'tatiana.trullo@hotmail.com', 3212547630, 'Buen día, mi nombre es Tatiana de auxiliar de veterinaria, mi queja es por mi carnet desde febrero 2021 me solicitaron el pago y la infromacion correspondiente y hasta el día de hoy 16 de febrero 2022 no me han entregado, ni solucionado.\r\nQuisiera pedir por favor que con el respeto que yo me merezco me solucionen, por que yo pago una mensualidad donde mis derechos se deben que cumplir.\r\nEspero una solución pronta para poder ir a practicas.\r\nGracias por la atención.', '2022-02-16', 'cerrado', 'Rad-7860', '', 'JEISON ANDRES  VALENCIA CANOAS', '2022-04-19'),
(144, '14', 'queja', 'Sandra Patricia ', 'Romero Osorio', 66843776, 'sandraromero0972@gmail.com', 3166260698, 'Desde el 30 de Junio del 2021 comunique mi retiro voluntario del programa técnico auxiliar contable y financiero debido a motivos laborales. Pero ahora me generan un pendiente de mora en pagos a su institución cuando yo no he recibido más de dos clases con ustedes. Requiero se rectifique la información y sea dada de baja la mora. ', '2022-02-16', 'cerrado', 'Rad-2134', '', 'Luz Nelly Popayan Orlas', '2022-04-19'),
(145, '14', 'sugerencia', 'Esteban ', 'Quintero casallas ', 1107041158, 'quinterocasallas2004@gmail.com', 3196854783, 'Soy estudiante de auxiliar de enfermería y no me aparece en la plataforma q10 el programa técnica de estudios ', '2022-02-18', 'cerrado', 'Rad-4961', '', 'Paubla Andrea Lucumi Mosquera', '2022-03-23'),
(146, '14', 'sugerencia', 'Esteban ', 'Quintero casallas ', 1107041158, 'quinterocasallas2004@gmail.com', 3196854783, 'Soy estudiante de auxiliar de enfermería y no me aparece en la plataforma q10 el programa técnica de estudios ', '2022-02-18', 'cerrado', 'Rad-9182', '', 'Paubla Andrea Lucumi Mosquera', '2022-04-19'),
(147, '14', 'reclamo', 'claudia andrea', 'mesias murillo', 31322033, 'andrea18mercy@hotmail.com', 3152992034, 'estoy en el programa de servicios farmaceuticos los dias sabados este sabado es mi primer clase ya que el sabado anterior fue una inducción, sim embargo no entiendo que hoy viernes a un dia de mi clase en la plataforma no me aparece ninguna clase programada,esta vacio la parte donde estan las aulas virtuales ,lo puse en conocimiento a la coordinadora Carolina y me dijo q en las horas de la tarde lo cargaban pero ya son las 9 de la noche y no me ha cargado nada y la verdad no se si mañana en la mañana pueda ingresar a clases se que hay varias programadas por del curso tenemos grupo de whasaap  donde mis compañeros si les cargaron las clases por favor me ayudan a resolver esta situacion ,gracias', '2022-02-18', 'cerrado', 'Rad-1911', '', 'Paubla Andrea Lucumi Mosquera', '2022-03-22'),
(148, '14', 'felicitacion', 'Daniela Saray ', 'Rodriguez Martinez ', NULL, 'Saray-08@outlook.com', 3215893329, 'Buenas noches\r\n\r\nQuiero hacer una felicitación para el profesor Perafan de tecnologia, no tengo muy presente el nombre, por habernos dado clase el martes 15 de febrero de 2022 ya que hubo un error en programación, y el estando en clase le toco pasar a sus alumnos a otro salon y darnos la clase a nosotros me parecio que aun que es un deber de el tomo una actitud muy ejemplar y aun sin tener una clase preparada le salio perfecta y aprendi mucho. \r\n\r\nMuchas gracias por la atencion prestada. ', '2022-02-18', 'cerrado', 'Rad-4362', '', 'ANA 	MRIA  MONTALVO CASTANEA', '2022-03-22'),
(149, '14', 'peticion', 'Eliana', 'moreno blandon', NULL, 'jides23@hotmail.com', 3117863845, 'Buena tarde, solicito muy respetuosamente que tengamos clases presenciales en el técnico de ASF 2021-3, agradezco la atención prestada.', '2022-02-19', 'cerrado', 'Rad-4373', '', 'Paubla Andrea Lucumi Mosquera', '2022-04-19'),
(150, '22', 'queja', 'Jennifer ', 'Escobar wilches', NULL, 'jennifer.escobar.03@gamil.com', 3216590612, 'Buen dia coordial saludo, mi queja por este medio es porque estoy inconforme con el trato de la docente Yenni Herrera puede tener mucho conocimiento pero he sentido y siento su mal humor y falta de paciencia con algunos estudiantes todos no aprendemos de la misma manera y creo que para eso estamos formandonos h es deber de ella tener paciencia y explicar sin enojarse Muchos de mis compañeros estan en mi misma situacion pero se quedan callados y yo creo que es un derecho expresar con lo que uno no esta agusto porque para eso estamos pagando para una buena calidad de aprendizaje muchas gracias ', '2022-02-22', 'asignado', 'Rad-5028', '', 'DIEGO ARMANDO  HERNANDEZ ESCOBAR', '2022-05-24'),
(151, '', '', '', '', NULL, '', 0, '', '0000-00-00', 'cerrado', '', '', '', '0000-00-00'),
(152, '16', 'peticion', 'Kenia', 'Ortiz', NULL, 'grafico@institutofatima.educo', 3207481371, 'Cordial Salud. \r\nLa solicitud que se realiza el día de hoy 23 de febrero 2022, es una capacitación sobre el sistema de Calidad, que es, en que consiste, beneficios, control de cambios de documentos, como funciona en INFA, acciones, objetivos de calidad y portal de calidad.', '2022-02-23', 'cerrado', 'Rad-5447', '', '', '0000-00-00'),
(153, '22', 'peticion', 'Yolanda', 'Londoño', NULL, 'seleccionth@central-care.org', 3005094142, 'Muy cordialmente solicito asesoría de como debo gestionar la verificación de títulos de sus egresados, ya que permanentemente estamos en la selección de personal para nuestra empresa y algunos de nuestros candidatos presentan certificaciones de esta institución.\nAgradezco de antemano su colaboración', '2022-02-23', 'cerrado', 'Rad-7510', '', 'ELIZABETH  MORENO COBO', '2022-03-31'),
(154, '14', 'reclamo', 'veronica lizeth ', 'angulo caicedo ', 1110284951, 'veronica.angulo028@gmail.com', 1110284951, 'buenas tardes hoy en la jornada de la tarde, en la salón de costa rica había un  puesto dañado  y me hiso dañar mi pantos, para que me hagan el favor de responderme por el pantalón espero pronta respuesta .', '2022-02-23', 'cerrado', 'Rad-5098', '', '', '0000-00-00'),
(155, '14', 'queja', 'Ana Sofia ', 'Quintero Santiago', NULL, 'quinteroanasophia@gmail.com', 3226173111, 'muy buenas noches,coordial saludo.Quiero ante mano presentar mi descontento,desilucion,disgusto,disconformidad con la institucion PIO por los casos que se han presentado por las  clases virtuales y presenciales,el 19 de febrero  del año 2022 tuvimos clase presencial y en la tarde virtual,les pido encarecidamente que sean mas serios y responsables como institucion,esto es falta de respeto hacia los estudiantes como lo mencionado anteriormente como institucion dijieron:que era un sabado presencial y otro virtual y no se esta cumpliendo vuelvo y le menciono el 19 de febrero era todo presencial y mira con lo que salieron y muchos inconvenientes mas que si los menciono no termino nunca...', '2022-02-23', 'cerrado', 'Rad-9529', '', 'Paubla Andrea Lucumi Mosquera', '2022-03-18'),
(156, '14', 'peticion', 'Ana Sofia ', 'Quintero Santiago', 1112969090, 'quinteroanasophia@gmail.com', 3226173111, 'buena noche,cordial saludo,,por medio de la presente yo Ana Sofia Quintero Santiago estudiante del segundo semestre  Tecnico auxiliar farmaceutico hospitalario grupo los sabados 2021-3 en la institucion Politecnico Internacional de Occidente .Quiero pedir una Peticion es la siguiente:la profesora Lina Maria Cardona con los modulo control de infecciones y primeros auxilios,es una excelente profesora que gosa la institucion por tenerla y me parece que ustedes como institucion PIO si  dejan ir a la Docente se les va una gran persona y maestra comparado al resto de los mas docentes,si la dejan ir que pena por la expresion serian muy bobos si la dejaran ir una buena docente como lo es ella ', '2022-02-23', 'cerrado', 'Rad-5424', '', 'Paubla Andrea Lucumi Mosquera', '2022-03-18'),
(157, '20', 'reclamo', 'Jensy ', 'Galeano ', NULL, 'certificacion@celac.com.co', 3187662472, 'Prueba de auditoría', '2022-02-24', 'cerrado', 'Rad-1402', '', '', '0000-00-00'),
(158, '14', 'peticion', 'Carlos Alberto ', 'Cortes orozco', 1144059812, 'carlosrw0426@gmail.com', 3038377588, 'Muy buenas tardes mediante la presente quiero hacer una petición sobre una prorroga que solicite al área de tesorería de 5 días  para realizar mi pago de mi mensualidad para que no se me bloqueara plataforma para poder entregar bloqueara trabajos de esta semana ya que son muy importantes y son una nota valiosa.hice la solicitud ya que extravie mis documentos y el dinero  de la mensualidad y como días anteriores había recibido un mensaje de texto por parte del PIO en el que se nos decía decía en caso de estar en mora solicitara el acuerdo (tengo captura de pantalla del mensaje ) pero la respuesta del área de tesorería fue un simple  \"no se puede \" sin más,  lo cual considero no es una repuesta adecuada por no tener una alguna argumentación y/o explicación (también tengo captura de pantalla del mensaje ) después de eso le envie la captura al funcionario del mensaje de texto y simplemente me dejaron en visto lo cual considero una falta de respeto ya que de una forma muy cordial solicite la información,  dejando eso de lado solo quiero saber si se puede algún tipo de ayuda respecto a la plataforma o sino por favor una simple argumentación propia del por qué no se puede. Muchas gracias por su tiempo y colaboración  feliz noche ', '2022-02-24', 'cerrado', 'Rad-6823', '', 'Luz Nelly Popayan Orlas', '2022-03-22'),
(159, '14', 'queja', 'LILIBETH', 'RANGEL', 1066268761, 'fercho_abella@hotmail.com', 3147193868, '24-02-22\r\nseñores: \r\nPIO  \r\ncarta de petición.\r\nART. 23 de la constitución política y ley 1755 de 2015.\r\n\r\n\r\ncordial saludo:\r\nyo lilibeth rangel duran  identificada con cedula de ciudadanía\r\nnumero:1.066.268.761 envió esta carta de petición, y reclamo con el propósito. de solicitar cumplimiento de mis derechos como estudiante y como persona ciudadana de Colombia, desde el día de mi matricula, me dijeron que el estudio, era para estudiar jornada sabatina, es decir asistir a clases solo los días sábado.  temporalmente, alternado un sábado  presencial, y el otro sábado virtual por el tema que estaba atravesando nuestro pías y el mundo por e virus COVID19.\r\nEn ocasiones algunos docentes, esperan hasta el día viernes que es un día antes de asistir a clase, suben tareas o talleres para desarrollar.\r\nSi se estudia los días sabatinos, es por el cual, porque no disponemos de jornada diurna, o en otras palabras de lunes a viernes. \r\nEn una ocasión, nos citaron a clases presenciales, y virtuales el mismo día.\r\nviéndome afectada monetariamente, tube gastos adicionales de florida valle, me transporte a Cali valle, y me dieron una sola clase presencial y otra virtual.\r\nsolicito respetuosamente clases presenciales.\r\npor favor enviar correspondencia al correo: fercho_abella@hotmail.com\r\nAgradezco su amable atención prestada.\r\n\r\n', '2022-02-24', 'cerrado', 'Rad-450', '', 'Paubla Andrea Lucumi Mosquera', '2022-04-19'),
(160, '14', 'queja', 'Luz divia ', 'Yate caldeton', NULL, 'yatecalderonluzdivia@gmail.com', 3206139515, 'Exigimos q nuestras clases sean presencial, como lo estipulado  cuando ingresamos y firmamos el dia de matricula,ademas como nos van aponer una clase presencial y otra virtual, eso es falta de respeto, hacia nosotros los estudiantes....gracias', '2022-02-25', 'asignado', 'Rad-2366', '', 'JEISON ANDRES  VALENCIA CANOAS', '2022-03-17'),
(161, '14', 'queja', 'Daniela', 'Mosquera Jimenez', 1144099413, 'dmjimenez1831@gmail.com', 3226823008, 'hoy ya es viernes y aun no sabemos los de mi programa si mañana nos toca virtual o presencial, he estado escribiendo a los numeros que tengo de las coordinadoras y no contestan los mensajes, me parece que son muy desorganizados en la parte administrativa porque tienen a los estudiantes sin informacion.\r\nsoy del progrmana Auxiliar Administrativo y Contabilidad Financiera.', '2022-02-25', 'cerrado', 'Rad-6297', '', '', '0000-00-00'),
(162, '22', 'felicitacion', 'Danna valentina', 'Marroquin', NULL, 'dannavm.1803@gmail.com', 1006351531, 'Han sido excelentes asesores, un apoyo especial en mi proceso por que la paciencia y perseverancia que han tenido conmigo, me enseñaron que puedo dar más y que mi potencial me ayudará para aprender y mejorar. Tengo muchas proyecciones para el futuro y gran parte de ellas son gracias a ustedes', '2022-02-26', 'cerrado', 'Rad-5204', '', 'DIEGO ARMANDO  HERNANDEZ ESCOBAR', '2022-03-31'),
(163, '16', 'peticion', 'yahaira ', 'Ortiz osorio', NULL, 'recursoshumanos@institutofatima.edu.co', 3122033188, 'Cordial saludo,\r\nenvio la carta sobre la notificacion de realizacion de examen de egreso de la señora Ceneida Meneses ya que, en varias ocaciones nos comunicamos con ella por via telefonica solicitandole que se presente en onmisalud para la realizacion del examen de egreso desde el dia 21 de febrero de 2022.solicito amablemente la colaboracion con la firma de la carta de la señora Ceneida cuando se presente a la realizacion del examen.\r\n\r\nMuchas gracias', '2022-03-01', 'cerrado', 'Rad-3693', '', '', '0000-00-00'),
(164, '16', 'peticion', 'Kenia', 'ORTIZ OSORIO', NULL, 'grafico@institutofatima.educo', 3207481371, 'Solicitud de capacitación de acciones, indicadores, proceso de auditoria para comercial. \r\nPersonas invitadas\r\ncliente@institutofatima.edu.co, mercadeoc@institutofatima.edu.co y grafico@instituto.edu.co\r\nLa idea es aclarar todo el proceso de auditoria interna antes de presentarla. \r\nPosiblemente de manera virtual, mañana. \r\nquedo muy atenta ', '2022-03-01', 'cerrado', 'Rad-7018', '', '', '0000-00-00'),
(165, '14', 'peticion', 'Estefania', 'Chicangana ', 1005978101, 'estefania9781@gmail.com', 3183834849, 'Mi petición es que las personas que estudiamos únicamente los sábados, tenemos que ver nuestras clases más presenciales porque solo tenemos un día a la semana y últimamente solo hemos visto clases virtuales, cuando se nos dijo que veríamos en alternancia. Todo el mes de enero lo vimos virtual y parte de febrero. Ha sido una situación frustrante al momento de aprender. Muchas gracias. ', '2022-03-01', 'cerrado', 'Rad-4514', '', 'Paubla Andrea Lucumi Mosquera', '2022-04-19'),
(166, '14', 'queja', 'Monica Lorena ', 'Arango Vallejo', NULL, 'marangov@elementia.com', 3104362224, 'El pasado 8 de febrero realice una solicitud para la búsqueda de hojas de vida para practica donde ustedes responden lo siguiente:\r\n\"Cordial saludo Monica Lorena Arango Vallejo gracias por registrar su solictud, en 24 horas estaremos dando tramite a su solcitud, puede hacer seguimiento a su solicitud haciendo clic aqui Ver Solicitud tenga encuenta que nu numero de solititud es 118 para el seguimiento.\"\r\n\r\nY a la fecha no me han dado ningun tipo de respuesta. ', '2022-03-01', 'cerrado', 'Rad-4213', '', 'Alexander Garzon Garzon', '2022-04-19'),
(167, '14', 'queja', 'Angie Paola ', 'Sinisterra Solis ', NULL, 'aux.talentoduana@gmail.com', 3163081488, 'Buena tarde. Mi nombre es Angie Sinisterra de la empresa Duana. Mi queja es porque solicitamos un aprendiz con el instituto y nos están atrasando el proceso con el aspirante porque no nos envían la carta para ingreso. Se pidió hace media semana y no la han enviado, se llama y al inicio decian que ya casi y ahora nos cuelgan las llamadas. No sé que pasa pero aqui están vulnerando el derecho a la educación de una alumno que quiere hacer sus prácticas y el instituto no presta los medios ', '2022-03-01', 'cerrado', 'Rad-3978', '', 'KATHERIN GALVIS ALZATE', '2022-03-18'),
(168, '14', 'peticion', 'Paola Andrea', 'Nieto Orrego', 1130628252, 'andrea.menguante@gmail.com', 3163917553, 'Cordial saludo,\r\nSoy estudiante de servicios farmacéuticos de los sábados, mi petición es que como ya casi vamos a practicas formativas, si requerimos que las clases que nos queden sean presenciales ya que es mas fácil el aprendizaje de esta forma y llevamos la mayoría de las clases de forma virtual y a veces es un poco complejo entender cierto temas importantes.', '2022-03-02', 'cerrado', 'Rad-1100', '', 'Paubla Andrea Lucumi Mosquera', '2022-04-19'),
(169, '14', 'peticion', 'Scheila Tatiana ', 'Nazarit ararat', 1067468585, 'sheilatati130@gmail.com', 3135126172, 'Para pedir Clases presenciales en el módulo de dispensar 2 y tecnos de estudio con el docente Octavio y la profe amalby morales  en el curso de auxiliar en servicios farmacéuticos 2021_2 ya que nos vamos ah ir a prácticas y nos servirá mucho las clases presenciales .', '2022-03-02', 'cerrado', 'Rad-4790', '', 'Paubla Andrea Lucumi Mosquera', '2022-04-19'),
(170, '', '', '', '', NULL, '', 0, '', '0000-00-00', 'cerrado', '', '', '', '0000-00-00'),
(171, '14', 'queja', 'paola', 'jalvin villa', NULL, 'paolajalvinvilla@outlook.com', 3234825732, 'la presente es para informar mi inconformidad con respecto a las clases virtuales, ya que algunos modulos se requiere la realizacion de practicas y el medio virtual no hace posible unas buenas practicas para tener un buen aprendizaje.\r\ntambien el medio virtual sele dificulta a algunos profesores y sus llegadas a la conectividad son tardías, este suceso a pasado en varias ocasiones generándome mucha inconformidad con respecto a la enseñanza por el medio virtual, también en ocasiones profesores están en sus lugares de trabajo y nos dejan en segundo plano a nosotros los estudiantes asta por 15minutos en espera.\r\npor estos motivos quisiera que nos programaran clases presenciales mas continuas gracias', '2022-03-02', 'asignado', 'Rad-2647', '', 'Paubla Andrea Lucumi Mosquera', '2022-04-19'),
(193, '22', 'queja', 'Juan José ', 'Salazar Chavez ', NULL, 'juanjosesalazarchavez1234@gmail.com', 3166328454, 'Para dar una inquietud soy el sobrino de la jefe sindy la coordinadora de la clínica palma real de la cual ella nos supervisaba las practicas empresariales, la inconformidad con el servicio es que en la parte financiera tienen muchas falencias y muchas inconformidades comenzando desde  la líder hasta los auxiliares que dirige ella como líder son un total desastre con todo el respeto, por que academicamente  son excelentes, en cuánto a mi un pago del mes de enero del año 2022 se perdió y no dieron respuesta es decir el dinero se lo robaron lo cual no es calidad de atención con los usuario que somos los estudiantes y menos cuando ya estamos a punto de culminar el proceso y siempre tuve dificultades con la parte financiera , subían Mal los recibos no los reportaban en la plataforma uno como estudiante tenia q andar detrás de la parte financiera cuando ellos si hacen bien su trabajo no debe de pasar eso ', '2022-03-14', 'cerrado', 'Rad-164', 'Instituto de capacitación nuestra señora de fatima ', 'KENIA  ORTIZ OSORIO', '2022-03-31'),
(194, '16', 'soporte', 'CHRISTIAN', 'ALVAREZ', 16376354, 'dir.admon.fertility@gmail.com', 3163371101, 'he intentado ingresar al SGC de la empresa y no ha sido posible, solicito me colaboren lo antes posible ya que necesito adjuntar el SGSST. Gracias', '2022-03-17', 'cerrado', 'Rad-6062', 'FERTILITY CARE', 'ALEXANDER OREJUELA', '2022-03-17'),
(195, '16', 'soporte', 'LUIS FELIPE', 'CASAMACHIN PERDOMO', NULL, 'asistencia.cartera@pio.edu.co', 3145247919, 'Solicitamos amablemente realizar capacitación al nuevo coordinador administrativo Habit Adechine en las plataformas de inventario y control documental, agradezco la atención prestada y estaré atento a cualquier inquietud. ', '2022-03-17', 'cerrado', 'Rad-4466', 'POLITECNICO PIO INTERNACIONAL DE OCCIDENTE SAS', 'FABIAN MEZA', '2022-03-18'),
(197, '', '', '', '', NULL, '', 0, '', '0000-00-00', 'cerrado', '', '', NULL, NULL),
(198, '22', 'peticion', 'RUBIELA ', 'GIRONZA', NULL, 'recursosh@sagradafamilia.edu.co', 3104259788, 'Solicitud de hojas de vida de alumnas que esten pendientes de realizar las practicas en AUXILIAR DE ENFERMERIA para las religiosas adultas mayores de la comunidad de las hermanas, bajo el contrato de aprendizaje SENA para cuota de apoyo y sostenimiento, para cumplimiento de la cuota de aprendices.\r\n\r\nQuedo pendiente de su respuesta.\r\n\r\nCelular 3104259788', '2022-03-23', 'asignado', 'Rad-7561', 'ASOCIACION DE HERMANAS DE LA PROVIDENCIA', 'ELIZABETH  MORENO COBO', '2022-03-31'),
(199, '13', 'felicitacion', 'William', 'Ceron', NULL, 'wacer1@gmail.com', 3125575256, 'cordial saludo', '2022-03-28', 'asignado', 'Rad-3675', 'consac', 'William  Alfredo  Ceron Chates ', '2022-05-06'),
(201, '16', 'soporte', 'Blanca libia', 'Mresa Betancur', NULL, 'agm.consultores@yahoo.com', 3122334896, 'Buen dia neesito hacer cambios el cliente ingreso cedula y apellido mal para una visita de preempleo e codigo es 2150 leonela andrea morrea la cedula real es 1106119073 y el apellido es herrera. \r\nTabien he tenido varios incovenientes en varias visitas de preempleo como son codigo 2114 el pdf de descarga pero no deja se deja guardar, el mismo caso paso con otras visitas cogido 2131, 2115 y la 2122 hay otras que pasa mismo quedo atenta a su respuesta gracias ', '2022-03-30', 'cerrado', 'Rad-6812', 'AGM CONSULTORES SAS', 'ALEXANDER OREJUELA', '2022-04-01'),
(202, '14', 'peticion', 'Heillyn Vivian ', 'Chavarro Alzate', 1130616580, 'heillynchavarroo@gmail.com', 3003295265, 'Buenas tardes por medio de la presente solicito amablemente que la programacion de reuniones, habilitaciones, firmas de documentos y demas sean programadas los dias sabados ya que precisamente inicie sabatino ya que en la empresa no me dan permisos en dias ordinarios o en su caso programar despues de las 4 pm, horarios en los cuales me encuentro disponibles. Muchas gracias.', '2022-03-30', 'cerrado', 'Rad-4842', 'PIO', 'Paubla Andrea Lucumi Mosquera', '2022-04-19'),
(203, '14', 'informacion', 'GESTION', 'HUMANA', NULL, 'auxiliarrh.admon@fruticol.com', 3106422690, 'Cordial Saludo,\r\nEsperamos se encuentren muy bien.\r\nMediante el presente nos permitimos manifestar nuestro interés en contribuir con el aprendizaje de los estudiantes ofreciendo la viabilidad de que puedan desarrollar su etapa practica bajo modalidad de CONVENIO SENA en el técnico y/o tecnólogo de formación en auxiliar de enfermería.\r\nPor lo anterior, solicitamos nos indique la disponibilidad actual de inicio de prácticas y hojas de vida de estudiantes interesados que cuenten con el aval de la institución, así como los documentos requeridos por parte de nuestra empresa para iniciar el vínculo con su prestigiosa entidad\r\n', '2022-03-31', 'cerrado', 'Rad-7864', 'CI FRUTICOL INDUSTRIAL SAS', 'Paubla Andrea Lucumi Mosquera', '2022-04-19'),
(204, '16', 'peticion', 'MIGUEL ANGEL', 'ROZO GUTIERREZ', NULL, 'secretariocd@iemapalmira.edu.co', 3163435515, 'Tuve mucho problema con la conexión a internet, será posible obtener la grabación de la capacitacion ?', '2022-04-01', 'cerrado', 'Rad-6425', 'IE MERCEDES ABREGO', 'DIANA MARIA GARZON TORO', '2022-04-01'),
(205, '14', 'peticion', 'Dannia Esther', 'Vélez Delgado', 1010065045, 'dannia.ve@hotmail.com', 3004067466, 'Cordial saludo, solicito muy respetuosamente devolución del dinero de un pago que efectué para realización de un curso de TOMA DE MUESTRAS que ustedes como institución ofertaban de manera virtual, me contacte con la asesora Andrea Parra, para realizar el pago y pedir información, la cual me confirmaba que era de manera virtual, luego de realizar el pago me confirmó que era de manera presencial. Por obvias razones de residir en otra ciudad no pude asistir de manera presencial. Solicite un correo por medio de una carta formal, al correo asesor.continua@pio.edu.co y aun así no he recibido respuesta, ya ha pasado mas de un mes.  Espero prontamente solución. GRACIAS. Sin mas que decir espero que sean mas serios a la hora de ofertar un programa o curso. ', '2022-04-02', 'cerrado', 'Rad-4486', 'No aplica', 'Luz Nelly Popayan Orlas', '2022-04-19'),
(206, '14', 'queja', 'John Jairo', 'Carvajal cárdenas', NULL, 'jhon3112.jc@gmail.com', 3106690694, 'Buenos días para decirles es que ya estoy cansado de esperar a que el proveedor  le esté diciendo a uno que el uniforme está para finales de este mes si yo.lo mandé a hacer el 18 de febrero y siempre me dice que hay que esperar ', '2022-04-02', 'asignado', 'Rad-1301', '', 'JEISON ANDRES  VALENCIA CANOAS', '2022-04-19'),
(207, '14', 'reclamo', 'CANDY ', 'ALVAREZ ', 1092351685, 'candyalvarez_1092@hotmail.com', 3176543008, 'buenas tarde quisiera colocar un reclamo referente al area de cartera, en varias ocaciones he realizado mis pagos por la app de bancolombia evio el soporte de pago via whasaapp para que por favor me los suban ya que x no haberlos realizados me bloquean la plataforma  las 2 ultimas veces he hechos mis pagos porq necesito la plataforma para subir los ultimos trabajos y duran mas de 8 horas para responder son muy demoprados para poder validar los pagos me he quedado sin poder subir los trabajos por la demora de ellos poder subir los pagos ... ', '2022-04-04', 'cerrado', 'Rad-8162', 'pio', 'Luz Nelly Popayan Orlas', '2022-04-19'),
(208, '14', 'queja', 'Anonimo', 'Estudiante de Administración en salud', NULL, 'anonimo@annonimo', 0, 'Hola soy estudiante en practica de administración en Salud, no estoy de acuerdo, que pare recuperar clases, hoy debamos ver clase de 11 am a 9 pm. De manera presencial. Como se les ocurre, existiendo herramientas tecnológicas, como las clases virtuales, o poniendo la clase desde las 7 am, como nos van a exponer a salir a las 9 pm del instituto en una zona tan peligrosa, ah? Eso no es velar por el bienestar de los estudiantes, además viendo clases desde las 11 am hasta las 9 de la noche no se va a aprender, xq es demasiadas horas continuas, la idea es aprender no ver clases solo por cumplir horas. Deberían de revisar y modificar estas clases de propuestas que no ayudan en nada. Ni a aprender, y nos ponen en riesgo. Gracias.', '2022-04-06', 'cerrado', 'Rad-6391', 'Valle del lili', 'Paubla Andrea Lucumi Mosquera', '2022-04-19'),
(209, '14', 'reclamo', 'Anonimo', 'Anonimo', NULL, 'anonimo@anonimo', 0, 'Hola mi reclamo es por que me parece injustos que nos exigieran un uniforme y al resto de compañeros que no han querido pagarlo, no le exijan, soy estudiante en practica, el 18 iniciamos practicas en Valle del lili, y muchos no pagaron el uniforme, y los que si fuimos responsables y nos tocó prestar el dinero para pagarlo desde el inicio, que? Por que era obligatorio, eso es injusto, o lo exigen a todos o a ninguno. Es lo más coherente y por respeto a los compañeros que si fuimos responsables.', '2022-04-06', 'cerrado', 'Rad-4876', 'Anonimo', 'Alexander Garzon Garzon', '2022-04-19'),
(210, '14', 'informacion', 'SADAY JARETH', 'GARCIA MONTEALEGRE', 1193395049, 'SADAYGARCIA.12@GMAIL.COM', 3232042145, 'Buenos dias, yo estoy matriculada en tecnico de recursos humanos, pero tambien en un diplomado de seguridad y salud en el trabajo, pero hasta el dia de hoy no me han dado informacion de cuando inicia el diplomado. por favor necesito que me ayuden con eso por que estoy pagando por algo que no he visto. \r\nquedo muy atenta, gracias. ', '2022-04-07', 'cerrado', 'Rad-8047', 'POLITECNICO INTERNACIONAL DE OCCIDENTE', 'YEINER GABRIEL  ROMERO JARAMILLO', '2022-04-19'),
(211, '14', 'peticion', 'Melissa', 'Velandia Hungria ', 1105361261, 'melvahubgria@gmail.com', 3135084146, 'Para que por favor me acomoden la plataforma que ya realice el pago de la mensualidad  ', '2022-04-08', 'cerrado', 'Rad-4835', '', 'Luz Nelly Popayan Orlas', '2022-04-19'),
(212, '22', 'felicitacion', 'Javier Andres ', 'Tuquerrez Mosquera', NULL, 'jatuquerrez@misena.edu.co', 972536699239, 'Excelente instituto Fátima Cali Norte, gracias a estudiar en la misma, ahora me encuentro trabajando en el estado de Israel como auxiliar de enfermería en un clalit u hospital en Colombia gracias Instituto Fátima ', '2022-04-13', 'asignado', 'Rad-4774', 'Estudiante', 'KENIA  ORTIZ OSORIO', '2022-04-20'),
(213, '22', 'peticion', 'club de leones', 'de Cali la Merced', NULL, 'cfzape@leonisticolamerced.edu.co', 3207324086, 'Muy buen dia\r\nSomos el área de GESTIÓN HUMANA   del  Club de Leones de Cali, En el momento me encuentro en la búsqueda de un practicante para el área de AUXILIAR DE ENFERMERIA,  que tenga actitud de servicio y   aval sena para la práctica.\r\nQuedo atenta a sus comentarios.\r\nCordialmente,\r\nClaudia Fernanda Zape ZapataGestion humanacel 3207324086', '2022-04-18', 'asignado', 'Rad-7625', 'colegio Leonistico la merced', 'ELIZABETH  MORENO COBO', '2022-04-20'),
(214, '21', 'informacion', 'prueba', 'prueba', 0, 'prueba@prueba.com', 2121212121, 'prueba', '2022-04-19', 'asignado', 'Rad-2853', 'firmacalidadsg', 'dev dev', '2022-05-05'),
(215, '14', 'peticion', 'maria jose', 'altamiranda solarte', 1107039243, 'marison4727@gmail.com', 3155423952, 'se que el pio tiene un apoyo a sus estudiantes, un \"acompañamiento\". y aunque no se como pedirlo, lo necesito, según me dicen. necesito hablar con alguien.\r\n\r\ngracias.', '2022-04-19', 'cerrado', 'Rad-8699', '', 'Carolina Duarte Vanegas', '2022-04-19'),
(216, '13', 'felicitacion', 'Norha', 'Mosquera Rivas', NULL, 'norhamo55@yahoo.com', 3132512141, 'Felicito al colegio por la calificación obtenida en la visita de la Secretaría de Educación. Es una muestra del trabajo bien hecho y de la vocación de servicio de cada uno de los miembros de la comunidad educativa', '2022-04-19', 'asignado', 'Rad-9661', 'Independiente', 'Laura Ines Mena Jacome', '2022-05-06'),
(217, '16', 'soporte', 'ANDREA ', 'DORIA PEDRAZA', NULL, 'lab2.fertilitycare@gmail.com', 3223074858, 'Necesitamos crear un nuevo usuario para la plataforma de la empresa. ', '2022-04-19', 'cerrado', 'Rad-5942', 'FERTILITY CARE', 'ALEXANDER OREJUELA', '2022-04-23'),
(218, '13', 'informacion', 'Daniela', 'Burbano Valencia', NULL, 'daniburba1998@gmail.com', 3195675047, 'Soy egresada del colegio del año 2015, realice mi confirmación por medio del colegio y quisiera saber como puedo obtener el certificado de confirmación? Muchas gracias!!', '2022-04-21', 'asignado', 'Rad-4366', 'Indra Colombia ', 'ELIZABETH  PERILLA ORTIZ', '2022-05-06'),
(219, '14', 'peticion', 'Lady ', 'Manios', 38640023, 'lajomaciand@gmil.com', 3122749265, 'Cordial saludo.\r\nMi nombres es Lady Manios, estudiante de la jornada sabatina en el curso de actividad física y deporte; ingrese en mayo del 2021. Tanto el deporte como la actividad física a mi parecer se deben realizar de manera presencial ya que esto requiere que como estudiantes nuestros docentes estén presentes para corregir al alumno en posturas, movimientos, estar pendientes de los cambios que presenta el cuerpo al momento de realizar dicha actividad y como debemos actuar o como reaccionar al momento de que se presente un sobre salto. la verdad sino practicamos en nosotros y en nuestros compañeros ¿Cómo vamos a aprender?\r\nAl momento de pasar al mundo real, el mundo laboral, debemos poner en practica los conocimientos aprendidos, ¿pero cuales?\r\nen teoría tal vez, pero la practica como tal lo dudo, porque una cosa es estar con el docente al lado y otra es estar solos, yo entiendo que vamos a tener practicas en algún centro deportivo pero el punto es sentirnos seguros y de la manera como ustedes lo están planteando no es.\r\nustedes están dictando clases en semana con total normalidad y como estudiante deseo, exijo lo mismo, deseo tener mis clases presenciales.\r\nDe manera virtual aburren mucho y son muy monótonas, \r\nen pocas palabras quiero clases presenciales. ', '2022-04-21', 'cerrado', 'Rad-675', '', 'ANA 	MRIA  MONTALVO CASTANEA', '2022-05-05'),
(220, '14', 'queja', 'Daniela', 'Ayala Gallego', 1152196217, 'daniela.ayalag@gmail.com', 3168608239, 'NUNCA ATIENDEN LAS LINEAS TELEFONICAS. Me parece el colmo, ninguna, extensión, ningún área, NADIE atiende NUNCA', '2022-04-21', 'cerrado', 'Rad-8048', 'estudiante', 'ANA 	MRIA  MONTALVO CASTANEA', '2022-05-05'),
(221, '14', 'peticion', 'Elizabeth ', 'Amariles Duran', NULL, 'amarileselizabeth22@gmail.com', 3155275466, 'Buenos días Politécnico internacional de occidente. \r\nPertenezco al grupo de Servicios Farmacéuticos 2021-4\r\nLa presente es para solicitar información de cómo será el horario ya que estoy matriculada en diurno y al ingresar me dijeron que solo veria clase los sabados hasta febrero que entraran los nuevos, solicito que me den información y que me ajusten el horario a lo estipulado en la matricula que es de lunes a viernes, muchas gracias.\r\nEspero pronta respuesta y cumplimiento de lo que me corresponde.', '2022-04-22', 'asignado', 'Rad-4973', 'PIO', 'Paubla Andrea Lucumi Mosquera', '2022-05-05'),
(222, '14', 'soporte', 'ANONIMO', 'ANONIMO', NULL, 'ANONIMO', 0, 'Cordial saludo.\r\nEl día de hoy no voy a ingresar a las clases virtuales. Como lo mencioné anteriormente estoy muy desmotivada con las clases virtuales, por tal motivo este mes no he realizado el pago de la mensualidad, ya que pensaba cancelar mí matrícula.\r\nPero el día de ayer llegó un correo notificando que van a iniciar con las clases presenciales.\r\nLo cual me motiva a continuar, también lo hago porque estoy muy agusto con los docentes de la institución son excelentes profesionales y excelentes seres humanos.en el transcurso de la semana estaré realizando el pago para poder continuar con mí proceso de aprendizaje.\r\nGracias por la atención.', '2022-04-23', 'cerrado', 'Rad-9653', '', 'Alexander Garzon Garzon', '2022-05-05'),
(224, '14', 'soporte', 'Daniela', 'Landazury', NULL, 'danielaescobar21434@gmail.com', 3146677775, 'Pago', '2022-04-26', 'cerrado', 'Rad-7668', '', 'Luz Nelly Popayan Orlas', '2022-05-05'),
(225, '14', 'soporte', 'Daniela', 'Landazury', NULL, 'danielaescobar21434@gmail.com', 3146677775, 'Pago mensualidad', '2022-04-26', 'cerrado', 'Rad-4608', '', 'Luz Nelly Popayan Orlas', '2022-05-05'),
(226, '14', 'soporte', 'Daniela', 'Landazury', 1193541457, 'danielaescobar21434@gmail.com', 3146677775, 'Pago mensualidad', '2022-04-26', 'cerrado', 'Rad-5698', '', 'Luz Nelly Popayan Orlas', '2022-05-05'),
(227, '16', 'soporte', 'Yesica Paola ', 'Carranza Gomez', NULL, 'sg.sst@fernandosor.edu.co', 3132162480, 'El usuario duvanforero@fernandosor.edu.co docente de la escuela fernando sor no puede ingresar para realizar el autoreporte, solicito por favor gestionar nuevamente su ingreso al sistema.', '2022-04-26', 'cerrado', 'Rad-2183', 'Fernando Sor', 'ALEXANDER OREJUELA', '2022-04-26');
INSERT INTO `pqrs` (`id`, `url`, `tipo_peticion`, `nombres`, `apellidos`, `identificacion`, `email`, `n_contacto`, `descripcion`, `fecha_registro`, `estado`, `radicado`, `empresa`, `responsable`, `f_asignacion`) VALUES
(228, '13', 'informacion', 'PAULA ANDREA', 'MONAR ESCOBAR', NULL, 'paanmoes523@hotmail.es', 3187933972, 'deseo saber si el día de mañana 28 de abril habrán clases, pues en diferentes sitios de la ciudad habrán eventos. Gracias', '2022-04-27', 'asignado', 'Rad-8735', 'padre de familia', 'Johanna Isabel  Rios Tenorio', '2022-05-06'),
(229, '14', 'soporte', 'Kelly dayan ', 'Vargas espinosa ', NULL, 'kellyvargas28@hotmail.com', 3245882630, 'Pago de mensualidad y diplomado del mes de abril ', '2022-04-28', 'cerrado', 'Rad-1846', 'Recursos humanos ', 'Luz Nelly Popayan Orlas', '2022-05-05'),
(230, '14', 'informacion', 'Jarry', 'SERNA BALLESTEROS', NULL, 'jefegh@campestrecali.com', 3207184344, 'PODRÍAN POR FAVOR ENVIARME HOJAS DE VIDA DE TÉCNICOS EN VETERINARIA.', '2022-04-28', 'cerrado', 'Rad-8435', 'club campestre de cali', 'Paubla Andrea Lucumi Mosquera', '2022-05-05'),
(231, '14', 'queja', 'Diana', 'Marcela', NULL, 'dianamarcelar021@gmail.com', 3206469404, 'Hola buenos días soy estudiante de la jornada sabatina de la carrera técnica actividad física y deportes, mi queja es que en la plataforma solo me aparece la clase de antropometria con la profesora Shirley  de 7:30ama 9:am y luego ética y valores a las 10 am, aquí está mi inconformidad porque no hemos visto ni una clase de esta materia y además nos corresponde ver clase con el profesor Jorge cerezo deportes 1 y 2 y no aparece el módulo en la plataforma entonces no entiendo cómo es que se está manejando ese horario necesito que me aclaren eso porque estoy súper inconforme y si no gestionan eso cuanto antes cancelo mi matrícula ', '2022-04-30', 'abierto', 'Rad-4709', '', NULL, NULL),
(232, '24', 'felicitacion', 'Yesica Marcela', 'Rangel Sanchez ', NULL, 'yesicars21@gmail.com', 3127347835, 'Muy amables y excelente  con el servicio', '2022-05-02', 'abierto', 'Rad-2722', 'colegio colombo ingles ', NULL, NULL),
(233, '16', 'soporte', 'LUIS FELIPE ', 'CASAMACHIN PERDOMO', NULL, 'asistencia.cartera@pio.edu.co', 3145247919, 'Buenos días, cordial saludo, informo por la mediante que nuestro aplicativo de calidad SG de control de activos no está funcionando y no nos deja realizar ingresos de nuevos activos. ', '2022-05-03', 'cerrado', 'Rad-5963', 'POLITECNICO PIO SAS', 'ALEXANDER OREJUELA', '2022-05-04'),
(234, '24', 'queja', 'Delma', 'Viloria', NULL, 'dviloriaahumada01@hotmail.com', 3004226474, 'Buen día, \r\nDentro del proceso en que estoy con el dr. Leonardo para poder quedar embarazada, no me he sentido con el acompañamiento y seguimiento debido, comencé el proceso en enero de este año, estuve en febrero en control y lectura de resultados, me aplicaron un medicamento para ayudarme a ovular, presente síntomas de embarazo, me recomendaron realizarme la prueba, la cual me realicé con la eps, pero nadie de ustedes se comunicó conmigo para el seguimiento dado que la doctora que me atendió ese día recomendó eco avanzada en caso de ser negativa la prueba, y como mencioné, si no es porque llamo para que preguntar procedimiento para la ecografía, no se enteran de que mi prueba dio negativa, de igual forma, luego de la ecografía, el 8 de abril, quedaron en enviar los resultados ese mismo día y programar lectura de resultados, igualmente, si no insisto llamando durante más de una semana sin respuesta, me respondieron por chat el 27 de abril y al día siguiente me enviaron los resultados por WhatsApp, programando cita de lectura para el 19 de mayo, escribí quejándome, porque primero, si se hubiesen comunicado conmigo en marzo, pude haberme realizado este estudio antes, tengo 41 años y poca reserva ovárica, para que me pusieran a esperar de esa manera, al comunicarme ayer me pidieron ir por un cupo que se abrió por cancelación de otra paciente. \r\nEn mi opinión, el tema de seguimiento a los pacientes tiene muchas fallas.', '2022-05-03', 'asignado', 'Rad-2776', 'Queja personal', 'KAREN SOFIA  PINERES BALZA', '2022-05-24'),
(235, '16', 'soporte', 'Millerlandy ', 'Diaz', NULL, 'millerlandy.diaz@ienspalmar.edu.co', 3164484388, 'Configuración del programa  inventarios con su respectivo usuario y clave, ya que el anterior ya no funciona y aún esta activo el contrato.', '2022-05-04', 'cerrado', 'Rad-862', 'IE Nuestra Señora del Palmar', 'ALEXANDER OREJUELA', '2022-05-04'),
(236, '24', 'felicitacion', 'DERLIS ANDREA ', 'ORTIZ RODRIGUEZ', NULL, 'DAOR1993@HOTMAIL.COM', 3117380278, 'ESTOY MUY AGRECIDA CON FERTILITY  CARE POR TODO EL APOYO BRINDADO DESDE QUE TOME LA DECISION DE INICIAR MI PROCESO DE FERTILIDAD CON USTEDES, ADEMAS DE ESTO CUENTAN CON UN PERSONAL LLENO DE CALIDAD HUMANA TANTO LOS EMPLEADOS DE LA SEDE PRINCIPAL COMO LA SEDE VALLEDUPAR, YA QUE QUIENES ME ACOMPAÑAN EN ESTE PROCESO HAN ESTADO MUY PENDIENTE DE MI EN TODO. DE ANTEMANO DOY GRACIAS A TODO EL EQUIPO DE  FERTILITY POR SU AMOR Y DEDICACION. ', '2022-05-04', 'abierto', 'Rad-7547', 'FERTILITY CARE', NULL, NULL),
(237, '14', 'queja', 'LAURA ', 'CUERVO', NULL, 'psicologo@mercamio.com', 3207670955, 'Buenas tardes,\r\nEl pasado mes marzo envié solicitud de aprendices, me respondieron 1 mes informando que solo tenían en lectiva, respondí que era indeferente para nosotros ya que requeriamos patrocinar, después de esto no recibí respuesta, llevo 2 meses esperando, llamo para tratar de comunicar y nunca responden. Especificamente el correo se envío a solicitud.aprendiz@pio.edu.co y se escribió al Coordinador al celular 315 7655714. No contesta whatsapp ni fijos, correos, etc.', '2022-05-05', 'abierto', 'Rad-7987', 'MERCAMIO', NULL, NULL),
(238, '24', 'felicitacion', 'Jessica paola ', 'Basa sanchez ', NULL, 'jessica.paola.basa@gmail.com', 3118751427, '', '2022-05-06', 'abierto', 'Rad-7912', 'Fedegan fondo nacional del ganado ', NULL, NULL),
(239, '14', 'reclamo', 'Mary luz ', 'Linares', NULL, 'marluz1992@hotmail.com', 3104147582, 'Buenos dias hoy 7 de mayo 2022 me encuentro un poco inconforme debido que el dia mayo 3 de 2022 hice mi segundo pago del diplomado central de esterilizacion y no me an desbloqueado la pagina para realizar un cuestionario que tenia plazo hasta hoy 7 de mayo 2022 y me tratado de comunicar y no me dan respuesto ni de llamadas ni de wasa muchas gracias ', '2022-05-07', 'asignado', 'Rad-4459', '', 'YEINER GABRIEL  ROMERO JARAMILLO', '2022-05-26'),
(240, '24', 'informacion', 'ALEYDA MERCEDES', 'MARTINEZ CERVANTES', NULL, 'michelljhanina2001@gmail.com', 3002463859, 'Buena atención ', '2022-05-07', 'abierto', 'Rad-3451', 'FERTILITY CARE', NULL, NULL),
(241, '14', 'queja', 'Sara ', 'Agudelo Vidal', 1006011068, 'saritaagudelo256@gmail.com', 3162922314, 'Cordial Saludo,\r\nSeñores \r\nPolitécnico Pio Internacional de occidente.\r\nEl motivo por el cual hago esta solicitud es para que puedan manejar un orden en  la jornada sabatina hace 8 dias nos avisaron tarde que tocaba jornada presencial, y por ese motivo no ´pude asistir a clases tenia entendido que la programación era virtual . por otro lado nos cambiaron el horario y no nos dan tiempo ni para  tomarnos algo puesto que las clases son seguidas.\r\nquedo atenta a sus comentarios \r\ncordialmente\r\n Sara Agudelo \r\nEstudiante del pio', '2022-05-09', 'cerrado', 'Rad-989', '', 'ANA 	MRIA  MONTALVO CASTANEA', '2022-05-26'),
(242, '24', 'sugerencia', 'EMILIA ISABEL ', 'ARIZA VINCES', NULL, 'emilyarvi@gmail.com', 3114015232, 'Mejorar el proceso de atención hacia los pacientes.', '2022-05-09', 'asignado', 'Rad-699', 'PARTICULAR', 'KAREN SOFIA  PINERES BALZA', '2022-05-24'),
(243, '24', 'queja', 'EMILIA ISABEL ', 'ARIZA VINCES', NULL, 'emilyarvi@gmail.com', 3114015232, 'El día 7 de mayo  tenia una cita programada a las 12:20 p.m. ; siendo las 8:30 a.m. llaman a informa que se puede adelantar mi consulta para las 10:20 a.m. , me dirijo al consultorio llegamos aproximadamente 10:10 a.m. hacen el registro de ingreso y el tamizaje en enfermería. después de 1 hora con 40 minutos al ver que no daban información  acerca del retraso  por la atención, mi esposo  pregunta y le informan que al Dr. se le presento un inconveniente. La inconformidad radica en que durante 1 hora y 40 minutos no se acercaron a informar absolutamente nada,cuando lo mas adecuado es mantener al paciente informado...es un derecho como tal. luego cuando la asistente del Dr. nos busca para subir informa que nuestra cita estaba para las 12:20 a lo que nosotros respondimos que nos habían adelantado la consulta, el cual dio a entender que no tenia conocimiento y que nuestra cita aparecía programada aun  a las 12:20, el cual evidencia  que hay una fuga de información y falta de comunicación asertiva. Agradecemos tomar los correctivos para mejorar la atención al cliente.', '2022-05-09', 'asignado', 'Rad-9703', 'PARTICULAR', 'KAREN SOFIA  PINERES BALZA', '2022-05-24'),
(244, '24', 'felicitacion', 'lina marenis ', 'jacome lopez ', NULL, 'linajacomelopez@gmail.com', 3217556508, 'excelente atencion y buen equipo de trabajo inspiran confianza y familiaridad ', '2022-05-11', 'abierto', 'Rad-3915', 'fertility care', NULL, NULL),
(245, '21', 'informacion', 'prueba', 'prueba', NULL, 'prueba@prueba.com', 2121212121, 'soporte', '2022-05-12', 'cerrado', 'Rad-128', 'firma', 'alex dev', '2022-05-12'),
(246, '24', 'felicitacion', 'KARINA', 'PEÑA CONTRERAS', NULL, 'KARINAYVANE@GMAIL.COM', 3123112861, 'SEDE VALLEDUPAR. BUENAS. EXCELENTE ATENCION Y MUY BUENA ORGANIZACION . ', '2022-05-13', 'abierto', 'Rad-5541', 'fertility care', NULL, NULL),
(247, '14', 'peticion', 'Hans', 'Winkler', NULL, 'hanstriviwi@gmail.com', 3215599037, 'Necesito comunicarme con la institución, ya que quiero seguir estudiando, pero tengo problemas de ubicación, no me encuentro en la ciudad y es muy difícil ir a cali cada fin de semana ', '2022-05-13', 'abierto', 'Rad-7347', 'Ninguna ', NULL, NULL),
(248, '14', 'felicitacion', 'Norby ', 'urcue dagua', 1117266316, 'norbyurcue520@gmail.com', 3176301263, ' soy una mujer que  entiendo de muchas maneras soy del campo por eso es que entiendo de muchas formas  y pues ya que estoy aca quiero aprobechar y aprender muchas cosas de ustedes . pay wala', '2022-05-13', 'cerrado', 'Rad-8591', '', 'Paubla Andrea Lucumi Mosquera', '2022-05-26'),
(249, '16', 'peticion', 'Isabel ', 'Duarte ', NULL, 'coordinacion.comunidad@pio.edu.co', 3226914575, 'Solicito cambiar mi clave del aplicativo, porque una persona salio del equipo y tenia mi clave', '2022-05-14', 'cerrado', 'Rad-9580', 'Politécnico PIO', 'ALEXANDER OREJUELA', '2022-05-14'),
(250, '21', 'informacion', 'prueba', 'prueba', NULL, 'soporte@calidadsg', 2121212121, 'ttttttt', '2022-05-16', 'revision', 'Rad-2851', 'AUTO SAN', 'dev dev', '2022-05-16'),
(251, '14', 'queja', 'Leydy Alejandra', 'Quintero prado', NULL, 'praleja0@gmail.com', 3235932670, 'Señora de tesorería es grosera al responder una solicitud de pago deberían mejorar el Servicio y dar mejor información al respecto se mete con el tiempo de pago sin saber las calidades cosas que no son de interés de la señora ', '2022-05-16', 'abierto', 'Rad-1662', '', NULL, NULL),
(252, '14', 'queja', 'Diogenes', 'Camacho', NULL, 'digecano@hotmail.com', 3102531259, 'Soy Médico anestesiólogo, asistí y pagué el certificado de Humanización en salud de la charla dictada en el mes de marzo de 2022 y no he recibido el soporte, en las diferentes clínicas que trabajo lo están solicitando, por favor hacer gestión al mismo. Gracias', '2022-05-17', 'abierto', 'Rad-977', 'Diogenes Camacho', NULL, NULL),
(253, '14', 'soporte', 'Daniela', 'Landazury', NULL, 'danielaescobar21434@gmail.com', 3146677775, 'Mensualidad', '2022-05-20', 'abierto', 'Rad-284', '', NULL, NULL),
(254, '22', 'informacion', 'LOLA PATRICIA', 'CASTILLO GAGO', NULL, 'lideradmon@sio.com.co', 3006770106, 'Solicito me informen como hacer para obtener hojas de vida de los egresados Técnicos Administrativos en Salud, requerimos una persona para nuestra empresa. Muchas gracias por su colaboración.', '2022-05-20', 'asignado', 'Rad-3782', 'SOLUCIONES INTEGRALES DE OFICINA', 'ELIZABETH  MORENO COBO', '2022-05-24'),
(255, '14', 'queja', 'PAULA ', 'SUAZA', 1003802092, 'suazapaula30@gmail.com', 3188744878, 'ME PARECE MUY INJUSTO QUE TENGA LA PLATAFORMA BLOQUEADA POR LA RENOVACION DE MATRICULA, Y MAS EN ESTA FECHA. NO TENGO NINGUN PROBLEMA CON LOS PAGOS SIEMPRE PAGO MI MENSUALIDAD AL DIA, EL DIA QUE ES Y HASTA ANTES. NO VEO EL MOTIVO DE QUE LO BLOQUIEN Y MAS Y SOLO A PASADO UN DIA DE MORA\r\n', '2022-05-23', 'cerrado', 'Rad-2122', '', 'ANA 	MRIA  MONTALVO CASTANEA', '2022-05-26'),
(256, '16', 'queja', 'firma', 'prueba', NULL, 'asesorsgci@gmail.com', 3116003382, 'prueba de queja.', '2022-05-28', 'abierto', 'Rad-7191', 'FIRMA CALIDADSG', NULL, NULL),
(257, '16', 'soporte', 'ISABEL', 'DUARTECOORDINACION.CO', NULL, 'COORDINACION.COMUNIDAD@pio.edu.co', 3226914575, 'Solicito cambiar mi clave del aplicativo, porque una persona salio del equipo y tenia mi clave  ', '2022-05-31', 'asignado', 'Rad-2709', 'POLITECNICO INTERNACIONAL', 'ALEXANDER OREJUELA', '2022-05-31'),
(258, '14', 'queja', 'ANGIE NATALIA', 'VERA MERA', NULL, 'angieveram5@gmail.com', 3158187364, 'yo pague todo el proceso de formación y cuando dije que me liquidar todo el proceso no me incluyeron las pólizas, ni las renovaciones y siempre pensé que estaba a paz y salvo, ahora me voy a graduar y me dicen que debo pagar $143.000 para poderme graduar, lo cual me parece injusto por que nunca me lo dijeron y además revisando mi contrato las renovaciones tienen un costo de 30.000 y no de 31.000 como me lo cobraron, requiero que me aclaren el proceso y me expliquen por que paso todo esto en mi caso. ', '2022-06-01', 'abierto', 'Rad-8510', 'TECNICO EN SERVICIOS FARMACEUTICOS', NULL, NULL),
(259, '24', 'queja', 'EMILIA ISABEL ', 'ARIZA VINCES', NULL, 'emilyarvi@gmail.com', 3114015232, 'Estoy muy inconforme con el servicio prestado por parte de ustedes, a excepción del Dr. , pero desde el primer día he tenido inconveniente.\r\nHe podido evidenciar falencias  en el proceso de atención, hay falta de comunicación entre el personal , no hay un seguimiento adecuado,tampoco coordinación entre un área y otra,  el tiempo de oportunidad  en las  citas  es a un mes..tengo años trabajando en el sector salud y deben considerar medir y evaluar los procesos, no es posible que para una consulta con resultados tenga que esperar  un mes,  por favor.\r\nDonde quedo la planeación estratégica.', '2022-06-02', 'abierto', 'Rad-8259', 'PARTICULAR', NULL, NULL),
(260, '13', 'informacion', 'Fabian mauricio', 'Castro cardona', NULL, 'mauriciocastro011991@gmail.com', 3195309201, 'Informacion sobre las inscripciones', '2022-06-03', 'abierto', 'Rad-136', '', NULL, NULL),
(261, '14', 'peticion', 'Maria Juliana ', 'Vallejo Bravo', NULL, 'julivallejo1999@gmail.com', 3508894390, 'Solicitamos que las clases con la profesora de nutrición y ahora cualidades físicas y actividad física en condiciones especiales, sea cambiado el docente ya que luego de haber pasado por un proceso de formación en la clase de nutrición, consideramos que no hubo una correcta enseñanza de los temas y la metodología del profesor no fue la adecuada, ni la actitud hacia nosotros como estudiantes que desconocíamos del tema, incluso en el examen final de la materia hubo una pregunta con temas que nunca se trataron en clase directamente, pues siempre se hablo de la nutrición desde una persona aparentemente sana. Por ende al volver a tener que ver una clase que es necesaria para nuestra formación consideramos que no es justo seguir con una persona que no tiene vocación por la enseñanza mas en un proceso que debe ser reducido. Yo como represante realizo la solicitud pero es respaldado  por todos mis compañeros del GRUPO TYT 2 ', '2022-06-06', 'abierto', 'Rad-6871', 'Actividad física y deporte TYT', NULL, NULL),
(262, '24', 'informacion', 'Lucero Andrea ', 'Quiroz Pedroza ', NULL, 'luceroquiroz27@hotmail.com', 3207003337, 'Quiero saber si realizan procedimiento de donación de óvulos, me interesa ser candidata.', '2022-06-06', 'abierto', 'Rad-1619', '', NULL, NULL),
(263, '16', 'soporte', 'Paubla', 'Lucumi', NULL, 'coordinacion.salud@pio.edu.co', 3158582374, 'Solicito restablecer usuario para ingreso a información calidad', '2022-06-07', 'abierto', 'Rad-3734', 'Politecnico PIO', NULL, NULL),
(264, '16', 'soporte', 'Ana maria ', 'montalvo castaño', NULL, 'coordinacion.academica@pio.edu.co', 3126912318, 'Solicito de manera cordial activar un usuario y clave para ingresar a control documentado gracias ', '2022-06-07', 'asignado', 'Rad-2125', 'politecnico pio', 'ALEXANDER OREJUELA', '2022-06-08'),
(265, '14', 'queja', 'FABIANA VANESSA', 'RINCON MORALES', NULL, 'fabivane24@redsonoraradio.com', 3005474863, 'Buen día, en el mes de diciembre de 2021 me gradué como auxiliar contable quedando a paz y salvo con la instutucion tanto academico como financieramente, me he comunicado en múltiples ocasiones e ido directamente a las institucion he llamado muchas veces la mayoría sin respuesta y hoy a la fecha del 10 de junio de 2022 aun no me han facilitado mi diploma este es el momento en el que no se ha firmado y ya han pasado seis meses, la empresa en la que laboro me lo esta exigiendo, solicito el favor de entregarme mi diploma dado que me esta afectando. Gracias.', '2022-06-10', 'abierto', 'Rad-2729', '', NULL, NULL),
(266, '16', 'soporte', 'diego', 'escobar', NULL, 'pedagogicoae@institutofatima.edu.co', 3116742979, 'cordial saludo solicito el editable de DD-PD-014	DESARROLLO PEDAGOGICO,DD-PD-015	DISENO CURRICULAR,  DD-PD-023	FORMACION PRACTICA', '2022-06-10', 'abierto', 'Rad-4524', 'infa', NULL, NULL),
(267, '21', 'informacion', 'prueba', 'prueba', NULL, 'askjaskj@jkasjkas.com', 2121212121, 'ddsdssd', '2022-06-13', 'abierto', 'Rad-3107', 'firmacalidadsg', NULL, NULL),
(268, '22', 'informacion', 'Zorayda', 'Rodriguez', NULL, 'zoraydarc77@hotmasil.com', 0, 'Buenas tardes, me gustaria me brindaran información sobre el programa Administrativo en salud', '2022-06-14', 'abierto', 'Rad-7403', 'N/A', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(11) NOT NULL,
  `rol` varchar(255) NOT NULL,
  `created` date NOT NULL,
  `modified` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `rol`, `created`, `modified`) VALUES
(1, 'Administrador', '0000-00-00', '0000-00-00'),
(2, 'Funcionario', '0000-00-00', '0000-00-00'),
(4, 'Super Administrador', '0000-00-00', '0000-00-00'),
(6, 'Consultor', '0000-00-00', '0000-00-00');

-- --------------------------------------------------------

--
-- Table structure for table `satisfacions`
--

CREATE TABLE `satisfacions` (
  `id` int(11) NOT NULL,
  `respuesta_id` int(11) NOT NULL,
  `empresa_id` int(11) NOT NULL,
  `estado_cliente` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'grado de satisfacion',
  `sugerencia` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `created` date NOT NULL,
  `modified` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `satisfacions`
--

INSERT INTO `satisfacions` (`id`, `respuesta_id`, `empresa_id`, `estado_cliente`, `sugerencia`, `created`, `modified`) VALUES
(13, 7, 21, 'Satisfecho', ' web que usan este texto si se encuentran en estado de desarrollo. Muchas versiones han evolucionado a través de los años, algunas veces por accidente, otras veces a propósito (por ejemplo insertándole humor y cosas por el estilo).', '2021-10-14', '2021-10-14'),
(14, 7, 21, 'Satisfecho', ' web que usan este texto si se encuentran en estado de desarrollo. Muchas versiones han evolucionado a través de los años, algunas veces por accidente, otras veces a propósito (por ejemplo insertándole humor y cosas por el estilo).', '2021-10-14', '2021-10-14'),
(15, 7, 21, 'Satisfecho', 'asdfadfadfadfasdf', '2021-10-14', '2021-10-14'),
(16, 7, 21, 'Muy Satisfecho', 'qwert', '2021-10-14', '2021-10-14'),
(17, 7, 21, 'Muy Satisfecho', 'qwerty', '2021-10-14', '2021-10-14'),
(18, 40, 16, 'Muy Satisfecho', 'Herramienta que nos permite conocer las inquietudes y manifestaciones que tienes, para que tengamos la oportunidad de fortalecer nuestro servicio.', '2021-11-05', '2021-11-05'),
(19, 1, 22, 'Muy Satisfecho', 'que sigan asi todo muy bien', '2021-11-29', '2021-11-29'),
(20, 2, 22, 'Muy Satisfecho', 'que sigan asi todo muy bien', '2021-12-03', '2021-12-03'),
(21, 3, 22, 'Satisfecho', 'que sigan asi todo muy bien', '2021-12-03', '2021-12-03'),
(22, 4, 22, 'Muy Satisfecho', 'que sigan asi todo muy bien', '2021-12-03', '2021-12-03'),
(23, 5, 22, 'Muy Satisfecho', 'que sigan asi todo muy bien', '2021-12-03', '2021-12-03'),
(24, 8, 0, 'muy satisfecho', 'qwerty', '2021-11-10', '2021-11-10'),
(25, 39, 0, 'satisfecho', 'Se realiza la llamada a la señora sandra torres, quedando con la claridad tecnica el motivo por el cual google le envio la notificación, nos agradecio por la explicación realizada.', '2021-11-18', '2021-11-18'),
(26, 8, 0, 'muy satisfecho', '', '2021-11-28', '2021-11-28'),
(27, 9, 0, 'muy satisfecho', 'De acuerdo a la llamada indica que se siente muy satisfecho y se da por cerrado las felicitaciones', '2021-11-28', '2021-11-28'),
(28, 3, 22, 'Muy Satisfecho', 'Buenas tardes de ante mano agradecemos su atención y ayuda.', '2021-12-06', '2021-12-06'),
(29, 45, 0, 'muy satisfecho', 'Se comunica por vía por telefónica, con Yahaira Ortiz, a quien se le realiza la encuesta de satisfacción, la persona da una respuesta \"muy satisfecho\"', '2022-03-02', '2022-03-02'),
(30, 49, 0, 'poco satisfecho', '', '2022-03-02', '2022-03-02'),
(31, 50, 0, 'satisfecho', 'sdfsfsf', '2022-03-02', '2022-03-02'),
(32, 51, 0, 'muy satisfecho', 'ddd', '2022-03-02', '2022-03-02'),
(33, 6, 22, 'Muy Satisfecho', 'que sigan asi todo muy bien', '2021-12-03', '2021-12-03'),
(34, 7, 22, 'Muy Satisfecho', 'que sigan asi todo muy bien', '2021-12-03', '2021-12-03'),
(35, 8, 22, 'Muy Satisfecho', 'que sigan asi todo muy bien', '2021-12-03', '2021-12-03'),
(36, 11, 22, 'Muy Satisfecho', 'que sigan asi todo muy bien', '2021-12-09', '2021-12-09'),
(37, 12, 22, 'Muy Satisfecho', 'que sigan asi todo muy bien', '2021-12-09', '2021-12-09'),
(38, 13, 22, 'Muy Satisfecho', 'que sigan asi todo muy bien', '2021-12-10', '2021-12-10'),
(39, 14, 22, 'Muy Satisfecho', 'que sigan asi todo muy bien', '2021-12-12', '2021-12-12'),
(40, 15, 22, 'Muy Satisfecho', 'que sigan asi todo muy bien', '2021-12-16', '2021-12-16'),
(41, 16, 22, 'Muy Satisfecho', 'que sigan asi todo muy bien', '2021-12-17', '2021-12-17'),
(42, 17, 22, 'Muy Satisfecho', 'que sigan asi todo muy bien', '2021-12-24', '2021-12-24'),
(43, 18, 22, 'Muy Satisfecho', 'que sigan asi todo muy bien', '2021-12-27', '2021-12-27'),
(44, 19, 22, 'Muy Satisfecho', 'que sigan asi todo muy bien', '2022-01-04', '2022-01-04'),
(45, 20, 22, 'Muy Satisfecho', 'que sigan asi todo muy bien', '2022-01-04', '2022-01-04'),
(46, 21, 22, 'Muy Satisfecho', 'que sigan asi todo muy bien', '2022-01-17', '2022-01-17'),
(47, 22, 22, 'Muy Satisfecho', 'que sigan asi todo muy bien', '2022-01-19', '2022-01-19'),
(48, 23, 22, 'Muy Satisfecho', 'que sigan asi todo muy bien', '2022-01-19', '2022-01-19'),
(49, 24, 22, 'Muy Satisfecho', 'que sigan asi todo muy bien', '2022-01-19', '2022-01-19'),
(50, 25, 22, 'Muy Satisfecho', 'que sigan asi todo muy bien', '2022-01-27', '2022-01-27'),
(51, 26, 22, 'Muy Satisfecho', 'que sigan asi todo muy bien', '2022-02-06', '2022-02-06'),
(52, 27, 22, 'Muy Satisfecho', 'que sigan asi todo muy bien', '2022-02-06', '2022-02-06'),
(53, 28, 22, 'Muy Satisfecho', 'que sigan asi todo muy bien', '2022-02-06', '2022-02-06'),
(54, 29, 22, 'Muy Satisfecho', 'que sigan asi todo muy bien', '2022-02-07', '2022-02-07'),
(55, 30, 22, 'Muy Satisfecho', 'que sigan asi todo muy bien', '2022-02-17', '2022-02-17'),
(56, 31, 22, 'Muy Satisfecho', 'que sigan asi todo muy bien', '2022-02-17', '2022-02-17'),
(57, 32, 22, 'Muy Satisfecho', 'que sigan asi todo muy bien', '2022-02-21', '2022-02-21'),
(58, 33, 22, 'Muy Satisfecho', 'que sigan asi todo muy bien', '2022-02-28', '2022-02-28'),
(59, 34, 22, 'Muy Satisfecho', 'que sigan asi todo muy bien', '2022-04-04', '2022-04-04'),
(60, 35, 22, 'Muy Satisfecho', 'que sigan asi todo muy bien', '2022-04-04', '2022-04-04'),
(61, 62, 0, 'muy satisfecho', 'Agradece por el servicio prestado.', '2022-05-05', '2022-05-05'),
(62, 10, 0, 'muy satisfecho', 'jjj', '2022-05-12', '2022-05-12');

-- --------------------------------------------------------

--
-- Table structure for table `squemas`
--

CREATE TABLE `squemas` (
  `id` int(11) NOT NULL,
  `nombre_bd` varchar(50) NOT NULL,
  `colegio_id` int(11) DEFAULT NULL,
  `created` date NOT NULL,
  `modified` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `squemas`
--

INSERT INTO `squemas` (`id`, `nombre_bd`, `colegio_id`, `created`, `modified`) VALUES
(1, 'document_prueba1c', 21, '2018-12-04', '2021-09-27'),
(2, 'document_prueba2c', 2, '2018-12-04', '2018-12-04'),
(3, 'document_lessaru_c', 3, '2018-12-21', '2018-12-21'),
(4, 'document_prueba', NULL, '2020-01-19', '2020-01-19'),
(5, 'document_carrucel', 12, '2020-01-01', '2020-02-27'),
(6, 'document_anunciacion_c', 13, '2020-05-04', '2020-05-04'),
(7, 'document_poli_c', 14, '2020-08-26', '2020-10-05'),
(8, 'document_aficenter', 15, '2020-09-25', '2020-09-25'),
(9, 'document_calidadsg', 16, '2020-10-05', '2020-10-06'),
(10, 'document_aringenieria', 17, '2020-12-29', '2020-12-29'),
(11, 'document_bm', 18, '2021-03-29', '2021-03-29'),
(12, 'document_swc', 19, '2021-04-21', '2021-04-21'),
(13, 'document_asevis', 20, '2021-07-12', '2021-07-12'),
(14, 'document_desarrollo', 21, '2021-09-27', '2021-09-27'),
(15, 'document_dev', NULL, '2021-09-27', '2021-09-27'),
(16, 'document_doc_infa', 22, '2021-10-26', '2022-05-27'),
(17, 'document_htucasa', 23, '2021-12-21', '2022-01-11'),
(18, 'document_fertilitycare', 24, '2022-01-11', '2022-01-11'),
(19, 'documentalsg_colombo', 26, '2022-05-02', '2022-05-02'),
(20, 'documentalsg_alcifronte', 27, '2022-05-02', '2022-05-02'),
(21, 'documentalsg_polivalle', 25, '2022-05-03', '2022-05-04'),
(22, 'documentalsg_cua', 28, '2022-06-14', '2022-06-14');

-- --------------------------------------------------------

--
-- Table structure for table `tb_condiciones`
--

CREATE TABLE `tb_condiciones` (
  `id` int(11) NOT NULL,
  `clasificacionIncidente` varchar(255) NOT NULL,
  `tipoIncidente` varchar(255) NOT NULL,
  `correcionIncidente` varchar(255) NOT NULL,
  `fechaRegistro` date NOT NULL,
  `usuario` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_condiciones`
--

INSERT INTO `tb_condiciones` (`id`, `clasificacionIncidente`, `tipoIncidente`, `correcionIncidente`, `fechaRegistro`, `usuario`) VALUES
(1, 'SNC', 'Control de cartera', 'revision de cartera y ajuste inmediato', '2016-09-06', 'SISTEMA'),
(12, 'SNC', 'Polizas', 'Reportar inconsistencia a la aseguradora; solicitar de nuevo el carn?; solicitar p?lizas al inicio de actividad acad?mica', '2016-09-06', 'SISTEMA'),
(13, 'SNC', 'Desarrollo de la norma', 'Remitir a plan de mejoramiento o traslado de grupo', '2016-09-06', 'SISTEMA'),
(14, 'SNC', 'Induccion del personal', 'Establecer el cronograma para desarrollar el plan de inducción', '2016-09-06', 'SISTEMA'),
(16, 'SNC', 'Limpieza y orden ', 'Realizar aseo de la institución', '2016-09-06', 'SISTEMA'),
(17, 'SNC', 'Contratacion personal ', 'Elaboracion de contrato debidamente firmado y actualizaci?n en la planta de cargos en un plazo m?x. a 3 d?as', '2016-09-06', 'SISTEMA'),
(18, 'SNC', 'Convenios interinstitucionales ', 'Elaborar convenio docencia servicio en un plazo max. de 3 días', '2016-09-06', 'SISTEMA'),
(19, 'SNC', 'Desarrollo academico', 'Revisar planeacion de modulo de formacion vs ejecucion del asesor educativo', '2016-09-06', 'SISTEMA'),
(20, 'AI', 'limpiar;ajustar; etc.; equipo en movimiento', 'Capacitacion/Entrenamiento', '2016-09-06', 'SISTEMA'),
(21, 'AI', 'omitir el uso de equipo de protecci?n personal ', 'Capacitacion/Entrenamiento', '2016-09-06', 'SISTEMA'),
(22, 'AI', 'omitir el uso de atuendo personal seguro (uso de zapatos de tac?n alto; pelo suelto; ropa suelta; anillos; relojes; etc.)', 'Capacitacion/Entrenamiento', '2016-09-06', 'SISTEMA'),
(23, 'AI', 'omitir la colocaci?n de avisos; se?ales; tarjetas; etc.', 'Capacitacion/Entrenamiento', '2016-09-06', 'SISTEMA'),
(24, 'AI', 'soltar o mover pesos; etc.; sin dar aviso o advertencia adecuada', 'Capacitacion/Entrenamiento', '2016-09-06', 'SISTEMA'),
(25, 'AI', 'bromas o juegos pesados (distraer; fastidiar; molestar; asustar; chansearse pesadamente; lanzar materiales; exhibirse burlonamente; etc.)', 'Capacitacion/Entrenamiento', '2016-09-06', 'SISTEMA'),
(26, 'AI', 'uso del material o equipo de una manera para la cual no est? indicado', 'Capacitacion/Entrenamiento', '2016-09-06', 'SISTEMA'),
(27, 'AI', 'agarrar los objetos inseguramente', 'Capacitacion/Entrenamiento', '2016-09-06', 'SISTEMA'),
(28, 'AI', ' agarrar los objetos en forma errada', 'Capacitacion/Entrenamiento', '2016-09-06', 'SISTEMA'),
(29, 'AI', 'usar las manos en lugar de las herramientas manuales (para alimentar; limpiar; reparar; ajustar; etc.)', 'Capacitacion/Entrenamiento', '2016-09-06', 'SISTEMA'),
(31, 'AI', 'Correr por las instalaciones', 'Capacitacion/Entrenamiento', '2016-09-06', 'SISTEMA'),
(32, 'AI', 'lanzar material en lugar de cargarlo o pasarlo', 'Capacitacion/Entrenamiento', '2016-09-06', 'SISTEMA'),
(33, 'AI', 'Inyectar; mezclar o combinar una sustancia con otra; de manera que se cree un riesgo de explosion; fuego u otro', 'Capacitacion/Entrenamiento', '2016-09-06', 'SISTEMA'),
(34, 'AI', 'Colocacion insegura de materiales; herramientas; desechos; etc. (como para crear riesgos de derrumbe; tropez?n; choque o resbal?n; etc.)', 'Capacitacion/Entrenamiento', '2016-09-06', 'SISTEMA'),
(35, 'AI', 'Usar equipo inseguro (Equipo rotulado o conocido como defectuoso)', 'Capacitacion/Entrenamiento', '2016-09-06', 'SISTEMA'),
(36, 'CI', 'Falta de conocimiento en el trabajo de supervision/ administraci', 'Capacitacion/Entrenamiento', '2016-09-06', 'SISTEMA'),
(37, 'CI', 'Ubicacion inadecuada del trabajador; de acuerdo con sus cualidades y con las exigencias que demanda la tarea', 'Modificacion puesto trabajo', '2016-09-06', 'SISTEMA'),
(38, 'CI', 'Control e inspecciones inadecuados de las construcciones', 'Inspeccion desguridad/mantenimiento', '2016-09-06', 'SISTEMA'),
(39, 'CI', 'Especificaciones deficientes en cuanto a los requerimientos', 'Documentar procedimientos/capacitacion', '2016-09-06', 'SISTEMA'),
(40, 'CI', 'Comunicacion inadecuada de las informaciones sobre aspectos de seguridad y salud', 'Capacitacion/Entrenamiento', '2016-09-06', 'SISTEMA'),
(41, 'CI', 'Manejo inadecuado de los materiales', 'Capacitacion/Entrenamiento. Adquisicion', '2016-09-06', 'SISTEMA'),
(42, 'CI', 'Almacenamiento inadecuado de los materiales', 'Adquisicion/Reubicacion', '2016-09-06', 'SISTEMA'),
(43, 'CI', 'Transporte inadecuado de los materiales', 'Adquisicion/Reubicacion', '2016-09-06', 'SISTEMA'),
(44, 'CI', 'Sistemas deficientes de recuperacion o de eliminacion de desechos', 'Capacitacion/entrenamiento/adquisicion', '2016-09-06', 'SISTEMA'),
(45, 'CI', 'Aspectos preventivos inadecuados para limpieza o pulimento', 'Inspeccion de seguridad/mantenimiento', '2016-09-06', 'SISTEMA'),
(46, 'CI', 'Aspectos correctivos inapropiados para reemplazo de partes defectuosas/ficha tecnica equipo', 'Inspeccion de seguridad/seguimiento mantenimiento', '2016-09-06', 'SISTEMA'),
(47, 'CI', 'Planificacion inadecuada del uso', 'Inspeccion de seguridad', '2016-09-06', 'SISTEMA'),
(48, 'CI', 'Prolongacion excesiva de la vida util del elemento', 'Inspeccion de seguridad/adquisiciones', '2016-09-06', 'SISTEMA'),
(49, 'CI', 'Inspeccion o control deficientes', 'Seguimiento a Inspeciones', '2016-09-06', 'SISTEMA'),
(50, 'CI', 'Sobrecarga o proporcion de uso excesivo', 'Inspeccion seguridad', '2016-09-06', 'SISTEMA'),
(51, 'CI', 'Carencia del equipo de proteccion personal necesario', 'Adquisicion/entrenamiento', '2016-09-06', 'SISTEMA'),
(52, 'CI', 'Espacio inadecuado de los pasillos; salidas; etc.', 'Reubicacion', '2016-09-06', 'SISTEMA'),
(53, 'CI', 'Espacio libre inadecuado para movimientos de personas u objetos', 'Reubicacion', '2016-09-06', 'SISTEMA'),
(54, 'CI', 'Ventilacion general inadecuada; no debida a equipo defectuoso', 'Adquisicion/Reubicacion', '2016-09-06', 'SISTEMA'),
(55, 'CI', 'Insuficiente espacio de trabajo', 'Reubicacion', '2016-09-06', 'SISTEMA'),
(56, 'CI', 'Iluminacion inadecuada (insuficiente luz para la operacion; brillo; etc.)', 'Adquisicion/reubicacion', '2016-09-06', 'SISTEMA'),
(57, 'CI', 'Uso de material o equipo de por ser peligroso (no defectuoso)', 'Capacitacion', '2016-09-06', 'SISTEMA'),
(58, 'CI', 'Uso de herramientas o equipo inadecuado o inapropiado (no defectuoso)', 'capacitacion', '2016-09-06', 'SISTEMA'),
(59, 'CI', 'Sin conexion a tierra (electrico)', 'Mantenimiento', '2016-09-06', 'SISTEMA'),
(60, 'CI', 'Sin aislamiento (electrico)', 'Mantenimiento', '2016-09-06', 'SISTEMA'),
(61, 'CI', 'Conexiones; interruptores; etc.; descubiertos (electrico)', 'Mantenimiento', '2016-09-06', 'SISTEMA'),
(62, 'CI', 'Materiales sin rotulo o inadecuadamente rotulados', 'Serializacion', '2016-09-06', 'SISTEMA'),
(63, 'AI', 'se sienta mal en el escritorio', 'que se siente bien', '2016-09-10', 'SISTEMA'),
(65, 'AI', 'se sienta mal en el escritorio', 'que se siente bien\nun curso en el sena', '2016-09-26', 'SISTEMA'),
(66, 'CI', 'Mobiliario defectuoso o con partes peligrosas', 'mantenimiento/ inspeccion de seguridad.', '2016-09-29', 'SISTEMA'),
(68, 'CI', 'Golpe en alguna parte del cuerpo por obtaculo dentro de la institucion', 'Revisar Seguridad', '2017-02-13', 'SISTEMA'),
(69, 'CI', 'Daño de lamparas', 'Verificar el estado de las lamparas y realizar los cambios correspondientes.', '2017-03-23', 'SISTEMA'),
(70, 'SNC', 'Datos de asignacion academica no veraz', 'verificar y actualizar los datos de las asignaciones continuamente', '2017-04-10', 'SISTEMA'),
(71, 'SNC', 'Incumplimiento en el tiempo de entrega; fecha del certificado; firmas; numero de cedula; nombre incompleto; intensidad horario errada.', 'Volver a expedir el diploma con los criterios solicitados; en un plazo míximo. 8 dí­as.', '2017-04-12', 'SISTEMA'),
(72, 'SNC', 'RP con el mismo numero de DIF mes', 'Buena tarde;\ninformo que los RP del mes de Marzo- Abril  ambos tienen el consecutivo 1592544   correspondientes a la estudiante 160112033; esto genera inconsistencias en los saldos.', '2017-04-25', 'SISTEMA'),
(73, 'SNC', 'Incumplimiento a procedimientos definidos por  la institucion', 'Realizar capacitacion en el procedimiento incumplido.', '2017-04-25', 'SISTEMA'),
(74, 'SNC', 'Documentos de ingreso incompletos', 'Solicitud y almacenamiento de los requisitos de ingreso en carpeta digital.', '2017-05-09', 'SISTEMA'),
(75, 'SNC', 'incumplimiento en procedimiento de apertura de grupos', 'Ajuste de actividades- reentrenamiento en el cargo ', '2017-05-22', 'SISTEMA'),
(76, 'CI', 'Fuga de agua en aire acondicionado', 'mantenimiento preventivo o correctivo', '2017-06-08', 'SISTEMA'),
(77, 'SNC', 'ARL elaborar con errores de identificacion o de nombre', 'Revision y entrega de documentos soportes de ARL en  tiempo menor a 12 horas', '2017-07-13', 'SISTEMA'),
(78, 'CI', 'tapa de regleta caida y cableado expuesto', 'en el punto de venta se presenta la tapa de la regleta de energia caida y con los cables expuestos; se solicita corregirlo para evitar un accidente.', '2017-10-02', 'SISTEMA'),
(79, 'SNC', 'Facturacion errada elaborada por estudiantes', 'Bloquear si el estudiante no ha senalado el mes a facturar.', '2017-10-02', 'SISTEMA'),
(80, 'SNC', 'Documentos no controlados', 'Se requiere descargar el documento y/o formato del listado maestro de documentos y/o registros y volver a realizar el documento a remitir.', '2017-10-23', 'SISTEMA'),
(81, 'CI', 'Maquina o equipo no asegurado', 'Se requiere asegurar la maquina o equipo que coloca en riesgo al personal.', '2018-06-07', 'SISTEMA'),
(82, 'CI', 'Fallas estructurales como aflojamiento, desprendimiento de partes entro otras.', 'Realizar ajustes, reparar o fijar piezas.', '2019-07-18', 'sistema'),
(83, 'CI', 'Ausencia de señalización o desmarcación', 'Intalar señalizacion o realizar desmarcacion', '2019-07-18', 'sistema'),
(84, 'CI', 'baranda floja', 'la baranda que se encuentra en las gradas de ingreso se encuentra floja debe ser asegurada', '2019-09-17', 'sistema'),
(85, 'CI', 'baranda de las escaleras del instituto floja', 'se debe reparar la baranda  de la escalera de la entrada al instituto, ya que se encuentra floja y puede ocasionar un accidente a cualquier persona.\r\n\r\ngracias!!', '2019-10-19', 'sistema'),
(86, 'CI', 'El ventilador que se encuentra a mi espalda se encuentra los tornillos flojos, colocandome en riesgo provocandome una leccion o un trauma ', '1.ajustar los tornillos \r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\nrevisar  de manera preventiva que los ventiladores de la institucion devido a su vibracion se puedan desajustar y caer provocando un accidente ', '2019-11-27', 'sistema'),
(87, 'SNC', 'RED DE INTERNET', 'Estudiantes del grupo SO 89 Y SF 71 estan en la norma TIC y durante la jornada del día 14  de marzo de 2020 se presenta inconvenientes con la conectividad de internet lo cual hace que su proceso academico en la clase presente demoras en sus actividades.', '2020-03-14', 'sistema'),
(88, 'AI', 'En la inspección realizada el día de hoy en la sede Palmira, se evidencio en la unidad de administración de medicamentos que el equipo de venoclisis tenia una aguja conectada fijada con el capuchón en el buretrol. Previamente en la practica estuvo la jefe', 'Aplicación de lecciones aprendidas por la Jefe Julieth Ernestina Jaramillo. Sensibilizacion en uso de cortopunzantes ( Uso de medio tecnológico) Poblacion objeto: Compañeros de trabajo y estudiantes.', '2020-09-28', 'sistema');

-- --------------------------------------------------------

--
-- Table structure for table `tb_proceso_noconformes`
--

CREATE TABLE `tb_proceso_noconformes` (
  `id` int(11) NOT NULL,
  `proceso` varchar(255) NOT NULL,
  `usuarioscargo_id` int(11) NOT NULL,
  `TbCondiciones_id` int(11) NOT NULL,
  `descEvento` varchar(1000) NOT NULL,
  `lugarEvento` varchar(255) DEFAULT NULL,
  `estado` varchar(50) NOT NULL,
  `fechaRegistro` date NOT NULL,
  `fechaValidacion` date DEFAULT NULL,
  `respuesta` varchar(1000) DEFAULT NULL,
  `usuario` varchar(255) NOT NULL,
  `observacion_1` varchar(1000) NOT NULL,
  `observacion` varchar(1000) NOT NULL,
  `fechaRespuesta` date NOT NULL,
  `num_accion_corr` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_proceso_noconformes`
--

INSERT INTO `tb_proceso_noconformes` (`id`, `proceso`, `usuarioscargo_id`, `TbCondiciones_id`, `descEvento`, `lugarEvento`, `estado`, `fechaRegistro`, `fechaValidacion`, `respuesta`, `usuario`, `observacion_1`, `observacion`, `fechaRespuesta`, `num_accion_corr`) VALUES
(1, 'DD', 2, 23, 'La señorita mayerli al pararse de su puesto de trabajo en la sede norte aproximadamente a las 11:00 a.m. se tropieza con la puerta; por falta de atencián.', '1', 'Aprobacion', '2016-09-29', '2017-04-11', 'El motivo del incidente se da por que en el momento de salir de la oficina no me fije que la puerta estuviera medio abierta; y sucede el incidente antes mencionado; como sugerencia creo que la puerta debe de tener un mecanismo que la mantenga en una posicián segura y así evitar futuros incidentes.\n', 'fguzman', '', 'se evidencia capacitacián del personal', '2016-09-30', 0),
(2, 'GR', 6, 66, 'El mostrador donde se encuentra el monitor de las cámaras en la sede de Palmira tiene una punta del vidrio despicado ; lo que podría proporcionar ocasionar un accidente; favor revisar mantenimiento preventifo', '1', 'Aprobacion', '2016-10-03', '2016-10-10', 'El mostrador de la recepcián tiene la punta del lado derecho fraccionada; esto puede terminar de quebrar el vidrio; por lo tanto se solicita cambio; a mas tardar para el día  19 de octubre.', 'fmeza', '', 'Se evidencio que se realizo correccián de la condicián insegura; se observa que el borde ya esta pulido y actualmente no genera riesgo. ', '2016-10-04', 0),
(3, 'GR', 6, 38, 'se descolgo la puerta del salon dedicacion que se encontraba unida a un panel yeso; y esa puerta respresenta un riesgo grande ya que esta hecha solo de vidrio', '', 'Aprobacion', '2016-10-11', '2016-11-15', 'mal manejo y uso en la utilizacián de la puerta; fue reportada a direccián para arreglo como compromiso hasta finales de octubre', 'descobar', '', 'La puerta se ubica de  nuevo en el salon; funcionando correctamente', '2016-10-18', 0),
(4, 'GR', 6, 46, 'en el baño se encuentra un espejo quebrado por lo cual puede un estudiante cortarse', '', 'Aprobacion', '2016-10-11', '2016-11-15', 'mala utilizacián por parte de los estudiantes se apoyan en el vidrio ocasionando rompimiento. Se comunica a direccián para cambio ', 'descobar', '', 'se observa que el espejo fue retirado; por lo que la condicián insegura ya no existe', '2016-10-18', 0),
(7, 'GR', 6, 66, 'El día martes 25 de octubre a las 9:00 a.m. la Dra Claudia Jordán se encontraba en la oficina de gerencia cuando el espaldar de una de las sillas que esta averiado se suelta con facilidad; la Dra Claudia no presento ninguna lesián.', '2', 'Aprobacion', '2016-10-26', '2017-10-02', 'Se retiro la silla y se envio a mantenimiento.', 'cjordan', '', 'cambiado', '2017-09-18', 1),
(12, 'DD', 3, 12, 'se realizo retiro de la ARL de los estudiantes del grupo ae 89 de la sede Palmira; debido a que en la consulta de retiros del mes de marzo el grupo estaba con fecha de retiro el dia 9; se ejecuto el procedimiento de retiro; pero el dia de hoy me informan que aun estan en practica. Es importante que se logren ajustar las fechas de la generacion de las ARL acorde a las fechas reales de la programacion practica para no poner en riesgo el aseguramiento de los estudiantes. ', '1', 'Aprobacion', '2017-03-16', '2017-03-21', 'Se realiza correccián se envía archivo para generar ARL con la respectiva fecha de finalizacián indicada por el Coordinador AcadÃ©mico 31-3-2017.', 'fguzman', '', '', '2017-03-16', 0),
(14, 'GR', 4, 69, 'desde el pasado lunes 20 de marzo del presente año se realizo el traslado del puesto de trabajo del área de mercadeo de la sede cali; se ubico en lo que solía ser la sala de espera; antes la lampara de este espacio se prendía solo en los momentos necesarios pero desde el traslado se tiene prendida durante todo el día; debido a esto se a notado que una de las lamparas tiene un funcionamiento intermitente; generando una luminosidad deficiente en el espacio que podría afectar mi visián.\nagradezco su atencián en el asunto y quedo atenta a que se tomen los correctivos correspondientes.', '2', 'Aprobacion', '2017-03-23', '2017-07-13', 'Se solicita al proceso de gestion financiera y de recursos; un mantenimiento para la luminaria del puesto de trabajo de manera prioritaria. ', 'iserna', '', 'se solicito el cambio lampara para este mes', '2017-03-23', 0),
(15, 'DD', 2, 19, 'El dia de hoy; no se presenta a prestar su servicio como asesor educativo el señor Lizardo Chapid; quien tenia clase con el grupo de articulacion 8M2017; se llamo en reiteradas ocasiones y no fue posible el contactarse con el ni con el profesor Edwin Vega; Lo anterior generando insatisfaccion en los estudiantes. ', '1', 'Aprobacion', '2017-03-23', '2017-05-31', 'se reviso la planeacion del modulo y se encontraba en el sistema de informacián asignada la clase con el docente para esa actividad; por lo que fue una novedad por calamidad domestica del asesor educativo; no se afecto la prestacián del servicio debido a que la temática fue orientada por otro asesor ', 'fguzman', '', 'buena aplicacián', '2017-04-11', 0),
(16, 'GR', 6, 56, 'se evidencia que las luminarias  estan presentando fallas estan intermitentes lo cual causa una gran fatiga visual', '2', 'Aprobacion', '2017-03-28', '2017-04-26', 'ya se cambiaron.', 'aorejuela', '', 'ya corregido; ubicacion ISabel mercadeo', '2017-04-11', 0),
(17, 'GR', 2, 11, 'Cordial saludo; la presente es para informar que se presenta una inconformidad con el área financiera; se presenta una estudiante que cancelo el día sábado sus pendientes financieros del grupo SO20C ANA MARIA BUENO PAZU; la estudiante le informa a maicol que por favor envie el correo a la secretaria acadÃ©mica para generar el ARL y Ã©l le informa que si lo envío; la estudiante se comunica con el  por medio de mensaje de whatsap recordando si envío el correo y no le responde; llega la estudiante el día jueves por su ARL; pero no esta generada ya que no autoriza y no me envía ningÃºn correo autorizando ni informando que se encuentra al día por lo tanto no se genera.\nla estudiante se encuentra molesta por que viene de lejos y se le atrasa el tiempo de salir a practicas.\n', '2', 'Aprobacion', '2017-03-30', '2017-09-18', 'no se logro validar de manera oportuna la informacion de la estudiante ana maria bueno por parte del promotor de recaudo; se envia a la secretaria informacion del estado de cuenta de la estudiante', 'mzuleta', '', 'se logro envidenciar que a la estudiante se le genero la arl', '2017-09-18', 0),
(19, 'DD', 3, 19, 'Se realiza el acta 059  de la estudiante LUISA FERNANDA SALINAS con numero de identificacián 1006271.266  de pradera y el numero correcto es 10062217; el cual fue entregado el día 04/04/2017 ; el estudiante entrego la fotocopia de identificacián; se entrego el certificado de actitud ocupacional sin firma de la dra. yadira escobar.', '1', 'Aprobacion', '2017-04-04', '2017-05-31', 'se realiza correcián del acta de grado; se verifico pero el error  se presento en el tema de digitacián.\n\nSe envía para correcián y firma.', 'fmeza', '', 'Buen registro', '2017-04-11', 0),
(26, 'GR', 2, 11, 'El certificado no estaba listo por el registro fue el dia martes y la señora me dice que lo pago el dia viernes le dijieron que lo reclamara el dia viernes 08 de abril; la señora estaba en todo su derecho de estar molesta por ese dia debería estar listo.\nPero los con la fechas registradas no era para entregárselo a la señora. Pero el caso de ella no termina allí cuando ya en horas de la tarde me desocupo un poquito realizo el certificado para llevarlo a firmar el dia lunes por el ingeniero fabian y entregarlo el dia martes me doy cuenta que existe inconsistencia en el valor ya que dice totalidad del programa de 4.038.200 y ese no es el valor total de programa de auxiliar en enfermería; le pregunto a maicol y me dice que es ese valor por que el resto lo pagara de otra manera; le pregunto a la niña de ventas maria Isabel que valores entrego y me dice que se le dio un descuento del 10% por pagar de contado y el valor del certificado es por 1.200.000 ', '2', 'Aprobacion', '2017-04-09', '2017-09-18', 'Se incumpliá el registro de la informacián de certificados en el registro correspondiente por falta de atencián en las actividades desarrolladas; al igual que no se logro validar por medio del contrato el valor real que debia pagar el cliente ', 'mzuleta', '', 'se valido entrega del certificado; logrando satisfaccion por parte del cliente', '2017-09-18', 0),
(29, 'GR', 6, 39, 'En visita de inspeccián de concepto sanitario se reporta condicián insegura en las luminarias de la recepcián y pasillo debido a que no cuentan con un sistema de proteccián para evitar que ante cualquier movimiento sismico o fallas en los soportes de las luminarias;  estas podrían caer sobre las personas que se ubican en estos espacios. Esta condicián debe corregirse de manera prioritaria para no poner en riesgo la vida de las personas; al igual que se podría revocar el certificado de concepto sanitario emitido por la secretaria de salud municipal.', '1', 'Aprobacion', '2017-04-19', '2017-09-18', 'se envia solicitud para la autorizacion de esta compra', 'fguzman', '', 'se realiza programacion de la condicián preventiva en el cronograma de mantenimiento preventivo', '2017-09-18', 0),
(30, 'GR', 6, 48, 'Las sillas del personal administrativo se encuentran defectuosas en sus partes; los espaldares estan dañados; la espuma en general ya esta deteriorada; soportes de patas dañado. Por lo anterior requiere el cambio de todas las sillas del personal administrativo tanto de la sede Palmira; como de la Sede Cali; ya que el trabajo que se desarrolla es estatico; frente a videoterminales; en posicion sedente durante la mayor cantidad de horas de la jornada laboral influyendo en el disconfort de los colaboradores \n y salud de los mismos. ', '1', 'Aprobacion', '2017-04-19', '2017-09-18', 'se paso informe a la direccion administrativa para solicitud de compra', 'fguzman', '', 'verificacion de la programacion de la compra', '2017-09-18', 0),
(31, 'DD', 3, 20, 'La senora socorro el dia martes como alas 9:30 estaba limpiando la impresora mientras estaba estaba prendida y no se percato de desenchufarla ', '1', 'Aprobacion', '2018-04-17', '2018-04-17', 'me encontraba realizando la limpieza el dia martes y no me percate de que la impresora no estaba apagada; por lo tanto sucedio un inconveniente y dejo de funcionar la impresora.', 'slopez', '', 'tener mas cuidado a la hora de hacer sus actividades respectivas.', '2018-04-17', 0),
(32, 'GR', 5, 56, 'El salon ubicado en el segundo piso frente a la oficina de la direccion; no cuenta con la iluminacion necesaria.debido a que solo cuenta con una lampara y  presenta dificulta a desarrollar clases.\n\n', '1', 'Aprobacion', '2018-05-17', '2018-06-07', 'Se identifica al desarrollar clases durante el mes de mayo que el salon tiene poca iluminacion; lo que podria afectar la concentracion e los estudiantes.', 'fmeza', '', 'Se evidencia la adaptacion de iluminarias y adecuacion para el desarrollo de clases.', '2018-05-29', 0),
(57, 'GR', 5, 50, 'El compresor del area de odontologia tiene algunas fallas; debido a que presenta algun tipo de escape; esto podria poner en riesgo los estudiantes que realizan practica en la unidad.', '1', 'Aprobacion', '2018-02-09', '2018-02-22', 'Se logra evidenciar que el compresor presenta algunas fallas; depues de la revision ; ya no logra prenderesto sucedio en el mes de febrero en unas de las practicas de salud oral.', 'slopez', 'Se realiza cancelacion de uso del compresor para la parctica y se inicia el proceso de revision y compra si es necesario.', 'Se logra evidenciar el compresor que se adquirio bajo la necesidad de los estudiantes.', '2018-02-15', 0),
(58, 'GR', 5, 36, 'Se evidencia que en el salon destrezas existe una mesa que presenta una pata floja; lo que podria representar algun tipo de dano en su entorno.', '1', 'Aprobacion', '2018-04-30', '2018-05-05', 'Se considera pertinente realizar el retiro de la mesa; para evitar algun tipo de accidente.', 'slopez', '', 'Se evidencia el retiro de la mesa', '2018-05-10', 0),
(61, 'DD', 1, 25, 'los estudiantes del grupo 105 de auxiliar de enfermeria en la hora del almuerzo se hacen por el pasillo a ingerir sus alimentos y hacen demasiado ruido; lo cual causa una molestia para los otros grupos que estan en clase y docentes ', '1', 'Aprobacion', '2018-05-31', '2018-06-22', 'Se requiere hacer campañas de educacion para llevar los estudiantes al espacio asignado para el consumo de alimentos.', 'slopez', '', 'Se evidencia registro de capacitacion.', '2018-06-26', 0),
(63, 'GR', 5, 81, 'Se observa que un ventilador ubicado en el salon de destrezas esta flojo y al parecer el chazo podria dejar caer el ventilador esto se evidencia en el mes de marzo del presente ano.', '1', 'Aprobacion', '2018-03-15', '2018-06-07', 'Se podria dar la situacion debido a que la instalacion fue en el panel yeso y no se contemplo el evento de que el chazo expanda la pared y permita que el ventilado afloje a medida de su funcionamiento; se realiza ajuste del ventilador.', 'fmeza', '', 'Se evidencia el mantenimiento a los ventiladores para ajustar el del salon de destrezas y de una vez se revisan todos los ventiladores de los salones.', '2018-06-07', 0),
(64, 'GR', 5, 56, 'se evidencia poca iluminacion en el area de recepcion. el dia 05/03/2018. donde algunos estudiantes se quejaron. se solicita el cambio de iluminarias.', '1', 'Aprobacion', '2018-03-05', '2018-04-20', 'se realiza compra de lamparas led el 18/03/2018. con el fin de mejorar las inconformidades presentadas por los estudiantes y personal administrativo. asi­ dando solucion a lo informado.', 'dlopez', '', 'se evidencia el mantenimiento correctivo del ventilador y su instalación.', '2018-03-28', 0),
(65, 'GR', 5, 66, 'se solicita cambio de tableros didacticos. puesto que estos ya se encuentran muy deteriorados y no estan bn fijados a la pared. pudiendo ocasionar un accidente.', '1', 'Aprobacion', '2018-04-04', '2018-04-20', 'se realiza solicitud de insumos. el dia 04/04/2018. para realizar el cambio de los tableros defectuosos.', 'dlopez', '', 'se realiza compra el dia 08/04/2018. para mejorar optima visibilidad. en los tableros utilizados para dictar la clase.\n', '2018-04-13', 0),
(66, 'DD', 7, 19, 'la presente es para informar mi inconformidad con Maicol Lemus por lo que no cumple con las directriz dada por la institucion y más son ordenes dadas por la Dra. Yadira y Yirle an. Los diplomas no se deben entregar a persona terceras a no ser que tengan un poder autorizado para reclamarlo. Maicol entrega un diploma en mi ausencia horario de almuerzo pero ya se le había informado que no lo hiciera que el estudiante debía pasar por el diploma y firmar el libro. Hizo caso omiso y lo entrega. En varias ocasiones maicol a entregado diplomas saltándose esa directriz y ya se le ha llamado la atencián por dicho motivo; ya que en una entrega pasá un inconveniente por no autorizacián de dicho reclamo.', '2', 'Aprobacion', '2018-06-18', '2018-12-08', 'Se le entrego el diploma a la madre de familia del egresado, ya que este se encuentra laborando todos los dias con tusnos de 12 horas el cual no le queda espacio para reclamar el diploma.\r\n\r\nla madre de famila, la conoce todo el personal administrativo.\r\n\r\nla madre de familia en varias ocasiones a presentado inconformidad por los tramites tan lentos y la mala atención de parte de fatima, pues es una persona muy explosiva al momento que no se le cumple con lo pactado y a la mala atención recibida.\r\n\r\nPor esa razón se le entrego el diploma.\r\n\r\nen ninguna ocasión se ha tenido inconvenientes por la entrega de los diplomas, que según la compañera indica lo contrario.', 'mzuleta', '', 'efctivamente el diploma fue entregado al representante del estudiante', '2018-06-26', 1),
(67, 'DD', 3, 73, 'Se realiza la solicitud de ARL en el mes de mayo y junio sin haber pasado inicialmente por la verificación de los estados financiero, ahora en el mes de julio se solicita el retiro de la ARL  de dichos estudiantes quienes al final no desarrollaron practica, generando un sobre costo\r\nAlgunos de los estudiantes son:.\r\nJULIANA RODRIGUEZ CARVAJAL                   CC: 1113697879  AE109C\r\nJHON EIDER GIRALDO CARDONA                  CC: 1113679548  AE109C\r\nCAROLINA GONZALEZ OLAYA                         CC: 1143879597  AE109C\r\nKEVIN ALEJANDRO VALENCIA ALVAREZ       CC: 1107517849  AE109C\r\nNATHALY DORADO COMETA                           CC: 1130599150  AE92C\r\nLAURA MARCELA GUTIERREZ CAICEDO      CC: 1144072794  AE111C\r\nELIANA CAROLINA GARCIA SANCLEMENTE  CC: 1234196479 AE107C\r\n', '2', 'Aprobacion', '2018-07-10', '2018-12-08', 'la novedad se da por que el procedimiento de solicitud de ARL se estaba llevando a cabo dos veces por semana por lo cual desencadenó desorden al momento de generar las solicitudes ya que los estudiantes normalmente no estaban al día, ni con la documentación ni financieramente., entonces la fechas para pedir las ARL no coincidian con las del procedimiento por esta razón se le consulta al ingeniero fabián el cual autorizo que se realizara por lote (grupo) y que pasado cierto tiempo se revise de nuevo para validar al final quienes fueron a las prácticas y realizar es respectivo retiro de afiliación, este evento ocurre entre los meses de enero y febrero la cual seguí realizando el procedimiento por ser muy efectivo y práctico donde logre tener control en la entrega de las ARL.,yo continúe trabajando de esta manera a pesar que la instrucción del ingeniero fue solo para el evento anterior descrito,.Dada la recomendación volví a tomar el procedimiento de afiliación tal cual como esta descrito', 'fmeza', '', 'se creo un procedimiento para  dar orden a la elaboracion delas cartas', '2018-07-17', 0),
(68, 'DD', 3, 73, 'La ARL del estudiante x al momento de realizar la verificación para proceso de paz y salvo de identifica que la ARL no cuenta con el numero de identificación correcto.', '1', 'Aprobacion', '2018-08-27', '2018-12-08', 'la secretaria en su respuesta refiere desconocimiento del proceso academico por el cual se realizan las cartas de  vinculacion', 'mlemos', '', 'se creo un procedimiento para  dar orden a la elaboracion delas cartas', '2018-12-08', 1),
(69, 'DD', 3, 19, 'El día 28 de agosto la secretaria académica Lina de Palmira, genera una carta de vinculación a práctica empresarial de la estudiante KELLY MARCELA ARANGO MOSQUERA  del grupo AE 100 dirigida al colegio LICEO QUIAL en PANCE (Cali) el cual esta carta presenta inconsistencias (ESTA DIRIGIDA A DOS EMPRESAS) y la firma del subdirector no es original, pues la empresa me informa vía telefónica la molestia por la inconsistencia y mal diligenciamiento del documento para proceso de contratación.', '1', 'Aprobacion', '2018-08-28', '2018-12-08', '.............................', 'mlemos', '', 'se creo un procedimiento para  dar orden a la elaboracion delas cartas', '2018-12-08', 10),
(70, 'DD', 3, 19, 'de manera verbal solicite a la secretaria académica de la sede palmira con urgencias la hoja de vida de la estudiante daniela saavedra del grupo 91 quien debe ser enviada a practicas a ginebra el cual el proceso viene atrasado hace varios días  a la fecha no ha llegado la hoja de vida  a promotor de egresados, estudiante ya tiene cupo asignado en el hospital, generando inconformidad al padre de familia y a la estudiante en la demora', '1', 'Aprobacion', '2018-08-28', '2018-12-08', 'las secretaria  academica refiere que que desconce el proceso', 'descobar', '', 'se creo un procedimiento para dar orden a la elaboracion de las cartas y un plan de entrenamiento mas eficaz y efectivo', '2018-12-08', 11),
(71, 'DD', 3, 73, 'Se presenta la no conformidad a la compañera lina, por realizar las cartas de vinculación de práctica empresarial del programa Técnico Laboral en Salud Oral  de forma inadecuada y suministrando información incompleta a esta\r\nLa información que está utilizando en la carta de vinculación a práctica empresarial, es el modelo docencia y servicio (practica 1 y 2 presentación de grupo).\r\nEn repetidas ocasiones se le ha manifestado, cuales son las cartas y la información anexada que debe de utilizar para cada proceso, ya que esto conlleva a colocar en riesgo la devolución del estudiante del sitio de práctica, envío de información incompleta del estudiante de su tipo de práctica y la mala imagen al instituto por falta de orden.\r\n', '1', 'Aprobacion', '2018-09-24', '2018-12-08', 'la secretaria refiere desconocimiento del proceso  por el cual se realiazan las cartas', 'mlemos', '', 'se creo un procedimiento para dar orden a la elaboracion de las cartas y un plan de entrenamiento mas eficaz y efectivo', '2018-12-08', 12),
(72, 'DD', 3, 73, 'Se solicito a la compañera LINA, 3 cartas de vinculación a practica empresarial de los siguientes estudiantes:  ANDREA KATHERINE BUESAQUILLO TULCAN\r\nMARIA ISABE RESTTUCCI RINCON L\r\nLESLY YURANY RIOS CAMPO \r\ndel grupo SALUD ORAL  80 y se encontró que las cartas tienen irregularidades en la información anexada y la firma digital antigua y sin autorización del INGENIERO FABIAN. esta información de las firmas digitales las corrobore con el, también se encuentra que estos estudiantes están en la modalidad de PASANTE y aparecen como aprendiz, el numero del decreto (4904) no es el correcto, el correcto es 1075.', '1', 'Aprobacion', '2018-09-26', '2018-12-08', 'la secretaria refiere desconocimiento del proceso  por el cual se realiazan las cartas', 'mlemos', '', 'se creo un procedimiento para dar orden a la elaboracion de las cartas y un plan de entrenamiento mas eficaz y efectivo', '2018-12-08', 13),
(73, 'GR', 14, 61, 'El dia 27 en la sala de sistemas en el tercer piso en la sede cali, una de las estudiantes conecto su cargador del teléfono movil para cargarlo, al momento de desconectarlo, los contactos del cargador quedaron expuesto, un estudiante trato de retirarlos sin autorizacion y casi sufre daño y ocasiona un corto.  Favor proceder para retirar estos elementos del tomacorriente para evitar accidentes que puedan ser fatales.  Muchas gracias.\r\n\r\nAtentamente,\r\n\r\nJuan J. Arroyave.\r\nAsesor Educativo ', '2', 'Aprobacion', '2018-10-27', '2018-12-08', 'la secretaria refiere desconocimiento del proceso  por el cual se realiazan las cartas', 'jarroyave', '', 'se genera la solitud al encargado de mantenimiento de la infraestrutura y se realizo el debido ajuste a las instalaciones de  la sala de sistemas', '2018-12-08', 0),
(74, 'DD', 7, 73, 'El día 24 de mayo realizando la revisión periódica de la cartera encontramos estudiantes egresados del grupo 107c, los cuales ya obtuvieron el diploma, los cuales no se les ha hecho el tramite de cambio de estado. ', '2', 'Aprobacion', '2019-05-24', '2019-05-28', 'En ese momento no se habia actualizado la base da datos del egresado y no se contaba con un plan de ejecucion para realizarlo. a la fecha la base de datos se encuentra actualizada.', 'scorrea', '', 'Se evidencia que se esta realizando revisiones periodicas por la secretaria academica en las diferentes sedes para los cambios de estado.', '2019-05-24', 1),
(75, 'DD', 7, 77, 'Se identifico que el estudiante MORA LUCUARA VALENTINA del grupo 120c del programa AE  en el registro de la ARL no contaba con el numero correcto, esto se logro evidenciar durante el proceso de elaboración del paz y salvo', '1', 'Aprobacion', '2019-04-12', '2019-05-09', 'Esto sucedio debido a que al momento de mandar la lista a la ARL no se reviso que tenia un numero de mas.', 'jfinanciero', '', 'Se realizo la novedad a la ARL, quien realizo el ajuste sin novedad.', '2019-04-13', 0),
(76, 'GR', 15, 82, 'Baranda floja ubicada en la parte de la escalera de ingreso y salida de la sede palmira', '1', 'Aprobacion', '2019-04-19', '2019-05-17', 'se revisa la baranda y se evidencia la fragilidad que esta presenta y se informa al encargado de infraestructura para que se haga el debido mantenimiento de la baranda se espera que antes de terminar el mes y que se haya  instalado una que cumpla con las especificaciones  de seguridad', 'Lguzman', '', 'Se evidencia que la baranda fue asegurada y mejorada para uso de la comunidad.\r\n', '2019-04-20', 0),
(77, 'GR', 9, 66, 'Desprendimiento del mueble en la entrada al instituto recepción donde tiene un vidrio que en el momento de una caída puede causar un accidente. ', '1', 'Aprobacion', '2019-07-13', '2019-07-17', 'se genera la solicitud de mantenimiento/ inspeccion de seguridad.', 'mzuleta', '', 'Se realizo la inspeccion de segurida y se determina como plan de accion', '2019-07-15', 0),
(78, 'GR', 15, 83, 'En la puerta de acceso a la zona libre junto a la reja no hay desmarcacion que muestre o identifique el desnivel que tiene.', '1', 'Aprobacion', '2019-05-09', '2019-06-21', 'Se revisa y efectivamente se requiere demarcación, se considera necesario revisar si se requiere alguna otra para realizar la actividad de manera general.', 'kramirez', '', 'e realizo en la  diferentes partes de la institución que requerían desmarcacion satisfactoriamente. ', '2019-05-13', 0),
(79, 'CE', 9, 53, 'baranda de escalera floja ', '1', 'Revisión', '2019-09-17', NULL, 'Se evidencia aflojamiento en un punto de la base de la baranda de la escalera verde. Baranda de recepción.\r\nSe realizara una solicitud de mantenimiento a dirección con copia a financiero.', 'Lguzman', '', '', '2019-09-25', 0),
(80, 'CE', 9, 50, 'escritorio con una pata floja en el salon de pertinencia', '1', 'Aprobacion', '2019-09-17', '2019-09-25', 'Se evidenció que en el salón pertinencia el escritorio docente tenia un lateral flojo por desprendimiento de soldadura.\r\nSe solicitara cambio de mobiliario \r\n\r\n', 'Lguzman', '', 'Se evidencia el cambio a un mobiliario seguro, para el desarrollo de sus actividades.', '2019-09-25', 0),
(81, 'CE', 9, 26, 'La señora Ceneida Meneses de APOYO LOGÍSTICO el día 27 de septiembre, siendo las 13 horas con 30 minutos al momento de realizar el aseo del salón de ORDEN, estaba realizando el   desbasurado de las sextas de color verde las cuales son de residuos ordinarios, en la cual al momento de vaciar dichos residuos y realizar el proceso de reciclaje justo en ese momento introduce la mano con el guante en el cual se le introduce una aguja de 20 de (jeringa) la cual perfora el guante del dedo indice de la mano derecha ocasionando dicho incidente. Dicho residuos debían ser custodiados en el guardián por direccionamiento del jefe  que se encontraba realizando dichas practicas Laura Jaramillo.  ', '1', 'Aprobacion', '2019-10-01', '2019-10-07', 'Es de aclarar del evento que no generó penetración de material cortopunzante en la piel. Sede Palmira.', 'lguzman', '', 'Se valida que se realizó en septiembre 30 2019 una capacitación al grupo con los temas sobre manejo y desechos con énfasis en cortopunzantes, riesgo biológico y protocolo de accidente por riesgo biológico. ademas de enfasis en SG SST, politicas, plan de emergencias entre otros', '2019-10-05', 0),
(82, 'DD', 16, 19, 'Los docentes no reportan la inasistencia de los estudiantes, por ejemplo la estudiante PAOLA ANDREA CABALLERO GALARZA Codigo 190118086 solo asistio 3 dias y hay reporte de inasistencia hasta la el reporte de la desercion.', '1', 'Revisión', '2019-10-08', NULL, 'de acuerdo a la nuevo perfil, el proceso académico debe informar los ausentismo de los estudiantes, docentes por lo cual se realizara una capacitación a los docentes en conjunto con al proceso de gestión de la comunidad educativa, sobre el ingreso de las inasistencia y el reporte hacia la coordinación académica', 'scorrea', '', '', '2019-10-08', 1),
(83, 'DD', 16, 20, 'En un cato inseguro al correr el ventilador introduje el dedo medio en el ventilador , produciendo aplastamiento del dedo, ocasionando baja perfusion , dolr y adormeciendo del mismo , NO herida  ', '1', 'En Tramite', '2019-12-14', NULL, NULL, 'lcaicedo', '', '', '0000-00-00', 0),
(84, 'DD', 1, 34, 'En la inspección realizada el día de hoy en la sede Palmira, se evidencio en la unidad de administración de medicamentos que el equipo de venoclisis tenia una aguja conectada fijada con el capuchón en el buretrol. Previamente en la practica estuvo la jefe Julieth Jaramillo.', '1', 'En Tramite', '2020-09-28', NULL, NULL, 'kramirez', '', '', '0000-00-00', 0),
(85, 'DD', 1, 21, 'En la inspección de elementos de protección personal, se evidencio a la jefe Julieth Jaramillo sin uso de careta facial y con tapabocas sin las características de los N95 recomendados', '1', 'En Tramite', '2020-09-28', NULL, NULL, 'kramirez', '', '', '0000-00-00', 0);

-- --------------------------------------------------------

--
-- Table structure for table `users`
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
  `colegios` varchar(100) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `activo` int(11) NOT NULL,
  `created` date NOT NULL,
  `modified` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `nombres`, `apellidos`, `identificacion`, `role_id`, `cargo_id`, `colegio_id`, `squema_id`, `colegios`, `email`, `username`, `password`, `activo`, `created`, `modified`) VALUES
(1, 'DIEGO', 'BONILLA', 16648857, 2, 13, 13, 6, NULL, 'd.diego.bonilla@laanunciacioncali.edu.co', 'dbonilla', '$2a$10$hMlaWPud6hw/eVaegRC.eOTVmd2AnymrAuxNKty4ui1PJDeOfDNj6', 1, '2021-05-12', '2022-05-06'),
(2, 'ENEYDA', 'BALLESTEROS MADARIAGA', 32442847, 2, 13, 13, 6, NULL, 'd.htaeneyda.ballesteros@laanunciacioncali.edu.co', 'eballesteros', '$2a$10$hMlaWPud6hw/eVaegRC.eOTVmd2AnymrAuxNKty4ui1PJDeOfDNj6', 1, '2021-05-12', '2022-05-06'),
(3, 'EDITH MARGOTH', 'VALLEJOS ZUÑIGA', 36862296, 2, 3, 13, 6, NULL, 'talento@laanunciacioncali.edu.co', 'Evallejos', '$2a$10$9OvwiAzyT.jkg8r5NrhxvuH6wITVJ.MgR6MklwJ3XJb4u9TmGu0Hu', 0, '2021-05-12', '2022-05-06'),
(4, 'SANDRA MILENA ', 'SANCHEZ GONZALEZ', 38642569, 2, 13, 13, 6, NULL, 'd.sandra.sanchez@laanunciacioncali.edu.co', 'ssanchez', '$2a$10$hMlaWPud6hw/eVaegRC.eOTVmd2AnymrAuxNKty4ui1PJDeOfDNj6', 1, '2021-05-12', '2022-05-06'),
(5, 'NOHORA ELENA', 'RODRIGUEZ ANGEL', 31999639, 2, 13, 13, 6, NULL, 'd.nohora.rodriguez@laanunciacioncali.edu.co', 'nrodriguez', '$2a$10$hMlaWPud6hw/eVaegRC.eOTVmd2AnymrAuxNKty4ui1PJDeOfDNj6', 1, '2021-05-12', '2022-05-06'),
(6, 'JOSE GREGORIO', 'RENDON OROZCO', 94427640, 2, 13, 13, 6, NULL, 'd.jose.rendon@laanunciacioncali.edu.co', 'jrendon', '$2a$10$hMlaWPud6hw/eVaegRC.eOTVmd2AnymrAuxNKty4ui1PJDeOfDNj6', 1, '2021-05-12', '2022-05-06'),
(7, 'GLORIA INES', 'RAMIREZ  VELASQUEZ', 42068864, 2, 8, 13, 6, NULL, 'gloriaines@gmail.com', 'gramirez', '$2a$10$hMlaWPud6hw/eVaegRC.eOTVmd2AnymrAuxNKty4ui1PJDeOfDNj6', 1, '2021-05-12', '2022-05-06'),
(8, 'MARIS', 'QUINONES ESTUPIÑAN', 66998391, 2, 13, 13, 6, NULL, 'd.maris.quinonez@laanunciacioncali.edu.co', 'mquinones', '$2a$10$hMlaWPud6hw/eVaegRC.eOTVmd2AnymrAuxNKty4ui1PJDeOfDNj6', 1, '2021-05-12', '2022-05-06'),
(9, 'CINDI JOHANNA', 'OSPINA POSADA', 1130671743, 2, 13, 13, 6, NULL, 'd.cindy.ospina@laanunciacioncali.edu.co', 'cospina', '$2a$10$hMlaWPud6hw/eVaegRC.eOTVmd2AnymrAuxNKty4ui1PJDeOfDNj6', 1, '2021-05-12', '2022-05-06'),
(10, 'SHARON JULIANA', 'ORTIZ', 1151965759, 2, 13, 13, 6, NULL, 'd.sharon.ortiz@laanunciacioncali.edu.co', 'sortiz', '$2a$10$hMlaWPud6hw/eVaegRC.eOTVmd2AnymrAuxNKty4ui1PJDeOfDNj6', 1, '2021-05-12', '2022-05-06'),
(11, 'JUAN DANYSTER', 'MONTOYA', 1144040011, 2, 13, 13, 6, NULL, 'd.juan.montoya@laanunciacioncali.edu.co', 'jmontoya', '$2a$10$hMlaWPud6hw/eVaegRC.eOTVmd2AnymrAuxNKty4ui1PJDeOfDNj6', 1, '2021-05-12', '2022-05-06'),
(12, 'ALVARO PIO', 'MOMPOTES', 6265875, 2, 8, 13, 6, NULL, '?alvaropio2009@hotmail.com', 'amompotes', '$2a$10$hMlaWPud6hw/eVaegRC.eOTVmd2AnymrAuxNKty4ui1PJDeOfDNj6', 1, '2021-05-12', '2022-05-06'),
(13, 'ANGELICA MARIA', 'LUGO CARDONA', 1143837717, 2, 13, 13, 6, NULL, 'd.angelica.lugo@laanunciacioncali.edu.co', 'alugo', '$2a$10$hMlaWPud6hw/eVaegRC.eOTVmd2AnymrAuxNKty4ui1PJDeOfDNj6', 1, '2021-05-12', '2022-05-06'),
(14, 'BILI ALEXER', 'JALVIN YACUMAL', 1061696252, 2, 13, 13, 6, NULL, 'd.bili.jalvin@laanunciacioncali.edu.co', 'Bjalvin', '$2a$10$CT.BU4TVfX/YnQNMwizOsOyUXCrLUr3gCfbahUEscK88pnMRrPXg2', 0, '2021-05-12', '2022-05-06'),
(15, 'FLORENTINA NOEMI', 'HUAMAN LIZARME ', 289724, 2, 13, 13, 6, NULL, 'd.noemi.huaman@laanunciacioncali.edu.co', 'fhuaman', '$2a$10$hMlaWPud6hw/eVaegRC.eOTVmd2AnymrAuxNKty4ui1PJDeOfDNj6', 1, '2021-05-12', '2022-05-06'),
(16, 'MARIA ALEJANDRA', 'GUITIERREZ', 1045023387, 2, 13, 13, 6, NULL, 'd.maria.gutierrez@laanunciacioncali.edu.co', 'mguitierrez', '$2a$10$hMlaWPud6hw/eVaegRC.eOTVmd2AnymrAuxNKty4ui1PJDeOfDNj6', 1, '2021-05-12', '2022-05-06'),
(17, 'ZURI YULIANA', 'GRAJALES  SANCHEZ', 1130645299, 2, 8, 13, 6, NULL, 'zurygrajales1985@gmail.com', 'zgrajales', '$2a$10$hMlaWPud6hw/eVaegRC.eOTVmd2AnymrAuxNKty4ui1PJDeOfDNj6', 1, '2021-05-12', '2022-05-06'),
(18, 'DANIEL FELIPE', 'GIRALDO ACOSTA', 1144075782, 2, 13, 13, 6, NULL, 'd.daniel.giraldo@laanunciacioncali.edu.co', 'dgiraldo', '$2a$10$hMlaWPud6hw/eVaegRC.eOTVmd2AnymrAuxNKty4ui1PJDeOfDNj6', 1, '2021-05-12', '2022-05-06'),
(19, 'OLGA LUCIA', 'GARCIA LASSO', 1116433564, 2, 13, 13, 6, NULL, 'd.olga.garcia@laanunciacioncali.edu.co', 'ogarcia', '$2a$10$hMlaWPud6hw/eVaegRC.eOTVmd2AnymrAuxNKty4ui1PJDeOfDNj6', 1, '2021-05-12', '2022-05-06'),
(20, 'ELIZABETH ', 'PERILLA ORTIZ', 1143840425, 2, 10, 13, 6, NULL, 'secretaria@laanunciacioncali.edu.co', 'Eperilla', '$2a$10$QFTa5srKNJMLCxk4hAwcS.OxX2xjw415QPfv7FmHvVIhllZPwMbTi', 0, '2021-05-12', '2022-05-06'),
(21, 'ANA ISABEL', 'ESCUDERO ARENAS', 67022518, 2, 13, 13, 6, NULL, 'ana.escudero@laanunciacioncali.edu.co', 'aescudero', '$2a$10$hMlaWPud6hw/eVaegRC.eOTVmd2AnymrAuxNKty4ui1PJDeOfDNj6', 1, '2021-05-12', '2022-05-06'),
(22, 'JUAN PABLO', 'CEBALLOS NAÑEZ', 1130649212, 2, 13, 13, 6, NULL, 'juanpabloceballos17@yahoo.com', 'jceballos', '$2a$10$hMlaWPud6hw/eVaegRC.eOTVmd2AnymrAuxNKty4ui1PJDeOfDNj6', 1, '2021-05-12', '2022-05-06'),
(23, 'JUAN FERNANDO', 'CASANOVA RUCO', 16796432, 2, 13, 13, 6, NULL, 'd.juan.casanova@laanunciacioncali.edu.co', 'jcasanova', '$2a$10$hMlaWPud6hw/eVaegRC.eOTVmd2AnymrAuxNKty4ui1PJDeOfDNj6', 1, '2021-05-12', '2022-05-06'),
(24, 'LAURA STEFANIA', 'CARDONA', 1144067672, 2, 13, 13, 6, NULL, 'd.laura.cardona@laanunciacioncali.edu.co', 'lcardona', '$2a$10$hMlaWPud6hw/eVaegRC.eOTVmd2AnymrAuxNKty4ui1PJDeOfDNj6', 1, '2021-05-12', '2022-05-06'),
(25, 'ANGIE VANESSA', 'CAICEDO MORA', 1143824521, 2, 13, 13, 6, NULL, 'd.angie.caicedo@laanunciacioncali.edu.co', 'acaicedo', '$2a$10$hMlaWPud6hw/eVaegRC.eOTVmd2AnymrAuxNKty4ui1PJDeOfDNj6', 1, '2021-05-12', '2022-05-06'),
(190, 'carrucel', 'carrucel', 23123, 4, 0, NULL, 5, '13', 'korikenti2@gmail.com', 'carrucel', '$2a$10$wsBnCbH5uAkxkSLHpcQM4OOKZAfgOvA0s9Bz0DZQ7EKZHd3bJGpGq', 1, '0000-00-00', '0000-00-00'),
(194, 'Luz Alba ', 'Giraldo Patiño', 24867763, 2, 16, 13, 6, NULL, 'cartera@laanunciacioncali.edu.co', 'lgiraldo', '$2a$10$qnM8ZROBiIv8ySfZ7rSns.Md9YASy3AbwWY8Ned9cBK0mJ7Gn2RgS', 0, '0000-00-00', '2022-05-06'),
(195, 'Laura Ines', 'Mena Jacome', 242397, 1, 1, 13, 6, NULL, 'rectorianunciacion@gmail.com', 'Lmena', '$2a$10$2jn0UK3.gyX3F7r8NCxgvOwzkFhwk0zEKcexvNx9QiM1Ps6JaxOa2', 0, '2021-05-12', '2022-05-06'),
(196, 'William  Alfredo ', 'Ceron Chates ', 94410555, 2, 13, 13, 6, NULL, 'd.william.ceron@laanunciacioncali.edu.co', 'Wceron', '$2a$10$GYsQh0WA.kCLzDiJHWfpbOH.SAKgLiao9ZReWO9XMfWqyJkEYy2ce', 0, '0000-00-00', '2022-05-06'),
(197, 'Shirley Offir ', 'Ararat', 66879419, 2, 13, 13, 6, NULL, 'shofarvi07@gmail.com', 'sararat', '$2a$10$hMlaWPud6hw/eVaegRC.eOTVmd2AnymrAuxNKty4ui1PJDeOfDNj6', 1, '0000-00-00', '2022-05-06'),
(198, 'Noralba ', 'Fajardo Viafara', 26789901, 2, 13, 13, 6, NULL, 'secretariaconsac@gmail.com', 'Noralba', '$2a$10$hMlaWPud6hw/eVaegRC.eOTVmd2AnymrAuxNKty4ui1PJDeOfDNj6', 1, '0000-00-00', '2022-05-06'),
(199, 'Gilma ', 'Bravo', 26789902, 2, 13, 13, 6, NULL, 'consacweb@gmail.com', 'cartera', '$2a$10$hMlaWPud6hw/eVaegRC.eOTVmd2AnymrAuxNKty4ui1PJDeOfDNj6', 1, '0000-00-00', '2022-05-06'),
(200, 'Katherine ', ' Buitron', 26789903, 2, 13, 13, 6, NULL, 'consacweb@gmail.com', 'contabilidad', '$2a$10$hMlaWPud6hw/eVaegRC.eOTVmd2AnymrAuxNKty4ui1PJDeOfDNj6', 1, '0000-00-00', '2022-05-06'),
(201, 'Johanna Isabel ', 'Rios Tenorio', 66659047, 2, 9, 13, 6, NULL, 'academico@laanunciacioncali.edu.co', 'jrios', '$2a$10$5qIeKiJXadq0rRUCNn3Pgupkh1WgbtvO.StCy77xFToRoXWt3c39O', 0, '0000-00-00', '2022-05-11'),
(211, 'Diego Alberto ', 'Arias', 94430892, 2, 0, 13, 6, NULL, 'diduar1@hotmail.com', 'darias', '$2a$10$hMlaWPud6hw/eVaegRC.eOTVmd2AnymrAuxNKty4ui1PJDeOfDNj6', 1, '0000-00-00', '2022-05-06'),
(213, 'Leyka Magrith', 'Fernandez', 31977177, 2, 13, 13, 6, NULL, 'leykapachis@hotmail.com', 'l', '$2a$10$UZeA79cGm9zalXd4/8gtqe.4pZYyClajHf6lnGMbXOk0WQ92N2EEW', 1, '0000-00-00', '2022-05-06'),
(215, ' Doris Aline ', 'Lopez', 30721193, 2, 0, 13, 6, NULL, 'htaline.25@gmail.com', 'dalopez', '$2a$10$hMlaWPud6hw/eVaegRC.eOTVmd2AnymrAuxNKty4ui1PJDeOfDNj6', 1, '0000-00-00', '2022-05-06'),
(230, 'Ana Bella ', 'Lopez Caceres', 31903267, 2, 0, 13, 6, NULL, 'secretariaconsac@gmail.com', 'ablopez', '$2a$10$hMlaWPud6hw/eVaegRC.eOTVmd2AnymrAuxNKty4ui1PJDeOfDNj6', 1, '0000-00-00', '2022-05-06'),
(231, 'maria eugenia', 'Gaona Alvear', 31988678, 2, 13, 13, 6, NULL, 'anunciaciondocumental@gmail.com', 'ngaona', '$2a$10$hMlaWPud6hw/eVaegRC.eOTVmd2AnymrAuxNKty4ui1PJDeOfDNj6', 1, '0000-00-00', '2022-04-19'),
(232, 'Lewis Sammy ', 'Sinisterra Garces', 1107040548, 2, 4, 13, 6, NULL, 'contabilidad@laanunciacioncali.edu.co', 'Lgarces', '$2a$10$hnJ0bb3S2DZXKJg9LFLQfO3jowrDIGIHJs7vi01M6zgqOuMVmDbdS', 0, '0000-00-00', '2022-05-06'),
(233, 'BARBARA ', 'ALBARRACIN CELY', 23588191, 2, 13, 13, 6, NULL, 'barbaradejesus.albarracin@gmail.com', 'bcely', '$2a$10$hMlaWPud6hw/eVaegRC.eOTVmd2AnymrAuxNKty4ui1PJDeOfDNj6', 1, '0000-00-00', '2022-05-06'),
(234, 'MAURICIO', 'CALDERON', 94544482, 2, 0, 13, 6, NULL, 'sistemasconsac@gmail.com', 'Mcalderon', '$2a$10$hMlaWPud6hw/eVaegRC.eOTVmd2AnymrAuxNKty4ui1PJDeOfDNj6', 1, '0000-00-00', '2022-05-06'),
(236, 'Dora Melfy ', 'Serna Orejuela', 66853031, 2, 14, 13, 6, NULL, 'psicologia@laanunciacioncali.edu.co', 'Dserna', '$2a$10$HgHOK2/86zShxcVZngNErOf8SeRVkVPEW2ahxIKom3W6oPxFlnq0i', 0, '0000-00-00', '2022-05-06'),
(247, '14696620', '14696620', 14696620, 4, 0, NULL, NULL, NULL, 'korikenti2@gmail.com', '14696620', '$2a$10$hieyG/ueInqVB7e.K/K9AuWVJ2JXnPMf.X1LsbnhGiAQUSNtxZhYm', 0, '0000-00-00', '0000-00-00'),
(248, 'FABIAN', 'MEZA', 78945625, 4, 0, NULL, NULL, NULL, 'asesorsgci@gmail.com', 'user', '$2a$10$nEh2mDVMXSL7rWGSwyWuS.Ch8XHFV/2aINpsStYL4io/yVUvhYCZ.', 1, '0000-00-00', '0000-00-00'),
(249, 'CRISTIAN CAMILO', 'HIDALGO NIEVA', 1130600410, 2, 13, 13, 6, NULL, 'cristianh@gmail.com', 'chidalgo', '$2a$10$hMlaWPud6hw/eVaegRC.eOTVmd2AnymrAuxNKty4ui1PJDeOfDNj6', 1, '0000-00-00', '2022-05-06'),
(250, 'politecnico', 'politecnico', 2356, 1, 0, 14, 7, NULL, 'firmacalidadsg1@gmail.com', 'politecnico', '$2a$10$nEh2mDVMXSL7rWGSwyWuS.Ch8XHFV/2aINpsStYL4io/yVUvhYCZ.', 0, '2021-05-12', '0000-00-00'),
(251, 'Carolina', 'Duarte Vanegas', 31480460, 2, 24, 14, 7, NULL, 'direccion.comunidad@pio.edu.co', 'cduarte', '$2a$10$nEh2mDVMXSL7rWGSwyWuS.Ch8XHFV/2aINpsStYL4io/yVUvhYCZ.', 0, '2021-05-12', '2021-10-05'),
(252, 'Alexander Garzon', 'Garzon', 18610487, 2, 25, 14, 7, NULL, 'politecnico.internacional.o@gmail.com', 'agarzon', '$2a$10$aCGYkOQKboisORyXCWpbPeFhUvAbfC/JDSwQTgsIfyZlcvRyX7gAu', 0, '2021-05-12', '2022-03-17'),
(253, 'Julian David', 'Saavedra Vanegas ', 1130634238, 2, 2, 14, 7, NULL, 'comercialpiosas@gmail.com', 'jsaavedra', '$2a$10$nEh2mDVMXSL7rWGSwyWuS.Ch8XHFV/2aINpsStYL4io/yVUvhYCZ.', 1, '2021-05-12', '2021-10-05'),
(254, 'Matha', 'Trujillo Jimenez', 38556670, 2, 9, 14, 7, NULL, 'admitivo.poli.2017@gmail.com', 'mtrujillo', '$2a$10$nEh2mDVMXSL7rWGSwyWuS.Ch8XHFV/2aINpsStYL4io/yVUvhYCZ.', 1, '2021-05-12', '2021-10-05'),
(255, 'David', 'Arias Restrepo', 1143824403, 2, 11, 14, 7, NULL, 'david.arias@misena.edu.co', 'drestrepo', '$2a$10$nEh2mDVMXSL7rWGSwyWuS.Ch8XHFV/2aINpsStYL4io/yVUvhYCZ.', 0, '2021-05-12', '2021-10-05'),
(256, 'Blanca Ruth', 'Rivera Gomez', 31961489, 2, 9, 14, 7, NULL, 'politecnico.inter.occidente@gmail.com', 'brivera', '$2a$10$nEh2mDVMXSL7rWGSwyWuS.Ch8XHFV/2aINpsStYL4io/yVUvhYCZ.', 1, '2021-05-12', '2021-10-05'),
(257, 'Jhon Mauricio', 'Guerrero Soto', 94411642, 2, 1, 14, 7, NULL, 'jhonma1@yahoo.com', 'jhonmag', '$2a$10$nEh2mDVMXSL7rWGSwyWuS.Ch8XHFV/2aINpsStYL4io/yVUvhYCZ.', 0, '2021-05-12', '2021-10-05'),
(258, 'Fabiola', 'Guzman', 29678853, 2, 7, 14, 7, NULL, 'fabiola_maria_g@hotmail.com', 'fguzman', '$2a$10$nEh2mDVMXSL7rWGSwyWuS.Ch8XHFV/2aINpsStYL4io/yVUvhYCZ.', 0, '2021-05-12', '2021-10-05'),
(259, 'Nestor Fabian', 'Higuita Gaviria', 1151950191, 2, 9, 14, 7, NULL, 'asesorpio03@gmail.com', 'nhiguita', '$2a$10$nEh2mDVMXSL7rWGSwyWuS.Ch8XHFV/2aINpsStYL4io/yVUvhYCZ.', 1, '2021-05-12', '2021-10-05'),
(260, 'Jose Javier', 'Bedoya', 146050127, 2, 9, 14, 7, NULL, 'politecnico.occidente.jose@gmail.com', 'jbedoya', '$2a$10$nEh2mDVMXSL7rWGSwyWuS.Ch8XHFV/2aINpsStYL4io/yVUvhYCZ.', 1, '2021-05-12', '2021-10-05'),
(261, 'Carolina', 'Mayor Sandoval', 27662791, 2, 26, 14, 7, NULL, 'caromas79@hotmail.com', 'cmayor', '$2a$10$zlzIyLij3vpMGrBPBRSMF.SS6HAX4N/7MKMb9WtV/1g8j3o88IO7a', 0, '2021-05-12', '2021-10-05'),
(262, 'Lina Maria', 'Restrepo', 40332532, 2, 9, 14, 7, NULL, 'linaresteban877@hotmail.es', 'lrestrepo', '$2a$10$nEh2mDVMXSL7rWGSwyWuS.Ch8XHFV/2aINpsStYL4io/yVUvhYCZ.', 1, '2021-05-12', '2021-10-05'),
(263, 'Mayra Alejandra', 'Yule Vallejo', 1118298515, 2, 8, 14, 7, NULL, 'mayrayule@hotmail.com', 'myule', '$2a$10$nEh2mDVMXSL7rWGSwyWuS.Ch8XHFV/2aINpsStYL4io/yVUvhYCZ.', 0, '2021-05-12', '2021-10-05'),
(264, 'Katherine', 'Ramirez Arias', 113637538, 4, 15, NULL, NULL, NULL, 'enirehtak@hotmail.com', 'kramirez', '$2a$10$nEh2mDVMXSL7rWGSwyWuS.Ch8XHFV/2aINpsStYL4io/yVUvhYCZ.', 0, '2021-05-12', '0000-00-00'),
(265, 'Diana Carolina', 'Daza Zambrano', 67030735, 2, 12, 14, 7, NULL, 'gaby_osorio01@hotmail.com', 'ddaza', '$2a$10$nEh2mDVMXSL7rWGSwyWuS.Ch8XHFV/2aINpsStYL4io/yVUvhYCZ.', 0, '2021-05-12', '2021-10-05'),
(266, 'Luz Nelly', 'Popayan Orlas', 34566905, 2, 9, 14, 7, NULL, 'luznelly881@gmail.com', 'lpopayan', '$2a$10$MlelyyeUFpgsfiu5PMUbveZhP3jTVmFMrLwy5WBaCa0y..B8YnspS', 0, '2021-05-12', '2021-10-05'),
(267, 'Dayana Yulieth', 'Bautista Talaga', 1144186588, 2, 9, 14, 7, NULL, 'angelapericor@gmail.com', 'dbautista', '$2a$10$nEh2mDVMXSL7rWGSwyWuS.Ch8XHFV/2aINpsStYL4io/yVUvhYCZ.', 1, '2021-05-12', '2021-10-05'),
(268, 'Angela Patricia', 'Perico Rodriguez', 38793339, 2, 9, 14, 7, NULL, 'angelapericor@gmail.com', 'aperico', '$2a$10$nEh2mDVMXSL7rWGSwyWuS.Ch8XHFV/2aINpsStYL4io/yVUvhYCZ.', 1, '2021-05-12', '2021-10-05'),
(269, 'Paubla Andrea', 'Lucumi Mosquera', 1107073448, 2, 11, 14, 7, NULL, 'palucumim@gmail.com', 'plucumi', '$2a$10$nEh2mDVMXSL7rWGSwyWuS.Ch8XHFV/2aINpsStYL4io/yVUvhYCZ.', 0, '2021-05-12', '2021-10-05'),
(270, 'LINA', '	CORTES	HOLGUIN', 38460883, 2, 9, 14, 7, NULL, 'linacortes81@yahoo.com', 'lcortes', '$2a$10$nEh2mDVMXSL7rWGSwyWuS.Ch8XHFV/2aINpsStYL4io/yVUvhYCZ.', 1, '2021-05-12', '2021-10-05'),
(271, 'ENITH', 'AGUDELO 	POZO', 34516285, 2, 11, 14, 7, NULL, 'eagudelopozo@gmail.com', 'eagudelo', '$2a$10$nEh2mDVMXSL7rWGSwyWuS.Ch8XHFV/2aINpsStYL4io/yVUvhYCZ.', 0, '2021-05-12', '2021-10-05'),
(272, 'Katherine 	Andrea', 'Damian Aldana', 1144026906, 2, 11, 14, 7, NULL, 'instructor.contable@pio.edu.co', 'kdamian', '$2a$10$nEh2mDVMXSL7rWGSwyWuS.Ch8XHFV/2aINpsStYL4io/yVUvhYCZ.', 0, '2021-05-12', '2021-10-05'),
(273, 'ANA 	MRIA', ' MONTALVO CASTANEA', 1107059512, 2, 6, 14, 7, NULL, 'anamariamontalvo0119@gmail.com', 'amontalvo', '$2a$10$nEh2mDVMXSL7rWGSwyWuS.Ch8XHFV/2aINpsStYL4io/yVUvhYCZ.', 0, '2021-05-12', '2021-10-05'),
(274, 'Monica', 'paz', 25273338, 2, 9, 14, 7, NULL, 'coordinacion@pio.edu.co', 'monica', '$2a$10$nEh2mDVMXSL7rWGSwyWuS.Ch8XHFV/2aINpsStYL4io/yVUvhYCZ.', 1, '2021-05-12', '2021-10-05'),
(275, 'Yuliana', 'Agudelo Jimenez', 29568415, 2, 12, 14, 7, NULL, 'secretaria.academica@pio.edu.co', 'yagudelo', '$2a$10$nEh2mDVMXSL7rWGSwyWuS.Ch8XHFV/2aINpsStYL4io/yVUvhYCZ.', 0, '2021-05-12', '2021-10-05'),
(276, 'Luis Felipe', 'Casamachin', 1151968651, 2, 9, 14, 7, NULL, 'asistencia.cartera@pio.edu.co', 'lfelipe', '$2a$10$vxn1IUcB1yc.nmYhdhJARuAImbKaN0joJBhOQorNMv0isIB2O/CJa', 0, '2021-05-12', '2021-10-19'),
(277, 'Enmanuel', 'Varona', 1144192173, 2, 13, 14, 7, NULL, 'ehnma@hotmail.com', 'evarona', '$2a$10$nEh2mDVMXSL7rWGSwyWuS.Ch8XHFV/2aINpsStYL4io/yVUvhYCZ.', 1, '2021-05-12', '2021-10-05'),
(279, 'LINA', 'MORENO', 67027229, 2, 16, 15, 8, NULL, 'linamariam8@gmail.com', 'lmoreno', '$2a$10$Dd1vAg.fAXcDz8leEb5xjuycq/so4ZihBcSMz8yzzo26F0q2ozKJ2', 0, '2021-05-12', '2021-05-14'),
(280, 'YAMILETH', 'ARIAS VELASQUEZ', 66841273, 2, 1, 15, 8, NULL, 'aficenter.yav@gmail.com', 'yarias', '$2a$10$v10szgrdWLcC38G0Juf8QeAWOf/OjhmTGOQrGZUfRGMAkuuhkKY4O', 0, '2021-05-12', '2022-04-19'),
(281, 'WILMER ', 'GIRON MENESES', 94061513, 2, 8, 15, 8, NULL, 'wilmergiron.aficenter@gmail.com', 'wgiron', '$2a$10$nzrSh0Nlfp7SHkN7BXmjTu/sj9XcQaiyySfR9tlhk.Hffu4KaH7MS', 0, '2021-05-12', '2022-06-14'),
(283, 'DANIELA', 'VIVAS', 1193523216, 2, 17, 15, 8, NULL, 'danielavivas.aficenter@gmail.com', 'dvivas', '$2a$10$cdbH.rQbl4J9GOLrtiaiX.tuRFIe9LMofNydpD2eDE6PKlrcVvQeO', 0, '2021-05-12', '2021-05-15'),
(285, 'KAREN SAVITRI', 'MUELAS VELASCO', 1107082030, 2, 16, 15, 8, NULL, 'karen.aficenter@gmail.com', 'ksmuelas', '$2a$10$vWkXglwHPIqb1ZlTP.cgGunpAFFAdBWBbjHDZkGX67/Cs2CHUx7vu', 0, '2021-05-12', '2021-05-10'),
(286, 'YESLY VIVIANA ', 'CAMAYO GUACHETA', 1061728081, 2, 16, 15, 8, NULL, 'operaciones.aficenter@gmail.com', 'yvcamayo', '$2a$10$1TiTkIaG.VHlbONDOEpC2OgK8T5BG8HDUuAN9jh06wJoeNeqAMuzm', 1, '2021-05-12', '2021-05-10'),
(287, 'MICHAEL ALEJANDRO ', 'FALLA ARIAS', 1144173531, 2, 16, 15, 8, NULL, 'callcenter2.aficenter@gmail.com', 'mafallas', '$2a$10$vWkXglwHPIqb1ZlTP.cgGunpAFFAdBWBbjHDZkGX67/Cs2CHUx7vu', 0, '2021-05-12', '2021-05-10'),
(288, 'MARIA ANDREA ', 'GAONA GUACHETA', 1061799248, 2, 16, 15, 8, NULL, 'andreagaona.aficenter@gmail.com', 'magaona', '$2a$10$vWkXglwHPIqb1ZlTP.cgGunpAFFAdBWBbjHDZkGX67/Cs2CHUx7vu', 0, '2021-05-12', '2021-05-10'),
(289, 'DIANA MARCELA ', 'BOLIVAR MUNOZ', 1130619945, 2, 7, 15, 8, NULL, 'gestorfacturacion.aficenter@gmail.com', 'dmbolivar', '$2a$10$vWkXglwHPIqb1ZlTP.cgGunpAFFAdBWBbjHDZkGX67/Cs2CHUx7vu', 1, '2021-05-12', '2021-05-10'),
(290, 'MARIA NATHALIA ', 'MAZO', 1005867637, 2, 16, 15, 8, NULL, 'agendamiento2@aficenter.com.co', 'mnmazo', '$2a$10$HAWWRJGvSyS.dVXDtrf7webXbflvWrcONzCwuk0DGsG.xkkPcL.GG', 0, '2021-05-12', '2021-05-10'),
(291, 'FELIPE ', 'CARABALI CARABALI', 1143864305, 2, 16, 15, 8, NULL, 'felipecarabali.aficenter@gmail.com', 'fcarabali', '$2a$10$vWkXglwHPIqb1ZlTP.cgGunpAFFAdBWBbjHDZkGX67/Cs2CHUx7vu', 0, '2021-05-12', '2021-05-10'),
(292, 'JUAN CAMILO ', 'BOCANEGRA MOSQUERA', 1113541195, 2, 23, 15, 8, NULL, 'camilobocanegra.aficenter@gmail.com', 'jcbocanegra', '$2a$10$2hoOUZ74bFJcUV2NiarjYuUwDU6EvOeBfSjBQGx9Sq/z.eERmupaK', 0, '2021-05-12', '0000-00-00'),
(293, 'SANDRA MILENA ', 'CASTILLO RAMIREZ', 1143846926, 2, 16, 15, 8, NULL, 'sandracastillo.aficenter@gmail.com', 'smcastillo', '$2a$10$vWkXglwHPIqb1ZlTP.cgGunpAFFAdBWBbjHDZkGX67/Cs2CHUx7vu', 0, '2021-05-12', '2021-05-10'),
(294, 'DAYANY JULIETH ', 'DORADO ORTEGA', 1151952838, 2, 16, 15, 8, NULL, 'juliethdorado.aficenter@gmail.com', 'djdorado', '$2a$10$vWkXglwHPIqb1ZlTP.cgGunpAFFAdBWBbjHDZkGX67/Cs2CHUx7vu', 0, '2021-05-12', '2021-05-10'),
(295, 'CLAUDIA LORENA ', 'CHARRIA MANZANO', 1113516752, 2, 16, 15, 8, NULL, 'claudia.charria@gmail.com', 'clcharria', '$2a$10$vWkXglwHPIqb1ZlTP.cgGunpAFFAdBWBbjHDZkGX67/Cs2CHUx7vu', 0, '2021-05-12', '2021-05-10'),
(296, 'GISSEL DAYAN ', 'SKINNER LOPEZ', 1144100247, 2, 16, 15, 8, NULL, 'gisselskinner.aficenter@gmail.com', 'gdskinner', '$2a$10$vWkXglwHPIqb1ZlTP.cgGunpAFFAdBWBbjHDZkGX67/Cs2CHUx7vu', 0, '2021-05-12', '2021-05-10'),
(297, 'TATIANA ', 'CHAUX VALENCIA', 1130643050, 2, 16, 15, 8, NULL, 'tatianachaux.aficenter@gmail.com', 'tchaux', '$2a$10$vWkXglwHPIqb1ZlTP.cgGunpAFFAdBWBbjHDZkGX67/Cs2CHUx7vu', 0, '2021-05-12', '2021-05-10'),
(298, 'DIANA CAROLINA ', 'RIOS BOCANEGRA', 1144178400, 2, 6, 15, 8, NULL, 'dianacarolina.aficenter@gmail.com', 'dcrios', '$2a$10$vWkXglwHPIqb1ZlTP.cgGunpAFFAdBWBbjHDZkGX67/Cs2CHUx7vu', 1, '2021-05-12', '2021-05-10'),
(299, 'JUAN PABLO ', 'MARMOLEJO CUELLAR', 1144098937, 2, 13, 15, 8, NULL, 'marmoc97@gmail.com', 'jpmarmolejo', '$2a$10$46.TGLO/gp6Xmqju4qm0KOZr8Xb3Md4t3mRKon7rOgHGV8cpnUMSC', 0, '2021-05-12', '0000-00-00'),
(300, 'ISABELLA ', 'ALZATE ARIAS', 1144106068, 2, 16, 15, 8, NULL, 'isa.alzate302@hotmail.com', 'ialzate', '$2a$10$vWkXglwHPIqb1ZlTP.cgGunpAFFAdBWBbjHDZkGX67/Cs2CHUx7vu', 0, '2021-05-12', '2021-05-10'),
(301, 'GAEL ', 'CORRE ALZATE', 1144103236, 2, 7, 15, 8, NULL, 'gaelcorre.aficenter@gmail.com', 'gcorre', '$2a$10$vWkXglwHPIqb1ZlTP.cgGunpAFFAdBWBbjHDZkGX67/Cs2CHUx7vu', 1, '2021-05-12', '2021-05-10'),
(302, 'JOSE LUIS', 'MONTANO SILVA', 1143979415, 2, 18, 15, 8, NULL, 'josemontano.aficenter@gmail.com', 'jmontano', '$2a$10$nQ9L0FwZEN1vQp96hcCOB.zaPJo56kmOM.8I/YrrHGQ6zm1WsEnNC', 0, '2021-05-12', '2022-04-19'),
(303, 'JHON STEVEN ', 'MUNOZ CATANO', 1143878367, 2, 16, 15, 8, NULL, 'jhonestiven3558@gmail.com', 'jsmunoz', '$2a$10$vWkXglwHPIqb1ZlTP.cgGunpAFFAdBWBbjHDZkGX67/Cs2CHUx7vu', 0, '2021-05-12', '2021-05-10'),
(304, 'DIANA MILDRED ', 'RODRIGUEZ MARMOLEJO', 1151953869, 2, 16, 15, 8, NULL, 'dianarodriguezcs.aficenter@gmail.com', 'dmrodriguez', '$2a$10$vWkXglwHPIqb1ZlTP.cgGunpAFFAdBWBbjHDZkGX67/Cs2CHUx7vu', 1, '2021-05-12', '2021-05-10'),
(305, 'MARILUZ ', 'ANACONA NUNEZ', 38462363, 2, 16, 15, 8, NULL, 'Maryana182009@hotmail.com', 'manacona', '$2a$10$vWkXglwHPIqb1ZlTP.cgGunpAFFAdBWBbjHDZkGX67/Cs2CHUx7vu', 1, '2021-05-12', '2021-05-10'),
(306, 'FABIAN', 'MEZA', 146997911, 4, 0, NULL, NULL, NULL, 'asesorsgci@gmail.com', 'fabian', '$2a$10$IygvigMe7NJqBSdUfeBE3ejYWWy0cpkX5GmGenbGXw9fJRQa40w/i', 0, '2020-10-05', '2022-04-05'),
(307, 'KATHERINE ', 'RAMIRES', 1113637538, 4, 1, NULL, NULL, NULL, 'medico@calidadsg.com', 'kamirez', '$2a$10$nEh2mDVMXSL7rWGSwyWuS.Ch8XHFV/2aINpsStYL4io/yVUvhYCZ.', 0, '2020-10-05', '2020-10-22'),
(309, 'SANDRA', 'ARAUJO', 146997914, 2, 4, 16, 9, NULL, 'sami-178@hotmail.com', 'saraujo', '$2a$10$3zD3GajT4h4iyL/QODXp9.QVfdKvOJusgnn4Mk6N9NgVqY3g6QzXm', 0, '2020-10-06', '2020-10-28'),
(310, 'CLAUDIA', 'GARCIA', 1113672310, 2, 4, 16, 9, NULL, 'firmacalidadsg2@gmail.com', 'cgarcia88', '$2a$10$nEh2mDVMXSL7rWGSwyWuS.Ch8XHFV/2aINpsStYL4io/yVUvhYCZ.', 1, '2020-10-05', '2022-03-19'),
(311, 'Lorena milena', 'Thomas Fernandez', 57141161, 2, 14, 13, 6, NULL, 'enfermeria@laanunciacioncali.edu.co', 'Ltomas', '$2a$10$7K7XXAhQkkrMw2iRyhxNvOn.sv0R8cFmMhVYhDqEd2U9y5Ccgkt2q', 0, '2020-10-07', '2022-05-06'),
(312, 'OCTAVIO', 'ZULUAGA ALZATE', 94252980, 2, 8, 13, 6, NULL, 'octaviozuluaga96@gmail.com', 'ozuluaga', '$2a$10$hMlaWPud6hw/eVaegRC.eOTVmd2AnymrAuxNKty4ui1PJDeOfDNj6', 1, '2021-05-12', '2022-05-06'),
(314, 'Admin', 'FIRMA CALIDADSG', 901256342, 4, 1, NULL, NULL, NULL, 'firmacalidadsg@gmail.com', 'admin', '$2a$10$nEh2mDVMXSL7rWGSwyWuS.Ch8XHFV/2aINpsStYL4io/yVUvhYCZ.', 0, '0000-00-00', '0000-00-00'),
(317, 'ALEXander', 'OREJU', 78958, 2, 1, 14, 7, NULL, 'DESARROLLO@calidadsg.com', 'aorejuela10', '$2a$10$7gVQq1h3kDmHzvcg/WfyOuNiTK3KxSZ1gSSid/nkvsRjYM0O6Eb6O', 1, '2020-10-13', '2021-10-05'),
(319, 'FABIAN', 'MEZA', 14699791, 1, 21, 15, 8, NULL, 'firmacalidad1@gmail.com', 'fcalidad', '$2a$10$nEh2mDVMXSL7rWGSwyWuS.Ch8XHFV/2aINpsStYL4io/yVUvhYCZ.', 0, '2021-05-12', '2022-04-19'),
(320, 'INGRID NATHALIA ', 'RUIZ BERNAL', 1002952331, 2, 12, 14, 7, NULL, 'seguridadysalud@pio.edu.co', 'iruiz', '$2a$10$fS0jUnqPmvuc1F3Mhond9.nuM.EHnJc0/UoXSVN8C3TkCM/QNHbbq', 1, '2020-11-07', '2021-10-05'),
(321, 'MARIA ISABEL', 'DUARTE MURILLO', 1144173426, 2, 13, 14, 7, NULL, 'coordinacion.comunidad@pio.edu.co', 'mduarte', '$2a$10$o/e5CF.rB6ClzV4OdYBD4eiBSxqIgVBWbu4f9rB7L.RsB0X.vAO4u', 0, '2020-11-07', '2022-05-16'),
(326, 'MARIELLY GERLEINE', 'PINILLOS GUTIERREZ', 1130640663, 2, 11, 15, 8, NULL, 'proveedores@aficenter.com.co', 'mpinillos', '$2a$10$AM1CFvq/vz8kwzTIFwSJHeEFiotz1ua4DgQwMO556wvIMKJvfAM4.', 1, '2021-05-12', '0000-00-00'),
(327, 'ADRIANA  MARCELA', 'LOPEZ MEJIA', 27143777, 2, 16, 15, 8, NULL, 'alopez@aficenter.com.co', 'alopez', '$2a$10$gNfmetOFFhqDiH4JHwqaqeY.vBPGrBpeTZGgRNMTjGQJblIRhV.wK', 1, '2021-05-12', '2021-05-10'),
(330, 'OTONIEL', 'VELASCO', 16897982, 2, 13, 13, 6, NULL, 'otoniel.velasco@correounivalle.edu.co', 'ovelasco', '$2a$10$hMlaWPud6hw/eVaegRC.eOTVmd2AnymrAuxNKty4ui1PJDeOfDNj6', 1, '2021-05-12', '2022-05-06'),
(331, 'ARINGENIERIA', 'ARINGENIERIA', 80000, 2, 1, 17, 10, NULL, 'arfoing.civil2@hotmail.com', '80000', '$2a$10$USgTqfOUNSkT8KhgA2mt2eROgxv7ME8EcvLod5cP/DZQKu8L5w7Fy', 0, '2020-12-29', '2020-12-29'),
(332, 'ALBERTO', 'RICO FRANCO', 6265826, 2, 4, 17, 10, NULL, 'arfoing.civil@hotmail.com', 'arico', '$2a$10$zLpXGTrSSNikiPZpyPHr7eZcEdj5js5dDUb0/yg7WbgmZDtTEW2lm', 0, '2020-12-29', '2022-04-19'),
(334, 'DIANA MARCELA', 'ZAMORA RODRIGUEZ', 1143824727, 2, 7, 15, 8, NULL, 'dmzamora.aficenter@gmail.com', 'dmzamora', '$2a$10$uVQNGuVtpSQjvgkiT4er1.P8RUor3cqH3bsc2KX7IQrQej3qOncey', 1, '2021-05-12', '0000-00-00'),
(336, 'OLGA', 'CASTRO', 39532590, 4, 21, 20, 13, NULL, 'ocasrey@gmail.com', 'ocastro', '$2a$10$jQghrIrc98JvNrjitpZBm.CpnuGvnqXyn8J7fg.ZWSJgt6H43X52S', 0, '2021-05-12', '2022-05-03'),
(339, 'STEFANNY', 'ORDONEZ RUIZ', 1143984865, 2, 7, 16, 9, NULL, 'firmacalidadsg1@gmail.com', 'sordonez', '$2a$10$KjZHSfUvLJKIPoKq2fNGeeywlceMxs428.Uwo9YCWERfZv/.2Vh9y', 1, '2021-02-08', '2021-02-08'),
(340, 'ANGIE LIZETH', 'RODRIGUEZ LOPEZ', 1143856654, 2, 15, 15, 8, NULL, 'anligaga10@hotmail.com', 'arodriguez', '$2a$10$n2Ot5NZAM/lBq3TdWrXQLOKUZUU5wdkI2JKg70Ga1437GJaWhvCrC', 0, '2021-05-12', '2021-05-10'),
(341, 'ANGELO FERNANDO', 'ROBLEDO COLONIA', 1144140914, 2, 15, 15, 8, NULL, 'angelorobledo.aficenter@gmail.com', 'afrobledo', '$2a$10$XQxPu4.YfOufRQiOyn569el1Miom6vKFhGcDdBdkog7T.IraTHEJu', 0, '2021-05-12', '2021-08-11'),
(342, 'YICEL', 'MUNOZ GOMEZ', 1080901934, 2, 15, 15, 8, NULL, 'gissmu94@gmail.com', 'ymunoz', '$2a$10$LD7pIJyBCoIzgNrTD3YPiuPoED1y/uDmYpstoMeXtI0glg5CzXcJS', 0, '2021-05-12', '2021-05-10'),
(343, 'ANGIE LIZETH', 'GALEANO GALLEGO', 1143839788, 2, 15, 15, 8, NULL, 'angielrl.0917@gmail.com', 'agaleano', '$2a$10$UmLjUC0/VpIMf76hlYq1yuD9tjHseUsI1c5VW7qGluazTqEevpBci', 0, '2021-05-12', '2021-05-10'),
(344, 'JHON FREDDY', 'GRAJALES MORA', 1144029107, 2, 15, 15, 8, NULL, 'jhongrajales.ft@hotmail.com', 'jgrajales', '$2a$10$.S58ybL3EPBVl7GKib5a9elNUlv3ID68TJyeuGF.LRuS77b4g3RJ.', 0, '2021-05-12', '2021-05-10'),
(345, 'VALENTINA', 'BERNAL QUINTERO', 1144190148, 2, 15, 15, 8, NULL, 'valenbernalq@gmail.com', 'vbernal', '$2a$10$ZnovUqC5Wm5QVJISl3c37u/SYRaXMr6uTKirOsIvZ9/.OBrDrtdoa', 0, '2021-05-12', '2021-05-10'),
(346, 'MILLER ALBERTO ', 'QUIJANO', 10303969, 2, 15, 15, 8, NULL, 'millerqg@hotmail.com', 'mquijano', '$2a$10$LH6LB2wNf7fPhAe6IIk83ut/vro5IUYnZ.QKLzygqSEHBPm/6JtgW', 0, '2021-05-12', '2021-05-10'),
(347, 'CHRISTIAN JOSE', 'MENDEZ LONDONO', 1144034059, 2, 15, 15, 8, NULL, 'cristianmendez-2013@hotmail.com', 'cmendez', '$2a$10$mf5KkD0AXmc2pmscAoN6d.RwMISmVEmpuNWccDeDxG51L5hGbv/ie', 0, '2021-05-12', '2021-05-10'),
(348, 'DAVID LEONARDO', 'LAVERDE AGUIRRE', 1130667878, 2, 16, 15, 8, NULL, 'daleo.laverde@gmail.com', 'dlaverde', '$2a$10$kmrrLitqFXWVp6NIl5PIHu3DVWQAyM4tIN.MsTwvUWeNFyNWWMrDG', 0, '2021-05-12', '2021-05-10'),
(349, 'JOSE ANTONIO', 'AVENDANO', 16771993, 2, 16, 15, 8, NULL, 'joseavendano1122@yahoo.com', 'javendano', '$2a$10$quRgLulolJ/laXFX612YQuzqyrlcFplF4UFUMgSTFacl0xPoPK9hC', 0, '2021-05-12', '2021-05-10'),
(350, 'SARA INES', 'CANTILLO MONTOYA', 1130613143, 2, 16, 15, 8, NULL, 'saraicmontoya@gmail.com', 'scantillo', '$2a$10$lxwuJ/uPBdRa1THYL01rv.zkfwE4NARA.wE8O4EwA0KP0mwYj4amK', 0, '2021-05-12', '2021-05-10'),
(352, 'MICHAEL SANTIAGO', 'NARVAEZ ZARATE', 1151951328, 2, 15, 15, 8, NULL, 'msantiago.narvaez93@gmail.com', 'snarvaez', '$2a$10$Mxf1JmQy8vSfi6J9vDl.Tef/B3rdspfdmzvuU2FkFmD4c7SGl0RAq', 1, '2021-05-12', '2021-05-10'),
(353, 'DIANA KATHERINE', 'PUENTE CHACON', 1144189049, 2, 15, 15, 8, NULL, 'diana0917.dp@gmail.com', 'dpuente', '$2a$10$8LFv/5KLtmoT98Cqjj2jsOeNhyGmNUnoY488HVXZz3qskfVIiNvKu', 0, '2021-05-12', '2021-05-10'),
(354, 'VALERIA', 'ORDONEZ FALLA', 1144180450, 2, 15, 15, 8, NULL, 'valeriafalla0405@gmail.com', 'vordonez', '$2a$10$9WZ9mBnUouYxyUy59DYGweYlFhum4Z21iAfMk0QS1Ju2uYmER8VEG', 0, '2021-05-12', '2021-05-10'),
(355, 'ANGELA', 'YIZETH AGUIRRE', 67002503, 2, 16, 15, 8, NULL, 'angelayizeth@gmail.com', 'ayaguirre', '$2a$10$2TBcJ/1TKOEUGFVAXseBieRtAU29zfdSTlXb5wzg3At0bNX7E0cCm', 0, '2021-05-12', '2021-05-10'),
(356, 'MARIA', 'MERCEDES PAZ', 34546329, 2, 16, 15, 8, NULL, 'mariamercypaz@hotmail.com', 'mpaz', '$2a$10$M32UMYEKNBzIhVQSVO1BiuWhM5AjI78rFzTbfx59VitPQcsdUoPRu', 0, '2021-05-12', '2021-05-10'),
(357, 'DAVID', 'BARONA GONZALES', 16379411, 2, 16, 15, 8, NULL, 'drbaronagonzalez@gmail.com', 'dbarona', '$2a$10$Ef9.93Q/KE.iWv6DkjL2sOLCYNarFwE/F2vYPlwrNCRi1Wm4bGbOG', 0, '2021-05-12', '2021-05-10'),
(358, 'JOSE JOAQUIN', 'DIAZ', 16367075, 2, 16, 15, 8, NULL, 'jojoadiba@gmail.com', 'jdiaz', '$2a$10$G8F3KVnM0.qfLYbzkhy2r.tpnD6eKXhClTM2DWgLL35ZfGBlXRTXK', 0, '2021-05-12', '2021-05-10'),
(359, 'SELENE ANDREA', 'OTERO MUNOZ', 1144071279, 2, 15, 15, 8, NULL, 'selene.andrea.otero@correounivalle.edu.co', 'sotero', '$2a$10$0S0vy/NZihqpkXux6RRAau5aK2letU7nCh1.J7fSFVqTAXzoygwDa', 0, '2021-05-12', '2021-05-10'),
(360, 'CARLOS ALBERTO', 'CASTANO', 1143862569, 2, 16, 15, 8, NULL, 'carloscq95@hotmail.com', 'ccastano', '$2a$10$EBzNVKJvo2qZVosp4pFgauk7Kb6S0GReiP8ESQwN/kVvAD87FA93C', 0, '2021-05-12', '2021-05-10'),
(361, 'DANIELA', 'PERDOMO ACOSTA', 1143867623, 2, 16, 15, 8, NULL, 'daniela.perdomo@correounivalle.edu.co', 'dperdomo', '$2a$10$qYDUiY7Y8X2GlRg69cMjzeJCLGqlnr2cbVM7eOE2sqkBqHhWJP0ru', 0, '2021-05-12', '2021-05-10'),
(362, 'ANDRES FELIPE', 'OROZCO DAVALOS', 1144172305, 2, 15, 15, 8, NULL, 'anfecai@hotmail.com', 'forozco', '$2a$10$EgsXt1SsPOxa361OR5cL4eyGyjYZIh7HWlllSxw99cgp4mG5Q/Ob6', 0, '2021-05-12', '2021-05-10'),
(363, 'JUAN JOSE', 'CRUZ MONTES', 1144198892, 2, 15, 15, 8, NULL, 'juanjo.cruz9718@gmail.com', 'jcruz', '$2a$10$ujeiDgVj/ZeOggKcgREG0.uMvZ8V8I7NQUY1nVgEvO9bOnY9OoAV.', 0, '2021-05-12', '2021-05-10'),
(364, 'SEBASTIAN', 'RUIZ TORRES', 1144179357, 2, 16, 15, 8, NULL, 'sebastian.ruiz.torres@correounivalle.edu.co', 'sruiz', '$2a$10$qvCUGKY6R/SYN0DgCrBFFufMMxE5SdEaSt6pME5hYWmyMT7AuGspK', 0, '2021-05-12', '2021-05-10'),
(365, 'CONSUELO DEL CARMEN', 'DCROZ ESTUPINA', 31962809, 2, 16, 15, 8, NULL, 'consuelodecroz29@gmail.com', 'cdcroz', '$2a$10$t5Uqwl7ffLag5HvKkpbpeu2NLN.EKePJgw08VzMNJv6CAj.36aL0W', 0, '2021-05-12', '2021-05-10'),
(366, 'MONICA VIVIANA', 'CAMPINO SILVA', 1143968644, 2, 15, 15, 8, NULL, 'monica.campino@correounivalle.edu.co', 'mcampino', '$2a$10$5rmQnyVz86o84Y.JHHcjA.panWHNvS0lPelx6UIVJ0N6sphsqdLaK', 0, '2021-05-12', '2021-05-10'),
(367, 'ANDRES FELIPE', 'CAICEDO RODRIGUEZ', 94534923, 2, 16, 15, 8, NULL, 'andres.1110@hotmail.com', 'anfecai', '$2a$10$aIYVZW9jsyzRSqE2Fl4ArOjVE38eC2D/a7kRN9rkxRGJ2pVMQwy26', 0, '2021-05-12', '2021-05-10'),
(368, 'PAOLA CAROLINA', 'GUERRERO RIVERA', 1143857512, 2, 15, 15, 8, NULL, 'paoguerrero19@hotmail.com', 'pguerrero', '$2a$10$BchxHKcXGeKkmY09myjNhOHggr5KZady4JRuJCotyKWIyZsjsYN1S', 0, '2021-05-12', '2021-05-10'),
(369, 'JORGE IGNACIO', 'CALDERON CASTRILLON', 1144097824, 2, 15, 15, 8, NULL, 'calderon.jorge0408@gmail.com', 'jcalderon', '$2a$10$x0szCXn36etsF4kXMITEYe/p4SD98GAUTeNdGrxFu7U3fR.hYS4tC', 0, '2021-05-12', '2021-05-10'),
(370, 'DIEGO ALEJANDRO', 'OROZCO MEDINA', 1144199926, 2, 16, 15, 8, NULL, 'ddiego1710@gmail.com', 'dorozco', '$2a$10$9WC1W7h3jAmzmLBqAdgBGudR4bvDmKpmm4acFPvG/oNhx.1oQrPzK', 0, '2021-05-12', '2021-05-10'),
(371, 'ERICK ESNEYDER', 'MEDINA CRUZ', 1143867732, 2, 15, 15, 8, NULL, 'Erick9527mc@gmail.com', 'emedina', '$2a$10$r97OX.psFWjo.ub6jLJuy.n07pPaHVItq1XZ.ThtW5tcHlTOl/WIq', 0, '2021-05-12', '2021-05-10'),
(372, 'PAOLA ANDREA', 'GARCIA TOLOSA', 1144177635, 2, 15, 15, 8, NULL, 'paolaandreagarciatolosa@gmail.com', 'pgarcia', '$2a$10$p2obkeLfPFoQrTBvaAtkBulhZqhLTlMQjFRd7VotkBR5vrQyymAfy', 0, '2021-05-12', '2021-05-10'),
(373, 'NEIDA MILENA', 'ADRADA CORDOBA', 59313684, 2, 14, 15, 8, NULL, 'liderasistencial@aficenter.com.co', 'nadrada', '$2a$10$fQMzmlXFnSLhe2ViZWFR3eLnczAmmVGrlU/w207tMUE102gthz45W', 1, '2021-05-12', '0000-00-00'),
(374, 'LAURA', 'CORREDOR', 100642640, 2, 4, 16, 9, NULL, 'firmacalidadsg2@gmail.com', 'LAURA', '$2a$10$fQMzmlXFnSLhe2ViZWFR3eLnczAmmVGrlU/w207tMUE102gthz45W', 1, '2021-03-01', '2021-10-06'),
(376, 'CATHERINE', 'URRESTE CANIZALEZ', 1113629570, 2, 1, 18, 11, NULL, 'gerencia@bmindustrias.com', 'CURRESTE', '$2a$10$.OgLhUVXIVPN5rZBjid1t.KDQ/o77eZ/pXpGVIeI0JPpvrlKxMsX2', 0, '2021-03-29', '2022-04-19'),
(377, 'Yuri anyeli', 'realpe marulanda', 1151934842, 2, 13, 14, 7, NULL, 'asistencia.comunidad@pio.edu.co', 'Yuri realpe', '$2a$10$pi5VOTq.JVJ8mNxdaYccfeiyKTpAvCttyGhQrHUUqxGa0ytl8CXHa', 1, '2021-04-08', '2021-10-05'),
(379, 'ARINGENIERIA', 'ew', 123442, 2, 9, 17, 10, NULL, 'arfoing.civil1@hotmail.com', 'admin122222', '$2a$10$eTTXFexjB88lCzsFMK6hUOgSRSbuEbZPfkCrbptQT4cHAaDO6hGY2', 0, '2021-04-09', '2021-04-09'),
(380, 'ANTONIO', 'GRUESO', 1113655337, 4, 91, NULL, NULL, NULL, 'firmacalidadsg1@gmail.com', 'agrueso', '$2a$10$nEh2mDVMXSL7rWGSwyWuS.Ch8XHFV/2aINpsStYL4io/yVUvhYCZ.', 0, '2021-04-20', '0000-00-00'),
(381, 'Marlon ', 'Serna Serna', 1006206117, 2, 7, 15, 8, NULL, 'lideradministrativo@aficenter.com.co', 'mserna', '$2a$10$VVJ/3PmhQRyzxf.J5RH/XudWo139zEwIVBctpbuAatk5291CLNreq', 0, '2021-04-17', '2021-04-17'),
(382, 'LEIDY XIOMARA', 'RUIZ CANIZALES', 66662017, 2, 2, 18, 11, NULL, 'contabilidad@bmindustrias.com', 'LRUIZ', '$2a$10$QVfOlHYjVkc5uAW6mloJLOJtb9ntz7yBIXgq5wDh8pi9mDibpu8/W', 0, '2021-04-20', '2021-10-05'),
(383, 'MARIA LORENA', 'MARIN JIMENEZ', 1007102509, 2, 17, 18, 11, NULL, 'bmseguridad2019@gmail.com', 'MMARIN', '$2a$10$T8VYf67SjvLax68psZelie0Hmmz.636AcmboS6nItFMMfyPYHDScu', 0, '2021-04-20', '2022-04-19'),
(384, 'KAROLL DANIELA', 'OCHOA BARIONA', 1107509282, 2, 3, 18, 11, NULL, 'compras@bmindustrias.com', 'KOCHOA', '$2a$10$xnbe0XI0SCiBQDtt85bq3.HjTQpM1hjhZPQh1zcPxnTQXKB.LXXwu', 0, '2021-04-20', '2021-10-05'),
(385, 'MONICA ', 'SANCHEZ', 1130649299, 2, 4, 18, 11, NULL, 'alfredomoya@bmindustrias.com', 'MSANCHEZ', '$2a$10$IvaI.oaVfhFqxnWrcoLmBes064dZJDkzCK2X90hbJeGHgVUn7Upym', 0, '2021-04-20', '2021-10-05'),
(386, 'ALFREDO', 'MOYA VELASQUEZ', 16718032, 2, 5, 18, 11, NULL, 'alfredomoya@bmindustrias.com', 'AMOYA', '$2a$10$fdKwyIYT0QfuKoYbtV1Qn.aZhHze.5V5sfWDPTblnHfxqjS0dvCc.', 0, '2021-04-20', '2022-04-19'),
(387, 'EDGAR EDUARDO', 'DIAZ QUINTERO', 93362375, 2, 6, 18, 11, NULL, 'comercial1@bmindustrias.com', 'EDIAZ', '$2a$10$3iwogOzSLdbJsyzAizdZROqZxP4Bf232BigIEwxs6jJzy1DRVgO9W', 0, '2021-04-20', '2021-10-05'),
(388, 'CARLOS ALBERTO', 'SAAVEDRA LOZANO', 6551104, 2, 6, 18, 11, NULL, 'comercial@bmindustrias.com', 'CSAAVEDRA', '$2a$10$lMJRD7/NCixqgtl25FNjTOb3BgnRX2d/eGu47tSfmwyCUslyFSBVy', 0, '2021-04-20', '2021-10-05'),
(389, 'FABIO', 'BORRERO VARGAS', 16632387, 2, 6, 18, 11, NULL, 'fabioborrerovargas@gmail.com', 'FBORRERO', '$2a$10$QnkX86eWp95NNxF8gLVHE.dIZoJxLnNos9.3Y3QM0ez3/J/Okm9Ly', 0, '2021-04-20', '2021-10-06'),
(390, 'RAFAEL', 'VARGAS MEJIA', 1130660355, 2, 7, 18, 11, NULL, 'elsarcomejia@hotmail.com', 'RVARGAS', '$2a$10$bRJYlYrZi67WCnOqTX8LROmGkrR/SWLFCRHTb4.NF7AfZES/dHriG', 0, '2021-04-20', '2021-10-05'),
(391, 'willam', 's', 214748364, 1, 1, 19, 12, NULL, 'william32_19@hotmail.com', 'william', '$2a$10$BbmACpBF6oCqPZGnemQCEeGEd9Xj0pAON3S9qyqcOROoDJxGBGY3u', 0, '2021-04-21', '2021-04-21'),
(392, 'Yeison Ferney', 'Restrepo', 98707168, 2, 11, 15, 8, NULL, 'proveedores@aficenter.com.co', 'yrestrepo', '$2a$10$GAG/0fq72Ge9Z61.CQc3XOSgtQKa9PFZRMJGnDdtzmuWwQvUQieem', 0, '2021-05-10', '2021-05-10'),
(393, 'Ramiro ', 'Vidales', 94402392, 2, 7, 15, 8, NULL, '', 'rvidales', '$2a$10$Nhw9tqozUrgi7fNbGfnwWOmdouH3m.eFbTMd7VrENYuCIozuWPlnK', 0, '2021-06-09', '2021-06-09'),
(394, 'Mary Eliana', 'Alvarez Martinez', 1089290782, 2, 14, 15, 8, NULL, '', 'malvarez', '$2a$10$uGEMT4WZPgW5sKs/WZU86umSOPbVwy4kaS4rRs9lG7Y2yazNmgYUm', 0, '2021-06-16', '2021-06-16'),
(395, 'Carlos ', 'Tejada', 11111111, 2, 0, 15, 8, NULL, '', 'ctejada', '$2a$10$rNBKFK38FV7nfdAnd6aNzeQMKEtH1.U1BGVi1dvHmTITHekRihic6', 0, '2021-06-30', '2021-06-30'),
(396, 'JADER ', 'ROCHA ALVAREZ', 16268652, 1, 8, 16, 9, NULL, 'jader.rochaalvarez1587@gmail.com', 'JROCHA', '$2a$10$aMJviyfXgmNIrvx1StM7qehnMg9VLkcxg9oEPHGqe4ALHI8splJmK', 0, '2021-07-08', '2021-10-05'),
(397, 'VICTOR JAIME ', 'RUIZ HERNANDEZ ', 805017089, 2, 7, 20, 13, NULL, 'admin@asevis.com', 'vruiz', '$2a$10$fLDx//RXRm2JtKJxGCorSe4DgKmxA2F3PHmg7fbD8vtNr.t5PdFUi', 0, '2021-07-12', '2022-04-19'),
(398, ' Aymer Harold', 'España Buitrago', 94380794, 2, 7, 15, 8, NULL, '', 'hespaña', '$2a$10$lwZkPDkv97mZ39v.bnhDZeiHHHQfOwRCPLI.1KS/qa8Oes5SJU9cS', 0, '2021-07-29', '2021-07-29'),
(399, 'Valeria', 'Díaz Hoyos', 1006101088, 2, 7, 20, 13, NULL, 'hoyosvaleria229@gmail.com', 'vdiaz', '$2a$10$rgPzoSdZ6TgXznazXjgX1uCOwrflGBpmcxYud6muTM6yd97l3t6ci', 1, '2021-08-20', '2022-05-26'),
(400, 'Mildred carolina', 'Pachano Ramos', 8277008, 2, 24, 20, 13, NULL, 'mildredpachano1@gmail.com', 'Mpachano', '$2a$10$.ZkUILjoLe1ujEyywk.wpep0kyzGvOf1AqmNfIgMdbVzQPx7OxxHu', 0, '2021-08-20', '2022-03-08'),
(401, 'PAOLA', 'BONILLA', 1010099061, 2, 9, 16, 8, NULL, 'firmacalidadsg1@gmail.com', 'PB', '$2a$10$IS9dthCud9xJtLQVZ1o.keKP5QPNWMqslnpw0c/GkjHSJoK3pCm0C', 1, '2021-08-31', '2021-12-01'),
(402, 'Jhon', 'Albear', 115194393, 2, 18, 15, 8, NULL, '', 'jalbear', '$2a$10$cQlt409t.vCoGlTA8w5gpufV1z.XrfoVaWYKLedSzQNz/JlR9Tn6q', 0, '2021-09-01', '2022-04-19'),
(403, 'LINA MARIA', 'PALAU DOSMAN', 1144169654, 2, 27, 20, 13, NULL, 'linadosman@hotmail.com', 'L8P8D9A2', '$2a$10$04z5ogkyvzZd8/KGrU7twuX4RdwWXb.w6fstv/tNwhJxPnztXIyRi', 0, '2021-09-08', '2021-11-08'),
(404, 'H. GLORIA HELENA', 'BENJUMEA LOPEZ', 25097204, 2, 14, 13, 6, NULL, 'convivencia@laanunciacioncali.edu.co', 'glopez', '$2a$10$U4vfLhYzSs88O5EiMF/UfuxZK2BBUBAEyxxktxvYzmRuNNMsxvTka', 0, '2021-09-13', '2022-05-06'),
(405, 'ALEXANDER', 'OREJUELA', 14696620, 1, 6, 16, 9, NULL, 'firmacalidadsgpublicitario@gmail.com', 'AOREJUELA', '$2a$10$OdKPRaB/7U5yPVgKq8MJkOF6Q6ngZtleVkPt3JaqR1OXaatLhnZda', 0, '2021-09-23', '2022-03-17'),
(406, 'dev', 'dev', 14696620, 4, 22, 21, 1, NULL, 'alexsanderorejuela@gmail.com', '14696620', '$2a$10$TXVewzqVUs7lJnb1doNANuncR/uP1os7Yje4rVIydruz8i2pGsSwC', 0, '2021-09-27', '2022-04-19'),
(407, 'alex', 'dev', 123654, 1, 4, 21, 1, NULL, 'desarrollo@calidadsg.com', 'devUser', '$2a$10$7qvVHFNbOpeWfM9rbD7aaeFO1SEpeith.DC6AwtYgElc25qd3gP3W', 0, '2021-09-27', '2022-04-19'),
(408, 'MABEL', 'GOMEZ TORRES', 67004583, 2, 4, 14, 7, NULL, '', 'MGOMEZ', '$2a$10$lTyKNgTZt4akHg46Kdd1xuErkdWn19kfpBuMzUBFJusuvauRtXDn6', 0, '2021-10-05', '2022-03-17'),
(409, 'ALBERTO DAVID', 'ARTEAGA JIMENEZ', 14702787, 2, 11, 14, 7, NULL, '', 'AARTEAGA', '$2a$10$BCNUPHfGQHggcQ8LKGsm2OI/AvZFLYEilci3EdfJwt5ggrTuXnlTi', 0, '2021-10-05', '2022-03-17'),
(410, 'YAMILETH', 'GAVIRIA GAVIRIA', 1144141104, 2, 11, 14, 7, NULL, '', 'YGAVIRIA', '$2a$10$6wQORpNZHkb4pAqUgLLlCOasEVjzGM0ByY6Pv4DWCrjrMiJJhTR0a', 0, '2021-10-05', '2022-03-17'),
(411, 'ELSA MARIA ', 'BRITTO PEREZ', 66924057, 2, 11, 14, 7, NULL, '', 'EBRITTO', '$2a$10$V4n5yCSNFQbcKAk5WYnYhOkT/tYPt0sOyQuewG2IwddvbtShIzWmy', 0, '2021-10-05', '2022-03-17'),
(412, 'JESUS ANTONIO ', 'SANDOVAL CORDOBA', 94405635, 2, 11, 14, 7, NULL, '', 'JSANDOVAL', '$2a$10$LXh4qhWitQI8rRThuZEiM.5Lv9aXp20guXDd4ZnGvVsKx7cATCAWS', 0, '2021-10-05', '2022-03-17'),
(413, 'ALEJANDRO', 'OLIVEROS RODRIGUEZ', 9736870, 2, 11, 14, 7, NULL, '', 'AOLIVEOS', '$2a$10$iGhNo6ZbaX8V0.u47nEcFeMTEyCOqljj7LSTzCwQ6d9mpJKIv.ePC', 0, '2021-10-05', '2022-03-17'),
(414, 'CARMEN ELIZA', 'SALAS OLAVE', 66941311, 2, 11, 14, 7, NULL, '', 'CSALAS', '$2a$10$X1G4JIVybFtShZZ79lAKtOO1heEnNMkRra8SEHClIX21MoxvH6i/m', 0, '2021-10-05', '2022-03-17'),
(415, 'ELIANA', 'SAUCEDO PAEZ', 1077633395, 2, 11, 14, 7, NULL, '', 'ESAUCEDO', '$2a$10$0JJkRRAVIFjKiaziE638q.dE3KUW/OA6zT7IAHSX8M2MO4ifuxShK', 0, '2021-10-05', '2022-03-17'),
(416, 'JEFFERSSON ALEXANDER', 'HENAO URBANO', 1130620832, 2, 11, 14, 7, NULL, '', 'JHENAO', '$2a$10$EX0nf7EaRskwIP19Y0LaBuA9Bu/Q2jb6aJrCsSwI0kKd6KXkxV2Yu', 0, '2021-10-05', '2022-03-17'),
(417, 'RICHARD NIXON ', 'MARTINEZ NOGUERA', 15814498, 2, 11, 14, 7, NULL, '', 'RMARTINEZ', '$2a$10$xKrq8aimS2bO5Db62rvGt.LtUb.ceCFtDQSgE8kMcWYxT8Snca6bC', 0, '2021-10-05', '2022-03-17'),
(418, 'JULIANA', 'CUESTA VARGAS', 1053837640, 2, 11, 14, 7, NULL, '', 'JCUESTA', '$2a$10$16A/ktzAKL9ugvqM2HWCG.Byt33KHbdwRIIx78m2QrFLsmEi/PTzG', 0, '2021-10-05', '2022-03-17'),
(419, 'SAMARA ANDREA', 'ALEGRIA MUÑOZ', 1061767648, 2, 11, 14, 7, NULL, '', 'SALEGRIA', '$2a$10$u2.7Ou6opmwyi4bts3Kcd.I5w584duJ3/e2aEtFzzBL.dCjZ2kOeO', 0, '2021-10-05', '2022-03-17'),
(420, 'ALEJANDRO', 'CALERO JIMENEZ', 94531607, 2, 11, 14, 7, NULL, '', 'ACALERO', '$2a$10$8AXmnD/qUoiTRg/.H9GMa.WzMwqPqjpZnGl5a/l3ZToi7ijvyy2aS', 0, '2021-10-05', '2022-03-17'),
(421, 'DIANA ALEXANDRA', 'CELIS PEREA', 67024215, 2, 11, 14, 7, NULL, '', 'DCELIS', '$2a$10$/87oD7XKp9YT002OPKkWQOmaWAVAxPdeUVd/8w8HJbfah6wDhCqoa', 0, '2021-10-05', '2022-03-17'),
(422, 'LIZETH VIVIANA', 'ASPRILLA ALVAREZ', 1107034009, 2, 11, 14, 7, NULL, '', 'LASPRILLA', '$2a$10$kV2eJvxagITMpImBESxNxOf2C0hlME6kstFP4V4dDE8.B8hw7B7o2', 0, '2021-10-05', '2022-03-17'),
(423, 'GABRIEL RODOLFO', 'IZQUIERDO BRAVO', 512480, 2, 11, 14, 7, NULL, '', 'GIZQUIERDO', '$2a$10$QJ8uaVGNY8NnLD0avtQuquwT6pj9d0Os3WXqLzkNwesC1zCjNSk.a', 0, '2021-10-05', '2022-03-17'),
(424, 'NURY ALEXANDRA', 'URREGO FLOREZ', 1151934175, 2, 11, 14, 7, NULL, '', 'NURREGO', '$2a$10$u17p1P.cPf8n04HpTwv7segNI8EhjaaRoAzhlMQbCYuxBXVu3pAs2', 0, '2021-10-05', '2022-03-17'),
(425, 'CILIA ENA', 'SALGADO ARIAS', 31890719, 2, 11, 14, 7, NULL, '', 'CSALGADO', '$2a$10$W4JmooPOhCqZR6Alrx.uB.c6KSxwyVJCXoLZJ6D8b1V0.EseHJlny', 0, '2021-10-05', '2022-03-17'),
(426, 'CESAR IVAN', 'ARBOLEDA SALINAS', 1113623805, 2, 11, 14, 7, NULL, '', 'CARBOLEDA', '$2a$10$JwKob1MS3MnuUVeEQ.WoY.1o7D.OzpzgqT0IndaLY0EIfJ8hxAioC', 0, '2021-10-05', '2022-03-17'),
(427, 'MARCELA YANETH', 'ORTIZ DELGADO', 66951941, 2, 11, 14, 7, NULL, '', 'MORTIZ', '$2a$10$RF7X0BvU90odE7YVzmxgz.3E3yplW9Xt3c8wLpjqcB5Wcjiehflgy', 0, '2021-10-05', '2022-03-17'),
(428, 'CARLOS ANDRES', 'MINOTHA ZAPATA', 1151946397, 2, 11, 14, 7, NULL, '', 'CMINOTHA', '$2a$10$BxHCpt6jkwQEZL5GpwbIveNbi8Zv0Z3Me8fcN3kCnJil7XndLFyDe', 0, '2021-10-05', '2022-03-17'),
(429, 'FRANCISCO ALEJANDRO', 'CASTAÑEDA ORBEZ', 1144153465, 2, 11, 14, 7, NULL, '', 'FCASTAÑEDA', '$2a$10$PYXCenMYZhrkh7BHpN/a8eqE0leOpihnQDKy5bWT8.fzXikMOJ/Ii', 0, '2021-10-05', '2022-03-17'),
(430, 'JUAN SEBASTIAN', 'RICO CASTRILLON', 1144157688, 2, 11, 14, 7, NULL, '', 'JRICO', '$2a$10$hCjodTw.9Yh4gGELKgzSZuRtxSq2DHj6rjFo0l5b3keym.KKeQoG6', 0, '2021-10-05', '2022-03-17'),
(431, 'ALBA LUCIA', 'COLLAZOS HERNANDEZ', 1143949626, 2, 11, 14, 7, NULL, '', 'ACOLLAZOS', '$2a$10$w.S6//w37OT/ZksLyJeo7uihNVElkPdIClTuIZyAB/X0W4bbxSAfG', 0, '2021-10-06', '2022-03-17'),
(432, 'LEIKA MARGRIT', 'FERNANDEZ GRISALES', 31977177, 2, 13, 13, 6, NULL, '', 'Lfernandez', '$2a$10$qgrFAJhIOzaZ6O1.rUYlYelKlMmFhCZlG7J4JebdZoSptMyY08kve', 0, '2021-10-06', '2022-05-06'),
(433, 'MARIA ALEJANDRA', 'GUTIERREZ MARIN', 1045023387, 2, 13, 13, 6, NULL, '', 'MGUTIERREZ', '$2a$10$k8QaO90B/ofiGPCL55kBjeT1nPC09l30WKBHJvgMmtf.WjeYIWdMO', 1, '2021-10-06', '2022-05-06'),
(434, 'LINA MARCELA', 'MARIN GAONA', 1144126014, 2, 13, 13, 6, NULL, '', 'LMARIN', '$2a$10$xJSHZdKKFbhL04h.n9Qp8utQjAbRI1YHUK2zOaC6E6HuksejBZiQu', 1, '2021-10-06', '2022-05-06'),
(435, 'DIANA', 'MUÑOZ HERNANDEZ', 29974839, 2, 13, 13, 6, NULL, '', 'DMUÑOZ', '$2a$10$lJvZ4eAdxI0CEc89kLyNx.tF9jJmq00CVipB//ctmVVcVf4cpRM7W', 1, '2021-10-06', '2022-05-06'),
(436, 'OSCAR FABIAN ', 'PEREZ GONZALES', 16460942, 2, 13, 13, 6, NULL, '', 'OPEREZ', '$2a$10$h6eRNH9JkHaPJ1KvlWpTRuvv2qjyHNRcFX.kelYCUh8Uwf3jggDqW', 1, '2021-10-06', '2022-05-06'),
(437, 'BEATRIZ', 'RINCON REYES', 66710038, 2, 13, 13, 6, NULL, '', 'BRINCON', '$2a$10$RbvboYus3mjM0UrDoY9Z5eRHf3iIgdw0OVAsqDJ2A8PuL5zTXtwYK', 1, '2021-10-06', '2022-05-06'),
(438, 'TATIANA', 'RIOS TENORIO', 66660562, 2, 13, 13, 6, NULL, '', 'TRIOS', '$2a$10$lG.BGr4aR65mhI4Y0A6NdOzLwTihnaNz7MPge8GTkwb6KpBiW8BKm', 1, '2021-10-06', '2022-05-06'),
(439, 'LILIANA', 'ROSERO RODRGUEZ', 67017489, 2, 13, 13, 6, NULL, '', 'LROSERO', '$2a$10$mg4aDQ6HWL4MJOspX8ODduRHPGR.LPc6hSMk5wrL89676ah8JLI4u', 1, '2021-10-06', '2022-05-06'),
(440, 'ESTEFANY JINETH', 'RUANO PINCHAO', 1085942514, 2, 13, 13, 6, NULL, '', 'ERUANO', '$2a$10$gBukfkZ8A8HfimSf6AXEluDJ7iFCR8COoV6jIqu7j/DIEswa3KQ9u', 1, '2021-10-06', '2022-05-06'),
(441, 'JHONATAN', 'ZAPATA GUTIERREZ', 1113309344, 2, 13, 13, 6, NULL, '', 'JZAPATA', '$2a$10$Qd6QrsurNNPDsbjneaUOQ.eA00w2vU8XiSHGh6HRsZ92WBoBji1ge', 1, '2021-10-06', '2022-05-06'),
(442, 'JEFFERSON ', 'FIGUEROA JARAMILLO', 1130614061, 2, 8, 13, 6, NULL, '', 'JFIGUEROA', '$2a$10$XKdwcMNuTYCE46y2hXTfZ.TLsuYLPpGzUQ75o/aJZk3vsS/nEF53i', 1, '2021-10-06', '2022-05-06'),
(443, 'AIDA LUZ', 'BAÑOL', 66999555, 2, 12, 14, 7, NULL, 'aydluz_02@hotmail.com', 'ABAÑOL', '$2a$10$Gb8Lw3Dk.XA5jXIAQ8C.9u7YagmeqtJ/xCoAbhXGOvMdPlEJeSG3S', 0, '2021-10-06', '2022-03-17'),
(444, 'ANDREA JOHANNA', 'PARRA FONSECA', 1107059512, 2, 8, 14, 7, NULL, 'andrea.jparraf@gmail.com', 'APARRA', '$2a$10$J.tsdotG4qP6vofpJD0VwOVWCknlMwQ3Url7hfG9KFaYP7PGbLHZe', 0, '2021-10-06', '2022-03-17'),
(445, 'DAYANA', 'CASTRO BERMUDEZ', 1192912250, 2, 8, 14, 7, NULL, 'jdking100@hotmail.com', 'DCASTRO', '$2a$10$G7EOygnNcXsCuipf2ifK/O5clsqOYK27KLLuPxkb1CI0aQTZ46Gya', 0, '2021-10-06', '2022-03-17'),
(446, 'JEISON ANDRES ', 'VALENCIA CANOAS', 1118303065, 2, 1, 14, 7, NULL, 'escuela.gastronomica@pio.edu.co', 'JVALENCIA', '$2a$10$Keox7eTv3uMr3Lxy.hD40OGL/IsodIj6oZAWIeIswiZFA2X4O9BGi', 0, '2021-10-06', '2022-04-19'),
(447, 'JESSICA ', 'RAMIREZ COLLAZOS', 1151944804, 2, 11, 14, 7, NULL, 'jessik2101@hotmail.com', 'JRAMIREZ', '$2a$10$NWOezR0ohlRwtTVLcbQoxOVT3FxAxMeAAgxpnQ7MNr.vG9xSmBDJW', 0, '2021-10-06', '2022-03-17'),
(448, 'KATHERIN', 'GALVIS ALZATE', 1144188519, 2, 12, 14, 7, NULL, 'katheringalvisalzate@gmail.com', 'KGALVIS', '$2a$10$3uS4MUxHX1qwuHTbm9DZU.5DQZ6EVa9LQwsiRkYJy3bpDIzGoSzfK', 0, '2021-10-06', '2022-03-17'),
(449, 'KATHERINE', 'OLIVEROS HERNANDEZ', 1130632388, 2, 12, 14, 7, NULL, 'kateoliv16@gmail.com', 'KOLIVEROS', '$2a$10$mTv3z/rnqxZK6wDgh8/EzuSuH.dyrZRhs7VgRtTYU3.u4BTEtr2eu', 0, '2021-10-06', '2022-03-17'),
(450, 'KATHERINE', 'RAMIREZ ARIAS', 1113637538, 2, 1, 14, 7, NULL, '', 'KRAMIREZ', '$2a$10$XvXkGsLfHVCsYX/GaTqTLetRYDWIgc8XtQe4SY4ibJR14fv8nRKFK', 0, '2021-10-06', '2022-03-17'),
(451, 'PAOLA YULIETH ', 'ERAZO BOTINA', 1143847211, 2, 8, 14, 7, NULL, 'paolaerazo77@gmail.com', 'PERAZO', '$2a$10$z4K3CwBW4dfvNesIwyjC4u2wMUzsZQxymxjBLQagZUrjIg/NSiBIG', 0, '2021-10-06', '2022-03-17'),
(452, 'YEINER GABRIEL ', 'ROMERO JARAMILLO', 29692057, 2, 8, 14, 7, NULL, 'yeiner.romer.2017@gmail.com', 'YROMERO', '$2a$10$m3vob.lKIAg2aoaadM4GPeAEG9wWq4xo0Sq7fCMNNOWIaIS.PpM/i', 0, '2021-10-06', '2022-03-17'),
(453, 'HABIT ELIAS', 'ADECHINE RAMOS', 1082947270, 2, 12, 14, 7, NULL, 'adechine@gmail.com', 'HADECHINE', '$2a$10$N7ZPJ3MmtcCsViIKdetKw.bguEpsFhwZ5xH7EX4RXAOIunYYn3E9q', 0, '2021-10-06', '2022-03-17'),
(454, 'DAIRO', 'GARCIA', 1117509030, 2, 11, 14, 7, NULL, 'dairogarcia_25@hotmail.com', 'DGARCIA', '$2a$10$tLNwFnrXGICUGLQIkgBUteBoJ.BM4Gjeg/wWSg4HzkNLGqtPT0OtS', 0, '2021-10-06', '2022-03-17'),
(455, 'YIRLE AN ', 'SANCHEZ ESCOBAR', 66952419, 2, 40, 22, 16, NULL, 'direccionamiento@hotmail.com', 'YSANCHEZ', '$2a$10$kDbUUkt9kGc7T2kQ0IV3D.5hgMIKV3Qgv44fwkq5M8/0VcOM6aQym', 0, '2021-10-26', '2022-03-29'),
(456, 'ANDRES FELIPE ', 'CANO BROWN', 1006172904, 2, 31, 22, 16, NULL, '', 'ACANO', '$2a$10$YGQ6nCFAFDMcnncLWyX5i.4WmZHXztYAk/DruzJWbelaa.UbY7AjC', 0, '2021-10-26', '2021-10-26'),
(457, 'CRISTIAN DAVID ', 'CRUZ APONTE', 1010027529, 2, 38, 22, 16, NULL, '', 'CCRUZ', '$2a$10$y4xgC8Q6rhuwAkVKyKtHpeyUcbizivQC4cKfWK57nfvtW7ituxolW', 0, '2021-10-26', '2021-10-26'),
(458, 'DIANA LORENA', 'CAMAYO DIAZ', 1113621034, 2, 38, 22, 16, NULL, '', 'DCAMAYO', '$2a$10$GmewH4jdnsfP19IjGHx.AOH1KvOm8WMim4iIeL9xyzB5pcbQBAZY2', 0, '2021-10-26', '2021-10-26'),
(459, 'DIEGO ARMANDO', ' HERNANDEZ ESCOBAR', 16945880, 2, 26, 22, 16, NULL, 'Dieguito297@hotmail.com', 'DHERNANDEZ', '$2a$10$27HPL9pC/ViEay3HJXcf8OfIIt4r9zIMNEGwneuEgp7mYXivVgCXe', 0, '2021-10-26', '2022-03-29'),
(460, 'ELIZABETH ', 'MORENO COBO', 66763681, 2, 34, 22, 16, NULL, 'eliza.morenoc.emc@gmail.com', 'EMORENO', '$2a$10$4rFEkDUcixWGR0GhXOMog.hjI3ZThwLIM.Z7OOjRhexmunjhyYUG.', 0, '2021-10-26', '2022-03-29'),
(461, 'HUMBERTO ', 'OSSA RAMIREZ', 16449671, 2, 27, 22, 16, NULL, '', 'HOSSA', '$2a$10$8e5R/de1.SHetnTnSCpxHeyg0BUIIm78qXKDyyxmLjsrQcSASd6Ae', 0, '2021-10-26', '2021-10-26'),
(462, 'KENIA ', 'ORTIZ OSORIO', 1144194421, 2, 35, 22, 16, NULL, 'keniaortizdesign@gmail.com', 'KORTIZ', '$2a$10$FW.8jdwoc.zX9VKr3LNUWuTP0cEKiG0UxjzUmzDX/cxqKXt20T64q', 0, '2021-10-26', '2022-03-29'),
(463, 'LAURA VANESSA ', 'ZAMORANO PAMA ', 1144212907, 2, 32, 22, 16, NULL, '', 'LZAMORANO', '$2a$10$kn5xU3YU7gHr.S2qnuwR2.61.tmQ8DNi/IsJX84J4MxOZu0KGzzCm', 0, '2021-10-26', '2021-10-26'),
(464, 'LINA MARCELA ', 'GUZMAN GARCIA', 1113620098, 2, 32, 22, 16, NULL, '', 'LGUZMAN', '$2a$10$9DcYS/MaMT/GoTscN4aLOejgphRjFJkszJk0VFQ6frBCUN/3IreF2', 0, '2021-10-26', '2021-10-26'),
(465, 'LUIS EDUARDO ', 'PEREZ MARIN', 1112219055, 2, 38, 22, 16, NULL, '', 'LPEREZ', '$2a$10$EQrUzlMpzd7P0OK1240OIehRHhFXM/WC7n5zlZGfJTJwfet4b/FNa', 0, '2021-10-26', '2021-10-26'),
(466, 'LUZ CARIME ', 'CHAUX BOCANEGRA', 66660412, 2, 32, 22, 16, NULL, '', 'LCHAUX', '$2a$10$ZfBqJq2v1QYCHhnEqnmMR.CGGQdcq6MxwSCzeuP.l2rRSo9Az2Vxa', 0, '2021-10-26', '2021-10-26'),
(467, 'MAGYURY YAMILETH ', 'VELASQUEZ RENTERIA', 1118282827, 2, 39, 22, 16, NULL, 'mayitovr42@gmail.com', 'MVELASQUEZ', '$2a$10$kVqxnORpIojobUF9M1xJwu7KkNCFK41IZBKJvzmalPXzcC25muX1K', 0, '2021-10-26', '2022-03-29'),
(468, 'YAHAIRA ', 'ORTIZ OSORIO', 1144181955, 2, 31, 22, 16, NULL, 'Yahi3@hotmail.com', 'YORTIZ', '$2a$10$N/.BA55liTtNKd.UBEQODuhjLRm6apGV.eOu9Lw0I4PwEaqyLevAy', 0, '2021-10-26', '2022-03-29'),
(469, 'YULLI VANESSA', ' MORA LOPEZ', 1113638038, 2, 31, 22, 16, NULL, '', 'YMORA', '$2a$10$IegxKfwOVpXvQ14.4igRkuNKHlUur3JRuXJCkKd7hlMMq/v0fWA6K', 0, '2021-10-26', '2022-04-19'),
(470, 'FABIAN', ' MEZA MURILLO', 14699791, 2, 37, 22, 16, NULL, '', 'FMEZA', '$2a$10$6i8SkpOdLdRJmltHa4NRheMbMPoPjNzaOiNl6YKuSH8j/2bicLfRK', 0, '2021-10-26', '2021-10-26'),
(471, 'KATHERINE ', 'RAMIREZ ARIAS', 1113637538, 1, 41, 22, 16, NULL, 'firmacalidad1@gmail.com', 'KRAMIREZ', '$2a$10$eiiUVO4nQt8CsrJvdK6.4eoWtKq8CfFqvwfIfbRvhG6SpzCnSyex.', 0, '2021-10-26', '2022-04-19'),
(472, 'FABIAN ', 'MEZA MURILLO', 14699791, 1, 21, 20, 13, NULL, 'firmacalidad1@gmail.com', 'FMEZA', '$2a$10$r471GFxw7A..tHGJtenPEOqplqbU9tAFATlhyNBHolgs.BpKxu9jG', 0, '2021-10-26', '2022-04-19'),
(473, 'KATHERINE', ' RAMIREZ ARIAS', 1113637538, 4, 1, NULL, NULL, NULL, '', 'karias', '$2a$10$qp6PJb2kW8FmJslfiP70suaMfGyBjeJ4UTCsRJN6VeWTcBoQJ7xhK', 0, '2021-10-26', '2022-04-05'),
(474, 'KATHERINE', ' RAMIREZ ARIAS', 1113637538, 4, 19, 18, 11, NULL, '', 'KARIAS', '$2a$10$b1G0El08PNI5hGZLEGUyvOeSE4xc9d8QxbCzDJ8JLNjNhT1t3169W', 1, '2021-10-26', '2021-10-26');
INSERT INTO `users` (`id`, `nombres`, `apellidos`, `identificacion`, `role_id`, `cargo_id`, `colegio_id`, `squema_id`, `colegios`, `email`, `username`, `password`, `activo`, `created`, `modified`) VALUES
(475, 'FABIAN ', 'MEZA MURILLO', 14699791, 2, 27, 14, 7, NULL, '', 'FMEZA', '$2a$10$TxUNO6FoH88PEexE4rOjFOJ0AG5nVEXskmPByvzCi0Lpqve9PttVW', 0, '2021-10-26', '2022-03-17'),
(476, 'MICHELL DAHIANNA', 'GIRALDO LEAL', 1006308217, 4, 4, 16, 23, NULL, '', 'mgiraldo', '$2a$10$oiko3eYC65rvgx/YjQ095e7gg.5szhpIndPb5O1JpsLYo.hDECCd.', 1, '2021-12-13', '2022-03-16'),
(478, 'FERTILITY ', 'CARE COLOMBIA S.A.S', 901097178, 1, 1, 24, 17, NULL, 'firmacalidad1@gmail.com', '901097178', '$2a$10$/9kRsI1yqKf1zq1erC599.EnREdkJoZx/Am9sR2TkZ/U6M3iFE1zK', 0, '2022-01-11', '2022-04-18'),
(479, 'DAVID ', 'CARDENAS MONTEGRANARIO', 94315328, 2, 22, 17, 10, NULL, '', 'dcardenas', '$2a$10$lp.iTf5wGJpssFQxzIkHa.Fbh4YMLRwoYuYKZMYRSWN3RPzbLBNL.', 0, '2022-02-08', '2022-04-19'),
(480, 'CHRISTIAN ', 'ALVAREZ', 16376354, 2, 9, 24, 18, NULL, '', 'calvarez', '$2a$10$lheTdhNV0EpYKYM0v0aIJu4ucGsx0P.BXs/.8O7sW9fiJ9u7iMEj.', 0, '2022-02-24', '2022-05-26'),
(481, 'ANDREA', 'DORIA', 1067888094, 2, 4, 24, 18, NULL, '', 'adoria', '$2a$10$dlYCZObPpVruB1bGIBbHKubyT39Z6NsJ5P.MbAZHSGyvW0Wzurwk.', 0, '2022-02-24', '2022-03-17'),
(482, 'DIEGO ARMANDO', 'FORERO SANCHEZ', 1082838357, 2, 8, 24, 18, NULL, '', 'dforero', '$2a$10$AiSe4Ys385jZVbo6zkSB5e0hc5cZovfp/biZvXiyicxYHdyIsLWP6', 0, '2022-02-24', '2022-04-28'),
(483, 'MAURICIO ANDRES', 'NOVOA SAENZ', 1067880113, 2, 3, 24, 18, NULL, '', 'mnovoa', '$2a$10$X15l8dTWVr1kACrncCXrHuBUoRPc817E3X05tmOGACuAZVhqseMYK', 0, '2022-02-24', '2022-04-13'),
(484, 'KAREN SOFIA ', 'PINERES BALZA', 1045744411, 2, 7, 24, 18, NULL, '', 'kpineres', '$2a$10$PZ45B4cWfPkS4EzXAGILDOdJr6FzUtWgMPWovGcqdV0L3cVvrSGW6', 0, '2022-02-24', '2022-03-17'),
(485, 'MICHELLE', 'SANDOVAL POLO', 1140876813, 2, 11, 24, 18, NULL, '', 'msandoval', '$2a$10$tnyhQ6aeaf6zo4z0EcuyF.l4rDp8aBEv8ldCXFYCAa3lhsLMz5X5C', 0, '2022-02-24', '2022-05-02'),
(486, 'LUZ ALBERY', 'ORTIZ SALAZAR', 66777148, 4, 4, 16, 9, NULL, '', 'lortiz', '$2a$10$s1ElkSwguCzSZZFHjfWr/.xW6fTrj4IGUBS21IrADT8nekpIyzQfe', 0, '2022-03-09', '2022-03-24'),
(487, 'DIANA', 'GARZON ', 1005976784, 4, 1, NULL, NULL, NULL, '', 'dgarzon', '$2a$10$lvlZSFly6NYGHN92wSG56.eQudVFI/bOerIVS3n6zwgykv/Z569uq', 0, '2022-03-16', '2022-06-16'),
(488, ' Astrid Carolina', ' Hollman Posso', 1042452056, 2, 11, 24, 18, NULL, '', 'ahollman', '$2a$10$1xCH0CleXFU7Y5GIXmnKheHsPw8Pu0tJwjcH9GXPFL9xWZZt1CdHS', 0, '2022-03-17', '2022-04-27'),
(489, 'Aringenieria', 'Aringenieria', 2309, 1, 2, 17, 10, NULL, '', 'Aringenieria', '$2a$10$SMLUsPSH75eHhvB.GCMiTeJSfqA2lfBNobv5TUTJBcALD4y./A5mW', 0, '2022-04-19', '2022-04-19'),
(490, 'anunciacion', 'anunciacion', 3456, 1, 0, 13, 6, NULL, '', 'anunciación', '$2a$10$E/bgnAXj/d4VAoPD1/qere0pyAN1wYNSovMrlhqT4lvIjFwlreOJm', 0, '2022-04-19', '2022-04-19'),
(491, 'bm industrias', 'metalmecanica', 3456, 1, 1, 18, 11, NULL, '', 'bm', '$2a$10$P.Smsdre/2VPcws5.0mIe.gT4oH8cQdKS0.PRoI887lfAocc1fOqO', 0, '2022-04-19', '2022-04-19'),
(492, 'Kelly Johanna', 'Marquez Machado', 1140881873, 2, 10, 24, 18, NULL, '', 'kellym', '$2a$10$jazqkECzObpzd7EnmFM0nuQcQKs/aE5aaLcDRA5aqSKf5FU8u/A5G', 0, '2022-04-27', '2022-04-27'),
(493, 'ANA MARIA', 'VARGAS GARCIA', 66658075, 2, 2, 24, 18, NULL, '', 'avargas', '$2a$10$o/pBBz9srPAy4zyFb5tb7e5d8VG4a/DfDxmqeZ3SLs5cd4oJMfUo6', 0, '2022-04-27', '2022-05-06'),
(494, 'TEDDY EDWARD', 'QUINTANA VILLALBA', 72007148, 2, 12, 24, 18, NULL, '', 'tquintana', '$2a$10$0fe1dKWRZYghqWBpgl1NyuBDenZLnvztMod1E0ZcYKAfZGDfBBx7O', 1, '2022-04-28', '2022-06-09'),
(495, 'Colombo', '901202174', 901202174, 1, 0, 26, 19, NULL, '', '901202174', '$2a$10$iAKuDx7SaeOdhKOH0mH.3uxl.lcyCCFZKe/B4qyUDfZXMqac6i/e6', 0, '2022-05-02', '2022-05-02'),
(496, 'Alcifronte', '900545851', 900545851, 1, 1, 27, 20, NULL, 'firmacalidad1@gmail.comm', '900545851', '$2a$10$dzDfjAgOFwgnZsARGPF6KuTjjDov98LGHbYgNEi/OBVMtQt8tdCPW', 0, '2022-05-02', '2022-06-08'),
(497, 'PoliValle', '9010921720', 2147483647, 1, 0, 25, 21, NULL, 'firmacalidad1@gmail.com', '9010921720', '$2a$10$ypA6ibT505HK2HRvC.LgsupNGS7jA9qK7FyUo3/TiJpYZqi35voIe', 0, '2022-05-04', '2022-05-12'),
(498, 'Ninfer ', 'Betancourt', 51995394, 2, 1, 26, 19, NULL, 'educacion@colombojaponesa.comm', 'Bninfer', '$2a$10$WNTAgxR2LUjhuQZ6jstsTuBADyiwNEhy25udYfjcmcpXIdm4QPwfO', 0, '2022-05-04', '2022-05-10'),
(499, 'Kana', 'Kimura', 1011285, 2, 4, 26, 19, NULL, 'kana.kimura@colombojaponesa.comm', 'Kkimura', '$2a$10$h2KLAHm1.gPemvSDKisMiuADvZIeo4yDJmbp6Xm/Ce6BPJeS9liJ2', 0, '2022-05-04', '2022-06-16'),
(500, 'Zaida', 'Lombana', 52430896, 2, 3, 26, 19, NULL, 'zaida.lombana@colombojaponesa.comm', 'Zlombana', '$2a$10$/SbkZGW.h2mA9g8W25dMRuLPuqtlfqa0A0wagqa.4MR.89uc2xnJe', 0, '2022-05-04', '2022-06-16'),
(501, 'Carolina', 'Mogollon', 1121928287, 2, 6, 26, 19, NULL, 'carolina.mogollon@colombojaponesa.comm', 'Cmogollon', '$2a$10$HyizOs9ZIk493QBiwHjxAutM.dC1jLARKFWysuzCzCCvxzu0.vA/q', 0, '2022-05-04', '2022-06-16'),
(502, 'Fabian', 'meza', 123, 2, 2, 26, 19, NULL, 'asesorsgci@gmail.com', 'FFcalidad', '$2a$10$6Lz6u1anUftx/p1DfVVuSO0DgW8tIkqiOkdUTRH/Qp3A5Hw1TzgWy', 0, '2022-05-04', '2022-05-05'),
(503, 'Elizabeth', 'Ortiz', 52264033, 2, 5, 26, 19, NULL, 'gerente.admon@colombojaponesa.comm', 'Eortiz', '$2a$10$W5GGm7VDbFXzpg9lx4uKl.rGHRslL.pA/AF37ihUTNwbW08wDMHUO', 0, '2022-05-04', '2022-06-16'),
(504, 'LAURA ', 'GOMEZ', 1193563542, 2, 14, 24, 18, NULL, '', 'Lgomez', '$2a$10$pYPNubsKmKVt8mKehc0LAeY4a7CojNYpeM1MlntX2xqFFVaRnzqt2', 0, '2022-05-05', '2022-05-05'),
(505, 'Vanessa', 'Mendez', 53090551, 2, 7, 26, 19, NULL, 'academica@colombojaponesa.comm', 'Vmendez', '$2a$10$xyfIJb6FsuG0Et0fQ5oHCeDumFH2kOnJcLmXC9CfTORnxAJs8nNIW', 0, '2022-05-10', '2022-05-10'),
(506, 'Milena', 'Vega', 55068088, 2, 2, 26, 19, NULL, '', 'Mvega', '$2a$10$jHl5YZRLvkYGiZi3.Gl6ruQelAi19cNe13iDFHVS5/cqQjXmk2DrC', 0, '2022-05-24', '2022-05-24'),
(507, 'Derlin Dahiana', 'Manrique Ceron', 1010052362, 2, 3, 20, 13, NULL, '', 'Dmanrique', '$2a$10$MpZo1jKeV3996tx4n5WcvexAzknE8GeMJFgos0pglBNc/VLwQmHkG', 0, '2022-05-26', '2022-05-26'),
(508, 'Anngie Natalia', 'Salamanca Zuñiga', 1010155137, 2, 7, 20, 13, NULL, '', 'Asalamanca', '$2a$10$yx7af1TDrCEW9RuNphmVu.xR8yvboA//YUcLf0n4rwAyHzq8jRAyy', 0, '2022-05-26', '2022-05-26'),
(509, 'Ronaldo ', 'Garcia Gonzalez', 1113688304, 1, 0, 21, 16, NULL, '', 'RGarcia', '$2a$10$NBlX65MiLnhQgH9rLUDTeOt8HK0Xk01PAyA6ATn2/E/XsgFsS/9.m', 1, '2022-05-27', '2022-06-03'),
(510, 'Fernando', 'Chica', 16768526, 2, 1, 27, 20, NULL, 'firmacalidad1@gmail.comm', 'Fchica', '$2a$10$Mah84t/X/MpHWgygHfvYVuX048CNZSzZZmSdFWlgiyUsHYxe6k11e', 0, '2022-06-08', '2022-06-08'),
(511, 'Santiago ', 'Chica', 1108638395, 2, 5, 27, 20, NULL, 'santiagochica013@gmail.com', 'Schica', '$2a$10$Rrsz/KEywMy0GwCTCb3GaeGjD0ggkMw834HuELumcJcYZKjxhcWi.', 0, '2022-06-08', '2022-06-15'),
(512, 'Oswall', 'Chica', 111111, 2, 3, 27, 20, NULL, 'firmacalidad1@gmail.comm', 'Ochica', '$2a$10$YOPT1YGL5kUgV26HwPnfL.nrwKf1WMNbkCecDU4bpy35zqvkfdDiu', 0, '2022-06-08', '2022-06-08'),
(513, 'Ángel', 'Pechené', 1111, 1, 4, 27, 20, NULL, 'firmacalidad1@gmail.comm', 'Apechene', '$2a$10$/eXiYEDhaAM0AZjK.GIdB.tFMVJAxREs/b.7RSCGrfPcm/4rQZDZK', 0, '2022-06-08', '2022-06-08'),
(514, 'Clara', 'Florez', 1111, 2, 5, 27, 20, NULL, 'firmacalidad1@gmail.comm', 'Cflorez', '$2a$10$81xkDL3Rp6h9Y0avbu.ZrukFV2HItjsu7rM3ySYBuj2ilg/VJwF4u', 0, '2022-06-08', '2022-06-08'),
(515, 'MOISES', 'PEÑA', 1001938715, 2, 12, 24, 18, NULL, '', 'Mpeña', '$2a$10$zrZHNaDcLrdaQK2mL2nk0uhB25vZP/bBVrtDCAb1/go6qlTDwFDFq', 0, '2022-06-09', '2022-06-09'),
(516, 'Ruben Dario ', 'Narvaez', 159753, 1, 0, 28, 22, NULL, '', '', '$2a$10$xQaZ5sTFmtKwY1LyooLINeybky4CtAa0uygX.o9yS14C.CdogDvUC', 0, '2022-06-14', '2022-06-14');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cargos`
--
ALTER TABLE `cargos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `configuracion_id` (`configuracion_id`);

--
-- Indexes for table `colegios`
--
ALTER TABLE `colegios`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `configuracion`
--
ALTER TABLE `configuracion`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contactos`
--
ALTER TABLE `contactos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pqrs`
--
ALTER TABLE `pqrs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `satisfacions`
--
ALTER TABLE `satisfacions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `squemas`
--
ALTER TABLE `squemas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `colegio_id` (`colegio_id`);

--
-- Indexes for table `tb_condiciones`
--
ALTER TABLE `tb_condiciones`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_proceso_noconformes`
--
ALTER TABLE `tb_proceso_noconformes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `TbCondiciones_id` (`TbCondiciones_id`),
  ADD KEY `usuarioscargo_id` (`usuarioscargo_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`),
  ADD KEY `colegio_id` (`colegio_id`),
  ADD KEY `squema_id` (`squema_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cargos`
--
ALTER TABLE `cargos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=138;

--
-- AUTO_INCREMENT for table `colegios`
--
ALTER TABLE `colegios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `configuracion`
--
ALTER TABLE `configuracion`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `contactos`
--
ALTER TABLE `contactos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `pqrs`
--
ALTER TABLE `pqrs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=269;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `satisfacions`
--
ALTER TABLE `satisfacions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT for table `squemas`
--
ALTER TABLE `squemas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `tb_condiciones`
--
ALTER TABLE `tb_condiciones`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=89;

--
-- AUTO_INCREMENT for table `tb_proceso_noconformes`
--
ALTER TABLE `tb_proceso_noconformes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=86;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=517;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
