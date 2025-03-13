-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 13-03-2025 a las 01:02:40
-- Versión del servidor: 10.1.39-MariaDB
-- Versión de PHP: 7.3.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `tienda_en_linea`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `carrito`
--

CREATE TABLE `carrito` (
  `id` int(11) NOT NULL,
  `Producto_id` int(11) NOT NULL,
  `Cantidad` int(11) NOT NULL,
  `Usuario_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `carrito`
--

INSERT INTO `carrito` (`id`, `Producto_id`, `Cantidad`, `Usuario_id`) VALUES
(1, 1, 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categorías`
--

CREATE TABLE `categorías` (
  `id` int(11) NOT NULL,
  `Nombre` varchar(150) NOT NULL,
  `Descripcion` varchar(700) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `categorías`
--

INSERT INTO `categorías` (`id`, `Nombre`, `Descripcion`) VALUES
(1, 'Entretenimiento', 'Variedad de productos de entretenimiento como consolas, juegos de mesa, accesorios, juguetes, etc.');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `direcciones`
--

CREATE TABLE `direcciones` (
  `id` int(11) NOT NULL,
  `Calle` varchar(100) NOT NULL,
  `Num` int(11) NOT NULL,
  `Colonia` varchar(50) NOT NULL,
  `CP` int(11) NOT NULL,
  `Estado` varchar(100) NOT NULL,
  `Ciudad` varchar(100) NOT NULL,
  `Usuario_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `direcciones`
--

INSERT INTO `direcciones` (`id`, `Calle`, `Num`, `Colonia`, `CP`, `Estado`, `Ciudad`, `Usuario_id`) VALUES
(1, 'Del Maiz', 7323, 'Cebo', 60094, 'Oaxaca', 'Xbox', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `lista_deseos`
--

CREATE TABLE `lista_deseos` (
  `id` int(11) NOT NULL,
  `Usuario_id` int(11) NOT NULL,
  `Producto_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `lista_deseos`
--

INSERT INTO `lista_deseos` (`id`, `Usuario_id`, `Producto_id`) VALUES
(1, 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `membresías`
--

CREATE TABLE `membresías` (
  `id` int(11) NOT NULL,
  `Nombre` varchar(50) NOT NULL,
  `Precio` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `membresías`
--

INSERT INTO `membresías` (`id`, `Nombre`, `Precio`) VALUES
(1, 'Prime', 99);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `metodo_pago`
--

CREATE TABLE `metodo_pago` (
  `id` int(11) NOT NULL,
  `Nombre` varchar(50) NOT NULL,
  `Tipo` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `metodo_pago`
--

INSERT INTO `metodo_pago` (`id`, `Nombre`, `Tipo`) VALUES
(1, 'Visa', 'Tarjeta de debito');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `id` int(11) NOT NULL,
  `Nombre` varchar(150) NOT NULL,
  `Descripcion` varchar(300) NOT NULL,
  `Precio` double NOT NULL,
  `Categoria_id` int(11) NOT NULL,
  `Cantidad` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id`, `Nombre`, `Descripcion`, `Precio`, `Categoria_id`, `Cantidad`) VALUES
(1, 'PlayStation 3 80GB Modelo CECHE 11\r\n(Reacondicionado)', 'Consola retro PlayStation 3 con 80 Gigabites de almacenamiento en disco duro, en caja con dos controles Dualshock 3, Cable de alimentacion, cable Mini USB, cable HDMI e instructivos', 4700, 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `Nombre` varchar(100) NOT NULL,
  `Apellido` varchar(100) NOT NULL,
  `Correo` varchar(100) NOT NULL,
  `Teléfono` varchar(20) NOT NULL,
  `Fecha-nacimiento` date NOT NULL,
  `Genero` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `Nombre`, `Apellido`, `Correo`, `Teléfono`, `Fecha-nacimiento`, `Genero`) VALUES
(1, 'El', 'Barto', 'dou@gmail.com', '6679381235', '1997-08-11', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios_membresia`
--

CREATE TABLE `usuarios_membresia` (
  `id` int(11) NOT NULL,
  `Usuario_id` int(11) NOT NULL,
  `Membresia_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `usuarios_membresia`
--

INSERT INTO `usuarios_membresia` (`id`, `Usuario_id`, `Membresia_id`) VALUES
(1, 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ventas`
--

CREATE TABLE `ventas` (
  `id` int(11) NOT NULL,
  `Carrito_id` int(11) NOT NULL,
  `Metodo_pago_id` int(11) NOT NULL,
  `Total` double NOT NULL,
  `Estado` tinyint(1) NOT NULL,
  `Direccion_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `ventas`
--

INSERT INTO `ventas` (`id`, `Carrito_id`, `Metodo_pago_id`, `Total`, `Estado`, `Direccion_id`) VALUES
(1, 1, 1, 4760, 1, 1);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `carrito`
--
ALTER TABLE `carrito`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Producto_id` (`Producto_id`),
  ADD KEY `Usuario_id` (`Usuario_id`);

--
-- Indices de la tabla `categorías`
--
ALTER TABLE `categorías`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `direcciones`
--
ALTER TABLE `direcciones`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Usuario_id` (`Usuario_id`);

--
-- Indices de la tabla `lista_deseos`
--
ALTER TABLE `lista_deseos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Usuario_id` (`Usuario_id`),
  ADD KEY `Producto_id` (`Producto_id`);

--
-- Indices de la tabla `membresías`
--
ALTER TABLE `membresías`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `metodo_pago`
--
ALTER TABLE `metodo_pago`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Categoria_id` (`Categoria_id`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usuarios_membresia`
--
ALTER TABLE `usuarios_membresia`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Usuario_id` (`Usuario_id`),
  ADD KEY `Membresia_id` (`Membresia_id`);

--
-- Indices de la tabla `ventas`
--
ALTER TABLE `ventas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Carrito_id` (`Carrito_id`),
  ADD KEY `Metodo_pago_id` (`Metodo_pago_id`),
  ADD KEY `Direccion_id` (`Direccion_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `carrito`
--
ALTER TABLE `carrito`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `categorías`
--
ALTER TABLE `categorías`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `direcciones`
--
ALTER TABLE `direcciones`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `lista_deseos`
--
ALTER TABLE `lista_deseos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `membresías`
--
ALTER TABLE `membresías`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `metodo_pago`
--
ALTER TABLE `metodo_pago`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `usuarios_membresia`
--
ALTER TABLE `usuarios_membresia`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `ventas`
--
ALTER TABLE `ventas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `carrito`
--
ALTER TABLE `carrito`
  ADD CONSTRAINT `carrito_ibfk_1` FOREIGN KEY (`Producto_id`) REFERENCES `productos` (`id`),
  ADD CONSTRAINT `carrito_ibfk_2` FOREIGN KEY (`Usuario_id`) REFERENCES `usuarios` (`id`);

--
-- Filtros para la tabla `direcciones`
--
ALTER TABLE `direcciones`
  ADD CONSTRAINT `direcciones_ibfk_1` FOREIGN KEY (`Usuario_id`) REFERENCES `usuarios` (`id`);

--
-- Filtros para la tabla `lista_deseos`
--
ALTER TABLE `lista_deseos`
  ADD CONSTRAINT `lista_deseos_ibfk_1` FOREIGN KEY (`Producto_id`) REFERENCES `productos` (`id`),
  ADD CONSTRAINT `lista_deseos_ibfk_2` FOREIGN KEY (`Usuario_id`) REFERENCES `usuarios` (`id`);

--
-- Filtros para la tabla `productos`
--
ALTER TABLE `productos`
  ADD CONSTRAINT `productos_ibfk_1` FOREIGN KEY (`Categoria_id`) REFERENCES `categorías` (`id`);

--
-- Filtros para la tabla `usuarios_membresia`
--
ALTER TABLE `usuarios_membresia`
  ADD CONSTRAINT `usuarios_membresia_ibfk_1` FOREIGN KEY (`Membresia_id`) REFERENCES `membresías` (`id`),
  ADD CONSTRAINT `usuarios_membresia_ibfk_2` FOREIGN KEY (`Usuario_id`) REFERENCES `usuarios` (`id`);

--
-- Filtros para la tabla `ventas`
--
ALTER TABLE `ventas`
  ADD CONSTRAINT `ventas_ibfk_1` FOREIGN KEY (`Carrito_id`) REFERENCES `carrito` (`id`),
  ADD CONSTRAINT `ventas_ibfk_2` FOREIGN KEY (`Direccion_id`) REFERENCES `direcciones` (`id`),
  ADD CONSTRAINT `ventas_ibfk_3` FOREIGN KEY (`Metodo_pago_id`) REFERENCES `metodo_pago` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
