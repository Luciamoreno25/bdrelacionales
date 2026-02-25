-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 25-02-2026 a las 15:59:27
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `tabladecanciones`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `artistas`
--

CREATE TABLE `artistas` (
  `Id_Artistas` int(11) NOT NULL,
  `Nombre` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `artistas`
--

INSERT INTO `artistas` (`Id_Artistas`, `Nombre`) VALUES
(1, 'Carin León'),
(2, 'Luis Fonsi '),
(3, 'Daddy Yankee'),
(4, 'Mariah Carey');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `artistas_canciones`
--

CREATE TABLE `artistas_canciones` (
  `Id_Artista` int(11) NOT NULL,
  `Id_Cancion` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `artistas_canciones`
--

INSERT INTO `artistas_canciones` (`Id_Artista`, `Id_Cancion`) VALUES
(2, 5),
(1, 1),
(4, 4),
(4, 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `canciones`
--

CREATE TABLE `canciones` (
  `Id_Canción` int(11) NOT NULL,
  `Nombre` varchar(40) NOT NULL,
  `Duración` decimal(10,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `canciones`
--

INSERT INTO `canciones` (`Id_Canción`, `Nombre`, `Duración`) VALUES
(1, 'La Boda del Huitlacoche', 3),
(2, 'Sweater Weather', 2),
(3, 'Love story', 2),
(4, 'Dracula', 5),
(5, 'Despacito', 4);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cancion_genero`
--

CREATE TABLE `cancion_genero` (
  `Id_Canción` int(11) NOT NULL,
  `Id_Genero` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `cancion_genero`
--

INSERT INTO `cancion_genero` (`Id_Canción`, `Id_Genero`) VALUES
(3, 1),
(4, 3),
(1, 4),
(5, 2),
(2, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `favoritos`
--

CREATE TABLE `favoritos` (
  `Id_Usuario` int(11) NOT NULL,
  `Id_Cancion` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `favoritos`
--

INSERT INTO `favoritos` (`Id_Usuario`, `Id_Cancion`) VALUES
(3, 1),
(2, 5),
(1, 4),
(1, 2),
(2, 1),
(1, 5);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `generos`
--

CREATE TABLE `generos` (
  `Id_Generos` int(11) NOT NULL,
  `Nombre` varchar(499) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `generos`
--

INSERT INTO `generos` (`Id_Generos`, `Nombre`) VALUES
(1, 'Pop'),
(2, 'Reguetón '),
(3, 'Electrónica'),
(4, 'regional');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `membresías`
--

CREATE TABLE `membresías` (
  `Id_Membresías` int(11) NOT NULL,
  `Nombre` varchar(300) NOT NULL,
  `Precio` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `membresías`
--

INSERT INTO `membresías` (`Id_Membresías`, `Nombre`, `Precio`) VALUES
(1, 'Premium', 499),
(2, 'Estandar', 199),
(3, 'Basico', 69);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `playlist`
--

CREATE TABLE `playlist` (
  `Id_Playlist` int(11) NOT NULL,
  `Nombre` varchar(500) NOT NULL,
  `Num_canciones` int(11) NOT NULL,
  `Duración` double NOT NULL,
  `Usuario_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `playlist`
--

INSERT INTO `playlist` (`Id_Playlist`, `Nombre`, `Num_canciones`, `Duración`, `Usuario_id`) VALUES
(1, 'Cumbias Potentes', 46, 76, 2),
(2, 'Cancioncitas para limpiar', 40, 560, 3),
(6, 'Momento Relaxx', 26, 498, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `playlist_canciones`
--

CREATE TABLE `playlist_canciones` (
  `Id_Canción` int(11) NOT NULL,
  `Id_Playlist` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `playlist_canciones`
--

INSERT INTO `playlist_canciones` (`Id_Canción`, `Id_Playlist`) VALUES
(3, 6),
(4, 6),
(5, 1),
(1, 1),
(2, 2),
(5, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `Id_Usuario` int(11) NOT NULL,
  `Nombre` varchar(11) NOT NULL,
  `Membresia_Id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`Id_Usuario`, `Nombre`, `Membresia_Id`) VALUES
(1, 'Ulises', 3),
(2, 'Karla', 1),
(3, 'Flins', 2);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `artistas`
--
ALTER TABLE `artistas`
  ADD PRIMARY KEY (`Id_Artistas`);

--
-- Indices de la tabla `artistas_canciones`
--
ALTER TABLE `artistas_canciones`
  ADD KEY `Id_Artista` (`Id_Artista`),
  ADD KEY `Id_Cancion` (`Id_Cancion`);

--
-- Indices de la tabla `canciones`
--
ALTER TABLE `canciones`
  ADD PRIMARY KEY (`Id_Canción`);

--
-- Indices de la tabla `cancion_genero`
--
ALTER TABLE `cancion_genero`
  ADD KEY `Id_Canción` (`Id_Canción`),
  ADD KEY `Id_Genero` (`Id_Genero`);

--
-- Indices de la tabla `favoritos`
--
ALTER TABLE `favoritos`
  ADD KEY `Id_Usuario` (`Id_Usuario`),
  ADD KEY `Id_Cancion` (`Id_Cancion`);

--
-- Indices de la tabla `generos`
--
ALTER TABLE `generos`
  ADD PRIMARY KEY (`Id_Generos`);

--
-- Indices de la tabla `membresías`
--
ALTER TABLE `membresías`
  ADD PRIMARY KEY (`Id_Membresías`);

--
-- Indices de la tabla `playlist`
--
ALTER TABLE `playlist`
  ADD PRIMARY KEY (`Id_Playlist`),
  ADD KEY `Usuario_id` (`Usuario_id`);

--
-- Indices de la tabla `playlist_canciones`
--
ALTER TABLE `playlist_canciones`
  ADD KEY `Id_Canción` (`Id_Canción`),
  ADD KEY `Id_Playlist` (`Id_Playlist`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`Id_Usuario`),
  ADD KEY `Membresia_Id` (`Membresia_Id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `artistas`
--
ALTER TABLE `artistas`
  MODIFY `Id_Artistas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `generos`
--
ALTER TABLE `generos`
  MODIFY `Id_Generos` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `membresías`
--
ALTER TABLE `membresías`
  MODIFY `Id_Membresías` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `playlist`
--
ALTER TABLE `playlist`
  MODIFY `Id_Playlist` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `Id_Usuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `artistas_canciones`
--
ALTER TABLE `artistas_canciones`
  ADD CONSTRAINT `artistas_canciones_ibfk_1` FOREIGN KEY (`Id_Artista`) REFERENCES `artistas` (`Id_Artistas`),
  ADD CONSTRAINT `artistas_canciones_ibfk_2` FOREIGN KEY (`Id_Cancion`) REFERENCES `canciones` (`Id_Canción`);

--
-- Filtros para la tabla `cancion_genero`
--
ALTER TABLE `cancion_genero`
  ADD CONSTRAINT `cancion_genero_ibfk_1` FOREIGN KEY (`Id_Canción`) REFERENCES `canciones` (`Id_Canción`),
  ADD CONSTRAINT `cancion_genero_ibfk_2` FOREIGN KEY (`Id_Genero`) REFERENCES `generos` (`Id_Generos`);

--
-- Filtros para la tabla `favoritos`
--
ALTER TABLE `favoritos`
  ADD CONSTRAINT `favoritos_ibfk_1` FOREIGN KEY (`Id_Cancion`) REFERENCES `canciones` (`Id_Canción`),
  ADD CONSTRAINT `favoritos_ibfk_2` FOREIGN KEY (`Id_Usuario`) REFERENCES `usuarios` (`Id_Usuario`);

--
-- Filtros para la tabla `playlist`
--
ALTER TABLE `playlist`
  ADD CONSTRAINT `playlist_ibfk_1` FOREIGN KEY (`Usuario_id`) REFERENCES `usuarios` (`Id_Usuario`);

--
-- Filtros para la tabla `playlist_canciones`
--
ALTER TABLE `playlist_canciones`
  ADD CONSTRAINT `playlist_canciones_ibfk_1` FOREIGN KEY (`Id_Canción`) REFERENCES `canciones` (`Id_Canción`),
  ADD CONSTRAINT `playlist_canciones_ibfk_2` FOREIGN KEY (`Id_Playlist`) REFERENCES `playlist` (`Id_Playlist`);

--
-- Filtros para la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD CONSTRAINT `usuarios_ibfk_1` FOREIGN KEY (`Membresia_Id`) REFERENCES `membresías` (`Id_Membresías`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
