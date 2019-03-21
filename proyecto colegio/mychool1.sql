-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 17-03-2019 a las 01:08:18
-- Versión del servidor: 10.1.38-MariaDB
-- Versión de PHP: 5.6.40

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `mychool`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alumn`
--

CREATE TABLE `alumn` (
  `id` int(11) NOT NULL,
  `image` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `email` varchar(255) NOT NULL,
  `address` varchar(60) NOT NULL,
  `phone` varchar(60) NOT NULL,
  `c1_fullname` varchar(100) DEFAULT NULL,
  `c1_address` varchar(100) DEFAULT NULL,
  `c1_phone` varchar(100) DEFAULT NULL,
  `c1_note` varchar(100) DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` datetime DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `fecha_mensualidad` date DEFAULT NULL,
  `idpaquete` int(11) DEFAULT NULL,
  `iva` double DEFAULT NULL,
  `codigo` varchar(200) NOT NULL,
  `matricula` int(11) NOT NULL,
  `anos` int(11) NOT NULL,
  `sexo` int(11) NOT NULL,
  `lugar_hermanos` int(11) NOT NULL,
  `factor_sangre` int(11) NOT NULL,
  `rh` int(11) NOT NULL,
  `marcar` int(11) NOT NULL,
  `fecha_nacimiento` date NOT NULL,
  `departamento` varchar(255) NOT NULL,
  `municipio` varchar(255) NOT NULL,
  `extendida_en_departamento` varchar(255) NOT NULL,
  `extendida_en_municipio` varchar(255) NOT NULL,
  `clase_identificacion` int(11) NOT NULL,
  `numero_identificacion` varchar(200) NOT NULL,
  `depto_residencia` varchar(255) NOT NULL,
  `localizacion_municipio` varchar(255) NOT NULL,
  `barrio` varchar(255) NOT NULL,
  `estrato` int(11) NOT NULL,
  `direccion` varchar(255) NOT NULL,
  `sisben` int(11) NOT NULL,
  `nivel` int(11) NOT NULL,
  `otras_eps` varchar(200) NOT NULL,
  `situacion_ano_anterior` int(11) NOT NULL,
  `procedencia` int(11) NOT NULL,
  `reincidente` int(11) NOT NULL,
  `historial` varchar(255) NOT NULL,
  `padres` varchar(255) NOT NULL,
  `telefono_fijo` varchar(25) NOT NULL,
  `celular` varchar(25) NOT NULL,
  `retiro_alumno` int(11) NOT NULL,
  `madre_nombre` varchar(255) NOT NULL,
  `madre_acudiente` varchar(255) NOT NULL,
  `madre_telefono` varchar(25) NOT NULL,
  `madre_celular` varchar(25) NOT NULL,
  `madre_ocupacion` text NOT NULL,
  `madre_empresa` varchar(255) NOT NULL,
  `madre_tel_empresa` varchar(25) NOT NULL,
  `padre_nombre` varchar(255) NOT NULL,
  `padre_acudiente` varchar(50) NOT NULL,
  `padre_telefono` varchar(25) NOT NULL,
  `padre_celular` varchar(25) NOT NULL,
  `padre_ocupacion` text NOT NULL,
  `padre_empresa` varchar(255) NOT NULL,
  `padre_tel_empresa` varchar(25) NOT NULL,
  `acudiente_nombre` varchar(255) NOT NULL,
  `acudiente_telefono` varchar(25) NOT NULL,
  `acudiente_tel_empresa` varchar(25) NOT NULL,
  `acudiente_parentesco` varchar(255) NOT NULL,
  `responsable_costos_nombre` varchar(255) NOT NULL,
  `responsable_costos_parentesco` varchar(255) NOT NULL,
  `observaciones` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `alumn`
--

INSERT INTO `alumn` (`id`, `image`, `name`, `lastname`, `email`, `address`, `phone`, `c1_fullname`, `c1_address`, `c1_phone`, `c1_note`, `is_active`, `created_at`, `user_id`, `fecha_mensualidad`, `idpaquete`, `iva`, `codigo`, `matricula`, `anos`, `sexo`, `lugar_hermanos`, `factor_sangre`, `rh`, `marcar`, `fecha_nacimiento`, `departamento`, `municipio`, `extendida_en_departamento`, `extendida_en_municipio`, `clase_identificacion`, `numero_identificacion`, `depto_residencia`, `localizacion_municipio`, `barrio`, `estrato`, `direccion`, `sisben`, `nivel`, `otras_eps`, `situacion_ano_anterior`, `procedencia`, `reincidente`, `historial`, `padres`, `telefono_fijo`, `celular`, `retiro_alumno`, `madre_nombre`, `madre_acudiente`, `madre_telefono`, `madre_celular`, `madre_ocupacion`, `madre_empresa`, `madre_tel_empresa`, `padre_nombre`, `padre_acudiente`, `padre_telefono`, `padre_celular`, `padre_ocupacion`, `padre_empresa`, `padre_tel_empresa`, `acudiente_nombre`, `acudiente_telefono`, `acudiente_tel_empresa`, `acudiente_parentesco`, `responsable_costos_nombre`, `responsable_costos_parentesco`, `observaciones`) VALUES
(16, 'default.png', 'EMILY NICOLE', 'GONZALEZ DIAZ', '', '', '', NULL, NULL, NULL, NULL, 1, '2019-03-12 09:38:48', 1, '2019-03-01', 3, NULL, '23414244', 1, 3, 1, 1, 3, 1, 1, '2015-12-23', 'BOGOTÃ', 'BOGOTÃ', 'BOGOTÃ', 'BOGOTÃ', 6, '1020003698', 'BOGOTÃ', 'BOGOTÃ', 'THALIA - FONTIBON', 3, 'CRA 115 No. 17 - 06', 2, 1, 'FAMISANAR LTDA EPS', 1, 1, 1, '', '', '', '3219899957', 1, 'DIAZ AVILA ANGIE LORENA', '', '', '3219899957', 'INDEPENDIENTE', '', '', 'GONZALEZ BUITRAGO KEVIN ARLEY', '', '', '3213245541', 'EMPLEADO', 'ESTRUARMADOS', '', '', '', '', '', 'KEVIN ARLEY GONZALEZ BUITRAGO', 'PADRE', ''),
(17, 'default.png', 'MARTIN', 'GONZALEZ JIMENEZ', '', '', '', NULL, NULL, NULL, NULL, 1, '2019-03-12 09:46:40', 1, '2019-03-01', 3, NULL, '2343591', 1, 3, 2, 1, 3, 1, 1, '2016-03-29', 'BOGOTÃ', 'BOGOTÃ', 'BOGOTÃ', 'BOGOTÃ', 6, '1016101172', 'BOGOTÃ', 'BOGOTÃ', 'FONTIBON', 3, 'CRA 19 No. 17-34', 2, 1, 'SANITAS S.A. EPS', 2, 1, 1, '', '', '', '3123069988', 1, 'JIMENEZ RESTREPO AMELIA MERCEDEZ', '', '', '3224665465', 'INDEPENDIENTE', '', '', 'GONZALEZ ROMERO MIGUEL', '', '', '3105510629', 'EMPLEADO', 'TECNICO MITSIBISHI FONTIBON', '', '', '', '', '', 'MIGUEL GONZALEZ ROMERO', 'PADRE', ''),
(18, 'default.png', 'VERONICA ANTONELLA', 'GONZALEZ JIMENEZ', '', '', '', NULL, NULL, NULL, NULL, 1, '2019-03-12 09:53:31', 1, '2019-03-01', 3, NULL, '23453422', 1, 3, 1, 3, 3, 1, 1, '2015-09-05', 'BOGOTÃ', 'BOGOTÃ', 'BOGOTÃ', 'BOGOTÃ', 6, '1025328830', 'BOGOTÃ', 'BOGOTÃ', 'FONTIBON', 3, 'CLL 22 K No. 104-79', 2, 1, 'SANITAS S.A. EPS', 1, 1, 1, '', '', '', '3167437006', 1, 'JIMENEZ LOPEZ DIANNA CAROLINA', 'SI', '', '3163966168', 'EMPLEADA', 'ITAU', '5818181', 'GONZALE BERNAL OMAR', '', '', '3167437006', 'INDEPENDIENTE ', '', '', '', '', '', '', 'OMAR GONZALEZ BERNAL', 'PADRE', ''),
(20, 'default.png', 'LUIS SANTIAGO', 'JIMENEZ BEJARANO', '', '', '', NULL, NULL, NULL, NULL, 1, '2019-03-12 09:58:22', 1, '2019-03-01', 3, NULL, '23490949', 1, 3, 2, 3, 3, 1, 1, '2015-12-18', 'BOGOTÃ', 'BOGOTÃ', 'BOGOTÃ', 'BOGOTÃ', 6, '1020003641', 'BOGOTÃ', 'BOGOTÃ', 'FONTIBON', 3, 'CRA 11 A  BIS  No. 16 H - 57', 2, 1, 'FAMISANAR LTDA EPS', 1, 1, 1, '', '', '', '3214765134', 1, 'BEJARANO RODRIGUEZ YINA ZORAIDA', 'SI', '', '3124765134', 'EMPLEADA', 'ASESORA COMERCIAL', '', 'JIMENEZ ORALES MAURY ALEXANDER', '', '', '3215700900', 'INDEPENDIENTE ', '', '', '', '', '', '', 'MAURY ALEXANDER JIMENEZ', 'PADRE', ''),
(21, 'default.png', 'JUAN ESTEBAN ', 'JIMENEZ RIVERA', '', '', '', NULL, NULL, NULL, NULL, 1, '2019-03-12 10:03:56', 1, '2019-03-01', 3, NULL, '23501333', 1, 3, 2, 2, 3, 1, 1, '2015-11-11', 'BOGOTÃ', 'BOGOTÃ', 'BOGOTÃ', 'BOGOTÃ', 6, '1188222847', 'BOGOTÃ', 'BOGOTÃ', 'RECODO FONTIBON', 2, 'CLL 14 No. 119 A - 10 CASA H 10', 2, 1, 'SANITAS S.A. EPS', 1, 1, 1, '', '', '4135536', '3114569994', 1, 'RIVERA GARCIA MARIA CAMILA', '', '4135536', '3114569994', 'EMPLEADA', 'TRABAJO SOCIAL', '', 'JIMENEZ QUINTERO JUAN FERNANDO', '', '4135536', '3138151741', 'EMPLEADO', 'COLEGIO BETHLEMITAS', '', '', '', '', '', 'JUAN FERNANDO JIMENEZ QUINTERO', '', ''),
(24, 'default.png', 'ELLINOR CAMILA', 'LOPEZ GARCIA', '', '', '', NULL, NULL, NULL, NULL, 1, '2019-03-12 10:09:10', 1, '2019-03-01', 3, NULL, '23511216', 1, 3, 1, 3, 3, 1, 1, '2015-12-08', 'BOGOTÃ', 'BOGOTÃ', 'BOGOTÃ', 'BOGOTÃ', 6, '1016098714', 'BOGOTÃ', 'BOGOTÃ', 'FONTIBON PEDREGAL', 3, 'CRA 111 A No. 20 B - 44', 2, 1, 'COMPENSAR EPS', 1, 1, 1, '', '', '4184494', '3113510017', 1, 'GARCIA GARCIA YURY MARCELA', 'SI', '4184494', '3112510017', 'EMPLEADA', 'REDES Y MONTAJES', '2310810', 'LOPEZ ARTEAGA DARIO ALEXANDER', '', '', '3134409930', 'EMPLEADO', 'TOYOTA', '', '', '', '', '', 'DARIO ALEXANDER LOPEZ ARTEAGA', 'PADRE', ''),
(25, 'default.png', 'SANTIAGO', 'LOPEZ RIAÃ‘O', '', '', '', NULL, NULL, NULL, NULL, 1, '2019-03-12 10:18:28', 1, '2019-03-01', 3, NULL, '23520521', 1, 3, 2, 3, 3, 1, 1, '2105-05-14', 'BOGOTÃ', 'BOGOTÃ', 'BOGOTÃ', 'BOGOTÃ', 6, '1032490775', 'BOGOTÃ', 'BOGOTÃ', 'RECODO FONTIBON', 2, 'CLL 14 No. 119 A - 50', 2, 1, 'CRUZ BLANCA EPS', 1, 1, 1, '', '', '4458145', '314 3944925', 1, 'RIAÃ‘O PELAEZ MARISOL', '', '4458145', '3143944925', 'EMPLEADA', 'KONECTA', '', 'LOPEZ SABOGAL JOHN', '', '4458145', '3143212490', 'EMPLEADO', 'BUIO-D', '', '', '', '', '', 'JOHN LOPEZ SABOGAL', 'PADRE', ''),
(26, 'default.png', 'MARÃA PAULA', 'MARTINEZ USAQUEN', '', '', '', NULL, NULL, NULL, NULL, 1, '2019-03-12 10:23:47', 1, '2019-03-01', 3, NULL, '2353989', 1, 3, 1, 4, 3, 1, 1, '2015-10-16', 'BOGOTÃ', 'BOGOTÃ', 'BOGOTÃ', 'BOGOTÃ', 5, '1013024646', 'BOGOTÃ', 'BOGOTÃ', 'FONTIBON', 3, 'DIAGONAL 16 B No. 108 - 25 APTO 101', 2, 1, 'ALIANZALUD', 1, 1, 1, '', '', '4525790', '3014115928', 1, 'USAQUEN VELASQUEZ LAUREN KATHERINE', '', '7525790', '3014115928', 'EMPLEADA', 'DELTA SALUD', '', 'MARTINEZ HERNANDEZ FREDY HERNANDO', '', '7525790', '3192593007', 'EMPLEADO', 'MEDIMAS', '', '', '', '', '', 'FREDY HERNANDO MARTINEZ HERNANDEZ', 'PADRE', ''),
(27, 'default.png', 'JEAN PIERRE ', 'MENDEZ DIAZ', '', '', '', NULL, NULL, NULL, NULL, 1, '2019-03-12 10:30:20', 1, '2019-03-01', 3, NULL, '23551407', 1, 3, 2, 3, 2, 1, 1, '2015-02-10', 'BOGOTÃ', 'BOGOTÃ', 'BOGOTÃ', 'BOGOTÃ', 6, '1020002554', 'BOGOTÃ', 'BOGOTÃ', 'BOSTON FONTIBON', 3, 'CLL 19 No. 105 - 16', 2, 1, 'COOMEVA EPS S.A.', 1, 1, 1, '', '', '3102075201', '3123187838', 1, 'DIAZ HERRERA YENIFER ANDREA', '', '', '3123187838', 'EMPLEADA', 'AXA ARL COLPATRIA', '', 'MENDEZ HUERGO CARLOS ANDRES', '', '', '3102075201', 'EMPLEADO', 'MAQUINAS AMARILLAS', '', '', '', '', '', 'CARLOS ANDRES MENDEZ HUERGO', 'PADRE', ''),
(28, 'default.png', 'MARIANA ', 'PEREZ VEGA', '', '', '', NULL, NULL, NULL, NULL, 1, '2019-03-12 10:38:19', 1, '2019-03-01', 3, NULL, '23563632', 1, 3, 1, 3, 3, 1, 1, '2015-10-23', 'BOGOTÃ', 'BOGOTÃ', 'BOGOTÃ', 'BOGOTÃ', 6, '1014997696', 'BOGOTÃ', 'BOGOTÃ', 'VERSALLES FONTIBON', 3, 'CLL 22 K No. 112 - 18', 2, 1, 'SURA EPS', 1, 1, 1, '', '', '4695564', '3143525649', 1, 'VEGA CRUZ ANGGIE MARCELA', 'SI', '4695564', '3143525649', 'HOGAR', '', '', 'PEREZ RODRIGUEZ JEISSON FABIAN', '', '4695564', '3006870651', 'EMPLEADO', 'SETI', '', '', '', '', '', 'JEISSON FABIAN PEREZ RODRIGUEZ', 'PADRE', ''),
(29, 'default.png', 'EYDAN ', 'POVEDA TORRES', '', '', '', NULL, NULL, NULL, NULL, 1, '2019-03-12 10:43:30', 1, '2019-03-01', 3, NULL, '23575877', 1, 3, 2, 1, 1, 1, 1, '2015-06-01', 'BOGOTÃ', 'BOGOTÃ', 'BOGOTÃ', 'BOGOTÃ', 6, '1016094911', 'BOGOTÃ', 'BOGOTÃ', 'FONTIBON BELEN', 3, 'CRA 109 No. 17 C C 03', 2, 1, 'SALUD TOTAL S.A.  EPS', 1, 1, 1, '', '', '8011041', '3209642527', 1, 'TORRES VILLANUEVA RUTH NATALIA', '', '8011041', '3209644227', 'EMPLEADA', 'AVINOMEN SA', '', 'NO REGISTRA', '', '', '', '', '', '', 'CONCEPCION VILLANUEVA', '314751918', '', 'ABUELA', 'RUTH NATALIA TORRES VILLANUEVA', 'MADRE', ''),
(30, 'default.png', 'ANA SOFIA ', 'RAMIREZ AYA', '', '', '', NULL, NULL, NULL, NULL, 1, '2019-03-12 10:48:00', 1, '2019-03-01', 3, NULL, '23590321', 1, 3, 1, 4, 1, 1, 1, '2015-11-30', 'BOGOTÃ', 'BOGOTÃ', 'BOGOTÃ', 'BOGOTÃ', 6, '1020003620', 'BOGOTÃ', 'BOGOTÃ', 'ESTANCIA FONTIBON', 2, 'CLL 14 No. 119 A - 10 CASA F 12', 2, 1, '', 1, 1, 1, '', '', '8148590', '3102493435', 1, 'AYA VARGAS GLORIA DEL PILAR', '', '8148590', '3177841177', 'EMPLEADA', 'UNIVERSIDAD COOPERATIVA', '', 'RAMIREZ PARDO JAIRO ANTONIO', '', '8148590', '3102493435', 'PENSIONADO', '', '', '', '', '', '', 'JAIRO ANTONIO RAMIREZ PARDO', 'PADRE', ''),
(31, 'default.png', 'SAMUEL MATIAS ', 'SICACHA REYES', '', '', '', NULL, NULL, NULL, NULL, 1, '2019-03-12 10:52:10', 1, '2019-03-01', 3, NULL, '00002104', 1, 3, 2, 2, 3, 1, 1, '2015-08-06', 'BOGOTÃ', 'BOGOTÃ', 'BOGOTÃ', 'BOGOTÃ', 6, '1020003201', 'BOGOTÃ', 'BOGOTÃ', 'LA GIRALDA FONTIBON', 3, 'KRA 104 A No. 23 B - 35', 2, 1, 'COMPENSAR EPS', 1, 1, 1, '', '', '', '3142161415', 1, 'REYES VERA GINA PAOLA', 'SI', '', '3142161415', 'EMPLEADA', 'EMGESA SA ESP', '2190330', 'SICACHA DIAZ PABLO ARTURO', '', '', '3123656440', 'INDEPENDIENTE ', '', '', '', '', '', '', 'GINA PAOLA REYES VERA', 'MADRE', ''),
(32, 'default.png', 'KARLA SOFIA', 'TAFUR MONTIEL', '', '', '', NULL, NULL, NULL, NULL, 1, '2019-03-12 10:55:53', 1, '2019-03-01', 3, NULL, '00012776', 1, 3, 1, 5, 3, 1, 1, '2016-03-10', 'BOGOTÃ', 'BOGOTÃ', 'BOGOTÃ', 'BOGOTÃ', 6, '1188223313', 'BOGOTÃ', 'BOGOTÃ', 'FONTIBON', 3, 'CLL 23 I No. 103 B - 25', 2, 1, 'SANITAS S.A. EPS', 1, 1, 1, '', '', '3015500', '3102149015', 1, 'MONTIEL WENDY MARCELA', '', '3015500', '3132613445', 'ESTUDIANTE', '', '', 'TAFUR PRADA LUIS CARLOS', '', '3015500', '3102143015', 'EMPLEADO', '', '', '', '', '', '', 'LUIS CARLOS TAFUR PRADA', 'PADRE', ''),
(33, 'default.png', 'SEBASTIAN ', 'VARGAS ALDANA', '', '', '', NULL, NULL, NULL, NULL, 1, '2019-03-12 10:59:58', 1, '2019-03-01', 3, NULL, '00023022', 1, 3, 2, 4, 1, 1, 1, '2015-09-28', 'BOGOTÃ', 'BOGOTÃ', 'BOGOTÃ', 'BOGOTÃ', 6, '1019911943', 'BOGOTÃ', 'BOGOTÃ', 'MAIPORE FONTIBON', 3, 'CLL 17 No. 13 - 06 ESTE', 2, 1, 'COMPENSAR EPS', 1, 1, 1, '', '', '', '', 1, 'ALDANA RODRIGUEZ MARISTELLA', 'SI', '', '3123276106', 'EMPLEADA', 'FUNDACION OFTALMOLOGICA NAL', '3487333', 'VARGAS GUERRERO FERNANDO', '', '', '3125013963', 'ESTUDIANTE', '', '', '', '', '', '', 'MARISTELLA ALDANA RODRIGUEZ', 'MADRE', ''),
(34, 'default.png', 'SARA FERNANDA ', 'BARON BETANCOURT', '', '', '', NULL, NULL, NULL, NULL, 1, '2019-03-12 11:03:57', 1, '2019-03-01', 3, NULL, '000412050', 1, 3, 1, 4, 3, 1, 1, '2014-08-22', 'BOGOTÃ', 'BOGOTÃ', 'BOGOTÃ', 'BOGOTÃ', 6, '', 'BOGOTÃ', 'BOGOTÃ', 'SAN PABLO ', 3, '', 2, 1, 'COMPENSAR EPS', 1, 1, 1, '', '', '', '3227786555', 1, 'BETANCOURT MONICA YANETH', '', '', '3107990054', 'HOGAR', '', '', 'BARON PEREZ WILLIAM MAURICIO', '', '', '3107990054', 'EMPLEADO', 'ARAUCA SA', '', '', '', '', '', 'WILLIAM MAURICIO BARON ', 'PADRE', ''),
(35, 'default.png', 'SARA CAMILA ', ' GOMEZ ATUESTA', '', '', '', NULL, NULL, NULL, NULL, 1, '2019-03-12 11:07:37', 1, '2019-03-01', 3, NULL, '00052282', 1, 3, 1, 3, 3, 1, 1, '2015-11-19', 'BOGOTÃ', 'BOGOTÃ', 'BOGOTÃ', 'BOGOTÃ', 6, '1020003598', 'BOGOTÃ', 'BOGOTÃ', 'TAPETE', 3, 'KRA 106 No. 16 B - 56', 2, 1, 'FAMISANAR LTDA EPS', 1, 1, 1, '', '', '', '', 1, 'ATUESTA SILVA ELIANA', '', '', '3213011455', 'EMPLEADA', 'DISTRIMATERIALES MACADAMA', '', 'GOMEZ AMAYA DAVID LEONARDO', '', '', '3102264676', 'EMPLEADO', 'EMPRESA B - TRANS', '', '', '', '', '', 'DAVID LEONARDO GOMEZ AYALA', 'PADRE', ''),
(36, 'default.png', 'DAVID FELIPE', 'ALVARZ CARDOZO', '', '', '', NULL, NULL, NULL, NULL, 1, '2019-03-12 11:20:34', 1, '2019-03-01', 4, NULL, '00076812', 1, 3, 2, 3, 3, 1, 1, '2015-05-14', 'BOGOTÃ', 'BOGOTÃ', 'BOGOTÃ', 'BOGOTÃ', 6, '1020002759', 'BOGOTÃ', 'BOGOTÃ', 'RECODO FONTIBON', 2, 'CRA 123 No.13 C - 75 CASA 2', 2, 1, 'SANITAS S.A. EPS', 2, 1, 1, 'JARDIN LA ESPERANZA JUVENIL', '', '', '3508110830', 1, 'CARDOZO VELASQUEZ YURI ALEJANDRA', '', '', '3508110830', 'EMPLEADA', 'REENCAUCHADORA REENSUR', '4154510', 'ALVAREZ DÃAZ GUSTAVO ADOLFO', '', '', '3203018785', 'EMPLEADO', 'REENCAUCHADORA REENCOL', '', '', '', '', '', 'GUSTAVO ADOLFO ALVAREZ DIAZ', 'PADRE', ''),
(37, 'default.png', 'DANIELA SALOME', 'ALZATE GALBAN', '', '', '', NULL, NULL, NULL, NULL, 1, '2019-03-12 11:26:11', 1, '2019-03-01', 4, NULL, '00085927', 1, 4, 1, 1, 1, 1, 1, '2015-01-04', 'SANTANDER', 'BARRANCABERMEJA', 'BOGOTÃ', 'BOGOTÃ', 6, '1097203942', 'BOGOTÃ', 'BOGOTÃ', 'FONTIBON BELEN', 3, 'CLL 12 No. 13 A - 20', 2, 1, 'FAMISANAR LTDA EPS', 2, 1, 1, 'PREJARDIN LICEO AMIGUITOS BARRANCABERMEJA', '', '', '3204068123', 1, 'GALBAN SIDEDOR KAREN ZULAY', '', '', '3204068123', '', '', '', 'ALZATE DANEL YORDANO', '', '', '3002270119', 'EMPLEADO', '', '', '', '', '', '', 'DANIEL YORDANO ALZATE', 'PADRE', ''),
(38, 'default.png', 'JOSE EMMANUEL ', 'ARIZA DUQUE', '', '', '', NULL, NULL, NULL, NULL, 1, '2019-03-12 11:30:17', 1, '2019-03-01', 4, NULL, '00101119', 1, 4, 2, 1, 1, 1, 1, '2014-07-28', 'BOGOTÃ', 'BOGOTÃ', 'BOGOTÃ', 'BOGOTÃ', 6, '1016087613', 'BOGOTÃ', 'BOGOTÃ', 'FONTIBON', 3, 'KRA 103 B No. 17 D - 13', 2, 1, 'COMPENSAR EPS', 1, 1, 1, '', '', '2672528', '3141029196', 1, 'DUQUE GIRALDO SANDRA JANETH', 'SI', '2672528', '3144029196', 'EMPLEADA', 'RANDYS', '3183336', 'ARIZA GONZALEZ ALEXANDER', '', '2672528', '3115972853', 'INDEPENDIENTE ', '', '', '', '', '', '', 'ALEXANDER ARIZA GONZALEZ', 'PADRE', ''),
(39, 'default.png', 'MARIANA ', 'AVILA BARRETO', '', '', '', NULL, NULL, NULL, NULL, 1, '2019-03-12 11:34:38', 1, '2019-03-01', 4, NULL, '00111362', 1, 3, 1, 2, 3, 1, 1, '2015-03-27', 'BOGOTÃ', 'BOGOTÃ', 'BOGOTÃ', 'BOGOTÃ', 6, '1070980619', 'BOGOTÃ', 'BOGOTÃ', 'BOHIOS FONTIBON', 3, 'CRA 116 No. 17 C - 10', 2, 1, 'SANITAS S.A. EPS', 1, 1, 1, '', '', '9232471', '3004876995', 1, 'BARRETO CHAVEZ LORENA', 'SI', '9232471', '3004876995', 'EMPLEADA', 'SKECHERS COLOMBIA', '4325880', 'AVILA NUÃ‘EZ GABRIEL', '', '9232471', '3163311245', 'INDEPENDIENTE ', '', '', '', '', '', '', 'GABRIEL AVILA NUÃ‘EZ', 'PADRE', ''),
(40, 'default.png', 'AMY VALENTINA ', 'BELTRAN GUERRERO', '', '', '', NULL, NULL, NULL, NULL, 1, '2019-03-12 11:39:09', 1, '2019-03-01', 4, NULL, '00143280', 1, 3, 1, 3, 3, 1, 1, '2015-05-05', 'BOGOTÃ', 'BOGOTÃ', 'BOGOTÃ', 'BOGOTÃ', 6, '1023245046', 'BOGOTÃ', 'BOGOTÃ', 'KASANDRA FONTIBON', 2, 'CLL 16 No. 136 - 18', 2, 1, 'POLICIA NACIONAL', 2, 1, 1, 'PREJARDIN INSTITUTO INFANTIL LA ESPERANZA', '', '', '320 4544852', 1, 'GUERRERO JOHANNA CAROLINA', '', '', '3204544852', '', '', '', 'BELTRAN FRANK YESID', '', '', '3206581319', 'EMPLEADO', 'POLICIA NACIONAL', '', '', '', '', '', 'FRANK YESID BELTRAN', 'PADRE', ''),
(41, 'default.png', 'JUAN ANDRES ', 'CASAS PARDO', '', '', '', NULL, NULL, NULL, NULL, 1, '2019-03-12 11:45:02', 1, '2019-03-01', 4, NULL, '00152717', 1, 4, 2, 3, 1, 1, 1, '2014-11-05', 'BOGOTÃ', 'BOGOTÃ', 'BOGOTÃ', 'BOGOTÃ', 6, '1016088844', 'BOGOTÃ', 'BOGOTÃ', 'CENTENARIO', 3, 'CRA 106 No. 16 - 86 INT 8 APTO 402', 2, 1, 'SANITAS S.A. EPS', 2, 1, 1, 'PREJARDIN INSTITUTO INFANTIL LA ESPERANZA', '', '8107259', '3202634708', 1, 'PARDO PINEDA SONIA ROCIO', '', '8107259', '3202639708', 'EMPLEADA', 'HOSPITAL SAN INGNACIO', '', 'CASAS PARDO GERARDO', '', '', '3118984657', 'EMPLEADO', '', '', '', '', '', '', 'GERARDO CASAS GOMEZ', 'PADRE', ''),
(42, 'default.png', 'WESLIN DAVID ', 'CORREA VANEGAS', '', '', '', NULL, NULL, NULL, NULL, 1, '2019-03-12 11:49:14', 1, '2019-03-01', 4, NULL, '00162274', 1, 4, 2, 1, 1, 1, 1, '2014-08-14', 'BOGOTÃ', 'BOGOTÃ', 'BOGOTÃ', 'BOGOTÃ', 6, '1016088157', 'BOGOTÃ', 'BOGOTÃ', 'PORVENIR FONTION', 1, 'CLL 14 No. 2 - 03', 2, 1, 'CONVIDA EPS', 1, 1, 1, '', '', '', '3227159764', 1, 'VANEGAS CASTAÃ‘EDA YURIXI KAROLAY', 'SI', '', '3227159769', 'EMPLEADA', 'COMESTIBLES RICOS SA', '4877979', 'CORREA USECHE JONNATAN', '', '', '', '', '', '', '', '', '', '', 'YURIXI KAROLAY', 'MADRE', ''),
(43, 'default.png', 'MARIA CAMILA ', 'CRUZ OSPINA', '', '', '', NULL, NULL, NULL, NULL, 1, '2019-03-12 11:54:09', 1, '2019-03-01', 4, NULL, '00175138', 1, 4, 1, 4, 3, 1, 1, '2014-05-07', 'BOGOTÃ', 'BOGOTÃ', 'BOGOTÃ', 'BOGOTÃ', 6, '1020001851', 'BOGOTÃ', 'BOGOTÃ', 'VERSALLES FONTIBON', 3, 'CRA 109 A  No. 22 - 42', 2, 1, 'SALUD TOTAL S.A.  EPS', 1, 1, 1, '', '', '4912958', '3195037064', 1, 'OSPINA TRIANA GLORIA INÃ‰S', 'SI', '4912958', '3195037064', 'HOGAR', '', '', 'CRUZ ANGARITA WILSON ALEXANDER', '', '4912958', '3142166786', 'EMPLEADO', 'TROCHA LTDA', '2552588', '', '', '', '', 'WILSON ALEXANDER CRUZ ANGARITA', 'PADRE', ''),
(44, 'default.png', 'SAMUEL ESTEBAN ', 'DURAN VARGAS', '', '', '', NULL, NULL, NULL, NULL, 1, '2019-03-12 12:40:18', 1, '2019-03-01', 4, NULL, '00185707', 1, 3, 2, 3, 3, 1, 1, '2015-01-17', 'BOGOTÃ', 'BOGOTÃ', 'BOGOTÃ', 'BOGOTÃ', 6, '1020002483', 'BOGOTÃ', 'BOGOTÃ', 'FLANDES FONTIBON', 0, 'CLL 18 A No. 111 A - 48', 2, 3, 'SALUD TOTAL S.A.  EPS', 1, 1, 1, '', '', '7962474', '3219584939', 1, 'VARGAS GUERRERO ANA MILENA', 'SI', '7962474', '3219584939', 'EMPLEADA', 'BUSSIE', '', 'DURAN CASTRO JOSE ANTONIO', '', '7962474', '3219584939', 'EMPLEADO', 'SIEGFRIED', '', '', '', '', '', 'JOSE ANTONIO DURAN', 'PADRE', ''),
(45, 'default.png', 'ANGEL SAMUEL', 'ESPITIA ENCISO', '', '', '', NULL, NULL, NULL, NULL, 1, '2019-03-12 12:47:33', 1, '2019-03-01', 4, NULL, '00200445', 1, 3, 2, 4, 3, 1, 1, '2014-10-18', 'BOGOTÃ', 'BOGOTÃ', 'BOGOTÃ', 'BOGOTÃ', 6, '1016091056', 'BOGOTÃ', 'BOGOTÃ', 'ATAHUALPA FONTIBON', 3, 'CRA 111 A No. 22 N - 31', 2, 1, 'SALUD TOTAL S.A.  EPS', 1, 1, 1, '', '', '4186163', '3115499612', 1, 'MARIA DEL PILAR ENCISO TRIANA', 'SI', '4186163', '3115499612', 'EMPLEADA', 'TOLEDO PASTELERIA', '', ' ESPITIA PACHECO JOSE PASCUAL ', '', '', '3213829449', 'EMPLEADO', 'CENCOSUD S.A ', '', '', '', '', '', 'JOSE PASCUAL ESPITIA PACHECO', 'PADRE', ''),
(52, 'default.png', 'MATIAS', 'GONZALEZ PIRAZAN', '', '', '', NULL, NULL, NULL, NULL, 1, '2019-03-12 13:23:08', 1, '2019-03-01', 4, NULL, '00230494', 1, 4, 2, 3, 2, 1, 1, '2014-12-28', 'BOGOTÃ', 'BOGOTÃ', 'BOGOTÃ', 'BOGOTÃ', 6, '1020002403', 'BOGOTÃ', 'BOGOTÃ', 'FONTIBON', 3, 'CLL 16 No. 96 C 48', 2, 1, 'SALUD TOTAL S.A.  EPS', 1, 1, 1, '', '', '4679200', '3132629582', 1, 'PIRAZAN FAGUA AURORA', '', '5473587', '3102317355', 'EMPLEADA', 'ALIMENTOS CARNICOS', '', 'GONZALEZ FEO GELBER', '', '', '3132629528', 'EMPLEADO', 'PLANET FLOWER', '', '', '', '', '', 'GELBER GONZALEZ FEO', 'PADRE', ''),
(53, 'default.png', 'JUAN ANDRES ', 'GRANADOS PULIDO', '', '', '', NULL, NULL, NULL, NULL, 1, '2019-03-12 14:26:53', 1, '2019-03-01', 4, NULL, '00253090', 1, 4, 2, 4, 1, 1, 0, '2014-07-13', 'BOGOTÃ', 'BOGOTÃ', 'BOGOTÃ', 'BOGOTÃ', 6, '1020001991', 'BOGOTÃ', 'BOGOTÃ', 'EL CARMEN FONTIBON', 3, 'CRA 103 A No 16 I 26', 2, 1, 'COMPENSAR EPS', 2, 1, 1, '', '', '3092280', '3187597536', 1, 'PULIDO VARGAS GRISSLY', 'SI', '3092280', '3187597536', 'HOGAR', '', '', 'GRANADOS ESPEJO SERGIO GEOVANNI', '', '3092280', '3012010023', 'EMPLEADO', 'A-DVE', '', '', '', '', '', 'SERGIO GEOVANNI GRANADOS ESPEJO', 'PADRE', ''),
(54, 'default.png', 'EMILY MARIANA', 'GUTIERREZ MELO', '', '', '', NULL, NULL, NULL, NULL, 1, '2019-03-12 14:38:04', 1, '2019-03-01', 4, NULL, '00272546', 1, 4, 1, 5, 1, 1, 0, '2014-08-20', 'BOGOTÃ', 'BOGOTÃ', 'BOGOTÃ', 'BOGOTÃ', 6, '1016602612', 'BOGOTÃ', 'BOGOTÃ', 'FONTIBON', 3, 'CLL 23 B No 113 31', 2, 1, 'COMPENSAR EPS', 2, 1, 1, '', '', '4923925', '3219691383', 1, 'MELO TORRES JURI ROCIO', '', '4923925', '3219691383', 'INDEPENDIENTE', 'BELLEZA Y FIGURA', '', 'GUTIERREZ CASTILLO JHERSON FELIPE', '', '', '3197751684', 'INDEPENDIENTE ', '', '', '', '', '', '', 'JHERSON FELIPE GUTIERREZ CASTILLO', 'PADRE', ''),
(55, 'default.png', 'VICTORIA', 'HERNANDEZ GOMEZ', '', '', '', NULL, NULL, NULL, NULL, 1, '2019-03-12 15:03:27', 1, '2019-03-01', 4, NULL, '00283317', 1, 3, 1, 2, 3, 1, 1, '2015-02-22', 'BOGOTÃ', 'BOGOTÃ', 'BOGOTÃ', 'BOGOTÃ', 6, '1020002567', 'BOGOTÃ', 'BOGOTÃ', 'BATAVIA FONTIBON', 3, 'CRA 115 A No 18 30', 2, 1, 'COMPENSAR EPS', 2, 1, 1, '', '', '8038938', '3193377728', 1, 'GOMEZ ADRIANA DEL PILAR', '', '4134527', '3193377728', 'EMPLEADA', 'DIGITEX ZF ', '', 'HERNANDEZ MEDINA CESAR AUGUSTO', '', '4134527', '3193377727', 'EMPLEADO', 'DESPEGAR', '', '', '', '', '', 'CESAR AUGUSTO HERNANDEZ MEDINA', 'PADRE', ''),
(56, 'default.png', 'MATHIAS ANDRES', 'HERNANDEZ SANABRIA', '', '', '', NULL, NULL, NULL, NULL, 1, '2019-03-12 15:19:58', 1, '2019-03-01', 4, NULL, '00295300', 1, 3, 2, 1, 1, 1, 0, '2015-03-24', 'BOGOTÃ', 'BOGOTÃ', 'BOGOTÃ', 'BOGOTÃ', 6, '1016093530', 'BOGOTÃ', 'BOGOTÃ', 'BELEN FONTIBON', 3, 'CLL 18 No 106 56', 2, 1, 'CRUZ BLANCA EPS', 1, 1, 1, '', '', '5494926', '3133557531', 1, 'SANABRIA MONTAÃ‘A LINA MARIA', '', '5494926', '3214542615', 'EMPLEADA', 'CANELE SAS', '4134400', 'HERNANDEZ RICHARD ANDRES', '', '5494926', '3115636949', 'INDEPENDIENTE ', '', '', '', '', '', '', 'LINA SANABRIA MONTAÃ‘A', 'MADRE', ''),
(57, 'default.png', 'VALERIA', 'HERRERA ALVAREZ', '', '', '', NULL, NULL, NULL, NULL, 1, '2019-03-12 15:29:04', 1, '2019-03-01', 4, NULL, '00304886', 1, 4, 1, 4, 1, 1, 0, '2014-01-26', 'BOGOTÃ', 'BOGOTÃ', 'BOGOTÃ', 'BOGOTÃ', 6, '1016091412', 'BOGOTÃ', 'BOGOTÃ', 'CENTENARIO FONTIBON', 3, 'CAR 106 No 16 86 INT 12 APTO 402', 2, 1, 'SALUD TOTAL S.A.  EPS', 2, 1, 1, '', '', '2989148', '3124697488', 1, 'ALVAREZ CELDERON LEIDY JOHANNA', '', '2989148', '3124697488', 'EMPLEADA', 'SODIMAC COLOMBIA', '', 'HERRERA GONZALEZ DANIEL', '', '2989148', '', 'INDEPENDIENTE ', '', '', '', '', '', '', 'DANIEL HERRERA GONZALEZ', 'PADRE', ''),
(58, 'default.png', 'SAMUEL DAVID', 'HURTADO CALDERON', '', '', '', NULL, NULL, NULL, NULL, 1, '2019-03-12 15:39:34', 1, '2019-03-01', 4, NULL, '00315486', 1, 4, 2, 2, 3, 1, 0, '2014-12-07', 'BOGOTÃ', 'BOGOTÃ', 'BOGOTÃ', 'BOGOTÃ', 6, '1027294515', 'BOGOTÃ', 'BOGOTÃ', 'SAN PABLO FONTIBON', 2, 'CLL 18 A No 121 22', 2, 1, 'CRUZ BLANCA EPS', 1, 1, 1, '', '', '7421888', '3208101884', 1, 'CALDERON SANDRA CAROLINA', 'SI', '', '3118644354', 'EMPLEADA', 'CL ALIANCE', '7402256', 'HURTADO VELANDIA DUMAR ALBERTO', '', '', '3208101884', 'EMPLEADO', 'PRODUCTOS ALIMENTICIOS EL GALPON', '', '', '', '', '', 'DUMAR ALBERTO HURTADO VELANDIA', 'PADRE', ''),
(60, 'default.png', 'MELANIE DAHIANA', 'LEON NIETO', '', '', '', NULL, NULL, NULL, NULL, 1, '2019-03-12 15:49:40', 1, '2019-03-01', 4, NULL, '00331688', 1, 4, 1, 4, 3, 1, 0, '2014-02-05', 'BOGOTÃ', 'BOGOTÃ', 'BOGOTÃ', 'BOGOTÃ', 6, '1016083631', 'BOGOTÃ', 'BOGOTÃ', 'CENTRO A FONTIBON', 3, 'CRA 97 No 16 G 07', 2, 1, 'FAMISANAR LTDA EPS', 1, 1, 1, '', '', '4754510', '3203779343', 1, 'NIETO SANDRA PATRICIA', 'SI', '4754510', '3203779343', 'HOGAR', '', '', 'LEON DIAZ URIEL ANTONIO', '', '4754510', '3132622461', 'INDEPENDIENTE ', '', '', '', '', '', '', 'URIEL ANTONIO LEON DIAZ ', 'PADRE', ''),
(61, 'default.png', 'PAULA JULIANA', 'LOZANO RAMOS', '', '', '', NULL, NULL, NULL, NULL, 1, '2019-03-12 16:00:12', 1, '2019-03-01', 4, NULL, '00342515', 1, 3, 1, 4, 3, 1, 1, '2014-12-16', 'BOGOTÃ', 'BOGOTÃ', 'TOLIMA', 'ALPUJARRA', 6, '1109245089', 'BOGOTÃ', 'BOGOTÃ', 'LA FELICIDAD', 4, 'CRA 77 No 19 35 TORRE 9 APTO 801', 2, 1, 'SANITAS S.A. EPS', 2, 1, 1, '', '', '', '3124053989', 1, 'RAMOS MORALES LILIBETH', '', '', '3124053989', 'EMPLEADA', 'PROSPERIDAD SOCIAL', '5960800 EXT 7134', 'LOZANO HERNANDEZ PABLO GUSTAVO', '', '', '3138726217', 'EMPLEADO', 'FUNDACION', '5960800', '', '', '', '', 'PABLO GUSTAVO LOZANO HERNANDEZ', 'PADRE', ''),
(62, 'default.png', 'MARIA JOSE', 'MEDNA ESPINEL', '', '', '', NULL, NULL, NULL, NULL, 1, '2019-03-12 16:10:45', 1, '2019-03-01', 4, NULL, '00360923', 1, 4, 1, 2, 3, 1, 0, '2014-11-26', 'BOGOTÃ', 'BOGOTÃ', 'BOGOTÃ', 'BOGOTÃ', 6, '1016090846', 'BOGOTÃ', 'BOGOTÃ', 'RECODO FONTIBON', 2, 'CLL 14 No 116 70', 2, 1, 'NUEVA E.P.S.', 1, 1, 1, '', '', '', '3123788666', 1, 'ESPINEL SAENZ DIANA MARCELA', '', '', '3123788666', 'EMPLEADA', 'VHM HIDRAULICOS', '', 'MEDINA HUERFANO ALEXIS', '', '', '3202275393', 'EMPLEADO', 'BANCO CAJA SOCIAL', '', '', '', '', '', 'DIANA MARCELA ESPINEL SUAREZ', 'MADRE', ''),
(63, 'default.png', 'LIAM SANTIAGO', 'MERCHAN SANDOVAL', '', '', '', NULL, NULL, NULL, NULL, 1, '2019-03-12 16:19:11', 1, '2019-03-01', 4, NULL, '00373045', 1, 4, 2, 2, 3, 1, 0, '2014-05-14', 'BOGOTÃ', 'BOGOTÃ', 'BOGOTÃ', 'BOGOTÃ', 6, '1220217030', 'BOGOTÃ', 'BOGOTÃ', 'FONTIBON', 3, 'DIG 16 C No 96 G 16', 2, 1, 'FAMISANAR LTDA EPS', 2, 1, 1, '', '', '2987403', '3222409947', 1, 'SANDOVAL AREVALO LINA PAOLA', 'SI', '2987403', '3222409947', 'EMPLEADA', 'COMIDAS RAPIDAS MI GLOTON', '', 'MERCHAN IBAÃ‘ES JEISON ALEJANDRO', '', '2987403', '3125906799', 'EMPLEADO', 'COMIDAS RAPIDAS MI GLOTON', '', '', '', '', '', 'JEISON ALEJANDRO MERCHAN IBAÃ‘ES', 'PADRE', ''),
(64, 'default.png', 'SANTIAGO', 'MONSALVE BELTRAN', '', '', '', NULL, NULL, NULL, NULL, 1, '2019-03-12 16:27:59', 1, '2019-03-01', 4, NULL, '00384506', 1, 4, 2, 1, 1, 1, 0, '2014-07-12', 'BOGOTÃ', 'BOGOTÃ', 'BOGOTÃ', 'BOGOTÃ', 6, '1020001943', 'BOGOTÃ', 'BOGOTÃ', 'COMPENSAR', 3, 'CRA 110 No 20 B 22 PISO 1', 2, 1, 'COMPENSAR EPS', 1, 1, 1, '', '', '4154436', '32036449209', 1, 'BELTRAN TARAZONA VIVIAN ALEXANDRA', 'SI', '4154463', '3203649209', 'EMPLEADA', 'CONSORCIO SALUD COMPENSAR', '4285088', 'MONSALVE LEMUS ROBINSON', '', '', '3203874927', 'EMPLEADO', 'COLEGIO AMERICANO BOGOTA', '', '', '', '', '', 'ROBINSON MONSALVE LEMUS', 'PADRE', ''),
(65, 'default.png', 'SOL SALOME', 'MORENO RUIZ', '', '', '', NULL, NULL, NULL, NULL, 1, '2019-03-12 16:35:37', 1, '2019-03-01', 4, NULL, '00402209', 1, 4, 1, 3, 3, 1, 1, '2014-10-15', 'BOGOTÃ', 'BOGOTÃ', 'BOGOTÃ', 'BOGOTÃ', 6, '1073520501', 'BOGOTÃ', 'BOGOTÃ', 'BATAVIA FONTIBON', 3, 'CRA 115 B No 18 A 81', 2, 1, 'FAMISANAR LTDA EPS', 2, 1, 1, '', '', '4183472', '3214893848', 1, 'RUIZ ACOSTA TATIANA ANDREA', '', '4183472', '3214893848', 'EMPLEADA', 'COLSUBSIDIO', '', 'NO REGISTRA', '', '', '', '', '', '', '', '', '', '', 'TATIANA ANDREA RUIZ ACOSTA', 'MADRE', ''),
(66, 'default.png', 'SALOME', 'NIÃ‘O GARCIA', '', '', '', NULL, NULL, NULL, NULL, 1, '2019-03-12 16:44:31', 1, '2019-03-01', 4, NULL, '00414413', 1, 4, 1, 2, 1, 1, 1, '2014-09-30', 'BOGOTÃ', 'BOGOTÃ', 'BOGOTÃ', 'BOGOTÃ', 6, '1016089120', 'BOGOTÃ', 'BOGOTÃ', 'FONTIBON', 3, 'CLL 16 H  BIS No 112 A 33', 2, 1, 'SANITAS S.A. EPS', 1, 1, 1, '', '', '8058401', '3115465510', 1, 'GARCIA FLOREZ LIZ KHATERINE', 'SI', '8058401', '3115465510', 'EMPLEADA', 'AGENCIA DE ADUANAS SIAP', '', 'NIÃ‘O RODRIGUEZ ALDEMAR', '', '8058401', '3105896637', 'EMPLEADO', '', '', '', '', '', '', 'ALDEMAR NIÃ‘O RODRIGUEZ', 'PADRE', ''),
(67, 'default.png', 'MARTIN', 'PUENTES POVEDA', '', '', '', NULL, NULL, NULL, NULL, 1, '2019-03-12 16:54:16', 1, '2019-03-01', 4, NULL, '0424596', 1, 4, 2, 2, 1, 1, 1, '2014-07-13', 'BOGOTÃ', 'BOGOTÃ', 'BOGOTÃ', 'BOGOTÃ', 6, '1028725169', 'BOGOTÃ', 'BOGOTÃ', '', 0, 'CLL 15 No 119 A 07 TORRE 13 APTO 20', 2, 1, 'COMPENSAR EPS', 1, 1, 1, '', '', '3055368', '3118389348', 1, 'POVEA TABORDA CHEYLA ROSA', '', '3055368', '3002414314', 'EMPLEADA', 'DISRIBUIDORA FARMACEUTICA ROM', '7469810', 'PUENTES RODRIGUEZ JOHN FREDY', '', '3055368', '3118389348', 'EMPLEADO', 'ETICOS SERRANO GOMEZ LTDA', '5873010', '', '', '', '', 'JOHN FREDY PUENTES RDRIGUEZ', 'PADRE', ''),
(68, 'default.png', 'JUAN JOSE', 'RAMIREZ BERNAL', '', '', '', NULL, NULL, NULL, NULL, 1, '2019-03-12 17:03:53', 1, '2019-03-01', 4, NULL, '00435714', 1, 4, 2, 2, 3, 1, 1, '2014-05-23', 'BOGOTÃ', 'BOGOTÃ', 'BOGOTÃ', 'BOGOTÃ', 6, '101686037', 'BOGOTÃ', 'BOGOTÃ', 'BELEN FONTIBON', 3, 'CLL 18 B No 109 65', 2, 1, 'SALUD TOTAL S.A.  EPS', 1, 1, 1, '', '', '6041675', '3142617274', 1, 'BERNAL JIMENEZ LNY JOHANA', '', '6041675', '3142617274', 'EMPLEADA', 'FULLER PINTO', '4235000', 'RAMIREZ OSCAR ORLANDO', '', '6041675', '3507577799', 'INDEPENDIENTE ', '', '', '', '', '', '', 'OSCAR ORLANDO RAMIREZ', 'PADRE', ''),
(69, 'default.png', 'LINDA SALOME', 'RAMIREZ VILLAMIL', '', '', '', NULL, NULL, NULL, NULL, 1, '2019-03-12 17:11:27', 1, '2019-03-01', 4, NULL, '00450609', 1, 4, 1, 2, 3, 1, 1, '2015-03-12', 'BOGOTÃ', 'BOGOTÃ', 'BOGOTÃ', 'BOGOTÃ', 6, '1122935552', 'BOGOTÃ', 'BOGOTÃ', 'FONTIBON', 3, 'CLL 16 J No 112 A 06', 2, 1, 'FAMISANAR LTDA EPS', 2, 1, 1, '', '', '2270563', '3006349987', 1, 'VILLAMIL RUIZ PAULA ANDREA', '', '2270563', '3006349987', 'HOGAR', '', '', 'RAMIREZ MARTINEZ DIEGO FABIAN', '', '2270563', '3144835191', 'EMPLEADO', '', '', '', '', '', '', 'DIEGO FABIAN RAMIREZ MARTINEZ', 'PADRE', ''),
(70, 'default.png', 'SARA', 'RIVAS PERDOMO', '', '', '', NULL, NULL, NULL, NULL, 1, '2019-03-12 17:18:05', 1, '2019-03-01', 4, NULL, '00460812', 1, 4, 1, 1, 3, 1, 1, '2014-07-04', 'BOGOTÃ', 'BOGOTÃ', 'BOGOTÃ', 'BOGOTÃ', 6, '1016087460', 'BOGOTÃ', 'BOGOTÃ', 'FONTIBON', 3, 'CRA 102 No 16 J 54', 2, 1, '', 1, 1, 1, '', '', '2985957', '3124148608', 1, 'PERDOMO BONILLA MARIA PAULA', '', '2985957', '3124148608', 'HOGAR', '', '', 'RIVAS PAYANNE MIGUEL ANGEL', '', '2985957', '3006862289', 'EMPLEADO', 'LEC LEE', '', '', '', '', '', 'MIGUEL ANGEL RIVAS PAYANENE', 'PADRE', ''),
(71, 'default.png', 'NKOL JUANITA', 'RODRIGUZ BEJARANO', '', '', '', NULL, NULL, NULL, NULL, 1, '2019-03-12 17:29:53', 1, '2019-03-01', 4, NULL, '00472170', 1, 4, 1, 3, 3, 1, 1, '2014-07-12', 'BOGOTÃ', 'BOGOTÃ', 'BOGOTÃ', 'BOGOTÃ', 6, '1016086651', 'BOGOTÃ', 'BOGOTÃ', 'FONTIBON', 3, 'CLL 15 No 119 A 07 TORRE 12 APTO 201', 2, 1, 'POLICIA NACIONAL', 2, 1, 1, '', '', '3034732', '3143902900', 1, 'BEJARANO HERNANDEZ JENNY JULIETH', 'SI', '3034732', '3143902900', 'EMPLEADA', 'SOLSTCIO ETAPA 1 Y 2', '4148032', 'RODRIGUZ NIEBLES FREDDY GUILLERMO', '', '3034732', '3105600553', 'INDEPENDIENTE ', 'POLICIA NACIONAL', '', '', '', '', '', 'FREDDY GUILLERMO RODRIGUEZ NIEBLES', 'PADRE', ''),
(73, 'default.png', 'JUAN JOSE', 'RODRIGUEZ ROJAS', '', '', '', NULL, NULL, NULL, NULL, 1, '2019-03-12 17:37:29', 1, '2019-03-01', 4, NULL, '00483515', 1, 4, 2, 3, 1, 1, 1, '2014-06-10', 'BOGOTÃ', 'BOGOTÃ', 'BOGOTÃ', 'BOGOTÃ', 6, '10160864', 'BOGOTÃ', 'BOGOTÃ', 'FONTIBON', 3, 'CLL 18 B No 109 33', 2, 1, 'COLMEDICA', 2, 1, 1, '', '', '', '3204302749', 1, 'ROJAS CASTAÃ‘O LUZ AYDA', '', '', '3114567513', 'EMPLEADA', 'BANCO CAJA SOCIAL', '', 'RODRIGUEZ NARVAEZ JUAN CARLOS', '', '', '3204302749', 'INDEPENDIENTE ', 'TRANSPORTE ESPECIAL', '', '', '', '', '', 'JUAN CARLOS RODRIGUEZ NARVAEZ', 'PADRE', ''),
(74, 'default.png', 'JOSE MANUEL', 'RODRIGUEZ VELASQUEZ', '', '', '', NULL, NULL, NULL, NULL, 1, '2019-03-12 17:45:21', 1, '2019-03-01', 4, NULL, '00494884', 1, 4, 2, 3, 3, 1, 1, '2014-01-01', 'BOGOTÃ', 'BOGOTÃ', 'BOGOTÃ', 'BOGOTÃ', 6, '1016082730', 'BOGOTÃ', 'BOGOTÃ', 'ILA CARMENZA FONTIBON', 0, 'CRA 110 No 16 I BIS 66', 2, 1, '', 2, 1, 1, '', '', '', '3142447195', 1, 'VELASQUEZ MORALES KAREN DAYANA', '', '', '3142447191', 'EMPLEADA', 'HAMBURGUESAS DEL CORRAL', '', 'RODRIGUZ DOTOR JONATHAN ARTURO', '', '', '3128107410', 'EMPLEADO', 'COLCERAMICAS', '', '', '', '', '', 'KAREN DAYANA VELASQUEZ MORALES', 'MADRE', ''),
(75, 'default.png', 'NIKOL GABRIELA', 'RODRIGUEZ MOYA', '', '', '', NULL, NULL, NULL, NULL, 1, '2019-03-12 17:53:56', 1, '2019-03-01', 4, NULL, '00505554', 1, 4, 1, 3, 3, 1, 1, '2014-07-01', 'BOGOTÃ', 'BOGOTÃ', 'BOGOTÃ', 'BOGOTÃ', 6, '1016086844', 'BOGOTÃ', 'BOGOTÃ', 'MORAVIA FONTIBON', 2, 'CRA 112 A No 15 D 03', 2, 1, 'SALUD TOTAL S.A.  EPS', 1, 1, 1, '', '', '4156455', '3194619195', 1, 'MOYA OMBITA PAOLA XIMENA', '', '4156455', '3194619195', 'EMPLEADA', 'SECURTAS AVANCA', '7425301', 'RODRIGUEZ RAMIREZ MAURICIO', '', '', '3132741424', 'INDEPENDIENTE ', '', '', '', '', '', '', 'MAURICIO RODRIGUEZ RAMIREZ', 'PADRE', ''),
(76, 'default.png', 'ANYI SOFIA', 'SUAREZ SAUCEDO', '', '', '', NULL, NULL, NULL, NULL, 1, '2019-03-12 18:02:19', 1, '2019-03-01', 4, NULL, '00521853', 1, 4, 1, 2, 4, 1, 1, '2014-07-07', 'BOGOTÃ', 'BOGOTÃ', 'BOGOTÃ', 'BOGOTÃ', 6, '1028895783', 'BOGOTÃ', 'BOGOTÃ', 'LAGUNA FONTIBON', 3, 'DIG 16 B No 106 65', 2, 1, 'SANITAS S.A. EPS', 1, 1, 1, '', '', '', '', 1, 'SAUCEDO ZULETA NELYS PATRICIA', '', '', '3112352760', 'EMPLEADA', 'LAVASECO SPRING', '', 'SUAREZ ROJAS OSCAR ERBEY', '', '', '3134096483', 'EMPLEADO', 'POLILAMINAS', '6182263', '', '', '', '', 'OSCAR ERBEY SUAREZ ROJAS', 'PADRE', ''),
(77, 'default.png', 'SALOME', 'TIMON ANGEL', '', '', '', NULL, NULL, NULL, NULL, 1, '2019-03-12 18:10:20', 1, '2019-03-01', 4, NULL, '00531964', 1, 3, 1, 3, 3, 1, 1, '2015-04-09', 'BOGOTÃ', 'BOGOTÃ', 'BOGOTÃ', 'BOGOTÃ', 6, '1020002804', 'BOGOTÃ', 'BOGOTÃ', 'ZONA FRANCA FONTIBON', 2, 'DIG 115 A No 99 14', 2, 1, 'SANITAS S.A. EPS', 2, 1, 1, '', '', '8039609', '3017452081', 1, 'ANGEL LEMUS ANDREA CAROLINA', '', '8039609', '3214185449', 'EMPLEADA', '', '', 'TIMON SANCHEZ WILSON ORLANDO', '', '039609', '3017452081', 'INDEPENDIENTE ', '', '', '', '', '', '', 'WILSON ORLANDO TIMON SANCHEZ', 'PADRE', ''),
(78, 'default.png', 'JUAN JOSE', 'VELA GARCIA', '', '', '', NULL, NULL, NULL, NULL, 1, '2019-03-12 18:17:37', 1, '2019-03-01', 4, NULL, '00543332', 1, 4, 2, 2, 3, 1, 1, '2015-01-06', 'BOGOTÃ', 'BOGOTÃ', 'BOGOTÃ', 'BOGOTÃ', 6, '1188221735', 'BOGOTÃ', 'BOGOTÃ', 'FONTIBON', 3, 'CL 35L 22F No 103 B', 2, 1, 'SANITAS S.A. EPS', 1, 1, 1, '', '', '8047061', '3123770854', 1, 'GARCIA HERNANDEZ LEIDY LORENA', 'SI', '8047061', '3212041475', 'EMPLEADA', 'CRUZ BLANCA', '', 'VELA BOHORQUEZ JOSE MANUEL', '', '7214083', '3182219367', 'EMPLEADO', 'SALUCOOP EPS', '', '', '', '', '', 'JOSE MANUEORQUEZL VELA BOH', 'PADRE', ''),
(79, 'default.png', 'ISABELLA MARGARITA', 'ZAPATA HELD', '', '', '', NULL, NULL, NULL, NULL, 1, '2019-03-12 18:25:51', 1, '2019-03-01', 4, NULL, '00555301', 1, 4, 1, 3, 1, 1, 1, '2014-11-19', 'BOGOTÃ', 'BOGOTÃ', 'ATLANTICO', 'BARRANQUILLA', 6, '1048220287', 'BOGOTÃ', 'BOGOTÃ', 'RECODO FONTIBON', 2, 'CRA 123 No 14 B 08 TORRE 4 APTO 901', 2, 1, '', 1, 1, 1, '', '', '4625769', '3134224182', 1, 'HELD GOMEZ MARGARITA LUZ', 'SI', '4625769', '3134224182', 'INDEPENDIENTE', '', '', 'ZAPATA MONTOYA RAFAEL EDUARDO', '', '4625769', '3003897088', 'INDEPENDIENTE ', '', '', '', '', '', '', 'RAFAEL EDUARDO ZAPATA MONTOYA', 'PADRE', ''),
(80, 'default.png', 'SAMUEL ESTEBAN', 'AGUDELO GARZÃ“N', '', '', '', NULL, NULL, NULL, NULL, 1, '2019-03-13 13:50:45', 1, '2019-03-01', 5, NULL, '', 1, 0, 1, 1, 1, 1, 0, '0000-00-00', '', '', '', '', 6, '1020001404', '', '', '', 0, '', 1, 1, '', 1, 1, 1, '', '', '', '3124259938-3115330135', 1, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(81, 'default.png', 'MARÃA JOSÃ‰', 'AMAYA BUITRAGO', '', '', '', NULL, NULL, NULL, NULL, 1, '2019-03-13 13:52:36', 1, '2019-03-01', 5, NULL, '', 1, 0, 1, 1, 1, 1, 0, '0000-00-00', '', '', '', '', 6, '1020001174', '', '', '', 0, '', 1, 1, '', 1, 1, 1, '', '', '', '3102615919-3115905461', 1, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(83, 'default.png', 'ASHLEY', 'BERNAL GUEVARA', '', '', '', NULL, NULL, NULL, NULL, 1, '2019-03-13 13:55:01', 1, '2019-03-01', 5, NULL, '', 1, 0, 1, 1, 1, 1, 0, '0000-00-00', '', '', '', '', 6, '1025072871', '', '', '', 0, '', 1, 1, '', 1, 1, 1, '', '', '', '3502684540-3128125227', 1, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(84, 'default.png', 'JUAN JOSE', 'CÃCERES AHUANARI', '', '', '', NULL, NULL, NULL, NULL, 1, '2019-03-13 14:02:45', 1, '2019-03-01', 5, NULL, '', 1, 0, 1, 1, 1, 1, 0, '0000-00-00', '', '', '', '', 6, '1020001300', '', '', '', 0, '', 1, 1, '', 1, 1, 1, '', '', '', '3172857199-3168348118', 1, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(86, 'default.png', 'MARÃA ALEJANDRA', 'CRISTANCHO MOLINA', '', '', '', NULL, NULL, NULL, NULL, 1, '2019-03-13 14:10:52', 1, '2019-03-01', 5, NULL, '', 1, 0, 1, 1, 1, 1, 0, '0000-00-00', '', '', '', '', 6, '1016079653', '', '', '', 0, '', 1, 1, '', 1, 1, 1, '', '', '7568635', '3102435500', 1, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(87, 'default.png', 'VALERIA', 'CARVAJAL GÃ“MEZ', '', '', '', NULL, NULL, NULL, NULL, 1, '2019-03-13 14:12:18', 1, '2019-03-01', 5, NULL, '', 1, 0, 1, 1, 1, 1, 0, '0000-00-00', '', '', '', '', 6, '1034706609', '', '', '', 0, '', 1, 1, '', 1, 1, 1, '', '', '3019920', '3204292621', 1, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(88, 'default.png', 'MATHIAS CAMILO', 'DIAZ DE LA ROSA', '', '', '', NULL, NULL, NULL, NULL, 1, '2019-03-13 14:13:31', 1, '2019-03-01', 5, NULL, '', 1, 0, 1, 1, 1, 1, 0, '0000-00-00', '', '', '', '', 6, '1016082151', '', '', '', 0, '', 1, 1, '', 1, 1, 1, '', '', '', '3178169539-3103102822', 1, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(89, 'default.png', 'MARIA VALENTINA', 'DULCEY LADINO', '', '', '', NULL, NULL, NULL, NULL, 1, '2019-03-13 14:14:56', 1, '2019-03-01', 5, NULL, '', 1, 0, 1, 1, 1, 1, 0, '0000-00-00', '', '', '', '', 6, '1016076997', '', '', '', 0, '', 1, 1, '', 1, 1, 1, '', '', '4749751', '3184561224', 1, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(90, 'default.png', 'SALOME', 'GALVIS PEÃ‘A', '', '', '', NULL, NULL, NULL, NULL, 1, '2019-03-13 14:16:45', 1, '2019-03-01', 5, NULL, '', 1, 0, 1, 1, 1, 1, 0, '0000-00-00', '', '', '', '', 6, '1028876286', '', '', '', 0, '', 1, 1, '', 1, 1, 1, '', '', '6012525', '3204701983', 1, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(91, 'default.png', 'NICOLÃS', 'MORALES BOLÃVAR', '', '', '', NULL, NULL, NULL, NULL, 1, '2019-03-13 14:18:04', 1, '2019-03-01', 5, NULL, '', 1, 0, 1, 1, 1, 1, 0, '0000-00-00', '', '', '', '', 6, '1011225738', '', '', '', 0, '', 1, 1, '', 1, 1, 1, '', '', '4189660', '3105806190', 1, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(92, 'default.png', 'DANIEL MATIAS', 'MUNEVAR CORREDOR', '', '', '', NULL, NULL, NULL, NULL, 1, '2019-03-13 14:19:29', 1, '2019-03-01', 5, NULL, '', 1, 0, 1, 1, 1, 1, 0, '0000-00-00', '', '', '', '', 6, ' 1011224638 ', '', '', '', 0, '', 1, 1, '', 1, 1, 1, '', '', '', '3212332305-3105700471', 1, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(93, 'default.png', 'DILAN SANTIAGO', 'NARVÃEZ SARMIENTO', '', '', '', NULL, NULL, NULL, NULL, 1, '2019-03-13 14:26:34', 1, '2019-03-01', 5, NULL, '', 1, 0, 1, 1, 1, 1, 0, '0000-00-00', '', '', '', '', 6, '1016081002', '', '', '', 0, '', 1, 1, '', 1, 1, 1, '', '', '4815388', '3166581337', 1, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(94, 'default.png', 'MADDOX	 PHARRELL', 'NIETO	BARRERA', '', '', '', NULL, NULL, NULL, NULL, 1, '2019-03-13 14:28:11', 1, '2019-03-01', 5, NULL, '', 1, 0, 1, 1, 1, 1, 0, '0000-00-00', '', '', '', '', 6, '1020001574', '', '', '', 0, '', 1, 1, '', 1, 1, 1, '', '', '', '3194215802-3108033893', 1, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(95, 'default.png', 'MATIAS', 'NOVOA  VASQUEZ', '', '', '', NULL, NULL, NULL, NULL, 1, '2019-03-13 14:29:18', 1, '2019-03-01', 5, NULL, '', 1, 0, 1, 1, 1, 1, 0, '0000-00-00', '', '', '', '', 6, '1122529659', '', '', '', 0, '', 1, 1, '', 1, 1, 1, '', '', '', '3203207442-3102358791', 1, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(97, 'default.png', 'LAURA SOFIA', 'PARDO CALVO', '', '', '', NULL, NULL, NULL, NULL, 1, '2019-03-13 14:30:37', 1, '2019-03-01', 5, NULL, '', 1, 0, 1, 1, 1, 1, 0, '0000-00-00', '', '', '', '', 6, '1016078949', '', '', '', 0, '', 1, 1, '', 1, 1, 1, '', '', '', '3138670696-3203369807', 1, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(98, 'default.png', 'MARTIN', 'PÃ‰REZ MUÃ‘OZ', '', '', '', NULL, NULL, NULL, NULL, 1, '2019-03-13 14:34:21', 1, '2019-03-01', 5, NULL, '', 1, 0, 1, 1, 1, 1, 0, '0000-00-00', '', '', '', '', 6, '1011228605', '', '', '', 0, '', 1, 1, '', 1, 1, 1, '', '', '5413024', '3216399441', 1, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(99, 'default.png', 'SAMUEL', 'PRIETO NIETO', '', '', '', NULL, NULL, NULL, NULL, 1, '2019-03-13 14:35:31', 1, '2019-03-01', 5, NULL, '', 1, 0, 1, 1, 1, 1, 0, '0000-00-00', '', '', '', '', 6, '1016600944', '', '', '', 0, '', 1, 1, '', 1, 1, 1, '', '', '', '3223017492-3177634590', 1, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(100, 'default.png', 'MANUEL ARTURO', 'QUEVEDO DIAZ', '', '', '', NULL, NULL, NULL, NULL, 1, '2019-03-13 14:36:39', 1, '2019-03-01', 5, NULL, '', 1, 0, 1, 1, 1, 1, 0, '0000-00-00', '', '', '', '', 6, '1147488742', '', '', '', 0, '', 1, 1, '', 1, 1, 1, '', '', '', '3228086509-3507031532', 1, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(101, 'default.png', 'SAMUEL', 'RIVERA CARDONA', '', '', '', NULL, NULL, NULL, NULL, 1, '2019-03-13 14:37:33', 1, '2019-03-01', 5, NULL, '', 1, 0, 1, 1, 1, 1, 0, '0000-00-00', '', '', '', '', 6, '1020230589', '', '', '', 0, '', 1, 1, '', 1, 1, 1, '', '', '', '', 1, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(102, 'default.png', 'KAREN DANIELA', 'ROBLEDO SANABRIA', '', '', '', NULL, NULL, NULL, NULL, 1, '2019-03-13 14:41:18', 1, '2019-03-01', 5, NULL, '', 1, 0, 1, 1, 1, 1, 0, '0000-00-00', '', '', '', '', 6, '1220216519', '', '', '', 0, '', 1, 1, '', 1, 1, 1, '', '', '4187187', '3104783914', 1, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(103, 'default.png', 'VALERIA CAMILA', 'ROBLES GUERRA', '', '', '', NULL, NULL, NULL, NULL, 1, '2019-03-13 14:42:21', 1, '2019-03-01', 5, NULL, '', 1, 0, 1, 1, 1, 1, 0, '0000-00-00', '', '', '', '', 6, '1016076970', '', '', '', 0, '', 1, 1, '', 1, 1, 1, '', '', '', '3205344219', 1, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(104, 'default.png', 'LAURA CAMILA', 'RODRIGUEZ	BERNAL', '', '', '', NULL, NULL, NULL, NULL, 1, '2019-03-13 14:43:22', 1, '2019-03-01', 5, NULL, '', 1, 0, 1, 1, 1, 1, 0, '0000-00-00', '', '', '', '', 6, '1023402565', '', '', '', 0, '', 1, 1, '', 1, 1, 1, '', '', '', '3133144801-3115655840', 1, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(105, 'default.png', 'DANNA SOFIA', 'RODRÃGUEZ	JARAVA', '', '', '', NULL, NULL, NULL, NULL, 1, '2019-03-13 14:45:03', 1, '2019-03-01', 5, NULL, '', 1, 0, 1, 1, 1, 1, 0, '0000-00-00', '', '', '', '', 6, '1016081007', '', '', '', 0, '', 1, 1, '', 1, 1, 1, '', '', '2442889', '3209659901', 1, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(106, 'default.png', 'IAN GABRIEL', 'SAAVEDRA GONZÃLEZ', '', '', '', NULL, NULL, NULL, NULL, 1, '2019-03-13 20:10:26', 1, '2019-03-01', 5, NULL, '', 1, 0, 2, 1, 1, 1, 0, '0000-00-00', '', '', '', '', 6, '1025071795', '', '', '', 0, '', 1, 1, '', 1, 1, 1, '', '', '', '', 1, '', '', '8930804', '3107606302', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(107, 'default.png', 'EDNA	ISABELLA', 'SALCEDO	MOLANO', '', '', '', NULL, NULL, NULL, NULL, 1, '2019-03-13 20:11:37', 1, '2019-03-01', 5, NULL, '', 1, 0, 1, 1, 1, 1, 0, '0000-00-00', '', '', '', '', 6, '1027292753', '', '', '', 0, '', 1, 1, '', 1, 1, 1, '', '', '4189680', '3196159932', 1, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(108, 'default.png', 'ALISON VALERIA', 'VALENCIA OSORIO', '', '', '', NULL, NULL, NULL, NULL, 1, '2019-03-13 20:12:39', 1, '2019-03-01', 5, NULL, '', 1, 0, 1, 1, 1, 1, 0, '0000-00-00', '', '', '', '', 6, '1016079871', '', '', '', 0, '', 1, 1, '', 1, 1, 1, '', '', '', '3144787063', 1, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(109, 'default.png', 'DAVID JERONIMO', 'VILLAMIL	TORRES', '', '', '', NULL, NULL, NULL, NULL, 1, '2019-03-13 20:14:35', 1, '2019-03-01', 5, NULL, '', 1, 0, 2, 1, 1, 1, 0, '0000-00-00', '', '', '', '', 6, '1022403792', '', '', '', 0, '', 1, 1, '', 1, 1, 1, '', '', '4550000', '3163975595', 1, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(110, 'default.png', 'SARA	SOFIA', 'ALARCÃ“N USAQUÃ‰N', '', '', '', NULL, NULL, NULL, NULL, 1, '2019-03-13 20:16:26', 1, '2019-03-01', 5, NULL, '', 1, 0, 1, 1, 1, 1, 0, '0000-00-00', '', '', '', '', 6, '1031425373', '', '', '', 0, '', 1, 1, '', 1, 1, 1, '', '', '', '3017889896-3112462086', 1, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(111, 'default.png', 'MARIA ISABELLA', 'BALDION	GIL', '', '', '', NULL, NULL, NULL, NULL, 1, '2019-03-13 20:18:34', 1, '2019-03-01', 5, NULL, '', 1, 0, 1, 1, 1, 1, 0, '0000-00-00', '', '', '', '', 6, '1016075868', '', '', '', 0, '', 1, 1, '', 1, 1, 1, '', '', '', '3138726733-3124936831', 1, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(112, 'default.png', 'KEILY	ELIANA', 'BEDOYA	CERÃ“N', '', '', '', NULL, NULL, NULL, NULL, 1, '2019-03-13 20:19:39', 1, '2019-03-01', 5, NULL, '', 1, 0, 1, 1, 1, 1, 0, '0000-00-00', '', '', '', '', 6, '1016079842', '', '', '', 0, '', 1, 1, '', 1, 1, 1, '', '', '', '3144739714-3142612295', 1, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(113, 'default.png', 'LINA SALOME', 'BULLA RIVERA', '', '', '', NULL, NULL, NULL, NULL, 1, '2019-03-13 20:21:13', 1, '2019-03-01', 5, NULL, '', 1, 0, 1, 1, 1, 1, 0, '0000-00-00', '', '', '', '', 6, '1020001705', '', '', '', 0, '', 1, 1, '', 1, 1, 1, '', '', '', '3122010988', 1, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(114, 'default.png', 'JULIANA', 'CADENA	VARGAS', '', '', '', NULL, NULL, NULL, NULL, 1, '2019-03-13 20:22:20', 1, '2019-03-01', 5, NULL, '', 1, 0, 1, 1, 1, 1, 0, '0000-00-00', '', '', '', '', 6, '1014996315', '', '', '', 0, '', 1, 1, '', 1, 1, 1, '', '', '', '3008032767', 1, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(115, 'default.png', 'DANIEL FELIPE', 'CALDERÃ“N AGUILAR', '', '', '', NULL, NULL, NULL, NULL, 1, '2019-03-13 20:23:47', 1, '2019-03-01', 5, NULL, '', 1, 0, 1, 1, 1, 1, 0, '0000-00-00', '', '', '', '', 6, '1016078766', '', '', '', 0, '', 1, 1, '', 1, 1, 1, '', '', '', '3132161147-311595312', 1, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(116, 'default.png', 'NICOLE SOFIA', 'CALDERON LOPEZ', '', '', '', NULL, NULL, NULL, NULL, 1, '2019-03-13 20:25:00', 1, '2019-03-01', 5, NULL, '', 1, 0, 1, 1, 1, 1, 0, '0000-00-00', '', '', '', '', 6, '1011220936', '', '', '', 0, '', 1, 1, '', 1, 1, 1, '', '', '', '3208616302-3112963485', 1, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(117, 'default.png', 'JUAN	DIEGO', 'CASAS PARDO', '', '', '', NULL, NULL, NULL, NULL, 1, '2019-03-13 20:26:14', 1, '2019-03-01', 5, NULL, '', 1, 0, 1, 1, 1, 1, 0, '0000-00-00', '', '', '', '', 6, '1029151311', '', '', '', 0, '', 1, 1, '', 1, 1, 1, '', '', '', '3202639708-3118984657', 1, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(118, 'default.png', 'MARTIN', 'CASTRO CABRERA', '', '', '', NULL, NULL, NULL, NULL, 1, '2019-03-13 20:27:48', 1, '2019-03-01', 5, NULL, '', 1, 0, 1, 1, 1, 1, 0, '0000-00-00', '', '', '', '', 6, '1220217313', '', '', '', 0, '', 1, 1, '', 1, 1, 1, '', '', '', '3227246791-3012114273', 1, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(119, 'default.png', 'THANIA	ISABELLA', 'CRISTANCHO NÃšÃ‘EZ', '', '', '', NULL, NULL, NULL, NULL, 1, '2019-03-13 20:30:03', 1, '2019-03-01', 5, NULL, '', 1, 0, 1, 1, 1, 1, 0, '0000-00-00', '', '', '', '', 6, '1016078899', '', '', '', 0, '', 1, 1, '', 1, 1, 1, '', '', '330000 EXT 867841', '3108104835', 1, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(120, 'default.png', 'ANNIE SALOMÃ‰', 'FUENTES	JEREZ', '', '', '', NULL, NULL, NULL, NULL, 1, '2019-03-13 20:31:02', 1, '2019-03-01', 5, NULL, '', 1, 0, 1, 1, 1, 1, 0, '0000-00-00', '', '', '', '', 6, '1016079254', '', '', '', 0, '', 1, 1, '', 1, 1, 1, '', '', '', '3195704113-3053445772', 1, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(121, 'default.png', 'DOMINIC	ANDREY', 'GONZALEZ DIAZ', '', '', '', NULL, NULL, NULL, NULL, 1, '2019-03-13 20:32:11', 1, '2019-03-01', 5, NULL, '', 1, 0, 1, 1, 1, 1, 0, '0000-00-00', '', '', '', '', 6, '1016083144', '', '', '', 0, '', 1, 1, '', 1, 1, 1, '', '', '', '3103868873', 1, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(122, 'default.png', 'JUAN	CAMILO', 'JARAMILLO	FLOREZ', '', '', '', NULL, NULL, NULL, NULL, 1, '2019-03-13 20:33:06', 1, '2019-03-01', 5, NULL, '', 1, 0, 1, 1, 1, 1, 0, '0000-00-00', '', '', '', '', 6, '1011230459', '', '', '', 0, '', 1, 1, '', 1, 1, 1, '', '', '', '3173773002-3142396351', 1, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(123, 'default.png', 'MATHIAS', 'LOPEZ ARENAS', '', '', '', NULL, NULL, NULL, NULL, 1, '2019-03-13 20:34:12', 1, '2019-03-01', 5, NULL, '', 1, 0, 1, 1, 1, 1, 0, '0000-00-00', '', '', '', '', 6, '1016077986', '', '', '', 0, '', 1, 1, '', 1, 1, 1, '', '', '', '3227000328-3058808692', 1, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(124, 'default.png', 'MARIA JOSE', 'LOPEZ AVILA', '', '', '', NULL, NULL, NULL, NULL, 1, '2019-03-13 20:35:16', 1, '2019-03-01', 5, NULL, '', 1, 0, 1, 1, 1, 1, 0, '0000-00-00', '', '', '', '', 6, '1016960951', '', '', '', 0, '', 1, 1, '', 1, 1, 1, '', '', '', '3123622184-3102408034', 1, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `alumn` (`id`, `image`, `name`, `lastname`, `email`, `address`, `phone`, `c1_fullname`, `c1_address`, `c1_phone`, `c1_note`, `is_active`, `created_at`, `user_id`, `fecha_mensualidad`, `idpaquete`, `iva`, `codigo`, `matricula`, `anos`, `sexo`, `lugar_hermanos`, `factor_sangre`, `rh`, `marcar`, `fecha_nacimiento`, `departamento`, `municipio`, `extendida_en_departamento`, `extendida_en_municipio`, `clase_identificacion`, `numero_identificacion`, `depto_residencia`, `localizacion_municipio`, `barrio`, `estrato`, `direccion`, `sisben`, `nivel`, `otras_eps`, `situacion_ano_anterior`, `procedencia`, `reincidente`, `historial`, `padres`, `telefono_fijo`, `celular`, `retiro_alumno`, `madre_nombre`, `madre_acudiente`, `madre_telefono`, `madre_celular`, `madre_ocupacion`, `madre_empresa`, `madre_tel_empresa`, `padre_nombre`, `padre_acudiente`, `padre_telefono`, `padre_celular`, `padre_ocupacion`, `padre_empresa`, `padre_tel_empresa`, `acudiente_nombre`, `acudiente_telefono`, `acudiente_tel_empresa`, `acudiente_parentesco`, `responsable_costos_nombre`, `responsable_costos_parentesco`, `observaciones`) VALUES
(125, 'default.png', 'MIGUEL	ANGEL', 'LOPEZ NAVARRO', '', '', '', NULL, NULL, NULL, NULL, 1, '2019-03-13 20:36:07', 1, '2019-03-01', 5, NULL, '', 1, 0, 1, 1, 1, 1, 0, '0000-00-00', '', '', '', '', 6, '1145226767', '', '', '', 0, '', 1, 1, '', 1, 1, 1, '', '', '', '3184413434-3174200585', 1, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(126, 'default.png', 'ANNIE ISABELLA', 'MESA	CASTAÃ‘EDA', '', '', '', NULL, NULL, NULL, NULL, 1, '2019-03-13 20:37:16', 1, '2019-03-01', 5, NULL, '', 1, 0, 1, 1, 1, 1, 0, '0000-00-00', '', '', '', '', 6, '1016081263', '', '', '', 0, '', 1, 1, '', 1, 1, 1, '', '', '', '3227224778-3102088472', 1, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(127, 'default.png', 'JUANITA', 'MUÃ‘OZ LÃ“PEZ', '', '', '', NULL, NULL, NULL, NULL, 1, '2019-03-13 20:38:12', 1, '2019-03-01', 5, NULL, '', 1, 0, 1, 1, 1, 1, 0, '0000-00-00', '', '', '', '', 6, '1222204974', '', '', '', 0, '', 1, 1, '', 1, 1, 1, '', '', '5925528', '3203355728', 1, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(128, 'default.png', 'MIGUEL ANGEL', 'MUÃ‘OZ VERGARA', '', '', '', NULL, NULL, NULL, NULL, 1, '2019-03-13 20:39:16', 1, '2019-03-01', 5, NULL, '', 1, 0, 1, 1, 1, 1, 0, '0000-00-00', '', '', '', '', 6, '1016601436', '', '', '', 0, '', 1, 1, '', 1, 1, 1, '', '', '', '3007186928', 1, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(129, 'default.png', 'SALOME', 'NIETO	FLOREZ', '', '', '', NULL, NULL, NULL, NULL, 1, '2019-03-13 20:40:18', 1, '2019-03-01', 5, NULL, '', 1, 0, 1, 1, 1, 1, 0, '0000-00-00', '', '', '', '', 6, '1011226568', '', '', '', 0, '', 1, 1, '', 1, 1, 1, '', '', '', '3144541006-3107903335', 1, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(130, 'default.png', 'SANTIAGO', 'PALACIOS CASAS', '', '', '', NULL, NULL, NULL, NULL, 1, '2019-03-13 20:41:14', 1, '2019-03-01', 5, NULL, '', 1, 0, 1, 1, 1, 1, 0, '0000-00-00', '', '', '', '', 6, '1019766966', '', '', '', 0, '', 1, 1, '', 1, 1, 1, '', '', '', '3123503149-3209144636', 1, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(131, 'default.png', 'WENDY ALEJANDRA', 'RAMÃREZ	ROJAS', '', '', '', NULL, NULL, NULL, NULL, 1, '2019-03-13 20:44:39', 1, '2019-03-01', 5, NULL, '', 1, 0, 1, 1, 1, 1, 0, '0000-00-00', '', '', '', '', 6, '1106897480', '', '', '', 0, '', 1, 1, '', 1, 1, 1, '', '', '', '3023963448', 1, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(132, 'default.png', 'LAURA ALEJANDRA', 'RODRÃGUEZ	AGUIRRE', '', '', '', NULL, NULL, NULL, NULL, 1, '2019-03-13 20:46:28', 1, '2019-03-01', 5, NULL, '', 1, 0, 1, 1, 1, 1, 0, '0000-00-00', '', '', '', '', 6, '1014884634', '', '', '', 0, '', 1, 1, '', 1, 1, 1, '', '', '', '3223083216-3234822426', 1, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(133, 'default.png', 'JUAN	DAVID', 'SALINAS	BECERRA', '', '', '', NULL, NULL, NULL, NULL, 1, '2019-03-13 20:47:20', 1, '2019-03-01', 5, NULL, '', 1, 0, 1, 1, 1, 1, 0, '0000-00-00', '', '', '', '', 6, '1016072679', '', '', '', 0, '', 1, 1, '', 1, 1, 1, '', '', '', '3203648793-3118352832', 1, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(134, 'default.png', 'DYLAN DANIEL', 'SÃNCHEZ BARRAGÃN', '', '', '', NULL, NULL, NULL, NULL, 1, '2019-03-13 20:48:22', 1, '2019-03-01', 5, NULL, '', 1, 0, 1, 1, 1, 1, 0, '0000-00-00', '', '', '', '', 6, '1016082123', '', '', '', 0, '', 1, 1, '', 1, 1, 1, '', '', '5482517', '3132500352', 1, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(135, 'default.png', 'JUAN CAMILO', 'VARGAS VALERO', '', '', '', NULL, NULL, NULL, NULL, 1, '2019-03-13 20:53:32', 1, '2019-03-01', 5, NULL, '', 1, 0, 1, 1, 1, 1, 0, '0000-00-00', '', '', '', '', 6, '1020001671', '', '', '', 0, '', 1, 1, '', 1, 1, 1, '', '', '', '3203139740-3142882290', 1, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(136, 'default.png', 'JUAN DIEGO', 'VILLAMIL	ANZOLA', '', '', '', NULL, NULL, NULL, NULL, 1, '2019-03-13 20:55:22', 1, '2019-03-01', 5, NULL, '', 1, 0, 1, 1, 1, 1, 0, '0000-00-00', '', '', '', '', 6, '1027291933', '', '', '', 0, '', 1, 1, '', 1, 1, 1, '', '', '', '3104778948-3213140904', 1, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(137, 'default.png', 'LUCIANA', 'ZAMORA	ROJAS', '', '', '', NULL, NULL, NULL, NULL, 1, '2019-03-13 20:56:40', 1, '2019-03-01', 5, NULL, '', 1, 0, 1, 1, 1, 1, 0, '0000-00-00', '', '', '', '', 6, '1016085784', '', '', '', 0, '', 1, 1, '', 1, 1, 1, '', '', '', '3204962754-3124504011', 1, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(138, 'default.png', 'SAMANTHA VICTORIA', 'GODOY  SERNA', '', '', '', NULL, NULL, NULL, NULL, 1, '2019-03-13 20:57:43', 1, '2019-03-01', 5, NULL, '', 1, 0, 1, 1, 1, 1, 0, '0000-00-00', '', '', '', '', 6, '1028724638', '', '', '', 0, '', 1, 1, '', 1, 1, 1, '', '', '5434894', '3142196247-312707095', 1, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(139, 'default.png', 'OWUEN CAMILO', 'ROJAS BORRAY', '', '', '', NULL, NULL, NULL, NULL, 1, '2019-03-13 21:18:34', 1, '2019-03-01', 5, NULL, '', 1, 0, 1, 1, 1, 1, 0, '0000-00-00', '', '', '', '', 6, '1025072094', '', '', '', 0, '', 1, 1, '', 1, 1, 1, '', '', '', '3143989849-3134973969', 1, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(140, 'default.png', 'DANNA SOFIA', 'ALFONSO RAMOS', '', '', '', NULL, NULL, NULL, NULL, 1, '2019-03-13 21:30:15', 1, '2019-03-01', 6, NULL, '', 1, 0, 1, 1, 1, 1, 0, '0000-00-00', '', '', '', '', 6, '1020001084', '', '', '', 0, '', 1, 1, '', 1, 1, 1, '', '', '', '3212222539-3173693424', 1, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(141, 'default.png', 'MARIA CAMILA', 'ANGARITA BECERRA', '', '', '', NULL, NULL, NULL, NULL, 1, '2019-03-13 21:31:51', 1, '2019-03-01', 6, NULL, '', 1, 0, 1, 1, 1, 1, 0, '0000-00-00', '', '', '', '', 6, '1016075139', '', '', '', 0, '', 1, 1, '', 1, 1, 1, '', '', '', '3167610896', 1, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(142, 'default.png', 'AARON MATEO', 'ANGULO	SALAMANCA', '', '', '', NULL, NULL, NULL, NULL, 1, '2019-03-13 21:32:57', 1, '2019-03-01', 6, NULL, '', 1, 0, 1, 1, 1, 1, 0, '0000-00-00', '', '', '', '', 6, '1025552152', '', '', '', 0, '', 1, 1, '', 1, 1, 1, '', '', '', '5378503-3175396413', 1, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(143, 'default.png', 'HALLY	 SOFIA', 'CASTIBLANCO	SONZA', '', '', '', NULL, NULL, NULL, NULL, 1, '2019-03-13 21:34:42', 1, '2019-03-01', 6, NULL, '', 1, 0, 1, 1, 1, 1, 0, '0000-00-00', '', '', '', '', 6, '1016066988', '', '', '', 0, '', 1, 1, '', 1, 1, 1, '', '', '', '3008787127-320413578', 1, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(144, 'default.png', 'GABRIEL	FELIPE', 'GONZALEZ	FLOREZ', '', '', '', NULL, NULL, NULL, NULL, 1, '2019-03-13 21:35:43', 1, '2019-03-01', 6, NULL, '', 1, 0, 1, 1, 1, 1, 0, '0000-00-00', '', '', '', '', 6, '1072749449', '', '', '', 0, '', 1, 1, '', 1, 1, 1, '', '', '', '3194786661', 1, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(145, 'default.png', 'SARA	DANIELA', 'FONSECA MUÃ‘OZ', '', '', '', NULL, NULL, NULL, NULL, 1, '2019-03-13 21:53:39', 1, '2019-03-01', 6, NULL, '', 1, 0, 1, 1, 1, 1, 0, '0000-00-00', '', '', '', '', 6, '1011220098', '', '', '', 0, '', 1, 1, '', 1, 1, 1, '', '', '4722005 EXT 1870', '3154298533', 1, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(146, 'default.png', 'JUAN	IGNACIO', 'GOMEZ CASTILLO', '', '', '', NULL, NULL, NULL, NULL, 1, '2019-03-13 21:55:35', 1, '2019-03-01', 6, NULL, '', 1, 0, 1, 1, 1, 1, 0, '0000-00-00', '', '', '', '', 6, '1028723412', '', '', '', 0, '', 1, 1, '', 1, 1, 1, '', '', '5462414', '3153546930', 1, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(147, 'default.png', 'LAURA CAMILA', 'GOMEZ RINCON', '', '', '', NULL, NULL, NULL, NULL, 1, '2019-03-13 21:56:44', 1, '2019-03-01', 6, NULL, '', 1, 0, 1, 1, 1, 1, 0, '0000-00-00', '', '', '', '', 6, '1020000706', '', '', '', 0, '', 1, 1, '', 1, 1, 1, '', '', '', '3144925827-3135218060', 1, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(148, 'default.png', 'ANDREY	CAMILO', 'GUERRERO	BUSTOS', '', '', '', NULL, NULL, NULL, NULL, 1, '2019-03-13 21:58:17', 1, '2019-03-01', 6, NULL, '', 1, 0, 1, 1, 1, 1, 0, '0000-00-00', '', '', '', '', 6, '1016074545', '', '', '', 0, '', 1, 1, '', 1, 1, 1, '', '', '', '3142358206-3124898415', 1, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(149, 'default.png', 'MARÃA JOSÃ‰', 'GUTIÃ‰RREZ	PAYARES', '', '', '', NULL, NULL, NULL, NULL, 1, '2019-03-13 22:03:36', 1, '2019-03-01', 6, NULL, '', 1, 0, 1, 1, 1, 1, 0, '0000-00-00', '', '', '', '', 6, '1014995639', '', '', '', 0, '', 1, 1, '', 1, 1, 1, '', '', '', '3112028681-3212153389', 1, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(150, 'default.png', 'THOMAS	DAVID', 'HERRERA	ÃLVAREZ', '', '', '', NULL, NULL, NULL, NULL, 1, '2019-03-13 22:04:50', 1, '2019-03-01', 6, NULL, '', 1, 0, 1, 1, 1, 1, 0, '0000-00-00', '', '', '', '', 6, '1016067779', '', '', '', 0, '', 1, 1, '', 1, 1, 1, '', '', '', '3124697488-3118485642', 1, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(151, 'default.png', 'MIGUEL	ANGEL', 'LEON	MENDOZA', '', '', '', NULL, NULL, NULL, NULL, 1, '2019-03-13 22:06:26', 1, '2019-03-01', 6, NULL, '', 1, 0, 1, 1, 1, 1, 0, '0000-00-00', '', '', '', '', 6, '1016072028', '', '', '', 0, '', 1, 1, '', 1, 1, 1, '', '', '', '3193433636-3202804524', 1, '', '', '', '3193433636-3202804524', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(152, 'default.png', 'JOSEPH', 'LINARES	MAYUZA', '', '', '', NULL, NULL, NULL, NULL, 1, '2019-03-13 22:08:14', 1, '2019-03-01', 6, NULL, '', 1, 0, 1, 1, 1, 1, 0, '0000-00-00', '', '', '', '', 6, '1016073054', '', '', '', 0, '', 1, 1, '', 1, 1, 1, '', '', '', '3214247043-3700287', 1, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(153, 'default.png', 'GABRIELA', 'MIRANDA PINEDA', '', '', '', NULL, NULL, NULL, NULL, 1, '2019-03-13 22:09:19', 1, '2019-03-01', 6, NULL, '', 1, 0, 1, 1, 1, 1, 0, '0000-00-00', '', '', '', '', 6, '1028498822', '', '', '', 0, '', 1, 1, '', 1, 1, 1, '', '', '', '3229469594-3106743208', 1, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(154, 'default.png', 'ISABELLA', 'MONCADA	RUIZ', '', '', '', NULL, NULL, NULL, NULL, 1, '2019-03-13 22:10:42', 1, '2019-03-01', 6, NULL, '', 1, 0, 1, 1, 1, 1, 0, '0000-00-00', '', '', '', '', 6, '1011223613', '', '', '', 0, '', 1, 1, '', 1, 1, 1, '', '', '', '3058612134-3134208320', 1, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(155, 'default.png', 'ELIZABETH', 'MONROY	MONTALVO', '', '', '', NULL, NULL, NULL, NULL, 1, '2019-03-13 22:11:38', 1, '2019-03-01', 6, NULL, '', 1, 0, 1, 1, 1, 1, 0, '0000-00-00', '', '', '', '', 6, '1016075946', '', '', '', 0, '', 1, 1, '', 1, 1, 1, '', '', '', '3212404501-3138537971', 1, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(156, 'default.png', 'JUAN	DIEGO', 'MORALES DUARTE', '', '', '', NULL, NULL, NULL, NULL, 1, '2019-03-13 22:12:42', 1, '2019-03-01', 6, NULL, '', 1, 0, 1, 1, 1, 1, 0, '0000-00-00', '', '', '', '', 6, '1028901219', '', '', '', 0, '', 1, 1, '', 1, 1, 1, '', '', '', '3105620848-3108527866', 1, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(157, 'default.png', 'VALERY	ANGELYN', 'MORALES ENCISO', '', '', '', NULL, NULL, NULL, NULL, 1, '2019-03-13 22:13:29', 1, '2019-03-01', 6, NULL, '', 1, 0, 1, 1, 1, 1, 0, '0000-00-00', '', '', '', '', 6, '1016067497', '', '', '', 0, '', 1, 1, '', 1, 1, 1, '', '', '', '3114880661-3127973695', 1, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(158, 'default.png', 'EMILY', 'MUÃ‘OZ	ROJAS', '', '', '', NULL, NULL, NULL, NULL, 1, '2019-03-13 22:15:11', 1, '2019-03-01', 6, NULL, '', 1, 0, 1, 1, 1, 1, 0, '0000-00-00', '', '', '', '', 6, '1028874777', '', '', '', 0, '', 1, 1, '', 1, 1, 1, '', '', '', '3192982181-3118314908', 1, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(159, 'default.png', 'KARLEK	NILLS', 'NIETO	CELY', '', '', '', NULL, NULL, NULL, NULL, 1, '2019-03-13 22:16:38', 1, '2019-03-01', 6, NULL, '', 1, 0, 1, 1, 1, 1, 0, '0000-00-00', '', '', '', '', 6, '1020001153', '', '', '', 0, '', 1, 1, '', 1, 1, 1, '', '', '', '3142818745-3502341894', 1, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(160, 'default.png', 'LIV ROSE', 'NIETO	RAMOS', '', '', '', NULL, NULL, NULL, NULL, 1, '2019-03-13 22:17:40', 1, '2019-03-01', 6, NULL, '', 1, 0, 1, 1, 1, 1, 0, '0000-00-00', '', '', '', '', 6, '1020000925', '', '', '', 0, '', 1, 1, '', 1, 1, 1, '', '', '', '3165323168-3502341894', 1, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(161, 'default.png', 'SAMUEL	DAVID', 'NOY GARCIA', '', '', '', NULL, NULL, NULL, NULL, 1, '2019-03-13 22:18:39', 1, '2019-03-01', 6, NULL, '', 1, 0, 1, 1, 1, 1, 0, '0000-00-00', '', '', '', '', 6, '1011106562', '', '', '', 0, '', 1, 1, '', 1, 1, 1, '', '', '', '3223749696-3109098069-312', 1, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(162, 'default.png', 'SAMUEL	DAVID', 'OCHOA LEÃ“N', '', '', '', NULL, NULL, NULL, NULL, 1, '2019-03-13 22:19:54', 1, '2019-03-01', 6, NULL, '', 1, 0, 1, 1, 1, 1, 0, '0000-00-00', '', '', '', '', 6, '1016059866', '', '', '', 0, '', 1, 1, '', 1, 1, 1, '', '', '', '3002154794-3124986510', 1, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(163, 'default.png', 'MARIANA', 'OLAYA SANTIAGO', '', '', '', NULL, NULL, NULL, NULL, 1, '2019-03-13 22:20:58', 1, '2019-03-01', 6, NULL, '', 1, 0, 1, 1, 1, 1, 0, '0000-00-00', '', '', '', '', 6, '1016073303', '', '', '', 0, '', 1, 1, '', 1, 1, 1, '', '', '6094365', '3165543440-3132117660', 1, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(164, 'default.png', 'SAMUEL	ENRIQUE', 'PACHECO CUBIDES', '', '', '', NULL, NULL, NULL, NULL, 1, '2019-03-13 22:22:02', 1, '2019-03-01', 6, NULL, '', 1, 0, 1, 1, 1, 1, 0, '0000-00-00', '', '', '', '', 6, '1014995357', '', '', '', 0, '', 1, 1, '', 1, 1, 1, '', '', '', '3144729759-3112326428', 1, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(165, 'default.png', 'CAROL NATALIA', 'PERENGUEZ	RIVEROS', '', '', '', NULL, NULL, NULL, NULL, 1, '2019-03-13 22:23:08', 1, '2019-03-01', 6, NULL, '', 1, 0, 1, 1, 1, 1, 0, '0000-00-00', '', '', '', '', 6, '1016058275', '', '', '', 0, '', 1, 1, '', 1, 1, 1, '', '', '4130793', '3213052760', 1, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(166, 'default.png', 'SANTIAGO', 'RENDON	RUDAS', '', '', '', NULL, NULL, NULL, NULL, 1, '2019-03-13 22:24:10', 1, '2019-03-01', 6, NULL, '', 1, 0, 1, 1, 1, 1, 0, '0000-00-00', '', '', '', '', 6, '1020001544', '', '', '', 0, '', 1, 1, '', 1, 1, 1, '', '', '4888122', '3114162478', 1, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(167, 'default.png', 'ALEXANDER', 'RODRÃGUEZ	MERCADO', '', '', '', NULL, NULL, NULL, NULL, 1, '2019-03-13 22:25:16', 1, '2019-03-01', 6, NULL, '', 1, 0, 1, 1, 1, 1, 0, '0000-00-00', '', '', '', '', 6, '1010967503', '', '', '', 0, '', 1, 1, '', 1, 1, 1, '', '', '', '3112931307-3008256132', 1, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(168, 'default.png', 'DILAN ALEXANDER', 'RODRIGUEZ	ROJAS', '', '', '', NULL, NULL, NULL, NULL, 1, '2019-03-13 22:26:23', 1, '2019-03-01', 6, NULL, '', 1, 0, 1, 1, 1, 1, 0, '0000-00-00', '', '', '', '', 6, '1016064060', '', '', '', 0, '', 1, 1, '', 1, 1, 1, '', '', '7358938', '3142265900', 1, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(169, 'default.png', 'DANA	YASMIN', 'SISSA	MONTAÃ‘EZ', '', '', '', NULL, NULL, NULL, NULL, 1, '2019-03-13 22:27:37', 1, '2019-03-01', 6, NULL, '', 1, 0, 1, 1, 1, 1, 0, '0000-00-00', '', '', '', '', 6, '1056803023', '', '', '', 0, '', 1, 1, '', 1, 1, 1, '', '', '', '3224540333-3114603716', 1, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(170, 'default.png', 'JOHAN SANTIAGO', 'VALLE	ORTIZ', '', '', '', NULL, NULL, NULL, NULL, 1, '2019-03-13 22:28:40', 1, '2019-03-01', 6, NULL, '', 1, 0, 1, 1, 1, 1, 0, '0000-00-00', '', '', '', '', 6, '1016063147', '', '', '', 0, '', 1, 1, '', 1, 1, 1, '', '', '5474969', '3142381447', 1, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(171, 'default.png', 'JHONNY	ALEXANDER', 'VARGAS	NEISA', '', '', '', NULL, NULL, NULL, NULL, 1, '2019-03-13 22:29:37', 1, '2019-03-01', 6, NULL, '', 1, 0, 1, 1, 1, 1, 0, '0000-00-00', '', '', '', '', 6, '1016072061', '', '', '', 0, '', 1, 1, '', 1, 1, 1, '', '', '', '3133639823-3227761746', 1, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(172, 'default.png', 'DAVID SANTIAGO', 'VILLADA	ARCHILA', '', '', '', NULL, NULL, NULL, NULL, 1, '2019-03-13 22:30:38', 1, '2019-03-01', 6, NULL, '', 1, 0, 1, 1, 1, 1, 0, '0000-00-00', '', '', '', '', 6, '1016072608', '', '', '', 0, '', 1, 1, '', 1, 1, 1, '', '', '', '3122974134-3176462112', 1, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(173, 'default.png', 'JUAN	PABLO', 'ACEVEDO SANCHEZ', '', '', '', NULL, NULL, NULL, NULL, 1, '2019-03-13 22:31:43', 1, '2019-03-01', 6, NULL, '', 1, 0, 1, 1, 1, 1, 0, '0000-00-00', '', '', '', '', 6, '1077868217', '', '', '', 0, '', 1, 1, '', 1, 1, 1, '', '', '', '3138588364-3193062146', 1, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(174, 'default.png', 'MARÃA FERNANDA', 'ALMECIGA RAMOS', '', '', '', NULL, NULL, NULL, NULL, 1, '2019-03-13 22:33:21', 1, '2019-03-01', 6, NULL, '', 1, 0, 1, 1, 1, 1, 0, '0000-00-00', '', '', '', '', 6, '1025149805', '', '', '', 0, '', 1, 1, '', 1, 1, 1, '', '', '6113111', '3003288398', 1, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(175, 'default.png', 'DENISE SAYUMI', 'BAQUERO KIMURA', '', '', '', NULL, NULL, NULL, NULL, 1, '2019-03-13 22:34:22', 1, '2019-03-01', 6, NULL, '', 1, 0, 1, 1, 1, 1, 0, '0000-00-00', '', '', '', '', 6, '1126320530', '', '', '', 0, '', 1, 1, '', 1, 1, 1, '', '', '2984987', '3134504197', 1, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(176, 'default.png', 'JULIÃN FELIPE', 'BEJARANO SERNA', '', '', '', NULL, NULL, NULL, NULL, 1, '2019-03-13 22:36:38', 1, '2019-03-01', 6, NULL, '', 1, 0, 1, 1, 1, 1, 0, '0000-00-00', '', '', '', '', 6, '1013651690', '', '', '', 0, '', 1, 1, '', 1, 1, 1, '', '', '4706071', '3116332275', 1, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(177, 'default.png', 'JUAN	SEBASTIAN', 'CAMELO	MIRANDA', '', '', '', NULL, NULL, NULL, NULL, 1, '2019-03-13 22:37:42', 1, '2019-03-01', 6, NULL, '', 1, 0, 1, 1, 1, 1, 0, '0000-00-00', '', '', '', '', 6, '1016075710', '', '', '', 0, '', 1, 1, '', 1, 1, 1, '', '', '5481412', '3002587908', 1, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(178, 'default.png', 'ESTEBAN', 'CANCINO CARRANZA', '', '', '', NULL, NULL, NULL, NULL, 1, '2019-03-13 22:38:45', 1, '2019-03-01', 6, NULL, '', 1, 0, 1, 1, 1, 1, 0, '0000-00-00', '', '', '', '', 6, '1016069376', '', '', '', 0, '', 1, 1, '', 1, 1, 1, '', '', '', '3175085704-3175085764', 1, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(179, 'default.png', 'ELIAM ISAAC', 'CÃRDENAS	CAICEDO', '', '', '', NULL, NULL, NULL, NULL, 1, '2019-03-13 22:39:45', 1, '2019-03-01', 6, NULL, '', 1, 0, 1, 1, 1, 1, 0, '0000-00-00', '', '', '', '', 6, '1138028962', '', '', '', 0, '', 1, 1, '', 1, 1, 1, '', '', '5890388', '3503392966', 1, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(180, 'default.png', 'DAVID LUIS', 'CÃRDENAS	PÃ‰REZ', '', '', '', NULL, NULL, NULL, NULL, 1, '2019-03-13 22:40:38', 1, '2019-03-01', 6, NULL, '', 1, 0, 1, 1, 1, 1, 0, '0000-00-00', '', '', '', '', 6, '1102861188', '', '', '', 0, '', 1, 1, '', 1, 1, 1, '', '', '', '3016328489-3015685592', 1, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(181, 'default.png', 'MARÃA FERNANDA', 'CARRILLO ROA', '', '', '', NULL, NULL, NULL, NULL, 1, '2019-03-13 22:42:11', 1, '2019-03-01', 6, NULL, '', 1, 0, 1, 1, 1, 1, 0, '0000-00-00', '', '', '', '', 6, '1016069392', '', '', '', 0, '', 1, 1, '', 1, 1, 1, '', '', '4189782', '3222795274', 1, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(182, 'default.png', 'JUAN	SEBASTIÃN', 'CASTAÃ‘EDA	CRUZ', '', '', '', NULL, NULL, NULL, NULL, 1, '2019-03-13 22:44:15', 1, '2019-03-01', 6, NULL, '', 1, 0, 1, 1, 1, 1, 0, '0000-00-00', '', '', '', '', 6, '1016069522', '', '', '', 0, '', 1, 1, '', 1, 1, 1, '', '', '7558558', '3123204012', 1, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(183, 'default.png', 'SEBASTIÃN', 'CASTIBLANCO	DIMATE', '', '', '', NULL, NULL, NULL, NULL, 1, '2019-03-13 22:45:21', 1, '2019-03-01', 6, NULL, '', 1, 0, 1, 1, 1, 1, 0, '0000-00-00', '', '', '', '', 6, '1011216023', '', '', '', 0, '', 1, 1, '', 1, 1, 1, '', '', '4201458', '3107728053', 1, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(184, 'default.png', 'DANNA	GABRIELA', 'DIAZ	CÃ“RDOBA', '', '', '', NULL, NULL, NULL, NULL, 1, '2019-03-13 22:46:26', 1, '2019-03-01', 6, NULL, '', 1, 0, 1, 1, 1, 1, 0, '0000-00-00', '', '', '', '', 6, '1220213308', '', '', '', 0, '', 1, 1, '', 1, 1, 1, '', '', '', '3209809512-3103092044', 1, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(185, 'default.png', 'CARLOS	AMÃN', 'DIAZ	QUIMBAY', '', '', '', NULL, NULL, NULL, NULL, 1, '2019-03-13 22:47:34', 1, '2019-03-01', 6, NULL, '', 1, 0, 1, 1, 1, 1, 0, '0000-00-00', '', '', '', '', 6, '1027290355', '', '', '', 0, '', 1, 1, '', 1, 1, 1, '', '', '9208423', '3184542396', 1, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(186, 'default.png', 'DYLAN JOSUÃ‰', 'GÃMEZ	MEDINA', '', '', '', NULL, NULL, NULL, NULL, 1, '2019-03-13 22:48:39', 1, '2019-03-01', 6, NULL, '', 1, 0, 1, 1, 1, 1, 0, '0000-00-00', '', '', '', '', 6, '1016073435', '', '', '', 0, '', 1, 1, '', 1, 1, 1, '', '', '4131131', '3153402185', 1, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(187, 'default.png', 'SARA	VALENTINA', 'GARCÃA	GONZÃLEZ', '', '', '', NULL, NULL, NULL, NULL, 1, '2019-03-13 22:49:33', 1, '2019-03-01', 6, NULL, '', 1, 0, 1, 1, 1, 1, 0, '0000-00-00', '', '', '', '', 6, '1013273657', '', '', '', 0, '', 1, 1, '', 1, 1, 1, '', '', '4150249', '3124666781', 1, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(188, 'default.png', 'GABRIEL', 'GONZÃLEZ	HERRERA', '', '', '', NULL, NULL, NULL, NULL, 1, '2019-03-13 22:50:43', 1, '2019-03-01', 6, NULL, '', 1, 0, 1, 1, 1, 1, 0, '0000-00-00', '', '', '', '', 6, '1013014923', '', '', '', 0, '', 1, 1, '', 1, 1, 1, '', '', '4181661', '3152218740', 1, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(189, 'default.png', 'MARÃA	ANGELICA', 'HIGUERA	RINCÃ“N', '', '', '', NULL, NULL, NULL, NULL, 1, '2019-03-13 22:53:11', 1, '2019-03-01', 6, NULL, '', 1, 0, 1, 1, 1, 1, 0, '0000-00-00', '', '', '', '', 6, '1020000894', '', '', '', 0, '', 1, 1, '', 1, 1, 1, '', '', '6590041', '3134103550', 1, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(190, 'default.png', 'MIGUEL	ÃNGEL', 'LUGO	NARANJO', '', '', '', NULL, NULL, NULL, NULL, 1, '2019-03-13 22:54:49', 1, '2019-03-01', 6, NULL, '', 1, 0, 1, 1, 1, 1, 0, '0000-00-00', '', '', '', '', 6, '1016066610', '', '', '', 0, '', 1, 1, '', 1, 1, 1, '', '', '4726562', '3142878293', 1, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(191, 'default.png', 'ERICK	SANTIAGO', 'MANCERA FANDIÃ‘O', '', '', '', NULL, NULL, NULL, NULL, 1, '2019-03-13 22:55:54', 1, '2019-03-01', 6, NULL, '', 1, 0, 1, 1, 1, 1, 0, '0000-00-00', '', '', '', '', 6, '1016064761', '', '', '', 0, '', 1, 1, '', 1, 1, 1, '', '', '5600520', '3214936485', 1, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(192, 'default.png', 'ANY GIRETH', 'MORA ARATECO', '', '', '', NULL, NULL, NULL, NULL, 1, '2019-03-13 22:57:04', 1, '2019-03-01', 6, NULL, '', 1, 0, 1, 1, 1, 1, 0, '0000-00-00', '', '', '', '', 6, '1220213977', '', '', '', 0, '', 1, 1, '', 1, 1, 1, '', '', '6957744', '3209109111', 1, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(193, 'default.png', 'MARIANA SOFIA', 'MORENO	MARTINEZ', '', '', '', NULL, NULL, NULL, NULL, 1, '2019-03-13 22:58:22', 1, '2019-03-01', 6, NULL, '', 1, 0, 1, 1, 1, 1, 0, '0000-00-00', '', '', '', '', 6, '1028874756', '', '', '', 0, '', 1, 1, '', 1, 1, 1, '', '', '8033113', '3178526865', 1, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(194, 'default.png', 'JUAN	ESTEBAN', 'POSADA	CAÃ‘Ã“N', '', '', '', NULL, NULL, NULL, NULL, 1, '2019-03-13 22:59:17', 1, '2019-03-01', 6, NULL, '', 1, 0, 1, 1, 1, 1, 0, '0000-00-00', '', '', '', '', 6, '1010843759', '', '', '', 0, '', 1, 1, '', 1, 1, 1, '', '', '4639194', '3132618752', 1, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(195, 'default.png', 'AMY	DANIELA', '', '', '', '', NULL, NULL, NULL, NULL, 1, '2019-03-13 23:01:23', 1, '2019-03-01', 6, NULL, '', 1, 0, 1, 1, 1, 1, 0, '0000-00-00', '', '', '', '', 6, '1011218646', '', '', '', 0, '', 1, 1, '', 1, 1, 1, '', '', '2981060', '3508110830', 1, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(196, 'default.png', 'ISABELLA', 'QUIÃ‘ONEZ	ARIAS', '', '', '', NULL, NULL, NULL, NULL, 1, '2019-03-13 23:03:02', 1, '2019-03-01', 6, NULL, '', 1, 0, 1, 1, 1, 1, 0, '0000-00-00', '', '', '', '', 6, '1020001156', '', '', '', 0, '', 1, 1, '', 1, 1, 1, '', '', '4133603', '3209830704', 1, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(197, 'default.png', 'THOMAS', 'RIVERA SANDOVAL', '', '', '', NULL, NULL, NULL, NULL, 1, '2019-03-13 23:04:14', 1, '2019-03-01', 6, NULL, '', 1, 0, 1, 1, 1, 1, 0, '0000-00-00', '', '', '', '', 6, '1013014066', '', '', '', 0, '', 1, 1, '', 1, 1, 1, '', '', '5416945', '3142318114', 1, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(198, 'default.png', 'DANIEL	FELIPE', 'ROJAS DULCEY', '', '', '', NULL, NULL, NULL, NULL, 1, '2019-03-13 23:05:20', 1, '2019-03-01', 6, NULL, '', 1, 0, 1, 1, 1, 1, 0, '0000-00-00', '', '', '', '', 6, '1016072441', '', '', '', 0, '', 1, 1, '', 1, 1, 1, '', '', '4159809', '3196885292', 1, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(199, 'default.png', 'HEIDY 	SAMANTHA', 'TORRES	JIMENEZ', '', '', '', NULL, NULL, NULL, NULL, 1, '2019-03-13 23:06:34', 1, '2019-03-01', 6, NULL, '', 1, 0, 1, 1, 1, 1, 0, '0000-00-00', '', '', '', '', 6, '1014995840', '', '', '', 0, '', 1, 1, '', 1, 1, 1, '', '', '4156308', '3134844725', 1, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(200, 'default.png', 'NICOLLE	MARIANA', 'TOVAR	LANCHEROS', '', '', '', NULL, NULL, NULL, NULL, 1, '2019-03-13 23:07:29', 1, '2019-03-01', 6, NULL, '', 1, 0, 1, 1, 1, 1, 0, '0000-00-00', '', '', '', '', 6, '1025070139', '', '', '', 0, '', 1, 1, '', 1, 1, 1, '', '', '8003178', '3006685571', 1, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(201, 'default.png', 'CRISTIAN	IVÃN', 'VEGA	MONTAÃ‘EZ', '', '', '', NULL, NULL, NULL, NULL, 1, '2019-03-13 23:08:30', 1, '2019-03-01', 6, NULL, '', 1, 0, 1, 1, 1, 1, 0, '0000-00-00', '', '', '', '', 6, '1016074583', '', '', '', 0, '', 1, 1, '', 1, 1, 1, '', '', '4835209', '3224292410', 1, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(202, 'default.png', 'JUAN	DIEGO', 'VÃ‰LEZ	MILLÃN', '', '', '', NULL, NULL, NULL, NULL, 1, '2019-03-13 23:09:38', 1, '2019-03-01', 6, NULL, '', 1, 0, 1, 1, 1, 1, 0, '0000-00-00', '', '', '', '', 6, '1141336477', '', '', '', 0, '', 1, 1, '', 1, 1, 1, '', '', '', '3137159921-3137159921', 1, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(203, 'default.png', 'JULIAN 	ESTEVAN', 'MURCIA	BRICENO', '', '', '', NULL, NULL, NULL, NULL, 1, '2019-03-13 23:10:38', 1, '2019-03-01', 6, NULL, '', 1, 0, 1, 1, 1, 1, 0, '0000-00-00', '', '', '', '', 6, '1028901331', '', '', '', 0, '', 1, 1, '', 1, 1, 1, '', '', '4189889', '3196321180-3115076401', 1, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(221, 'default.png', 'SAMANTHA', 'GRANADOS	PULIDO', '', '', '', NULL, NULL, NULL, NULL, 1, '2019-03-13 23:59:25', 1, '2019-03-01', 6, NULL, '', 1, 0, 1, 1, 1, 1, 0, '0000-00-00', '', '', '', '', 6, '1034786221', '', '', '', 0, '', 1, 1, '', 1, 1, 1, '', '', '3092280', '3187597536', 1, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(222, 'default.png', 'MARÃA SALOME', 'ÃLVAREZ	AMÃ“RTEGUI', '', '', '', NULL, NULL, NULL, NULL, 1, '2019-03-14 00:06:03', 1, '2019-03-01', 7, NULL, '', 1, 0, 1, 1, 1, 1, 0, '0000-00-00', '', '', '', '', 6, '1016063002', '', '', '', 0, '', 1, 1, '', 1, 1, 1, '', '', '4785894-5477640', '', 1, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(223, 'default.png', 'MARIANA SOFIA', 'BEDOYA	AGUDELO', '', '', '', NULL, NULL, NULL, NULL, 1, '2019-03-14 00:07:16', 1, '2019-03-01', 7, NULL, '', 1, 0, 1, 1, 1, 1, 0, '0000-00-00', '', '', '', '', 6, '1028870727', '', '', '', 0, '', 1, 1, '', 1, 1, 1, '', '', '', '3002504392-3115113028', 1, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(224, 'default.png', 'DYLAN	ESTEBEN', 'CABRERA	JURADO', '', '', '', NULL, NULL, NULL, NULL, 1, '2019-03-14 00:08:21', 1, '2019-03-01', 7, NULL, '', 1, 0, 1, 1, 1, 1, 0, '0000-00-00', '', '', '', '', 6, '1011212333', '', '', '', 0, '', 1, 1, '', 1, 1, 1, '', '', '4961876-7763034', '3107540169', 1, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(225, 'default.png', 'JUAN	MANUEL', 'CAMPOS	MOYA', '', '', '', NULL, NULL, NULL, NULL, 1, '2019-03-14 00:09:18', 1, '2019-03-01', 7, NULL, '', 1, 0, 1, 1, 1, 1, 0, '0000-00-00', '', '', '', '', 6, '1146128420', '', '', '', 0, '', 1, 1, '', 1, 1, 1, '', '', '', '3192359672-3132720740', 1, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(226, 'default.png', 'JUAN	DIEGO', 'CAMPOS	TORRES', '', '', '', NULL, NULL, NULL, NULL, 1, '2019-03-14 00:10:11', 1, '2019-03-01', 7, NULL, '', 1, 0, 1, 1, 1, 1, 0, '0000-00-00', '', '', '', '', 6, '1020000690', '', '', '', 0, '', 1, 1, '', 1, 1, 1, '', '', '', '3214621526-3212664230', 1, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(227, 'default.png', 'SARA	SOFIA', 'CASTELLANOS	TORRES', '', '', '', NULL, NULL, NULL, NULL, 1, '2019-03-14 00:11:28', 1, '2019-03-01', 7, NULL, '', 1, 0, 1, 1, 1, 1, 0, '0000-00-00', '', '', '', '', 6, '1020000655', '', '', '', 0, '', 1, 1, '', 1, 1, 1, '', '', '', '3143118780-3183544492', 1, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(228, 'default.png', 'JUAN	DAVID', 'CASTILLO	VILLAMARÃN', '', '', '', NULL, NULL, NULL, NULL, 1, '2019-03-14 00:12:54', 1, '2019-03-01', 7, NULL, '', 1, 0, 1, 1, 1, 1, 0, '0000-00-00', '', '', '', '', 6, '1016064227', '', '', '', 0, '', 1, 1, '', 1, 1, 1, '', '', '', '3125563855-3132287922', 1, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(229, 'default.png', 'MATÃAS', 'CORTES	VALENCIA', '', '', '', NULL, NULL, NULL, NULL, 1, '2019-03-14 00:13:50', 1, '2019-03-01', 7, NULL, '', 1, 0, 1, 1, 1, 1, 0, '0000-00-00', '', '', '', '', 6, '1020000326', '', '', '', 0, '', 1, 1, '', 1, 1, 1, '', '', '', '3108543139-3144628592', 1, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(230, 'default.png', 'ÃNGEL	SANTIAGO', 'ESCOBAR	CHÃVEZ', '', '', '', NULL, NULL, NULL, NULL, 1, '2019-03-14 00:15:15', 1, '2019-03-01', 7, NULL, '', 1, 0, 1, 1, 1, 1, 0, '0000-00-00', '', '', '', '', 1, '1028872049', '', '', '', 0, '', 1, 1, '', 1, 1, 1, '', '', '', '3219618790-3177032728', 1, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(231, 'default.png', 'LAURA	CAMILA', 'ESCOBAR	FALLA', '', '', '', NULL, NULL, NULL, NULL, 1, '2019-03-14 00:16:23', 1, '2019-03-01', 7, NULL, '', 1, 0, 1, 1, 1, 1, 0, '0000-00-00', '', '', '', '', 6, '1016055140', '', '', '', 0, '', 1, 1, '', 1, 1, 1, '', '', '', '3213502520-3208561361', 1, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(232, 'default.png', 'JULIANA', 'FULA	MORENO', '', '', '', NULL, NULL, NULL, NULL, 1, '2019-03-14 00:17:30', 1, '2019-03-01', 7, NULL, '', 1, 0, 1, 1, 1, 1, 0, '0000-00-00', '', '', '', '', 6, '1188217478', '', '', '', 0, '', 1, 1, '', 1, 1, 1, '', '', '', '3184300461-3188737412', 1, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(233, 'default.png', 'ALAN	SAID', 'GALEANO	RAMÃREZ', '', '', '', NULL, NULL, NULL, NULL, 1, '2019-03-14 00:18:56', 1, '2019-03-01', 7, NULL, '', 1, 0, 1, 1, 1, 1, 0, '0000-00-00', '', '', '', '', 6, '1011105714', '', '', '', 0, '', 1, 1, '', 1, 1, 1, '', '', '', '3203417106-3132777734', 1, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(234, 'default.png', 'SAMUEL	ANDRES', 'GARCIA	GOMEZ', '', '', '', NULL, NULL, NULL, NULL, 1, '2019-03-14 00:20:04', 1, '2019-03-01', 7, NULL, '', 1, 0, 1, 1, 1, 1, 0, '0000-00-00', '', '', '', '', 6, '1022991462', '', '', '', 0, '', 1, 1, '', 1, 1, 1, '', '', '', '3203027269-3118794186', 1, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(236, 'default.png', 'GABRIELA', 'GARCÃA	MARTÃNEZ', '', '', '', NULL, NULL, NULL, NULL, 1, '2019-03-14 00:22:17', 1, '2019-03-01', 7, NULL, '', 1, 0, 1, 1, 1, 1, 0, '0000-00-00', '', '', '', '', 6, '1032461546', '', '', '', 0, '', 1, 1, '', 1, 1, 1, '', '', '', '3133147843', 1, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(237, 'default.png', 'SERGIO	ANDRES', 'GIL	CASTRO', '', '', '', NULL, NULL, NULL, NULL, 1, '2019-03-14 00:23:45', 1, '2019-03-01', 7, NULL, '', 1, 0, 1, 1, 1, 1, 0, '0000-00-00', '', '', '', '', 6, '1016060968', '', '', '', 0, '', 1, 1, '', 1, 1, 1, '', '', '', '3123504360-3102898860', 1, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(239, 'default.png', 'DANNA	JULIANA', 'GOMEZ	CASTILLO', '', '', '', NULL, NULL, NULL, NULL, 1, '2019-03-14 00:26:20', 1, '2019-03-01', 7, NULL, '', 1, 0, 1, 1, 1, 1, 0, '0000-00-00', '', '', '', '', 6, '1021399867', '', '', '', 0, '', 1, 1, '', 1, 1, 1, '', '', '', '3153546930-3118965816', 1, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(240, 'default.png', 'SEBASTIÃN', 'GÃ“MEZ	GALVIS', '', '', '', NULL, NULL, NULL, NULL, 1, '2019-03-14 00:27:47', 1, '2019-03-01', 7, NULL, '', 1, 0, 1, 1, 1, 1, 0, '0000-00-00', '', '', '', '', 6, '1016053129', '', '', '', 0, '', 1, 1, '', 1, 1, 1, '', '', '', '3134209908-3162259527', 1, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(242, 'default.png', 'LAURA	VALENTINA', 'GONZÃLEZ	MUÃ‘OZ', '', '', '', NULL, NULL, NULL, NULL, 1, '2019-03-14 00:29:00', 1, '2019-03-01', 7, NULL, '', 1, 0, 1, 1, 1, 1, 0, '0000-00-00', '', '', '', '', 6, '1016060626', '', '', '', 0, '', 1, 1, '', 1, 1, 1, '', '', '', '3223247595-3142255733-313', 1, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(243, 'default.png', 'JUAN	DIEGO', 'LÃ“PEZ	AMEZQUITA', '', '', '', NULL, NULL, NULL, NULL, 1, '2019-03-14 00:30:06', 1, '2019-03-01', 7, NULL, '', 1, 0, 1, 1, 1, 1, 0, '0000-00-00', '', '', '', '', 6, '1022387080', '', '', '', 0, '', 1, 1, '', 1, 1, 1, '', '', '', '3202859562-3112801891', 1, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(244, 'default.png', 'ANGIE	SOFIA', 'LOZANO	PATIÃ‘O', '', '', '', NULL, NULL, NULL, NULL, 1, '2019-03-14 00:32:42', 1, '2019-03-01', 7, NULL, '', 1, 0, 1, 1, 1, 1, 0, '0000-00-00', '', '', '', '', 6, '1034784319', '', '', '', 0, '', 1, 1, '', 1, 1, 1, '', '', '4213523', '3112779332-3232332004', 1, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(245, 'default.png', 'MATTIAS', 'MEDINA	MORENO', '', '', '', NULL, NULL, NULL, NULL, 1, '2019-03-14 00:33:40', 1, '2019-03-01', 7, NULL, '', 1, 0, 1, 1, 1, 1, 0, '0000-00-00', '', '', '', '', 6, '1020000241', '', '', '', 0, '', 1, 1, '', 1, 1, 1, '', '', '', '3133181655-3006374376', 1, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(246, 'default.png', 'BRAYAN	ANDRÃ‰S', 'MURILLO	BEJARANO', '', '', '', NULL, NULL, NULL, NULL, 1, '2019-03-14 00:35:10', 1, '2019-03-01', 7, NULL, '', 1, 0, 1, 1, 1, 1, 0, '0000-00-00', '', '', '', '', 6, '1016059292', '', '', '', 0, '', 1, 1, '', 1, 1, 1, '', '', '', '32032025989-3132231029', 1, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(247, 'default.png', 'ÃNGEL	DAVID', 'ORTEGÃ“N	MOGOLLÃ“N', '', '', '', NULL, NULL, NULL, NULL, 1, '2019-03-14 00:36:06', 1, '2019-03-01', 7, NULL, '', 1, 0, 1, 1, 1, 1, 0, '0000-00-00', '', '', '', '', 6, '1072106275', '', '', '', 0, '', 1, 1, '', 1, 1, 1, '', '', '', '3112597389-3123514849', 1, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(248, 'default.png', 'DANNA	SOFIA', 'POVEDA	IBAÃ‘EZ', '', '', '', NULL, NULL, NULL, NULL, 1, '2019-03-14 00:37:23', 1, '2019-03-01', 7, NULL, '', 1, 0, 1, 1, 1, 1, 0, '0000-00-00', '', '', '', '', 6, '1020000239', '', '', '', 0, '', 1, 1, '', 1, 1, 1, '', '', '', '3103271662-3103031957', 1, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(249, 'default.png', 'MARÃA	ALEJANDRA', 'PRIETO	NIETO', '', '', '', NULL, NULL, NULL, NULL, 1, '2019-03-14 00:39:14', 1, '2019-03-01', 7, NULL, '', 1, 0, 1, 1, 1, 1, 0, '0000-00-00', '', '', '', '', 6, '1023166993', '', '', '', 0, '', 1, 1, '', 1, 1, 1, '', '', '', '3223017492', 1, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(250, 'default.png', 'DANNA	SOFIA', 'QUITIAN	OVIEDO', '', '', '', NULL, NULL, NULL, NULL, 1, '2019-03-14 00:40:27', 1, '2019-03-01', 7, NULL, '', 1, 0, 1, 1, 1, 1, 0, '0000-00-00', '', '', '', '', 1, '1027287207', '', '', '', 0, '', 1, 1, '', 1, 1, 1, '', '', '', '3123274532', 1, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(251, 'default.png', 'LUIS	SANTIAGO', 'RAMÃREZ	BEJARANO', '', '', '', NULL, NULL, NULL, NULL, 1, '2019-03-14 00:41:43', 1, '2019-03-01', 7, NULL, '', 1, 0, 1, 1, 1, 1, 0, '0000-00-00', '', '', '', '', 6, '1016058541', '', '', '', 0, '', 1, 1, '', 1, 1, 1, '', '', '', '3162209261-3162209494', 1, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(252, 'default.png', 'DANNA	STEPHANIA', 'REYES	SOLER', '', '', '', NULL, NULL, NULL, NULL, 1, '2019-03-14 00:42:52', 1, '2019-03-01', 7, NULL, '', 1, 0, 1, 1, 1, 1, 0, '0000-00-00', '', '', '', '', 6, '1025068787', '', '', '', 0, '', 1, 1, '', 1, 1, 1, '', '', '', '3115515355-3102155994', 1, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(253, 'default.png', 'DANNA	VALENTINA', 'ROMERO	DIAZ', '', '', '', NULL, NULL, NULL, NULL, 1, '2019-03-14 00:44:05', 1, '2019-03-01', 7, NULL, '', 1, 0, 1, 1, 1, 1, 0, '0000-00-00', '', '', '', '', 6, '1016063503', '', '', '', 0, '', 1, 1, '', 1, 1, 1, '', '', '', '3223831072', 1, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(254, 'default.png', 'EMILIO', 'ROMERO	RUIZ', '', '', '', NULL, NULL, NULL, NULL, 1, '2019-03-14 00:45:32', 1, '2019-03-01', 7, NULL, '', 1, 0, 1, 1, 1, 1, 0, '0000-00-00', '', '', '', '', 6, '1016062769', '', '', '', 0, '', 1, 1, '', 1, 1, 1, '', '', '', '3208596676-3124129824', 1, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(255, 'default.png', 'ANA	MARÃA', 'SAAVEDRA	GONZÃLEZ', '', '', '', NULL, NULL, NULL, NULL, 1, '2019-03-14 00:47:10', 1, '2019-03-01', 7, NULL, '', 1, 0, 1, 1, 1, 1, 0, '0000-00-00', '', '', '', '', 6, '1025067394', '', '', '', 0, '', 1, 1, '', 1, 1, 1, '', '', '', '3107606302-3503439377', 1, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(256, 'default.png', 'JUAN	DAVID', 'VILLAMIL	CRUZ', '', '', '', NULL, NULL, NULL, NULL, 1, '2019-03-14 00:48:10', 1, '2019-03-01', 7, NULL, '', 1, 0, 1, 1, 1, 1, 0, '0000-00-00', '', '', '', '', 6, '1031826584', '', '', '', 0, '', 1, 1, '', 1, 1, 1, '', '', '', '3204011722-3143022019', 1, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(257, 'default.png', 'JINNY	ANAIL', 'ÃLVAREZ	PEÃ‘A', '', '', '', NULL, NULL, NULL, NULL, 1, '2019-03-14 00:49:14', 1, '2019-03-01', 7, NULL, '', 1, 0, 1, 1, 1, 1, 0, '0000-00-00', '', '', '', '', 6, '1016057890', '', '', '', 0, '', 1, 1, '', 1, 1, 1, '', '', '', '3213198844-3123186539', 1, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(258, 'default.png', 'ANA	SOFIA', 'ARDILA	TORRES', '', '', '', NULL, NULL, NULL, NULL, 1, '2019-03-14 00:50:25', 1, '2019-03-01', 7, NULL, '', 1, 0, 1, 1, 1, 1, 0, '0000-00-00', '', '', '', '', 6, '1020000908', '', '', '', 0, '', 1, 1, '', 1, 1, 1, '', '', '', '3125927981-3102561701', 1, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(259, 'default.png', 'JUAN	FELIPE', 'ARÃ‰VALO	GÃ“MEZ', '', '', '', NULL, NULL, NULL, NULL, 1, '2019-03-14 00:51:46', 1, '2019-03-01', 7, NULL, '', 1, 0, 1, 1, 1, 1, 0, '0000-00-00', '', '', '', '', 6, '1028871319', '', '', '', 0, '', 1, 1, '', 1, 1, 1, '', '', '5361790', '3219428795', 1, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(260, 'default.png', 'ADRIÃN	SAMUEL', 'ATILANO	SERNA', '', '', '', NULL, NULL, NULL, NULL, 1, '2019-03-14 00:53:43', 1, '2019-03-01', 7, NULL, '', 1, 0, 1, 1, 1, 1, 0, '0000-00-00', '', '', '', '', 6, '1020000234', '', '', '', 0, '', 1, 1, '', 1, 1, 1, '', '', '', '3142196247-3212824335', 1, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(261, 'default.png', 'SARA	GABRIELA', 'BARRERA	PARRA', '', '', '', NULL, NULL, NULL, NULL, 1, '2019-03-14 00:55:19', 1, '2019-03-01', 7, NULL, '', 1, 0, 1, 1, 1, 1, 0, '0000-00-00', '', '', '', '', 6, '1020000440', '', '', '', 0, '', 1, 1, '', 1, 1, 1, '', '', '', '3024372486-3112744545', 1, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(262, 'default.png', 'DANNA	VALENTINA', 'BARRERA	ROMERO', '', '', '', NULL, NULL, NULL, NULL, 1, '2019-03-14 00:57:32', 1, '2019-03-01', 7, NULL, '', 1, 0, 1, 1, 1, 1, 0, '0000-00-00', '', '', '', '', 6, '1016059925', '', '', '', 0, '', 1, 1, '', 1, 1, 1, '', '', ' 3469600', '3187551722', 1, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(263, 'default.png', 'ÃNGELO	STEVEN', 'BELTRÃN	AGUILAR', '', '', '', NULL, NULL, NULL, NULL, 1, '2019-03-14 00:58:48', 1, '2019-03-01', 7, NULL, '', 1, 0, 1, 1, 1, 1, 0, '0000-00-00', '', '', '', '', 6, '1011211955', '', '', '', 0, '', 1, 1, '', 1, 1, 1, '', '', '', '3212634141- 3212641486', 1, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(264, 'default.png', 'YHOSEF	DAVID', 'CÃRDENAS	CAICEDO', '', '', '', NULL, NULL, NULL, NULL, 1, '2019-03-14 00:59:59', 1, '2019-03-01', 7, NULL, '', 1, 0, 1, 1, 1, 1, 0, '0000-00-00', '', '', '', '', 6, '1016048164', '', '', '', 0, '', 1, 1, '', 1, 1, 1, '', '', '', '3503392966-3013538083', 1, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(265, 'default.png', 'JUAN	JOSÃ‰', 'CORREDOR	RODRÃGUEZ', '', '', '', NULL, NULL, NULL, NULL, 1, '2019-03-14 01:01:42', 1, '2019-03-01', 7, NULL, '', 1, 0, 1, 1, 1, 1, 0, '0000-00-00', '', '', '', '', 6, '1028493587', '', '', '', 0, '', 1, 1, '', 1, 1, 1, '', '', '', '3112914416', 1, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(266, 'default.png', 'ISABELLA', 'CRUZ	MARTÃNEZ', '', '', '', NULL, NULL, NULL, NULL, 1, '2019-03-14 01:03:14', 1, '2019-03-01', 7, NULL, '', 1, 0, 1, 1, 1, 1, 0, '0000-00-00', '', '', '', '', 6, '1028484455', '', '', '', 0, '', 1, 1, '', 1, 1, 1, '', '', '', '3115001546-31034073549', 1, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(267, 'default.png', 'DIXON	ANDREY', 'FARFÃN	CASTRO', '', '', '', NULL, NULL, NULL, NULL, 1, '2019-03-14 01:04:16', 1, '2019-03-01', 7, NULL, '', 1, 0, 1, 1, 1, 1, 0, '0000-00-00', '', '', '', '', 6, '1069053914', '', '', '', 0, '', 1, 1, '', 1, 1, 1, '', '', '', '3133850157-3132804259', 1, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(268, 'default.png', 'HEIDY	ELIANA', 'FARIETA	ÃVILA', '', '', '', NULL, NULL, NULL, NULL, 1, '2019-03-14 01:05:48', 1, '2019-03-01', 7, NULL, '', 1, 0, 1, 1, 1, 1, 0, '0000-00-00', '', '', '', '', 6, '1016054632', '', '', '', 0, '', 1, 1, '', 1, 1, 1, '', '', '4184406', '', 1, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(269, 'default.png', 'ALAN	GABRIEL', 'GARZÃ“N	PRECIADO', '', '', '', NULL, NULL, NULL, NULL, 1, '2019-03-14 01:07:12', 1, '2019-03-01', 7, NULL, '', 1, 0, 1, 1, 1, 1, 0, '0000-00-00', '', '', '', '', 6, '1028682504', '', '', '', 0, '', 1, 1, '', 1, 1, 1, '', '', '4377060', '3192377037', 1, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(270, 'default.png', 'SALOME', 'GIRALDO	GARCÃA', '', '', '', NULL, NULL, NULL, NULL, 1, '2019-03-14 01:09:10', 1, '2019-03-01', 7, NULL, '', 1, 0, 1, 1, 1, 1, 0, '0000-00-00', '', '', '', '', 6, '1010212045', '', '', '', 0, '', 1, 1, '', 1, 1, 1, '', '', '', '3105773725-3204767821', 1, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(271, 'default.png', 'SERGIO	DAVID', 'GRANADOS	PULIDO', '', '', '', NULL, NULL, NULL, NULL, 1, '2019-03-14 01:10:41', 1, '2019-03-01', 7, NULL, '', 1, 0, 1, 1, 1, 1, 0, '0000-00-00', '', '', '', '', 6, '1025068677', '', '', '', 0, '', 1, 1, '', 1, 1, 1, '', '', '5197244', '3012010023', 1, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(272, 'default.png', 'LAURA	SOPHIA', 'GUERRERO	CORTES', '', '', '', NULL, NULL, NULL, NULL, 1, '2019-03-14 01:11:57', 1, '2019-03-01', 7, NULL, '', 1, 0, 1, 1, 1, 1, 0, '0000-00-00', '', '', '', '', 6, '1016059520', '', '', '', 0, '', 1, 1, '', 1, 1, 1, '', '', '', '3118202028-3212233880', 1, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(273, 'default.png', 'MATÃAS', 'LOAIZA	BONILLA', '', '', '', NULL, NULL, NULL, NULL, 1, '2019-03-14 01:13:06', 1, '2019-03-01', 7, NULL, '', 1, 0, 1, 1, 1, 1, 0, '0000-00-00', '', '', '', '', 6, '1013014060', '', '', '', 0, '', 1, 1, '', 1, 1, 1, '', '', '', '3212108591-3142783789', 1, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(274, 'default.png', 'SANTIAGO', 'MÃ‰NDEZ	CÃRDENAS', '', '', '', NULL, NULL, NULL, NULL, 1, '2019-03-14 01:14:33', 1, '2019-03-01', 7, NULL, '', 1, 0, 1, 1, 1, 1, 0, '0000-00-00', '', '', '', '', 6, '1031827590', '', '', '', 0, '', 1, 1, '', 1, 1, 1, '', '', '', '3204178627-3102507744', 1, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `alumn` (`id`, `image`, `name`, `lastname`, `email`, `address`, `phone`, `c1_fullname`, `c1_address`, `c1_phone`, `c1_note`, `is_active`, `created_at`, `user_id`, `fecha_mensualidad`, `idpaquete`, `iva`, `codigo`, `matricula`, `anos`, `sexo`, `lugar_hermanos`, `factor_sangre`, `rh`, `marcar`, `fecha_nacimiento`, `departamento`, `municipio`, `extendida_en_departamento`, `extendida_en_municipio`, `clase_identificacion`, `numero_identificacion`, `depto_residencia`, `localizacion_municipio`, `barrio`, `estrato`, `direccion`, `sisben`, `nivel`, `otras_eps`, `situacion_ano_anterior`, `procedencia`, `reincidente`, `historial`, `padres`, `telefono_fijo`, `celular`, `retiro_alumno`, `madre_nombre`, `madre_acudiente`, `madre_telefono`, `madre_celular`, `madre_ocupacion`, `madre_empresa`, `madre_tel_empresa`, `padre_nombre`, `padre_acudiente`, `padre_telefono`, `padre_celular`, `padre_ocupacion`, `padre_empresa`, `padre_tel_empresa`, `acudiente_nombre`, `acudiente_telefono`, `acudiente_tel_empresa`, `acudiente_parentesco`, `responsable_costos_nombre`, `responsable_costos_parentesco`, `observaciones`) VALUES
(276, 'default.png', 'SARA	VALENTINA', 'MORA CASTAÃ‘O', '', '', '', NULL, NULL, NULL, NULL, 1, '2019-03-15 14:55:50', 1, '2019-03-01', 7, NULL, '', 1, 0, 1, 1, 1, 1, 0, '0000-00-00', '', '', '', '', 6, '1016059548', '', '', '', 0, '', 1, 1, '', 1, 1, 1, '', '', '', '3142380899-3208581258', 1, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(277, 'default.png', 'LUNA	MARIANA', 'MORENO	RUIZ', '', '', '', NULL, NULL, NULL, NULL, 1, '2019-03-15 14:56:59', 1, '2019-03-01', 7, NULL, '', 1, 0, 1, 1, 1, 1, 0, '0000-00-00', '', '', '', '', 6, '1069647297', '', '', '', 0, '', 1, 1, '', 1, 1, 1, '', '', '', '3114893848-3114973978', 1, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(278, 'default.png', 'ELIBETH	XIOMARA', 'PORTELA	ARGUELLO', '', '', '', NULL, NULL, NULL, NULL, 1, '2019-03-15 15:04:27', 1, '2019-03-01', 7, NULL, '', 1, 0, 1, 1, 1, 1, 0, '0000-00-00', '', '', '', '', 6, '1013011721', '', '', '', 0, '', 1, 1, '', 1, 1, 1, '', '', '', '3203145431-3226545417', 1, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(279, 'default.png', 'DAVID ESTEBAN', 'RAMÃREZ	GARCÃA', '', '', '', NULL, NULL, NULL, NULL, 1, '2019-03-15 15:17:17', 1, '2019-03-01', 7, NULL, '', 1, 0, 1, 1, 1, 1, 0, '0000-00-00', '', '', '', '', 6, '1029061226', '', '', '', 0, '', 1, 1, '', 1, 1, 1, '', '', '9251298', '3134297294', 1, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(280, 'default.png', 'ISAAC	DAVID', 'RENDON	ZURA', '', '', '', NULL, NULL, NULL, NULL, 1, '2019-03-15 15:22:49', 1, '2019-03-01', 7, NULL, '', 1, 0, 1, 1, 1, 1, 0, '0000-00-00', '', '', '', '', 6, '1011215901', '', '', '', 0, '', 1, 1, '', 1, 1, 1, '', '', '', '3124315544-3202526205', 1, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(281, 'default.png', 'MARÃA PAULA', 'RINCÃ“N	RODRÃGUEZ', '', '', '', NULL, NULL, NULL, NULL, 1, '2019-03-15 15:25:06', 1, '2019-03-01', 7, NULL, '', 1, 0, 1, 1, 1, 1, 0, '0000-00-00', '', '', '', '', 6, '1170963610', '', '', '', 0, '', 1, 1, '', 1, 1, 1, '', '', '', '', 1, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(282, 'default.png', 'ISABELLA', 'RODRÃGUEZ	VELÃSQUEZ', '', '', '', NULL, NULL, NULL, NULL, 1, '2019-03-15 15:28:24', 1, '2019-03-01', 7, NULL, '', 1, 0, 1, 1, 1, 1, 0, '0000-00-00', '', '', '', '', 6, '1011212303', '', '', '', 0, '', 1, 1, '', 1, 1, 1, '', '', '', '3128107410-3503777708', 1, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(283, 'default.png', 'LUCIANA', 'RUBIANO SUAREZ', '', '', '', NULL, NULL, NULL, NULL, 1, '2019-03-15 15:34:19', 1, '2019-03-01', 7, NULL, '', 1, 0, 1, 1, 1, 1, 0, '0000-00-00', '', '', '', '', 6, '1014243558', '', '', '', 0, '', 1, 1, '', 1, 1, 1, '', '', '441799', '3014937989', 1, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(284, 'default.png', 'JOEL	SEBASTIÃN', 'RUGE	TORRES', '', '', '', NULL, NULL, NULL, NULL, 1, '2019-03-15 15:35:14', 1, '2019-03-01', 7, NULL, '', 1, 0, 1, 1, 1, 1, 0, '0000-00-00', '', '', '', '', 6, '1020000517', '', '', '', 0, '', 1, 1, '', 1, 1, 1, '', '', '2441799', '3143252398-3123782889', 1, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(285, 'default.png', 'JERÃ“NIMO', 'SARMIENTO	BERNAL', '', '', '', NULL, NULL, NULL, NULL, 1, '2019-03-15 15:36:07', 1, '2019-03-01', 7, NULL, '', 1, 0, 1, 1, 1, 1, 0, '0000-00-00', '', '', '', '', 6, '1020000308', '', '', '', 0, '', 1, 1, '', 1, 1, 1, '', '', '', '3143007931-3133470202', 1, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(286, 'default.png', 'MARIANA', 'URREA BECERRA', '', '', '', NULL, NULL, NULL, NULL, 1, '2019-03-15 15:37:28', 1, '2019-03-01', 7, NULL, '', 1, 0, 1, 1, 1, 1, 0, '0000-00-00', '', '', '', '', 6, '1025148270', '', '', '', 0, '', 1, 1, '', 1, 1, 1, '', '', '', '3175532854-3153400794', 1, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(287, 'default.png', 'BREYNER	JOHAO', 'VARGAS	ESPEJO', '', '', '', NULL, NULL, NULL, NULL, 1, '2019-03-15 15:38:27', 1, '2019-03-01', 7, NULL, '', 1, 0, 1, 1, 1, 1, 0, '0000-00-00', '', '', '', '', 6, '1016058371', '', '', '', 0, '', 1, 1, '', 1, 1, 1, '', '', '', '3123553765-3223070101', 1, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(288, 'default.png', 'SARA', 'VARGAS	FONSECA', '', '', '', NULL, NULL, NULL, NULL, 1, '2019-03-15 15:40:43', 1, '2019-03-01', 7, NULL, '', 1, 0, 1, 1, 1, 1, 0, '0000-00-00', '', '', '', '', 6, '1021399676', '', '', '', 0, '', 1, 1, '', 1, 1, 1, '', '', '', '3017009101-3202473573', 1, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(289, 'default.png', 'JUAN	DAVID ALEXIS', 'VEGA	CASTRO', '', '', '', NULL, NULL, NULL, NULL, 1, '2019-03-15 15:42:00', 1, '2019-03-01', 7, NULL, '', 1, 0, 1, 1, 1, 1, 0, '0000-00-00', '', '', '', '', 6, '1034666640', '', '', '', 0, '', 1, 1, '', 1, 1, 1, '', '', '4395488', '3166066114', 1, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(290, 'default.png', 'SAMUEL	FELIPE', 'VILLADA	JARAMILLO', '', '', '', NULL, NULL, NULL, NULL, 1, '2019-03-15 15:43:00', 1, '2019-03-01', 7, NULL, '', 1, 0, 1, 1, 1, 1, 0, '0000-00-00', '', '', '', '', 6, '1016065169', '', '', '', 0, '', 1, 1, '', 1, 1, 1, '', '', '2954744-5911473', '3204472811', 1, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(291, 'default.png', 'JUAN	CAMILO', 'ZULETA	ARANGO', '', '', '', NULL, NULL, NULL, NULL, 1, '2019-03-15 15:43:51', 1, '2019-03-01', 7, NULL, '', 1, 0, 1, 1, 1, 1, 0, '0000-00-00', '', '', '', '', 6, '1145931040', '', '', '', 0, '', 1, 1, '', 1, 1, 1, '', '', '', '3186619636', 1, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(292, 'default.png', 'VALERIA', 'GIRALDO	GUTIÃ‰RREZ', '', '', '', NULL, NULL, NULL, NULL, 1, '2019-03-15 15:47:42', 1, '2019-03-01', 7, NULL, '', 1, 0, 1, 1, 1, 1, 0, '0000-00-00', '', '', '', '', 6, '1016073443', '', '', '', 0, '', 1, 1, '', 1, 1, 1, '', '', '', '3148075899-3102528171', 1, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(293, 'default.png', 'JOSÃ‰	ALEJANDRO', 'ARANGUREN MEJÃA', '', '', '', NULL, NULL, NULL, NULL, 1, '2019-03-15 15:50:34', 1, '2019-03-01', 8, NULL, '', 1, 0, 1, 1, 1, 1, 0, '0000-00-00', '', '', '', '', 6, '1028871699', '', '', '', 0, '', 1, 1, '', 1, 1, 1, '', '', '', '3213171693-3202963135', 1, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(294, 'default.png', 'JUAN	DAVID', 'BARON	BETANCOURT', '', '', '', NULL, NULL, NULL, NULL, 1, '2019-03-15 15:51:40', 1, '2019-03-01', 8, NULL, '', 1, 0, 1, 1, 1, 1, 0, '0000-00-00', '', '', '', '', 6, '1028946344', '', '', '', 0, '', 1, 1, '', 1, 1, 1, '', '', '', '3107990054-3227786555', 1, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(295, 'default.png', 'SAMUEL	ARUKANHERU', 'BUSTOS	GUTIÃ‰RREZ', '', '', '', NULL, NULL, NULL, NULL, 1, '2019-03-15 15:52:28', 1, '2019-03-01', 8, NULL, '', 1, 0, 1, 1, 1, 1, 0, '0000-00-00', '', '', '', '', 6, '1016044967', '', '', '', 0, '', 1, 1, '', 1, 1, 1, '', '', '', '3103531929-3123800922', 1, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(296, 'default.png', 'TOMAS	FELIPE', 'CAMACHO	ARIZA', '', '', '', NULL, NULL, NULL, NULL, 1, '2019-03-15 15:54:30', 1, '2019-03-01', 8, NULL, '', 1, 0, 1, 1, 1, 1, 0, '0000-00-00', '', '', '', '', 6, '1100482268', '', '', '', 0, '', 1, 1, '', 1, 1, 1, '', '', '', '3005868228-3143117162', 1, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(297, 'default.png', 'IVÃN	CAMILO', 'CAPERA	MORENO', '', '', '', NULL, NULL, NULL, NULL, 1, '2019-03-15 15:55:20', 1, '2019-03-01', 8, NULL, '', 1, 0, 1, 1, 1, 1, 0, '0000-00-00', '', '', '', '', 6, '1023116107', '', '', '', 0, '', 1, 1, '', 1, 1, 1, '', '', '', '3187334898', 1, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(298, 'default.png', 'SAMUEL	STIVEN', 'CÃRDENAS	MEDINA', '', '', '', NULL, NULL, NULL, NULL, 1, '2019-03-15 15:56:09', 1, '2019-03-01', 8, NULL, '', 1, 0, 1, 1, 1, 1, 0, '0000-00-00', '', '', '', '', 6, '1016055100', '', '', '', 0, '', 1, 1, '', 1, 1, 1, '', '', '', '3201622456-3115208253', 1, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(299, 'default.png', 'NATHALY	SOFIA', 'COLMENARES	GONZALES', '', '', '', NULL, NULL, NULL, NULL, 1, '2019-03-15 15:57:16', 1, '2019-03-01', 8, NULL, '', 1, 0, 1, 1, 1, 1, 0, '0000-00-00', '', '', '', '', 6, '1028403542', '', '', '', 0, '', 1, 1, '', 1, 1, 1, '', '', '', '', 1, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(300, 'default.png', 'DANNA	GABRIELA', 'CRISTANCHO	MOLINA', '', '', '', NULL, NULL, NULL, NULL, 1, '2019-03-15 15:58:08', 1, '2019-03-01', 8, NULL, '', 1, 0, 1, 1, 1, 1, 0, '0000-00-00', '', '', '', '', 6, '1019999443', '', '', '', 0, '', 1, 1, '', 1, 1, 1, '', '', '', '3202809212-3102435500', 1, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(301, 'default.png', 'WUILTON DANIEL', 'FLECHAS	NIÃ‘O', '', '', '', NULL, NULL, NULL, NULL, 1, '2019-03-15 15:59:12', 1, '2019-03-01', 8, NULL, '', 1, 0, 1, 1, 1, 1, 0, '0000-00-00', '', '', '', '', 6, '1010966877', '', '', '', 0, '', 1, 1, '', 1, 1, 1, '', '', '', '3125784405-3144798067', 1, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(302, 'default.png', 'TATIANA', 'GAÃ‘AN	GARZÃ“N', '', '', '', NULL, NULL, NULL, NULL, 1, '2019-03-15 16:00:17', 1, '2019-03-01', 8, NULL, '', 1, 0, 1, 1, 1, 1, 0, '0000-00-00', '', '', '', '', 6, '1019999423', '', '', '', 0, '', 1, 1, '', 1, 1, 1, '', '', '', '3103133282-3148801292', 1, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(303, 'default.png', 'MARÃA ISSABELLA', 'GUEVARA	AMÃ“RTEGUI', '', '', '', NULL, NULL, NULL, NULL, 1, '2019-03-15 16:01:16', 1, '2019-03-01', 8, NULL, '', 1, 0, 1, 1, 1, 1, 0, '0000-00-00', '', '', '', '', 6, '1013132793', '', '', '', 0, '', 1, 1, '', 1, 1, 1, '', '', '', '3123412825-3102909286', 1, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(304, 'default.png', 'HEIDY	MARIANA', 'GUZMÃN	PASACHOA', '', '', '', NULL, NULL, NULL, NULL, 1, '2019-03-15 16:05:13', 1, '2019-03-01', 8, NULL, '', 1, 0, 1, 1, 1, 1, 0, '0000-00-00', '', '', '', '', 6, '1028492971', '', '', '', 0, '', 1, 1, '', 1, 1, 1, '', '', '', '3213783682', 1, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(305, 'default.png', 'LAURA VALENTINA', 'LEGUIZAMÃ“N	CULMA', '', '', '', NULL, NULL, NULL, NULL, 1, '2019-03-15 16:06:39', 1, '2019-03-01', 8, NULL, '', 1, 0, 1, 1, 1, 1, 0, '0000-00-00', '', '', '', '', 6, '1011208632', '', '', '', 0, '', 1, 1, '', 1, 1, 1, '', '', '', '3132790922-3212494074', 1, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(306, 'default.png', 'NICOLE	ANDREA', 'LIZCANO	BASTO', '', '', '', NULL, NULL, NULL, NULL, 1, '2019-03-15 16:07:38', 1, '2019-03-01', 8, NULL, '', 1, 0, 1, 1, 1, 1, 0, '0000-00-00', '', '', '', '', 6, '1011206909', '', '', '', 0, '', 1, 1, '', 1, 1, 1, '', '', '', '3058137625-3045578183', 1, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(307, 'default.png', 'LUIS	SANTIAGO', 'ORTIZ	SÃNCHEZ', '', '', '', NULL, NULL, NULL, NULL, 1, '2019-03-15 16:08:30', 1, '2019-03-01', 8, NULL, '', 1, 0, 1, 1, 1, 1, 0, '0000-00-00', '', '', '', '', 6, '1024523015', '', '', '', 0, '', 1, 1, '', 1, 1, 1, '', '', '', '3135210744-3194250551', 1, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(308, 'default.png', 'GABRIEL	DAVID', 'PEÃ‘A	PORRAS', '', '', '', NULL, NULL, NULL, NULL, 1, '2019-03-15 16:09:28', 1, '2019-03-01', 8, NULL, '', 1, 0, 1, 1, 1, 1, 0, '0000-00-00', '', '', '', '', 6, '1016957897', '', '', '', 0, '', 1, 1, '', 1, 1, 1, '', '', '', '3184389779', 1, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(309, 'default.png', 'DANIELA', 'PINZÃ“N	LARA', '', '', '', NULL, NULL, NULL, NULL, 1, '2019-03-15 16:10:20', 1, '2019-03-01', 8, NULL, '', 1, 0, 1, 1, 1, 1, 0, '0000-00-00', '', '', '', '', 6, '1021683236', '', '', '', 0, '', 1, 1, '', 1, 1, 1, '', '', '', '3008490160-3057134484', 1, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(310, 'default.png', 'KAREN	NATHALIA', 'PRADA RODRÃGUEZ', '', '', '', NULL, NULL, NULL, NULL, 1, '2019-03-15 16:12:13', 1, '2019-03-01', 8, NULL, '', 1, 0, 1, 1, 1, 1, 0, '0000-00-00', '', '', '', '', 6, '1027286026', '', '', '', 0, '', 1, 1, '', 1, 1, 1, '', '', '', '3212208610-3219360305', 1, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(311, 'default.png', 'JHERALDYN', 'PRIETO	BALLESTEROS', '', '', '', NULL, NULL, NULL, NULL, 1, '2019-03-15 16:15:14', 1, '2019-03-01', 8, NULL, '', 1, 0, 1, 1, 1, 1, 0, '0000-00-00', '', '', '', '', 6, '1016053567', '', '', '', 0, '', 1, 1, '', 1, 1, 1, '', '', '', '3196162603-3202082222', 1, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(312, 'default.png', 'HANNY	VALERIA', 'QUEVEDO	MUÃ‘OZ', '', '', '', NULL, NULL, NULL, NULL, 1, '2019-03-15 16:16:03', 1, '2019-03-01', 8, NULL, '', 1, 0, 1, 1, 1, 1, 0, '0000-00-00', '', '', '', '', 6, '1019999804', '', '', '', 0, '', 1, 1, '', 1, 1, 1, '', '', '', '3204579928-3175039225', 1, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(313, 'default.png', 'SAMUEL	ALIM', 'RIVERA	CALDERON', '', '', '', NULL, NULL, NULL, NULL, 1, '2019-03-15 16:16:56', 1, '2019-03-01', 8, NULL, '', 1, 0, 1, 1, 1, 1, 0, '0000-00-00', '', '', '', '', 6, '1016044335', '', '', '', 0, '', 1, 1, '', 1, 1, 1, '', '', '', '3118991363', 1, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(314, 'default.png', 'VALERY	TATIANA', 'RIVERA	RUEDA', '', '', '', NULL, NULL, NULL, NULL, 1, '2019-03-15 16:17:54', 1, '2019-03-01', 8, NULL, '', 1, 0, 1, 1, 1, 1, 0, '0000-00-00', '', '', '', '', 6, '1019999357', '', '', '', 0, '', 1, 1, '', 1, 1, 1, '', '', '', '3106274711-3142137799', 1, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(315, 'default.png', 'DANNA	VALENTINA', 'ROBLEDO	SANABRIA', '', '', '', NULL, NULL, NULL, NULL, 1, '2019-03-15 16:18:38', 1, '2019-03-01', 8, NULL, '', 1, 0, 1, 1, 1, 1, 0, '0000-00-00', '', '', '', '', 6, '1028871466', '', '', '', 0, '', 1, 1, '', 1, 1, 1, '', '', '', '3204187187-3104783914', 1, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(316, 'default.png', 'ANDRES	FELIPE', 'RODRÃGUEZ	ARAQUE', '', '', '', NULL, NULL, NULL, NULL, 1, '2019-03-15 16:19:33', 1, '2019-03-01', 8, NULL, '', 1, 0, 1, 1, 1, 1, 0, '0000-00-00', '', '', '', '', 6, '1016047797', '', '', '', 0, '', 1, 1, '', 1, 1, 1, '', '', '', '3112040617-3203138423', 1, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(317, 'default.png', 'DILAN ANDRÃ‰S', 'ROZO	BELTRÃN', '', '', '', NULL, NULL, NULL, NULL, 1, '2019-03-15 16:20:32', 1, '2019-03-01', 8, NULL, '', 1, 0, 1, 1, 1, 1, 0, '0000-00-00', '', '', '', '', 6, '1016058266', '', '', '', 0, '', 1, 1, '', 1, 1, 1, '', '', '', '3114748429-3209859176', 1, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(318, 'default.png', 'SAMMY	ALEJANDRA', 'SAAVEDRA	ESPINOSA', '', '', '', NULL, NULL, NULL, NULL, 1, '2019-03-15 16:21:33', 1, '2019-03-01', 8, NULL, '', 1, 0, 1, 1, 1, 1, 0, '0000-00-00', '', '', '', '', 6, '1016055537', '', '', '', 0, '', 1, 1, '', 1, 1, 1, '', '', '', '3108090421-3142096333', 1, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(319, 'default.png', 'ALEJANDRA', 'TORRES	CRUZ', '', '', '', NULL, NULL, NULL, NULL, 1, '2019-03-15 16:22:26', 1, '2019-03-01', 8, NULL, '', 1, 0, 1, 1, 1, 1, 0, '0000-00-00', '', '', '', '', 6, '1019999654', '', '', '', 0, '', 1, 1, '', 1, 1, 1, '', '', '', '3124078064-3115396517', 1, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(320, 'default.png', 'JHOSEPH	DAMIAN', 'VALENCIA	OSORIO', '', '', '', NULL, NULL, NULL, NULL, 1, '2019-03-15 16:23:23', 1, '2019-03-01', 8, NULL, '', 1, 0, 1, 1, 1, 1, 0, '0000-00-00', '', '', '', '', 6, '1016042940', '', '', '', 0, '', 1, 1, '', 1, 1, 1, '', '', '', '3144787063', 1, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(321, 'default.png', 'SANTIAGO', 'VARGAS	GONZÃLEZ', '', '', '', NULL, NULL, NULL, NULL, 1, '2019-03-15 16:24:25', 1, '2019-03-01', 8, NULL, '', 1, 0, 1, 1, 1, 1, 0, '0000-00-00', '', '', '', '', 6, ' 1188214033 ', '', '', '', 0, '', 1, 1, '', 1, 1, 1, '', '', '3861928', '', 1, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(322, 'default.png', 'ANDRÃ‰S	MAURICIO', 'VILLAMIL	BELLO', '', '', '', NULL, NULL, NULL, NULL, 1, '2019-03-15 16:34:17', 1, '2019-03-01', 8, NULL, '', 1, 0, 1, 1, 1, 1, 0, '0000-00-00', '', '', '', '', 6, '1019999347', '', '', '', 0, '', 1, 1, '', 1, 1, 1, '', '', '', '3112622958-3134329600', 1, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(323, 'default.png', 'DANNA	GABRIELA', 'ZABALETA	GUERRERO', '', '', '', NULL, NULL, NULL, NULL, 1, '2019-03-15 16:35:09', 1, '2019-03-01', 8, NULL, '', 1, 0, 1, 1, 1, 1, 0, '0000-00-00', '', '', '', '', 6, '1016053995', '', '', '', 0, '', 1, 1, '', 1, 1, 1, '', '', '', '3107907836-3112385448', 1, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(324, 'default.png', 'JUDY	VIVIANA', 'ACUÃ‘A	SUESCUN', '', '', '', NULL, NULL, NULL, NULL, 1, '2019-03-15 16:36:08', 1, '2019-03-01', 8, NULL, '', 1, 0, 1, 1, 1, 1, 0, '0000-00-00', '', '', '', '', 6, '1106782203', '', '', '', 0, '', 1, 1, '', 1, 1, 1, '', '', '', '3232153808', 1, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(325, 'default.png', 'SAMUEL	ESTEBAN', 'ALAPE	MARTÃNEZ', '', '', '', NULL, NULL, NULL, NULL, 1, '2019-03-15 16:36:54', 1, '2019-03-01', 8, NULL, '', 1, 0, 1, 1, 1, 1, 0, '0000-00-00', '', '', '', '', 6, '1019081944', '', '', '', 0, '', 1, 1, '', 1, 1, 1, '', '', '5412969', '3508556554', 1, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(326, 'default.png', 'ANDRÃ‰S	FELIPE', 'ALARCÃ“N	USAQUÃ‰N', '', '', '', NULL, NULL, NULL, NULL, 1, '2019-03-15 16:37:59', 1, '2019-03-01', 8, NULL, '', 1, 0, 1, 1, 1, 1, 0, '0000-00-00', '', '', '', '', 6, '1025147456', '', '', '', 0, '', 1, 1, '', 1, 1, 1, '', '', '', '3112462080-3125194538', 1, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(327, 'default.png', 'JHOAN	CAMILO', 'ALFONSO	GRANADOS', '', '', '', NULL, NULL, NULL, NULL, 1, '2019-03-15 16:38:51', 1, '2019-03-01', 8, NULL, '', 1, 0, 1, 1, 1, 1, 0, '0000-00-00', '', '', '', '', 6, '1029148792', '', '', '', 0, '', 1, 1, '', 1, 1, 1, '', '', '', '3194103809-3102658046', 1, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(328, 'default.png', 'SARA	SOFIA', 'ANGARITA	SUAREZ', '', '', '', NULL, NULL, NULL, NULL, 1, '2019-03-15 16:39:39', 1, '2019-03-01', 8, NULL, '', 1, 0, 1, 1, 1, 1, 0, '0000-00-00', '', '', '', '', 6, '1014875931', '', '', '', 0, '', 1, 1, '', 1, 1, 1, '', '', '', '3053210224-3108043771', 1, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(329, 'default.png', 'KEVIN	MAURICIO', 'BARBOSA	ROJAS', '', '', '', NULL, NULL, NULL, NULL, 1, '2019-03-15 16:40:38', 1, '2019-03-01', 8, NULL, '', 1, 0, 1, 1, 1, 1, 0, '0000-00-00', '', '', '', '', 5, '1016043951', '', '', '', 0, '', 1, 1, '', 1, 1, 1, '', '', '', '3124962319-3143116457', 1, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(330, 'default.png', 'MIGUEL	ÃNGEL', 'BELTRÃN	GUERRERO', '', '', '', NULL, NULL, NULL, NULL, 1, '2019-03-15 16:41:22', 1, '2019-03-01', 8, NULL, '', 1, 0, 1, 1, 1, 1, 0, '0000-00-00', '', '', '', '', 6, '1023244664', '', '', '', 0, '', 1, 1, '', 1, 1, 1, '', '', '', '3204544852-3115355466', 1, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(331, 'default.png', 'ARIADNA	DEL PILAR', 'CALDERÃ“N	CÃ“RDOBA', '', '', '', NULL, NULL, NULL, NULL, 1, '2019-03-15 16:42:36', 1, '2019-03-01', 8, NULL, '', 1, 0, 1, 1, 1, 1, 0, '0000-00-00', '', '', '', '', 6, '1195463003', '', '', '', 0, '', 1, 1, '', 1, 1, 1, '', '', '', '3228164823-3107521657', 1, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(332, 'default.png', 'MARÃA	PAULA', 'CARRANZA	ÃLVAREZ', '', '', '', NULL, NULL, NULL, NULL, 1, '2019-03-15 16:43:31', 1, '2019-03-01', 8, NULL, '', 1, 0, 1, 1, 1, 1, 0, '0000-00-00', '', '', '', '', 6, '1020871130', '', '', '', 0, '', 1, 1, '', 1, 1, 1, '', '', '', '3184521647-3133410673', 1, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(333, 'default.png', 'DIEGO	ALEJANDRO', 'CASTRO	HERNÃNDEZ', '', '', '', NULL, NULL, NULL, NULL, 1, '2019-03-15 16:44:37', 1, '2019-03-01', 8, NULL, '', 1, 0, 1, 1, 1, 1, 0, '0000-00-00', '', '', '', '', 6, '1070610619', '', '', '', 0, '', 1, 1, '', 1, 1, 1, '', '', '', '3184521647-3133410673', 1, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(334, 'default.png', 'NICOL	DANIELA', 'FIGUEROA	HIDALGO', '', '', '', NULL, NULL, NULL, NULL, 1, '2019-03-15 16:45:28', 1, '2019-03-01', 8, NULL, '', 1, 0, 1, 1, 1, 1, 0, '0000-00-00', '', '', '', '', 6, '1016042467', '', '', '', 0, '', 1, 1, '', 1, 1, 1, '', '', '', '3138170050-3123294039', 1, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(335, 'default.png', 'PAULA	ALEJANDRA', 'GONZÃLEZ	PATIÃ‘O', '', '', '', NULL, NULL, NULL, NULL, 1, '2019-03-15 16:46:34', 1, '2019-03-01', 8, NULL, '', 1, 0, 1, 1, 1, 1, 0, '0000-00-00', '', '', '', '', 6, '1028870402', '', '', '', 0, '', 1, 1, '', 1, 1, 1, '', '', '', '3115157784-3143877919', 1, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(336, 'default.png', 'JUAN	NICOLÃS', 'GUTIÃ‰RREZ	GARZÃ“N', '', '', '', NULL, NULL, NULL, NULL, 1, '2019-03-15 16:47:13', 1, '2019-03-01', 8, NULL, '', 1, 0, 1, 1, 1, 1, 0, '0000-00-00', '', '', '', '', 6, '1019999462', '', '', '', 0, '', 1, 1, '', 1, 1, 1, '', '', '', '3124403358-3203689778', 1, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(337, 'default.png', 'NICOLAS	ANDRES', 'HENAO	BALLESTEROS', '', '', '', NULL, NULL, NULL, NULL, 1, '2019-03-15 16:48:09', 1, '2019-03-01', 8, NULL, '', 1, 0, 1, 1, 1, 1, 0, '0000-00-00', '', '', '', '', 6, '1016053565', '', '', '', 0, '', 1, 1, '', 1, 1, 1, '', '', '', '3008482185-3132385716', 1, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(338, 'default.png', 'GABRIELA	ALEXANDRA', 'HORTUA	GUIO', '', '', '', NULL, NULL, NULL, NULL, 1, '2019-03-15 16:48:53', 1, '2019-03-01', 8, NULL, '', 1, 0, 1, 1, 1, 1, 0, '0000-00-00', '', '', '', '', 6, '1072895396', '', '', '', 0, '', 1, 1, '', 1, 1, 1, '', '', '', '3203910746-3105768072', 1, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(339, 'default.png', 'THOMAS	DAVID', 'LEÃ“N	RUIZ', '', '', '', NULL, NULL, NULL, NULL, 1, '2019-03-15 16:49:49', 1, '2019-03-01', 8, NULL, '', 1, 0, 1, 1, 1, 1, 0, '0000-00-00', '', '', '', '', 6, '1188213659', '', '', '', 0, '', 1, 1, '', 1, 1, 1, '', '', '', '3108808601-3103344202', 1, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(340, 'default.png', 'SARA	VALENTINA', 'MARTÃNEZ	MORENO', '', '', '', NULL, NULL, NULL, NULL, 1, '2019-03-15 16:50:39', 1, '2019-03-01', 8, NULL, '', 1, 0, 1, 1, 1, 1, 0, '0000-00-00', '', '', '', '', 6, '1028900502', '', '', '', 0, '', 1, 1, '', 1, 1, 1, '', '', '', '3186272882-3108174025', 1, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(341, 'default.png', 'LORENT	SOFIA', 'MORA	ARATECO', '', '', '', NULL, NULL, NULL, NULL, 1, '2019-03-15 16:51:31', 1, '2019-03-01', 8, NULL, '', 1, 0, 1, 1, 1, 1, 0, '0000-00-00', '', '', '', '', 6, '1016051846', '', '', '', 0, '', 1, 1, '', 1, 1, 1, '', '', '', '3209442638-3132493410', 1, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(342, 'default.png', 'ISABELLA', 'MORALES	VARGAS', '', '', '', NULL, NULL, NULL, NULL, 1, '2019-03-15 16:52:16', 1, '2019-03-01', 8, NULL, '', 1, 0, 1, 1, 1, 1, 0, '0000-00-00', '', '', '', '', 6, '1028492877', '', '', '', 0, '', 1, 1, '', 1, 1, 1, '', '', '', '3144537435-3203022524', 1, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(343, 'default.png', 'SAMUEL	ALEJANDRO', 'MORENO	ZARATE', '', '', '', NULL, NULL, NULL, NULL, 1, '2019-03-15 16:53:17', 1, '2019-03-01', 8, NULL, '', 1, 0, 1, 1, 1, 1, 0, '0000-00-00', '', '', '', '', 6, '1028900833', '', '', '', 0, '', 1, 1, '', 1, 1, 1, '', '', '', '3204851477-3104781112', 1, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(344, 'default.png', 'DANNA	MICHELLE', 'PADILLA	DIAZ', '', '', '', NULL, NULL, NULL, NULL, 1, '2019-03-15 16:55:00', 1, '2019-03-01', 8, NULL, '', 1, 0, 1, 1, 1, 1, 0, '0000-00-00', '', '', '', '', 6, '1032682912', '', '', '', 0, '', 1, 1, '', 1, 1, 1, '', '', '', '3024594366-3132266759', 1, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(345, 'default.png', 'MARIA	JOSE', 'PEREZ	PARRA', '', '', '', NULL, NULL, NULL, NULL, 1, '2019-03-15 16:55:52', 1, '2019-03-01', 8, NULL, '', 1, 0, 1, 1, 1, 1, 0, '0000-00-00', '', '', '', '', 6, '1019999776', '', '', '', 0, '', 1, 1, '', 1, 1, 1, '', '', '', '3137139751-3102424689', 1, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(346, 'default.png', 'MARIANA', 'PINTO	SASTOQUE', '', '', '', NULL, NULL, NULL, NULL, 1, '2019-03-15 16:56:47', 1, '2019-03-01', 8, NULL, '', 1, 0, 1, 1, 1, 1, 0, '0000-00-00', '', '', '', '', 6, '1019999422', '', '', '', 0, '', 1, 1, '', 1, 1, 1, '', '', '', '3214313985-3105773157', 1, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(347, 'default.png', 'DIEGO	ALEJANDRO', 'PINZÃ“N	NIETO', '', '', '', NULL, NULL, NULL, NULL, 1, '2019-03-15 16:57:40', 1, '2019-03-01', 8, NULL, '', 1, 0, 1, 1, 1, 1, 0, '0000-00-00', '', '', '', '', 6, '1022379494', '', '', '', 0, '', 1, 1, '', 1, 1, 1, '', '', '', '3013278911-3102131874', 1, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(348, 'default.png', 'DEIVID	SANTIAGO', 'REYES	ESPEJO', '', '', '', NULL, NULL, NULL, NULL, 1, '2019-03-15 16:58:39', 1, '2019-03-01', 8, NULL, '', 1, 0, 1, 1, 1, 1, 0, '0000-00-00', '', '', '', '', 6, '1011205919', '', '', '', 0, '', 1, 1, '', 1, 1, 1, '', '', '', '3003832807-3115747756', 1, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(349, 'default.png', 'DANIEL	FELIPE', 'RODRÃGUEZ	MUÃ‘OZ', '', '', '', NULL, NULL, NULL, NULL, 1, '2019-03-15 16:59:49', 1, '2019-03-01', 8, NULL, '', 1, 0, 1, 1, 1, 1, 0, '0000-00-00', '', '', '', '', 6, '1016048949', '', '', '', 0, '', 1, 1, '', 1, 1, 1, '', '', '', '3193200849-3204959978', 1, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(350, 'default.png', 'JUAN	SEBASTIÃN', 'RODRÃGUEZ	SUAREZ', '', '', '', NULL, NULL, NULL, NULL, 1, '2019-03-15 17:00:35', 1, '2019-03-01', 8, NULL, '', 1, 0, 1, 1, 1, 1, 0, '0000-00-00', '', '', '', '', 6, '1016052315', '', '', '', 0, '', 1, 1, '', 1, 1, 1, '', '', '', '3103090600-3115407078', 1, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(351, 'default.png', 'DAVID', 'ROMERO	GÃ“MEZ', '', '', '', NULL, NULL, NULL, NULL, 1, '2019-03-15 17:01:35', 1, '2019-03-01', 8, NULL, '', 1, 0, 1, 1, 1, 1, 0, '0000-00-00', '', '', '', '', 6, '1016056012', '', '', '', 0, '', 1, 1, '', 1, 1, 1, '', '', '', '3212780765-3193748070', 1, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(352, 'default.png', 'GIBRAN	DAVID', 'SÃNCHEZ	ARDILA', '', '', '', NULL, NULL, NULL, NULL, 1, '2019-03-15 17:08:50', 1, '2019-03-01', 8, NULL, '', 1, 0, 1, 1, 1, 1, 0, '0000-00-00', '', '', '', '', 6, '1011211365', '', '', '', 0, '', 1, 1, '', 1, 1, 1, '', '', '', '3122570427-3132551813', 1, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(353, 'default.png', 'ISABELLA', 'SÃNCHEZ	MAHECHA', '', '', '', NULL, NULL, NULL, NULL, 1, '2019-03-15 17:09:42', 1, '2019-03-01', 8, NULL, '', 1, 0, 1, 1, 1, 1, 0, '0000-00-00', '', '', '', '', 6, '1028493420', '', '', '', 0, '', 1, 1, '', 1, 1, 1, '', '', '', '3114994439-3015072772', 1, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(354, 'default.png', 'MATEO', 'VARGAS	FONSECA', '', '', '', NULL, NULL, NULL, NULL, 1, '2019-03-15 17:10:43', 1, '2019-03-01', 8, NULL, '', 1, 0, 1, 1, 1, 1, 0, '0000-00-00', '', '', '', '', 6, '1141120082', '', '', '', 0, '', 1, 1, '', 1, 1, 1, '', '', '', '3017009101-3202473573', 1, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(355, 'default.png', 'JHOSUA	JOEL', 'AGUDELO	GARZÃ“N', '', '', '', NULL, NULL, NULL, NULL, 1, '2019-03-15 17:14:29', 1, '2019-03-01', 9, NULL, '', 1, 0, 1, 1, 1, 1, 0, '0000-00-00', '', '', '', '', 6, '1019997993', '', '', '', 0, '', 1, 1, '', 1, 1, 1, '', '', '2679327', '3124259938', 1, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(356, 'default.png', 'MAILYN	SARAY', 'BERNAL	MONSALVE', '', '', '', NULL, NULL, NULL, NULL, 1, '2019-03-15 17:15:26', 1, '2019-03-01', 9, NULL, '', 1, 0, 1, 1, 1, 1, 0, '0000-00-00', '', '', '', '', 1, '1016041878', '', '', '', 0, '', 1, 1, '', 1, 1, 1, '', '', '2985656', '2985656-3138593761', 1, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(357, 'default.png', 'JUAN	SEBASTIAN', 'BUITRAGO	MARTINEZ', '', '', '', NULL, NULL, NULL, NULL, 1, '2019-03-15 17:16:16', 1, '2019-03-01', 9, NULL, '', 1, 0, 1, 1, 1, 1, 0, '0000-00-00', '', '', '', '', 1, '1025145972', '', '', '', 0, '', 1, 1, '', 1, 1, 1, '', '', '', '3114723471-3112939646', 1, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(358, 'default.png', 'JOEL	STIVEN', 'CAMACHO	CARO', '', '', '', NULL, NULL, NULL, NULL, 1, '2019-03-15 17:17:17', 1, '2019-03-01', 9, NULL, '', 1, 0, 1, 1, 1, 1, 0, '0000-00-00', '', '', '', '', 1, '1055127844', '', '', '', 0, '', 1, 1, '', 1, 1, 1, '', '', '', '3212043944', 1, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(359, 'default.png', 'LAURA	SOFIA', 'CAMARGO	GARZON', '', '', '', NULL, NULL, NULL, NULL, 1, '2019-03-15 17:19:00', 1, '2019-03-01', 9, NULL, '', 1, 0, 1, 1, 1, 1, 0, '0000-00-00', '', '', '', '', 1, '1028864072', '', '', '', 0, '', 1, 1, '', 1, 1, 1, '', '', '2982853', '3182986086', 1, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(360, 'default.png', 'MARIANA', 'CORREDOR	HERNÃNDEZ', '', '', '', NULL, NULL, NULL, NULL, 1, '2019-03-15 17:20:25', 1, '2019-03-01', 9, NULL, '', 1, 0, 1, 1, 1, 1, 0, '0000-00-00', '', '', '', '', 1, '1014483199', '', '', '', 0, '', 1, 1, '', 1, 1, 1, '', '', '418211', '418211-3212066934', 1, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(361, 'default.png', 'GABRIEL	ALEJANDRO', 'CRISTANCHO	PEDROZA', '', '', '', NULL, NULL, NULL, NULL, 1, '2019-03-15 17:21:26', 1, '2019-03-01', 9, NULL, '', 1, 0, 1, 1, 1, 1, 0, '0000-00-00', '', '', '', '', 1, '1019999032', '', '', '', 0, '', 1, 1, '', 1, 1, 1, '', '', '4643882', '4643882-3132257169', 1, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(362, 'default.png', 'NICOLÃS	ANDRÃ‰S', 'DIMATÃ‰	BUITRAGO', '', '', '', NULL, NULL, NULL, NULL, 1, '2019-03-15 17:22:03', 1, '2019-03-01', 9, NULL, '', 1, 0, 1, 1, 1, 1, 0, '0000-00-00', '', '', '', '', 1, ' 1.029.060.036 ', '', '', '', 0, '', 1, 1, '', 1, 1, 1, '', '', '', '3134398584-3115816021', 1, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(363, 'default.png', 'JUSTIN	SANTIAGO', 'FAJARDO	PEREIRA', '', '', '', NULL, NULL, NULL, NULL, 1, '2019-03-15 17:22:52', 1, '2019-03-01', 9, NULL, '', 1, 0, 1, 1, 1, 1, 0, '0000-00-00', '', '', '', '', 1, '1019999140', '', '', '', 0, '', 1, 1, '', 1, 1, 1, '', '', '', '3125070974-3204036963', 1, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(364, 'default.png', 'JUANA	MARTINA', 'FUENTES	JEREZ', '', '', '', NULL, NULL, NULL, NULL, 1, '2019-03-15 17:23:42', 1, '2019-03-01', 9, NULL, '', 1, 0, 1, 1, 1, 1, 0, '0000-00-00', '', '', '', '', 1, '1016045136', '', '', '', 0, '', 1, 1, '', 1, 1, 1, '', '', '', '3195704113-3143470307', 1, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(366, 'default.png', 'SARA	ALEXANDRA', 'GARZÃ“N	NAVARRO', '', '', '', NULL, NULL, NULL, NULL, 1, '2019-03-15 17:28:55', 1, '2019-03-01', 9, NULL, '', 1, 0, 1, 1, 1, 1, 0, '0000-00-00', '', '', '', '', 1, '1028868907', '', '', '', 0, '', 1, 1, '', 1, 1, 1, '', '', '', '3184413434-3133881137', 1, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(367, 'default.png', 'CRISTHIAN	CAMILO', 'GÃ“MEZ	GARCÃA', '', '', '', NULL, NULL, NULL, NULL, 1, '2019-03-15 17:30:26', 1, '2019-03-01', 9, NULL, '', 1, 0, 1, 1, 1, 1, 0, '0000-00-00', '', '', '', '', 1, '1028868092', '', '', '', 0, '', 1, 1, '', 1, 1, 1, '', '', '3027660', '3118217585', 1, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(369, 'default.png', 'SANTIAGO', 'GÃ“MEZ	LEMOS', '', '', '', NULL, NULL, NULL, NULL, 1, '2019-03-15 17:38:32', 1, '2019-03-01', 9, NULL, '', 1, 0, 1, 1, 1, 1, 0, '0000-00-00', '', '', '', '', 6, '1025065579', '', '', '', 0, '', 1, 1, '', 1, 1, 1, '', '', '2677020', '3125115417', 1, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(370, 'default.png', 'SANTIAGO', 'HIGUERA	GUZMÃN', '', '', '', NULL, NULL, NULL, NULL, 1, '2019-03-15 17:39:23', 1, '2019-03-01', 9, NULL, '', 1, 0, 1, 1, 1, 1, 0, '0000-00-00', '', '', '', '', 1, '1016956331', '', '', '', 0, '', 1, 1, '', 1, 1, 1, '', '', '4860023', '3158378225', 1, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(371, 'default.png', 'LAUREN	XIMENA', 'JIMÃ‰NEZ	CRUZ', '', '', '', NULL, NULL, NULL, NULL, 1, '2019-03-15 17:41:08', 1, '2019-03-01', 9, NULL, '', 1, 0, 1, 1, 1, 1, 0, '0000-00-00', '', '', '', '', 6, '1055246794', '', '', '', 0, '', 1, 1, '', 1, 1, 1, '', '', '', '3213806499-3142159827', 1, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(372, 'default.png', 'NICOLE	DANIELA', 'LOZANO	SALCEDO', '', '', '', NULL, NULL, NULL, NULL, 1, '2019-03-15 17:42:00', 1, '2019-03-01', 9, NULL, '', 1, 0, 1, 1, 1, 1, 0, '0000-00-00', '', '', '', '', 1, '1020004324', '', '', '', 0, '', 1, 1, '', 1, 1, 1, '', '', '4601597', '3024436592', 1, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(373, 'default.png', 'JAIRO	ENRIQUE', 'MORALES	VARGAS', '', '', '', NULL, NULL, NULL, NULL, 1, '2019-03-15 17:42:51', 1, '2019-03-01', 9, NULL, '', 1, 0, 1, 1, 1, 1, 0, '0000-00-00', '', '', '', '', 1, '1016045240', '', '', '', 0, '', 1, 1, '', 1, 1, 1, '', '', '', '3144182737', 1, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(374, 'default.png', 'THOMAS', 'MORENO	RODRÃGUEZ', '', '', '', NULL, NULL, NULL, NULL, 1, '2019-03-15 17:44:10', 1, '2019-03-01', 9, NULL, '', 1, 0, 1, 1, 1, 1, 0, '0000-00-00', '', '', '', '', 1, '1029147781', '', '', '', 0, '', 1, 1, '', 1, 1, 1, '', '', '3948331', '3219985246', 1, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(375, 'default.png', 'DANIEL	FELIPE', 'NAVARRETE	CESLIS', '', '', '', NULL, NULL, NULL, NULL, 1, '2019-03-15 18:08:54', 1, '2019-03-01', 9, NULL, '', 1, 0, 1, 1, 1, 1, 0, '0000-00-00', '', '', '', '', 1, '1016042058', '', '', '', 0, '', 1, 1, '', 1, 1, 1, '', '', '', '3187543646-3102372171', 1, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(376, 'default.png', 'SERGIO	ISMAEL', 'ORDOÃ‘EZ	RAMÃREZ', '', '', '', NULL, NULL, NULL, NULL, 1, '2019-03-15 18:09:48', 1, '2019-03-01', 9, NULL, '', 1, 0, 1, 1, 1, 1, 0, '0000-00-00', '', '', '', '', 1, '1019997239', '', '', '', 0, '', 1, 1, '', 1, 1, 1, '', '', '', '3177107240-3208650814', 1, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(377, 'default.png', 'NIKOL	MARIANA', 'PINILLA	BELLO', '', '', '', NULL, NULL, NULL, NULL, 1, '2019-03-15 18:10:59', 1, '2019-03-01', 9, NULL, '', 1, 0, 1, 1, 1, 1, 0, '0000-00-00', '', '', '', '', 1, '1026571816', '', '', '', 0, '', 1, 1, '', 1, 1, 1, '', '', '9251298', '3102529794-3102521257', 1, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(378, 'default.png', 'AMY	ALEJANDRA', 'PUERTO	MEJÃA', '', '', '', NULL, NULL, NULL, NULL, 1, '2019-03-15 18:18:03', 1, '2019-03-01', 9, NULL, '', 1, 0, 1, 1, 1, 1, 0, '0000-00-00', '', '', '', '', 1, '1027284210', '', '', '', 0, '', 1, 1, '', 1, 1, 1, '', '', '', '3118527953', 1, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(379, 'default.png', 'MARÃA	JOSÃ‰', 'RIVERA	RODRÃGUEZ', '', '', '', NULL, NULL, NULL, NULL, 1, '2019-03-15 18:18:55', 1, '2019-03-01', 9, NULL, '', 1, 0, 1, 1, 1, 1, 0, '0000-00-00', '', '', '', '', 1, '1016038967', '', '', '', 0, '', 1, 1, '', 1, 1, 1, '', '', '', '3012825881', 1, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(380, 'default.png', 'FABIAN	RICARDO', 'ROMERO	RONDON', '', '', '', NULL, NULL, NULL, NULL, 1, '2019-03-15 18:19:52', 1, '2019-03-01', 9, NULL, '', 1, 0, 1, 1, 1, 1, 0, '0000-00-00', '', '', '', '', 1, '1019997628', '', '', '', 0, '', 1, 1, '', 1, 1, 1, '', '', '9210778', '3125844576', 1, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(381, 'default.png', 'DAVID	ALEJANDRO', 'ROSERO	VARGAS', '', '', '', NULL, NULL, NULL, NULL, 1, '2019-03-15 18:20:49', 1, '2019-03-01', 9, NULL, '', 1, 0, 1, 1, 1, 1, 0, '0000-00-00', '', '', '', '', 1, '1019998984', '', '', '', 0, '', 1, 1, '', 1, 1, 1, '', '', '5475185', '3112581878', 1, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(382, 'default.png', 'MARIANA', 'SÃNCHEZ	RODRÃGUEZ', '', '', '', NULL, NULL, NULL, NULL, 1, '2019-03-15 18:21:43', 1, '2019-03-01', 9, NULL, '', 1, 0, 1, 1, 1, 1, 0, '0000-00-00', '', '', '', '', 1, '1016033489', '', '', '', 0, '', 1, 1, '', 1, 1, 1, '', '', '', '', 1, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(383, 'default.png', 'CESAR	MATÃAS', 'SARMIENTO	BERNAL', '', '', '', NULL, NULL, NULL, NULL, 1, '2019-03-15 18:22:31', 1, '2019-03-01', 9, NULL, '', 1, 0, 1, 1, 1, 1, 0, '0000-00-00', '', '', '', '', 1, '1019999196', '', '', '', 0, '', 1, 1, '', 1, 1, 1, '', '', '', '3143007931-3133470202', 1, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(384, 'default.png', 'GEYDIN	ALEJANDRA', 'SIERRA	BEJARANO', '', '', '', NULL, NULL, NULL, NULL, 1, '2019-03-15 18:23:18', 1, '2019-03-01', 9, NULL, '', 1, 0, 1, 1, 1, 1, 0, '0000-00-00', '', '', '', '', 1, '1028491895', '', '', '', 0, '', 1, 1, '', 1, 1, 1, '', '', '', '3132877129-3102942664', 1, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(385, 'default.png', 'DAIRA	MILENA', 'VILLAMIL	RAMÃREZ', '', '', '', NULL, NULL, NULL, NULL, 1, '2019-03-15 19:29:46', 1, '2019-03-01', 9, NULL, '', 1, 0, 1, 1, 1, 1, 0, '0000-00-00', '', '', '', '', 1, '1025541994', '', '', '', 0, '', 1, 1, '', 1, 1, 1, '', '', '', '3102054361-3102054361', 1, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(386, 'default.png', 'MIGUEL	ANGEL', 'ZAPATA	MORENO', '', '', '', NULL, NULL, NULL, NULL, 1, '2019-03-15 19:30:43', 1, '2019-03-01', 9, NULL, '', 1, 0, 1, 1, 1, 1, 0, '0000-00-00', '', '', '', '', 1, '1201463793', '', '', '', 0, '', 1, 1, '', 1, 1, 1, '', '', '', '3204882634-3222520699', 1, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(387, 'default.png', 'JUAN	DAVID', 'ALARCÃ“N	FELÃX', '', '', '', NULL, NULL, NULL, NULL, 1, '2019-03-15 19:31:40', 1, '2019-03-01', 9, NULL, '', 1, 0, 1, 1, 1, 1, 0, '0000-00-00', '', '', '', '', 1, '1016037751', '', '', '', 0, '', 1, 1, '', 1, 1, 1, '', '', '', '3507631892-3166034648', 1, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(388, 'default.png', 'ISABELA', 'ARAQUE	DIAZ', '', '', '', NULL, NULL, NULL, NULL, 1, '2019-03-15 19:32:31', 1, '2019-03-01', 9, NULL, '', 1, 0, 1, 1, 1, 1, 0, '0000-00-00', '', '', '', '', 1, '1033107016', '', '', '', 0, '', 1, 1, '', 1, 1, 1, '', '', '', '3212766106-3108830373', 1, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(389, 'default.png', 'LUNA	ALEJANDRA', 'BERNAL	RODRÃGUEZ', '', '', '', NULL, NULL, NULL, NULL, 1, '2019-03-15 19:33:51', 1, '2019-03-01', 9, NULL, '', 1, 0, 1, 1, 1, 1, 0, '0000-00-00', '', '', '', '', 1, '1029561260', '', '', '', 0, '', 1, 1, '', 1, 1, 1, '', '', '', '3102692451-3006621822', 1, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(390, 'default.png', 'DEIVI	ALEJANDRO', 'BERNAL	ROJAS', '', '', '', NULL, NULL, NULL, NULL, 1, '2019-03-15 19:34:47', 1, '2019-03-01', 9, NULL, '', 1, 0, 1, 1, 1, 1, 0, '0000-00-00', '', '', '', '', 1, '1016040982', '', '', '', 0, '', 1, 1, '', 1, 1, 1, '', '', '4864309', '3144147089', 1, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(391, 'default.png', 'DIEGO	ANDRÃ‰S', 'CALDERÃ“N	AGUILAR', '', '', '', NULL, NULL, NULL, NULL, 1, '2019-03-15 19:35:42', 1, '2019-03-01', 9, NULL, '', 1, 0, 1, 1, 1, 1, 0, '0000-00-00', '', '', '', '', 1, '1019998483', '', '', '', 0, '', 1, 1, '', 1, 1, 1, '', '', '', '3132161147-3115953112', 1, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(392, 'default.png', 'JONATHAN	DAVID', 'CAMPOS	YARA', '', '', '', NULL, NULL, NULL, NULL, 1, '2019-03-15 19:36:45', 1, '2019-03-01', 9, NULL, '', 1, 0, 1, 1, 1, 1, 0, '0000-00-00', '', '', '', '', 1, '1127792622', '', '', '', 0, '', 1, 1, '', 1, 1, 1, '', '', '', '3138352073', 1, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(393, 'default.png', 'JOSÃ‰	GABRIEL', 'CASTRO	TORRES', '', '', '', NULL, NULL, NULL, NULL, 1, '2019-03-15 19:37:45', 1, '2019-03-01', 9, NULL, '', 1, 0, 1, 1, 1, 1, 0, '0000-00-00', '', '', '', '', 1, '1014876186', '', '', '', 0, '', 1, 1, '', 1, 1, 1, '', '', '2250436', '3103238901', 1, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(394, 'default.png', 'MARIA	PAULA', 'CHAVES	MOLANO', '', '', '', NULL, NULL, NULL, NULL, 1, '2019-03-15 19:38:51', 1, '2019-03-01', 9, NULL, '', 1, 0, 1, 1, 1, 1, 0, '0000-00-00', '', '', '', '', 1, '1019997736', '', '', '', 0, '', 1, 1, '', 1, 1, 1, '', '', '4189680', '3196159932', 1, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(395, 'default.png', 'SAMUEL	EDUARDO', 'DIAZ	MARTÃNEZ', '', '', '', NULL, NULL, NULL, NULL, 1, '2019-03-15 19:39:46', 1, '2019-03-01', 9, NULL, '', 1, 0, 1, 1, 1, 1, 0, '0000-00-00', '', '', '', '', 1, '1025145599', '', '', '', 0, '', 1, 1, '', 1, 1, 1, '', '', '4156717', '3213570582', 1, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(396, 'default.png', 'ANDRÃ‰S	FELIPE', 'DÃAZ	VALERO', '', '', '', NULL, NULL, NULL, NULL, 1, '2019-03-15 19:40:54', 1, '2019-03-01', 9, NULL, '', 1, 0, 1, 1, 1, 1, 0, '0000-00-00', '', '', '', '', 1, '1016053434', '', '', '', 0, '', 1, 1, '', 1, 1, 1, '', '', '2989658', '3213773083', 1, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(397, 'default.png', 'MARÃA	PAULA', 'ESPINOZA	MARTÃNEZ', '', '', '', NULL, NULL, NULL, NULL, 1, '2019-03-15 19:42:03', 1, '2019-03-01', 9, NULL, '', 1, 0, 1, 1, 1, 1, 0, '0000-00-00', '', '', '', '', 1, '1022370535', '', '', '', 0, '', 1, 1, '', 1, 1, 1, '', '', '4223057', '3105568422', 1, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(398, 'default.png', 'VALERIA', 'GAÃ‘AN	GARZÃ“N', '', '', '', NULL, NULL, NULL, NULL, 1, '2019-03-15 19:43:12', 1, '2019-03-01', 9, NULL, '', 1, 0, 1, 1, 1, 1, 0, '0000-00-00', '', '', '', '', 1, '1023244091', '', '', '', 0, '', 1, 1, '', 1, 1, 1, '', '', '6350300', '3118801292', 1, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(399, 'default.png', 'RAFAEL	SANTIAGO', 'GARZÃ“N	ORTEGÃ“N', '', '', '', NULL, NULL, NULL, NULL, 1, '2019-03-15 19:44:11', 1, '2019-03-01', 9, NULL, '', 1, 0, 1, 1, 1, 1, 0, '0000-00-00', '', '', '', '', 1, '1070605125', '', '', '', 0, '', 1, 1, '', 1, 1, 1, '', '', '4217587-5410900', '', 1, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(400, 'default.png', 'ÃNGEL	THOMAS', 'GUERRERO	BERNAL', '', '', '', NULL, NULL, NULL, NULL, 1, '2019-03-15 19:44:58', 1, '2019-03-01', 9, NULL, '', 1, 0, 1, 1, 1, 1, 0, '0000-00-00', '', '', '', '', 1, '1012382168', '', '', '', 0, '', 1, 1, '', 1, 1, 1, '', '', '', '3185218640-3143183267', 1, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(401, 'default.png', 'ISABELLA', 'HERNÃNDEZ	VACCA', '', '', '', NULL, NULL, NULL, NULL, 1, '2019-03-15 19:45:52', 1, '2019-03-01', 9, NULL, '', 1, 0, 1, 1, 1, 1, 0, '0000-00-00', '', '', '', '', 1, '1145925591', '', '', '', 0, '', 1, 1, '', 1, 1, 1, '', '', '', '3108016045-3134481767', 1, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(402, 'default.png', 'DANA	SOFIA', 'JIMÃ‰NEZ	ORTIZ', '', '', '', NULL, NULL, NULL, NULL, 1, '2019-03-15 19:46:56', 1, '2019-03-01', 9, NULL, '', 1, 0, 1, 1, 1, 1, 0, '0000-00-00', '', '', '', '', 1, '1019999301', '', '', '', 0, '', 1, 1, '', 1, 1, 1, '', '', '3926057-7574940', '', 1, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(403, 'default.png', 'DANIEL	ALEJANDRO', 'LEON	OSPINA', '', '', '', NULL, NULL, NULL, NULL, 1, '2019-03-15 19:47:41', 1, '2019-03-01', 9, NULL, '', 1, 0, 1, 1, 1, 1, 0, '0000-00-00', '', '', '', '', 1, '1015423467', '', '', '', 0, '', 1, 1, '', 1, 1, 1, '', '', '4580392', '3208945694', 1, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(404, 'default.png', 'SAMUEL	ANDRÃ‰S', 'MARTÃNEZ	PRIETO', '', '', '', NULL, NULL, NULL, NULL, 1, '2019-03-15 19:48:36', 1, '2019-03-01', 9, NULL, '', 1, 0, 1, 1, 1, 1, 0, '0000-00-00', '', '', '', '', 1, '1016045327', '', '', '', 0, '', 1, 1, '', 1, 1, 1, '', '', '', '3173273928-3214018199', 1, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(405, 'default.png', 'JUAN	ANDRÃ‰S', 'MOLINA	ECHEVERRI', '', '', '', NULL, NULL, NULL, NULL, 1, '2019-03-15 19:49:27', 1, '2019-03-01', 9, NULL, '', 1, 0, 1, 1, 1, 1, 0, '0000-00-00', '', '', '', '', 1, '1016032148', '', '', '', 0, '', 1, 1, '', 1, 1, 1, '', '', '', '3146367055-3016504109', 1, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(406, 'default.png', 'VERÃ“NICA', 'MORENO	CASTELLANOS', '', '', '', NULL, NULL, NULL, NULL, 1, '2019-03-15 19:50:17', 1, '2019-03-01', 9, NULL, '', 1, 0, 1, 1, 1, 1, 0, '0000-00-00', '', '', '', '', 1, '1021399269', '', '', '', 0, '', 1, 1, '', 1, 1, 1, '', '', '', '3118493263-3102860281', 1, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(407, 'default.png', 'MARIAN	NATALIA', 'MURCIA	SALAMANCA', '', '', '', NULL, NULL, NULL, NULL, 1, '2019-03-15 19:51:24', 1, '2019-03-01', 9, NULL, '', 1, 0, 1, 1, 1, 1, 0, '0000-00-00', '', '', '', '', 1, '1016027645', '', '', '', 0, '', 1, 1, '', 1, 1, 1, '', '', '5378503', '3162240060', 1, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `alumn` (`id`, `image`, `name`, `lastname`, `email`, `address`, `phone`, `c1_fullname`, `c1_address`, `c1_phone`, `c1_note`, `is_active`, `created_at`, `user_id`, `fecha_mensualidad`, `idpaquete`, `iva`, `codigo`, `matricula`, `anos`, `sexo`, `lugar_hermanos`, `factor_sangre`, `rh`, `marcar`, `fecha_nacimiento`, `departamento`, `municipio`, `extendida_en_departamento`, `extendida_en_municipio`, `clase_identificacion`, `numero_identificacion`, `depto_residencia`, `localizacion_municipio`, `barrio`, `estrato`, `direccion`, `sisben`, `nivel`, `otras_eps`, `situacion_ano_anterior`, `procedencia`, `reincidente`, `historial`, `padres`, `telefono_fijo`, `celular`, `retiro_alumno`, `madre_nombre`, `madre_acudiente`, `madre_telefono`, `madre_celular`, `madre_ocupacion`, `madre_empresa`, `madre_tel_empresa`, `padre_nombre`, `padre_acudiente`, `padre_telefono`, `padre_celular`, `padre_ocupacion`, `padre_empresa`, `padre_tel_empresa`, `acudiente_nombre`, `acudiente_telefono`, `acudiente_tel_empresa`, `acudiente_parentesco`, `responsable_costos_nombre`, `responsable_costos_parentesco`, `observaciones`) VALUES
(408, 'default.png', 'JHOAN	FERNEY', 'MUSE	MARIN', '', '', '', NULL, NULL, NULL, NULL, 1, '2019-03-15 19:52:20', 1, '2019-03-01', 9, NULL, '', 1, 0, 1, 1, 1, 1, 0, '0000-00-00', '', '', '', '', 1, '1016043975', '', '', '', 0, '', 1, 1, '', 1, 1, 1, '', '', '2671057', '3203455240', 1, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(409, 'default.png', 'EIMMY	VALENTINA', 'ORDOÃ‘EZ	AMAYA', '', '', '', NULL, NULL, NULL, NULL, 1, '2019-03-15 19:56:34', 1, '2019-03-01', 9, NULL, '', 1, 0, 1, 1, 1, 1, 0, '0000-00-00', '', '', '', '', 1, '1019995161', '', '', '', 0, '', 1, 1, '', 1, 1, 1, '', '', '4133141', '3118842619', 1, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(410, 'default.png', 'LUISA	FERNANDA', 'PAZ	SUAREZ', '', '', '', NULL, NULL, NULL, NULL, 1, '2019-03-15 19:57:20', 1, '2019-03-01', 9, NULL, '', 1, 0, 1, 1, 1, 1, 0, '0000-00-00', '', '', '', '', 1, '1028867723', '', '', '', 0, '', 1, 1, '', 1, 1, 1, '', '', '', '3118191223-3102365940', 1, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(411, 'default.png', 'SOFIA', 'PEÃ‘A	AMOROCHO', '', '', '', NULL, NULL, NULL, NULL, 1, '2019-03-15 19:58:04', 1, '2019-03-01', 9, NULL, '', 1, 0, 1, 1, 1, 1, 0, '0000-00-00', '', '', '', '', 1, '1028900251', '', '', '', 0, '', 1, 1, '', 1, 1, 1, '', '', '', '3043536982-3115843636', 1, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(412, 'default.png', 'SABINA', 'PRIETO	GARCIA', '', '', '', NULL, NULL, NULL, NULL, 1, '2019-03-15 19:58:47', 1, '2019-03-01', 9, NULL, '', 1, 0, 1, 1, 1, 1, 0, '0000-00-00', '', '', '', '', 1, '1069645975', '', '', '', 0, '', 1, 1, '', 1, 1, 1, '', '', '', '3226019789-3138553794', 1, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(413, 'default.png', 'PAULA	ANDREA', 'ROMERO	IZQUIERDO', '', '', '', NULL, NULL, NULL, NULL, 1, '2019-03-15 19:59:39', 1, '2019-03-01', 9, NULL, '', 1, 0, 1, 1, 1, 1, 0, '0000-00-00', '', '', '', '', 1, '1019997858', '', '', '', 0, '', 1, 1, '', 1, 1, 1, '', '', '5422538', '3114535937', 1, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(414, 'default.png', 'SEBASTIAN	STEVE', 'SUAREZ	PEREZ', '', '', '', NULL, NULL, NULL, NULL, 1, '2019-03-15 20:00:23', 1, '2019-03-01', 9, NULL, '', 1, 0, 1, 1, 1, 1, 0, '0000-00-00', '', '', '', '', 1, '1019998387', '', '', '', 0, '', 1, 1, '', 1, 1, 1, '', '', '', '3134734370-3138983303', 1, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(415, 'default.png', 'MICHAEL', 'TRIANA	MAHECHA', '', '', '', NULL, NULL, NULL, NULL, 1, '2019-03-15 20:01:12', 1, '2019-03-01', 9, NULL, '', 1, 0, 1, 1, 1, 1, 0, '0000-00-00', '', '', '', '', 1, '1016035713', '', '', '', 0, '', 1, 1, '', 1, 1, 1, '', '', '8070119', '3005570285', 1, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(416, 'default.png', 'MIGUEL	SANTIAGO', 'AMÃ“RTEGUI	PRIETO', '', '', '', NULL, NULL, NULL, NULL, 1, '2019-03-15 20:05:14', 1, '2019-03-01', 10, NULL, '', 1, 0, 1, 1, 1, 1, 0, '0000-00-00', '', '', '', '', 1, '1019995379', '', '', '', 0, '', 1, 1, '', 1, 1, 1, '', '', '', '3209230228-3505279264', 1, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(417, 'default.png', 'LAURA	SOFÃA', 'BARRAGÃN	GARAY', '', '', '', NULL, NULL, NULL, NULL, 1, '2019-03-15 20:06:26', 1, '2019-03-01', 10, NULL, '', 1, 0, 1, 1, 1, 1, 0, '0000-00-00', '', '', '', '', 1, '1019997067', '', '', '', 0, '', 1, 1, '', 1, 1, 1, '', '', '5896000', '3002314975', 1, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(418, 'default.png', 'JULIÃN	NICOLÃS', 'BERNAL	JIMÃ‰NEZ', '', '', '', NULL, NULL, NULL, NULL, 1, '2019-03-15 20:07:14', 1, '2019-03-01', 10, NULL, '', 1, 0, 1, 1, 1, 1, 0, '0000-00-00', '', '', '', '', 1, '1019995124', '', '', '', 0, '', 1, 1, '', 1, 1, 1, '', '', '', '3166012273-3152254540', 1, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(419, 'default.png', 'LUDYS', 'CARO	SANCHEZ', '', '', '', NULL, NULL, NULL, NULL, 1, '2019-03-15 20:08:16', 1, '2019-03-01', 10, NULL, '', 1, 0, 1, 1, 1, 1, 0, '0000-00-00', '', '', '', '', 1, '1085099219', '', '', '', 0, '', 1, 1, '', 1, 1, 1, '', '', '', '3142523036-3144440877', 1, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(420, 'default.png', 'ISABELLA', 'CASTRO	PAZ', '', '', '', NULL, NULL, NULL, NULL, 1, '2019-03-15 20:08:53', 1, '2019-03-01', 10, NULL, '', 1, 0, 1, 1, 1, 1, 0, '0000-00-00', '', '', '', '', 1, '1014867304', '', '', '', 0, '', 1, 1, '', 1, 1, 1, '', '', '', '3134528246-3192464054', 1, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(421, 'default.png', 'JUAN	CARLOS', 'CRISTANCHO	NÃšÃ‘EZ', '', '', '', NULL, NULL, NULL, NULL, 1, '2019-03-15 20:09:40', 1, '2019-03-01', 10, NULL, '', 1, 0, 1, 1, 1, 1, 0, '0000-00-00', '', '', '', '', 1, '1074812390', '', '', '', 0, '', 1, 1, '', 1, 1, 1, '', '', '', '3112000700-3108104835', 1, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(422, 'default.png', 'SANTIAGO', 'FONSECA	MELO', '', '', '', NULL, NULL, NULL, NULL, 1, '2019-03-15 20:10:33', 1, '2019-03-01', 10, NULL, '', 1, 0, 1, 1, 1, 1, 0, '0000-00-00', '', '', '', '', 1, '1013122854', '', '', '', 0, '', 1, 1, '', 1, 1, 1, '', '', '6959916', '3112544046', 1, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(423, 'default.png', 'JUAN	ESTEBAN', 'GARCÃA	BARRAGÃN', '', '', '', NULL, NULL, NULL, NULL, 1, '2019-03-15 20:11:24', 1, '2019-03-01', 10, NULL, '', 1, 0, 1, 1, 1, 1, 0, '0000-00-00', '', '', '', '', 1, '1028866912', '', '', '', 0, '', 1, 1, '', 1, 1, 1, '', '', '', '3175121670-3162808659', 1, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(424, 'default.png', 'JUAN	DAVID', 'GUERRERO	MAHECHA', '', '', '', NULL, NULL, NULL, NULL, 1, '2019-03-15 20:12:17', 1, '2019-03-01', 10, NULL, '', 1, 0, 1, 1, 1, 1, 0, '0000-00-00', '', '', '', '', 1, '1077970006', '', '', '', 0, '', 1, 1, '', 1, 1, 1, '', '', '', '3118168544-3114904580', 1, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(425, 'default.png', 'VALERIE	SAMANTHA', 'LÃ“PEZ	GARCÃA', '', '', '', NULL, NULL, NULL, NULL, 1, '2019-03-15 20:13:09', 1, '2019-03-01', 10, NULL, '', 1, 0, 1, 1, 1, 1, 0, '0000-00-00', '', '', '', '', 1, '1016034921', '', '', '', 0, '', 1, 1, '', 1, 1, 1, '', '', '', '3196605128-3134409930', 1, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(426, 'default.png', 'ANDRÃ‰S	FELIPE', 'MESA	NOVOA', '', '', '', NULL, NULL, NULL, NULL, 1, '2019-03-15 20:13:52', 1, '2019-03-01', 10, NULL, '', 1, 0, 1, 1, 1, 1, 0, '0000-00-00', '', '', '', '', 1, '1019995765', '', '', '', 0, '', 1, 1, '', 1, 1, 1, '', '', '', '3133127328-3045805062', 1, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(427, 'default.png', 'DIEGO	ALEJANDRO', 'MESA	NOVOA', '', '', '', NULL, NULL, NULL, NULL, 1, '2019-03-15 20:14:43', 1, '2019-03-01', 10, NULL, '', 1, 0, 1, 1, 1, 1, 0, '0000-00-00', '', '', '', '', 1, '1019995766', '', '', '', 0, '', 1, 1, '', 1, 1, 1, '', '', '', '3133127328-3045805062', 1, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(428, 'default.png', 'JOHAN	SANTIAGO', 'MORENO	GONZÃLEZ', '', '', '', NULL, NULL, NULL, NULL, 1, '2019-03-15 20:15:41', 1, '2019-03-01', 10, NULL, '', 1, 0, 1, 1, 1, 1, 0, '0000-00-00', '', '', '', '', 1, '1019996813', '', '', '', 0, '', 1, 1, '', 1, 1, 1, '', '', '', '3108696896-3123806973', 1, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(429, 'default.png', 'KAREN	NATALY', 'MORENO	LÃ“PEZ', '', '', '', NULL, NULL, NULL, NULL, 1, '2019-03-15 20:16:27', 1, '2019-03-01', 10, NULL, '', 1, 0, 1, 1, 1, 1, 0, '0000-00-00', '', '', '', '', 1, '1019995487', '', '', '', 0, '', 1, 1, '', 1, 1, 1, '', '', '', '3112240130-3114671682', 1, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(430, 'default.png', 'LAURA	CAMILA', 'ORDOÃ‘EZ	CARDOZO', '', '', '', NULL, NULL, NULL, NULL, 1, '2019-03-15 20:17:31', 1, '2019-03-01', 10, NULL, '', 1, 0, 1, 1, 1, 1, 0, '0000-00-00', '', '', '', '', 1, '1019994663', '', '', '', 0, '', 1, 1, '', 1, 1, 1, '', '', '', '3184550360-3222166697', 1, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(431, 'default.png', 'MARIÃNGEL', 'ORTEGÃ“N	MOGOLLÃ“N', '', '', '', NULL, NULL, NULL, NULL, 1, '2019-03-15 20:18:17', 1, '2019-03-01', 10, NULL, '', 1, 0, 1, 1, 1, 1, 0, '0000-00-00', '', '', '', '', 1, '1072102528', '', '', '', 0, '', 1, 1, '', 1, 1, 1, '', '', '', '3112597389-3123514849', 1, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(432, 'default.png', 'DAYANNA	ANDREA', 'OSORIO	TRIANA', '', '', '', NULL, NULL, NULL, NULL, 1, '2019-03-15 20:20:45', 1, '2019-03-01', 10, NULL, '', 1, 0, 1, 1, 1, 1, 0, '0000-00-00', '', '', '', '', 1, '1016029043', '', '', '', 0, '', 1, 1, '', 1, 1, 1, '', '', '', '3113016579-3133994281', 1, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(433, 'default.png', 'NICOLÃS', 'PÃEZ	ORTIZ', '', '', '', NULL, NULL, NULL, NULL, 1, '2019-03-15 20:21:38', 1, '2019-03-01', 10, NULL, '', 1, 0, 1, 1, 1, 1, 0, '0000-00-00', '', '', '', '', 1, '1014997250', '', '', '', 0, '', 1, 1, '', 1, 1, 1, '', '', '', '3057541430-3132636576', 1, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(434, 'default.png', 'GABRIELA', 'PRIETO	ZAQUE', '', '', '', NULL, NULL, NULL, NULL, 1, '2019-03-15 20:23:12', 1, '2019-03-01', 10, NULL, '', 1, 0, 1, 1, 1, 1, 0, '0000-00-00', '', '', '', '', 1, '1019996803', '', '', '', 0, '', 1, 1, '', 1, 1, 1, '', '', '', '3105673558', 1, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(435, 'default.png', 'SEBASTIAN', 'QUESADA	RODRIGUEZ', '', '', '', NULL, NULL, NULL, NULL, 1, '2019-03-15 20:24:06', 1, '2019-03-01', 10, NULL, '', 1, 0, 1, 1, 1, 1, 0, '0000-00-00', '', '', '', '', 1, '1010965278', '', '', '', 0, '', 1, 1, '', 1, 1, 1, '', '', '', '3222155908-3106979577', 1, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(436, 'default.png', 'KAREN	SOFIA', 'QUIJANO	LADINO', '', '', '', NULL, NULL, NULL, NULL, 1, '2019-03-15 20:24:59', 1, '2019-03-01', 10, NULL, '', 1, 0, 1, 1, 1, 1, 0, '0000-00-00', '', '', '', '', 1, '1019996666', '', '', '', 0, '', 1, 1, '', 1, 1, 1, '', '', '', '3133127310-3102913391', 1, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(437, 'default.png', 'LINA	MARIA', 'RISCANEVO	MARTINEZ', '', '', '', NULL, NULL, NULL, NULL, 1, '2019-03-15 20:25:40', 1, '2019-03-01', 10, NULL, '', 1, 0, 1, 1, 1, 1, 0, '0000-00-00', '', '', '', '', 1, '1029146561', '', '', '', 0, '', 1, 1, '', 1, 1, 1, '', '', '', '3138550372-3005184910', 1, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(438, 'default.png', 'MARIAJOSE', 'RODRÃGUEZ	AGUIRRE', '', '', '', NULL, NULL, NULL, NULL, 1, '2019-03-15 20:26:25', 1, '2019-03-01', 10, NULL, '', 1, 0, 1, 1, 1, 1, 0, '0000-00-00', '', '', '', '', 1, '1016029125', '', '', '', 0, '', 1, 1, '', 1, 1, 1, '', '', '', '3223083216-3234822426', 1, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(439, 'default.png', 'ANGELINA	JULIETH', 'RODRÃGUEZ	BAUTISTA', '', '', '', NULL, NULL, NULL, NULL, 1, '2019-03-15 20:27:17', 1, '2019-03-01', 10, NULL, '', 1, 0, 1, 1, 1, 1, 0, '0000-00-00', '', '', '', '', 1, '1016031195', '', '', '', 0, '', 1, 1, '', 1, 1, 1, '', '', '', '3112479121-3054002014', 1, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(440, 'default.png', 'DANNA	ALEJANDRA', 'RODRÃGUEZ	BOLAÃ‘OS', '', '', '', NULL, NULL, NULL, NULL, 1, '2019-03-15 20:28:10', 1, '2019-03-01', 10, NULL, '', 1, 0, 1, 1, 1, 1, 0, '0000-00-00', '', '', '', '', 1, '1028488518', '', '', '', 0, '', 1, 1, '', 1, 1, 1, '', '', '', '3115742837-3103095328', 1, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(441, 'default.png', 'DAVID	FELIPE', 'ROMERO	CRISTIANO', '', '', '', NULL, NULL, NULL, NULL, 1, '2019-03-15 20:29:00', 1, '2019-03-01', 10, NULL, '', 1, 0, 1, 1, 1, 1, 0, '0000-00-00', '', '', '', '', 1, '1013611890', '', '', '', 0, '', 1, 1, '', 1, 1, 1, '', '', '', '3144885949-3146039316', 1, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(442, 'default.png', 'MARYAM	SOFIA', 'ROZO	BERNAL', '', '', '', NULL, NULL, NULL, NULL, 1, '2019-03-15 20:29:58', 1, '2019-03-01', 10, NULL, '', 1, 0, 1, 1, 1, 1, 0, '0000-00-00', '', '', '', '', 1, '1012363610', '', '', '', 0, '', 1, 1, '', 1, 1, 1, '', '', '', '3224796977-3505758340', 1, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(443, 'default.png', 'ALEJANDRO', 'SUAZA	PIÃ‘EROS', '', '', '', NULL, NULL, NULL, NULL, 1, '2019-03-15 20:30:38', 1, '2019-03-01', 10, NULL, '', 1, 0, 1, 1, 1, 1, 0, '0000-00-00', '', '', '', '', 1, '1014868789', '', '', '', 0, '', 1, 1, '', 1, 1, 1, '', '', '', '3044919826', 1, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(444, 'default.png', 'EMILY	JULIANA', 'TOLOSA	PEÃ‘ALOZA', '', '', '', NULL, NULL, NULL, NULL, 1, '2019-03-15 20:31:31', 1, '2019-03-01', 10, NULL, '', 1, 0, 1, 1, 1, 1, 0, '0000-00-00', '', '', '', '', 1, '1028865784', '', '', '', 0, '', 1, 1, '', 1, 1, 1, '', '', '', '3143850648-3193775035', 1, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(445, 'default.png', 'MATEO', 'TRUJILLO	PULGARÃN', '', '', '', NULL, NULL, NULL, NULL, 1, '2019-03-15 20:32:57', 1, '2019-03-01', 10, NULL, '', 1, 0, 1, 1, 1, 1, 0, '0000-00-00', '', '', '', '', 1, '1141118145', '', '', '', 0, '', 1, 1, '', 1, 1, 1, '', '', '', '3196608674-3123265058', 1, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(446, 'default.png', 'MARTÃN	SANTIAGO', 'VARGAS	VALERO', '', '', '', NULL, NULL, NULL, NULL, 1, '2019-03-15 20:34:09', 1, '2019-03-01', 10, NULL, '', 1, 0, 1, 1, 1, 1, 0, '0000-00-00', '', '', '', '', 1, '1016036763', '', '', '', 0, '', 1, 1, '', 1, 1, 1, '', '', '', '3203139740-3142882290', 1, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(447, 'default.png', 'DANIELA', 'VELASQUEZ	VARGAS', '', '', '', NULL, NULL, NULL, NULL, 1, '2019-03-15 20:35:10', 1, '2019-03-01', 10, NULL, '', 1, 0, 1, 1, 1, 1, 0, '0000-00-00', '', '', '', '', 1, '1033105166', '', '', '', 0, '', 1, 1, '', 1, 1, 1, '', '', '', '3123256154-3007253922', 1, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(448, 'default.png', 'SANTIAGO', 'AHUMADA	GONZALEZ', '', '', '', NULL, NULL, NULL, NULL, 1, '2019-03-15 20:36:03', 1, '2019-03-01', 10, NULL, '', 1, 0, 1, 1, 1, 1, 0, '0000-00-00', '', '', '', '', 1, '1016029698', '', '', '', 0, '', 1, 1, '', 1, 1, 1, '', '', '', '3015105134-3142628753', 1, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(449, 'default.png', 'HELLEN	SOFIA', 'ALDANA	RAYO', '', '', '', NULL, NULL, NULL, NULL, 1, '2019-03-15 20:37:00', 1, '2019-03-01', 10, NULL, '', 1, 0, 1, 1, 1, 1, 0, '0000-00-00', '', '', '', '', 1, '1019994777', '', '', '', 0, '', 1, 1, '', 1, 1, 1, '', '', '', '3165258571-3016869506', 1, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(450, 'default.png', 'ANDRÃ‰S	FELIPE', 'ANDRADE	SILVA', '', '', '', NULL, NULL, NULL, NULL, 1, '2019-03-15 20:37:48', 1, '2019-03-01', 10, NULL, '', 1, 0, 1, 1, 1, 1, 0, '0000-00-00', '', '', '', '', 1, '1029145774', '', '', '', 0, '', 1, 1, '', 1, 1, 1, '', '', '', '3202675230-3108884359', 1, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(451, 'default.png', 'DIANA	KATHERINE', 'ARDILA	TORRES', '', '', '', NULL, NULL, NULL, NULL, 1, '2019-03-15 20:38:33', 1, '2019-03-01', 10, NULL, '', 1, 0, 1, 1, 1, 1, 0, '0000-00-00', '', '', '', '', 1, '1019996987', '', '', '', 0, '', 1, 1, '', 1, 1, 1, '', '', '', '3125927981-3102561701', 1, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(452, 'default.png', 'DANA	VALENTINA', 'BERNAL	MONTAÃ‘EZ', '', '', '', NULL, NULL, NULL, NULL, 1, '2019-03-15 20:39:40', 1, '2019-03-01', 10, NULL, '', 1, 0, 1, 1, 1, 1, 0, '0000-00-00', '', '', '', '', 1, '1019995562', '', '', '', 0, '', 1, 1, '', 1, 1, 1, '', '', '7454555 ext1110 ', '3123674698-3007455356', 1, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(453, 'default.png', 'JUAN	ESTEBAN', 'CANCELADO	VALDERRAMA', '', '', '', NULL, NULL, NULL, NULL, 1, '2019-03-15 20:44:35', 1, '2019-03-01', 10, NULL, '', 1, 0, 1, 1, 1, 1, 0, '0000-00-00', '', '', '', '', 1, '1033736054', '', '', '', 0, '', 1, 1, '', 1, 1, 1, '', '', '', '3102361731-3107767943', 1, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(454, 'default.png', 'VALERY	ALEJANDRA', 'CRUZ	SÃNCHEZ', '', '', '', NULL, NULL, NULL, NULL, 1, '2019-03-15 20:46:20', 1, '2019-03-01', 10, NULL, '', 1, 0, 1, 1, 1, 1, 0, '0000-00-00', '', '', '', '', 1, '1188963199', '', '', '', 0, '', 1, 1, '', 1, 1, 1, '', '', '', '3106662440-3043679690-311', 1, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(455, 'default.png', 'GABRIELA', 'DAZA	ORJUELA', '', '', '', NULL, NULL, NULL, NULL, 1, '2019-03-15 20:48:10', 1, '2019-03-01', 10, NULL, '', 1, 0, 1, 1, 1, 1, 0, '0000-00-00', '', '', '', '', 1, ' 1028487874 ', '', '', '', 0, '', 1, 1, '', 1, 1, 1, '', '', '', '3183395491-3163638584', 1, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(456, 'default.png', 'SOFIA', 'FONSECA	MUÃ‘OZ', '', '', '', NULL, NULL, NULL, NULL, 1, '2019-03-15 20:49:22', 1, '2019-03-01', 10, NULL, '', 1, 0, 1, 1, 1, 1, 0, '0000-00-00', '', '', '', '', 1, '1023379987', '', '', '', 0, '', 1, 1, '', 1, 1, 1, '', '', '', '3205437569-3154298533', 1, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(457, 'default.png', 'CAMILO	ANDRÃ‰S', 'FRANCO	QUINTERO', '', '', '', NULL, NULL, NULL, NULL, 1, '2019-03-15 20:50:16', 1, '2019-03-01', 10, NULL, '', 1, 0, 1, 1, 1, 1, 0, '0000-00-00', '', '', '', '', 1, '1150184670', '', '', '', 0, '', 1, 1, '', 1, 1, 1, '', '', '6955137', '3145604267-3008134120', 1, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(458, 'default.png', 'MARIANA', 'FULA	MORENO', '', '', '', NULL, NULL, NULL, NULL, 1, '2019-03-15 20:51:30', 1, '2019-03-01', 10, NULL, '', 1, 0, 1, 1, 1, 1, 0, '0000-00-00', '', '', '', '', 1, '1014867628', '', '', '', 0, '', 1, 1, '', 1, 1, 1, '', '', '456449', '3184300461-3188737412', 1, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(459, 'default.png', 'JULIANA	ANDREA', 'GUERRERO	SOTELO', '', '', '', NULL, NULL, NULL, NULL, 1, '2019-03-15 20:52:29', 1, '2019-03-01', 10, NULL, '', 1, 0, 1, 1, 1, 1, 0, '0000-00-00', '', '', '', '', 1, '1034781597', '', '', '', 0, '', 1, 1, '', 1, 1, 1, '', '', '', '3003205388-3144262229', 1, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(460, 'default.png', 'JUAN	GUILLERMO', 'GUTIÃ‰RREZ	PRECIADO', '', '', '', NULL, NULL, NULL, NULL, 1, '2019-03-15 20:57:52', 1, '2019-03-01', 10, NULL, '', 1, 0, 1, 1, 1, 1, 0, '0000-00-00', '', '', '', '', 1, '1019996767', '', '', '', 0, '', 1, 1, '', 1, 1, 1, '', '', '', '3016973928-3182154086', 1, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(461, 'default.png', 'SALOMÃ‰', 'LÃ“PEZ	RIAÃ‘O', '', '', '', NULL, NULL, NULL, NULL, 1, '2019-03-15 20:59:17', 1, '2019-03-01', 10, NULL, '', 1, 0, 1, 1, 1, 1, 0, '0000-00-00', '', '', '', '', 1, '1016032604', '', '', '', 0, '', 1, 1, '', 1, 1, 1, '', '', '', '3143944925-3143212490', 1, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(462, 'default.png', 'DAVID	SANTIAGO', 'MARTÃNEZ	ESPITIA', '', '', '', NULL, NULL, NULL, NULL, 1, '2019-03-15 21:00:55', 1, '2019-03-01', 10, NULL, '', 1, 0, 1, 1, 1, 1, 0, '0000-00-00', '', '', '', '', 1, '1028488844', '', '', '', 0, '', 1, 1, '', 1, 1, 1, '', '', '', '3209413893-3138444541', 1, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(463, 'default.png', 'LUNA', 'MAYORAL	GÃ“MEZ', '', '', '', NULL, NULL, NULL, NULL, 1, '2019-03-15 21:02:21', 1, '2019-03-01', 10, NULL, '', 1, 0, 1, 1, 1, 1, 0, '0000-00-00', '', '', '', '', 1, '1029400430', '', '', '', 0, '', 1, 1, '', 1, 1, 1, '', '', '', '3204292621-3123033551', 1, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(464, 'default.png', 'MICHELL	THALIANA', 'MORENO	GAMBOA', '', '', '', NULL, NULL, NULL, NULL, 1, '2019-03-15 21:03:43', 1, '2019-03-01', 10, NULL, '', 1, 0, 1, 1, 1, 1, 0, '0000-00-00', '', '', '', '', 1, '1150434879', '', '', '', 0, '', 1, 1, '', 1, 1, 1, '', '', '', '3003981609-3104865019', 1, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(465, 'default.png', 'NIKOL	VALERIA', 'MORENO	MORENO', '', '', '', NULL, NULL, NULL, NULL, 1, '2019-03-15 21:05:34', 1, '2019-03-01', 10, NULL, '', 1, 0, 1, 1, 1, 1, 0, '0000-00-00', '', '', '', '', 1, '1016033542', '', '', '', 0, '', 1, 1, '', 1, 1, 1, '', '', '2673945-4201867', '3124547228', 1, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(466, 'default.png', 'MARIANA', 'MUÃ‘OZ	ATEHORTUA', '', '', '', NULL, NULL, NULL, NULL, 1, '2019-03-15 21:06:55', 1, '2019-03-01', 10, NULL, '', 1, 0, 1, 1, 1, 1, 0, '0000-00-00', '', '', '', '', 1, '1014866629', '', '', '', 0, '', 1, 1, '', 1, 1, 1, '', '', '6058340', '3116588520-3004824918', 1, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(467, 'default.png', 'NICOLÃS', 'PARRA	VELÃSQUEZ', '', '', '', NULL, NULL, NULL, NULL, 1, '2019-03-15 21:08:50', 1, '2019-03-01', 10, NULL, '', 1, 0, 1, 1, 1, 1, 0, '0000-00-00', '', '', '', '', 1, '1030578081', '', '', '', 0, '', 1, 1, '', 1, 1, 1, '', '', '', '3105754262-3115474512', 1, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(468, 'default.png', 'DAYANA', 'RINCÃ“N	RODRÃGUEZ', '', '', '', NULL, NULL, NULL, NULL, 1, '2019-03-15 21:10:17', 1, '2019-03-01', 10, NULL, '', 1, 0, 1, 1, 1, 1, 0, '0000-00-00', '', '', '', '', 1, '1090275354', '', '', '', 0, '', 1, 1, '', 1, 1, 1, '', '', '9097945', '3045697239-3115796358', 1, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(469, 'default.png', 'JUAN	FELIPE', 'RODRÃGUEZ	BELTRÃN', '', '', '', NULL, NULL, NULL, NULL, 1, '2019-03-15 21:11:42', 1, '2019-03-01', 10, NULL, '', 1, 0, 1, 1, 1, 1, 0, '0000-00-00', '', '', '', '', 1, '1019996228', '', '', '', 0, '', 1, 1, '', 1, 1, 1, '', '', '4599364', '3157411001', 1, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(470, 'default.png', 'ANDRÃ‰S	SANTIAGO', 'ROJAS	ORTIZ', '', '', '', NULL, NULL, NULL, NULL, 1, '2019-03-15 21:12:49', 1, '2019-03-01', 10, NULL, '', 1, 0, 1, 1, 1, 1, 0, '0000-00-00', '', '', '', '', 1, '1014670869', '', '', '', 0, '', 1, 1, '', 1, 1, 1, '', '', '', '3186794919-3106256448', 1, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(471, 'default.png', 'DHYLAN	DAVID', 'ROMERO	MONTOYA', '', '', '', NULL, NULL, NULL, NULL, 1, '2019-03-15 21:13:59', 1, '2019-03-01', 10, NULL, '', 1, 0, 1, 1, 1, 1, 0, '0000-00-00', '', '', '', '', 1, '1016029368', '', '', '', 0, '', 1, 1, '', 1, 1, 1, '', '', '6027934-5402530', '3004462328-3114972291', 1, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alumn_dest`
--

CREATE TABLE `alumn_dest` (
  `id` int(11) NOT NULL,
  `team_id` int(11) NOT NULL,
  `alumn_id` int(11) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alumn_team`
--

CREATE TABLE `alumn_team` (
  `id` int(11) NOT NULL,
  `alumn_id` int(11) NOT NULL,
  `team_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `alumn_team`
--

INSERT INTO `alumn_team` (`id`, `alumn_id`, `team_id`) VALUES
(2, 16, 3),
(3, 17, 3),
(4, 18, 3),
(6, 20, 3),
(7, 21, 3),
(10, 24, 3),
(11, 25, 3),
(12, 26, 3),
(13, 27, 3),
(14, 28, 3),
(15, 29, 3),
(16, 30, 3),
(17, 31, 3),
(18, 32, 3),
(19, 33, 3),
(20, 34, 3),
(21, 35, 3),
(22, 36, 4),
(23, 37, 4),
(24, 38, 4),
(25, 39, 4),
(26, 40, 4),
(27, 41, 4),
(28, 42, 4),
(29, 43, 4),
(30, 44, 4),
(31, 45, 4),
(38, 52, 4),
(39, 53, 4),
(40, 54, 4),
(41, 55, 4),
(42, 56, 4),
(43, 57, 4),
(44, 58, 4),
(46, 60, 4),
(47, 61, 4),
(48, 62, 4),
(49, 63, 4),
(50, 64, 4),
(51, 65, 4),
(52, 66, 4),
(53, 67, 4),
(54, 68, 4),
(55, 69, 4),
(56, 70, 4),
(57, 71, 4),
(59, 73, 4),
(60, 74, 4),
(61, 75, 4),
(62, 76, 4),
(63, 77, 4),
(64, 78, 4),
(65, 79, 4),
(66, 80, 5),
(67, 81, 5),
(69, 83, 5),
(70, 84, 5),
(72, 86, 5),
(73, 87, 5),
(74, 88, 5),
(75, 89, 5),
(76, 90, 5),
(77, 91, 5),
(78, 92, 5),
(79, 93, 5),
(80, 94, 5),
(81, 95, 5),
(83, 97, 5),
(84, 98, 5),
(85, 99, 5),
(86, 100, 5),
(87, 101, 5),
(88, 102, 5),
(89, 103, 5),
(90, 104, 5),
(91, 105, 5),
(92, 106, 5),
(93, 107, 5),
(94, 108, 5),
(95, 109, 5),
(96, 110, 5),
(97, 111, 5),
(98, 112, 5),
(99, 113, 5),
(100, 114, 5),
(101, 115, 5),
(102, 116, 5),
(103, 117, 5),
(104, 118, 5),
(105, 119, 5),
(106, 120, 5),
(107, 121, 5),
(108, 122, 5),
(109, 123, 5),
(110, 124, 5),
(111, 125, 5),
(112, 126, 5),
(113, 127, 5),
(114, 128, 5),
(115, 129, 5),
(116, 130, 5),
(117, 131, 5),
(118, 132, 5),
(119, 133, 5),
(120, 134, 5),
(121, 135, 5),
(122, 136, 5),
(123, 137, 5),
(124, 138, 5),
(125, 139, 5),
(126, 140, 6),
(127, 141, 6),
(128, 142, 6),
(129, 143, 6),
(130, 144, 6),
(131, 145, 6),
(132, 146, 6),
(133, 147, 6),
(134, 148, 6),
(135, 149, 6),
(136, 150, 6),
(137, 151, 6),
(138, 152, 6),
(139, 153, 6),
(140, 154, 6),
(141, 155, 6),
(142, 156, 6),
(143, 157, 6),
(144, 158, 6),
(145, 159, 6),
(146, 160, 6),
(147, 161, 6),
(148, 162, 6),
(149, 163, 6),
(150, 164, 6),
(151, 165, 6),
(152, 166, 6),
(153, 167, 6),
(154, 168, 6),
(155, 169, 6),
(156, 170, 6),
(157, 171, 6),
(158, 172, 6),
(159, 173, 6),
(160, 174, 6),
(161, 175, 6),
(162, 176, 6),
(163, 177, 6),
(164, 178, 6),
(165, 179, 6),
(166, 180, 6),
(167, 181, 6),
(168, 182, 6),
(169, 183, 6),
(170, 184, 6),
(171, 185, 6),
(172, 186, 6),
(173, 187, 6),
(174, 188, 6),
(175, 189, 6),
(176, 190, 6),
(177, 191, 6),
(178, 192, 6),
(179, 193, 6),
(180, 194, 6),
(181, 195, 6),
(182, 196, 6),
(183, 197, 6),
(184, 198, 6),
(185, 199, 6),
(186, 200, 6),
(187, 201, 6),
(188, 202, 6),
(189, 203, 6),
(207, 221, 6),
(208, 222, 7),
(209, 223, 7),
(210, 224, 7),
(211, 225, 7),
(212, 226, 7),
(213, 227, 7),
(214, 228, 7),
(215, 229, 7),
(216, 230, 7),
(217, 231, 7),
(218, 232, 7),
(219, 233, 7),
(220, 234, 7),
(222, 236, 7),
(223, 237, 7),
(225, 239, 7),
(226, 240, 7),
(228, 242, 7),
(229, 243, 7),
(230, 244, 7),
(231, 245, 7),
(232, 246, 7),
(233, 247, 7),
(234, 248, 7),
(235, 249, 7),
(236, 250, 7),
(237, 251, 7),
(238, 252, 7),
(239, 253, 7),
(240, 254, 7),
(241, 255, 7),
(242, 256, 7),
(243, 257, 7),
(244, 258, 7),
(245, 259, 7),
(246, 260, 7),
(247, 261, 7),
(248, 262, 7),
(249, 263, 7),
(250, 264, 7),
(251, 265, 7),
(252, 266, 7),
(253, 267, 7),
(254, 268, 7),
(255, 269, 7),
(256, 270, 7),
(257, 271, 7),
(258, 272, 7),
(259, 273, 7),
(260, 274, 7),
(262, 276, 7),
(263, 277, 7),
(264, 278, 7),
(265, 279, 7),
(266, 280, 7),
(267, 281, 7),
(268, 282, 7),
(269, 283, 7),
(270, 284, 7),
(271, 285, 7),
(272, 286, 7),
(273, 287, 7),
(274, 288, 7),
(275, 289, 7),
(276, 290, 7),
(277, 291, 7),
(278, 292, 7),
(279, 293, 8),
(280, 294, 8),
(281, 295, 8),
(282, 296, 8),
(283, 297, 8),
(284, 298, 8),
(285, 299, 8),
(286, 300, 8),
(287, 301, 8),
(288, 302, 8),
(289, 303, 8),
(290, 304, 8),
(291, 305, 8),
(292, 306, 8),
(293, 307, 8),
(294, 308, 8),
(295, 309, 8),
(296, 310, 8),
(297, 311, 8),
(298, 312, 8),
(299, 313, 8),
(300, 314, 8),
(301, 315, 8),
(302, 316, 8),
(303, 317, 8),
(304, 318, 8),
(305, 319, 8),
(306, 320, 8),
(307, 321, 8),
(308, 322, 8),
(309, 323, 8),
(310, 324, 8),
(311, 325, 8),
(312, 326, 8),
(313, 327, 8),
(314, 328, 8),
(315, 329, 8),
(316, 330, 8),
(317, 331, 8),
(318, 332, 8),
(319, 333, 8),
(320, 334, 8),
(321, 335, 8),
(322, 336, 8),
(323, 337, 8),
(324, 338, 8),
(325, 339, 8),
(326, 340, 8),
(327, 341, 8),
(328, 342, 8),
(329, 343, 8),
(330, 344, 8),
(331, 345, 8),
(332, 346, 8),
(333, 347, 8),
(334, 348, 8),
(335, 349, 8),
(336, 350, 8),
(337, 351, 8),
(338, 352, 8),
(339, 353, 8),
(340, 354, 8),
(341, 355, 9),
(342, 356, 9),
(343, 357, 9),
(344, 358, 9),
(345, 359, 9),
(346, 360, 9),
(347, 361, 9),
(348, 362, 9),
(349, 363, 9),
(350, 364, 9),
(352, 366, 9),
(353, 367, 9),
(355, 369, 9),
(356, 370, 9),
(357, 371, 9),
(358, 372, 9),
(359, 373, 9),
(360, 374, 9),
(361, 375, 9),
(362, 376, 9),
(363, 377, 9),
(364, 378, 9),
(365, 379, 9),
(366, 380, 9),
(367, 381, 9),
(368, 382, 9),
(369, 383, 9),
(370, 384, 9),
(371, 385, 9),
(372, 386, 9),
(373, 387, 9),
(374, 388, 9),
(375, 389, 9),
(376, 390, 9),
(377, 391, 9),
(378, 392, 9),
(379, 393, 9),
(380, 394, 9),
(381, 395, 9),
(382, 396, 9),
(383, 397, 9),
(384, 398, 9),
(385, 399, 9),
(386, 400, 9),
(387, 401, 9),
(388, 402, 9),
(389, 403, 9),
(390, 404, 9),
(391, 405, 9),
(392, 406, 9),
(393, 407, 9),
(394, 408, 9),
(395, 409, 9),
(396, 410, 9),
(397, 411, 9),
(398, 412, 9),
(399, 413, 9),
(400, 414, 9),
(401, 415, 9),
(402, 416, 10),
(403, 417, 10),
(404, 418, 10),
(405, 419, 10),
(406, 420, 10),
(407, 421, 10),
(408, 422, 10),
(409, 423, 10),
(410, 424, 10),
(411, 425, 10),
(412, 426, 10),
(413, 427, 10),
(414, 428, 10),
(415, 429, 10),
(416, 430, 10),
(417, 431, 10),
(418, 432, 10),
(419, 433, 10),
(420, 434, 10),
(421, 435, 10),
(422, 436, 10),
(423, 437, 10),
(424, 438, 10),
(425, 439, 10),
(426, 440, 10),
(427, 441, 10),
(428, 442, 10),
(429, 443, 10),
(430, 444, 10),
(431, 445, 10),
(432, 446, 10),
(433, 447, 10),
(434, 448, 10),
(435, 449, 10),
(436, 450, 10),
(437, 451, 10),
(438, 452, 10),
(439, 453, 10),
(440, 454, 10),
(441, 455, 10),
(442, 456, 10),
(443, 457, 10),
(444, 458, 10),
(445, 459, 10),
(446, 460, 10),
(447, 461, 10),
(448, 462, 10),
(449, 463, 10),
(450, 464, 10),
(451, 465, 10),
(452, 466, 10),
(453, 467, 10),
(454, 468, 10),
(455, 469, 10),
(456, 470, 10),
(457, 471, 10);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `assistance`
--

CREATE TABLE `assistance` (
  `id` int(11) NOT NULL,
  `kind_id` int(11) DEFAULT NULL,
  `date_at` date NOT NULL,
  `alumn_id` int(11) NOT NULL,
  `team_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `behavior`
--

CREATE TABLE `behavior` (
  `id` int(11) NOT NULL,
  `kind_id` int(11) DEFAULT NULL,
  `date_at` date NOT NULL,
  `alumn_id` int(11) NOT NULL,
  `team_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `block`
--

CREATE TABLE `block` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `team_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `business`
--

CREATE TABLE `business` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL,
  `address` varchar(250) NOT NULL,
  `city` varchar(100) NOT NULL,
  `postal_code` varchar(100) NOT NULL,
  `state` varchar(100) NOT NULL,
  `country_id` int(10) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `email` varchar(64) NOT NULL,
  `industry` varchar(150) NOT NULL,
  `number_id` varchar(12) NOT NULL,
  `tax` double NOT NULL,
  `currency_id` int(10) NOT NULL,
  `timezone` int(10) NOT NULL,
  `created_at` datetime NOT NULL,
  `logo_url` varchar(255) NOT NULL,
  `skin_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `business`
--

INSERT INTO `business` (`id`, `name`, `address`, `city`, `postal_code`, `state`, `country_id`, `phone`, `email`, `industry`, `number_id`, `tax`, `currency_id`, `timezone`, `created_at`, `logo_url`, `skin_id`) VALUES
(1, 'AbisoftGT', 'Av. Pachacutec Mz G Lt 03 Parque Industrial', 'Villa El Salvador', '1001', 'Capital', 320, '502 - 49899115', 'waptoing7@gmail.com', 'Sistemas Web', '20524244960', 12, 1, 1, '2015-11-21 11:00:00', 'res/images/your_logo.png', 6);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `calification`
--

CREATE TABLE `calification` (
  `id` int(11) NOT NULL,
  `val` double DEFAULT NULL,
  `alumn_id` int(11) NOT NULL,
  `block_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE `clientes` (
  `cliente_id` int(11) NOT NULL,
  `nombre` varchar(250) NOT NULL,
  `rfc` varchar(30) NOT NULL,
  `direccion` text NOT NULL,
  `telefono` varchar(250) NOT NULL,
  `correo` varchar(250) NOT NULL,
  `fecha_contratacion` date NOT NULL,
  `fecha_mensualidad` date NOT NULL,
  `idpaquete` int(11) NOT NULL,
  `iva` int(11) NOT NULL,
  `notas` text NOT NULL,
  `estado` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `configuration`
--

CREATE TABLE `configuration` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `label` varchar(200) NOT NULL,
  `kind` int(11) DEFAULT NULL,
  `val` text,
  `cfg_id` int(11) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `configuration`
--

INSERT INTO `configuration` (`id`, `name`, `label`, `kind`, `val`, `cfg_id`) VALUES
(1, 'general_main_title', 'Titulo Principal', 1, 'My Chool', 1),
(2, 'general_main_email', 'Email Principal', 1, 'waptoing7@gmail.com', 1),
(3, 'general_main_favicon', 'Favicon', 1, 'favicon.png', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `countries`
--

CREATE TABLE `countries` (
  `id` int(10) UNSIGNED NOT NULL,
  `capital` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `citizenship` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `country_code` varchar(3) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `currency` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `currency_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `currency_sub_unit` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `full_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `iso_3166_2` varchar(2) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `iso_3166_3` varchar(3) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `region_code` varchar(3) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `sub_region_code` varchar(3) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `eea` tinyint(1) NOT NULL DEFAULT '0',
  `swap_postal_code` tinyint(1) NOT NULL DEFAULT '0',
  `swap_currency_symbol` tinyint(1) NOT NULL DEFAULT '0',
  `thousand_separator` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `decimal_separator` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `countries`
--

INSERT INTO `countries` (`id`, `capital`, `citizenship`, `country_code`, `currency`, `currency_code`, `currency_sub_unit`, `full_name`, `iso_3166_2`, `iso_3166_3`, `name`, `region_code`, `sub_region_code`, `eea`, `swap_postal_code`, `swap_currency_symbol`, `thousand_separator`, `decimal_separator`) VALUES
(4, 'Kabul', 'Afghan', '004', 'afghani', 'AFN', 'pul', 'Islamic Republic of Afghanistan', 'AF', 'AFG', 'Afghanistan', '142', '034', 0, 0, 0, NULL, NULL),
(8, 'Tirana', 'Albanian', '008', 'lek', 'ALL', '(qindar (pl. qindarka))', 'Republic of Albania', 'AL', 'ALB', 'Albania', '150', '039', 0, 0, 0, NULL, NULL),
(10, 'Antartica', 'of Antartica', '010', '', '', '', 'Antarctica', 'AQ', 'ATA', 'Antarctica', '', '', 0, 0, 0, NULL, NULL),
(12, 'Algiers', 'Algerian', '012', 'Algerian dinar', 'DZD', 'centime', 'People’s Democratic Republic of Algeria', 'DZ', 'DZA', 'Algeria', '002', '015', 0, 0, 0, NULL, NULL),
(16, 'Pago Pago', 'American Samoan', '016', 'US dollar', 'USD', 'cent', 'Territory of American', 'AS', 'ASM', 'American Samoa', '009', '061', 0, 0, 0, NULL, NULL),
(20, 'Andorra la Vella', 'Andorran', '020', 'euro', 'EUR', 'cent', 'Principality of Andorra', 'AD', 'AND', 'Andorra', '150', '039', 0, 0, 0, NULL, NULL),
(24, 'Luanda', 'Angolan', '024', 'kwanza', 'AOA', 'cêntimo', 'Republic of Angola', 'AO', 'AGO', 'Angola', '002', '017', 0, 0, 0, NULL, NULL),
(28, 'St John’s', 'of Antigua and Barbuda', '028', 'East Caribbean dollar', 'XCD', 'cent', 'Antigua and Barbuda', 'AG', 'ATG', 'Antigua and Barbuda', '019', '029', 0, 0, 0, NULL, NULL),
(31, 'Baku', 'Azerbaijani', '031', 'Azerbaijani manat', 'AZN', 'kepik (inv.)', 'Republic of Azerbaijan', 'AZ', 'AZE', 'Azerbaijan', '142', '145', 0, 0, 0, NULL, NULL),
(32, 'Buenos Aires', 'Argentinian', '032', 'Argentine peso', 'ARS', 'centavo', 'Argentine Republic', 'AR', 'ARG', 'Argentina', '019', '005', 0, 1, 0, NULL, NULL),
(36, 'Canberra', 'Australian', '036', 'Australian dollar', 'AUD', 'cent', 'Commonwealth of Australia', 'AU', 'AUS', 'Australia', '009', '053', 0, 0, 0, NULL, NULL),
(40, 'Vienna', 'Austrian', '040', 'euro', 'EUR', 'cent', 'Republic of Austria', 'AT', 'AUT', 'Austria', '150', '155', 1, 1, 0, NULL, NULL),
(44, 'Nassau', 'Bahamian', '044', 'Bahamian dollar', 'BSD', 'cent', 'Commonwealth of the Bahamas', 'BS', 'BHS', 'Bahamas', '019', '029', 0, 0, 0, NULL, NULL),
(48, 'Manama', 'Bahraini', '048', 'Bahraini dinar', 'BHD', 'fils (inv.)', 'Kingdom of Bahrain', 'BH', 'BHR', 'Bahrain', '142', '145', 0, 0, 0, NULL, NULL),
(50, 'Dhaka', 'Bangladeshi', '050', 'taka (inv.)', 'BDT', 'poisha (inv.)', 'People’s Republic of Bangladesh', 'BD', 'BGD', 'Bangladesh', '142', '034', 0, 0, 0, NULL, NULL),
(51, 'Yerevan', 'Armenian', '051', 'dram (inv.)', 'AMD', 'luma', 'Republic of Armenia', 'AM', 'ARM', 'Armenia', '142', '145', 0, 0, 0, NULL, NULL),
(52, 'Bridgetown', 'Barbadian', '052', 'Barbados dollar', 'BBD', 'cent', 'Barbados', 'BB', 'BRB', 'Barbados', '019', '029', 0, 0, 0, NULL, NULL),
(56, 'Brussels', 'Belgian', '056', 'euro', 'EUR', 'cent', 'Kingdom of Belgium', 'BE', 'BEL', 'Belgium', '150', '155', 1, 1, 0, NULL, NULL),
(60, 'Hamilton', 'Bermudian', '060', 'Bermuda dollar', 'BMD', 'cent', 'Bermuda', 'BM', 'BMU', 'Bermuda', '019', '021', 0, 0, 0, NULL, NULL),
(64, 'Thimphu', 'Bhutanese', '064', 'ngultrum (inv.)', 'BTN', 'chhetrum (inv.)', 'Kingdom of Bhutan', 'BT', 'BTN', 'Bhutan', '142', '034', 0, 0, 0, NULL, NULL),
(68, 'Sucre (BO1)', 'Bolivian', '068', 'boliviano', 'BOB', 'centavo', 'Plurinational State of Bolivia', 'BO', 'BOL', 'Bolivia, Plurinational State of', '019', '005', 0, 0, 0, NULL, NULL),
(70, 'Sarajevo', 'of Bosnia and Herzegovina', '070', 'convertible mark', 'BAM', 'fening', 'Bosnia and Herzegovina', 'BA', 'BIH', 'Bosnia and Herzegovina', '150', '039', 0, 0, 0, NULL, NULL),
(72, 'Gaborone', 'Botswanan', '072', 'pula (inv.)', 'BWP', 'thebe (inv.)', 'Republic of Botswana', 'BW', 'BWA', 'Botswana', '002', '018', 0, 0, 0, NULL, NULL),
(74, 'Bouvet island', 'of Bouvet island', '074', '', '', '', 'Bouvet Island', 'BV', 'BVT', 'Bouvet Island', '', '', 0, 0, 0, NULL, NULL),
(76, 'Brasilia', 'Brazilian', '076', 'real (pl. reais)', 'BRL', 'centavo', 'Federative Republic of Brazil', 'BR', 'BRA', 'Brazil', '019', '005', 0, 0, 0, NULL, NULL),
(84, 'Belmopan', 'Belizean', '084', 'Belize dollar', 'BZD', 'cent', 'Belize', 'BZ', 'BLZ', 'Belize', '019', '013', 0, 0, 0, NULL, NULL),
(86, 'Diego Garcia', 'Changosian', '086', 'US dollar', 'USD', 'cent', 'British Indian Ocean Territory', 'IO', 'IOT', 'British Indian Ocean Territory', '', '', 0, 0, 0, NULL, NULL),
(90, 'Honiara', 'Solomon Islander', '090', 'Solomon Islands dollar', 'SBD', 'cent', 'Solomon Islands', 'SB', 'SLB', 'Solomon Islands', '009', '054', 0, 0, 0, NULL, NULL),
(92, 'Road Town', 'British Virgin Islander;', '092', 'US dollar', 'USD', 'cent', 'British Virgin Islands', 'VG', 'VGB', 'Virgin Islands, British', '019', '029', 0, 0, 0, NULL, NULL),
(96, 'Bandar Seri Begawan', 'Bruneian', '096', 'Brunei dollar', 'BND', 'sen (inv.)', 'Brunei Darussalam', 'BN', 'BRN', 'Brunei Darussalam', '142', '035', 0, 0, 0, NULL, NULL),
(100, 'Sofia', 'Bulgarian', '100', 'lev (pl. leva)', 'BGN', 'stotinka', 'Republic of Bulgaria', 'BG', 'BGR', 'Bulgaria', '150', '151', 1, 0, 1, NULL, NULL),
(104, 'Yangon', 'Burmese', '104', 'kyat', 'MMK', 'pya', 'Union of Myanmar/', 'MM', 'MMR', 'Myanmar', '142', '035', 0, 0, 0, NULL, NULL),
(108, 'Bujumbura', 'Burundian', '108', 'Burundi franc', 'BIF', 'centime', 'Republic of Burundi', 'BI', 'BDI', 'Burundi', '002', '014', 0, 0, 0, NULL, NULL),
(112, 'Minsk', 'Belarusian', '112', 'Belarusian rouble', 'BYR', 'kopek', 'Republic of Belarus', 'BY', 'BLR', 'Belarus', '150', '151', 0, 0, 0, NULL, NULL),
(116, 'Phnom Penh', 'Cambodian', '116', 'riel', 'KHR', 'sen (inv.)', 'Kingdom of Cambodia', 'KH', 'KHM', 'Cambodia', '142', '035', 0, 0, 0, NULL, NULL),
(120, 'Yaoundé', 'Cameroonian', '120', 'CFA franc (BEAC)', 'XAF', 'centime', 'Republic of Cameroon', 'CM', 'CMR', 'Cameroon', '002', '017', 0, 0, 0, NULL, NULL),
(124, 'Ottawa', 'Canadian', '124', 'Canadian dollar', 'CAD', 'cent', 'Canada', 'CA', 'CAN', 'Canada', '019', '021', 0, 0, 0, NULL, NULL),
(132, 'Praia', 'Cape Verdean', '132', 'Cape Verde escudo', 'CVE', 'centavo', 'Republic of Cape Verde', 'CV', 'CPV', 'Cape Verde', '002', '011', 0, 0, 0, NULL, NULL),
(136, 'George Town', 'Caymanian', '136', 'Cayman Islands dollar', 'KYD', 'cent', 'Cayman Islands', 'KY', 'CYM', 'Cayman Islands', '019', '029', 0, 0, 0, NULL, NULL),
(140, 'Bangui', 'Central African', '140', 'CFA franc (BEAC)', 'XAF', 'centime', 'Central African Republic', 'CF', 'CAF', 'Central African Republic', '002', '017', 0, 0, 0, NULL, NULL),
(144, 'Colombo', 'Sri Lankan', '144', 'Sri Lankan rupee', 'LKR', 'cent', 'Democratic Socialist Republic of Sri Lanka', 'LK', 'LKA', 'Sri Lanka', '142', '034', 0, 0, 0, NULL, NULL),
(148, 'N’Djamena', 'Chadian', '148', 'CFA franc (BEAC)', 'XAF', 'centime', 'Republic of Chad', 'TD', 'TCD', 'Chad', '002', '017', 0, 0, 0, NULL, NULL),
(152, 'Santiago', 'Chilean', '152', 'Chilean peso', 'CLP', 'centavo', 'Republic of Chile', 'CL', 'CHL', 'Chile', '019', '005', 0, 0, 0, NULL, NULL),
(156, 'Beijing', 'Chinese', '156', 'renminbi-yuan (inv.)', 'CNY', 'jiao (10)', 'People’s Republic of China', 'CN', 'CHN', 'China', '142', '030', 0, 0, 0, NULL, NULL),
(158, 'Taipei', 'Taiwanese', '158', 'new Taiwan dollar', 'TWD', 'fen (inv.)', 'Republic of China, Taiwan (TW1)', 'TW', 'TWN', 'Taiwan, Province of China', '142', '030', 0, 0, 0, NULL, NULL),
(162, 'Flying Fish Cove', 'Christmas Islander', '162', 'Australian dollar', 'AUD', 'cent', 'Christmas Island Territory', 'CX', 'CXR', 'Christmas Island', '', '', 0, 0, 0, NULL, NULL),
(166, 'Bantam', 'Cocos Islander', '166', 'Australian dollar', 'AUD', 'cent', 'Territory of Cocos (Keeling) Islands', 'CC', 'CCK', 'Cocos (Keeling) Islands', '', '', 0, 0, 0, NULL, NULL),
(170, 'Santa Fe de Bogotá', 'Colombian', '170', 'Colombian peso', 'COP', 'centavo', 'Republic of Colombia', 'CO', 'COL', 'Colombia', '019', '005', 0, 0, 0, NULL, NULL),
(174, 'Moroni', 'Comorian', '174', 'Comorian franc', 'KMF', '', 'Union of the Comoros', 'KM', 'COM', 'Comoros', '002', '014', 0, 0, 0, NULL, NULL),
(175, 'Mamoudzou', 'Mahorais', '175', 'euro', 'EUR', 'cent', 'Departmental Collectivity of Mayotte', 'YT', 'MYT', 'Mayotte', '002', '014', 0, 0, 0, NULL, NULL),
(178, 'Brazzaville', 'Congolese', '178', 'CFA franc (BEAC)', 'XAF', 'centime', 'Republic of the Congo', 'CG', 'COG', 'Congo', '002', '017', 0, 0, 0, NULL, NULL),
(180, 'Kinshasa', 'Congolese', '180', 'Congolese franc', 'CDF', 'centime', 'Democratic Republic of the Congo', 'CD', 'COD', 'Congo, the Democratic Republic of the', '002', '017', 0, 0, 0, NULL, NULL),
(184, 'Avarua', 'Cook Islander', '184', 'New Zealand dollar', 'NZD', 'cent', 'Cook Islands', 'CK', 'COK', 'Cook Islands', '009', '061', 0, 0, 0, NULL, NULL),
(188, 'San José', 'Costa Rican', '188', 'Costa Rican colón (pl. colones)', 'CRC', 'céntimo', 'Republic of Costa Rica', 'CR', 'CRI', 'Costa Rica', '019', '013', 0, 0, 0, NULL, NULL),
(191, 'Zagreb', 'Croatian', '191', 'kuna (inv.)', 'HRK', 'lipa (inv.)', 'Republic of Croatia', 'HR', 'HRV', 'Croatia', '150', '039', 1, 0, 1, NULL, NULL),
(192, 'Havana', 'Cuban', '192', 'Cuban peso', 'CUP', 'centavo', 'Republic of Cuba', 'CU', 'CUB', 'Cuba', '019', '029', 0, 0, 0, NULL, NULL),
(196, 'Nicosia', 'Cypriot', '196', 'euro', 'EUR', 'cent', 'Republic of Cyprus', 'CY', 'CYP', 'Cyprus', '142', '145', 1, 0, 0, NULL, NULL),
(203, 'Prague', 'Czech', '203', 'Czech koruna (pl. koruny)', 'CZK', 'halér', 'Czech Republic', 'CZ', 'CZE', 'Czech Republic', '150', '151', 1, 0, 1, NULL, NULL),
(204, 'Porto Novo (BJ1)', 'Beninese', '204', 'CFA franc (BCEAO)', 'XOF', 'centime', 'Republic of Benin', 'BJ', 'BEN', 'Benin', '002', '011', 0, 0, 0, NULL, NULL),
(208, 'Copenhagen', 'Danish', '208', 'Danish krone', 'DKK', 'øre (inv.)', 'Kingdom of Denmark', 'DK', 'DNK', 'Denmark', '150', '154', 1, 1, 0, NULL, NULL),
(212, 'Roseau', 'Dominican', '212', 'East Caribbean dollar', 'XCD', 'cent', 'Commonwealth of Dominica', 'DM', 'DMA', 'Dominica', '019', '029', 0, 0, 0, NULL, NULL),
(214, 'Santo Domingo', 'Dominican', '214', 'Dominican peso', 'DOP', 'centavo', 'Dominican Republic', 'DO', 'DOM', 'Dominican Republic', '019', '029', 0, 0, 0, NULL, NULL),
(218, 'Quito', 'Ecuadorian', '218', 'US dollar', 'USD', 'cent', 'Republic of Ecuador', 'EC', 'ECU', 'Ecuador', '019', '005', 0, 0, 0, NULL, NULL),
(222, 'San Salvador', 'Salvadoran', '222', 'Salvadorian colón (pl. colones)', 'SVC', 'centavo', 'Republic of El Salvador', 'SV', 'SLV', 'El Salvador', '019', '013', 0, 0, 0, NULL, NULL),
(226, 'Malabo', 'Equatorial Guinean', '226', 'CFA franc (BEAC)', 'XAF', 'centime', 'Republic of Equatorial Guinea', 'GQ', 'GNQ', 'Equatorial Guinea', '002', '017', 0, 0, 0, NULL, NULL),
(231, 'Addis Ababa', 'Ethiopian', '231', 'birr (inv.)', 'ETB', 'cent', 'Federal Democratic Republic of Ethiopia', 'ET', 'ETH', 'Ethiopia', '002', '014', 0, 0, 0, NULL, NULL),
(232, 'Asmara', 'Eritrean', '232', 'nakfa', 'ERN', 'cent', 'State of Eritrea', 'ER', 'ERI', 'Eritrea', '002', '014', 0, 0, 0, NULL, NULL),
(233, 'Tallinn', 'Estonian', '233', 'euro', 'EUR', 'cent', 'Republic of Estonia', 'EE', 'EST', 'Estonia', '150', '154', 1, 0, 1, NULL, NULL),
(234, 'Tórshavn', 'Faeroese', '234', 'Danish krone', 'DKK', 'øre (inv.)', 'Faeroe Islands', 'FO', 'FRO', 'Faroe Islands', '150', '154', 0, 0, 0, NULL, NULL),
(238, 'Stanley', 'Falkland Islander', '238', 'Falkland Islands pound', 'FKP', 'new penny', 'Falkland Islands', 'FK', 'FLK', 'Falkland Islands (Malvinas)', '019', '005', 0, 0, 0, NULL, NULL),
(239, 'King Edward Point (Grytviken)', 'of South Georgia and the South Sandwich Islands', '239', '', '', '', 'South Georgia and the South Sandwich Islands', 'GS', 'SGS', 'South Georgia and the South Sandwich Islands', '', '', 0, 0, 0, NULL, NULL),
(242, 'Suva', 'Fijian', '242', 'Fiji dollar', 'FJD', 'cent', 'Republic of Fiji', 'FJ', 'FJI', 'Fiji', '009', '054', 0, 0, 0, NULL, NULL),
(246, 'Helsinki', 'Finnish', '246', 'euro', 'EUR', 'cent', 'Republic of Finland', 'FI', 'FIN', 'Finland', '150', '154', 1, 1, 1, NULL, NULL),
(248, 'Mariehamn', 'Åland Islander', '248', 'euro', 'EUR', 'cent', 'Åland Islands', 'AX', 'ALA', 'Åland Islands', '150', '154', 0, 0, 0, NULL, NULL),
(250, 'Paris', 'French', '250', 'euro', 'EUR', 'cent', 'French Republic', 'FR', 'FRA', 'France', '150', '155', 1, 1, 1, NULL, NULL),
(254, 'Cayenne', 'Guianese', '254', 'euro', 'EUR', 'cent', 'French Guiana', 'GF', 'GUF', 'French Guiana', '019', '005', 0, 0, 0, NULL, NULL),
(258, 'Papeete', 'Polynesian', '258', 'CFP franc', 'XPF', 'centime', 'French Polynesia', 'PF', 'PYF', 'French Polynesia', '009', '061', 0, 0, 0, NULL, NULL),
(260, 'Port-aux-Francais', 'of French Southern and Antarctic Lands', '260', 'euro', 'EUR', 'cent', 'French Southern and Antarctic Lands', 'TF', 'ATF', 'French Southern Territories', '', '', 0, 0, 0, NULL, NULL),
(262, 'Djibouti', 'Djiboutian', '262', 'Djibouti franc', 'DJF', '', 'Republic of Djibouti', 'DJ', 'DJI', 'Djibouti', '002', '014', 0, 0, 0, NULL, NULL),
(266, 'Libreville', 'Gabonese', '266', 'CFA franc (BEAC)', 'XAF', 'centime', 'Gabonese Republic', 'GA', 'GAB', 'Gabon', '002', '017', 0, 0, 0, NULL, NULL),
(268, 'Tbilisi', 'Georgian', '268', 'lari', 'GEL', 'tetri (inv.)', 'Georgia', 'GE', 'GEO', 'Georgia', '142', '145', 0, 0, 0, NULL, NULL),
(270, 'Banjul', 'Gambian', '270', 'dalasi (inv.)', 'GMD', 'butut', 'Republic of the Gambia', 'GM', 'GMB', 'Gambia', '002', '011', 0, 0, 0, NULL, NULL),
(275, NULL, 'Palestinian', '275', NULL, NULL, NULL, NULL, 'PS', 'PSE', 'Palestinian Territory, Occupied', '142', '145', 0, 0, 0, NULL, NULL),
(276, 'Berlin', 'German', '276', 'euro', 'EUR', 'cent', 'Federal Republic of Germany', 'DE', 'DEU', 'Germany', '150', '155', 1, 1, 1, NULL, NULL),
(288, 'Accra', 'Ghanaian', '288', 'Ghana cedi', 'GHS', 'pesewa', 'Republic of Ghana', 'GH', 'GHA', 'Ghana', '002', '011', 0, 0, 0, NULL, NULL),
(292, 'Gibraltar', 'Gibraltarian', '292', 'Gibraltar pound', 'GIP', 'penny', 'Gibraltar', 'GI', 'GIB', 'Gibraltar', '150', '039', 0, 0, 0, NULL, NULL),
(296, 'Tarawa', 'Kiribatian', '296', 'Australian dollar', 'AUD', 'cent', 'Republic of Kiribati', 'KI', 'KIR', 'Kiribati', '009', '057', 0, 0, 0, NULL, NULL),
(300, 'Athens', 'Greek', '300', 'euro', 'EUR', 'cent', 'Hellenic Republic', 'GR', 'GRC', 'Greece', '150', '039', 1, 0, 1, NULL, NULL),
(304, 'Nuuk', 'Greenlander', '304', 'Danish krone', 'DKK', 'øre (inv.)', 'Greenland', 'GL', 'GRL', 'Greenland', '019', '021', 0, 1, 0, NULL, NULL),
(308, 'St George’s', 'Grenadian', '308', 'East Caribbean dollar', 'XCD', 'cent', 'Grenada', 'GD', 'GRD', 'Grenada', '019', '029', 0, 0, 0, NULL, NULL),
(312, 'Basse Terre', 'Guadeloupean', '312', 'euro', 'EUR ', 'cent', 'Guadeloupe', 'GP', 'GLP', 'Guadeloupe', '019', '029', 0, 0, 0, NULL, NULL),
(316, 'Agaña (Hagåtña)', 'Guamanian', '316', 'US dollar', 'USD', 'cent', 'Territory of Guam', 'GU', 'GUM', 'Guam', '009', '057', 0, 0, 0, NULL, NULL),
(320, 'Guatemala City', 'Guatemalan', '320', 'quetzal (pl. quetzales)', 'GTQ', 'centavo', 'Republic of Guatemala', 'GT', 'GTM', 'Guatemala', '019', '013', 0, 0, 0, NULL, NULL),
(324, 'Conakry', 'Guinean', '324', 'Guinean franc', 'GNF', '', 'Republic of Guinea', 'GN', 'GIN', 'Guinea', '002', '011', 0, 0, 0, NULL, NULL),
(328, 'Georgetown', 'Guyanese', '328', 'Guyana dollar', 'GYD', 'cent', 'Cooperative Republic of Guyana', 'GY', 'GUY', 'Guyana', '019', '005', 0, 0, 0, NULL, NULL),
(332, 'Port-au-Prince', 'Haitian', '332', 'gourde', 'HTG', 'centime', 'Republic of Haiti', 'HT', 'HTI', 'Haiti', '019', '029', 0, 0, 0, NULL, NULL),
(334, 'Territory of Heard Island and McDonald Islands', 'of Territory of Heard Island and McDonald Islands', '334', '', '', '', 'Territory of Heard Island and McDonald Islands', 'HM', 'HMD', 'Heard Island and McDonald Islands', '', '', 0, 0, 0, NULL, NULL),
(336, 'Vatican City', 'of the Holy See/of the Vatican', '336', 'euro', 'EUR', 'cent', 'the Holy See/ Vatican City State', 'VA', 'VAT', 'Holy See (Vatican City State)', '150', '039', 0, 0, 0, NULL, NULL),
(340, 'Tegucigalpa', 'Honduran', '340', 'lempira', 'HNL', 'centavo', 'Republic of Honduras', 'HN', 'HND', 'Honduras', '019', '013', 0, 0, 0, NULL, NULL),
(344, '(HK3)', 'Hong Kong Chinese', '344', 'Hong Kong dollar', 'HKD', 'cent', 'Hong Kong Special Administrative Region of the People’s Republic of China (HK2)', 'HK', 'HKG', 'Hong Kong', '142', '030', 0, 0, 0, NULL, NULL),
(348, 'Budapest', 'Hungarian', '348', 'forint (inv.)', 'HUF', '(fillér (inv.))', 'Republic of Hungary', 'HU', 'HUN', 'Hungary', '150', '151', 1, 0, 1, NULL, NULL),
(352, 'Reykjavik', 'Icelander', '352', 'króna (pl. krónur)', 'ISK', '', 'Republic of Iceland', 'IS', 'ISL', 'Iceland', '150', '154', 1, 1, 1, NULL, NULL),
(356, 'New Delhi', 'Indian', '356', 'Indian rupee', 'INR', 'paisa', 'Republic of India', 'IN', 'IND', 'India', '142', '034', 0, 0, 0, NULL, NULL),
(360, 'Jakarta', 'Indonesian', '360', 'Indonesian rupiah (inv.)', 'IDR', 'sen (inv.)', 'Republic of Indonesia', 'ID', 'IDN', 'Indonesia', '142', '035', 0, 0, 0, NULL, NULL),
(364, 'Tehran', 'Iranian', '364', 'Iranian rial', 'IRR', '(dinar) (IR1)', 'Islamic Republic of Iran', 'IR', 'IRN', 'Iran, Islamic Republic of', '142', '034', 0, 0, 0, NULL, NULL),
(368, 'Baghdad', 'Iraqi', '368', 'Iraqi dinar', 'IQD', 'fils (inv.)', 'Republic of Iraq', 'IQ', 'IRQ', 'Iraq', '142', '145', 0, 0, 0, NULL, NULL),
(372, 'Dublin', 'Irish', '372', 'euro', 'EUR', 'cent', 'Ireland (IE1)', 'IE', 'IRL', 'Ireland', '150', '154', 1, 0, 0, ',', '.'),
(376, '(IL1)', 'Israeli', '376', 'shekel', 'ILS', 'agora', 'State of Israel', 'IL', 'ISR', 'Israel', '142', '145', 0, 1, 0, NULL, NULL),
(380, 'Rome', 'Italian', '380', 'euro', 'EUR', 'cent', 'Italian Republic', 'IT', 'ITA', 'Italy', '150', '039', 1, 1, 1, NULL, NULL),
(384, 'Yamoussoukro (CI1)', 'Ivorian', '384', 'CFA franc (BCEAO)', 'XOF', 'centime', 'Republic of Côte d’Ivoire', 'CI', 'CIV', 'Côte d\'Ivoire', '002', '011', 0, 0, 0, NULL, NULL),
(388, 'Kingston', 'Jamaican', '388', 'Jamaica dollar', 'JMD', 'cent', 'Jamaica', 'JM', 'JAM', 'Jamaica', '019', '029', 0, 0, 0, NULL, NULL),
(392, 'Tokyo', 'Japanese', '392', 'yen (inv.)', 'JPY', '(sen (inv.)) (JP1)', 'Japan', 'JP', 'JPN', 'Japan', '142', '030', 0, 0, 0, NULL, NULL),
(398, 'Astana', 'Kazakh', '398', 'tenge (inv.)', 'KZT', 'tiyn', 'Republic of Kazakhstan', 'KZ', 'KAZ', 'Kazakhstan', '142', '143', 0, 0, 0, NULL, NULL),
(400, 'Amman', 'Jordanian', '400', 'Jordanian dinar', 'JOD', '100 qirsh', 'Hashemite Kingdom of Jordan', 'JO', 'JOR', 'Jordan', '142', '145', 0, 0, 0, NULL, NULL),
(404, 'Nairobi', 'Kenyan', '404', 'Kenyan shilling', 'KES', 'cent', 'Republic of Kenya', 'KE', 'KEN', 'Kenya', '002', '014', 0, 0, 0, NULL, NULL),
(408, 'Pyongyang', 'North Korean', '408', 'North Korean won (inv.)', 'KPW', 'chun (inv.)', 'Democratic People’s Republic of Korea', 'KP', 'PRK', 'Korea, Democratic People\'s Republic of', '142', '030', 0, 0, 0, NULL, NULL),
(410, 'Seoul', 'South Korean', '410', 'South Korean won (inv.)', 'KRW', '(chun (inv.))', 'Republic of Korea', 'KR', 'KOR', 'Korea, Republic of', '142', '030', 0, 0, 0, NULL, NULL),
(414, 'Kuwait City', 'Kuwaiti', '414', 'Kuwaiti dinar', 'KWD', 'fils (inv.)', 'State of Kuwait', 'KW', 'KWT', 'Kuwait', '142', '145', 0, 0, 0, NULL, NULL),
(417, 'Bishkek', 'Kyrgyz', '417', 'som', 'KGS', 'tyiyn', 'Kyrgyz Republic', 'KG', 'KGZ', 'Kyrgyzstan', '142', '143', 0, 0, 0, NULL, NULL),
(418, 'Vientiane', 'Lao', '418', 'kip (inv.)', 'LAK', '(at (inv.))', 'Lao People’s Democratic Republic', 'LA', 'LAO', 'Lao People\'s Democratic Republic', '142', '035', 0, 0, 0, NULL, NULL),
(422, 'Beirut', 'Lebanese', '422', 'Lebanese pound', 'LBP', '(piastre)', 'Lebanese Republic', 'LB', 'LBN', 'Lebanon', '142', '145', 0, 0, 0, NULL, NULL),
(426, 'Maseru', 'Basotho', '426', 'loti (pl. maloti)', 'LSL', 'sente', 'Kingdom of Lesotho', 'LS', 'LSO', 'Lesotho', '002', '018', 0, 0, 0, NULL, NULL),
(428, 'Riga', 'Latvian', '428', 'euro', 'EUR', 'cent', 'Republic of Latvia', 'LV', 'LVA', 'Latvia', '150', '154', 1, 0, 0, NULL, NULL),
(430, 'Monrovia', 'Liberian', '430', 'Liberian dollar', 'LRD', 'cent', 'Republic of Liberia', 'LR', 'LBR', 'Liberia', '002', '011', 0, 0, 0, NULL, NULL),
(434, 'Tripoli', 'Libyan', '434', 'Libyan dinar', 'LYD', 'dirham', 'Socialist People’s Libyan Arab Jamahiriya', 'LY', 'LBY', 'Libya', '002', '015', 0, 0, 0, NULL, NULL),
(438, 'Vaduz', 'Liechtensteiner', '438', 'Swiss franc', 'CHF', 'centime', 'Principality of Liechtenstein', 'LI', 'LIE', 'Liechtenstein', '150', '155', 1, 0, 0, NULL, NULL),
(440, 'Vilnius', 'Lithuanian', '440', 'euro', 'EUR', 'cent', 'Republic of Lithuania', 'LT', 'LTU', 'Lithuania', '150', '154', 1, 0, 1, NULL, NULL),
(442, 'Luxembourg', 'Luxembourger', '442', 'euro', 'EUR', 'cent', 'Grand Duchy of Luxembourg', 'LU', 'LUX', 'Luxembourg', '150', '155', 1, 1, 0, NULL, NULL),
(446, 'Macao (MO3)', 'Macanese', '446', 'pataca', 'MOP', 'avo', 'Macao Special Administrative Region of the People’s Republic of China (MO2)', 'MO', 'MAC', 'Macao', '142', '030', 0, 0, 0, NULL, NULL),
(450, 'Antananarivo', 'Malagasy', '450', 'ariary', 'MGA', 'iraimbilanja (inv.)', 'Republic of Madagascar', 'MG', 'MDG', 'Madagascar', '002', '014', 0, 0, 0, NULL, NULL),
(454, 'Lilongwe', 'Malawian', '454', 'Malawian kwacha (inv.)', 'MWK', 'tambala (inv.)', 'Republic of Malawi', 'MW', 'MWI', 'Malawi', '002', '014', 0, 0, 0, NULL, NULL),
(458, 'Kuala Lumpur (MY1)', 'Malaysian', '458', 'ringgit (inv.)', 'MYR', 'sen (inv.)', 'Malaysia', 'MY', 'MYS', 'Malaysia', '142', '035', 0, 1, 0, NULL, NULL),
(462, 'Malé', 'Maldivian', '462', 'rufiyaa', 'MVR', 'laari (inv.)', 'Republic of Maldives', 'MV', 'MDV', 'Maldives', '142', '034', 0, 0, 0, NULL, NULL),
(466, 'Bamako', 'Malian', '466', 'CFA franc (BCEAO)', 'XOF', 'centime', 'Republic of Mali', 'ML', 'MLI', 'Mali', '002', '011', 0, 0, 0, NULL, NULL),
(470, 'Valletta', 'Maltese', '470', 'euro', 'EUR', 'cent', 'Republic of Malta', 'MT', 'MLT', 'Malta', '150', '039', 1, 0, 0, NULL, NULL),
(474, 'Fort-de-France', 'Martinican', '474', 'euro', 'EUR', 'cent', 'Martinique', 'MQ', 'MTQ', 'Martinique', '019', '029', 0, 0, 0, NULL, NULL),
(478, 'Nouakchott', 'Mauritanian', '478', 'ouguiya', 'MRO', 'khoum', 'Islamic Republic of Mauritania', 'MR', 'MRT', 'Mauritania', '002', '011', 0, 0, 0, NULL, NULL),
(480, 'Port Louis', 'Mauritian', '480', 'Mauritian rupee', 'MUR', 'cent', 'Republic of Mauritius', 'MU', 'MUS', 'Mauritius', '002', '014', 0, 0, 0, NULL, NULL),
(484, 'Mexico City', 'Mexican', '484', 'Mexican peso', 'MXN', 'centavo', 'United Mexican States', 'MX', 'MEX', 'Mexico', '019', '013', 0, 1, 0, NULL, NULL),
(492, 'Monaco', 'Monegasque', '492', 'euro', 'EUR', 'cent', 'Principality of Monaco', 'MC', 'MCO', 'Monaco', '150', '155', 0, 0, 0, NULL, NULL),
(496, 'Ulan Bator', 'Mongolian', '496', 'tugrik', 'MNT', 'möngö (inv.)', 'Mongolia', 'MN', 'MNG', 'Mongolia', '142', '030', 0, 0, 0, NULL, NULL),
(498, 'Chisinau', 'Moldovan', '498', 'Moldovan leu (pl. lei)', 'MDL', 'ban', 'Republic of Moldova', 'MD', 'MDA', 'Moldova, Republic of', '150', '151', 0, 0, 0, NULL, NULL),
(499, 'Podgorica', 'Montenegrin', '499', 'euro', 'EUR', 'cent', 'Montenegro', 'ME', 'MNE', 'Montenegro', '150', '039', 0, 0, 0, NULL, NULL),
(500, 'Plymouth (MS2)', 'Montserratian', '500', 'East Caribbean dollar', 'XCD', 'cent', 'Montserrat', 'MS', 'MSR', 'Montserrat', '019', '029', 0, 0, 0, NULL, NULL),
(504, 'Rabat', 'Moroccan', '504', 'Moroccan dirham', 'MAD', 'centime', 'Kingdom of Morocco', 'MA', 'MAR', 'Morocco', '002', '015', 0, 0, 0, NULL, NULL),
(508, 'Maputo', 'Mozambican', '508', 'metical', 'MZN', 'centavo', 'Republic of Mozambique', 'MZ', 'MOZ', 'Mozambique', '002', '014', 0, 0, 0, NULL, NULL),
(512, 'Muscat', 'Omani', '512', 'Omani rial', 'OMR', 'baiza', 'Sultanate of Oman', 'OM', 'OMN', 'Oman', '142', '145', 0, 0, 0, NULL, NULL),
(516, 'Windhoek', 'Namibian', '516', 'Namibian dollar', 'NAD', 'cent', 'Republic of Namibia', 'NA', 'NAM', 'Namibia', '002', '018', 0, 0, 0, NULL, NULL),
(520, 'Yaren', 'Nauruan', '520', 'Australian dollar', 'AUD', 'cent', 'Republic of Nauru', 'NR', 'NRU', 'Nauru', '009', '057', 0, 0, 0, NULL, NULL),
(524, 'Kathmandu', 'Nepalese', '524', 'Nepalese rupee', 'NPR', 'paisa (inv.)', 'Nepal', 'NP', 'NPL', 'Nepal', '142', '034', 0, 0, 0, NULL, NULL),
(528, 'Amsterdam (NL2)', 'Dutch', '528', 'euro', 'EUR', 'cent', 'Kingdom of the Netherlands', 'NL', 'NLD', 'Netherlands', '150', '155', 1, 1, 0, NULL, NULL),
(531, 'Willemstad', 'Curaçaoan', '531', 'Netherlands Antillean guilder (CW1)', 'ANG', 'cent', 'Curaçao', 'CW', 'CUW', 'Curaçao', '019', '029', 0, 0, 0, NULL, NULL),
(533, 'Oranjestad', 'Aruban', '533', 'Aruban guilder', 'AWG', 'cent', 'Aruba', 'AW', 'ABW', 'Aruba', '019', '029', 0, 0, 0, NULL, NULL),
(534, 'Philipsburg', 'Sint Maartener', '534', 'Netherlands Antillean guilder (SX1)', 'ANG', 'cent', 'Sint Maarten', 'SX', 'SXM', 'Sint Maarten (Dutch part)', '019', '029', 0, 0, 0, NULL, NULL),
(535, NULL, 'of Bonaire, Sint Eustatius and Saba', '535', 'US dollar', 'USD', 'cent', NULL, 'BQ', 'BES', 'Bonaire, Sint Eustatius and Saba', '019', '029', 0, 0, 0, NULL, NULL),
(540, 'Nouméa', 'New Caledonian', '540', 'CFP franc', 'XPF', 'centime', 'New Caledonia', 'NC', 'NCL', 'New Caledonia', '009', '054', 0, 0, 0, NULL, NULL),
(548, 'Port Vila', 'Vanuatuan', '548', 'vatu (inv.)', 'VUV', '', 'Republic of Vanuatu', 'VU', 'VUT', 'Vanuatu', '009', '054', 0, 0, 0, NULL, NULL),
(554, 'Wellington', 'New Zealander', '554', 'New Zealand dollar', 'NZD', 'cent', 'New Zealand', 'NZ', 'NZL', 'New Zealand', '009', '053', 0, 0, 0, NULL, NULL),
(558, 'Managua', 'Nicaraguan', '558', 'córdoba oro', 'NIO', 'centavo', 'Republic of Nicaragua', 'NI', 'NIC', 'Nicaragua', '019', '013', 0, 0, 0, NULL, NULL),
(562, 'Niamey', 'Nigerien', '562', 'CFA franc (BCEAO)', 'XOF', 'centime', 'Republic of Niger', 'NE', 'NER', 'Niger', '002', '011', 0, 0, 0, NULL, NULL),
(566, 'Abuja', 'Nigerian', '566', 'naira (inv.)', 'NGN', 'kobo (inv.)', 'Federal Republic of Nigeria', 'NG', 'NGA', 'Nigeria', '002', '011', 0, 0, 0, NULL, NULL),
(570, 'Alofi', 'Niuean', '570', 'New Zealand dollar', 'NZD', 'cent', 'Niue', 'NU', 'NIU', 'Niue', '009', '061', 0, 0, 0, NULL, NULL),
(574, 'Kingston', 'Norfolk Islander', '574', 'Australian dollar', 'AUD', 'cent', 'Territory of Norfolk Island', 'NF', 'NFK', 'Norfolk Island', '009', '053', 0, 0, 0, NULL, NULL),
(578, 'Oslo', 'Norwegian', '578', 'Norwegian krone (pl. kroner)', 'NOK', 'øre (inv.)', 'Kingdom of Norway', 'NO', 'NOR', 'Norway', '150', '154', 1, 0, 0, NULL, NULL),
(580, 'Saipan', 'Northern Mariana Islander', '580', 'US dollar', 'USD', 'cent', 'Commonwealth of the Northern Mariana Islands', 'MP', 'MNP', 'Northern Mariana Islands', '009', '057', 0, 0, 0, NULL, NULL),
(581, 'United States Minor Outlying Islands', 'of United States Minor Outlying Islands', '581', 'US dollar', 'USD', 'cent', 'United States Minor Outlying Islands', 'UM', 'UMI', 'United States Minor Outlying Islands', '', '', 0, 0, 0, NULL, NULL),
(583, 'Palikir', 'Micronesian', '583', 'US dollar', 'USD', 'cent', 'Federated States of Micronesia', 'FM', 'FSM', 'Micronesia, Federated States of', '009', '057', 0, 0, 0, NULL, NULL),
(584, 'Majuro', 'Marshallese', '584', 'US dollar', 'USD', 'cent', 'Republic of the Marshall Islands', 'MH', 'MHL', 'Marshall Islands', '009', '057', 0, 0, 0, NULL, NULL),
(585, 'Melekeok', 'Palauan', '585', 'US dollar', 'USD', 'cent', 'Republic of Palau', 'PW', 'PLW', 'Palau', '009', '057', 0, 0, 0, NULL, NULL),
(586, 'Islamabad', 'Pakistani', '586', 'Pakistani rupee', 'PKR', 'paisa', 'Islamic Republic of Pakistan', 'PK', 'PAK', 'Pakistan', '142', '034', 0, 0, 0, NULL, NULL),
(591, 'Panama City', 'Panamanian', '591', 'balboa', 'PAB', 'centésimo', 'Republic of Panama', 'PA', 'PAN', 'Panama', '019', '013', 0, 0, 0, NULL, NULL),
(598, 'Port Moresby', 'Papua New Guinean', '598', 'kina (inv.)', 'PGK', 'toea (inv.)', 'Independent State of Papua New Guinea', 'PG', 'PNG', 'Papua New Guinea', '009', '054', 0, 0, 0, NULL, NULL),
(600, 'Asunción', 'Paraguayan', '600', 'guaraní', 'PYG', 'céntimo', 'Republic of Paraguay', 'PY', 'PRY', 'Paraguay', '019', '005', 0, 0, 0, NULL, NULL),
(604, 'Lima', 'Peruvian', '604', 'new sol', 'PEN', 'céntimo', 'Republic of Peru', 'PE', 'PER', 'Peru', '019', '005', 0, 0, 0, NULL, NULL),
(608, 'Manila', 'Filipino', '608', 'Philippine peso', 'PHP', 'centavo', 'Republic of the Philippines', 'PH', 'PHL', 'Philippines', '142', '035', 0, 0, 0, NULL, NULL),
(612, 'Adamstown', 'Pitcairner', '612', 'New Zealand dollar', 'NZD', 'cent', 'Pitcairn Islands', 'PN', 'PCN', 'Pitcairn', '009', '061', 0, 0, 0, NULL, NULL),
(616, 'Warsaw', 'Polish', '616', 'zloty', 'PLN', 'grosz (pl. groszy)', 'Republic of Poland', 'PL', 'POL', 'Poland', '150', '151', 1, 1, 1, NULL, NULL),
(620, 'Lisbon', 'Portuguese', '620', 'euro', 'EUR', 'cent', 'Portuguese Republic', 'PT', 'PRT', 'Portugal', '150', '039', 1, 1, 1, NULL, NULL),
(624, 'Bissau', 'Guinea-Bissau national', '624', 'CFA franc (BCEAO)', 'XOF', 'centime', 'Republic of Guinea-Bissau', 'GW', 'GNB', 'Guinea-Bissau', '002', '011', 0, 0, 0, NULL, NULL),
(626, 'Dili', 'East Timorese', '626', 'US dollar', 'USD', 'cent', 'Democratic Republic of East Timor', 'TL', 'TLS', 'Timor-Leste', '142', '035', 0, 0, 0, NULL, NULL),
(630, 'San Juan', 'Puerto Rican', '630', 'US dollar', 'USD', 'cent', 'Commonwealth of Puerto Rico', 'PR', 'PRI', 'Puerto Rico', '019', '029', 0, 0, 0, NULL, NULL),
(634, 'Doha', 'Qatari', '634', 'Qatari riyal', 'QAR', 'dirham', 'State of Qatar', 'QA', 'QAT', 'Qatar', '142', '145', 0, 0, 0, NULL, NULL),
(638, 'Saint-Denis', 'Reunionese', '638', 'euro', 'EUR', 'cent', 'Réunion', 'RE', 'REU', 'Réunion', '002', '014', 0, 0, 0, NULL, NULL),
(642, 'Bucharest', 'Romanian', '642', 'Romanian leu (pl. lei)', 'RON', 'ban (pl. bani)', 'Romania', 'RO', 'ROU', 'Romania', '150', '151', 1, 0, 1, NULL, NULL),
(643, 'Moscow', 'Russian', '643', 'Russian rouble', 'RUB', 'kopek', 'Russian Federation', 'RU', 'RUS', 'Russian Federation', '150', '151', 0, 0, 0, NULL, NULL),
(646, 'Kigali', 'Rwandan; Rwandese', '646', 'Rwandese franc', 'RWF', 'centime', 'Republic of Rwanda', 'RW', 'RWA', 'Rwanda', '002', '014', 0, 0, 0, NULL, NULL),
(652, 'Gustavia', 'of Saint Barthélemy', '652', 'euro', 'EUR', 'cent', 'Collectivity of Saint Barthélemy', 'BL', 'BLM', 'Saint Barthélemy', '019', '029', 0, 0, 0, NULL, NULL),
(654, 'Jamestown', 'Saint Helenian', '654', 'Saint Helena pound', 'SHP', 'penny', 'Saint Helena, Ascension and Tristan da Cunha', 'SH', 'SHN', 'Saint Helena, Ascension and Tristan da Cunha', '002', '011', 0, 0, 0, NULL, NULL),
(659, 'Basseterre', 'Kittsian; Nevisian', '659', 'East Caribbean dollar', 'XCD', 'cent', 'Federation of Saint Kitts and Nevis', 'KN', 'KNA', 'Saint Kitts and Nevis', '019', '029', 0, 0, 0, NULL, NULL),
(660, 'The Valley', 'Anguillan', '660', 'East Caribbean dollar', 'XCD', 'cent', 'Anguilla', 'AI', 'AIA', 'Anguilla', '019', '029', 0, 0, 0, NULL, NULL),
(662, 'Castries', 'Saint Lucian', '662', 'East Caribbean dollar', 'XCD', 'cent', 'Saint Lucia', 'LC', 'LCA', 'Saint Lucia', '019', '029', 0, 0, 0, NULL, NULL),
(663, 'Marigot', 'of Saint Martin', '663', 'euro', 'EUR', 'cent', 'Collectivity of Saint Martin', 'MF', 'MAF', 'Saint Martin (French part)', '019', '029', 0, 0, 0, NULL, NULL),
(666, 'Saint-Pierre', 'St-Pierrais; Miquelonnais', '666', 'euro', 'EUR', 'cent', 'Territorial Collectivity of Saint Pierre and Miquelon', 'PM', 'SPM', 'Saint Pierre and Miquelon', '019', '021', 0, 0, 0, NULL, NULL),
(670, 'Kingstown', 'Vincentian', '670', 'East Caribbean dollar', 'XCD', 'cent', 'Saint Vincent and the Grenadines', 'VC', 'VCT', 'Saint Vincent and the Grenadines', '019', '029', 0, 0, 0, NULL, NULL),
(674, 'San Marino', 'San Marinese', '674', 'euro', 'EUR ', 'cent', 'Republic of San Marino', 'SM', 'SMR', 'San Marino', '150', '039', 0, 0, 0, NULL, NULL),
(678, 'São Tomé', 'São Toméan', '678', 'dobra', 'STD', 'centavo', 'Democratic Republic of São Tomé and Príncipe', 'ST', 'STP', 'Sao Tome and Principe', '002', '017', 0, 0, 0, NULL, NULL),
(682, 'Riyadh', 'Saudi Arabian', '682', 'riyal', 'SAR', 'halala', 'Kingdom of Saudi Arabia', 'SA', 'SAU', 'Saudi Arabia', '142', '145', 0, 0, 0, NULL, NULL),
(686, 'Dakar', 'Senegalese', '686', 'CFA franc (BCEAO)', 'XOF', 'centime', 'Republic of Senegal', 'SN', 'SEN', 'Senegal', '002', '011', 0, 0, 0, NULL, NULL),
(688, 'Belgrade', 'Serb', '688', 'Serbian dinar', 'RSD', 'para (inv.)', 'Republic of Serbia', 'RS', 'SRB', 'Serbia', '150', '039', 0, 0, 0, NULL, NULL),
(690, 'Victoria', 'Seychellois', '690', 'Seychelles rupee', 'SCR', 'cent', 'Republic of Seychelles', 'SC', 'SYC', 'Seychelles', '002', '014', 0, 0, 0, NULL, NULL),
(694, 'Freetown', 'Sierra Leonean', '694', 'leone', 'SLL', 'cent', 'Republic of Sierra Leone', 'SL', 'SLE', 'Sierra Leone', '002', '011', 0, 0, 0, NULL, NULL),
(702, 'Singapore', 'Singaporean', '702', 'Singapore dollar', 'SGD', 'cent', 'Republic of Singapore', 'SG', 'SGP', 'Singapore', '142', '035', 0, 0, 0, NULL, NULL),
(703, 'Bratislava', 'Slovak', '703', 'euro', 'EUR', 'cent', 'Slovak Republic', 'SK', 'SVK', 'Slovakia', '150', '151', 1, 0, 1, NULL, NULL),
(704, 'Hanoi', 'Vietnamese', '704', 'dong', 'VND', '(10 hào', 'Socialist Republic of Vietnam', 'VN', 'VNM', 'Viet Nam', '142', '035', 0, 0, 0, NULL, NULL),
(705, 'Ljubljana', 'Slovene', '705', 'euro', 'EUR', 'cent', 'Republic of Slovenia', 'SI', 'SVN', 'Slovenia', '150', '039', 1, 0, 1, NULL, NULL),
(706, 'Mogadishu', 'Somali', '706', 'Somali shilling', 'SOS', 'cent', 'Somali Republic', 'SO', 'SOM', 'Somalia', '002', '014', 0, 0, 0, NULL, NULL),
(710, 'Pretoria (ZA1)', 'South African', '710', 'rand', 'ZAR', 'cent', 'Republic of South Africa', 'ZA', 'ZAF', 'South Africa', '002', '018', 0, 0, 0, NULL, NULL),
(716, 'Harare', 'Zimbabwean', '716', 'Zimbabwe dollar (ZW1)', 'ZWL', 'cent', 'Republic of Zimbabwe', 'ZW', 'ZWE', 'Zimbabwe', '002', '014', 0, 0, 0, NULL, NULL),
(724, 'Madrid', 'Spaniard', '724', 'euro', 'EUR', 'cent', 'Kingdom of Spain', 'ES', 'ESP', 'Spain', '150', '039', 1, 1, 1, NULL, NULL),
(728, 'Juba', 'South Sudanese', '728', 'South Sudanese pound', 'SSP', 'piaster', 'Republic of South Sudan', 'SS', 'SSD', 'South Sudan', '002', '015', 0, 0, 0, NULL, NULL),
(729, 'Khartoum', 'Sudanese', '729', 'Sudanese pound', 'SDG', 'piastre', 'Republic of the Sudan', 'SD', 'SDN', 'Sudan', '002', '015', 0, 0, 0, NULL, NULL),
(732, 'Al aaiun', 'Sahrawi', '732', 'Moroccan dirham', 'MAD', 'centime', 'Western Sahara', 'EH', 'ESH', 'Western Sahara', '002', '015', 0, 0, 0, NULL, NULL),
(740, 'Paramaribo', 'Surinamese', '740', 'Surinamese dollar', 'SRD', 'cent', 'Republic of Suriname', 'SR', 'SUR', 'Suriname', '019', '005', 0, 0, 0, NULL, NULL),
(744, 'Longyearbyen', 'of Svalbard', '744', 'Norwegian krone (pl. kroner)', 'NOK', 'øre (inv.)', 'Svalbard and Jan Mayen', 'SJ', 'SJM', 'Svalbard and Jan Mayen', '150', '154', 0, 0, 0, NULL, NULL),
(748, 'Mbabane', 'Swazi', '748', 'lilangeni', 'SZL', 'cent', 'Kingdom of Swaziland', 'SZ', 'SWZ', 'Swaziland', '002', '018', 0, 0, 0, NULL, NULL),
(752, 'Stockholm', 'Swedish', '752', 'krona (pl. kronor)', 'SEK', 'öre (inv.)', 'Kingdom of Sweden', 'SE', 'SWE', 'Sweden', '150', '154', 1, 1, 1, NULL, NULL),
(756, 'Berne', 'Swiss', '756', 'Swiss franc', 'CHF', 'centime', 'Swiss Confederation', 'CH', 'CHE', 'Switzerland', '150', '155', 1, 1, 0, NULL, NULL),
(760, 'Damascus', 'Syrian', '760', 'Syrian pound', 'SYP', 'piastre', 'Syrian Arab Republic', 'SY', 'SYR', 'Syrian Arab Republic', '142', '145', 0, 0, 0, NULL, NULL),
(762, 'Dushanbe', 'Tajik', '762', 'somoni', 'TJS', 'diram', 'Republic of Tajikistan', 'TJ', 'TJK', 'Tajikistan', '142', '143', 0, 0, 0, NULL, NULL),
(764, 'Bangkok', 'Thai', '764', 'baht (inv.)', 'THB', 'satang (inv.)', 'Kingdom of Thailand', 'TH', 'THA', 'Thailand', '142', '035', 0, 0, 0, NULL, NULL),
(768, 'Lomé', 'Togolese', '768', 'CFA franc (BCEAO)', 'XOF', 'centime', 'Togolese Republic', 'TG', 'TGO', 'Togo', '002', '011', 0, 0, 0, NULL, NULL),
(772, '(TK2)', 'Tokelauan', '772', 'New Zealand dollar', 'NZD', 'cent', 'Tokelau', 'TK', 'TKL', 'Tokelau', '009', '061', 0, 0, 0, NULL, NULL),
(776, 'Nuku’alofa', 'Tongan', '776', 'pa’anga (inv.)', 'TOP', 'seniti (inv.)', 'Kingdom of Tonga', 'TO', 'TON', 'Tonga', '009', '061', 0, 0, 0, NULL, NULL),
(780, 'Port of Spain', 'Trinidadian; Tobagonian', '780', 'Trinidad and Tobago dollar', 'TTD', 'cent', 'Republic of Trinidad and Tobago', 'TT', 'TTO', 'Trinidad and Tobago', '019', '029', 0, 0, 0, NULL, NULL),
(784, 'Abu Dhabi', 'Emirian', '784', 'UAE dirham', 'AED', 'fils (inv.)', 'United Arab Emirates', 'AE', 'ARE', 'United Arab Emirates', '142', '145', 0, 0, 0, NULL, NULL),
(788, 'Tunis', 'Tunisian', '788', 'Tunisian dinar', 'TND', 'millime', 'Republic of Tunisia', 'TN', 'TUN', 'Tunisia', '002', '015', 0, 0, 0, NULL, NULL),
(792, 'Ankara', 'Turk', '792', 'Turkish lira (inv.)', 'TRY', 'kurus (inv.)', 'Republic of Turkey', 'TR', 'TUR', 'Turkey', '142', '145', 0, 0, 0, NULL, NULL),
(795, 'Ashgabat', 'Turkmen', '795', 'Turkmen manat (inv.)', 'TMT', 'tenge (inv.)', 'Turkmenistan', 'TM', 'TKM', 'Turkmenistan', '142', '143', 0, 0, 0, NULL, NULL),
(796, 'Cockburn Town', 'Turks and Caicos Islander', '796', 'US dollar', 'USD', 'cent', 'Turks and Caicos Islands', 'TC', 'TCA', 'Turks and Caicos Islands', '019', '029', 0, 0, 0, NULL, NULL),
(798, 'Funafuti', 'Tuvaluan', '798', 'Australian dollar', 'AUD', 'cent', 'Tuvalu', 'TV', 'TUV', 'Tuvalu', '009', '061', 0, 0, 0, NULL, NULL),
(800, 'Kampala', 'Ugandan', '800', 'Uganda shilling', 'UGX', 'cent', 'Republic of Uganda', 'UG', 'UGA', 'Uganda', '002', '014', 0, 0, 0, NULL, NULL),
(804, 'Kiev', 'Ukrainian', '804', 'hryvnia', 'UAH', 'kopiyka', 'Ukraine', 'UA', 'UKR', 'Ukraine', '150', '151', 0, 0, 0, NULL, NULL),
(807, 'Skopje', 'of the former Yugoslav Republic of Macedonia', '807', 'denar (pl. denars)', 'MKD', 'deni (inv.)', 'the former Yugoslav Republic of Macedonia', 'MK', 'MKD', 'Macedonia, the former Yugoslav Republic of', '150', '039', 0, 0, 0, NULL, NULL),
(818, 'Cairo', 'Egyptian', '818', 'Egyptian pound', 'EGP', 'piastre', 'Arab Republic of Egypt', 'EG', 'EGY', 'Egypt', '002', '015', 0, 0, 0, NULL, NULL),
(826, 'London', 'British', '826', 'pound sterling', 'GBP', 'penny (pl. pence)', 'United Kingdom of Great Britain and Northern Ireland', 'GB', 'GBR', 'United Kingdom', '150', '154', 1, 0, 0, NULL, NULL),
(831, 'St Peter Port', 'of Guernsey', '831', 'Guernsey pound (GG2)', 'GGP (GG2)', 'penny (pl. pence)', 'Bailiwick of Guernsey', 'GG', 'GGY', 'Guernsey', '150', '154', 0, 0, 0, NULL, NULL),
(832, 'St Helier', 'of Jersey', '832', 'Jersey pound (JE2)', 'JEP (JE2)', 'penny (pl. pence)', 'Bailiwick of Jersey', 'JE', 'JEY', 'Jersey', '150', '154', 0, 0, 0, NULL, NULL),
(833, 'Douglas', 'Manxman; Manxwoman', '833', 'Manx pound (IM2)', 'IMP (IM2)', 'penny (pl. pence)', 'Isle of Man', 'IM', 'IMN', 'Isle of Man', '150', '154', 0, 0, 0, NULL, NULL),
(834, 'Dodoma (TZ1)', 'Tanzanian', '834', 'Tanzanian shilling', 'TZS', 'cent', 'United Republic of Tanzania', 'TZ', 'TZA', 'Tanzania, United Republic of', '002', '014', 0, 0, 0, NULL, NULL),
(840, 'Washington DC', 'American', '840', 'US dollar', 'USD', 'cent', 'United States of America', 'US', 'USA', 'United States', '019', '021', 0, 0, 0, NULL, NULL),
(850, 'Charlotte Amalie', 'US Virgin Islander', '850', 'US dollar', 'USD', 'cent', 'United States Virgin Islands', 'VI', 'VIR', 'Virgin Islands, U.S.', '019', '029', 0, 0, 0, NULL, NULL),
(854, 'Ouagadougou', 'Burkinabe', '854', 'CFA franc (BCEAO)', 'XOF', 'centime', 'Burkina Faso', 'BF', 'BFA', 'Burkina Faso', '002', '011', 0, 0, 0, NULL, NULL),
(858, 'Montevideo', 'Uruguayan', '858', 'Uruguayan peso', 'UYU', 'centésimo', 'Eastern Republic of Uruguay', 'UY', 'URY', 'Uruguay', '019', '005', 0, 1, 0, NULL, NULL),
(860, 'Tashkent', 'Uzbek', '860', 'sum (inv.)', 'UZS', 'tiyin (inv.)', 'Republic of Uzbekistan', 'UZ', 'UZB', 'Uzbekistan', '142', '143', 0, 0, 0, NULL, NULL),
(862, 'Caracas', 'Venezuelan', '862', 'bolívar fuerte (pl. bolívares fuertes)', 'VEF', 'céntimo', 'Bolivarian Republic of Venezuela', 'VE', 'VEN', 'Venezuela, Bolivarian Republic of', '019', '005', 0, 0, 0, NULL, NULL),
(876, 'Mata-Utu', 'Wallisian; Futunan; Wallis and Futuna Islander', '876', 'CFP franc', 'XPF', 'centime', 'Wallis and Futuna', 'WF', 'WLF', 'Wallis and Futuna', '009', '061', 0, 0, 0, NULL, NULL),
(882, 'Apia', 'Samoan', '882', 'tala (inv.)', 'WST', 'sene (inv.)', 'Independent State of Samoa', 'WS', 'WSM', 'Samoa', '009', '061', 0, 0, 0, NULL, NULL),
(887, 'San’a', 'Yemenite', '887', 'Yemeni rial', 'YER', 'fils (inv.)', 'Republic of Yemen', 'YE', 'YEM', 'Yemen', '142', '145', 0, 0, 0, NULL, NULL),
(894, 'Lusaka', 'Zambian', '894', 'Zambian kwacha (inv.)', 'ZMW', 'ngwee (inv.)', 'Republic of Zambia', 'ZM', 'ZMB', 'Zambia', '002', '014', 0, 0, 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `currencies`
--

CREATE TABLE `currencies` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `symbol` varchar(255) NOT NULL,
  `precisions` varchar(255) NOT NULL,
  `thousand_separator` varchar(255) NOT NULL,
  `decimal_separator` varchar(255) NOT NULL,
  `code` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `currencies`
--

INSERT INTO `currencies` (`id`, `name`, `symbol`, `precisions`, `thousand_separator`, `decimal_separator`, `code`) VALUES
(1, 'DOLARES', '$', '2', ',', '.', 'USD');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pagos`
--

CREATE TABLE `pagos` (
  `pago_id` int(11) NOT NULL,
  `idcliente` int(11) NOT NULL,
  `idpaquete` int(11) NOT NULL,
  `fecha` date NOT NULL,
  `hora` time NOT NULL,
  `pago` decimal(12,2) NOT NULL,
  `efectivo` decimal(12,2) NOT NULL,
  `forma_pago` int(11) DEFAULT NULL,
  `numero_deposito` varchar(11) DEFAULT NULL,
  `activo` int(3) NOT NULL DEFAULT '1',
  `fecha_agregado` datetime DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `paquetes`
--

CREATE TABLE `paquetes` (
  `paquete_id` int(11) NOT NULL,
  `paquete` varchar(250) NOT NULL,
  `precio` decimal(12,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `skins`
--

CREATE TABLE `skins` (
  `id` int(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  `value` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `skins`
--

INSERT INTO `skins` (`id`, `name`, `value`) VALUES
(1, 'Negro claro', 'skin-black'),
(2, 'Azul', 'skin-blue'),
(3, 'P&uacute;rpura', 'skin-purple'),
(4, 'Rojo', 'skin-red'),
(5, 'Verde', 'skin-green'),
(6, 'Amarillo', 'skin-yellow'),
(7, 'Azul claro', 'skin-blue-light'),
(8, 'Blanco', 'skin-black-light'),
(9, 'P&uacute;rpura claro', 'skin-purple-light'),
(10, 'Verde claro', 'skin-green-light'),
(11, 'Amarillo claro', 'skin-yellow-light'),
(12, 'Rojo claro', 'skin-red-light');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `slide`
--

CREATE TABLE `slide` (
  `id` int(11) NOT NULL,
  `title` varchar(200) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `is_public` tinyint(1) NOT NULL DEFAULT '0',
  `position` int(11) NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `team`
--

CREATE TABLE `team` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `is_favorite` tinyint(1) NOT NULL,
  `user_id` int(11) NOT NULL,
  `price` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `team`
--

INSERT INTO `team` (`id`, `name`, `is_favorite`, `user_id`, `price`) VALUES
(3, 'PREJARDÃN', 0, 1, 179514),
(4, 'JARDÃN', 0, 1, 175805),
(5, 'TRANSICIÃ“N', 0, 1, 170834),
(6, 'PRIMERO', 0, 1, 168613),
(7, 'SEGUNDO', 0, 1, 168613),
(8, 'TERCERO', 0, 1, 167631),
(9, 'CUARTO', 0, 1, 167631),
(10, 'QUINTO', 0, 1, 150939);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `timezones`
--

CREATE TABLE `timezones` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `timezones`
--

INSERT INTO `timezones` (`id`, `name`) VALUES
(1, 'America/Guatemala'),
(2, 'US/Samoa'),
(3, 'US/Hawaii'),
(4, 'US/Alaska'),
(5, 'US/Pacific'),
(6, 'America/Tijuana'),
(7, 'US/Arizona'),
(8, 'US/Mountain'),
(9, 'America/Chihuahua'),
(10, 'America/Mazatlan'),
(11, 'America/Mexico_City'),
(12, 'America/Monterrey'),
(13, 'Canada/Saskatchewan'),
(14, 'US/Central'),
(15, 'US/Eastern'),
(16, 'US/East-Indiana'),
(17, 'America/Bogota'),
(18, 'America/Lima'),
(19, 'America/Caracas'),
(20, 'Canada/Atlantic'),
(21, 'America/La_Paz'),
(22, 'America/Santiago'),
(23, 'Canada/Newfoundland'),
(24, 'America/Buenos_Aires'),
(25, 'Greenland'),
(26, 'Atlantic/Stanley'),
(27, 'Atlantic/Azores'),
(28, 'Atlantic/Cape_Verde'),
(29, 'Africa/Casablanca'),
(30, 'Europe/Dublin'),
(31, 'Europe/Lisbon'),
(32, 'Europe/London'),
(33, 'Africa/Monrovia'),
(34, 'Europe/Amsterdam'),
(35, 'Europe/Belgrade'),
(36, 'Europe/Berlin'),
(37, 'Europe/Bratislava'),
(38, 'Europe/Brussels'),
(39, 'Europe/Budapest'),
(40, 'Europe/Copenhagen'),
(41, 'Europe/Ljubljana'),
(42, 'Europe/Madrid'),
(43, 'Europe/Paris'),
(44, 'Europe/Prague'),
(45, 'Europe/Rome'),
(46, 'Europe/Sarajevo'),
(47, 'Europe/Skopje'),
(48, 'Europe/Stockholm'),
(49, 'Europe/Vienna'),
(50, 'Europe/Warsaw'),
(51, 'Europe/Zagreb'),
(52, 'Europe/Athens'),
(53, 'Europe/Bucharest'),
(54, 'Africa/Cairo'),
(55, 'Africa/Harare'),
(56, 'Europe/Helsinki'),
(57, 'Europe/Istanbul'),
(58, 'Asia/Jerusalem'),
(59, 'Europe/Kiev'),
(60, 'Europe/Minsk'),
(61, 'Europe/Riga'),
(62, 'Europe/Sofia'),
(63, 'Europe/Tallinn'),
(64, 'Europe/Vilnius'),
(65, 'Asia/Baghdad'),
(66, 'Asia/Kuwait'),
(67, 'Africa/Nairobi'),
(68, 'Asia/Riyadh'),
(69, 'Asia/Tehran'),
(70, 'Europe/Moscow'),
(71, 'Asia/Baku'),
(72, 'Europe/Volgograd'),
(73, 'Asia/Muscat'),
(74, 'Asia/Tbilisi'),
(75, 'Asia/Yerevan'),
(76, 'Asia/Kabul'),
(77, 'Asia/Karachi'),
(78, 'Asia/Tashkent'),
(79, 'Asia/Kolkata'),
(80, 'Asia/Kathmandu'),
(81, 'Asia/Yekaterinburg'),
(82, 'Asia/Almaty'),
(83, 'Asia/Dhaka'),
(84, 'Asia/Novosibirsk'),
(85, 'Asia/Bangkok'),
(86, 'Asia/Ho_Chi_Minh'),
(87, 'Asia/Jakarta'),
(88, 'Asia/Krasnoyarsk'),
(89, 'Asia/Chongqing'),
(90, 'Asia/Hong_Kong'),
(91, 'Asia/Kuala_Lumpur'),
(92, 'Australia/Perth'),
(93, 'Asia/Singapore'),
(94, 'Asia/Taipei'),
(95, 'Asia/Ulaanbaatar'),
(96, 'Asia/Urumqi'),
(97, 'Asia/Irkutsk'),
(98, 'Asia/Seoul'),
(99, 'Asia/Tokyo'),
(100, 'Australia/Adelaide'),
(101, 'Australia/Darwin'),
(102, 'Asia/Yakutsk'),
(103, 'Australia/Brisbane'),
(104, 'Australia/Canberra'),
(105, 'Pacific/Guam'),
(106, 'Australia/Hobart'),
(107, 'Australia/Melbourne'),
(108, 'Pacific/Port_Moresby'),
(109, 'Australia/Sydney'),
(110, 'Asia/Vladivostok'),
(111, 'Asia/Magadan'),
(112, 'Pacific/Auckland'),
(113, 'Pacific/Fiji'),
(114, 'America/El_Salvador'),
(115, 'America/Costa_Rica');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(60) NOT NULL,
  `image_pic` varchar(150) NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `is_admin` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `user`
--

INSERT INTO `user` (`id`, `username`, `name`, `lastname`, `email`, `password`, `image_pic`, `is_active`, `is_admin`, `created_at`) VALUES
(1, 'admin', 'Amner Abisai', 'Saucedo Sosa', 'waptoing7@gmail.com', '90b9aa7e25f80cf4f64e990b78a9fc5ebd6cecad', 'default.png', 1, 1, '2018-05-26 21:04:48');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `nombre` varchar(250) COLLATE utf8_spanish_ci NOT NULL,
  `usuario` varchar(250) COLLATE utf8_spanish_ci NOT NULL,
  `password` varchar(250) COLLATE utf8_spanish_ci NOT NULL,
  `perfil` int(11) NOT NULL,
  `foto` text COLLATE utf8_spanish_ci,
  `estado` int(11) NOT NULL,
  `ultimo_login` datetime NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `nombre`, `usuario`, `password`, `perfil`, `foto`, `estado`, `ultimo_login`, `fecha`) VALUES
(1, 'Amner Saucedo Sosa', 'admin', 'VqHYiK/liiSZITtppJB49Q==', 1, '', 1, '2019-02-09 10:10:41', '2019-02-09 16:10:41'),
(2, 'cajero', 'cajero', 'YRf2GfFWj9oJCK5eJWbQgQ==', 2, NULL, 1, '2019-02-02 18:12:25', '2019-02-09 16:01:46');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `alumn`
--
ALTER TABLE `alumn`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indices de la tabla `alumn_dest`
--
ALTER TABLE `alumn_dest`
  ADD PRIMARY KEY (`id`),
  ADD KEY `team_id` (`team_id`),
  ADD KEY `alumn_id` (`alumn_id`);

--
-- Indices de la tabla `alumn_team`
--
ALTER TABLE `alumn_team`
  ADD PRIMARY KEY (`id`),
  ADD KEY `alumn_id` (`alumn_id`),
  ADD KEY `team_id` (`team_id`);

--
-- Indices de la tabla `assistance`
--
ALTER TABLE `assistance`
  ADD PRIMARY KEY (`id`),
  ADD KEY `alumn_id` (`alumn_id`),
  ADD KEY `team_id` (`team_id`);

--
-- Indices de la tabla `behavior`
--
ALTER TABLE `behavior`
  ADD PRIMARY KEY (`id`),
  ADD KEY `alumn_id` (`alumn_id`),
  ADD KEY `team_id` (`team_id`);

--
-- Indices de la tabla `block`
--
ALTER TABLE `block`
  ADD PRIMARY KEY (`id`),
  ADD KEY `team_id` (`team_id`);

--
-- Indices de la tabla `business`
--
ALTER TABLE `business`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `calification`
--
ALTER TABLE `calification`
  ADD PRIMARY KEY (`id`),
  ADD KEY `alumn_id` (`alumn_id`),
  ADD KEY `block_id` (`block_id`);

--
-- Indices de la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`cliente_id`);

--
-- Indices de la tabla `configuration`
--
ALTER TABLE `configuration`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indices de la tabla `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `currencies`
--
ALTER TABLE `currencies`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `pagos`
--
ALTER TABLE `pagos`
  ADD PRIMARY KEY (`pago_id`);

--
-- Indices de la tabla `paquetes`
--
ALTER TABLE `paquetes`
  ADD PRIMARY KEY (`paquete_id`);

--
-- Indices de la tabla `skins`
--
ALTER TABLE `skins`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `slide`
--
ALTER TABLE `slide`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `team`
--
ALTER TABLE `team`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indices de la tabla `timezones`
--
ALTER TABLE `timezones`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `user`
--
ALTER TABLE `user`
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
-- AUTO_INCREMENT de la tabla `alumn`
--
ALTER TABLE `alumn`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=472;

--
-- AUTO_INCREMENT de la tabla `alumn_dest`
--
ALTER TABLE `alumn_dest`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `alumn_team`
--
ALTER TABLE `alumn_team`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=458;

--
-- AUTO_INCREMENT de la tabla `assistance`
--
ALTER TABLE `assistance`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `behavior`
--
ALTER TABLE `behavior`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `block`
--
ALTER TABLE `block`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `business`
--
ALTER TABLE `business`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `calification`
--
ALTER TABLE `calification`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `clientes`
--
ALTER TABLE `clientes`
  MODIFY `cliente_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `configuration`
--
ALTER TABLE `configuration`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `countries`
--
ALTER TABLE `countries`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=895;

--
-- AUTO_INCREMENT de la tabla `currencies`
--
ALTER TABLE `currencies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `pagos`
--
ALTER TABLE `pagos`
  MODIFY `pago_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `paquetes`
--
ALTER TABLE `paquetes`
  MODIFY `paquete_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `skins`
--
ALTER TABLE `skins`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `slide`
--
ALTER TABLE `slide`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `team`
--
ALTER TABLE `team`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `timezones`
--
ALTER TABLE `timezones`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=116;

--
-- AUTO_INCREMENT de la tabla `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `alumn_dest`
--
ALTER TABLE `alumn_dest`
  ADD CONSTRAINT `alumn_dest_ibfk_1` FOREIGN KEY (`team_id`) REFERENCES `team` (`id`),
  ADD CONSTRAINT `alumn_dest_ibfk_2` FOREIGN KEY (`alumn_id`) REFERENCES `alumn` (`id`);

--
-- Filtros para la tabla `alumn_team`
--
ALTER TABLE `alumn_team`
  ADD CONSTRAINT `alumn_team_ibfk_1` FOREIGN KEY (`alumn_id`) REFERENCES `alumn` (`id`),
  ADD CONSTRAINT `alumn_team_ibfk_2` FOREIGN KEY (`team_id`) REFERENCES `team` (`id`);

--
-- Filtros para la tabla `assistance`
--
ALTER TABLE `assistance`
  ADD CONSTRAINT `assistance_ibfk_1` FOREIGN KEY (`alumn_id`) REFERENCES `alumn` (`id`),
  ADD CONSTRAINT `assistance_ibfk_2` FOREIGN KEY (`team_id`) REFERENCES `team` (`id`);

--
-- Filtros para la tabla `behavior`
--
ALTER TABLE `behavior`
  ADD CONSTRAINT `behavior_ibfk_1` FOREIGN KEY (`alumn_id`) REFERENCES `alumn` (`id`),
  ADD CONSTRAINT `behavior_ibfk_2` FOREIGN KEY (`team_id`) REFERENCES `team` (`id`);

--
-- Filtros para la tabla `block`
--
ALTER TABLE `block`
  ADD CONSTRAINT `block_ibfk_1` FOREIGN KEY (`team_id`) REFERENCES `team` (`id`);

--
-- Filtros para la tabla `calification`
--
ALTER TABLE `calification`
  ADD CONSTRAINT `calification_ibfk_1` FOREIGN KEY (`alumn_id`) REFERENCES `alumn` (`id`),
  ADD CONSTRAINT `calification_ibfk_2` FOREIGN KEY (`block_id`) REFERENCES `block` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
