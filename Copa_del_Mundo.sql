-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 192.168.10.20
-- Generation Time: May 14, 2026 at 02:50 PM
-- Server version: 10.11.10-MariaDB
-- PHP Version: 8.3.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `Copa del Mundo`
--

-- --------------------------------------------------------

--
-- Table structure for table `CONFEDERACION`
--

CREATE TABLE `CONFEDERACION` (
  `id_confederacion` int(11) NOT NULL,
  `nombre` varchar(80) NOT NULL,
  `siglas` varchar(10) NOT NULL,
  `region` varchar(60) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `EQUIPO`
--

CREATE TABLE `EQUIPO` (
  `id_equipo` int(11) NOT NULL,
  `nombre` varchar(80) NOT NULL,
  `codigo_fifa` char(3) NOT NULL,
  `entrenador` varchar(100) NOT NULL,
  `id_confederacion` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ESTADIO`
--

CREATE TABLE `ESTADIO` (
  `id_estadio` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `ciudad` varchar(80) NOT NULL,
  `pais` varchar(80) NOT NULL,
  `capacidad` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `JUGADOR`
--

CREATE TABLE `JUGADOR` (
  `id_jugador` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `posicion` varchar(30) NOT NULL,
  `numero_dorsal` tinyint(4) NOT NULL,
  `fecha_nac` date NOT NULL,
  `id_equipo` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `PARTIDO`
--

CREATE TABLE `PARTIDO` (
  `id_partido` int(11) NOT NULL,
  `fecha` varchar(30) NOT NULL,
  `fase` date NOT NULL,
  `goles_local` tinyint(4) NOT NULL,
  `goles_visitante` tinyint(4) NOT NULL,
  `id_estadio` int(11) NOT NULL,
  `id_local` int(11) NOT NULL,
  `id_visitante` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `CONFEDERACION`
--
ALTER TABLE `CONFEDERACION`
  ADD PRIMARY KEY (`id_confederacion`);

--
-- Indexes for table `EQUIPO`
--
ALTER TABLE `EQUIPO`
  ADD PRIMARY KEY (`id_equipo`),
  ADD KEY `id_confederacion` (`id_confederacion`);

--
-- Indexes for table `ESTADIO`
--
ALTER TABLE `ESTADIO`
  ADD PRIMARY KEY (`id_estadio`);

--
-- Indexes for table `JUGADOR`
--
ALTER TABLE `JUGADOR`
  ADD PRIMARY KEY (`id_jugador`),
  ADD KEY `id_equipo` (`id_equipo`);

--
-- Indexes for table `PARTIDO`
--
ALTER TABLE `PARTIDO`
  ADD PRIMARY KEY (`id_partido`),
  ADD KEY `id_estadio` (`id_estadio`),
  ADD KEY `id_local` (`id_local`),
  ADD KEY `id_visitante` (`id_visitante`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `CONFEDERACION`
--
ALTER TABLE `CONFEDERACION`
  MODIFY `id_confederacion` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `EQUIPO`
--
ALTER TABLE `EQUIPO`
  MODIFY `id_equipo` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ESTADIO`
--
ALTER TABLE `ESTADIO`
  MODIFY `id_estadio` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `JUGADOR`
--
ALTER TABLE `JUGADOR`
  MODIFY `id_jugador` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `PARTIDO`
--
ALTER TABLE `PARTIDO`
  MODIFY `id_partido` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
