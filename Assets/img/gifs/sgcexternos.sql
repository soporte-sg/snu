-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jul 15, 2022 at 11:33 AM
-- Server version: 5.7.38-cll-lve
-- PHP Version: 7.4.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `document_prueba1c`
--

-- --------------------------------------------------------

--
-- Table structure for table `sgcexternos`
--

CREATE TABLE `sgcexternos` (
  `id` int(11) NOT NULL,
  `codigo` varchar(11) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `proceso` varchar(255) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `nombre` varchar(255) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `expedicion` date NOT NULL,
  `descripcion` varchar(500) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sgcexternos`
--

INSERT INTO `sgcexternos` (`id`, `codigo`, `proceso`, `nombre`, `expedicion`, `descripcion`) VALUES
(1, 'GD-EX-01', 'GD', ' LEY 1064', '2016-07-26', 'Por la cual se dictan normas de apoyo y fortalecimiento de la educacion para el  trabajo y desarrollo humano'),
(2, 'GD-EX-02', 'GD', ' LEY 115', '1994-02-08', 'Por la cual se expide la ley general de educacion'),
(3, 'GD-EX-03', 'GD', ' LEY 1732', '2014-07-01', 'Por la cual se establece la catedra de paz en todas las instituciones del pais'),
(4, 'GD-EX-04', 'GD', ' DECRETO 1075 ', '2015-05-26', 'Por medio del cual se expide el Decreto Unico Reglamentario del Sector Educacion'),
(5, 'GD-EX-05', 'GD', 'DECRETO 2376', '2010-01-04', 'Por medio del cual se regula la relacion docencia - servicio para los programas de formacion de\ntalento humano del area de la salud'),
(6, 'GD-EX-06', 'GD', 'DECRETO 4904', '2009-12-16', 'Por el cual se reglamenta la organizacion, oferta y funcionamiento de la prestacion del servicio educativo para el trabajo y eldesarrollo humano y se dictan otras disposiciones'),
(7, 'GD-EX-07', 'GD', 'DECRETO 1860 ', '1994-05-08', 'Por el cual se reglamenta parcialmente la Ley 115 de 1994, en los aspectos pedagogicos y organizativos generales'),
(8, 'GD-EX-08', 'GD', 'LEY 1651', '2013-12-07', 'Por medio de la cual se modifican los articulos 13, 20, 21,22,30 y 38 de la ley 115 de 1994 y se dictan otras disposiciones-ley de biling'),
(9, 'GA-EX-01', 'GA', 'CODIGO DEL COMERCIO', '2009-08-27', 'Nuevo Codigo publicado en el Diario Oficial de la Federacion el 7 de octubre de 1889'),
(10, 'GA-EX-02', 'GA', 'PLAN UNICO DE CUENTAS PUC', '2007-01-11', 'Estatuto de la profesion de Contador Publico Reglamento general de la contabilidad Plan unico de cuentas para comerciantes'),
(11, 'GA-EX-03', 'GA', 'ESTATUTO TRIBUTARIO', '2011-10-02', 'Estatuto tributario republica de colombia libro primero impuesto sobre la renta y complementarios'),
(12, 'GA-EX-04', 'GA', 'CODIGO SUSTANTIVO DEL TRABAJO', '1961-01-01', 'codigo sustantivo del trabajo decretos 2663 y 3743 de 1961\nadoptados por la ley 141 de 1961'),
(13, 'GA-EX-05', 'GA', 'ACUERDO 0114', '2010-02-22', 'Por medio del cual se definen los equipos, elementos y materiales  \nbasicos de los talleres de los programas de educacion para el \ntrabajo y el desarrollo humano del area de la salud\n'),
(14, 'GP-EX-01', 'GP', 'ACUERDO 004 de 2012', '2012-03-16', 'Por el cual se regulan aspectos de la autorizacion de Programas de Formacion de Empresas y del registro de programas de las Instituciones de Educacion Superior (IES), Entidades de Formacion para el Trabajo y el Desarrollo Humano e Instituciones de Educacion Media de Caracter Tecnico, aprobadas por el Gobierno Nacional, se dictan otras disposiciones y se deroga el Acuerdo 16 de 2003'),
(15, 'GP-EX-02', 'GP', 'ACUERDO 0015-de-2003', '2003-11-12', 'Por el cual se regulan aspectos operativos del contrato de aprendizaje.'),
(16, 'GP-EX-03', 'GP', 'ACUERDO 153 de 2012', '2012-10-30', 'Por medio del cual se definen las condiciones de la relacion docencia servicio para emitir el concepto tecnico previo y los requisitos para la obtencion y renovacion del registro de los programas de educacion para el trabajo y el desarrollo humano en el area de auxiliares de la salud y se dictan otras disposiciones.'),
(17, 'DD-EX-04', 'GPx', 'XX', '2012-10-30', 'X\n\n'),
(18, 'GP-EX-05', 'GP', 'CARACTERIZACION OCUPACIONAL DE SERVICIOS FARMACEUTICOS', '2002-01-12', 'Por medio del cual se definen la caracterizacion ocupacional de los servicios farmaceuticos.'),
(19, 'GP-EX-06', 'GP', 'Documento conpes social 155', '2012-08-30', 'Consejo Nacional de Politica Economica y SocialRepublica de Colombia Departamento Nacional de Planeacion'),
(20, 'GP-EX-07', 'GP', 'DECRETO 1075 de 2015', '2015-05-26', 'Por medio del cual se expide el Decreto Unico Reglamentario del Sector Educacion'),
(21, 'GP-EX-08', 'GP', 'DECRETO 2376 de 2010', '2010-01-07', 'Por medio del cual se regula la relacion docencia- servicio para los programas de formacion de talento humano del area de la salud'),
(22, 'GP-EX-09', 'GP', 'DECRETO 2978 de 2013', '2013-12-20', 'Por el cual se modifica el  articulo 14 del Decreto 933 de 2003'),
(23, 'GP-EX-10', 'GP', 'GTC 185', '2009-09-30', 'Documentacion organizacional'),
(24, 'GP-EX-11', 'GP', 'LEY 1164 de 2007', '2007-03-10', 'Por la cual se dictan disposiciones en materia del talento humano en salud.'),
(25, 'GP-EX-12', 'GP', 'Orientaciones internacionales respecto al talento humano en salud', '2008-01-01', 'Orientaciones internacionales respecto al talento humano en salud'),
(26, 'DD-EX-13', 'GPx', 'X', '2004-01-01', 'X'),
(27, 'GB-EX-01', 'GB', 'CONSTITUCION POLITICA DE COLOMBIA 1991', '1991-11-30', 'CONSTITUCION POLITICA DE COLOMBIA 1991'),
(28, 'GB-EX-02', 'GB', 'DECRETO 055 DE 2015', '2015-01-14', 'Por el cual se reglamenta la afiliacion de estudiantes al  Sistema General de Riesgos Laborales y se dictan otras disposiciones'),
(29, 'GB-EX-03', 'GB', 'DECRETO 1072 DE 2015', '2015-05-26', 'Por medio del cual se expide el decreto unico reglamentario del sector trabajo'),
(30, 'GB-EX-04', 'GB', 'DECRETO 1443 DE 2014', '2014-07-31', 'Por el cual se dictan disposiciones para la implementacion del Sistema de Gestion de la Seguridad y Salud en el Trabajo (SG-SST).'),
(31, 'GB-EX-05', 'GB', 'DECRETO 614  DE 1984', '1984-03-14', 'Por el cual se determinan las bases para la organizacion y administracion de Salud Ocupacional en el pais.'),
(32, 'GB-EX-06', 'GB', 'LEY 9 DE 1979', '1979-07-16', 'Por haber salido publicada incompleta en la edicion numero 35193 del dia lunes 5 de febrero de 1979, se inserta debidamente corregida la Ley 9 de 1979 en la presente edicion.'),
(33, 'GB-EX-07', 'GB', 'CODIGO DE INFANCIA Y ADOLESCENCIA', '2007-01-01', 'Codigo de la infancia y adolescencia'),
(34, 'GB-EX-08', 'GB', 'RESOLUCION 001016 DE 1989', '1989-03-31', 'Por  la  cual  se  reglamenta  la  organizacion,  funcionamiento  y  forma  de  los  Programas  de Salud Ocupacional que deben desarrollar los patronos o empleadores en el pais.'),
(35, 'GB-EX-09', 'GB', 'RESOLUCION 2013 DE 1986', '1986-06-06', 'Por  la  cual  se  reglamenta  la organizacion y funcionamiento de los comites de Medicina, Higiene y Seguridad Industrial en los lugares de trabajo'),
(36, 'GB-EX-10', 'GB', 'RESOLUCION 13824  DE 1989', '1989-02-10', 'Por la cual se dicta una medida para la proteccion de la salud'),
(37, 'GB-EX-11', 'GB', 'RESOLUCION 2400 de 1979', '1979-05-22', 'Por la cual se establecen algunas disposiciones sobre vivienda, higiene y seguridad en los establecimientos de trabajo.'),
(38, 'GC-EX-01', 'GC', 'LEY 594 DE 2000', '2000-07-14', 'Por medio de la cual se dicta la ley general de archivos y se dictan otras disposiciones.'),
(88, 'GDP-EX-20', 'GD', 'RESOLUCION # 4143.010.21.01772 DE 2018', '2018-02-15', 'REGISTRO DE PROGRAMA ADMINISTRATIVO EN SALUD'),
(86, 'GDP-EX-18', 'GD', 'RESOLUCION # 4143.010.21.01773 DE 2018', '2018-02-15', 'REGISTRO DE PROGRAMA ENFERMERÍA'),
(87, 'GDP-EX-19', 'GD', 'RESOLUCION # 4143.010.21.01775 DE 2018', '2018-02-15', 'REGISTRO DE PROGRAMA SERVICIOS FARMACÉUTICOS'),
(41, 'GC-EX-04', 'GC', 'CIRCULAR NUMERO 021', '2010-09-07', 'Orientacion para la obtencion de la licencia de funcionamiento y la renovacion del registro para los programas de la educacion para el trabajo y el desarrollo humano'),
(42, 'GC-EX-05', 'GC', 'DOCUMENTO NORMAS', '2007-04-03', 'Aplicacion de las normas tecnicas colombianas para la certificacion de calidad de instituciones y programas de formacion para el trabajo.'),
(43, 'GC-EX-06', 'GC', 'ISO 9000-2015', '2015-10-15', 'Sistemas de gestion de la calidad fundamentos y vocabulario '),
(44, 'GC-EX-07', 'GC', 'ISO 9001-2015', '2015-09-23', 'Sistemas de gestion de la  calidad requisitos'),
(45, 'GC-EX-08', 'GC', 'NTC-5555', '2011-12-14', 'Sistemas de gestion de la  calidad para instituciones de formacion para el trabajo'),
(46, 'GC-EX-09', 'GC', 'NTC-5663', '2011-12-14', ' Programas de la formacion para el trabajo y el desarrollo humano en el area de la salud'),
(47, 'GC-EX-10', 'GC', 'NTC-5580', '2007-12-12', 'Programas de formacion para el trabajo en el area de idiomas.  Requisitos'),
(48, 'GC-EX-11', 'GC', 'NTC-5665', '2009-11-03', 'Programa de formacion para el trabajo y  el  desarrollo  humano  en  las  areas relacionadas con el turismo. Requisitos'),
(49, 'GC-EX-12', 'GC', 'NTC-5581', '2011-12-14', 'Programa de formacion para el trabajo. Requisitos'),
(50, 'GC-EX-13', 'GC', 'NTC-5666', '2009-11-03', 'Programas  de  formacion  en  el  trabajo  en  el  sector  de  sistemas  informaticos. Requisitos'),
(51, 'GC-EX-14', 'GC', 'NTC-OSHAS 18001', '2007-10-24', 'Sistemas   de   gestion   en   seguridad   y salud ocupacional. Requisitos'),
(54, 'GP-EX-14', 'GP', 'DECRETO 933 de 2003 Contrato de Aprendizaje SENA', '2003-04-11', 'Por medio del cual se reglamenta el Contrato de Aprendizaje y se dictan otras\ndisposiciones.'),
(55, 'GD-EX-09', 'GDX', 'RESOLUCION No 4143021.6878 de2014', '2014-08-26', 'POR LA CUAL SE CONCEDE REGISTRO AL PROGRAMA  TECNICO LABORAL EN \"XXXXXX\"  DEL ESTABLECIMIENTO PRIVADO DE EDUCACION PARA EL TRABAJO Y EL DESARROLLO HUMANO.\n\n'),
(56, 'GD-EX-10', 'GDX', 'RESOLUCION No 4143021.6876 de2014', '2014-08-26', 'POR LA CUAL SE CONCEDE REGISTRO AL PROGRAMA  TECNICO LABORAL EN \"XXXXXXX\"  DEL ESTABLECIMIENTO PRIVADO DE EDUCACION PARA EL TRABAJO Y EL DESARROLLO HUMANO.'),
(57, 'GD-EX-11', 'GDX', 'RESOLUCION No 4143021.6875 de2014', '2014-08-26', 'POR LA CUAL SE CONCEDE REGISTRO AL PROGRAMA  TECNICO LABORAL EN \"XXXXXXXX\"  DEL ESTABLECIMIENTO PRIVADO DE EDUCACION PARA EL TRABAJO Y EL DESARROLLO HUMANO.\n'),
(58, 'GD-EX-12', 'GDX', 'RESOLUCION No 3220-02003-1358 de 2009', '2009-08-20', 'POR MEDIO DE LA CUAL SE RESUELVE LA SOLICITUD DE REGISTRO DE LOS PROGRAMAS DE  FORMACION LABORAL DENOMINADOS: '),
(83, 'GDP-EX-15', 'GD', 'RESOLUCION No 4143.0.010.21.0039 de 2017', '2017-01-12', 'RESOLUCION CONTABLES'),
(84, 'GDP-EX-16', 'GD', 'RESOLUCION No 4143.0.010.21.0038 de 2017', '2017-01-12', 'RESOLUCION RECURSOS HUMANOS'),
(81, 'GDP-EX-13', 'GD', 'RESOLUCION No 4143.0.21.9502 de 2016', '2016-12-21', 'LICENCIA PIO'),
(82, 'GDP-EX-14', 'GD', 'RESOLUCION No 4143.0.010.21.0040 de 2017', '2017-01-12', 'RESOLUCION ADMINISTRATIVOS'),
(80, 'GDP-EX-12', 'GD', 'ACTA DE VISITA DE INSPECCION,VIGILANCIA Y CONTROL SANITARIA', '2105-08-21', 'ACTA DE VISITA DE INSPECCION,VIGILANCIA Y CONTROL SANITARIA'),
(78, 'GDP-EX-10', 'GD', 'CERTIFICADO DE EXISTENCIA Y REPRESENTACION LEGAL', '2017-09-21', 'CAMARA Y COMERCIO'),
(79, 'GDP-EX-11', 'GD', 'CERTIFICADO DE SEGURIDAD', '2012-08-30', 'NORMAS DE SEGURIDAD REFERENTES A INCENDIOS Y SEGURIDAD HUMANA'),
(77, 'GDP-EX-09', 'GD', 'CARTA DE USO DEL SUELO', '2016-06-27', 'MODIFICACION DE USO DE SUELO DE EQUIPAMIEMTO EDUCATIVO'),
(85, 'GDP-EX-17', 'GD', 'RUT POLITECNICO', '2017-09-28', 'RUT ACTUALIZADO'),
(89, 'GDP-EX-21', 'GD', 'FUMIGACI?N', '2018-02-15', 'Registro de figuracion de plagas'),
(95, 'GA-EXT-468', 'GA', 'prueba13366', '2021-11-04', 'QWERTYASDFG<ZXCVB');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `sgcexternos`
--
ALTER TABLE `sgcexternos`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `codigo` (`codigo`,`nombre`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `sgcexternos`
--
ALTER TABLE `sgcexternos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=96;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
