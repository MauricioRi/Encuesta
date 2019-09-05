-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 05-09-2019 a las 04:11:22
-- Versión del servidor: 10.1.38-MariaDB
-- Versión de PHP: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `encuesta`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `datos`
--

CREATE TABLE `datos` (
  `ID` int(11) NOT NULL,
  `Pregunta` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  `Tipo` tinyint(1) NOT NULL,
  `fecha` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `datos`
--

INSERT INTO `datos` (`ID`, `Pregunta`, `Tipo`, `fecha`) VALUES
(1, '¿Cómo calificas el servicio que te brindaron en el área de préstamo?', 0, '0000-00-00'),
(2, '¿Cómo calificas el servicio que te brindaron en el área de copiado?', 0, '0000-00-00'),
(3, '¿Cómo calificas el servicio que te brindaron en la hemeroteca?', 0, '0000-00-00'),
(4, '¿Cómo calificas el servicio que te brindaron en la hemeroteca?', 0, '0000-00-00'),
(5, '¿Cómo calificas el servicio que te brindaron en la sala de internet?', 0, '0000-00-00'),
(6, 'Si necesitó de ayuda para la búsqueda de un libro, ¿Cómo le entendieron?', 1, '0000-00-00'),
(7, '¿Encontró el libro que necesita?', 0, '0000-00-00'),
(8, '¿Cuál es el título que no encontró y autor? ', 1, '0000-00-00'),
(9, '¿Encontró la edición que buscaba?', 0, '0000-00-00'),
(10, '¿Cuál es el título del libro y edición necesita', 1, '0000-00-00'),
(11, 'Tiene alguna sugerencia de adquisición, por favor escriba título, autor y edición si lo sabe', 0, '0000-00-00'),
(12, '¿Cómo calificas el servicio que te brindaron en la sala de internet?', 0, '0000-00-00'),
(13, 'Si necesitó de ayuda para la búsqueda de un libro, ¿Cómo le entendieron?', 1, '0000-00-00'),
(14, '¿Encontró el libro que necesita?', 0, '0000-00-00'),
(15, '¿Cuál es el título que no encontró y autor? ', 1, '0000-00-00'),
(16, '¿Encontró la edición que buscaba?', 0, '0000-00-00'),
(17, '¿Cuál es el título del libro y edición necesita', 1, '0000-00-00'),
(18, 'Tiene alguna sugerencia de adquisición, por favor escriba título, autor y edición si lo sabe', 0, '0000-00-00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pregunta`
--

CREATE TABLE `pregunta` (
  `Id_pregunta` int(11) NOT NULL,
  `respuestas` varchar(90) COLLATE utf8_spanish_ci NOT NULL,
  `ponderacion` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `datos`
--
ALTER TABLE `datos`
  ADD PRIMARY KEY (`ID`);

--
-- Indices de la tabla `pregunta`
--
ALTER TABLE `pregunta`
  ADD PRIMARY KEY (`Id_pregunta`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `datos`
--
ALTER TABLE `datos`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT de la tabla `pregunta`
--
ALTER TABLE `pregunta`
  MODIFY `Id_pregunta` int(11) NOT NULL AUTO_INCREMENT;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `pregunta`
--
ALTER TABLE `pregunta`
  ADD CONSTRAINT `pregunta_ibfk_1` FOREIGN KEY (`Id_pregunta`) REFERENCES `datos` (`ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
