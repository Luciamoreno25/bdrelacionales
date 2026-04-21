-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 16-04-2026 a las 17:17:48
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
-- Base de datos: `red`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `comentarios`
--

CREATE TABLE `comentarios` (
  `Comentario_id` int(11) NOT NULL,
  `Pub_id` int(11) NOT NULL,
  `Usuario_id` int(11) NOT NULL,
  `Texto` varchar(300) NOT NULL,
  `Fecha` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `comentarios`
--

INSERT INTO `comentarios` (`Comentario_id`, `Pub_id`, `Usuario_id`, `Texto`, `Fecha`) VALUES
(1, 4, 5, 'Que guapo estas ', '2026-04-20 07:56:49'),
(2, 5, 1, 'QUE GRANDIOSOO!!', '2026-04-28 07:56:49'),
(3, 3, 5, 'maldito infiel estafador!!1', '2026-04-27 07:57:55'),
(4, 1, 2, 'HI CUTE', '2026-04-16 16:58:21'),
(5, 2, 4, 'ES mentira vayan a mi cuenta y les adjunto evidencia de que ella me engaño primero', '2026-04-29 07:59:08');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `hashtags`
--

CREATE TABLE `hashtags` (
  `Hashtag_id` int(11) NOT NULL,
  `etiqueta` varchar(60) NOT NULL,
  `Creado_en` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `hashtags`
--

INSERT INTO `hashtags` (`Hashtag_id`, `etiqueta`, `Creado_en`) VALUES
(1, '#infiel', '2026-04-22'),
(2, '#SIMS4', '2026-04-25'),
(3, '#kawiia', '2026-04-22'),
(4, '#KATYUS', '2026-05-09'),
(5, '#gymm', '2026-02-10'),
(6, '#DESMINTIENDO', '2026-04-27');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `publicaciones`
--

CREATE TABLE `publicaciones` (
  `Pub_id` int(11) NOT NULL,
  `Usuario_id` int(11) NOT NULL,
  `Contenido` text NOT NULL,
  `Imagen_url` varchar(225) NOT NULL,
  `Fecha_pub` datetime NOT NULL,
  `Likes` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `publicaciones`
--

INSERT INTO `publicaciones` (`Pub_id`, `Usuario_id`, `Contenido`, `Imagen_url`, `Fecha_pub`, `Likes`) VALUES
(1, 1, 'Hi guys!! \r\nGood morning! How did you sleep, sleepyhead? ', 'https://mx.pinterest.com/frank_chirimiki/kawaiii/', '2026-04-16 16:42:23', 200000),
(2, 5, 'Abro Hilo: Quiero exponer a esta persona @Estepicursor Quien nos ibamos a casar este 2029 me engaño con JUana', 'https://www.google.com/imgres?q=imagenes%20de%20infiel&imgurl=https%3A%2F%2Fmedia.istockphoto.com%2Fid%2F493656728%2Fes%2Ffoto%2Fdisloyal-hombre-con-la-novia-mirando-a-otro-girl.jpg%3Fs%3D612x612%26w%3D0%26k%3D20%26c%3D0RlfJj', '2026-04-16 16:46:49', 280909),
(3, 4, 'Quiero negar todas las acusaciones de @Lúnula Mi actual novia JUANA no se metio en mi anterior relacion, por favor dejen de tirarle HATEE', 'https://www.google.com/imgres?q=IMAGEN%20DE%20PAZ&imgurl=https%3A%2F%2Fpymstatic.com%2F22939%2Fconversions%2Fpaz-interior-wide_webp.webp&imgrefurl=https%3A%2F%2Fpsicologiaymente.com%2Fmeditacion%2Fpaz-interior&docid=vphKHP8Id', '2026-04-16 16:49:54', 30000),
(4, 2, 'hOLA CHICOS METANSE A ESTE GYM!!!', 'data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAkGBxITEhUSExIVFRUVFxgVFxgYFx4XGRoXHRgWFhcXFxYYHSggGRolHRcVIjEhJSkuLi4uFx8zODMtNygtLisBCgoKDg0OFw8QFy0dHR0tLS0tLS0tLS0tKy0tLS0tLS0tLS0tLS0tLSstLS0tLS0tLS0tLS0tLS0tLS0tNy', '2026-04-16 16:51:38', 50000),
(5, 3, 'ESTOY EN DIRECTO AHORA MISMO ESTAMOS PROBANDO UN NUEVO MODD DE SIMS 4 ABANDONANDO BEBES!!!!', 'https://www.google.com/imgres?q=SIMS%204&imgurl=https%3A%2F%2Fm.media-amazon.com%2Fimages%2FI%2F61iWi1e5G2L._AC_UF894%2C1000_QL80_.jpg&imgrefurl=https%3A%2F%2Fwww.amazon.com.mx%2FElectronic-Arts-73815-Sims-4%2Fdp%2FB0748VH8ZF', '2026-04-16 16:52:27', 8722);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pub_hashtags`
--

CREATE TABLE `pub_hashtags` (
  `Pub_id` int(11) NOT NULL,
  `Hastag_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `pub_hashtags`
--

INSERT INTO `pub_hashtags` (`Pub_id`, `Hastag_id`) VALUES
(5, 2),
(4, 5),
(2, 1),
(1, 3),
(3, 6);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pub_likes`
--

CREATE TABLE `pub_likes` (
  `Pub_id` int(11) NOT NULL,
  `Usuario_id` int(11) NOT NULL,
  `Fecha_Like` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `pub_likes`
--

INSERT INTO `pub_likes` (`Pub_id`, `Usuario_id`, `Fecha_Like`) VALUES
(5, 5, '2026-04-15 08:00:01'),
(3, 2, '2026-02-08 08:00:01'),
(4, 1, '2026-04-21 08:00:28'),
(2, 5, '2026-04-28 08:00:41'),
(5, 5, '2026-04-14 08:00:41');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `seguidores`
--

CREATE TABLE `seguidores` (
  `Seguidor_id` int(11) NOT NULL,
  `Seguido_id` int(11) NOT NULL,
  `Fecha_Follow` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `seguidores`
--

INSERT INTO `seguidores` (`Seguidor_id`, `Seguido_id`, `Fecha_Follow`) VALUES
(1, 3, '2026-04-24'),
(1, 5, '2026-01-19'),
(5, 2, '2026-04-28'),
(4, 2, '2018-04-20'),
(3, 5, '2028-04-18'),
(2, 1, '2019-04-03');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `Usuario_id` int(11) NOT NULL,
  `Username` varchar(50) NOT NULL,
  `Bio` varchar(200) NOT NULL,
  `Fecha_reg` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`Usuario_id`, `Username`, `Bio`, `Fecha_reg`) VALUES
(1, 'Kaytius', 'Hi IM KATYY KISS', '2025-10-21'),
(2, 'VortexMaster', 'Juagador, Guapo , GRACIOSO \r\nDueño de 3 perros.', '2021-09-08'),
(3, 'Agrafe', 'Creador de contenido , 24 años , Streamer.', '2016-04-14'),
(4, 'Estepicursor', 'Gatitos, Fotografo.', '2019-04-17'),
(5, 'Lúnula', 'Cocina y gatos. \r\n20 años\r\ncuenta privada ', '2025-11-10');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `comentarios`
--
ALTER TABLE `comentarios`
  ADD PRIMARY KEY (`Comentario_id`),
  ADD KEY `Usuario_id` (`Usuario_id`),
  ADD KEY `Pub_id` (`Pub_id`);

--
-- Indices de la tabla `hashtags`
--
ALTER TABLE `hashtags`
  ADD PRIMARY KEY (`Hashtag_id`),
  ADD UNIQUE KEY `etiqueta` (`etiqueta`);

--
-- Indices de la tabla `publicaciones`
--
ALTER TABLE `publicaciones`
  ADD PRIMARY KEY (`Pub_id`),
  ADD KEY `Usuario_id` (`Usuario_id`);

--
-- Indices de la tabla `pub_hashtags`
--
ALTER TABLE `pub_hashtags`
  ADD KEY `Pub_id` (`Pub_id`),
  ADD KEY `Hastag_id` (`Hastag_id`);

--
-- Indices de la tabla `pub_likes`
--
ALTER TABLE `pub_likes`
  ADD KEY `Pub_id` (`Pub_id`),
  ADD KEY `Usuario_id` (`Usuario_id`);

--
-- Indices de la tabla `seguidores`
--
ALTER TABLE `seguidores`
  ADD KEY `Seguidor_id` (`Seguidor_id`),
  ADD KEY `Seguido_id` (`Seguido_id`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`Usuario_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `comentarios`
--
ALTER TABLE `comentarios`
  MODIFY `Comentario_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `hashtags`
--
ALTER TABLE `hashtags`
  MODIFY `Hashtag_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `publicaciones`
--
ALTER TABLE `publicaciones`
  MODIFY `Pub_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `Usuario_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `comentarios`
--
ALTER TABLE `comentarios`
  ADD CONSTRAINT `comentarios_ibfk_1` FOREIGN KEY (`Pub_id`) REFERENCES `publicaciones` (`Pub_id`),
  ADD CONSTRAINT `comentarios_ibfk_2` FOREIGN KEY (`Usuario_id`) REFERENCES `usuarios` (`Usuario_id`);

--
-- Filtros para la tabla `publicaciones`
--
ALTER TABLE `publicaciones`
  ADD CONSTRAINT `publicaciones_ibfk_1` FOREIGN KEY (`Usuario_id`) REFERENCES `usuarios` (`Usuario_id`);

--
-- Filtros para la tabla `pub_hashtags`
--
ALTER TABLE `pub_hashtags`
  ADD CONSTRAINT `pub_hashtags_ibfk_1` FOREIGN KEY (`Hastag_id`) REFERENCES `hashtags` (`Hashtag_id`),
  ADD CONSTRAINT `pub_hashtags_ibfk_2` FOREIGN KEY (`Pub_id`) REFERENCES `publicaciones` (`Pub_id`);

--
-- Filtros para la tabla `pub_likes`
--
ALTER TABLE `pub_likes`
  ADD CONSTRAINT `pub_likes_ibfk_1` FOREIGN KEY (`Pub_id`) REFERENCES `publicaciones` (`Pub_id`),
  ADD CONSTRAINT `pub_likes_ibfk_2` FOREIGN KEY (`Usuario_id`) REFERENCES `usuarios` (`Usuario_id`);

--
-- Filtros para la tabla `seguidores`
--
ALTER TABLE `seguidores`
  ADD CONSTRAINT `seguidores_ibfk_1` FOREIGN KEY (`Seguidor_id`) REFERENCES `usuarios` (`Usuario_id`),
  ADD CONSTRAINT `seguidores_ibfk_2` FOREIGN KEY (`Seguido_id`) REFERENCES `usuarios` (`Usuario_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
