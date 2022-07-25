-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 21-07-2022 a las 09:59:16
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
-- Base de datos: `document_prueba1c`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `accions`
--

CREATE TABLE `accions` (
  `id` int(11) NOT NULL,
  `dato_id` int(11) NOT NULL,
  `analisis` varchar(1000) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `accion` varchar(1000) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `f_ejecucion` date NOT NULL,
  `cargo_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `accions`
--

INSERT INTO `accions` (`id`, `dato_id`, `analisis`, `accion`, `f_ejecucion`, `cargo_id`) VALUES
(1, 11, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop p', '', '2021-10-27', 4),
(2, 11, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop p', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop p', '2021-10-27', 4),
(3, 11, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', '2021-10-27', 4),
(4, 6, 'Digita el analisis para este planEs un hecho establecido hace demasiado tiempo que un lector se distraerá con el contenido del texto de un sitio mientras que mira su diseño. El punto de usar Lorem Ipsum es que tiene una distribución más o menos normal de las letras, al contrario de usar textos como por ejemplo \"Contenido aquí, contenido aquí\". Estos textos hacen parecerlo un español que se puede leer. Muchos paquetes de autoedición y editores de páginas web usan el Lorem Ipsum como su texto por defecto, y al hacer una búsqueda de \"Lorem Ipsum\" va a dar por resultado muchos sitios web que usan este texto si se encuentran en estado de desarrollo. Muchas versiones han evolucionado a través de los años, algunas veces por accidente, otras veces a propósito (por ejemplo insertándole humor y cosas por el estilo).', 'DigiEs un hecho establecido hace demasiado tiempo que un lector se distraerá con el contenido del texto de un sitio mientras que mira su diseño. El punto de usar Lorem Ipsum es que tiene una distribución más o menos normal de las letras, al contrario de usar textos como por ejemplo \"Contenido aquí, contenido aquí\". Estos textos hacen parecerlo un español que se puede leer. Muchos paquetes de autoedición y editores de páginas web usan el Lorem Ipsum como su texto por defecto, y al hacer una búsqueda de \"Lorem Ipsum\" va a dar por resultado muchos sitios web que usan este texto si se encuentran en estado de desarrollo. Muchas versiones han evolucionado a través de los años, algunas veces por accidente, otras veces a propósito (por ejemplo insertándole humor y cosas por el estilo).ta las actividades para este plan', '2021-10-29', 14),
(5, 1, 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like)', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like)', '2021-11-04', 4),
(6, 2, 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like)', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like)', '2021-11-12', 4),
(8, 3, 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like)', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like)', '2021-11-25', 4),
(10, 14, 'Here are some CakePHP find examples from the CakePHP retrieving your data book page:', 'Here are some CakePHP find examples from the CakePHP retrieving your data book page:', '2021-11-25', 4),
(11, 4, 'adasdasd', 'asdasdsdasdsadasda', '2022-07-20', 4);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `acpms`
--

CREATE TABLE `acpms` (
  `id` int(11) NOT NULL,
  `tipo_accion` varchar(500) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `fuente` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `proceso_id` int(11) NOT NULL,
  `f_reporte` date NOT NULL,
  `hallazgo` varchar(2000) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `requisito_norma` varchar(500) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `similares` varchar(500) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `consecuencia` varchar(500) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `afectacion` varchar(500) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `riesgo_oportunidad` varchar(500) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `indicador_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `acpms`
--

INSERT INTO `acpms` (`id`, `tipo_accion`, `fuente`, `proceso_id`, `f_reporte`, `hallazgo`, `requisito_norma`, `similares`, `consecuencia`, `afectacion`, `riesgo_oportunidad`, `indicador_id`) VALUES
(3, 'mejora', 'Incumplimiento indicadores', 1, '2021-11-29', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like)', 'iso 9001', 'no', 'no', 'no', 'no', NULL),
(4, 'preventiva', 'Auditoria Interna de calidad', 3, '2021-11-23', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like)', 'iso 9001', 'no', 'no', 'no', 'no', NULL),
(5, 'correctiva', 'Servicio no conforme', 3, '2021-11-30', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like)', 'iso 9001', 'no', 'no', 'no', 'no', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `actividades`
--

CREATE TABLE `actividades` (
  `id` int(11) NOT NULL,
  `causa_id` int(11) DEFAULT NULL,
  `correccion_id` int(11) DEFAULT NULL,
  `descripcion` varchar(2000) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `responsable` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `fecha_propuesta` date NOT NULL,
  `created` date NOT NULL,
  `modified` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `actividades`
--

INSERT INTO `actividades` (`id`, `causa_id`, `correccion_id`, `descripcion`, `responsable`, `fecha_propuesta`, `created`, `modified`) VALUES
(1, 0, 1, 'classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero,', 'qwerty', '2021-11-24', '2021-11-30', '2021-11-30'),
(2, 1, 0, ' piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked ', 'qwerty', '2021-11-24', '2021-11-30', '2021-11-30'),
(3, 1, 0, ' and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero,', 'qwerty1', '2021-11-24', '2021-11-30', '2021-11-30'),
(4, 1, 0, '1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero,', 'qwerty11', '2021-11-10', '2021-11-30', '2021-11-30'),
(5, 1, 0, '1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero,', 'qwerty111', '2021-12-11', '2021-11-30', '2021-11-30'),
(6, 0, 2, 'El SessionComponent de CakePHP proporciona una forma de conservar los datos del cliente entre las solicitudes de página. Actúa como envoltorio $_SESSIONy proporciona métodos de conveniencia para varias $_SESSION funciones relacionadas.', 'qwerty_V', '2021-11-24', '2021-11-30', '2021-11-30'),
(7, 0, 2, 'El SessionComponent de CakePHP proporciona una forma de conservar los datos del cliente entre las solicitudes de página. Actúa como envoltorio $_SESSIONy proporciona métodos de conveniencia para varias $_SESSION funciones relacionadas.', 'qwerty_V', '2021-11-24', '2021-11-30', '2021-11-30'),
(8, 2, 0, 'Elements with the disabled attribute aren’t interactive', 'qwerty_Vl', '2021-11-24', '2021-11-30', '2021-11-30'),
(9, 2, 0, 'Elements with the disabled attribute aren’t interactive', 'qwerty_Vll', '2021-12-07', '2021-11-30', '2021-11-30'),
(10, 0, 3, 'Elements with the disabled attribute aren’t interactiveElements with the disabled attribute aren’t interactiveElements with the disabled attribute aren’t interactiveElements with the disabled attribute aren’t interactiveElements with the disabled attribute aren’t interactiveElements with the disabled attribute aren’t interactiveElements with the disabled attribute aren’t interactiveElements with the disabled attribute aren’t interactiveElements with the disabled attribute aren’t interactiveElements with the disabled attribute aren’t interactiveElements with the disabled attribute aren’t interactiveElements with the disabled attribute aren’t interactiveElements with the disabled attribute aren’t interactiveElements with the disabled attribute aren’t interactive', 'qwerty_Vlll', '2021-11-05', '2021-11-30', '2021-11-30'),
(11, 0, 2, 'qwerty', 'qwerty_Vlll', '2021-12-22', '2021-12-01', '2021-12-01'),
(12, 0, 2, 'qwertyuiuiop', 'qwerty_Vlll', '2021-12-23', '2021-12-01', '2021-12-01'),
(13, 0, 4, 'establecer prueba', 'fabia', '2022-07-15', '2022-07-15', '2022-07-15');

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
-- Estructura de tabla para la tabla `causas`
--

CREATE TABLE `causas` (
  `id` int(11) NOT NULL,
  `descripcion` varchar(2000) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `acpm_id` int(11) NOT NULL,
  `fecha_registro` date NOT NULL,
  `created` date NOT NULL,
  `modified` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `causas`
--

INSERT INTO `causas` (`id`, `descripcion`, `acpm_id`, `fecha_registro`, `created`, `modified`) VALUES
(1, 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero,', 31, '2021-11-29', '2021-11-29', '2021-11-29'),
(2, 'Elements with the disabled attribute aren’t interactive, meaning users cannot focus, hover, or click them to trigger a tooltip (or popover). As a workaround, you’ll want to trigger the tooltip from a wrapper <div> or <span>, ideally made keyboard-focusable using tabindex=\"0\", and override the pointer-events on the disabled element.', 31, '2021-11-29', '2021-11-30', '2021-11-30'),
(3, 'agElements with the disabled attribute aren’t interactiveElements with the disabled attribute aren’t interactiveElements with the disabled attribute aren’t interactiveElements with the disabled attribute aren’t interactive', 41, '2021-11-24', '2021-11-30', '2021-11-30'),
(4, 'no se ha establecido prueba', 31, '2022-07-15', '2022-07-15', '2022-07-15');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `correccions`
--

CREATE TABLE `correccions` (
  `id` int(11) NOT NULL,
  `acpm_id` int(11) NOT NULL,
  `descripcion` varchar(2000) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `created` date NOT NULL,
  `modified` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `correccions`
--

INSERT INTO `correccions` (`id`, `acpm_id`, `descripcion`, `created`, `modified`) VALUES
(1, 0, '', '2021-11-30', '2021-11-30'),
(2, 5, 'prueba', '2021-11-30', '2021-11-30');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `datos`
--

CREATE TABLE `datos` (
  `id` int(11) NOT NULL,
  `indicador_id` int(11) NOT NULL,
  `meta_id` int(11) NOT NULL,
  `fecha_aplicacion` date NOT NULL,
  `expresion` varchar(11) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `resultado` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `datos`
--

INSERT INTO `datos` (`id`, `indicador_id`, `meta_id`, `fecha_aplicacion`, `expresion`, `resultado`) VALUES
(4, 6, 0, '2021-07-20', '100/25*100', '400'),
(5, 7, 0, '2021-10-20', '5-59', '-54'),
(6, 10, 0, '2021-10-21', '9-8', '1'),
(8, 11, 0, '2021-02-05', '3/5*100', '60'),
(9, 12, 0, '2021-10-18', '100/2000*10', '5'),
(10, 12, 0, '2021-10-20', '10/20*100', '50'),
(11, 0, 0, '2021-01-05', '  ', '50'),
(12, 13, 0, '2021-02-05', '100/80*100', '125'),
(13, 13, 0, '2021-03-05', '80/100*100', '80'),
(14, 6, 8, '2021-11-04', '100/20*100', '500'),
(15, 6, 7, '2021-12-29', '100-20*1', '80'),
(16, 6, 9, '2021-12-29', '150-20*1', '130'),
(17, 6, 10, '2022-01-29', '80-15*1', '65'),
(18, 6, 6, '2022-01-29', '2 2 ', '0'),
(19, 6, 8, '2022-03-11', '90-15*1', '75'),
(20, 15, 0, '2021-11-10', '2  ', '2'),
(21, 15, 0, '2021-11-17', '98  ', '98'),
(22, 21, 13, '2021-11-25', '8 5 ', '300'),
(23, 22, 14, '2022-02-23', '25 30 ', '83.33333333333334'),
(24, 22, 14, '2022-03-23', '36 50 ', '72'),
(25, 7, 5, '2022-07-16', '50 400 ', '20100'),
(26, 8, 0, '2022-07-20', '4 5 ', '0.2'),
(27, 7, 5, '2022-07-20', '5 8 ', '140'),
(28, 7, 5, '2022-07-19', '10 12 ', '220');

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

--
-- Volcado de datos para la tabla `documentos`
--

INSERT INTO `documentos` (`id`, `CodDocumento`, `Proceso`, `NomDocumento`, `Version`, `Recuperacion`, `proteccion`, `Almacenamiento`, `preservacion`, `Emision`, `Actualizacion`, `filename`, `dir`) VALUES
(1, 'GA-DC-001', 'GA', 'CARACTERIZACIÓN DE PROCESO II', 18, '', 'Director administrativo', 'http://calidadsg.com/SID', 'COPIA SEGURIDAD', '2017-07-13', '2020-01-29', 'docPrueba.pdf', ''),
(2, 'GC-DC-99', 'GC', ' manual de CALIDAD', 3, '', ' manual de CALIDAD', ' manual de CALIDAD', ' manual de CALIDAD', '2020-01-27', '2020-01-27', 'PORTAFOLIO2020.pdf', ''),
(3, 'GC-DC-003', 'GC', 'MANUAL DE CALIDAD', 1, '', 'servidor/documentos/calidad/documentos', 'FABIAN MEZA', 'servidor/documentos/calidad/documento', '2020-01-27', '2020-01-27', 'GC-DC-003.pdf', 'img/Empresa--01/1580179461_GC-DC-003.pdf'),
(4, 'GC-DC-003', 'GC', 'MANUAL DE CALIDAD', 1, '', 'servidor/documentos/calidad/documentos', 'FABIAN MEZA', 'servidor/documentos/calidad/documento', '2020-01-27', '2020-01-27', 'GC-DC-003.pdf', 'img/Empresa--01/1580179670_GC-DC-003.pdf'),
(5, 'GA-DC-100', 'GA', 'DOCUMENTO DE PRUEBA ACTUALIZADO', 2, '', 'PEPITO PEREZ', 'PEPITO PEREZ', 'PEPITA PEREZ', '2020-01-28', '2020-01-28', '', ''),
(6, 'GA-DC-101', 'GA', 'DOCUMENTO DE PRUEBA', 1, '', 'PEPITO PEREZ', 'PEPITO PEREZ', 'PEPITA PEREZ', '2020-01-28', '2020-01-28', '', ''),
(7, 'GA-DC-101', 'GA', 'DOCUMENTO DE PRUEBA', 7, '', 'PEPITO PEREZ', 'PEPITO PEREZ', 'PEPITA PEREZ', '2020-01-28', '2020-01-28', 'ae_cali.pdf', ''),
(14, 'GA-DC-102', 'GA', 'DOCUMENTO DE PRUEBA lll', 1, '', 'PEPITO PEREZ', 'ALEX OREJUELA', 'PEPITA PER', '2020-02-06', '0000-00-00', '', ''),
(15, 'GA-DC-102', 'GA', 'DOCUMENTO DE PRUEBA lll', 1, '', 'PEPITO PEREZ', 'ALEX OREJUELA', 'PEPITA PER', '2020-02-06', '0000-00-00', 'ADMINISTRATIVO_ FINAL.CONTORNO.pdf', ''),
(16, 'GA-DC-102', 'GA', 'DOCUMENTO DE PRUEBA lll', 1, '', 'PEPITO PEREZ', 'ALEX OREJUELA', 'PEPITA PER', '2020-02-06', '0000-00-00', 'ADMINISTRATIVO_ FINAL.CONTORNO.pdf', ''),
(17, 'GA-DC-102', 'GA', 'DOCUMENTO DE PRUEBA lll', 1, '', 'PEPITO PEREZ', 'ALEX OREJUELA', 'PEPITA PER', '2020-02-06', '0000-00-00', 'ADMINISTRATIVO_ FINAL.CONTORNO.pdf', ''),
(18, 'GA-DC-102', 'GA', 'DOCUMENTO DE PRUEBA lll', 1, '', 'PEPITO PEREZ', 'ALEX OREJUELA', 'PEPITA PER', '2020-02-06', '0000-00-00', 'ADMINISTRATIVO_ FINAL.CONTORNO.pdf', ''),
(19, 'GA-DC-102', 'GA', 'DOCUMENTO DE PRUEBA lll', 1, '', 'PEPITO PEREZ', 'ALEX OREJUELA', 'PEPITA PER', '2020-02-06', '0000-00-00', 'ADMINISTRATIVO_ FINAL.CONTORNO.pdf', ''),
(20, 'GA-DC-102', 'GA', 'DOCUMENTO DE PRUEBA lll', 1, '', 'PEPITO PEREZ', 'ALEX OREJUELA', 'PEPITA PER', '2020-02-06', '0000-00-00', 'ADMINISTRATIVO_ FINAL.CONTORNO.pdf', ''),
(21, 'GA-DC-102', 'GA', 'DOCUMENTO DE PRUEBA lll', 1, '', 'PEPITO PEREZ', 'ALEX OREJUELA', 'PEPITA PER', '2020-02-06', '0000-00-00', 'ADMINISTRATIVO_ FINAL.CONTORNO.pdf', ''),
(22, 'GA-DC-102', 'GA', 'DOCUMENTO DE PRUEBA lll', 1, '', 'PEPITO PEREZ', 'ALEX OREJUELA', 'PEPITA PER', '2020-02-06', '0000-00-00', 'ADMINISTRATIVO_ FINAL.CONTORNO.pdf', ''),
(23, 'GA-DC-102', 'GA', 'DOCUMENTO DE PRUEBA lll', 1, '', 'PEPITO PEREZ', 'ALEX OREJUELA', 'PEPITA PER', '2020-02-06', '0000-00-00', 'ADMINISTRATIVO_ FINAL.CONTORNO.pdf', ''),
(24, 'GA-DC-102', 'GA', 'DOCUMENTO DE PRUEBA lll', 1, '', 'PEPITO PEREZ', 'ALEX OREJUELA', 'PEPITA PER', '2020-02-06', '0000-00-00', 'ADMINISTRATIVO_ FINAL.CONTORNO.pdf', ''),
(25, 'GA-DC-102', 'GA', 'DOCUMENTO DE PRUEBA lll', 1, '', 'PEPITO PEREZ', 'ALEX OREJUELA', 'PEPITA PER', '2020-02-06', '0000-00-00', 'ADMINISTRATIVO_ FINAL.CONTORNO.pdf', ''),
(26, 'GA-DC-102', 'GA', 'DOCUMENTO DE PRUEBA lll', 1, '', 'PEPITO PEREZ', 'ALEX OREJUELA', 'PEPITA PER', '2020-02-06', '0000-00-00', 'ADMINISTRATIVO_ FINAL.CONTORNO.pdf', ''),
(27, 'GA-DC-102', 'GA', 'DOCUMENTO DE PRUEBA lll', 1, '', 'PEPITO PEREZ', 'ALEX OREJUELA', 'PEPITA PER', '2020-02-06', '0000-00-00', 'ADMINISTRATIVO_ FINAL.CONTORNO.pdf', ''),
(28, 'GA-DC-102', 'GA', 'DOCUMENTO DE PRUEBA lll', 1, '', 'PEPITO PEREZ', 'ALEX OREJUELA', 'PEPITA PER', '2020-02-06', '0000-00-00', 'ADMINISTRATIVO_ FINAL.CONTORNO.pdf', ''),
(29, 'GA-DC-102', 'GA', 'DOCUMENTO DE PRUEBA lll', 1, '', 'PEPITO PEREZ', 'ALEX OREJUELA', 'PEPITA PER', '2020-02-06', '0000-00-00', 'ADMINISTRATIVO_ FINAL.CONTORNO.pdf', ''),
(30, 'GA-DC-102', 'GA', 'DOCUMENTO DE PRUEBA lll', 1, '', 'PEPITO PEREZ', 'ALEX OREJUELA', 'PEPITA PER', '2020-02-06', '0000-00-00', 'ADMINISTRATIVO_ FINAL.CONTORNO.pdf', ''),
(31, 'GA-DC-102', 'GA', 'DOCUMENTO DE PRUEBA lll', 1, '', 'PEPITO PEREZ', 'ALEX OREJUELA', 'PEPITA PER', '2020-02-06', '0000-00-00', 'ADMINISTRATIVO_ FINAL.CONTORNO.pdf', ''),
(32, 'GA-DC-102', 'GA', 'DOCUMENTO DE PRUEBA lll', 1, '', 'PEPITO PEREZ', 'ALEX OREJUELA', 'PEPITA PER', '2020-02-06', '0000-00-00', 'ADMINISTRATIVO_ FINAL.CONTORNO.pdf', ''),
(33, 'GA-DC-102', 'GA', 'DOCUMENTO DE PRUEBA lll', 1, '', 'PEPITO PEREZ', 'ALEX OREJUELA', 'PEPITA PER', '2020-02-06', '0000-00-00', 'ADMINISTRATIVO_ FINAL.CONTORNO.pdf', ''),
(34, 'GA-DC-103', 'GA', 'DOCUMENTO DE PRUEBA', 1, '', 'Director administrativo', 'ALEX OREJUELA', 'ARCHIVO DE PRUEBA', '2020-02-29', '0000-00-00', '', ''),
(35, 'GA-DC-103', 'GA', 'DOCUMENTO DE PRUEBA', 1, '', 'Director administrativo', 'ALEX OREJUELA', 'ARCHIVO DE PRUEBA', '2020-02-29', '0000-00-00', 'infa.png', ''),
(36, 'GA-DC-103', 'GA', 'DOCUMENTO DE PRUEBA', 1, '', 'Director administrativo', 'ALEX OREJUELA', 'ARCHIVO DE PRUEBA', '2020-02-29', '0000-00-00', 'infa.png', ''),
(37, '--1', 'GD', 'PROTOCOLO DE BIOSEGURIDAD', 1, '', 'LIDER DE CALIDAD', 'LIDER DE CALIDAD', 'Carpeta Proceso', '0021-12-13', '0000-00-00', '', ''),
(38, '1', 'GD', '4242', 1, '', '24424', '2442', '4224', '2021-12-14', '0000-00-00', 'C_pedagogicas 1.png', ''),
(39, 'GB-DC-004', 'GB', 'XXXXX', 1, '', 'LIDER DE PROYECTOS', 'LIDER DE PROYECTOS', 'Carpeta Proceso', '2021-12-13', '0000-00-00', '', ''),
(40, 'GA-DC-104', 'GA', 'prueba 3000', 1, '', 'michell', 'michell', 'michell', '2021-12-22', '0000-00-00', 'evidencia 2b.pdf', ''),
(41, 'GA-DC-105', 'GA', '', 1, '', '', '', 'Carpeta de proceso', '2022-05-10', '0000-00-00', '', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `files`
--

CREATE TABLE `files` (
  `id` int(11) NOT NULL,
  `file_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `proceso` varchar(5) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `username` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `uploaded` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `files`
--

INSERT INTO `files` (`id`, `file_name`, `proceso`, `username`, `uploaded`) VALUES
(1, 'SAM_2901.JPG', NULL, NULL, '2017-08-21 12:01:00'),
(2, 'logo-cua.png', NULL, NULL, '2017-09-24 11:43:06'),
(3, 'pio.png', NULL, NULL, '2017-10-11 18:43:06'),
(4, 'DI-D-01.pdf', NULL, NULL, '2017-11-20 18:24:14'),
(5, 'GP-FR-00123.pdf', 'P4', 'fmeza', '2018-12-19 09:04:40');

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

--
-- Volcado de datos para la tabla `formatos`
--

INSERT INTO `formatos` (`id`, `CodFormato`, `Proceso`, `NomFormato`, `RutaFormato`, `Version`, `Emision`, `Actualizacion`, `Almacenamiento`, `Proteccion`, `TipoRecuperacion`, `Recuperacion`, `TiempoRetencion`, `DispFinal`, `Responsable`) VALUES
(1, 'GA-FR-001', 'GA', 'ENTREVISTA AL ASPIRANTE', 'https://drive.google.com/open?id=0B4T4pK1bl8cGZmNjRHRpY1lCSWc', 1, '2017-07-03', '2018-11-27', 'Drive/Admitrativo/', '	Jhon Mauricio Guerrero Soto', 'Cronologico', 'https://docs.google.com/document/d/1p0W65MxJgQet2dKGuKZwUac4m8jUiwmZKFpQgpqkGvg/edit?usp=sharing', '2', 'Digitalizar', '	Jhon Mauricio Guerrero Soto'),
(2, 'GA-FR-002', 'GA', 'COMPETENCIA ASESOR EDUCATIVO', 'https://drive.google.com/open?id=0B4T4pK1bl8cGUTBBeXhBcUd0Qmc', 1, '2017-07-03', '2018-11-27', 'Drive/Admitrativo/', 'Jhon Mauricio Guerrero Soto', 'Cronologico', 'https://drive.google.com/drive/folders/1wh4nkPc7YpB1Aq2TX6AZpbOvlBPuEfQ6?usp=sharing', '2', 'Digitalizar', '	Jhon Mauricio Guerrero Soto'),
(3, 'GA-FR-003', 'GA', 'EVALUACIÓN DE DESEMPEÑO ASESORES EDUCATIVOS', 'https://drive.google.com/open?id=0B4T4pK1bl8cGUTktdXNDRzJHLTQ', 6, '2017-07-01', '2017-07-01', 'Drive/Admitrativo/', 'Jhon Mauricio Guerrero Soto', 'Cronologico', 'https://drive.google.com/drive/folders/1AOZOHBb9sdWhKJ4uUFnV0TrksmL5meUb?usp=sharing', '2', 'Digitalizar', 'Jhon Mauricio Guerrero Soto99'),
(4, 'GA-FR-004', 'GA', 'EVALUACIÓN DE DESEMPEÑO PERSONAL ADMINISTRATIVO', 'https://drive.google.com/open?id=0B4T4pK1bl8cGY2U3Zm9XcWJIeTQ', 1, '2017-07-03', '2018-11-27', 'Drive/Admitrativo/', 'Jhon Mauricio Guerrero Soto', 'Cronologico', 'https://drive.google.com/drive/folders/1KHMa_RKETiu_hEoCowDY1aa0b0FQHaA5?usp=sharing', '2', 'Digitalizar', 'Jhon Mauricio Guerrero Soto'),
(5, 'GA-FR-005', 'GA', 'EVALUACION DE COMPETENCIAS ADMINISTRATIVOS', 'https://drive.google.com/open?id=0B4T4pK1bl8cGUHB5NS01RHhBZmM', 1, '2017-07-03', '2018-11-27', 'Drive/Admitrativo/', 'Jhon Mauricio Guerrero Soto', 'Cronologico', 'https://drive.google.com/drive/folders/1qUUJwmbJwWIZQCmx2lwg4LptM7jR7kYZ?usp=sharing', '2', 'Digitalizar', 'Jhon Mauricio Guerrero Soto'),
(6, 'GA-FR-006', 'GA', 'MEMORANDO', 'https://drive.google.com/open?id=0B4T4pK1bl8cGT2gtNXhtVEdLaTg', 1, '2017-07-03', '2018-11-27', 'Drive/Admitrativo/', 'Carolina Duarte Vanegas', 'Cronologico', 'https://docs.google.com/document/d/1aEml7Y6qUzWxGn2C0f9t8A4UvbEbzxSkoW40VDPYouw/edit?usp=sharing', '2', 'Digitalizar', 'Jhon Mauricio Guerrero Soto'),
(7, 'GA-FR-007', 'GA', 'DIRECTORIO DEL PERSONAL', 'https://drive.google.com/open?id=0B4T4pK1bl8cGU1pkLXRNeUFKdFU', 1, '2017-07-03', '2018-11-27', 'Drive/Admitrativo/', 'Jhon Mauricio Guerrero Soto', 'Cronologico', 'https://docs.google.com/spreadsheets/d/1ei5bYVHObRlWk9-eoZywb7jpgZgLCIm8JF-EgziT760/edit?usp=sharing\n', '2', 'Digitalizar', 'Carolina Duarte Vanegas'),
(8, 'GA-FR-008', 'GA', 'CONTRATO DE PRESTACION DE SERVICIOS ASESORES', 'https://drive.google.com/open?id=0B4T4pK1bl8cGbF84M29CT1pKNTQ\n', 1, '2017-01-16', '2018-11-27', 'Drive/Admitrativo/', 'Carolina Duarte Vanegas', 'Cronologico', 'https://drive.google.com/drive/folders/1OxcLssL8xJk_tGgqTLSj7aSzgoI0hbOD?usp=sharing', '2', 'Digitalizar', 'Jhon Mauricio Guerrero Soto'),
(9, 'GA-FR-009', 'GA', 'PLAN DE FORMACION', 'https://drive.google.com/open?id=0B4T4pK1bl8cGbi1MdUxxTnVHb3M', 1, '2017-07-04', '2018-11-27', 'Drive/Admitrativo/', 'Jhon Mauricio Guerrero Soto', 'Cronologico', 'https://docs.google.com/spreadsheets/d/16hjIQfuh1wF9uFMk_bY6PyB0jwMvq3Jny1YXrtWCFrc/edit?usp=sharing', '2', 'Digitalizar', 'Carolina Duarte Vanegas'),
(10, 'GA-FR-010', 'GA', 'RESULTADO EVALUACION DE DESMPE?O DIRECTIVO', 'https://drive.google.com/open?id=0B4T4pK1bl8cGRkNVeFRwODN6RzA', 1, '2017-07-04', '2018-11-27', 'Drive/Admitrativo/', 'Carolina Duarte Vanegas', 'Cronologico', 'https://docs.google.com/document/d/1AfJ0_scsHz3sgbmnf9me0saHUwuJQBQe8pJGnWiSomk/edit?usp=sharing', '2', 'Digitalizar', 'Jhon Mauricio Guerrero Soto'),
(11, 'GA-FR-011', 'GA', 'SOLICITUD DE LICENCIA LABORAL', 'https://drive.google.com/open?id=0B4T4pK1bl8cGcC1jSC0tNEk1NFU', 1, '2017-07-04', '2018-11-27', 'Drive/Admitrativo/', 'Carolina Duarte Vanegas', 'Cronologico', 'https://docs.google.com/document/d/1wKR596wSfREQGynjLx8AL8A3L6Tlo4Y_U3In9YIy7lM/edit?usp=sharing', '2', 'Digitalizar', 'Carolina Duarte Vanegas'),
(12, 'GA-FR-012', 'GA', 'INDUCCION Y REINDUCCION DE PERSONAL', 'https://drive.google.com/open?id=0B4T4pK1bl8cGRW01d09EdXhGSjg', 1, '2017-07-04', '2018-11-27', 'Drive/Admitrativo/', 'Carolina Duarte Vanegas', 'Cronologico', 'https://docs.google.com/document/d/1-71Hr4cCqGWTXgnmr9mFZYIJAO03Xwl1mZ26V3B1T_Q/edit?usp=sharing', '2', 'Digitalizar', 'Carolina Duarte Vanegas'),
(13, 'GA-FR-013', 'GA', 'LISTA DE PROVEEDORES', 'https://drive.google.com/open?id=0B4T4pK1bl8cGVWhWdmUtZ2FZYUk', 1, '2017-07-05', '2018-11-27', 'Drive/Admitrativo/', 'Carolina Duarte Vanegas', 'Cronologico', 'https://drive.google.com/drive/folders/1ZCcnJppeJ6Z-UF9QPCQQiBdl1uyc3nc9?usp=sharing', '2', 'Digitalizar', 'Carolina Duarte Vanegas'),
(14, 'GA-FR-014', 'GA', 'LISTA DE ASISTENCIA', 'https://drive.google.com/open?id=0B4T4pK1bl8cGSzhBU2J1SVVTSVk', 1, '2017-07-05', '2018-11-27', 'Drive/Admitrativo/', 'Carolina Duarte Vanegas', 'Cronologico', 'https://docs.google.com/document/d/1YggnsDdvAvDxMcFEgSfflTCVgf9kCrw7JotXjokUAi8/edit?usp=sharing', '2', 'Digitalizar', 'Carolina Duarte Vanegas'),
(15, 'GA-FR-015', 'GA', 'REGISTRO DE FORMACION', 'https://drive.google.com/open?id=0B4T4pK1bl8cGV05TaVZDbWlaVE0\n\n', 1, '2017-07-05', '2018-11-27', 'Drive/Admitrativo/', 'Jhon Mauricio Guerrero Soto', 'Cronologico', 'https://docs.google.com/document/d/1Do-O_CgEM9yKGieqvAb00ap46U83cnCnsA2dT41mjZo/edit?usp=sharing\n', '2', 'Digitalizar', 'Carolina Duarte Vanegas'),
(16, 'GA-FR-016', 'GA', 'SOLICITUD DE RECURSOS', 'https://drive.google.com/open?id=0B4T4pK1bl8cGMUkwd0lhQXZFRmM', 1, '2017-05-05', '2018-11-27', 'Drive/Admitrativo/', 'Carolina Duarte Vanegas', 'Cronologico', 'https://docs.google.com/spreadsheets/d/1DQPt7dGkyrU3dnjgX8umFnLD7Yeke6X36A4_2J88XMU/edit?usp=sharing', '2', 'Digitalizar', 'Jhon Mauricio Guerrero Soto'),
(17, 'GA-FR-017', 'GA', 'CRONOGRAMA DE INICIO DE PROGRAMA', 'https://drive.google.com/open?id=0B4T4pK1bl8cGZS1wb0pZRkZGN2M\n', 1, '2017-07-12', '2018-11-27', 'Drive/Admitrativo/', 'Carolina Duarte Vanegas', 'Cronologico', 'https://docs.google.com/spreadsheets/d/17v0hhpzoHjOgko5sZwAWJgBNBXiUtF8yEe1bAL97EOQ/edit?usp=sharing', '2', 'Digitalizar', 'Carolina Duarte Vanegas'),
(18, 'GA-FR-018', 'GA', 'ORDEN DE COMPRA', 'https://drive.google.com/open?id=0B4T4pK1bl8cGSXl3eEdQUnlLRkE', 1, '2017-05-12', '2018-11-27', 'Drive/Admitrativo/', 'Carolina Duarte Vanegas', 'Numerico', 'https://docs.google.com/spreadsheets/d/1McTzLE2dhu2tbVfpvJ2qFYsWRf0JYUFXmnU-M5scIes/edit?usp=sharing', '2', 'Digitalizar', 'Carolina Duarte Vanegas'),
(19, 'GA-FR-019', 'GA', 'INVENTARIOS', 'https://drive.google.com/open?id=0B4T4pK1bl8cGWVUwd0d4TDhSQjA\n\n', 1, '2017-05-12', '2018-11-27', 'Drive/Admitrativo/', 'Carolina Duarte Vanegas', 'Cronologico', 'https://docs.google.com/spreadsheets/d/1E9gR6enL3SHBbeL-MgObIMFags3fNtWuX5RKaj36Ado/edit?usp=sharing\n\n', '2', 'Digitalizar', 'Carolina Duarte Vanegas'),
(20, 'GA-FR-020', 'GA', 'CERTIFICACION LABORAL', 'https://drive.google.com/open?id=0B4T4pK1bl8cGNm9LRVRSYmdjNEk\n\n\n', 1, '2017-05-12', '2018-11-27', 'Drive/Admitrativo/', 'Carolina Duarte Vanegas', 'Cronologico', 'https://docs.google.com/document/d/1iB-eAAKn7fHsRRvzKG9QUvFpP7AoLDa42_BtSyP0Vf8/edit?usp=sharing\n', '2', 'Digitalizar', 'Carolina Duarte Vanegas'),
(21, 'GA-FR-021', 'GA', 'CONTRATO A TERMINO FIJO INFERIOR A UN AÑO', 'https://drive.google.com/open?id=0B4T4pK1bl8cGSjd1d1hjeEU4Ymc\n\n', 1, '2017-05-12', '2018-11-27', 'Drive/Admitrativo/', 'Carolina Duarte Vanegas', 'Cronologico', 'https://docs.google.com/document/d/1kWpjgTY4w0JKhU9dMEwR5FyUj0Zc8bpwLYu57CymJBY/edit?usp=sharing', '2', 'Digitalizar', 'Carolina Duarte Vanegas'),
(22, 'GA-FR-022', 'GA', 'CONTRATO DE PRESTACION DE SERVICIOS', 'https://drive.google.com/open?id=0B4T4pK1bl8cGZXprU2R3aFBmcDA\n', 1, '2017-07-03', '2018-11-27', 'Drive/Admitrativo/', 'Carolina Duarte Vanegas', 'Cronologico', 'https://docs.google.com/document/d/1IqPZJfh1b7CooDi31bPDFRtZakPJP8F-BBFo36JxWUM/edit?usp=sharing', '2', 'Digitalizar', 'Carolina Duarte Vanegas'),
(23, 'GA-FR-023', 'GA', 'PERFIL DEL CARGO', 'https://drive.google.com/open?id=0B4T4pK1bl8cGaGE4XzdOYlk5RXc', 1, '2017-07-03', '2018-11-27', 'Drive/Admitrativo/', 'Jhon Mauricio Guerrero Soto', 'Cronologico', 'https://docs.google.com/spreadsheets/d/1nvf9bwQJAw1dnruEKoj9rRGSPuB78CEkyr1NE078M7s/edit?usp=sharing', '2', 'Digitalizar', 'Carolina Duarte Vanegas'),
(24, 'GA-FR-024', 'GA', 'RE-VALUACION DE PROVEEDORES', 'https://drive.google.com/open?id=1fWjwArledCWbJvAA0FYLOJoqqZg2l_1-ZPEep3nyPeo', 1, '2017-10-17', '2018-11-27', 'Drive/Admitrativo/', 'Carolina Duarte Vanegas', 'Cronologico', 'https://docs.google.com/spreadsheets/d/1Mrdj9r3s1kQbus7lBd6ZAyMz6v5LLqtExH-rsOk91cQ/edit?usp=sharing', '2', 'Digitalizar', 'Jhon Mauricio Guerrero Soto'),
(25, 'GA-FR-025', 'GA', 'EVALUACION INICIAL DE PROVEEDORES', 'https://drive.google.com/open?id=0B4T4pK1bl8cGNlY4QXZBT0VIcDA', 1, '2017-10-17', '2018-11-27', 'Drive/Admitrativo/', 'Carolina Duarte Vanegas', 'Cronologico', 'https://docs.google.com/spreadsheets/d/1FprEVxwimSpVgp8jkqGQ6WgtJUTGuCU591vT-1LxT2k/edit?usp=sharing', '2', 'Digitalizar', 'Carolina Duarte Vanegas'),
(26, 'GA-FR-026', 'GA', 'FICHA TECNICA', 'https://drive.google.com/open?id=0B4T4pK1bl8cGcmc1LTJ2bjc4dDQ', 1, '2017-10-17', '2018-11-27', 'Drive/Admitrativo/', 'Carolina Duarte Vanegas', 'Cronologico', 'https://docs.google.com/spreadsheets/d/19SpY2Elf_zV9n7e04F8sRqwsFeB8l5skhPqBaYiT8Ks/edit?usp=sharing', '2', 'Digitalizar', 'Carolina Duarte Vanegas'),
(27, 'GB-FR-001', 'GB', 'Control Pausas Activas', 'https://docs.google.com/spreadsheets/d/1qBN-BnXGTBBgoFjvbC-mY0LYSDrPEtxErRuLVJEKElY/edit?usp=sharing', 1, '2018-04-27', '2018-11-27', 'Drive/Bienestar/', 'Carolina Duarte', 'Cronologico', 'https://docs.google.com/spreadsheets/d/1qBN-BnXGTBBgoFjvbC-mY0LYSDrPEtxErRuLVJEKElY/edit?usp=sharing', '2', 'Digitalizar', 'Carolina Duarte'),
(28, 'GB-FR-002', 'GB', 'Psicologia Consejeria', 'https://docs.google.com/spreadsheets/d/1EN8CNt1bLkR6xcTFLk6P2fb-fpKeCTq9B83yMCsq8KU/edit?usp=sharing', 1, '2018-04-30', '2018-11-27', 'Drive/Bienestar/', 'Carolina Duarte', 'Cronologico', 'https://docs.google.com/spreadsheets/d/1EN8CNt1bLkR6xcTFLk6P2fb-fpKeCTq9B83yMCsq8KU/edit?usp=sharing', '2', 'Digitalizar', 'Carolina Duarte'),
(29, 'GB-FR-003', 'GB', 'Asistencia Actividades', 'https://docs.google.com/document/d/1DoRtqA2BNdrv_xf-rjfKv-r29cIXBJVMsDYIkAgI59k/edit?usp=sharing', 1, '2017-07-04', '2018-11-27', 'Drive/Bienestar/', 'Carolina Duarte', 'Cronologico', 'https://docs.google.com/document/d/1DoRtqA2BNdrv_xf-rjfKv-r29cIXBJVMsDYIkAgI59k/edit?usp=sharing', '2', 'Digitalizar', 'Carolina Duarte'),
(30, 'GB-FR-004', 'GB', 'Permiso para el Personal', 'https://drive.google.com/open?id=1RxIUfP5sX4TPm-Jcda3Pw_bvjJaoVHJTj83743koMlE', 1, '2017-07-04', '2018-11-27', 'Drive/Bienestar/', 'Carolina Duarte', 'Cronologico', 'https://docs.google.com/spreadsheets/d/1RxIUfP5sX4TPm-Jcda3Pw_bvjJaoVHJTj83743koMlE/edit?usp=sharing', '2', 'Digitalizar', 'Carolina Duarte'),
(31, 'GB-FR-005', 'GB', 'SEGUIMIENTO EGRESADOS ENCUESTA EGRESADOS', 'https://docs.google.com/spreadsheets/d/1nOk8T5GWseG2u-_tCsYgGGDXgOTChkOJKSQmXtkRzP0/edit?usp=sharing', 1, '2017-07-04', '2018-11-27', 'Drive/Bienestar/', 'Carolina Duarte', 'Cronologico', 'https://docs.google.com/spreadsheets/d/1nOk8T5GWseG2u-_tCsYgGGDXgOTChkOJKSQmXtkRzP0/edit?usp=sharing', '2', 'Digitalizar', 'Carolina Duarte'),
(32, 'GB-FR-006', 'GB', 'Permiso Para Salida Pedagogica', 'https://docs.google.com/document/d/1ZGVSzt2u0oEHqT9bzVSoeX4RMFYaYDGHHsIK0R_EDsY/edit?usp=sharing', 1, '2017-07-04', '2018-11-27', 'Drive/Bienestar/', 'Carolina Duarte', 'Cronologico', 'https://docs.google.com/document/d/1ZGVSzt2u0oEHqT9bzVSoeX4RMFYaYDGHHsIK0R_EDsY/edit?usp=sharing', '2', 'Digitalizar', 'Carolina Duarte'),
(33, 'GB-FR-007', 'GB', 'Solicitud Para Proyecto Extraclase', 'https://docs.google.com/document/d/1Q39VrM_oAp_ninOKBdblB21d3jnFDFlc_7PqAamlPNE/edit?usp=sharing', 1, '2017-07-04', '2018-11-27', 'Drive/Bienestar/', 'Carolina Duarte', 'Cronologico', 'https://docs.google.com/document/d/1Q39VrM_oAp_ninOKBdblB21d3jnFDFlc_7PqAamlPNE/edit?usp=sharing', '2', 'Digitalizar', 'Carolina Duarte'),
(34, 'GB-FR-008', 'GB', ' Formato Evaluacion Inicial del SG-SST', 'https://docs.google.com/spreadsheets/d/1F7QAiKyU7kpE45Xo861JbBIFMAx-iqaPfdH6JXtLrIA/edit?usp=sharing', 1, '2018-06-01', '2018-11-27', 'Drive/Bienestar/', 'Carolina Duarte Vanegas', 'Cronologico', '', '2', 'DIGITALIZAR', 'Carolina Duarte Vanegas'),
(35, 'GB-FR-009', 'GB', 'Formato matriz de peligros y evaluación de riesgos', 'https://docs.google.com/spreadsheets/d/1GUmFNFDIH_iV03uBATVQTlbzSr55y2YEd2jSeGV2R8M/edit?usp=sharing', 1, '2018-06-01', '2018-11-27', 'Drive/Bienestar/', 'Carolina Duarte', 'Cronologico', 'https://docs.google.com/spreadsheets/d/1GUmFNFDIH_iV03uBATVQTlbzSr55y2YEd2jSeGV2R8M/edit?usp=sharing', '2', 'Digitalizar', 'Carolina Duarte'),
(36, 'GB-FR-010', 'GB', 'Formato Acta de Nombramiento del Vigia en Seguridad y Salud en el Trabajo', 'https://docs.google.com/document/d/1WnR20Bzfcyt3VDN24NSIbPvQrQM7tNY8iJH-ZVJWczg/edit?usp=sharing', 1, '2018-06-01', '2018-11-27', 'Drive/Bienestar/', 'Carolina Duarte Vanegas', 'Cronologico', 'https://docs.google.com/document/d/1WnR20Bzfcyt3VDN24NSIbPvQrQM7tNY8iJH-ZVJWczg/edit?usp=sharing', '2', 'DIGITALIZAR', 'Carolina Duarte Vanegas'),
(37, 'GB-FR-011', 'GB', 'Formato Entrega EPP y Dotacion del Trabajo', 'https://docs.google.com/spreadsheets/d/1aS9X6VPLkPz3XkSIluxb9Cn-yN3NxT5Hr3j8MHlvsck/edit?usp=sharing', 1, '2018-06-01', '2018-11-27', 'Drive/Bienestar/', 'Carolina Duarte Vanegas', 'Cronologico', 'https://docs.google.com/spreadsheets/d/1aS9X6VPLkPz3XkSIluxb9Cn-yN3NxT5Hr3j8MHlvsck/edit?usp=sharing', '2', 'DIGITALIZAR', 'Carolina Duarte Vanegas'),
(38, 'GB-FR-012', 'GB', 'Formato Inventario de Equipos Contraincendios y Primeros Auxilios', 'https://docs.google.com/spreadsheets/d/1oAPsKL-lxyFL8mBEiB9KbKKvu2ySsE_gV3w7wxuxZ5g/edit?usp=sharing', 1, '2018-06-01', '2018-11-27', 'Drive/Bienestar/', 'Carolina Duarte Vanegas', 'Cronologico', 'https://docs.google.com/spreadsheets/d/1oAPsKL-lxyFL8mBEiB9KbKKvu2ySsE_gV3w7wxuxZ5g/edit?usp=sharing', '2', 'DIGITALIZAR', 'Carolina Duarte Vanegas'),
(39, 'GB-FR-013', 'GB', 'Formato Reporte Restricciones Medicas Laborales', 'https://docs.google.com/spreadsheets/d/13M7e5wwyLsd4s5PWHPtuHMqnsuccf2LeSdB0whPdITg/edit?usp=sharing', 1, '2018-06-01', '2018-11-27', 'Drive/Bienestar/', 'Carolina Duarte Vanegas', 'Cronologico', 'https://docs.google.com/spreadsheets/d/13M7e5wwyLsd4s5PWHPtuHMqnsuccf2LeSdB0whPdITg/edit?usp=sharing', '2', 'DIGITALIZAR', 'Carolina Duarte Vanegas'),
(40, 'GB-FR-014', 'GB', 'Formato de Induccion y Reinduccion en SST', 'https://docs.google.com/spreadsheets/d/1pBvtdDV1Us2KfVaq-fshgQaQ8HCFVQ9nI3Y-haELGG8/edit?usp=sharing', 1, '2018-06-01', '2018-11-27', 'Drive/Bienestar/', 'Carolina Duarte Vanegas', 'Cronologico', 'https://docs.google.com/spreadsheets/d/1pBvtdDV1Us2KfVaq-fshgQaQ8HCFVQ9nI3Y-haELGG8/edit?usp=sharing', '2', 'DIGITALIZAR', 'Carolina Duarte Vanegas'),
(41, 'GB-FR-015', 'GB', 'Formato Matriz de Objetivos e Indicadores del SG-SST', 'https://docs.google.com/spreadsheets/d/1nElOIyh0J6-lWMnm1QORWVLx_DbyAhOapIaqsbUjXpo/edit?usp=sharing', 1, '2018-06-01', '2018-11-27', 'Drive/Bienestar/', 'Carolina Duarte Vanegas', 'Cronologico', 'https://docs.google.com/spreadsheets/d/1nElOIyh0J6-lWMnm1QORWVLx_DbyAhOapIaqsbUjXpo/edit?usp=sharing', '2', 'DIGITALIZAR', 'Carolina Duarte Vanegas'),
(42, 'GB-FR-016', 'GB', 'Formato Plan de Trabajo Anual', 'https://docs.google.com/spreadsheets/d/1LnvnAP5DNNxbCL4z_bbNC498DlxRNqJjqYYCZTvImMQ/edit?usp=sharing', 1, '2018-06-01', '2018-11-27', 'Drive/Bienestar/', 'Carolina Duarte Vanegas', 'Cronologico', 'https://docs.google.com/spreadsheets/d/1LnvnAP5DNNxbCL4z_bbNC498DlxRNqJjqYYCZTvImMQ/edit?usp=sharing', '2', 'DIGITALIZAR', 'Carolina Duarte Vanegas'),
(43, 'GB-FR-017', 'GB', 'Formato Matriz de Elementos de Proteccion Personal', 'https://docs.google.com/spreadsheets/d/1NLe3n013YS1cdlwvVOO_UhgrVHdVBLXUWHdCi8pb23I/edit?usp=sharing', 1, '2018-06-01', '2018-11-27', 'Drive/Bienestar/', 'Carolina Duarte Vanegas', 'Cronologico', 'https://docs.google.com/spreadsheets/d/1NLe3n013YS1cdlwvVOO_UhgrVHdVBLXUWHdCi8pb23I/edit?usp=sharing', '2', 'DIGITALIZAR', 'Carolina Duarte Vanegas'),
(44, 'GB-FR-018', 'GB', 'Formato Autoreporte de Condiciones de Salud', 'https://docs.google.com/spreadsheets/d/1L3xLyDGGHzwhvOxU5basqUUDPt4_qwCH-wcTNwr33G4/edit?usp=sharing', 1, '2018-06-01', '2018-11-27', 'Drive/Bienestar/', 'Carolina Duarte Vanegas', 'Cronologico', 'https://docs.google.com/spreadsheets/d/1L3xLyDGGHzwhvOxU5basqUUDPt4_qwCH-wcTNwr33G4/edit?usp=sharing', '2', 'DIGITALIZAR', 'Carolina Duarte Vanegas'),
(45, 'GB-FR-019', 'GB', 'Formato Diagnostico de Condiciones de Salud', 'https://docs.google.com/document/d/1uzOpggt6o9jbeFy6WKnWJhdHorXA8ySfbQvyjrSiEtI/edit?usp=sharing', 1, '2018-06-01', '2018-11-27', 'Drive/Bienestar/', 'Carolina Duarte Vanegas', 'Cronologico', 'https://drive.google.com/drive/folders/1XUq0jLn-FEMUZBrQbh53nI-jmKN-rk2h?usp=sharing', '2', 'DIGITALIZAR', 'Carolina Duarte Vanegas'),
(46, 'GB-FR-020', 'GB', 'Formato de Investigacion de Accidentes', 'https://docs.google.com/spreadsheets/d/1ynteqeN4nrHSBoblGxSJTl7Uts_QQrYeYOsj57waAfo/edit?usp=sharing', 1, '2018-06-01', '2018-11-27', 'Drive/Bienestar/', 'Carolina Duarte Vanegas', 'Cronologico', 'https://docs.google.com/spreadsheets/d/1ynteqeN4nrHSBoblGxSJTl7Uts_QQrYeYOsj57waAfo/edit?usp=sharing', '2', 'DIGITALIZAR', 'Carolina Duarte Vanegas'),
(47, 'GB-FR-021', 'GB', 'Formato Seguimiento de Morbimortalidad y Ausentismmo Laboral', 'https://docs.google.com/spreadsheets/d/1UGCjCMGem8jbEYV_v_By1lNhvV9cD32BQO0AUQ6XYtI/edit?usp=sharing', 1, '2018-06-01', '2018-11-27', 'Drive/Bienestar/', 'Carolina Duarte Vanegas', 'Cronologico', 'https://docs.google.com/spreadsheets/d/1UGCjCMGem8jbEYV_v_By1lNhvV9cD32BQO0AUQ6XYtI/edit?usp=sharing', '2', 'DIGITALIZAR', 'Carolina Duarte Vanegas'),
(48, 'GB-FR-022', 'GB', 'Formato Medidas de Prevencion y Control de Riesgos', 'https://docs.google.com/spreadsheets/d/1MexaPbZEXIIJTN5L5rEDxKGW2L6GdliPxFjm8tmbW6k/edit?usp=sharing', 1, '2018-06-01', '2018-11-27', 'Drive/Bienestar/', 'Carolina Duarte Vanegas', 'Cronologico', 'https://docs.google.com/spreadsheets/d/1MexaPbZEXIIJTN5L5rEDxKGW2L6GdliPxFjm8tmbW6k/edit?usp=sharing', '2', 'DIGITALIZAR', 'Carolina Duarte Vanegas'),
(49, 'GB-FR-023', 'GB', 'Formato Inspeccion y Control de Extintores', 'https://docs.google.com/spreadsheets/d/1LpSt6jXEmhLO1mp1N4MvOxTF7yB3Y-VfiHCRSzcjt70/edit?usp=sharing', 1, '2018-06-01', '2018-11-27', 'Drive/Bienestar/', 'Carolina Duarte Vanegas', 'Cronologico', 'https://docs.google.com/spreadsheets/d/1LpSt6jXEmhLO1mp1N4MvOxTF7yB3Y-VfiHCRSzcjt70/edit?usp=sharing', '2', 'DIGITALIZAR', 'Carolina Duarte Vanegas'),
(50, 'GB-FR-024', 'GB', 'Formato Inspeccion de Elementos de Proteccion Personal', 'https://docs.google.com/spreadsheets/d/1ylOvdDxPlyWGLGxE1FGdCWSKS4Ql7wfrZ9rzJhnQz9U/edit?usp=sharing', 1, '2018-06-01', '2018-11-27', 'Drive/Bienestar/', 'Carolina Duarte Vanegas', 'Cronologico', 'https://docs.google.com/spreadsheets/d/1ylOvdDxPlyWGLGxE1FGdCWSKS4Ql7wfrZ9rzJhnQz9U/edit?usp=sharing', '2', 'DIGITALIZAR', 'Carolina Duarte Vanegas'),
(51, 'GC-FR-001', 'GC', 'LISTADO MAESTRO DE DOCUMENTOS', 'http://calidadsg.com/SID/politecnico/manejo_documental/SGC/proceso.php?proceso=', 2, '2017-05-04', '2018-04-20', 'Sistema de Control de los Cambios', 'Fabian Meza Murillo', 'Cronologico', 'http://calidadsg.com/SID/politecnico/manejo_documental/SGC/proceso.php?proceso=P4\n', '2', 'Digitalizar', 'Fabian Meza Murillo'),
(52, 'GC-FR-002', 'GC', 'LISTADO MAESTRO DE REGISTRO', 'http://calidadsg.com/SID/politecnico/manejo_documental/SGC/formatos.php?proceso=', 1, '2017-08-02', '2018-11-27', 'Sistema de Control de los Cambios', 'Fabian Meza Murillo', 'Cronologico', 'http://calidadsg.com/SID/politecnico/manejo_documental/SGC/formatos.php?proceso=P4', '2', 'Digitalizar', 'Fabian Meza Murillo'),
(53, 'GC-FR-003', 'GC', 'LISTADO MAESTRO DE DOCUMENTOS EXTERNOS', 'http://calidadsg.com/SID/politecnico/manejo_documental/SGC/procesoext.php?proceso=', 1, '2017-05-04', '2018-11-27', 'Sistema de Control de los Cambios', 'Fabian Meza Murillo', 'Cronologico', 'http://calidadsg.com/SID/politecnico/manejo_documental/SGC/procesoext.php?proceso=P4', '2', 'Digitalizar', 'Fabian Meza Murillo'),
(54, 'GC-FR-004', 'GC', 'PROGRAMA DE AUDITORIA INTERNA', 'https://drive.google.com/file/d/0B4_o6vv9kFe5ZVlZSi1ZN2ljcXdNZy1DVWdabkU4RmlWZ09F/view?usp=sharing', 2, '2017-07-08', '2018-04-20', 'Drive/Calidad', 'Fabian Meza Murillo', 'Cronologico', 'https://drive.google.com/file/d/0B4_o6vv9kFe5ZVlZSi1ZN2ljcXdNZy1DVWdabkU4RmlWZ09F/view?usp=sharing', '2', 'Digitalizar', 'Fabian Meza Murillo'),
(55, 'GC-FR-005', 'GC', 'ACCIONES CORRECTIVAS, PREVENTIVAS Y DE MEJORA', 'https://docs.google.com/spreadsheets/d/1w9e33_DYeeExvJ6C1gDFU1Gd_MbBmpQjCFTSLl8D9kM/edit?usp=sharing', 2, '2017-07-07', '2017-08-24', 'Drive/Calidad', 'Fabian Meza Murillo', 'Cronologico', 'https://drive.google.com/drive/folders/1pYEeZNAaP_SeVxIMX_51jd0iqZS0YcG_?usp=sharing', '2', 'Digitalizar', 'Fabian Meza Murillo'),
(56, 'GC-FR-006', 'GC', 'PLAN DE AUDITORIA INTERNA', 'https://drive.google.com/open?id=0B4T4pK1bl8cGNWo5TFRCMWRpaVU', 1, '2017-07-10', '2018-11-27', 'Drive/Calidad', 'Fabian Meza Murillo', 'Cronologico', 'https://drive.google.com/file/d/10u5L1eAll_GuMMMB3lvjPfxC3f6noJRk/view?usp=sharing', '2', 'Digitalizar', 'Fabian Meza Murillo'),
(57, 'GC-FR-007', 'GC', 'INFORME DE AUDITORIA INTERNA', 'https://drive.google.com/open?id=0B4_o6vv9kFe5anU3U19sU1prSURjcVBLRC1td1FVTnJ4SHl3', 1, '2017-09-10', '2018-11-27', 'Drive/Calidad', 'Fabian Meza Murillo', 'Cronologico', 'https://drive.google.com/file/d/154RTGpM8R8NOOytAc2pZ16gJDaGOR-pY/view?usp=sharing', '2', 'Digitalizar', 'Fabian Meza Murillo'),
(58, 'GC-FR-008', 'GC', 'RIESGO DE PROCESO', 'https://docs.google.com/spreadsheets/d/138KBNODYOwVsE9wyWRODDvyGwExZFscf_riq1qNbsqI/edit?usp=sharing', 1, '2017-05-12', '2018-11-27', 'Drive/Calidad', 'Fabian Meza Murillo', 'Cronologico', 'https://docs.google.com/spreadsheets/d/1PGsG-YpiQKX7M8JFCGDQHbqlNO8QK6eyuHbxmLcLKkI/edit?usp=sharing', '2', 'Digitalizar', 'Fabian Meza Murillo'),
(59, 'GC-FR-009', 'GC', 'PLANIFICACION DE CAMBIOS', 'https://drive.google.com/open?id=0B4T4pK1bl8cGU3NmTC1LNWY2UlE', 1, '2017-05-12', '2018-11-27', 'Drive/Calidad', 'Fabian Meza Murillo', 'Cronologico', 'https://docs.google.com/spreadsheets/d/1rcdFWXPh4hD0-ZB7YiEaEbfXOp25bcLMS9e77VM2cBs/edit?usp=sharing', '2', 'Digitalizar', 'Fabian Meza Murillo'),
(60, 'GC-FR-010', 'GC', 'LISTA DE CHEQUEO', 'https://drive.google.com/open?id=0B4T4pK1bl8cGMHNNSktCdVR5WU0', 1, '2017-08-14', '2018-11-27', 'Drive/Calidad', 'Fabian Meza Murillo', 'Cronologico', 'https://docs.google.com/spreadsheets/d/1M3vmi-ng7o2K1ZmlJcXfExr8T5TZlEyS5bLO84NmDk4/edit?usp=sharing', '2', 'Digitalizar', 'Fabian Meza Murillo'),
(61, 'GC-FR-011', 'GC', 'QUEJAS Y/O RECLAMOS', 'https://drive.google.com/open?id=0B4T4pK1bl8cGaEc1TFJBOU1WdkU', 1, '2017-08-25', '2018-11-27', 'Drive/Calidad', 'Fabian Meza Murillo', 'Cronologico', 'https://docs.google.com/spreadsheets/d/1gzjflU4BUsENXqPZSigcPXD4Gfpz1GE2yKuF09K_r6c/edit?usp=sharing', '2', 'Digitalizar', 'Fabian Meza Murillo'),
(62, 'GC-FR-012', 'GC', 'SUGERENCIAS Y/O FELICITACIONES', 'https://drive.google.com/open?id=0B4T4pK1bl8cGbWZKTk9sNmxHRWc', 1, '2017-09-15', '2018-11-27', 'Drive/Calidad', 'Fabian Meza Murillo', 'Cronologico', 'https://docs.google.com/spreadsheets/d/1viIxInLgAOtgEzg2nN076c5EynjuVKBiaNsipCTjcTU/edit?usp=sharing', '2', 'Digitalizar', 'Fabian Meza Murillo'),
(63, 'GC-FR-013', 'GC', 'AUTORIDAD Y RESPONSABILIDAD DE SALIDA NO CONFORME', 'https://drive.google.com/open?id=0B4T4pK1bl8cGNjdrSkU4S29Scms', 1, '2017-09-09', '2018-11-27', 'Drive/Calidad', 'Fabian Meza Murillo', 'Cronologico', 'https://docs.google.com/spreadsheets/d/1sstizMWtSzDYbvpggHZmqdwi1iHId5hvtUxp7_Bxd6k/edit?usp=sharing', '2', 'Digitalizar', 'Fabian Meza Murillo'),
(64, 'GD-FR-001', 'GD', 'PLAN ESTRATEGICO', 'https://drive.google.com/open?id=0B4T4pK1bl8cGbFVTMHYtaWhTYjQ', 1, '2017-07-07', '2018-11-27', 'Drive/Direccion/', 'Jhon Mauricio Guerrero Soto', 'Cronologico', 'https://docs.google.com/spreadsheets/d/1u-rL0gcpPc9VNaEUnGn3R-o_qk4sbKf9g_jn9v262mY/edit?usp=sharing', '2', 'Digitalizar', 'Jhon Mauricio Guerrero Soto'),
(65, 'GD-FR-002', 'GD', 'MATRIZ DE SEGUIMIENTO A INDICADORES', 'https://drive.google.com/open?id=0B4T4pK1bl8cGRnA4NTRBMGVpU00', 1, '2017-07-07', '2018-11-27', 'Drive/Direccion/', 'Jhon Mauricio Guerrero Soto', 'Cronologico', 'https://drive.google.com/drive/folders/1wh4nkPc7YpB1Aq2TX6AZpbOvlBPuEfQ6?usp=sharing', '2', 'Digitalizar', 'Jhon Mauricio Guerrero Soto'),
(66, 'GD-FR-004', 'GD', 'CRONOGRAMA DE ACTIVIDADES', 'https://drive.google.com/open?id=0B4T4pK1bl8cGdFpiWlNFVWEwTmM', 1, '2017-09-07', '2018-11-27', 'Drive/Direccion/', 'Jhon Mauricio Guerrero Soto', 'Cronologico', 'https://drive.google.com/drive/folders/1HwDZBf1pjNvCbuMPb0gmvDPGNEpYu29O?usp=sharing', '2', 'Digitalizar', 'Jhon Mauricio Guerrero Soto'),
(67, 'GD-FR-005', 'GD', ' MATRIZ DE COMUNICACIONES', 'https://drive.google.com/open?id=0B4T4pK1bl8cGYnppQnpWcDZ1SFE\n', 1, '2017-07-06', '2018-11-27', 'Drive/Direccion/', 'Jhon Mauricio Guerrero Soto', 'Cronologico', 'https://docs.google.com/spreadsheets/d/1-p4Md_enrvmj5ASLUGkXD40aeeh5yGTSTgX53zofQ3g/edit?usp=sharing', '2', 'Digitalizar', 'Jhon Mauricio Guerrero Soto'),
(68, 'GD-FR-006', 'GD', ' MATRIZ DE CONVENIOS', 'https://drive.google.com/open?id=0B4T4pK1bl8cGTm1EVVZKWGlBZXc', 1, '2017-07-09', '2018-11-27', 'Drive/Direccion/', 'Jhon Mauricio Guerrero Soto', 'Cronologico', 'https://docs.google.com/spreadsheets/d/1oEJLhsLssMe6k1KQ-wlbpuOU6Lohjy35Z8B9YrL_wPg/edit?usp=sharing', '2', 'Digitalizar', 'Jhon Mauricio Guerrero Soto'),
(69, 'GD-FR-007', 'GD', 'TIPOS DE CLIENTES', 'https://drive.google.com/open?id=0B4T4pK1bl8cGRW5ZcXRSUV9oQlk', 1, '2017-07-09', '2018-11-27', 'Drive/Direccion/', 'Jhon Mauricio Guerrero Soto', 'Cronologico', 'https://docs.google.com/spreadsheets/d/1Jn9lXrqnrxPWeuXG2cBMuxgO94vuzp-q4tv9Obx5Zvc/edit?usp=sharing\n', '2', 'Digitalizar', 'Jhon Mauricio Guerrero Soto'),
(70, 'GD-FR-008', 'GD', 'REVISION POR LA DIRECCION', 'https://docs.google.com/spreadsheets/d/1K9n8MnwNWLa8qDws7eOgQkeMXIwBKUB0FzuXeajNwbo/edit?usp=sharing', 3, '2018-07-09', '2018-11-27', 'Drive/Direccion/', 'Jhon Mauricio Guerrero Soto', 'Cronologico', 'https://drive.google.com/drive/folders/1OxcLssL8xJk_tGgqTLSj7aSzgoI0hbOD?usp=sharing', '2', 'Digitalizar', 'Jhon Mauricio Guerrero Soto'),
(71, 'GD-FR-009', 'GD', 'AUTOEVALUACION INSTITUCIONAL', 'https://docs.google.com/spreadsheets/d/1o7uWZT5Z-A-BGIWmF6nVnKYgbWv7wzqzsTHs44tXolI/edit?usp=sharing', 1, '2017-07-09', '2018-11-27', 'Drive/Direccion/', 'Jhon Mauricio Guerrero Soto', 'Cronologico', 'https://docs.google.com/spreadsheets/d/1o7uWZT5Z-A-BGIWmF6nVnKYgbWv7wzqzsTHs44tXolI/edit?usp=sharing', '2', 'Digitalizar', 'Jhon Mauricio Guerrero Soto'),
(72, 'GD-FR-011', 'GD', 'PRESUPUESTO INSTITUCIONAL', 'https://drive.google.com/open?id=0B4T4pK1bl8cGd1g3Wi1Zc00yWlU', 1, '2017-07-12', '2018-11-27', 'Drive/Direccion/', 'Jhon Mauricio Guerrero Soto', 'Cronologico', 'https://drive.google.com/drive/folders/1BCoJWQXYaqrA1NsCaKsDYvehCI34s67f?usp=sharing', '2', 'Digitalizar', 'Jhon Mauricio Guerrero Soto'),
(73, 'GD-FR-013', 'GD', 'PROYECION INICIO DE GRUPOS', 'https://drive.google.com/open?id=0B4T4pK1bl8cGVnlEZWJ4b2FKWE0', 1, '2017-07-12', '2018-11-27', 'Drive/Direccion/', 'Jhon Mauricio Guerrero Soto', 'Cronologico', 'https://docs.google.com/spreadsheets/d/1StmuVKVHzHHuWw2UUTMiBZhmVHukyd9HcgavYwx_QQE/edit?usp=sharing\n', '2', 'Digitalizar', 'Jhon Mauricio Guerrero Soto'),
(74, 'GD-FR-014', 'GD', 'PARTES INTERESADAS', 'https://drive.google.com/open?id=0B4T4pK1bl8cGY2UyWUF1RUJNblU', 1, '2017-07-12', '2018-11-27', 'Drive/Direccion/', 'Jhon Mauricio Guerrero Soto', 'Cronologico', 'https://docs.google.com/spreadsheets/d/1867dpGkepgj9F2NSyiuE8zLJWuzWos-cGeOIFC5NaYs/edit?usp=sharing\n', '2', 'Digitalizar', 'Jhon Mauricio Guerrero Soto'),
(75, 'GP-FR-001', 'GP', 'ACTA', 'https://drive.google.com/open?id=0B4T4pK1bl8cGWW5mWVBOTUIxY00\n', 1, '2017-09-01', '2018-11-27', 'Drive/pedagogico/acta', 'Alexander Garzon', 'Cronologico', 'https://docs.google.com/document/d/1sU-RQZDEv8eBTM-QbePYESFLlfr_elGAHYfjr5YKP7I/edit?usp=sharing', '2', 'Digitalizar', 'Alexander Garzon'),
(76, 'GP-FR-00123', 'GA', 'REGISTRO DE  PRUEBAS', 'https:.google.com/open?id=1qcgTrnPpFsRuGXmkeiYMVLrIFOwW170Q', 2, '2018-12-01', '2018-12-20', 'Drive/Administrativo', 'Marihelena Sanchez', 'Servidor', 'hola mundo', '5', 'Digitalizar', 'Marihelena Sanchez'),
(77, 'GP-FR-002', 'GP', 'CIRCULAR', 'https://drive.google.com/open?id=0B4T4pK1bl8cGNmItVkdxXzhkTE0', 1, '2017-09-01', '2018-11-27', 'Drive/pedagogico/circular', 'Alexander Garzon', 'Cronologico', 'https://docs.google.com/document/d/1YgyWc4sW5QUgp3ywASv2NsR4efGwWbIvcyr0zkJrUGI/edit?usp=sharing', '2', 'Digitalizar', 'Alexander Garzon'),
(78, 'GP-FR-003', 'GP', 'OFICIO', 'https://drive.google.com/open?id=0B4T4pK1bl8cGcFY5STdPQUluZ2M', 1, '2017-09-01', '2018-11-27', 'Drive/pedagogico/oficio', 'Alexander Garzon', 'Cronologico', 'https://docs.google.com/document/d/1KTieB1YM2HevPBwxjkGVSnCP0d15pfdqxhTzbGiEcHQ/edit?usp=sharing', '2', 'Digitalizar', 'Alexander Garzon'),
(79, 'GP-FR-004', 'GP', 'ENCUESTA DE SATISFACCION DE CONVENIO', 'https://drive.google.com/open?id=0B4T4pK1bl8cGNkR4Q1duSldDcjQ', 1, '2017-07-06', '2018-11-27', 'Drive/pedagogico/encuesta satisfaccion convenio', 'Alexander Garzon', 'Cronologico', 'https://docs.google.com/spreadsheets/d/1jOQcxqvS_u0WIJ6Pctmww69eSUUg79Hiakn5XdMzBPc/edit?usp=sharing', '2', 'Digitalizar', 'Alexander Garzon'),
(80, 'GP-FR-005', 'GP', 'LISTADO DE DOCUMENTOS NORMATIVOS', 'https://drive.google.com/open?id=0B4T4pK1bl8cGeG5YUjZwR3FaN2s', 1, '2017-07-07', '2018-11-27', 'Drive/pedagogico/documentos normativos', 'Alexander Garzon', 'Cronologico', 'https://docs.google.com/spreadsheets/d/1jOSvALf4LXazS4C2PCxGB_-x-ZmAVymKmdOy32yqzPQ/edit?usp=sharing', '2', 'Digitalizar', 'Alexander Garzon'),
(81, 'GP-FR-006', 'GP', 'REVISIÓN Y VERIFICACIÓN DEL DISEÑO CURRICULAR', 'https://drive.google.com/open?id=1NkkLQKJWBXlT74fhDXru8tAa2Hco5cmbDLZ20OEf9Nw', 1, '2017-07-10', '2018-11-27', 'Drive/pedagogico/revision verificacion diseño curricular', 'Alexander Garzon', 'Cronologico', 'https://docs.google.com/spreadsheets/d/19ackKkD2eDu46A9SJieNSIhsRR-PDBPnmlF6qDUAJgc/edit?usp=sharing', '2', 'Digitalizar', 'Alexander Garzon'),
(82, 'GP-FR-007', 'GP', 'CERTIFICADO DE ESTUDIO', 'https://drive.google.com/open?id=0B4T4pK1bl8cGOUNpZFZzU2xYREE', 1, '2017-09-01', '2018-11-27', 'Drive/pedagogico/certificado de estudio', 'Alexander Garzon', 'Cronologico', 'https://docs.google.com/document/d/1LXl2B8hs2DMQVwdU7Z-sXIqBV-5NCS06Lu_uMEda6NE/edit?usp=sharing', '2', 'Digitalizar', 'Alexander Garzon'),
(83, 'GP-FR-008', 'GP', 'CERTIFICADO DE COSTO', 'https://drive.google.com/open?id=0B4T4pK1bl8cGZmhidzJ5VUc1dlE', 1, '2017-09-01', '2018-11-27', 'Drive/pedagogico/certificado de costos', 'Alexander Garzon', 'Cronologico', 'https://docs.google.com/document/d/1a_Aej-YhUAs_uy7-3bat9eLxQ3oOQE_ZDSv4LgjPaEQ/edit?usp=sharing', '2', 'Digitalizar', 'Alexander Garzon'),
(84, 'GP-FR-009', 'GP', 'CUESTIONARIO', 'https://drive.google.com/open?id=0B4T4pK1bl8cGQVU1OWRaaFMwTTQ', 1, '2017-09-21', '2018-11-27', 'Drive/pedagogico/\n\n', 'Alexander Garzon', 'Cronologico', 'https://docs.google.com/document/d/16Uv-K4K2ATx0AkQw6PPG_nW5YvdzrqIgWbbS9Zrc-vk/edit?usp=sharing', '2', 'Digitalizar', 'Alexander Garzon'),
(85, 'GP-FR-010', 'GP', 'LISTA DE CHEQUEO', 'https://drive.google.com/open?id=0B4T4pK1bl8cGR0YtNW11MVlkMDA\n', 1, '2017-09-21', '2018-11-27', 'Drive/pedagogico/', 'Alexander Garzon', 'Cronologico', 'https://docs.google.com/document/d/1KteEzSMTkCThW3tfvO1zf9l2ckBOaA0AkWoJppfxiKE/edit?usp=sharing', '2', 'Digitalizar', 'Alexander Garzon'),
(86, 'GP-FR-011', 'GP', 'PLAN DE MEJORAMIENTO', 'https://drive.google.com/open?id=0B4T4pK1bl8cGRzBJeVlSZXBwUDQ', 1, '2017-09-21', '2018-11-27', 'Drive/pedagogico/', 'Alexander Garzon', 'Cronologico', 'https://docs.google.com/spreadsheets/d/10JOQyULCnK97uN67JLXiVQuc2a7N3KB0jZeFEky7FOQ/edit?usp=sharing', '2', 'Digitalizar', 'Alexander Garzon'),
(87, 'GP-FR-012 ', 'GP', 'RUBRICA DE EVALUACION.', 'https://drive.google.com/open?id=0B4T4pK1bl8cGbEZFYTJPNm52RHc', 1, '2017-09-21', '2018-11-27', 'Drive/pedagogico/', 'Alexander Garzon', 'Cronologico', 'https://docs.google.com/document/d/1maHmrTrnSyn-yaJHBodI4fv6DDeEiW5EyjQC2sbveF0/edit?usp=sharing', '2', 'Digitalizar', 'Alexander Garzon'),
(88, 'GP-FR-013', 'GP', 'PERCEPCION DE SATISFACCION DEL ESTUDIANTE', 'https://drive.google.com/open?id=0B4T4pK1bl8cGODIzVjNzMGlubVE', 1, '2017-02-02', '2018-11-27', 'Drive/pedagogico/', 'Alexander Garzon', 'Cronologico', 'https://docs.google.com/spreadsheets/d/1vH3mgZSweQkSDkKfcUmPGx9Qxl-nx4ybbVu6wSFZesA/edit?usp=sharing', '2', 'Digitalizar', 'Alexander Garzon'),
(89, 'GP-FR-014', 'GP', 'ASISTENCIA ACTIVIDADES DE FORMACION DESARROLLADAS', 'https://drive.google.com/open?id=0B4T4pK1bl8cGaWhIdkhPZmRkdGc', 1, '2017-10-04', '2018-11-27', 'Drive/pedagogico/', 'Alexander Garzon', 'Cronologico', 'https://docs.google.com/document/d/15QmRM_A4KnZuE9E2xZlAW46qOk0z4v_83eKHdyCrWIM/edit?usp=sharing', '2', 'Digitalizar', 'Alexander Garzon'),
(90, 'GP-FR-015', 'GP', 'COMPROMISO PEDAGOGICO', 'https://drive.google.com/open?id=0B4T4pK1bl8cGYm00dzRIdHdGZDA', 1, '2017-10-03', '2018-11-27', 'Drive/pedagogico/', 'Alexander Garzon', 'Cronologico', 'https://docs.google.com/document/d/14qi2lJSG7GH-L49xHlem85Vmso-N8FO7mM2OsFSxv9E/edit?usp=sharing', '2', 'Digitalizar', 'Alexander Garzon'),
(91, 'GP-FR-016', 'GP', 'VALIDACION DESARROLLO PEDAGOGICO', 'https://drive.google.com/open?id=0B4T4pK1bl8cGWmdpMnVfSEZPdzA\n', 1, '2017-10-03', '2018-11-27', 'Drive/pedagogico/', 'Alexander Garzon', 'Cronologico', 'https://docs.google.com/spreadsheets/d/1eaNNCLplc6mHASZiSqrAPqQ5_tzd5niNvKZ2PdtamCg/edit?usp=sharing', '2', 'Digitalizar', 'Alexander Garzon'),
(92, 'GP-FR-017', 'GP', 'REVISION Y VERIFICACION DEL DESARROLLO PEDAGOGICO', 'https://drive.google.com/open?id=0B4T4pK1bl8cGTFZvQi1uVm95aG8\n', 1, '2017-07-28', '2018-11-27', 'Drive/pedagogico/', 'Alexander Garzon', 'Cronologico', 'https://docs.google.com/document/d/1gkZ3wz4AuvGAmT9wskCrXjFxNBWcoJYt9oHK9HIjFP8/edit?usp=sharing', '2', 'Digitalizar', 'Alexander Garzon'),
(93, 'GP-FR-018 ', 'GP', 'DISTRIBUCION HORAS DEL PROGRAMA', 'https://drive.google.com/open?id=0B4T4pK1bl8cGQVVJTGV3Mk9FT1U', 1, '2017-08-25', '2018-11-27', 'Drive/pedagogico/', 'Alexander Garzon', 'Cronologico', 'https://docs.google.com/document/d/1owy8JjCOB5MsvxUaSibNaqZ3ViJ9f9UBzCOURunm7kE/edit?usp=sharing', '2', 'Digitalizar', 'Alexander Garzon'),
(94, 'GP-FR-019', 'GP', 'DESARROLLO DE LA SESION DE CLASE', 'https://drive.google.com/open?id=0B4T4pK1bl8cGa3J5Y2liT2FUV0E', 1, '2017-09-08', '2018-11-27', 'Drive/pedagogico/', 'Alexander Garzon', 'Cronologico', 'https://docs.google.com/document/d/12Hrcm_qpTwKMKhq5Vx25f5pSwLTSYFjjSnn6F72MDhE/edit?usp=sharing', '2', 'Digitalizar', 'Alexander Garzon'),
(95, 'GP-FR-020', 'GP', 'PROYECCION PROGRAMAS TAA', 'https://drive.google.com/open?id=0B4T4pK1bl8cGZjVvSzh6VFVYZzg', 1, '2017-09-20', '2018-11-27', 'Drive/pedagogico/', 'Alexander Garzon', 'Cronologico', 'https://docs.google.com/spreadsheets/d/1x_bz1v-EWVB_afF754jCBWn5u5exZ0Zousq2vvLxG_A/edit?usp=sharing\n\n', '2', 'Digitalizar', 'Alexander Garzon'),
(96, 'GP-FR-021', 'GP', 'PROYECCION DE PROGRAMA TCF', 'https://drive.google.com/open?id=0B4T4pK1bl8cGejdKYVdLb2ZtNkE\n', 1, '2017-09-20', '2018-11-27', 'Drive/pedagogico/', 'Alexander Garzon', 'Cronologico', 'https://docs.google.com/spreadsheets/d/197HdS_JySDqkQpntu3EcMBoHhW4YYRDChKqJFGMRdbc/edit?usp=sharing', '2', 'Digitalizar', 'Alexander Garzon'),
(97, 'GP-FR-022', 'GP', 'PROYECCION DE PROGRAMAS TRH', 'https://drive.google.com/open?id=0B4T4pK1bl8cGaE5yT3dqNXhYQ0k', 1, '2017-09-20', '2018-11-27', 'Drive/pedagogico/', 'Alexander Garzon', 'Cronologico', 'https://docs.google.com/spreadsheets/d/1zrX2RT4vpfBng9RMiB6lUZAPLsSeVUvS2VYKp07OA6c/edit?usp=sharing', '2', 'Digitalizar', 'Alexander Garzon'),
(98, 'GP-FR-023', 'GP', 'FICHA DE INSCRIPCION COMPLEMENTARIA', 'https://drive.google.com/open?id=1guxIoKxizhO-bRUyCRbsJYx6Gm0oLXoE', 2, '2017-02-02', '2018-11-27', 'Drive/pedagogico/', 'Alexander Garzon', 'Cronologico', 'https://docs.google.com/spreadsheets/d/1A--1OoVd95C0OuHZuDdWlZww5DYLO7GB2nqwadCdUxU/edit?usp=sharing', '2', 'Digitalizar', 'Alexander Garzon'),
(99, 'GP-FR-024', 'GP', 'EVALUACION DEL PROGRAMA', 'https://drive.google.com/open?id=0B4T4pK1bl8cGMXAyRlZKV19wYmc', 1, '2017-10-14', '2018-11-27', 'Drive/pedagogico/', 'Alexander Garzon', 'Cronologico', 'https://docs.google.com/spreadsheets/d/1Kq3mrC3vYVSO6dgBlHVUhXUer3kJnCbudiLS8CRVzcQ/edit?usp=sharing', '2', 'Digitalizar', 'Alexander Garzon'),
(100, 'GP-FR-025', 'GP', 'RESULTADO DE EGRESADOS', 'https://drive.google.com/open?id=0B4T4pK1bl8cGSmI3amRwMzh2ZW8', 1, '2017-10-19', '2018-11-27', 'Drive/pedagogico/', 'Alexander Garzon', 'Cronologico', 'https://docs.google.com/spreadsheets/d/1pnuBno2ZJO_7ByznZGuyUrj6C2YvAgtP8sEQ60JsjQs/edit?usp=sharing', '2', 'Digitalizar', 'Alexander Garzon'),
(101, 'GP-FR-026', 'GP', 'COMPROMISO ESTUDIANTES PIO', 'X', 1, '2017-12-14', '2018-11-27', 'Drive/pedagogico/', 'Alexander Garzon', 'Cronologico', 'X', '2', 'Digitalizar', 'Alexander Garzon'),
(102, 'GP-FR-027', 'GP', 'FORMATO GUIA DE APRENDIZAJE', 'https://drive.google.com/open?id=1f4jykRJK0Nb_37-BsCFOMlyb3V9vYegS', 1, '2018-02-02', '2018-11-27', 'Drive/pedagogico/', 'Alexander Garzon', 'Cronologico', 'https://docs.google.com/document/d/1fvou3Ozif4Sz6KqdiFa7pxpjKpFMKHJ7cmMSm5Xl2qs/edit?usp=sharing', '2', 'DIGITALIZAR', 'Alexander Garzon'),
(103, 'GP-FR-028', 'GP', 'FORMATO HOJA DEL ESTUDIANTE', 'https://drive.google.com/open?id=1zWR2igXffBoqdCinX5MtLykKcvlNbBVR', 1, '2018-02-02', '2018-11-27', 'Drive/pedagogico/', 'Alexander Garzon', 'Cronologico', 'https://docs.google.com/document/d/1ydvS_npRUlXqFIJ7p0wZ7hSQX6Nxsgv24oZBuaUxPYY/edit?usp=sharing', '2', 'DIGITALIZAR', 'Alexander Garzon'),
(119, 'GA-FR-001', 'GA', 'FORMATO DE PRUEBA', 'https://drive.google.com/open?id=1uFMKNwOLDrKRoeYl2u9FFjJ3fOocbfDl', 1, '2020-01-12', '2020-01-22', 'Drive/Bienestar/', 'Carolina Duarte', 'Cronologico', 'https://drive.google.com/open?id=1FfE6CTE229OktKEN_NZ5Hrc4s-tfN014', '1', 'Digitalizar', 'Carolina Duarte'),
(120, 'GP-FR-00123', 'GA', 'REGISTRO DE  PRU', 'https:.google.com/open?id=1qcgTrnPpFsRuGXmkeiYMVLrIFOwW170Q', 3, '2018-12-01', '2018-12-01', 'Drive/Administrativo', 'Marihelena Sanchez', 'Servidor', 'hola mundo', '5', 'Digitalizar', 'Marihelena Sanchez'),
(121, 'GP-FR-00123', 'GA', 'REGISTRO DE  PRU', 'https:.google.com/open?id=1qcgTrnPpFsRuGXmkeiYMVLrIFOwW170Q', 4, '2018-12-01', '2018-12-01', 'Drive/Administrativo', 'Marihelena Sanchez', 'Servidor', 'hola mundo', '5', 'Digitalizar', 'Marihelena Sanchez'),
(122, 'GA-FR-001', 'GA', 'FORMATO DE PRUEBA', 'https://drive.google.com/open?id=1uFMKNwOLDrKRoeYl2u9FFjJ3fOocbfDl', 1, '2020-02-05', '2020-02-05', 'Drive/Bienestar/', 'Carolina Duarte', 'Cronologico', 'https://drive.google.com/open?id=1FfE6CTE229OktKEN_NZ5Hrc4s-tfN014', '4', 'Digitalizar', 'Carolina Duarte'),
(123, 'GA-FR-001', 'GA', 'FORMATO DE PRUEBA', 'https://drive.google.com/open?id=1uFMKNwOLDrKRoeYl2u9FFjJ3fOocbfDl', 1, '2020-02-05', '2020-02-05', 'Drive/Bienestar/', 'Carolina Duarte', 'Cronologico', 'https://drive.google.com/open?id=1FfE6CTE229OktKEN_NZ5Hrc4s-tfN014', '4', 'Digitalizar', 'Carolina Duarte'),
(126, 'GB-FR-0051', 'GA', 'FORMATO DE PRUEBA crear', '', 1, '2020-02-06', '2020-02-07', 'Drive/Administrativo', 'Jhon Mauricio Guerrero Soto', 'Cronologico', 'https://drive.google.com/open?id=1FfE6CTE229OktKEN_NZ5Hrc4s-tfN014', '5', 'Digitalizar', 'Carolina Duarte'),
(127, 'GB-FR-0052', 'GA', 'FORMATO DE PRUEBA 11', 'CONTORNO.pdf', 1, '2020-02-06', '2020-02-08', 'Drive/Bienestar/', 'Jhon Mauricio Guerrero Soto', 'Cronologico', 'https://drive.google.com/open?id=1FfE6CTE229OktKEN_NZ5Hrc4s-tfN014', '5', 'Digitalizar', 'Carolina Duarte'),
(128, 'GB-FR-0052', 'GA', 'FORMATO DE PRUEBA 11', 'CONVENIOS. CONTORNO.pdf', 1, '2020-02-06', '2020-02-08', 'Drive/Bienestar/', 'Jhon Mauricio Guerrero Soto', 'Cronologico', 'https://drive.google.com/open?id=1FfE6CTE229OktKEN_NZ5Hrc4s-tfN014', '5', 'Digitalizar', 'Carolina Duarte'),
(129, 'GB-FR-0052', 'GA', 'FORMATO DE PRUEBA 11', 'CONVENIOS. CONTORNO.pdf', 1, '2020-02-06', '2020-02-08', 'Drive/Bienestar/', 'Jhon Mauricio Guerrero Soto', 'Cronologico', 'https://drive.google.com/open?id=1FfE6CTE229OktKEN_NZ5Hrc4s-tfN014', '5', 'Digitalizar', 'Carolina Duarte'),
(130, 'GB-FR-0052', 'GA', 'FORMATO DE PRUEBA 11', 'CONVENIOS. CONTORNO.pdf', 1, '2020-02-06', '2020-02-08', 'Drive/Bienestar/', 'Jhon Mauricio Guerrero Soto', 'Cronologico', 'https://drive.google.com/open?id=1FfE6CTE229OktKEN_NZ5Hrc4s-tfN014', '5', 'Digitalizar', 'Carolina Duarte'),
(131, 'GB-FR-0052', 'GA', 'FORMATO DE PRUEBA 11', 'CONTORNO.pdf', 1, '2020-02-06', '2020-02-08', 'Drive/Bienestar/', 'Jhon Mauricio Guerrero Soto', 'Cronologico', 'https://drive.google.com/open?id=1FfE6CTE229OktKEN_NZ5Hrc4s-tfN014', '5', 'Digitalizar', 'Carolina Duarte'),
(148, '', '', '', '', 0, '0000-00-00', '0000-00-00', '', '', '', '', '', '', ''),
(149, '', '', '', '', 0, '0000-00-00', '0000-00-00', '', '', '', '', '', '', ''),
(150, 'ga-er-01', 'GA', '', '', 1, '2021-09-29', '2021-09-29', 'Drive/Admitrativo/P', 'qwerty', 'Cronologico', 'qwerty', '1', 'Digitalizar', 'Jhon Mauricio Guerrero Soto99'),
(151, 'ga-er-01', 'GA', '', '', 1, '2021-09-29', '2021-09-29', 'Drive/Admitrativo/P', 'qwerty', 'Cronologico', 'qwerty', '1', 'Digitalizar', 'Jhon Mauricio Guerrero Soto99'),
(152, 'ga-er-01', 'GA', '', '', 1, '2021-09-29', '2021-09-29', 'Drive/Admitrativo/P', 'qwerty', 'Cronologico', 'qwerty', '1', 'Digitalizar', 'Jhon Mauricio Guerrero Soto99'),
(153, 'ga-er-01', 'GA', '', '', 1, '2021-09-29', '2021-09-29', 'Drive/Admitrativo/P', 'qwerty', 'Cronologico', 'qwerty', '1', 'Digitalizar', 'Jhon Mauricio Guerrero Soto99'),
(154, 'GB-FR-006', 'GB', 'XXXXX', '', 1, '2021-12-13', '2021-12-13', 'DRIVE/BIENESTAR', 'LIDER DE PROYECTOS', 'Cronologico', 'https://drive.google.com/drive/folders/1ph4kuSdSy6gL_V59q5qFYpXYCmwEt1uS?usp=sharing', '3', 'Digitalizar', 'LIDER DE PROYECTOS');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `indicadors`
--

CREATE TABLE `indicadors` (
  `id` int(11) NOT NULL,
  `proceso_id` int(11) NOT NULL,
  `formula_id` int(11) NOT NULL,
  `nombre` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `cargo_id` int(11) NOT NULL COMMENT 'cargo responsable del indicador',
  `definicion` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `interpretacion` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `periodicidad` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `fecha_control` date NOT NULL COMMENT 'fecha para  validar el ingreso de los datos',
  `tipo` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT 'general, sst'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `indicadors`
--

INSERT INTO `indicadors` (`id`, `proceso_id`, `formula_id`, `nombre`, `cargo_id`, `definicion`, `interpretacion`, `periodicidad`, `fecha_control`, `tipo`) VALUES
(6, 1, 2, 'Indicador de prueba4', 1, '         LOREM ISUP1', '  su diseño. El punto de usar Lorem Ipsum es que tiene una distribución más o menos normal de las letras, al contrario de usar textos como por ejemplo \"Contenido aquí, contenido aquí\". Estos textos hacen parecerlo un español que se puede leer. Muchos paqu', 'semestral', '2021-10-21', 'general'),
(7, 1, 6, 'Fondo de Maniobra', 1, '  FM = Activo Corriente -Pasivo Corriente', '- Si FM ≥ 0 → equilibrio financiero.- Si FM ≤ 0 → desequilibrio financiero', 'mensual', '2021-10-22', 'general'),
(8, 1, 5, 'indicador de prueba ll', 4, 'qwerty', 'qwerty', 'mensual', '0000-00-00', ''),
(9, 1, 5, 'indicador de prueba ll', 4, ' qwerty', 'qwerty', 'mensual', '0000-00-00', ''),
(10, 1, 3, 'indicador de prueba lll', 4, ' qwerty', 'prueba', 'mensual', '2021-10-12', ''),
(11, 1, 1, 'desempeño de procesos', 4, 'indicador que permite ver la eficacia de las cciones', 'si el ind esta por debajode 100% hay acciones por revisar', 'semestral', '2021-01-01', ''),
(12, 1, 1, 'desempeño de procesos ll', 4, 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, co', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, co', 'mensual', '2021-10-25', ''),
(13, 1, 1, '% Satisfacion del cliente', 4, 'Encuesta', '.', 'semestral', '2021-01-05', ''),
(15, 1, 8, 'indicador de prueba lllV', 4, 'ui', 'ui', 'mensual', '2021-11-17', ''),
(16, 1, 2, 'indicador de prueba', 4, 'qwert', 'qwerty', 'mensual', '2021-11-24', ''),
(17, 1, 2, 'indicador de prueba', 4, 'qwert', 'qwerty', 'mensual', '2021-11-24', ''),
(18, 1, 1, '', 4, 'asdf', 'asdf', 'mensual', '2021-11-25', ''),
(19, 1, 7, 'indicador de prueba lV', 4, 'encuestas', 'asedrftgyhujik', 'trimestral', '2021-11-01', ''),
(20, 1, 2, 'indicador de prueba V', 4, 'poi', 'poi', 'trimestral', '2021-11-18', ''),
(21, 1, 2, 'indicador de prueba V', 4, 'poi', 'poi', 'trimestral', '2021-11-18', ''),
(22, 1, 1, 'PORCENTAJE DE MANTENIMIENTO PREVENTIVO - GR-RG-015', 4, 'PRESUPUESTO DEL INVENTARIO', '.......................', 'semestral', '2022-01-01', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `metas`
--

CREATE TABLE `metas` (
  `id` int(11) NOT NULL,
  `indicador_id` int(11) NOT NULL,
  `comparativo` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `valor` int(11) NOT NULL,
  `fecha_uso` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `metas`
--

INSERT INTO `metas` (`id`, `indicador_id`, `comparativo`, `valor`, `fecha_uso`) VALUES
(1, 0, '', 82, '0000-00-00'),
(2, 18, '=', 82, '0000-00-00'),
(3, 6, '>', 55, '2021-11-25'),
(4, 7, '', 90, '0000-00-00'),
(5, 7, '>=', 55, '0000-00-00'),
(6, 6, '>', 90, '2021-10-26'),
(7, 6, '>', 90, '2021-09-26'),
(8, 6, '>=', 90, '2021-08-26'),
(9, 6, '<=', 82, '2021-07-17'),
(10, 6, '>', 82, '2021-06-17'),
(11, 6, '< ', 80, '2021-11-10'),
(12, 19, '>=', 90, '0000-00-00'),
(13, 21, '>=', 82, '2021-11-18'),
(14, 22, '>=', 80, '2022-01-01'),
(15, 10, '=', 1, '2022-07-15'),
(16, 10, '>', 2, '2022-07-16');

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
-- Estructura de tabla para la tabla `respuestas`
--

CREATE TABLE `respuestas` (
  `id` int(11) NOT NULL,
  `pqrs_id` varchar(25) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `proceso_id` varchar(6) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `accion` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `respuesta` varchar(800) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `clasificacion_id` varchar(25) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `estado` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `soporte` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `respuestas`
--

INSERT INTO `respuestas` (`id`, `pqrs_id`, `proceso_id`, `accion`, `respuesta`, `clasificacion_id`, `estado`, `soporte`) VALUES
(5, '9', 'GA', 'si', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'felicitacion', 'revision', 'Respuesta_520211011.pdf'),
(6, '23', 'GB', 'no', 'Este método se eliminará en 3.x. Para estar seguro y teniendo en cuenta la menor cantidad posible de problemas de actualización, ya no debería usar esto. Utilice save () en su lugar. O use el complemento', 'sugerencia', 'revision', 'Respuesta_620211011.pdf'),
(7, '24', 'GC', 'no', 'Es un hecho establecido hace demasiado tiempo que un lector se distraerá con el contenido del texto de un sitio mientras que mira su diseño. El punto de usar Lorem Ipsum es que tiene una distribución más o menos normal de las letras, al contrario de usar textos como por ejemplo \"Contenido aquí, contenido aquí\". Estos textos hacen parecerlo un español que se puede leer. Muchos paquetes de autoedición y editores de páginas web usan el Lorem Ipsum como su texto por defecto, y al hacer una búsqueda de \"Lorem Ipsum\" va a dar por resultado muchos sitios web que usan este texto si se encuentran en estado de desarrollo. Muchas versiones han evolucionado a través de los años, algunas veces por accidente, otras veces a propósito (por ejemplo insertándole humor y cosas por el estilo).', 'sugerencia', 'revision', 'Respuesta_720211013.pdf'),
(8, '37', 'GA', 'si', 'lorem isup', 'felicitacion', 'revision', NULL),
(9, '214', 'GA', 'no', 'czzzzzzzz', 'felicitacion', 'revision', NULL),
(10, '245', 'GA', 'no', 'ksksksk', 'informacion', 'revision', NULL),
(11, '250', 'GA', 'no', 'uuuuuuuuuuuuuu', 'informacion', 'revision', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `satisfacions`
--

CREATE TABLE `satisfacions` (
  `id` int(11) NOT NULL,
  `respuesta_id` int(11) NOT NULL,
  `estado_cliente` int(11) NOT NULL,
  `sugerencia` int(11) NOT NULL,
  `created` int(11) NOT NULL,
  `modified` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `seguimientos`
--

CREATE TABLE `seguimientos` (
  `id` int(11) NOT NULL,
  `descripcion` int(11) NOT NULL,
  `actividad_id` int(11) NOT NULL,
  `soporte` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `fecha_seguimiento` date NOT NULL,
  `responsable` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `cumplimiento` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `created` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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

--
-- Volcado de datos para la tabla `sgcexternos`
--

INSERT INTO `sgcexternos` (`id`, `codigo`, `proceso`, `nombre`, `expedicion`, `descripcion`, `filename`, `dir`) VALUES
(1, 'GD-EX-01', 'GD', ' LEY 1064', '2016-07-26', 'Por la cual se dictan normas de apoyo y fortalecimiento de la educacion para el  trabajo y desarrollo humano', '', ''),
(2, 'GD-EX-02', 'GD', ' LEY 115', '1994-02-08', 'Por la cual se expide la ley general de educacion', '', ''),
(3, 'GD-EX-03', 'GD', ' LEY 1732', '2014-07-01', 'Por la cual se establece la catedra de paz en todas las instituciones del pais', '', ''),
(4, 'GD-EX-04', 'GD', ' DECRETO 1075 ', '2015-05-26', 'Por medio del cual se expide el Decreto Unico Reglamentario del Sector Educacion', '', ''),
(5, 'GD-EX-05', 'GD', 'DECRETO 2376', '2010-01-04', 'Por medio del cual se regula la relacion docencia - servicio para los programas de formacion de\ntalento humano del area de la salud', '', ''),
(6, 'GD-EX-06', 'GD', 'DECRETO 4904', '2009-12-16', 'Por el cual se reglamenta la organizacion, oferta y funcionamiento de la prestacion del servicio educativo para el trabajo y eldesarrollo humano y se dictan otras disposiciones', '', ''),
(7, 'GD-EX-07', 'GD', 'DECRETO 1860 ', '1994-05-08', 'Por el cual se reglamenta parcialmente la Ley 115 de 1994, en los aspectos pedagogicos y organizativos generales', '', ''),
(8, 'GD-EX-08', 'GD', 'LEY 1651', '2013-12-07', 'Por medio de la cual se modifican los articulos 13, 20, 21,22,30 y 38 de la ley 115 de 1994 y se dictan otras disposiciones-ley de biling', '', ''),
(9, 'GA-EX-01', 'GA', 'CODIGO DEL COMERCIO', '2009-08-27', 'Nuevo Codigo publicado en el Diario Oficial de la Federacion el 7 de octubre de 1889', '', ''),
(10, 'GA-EX-02', 'GA', 'PLAN UNICO DE CUENTAS PUC', '2007-01-11', 'Estatuto de la profesion de Contador Publico Reglamento general de la contabilidad Plan unico de cuentas para comerciantes', '', ''),
(11, 'GA-EX-03', 'GA', 'ESTATUTO TRIBUTARIO', '2011-10-02', 'Estatuto tributario republica de colombia libro primero impuesto sobre la renta y complementarios', '', ''),
(12, 'GA-EX-04', 'GA', 'CODIGO SUSTANTIVO DEL TRABAJO', '1961-01-01', 'codigo sustantivo del trabajo decretos 2663 y 3743 de 1961\nadoptados por la ley 141 de 1961', '', ''),
(13, 'GA-EX-05', 'GA', 'ACUERDO 0114', '2010-02-22', 'Por medio del cual se definen los equipos, elementos y materiales  \nbasicos de los talleres de los programas de educacion para el \ntrabajo y el desarrollo humano del area de la salud\n', '', ''),
(14, 'GP-EX-01', 'GP', 'ACUERDO 004 de 2012', '2012-03-16', 'Por el cual se regulan aspectos de la autorizacion de Programas de Formacion de Empresas y del registro de programas de las Instituciones de Educacion Superior (IES), Entidades de Formacion para el Trabajo y el Desarrollo Humano e Instituciones de Educacion Media de Caracter Tecnico, aprobadas por el Gobierno Nacional, se dictan otras disposiciones y se deroga el Acuerdo 16 de 2003', '', ''),
(15, 'GP-EX-02', 'GP', 'ACUERDO 0015-de-2003', '2003-11-12', 'Por el cual se regulan aspectos operativos del contrato de aprendizaje.', '', ''),
(16, 'GP-EX-03', 'GP', 'ACUERDO 153 de 2012', '2012-10-30', 'Por medio del cual se definen las condiciones de la relacion docencia servicio para emitir el concepto tecnico previo y los requisitos para la obtencion y renovacion del registro de los programas de educacion para el trabajo y el desarrollo humano en el area de auxiliares de la salud y se dictan otras disposiciones.', '', ''),
(17, 'DD-EX-04', 'GPx', 'XX', '2012-10-30', 'X\n\n', '', ''),
(18, 'GP-EX-05', 'GP', 'CARACTERIZACION OCUPACIONAL DE SERVICIOS FARMACEUTICOS', '2002-01-12', 'Por medio del cual se definen la caracterizacion ocupacional de los servicios farmaceuticos.', '', ''),
(19, 'GP-EX-06', 'GP', 'Documento conpes social 155', '2012-08-30', 'Consejo Nacional de Politica Economica y SocialRepublica de Colombia Departamento Nacional de Planeacion', '', ''),
(20, 'GP-EX-07', 'GP', 'DECRETO 1075 de 2015', '2015-05-26', 'Por medio del cual se expide el Decreto Unico Reglamentario del Sector Educacion', '', ''),
(21, 'GP-EX-08', 'GP', 'DECRETO 2376 de 2010', '2010-01-07', 'Por medio del cual se regula la relacion docencia- servicio para los programas de formacion de talento humano del area de la salud', '', ''),
(22, 'GP-EX-09', 'GP', 'DECRETO 2978 de 2013', '2013-12-20', 'Por el cual se modifica el  articulo 14 del Decreto 933 de 2003', '', ''),
(23, 'GP-EX-10', 'GP', 'GTC 185', '2009-09-30', 'Documentacion organizacional', '', ''),
(24, 'GP-EX-11', 'GP', 'LEY 1164 de 2007', '2007-03-10', 'Por la cual se dictan disposiciones en materia del talento humano en salud.', '', ''),
(25, 'GP-EX-12', 'GP', 'Orientaciones internacionales respecto al talento humano en salud', '2008-01-01', 'Orientaciones internacionales respecto al talento humano en salud', '', ''),
(26, 'DD-EX-13', 'GPx', 'X', '2004-01-01', 'X', '', ''),
(27, 'GB-EX-01', 'GB', 'CONSTITUCION POLITICA DE COLOMBIA 1991', '1991-11-30', 'CONSTITUCION POLITICA DE COLOMBIA 1991', '', ''),
(28, 'GB-EX-02', 'GB', 'DECRETO 055 DE 2015', '2015-01-14', 'Por el cual se reglamenta la afiliacion de estudiantes al  Sistema General de Riesgos Laborales y se dictan otras disposiciones', '', ''),
(29, 'GB-EX-03', 'GB', 'DECRETO 1072 DE 2015', '2015-05-26', 'Por medio del cual se expide el decreto unico reglamentario del sector trabajo', '', ''),
(30, 'GB-EX-04', 'GB', 'DECRETO 1443 DE 2014', '2014-07-31', 'Por el cual se dictan disposiciones para la implementacion del Sistema de Gestion de la Seguridad y Salud en el Trabajo (SG-SST).', '', ''),
(31, 'GB-EX-05', 'GB', 'DECRETO 614  DE 1984', '1984-03-14', 'Por el cual se determinan las bases para la organizacion y administracion de Salud Ocupacional en el pais.', '', ''),
(32, 'GB-EX-06', 'GB', 'LEY 9 DE 1979', '1979-07-16', 'Por haber salido publicada incompleta en la edicion numero 35193 del dia lunes 5 de febrero de 1979, se inserta debidamente corregida la Ley 9 de 1979 en la presente edicion.', '', ''),
(33, 'GB-EX-07', 'GB', 'CODIGO DE INFANCIA Y ADOLESCENCIA', '2007-01-01', 'Codigo de la infancia y adolescencia', '', ''),
(34, 'GB-EX-08', 'GB', 'RESOLUCION 001016 DE 1989', '1989-03-31', 'Por  la  cual  se  reglamenta  la  organizacion,  funcionamiento  y  forma  de  los  Programas  de Salud Ocupacional que deben desarrollar los patronos o empleadores en el pais.', '', ''),
(35, 'GB-EX-09', 'GB', 'RESOLUCION 2013 DE 1986', '1986-06-06', 'Por  la  cual  se  reglamenta  la organizacion y funcionamiento de los comites de Medicina, Higiene y Seguridad Industrial en los lugares de trabajo', '', ''),
(36, 'GB-EX-10', 'GB', 'RESOLUCION 13824  DE 1989', '1989-02-10', 'Por la cual se dicta una medida para la proteccion de la salud', '', ''),
(37, 'GB-EX-11', 'GB', 'RESOLUCION 2400 de 1979', '1979-05-22', 'Por la cual se establecen algunas disposiciones sobre vivienda, higiene y seguridad en los establecimientos de trabajo.', '', ''),
(38, 'GC-EX-01', 'GC', 'LEY 594 DE 2000', '2000-07-14', 'Por medio de la cual se dicta la ley general de archivos y se dictan otras disposiciones.', '', ''),
(88, 'GDP-EX-20', 'GD', 'RESOLUCION # 4143.010.21.01772 DE 2018', '2018-02-15', 'REGISTRO DE PROGRAMA ADMINISTRATIVO EN SALUD', '', ''),
(86, 'GDP-EX-18', 'GD', 'RESOLUCION # 4143.010.21.01773 DE 2018', '2018-02-15', 'REGISTRO DE PROGRAMA ENFERMERÍA', '', ''),
(87, 'GDP-EX-19', 'GD', 'RESOLUCION # 4143.010.21.01775 DE 2018', '2018-02-15', 'REGISTRO DE PROGRAMA SERVICIOS FARMACÉUTICOS', '', ''),
(41, 'GC-EX-04', 'GC', 'CIRCULAR NUMERO 021', '2010-09-07', 'Orientacion para la obtencion de la licencia de funcionamiento y la renovacion del registro para los programas de la educacion para el trabajo y el desarrollo humano', '', ''),
(42, 'GC-EX-05', 'GC', 'DOCUMENTO NORMAS', '2007-04-03', 'Aplicacion de las normas tecnicas colombianas para la certificacion de calidad de instituciones y programas de formacion para el trabajo.', '', ''),
(43, 'GC-EX-06', 'GC', 'ISO 9000-2015', '2015-10-15', 'Sistemas de gestion de la calidad fundamentos y vocabulario ', '', ''),
(44, 'GC-EX-07', 'GC', 'ISO 9001-2015', '2015-09-23', 'Sistemas de gestion de la  calidad requisitos', '', ''),
(45, 'GC-EX-08', 'GC', 'NTC-5555', '2011-12-14', 'Sistemas de gestion de la  calidad para instituciones de formacion para el trabajo', '', ''),
(46, 'GC-EX-09', 'GC', 'NTC-5663', '2011-12-14', ' Programas de la formacion para el trabajo y el desarrollo humano en el area de la salud', '', ''),
(47, 'GC-EX-10', 'GC', 'NTC-5580', '2007-12-12', 'Programas de formacion para el trabajo en el area de idiomas.  Requisitos', '', ''),
(48, 'GC-EX-11', 'GC', 'NTC-5665', '2009-11-03', 'Programa de formacion para el trabajo y  el  desarrollo  humano  en  las  areas relacionadas con el turismo. Requisitos', '', ''),
(49, 'GC-EX-12', 'GC', 'NTC-5581', '2011-12-14', 'Programa de formacion para el trabajo. Requisitos', '', ''),
(50, 'GC-EX-13', 'GC', 'NTC-5666', '2009-11-03', 'Programas  de  formacion  en  el  trabajo  en  el  sector  de  sistemas  informaticos. Requisitos', '', ''),
(51, 'GC-EX-14', 'GC', 'NTC-OSHAS 18001', '2007-10-24', 'Sistemas   de   gestion   en   seguridad   y salud ocupacional. Requisitos', '', ''),
(54, 'GP-EX-14', 'GP', 'DECRETO 933 de 2003 Contrato de Aprendizaje SENA', '2003-04-11', 'Por medio del cual se reglamenta el Contrato de Aprendizaje y se dictan otras\ndisposiciones.', '', ''),
(55, 'GD-EX-09', 'GDX', 'RESOLUCION No 4143021.6878 de2014', '2014-08-26', 'POR LA CUAL SE CONCEDE REGISTRO AL PROGRAMA  TECNICO LABORAL EN \"XXXXXX\"  DEL ESTABLECIMIENTO PRIVADO DE EDUCACION PARA EL TRABAJO Y EL DESARROLLO HUMANO.\n\n', '', ''),
(56, 'GD-EX-10', 'GDX', 'RESOLUCION No 4143021.6876 de2014', '2014-08-26', 'POR LA CUAL SE CONCEDE REGISTRO AL PROGRAMA  TECNICO LABORAL EN \"XXXXXXX\"  DEL ESTABLECIMIENTO PRIVADO DE EDUCACION PARA EL TRABAJO Y EL DESARROLLO HUMANO.', '', ''),
(57, 'GD-EX-11', 'GDX', 'RESOLUCION No 4143021.6875 de2014', '2014-08-26', 'POR LA CUAL SE CONCEDE REGISTRO AL PROGRAMA  TECNICO LABORAL EN \"XXXXXXXX\"  DEL ESTABLECIMIENTO PRIVADO DE EDUCACION PARA EL TRABAJO Y EL DESARROLLO HUMANO.\n', '', ''),
(58, 'GD-EX-12', 'GDX', 'RESOLUCION No 3220-02003-1358 de 2009', '2009-08-20', 'POR MEDIO DE LA CUAL SE RESUELVE LA SOLICITUD DE REGISTRO DE LOS PROGRAMAS DE  FORMACION LABORAL DENOMINADOS: ', '', ''),
(83, 'GDP-EX-15', 'GD', 'RESOLUCION No 4143.0.010.21.0039 de 2017', '2017-01-12', 'RESOLUCION CONTABLES', '', ''),
(84, 'GDP-EX-16', 'GD', 'RESOLUCION No 4143.0.010.21.0038 de 2017', '2017-01-12', 'RESOLUCION RECURSOS HUMANOS', '', ''),
(81, 'GDP-EX-13', 'GD', 'RESOLUCION No 4143.0.21.9502 de 2016', '2016-12-21', 'LICENCIA PIO', '', ''),
(82, 'GDP-EX-14', 'GD', 'RESOLUCION No 4143.0.010.21.0040 de 2017', '2017-01-12', 'RESOLUCION ADMINISTRATIVOS', '', ''),
(80, 'GDP-EX-12', 'GD', 'ACTA DE VISITA DE INSPECCION,VIGILANCIA Y CONTROL SANITARIA', '2105-08-21', 'ACTA DE VISITA DE INSPECCION,VIGILANCIA Y CONTROL SANITARIA', '', ''),
(78, 'GDP-EX-10', 'GD', 'CERTIFICADO DE EXISTENCIA Y REPRESENTACION LEGAL', '2017-09-21', 'CAMARA Y COMERCIO', '', ''),
(79, 'GDP-EX-11', 'GD', 'CERTIFICADO DE SEGURIDAD', '2012-08-30', 'NORMAS DE SEGURIDAD REFERENTES A INCENDIOS Y SEGURIDAD HUMANA', '', ''),
(77, 'GDP-EX-09', 'GD', 'CARTA DE USO DEL SUELO', '2016-06-27', 'MODIFICACION DE USO DE SUELO DE EQUIPAMIEMTO EDUCATIVO', '', ''),
(85, 'GDP-EX-17', 'GD', 'RUT POLITECNICO', '2017-09-28', 'RUT ACTUALIZADO', '', ''),
(89, 'GDP-EX-21', 'GD', 'FUMIGACI?N', '2018-02-15', 'Registro de figuracion de plagas', '', ''),
(95, 'GA-EXT-468', 'GA', 'prueba13366', '2021-11-04', 'QWERTYASDFG<ZXCVB', '', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sgc_software`
--

CREATE TABLE `sgc_software` (
  `id` int(11) NOT NULL,
  `fechasolicitud` date NOT NULL,
  `modulo` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `solicitante` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `descripcion` varchar(500) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `impacto` varchar(500) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `version` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `fechaaplicacion` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `solicitudes`
--

CREATE TABLE `solicitudes` (
  `id` int(8) NOT NULL,
  `NombreSolicitante` varchar(20) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `FechaSolicitud` date NOT NULL,
  `Proceso` char(10) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `TipoSolicitud` varchar(20) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `Codigo` varchar(20) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `VersionCambiar` int(8) NOT NULL,
  `TipoDocumento` varchar(16) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `Descripcion` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `EjecucionCambio` date NOT NULL,
  `Aprobado` enum('','si','no','revision') CHARACTER SET utf8 COLLATE utf8_spanish_ci DEFAULT NULL,
  `Observaciones` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `filename` varchar(255) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `dir` varchar(255) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='GC-RG-003';

--
-- Volcado de datos para la tabla `solicitudes`
--

INSERT INTO `solicitudes` (`id`, `NombreSolicitante`, `FechaSolicitud`, `Proceso`, `TipoSolicitud`, `Codigo`, `VersionCambiar`, `TipoDocumento`, `Descripcion`, `EjecucionCambio`, `Aprobado`, `Observaciones`, `filename`, `dir`) VALUES
(1, 'Calidadsg', '2020-01-27', 'GB', 'creacion', 'GB-DC-01', 0, 'documento', 'Es un hecho establecido desde hace mucho tiempo que un lector se distraerá con el contenido legible de una página al mirar su diseño. El punto de usar Lorem Ipsum es que tiene una distribución de letras más o menos normal, en lugar de usar \'Contenido aquí, contenido aquí\', lo que hace que parezca un inglés legible', '2020-01-27', 'no', 'Es un hecho establecido desde hace mucho tiempo que un lector se distraerá con el contenido legible de una página al mirar su diseño. El punto de usar Lorem Ipsum es que tiene una distribución de letras más o menos normal, en lugar de usar \'Contenido aquí, contenido aquí\', lo que hace que parezca un inglés legible', 'GD_GG_003-5.pdf', 'file/uploads/solicitude/filename'),
(2, 'Calidadsg', '2020-01-27', 'GB', 'actualizacion', 'GA-DC-001', 0, 'documento', 'Es un hecho establecido desde hace mucho tiempo que un lector se distraerá con el contenido legible de una página al mirar su diseño. El punto de usar Lorem Ipsum es que tiene una distribución de letras más o menos normal, en lugar de usar \'Contenido aquí, contenido aquí\', lo que hace que parezca un inglés legible', '2020-01-27', 'si', 'Es un hecho establecido desde hace mucho tiempo que un lector se distraerá con el contenido legible de una página al mirar su diseño. El punto de usar Lorem Ipsum es que tiene una distribución de letras más o menos normal, en lugar de usar \'Contenido aquí, contenido aquí\', lo que hace que parezca un inglés legible', 'CONTRATO_PRESTACION_DE_SERVICIOS_DOCENTES_2020.docx', 'file/uploads/solicitude/filename'),
(3, 'Calidadsg', '2020-01-27', 'GC', 'creacion', 'GC-DC-99', 0, 'documento', 'SE REQUIERE actualizar el manual de CALIDAD PARA EFECTOS DE prueba, en este caso revisamos la relación de mayúsculas y minúsculas, así como también las tildes y comas.', '2020-01-27', 'si', 'Es un hecho establecido desde hace mucho tiempo que un lector se distraerá con el contenido legible de una página al mirar su diseño. El punto de usar Lorem Ipsum es que tiene una distribución de letras más o menos normal, en lugar de usar \'Contenido aquí, contenido aquí\', lo que hace que parezca un inglés legible', 'GR_DC_002_MANUAL_DE_CALIDAD.docx', 'file/uploads/solicitude/filename'),
(4, 'Calidadsg', '2020-01-27', 'GC', 'actualizacion', 'GC-DC-99', 0, 'documento', 'manual de CALIDAD manual de CALIDAD manual de CALIDAD manual de CALIDAD manual de CALIDAD manual de CALIDAD manual de CALIDAD manual de CALIDAD manual de CALIDAD manual de CALIDAD manual de CALIDAD manual de CALIDAD manual de CALIDAD manual de CALIDAD manual de CALIDAD manual de CALIDAD manual de CALIDAD manual de CALIDAD', '2020-01-27', 'si', '', '', ''),
(5, 'Calidadsg', '2020-01-27', 'GC', 'creacion', 'GC-DC-003', 0, 'documento', 'Se requiere REVISAR EL TIPO DE letra para el usuario , la cual debe ser mayúscula y reconocer las tildes cuando el las registre; esto mejoraría mucho debido a que HABLAMOS DE PROCESOS, por eso la información debe ser confiable. ', '2020-01-27', 'si', 'Se considera conveniente los cambios ', 'GR_DC_002_MANUAL_DE_CALIDAD-0.docx', 'file/uploads/solicitude/filename'),
(6, 'Calidadsg', '2020-01-27', 'GA', 'actualizacion', 'GA-DC-001', 0, 'documento', ' manual de CALIDAD manual de CALIDAD manual de CALIDAD manual de CALIDAD manual de CALIDAD manual de CALIDAD manual de CALIDAD manual de CALIDAD manual de CALIDAD manual de CALIDAD manual de CALIDAD manual de CALIDAD manual de CALIDAD manual de CALIDAD manual de CALIDAD manual de CALIDAD manual de CALIDAD manual de CALIDAD manual de CALIDAD manual de CALIDAD manual de CALIDAD manual de CALIDAD manual de CALIDAD manual de CALIDAD manual de CALIDAD manual de CALIDAD manual de CALIDAD manual de CALIDAD manual de CALIDAD manual de CALIDAD manual de CALIDAD manual de CALIDAD manual de CALIDAD manual de CALIDAD manual de CALIDAD manual de CALIDAD manual de CALIDAD manual de CALIDAD manual de CALIDAD manual de CALIDAD manual de CALIDAD manual de CALIDAD manual de CALIDAD manual de CALIDAD manual de CALIDAD manual de CALIDAD manual de CALIDAD', '2020-01-27', 'si', 'Es un hecho establecido desde hace mucho tiempo que un lector se distraerá con el contenido legible de una página al mirar su diseño. El punto de usar Lorem Ipsum es que tiene una distribución de letras más o menos normal, en lugar de usar \'Contenido aquí, contenido aquí\', lo que hace que parezca un inglés legible', '', ''),
(7, 'Calidadsg', '2020-01-28', 'GA', 'creacion', 'GC-DC-100', 0, 'documento', 'Lorem Ipsum es simplemente un texto ficticio de la industria de impresión y composición tipográfica. Lorem Ipsum ha sido el texto ficticio estándar de la industria desde el año 1500, cuando una impresora desconocida tomó una galera de tipo y la mezcló para hacer ', '2020-01-28', 'si', 'CakePHP3: maneja la carga de archivos sin una ridícula autómata', 'Comprobante_de_pago_en_MercadoPago_con_Pse.pdf', 'file/uploads/solicitude/filename'),
(8, 'Calidadsg', '2020-01-28', 'GA', 'actualizacion', 'GC-DC-100', 0, 'documento', 'Lorem Ipsum es simplemente un texto ficticio de la industria de impresión y composición tipográfica. Lorem Ipsum ha sido el texto ficticio estándar de la industria desde el año 1500, cuando una impresora desconocida tomó una galera de tipo y la mezcló para hacer un libro de muestras. Ha sobrevivido no solo cinco siglos, sino también el salto a la composición electrónica, permaneciendo esencialmente sin cambios. Se popularizó en la década de 1960 con el lanzamiento de las hojas de Letraset que contienen pasajes de Lorem Ipsum, y más recientemente con software de publicación de escritorio como Aldus PageMaker que incluye versiones de Lorem Ipsum.', '2020-01-28', 'si', '1960 con el lanzamiento de las hojas de Letraset que contienen pasajes de Lorem Ipsum, y más recientemente con software de publicación de escritorio como Aldus PageMaker que incluye versiones de Lorem Ipsum.', 'Comprobante_de_pago_en_MercadoPago_con_Pse-0.pdf', 'file/uploads/solicitude/filename'),
(9, 'Calidadsg', '2020-01-28', 'GA', 'creacion', 'GA-DC-101', 0, 'documento', '1960 con el lanzamiento de las hojas de Letraset que contienen pasajes de Lorem Ipsum, y más recientemente con software de publicación de escritorio como Aldus PageMaker que incluye versiones de Lorem Ipsum.', '2020-01-28', 'si', 'ojas de Letraset que contienen pasajes de Lorem Ipsum, y más recientemente con software de publicación de escritorio como Aldus PageMaker que incluye versiones de Lorem Ipsum.', 'Contrato_de_prestacion_de_servicios_ASESORIA_JURIDICA_jhormann.pdf', 'file/uploads/solicitude/filename'),
(10, 'Calidadsg', '2020-01-29', 'GA', 'creacion', 'Código Automático', 0, 'documento', 'Lorem Ipsum es simplemente un texto ficticio de la industria de impresión y composición tipográfica. Lorem Ipsum ha sido el texto ficticio estándar de la industria desde el año 1500, cuando una impresora desconocida tomó una galera de tipo y la mezcló para hacer un libro de muestras. Ha sobrevivido no solo cinco siglos, sino también el salto a la composición electrónica, permaneciendo esencialmente sin cambios. Se popularizó en la década de 1960 con el lanzamiento de las hojas de Letraset que contienen pasajes de Lorem Ipsum, y más recientemente con software de publicación de escritorio como Aldus PageMaker que incluye versiones de Lorem Ipsum.', '2020-01-29', 'revision', 'CakePHP3: maneja la carga de archivos sin una ridícula autómata', 'PORTAFOLIO2020.pdf', 'file/uploads/solicitude/filename'),
(11, 'Calidadsg', '2020-01-29', 'GA', 'creacion', 'Código Automático', 0, 'documento', 'Lorem Ipsum es simplemente un texto ficticio de la industria de impresión y composición tipográfica. Lorem Ipsum ha sido el texto ficticio estándar de la industria desde el año 1500, cuando una impresora desconocida tomó una galera de tipo y la mezcló para hacer un libro de muestras. Ha sobrevivido no solo cinco siglos, sino también el salto a la composición electrónica, permaneciendo esencialmente sin cambios. Se popularizó en la década de 1960 con el lanzamiento de las hojas de Letraset que contienen pasajes de Lorem Ipsum, y más recientemente con software de publicación de escritorio como Aldus PageMaker que incluye versiones de Lorem Ipsum.', '0000-00-00', NULL, '', 'PORTAFOLIO2020-0.pdf', 'file/uploads/solicitude/filename'),
(12, 'Calidadsg', '2020-01-29', 'GA', 'creacion', 'Código Automático', 0, 'documento', 'Lorem Ipsum es simplemente un texto ficticio de la industria de impresión y composición tipográfica. Lorem Ipsum ha sido el texto ficticio estándar de la industria desde el año 1500, cuando una impresora desconocida tomó una galera de tipo y la mezcló para hacer un libro de muestras. Ha sobrevivido no solo cinco siglos, sino también el salto a la composición electrónica, permaneciendo esencialmente sin cambios. Se popularizó en la década de 1960 con el lanzamiento de las hojas de Letraset que contienen pasajes de Lorem Ipsum, y más recientemente con software de publicación de escritorio como Aldus PageMaker que incluye versiones de Lorem Ipsum.', '0000-00-00', NULL, '', 'PORTAFOLIO2020-1.pdf', 'file/uploads/solicitude/filename'),
(13, 'Calidadsg', '2020-01-29', 'GA', 'creacion', 'Código Automático', 0, 'documento', 'Lorem Ipsum es simplemente un texto ficticio de la industria de impresión y composición tipográfica. Lorem Ipsum ha sido el texto ficticio estándar de la industria desde el año 1500, cuando una impresora desconocida tomó una galera de tipo y la mezcló para hacer un libro de muestras. Ha sobrevivido no solo cinco siglos, sino también el salto a la composición electrónica, permaneciendo esencialmente sin cambios. Se popularizó en la década de 1960 con el lanzamiento de las hojas de Letraset que contienen pasajes de Lorem Ipsum, y más recientemente con software de publicación de escritorio como Aldus PageMaker que incluye versiones de Lorem Ipsum.', '0000-00-00', NULL, '', 'PORTAFOLIO2020-2.pdf', 'file/uploads/solicitude/filename'),
(14, 'Calidadsg', '2020-01-29', 'GA', 'actualizacion', 'GA-DC-001', 0, 'documento', '', '2020-01-31', 'si', 'dsadasdsadas', '', ''),
(15, 'Calidadsg', '2020-02-04', 'GA', 'creacion', 'Código Automático', 0, 'formato', 'assafssdsda', '0000-00-00', NULL, '', '', ''),
(16, 'Calidadsg', '2020-02-05', 'GA', 'creacion', 'Código Automático', 0, 'documento', 'asdsadsadasdsadsaddsadasa', '0000-00-00', NULL, '', '', ''),
(17, 'Calidadsg', '2020-02-05', 'GB', 'creacion', 'Código Automático', 0, 'documento', 'sadsadsadsad', '0000-00-00', NULL, '', 'convenio.png', 'img/uploads/solicitude/filename'),
(18, 'Calidadsg', '2020-02-05', 'GB', 'creacion', 'Código Automático', 0, 'documento', 'sadsadsadsad', '0000-00-00', NULL, '', 'convenio-0.png', 'img/uploads/solicitude/filename'),
(19, 'Calidadsg', '2020-02-05', 'GB', 'creacion', 'Código Automático', 0, 'documento', 'sadsadsadsad', '0000-00-00', NULL, '', 'convenio-1.png', 'img/uploads/solicitude/filename'),
(20, 'Calidadsg', '2020-02-05', 'GB', 'creacion', 'Código Automático', 0, 'documento', 'sadsadsadsad', '0000-00-00', NULL, '', 'convenio-2.png', 'img/uploads/solicitude/filename'),
(21, 'Calidadsg', '2020-02-05', 'GB', 'creacion', 'Código Automático', 0, 'documento', 'sadsadsadsad', '0000-00-00', NULL, '', 'convenio-3.png', 'img/uploads/solicitude/filename'),
(22, 'Calidadsg', '2020-02-05', 'GB', 'creacion', 'Código Automático', 0, 'documento', 'sadsadsadsad', '0000-00-00', NULL, '', 'convenio-4.png', 'img/uploads/solicitude/filename'),
(23, 'Calidadsg', '2020-02-05', 'GA', 'creacion', 'Código Automático', 0, 'documento', 'lokijuhygtfrfdewxqaw', '0000-00-00', NULL, '', 'mejores.png', 'img/uploads/solicitude/filename'),
(24, 'Calidadsg', '2020-02-05', 'GA', 'creacion', 'Código Automático', 0, 'documento', 'lokijuhygtfrfdewxqaw', '0000-00-00', NULL, '', 'mejores-0.png', 'img/uploads/solicitude/filename'),
(25, 'Calidadsg', '2020-02-05', 'GA', 'creacion', 'Código Automático', 0, 'documento', 'adsadasdada', '0000-00-00', NULL, '', 'sena.png', 'img/uploads/solicitude/filename'),
(26, 'Calidadsg', '2020-02-05', 'GA', 'creacion', 'Código Automático', 0, 'documento', 'qwertyuiop', '0000-00-00', NULL, '', 'sena-0.png', 'img/uploads/solicitude/filename'),
(27, 'Calidadsg', '2020-02-05', 'GA', 'creacion', 'Código Automático', 0, 'documento', 'qwertyuiop', '0000-00-00', NULL, '', 'sena-1.png', 'img/uploads/solicitude/filename'),
(28, 'Calidadsg', '2020-02-05', 'GA', 'creacion', 'GA-DC-103', 0, 'documento', 'qwertyuiop', '0000-00-00', '', '', '', ''),
(29, 'Calidadsg', '2020-02-05', 'GA', 'actualizacion', 'GA-DC-100', 0, 'documento', 'wqewrewrererwrwer', '2020-02-05', 'revision', '----------------------', '', 'img/uploads/solicitude/filename'),
(30, 'Calidadsg', '2020-02-05', 'GA', 'creacion', 'GB-FR-0052', 0, 'formato', 'ytuytuyuytuytutyuytu', '2020-02-06', 'si', 'CakePHP3: maneja la carga de archivos sin una ridícula autómata', 'celac.png', 'img/uploads/solicitude/filename'),
(31, 'Calidadsg', '2020-02-05', 'GA', 'actualizacion', 'GA-FR-003', 0, 'formato', 'ewtrertweqwesdrgfhj,k.mnbfdfrjk', '2021-09-27', 'si', 'PRUEBA', 'convenio-5.png', 'img/uploads/solicitude/filename'),
(32, 'Calidadsg', '2020-02-05', 'GA', 'eliminacion', 'GA-DC-101', 0, 'documento', 'afdsafsfsdsfdfdfsdadf', '0000-00-00', NULL, '', 'mejores-1.png', 'img/uploads/solicitude/filename'),
(33, 'CLAUDIA', '2021-09-28', 'GB', 'creacion', 'PRUEBA', 0, 'formato', 'PRUEBA', '2021-09-28', 'si', 'Es conveniente y adecuado el formato para un adecuado uso en el proceso ', '', ''),
(34, '14696620', '2021-09-28', 'GA', 'creacion', 'ga-er-01', 0, 'formato', 'probando la aprobacion de  la creacion del formato', '2021-09-29', 'si', 'PRUEBA', '', ''),
(35, '14696620', '2021-10-08', 'GA', 'creacion', 'Código Automático', 0, 'documento', 'asdfghjkl', '0000-00-00', '', '', 'GD_FC_04.pdf', 'img/uploads/solicitude/filename'),
(36, '14696620', '2021-10-08', 'GA', 'creacion', 'Código Automático', 0, 'documento', 'hkhjkhjkhjkhjk', '0000-00-00', '', '', 'GD_FC_04-0.pdf', 'img/uploads/solicitude/filename'),
(37, '14696620', '2021-10-08', 'GA', 'creacion', 'Código Automático', 0, 'documento', 'hkhjkhjkhjkhjk', '0000-00-00', '', '', 'GD_FC_04-1.pdf', 'img/uploads/solicitude/filename'),
(38, '14696620', '2021-10-08', 'GA', 'creacion', 'Código Automático', 0, 'documento', 'hkhjkhjkhjkhjk', '0000-00-00', '', '', 'GD_FC_04-2.pdf', 'img/uploads/solicitude/filename'),
(39, '14696620', '2021-10-08', 'GA', 'creacion', 'Código Automático', 0, 'documento', 'hkhjkhjkhjkhjk', '0000-00-00', '', '', 'GD_FC_04-3.pdf', 'img/uploads/solicitude/filename'),
(40, '14696620', '2021-11-12', 'GA', 'creacion', 'GA-EXT-468', 0, 'externo', 'estamos probando el estado del modulo', '2021-11-12', 'revision', 'PRUEBA13333', '', ''),
(41, '14696620', '2021-11-12', 'GA', 'actualizacion', 'GA-EXT-468', 0, 'externo', 'peurba de actualiacion', '2021-11-12', 'si', 'PRUEBA1act', '', ''),
(42, 'FABIAN', '2021-11-25', 'GC', 'creacion', 'Código Automático', 0, 'formato', 'JUSTIFICAR XXXX', '0000-00-00', '', '', '', ''),
(43, 'FABIAN', '2021-11-25', 'GC', 'creacion', 'Código Automático', 0, 'formato', 'JUSTIFICAR XXXX', '0000-00-00', '', '', '', ''),
(44, 'FABIAN', '2021-11-29', 'GA', 'actualizacion', 'GA-DC-101', 0, 'documento', 'DSDFDGDFGFDG', '2021-12-01', 'si', 'jytiytityutyutyutyu', '', ''),
(45, 'CLAUDIA', '2021-12-13', 'GD', 'creacion', '1', 0, 'documento', 'XXXXXX', '2021-12-14', 'si', 'PRUEBA', '', ''),
(46, 'CLAUDIA', '2021-12-13', 'GB', 'creacion', 'Código Automático', 0, 'documento', 'SE REQUIERE LA CREACION DEL DOCUMENTO XXXXXXX PARA XXXXXXXXXXXX ', '0000-00-00', '', '', '', ''),
(47, 'CLAUDIA', '2021-12-13', 'GB', 'creacion', 'GB-FR-006', 0, 'formato', 'SE REQUIERE LA CREACION DEL FORMATO XXXXXXXX PARA XXXXXXXXXXXXXXXXXXXXXXX', '2021-12-13', 'si', 'ES CONVENIENTE Y ADECUADO LA CREACION DEL FORMATO PARA EL SISTEMA DE GESTION DE CALIDAD', '', ''),
(48, '14696620', '2021-12-21', 'GA', 'creacion', 'GA-DC-104', 0, 'documento', 'es requerido para  el sistema de control', '2021-12-22', 'si', 'es requerido para  el sistema de control', '', ''),
(49, 'DIANA MARIA', '2022-04-20', 'GA', 'creacion', 'Código Automático', 0, 'documento', 'hjjhjhjhjhhhj prueba', '0000-00-00', '', '', '', ''),
(50, 'DIANA MARIA', '2022-04-20', 'GA', 'creacion', 'Código Automático', 0, 'documento', 'hjjhjhjhjhhhj prueba', '0000-00-00', '', '', '', ''),
(51, 'DIANA MARIA', '2022-04-20', 'GA', 'creacion', 'Código Automático', 0, 'documento', 'hjjhjhjhjhhhj prueba', '0000-00-00', '', '', '', ''),
(52, 'DIANA MARIA', '2022-04-20', 'GA', 'creacion', 'Código Automático', 0, 'documento', 'hjjhjhjhjhhhj prueba', '0000-00-00', '', '', '', ''),
(53, 'DIANA MARIA', '2022-04-20', 'GA', 'creacion', 'Código Automático', 0, 'documento', 'hjjhjhjhjhhhj prueba', '0000-00-00', '', '', '', ''),
(54, 'DIANA MARIA', '2022-04-20', 'GB', 'creacion', 'Código Automático', 0, 'documento', 'dffdfdf', '0000-00-00', '', '', '', ''),
(55, 'DIANA MARIA', '2022-05-06', 'GB', 'creacion', 'Código Automático', 0, 'formato', 'justificacion ', '0000-00-00', '', '', '', ''),
(56, 'DIANA MARIA', '2022-05-10', 'GA', 'creacion', 'Código Automático', 0, 'documento', 'para debido proceso', '0000-00-00', '', '', 'GB_FR_011_ACTA_2.docx', 'img/uploads/solicitude/filename'),
(57, 'DIANA MARIA', '2022-05-24', 'GC', 'creacion', 'Código Automático', 0, 'documento', 'para el debido control', '0000-00-00', '', '', 'PB_DC_002_PROCEDIMIENTO_DE_SELECCION_CONTRATACION_INDUCCION_Y_ENTRENAMIENTOV10.doc', 'img/uploads/solicitude/filename');

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
  `usuario` varchar(255) CHARACTER SET latin1 NOT NULL,
  `observacion_1` varchar(1000) CHARACTER SET latin1 NOT NULL,
  `observacion` varchar(1000) CHARACTER SET latin1 NOT NULL,
  `fechaRespuesta` date NOT NULL,
  `num_accion_corr` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `tb_proceso_noconformes`
--

INSERT INTO `tb_proceso_noconformes` (`id`, `proceso`, `cargo_id`, `TbCondiciones_id`, `descEvento`, `lugarEvento`, `estado`, `fechaRegistro`, `fechaValidacion`, `respuesta`, `usuario`, `observacion_1`, `observacion`, `fechaRespuesta`, `num_accion_corr`) VALUES
(1, 'GP', 11, 15, 'Me encontre a la estudiante danyeli el dia 06/10/2017 quien manifiesta que hace 4 dia solicito el certificado de estudio, el cual no se ha entregado.manifiesta que hace 4 días solicito el certificado de estudio, el cual no se ha entregado.', '1', 'Aprobacion', '2017-08-18', '2017-10-06', 'El estudiante habia realizado la solicitud, pero no se ha elaborado debido a que la persona que recepciono no informo de la solicitud y quedo verbal.', 'fmeza', '', 'se aborda al estudiante y se evidencia la entrega del certificado.', '2017-10-04', 0),
(2, 'GP', 5, 7, 'El docente ARIAS RESTREPO DAVID llega tarde a la clase del dia miercoles con el grupo de auxiliar en recurso humano, iniciaba a las 8:00 a.m. y llego a las 8:20 a.m.', '1', 'Aprobacion', '2017-10-10', '2017-10-11', 'El docente pidio excusas y manifesto que ese dia se le pesento una situacion familiar, es de destacar que es la primera vez que se presenta este tipo de situaciones con el asesor educativo david arias.', 'cduarte', '', 'Se ingresa al grupo y se pregunta por el evento y manifiestan que el docente  pidio excusas y que es muy buen docente.', '2017-10-10', 0),
(3, 'GA', 7, 16, 'Se evidencia que se realizo una enmendadura con un corrector en la fecha del pagare del estudiante MOSQUERA GARCES MAYRA del programa de recursos humano.', '1', 'Aprobacion', '2017-10-09', '2017-10-10', 'Se llama al estudiante y se le manifiesta la novedad, quien amablemente acude a diligenciar nuevamente el documento.', 'fmeza', '', 'Se revisa documento del estudinte Mayra Mosquera y se evidencia en buenas condiciones sin enmndaduras.', '2017-10-09', 0),
(4, 'GA', 4, 5, 'Se ha requerido en diferentes ocasiones la importancia de publicar la política de calidad en el piso 2 y 3, a pesar que se ha quedado en realizar, a la fecha no se ha realizado se había quedado en realizarse en agosto.', '1', 'Aprobacion', '2018-07-19', '2018-07-27', 'No se ha realizado debido a diferentes programaciones, ademas por temas de limpieza.', 'fmeza', '', 'Se evidencia el cuadro en 2 y 3 piso para la comunidad educativa.', '2018-07-24', 0),
(5, 'GA', 4, 17, 'El aire acondicionado del ambiente de aprendizaje México, no funciona adecuadamente, desde el inicio de la clase estamos expuestos a calor. Lo cual no deja desarrollar adecuadamente la clase.', '1', 'Aprobacion', '2018-08-10', '2018-09-07', 'el proveedor no se habia asignado para el mantenimiento al aire acondicionado, debido a que esas actividades se llevan de tipo preventivo, pero se realizara la solicitud al proveedor para dar solución a la necesidad planteada.', 'agarzon', '', 'Se evidencia el aire acondicionado en buenas condiciones y un ambiente apropiado para desarrollar clases.', '2018-08-13', 0),
(6, 'GP', 5, 7, 'La docente zuladi siendo 13 de agosto del 2018 a las 9:00 a.m., llega tarde  sin informar previamente para reaccionar, las llegadas tarde normalmente molestan e incomodan al estudiantes.', '1', 'Aprobacion', '2018-08-13', '2018-09-07', 'La docentes efectivamente llego tarde, a quien se le abordara y se re-programara la hora correspondientes en la siguiente clase dándole cumplimento a los estudiantes.', 'jhonmag', '', 'Se evidencia la novedad en la asignación de clase y se identifica el cumplimiento, así como se identifica que el docente esta informado de los lineamientos para eventos no esperados.', '2018-08-15', 0),
(7, '1', 0, 1, 'adfsdfadf', 'asdfasfsd', 'En Tramite', '2021-10-08', NULL, NULL, '14696620', '', '', '0000-00-00', 0),
(8, '1', 0, 1, 'asdadasdadasd', 'asdfasfsd', 'En Tramite', '2021-10-08', NULL, NULL, '14696620', '', '', '0000-00-00', 0),
(9, '1', 0, 17, 'asdadasdadasd', 'asdfasfsd', 'En Tramite', '2021-10-08', NULL, NULL, '14696620', '', '', '0000-00-00', 0),
(10, '1', 0, 14, 'DESCRIBIR EL EVENTO', 'AREA DE EVENTO', 'En Tramite', '2021-11-25', NULL, NULL, 'FABIAN', '', '', '0000-00-00', 0),
(11, '1', 4, 3, 'gggg', 'ggg', 'En Tramite', '2022-05-06', NULL, NULL, 'DIANA MARIA', '', '', '0000-00-00', 0),
(12, '1', 4, 14, 'se ignoro la situacion', 'Clinica colombia, escaleras del sótano', 'En Tramite', '2022-05-10', NULL, NULL, 'DIANA MARIA', '', '', '0000-00-00', 0),
(13, '1', 4, 1, 'klkjljkljkljkljklkñlkñklñklñlkñl', 'prueba', 'En Tramite', '2022-07-15', NULL, NULL, '14696620', '', '', '0000-00-00', 0),
(14, '1', 4, 71, 'PRUEBA', 'prueba', 'En Tramite', '2022-07-18', NULL, NULL, '14696620', '', '', '0000-00-00', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios_cargos`
--

CREATE TABLE `usuarios_cargos` (
  `codigo` int(10) NOT NULL,
  `cargo` tinytext CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `sgc_id` varchar(50) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='cargos de empleados';

--
-- Volcado de datos para la tabla `usuarios_cargos`
--

INSERT INTO `usuarios_cargos` (`codigo`, `cargo`, `sgc_id`) VALUES
(1, 'Sin Cargo', 'N/A'),
(2, 'DIRECTOR GENERAL', 'GD'),
(3, 'ASESOR DE CALIDAD', 'GI'),
(4, 'DIRECTOR ADMINISTRATIVO Y FINANCIERO', 'GA'),
(5, 'DIRECTOR ACADEMICO', 'GP'),
(6, 'ASISTENTE DE PUBLICIDAD', 'GA'),
(7, 'ASISTENTE COMERCIAL', 'GM'),
(8, 'ASISTENTE LOGISTICA', 'GA'),
(9, 'ASISTENTE ADMINISTRATIVO Y CONTABLE', 'GA'),
(10, 'ASESOR EDUCATIVO', 'GP'),
(11, 'ASISTENTE ACADEMICO', 'GP'),
(12, 'ASISTENTE OCUPACIONAL', 'GB'),
(13, 'ASISTENTE DE BIENESTAR', 'GB');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `accions`
--
ALTER TABLE `accions`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `acpms`
--
ALTER TABLE `acpms`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `actividades`
--
ALTER TABLE `actividades`
  ADD PRIMARY KEY (`id`);

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
-- Indices de la tabla `causas`
--
ALTER TABLE `causas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `correccions`
--
ALTER TABLE `correccions`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `datos`
--
ALTER TABLE `datos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `documentos`
--
ALTER TABLE `documentos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `files`
--
ALTER TABLE `files`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `formatos`
--
ALTER TABLE `formatos`
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
-- Indices de la tabla `procesos`
--
ALTER TABLE `procesos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `respuestas`
--
ALTER TABLE `respuestas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `satisfacions`
--
ALTER TABLE `satisfacions`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `seguimientos`
--
ALTER TABLE `seguimientos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `sgcexternos`
--
ALTER TABLE `sgcexternos`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `codigo` (`codigo`,`nombre`);

--
-- Indices de la tabla `sgc_software`
--
ALTER TABLE `sgc_software`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `solicitudes`
--
ALTER TABLE `solicitudes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Sede` (`Proceso`),
  ADD KEY `Proceso` (`Proceso`),
  ADD KEY `NombreSolicitante` (`NombreSolicitante`);

--
-- Indices de la tabla `tb_condiciones`
--
ALTER TABLE `tb_condiciones`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tb_proceso_noconformes`
--
ALTER TABLE `tb_proceso_noconformes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `TbCondiciones_id` (`TbCondiciones_id`),
  ADD KEY `usuarioscargo_id` (`cargo_id`);

--
-- Indices de la tabla `usuarios_cargos`
--
ALTER TABLE `usuarios_cargos`
  ADD PRIMARY KEY (`codigo`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `accions`
--
ALTER TABLE `accions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de la tabla `acpms`
--
ALTER TABLE `acpms`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `actividades`
--
ALTER TABLE `actividades`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

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
-- AUTO_INCREMENT de la tabla `causas`
--
ALTER TABLE `causas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `correccions`
--
ALTER TABLE `correccions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `datos`
--
ALTER TABLE `datos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT de la tabla `documentos`
--
ALTER TABLE `documentos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT de la tabla `files`
--
ALTER TABLE `files`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `formatos`
--
ALTER TABLE `formatos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=155;

--
-- AUTO_INCREMENT de la tabla `indicadors`
--
ALTER TABLE `indicadors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT de la tabla `metas`
--
ALTER TABLE `metas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT de la tabla `modelos`
--
ALTER TABLE `modelos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de la tabla `procesos`
--
ALTER TABLE `procesos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `respuestas`
--
ALTER TABLE `respuestas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de la tabla `satisfacions`
--
ALTER TABLE `satisfacions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `seguimientos`
--
ALTER TABLE `seguimientos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `sgcexternos`
--
ALTER TABLE `sgcexternos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=96;

--
-- AUTO_INCREMENT de la tabla `sgc_software`
--
ALTER TABLE `sgc_software`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `solicitudes`
--
ALTER TABLE `solicitudes`
  MODIFY `id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT de la tabla `tb_condiciones`
--
ALTER TABLE `tb_condiciones`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=186;

--
-- AUTO_INCREMENT de la tabla `tb_proceso_noconformes`
--
ALTER TABLE `tb_proceso_noconformes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT de la tabla `usuarios_cargos`
--
ALTER TABLE `usuarios_cargos`
  MODIFY `codigo` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
