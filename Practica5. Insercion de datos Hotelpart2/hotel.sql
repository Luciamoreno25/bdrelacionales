-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 18-02-2026 a las 23:01:23
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
-- Base de datos: `hotel`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `atencion`
--

CREATE TABLE `atencion` (
  `id_Atencion` int(11) NOT NULL,
  `id_Reserva` int(11) NOT NULL,
  `id_empleado` int(11) NOT NULL,
  `fecha` date NOT NULL,
  `nota` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `atencion`
--

INSERT INTO `atencion` (`id_Atencion`, `id_Reserva`, `id_empleado`, `fecha`, `nota`) VALUES
(1, 10, 1, '2026-02-20', 'Hospedaje en Sky Marina Suite. Incluye servicio de mayordomo 24h y acceso a la playa privada. \r\n'),
(2, 7, 6, '2026-02-21', 'Servicio de Masaje Tradicional Tailandés en Wellness Centre. Duración 90 min.'),
(11, 8, 4, '2026-02-22', 'Desayuno Buffet Regional en restaurante principal. 2 adultos y 1 niño.'),
(12, 6, 3, '2026-02-23', 'Servicio de Buffet de Mariscos (Cena). Acceso prioritario reservado.'),
(13, 4, 5, '2026-02-14', 'Cena romántica privada en la playa. Montaje especial y menú de 4 tiempos.');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cliente`
--

CREATE TABLE `cliente` (
  `id_cliente` int(11) NOT NULL,
  `Nombre` varchar(100) NOT NULL,
  `email` varchar(50) NOT NULL,
  `telefono` varchar(12) NOT NULL,
  `fecha_registro` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `cliente`
--

INSERT INTO `cliente` (`id_cliente`, `Nombre`, `email`, `telefono`, `fecha_registro`) VALUES
(1, 'Camila Duarte', 'camila.duarte.mx@gmail.com', '+52 55 1234 ', '2015-01-23'),
(2, 'Mateo Vizcaíno', 'mateoviz88@gmail.com', '+34 612 345 ', '2026-05-29'),
(3, 'Ximena Tello', 'xime.tello.v@gmail.com', '57 300 123 4', '2026-07-24'),
(4, 'Hugo Barrientos', 'hugo.barrientos.92@gmail.com', '+56 9 8765 4', '2029-04-20'),
(5, 'Sofía Santillán', 'sofi.santillan.dev@gmail.com', '+54 11 9876 ', '2025-09-16');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empleado`
--

CREATE TABLE `empleado` (
  `id_empleado` int(11) NOT NULL,
  `Id_Hotel` int(11) NOT NULL,
  `Nombre` varchar(30) NOT NULL,
  `puesto` varchar(30) NOT NULL,
  `email` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `empleado`
--

INSERT INTO `empleado` (`id_empleado`, `Id_Hotel`, `Nombre`, `puesto`, `email`) VALUES
(1, 1, 'Marina Vargas', 'Gerente', 'marina.vargas82@gmail.com'),
(2, 1, 'Luna García', 'Recepcionista', 'luna.azul.99@yahoo.com'),
(3, 2, 'Jorge Alvarez', 'intendente', 'jorge_alvarez_dev@icloud.com'),
(4, 3, 'Nordelto Francie', 'Tecnico', 'tecnico_proyectos@outlook.com'),
(5, 2, 'Juan Quintero', 'Seguiridad', 'contacto.estudio@empresa-ejemplo.es');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `habitacion`
--

CREATE TABLE `habitacion` (
  `ID_habitacion` int(11) NOT NULL,
  `Id_Hotel` int(11) NOT NULL,
  `Numero` int(11) NOT NULL,
  `Tipo` varchar(30) NOT NULL,
  `Precio_Noche` double NOT NULL,
  `Estado` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `habitacion`
--

INSERT INTO `habitacion` (`ID_habitacion`, `Id_Hotel`, `Numero`, `Tipo`, `Precio_Noche`, `Estado`) VALUES
(1, 2, 20, 'Suite', 5000, 'Ocupada'),
(2, 1, 30, 'Individual', 1000, 'Desocupada'),
(3, 2, 400, 'Suite Presidencial', 20000, 'Ocupada'),
(4, 3, 100, 'Doble', 499, 'Desocupada'),
(5, 3, 270, 'Luxe', 2700, 'Ocupada');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `hotel`
--

CREATE TABLE `hotel` (
  `Id_Hotel` int(11) NOT NULL,
  `Nombre` varchar(100) NOT NULL,
  `Ciudad` varchar(50) NOT NULL,
  `Teléfono` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `hotel`
--

INSERT INTO `hotel` (`Id_Hotel`, `Nombre`, `Ciudad`, `Teléfono`) VALUES
(1, 'Palacio Elegante\r\n\r\n', 'Paris', '(717) 550-1675'),
(2, 'Alvear Palace Hotel', 'Shanghai', '(262) 162-1585'),
(3, 'Paradisus', 'Londres', '(252) 258-3799');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pago`
--

CREATE TABLE `pago` (
  `Id_pago` int(11) NOT NULL,
  `id_Reserva` int(11) NOT NULL,
  `fecha_pago` date NOT NULL,
  `Monto` double NOT NULL,
  `Metodo` varchar(50) NOT NULL,
  `Referencia` varchar(60) NOT NULL,
  `Estado_pago` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `pago`
--

INSERT INTO `pago` (`Id_pago`, `id_Reserva`, `fecha_pago`, `Monto`, `Metodo`, `Referencia`, `Estado_pago`) VALUES
(1, 10, '2026-02-20', 450000, 'PayPal', 'PP-A1B2C3', 'Procesando'),
(2, 2, '2026-02-22', 20000, 'Tarjeta de Débito', 'MC-4432', 'Completado'),
(3, 1, '2026-02-21', 32000, 'Transferencia', 'SPEI-7762', 'Pendiente'),
(4, 4, '2026-02-21', 1980, 'Efectivo', 'EF-00124', 'Completado'),
(5, 9, '2026-02-20', 2500, 'Tarjeta de Crédito', 'VISA-9988', 'Completado');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `reserva`
--

CREATE TABLE `reserva` (
  `id_reserva` int(11) NOT NULL,
  `id_cliente` int(11) NOT NULL,
  `id_habitacion` int(11) NOT NULL,
  `fecha_entrada` date NOT NULL,
  `fecha_salida` date NOT NULL,
  `num_huespedes` varchar(20) NOT NULL,
  `estado_reserva` varchar(20) NOT NULL,
  `fecha_creacion` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `reserva`
--

INSERT INTO `reserva` (`id_reserva`, `id_cliente`, `id_habitacion`, `fecha_entrada`, `fecha_salida`, `num_huespedes`, `estado_reserva`, `fecha_creacion`) VALUES
(1, 4, 3, '2026-02-18', '2026-02-28', '2', 'Bloqueada', '2025-12-24'),
(2, 5, 2, '2026-02-21', '2026-03-07', '1', 'Expirada', '2026-02-22'),
(3, 1, 5, '2026-02-28', '2026-06-20', '3', 'Bloqueada', '2025-12-25'),
(4, 5, 3, '2025-11-19', '2026-04-11', '4', 'Rembolsada', '2026-04-10'),
(5, 3, 4, '2025-11-24', '2026-02-20', '2', 'Expirada', '2026-04-17'),
(6, 1, 5, '2025-11-19', '2026-06-20', '3', 'Rembolsada', '2026-02-21'),
(7, 2, 2, '2026-07-18', '2026-09-19', '1', 'Bloqueada', '2026-05-16'),
(8, 1, 5, '2026-05-16', '2026-06-19', '2', 'Expirada', '2025-11-11'),
(9, 4, 4, '2026-06-13', '2025-12-19', '2', 'Rembolsada', '2026-03-13'),
(10, 2, 3, '2025-10-08', '2025-08-18', '2', 'Expirada', '2026-02-07');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `reserva_servicio`
--

CREATE TABLE `reserva_servicio` (
  `id_Reserva` int(11) NOT NULL,
  `id_servicio` int(11) NOT NULL,
  `Cantidad` double NOT NULL,
  `Precio_unitario` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `reserva_servicio`
--

INSERT INTO `reserva_servicio` (`id_Reserva`, `id_servicio`, `Cantidad`, `Precio_unitario`) VALUES
(2, 5, 2, 3700),
(4, 5, 2, 2400),
(5, 1, 3, 5000),
(6, 2, 3, 3200),
(8, 2, 1, 1900);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `servicio`
--

CREATE TABLE `servicio` (
  `id_Servicio` int(11) NOT NULL,
  `Nombre` varchar(50) NOT NULL,
  `Precio_base` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `servicio`
--

INSERT INTO `servicio` (`id_Servicio`, `Nombre`, `Precio_base`) VALUES
(1, 'Todo Incluido', 29000),
(2, 'Masaje Spa', 2000),
(3, 'Desayuno Buffet', 3476),
(4, 'Buffet de Mariscos', 3800),
(5, 'Desayuno Gourmet', 6000);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `atencion`
--
ALTER TABLE `atencion`
  ADD PRIMARY KEY (`id_Atencion`),
  ADD KEY `id_Reserva` (`id_Reserva`),
  ADD KEY `id_Empleado` (`id_empleado`);

--
-- Indices de la tabla `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`id_cliente`);

--
-- Indices de la tabla `empleado`
--
ALTER TABLE `empleado`
  ADD PRIMARY KEY (`id_empleado`),
  ADD KEY `Id_Hotel` (`Id_Hotel`);

--
-- Indices de la tabla `habitacion`
--
ALTER TABLE `habitacion`
  ADD PRIMARY KEY (`ID_habitacion`),
  ADD KEY `Id_Hotel` (`Id_Hotel`);

--
-- Indices de la tabla `hotel`
--
ALTER TABLE `hotel`
  ADD PRIMARY KEY (`Id_Hotel`);

--
-- Indices de la tabla `pago`
--
ALTER TABLE `pago`
  ADD PRIMARY KEY (`Id_pago`),
  ADD KEY `id_Reserva` (`id_Reserva`);

--
-- Indices de la tabla `reserva`
--
ALTER TABLE `reserva`
  ADD PRIMARY KEY (`id_reserva`),
  ADD KEY `id_cliente` (`id_cliente`),
  ADD KEY `id_habitacion` (`id_habitacion`);

--
-- Indices de la tabla `reserva_servicio`
--
ALTER TABLE `reserva_servicio`
  ADD PRIMARY KEY (`id_Reserva`),
  ADD KEY `id_servicio` (`id_servicio`);

--
-- Indices de la tabla `servicio`
--
ALTER TABLE `servicio`
  ADD PRIMARY KEY (`id_Servicio`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `atencion`
--
ALTER TABLE `atencion`
  MODIFY `id_Atencion` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de la tabla `cliente`
--
ALTER TABLE `cliente`
  MODIFY `id_cliente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `empleado`
--
ALTER TABLE `empleado`
  MODIFY `id_empleado` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `habitacion`
--
ALTER TABLE `habitacion`
  MODIFY `ID_habitacion` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `hotel`
--
ALTER TABLE `hotel`
  MODIFY `Id_Hotel` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `pago`
--
ALTER TABLE `pago`
  MODIFY `Id_pago` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `reserva`
--
ALTER TABLE `reserva`
  MODIFY `id_reserva` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `reserva_servicio`
--
ALTER TABLE `reserva_servicio`
  MODIFY `id_Reserva` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `servicio`
--
ALTER TABLE `servicio`
  MODIFY `id_Servicio` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `atencion`
--
ALTER TABLE `atencion`
  ADD CONSTRAINT `atencion_ibfk_1` FOREIGN KEY (`id_Reserva`) REFERENCES `reserva` (`id_reserva`);

--
-- Filtros para la tabla `empleado`
--
ALTER TABLE `empleado`
  ADD CONSTRAINT `empleado_ibfk_1` FOREIGN KEY (`Id_Hotel`) REFERENCES `hotel` (`Id_Hotel`);

--
-- Filtros para la tabla `habitacion`
--
ALTER TABLE `habitacion`
  ADD CONSTRAINT `habitacion_ibfk_1` FOREIGN KEY (`Id_Hotel`) REFERENCES `hotel` (`Id_Hotel`);

--
-- Filtros para la tabla `pago`
--
ALTER TABLE `pago`
  ADD CONSTRAINT `pago_ibfk_1` FOREIGN KEY (`id_Reserva`) REFERENCES `reserva` (`id_reserva`);

--
-- Filtros para la tabla `reserva`
--
ALTER TABLE `reserva`
  ADD CONSTRAINT `reserva_ibfk_1` FOREIGN KEY (`id_habitacion`) REFERENCES `habitacion` (`ID_habitacion`),
  ADD CONSTRAINT `reserva_ibfk_2` FOREIGN KEY (`id_cliente`) REFERENCES `cliente` (`id_cliente`);

--
-- Filtros para la tabla `reserva_servicio`
--
ALTER TABLE `reserva_servicio`
  ADD CONSTRAINT `reserva_servicio_ibfk_1` FOREIGN KEY (`id_Reserva`) REFERENCES `reserva` (`id_reserva`),
  ADD CONSTRAINT `reserva_servicio_ibfk_2` FOREIGN KEY (`id_servicio`) REFERENCES `servicio` (`id_Servicio`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
