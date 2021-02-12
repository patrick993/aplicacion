-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 12-02-2021 a las 21:22:36
-- Versión del servidor: 10.4.14-MariaDB
-- Versión de PHP: 7.4.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `empresa`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `afp`
--

CREATE TABLE `afp` (
  `id_afp` int(11) NOT NULL,
  `nombreAfp` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `contrato`
--

CREATE TABLE `contrato` (
  `id_tipoContrato` int(11) NOT NULL,
  `tipoContrato` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `contrato`
--

INSERT INTO `contrato` (`id_tipoContrato`, `tipoContrato`) VALUES
(1, 'Codigo del trabajo'),
(2, 'Estatuto Docente'),
(3, 'Honorarios');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empleados`
--

CREATE TABLE `empleados` (
  `id` int(11) NOT NULL,
  `nombre` varchar(150) NOT NULL,
  `rut` varchar(20) NOT NULL,
  `activo` int(11) NOT NULL,
  `tipoContrato` varchar(30) NOT NULL,
  `tipoSubvencion` varchar(50) NOT NULL,
  `Motivo` varchar(500) NOT NULL,
  `fecha_inicio` date DEFAULT NULL,
  `fecha_termino` date DEFAULT NULL,
  `establecimiento` varchar(100) NOT NULL,
  `horas` int(11) NOT NULL,
  `renta` varchar(12) NOT NULL,
  `afp` varchar(20) NOT NULL,
  `salud` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `empleados`
--

INSERT INTO `empleados` (`id`, `nombre`, `rut`, `activo`, `tipoContrato`, `tipoSubvencion`, `Motivo`, `fecha_inicio`, `fecha_termino`, `establecimiento`, `horas`, `renta`, `afp`, `salud`) VALUES
(1, 'Yessenia Riquelme', '11111111-1', 1, 'Codigo del Trabajo', 'Regular', '', '2010-08-02', '2055-12-01', 'DEM', 45, '700000', 'Consalud', 'Fonasa'),
(27, 'patrick alvarado', '185968790', 1, 'Codigo del trabajo', '', 'empleo', '0000-00-00', '0000-00-00', '', 45, '700000', '', ''),
(28, 'patrick alvarado', '185968790', 1, 'Codigo del trabajo', '', 'empleo', '0000-00-00', '0000-00-00', '', 45, '700000', '', ''),
(29, 'patrick alvarado', '185968790', 1, 'Codigo del trabajo', '', 'empleo', '0000-00-00', '0000-00-00', '', 45, '700000', '', ''),
(30, 'patrick alvarado', '185968790', 1, 'Codigo del trabajo', '', 'empleo', '0000-00-00', '0000-00-00', '', 45, '700000', '', ''),
(31, 'Alejandro Mora', '11111111-1', 1, 'Honorarios', 'sep', 'empleo', '0000-00-00', '0000-00-00', '', 30, '500000', '', ''),
(32, 'Miguel Angel Tapia', '16545689-4', 1, 'Estatuto Docente', 'faep', 'empleo', '0000-00-00', '0000-00-00', '', 45, '600000', '', ''),
(33, 'Miguel Angel Tapia', '16545689-4', 1, 'Estatuto Docente', 'faep', 'empleo', '0000-00-00', '0000-00-00', '', 45, '600000', '', ''),
(34, 'Miguel Angel Tapia', '16545689-4', 1, 'Estatuto Docente', 'faep', 'empleo', '2015-05-15', '2055-02-01', '', 45, '600000', '', ''),
(35, 'Pedro Alquinta', '14256321-1', 1, 'Codigo del trabajo', 'pie', 'empleo', '2017-01-19', '2020-09-24', 'Regular', 35, '400000', 'Habitat', 'Isapre'),
(36, 'felix', '18596879-0', 1, 'Estatuto Docente', 'faep', 'nose', '2000-05-02', '2055-12-01', 'Aviadores', 45, '680000', 'Planvital', 'Isapre'),
(37, 'patrick alvarado', '18596879-0', 1, 'Codigo del trabajo', 'pro-retencion', 'trabajo', '2016-12-12', '2055-12-01', 'DEM', 45, '700000', 'Modelo', 'Isapre'),
(38, 'patrick alvarado', '185968790', 1, 'Estatuto Docente', 'jardines', 'trabajo', '2016-01-06', '2024-10-30', 'Base el bosque', 45, '400000', 'Provida', 'Isapre'),
(39, 'patrick alvarado', '185968790', 1, 'Codigo del trabajo', 'regular', 'trabajo', '2019-01-09', '2020-05-31', 'Mario Arce Gatica', 45, '400000', 'Cuprum', 'Isapre'),
(40, 'Miguel Angel Montecinos', '18596879-0', 1, 'Honorarios', 'pie', 'trabajo', '2010-01-05', '2020-12-01', 'Mario Arce Gatica', 38, '420000', 'Modelo', 'Fonasa'),
(44, 'Patricio Ojeda', '9964125-8', 0, 'Estatuto Docente', 'pie', 'empleo', '2010-09-01', '2020-09-05', 'Ciudad de Lyon', 40, '520000', 'Modelo', 'Fonasa'),
(45, 'Fabian Castillo', '15474871-7', 0, 'Honorarios', 'pie', 'por que no tengo trabajo', '2009-05-01', '2055-10-01', 'Paul Harris', 35, '400000', 'Habitat', 'Fonasa'),
(46, 'Pablo Carrizo', '9447894-7', 0, 'Codigo del trabajo', 'pro-retencion', 'trabajo', '2015-10-01', '2055-01-01', 'Nemesio Antunez', 45, '700000', 'Habitat', 'Isapre');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `establecimiento`
--

CREATE TABLE `establecimiento` (
  `id_establecimiento` int(11) NOT NULL,
  `tipoEstablecimiento` varchar(30) NOT NULL,
  `nombreEstablecimiento` varchar(70) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `funcion`
--

CREATE TABLE `funcion` (
  `id_funcion` int(11) NOT NULL,
  `tipoFuncion` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `salud`
--

CREATE TABLE `salud` (
  `id_salud` int(11) NOT NULL,
  `tipoSalud` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `subvencion`
--

CREATE TABLE `subvencion` (
  `id_subvencion` int(11) NOT NULL,
  `tipo_subvencion` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `subvencion`
--

INSERT INTO `subvencion` (`id_subvencion`, `tipo_subvencion`) VALUES
(1, 'Regular'),
(2, 'SEP'),
(3, 'PIE'),
(4, 'FAEP'),
(5, 'PRO-RETENCION'),
(6, 'Jardines');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_usuario`
--

CREATE TABLE `tipo_usuario` (
  `id` int(11) NOT NULL,
  `tipo` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tipo_usuario`
--

INSERT INTO `tipo_usuario` (`id`, `tipo`) VALUES
(1, 'Administrador'),
(2, 'Usuario');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `rut` varchar(20) NOT NULL,
  `nombre_usuario` varchar(100) NOT NULL,
  `usuario` varchar(50) NOT NULL,
  `apellido_paterno` varchar(100) NOT NULL,
  `apellido_materno` varchar(100) NOT NULL,
  `correo` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `last_session` datetime NOT NULL,
  `activacion` int(11) NOT NULL,
  `token` varchar(40) NOT NULL,
  `token_password` varchar(100) NOT NULL,
  `password_request` int(11) NOT NULL,
  `id_tipo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `rut`, `nombre_usuario`, `usuario`, `apellido_paterno`, `apellido_materno`, `correo`, `password`, `last_session`, `activacion`, `token`, `token_password`, `password_request`, `id_tipo`) VALUES
(1, '', '', 'dada', '', '', '', '$2y$10$dpzpgFcU43dAaRy87clEfuo', '0000-00-00 00:00:00', 0, '', '', 0, 0),
(2, '', '', 'sas', '', '', '', '$2y$10$qFabBNanyYBSvBqIumQupu4', '0000-00-00 00:00:00', 0, '', '', 0, 0),
(3, '', '', 'trtrt', '', '', '', '$2y$10$tvuhjKA78a96rqpqObEVm.x', '0000-00-00 00:00:00', 0, '', '', 0, 0),
(4, '', '', 'asa', '', '', '', '$2y$10$v3rg6Srr2HP4I8KRrjYFqOh', '0000-00-00 00:00:00', 0, '', '', 0, 0),
(5, '', '', 'asaaa', '', '', '', '$2y$10$PO2QrY.Z8vC7KKha/Vpv8.X', '0000-00-00 00:00:00', 0, '', '', 0, 0),
(6, '', '', 'rer', '', '', '', '$2y$10$WhhD./hDBj5HamULDnVGvex', '0000-00-00 00:00:00', 0, '', '', 0, 0),
(7, '', '', 'erere', '', '', '', '$2y$10$gXxMjYNa5qRLMMC2PMKMrel', '0000-00-00 00:00:00', 0, '', '', 0, 0),
(8, '', '', 'trtr', '', '', '', '$2y$10$2istBLm7o4y0XQBOJZ.2q.g', '0000-00-00 00:00:00', 0, '', '', 0, 0),
(9, '', '', 'asqw', '', '', '', '', '0000-00-00 00:00:00', 0, '', '', 0, 0),
(10, '', '', 'erer', 'ffasd', '', '', '$2y$10$Ta96nibur9mLd0M8tAUh6OW', '0000-00-00 00:00:00', 0, '', '', 0, 0),
(11, '', '', 'repi', 'dara', '', '', '$2y$10$ROufEPZqZfQThS.G8gTWHey', '0000-00-00 00:00:00', 0, '', '', 0, 0),
(12, '', '', 'jeje', '', '', '', '$2y$10$7V6GgKjGO.Aq3HhjmdE4HOd', '0000-00-00 00:00:00', 0, '', '', 0, 0),
(13, '', '', 'dad', '', '', '', '$2y$10$x.SIvJxayQ.qJ2gInbV9vOb', '0000-00-00 00:00:00', 0, '', '', 0, 0),
(14, '', '', 'sdsd', '', 'sdsd', '', '$2y$10$fLggaAP6dxazXWx5N66kEOC', '0000-00-00 00:00:00', 0, '', '', 0, 0),
(16, '', '', '12wqwqw', '', '', '', '$2y$10$gG70AVOsJ/jrl87LwHqCZO5', '0000-00-00 00:00:00', 0, '', '', 0, 0),
(17, '', '', 'jaea', '', '', '', '$2y$10$MsYX5NUTe/rfU5FBN0vMFeq', '0000-00-00 00:00:00', 0, '72be2c324ba5b67502bd1c0570feba1a', '', 0, 0),
(18, '', '', 'mana', 'delis', 'gile', '', '$2y$10$nX2AIwFeNDlqYWq47CHf6eE', '0000-00-00 00:00:00', 0, '', '', 0, 0),
(19, '', '', 'rafa', 'lal', 'alal', 'pala@gmail.com', '$2y$10$VrzxXUHdm14cF6/Jeqr2VOc', '0000-00-00 00:00:00', 0, '', '', 0, 0),
(20, '185968790', '', 'lerea', 'mala', 'laia', 'dera@gmail.com', '$2y$10$cFBxKdHHlyk3cLkeipPKqOl', '0000-00-00 00:00:00', 0, '', '', 0, 0),
(21, '99671424', '', 'fde', 'das', 'jjdj', 'par@gmail.com', '$2y$10$jOn8wWncX4G0kQ5axMWQLOt', '0000-00-00 00:00:00', 0, '', '', 0, 0),
(22, '205514164', '', 'dele', 'lara', 'rata', 'gm@gmail.com', '$2y$10$G6JtmMtbyVflaz46E0yI2.O', '0000-00-00 00:00:00', 0, '279ae7addc0645272ebdc712ee53c513', '', 0, 0),
(23, '99671424', '', 'bala', 'ajaj', 'ahaha', 'gtr@gmail.com', '$2y$10$9QDieT5II2E5lpu/QX5dKux', '0000-00-00 00:00:00', 0, 'e79f0030b8fe7e111e19db52e9971253', '', 0, 2),
(24, '99671424', 'sdfsdf', 'sfsdf', 'sdfdf', 'sdfsdf', 'fret@gmail.com', '$2y$10$F1OHzp/d8TGrqBIpN1Dp1uz', '0000-00-00 00:00:00', 0, '5e6edfe4b2a3e23843596a4d61be4d42', '', 0, 2),
(29, '185967890', 'asdasd', 'dfsdasd', 'ddfs', 'yrty', 'gasinesaa@gmail.com', '$2y$10$DjeNCCrALXNSSI88rOSOyux', '0000-00-00 00:00:00', 0, 'f5c6df89290f921e0f718b258e0fd74f', '', 0, 2),
(45, '185968790', 'patrick', 'patrick', 'alvarad', 'valencia', 'patrick.alvarado993@gmail.com', '$2y$10$4Jpypm6aNP5vd0XWIuRLeOP81CoWLwGgsQXCZ18eTWaZme9pzBIom', '2021-02-12 16:54:09', 1, 'cbd93c34bbe9482abdc0a8867a2d3587', '', 0, 1),
(69, '18596879-0', 'patricio', 'patricio', 'al', 'al', 'prueba@educacionelbosque.cl', '$2y$10$l8Hu7Kh.moubgXKXyP3jZ.ICU1vDkyCNttka5GA5xqpsOmjKtlmw2', '0000-00-00 00:00:00', 0, '90b09c7ec7bf4ba1c8886fdb69d3a591', '', 0, 2),
(70, '185968790', 'sfdfdfs', 'dfasdd', 'sdfsdf', 'sdfsdfs', 'wladi@gmail.cl', '$2y$10$mFDFp7p01Y.TKcwYEovoFeoK3RZ54txSbjVq2XYNb6M4eornJeODS', '0000-00-00 00:00:00', 0, '679a1e3817c8587ae05b84e593379be2', '', 0, 2);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `afp`
--
ALTER TABLE `afp`
  ADD PRIMARY KEY (`id_afp`);

--
-- Indices de la tabla `contrato`
--
ALTER TABLE `contrato`
  ADD PRIMARY KEY (`id_tipoContrato`);

--
-- Indices de la tabla `empleados`
--
ALTER TABLE `empleados`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `establecimiento`
--
ALTER TABLE `establecimiento`
  ADD PRIMARY KEY (`id_establecimiento`);

--
-- Indices de la tabla `funcion`
--
ALTER TABLE `funcion`
  ADD PRIMARY KEY (`id_funcion`);

--
-- Indices de la tabla `salud`
--
ALTER TABLE `salud`
  ADD PRIMARY KEY (`id_salud`);

--
-- Indices de la tabla `subvencion`
--
ALTER TABLE `subvencion`
  ADD PRIMARY KEY (`id_subvencion`);

--
-- Indices de la tabla `tipo_usuario`
--
ALTER TABLE `tipo_usuario`
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
-- AUTO_INCREMENT de la tabla `afp`
--
ALTER TABLE `afp`
  MODIFY `id_afp` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `contrato`
--
ALTER TABLE `contrato`
  MODIFY `id_tipoContrato` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `empleados`
--
ALTER TABLE `empleados`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT de la tabla `establecimiento`
--
ALTER TABLE `establecimiento`
  MODIFY `id_establecimiento` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `funcion`
--
ALTER TABLE `funcion`
  MODIFY `id_funcion` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `salud`
--
ALTER TABLE `salud`
  MODIFY `id_salud` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `subvencion`
--
ALTER TABLE `subvencion`
  MODIFY `id_subvencion` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `tipo_usuario`
--
ALTER TABLE `tipo_usuario`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=72;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
