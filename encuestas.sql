-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 21-10-2019 a las 17:48:31
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
-- Base de datos: `encuestas`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `datos`
--

CREATE TABLE `datos` (
  `ID` int(11) NOT NULL,
  `Pregunta` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  `Tipo` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `datos`
--

INSERT INTO `datos` (`ID`, `Pregunta`, `Tipo`) VALUES
(1, '¿Cómo calificas el servicio que te brindaron en el área de préstamo?', 0),
(2, '¿Cómo calificas el servicio que te brindaron en el área de copiado?', 0),
(3, '¿Cómo calificas el servicio que te brindaron en la hemeroteca?', 0),
(5, '¿Cómo calificas el servicio que te brindaron en la sala de internet?', 0),
(6, 'Si necesitó de ayuda para la búsqueda de un libro, ¿Cómo le entendieron?', 1),
(7, '¿Encontró el libro que necesita?', 0),
(8, '¿Cuál es el título que no encontró y autor? ', 1),
(9, '¿Encontró la edición que buscaba?', 0),
(10, '¿Cuál es el título del libro y edición necesita', 1),
(11, 'Tiene alguna sugerencia de adquisición, por favor escriba título, autor y edición si lo sabe', 0),
(12, '¿Cómo calificas el servicio que te brindaron en la sala de internet?', 0),
(13, 'Si necesitó de ayuda para la búsqueda de un libro, ¿Cómo le entendieron?', 1),
(14, '¿Encontró el libro que necesita?', 0),
(15, '¿Cuál es el título que no encontró y autor? ', 1),
(16, '¿Encontró la edición que buscaba?', 0),
(17, '¿Cuál es el título del libro y edición necesita', 1),
(18, 'Tiene alguna sugerencia de adquisición, por favor escriba título, autor y edición si lo sabe', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pregunta`
--

CREATE TABLE `pregunta` (
  `Id_pregunta` int(11) NOT NULL,
  `respuestas` varchar(90) COLLATE utf8_spanish_ci DEFAULT NULL,
  `ponderacion` int(11) NOT NULL DEFAULT 1,
  `fecha` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `pregunta`
--

INSERT INTO `pregunta` (`Id_pregunta`, `respuestas`, `ponderacion`, `fecha`) VALUES
(1, 'algo esta tronando', 1, '2019-10-20'),
(2, '', 4, '2019-10-20'),
(3, '', 4, '2019-10-20'),
(5, 'we', 1, '2019-10-20'),
(6, 'sdfsdfsdf', 1, '2019-10-20'),
(7, 'algo trono', 1, '2019-10-20'),
(8, 'lalalaal', 1, '2019-10-20'),
(9, 'lalalaal', 1, '2019-10-20'),
(10, 'lalalalala', 1, '2019-10-20'),
(11, '', 4, '2019-10-20'),
(12, 'sdfsdfsdfsdfsdf', 1, '2019-10-20'),
(13, 'dsfsdfsdf', 1, '2019-10-20'),
(14, 'lalalalala', 1, '2019-10-20'),
(15, 'no', 1, '2019-10-20'),
(16, 'sdsdfsdfsdf', 1, '2019-10-20'),
(17, 'sdfsdfsdf', 1, '2019-10-20');

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
  MODIFY `Id_pregunta` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

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
