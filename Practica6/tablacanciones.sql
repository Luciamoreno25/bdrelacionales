-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 24-02-2026 a las 16:19:14
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
-- Base de datos: `tablacanciones`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `artistas`
--

CREATE TABLE `artistas` (
  `Id_Artistas` int(11) NOT NULL,
  `Nombre` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `artistas_canciones`
--

CREATE TABLE `artistas_canciones` (
  `Id_Artista` int(11) NOT NULL,
  `Id_Cancion` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `canciones`
--

CREATE TABLE `canciones` (
  `Id_Canción` int(11) NOT NULL,
  `Nombre` varchar(40) NOT NULL,
  `Duración` decimal(10,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cancion_genero`
--

CREATE TABLE `cancion_genero` (
  `Id_Canción` int(11) NOT NULL,
  `Id_Genero` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `favoritos`
--

CREATE TABLE `favoritos` (
  `Id_Usuario` int(11) NOT NULL,
  `Id_Cancion` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `generos`
--

CREATE TABLE `generos` (
  `Id_Generos` int(11) NOT NULL,
  `Nombre` varchar(499) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `membresías`
--

CREATE TABLE `membresías` (
  `Id_Membresías` int(11) NOT NULL,
  `Nombre` int(11) NOT NULL,
  `Precio` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `playlist_canciones`
--

CREATE TABLE `playlist_canciones` (
  `Id_Canción` int(11) NOT NULL,
  `Id_Playlist` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
  MODIFY `Id_Artistas` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `generos`
--
ALTER TABLE `generos`
  MODIFY `Id_Generos` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `membresías`
--
ALTER TABLE `membresías`
  MODIFY `Id_Membresías` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `playlist`
--
ALTER TABLE `playlist`
  MODIFY `Id_Playlist` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `Id_Usuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

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
