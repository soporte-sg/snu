-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jun 16, 2022 at 10:16 AM
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
-- Database: `documentalsg_colombo`
--

-- --------------------------------------------------------

--
-- Table structure for table `accions`
--

CREATE TABLE `accions` (
  `id` int(11) NOT NULL,
  `dato_id` int(11) NOT NULL,
  `analisis` varchar(1000) COLLATE utf8_unicode_ci NOT NULL,
  `accion` varchar(1000) COLLATE utf8_unicode_ci NOT NULL,
  `f_ejecucion` date NOT NULL,
  `cargo_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `acpms`
--

CREATE TABLE `acpms` (
  `id` int(11) NOT NULL,
  `tipo_accion` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `fuente` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `proceso_id` int(11) NOT NULL,
  `f_reporte` date NOT NULL,
  `hallazgo` varchar(2000) COLLATE utf8_unicode_ci NOT NULL,
  `requisito_norma` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `similares` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `consecuencia` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `afectacion` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `riesgo_oportunidad` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `indicador_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `actividades`
--

CREATE TABLE `actividades` (
  `id` int(11) NOT NULL,
  `causa_id` int(11) DEFAULT NULL,
  `correccion_id` int(11) DEFAULT NULL,
  `descripcion` varchar(2000) COLLATE utf8_unicode_ci NOT NULL,
  `responsable` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `fecha_propuesta` date NOT NULL,
  `created` date NOT NULL,
  `modified` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cargos`
--

CREATE TABLE `cargos` (
  `id` int(10) NOT NULL,
  `cargo` tinytext COLLATE utf8_spanish_ci NOT NULL,
  `proceso_id` varchar(50) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci COMMENT='cargos de empleados';

--
-- Dumping data for table `cargos`
--

INSERT INTO `cargos` (`id`, `cargo`, `proceso_id`) VALUES
(1, 'Gerente General', '6'),
(2, 'Coordinador de Calidad', '7'),
(3, 'Directora Comercial', '8'),
(4, 'Directora Academica', '13'),
(5, 'Director Administrativo', '11'),
(6, 'Gestión de la comunidad', '12'),
(7, 'Coordinador Académico', '13');

-- --------------------------------------------------------

--
-- Table structure for table `categoriaeventos`
--

CREATE TABLE `categoriaeventos` (
  `id` int(11) NOT NULL,
  `nombreevento` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `sigla` varchar(5) COLLATE utf8_unicode_ci NOT NULL,
  `correoresponsable` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `categoriaeventos`
--

INSERT INTO `categoriaeventos` (`id`, `nombreevento`, `sigla`, `correoresponsable`, `created`) VALUES
(1, 'Actos Inseguros', 'AI', 'INFO@INFO.COM', '0000-00-00'),
(2, 'Condición Insegura', 'CI', '', '0000-00-00'),
(3, 'Salida No Conforme', 'SNC', 'INFO@INFO.COM', '2021-04-07'),
(4, 'Evento Adverso', 'EA', 'INFO@INFO.COM', '2021-04-07'),
(5, 'Incidente', 'INC', 'INFO@INFO.COM', '2021-04-07'),
(6, 'Accidente', 'ACC', 'INFO@INFO.COM', '2021-04-07');

-- --------------------------------------------------------

--
-- Table structure for table `causas`
--

CREATE TABLE `causas` (
  `id` int(11) NOT NULL,
  `descripcion` varchar(2000) COLLATE utf8_unicode_ci NOT NULL,
  `acpm_id` int(11) NOT NULL,
  `fecha_registro` date NOT NULL,
  `created` date NOT NULL,
  `modified` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `correccions`
--

CREATE TABLE `correccions` (
  `id` int(11) NOT NULL,
  `acpm_id` int(11) NOT NULL,
  `descripcion` varchar(2000) COLLATE utf8_unicode_ci NOT NULL,
  `created` date NOT NULL,
  `modified` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `datos`
--

CREATE TABLE `datos` (
  `id` int(11) NOT NULL,
  `indicador_id` int(11) NOT NULL,
  `meta_id` int(11) NOT NULL,
  `fecha_aplicacion` date NOT NULL,
  `expresion` varchar(11) COLLATE utf8_unicode_ci NOT NULL,
  `resultado` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `documentos`
--

CREATE TABLE `documentos` (
  `id` int(11) NOT NULL,
  `CodDocumento` varchar(14) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `Proceso` char(10) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `NomDocumento` varchar(200) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `Version` int(4) NOT NULL,
  `Recuperacion` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `proteccion` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `Almacenamiento` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `preservacion` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `Emision` date NOT NULL,
  `Actualizacion` date NOT NULL,
  `filename` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `dir` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `documentos`
--

INSERT INTO `documentos` (`id`, `CodDocumento`, `Proceso`, `NomDocumento`, `Version`, `Recuperacion`, `proteccion`, `Almacenamiento`, `preservacion`, `Emision`, `Actualizacion`, `filename`, `dir`) VALUES
(1, 'PD-DC-005', 'PD', 'MAPA DE PROCESOS', 1, '', 'Gerente General', 'Gerente General', 'Carpeta de proceso', '2022-05-04', '0000-00-00', 'PD-DC-005 MAPA DE PROCESOS.pdf', ''),
(2, 'PD-DC-004', 'PD', 'POLITICA DE CALIDAD', 1, '', 'Gerente General', 'Gerente General', 'Carpeta de proceso', '2022-05-04', '0000-00-00', 'PD-DC-004.pdf', ''),
(3, 'PD-DC-001', 'PD', 'CARACTERIZACION DE DIRECCIÓN', 1, '', 'Gerente General', 'Gerente General', 'Carpeta de proceso', '2022-05-04', '0000-00-00', '', ''),
(4, 'PD-DC-002', 'PD', 'MISION', 1, '', 'Gerente General', 'Gerente General', 'Carpeta de proceso', '2022-05-04', '0000-00-00', 'PD-DC-002 MISION.pdf', ''),
(5, 'PD-DC-003', 'PD', 'VISION', 1, '', 'Gerente General', 'Gerente General', 'Carpeta de proceso', '2022-05-04', '0000-00-00', 'PD-DC-003.pdf', ''),
(6, 'PD-DC-006', 'PD', 'ORGANIGRAMA', 1, '', 'Gerente General', 'Gerente General', 'Carpeta de proceso', '2022-05-04', '0000-00-00', 'PD-DC-006-ORGANIGRAMA.pdf', ''),
(7, 'PI-DC-006', 'PI', 'CONTROL DE INFORMACIÓN DOCUMENTADA', 1, '', 'Coordinador de Calidad', 'Coordinador de Calidad', 'Carpeta de proceso', '2022-05-04', '0000-00-00', '', ''),
(8, 'PI-DC-002', 'PI', 'MANUAL DE SISTEMAS INTEGRADOS', 1, '', 'Coordinador de Calidad', 'Coordinador de Calidad', 'Carpeta de proceso', '2022-05-04', '0000-00-00', 'PI-DC-002.pdf', ''),
(9, 'PI-DC-003', 'PI', 'ACCIONES CORRECTIVAS', 1, '', 'Coordinador de Calidad', 'Coordinador de Calidad', 'Carpeta de proceso', '2022-05-04', '0000-00-00', 'PI-DC-003.pdf', ''),
(10, 'PI-DC-004', 'PI', 'ACCIONES PREVENTIVAS', 1, '', 'Coordinador de Calidad', 'Coordinador de Calidad', 'Carpeta de proceso', '2022-05-04', '0000-00-00', 'PI-DC-004.pdf', ''),
(11, 'PI-DC-005', 'PI', 'AUDITORIAS INTERNAS DE CALIDAD', 1, '', 'Coordinador de Calidad', 'Coordinador de Calidad', 'Carpeta de proceso', '2022-05-04', '0000-00-00', 'PI-DC-005 AUDITORIAS INTERNAS DE CALIDAD.pdf', ''),
(12, 'PI-DC-007', 'PI', 'CONTROL DEL SEVICIO NO CONFORME', 1, '', 'Coordinador de Calidad', 'Coordinador de Calidad', 'Carpeta de proceso', '2022-05-04', '0000-00-00', '', ''),
(13, 'PI-DC-008', 'PI', 'COPIA DE SEGURIDAD O BACKUP ', 1, '', 'Coordinador de Calidad', 'Coordinador de Calidad', 'Carpeta de proceso', '2022-05-04', '0000-00-00', '', ''),
(14, 'PI-DC-009', 'PI', 'PQRSF', 1, '', 'Coordinador de Calidad', 'Coordinador de Calidad', 'Carpeta de proceso', '2022-05-04', '0000-00-00', '', ''),
(15, 'PA-DC-002', 'PA', 'SELECCION Y EVALUACIÓN DE PROVEEDORES', 1, '', 'Director Administrativo', 'Director Administrativo', 'Carpeta de proceso', '2022-05-05', '0000-00-00', 'PA-DC-002 SELECCION Y EVALUACION DE PROVEEDORES.pdf', ''),
(16, 'PA-DC-003', 'PA', 'COMPRAS', 1, '', 'Director Administrativo', 'Director Administrativo', 'Carpeta de proceso', '2022-05-05', '0000-00-00', 'PA-DC-003- COMPRAS.pdf', ''),
(17, 'PA-DC-004', 'PA', 'MANTENIMIENTO PREVENTIVO Y CORRECTIVO', 1, '', 'Director Administrativo', 'Director Administrativo', 'Carpeta de proceso', '2022-05-05', '0000-00-00', 'PA-DC-004.pdf', ''),
(18, 'PA-DC-005', 'PA', ' PROCEDIMIENTO DE SELECCIÓN, CONTRATACIÓN, INDUCCIÓN, Y ENTRENAMIENTO', 1, '', 'Director Administrativo', 'Director Administrativo', 'Carpeta de proceso', '2022-05-05', '0000-00-00', 'PA-DC-005.pdf', ''),
(19, 'PA-DC-001', 'PA', 'CARACTERIZACION ADMINISTRATIVO', 1, '', 'Director Administrativo', 'Director Administrativo', 'Carpeta de proceso', '2022-05-05', '0000-00-00', 'PA-DC-001.pdf', ''),
(20, 'PI-DC-001', 'PI', 'CARACTERIZACION CALIDAD', 1, '', 'Coordinador de Calidad', 'Coordinador de Calidad', 'Carpeta de proceso', '2022-05-04', '0000-00-00', 'PI-DC-001 CARACTERIZACION.pdf', ''),
(21, 'PP-DC-001', 'PP', 'CARACTERIZACION PEDAGOGICO', 1, '', 'Directora Académica', 'Directora Académica', 'Carpeta de proceso', '2022-06-01', '0000-00-00', 'PP-DC-001 CARACTERIZACION.pdf', ''),
(22, 'PC-DC-001', 'PC', 'CARACTERIZACION DE COMERCIAL', 1, '', 'Director de estrategia', 'Director de estrategia', 'Carpeta de proceso', '2022-06-06', '0000-00-00', 'PC-DC-001.pdf', '');

-- --------------------------------------------------------

--
-- Table structure for table `files`
--

CREATE TABLE `files` (
  `id` int(11) NOT NULL,
  `file_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `proceso` varchar(5) COLLATE utf8_unicode_ci DEFAULT NULL,
  `username` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `uploaded` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `formatos`
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
  `TiempoRetencion` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `DispFinal` varchar(20) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `Responsable` varchar(40) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `formatos`
--

INSERT INTO `formatos` (`id`, `CodFormato`, `Proceso`, `NomFormato`, `RutaFormato`, `Version`, `Emision`, `Actualizacion`, `Almacenamiento`, `Proteccion`, `TipoRecuperacion`, `Recuperacion`, `TiempoRetencion`, `DispFinal`, `Responsable`) VALUES
(1, 'PD-FR-001', 'PD', 'ANALISIS INTERNO', 'https://docs.google.com/spreadsheets/d/1rbQVy43xFsV3tXvPT1CqnntWIxGEs7yE/edit?usp=sharing&ouid=104953489263248617889&rtpof=true&sd=true', 1, '2022-05-04', '2022-05-04', 'DRIVE/DIRECCION', 'Gerente General', 'Cronologico', 'https://drive.google.com/drive/folders/1PxD_g4HltdY9bW9h__Y_oPenG3sXvrWF?usp=sharing', '3', 'Digitalizar', 'Gerente General'),
(4, 'PD-FR-002', 'PD', 'ANALISIS EXTERNO', 'https://docs.google.com/spreadsheets/d/1xy2En97IFrfgyvTm9BXWtPWH6dzlHwll/edit?usp=sharing&ouid=104953489263248617889&rtpof=true&sd=true', 1, '2022-05-04', '2022-05-04', 'DRIVE/DIRECCION', 'Gerente General', 'Cronologico', 'https://drive.google.com/drive/folders/1khPZ91PUMXVQq-24GYVU-r76YbKcnJVr?usp=sharing', '3', 'Digitalizar', 'Gerente General'),
(5, 'PD-FR-003', 'PD', 'PARTES INTERESADAS', 'https://docs.google.com/spreadsheets/d/1rUPSn_0mWdciu2M9IeNaOzkvCRanOkba/edit?usp=sharing&ouid=104953489263248617889&rtpof=true&sd=true', 1, '2022-05-04', '2022-05-04', 'DRIVE/DIRECCION', 'Gerente General', 'Cronologico', 'https://drive.google.com/drive/folders/1J4nOVmuButwiDbGWDCTMymGV3GyZahwi?usp=sharing', '3', 'Digitalizar', 'Gerente General'),
(6, 'PD-FR-004', 'PD', 'PLAN ESTRATEGICO', 'https://docs.google.com/spreadsheets/d/1sRIEttB-zc7ICnMyevm7oVPK0LgMkGTj/edit?usp=sharing&ouid=104953489263248617889&rtpof=true&sd=true', 1, '2022-05-04', '2022-05-04', 'DRIVE/DIRECCION', 'Gerente General', 'Cronologico', 'https://drive.google.com/drive/folders/1eL6YA2z2JlKTIwjKscYgrNJQ28s6Ae8e?usp=sharing', '3', 'Digitalizar', 'Gerente General'),
(7, 'PD-FR-005', 'PD', 'AUTOEVALUACION INSTITUCIONAL', 'https://docs.google.com/spreadsheets/d/1GKqQpe_jOAlFfxTmdFJDfDUJXDRUltFF/edit?usp=sharing&ouid=104953489263248617889&rtpof=true&sd=true', 1, '2022-05-04', '2022-05-04', 'DRIVE/DIRECCION', 'Gerente General', 'Cronologico', 'https://drive.google.com/drive/folders/1l6NZQUKVYlxj1OzyJENTKF1T5eTmGHrV?usp=sharing', '3', 'Digitalizar', 'Gerente General'),
(8, 'PD-FR-006', 'PD', 'REVISION POR LA DIRECCION', 'https://docs.google.com/spreadsheets/d/169ea004XSDOu3Pi8bf1eqoEKeqse5cx9/edit?usp=sharing&ouid=104953489263248617889&rtpof=true&sd=true', 1, '2022-05-04', '2022-05-04', 'DRIVE/DIRECCION', 'Gerente General', 'Cronologico', 'https://drive.google.com/drive/folders/1_hFhBn-Y76b3cmdkriIsHEp_fDHAoPgk?usp=sharing', '3', 'Digitalizar', 'Gerente General'),
(9, 'PD-FR-007', 'PD', 'MATRIZ DE COMUNICACION', 'https://docs.google.com/spreadsheets/d/1deJyr_Qw9NurVHzwJcbSJVeWABfFONLf/edit?usp=sharing&ouid=104953489263248617889&rtpof=true&sd=true', 1, '2022-05-04', '2022-05-04', 'DRIVE/DIRECCION', 'Gerente General', 'Cronologico', 'https://drive.google.com/drive/folders/1a4-xmb9_bWT9hOxSefQ-KFrV5IMWbMtZ?usp=sharing', '3', 'Digitalizar', 'Gerente General'),
(10, 'PD-FR-008', 'PD', 'PRESUPUESTO INSTITUCIONAL', 'https://docs.google.com/spreadsheets/d/1GjnMMsLqgWX62Za23BC8M0L-GgmfUtnd/edit?usp=sharing&ouid=104953489263248617889&rtpof=true&sd=true', 1, '2022-05-04', '2022-05-04', 'DRIVE/DIRECCION', 'Gerente General', 'Cronologico', 'https://drive.google.com/drive/folders/1kDh-2uePugkhGrj1Vl5j6Idsjh8_0GK7?usp=sharing', '3', 'Digitalizar', 'Gerente General'),
(11, 'PD-FR-009', 'PD', 'MATRIZ DE SEGUIMIENTO A INDICADORES', 'https://docs.google.com/spreadsheets/d/1AEC9kh-JnE6Fw4NsAi_dBf1h9jAL8eAu/edit?usp=sharing&ouid=104953489263248617889&rtpof=true&sd=true', 1, '2022-05-04', '2022-05-04', 'DRIVE/DIRECCION', 'Gerente General', 'Cronologico', 'https://drive.google.com/drive/folders/1pCvoVFjk23Mpwh9MrFWF0DxMYyizNCaL?usp=sharing', '3', 'Digitalizar', 'Gerente General'),
(12, 'PD-FR-010', 'PD', 'TIPOS DE CLIENTES', 'https://docs.google.com/spreadsheets/d/1Gqy4aATpUQsTaYdATsdDkaoXjj0U6ZAN/edit?usp=sharing&ouid=104953489263248617889&rtpof=true&sd=true', 1, '2022-05-04', '2022-05-04', 'DRIVE/DIRECCION', 'Gerente General', 'Cronologico', 'https://drive.google.com/drive/folders/1jgYRXIPRyB9MPFx_6UWHEH9T9ZfOTxMl?usp=sharing', '3', 'Digitalizar', 'Gerente General'),
(13, 'PD-FR-011', 'PD', 'CRONOGRAMA DE ACTIVIDADES', 'https://docs.google.com/spreadsheets/d/1w5u_29H3For1vA6oByTE-0kYRK_P2A80/edit?usp=sharing&ouid=104953489263248617889&rtpof=true&sd=true', 1, '2022-05-04', '2022-05-04', 'DRIVE/DIRECCION', 'Gerente General', 'Cronologico', 'https://drive.google.com/drive/folders/1IhI1WEhuL-y-r9BIUKvZ0FHAuYzINDbC?usp=sharing', '3', 'Digitalizar', 'Gerente General'),
(14, 'PI-FR-001', 'PI', 'ACCIONES CORRECTIVAS,PREVENTIVAS Y DE MEJORA', 'https://docs.google.com/spreadsheets/d/1HTw2kuygp6bUrQXp9gxnWDDiIRh4ca3M/edit?usp=sharing&ouid=104953489263248617889&rtpof=true&sd=true', 1, '2022-05-04', '2022-05-04', 'DRIVE/CALIDAD', 'Coordinador de Calidad', 'Cronologico', 'https://drive.google.com/drive/folders/1rcsySZQkKTj5TB5gbPCnLpkMHJCkEtrA?usp=sharing', '3', 'Digitalizar', 'Coordinador De Calidad'),
(15, 'PI-FR-002', 'PI', 'RIESGO DE PROCESO', 'https://docs.google.com/spreadsheets/d/1RyeNIDYnRAlTjeOkdA3mWNYbsUV-n8xD/edit?usp=sharing&ouid=104953489263248617889&rtpof=true&sd=true', 1, '2022-05-04', '2022-05-04', 'DRIVE/CALIDAD', 'Coordinador de Calidad', 'Cronologico', 'https://drive.google.com/drive/folders/1dKL7lQneSbLAFEAnyTdPJIXSU51GrfhF?usp=sharing', '3', 'Digitalizar', 'Coordinador De Calidad'),
(16, 'PI-FR-003', 'PI', 'PLANIFICACION DE CAMBIOS', 'https://docs.google.com/spreadsheets/d/1p5TQx_Lcy-pfr7C1j32SREN7FgbAF28C/edit?usp=sharing&ouid=104953489263248617889&rtpof=true&sd=true', 1, '2022-05-04', '2022-05-04', 'DRIVE/CALIDAD', 'Coordinador de Calidad', 'Cronologico', 'https://drive.google.com/drive/folders/14gz6QiNBR0GSf9oIHe2vmu8oD-CRkTNo?usp=sharing', '3', 'Digitalizar', 'Coordinador De Calidad'),
(17, 'PI-FR-004', 'PI', 'PROGRAMA DE AUDITORIA', 'https://docs.google.com/spreadsheets/d/1K6zauBxo5rFU4D49u6SvweFnyFCR5fkv/edit?usp=sharing&ouid=104953489263248617889&rtpof=true&sd=true', 1, '2022-05-04', '2022-05-04', 'DRIVE/CALIDAD', 'Coordinador de Calidad', 'Cronologico', 'https://drive.google.com/drive/folders/11VHuzNHpIiYtfY6KbETBj2FOXjFVOkub?usp=sharing', '3', 'Digitalizar', 'Coordinador De Calidad'),
(18, 'PI-FR-005', 'PI', 'PLAN DE AUDITORIA', 'https://docs.google.com/document/d/1AO3qYZj1vjzvBrwFLv6KiaupRsu8mrdj/edit?usp=sharing&ouid=104953489263248617889&rtpof=true&sd=true', 1, '2022-05-04', '2022-05-04', 'DRIVE/CALIDAD', 'Coordinador de Calidad', 'Cronologico', 'https://drive.google.com/drive/folders/1APjz6-rRW6jnOmEERdKKU077HyN4OuUs?usp=sharing', '3', 'Digitalizar', 'Coordinador De Calidad'),
(19, 'PI-FR-006', 'PI', 'LISTA DE CHEQUEO', 'https://docs.google.com/spreadsheets/d/1_jyG-2GVUkibJdKuCMdIXEwcxjDEDsVD/edit?usp=sharing&ouid=104953489263248617889&rtpof=true&sd=true', 1, '2022-05-04', '2022-05-04', 'DRIVE/CALIDAD', 'Coordinador de Calidad', 'Cronologico', 'https://drive.google.com/drive/folders/1JP3kPUWEcQ6YWyRWO0N5YzQ43hKF8F1X?usp=sharing', '3', 'Digitalizar', 'Coordinador De Calidad'),
(20, 'PI-FR-007', 'PI', 'INFORME DE AUDITORIA', 'https://docs.google.com/spreadsheets/d/1SfkwWuBkaWPtN6LIi1gs9-ihzLGfLQqW/edit?usp=sharing&ouid=104953489263248617889&rtpof=true&sd=true', 1, '2022-05-04', '2022-05-04', 'DRIVE/CALIDAD', 'Coordinador de Calidad', 'Cronologico', 'https://drive.google.com/drive/folders/1VJoP9P3tVEV6kZpPkjEDzscJNsnCPVcC?usp=sharing', '3', 'Digitalizar', 'Coordinador De Calidad'),
(21, 'PI-FR-008', 'PI', 'EVALUACION DE AUDITORIA', 'https://docs.google.com/spreadsheets/d/1-jP-Ume9gSLXgQyM3_oi70dvZpZF09IS/edit?usp=sharing&ouid=104953489263248617889&rtpof=true&sd=true', 1, '2022-05-04', '2022-05-04', 'DRIVE/CALIDAD', 'Coordinador de Calidad', 'Cronologico', 'https://drive.google.com/drive/folders/1NXD1PE0i8q2SMzNjm7-Zjnr087FS5FN7?usp=sharing', '3', 'Digitalizar', 'Coordinador De Calidad'),
(22, 'PI-FR-009', 'PI', 'CONSOLIDADO DE ACCIONES CORRECTIVAS, PREVENTIVA Y DE MEJORA', 'https://docs.google.com/spreadsheets/d/1POwPjQ18PqmLPB9plrzdp_dlm0lhc6gC/edit?usp=sharing&ouid=104953489263248617889&rtpof=true&sd=true', 1, '2022-05-04', '2022-05-04', 'DRIVE/CALIDAD', 'Coordinador de Calidad', 'Cronologico', 'https://drive.google.com/drive/folders/1_Y4nCgu4iIJnC_y9NL7MKScysdNafjud?usp=sharing', '3', 'Digitalizar', 'Coordinador De Calidad'),
(23, 'PI-FR-010', 'PI', 'AUTORIDAD Y RESPONSABILIDAD DEL SERVICIO NO CONFORME', 'https://docs.google.com/spreadsheets/d/1bNZ73FWlcdkCr0EKYoUoGBsjrBNREJtJ/edit?usp=sharing&ouid=104953489263248617889&rtpof=true&sd=true', 1, '2022-05-04', '2022-05-04', 'DRIVE/CALIDAD', 'Coordinador de Calidad', 'Cronologico', 'https://drive.google.com/drive/folders/1LyKGxAxPsK33f0Uyjayi6n5J2JTJnavF?usp=sharing', '3', 'Digitalizar', 'Coordinador De Calidad'),
(24, 'PI-FR-011', 'PI', 'REGISTRO DE  QUEJA Y/O RECLAMOS', 'https://docs.google.com/spreadsheets/d/1XWz7KGzTZY0qPHbfdH2b1skQit4fNtQY/edit?usp=sharing&ouid=104953489263248617889&rtpof=true&sd=true', 1, '2022-05-04', '2022-05-04', 'DRIVE/CALIDAD', 'Coordinador de Calidad', 'Cronologico', 'https://drive.google.com/drive/folders/1o0HjwaJQbP8sFI9Nt7cxTtaDdNg8SHCY?usp=sharing', '3', 'Digitalizar', 'Coordinador De Calidad'),
(25, 'PI-FR-012', 'PI', 'CONSOLIDADO DE QUEJAS Y RECLAMOS', 'https://docs.google.com/spreadsheets/d/1RIzvRACkC0E_EI8T-WHiUKrNx-95yFPb/edit?usp=sharing&ouid=104953489263248617889&rtpof=true&sd=true', 1, '2022-05-04', '2022-05-04', 'DRIVE/CALIDAD', 'Coordinador de Calidad', 'Cronologico', 'https://drive.google.com/drive/folders/1IhZgJ34o-5wLLBf2bDH2wqMHN6OQqfir?usp=sharing', '3', 'Digitalizar', 'Coordinador De Calidad'),
(26, 'PI-FR-013', 'PI', 'DESEMPEÑO DEL INDICADOR', 'https://docs.google.com/spreadsheets/d/1RbiGvSKAw_ArkZqooL6LkQbvKqLEDBWz/edit?usp=sharing&ouid=104953489263248617889&rtpof=true&sd=true', 1, '2022-05-04', '2022-05-04', 'DRIVE/CALIDAD', 'Coordinador de Calidad', 'Cronologico', 'https://drive.google.com/drive/folders/117gUwBFoXA20ZTVW2qHrBqqzIsAXM_9K?usp=sharing', '3', 'Digitalizar', 'Coordinador De Calidad'),
(27, 'PI-FR-014', 'PI', 'PLAN DE TRABAJO ANUAL', 'https://docs.google.com/spreadsheets/d/1h6cEVrEWpUqiEMlAgzPvrKUyeQ9gjopj/edit?usp=sharing&ouid=104953489263248617889&rtpof=true&sd=true', 1, '2022-05-04', '2022-05-04', 'DRIVE/CALIDAD', 'Coordinador de Calidad', 'Cronologico', 'https://drive.google.com/drive/folders/1Ae_3j5XM6b-NEIFrv3SThuQh9tMAFMPp?usp=sharing', '3', 'Digitalizar', 'Coordinador De Calidad'),
(28, 'PA-FR-001', 'PA', ' LISTADO DE PROVEEDORES', 'https://docs.google.com/spreadsheets/d/1F4vD4-8gRvAMV0LOaMgtY7sATawTZL02/edit?usp=sharing&ouid=104953489263248617889&rtpof=true&sd=true', 1, '2022-05-10', '2022-05-10', 'DRIVE/ADMINISTRATIVO', 'Director Administrativo', 'Cronologico', 'https://drive.google.com/drive/folders/1gaggzfgzmrItXlERiYVmrRIzB76K97QJ?usp=sharing', '3', 'Digitalizar', 'Director Administrativo'),
(29, 'PA-FR-002', 'PA', 'SOLICITUD DE INSUMOS', 'https://docs.google.com/spreadsheets/d/1UXyNBOY0pOgIq6Z4YOKbobSQ4QDKXXnW/edit?usp=sharing&ouid=104953489263248617889&rtpof=true&sd=true', 1, '2022-05-10', '2022-05-10', 'DRIVE/ADMINISTRATIVO', 'Director Administrativo', 'Cronologico', 'https://drive.google.com/drive/folders/1NhO-7SzqXyZcZQ0c8DUAn1huuYF8XKUC?usp=sharing', '3', 'Digitalizar', 'Director Administrativo'),
(30, 'PA-FR-003', 'PA', 'ORDEN DE COMPRA', 'https://docs.google.com/spreadsheets/d/1VGOiMwMy3BtQFQWYssjTdoGUYqRzEqew/edit?usp=sharing&ouid=104953489263248617889&rtpof=true&sd=true', 1, '2022-05-10', '2022-05-10', 'DRIVE/ADMINISTRATIVO', 'Director Administrativo', 'Cronologico', 'https://drive.google.com/drive/folders/1fxPMiJBjpM8jgpcKop7NksTPl5YUoD0k?usp=sharing', '3', 'Digitalizar', 'Director Administrativo'),
(31, 'PA-FR-004', 'PA', 'CONSOLIDADO DE COMPRAS', 'https://docs.google.com/spreadsheets/d/1GWNABHSEXZXndVCF9wB7PhvOCoR0K6BH/edit?usp=sharing&ouid=104953489263248617889&rtpof=true&sd=true', 1, '2022-05-10', '2022-05-10', 'DRIVE/ADMINISTRATIVO', 'Director Administrativo', 'Cronologico', 'https://drive.google.com/drive/folders/1GuZOD0LjwYRIKvKIKj7sFQtvmQKCjAOS?usp=sharing', '3', 'Digitalizar', 'Director Administrativo'),
(32, 'PA-FR-005', 'PA', 'EVALUACIÓN INICIAL DE PROVEEDORES', 'https://docs.google.com/spreadsheets/d/1QvBHcFY4lvtOdFJVn9iP1O4vIJ2c2bq6/edit?usp=sharing&ouid=104953489263248617889&rtpof=true&sd=true', 1, '2022-05-10', '2022-05-10', 'DRIVE/ADMINISTRATIVO', 'Director Administrativo', 'Cronologico', 'https://drive.google.com/drive/folders/1qCkNyxpang-MfPMnDwaMCV2c3iYh7L_6?usp=sharing', '3', 'Digitalizar', 'Director Administrativo'),
(33, 'PA-FR-006', 'PA', 'EVALUACIÓN Y REEVALUACIÓN', 'https://docs.google.com/spreadsheets/d/14u57nJi4TrtZY4qi7m-ulBdbvl7e-mpK/edit?usp=sharing&ouid=104953489263248617889&rtpof=true&sd=true', 1, '2022-05-10', '2022-05-10', 'DRIVE/ADMINISTRATIVO', 'Director Administrativo', 'Cronologico', 'https://drive.google.com/drive/folders/1Xx0xAfFSxG_ev98VRsjuoCqT4x853Pag?usp=sharing', '3', 'Digitalizar', 'Director Administrativo'),
(34, 'PA-FR-007', 'PA', 'CRONOGRAMA DE MANTENIMIENTO PREVENTIVO', 'https://docs.google.com/spreadsheets/d/1DDYpbouf5kOy2Mf8jrmsStZBla--w7CN/edit?usp=sharing&ouid=104953489263248617889&rtpof=true&sd=true', 1, '2022-05-10', '2022-05-10', 'DRIVE/ADMINISTRATIVO', 'Director Administrativo', 'Cronologico', 'https://drive.google.com/drive/folders/1muCKdsyEFdym6nbgTrWs5O6ksPBcmYb9?usp=sharing', '3', 'Digitalizar', 'Director Administrativo'),
(35, 'PA-FR-008', 'PA', 'PLANTA DE CARGOS', 'https://docs.google.com/spreadsheets/d/1_cUtEdw7N1oYWfV3UXvcuFbu2I_PqWy6/edit?usp=sharing&ouid=104953489263248617889&rtpof=true&sd=true', 1, '2022-05-12', '2022-05-12', 'DRIVE/BIENESTAR', 'Director Administrativo ', 'Cronologico', 'https://drive.google.com/drive/folders/1YjPfHT0NxRgpKQJaTvR9UPIyNqi6Hw4B?usp=sharing', '3', 'Digitalizar', 'Director Administrativo '),
(36, 'PA-FR-009', 'PA', 'PERFIL DEL PERSONAL', 'https://docs.google.com/spreadsheets/d/1of8hmQ74dL0M87GJMRG752amK3BaaqQ_/edit?usp=sharing&ouid=104953489263248617889&rtpof=true&sd=true', 1, '2022-05-12', '2022-05-12', 'DRIVE/BIENESTAR', 'Director Administrativo ', 'Cronologico', 'https://drive.google.com/drive/folders/1HrCB_nW4Bz-IkzTTfz8qTn9sB3_D5LzA?usp=sharing', '3', 'Digitalizar', 'Director Administrativo '),
(37, 'PA-FR-010', 'PA', 'SOLICITUD DE PERMISO', 'https://docs.google.com/spreadsheets/d/1T05YXKksyxP4TCtfdktS92Gs4Jn2_81U/edit?usp=sharing&ouid=104953489263248617889&rtpof=true&sd=true', 1, '2022-05-12', '2022-05-12', 'DRIVE/BIENESTAR', 'Director Administrativo ', 'Cronologico', 'https://drive.google.com/drive/folders/1c6Y5q8u-xcG29zq5E4AKPu50UUEz_dBD?usp=sharing', '3', 'Digitalizar', 'Director Administrativo '),
(38, 'PA-FR-011', 'PA', 'CONSOLIDADO DE AUSENTIMOS', 'https://docs.google.com/spreadsheets/d/1OM2CAtdb3d82csW12kAEDkF5d5Da6owi/edit?usp=sharing&ouid=104953489263248617889&rtpof=true&sd=true', 1, '2022-05-12', '2022-05-12', 'DRIVE/BIENESTAR', 'Director Administrativo ', 'Cronologico', 'https://drive.google.com/drive/folders/1syGE7WDY0JwAi5Bo0PAI_bWW6fSQgbt5?usp=sharing', '3', 'Digitalizar', 'Director Administrativo '),
(39, 'PA-FR-012', 'PA', 'PLAN DE FORMACION', 'https://docs.google.com/spreadsheets/d/1G9wS8vCyuwfmZKZCotdcz7kR3WAkXP1G/edit?usp=sharing&ouid=104953489263248617889&rtpof=true&sd=true', 1, '2022-05-12', '2022-05-12', 'DRIVE/BIENESTAR', 'Director Administrativo ', 'Cronologico', 'https://drive.google.com/drive/folders/15NYvtG5PkE-E3GKzy-JNc9Hk7TGRjHP2?usp=sharing', '3', 'Digitalizar', 'Director Administrativo '),
(40, 'PA-FR-013', 'PA', 'REGISTRO DE FORMACION', 'https://docs.google.com/document/d/1tkhdp5gHPthhHO23Gw1Z6fpSItuW-kL9/edit?usp=sharing&ouid=104953489263248617889&rtpof=true&sd=true', 1, '2022-05-12', '2022-05-12', 'DRIVE/BIENESTAR', 'Director Administrativo ', 'Cronologico', 'https://drive.google.com/drive/folders/1kFcbTPEVsu5dPmmSv5es7xjDIBMhAYra?usp=sharing', '3', 'Digitalizar', 'Director Administrativo '),
(41, 'PA-FR-014', 'PA', 'EVALUACION DE COMPETENCIA', 'https://docs.google.com/spreadsheets/d/1Np0pW56BJKbDULr52YXARPeNz3dxZB4h/edit?usp=sharing&ouid=104953489263248617889&rtpof=true&sd=true', 1, '2022-05-12', '2022-05-12', 'DRIVE/BIENESTAR', 'Director Administrativo ', 'Cronologico', 'https://drive.google.com/drive/folders/1HbLQR-a7GBH693TAOWfwb8MIF1j21AKi?usp=sharing', '3', 'Digitalizar', 'Director Administrativo '),
(42, 'PA-FR-015', 'PA', 'EVALUACION DE DESEMPEÑO', 'https://docs.google.com/spreadsheets/d/13xcGVbltoQYild-Be-AGE5fLLXCSIN34/edit?usp=sharing&ouid=104953489263248617889&rtpof=true&sd=true', 1, '2022-05-12', '2022-05-12', 'DRIVE/BIENESTAR', 'Director Administrativo ', 'Cronologico', 'https://drive.google.com/drive/folders/1dWWnqROOakilVjCuocJIEhjGeyh2MA_6?usp=sharing', '3', 'Digitalizar', 'Director Administrativo '),
(43, 'PA-FR-016', 'PA', 'EVALUACION DE COMPETENCIA DOCENTES', 'https://docs.google.com/spreadsheets/d/1VS72bObLQWAUEjOplbCDF0nE7r9PfZwp/edit?usp=sharing&ouid=104953489263248617889&rtpof=true&sd=true', 1, '2022-05-12', '2022-05-12', 'DRIVE/BIENESTAR', 'Director Administrativo ', 'Cronologico', 'https://drive.google.com/drive/folders/17ZZpw2VU7Nw_mNMGusXpbUsRU1okxtI3?usp=sharing', '3', 'Digitalizar', 'Director Administrativo '),
(44, 'PA-FR-017', 'PA', 'EVALUACION DE DESEMPEÑO DOCENTE', 'https://docs.google.com/spreadsheets/d/1RSqg8w5e1Ww329tdtFtdiarBTgcj6-QL/edit?usp=sharing&ouid=104953489263248617889&rtpof=true&sd=true', 1, '2022-05-12', '2022-05-12', 'DRIVE/BIENESTAR', 'Director Administrativo ', 'Cronologico', 'https://drive.google.com/drive/folders/1TKcAHsyIvm0St8JWrOX33rK-2Ws86h3G?usp=sharing', '3', 'Digitalizar', 'Director Administrativo '),
(45, 'PA-FR-018', 'PA', 'PERCEPCION  DE SATISFACCION DEL ESTUDIANTE', 'https://docs.google.com/spreadsheets/d/13wDE08cZe_opRmVrLUadFGc6K79mXjN3/edit?usp=sharing&ouid=104953489263248617889&rtpof=true&sd=true', 1, '2022-05-12', '2022-05-12', 'DRIVE/BIENESTAR', 'Director Administrativo ', 'Cronologico', 'https://drive.google.com/drive/folders/15lF_Um05wE10j9g9pVqX93GpHRb2rTEF?usp=sharing', '3', 'Digitalizar', 'Director Administrativo '),
(46, 'PA-FR-019', 'PA', 'OFICIO', 'https://docs.google.com/document/d/1aptsMaFvmn9OjTfuottJQ4IPAksfw7oD/edit?usp=sharing&ouid=104953489263248617889&rtpof=true&sd=true', 1, '2022-05-12', '2022-05-12', 'DRIVE/BIENESTAR', 'Director Administrativo ', 'Cronologico', 'https://drive.google.com/drive/folders/1WCfXhnAONbRzrkhet8R9WMKoysMixcij?usp=sharing', '3', 'Digitalizar', 'Director Administrativo '),
(47, 'PA-FR-020', 'PA', 'CIRCULAR', 'https://drive.google.com/drive/folders/1WCfXhnAONbRzrkhet8R9WMKoysMixcij?usp=sharing', 1, '2022-05-12', '2022-05-12', 'DRIVE/BIENESTAR', 'Director Administrativo ', 'Cronologico', 'https://drive.google.com/drive/folders/1hkDLUkWwKWY9u6vmzQqGTAPPQtiKD07k?usp=sharing', '3', 'Digitalizar', 'Director Administrativo '),
(48, 'PA-FR-022', 'PA', 'MEMORANDO', 'https://docs.google.com/document/d/1OXfWCJ7SpmGkfsku-C_vGtTryudhLTcM/edit?usp=sharing&ouid=104953489263248617889&rtpof=true&sd=true', 1, '2022-05-12', '2022-05-12', 'DRIVE/BIENESTAR', 'Director Administrativo ', 'Cronologico', 'https://drive.google.com/drive/folders/1Ufc444vF9yYNIcU17rNAWhwoTkrvGlfL?usp=sharing', '3', 'Digitalizar', 'Director Administrativo '),
(49, 'PA-FR-023', 'PA', 'SOLICITUD DE PERSONAL', 'https://docs.google.com/spreadsheets/d/1viBGULwgtd2IdNQK3SRNRIZGKkahEtIA/edit?usp=sharing&ouid=104953489263248617889&rtpof=true&sd=true', 1, '2022-05-12', '2022-05-12', 'DRIVE/BIENESTAR', 'Director Administrativo ', 'Cronologico', 'https://drive.google.com/drive/folders/1gG4ooTFoet8ur8qa8SNy3W-1gJ8cn2vZ?usp=sharing', '3', 'Digitalizar', 'Director Administrativo '),
(50, 'PA-FR-021', 'PA', 'ACTA', 'https://docs.google.com/document/d/1-xy0n1sLKeQV4BfSgJbzHu6rKeonCIp8/edit?usp=sharing&ouid=104953489263248617889&rtpof=true&sd=true', 1, '2022-05-12', '2022-05-12', 'DRIVE/BIENESTAR', 'Director Administrativo ', 'Cronologico', 'https://drive.google.com/drive/folders/1PuxCatTtkNpiOPNKmD0khUrcTanZ_GbH?usp=sharing', '3', 'Digitalizar', 'Director Administrativo '),
(51, 'PI-FR-015', 'PI', 'MATRIZ LEGAL', 'https://docs.google.com/spreadsheets/d/1FHSo3iLW8a9HEr9X0ck8mldPS5-6doVs/edit?usp=sharing&ouid=104953489263248617889&rtpof=true&sd=true', 1, '2022-06-14', '2022-06-14', 'DRIVE/CALIDAD', 'Coordinador de Calidad', 'Cronologico', 'https://drive.google.com/drive/folders/1R3UORByTP1WdzzwykY8JIJUSU7JupE5W?usp=sharing', '3', 'Digitalizar', 'Coordinador De Calidad');

-- --------------------------------------------------------

--
-- Table structure for table `indicadors`
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
  `fecha_control` date NOT NULL COMMENT 'fecha para  validar el ingreso de los datos',
  `tipo` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT 'general, sst'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `metas`
--

CREATE TABLE `metas` (
  `id` int(11) NOT NULL,
  `indicador_id` int(11) NOT NULL,
  `comparativo` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `valor` int(11) NOT NULL,
  `fecha_uso` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `modelos`
--

CREATE TABLE `modelos` (
  `id` int(11) NOT NULL,
  `formula` varchar(11) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `procesos`
--

CREATE TABLE `procesos` (
  `id` int(11) NOT NULL,
  `Iniciales` char(6) COLLATE utf8_spanish_ci NOT NULL,
  `NombreProceso` varchar(80) COLLATE utf8_spanish_ci NOT NULL,
  `tipo` int(11) DEFAULT NULL,
  `cod_int` varchar(20) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Dumping data for table `procesos`
--

INSERT INTO `procesos` (`id`, `Iniciales`, `NombreProceso`, `tipo`, `cod_int`) VALUES
(6, 'PD', 'PROCESO DIRECCIONAMIENTO', 1, 'P0'),
(7, 'PI', 'PROCESO SISTEMA DE GESTION', 1, 'P0'),
(8, 'PC', 'PROCESO COMERCIAL', 1, 'P0'),
(11, 'PA', 'PROCESO ADMINISTRATIVO', 1, 'P0'),
(12, 'PB', 'PROCESO BIENESTAR', 1, 'P0'),
(13, 'PP', 'PROCESO PEDAGOGICO', 1, 'P0');

-- --------------------------------------------------------

--
-- Table structure for table `respuestas`
--

CREATE TABLE `respuestas` (
  `id` int(11) NOT NULL,
  `pqrs_id` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `proceso_id` varchar(6) COLLATE utf8_unicode_ci NOT NULL,
  `accion` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `respuesta` varchar(800) COLLATE utf8_unicode_ci NOT NULL,
  `clasificacion_id` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `estado` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `soporte` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `respuestas`
--

INSERT INTO `respuestas` (`id`, `pqrs_id`, `proceso_id`, `accion`, `respuesta`, `clasificacion_id`, `estado`, `soporte`) VALUES
(1, '194', 'GM', 'no', 'Se asigna usuario y contraseña para que el usuario pueda ingresar:\r\nlas credenciales son las siguientes  usuario= calvarez contraseña = 16376354 , se  recomienda al ingresar los datos validar que no existan espacios en blanco ni  al principio o al final de los datos ', 'peticion', 'revision', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `satisfacions`
--

CREATE TABLE `satisfacions` (
  `id` int(11) NOT NULL,
  `respuesta_id` int(11) NOT NULL,
  `estado_cliente` int(11) NOT NULL,
  `sugerencia` int(11) NOT NULL,
  `created` int(11) NOT NULL,
  `modified` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `seguimientos`
--

CREATE TABLE `seguimientos` (
  `id` int(11) NOT NULL,
  `descripcion` int(11) NOT NULL,
  `actividad_id` int(11) NOT NULL,
  `soporte` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `fecha_seguimiento` date NOT NULL,
  `responsable` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `cumplimiento` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sgcexternos`
--

CREATE TABLE `sgcexternos` (
  `id` int(11) NOT NULL,
  `codigo` varchar(11) COLLATE utf8_spanish_ci NOT NULL,
  `proceso` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `nombre` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `expedicion` date NOT NULL,
  `descripcion` varchar(500) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sgc_software`
--

CREATE TABLE `sgc_software` (
  `id` int(11) NOT NULL,
  `fechasolicitud` date NOT NULL,
  `modulo` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `solicitante` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `descripcion` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `impacto` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `version` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `fechaaplicacion` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `solicitudes`
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
-- Dumping data for table `solicitudes`
--

INSERT INTO `solicitudes` (`id`, `NombreSolicitante`, `FechaSolicitud`, `Proceso`, `TipoSolicitud`, `Codigo`, `VersionCambiar`, `TipoDocumento`, `Descripcion`, `EjecucionCambio`, `Aprobado`, `Observaciones`, `filename`, `dir`) VALUES
(1, 'DIANA MARIA', '2022-05-04', 'PD', 'creacion', 'PD-DC-004', 0, 'documento', 'Se requiere la creación del documento POLITICA DE CALIDAD para el debido proceso documental ', '2022-05-04', 'si', 'Se requiere la creación del documento POLITICA DE CALIDAD para el debido proceso documental ', 'PD_DC_010_POLITICA_DE_CALIDAD.docx', 'img/uploads/solicitude/filename'),
(2, 'Ninfer', '2022-05-04', 'PD', 'creacion', 'PD-DC-001', 0, 'documento', 'Se requiere la creación del documento CARACTERIZACION DE DIRECCION para el debido proceso documental', '2022-05-04', 'si', 'Se requiere la creación del documento CARACTERIZACION DE DIRECCION para el debido proceso documental', 'PD_DC_001_CARACTERIZACION_DIRECCION.xlsx', 'img/uploads/solicitude/filename'),
(3, 'DIANA MARIA', '2022-05-04', 'PD', 'creacion', 'PD-DC-005', 0, 'documento', 'Se requiere la creación del MAPA DE PROCESOS para el debido proceso documental', '2022-05-04', 'si', 'Se requiere la creación del MAPA DE PROCESOS para el debido proceso documental', '', ''),
(4, 'DIANA MARIA', '2022-05-04', 'PD', 'creacion', 'PD-FR-001', 0, 'formato', 'Se requiere la creación del formato ANALISIS INTERNO para el correcto desarrollo documental', '2022-05-04', 'si', 'Se requiere la creación del formato ANALISIS INTERNO para el correcto desarrollo documental', 'PD_FR_001_ANALISIS_INTERNO.xlsx', 'img/uploads/solicitude/filename'),
(5, 'DIANA MARIA', '2022-05-04', 'PD', 'creacion', 'PD-FR-002', 0, 'formato', 'Se requiere la creación del formato ANALISIS EXTERNO para el correcto proceso documental', '2022-05-04', 'si', 'Se requiere la creación del formato ANALISIS EXTERNO para el correcto proceso documental', 'PD_FR_002_ANALISIS_EXTERNO.xlsx', 'img/uploads/solicitude/filename'),
(6, 'DIANA MARIA', '2022-05-04', 'PD', 'creacion', 'PD-FR-003', 0, 'formato', 'Se requiere la creación del formato PARTES INTERESADAS para el correcto proceso documental', '2022-05-04', 'si', 'Se requiere la creación del formato PARTES INTERESADAS para el correcto proceso documental', 'PD_FR_003_PARTES_INTERESADAS.xlsx', 'img/uploads/solicitude/filename'),
(7, 'DIANA MARIA', '2022-05-04', 'PD', 'creacion', 'PD-FR-004', 0, 'formato', 'Se requiere la creación del formato PLAN ESTRATEGICO  para el correcto proceso documental', '2022-05-04', 'si', 'Se requiere la creación del formato PLAN ESTRATEGICO  para el correcto proceso documental', 'PD_FR_004_PLAN_ESTRATEGICO.xlsx', 'img/uploads/solicitude/filename'),
(8, 'DIANA MARIA', '2022-05-04', 'PD', 'creacion', 'PD-FR-005', 0, 'formato', 'Se requiere la creación del formato AUTOEVALUACION INSTITUCIONAL para el correcto proceso documental', '2022-05-04', 'si', 'Se requiere la creación del formato AUTOEVALUACION INSTITUCIONAL para el correcto proceso documental', 'PD_FR_005_AUTO_EVALUACION_INSTITUCIONAL.xlsx', 'img/uploads/solicitude/filename'),
(9, 'DIANA MARIA', '2022-05-04', 'PD', 'creacion', 'PD-FR-006', 0, 'formato', 'Se requiere la creación del formato REVISION POR LA DIRECCION para el correcto proceso documental', '2022-05-04', 'si', 'Se requiere la creación del formato REVISION POR LA DIRECCION para el correcto proceso documental', 'PD_FR_006_REVISION_POR_LA_DIRECCION.xlsx', 'img/uploads/solicitude/filename'),
(10, 'DIANA MARIA', '2022-05-04', 'PD', 'creacion', 'PD-FR-007', 0, 'formato', 'Se requiere la creación del formato MATRIZ DE COMUNICACION para el correcto proceso documental', '2022-05-04', 'si', 'Se requiere la creación del formato MATRIZ DE COMUNICACION para el correcto proceso documental', 'PD_FR_007_MATRIZ_DE_COMUNICACION_INFA.xlsx', 'img/uploads/solicitude/filename'),
(11, 'DIANA MARIA', '2022-05-04', 'PD', 'creacion', 'PD-FR-00', 0, 'formato', 'Se requiere la creación del formato PRESUPUESTO INSTITUCIONAL para el correcto proceso documental', '2022-05-04', 'si', 'Se requiere la creación del formato PRESUPUESTO INSTITUCIONAL para el correcto proceso documental', 'PD_FR_008_PRESUPUESTO_INSTITUCIONAL.xlsx', 'img/uploads/solicitude/filename'),
(12, 'DIANA MARIA', '2022-05-04', 'PD', 'creacion', 'PD-FR-009', 0, 'formato', 'Se requiere la creación del formato MATRIZ DE SEGUIMIENTO A INDICADORES para el correcto proceso documental', '2022-05-04', 'si', 'Se requiere la creación del formato MATRIZ DE SEGUIMIENTO A INDICADORES para el correcto proceso documental', 'PD_FR_009_MATRIZ_DE_SEGUIMIENTO_A_INDICADORES.xlsx', 'img/uploads/solicitude/filename'),
(13, 'DIANA MARIA', '2022-05-04', 'PD', 'creacion', 'PD-FR-010', 0, 'formato', 'Se requiere la creación del formato TIPOS DE CLIENTES para el correcto proceso documental', '2022-05-04', 'si', 'Se requiere la creación del formato TIPOS DE CLIENTES para el correcto proceso documental', 'PD_FR_010_TIPOS_DE_CLIENTES.xlsx', 'img/uploads/solicitude/filename'),
(14, 'DIANA MARIA', '2022-05-04', 'PD', 'creacion', 'PD-FR-011', 0, 'formato', 'Se requiere la creación del formato CRONOGRAMA DE ACTIVIDADES para el correcto proceso documental', '2022-05-04', 'si', 'Se requiere la creación del formato CRONOGRAMA DE ACTIVIDADES para el correcto proceso documental', 'PD_FR_011_CRONOGRAMA_DE_ACTIVIDADES.xlsx', 'img/uploads/solicitude/filename'),
(15, 'DIANA MARIA', '2022-05-04', 'PD', 'creacion', 'PD-DC-002', 0, 'documento', 'Se requiere la creación del documento MISION para el correcto proceso documental', '2022-05-04', 'si', 'Se requiere la creación del documento MISION para el correcto proceso documental', 'PD_DC_002_MISION.pdf', 'img/uploads/solicitude/filename'),
(16, 'DIANA MARIA', '2022-05-04', 'PD', 'creacion', 'PD-DC-003', 0, 'documento', 'Se requiere la creación del documento VISION para el correcto proceso documental\r\n', '2022-05-04', 'si', 'Se requiere la creación del documento VISION para el correcto proceso documental', 'PD_DC_003_VISION.docx', 'img/uploads/solicitude/filename'),
(17, 'DIANA MARIA', '2022-05-04', 'PD', 'creacion', 'PD-DC-006', 0, 'documento', 'Se requiere la creación del documento ORGANIGRAMA para el correcto proceso documental', '2022-05-04', 'si', 'Se requiere la creación del documento ORGANIGRAMA para el correcto proceso documental', 'PD_DC_006_ORGANIGRAMA.pdf', 'img/uploads/solicitude/filename'),
(18, 'DIANA MARIA', '2022-05-04', 'PI', 'creacion', 'PI-FR-001', 0, 'formato', 'Se requiere la creación del formato ACCIONES CORRCTIVAS, PREVENTIVAS Y DE MEJORAS para el correcto proceso documental', '2022-05-04', 'si', 'Se requiere la creación del formato ACCIONES CORRCTIVAS, PREVENTIVAS Y DE MEJORAS para el correcto proceso documental', '', ''),
(19, 'DIANA MARIA', '2022-05-04', 'PI', 'creacion', 'PI-FR-002', 0, 'formato', 'Se requiere la creación del formato RIESGOS DE PROCESOS para el correcto proceso documental', '2022-05-04', 'si', 'Se requiere la creación del formato RIESGOS DE PROCESOS para el correcto proceso documental', '', ''),
(20, 'DIANA MARIA', '2022-05-04', 'PI', 'creacion', 'PI-FR-003', 0, 'formato', 'Se requiere la creación del formato PLANIFICACION DE CAMBIOS para el correcto proceso documental', '2022-05-04', 'si', 'Se requiere la creación del formato PLANIFICACION DE CAMBIOS para el correcto proceso documental', '', ''),
(21, 'DIANA MARIA', '2022-05-04', 'PI', 'creacion', 'PI-FR-004', 0, 'formato', 'Se requiere la creación del formato PROGRAMA DE AUDITORIA INTERNA para el correcto proceso documental', '2022-05-04', 'si', 'Se requiere la creación del formato PROGRAMA DE AUDITORIA INTERNA para el correcto proceso documental', '', ''),
(22, 'DIANA MARIA', '2022-05-04', 'PI', 'creacion', 'PI-FR-005', 0, 'formato', 'Se requiere la creación del formato PLAN DE AUDITORIA para el correcto proceso documental', '2022-05-04', 'si', 'Se requiere la creación del formato PLAN DE AUDITORIA para el correcto proceso documental', '', ''),
(23, 'DIANA MARIA', '2022-05-04', 'PI', 'creacion', 'PI-FR-006', 0, 'formato', 'Se requiere la creación del formato LISTA DE CHEQUEO para el correcto proceso documental', '2022-05-04', 'si', 'Se requiere la creación del formato LISTA DE CHEQUEO para el correcto proceso documental', '', ''),
(24, 'DIANA MARIA', '2022-05-04', 'PI', 'creacion', 'PI-FR-007', 0, 'formato', 'Se requiere la creación del formato INFORME DE AUDITORIA para el correcto proceso documental', '2022-05-04', 'si', 'Se requiere la creación del formato INFORME DE AUDITORIA para el correcto proceso documental', '', ''),
(25, 'DIANA MARIA', '2022-05-04', 'PI', 'creacion', 'PI-FR-008', 0, 'formato', 'Se requiere la creación del formato EVALUACION DE AUDITORIA para el correcto proceso documental', '2022-05-04', 'si', 'Se requiere la creación del formato EVALUACION DE AUDITORIA para el correcto proceso documental', '', ''),
(26, 'DIANA MARIA', '2022-05-04', 'PI', 'creacion', 'PI-FR-009', 0, 'formato', 'Se requiere la creación del formato CONSOLIDADO DE ACCIONES para el correcto proceso documental', '2022-05-04', 'si', 'Se requiere la creación del formato CONSOLIDADO DE ACCIONES para el correcto proceso documental', '', ''),
(27, 'DIANA MARIA', '2022-05-04', 'PI', 'creacion', 'PI-FR-010', 0, 'formato', 'Se requiere la creación del formato AUTORIDAD Y RESPONSABILIDAD DEL SERVICIO NO CONFORME para el correcto proceso documental', '2022-05-04', 'si', 'Se requiere la creación del formato AUTORIDAD Y RESPONSABILIDAD DEL SERVICIO NO CONFORME para el correcto proceso documental', '', ''),
(28, 'DIANA MARIA', '2022-05-04', 'PI', 'creacion', 'PI-FR-011', 0, 'formato', 'Se requiere la creación del formato REGISTRO DE QUEJAS Y RECLAMOS para el correcto proceso documental', '2022-05-04', 'si', 'Se requiere la creación del formato REGISTRO DE QUEJAS Y RECLAMOS para el correcto proceso documental', '', ''),
(29, 'DIANA MARIA', '2022-05-04', 'PI', 'creacion', 'PI-FR-012', 0, 'formato', 'Se requiere la creación del formato CONSOLIDADO DE QUEJAS Y RECLAMOS para el correcto proceso documental', '2022-05-04', 'si', 'Se requiere la creación del formato CONSOLIDADO DE QUEJAS Y RECLAMOS para el correcto proceso documental', '', ''),
(30, 'DIANA MARIA', '2022-05-04', 'PI', 'creacion', 'PI-FR-013', 0, 'formato', 'Se requiere la creación del formato DESEMPEÑO DEL INDICADOR para el correcto proceso documental', '2022-05-04', 'si', 'Se requiere la creación del formato DESEMPEÑO DEL INDICADOR para el correcto proceso documental', '', ''),
(31, 'DIANA MARIA', '2022-05-04', 'PI', 'creacion', 'PI-FR-014', 0, 'formato', 'Se requiere la creación del formato PLAN DE TRABAJO ANUAL para el correcto proceso documental', '2022-05-04', 'si', 'Se requiere la creación del formato PLAN DE TRABAJO ANUAL para el correcto proceso documental', '', ''),
(32, 'DIANA MARIA', '2022-05-04', 'PI', 'creacion', 'PI-DC-006', 0, 'documento', 'Se requiere la creación del documento CONTROL DE INFORMACION DOCUMENTADA para el correcto proceso documental', '2022-05-04', 'si', 'Se requiere la creación del documento CONTROL DE INFORMACION DOCUMENTADA para el correcto proceso documental', 'PI_DC_001_CONTROL_DE_INFORMACION_DOCUMENTADA.docx', 'img/uploads/solicitude/filename'),
(33, 'DIANA MARIA', '2022-05-04', 'PI', 'creacion', 'PI-DC-002', 0, 'documento', 'Se requiere la creación del documento MANUAL DE SISTEMAS INTEGRADOS para el correcto proceso documental', '2022-05-04', 'si', 'Se requiere la creación del documento MANUAL DE SISTEMAS INTEGRADOS para el correcto proceso documental', 'PI_DC_002_MANUAL_DE_SISTEMAS_INTEGRADOSV2.docx', 'img/uploads/solicitude/filename'),
(34, 'DIANA MARIA', '2022-05-04', 'PI', 'creacion', 'PI-DC-003', 0, 'documento', 'Se requiere la creación del documento ACCIONES CORRECTIVAS para el correcto proceso documental', '2022-05-04', 'si', 'Se requiere la creación del documento ACCIONES CORRECTIVAS para el correcto proceso documental', '', ''),
(35, 'DIANA MARIA', '2022-05-04', 'PI', 'creacion', 'PI-DC-004', 0, 'documento', 'Se requiere la creación del documento ACCIONES PREVENTIVAS para el correcto proceso documental', '2022-05-04', 'si', 'Se requiere la creación del documento ACCIONES PREVENTIVAS para el correcto proceso documental', '', ''),
(36, 'DIANA MARIA', '2022-05-04', 'PI', 'creacion', 'PI-DC-005', 0, 'documento', 'Se requiere la creación del documento AUDITORIAS INTERNAS DE CALIDAD para el correcto proceso documental', '2022-05-04', 'si', 'Se requiere la creación del documento AUDITORIAS INTERNAS DE CALIDAD para el correcto proceso documental', '', ''),
(37, 'DIANA MARIA', '2022-05-04', 'PI', 'creacion', 'PI-DC-007', 0, 'documento', 'Se requiere la creación del documento CONTROL DEL SERVICIO NO CONFORME para el correcto proceso documental', '2022-05-04', 'si', 'Se requiere la creación del documento CONTROL DEL SERVICIO NO CONFORME para el correcto proceso documental', '', ''),
(38, 'DIANA MARIA', '2022-05-04', 'PI', 'creacion', 'PI-DC-008', 0, 'documento', 'Se requiere la creación del documento COPIA DE SEGURIDAD para el correcto proceso documental', '2022-05-04', 'si', 'Se requiere la creación del documento COPIA DE SEGURIDAD para el correcto proceso documental', '', ''),
(39, 'DIANA MARIA', '2022-05-04', 'PI', 'creacion', 'PI-DC-009', 0, 'documento', 'Se requiere la creación del documento PQRSF para el correcto proceso documental', '2022-05-04', 'si', 'Se requiere la creación del documento PQRSF para el correcto proceso documental', '', ''),
(40, 'DIANA MARIA', '2022-05-05', 'PA', 'creacion', 'PA-FR-001', 0, 'formato', 'Se requiere la creación del formato LISTADO DE PROVEEDORES para el correcto proceso documental', '2022-05-10', 'si', 'Se requiere la creación del formato  LISTADO DE PROVEEDORES para el correcto proceso documental', '', ''),
(41, 'DIANA MARIA', '2022-05-05', 'PA', 'creacion', 'PA-FR-002', 0, 'formato', 'Se requiere la creación del formato SOLICITUD DE INSUMOS para el correcto proceso documental', '2022-05-10', 'si', 'Se requiere la creación del formato SOLICITUD DE INSUMOS para el correcto proceso documental', '', ''),
(42, 'DIANA MARIA', '2022-05-05', 'PA', 'creacion', 'PA-FR-003', 0, 'formato', 'Se requiere la creación del formato ORDEN DE COMPRA para el correcto proceso documental', '2022-05-10', 'si', 'Se requiere la creación del formato ORDEN DE COMPRA para el correcto proceso documental', '', ''),
(43, 'DIANA MARIA', '2022-05-05', 'PA', 'creacion', 'PA-FR-004', 0, 'formato', 'Se requiere la creación del formato CONSOLIDADO DE COMPRAS para el correcto proceso documental', '2022-05-10', 'si', 'Se requiere la creación del formato CONSOLIDADO DE COMPRAS para el correcto proceso documental', '', ''),
(44, 'DIANA MARIA', '2022-05-05', 'PA', 'creacion', 'PA-FR-005', 0, 'formato', 'Se requiere la creación del formato EVALUACIÓN INICIAL DE PROVEEDORES para el correcto proceso documental', '2022-05-10', 'si', 'Se requiere la creación del formato EVALUACIÓN INICIAL DE PROVEEDORES  para el correcto proceso documental', '', ''),
(45, 'DIANA MARIA', '2022-05-05', 'PA', 'creacion', 'PA-FR-006', 0, 'formato', 'Se requiere la creación del formato EVALUACIÓN Y REEVALUACIÓN para el correcto proceso documental', '2022-05-10', 'si', 'Se requiere la creación del formato EVALUACIÓN Y REEVALUACIÓN para el correcto proceso documental', '', ''),
(46, 'DIANA MARIA', '2022-05-05', 'PA', 'creacion', 'PA-FR-007', 0, 'formato', 'Se requiere la creación del formato CRONOGRAMA DE MANTENIMIENTO PREVENTIVO para el correcto proceso documental', '2022-05-10', 'si', 'Se requiere la creación del formato CRONOGRAMA DE MANTENIMIENTO PREVENTIVO para el correcto proceso documental', '', ''),
(47, 'DIANA MARIA', '2022-05-05', 'PA', 'creacion', 'PA-DC-002', 0, 'documento', 'Se requiere la creación del documento SELECCION Y EVALUACION DE PROVEEDORES para el correcto proceso documental', '2022-05-05', 'si', 'Se requiere la creación del documento SELECCION Y EVALUACION DE PROVEEDORES para el correcto proceso documental', '', ''),
(48, 'DIANA MARIA', '2022-05-05', 'PA', 'creacion', 'PA-DC-003', 0, 'documento', 'Se requiere la creación del documento COMPRAS para el correcto proceso documental', '2022-05-05', 'si', 'Se requiere la creación del documento COMPRAS para el correcto proceso documental', '', ''),
(49, 'DIANA MARIA', '2022-05-05', 'PA', 'creacion', 'PA-DC-004', 0, 'documento', 'Se requiere la creación del documento MANTENIMIENTO PREVENTIVO Y CORRECTIVO para el correcto proceso documental', '2022-05-05', 'si', 'Se requiere la creación del documento MANTENIMIENTO PREVENTIVO Y CORRECTIVO para el correcto proceso documental', '', ''),
(50, 'DIANA MARIA', '2022-05-05', 'PA', 'creacion', 'PA-DC-005', 0, 'documento', 'Se requiere la creación del documento  PROCEDIMIENTO DE SELECCIÓN, CONTRATACIÓN, INDUCCIÓN, Y ENTRENAMIENTO para el correcto proceso documental', '2022-05-05', 'si', 'Se requiere la creación del documento  PROCEDIMIENTO DE SELECCIÓN, CONTRATACIÓN, INDUCCIÓN, Y ENTRENAMIENTO para el correcto proceso documental', '', ''),
(51, 'DIANA MARIA', '2022-05-11', 'PA', 'creacion', 'PA-FR-008', 0, 'formato', 'Se requiere la creación del formato PLANTA DE CARGOS para el correcto proceso documental', '2022-05-12', 'si', 'Se requiere la creación del formato PLANTA DE CARGOS para el correcto proceso documental', 'PB_FR_001_PLANTA_DE_CARGOS.xlsx', 'img/uploads/solicitude/filename'),
(52, 'DIANA MARIA', '2022-05-11', 'PA', 'creacion', 'PA-FR-009', 0, 'formato', 'Se requiere la creación del formato PERFIL DEL PERSONAL para el correcto proceso documental', '2022-05-12', 'si', 'Se requiere la creación del formato PERFIL DEL PERSONAL para el correcto proceso documental', 'PB_FR_002_PERFIL_DEL_PERSONAL.xlsx', 'img/uploads/solicitude/filename'),
(53, 'DIANA MARIA', '2022-05-11', 'PA', 'creacion', 'PA-FR-010', 0, 'formato', 'Se requiere la creación del formato SOLICITUD DE PERMISO para el correcto proceso documental', '2022-05-12', 'si', 'Se requiere la creación del formato SOLICITUD DE PERMISO para el correcto proceso documental', 'PB_FR_003_SOLICITUD_DE_PERMISO.xlsx', 'img/uploads/solicitude/filename'),
(54, 'DIANA MARIA', '2022-05-11', 'PA', 'creacion', 'PA-FR-011', 0, 'formato', 'Se requiere la creación del formato CONSOLIDADO DE AUSENTISMO para el correcto proceso documental', '2022-05-12', 'si', 'Se requiere la creación del formato CONSOLIDADO DE AUSENTISMO para el correcto proceso documental', 'PB_FR_004_CONSOLIDADO_DE_AUSENTISMO.xlsx', 'img/uploads/solicitude/filename'),
(55, 'DIANA MARIA', '2022-05-11', 'PA', 'creacion', 'PA-FR-012', 0, 'formato', 'Se requiere la creación del formato PLAN DE FORMACION para el correcto proceso documental', '2022-05-12', 'si', 'Se requiere la creación del formato PLAN DE FORMACION para el correcto proceso documental', '', ''),
(56, 'DIANA MARIA', '2022-05-11', 'PA', 'creacion', 'PA-FR-013', 0, 'formato', 'Se requiere la creación del formato REGISTRO DE FORMACION para el correcto proceso documental', '2022-05-12', 'si', 'Se requiere la creación del formato REGISTRO DE FORMACION para el correcto proceso documental', '', ''),
(57, 'DIANA MARIA', '2022-05-11', 'PA', 'creacion', 'PA-FR-014', 0, 'formato', 'Se requiere la creación del formato EVALUACION DE COMPETENCIA para el correcto proceso documental', '2022-05-12', 'si', 'Se requiere la creación del formato EVALUACION DE COMPETENCIA para el correcto proceso documental', '', ''),
(58, 'DIANA MARIA', '2022-05-11', 'PA', 'creacion', 'PA-FR-015', 0, 'formato', 'Se requiere la creación del formato EVALUACION DE DESEMPEÑO para el correcto proceso documental', '2022-05-12', 'si', 'Se requiere la creación del formato EVALUACION DE DESEMPEÑO para el correcto proceso documental', '', ''),
(59, 'DIANA MARIA', '2022-05-11', 'PA', 'creacion', 'PA-FR-016', 0, 'formato', 'Se requiere la creación del formato EVALUACION DE COMPETENCIAS ASESOR para el correcto proceso documental', '2022-05-12', 'si', 'Se requiere la creación del formato EVALUACION DE COMPETENCIAS ASESOR para el correcto proceso documental', '', ''),
(60, 'DIANA MARIA', '2022-05-11', 'PA', 'creacion', 'PA-FR-017', 0, 'formato', 'Se requiere la creación del formato EVALUACION DE DESEMPEÑO DOCENTE para el correcto proceso documental', '2022-05-12', 'si', 'Se requiere la creación del formato EVALUACION DE DESEMPEÑO DOCENTE para el correcto proceso documental', '', ''),
(61, 'DIANA MARIA', '2022-05-11', 'PA', 'creacion', 'PA-FR-018', 0, 'formato', 'Se requiere la creación del formato PERCEPCION DE SASTIFACION DEL ESTUDIANTE para el correcto proceso documental', '2022-05-12', 'si', 'Se requiere la creación del formato PERCEPCION DE SASTIFACION DEL ESTUDIANTE para el correcto proceso documental', '', ''),
(62, 'DIANA MARIA', '2022-05-11', 'PA', 'creacion', 'PA-FR-019', 0, 'formato', 'Se requiere la creación del formato OFICIO para el correcto proceso documental', '2022-05-12', 'si', 'Se requiere la creación del formato OFICIO para el correcto proceso documental', '', ''),
(63, 'DIANA MARIA', '2022-05-11', 'PA', 'creacion', 'PA-FR-020', 0, 'formato', 'Se requiere la creación del formato CIRCULAR para el correcto proceso documental', '2022-05-12', 'si', 'Se requiere la creación del formato CIRCULAR para el correcto proceso documental', '', ''),
(64, 'DIANA MARIA', '2022-05-11', 'PA', 'creacion', 'PA-FR-021', 0, 'formato', 'Se requiere la creación del formato ACTAS para el correcto proceso documental', '2022-05-12', 'si', 'Se requiere la creación del formato ACTAS para el correcto proceso documental', '', ''),
(65, 'DIANA MARIA', '2022-05-11', 'PA', 'creacion', 'PA-FR-022', 0, 'formato', 'Se requiere la creación del formato MEMORANDO para el correcto proceso documental', '2022-05-12', 'si', 'Se requiere la creación del formato MEMORANDO para el correcto proceso documental', '', ''),
(66, 'DIANA MARIA', '2022-05-11', 'PA', 'creacion', 'PA-FR-023', 0, 'formato', 'Se requiere la creación del formato SOLICITUD DEL PERSONAL para el correcto proceso documental', '2022-05-12', 'si', 'Se requiere la creación del formato SOLICITUD DEL PERSONAL para el correcto proceso documental', '', ''),
(67, 'FABIAN', '2022-05-05', 'PA', 'creacion', 'PA-DC-001', 0, 'documento', 'Se requere la creacion del documento caracterizacion de proceso adminsitrativo, el cual permite ver la interacción de las actividades con los procesos y partes iinteresadas asi como tambien establece lo definido segun ISO 9001, NTC 5555 y NTC 5580.', '2022-05-05', 'si', 'Se considera pertinente la creación del documento \"Caracterización de proceso administrativo\".', 'PA_DC_001_CARACTERIZACION_ADMINISTRACION.xlsx', 'img/uploads/solicitude/filename'),
(68, 'DIANA MARIA', '2022-05-04', 'PI', 'creacion', 'PI-DC-001', 0, 'documento', 'Se requiere la creación del documento caracterización de proceso de calidad', '2022-05-04', 'si', 'Se considera pertinente la creación del documento \"Caracterización de proceso de calidad\".', '', ''),
(69, 'DIANA MARIA', '2022-06-01', 'PP', 'creacion', 'PP-DC-001', 0, 'documento', 'Se requiere la creación del documento \"Caracterización proceso pedagógico\"', '2022-06-01', 'si', 'Se considera pertinente la creación del documento caracterización del proceso pedagogico', '', ''),
(70, 'Milena', '2022-06-10', 'PI', 'creacion', 'PI-FR-015', 0, 'formato', 'Se necesita crear el formato Matriz legal para llevar el control de las normatividad que nos aplica en SGSST', '2022-06-14', 'si', 'Se considera pertinente la creación del formato matriz legal ', 'MATRIZ_LEGAL_COLOMBO.xlsx', 'img/uploads/solicitude/filename'),
(71, 'DIANA MARIA', '2022-06-06', 'PC', 'creacion', 'PC-DC-001', 0, 'documento', 'Se requiere la creación del documento Caracterización del proceso comercial para el correcto control documental', '2022-06-06', 'si', 'Se considera pertinente la creacion del documento caracterización del proceso comercial', 'PC_DC_002_INSCRIPCION.docx', 'img/uploads/solicitude/filename'),
(72, 'Milena', '2022-06-16', 'PI', 'creacion', 'Código Automático', 0, 'documento', 'Presupuesto del SGSST es documentó que se debe actualizar cada año de acuerdo a la resolución 312 de 2019.', '0000-00-00', '', '', 'Presupuesto_SG_SST_2022_colombo.xlsx', 'img/uploads/solicitude/filename'),
(73, 'Milena', '2022-06-16', 'PI', 'creacion', 'Código Automático', 0, 'documento', 'Acta de conformación del COPASST, se conforma cada 2 años y se debe tener las evidencias de la conformación.\r\n ', '0000-00-00', '', '', 'acta_conformacion_COPASST.pdf', 'img/uploads/solicitude/filename'),
(74, 'Milena', '2022-06-16', 'PI', 'creacion', 'Código Automático', 0, 'formato', 'Acta de Reunión del copasst, se reúnen cada mes y deben hacer una acta por Reunión.', '0000-00-00', '', '', '10_COPASSTACTAS_REUNION_COLOMBO.pdf', 'img/uploads/solicitude/filename'),
(75, 'Milena', '2022-06-16', 'PI', 'creacion', 'Código Automático', 0, 'documento', 'Procedimiento del comité de convivencia laboral, este documento se le entrega a los miembros de los comités donde encuentran sus funciones.', '0000-00-00', '', '', 'PROCEDIMIENTO_PARA_EL_COMITE_CONVIVENCIA.doc', 'img/uploads/solicitude/filename');

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
(1, 'SNC', 'Control de cartera', 'Revision de cartera y ajuste inmediato', '2021-05-13', 'SISTEMA'),
(2, 'SNC', 'No presentar indicadores', 'Presentar indicadores en un max de 1 dia', '2021-05-13', 'SISTEMA'),
(3, 'SNC', 'Induccion del personal', 'Establecer el cronograma para desarrollar el plan de induccion', '2021-05-13', 'SISTEMA'),
(4, 'SNC', 'Limpieza y orden ', 'Realizar aseo de la institucion', '2021-05-13', 'SISTEMA'),
(5, 'SNC', 'Contratacion personal ', 'Elaboracion de contrato debidamente firmado y actualizacion en la planta de cargos en un plazo max. a 3 dias', '2021-05-13', 'SISTEMA'),
(6, 'SNC', 'Convenios interinstitucionales ', 'Elaborar convenio docencia servicio en un plazo max. de 3 dias', '2021-05-13', 'SISTEMA'),
(7, 'SNC', 'Informes financieros', 'Presentar informa en un tiempo menor a 72 horas siguientes', '2021-05-13', 'SISTEMA'),
(8, 'SNC', 'Contratacion de personal sin cumplimiento de perfil de cargos', 'Seguir lineamiento de procedimiento de contratacion', '2021-05-13', 'SISTEMA'),
(9, 'SNC', 'Datos basicos del cliente no veraz', 'verificar y actualizar los datos del cleinte.', '2021-05-13', 'SISTEMA'),
(10, 'SNC', 'Incumplimiento en atenci?n de paciente', 'Atenci?n en tiempo max de 45 minutos', '2021-05-13', 'SISTEMA'),
(11, 'SNC', 'Incumplimiento a procedimientos definidos por  la institucion', 'Realizar capacitacion en el procedimiento incumplido.', '2021-05-13', 'SISTEMA'),
(12, 'SNC', 'Documentos de ingreso incompletos', 'Solicitud y almacenamiento de los requisitos de ingreso en carpeta digital.', '2021-05-13', 'SISTEMA'),
(13, 'SNC', 'incumplimiento en procedimiento de apertura de grupos', 'Ajuste de actividades- reentrenamiento en el cargo ', '2021-05-13', 'SISTEMA'),
(14, 'SNC', 'ARL elaborar con errores de identificacion o de nombre', 'Revision y entrega de documentos soportes de ARL en  tiempo menor a 12 horas', '2021-05-13', 'SISTEMA'),
(15, 'SNC', 'Facturacion errada', 'Elaborar factura en un tiempo no superior a 72 horas', '2021-05-13', 'SISTEMA'),
(16, 'SNC', 'Documentos no controlados', 'Se requiere descargar el documento y,o formato del listado maestro de documentos y,o registros y volver a realizar el documento a remitir.', '2021-05-13', 'SISTEMA'),
(17, 'EA', 'Tramite administrativo para la atenci?n en salud no realizados aun cuando estaban indicados', 'Verificar y garantizar el tramite en un tiempo menor a 24 horas ', '2021-05-13', 'SISTEMA'),
(18, 'EA', 'Tramite administrativo para la atenci?n en salud incompleto o insuficiente', 'Verificar y garantizar el tramite en un tiempo menor a 24 horas ', '2021-05-13', 'SISTEMA'),
(19, 'EA', 'Tramite administrativo para la atenci?n en salud No disponible', 'Verificar y garantizar el tramite en un tiempo menor a 24 horas ', '2021-05-13', 'SISTEMA'),
(20, 'EA', 'Tramite administrativo para la atenci?n en salud con paciente equivocado', 'Solicitar correccion documental del paciente equivocado en caso de tramites en proceso y verificar y garantizar el tramite en un tiempo menor a 24 horas ', '2021-05-13', 'SISTEMA'),
(21, 'EA', 'Tramite administrativo para la atenci?n en salud con un Proceso o servicio equivocado', 'Verificar y garantizar el tramite en un tiempo menor a 24 horas ', '2021-05-13', 'SISTEMA'),
(22, 'EA', 'Falla en proceso o procedimientos asistenciales no realizados aun cuando est? indicado', 'Verificar y garantizar la planificacion y agendamiento del procedimiento en un tiempo menor a 24 horas ', '2021-05-13', 'SISTEMA'),
(23, 'EA', 'Falla en proceso o procedimientos asistenciales Incompletos o insuficientes', 'Verificar y garantizar la planificacion y agendamiento del procedimiento en un tiempo menor a 24 horas ', '2021-05-13', 'SISTEMA'),
(24, 'EA', 'Falla en proceso o procedimientos asistenciales No disponibles', 'Verificar y garantizar la planificacion y agendamiento del procedimiento en un tiempo menor a 24 horas ', '2021-05-13', 'SISTEMA'),
(25, 'EA', 'Falla en proceso o procedimientos asistenciales con paciente equivocado', 'Verificar y garantizar la planificacion y agendamiento del procedimiento en un tiempo menor a 24 horas del paciente indicado y la correccion del paciente equivocado', '2021-05-13', 'SISTEMA'),
(26, 'EA', 'Falla en proceso o procedimientos asistenciales equivocado en un Proceso, Tratamiento , Procedimiento', 'Verificar y garantizar la planificacion y agendamiento del procedimiento en un tiempo menor a 24 horas ', '2021-05-13', 'SISTEMA'),
(27, 'EA', 'Falla en proceso o procedimientos asistenciales en Parte del cuerpo equivocada, cara , sitio', 'Verificar y garantizar la planificacion y agendamiento adecuado por segmento corporal afectado en un tiempo menor a 24 horas ', '2021-05-13', 'SISTEMA'),
(28, 'EA', 'Falla en los registros cl?nicos por Documentos que faltan o no disponibles', 'Busqueda de revision documental y entrega de respuesta en un tiempo menor a 24 horas ', '2021-05-13', 'SISTEMA'),
(29, 'EA', 'Falla en los registros cl?nicos por Retraso en el acceso a documentos', 'Busqueda de revision documental y entrega de respuesta en un tiempo menor a 24 horas ', '2021-05-13', 'SISTEMA'),
(30, 'EA', 'Falla en los registros cl?nicos por Documento para el paciente equivocado o Documento equivocado', 'Busqueda de revision documental y entrega de respuesta en un tiempo menor a 24 horas ', '2021-05-13', 'SISTEMA'),
(31, 'EA', 'Falla en los registros cl?nicos con registro de Informaci?n en el documento Confusa o ambigua , ilegible , incompleta', 'Busqueda de revision documental y entrega de respuesta en un tiempo menor a 24 horas ', '2021-05-13', 'SISTEMA'),
(32, 'EA', 'Medicacion o administracion al Paciente equivocado', 'Dejar en observacion, verificar que no existan reaccion adversa y busqueda de paciente adecuado', '2021-05-13', 'SISTEMA'),
(33, 'EA', 'Medicacion o administracion con Medicamento equivocado', 'Dejar en observacion, verificar que no existan reaccion adversa', '2021-05-13', 'SISTEMA'),
(34, 'EA', 'Medicacion o administracion con Dosis , Frecuencia incorrecta', 'Dejar en observacion, verificar que no existan reaccion adversa', '2021-05-13', 'SISTEMA'),
(35, 'EA', 'Medicacion o administracion con formulaci?n Incorrecta o presentacion', 'Dejar en observacion, verificar que no existan reaccion adversa', '2021-05-13', 'SISTEMA'),
(36, 'EA', 'Medicacion o administracion con ruta equivocada', 'Dejar en observacion, verificar que no existan reaccion adversa', '2021-05-13', 'SISTEMA'),
(37, 'EA', 'Medicacion o administracion con cantidad incorrecta', 'Dejar en observacion, verificar que no existan reaccion adversa', '2021-05-13', 'SISTEMA'),
(38, 'EA', 'Medicacion o administracion con ttiquetado , instrucci?n incorrectos', 'Dejar en observacion, verificar que no existan reaccion adversa', '2021-05-13', 'SISTEMA'),
(39, 'EA', 'Medicacion o administracion con contraindicacion', 'Dejar en observacion, verificar que no existan reaccion adversa', '2021-05-13', 'SISTEMA'),
(40, 'EA', 'Medicacion o administracion con almacenamiento Incorrecto', 'Dejar en observacion, verificar que no existan reaccion adversa', '2021-05-13', 'SISTEMA'),
(41, 'EA', 'Medicacion o administracion con omision de medicamento o dosis', 'Verificacion de formulacion, y suministro adecuado', '2021-05-13', 'SISTEMA'),
(42, 'EA', 'Medicacion o administracion con medicamento vencido', 'Dejar en observacion, verificar que no existan reaccion adversa', '2021-05-13', 'SISTEMA'),
(43, 'EA', 'Administracion con reacci?n adversa al medicamento', 'Activar una alerta institucional, solicitar atencion medica prioritaria de paciente, garantizar remision en caso de requerirse', '2021-05-13', 'SISTEMA'),
(44, 'EA', 'Dispositivos y equipos medicos con falta de disponibilidad', 'Adquision ', '2021-05-13', 'SISTEMA'),
(45, 'EA', 'Dispositivos y equipos medicos con inapropiado para la Tarea', 'Capacitacion ', '2021-05-13', 'SISTEMA'),
(46, 'EA', 'Dispositivos y equipos medicos sucio , No esteril', 'Programacion de mantenimiento', '2021-05-13', 'SISTEMA'),
(47, 'EA', 'Dispositivos y equipos medicos con fallas , Mal funcionamiento', 'Programacion de mantenimiento', '2021-05-13', 'SISTEMA'),
(48, 'EA', 'Dispositivos y equipos medicos con desalojado, desconectado, eliminado', 'Adquision ', '2021-05-13', 'SISTEMA'),
(49, 'EA', 'Dispositivos y equipos medicos con error de uso', 'Capacitacion ', '2021-05-13', 'SISTEMA'),
(50, 'EA', 'Comportamiento del paciente con Incumplimiento de normas o falta de cooperacion y obstruccion', 'Dejar evidencia documental del comportamiento y suspender atencion  y reprogramar atencion con otro profesional', '2021-05-13', 'SISTEMA'),
(51, 'EA', 'Comportamiento del paciente desconsiderado  rudo   hostil   Inapropiado', 'Dejar evidencia documental del comportamiento y suspender atencion  y reprogramar atencion con otro profesional', '2021-05-13', 'SISTEMA'),
(52, 'EA', 'Comportamiento del paciente arriesgado   temerario  Peligroso', 'Dejar evidencia documental del comportamiento y suspender atencion  y reprogramar atencion con otro profesional', '2021-05-13', 'SISTEMA'),
(53, 'EA', 'Comportamiento del paciente por problema con el uso de sustancias y abuso', 'Dejar evidencia documental del comportamiento y suspender atencion  y reprogramar atencion con otro profesional', '2021-05-13', 'SISTEMA'),
(54, 'EA', 'Comportamiento del paciente por acoso', 'Activar una alerta institucional  dejar evidencia documental del comportamiento y suspender atencion  y reprogramar atencion con otro profesional', '2021-05-13', 'SISTEMA'),
(55, 'EA', 'Comportamiento del paciente con discriminaci?n y prejuicios', 'Dejar evidencia documental del comportamiento y suspender atencion  y reprogramar atencion con otro profesional', '2021-05-13', 'SISTEMA'),
(56, 'EA', 'Comportamiento o las creencias del paciente erratico   fuga', 'Dejar evidencia documental del comportamiento y suspender atencion  y reprogramar atencion con otro profesional', '2021-05-13', 'SISTEMA'),
(57, 'EA', 'Comportamiento o las creencias del paciente autolesionante   suicida', 'Activar una alerta institucional y Garantizar la remision a area asistencial de psiquiatria', '2021-05-13', 'SISTEMA'),
(58, 'EA', 'Caidas de pacientes silla', 'Activar una alerta institucional  atencion medica prioritaria y garantizar remision en caso de requerirse', '2021-05-13', 'SISTEMA'),
(59, 'EA', 'Caidas de pacientes camilla', 'Activar una alerta institucional  atencion medica prioritaria y garantizar remision en caso de requerirse', '2021-05-13', 'SISTEMA'),
(60, 'EA', 'Caidas de pacientes bano', 'Activar una alerta institucional  atencion medica prioritaria y garantizar remision en caso de requerirse', '2021-05-13', 'SISTEMA'),
(61, 'EA', 'Caidas de pacientes equipo terapeutico', 'Activar una alerta institucional  atencion medica prioritaria y garantizar remision en caso de requerirse', '2021-05-13', 'SISTEMA'),
(62, 'EA', 'Caidas de pacientes escaleras y escalones', 'Activar una alerta institucional  atencion medica prioritaria y garantizar remision en caso de requerirse', '2021-05-13', 'SISTEMA'),
(63, 'EA', 'Caidas de pacientes siendo llevado   apoyado por otra persona', 'Activar una alerta institucional  atencion medica prioritaria y garantizar remision en caso de requerirse', '2021-05-13', 'SISTEMA'),
(64, 'EA', 'Accidente de paciente por mecanismo (Fuerza) contundente', 'Activar una alerta institucional  atencion medica prioritaria y garantizar remision en caso de requerirse', '2021-05-13', 'SISTEMA'),
(65, 'EA', 'Accidente de paciente por mecanismo (Fuerza) cortante penetrante', 'Activar una alerta institucional  atencion medica prioritaria y garantizar remision en caso de requerirse', '2021-05-13', 'SISTEMA'),
(66, 'EA', 'Accidente de paciente por otras fuerzas mecanicas', 'Activar una alerta institucional  atencion medica prioritaria y garantizar remision en caso de requerirse', '2021-05-13', 'SISTEMA'),
(67, 'EA', 'Accidente de paciente por temperaturas', 'Activar una alerta institucional  atencion medica prioritaria y garantizar remision en caso de requerirse', '2021-05-13', 'SISTEMA'),
(68, 'EA', 'Accidente de paciente por amenazas para la respiracion', 'Activar una alerta institucional  atencion medica prioritaria y garantizar remision en caso de requerirse', '2021-05-13', 'SISTEMA'),
(69, 'EA', 'Accidente de paciente por exposicion a sustancias qu?micas u otras sustancias', 'Activar una alerta institucional  atencion medica prioritaria y garantizar remision en caso de requerirse', '2021-05-13', 'SISTEMA'),
(70, 'EA', 'Accidente de paciente por otros mecanismos especificos de lesion', 'Activar una alerta institucional  atencion medica prioritaria y garantizar remision en caso de requerirse', '2021-05-13', 'SISTEMA'),
(71, 'EA', 'Accidente de paciente por exposici?n a efectos de el tiempo  desastres naturales  u otra fuerza de la naturaleza', 'Activar una alerta institucional  atencion medica prioritaria y garantizar remision en caso de requerirse', '2021-05-13', 'SISTEMA'),
(72, 'EA', 'Infraestructura o el ambiente fisico Inexistente   Inadecuado  Danado   defectuosos y desgastado', 'Mantenimiento', '2021-05-13', 'SISTEMA'),
(73, 'EA', 'Gestion organizacional relacionados con la gestion de la carga de trabajo', 'Verificacion de gestion organizacional', '2021-05-13', 'SISTEMA'),
(74, 'EA', 'Gestion de los recursos relacionados con disponibilidad de los servicios   adecuacion', 'Verificacion de Gestion de recursos en servicios', '2021-05-13', 'SISTEMA'),
(75, 'EA', 'Gestion de los recursos relacionados con Recursos Humanos   disponibilidad de personal   adecuacion', 'Verificacion de Gestion de recursos humanos', '2021-05-13', 'SISTEMA'),
(76, 'EA', 'Gestion organizacional relacionados con organizacion de Equipos   personal', 'Verificacion de recursos de equipos ', '2021-05-13', 'SISTEMA'),
(77, 'EA', 'Gestion organizacional relacionados con Protocolos   Politicas   Procedimientos   Disponibilidad de guias   Adecuacion', 'Verificacion de necesidad de adquisicion o actualizacion de informacion documentada ', '2021-05-13', 'SISTEMA'),
(78, 'CI', 'Escaleras con signos de aflojamiento', 'Mantenimiento y verificacion si requiere suspension de uso', '2021-05-13', 'SISTEMA'),
(79, 'CI', 'Falta de orden y aseo', 'Orden  aseo y capacitacion', '2021-05-13', 'SISTEMA'),
(80, 'CI', 'Areas sin demarcacion ni senalizacion ', 'Demarcacion y Senalizacion', '2021-05-13', 'SISTEMA'),
(81, 'CI', 'Piso humedo ', 'Senalizacion del area ', '2021-05-13', 'SISTEMA'),
(82, 'CI', 'Hundimiento e irregularidad de los pisos', 'Senalizacion y mantenimiento', '2021-05-13', 'SISTEMA'),
(83, 'CI', 'Almacenamiento inadecuado de los materiales', 'Adquisicion  Reubicacion  Capacitacion', '2021-05-13', 'SISTEMA'),
(84, 'CI', 'Transporte inadecuado de los materiales', 'Adquisicion Reubicacion', '2021-05-13', 'SISTEMA'),
(85, 'CI', 'Mobiliario en mal estado', 'Mantenimiento Adquisicion ', '2021-05-13', 'SISTEMA'),
(86, 'CI', 'No suministro al personal de elementos de proteccion adecuados a sus peligros', 'Adquisicion entrega de epp capacitacion', '2021-05-13', 'SISTEMA'),
(87, 'CI', 'Infraestructura con fallas estructurales', 'Mantenimiento', '2021-05-13', 'SISTEMA'),
(88, 'CI', 'Sobrecarga de tomas', 'Reubicacion de conectores  Inspeccion seguridad', '2021-05-13', 'SISTEMA'),
(89, 'CI', 'Falta de medidas de prevencion y proteccion contra incendios', 'Adquisicion entrenamiento', '2021-05-13', 'SISTEMA'),
(90, 'CI', 'Obstruccion de los pasillos  salidas  etc.', 'Reubicacion de elementos ', '2021-05-13', 'SISTEMA'),
(91, 'CI', 'Ventilacion inadecuada ', 'Controles de ingenieria', '2021-05-13', 'SISTEMA'),
(92, 'CI', 'Insuficiente espacio de trabajo', 'Reubicacion', '2021-05-13', 'SISTEMA'),
(93, 'CI', 'Iluminacion inadecuada (insuficiente luz para la operacion brillo etc.)', 'Adquisicion reubicacion', '2021-05-13', 'SISTEMA'),
(94, 'CI', 'Material o equipo defectuoso', 'Mantenimiento y Adquisicion', '2021-05-13', 'SISTEMA'),
(95, 'CI', 'Areas de almacenamiento inadecuadas', 'Mantenimiento  Adquisicion y senalizacion', '2021-05-13', 'SISTEMA'),
(96, 'CI', 'Herramientas defectuosas', 'Mantenimiento y Adquisicion', '2021-05-13', 'SISTEMA'),
(97, 'CI', 'Conexiones y o interruptores descubiertos (electrico)', 'Mantenimiento y Adquisicion', '2021-05-13', 'SISTEMA'),
(98, 'CI', 'Materiales sin rotulo o inadecuadamente rotulados', 'Mantenimiento y Adquisicion', '2021-05-13', 'SISTEMA'),
(99, 'CI', 'Mobiliario defectuoso o con partes peligrosas', 'Mantenimiento y Adquisicion', '2021-05-13', 'SISTEMA'),
(100, 'CI', 'Elementos inadecuados para disposicion de residuos', 'Adquisicion', '2021-05-13', 'SISTEMA'),
(101, 'CI', 'Hay fugas o perdidas de agua', 'Mantenimiento', '2021-05-13', 'SISTEMA'),
(102, 'CI', 'Conexiones electricas en mal estado', 'Mantenimiento', '2021-05-13', 'SISTEMA'),
(103, 'CI', 'Maquina o equipo o mobiliario no asegurado', 'Se requiere asegurar la maquina o equipo que coloca en riesgo al personal.', '2021-05-13', 'SISTEMA'),
(104, 'CI', 'Falta de demarcacion en superificies con cambios de alturas ', 'Demarcacion  Senalizacion', '2021-05-13', 'SISTEMA'),
(105, 'AI', 'Limpiar  ajustar o mover un equipo en encendido', 'Suspender la actividad  Apagar el equipo  Capacitacion ', '2021-05-13', 'SISTEMA'),
(106, 'AI', 'Uso inadecuado u omision del elemento de proteccion personal (EPP) ', 'Entrega de EPP adecuado  Capacitacion', '2021-05-13', 'SISTEMA'),
(107, 'AI', 'Adoptar una posicion incorrecta en el puesto de trabajo.', 'Correccion de postura  Capacitacion', '2021-05-13', 'SISTEMA'),
(108, 'AI', 'Omitir uso de senalizacion de advertencia en caso de pisos humedos  derrames  u otros peligros', 'Disposicion de senalizacion  Capacitacion', '2021-05-13', 'SISTEMA'),
(109, 'AI', 'Levantamiento de cargas en forma incorrecta.', 'Correccion de postura  Capacitacion', '2021-05-13', 'SISTEMA'),
(110, 'AI', 'Bromas o juegos pesados (distraer  fastidiar  molestar  asustar  chantajear pesadamente  lanzar materiales  exhibirse burlonamente  etc.)', 'Suspender actividad   Capacitacion', '2021-05-13', 'SISTEMA'),
(111, 'AI', 'Uso inadecuado de material o equipo ', 'Suspension de actividad entrega de material o equipo adecuado  Capacitacion', '2021-05-13', 'SISTEMA'),
(112, 'AI', 'Sobrecargar e instalar equipos de forma inadecuada.', 'Desconectar y dejar solo equipos necesarios   Capacitacion', '2021-05-13', 'SISTEMA'),
(113, 'AI', 'Usar equipos de trabajo defectuosos', 'Suspender actividad y solicitar revision de equipo con posterior capacitacion', '2021-05-13', 'SISTEMA'),
(114, 'AI', 'No usar las herramientas o equipos adecuados segun la actividad', 'Suspender actividad y Solicitar herramientas o equipos adecuados  Capacitacion', '2021-05-13', 'SISTEMA'),
(115, 'AI', 'Correr por las instalaciones', 'Lider informar que Suspenda la actividad de correr y en caso de ser recurrente notificar a talento humano para Capacitación', '2021-05-13', 'SISTEMA'),
(116, 'AI', 'Tirar objetos', 'Suspender actividad  Capacitacion', '2021-05-13', 'SISTEMA'),
(117, 'AI', 'Mezclar sustancias quimicas  sin verificacion de procedimientos', 'Suspender actividad y verificar procedimientos  Capacitacion', '2021-05-13', 'SISTEMA'),
(118, 'AI', 'Disposicion insegura de materiales  herramientas  desechos  etc.', 'Reclasificacion de materiales  herramientas desechos  Capacitacion', '2021-05-13', 'SISTEMA'),
(119, 'AI', 'Usar equipo inseguro  defectuoso o inhabilitado', 'Suspender actividad y realizar reporte de mantenimiento  Capacitacion', '2021-05-13', 'SISTEMA'),
(120, 'AI', 'Inadecuada clasificacion de residuos solido', 'Reclasificar residuos y Capacitacion', '2021-05-13', 'SISTEMA'),
(121, 'AI', 'Bajar las escaleras sin apoyo de al menos un miembro superior', 'Realizar desplazamiento en escaleras con tres puntos de apoyo y capacitacion', '2021-05-13', 'SISTEMA'),
(122, 'AI', 'Exposicion al peligro', 'Suspender actividad  Capacitacion', '2021-05-13', 'SISTEMA'),
(123, 'AI', 'No comunicar los riegos', 'Capacitacion', '2021-05-13', 'SISTEMA'),
(124, 'AI', 'No mantener el orden y la limpieza en el lugar de trabajo', 'Orden  aseo y capacitacion', '2021-05-13', 'SISTEMA'),
(125, 'AI', 'Hacer caso omiso a la senalizacion ', 'Suspender actividad y capacitacion', '2021-05-13', 'SISTEMA'),
(126, 'AI', 'Trabajar bajo los efectos del Alcohol y o sustancias psicoactivas.', 'Suspender actividad y capacitacion', '2021-05-13', 'SISTEMA'),
(127, 'AI', 'Inclumplimiento a lineamientos de procedimientos politicas y o protocolos institucionales ', 'Suspender actividad y capacitacion', '2021-05-13', 'SISTEMA'),
(128, 'AI', 'No llamar la atencion ante actos o condiciones inseguras a los companeros de trabajo', 'Capacitacion', '2021-05-13', 'SISTEMA'),
(129, 'AI', 'Poner fuera de servicio los dispositivos de seguridad.', 'Suspender actividad y capacitacion', '2021-05-13', 'SISTEMA');

-- --------------------------------------------------------

--
-- Table structure for table `tb_proceso_noconformes`
--

CREATE TABLE `tb_proceso_noconformes` (
  `id` int(11) NOT NULL,
  `proceso` varchar(255) NOT NULL,
  `cargo_id` int(11) NOT NULL,
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

INSERT INTO `tb_proceso_noconformes` (`id`, `proceso`, `cargo_id`, `TbCondiciones_id`, `descEvento`, `lugarEvento`, `estado`, `fechaRegistro`, `fechaValidacion`, `respuesta`, `usuario`, `observacion_1`, `observacion`, `fechaRespuesta`, `num_accion_corr`) VALUES
(1, '10', 9, 58, 'descripción', 'sede Cartagena- Área de Recepción', 'En Tramite', '2022-04-13', NULL, NULL, 'DIANA MARIA', '', '', '0000-00-00', 0),
(2, '10', 4, 26, 'El día 02-05-2022 se le debía tomar estudio metabólico a la paciente Mireya Gregoria Riera Gutierrez ID 4975357 HC: 3276, para este procedimiento la auxiliar Loraine Rodríguez tomó la glucometría previa para determinar el nivel de glucosa basal de la paciente, al evidenciar que el resultado era superior al indicado para suministrar la carga de glucosa de 75mg, por lo tanto se envía a desayunar, sin embargo antes de enviarla a desayunar debía tomarle por venopunción todos los exámenes del estudio metabólico que necesitan ayuna, pero no lo realizó, por lo tanto no se pudieron tomar las muestras el día de hoy a la paciente se le informó que debía venir el día de mañana a repetir los exámenes teniendo en cuenta que el día de hoy hubo una falla en la toma de la muestra (esto no se le dijo a la paciente). A la paciente se le informó que por el valor aumentado de la glucosa basal se debían repetir los estudios, sin embargo internamente evidenciamos que hubo una falla en el procedimiento ya qu', 'SEDE BARRANQUILLA/ ÁREA ENFERMERÍA', 'En Tramite', '2022-05-02', NULL, NULL, 'ANDREA', '', '', '0000-00-00', 0);

-- --------------------------------------------------------

--
-- Table structure for table `usuarios_cargos`
--

CREATE TABLE `usuarios_cargos` (
  `codigo` int(10) NOT NULL,
  `cargo` tinytext COLLATE utf8_spanish_ci NOT NULL,
  `sgc_id` varchar(50) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci COMMENT='cargos de empleados';

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accions`
--
ALTER TABLE `accions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `acpms`
--
ALTER TABLE `acpms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `actividades`
--
ALTER TABLE `actividades`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cargos`
--
ALTER TABLE `cargos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categoriaeventos`
--
ALTER TABLE `categoriaeventos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `causas`
--
ALTER TABLE `causas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `correccions`
--
ALTER TABLE `correccions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `datos`
--
ALTER TABLE `datos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `documentos`
--
ALTER TABLE `documentos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `files`
--
ALTER TABLE `files`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `formatos`
--
ALTER TABLE `formatos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `indicadors`
--
ALTER TABLE `indicadors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `metas`
--
ALTER TABLE `metas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `modelos`
--
ALTER TABLE `modelos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `procesos`
--
ALTER TABLE `procesos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `respuestas`
--
ALTER TABLE `respuestas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `satisfacions`
--
ALTER TABLE `satisfacions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `seguimientos`
--
ALTER TABLE `seguimientos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sgcexternos`
--
ALTER TABLE `sgcexternos`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `codigo` (`codigo`,`nombre`);

--
-- Indexes for table `sgc_software`
--
ALTER TABLE `sgc_software`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `solicitudes`
--
ALTER TABLE `solicitudes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Sede` (`Proceso`),
  ADD KEY `Proceso` (`Proceso`),
  ADD KEY `NombreSolicitante` (`NombreSolicitante`);

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
  ADD KEY `usuarioscargo_id` (`cargo_id`);

--
-- Indexes for table `usuarios_cargos`
--
ALTER TABLE `usuarios_cargos`
  ADD PRIMARY KEY (`codigo`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `accions`
--
ALTER TABLE `accions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `acpms`
--
ALTER TABLE `acpms`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `actividades`
--
ALTER TABLE `actividades`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cargos`
--
ALTER TABLE `cargos`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `categoriaeventos`
--
ALTER TABLE `categoriaeventos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `causas`
--
ALTER TABLE `causas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `correccions`
--
ALTER TABLE `correccions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `datos`
--
ALTER TABLE `datos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `documentos`
--
ALTER TABLE `documentos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `files`
--
ALTER TABLE `files`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `formatos`
--
ALTER TABLE `formatos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `indicadors`
--
ALTER TABLE `indicadors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `metas`
--
ALTER TABLE `metas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `modelos`
--
ALTER TABLE `modelos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `procesos`
--
ALTER TABLE `procesos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `respuestas`
--
ALTER TABLE `respuestas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `satisfacions`
--
ALTER TABLE `satisfacions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `seguimientos`
--
ALTER TABLE `seguimientos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sgcexternos`
--
ALTER TABLE `sgcexternos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=96;

--
-- AUTO_INCREMENT for table `sgc_software`
--
ALTER TABLE `sgc_software`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `solicitudes`
--
ALTER TABLE `solicitudes`
  MODIFY `id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;

--
-- AUTO_INCREMENT for table `tb_condiciones`
--
ALTER TABLE `tb_condiciones`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=130;

--
-- AUTO_INCREMENT for table `tb_proceso_noconformes`
--
ALTER TABLE `tb_proceso_noconformes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `usuarios_cargos`
--
ALTER TABLE `usuarios_cargos`
  MODIFY `codigo` int(10) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
