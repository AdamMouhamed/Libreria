-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 14-11-2017 a las 14:22:58
-- Versión del servidor: 10.1.25-MariaDB
-- Versión de PHP: 7.1.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `bdbiblioteca`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `autores`
--

CREATE TABLE `autores` (
  `Id` int(11) NOT NULL,
  `Nombre` varchar(100) NOT NULL,
  `Apellido` varchar(100) NOT NULL,
  `FechaNacimiento` date NOT NULL,
  `Estado` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `autores`
--

INSERT INTO `autores` (`Id`, `Nombre`, `Apellido`, `FechaNacimiento`, `Estado`) VALUES
(1, 'Adam', 'Mouhamed', '1998-05-19', 'Activo'),
(2, 'Juan', 'Perez', '1957-03-07', 'Activo'),
(3, 'Alan', 'Lagos', '1996-04-15', 'Activo');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE `clientes` (
  `Id` int(11) NOT NULL,
  `Nombre` varchar(100) NOT NULL,
  `Apellido` varchar(100) NOT NULL,
  `Dni` int(11) NOT NULL,
  `Mail` varchar(100) NOT NULL,
  `Telefono` varchar(100) NOT NULL,
  `Observaciones` varchar(100) DEFAULT NULL,
  `Estado` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `clientes`
--

INSERT INTO `clientes` (`Id`, `Nombre`, `Apellido`, `Dni`, `Mail`, `Telefono`, `Observaciones`, `Estado`) VALUES
(1, 'Carlos', 'Pele', 40526374, 'Carlitos@gmail.com', '35336469', NULL, 'Activo'),
(2, 'Santiago', 'Reynoso', 39393939, 'sReynosho@Arenosho.bo', '64668999', NULL, 'Activo'),
(3, 'AlBaro', 'AlBarez', 50356677, 'AARiver@hotmail.com', '35664998', NULL, 'Activo');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `libros`
--

CREATE TABLE `libros` (
  `Id` int(11) NOT NULL,
  `Nombre` varchar(100) NOT NULL,
  `AñoPub` int(11) NOT NULL,
  `Usado` tinyint(1) NOT NULL,
  `Id_Autor` int(11) NOT NULL,
  `Categoria` varchar(100) NOT NULL,
  `Genero` varchar(100) NOT NULL,
  `CantPag` int(11) NOT NULL,
  `Observaciones` varchar(100) DEFAULT NULL,
  `Estado` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `libros`
--

INSERT INTO `libros` (`Id`, `Nombre`, `AñoPub`, `Usado`, `Id_Autor`, `Categoria`, `Genero`, `CantPag`, `Observaciones`, `Estado`) VALUES
(1, 'Caperucita roza', 1900, 0, 1, 'Cuentos', 'Infantiles', 40, NULL, 'Activo'),
(2, 'Blanca nieves', 1950, 1, 2, 'Cuentos', 'Infantiles', 30, NULL, 'Activo'),
(3, 'SherlokHolms', 1600, 0, 3, 'Novela', 'Policial', 211, NULL, 'Activo');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `prestamos`
--

CREATE TABLE `prestamos` (
  `Id` int(11) NOT NULL,
  `Id_Libro` int(11) NOT NULL,
  `Id_Cliente` int(11) NOT NULL,
  `FechaPedido` date NOT NULL,
  `FechaDevolucion` date NOT NULL,
  `Observaciones` varchar(100) DEFAULT NULL,
  `Estado` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `prestamos`
--

INSERT INTO `prestamos` (`Id`, `Id_Libro`, `Id_Cliente`, `FechaPedido`, `FechaDevolucion`, `Observaciones`, `Estado`) VALUES
(1, 1, 1, '2017-06-19', '2017-11-13', NULL, 'Activo'),
(2, 2, 2, '2017-08-24', '2017-12-20', NULL, 'Activo'),
(3, 3, 3, '2016-02-07', '2017-06-08', NULL, 'Activo');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `autores`
--
ALTER TABLE `autores`
  ADD PRIMARY KEY (`Id`);

--
-- Indices de la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`Id`);

--
-- Indices de la tabla `libros`
--
ALTER TABLE `libros`
  ADD PRIMARY KEY (`Id`);

--
-- Indices de la tabla `prestamos`
--
ALTER TABLE `prestamos`
  ADD PRIMARY KEY (`Id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `autores`
--
ALTER TABLE `autores`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT de la tabla `clientes`
--
ALTER TABLE `clientes`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT de la tabla `libros`
--
ALTER TABLE `libros`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT de la tabla `prestamos`
--
ALTER TABLE `prestamos`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
