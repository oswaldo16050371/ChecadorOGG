-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 15-07-2020 a las 19:15:49
-- Versión del servidor: 10.4.11-MariaDB
-- Versión de PHP: 7.3.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `control_asistencia`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `idusuario` int(11) NOT NULL,
  `nombre` varchar(45) COLLATE utf8_bin NOT NULL,
  `apellidos` varchar(45) COLLATE utf8_bin NOT NULL,
  `login` varchar(45) COLLATE utf8_bin NOT NULL,
  `iddepartamento` int(11) NOT NULL,
  `idtipousuario` int(11) NOT NULL,
  `email` varchar(45) COLLATE utf8_bin NOT NULL,
  `password` varchar(64) COLLATE utf8_bin NOT NULL,
  `imagen` varchar(50) COLLATE utf8_bin NOT NULL,
  `estado` tinyint(4) NOT NULL DEFAULT 1,
  `fechacreado` datetime NOT NULL,
  `usuariocreado` varchar(45) COLLATE utf8_bin NOT NULL,
  `codigo_persona` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `idmensaje` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`idusuario`, `nombre`, `apellidos`, `login`, `iddepartamento`, `idtipousuario`, `email`, `password`, `imagen`, `estado`, `fechacreado`, `usuariocreado`, `codigo_persona`, `idmensaje`) VALUES
(1, 'admin', 'compartiendocodigos', 'admin', 1, 1, 'info@compartiendocodigos.com', '7560c94fcbf656591ca6ff270775e835af4796f9197760d96c38f7406d54ebe6', 'default.jpg', 1, '2020-01-18 00:00:00', 'admin', '444', 1),
(2, 'JUAN', 'Lopez Torres', 'juan', 1, 1, 'juan@gmail.com', 'ed08c290d7e22f7bb324b15cbadce35b0b348564fd2d5f95752388d86d71bcca', '1579406789.jpg', 1, '2020-01-18 22:06:29', 'JUAN', '789', 0),
(11, 'Angel', 'totocayo', 'pepe', 1, 1, 'angelinos257@gmail.com', '7c9e7c1494b2684ab7c19d6aff737e460fa9e98d5a234da1310c97ddf5691834', '1579408503.jpg', 1, '2020-01-18 22:35:03', 'Angel', '8VwqyL', 0),
(14, 'Pedro', 'totocayo', 'coco', 2, 2, 'angelinos257@gmail.com', '4f682b71153ffa91e608445d7ea1257e2076d0d95eab6336cd1aa94b49680f11', '1579415808.jpg', 1, '2020-01-19 00:36:47', 'admin', NULL, 0),
(16, 'oswaldo', 'gongora', 'oswaldo', 8, 1, 'juliogongoragomez@outlook.com', 'DE041E74B3636D0A5E687CBEDC1C7D45BB002683A54CE9652A98A0C2388EB8C8', '1594458017.jpg', 1, '2020-07-11 04:00:17', 'oswaldo', '2aMjJy', 0),
(17, 'oswaldog', 'gongora', 'oswaldog', 3, 1, 'juliogongoragomezjk@outlook.com', '03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4', '1594463441.jpg', 1, '2020-07-11 05:30:40', 'oswaldog', 'IKzZZa', 0),
(18, 'julio', 'gongora', 'julio', 8, 2, 'juliogongorag@outlook.com', 'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3', '1594477708.PNG', 1, '2020-07-11 09:28:28', 'julio', '12345', 0),
(20, 'oswaldo', 'gongora', 'oswaldo123', 8, 2, 'juliogongoragomez@outlook.com', 'e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855', '', 1, '2020-07-13 09:41:09', 'oswaldo', '16050371', 0);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`idusuario`),
  ADD UNIQUE KEY `login` (`login`),
  ADD UNIQUE KEY `codigo_persona` (`codigo_persona`),
  ADD KEY `fk_departamento` (`iddepartamento`),
  ADD KEY `fk_tiposusario` (`idtipousuario`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `idusuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD CONSTRAINT `usuarios_ibfk_1` FOREIGN KEY (`iddepartamento`) REFERENCES `departamento` (`iddepartamento`),
  ADD CONSTRAINT `usuarios_ibfk_2` FOREIGN KEY (`idtipousuario`) REFERENCES `tipousuario` (`idtipousuario`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
