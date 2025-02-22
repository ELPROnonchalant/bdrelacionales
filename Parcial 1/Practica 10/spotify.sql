-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 22-02-2025 a las 02:18:58
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
-- Base de datos: `spotify`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `artistacanciones`
--

CREATE TABLE `artistacanciones` (
  `id` int(11) NOT NULL,
  `artista_id` int(11) NOT NULL,
  `canciones_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `artistas`
--

CREATE TABLE `artistas` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `descripcion` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `artistas`
--

INSERT INTO `artistas` (`id`, `nombre`, `descripcion`) VALUES
(1, 'Radiohead', 'AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA'),
(2, 'Nirvana', 'GRUNGE SOBREVALORADO M ENCANTA'),
(3, 'MF DOOM', 'Todo en mayúsculas'),
(4, 'Limp Bizkit', 'LO ODIO'),
(5, 'My Chemical Romance', 'LLO ODIOO'),
(6, 'koRn', 'MMM LO ODIO TAMBIEN'),
(7, 'Weezer', 'NO ES POP SOLO HICIERON 3 ALBUMES POP POR FAVOR SON MUY BUENOS'),
(8, 'The Smiths', 'POPO'),
(9, 'Pixies', 'LOS AMO SONMUY BUENOS LOS VERDADEROS PAPIS DEL GRUNGE'),
(10, 'Alice in Chains', 'LOS ODIO S COLGARON DE LA OLA DEL GRUNGE'),
(11, 'Molotov', 'NO los entiendo no se qu tipo de musica quieren hacer'),
(12, 'Daft Punk', 'VUELVAN POR FAVOR'),
(13, 'Aphex Twin', 'HOLA'),
(14, 'El Cuarteto de Nos', 'RIKI VUELVE AL CUARTETO'),
(15, 'Queen', 'fredi mercuri'),
(16, 'Sistem Of A Down', 'BANANABANANABANANABANANATERRACOTA'),
(17, 'Ice Cube', 'ES HIP HOP Y GANGSTA RAP ASI QUE LO PONGO EN RAP Y QUE');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `canciones`
--

CREATE TABLE `canciones` (
  `id` int(11) NOT NULL,
  `Nombre` varchar(100) NOT NULL,
  `genero_id` int(11) NOT NULL,
  `duracion` time NOT NULL,
  `fecha` date NOT NULL,
  `activo` tinyint(1) NOT NULL,
  `foto` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `canciones`
--

INSERT INTO `canciones` (`id`, `Nombre`, `genero_id`, `duracion`, `fecha`, `activo`, `foto`) VALUES
(1, 'Paranoid Android', 1, '00:06:27', '1997-05-26', 1, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRzmiwc3g20escbdSaAmw2nk0hFR3fXm-HcPw&s'),
(2, 'The Tourist', 1, '00:05:26', '1997-05-28', 1, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQGNPt4JeRgGi31J1imIT0opfAeiZwqUAt0MA&s'),
(3, 'Lucky', 1, '00:04:18', '1997-05-28', 1, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQGNPt4JeRgGi31J1imIT0opfAeiZwqUAt0MA&s'),
(4, 'Climbing Up the Walls', 1, '00:04:45', '1997-05-28', 1, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQGNPt4JeRgGi31J1imIT0opfAeiZwqUAt0MA&s'),
(5, 'Caravan', 4, '00:09:15', '2014-10-07', 1, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSSBJYb0QNHtyIXQSd3_sbcIJHHJ-lml-3mlg&s'),
(6, 'That\'s Life', 4, '00:03:07', '1966-11-01', 0, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRTR1MJv40DUnpSYhclQBD9w2vZNB8INwuTkQ&s'),
(7, 'Sand And Sea', 4, '00:02:26', '1966-11-01', 0, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRTR1MJv40DUnpSYhclQBD9w2vZNB8INwuTkQ&s'),
(8, 'Give Her Love', 4, '00:02:11', '1966-11-01', 0, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRTR1MJv40DUnpSYhclQBD9w2vZNB8INwuTkQ&s'),
(9, 'Hoe Cakes', 3, '00:03:54', '2004-11-16', 0, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRjtPrrZd2p5-RePAnEP-18BfrhwLR-DzXE1w&s'),
(10, 'Rapp Snitch Knishes', 3, '00:02:52', '2004-11-16', 0, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRjtPrrZd2p5-RePAnEP-18BfrhwLR-DzXE1w&s'),
(11, 'Kon Karne', 3, '00:02:51', '2004-11-16', 0, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRjtPrrZd2p5-RePAnEP-18BfrhwLR-DzXE1w&s'),
(12, 'One Beer', 3, '00:04:18', '2004-11-16', 0, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRjtPrrZd2p5-RePAnEP-18BfrhwLR-DzXE1w&s'),
(13, 'Cock/ver10', 6, '00:05:18', '2001-10-22', 1, 'https://cdn.dc5.ro/img-prod/2627406498-0.jpeg'),
(14, 'QKThr', 6, '00:01:27', '2001-10-22', 1, 'https://cdn.dc5.ro/img-prod/2627406498-0.jpeg'),
(15, 'Avril 14th', 6, '00:02:05', '2001-10-22', 1, 'https://cdn.dc5.ro/img-prod/2627406498-0.jpeg'),
(16, 'Kladfvgbung Mischk', 6, '00:02:06', '2001-10-22', 1, 'https://cdn.dc5.ro/img-prod/2627406498-0.jpeg'),
(17, 'Blew', 2, '00:02:54', '1989-06-01', 0, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSzF243ULw5z-EriO45ZvehlSF5l0gb71tYlg&s'),
(18, 'Floyd The Barber', 2, '00:02:18', '1989-06-01', 0, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSzF243ULw5z-EriO45ZvehlSF5l0gb71tYlg&s'),
(19, 'Love Buzz', 2, '00:03:35', '1989-06-01', 0, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSzF243ULw5z-EriO45ZvehlSF5l0gb71tYlg&s'),
(20, 'Mr. Moustache', 2, '00:03:23', '1989-06-01', 0, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSzF243ULw5z-EriO45ZvehlSF5l0gb71tYlg&s');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `favoritos`
--

CREATE TABLE `favoritos` (
  `id` int(11) NOT NULL,
  `usuario_id` int(11) NOT NULL,
  `canciones_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `generos`
--

CREATE TABLE `generos` (
  `id` int(11) NOT NULL,
  `Nombre` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `generos`
--

INSERT INTO `generos` (`id`, `Nombre`) VALUES
(1, 'Rock alternativo'),
(2, 'Grunge'),
(3, 'Rap'),
(4, 'Jazz'),
(5, 'Metal'),
(6, 'Electrónica'),
(7, 'Pop');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `membresias`
--

CREATE TABLE `membresias` (
  `id` int(11) NOT NULL,
  `descripcion` varchar(100) NOT NULL,
  `precio` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `membresias`
--

INSERT INTO `membresias` (`id`, `descripcion`, `precio`) VALUES
(1, 'Free', 0),
(2, 'Individual', 129),
(3, 'Duo', 169),
(4, 'Estudiantes', 69),
(5, 'Familiar', 199);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `playlist`
--

CREATE TABLE `playlist` (
  `id` int(11) NOT NULL,
  `nombre` varchar(200) NOT NULL,
  `usuario_id` int(11) NOT NULL,
  `duracion` time NOT NULL,
  `totalcanciones` int(11) NOT NULL,
  `descripcion` varchar(200) NOT NULL,
  `publico` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `playlistcanciones`
--

CREATE TABLE `playlistcanciones` (
  `id` int(11) NOT NULL,
  `playlist_id` int(11) NOT NULL,
  `canciones_id` int(11) NOT NULL,
  `usuario_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `Nombre` varchar(100) NOT NULL,
  `correo` varchar(300) NOT NULL,
  `membresia_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `artistacanciones`
--
ALTER TABLE `artistacanciones`
  ADD PRIMARY KEY (`id`),
  ADD KEY `artista_id` (`artista_id`),
  ADD KEY `canciones_id` (`canciones_id`);

--
-- Indices de la tabla `artistas`
--
ALTER TABLE `artistas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `canciones`
--
ALTER TABLE `canciones`
  ADD PRIMARY KEY (`id`),
  ADD KEY `genero_id` (`genero_id`);

--
-- Indices de la tabla `favoritos`
--
ALTER TABLE `favoritos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `usuario_id` (`usuario_id`),
  ADD KEY `canciones_id` (`canciones_id`);

--
-- Indices de la tabla `generos`
--
ALTER TABLE `generos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `membresias`
--
ALTER TABLE `membresias`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `playlist`
--
ALTER TABLE `playlist`
  ADD PRIMARY KEY (`id`),
  ADD KEY `usuario_id` (`usuario_id`);

--
-- Indices de la tabla `playlistcanciones`
--
ALTER TABLE `playlistcanciones`
  ADD PRIMARY KEY (`id`),
  ADD KEY `playlist_id` (`playlist_id`),
  ADD KEY `canciones_id` (`canciones_id`),
  ADD KEY `usuario_id` (`usuario_id`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`),
  ADD KEY `membresia_id` (`membresia_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `artistacanciones`
--
ALTER TABLE `artistacanciones`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `artistas`
--
ALTER TABLE `artistas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT de la tabla `canciones`
--
ALTER TABLE `canciones`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de la tabla `favoritos`
--
ALTER TABLE `favoritos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `generos`
--
ALTER TABLE `generos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `membresias`
--
ALTER TABLE `membresias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `playlist`
--
ALTER TABLE `playlist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `playlistcanciones`
--
ALTER TABLE `playlistcanciones`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `artistacanciones`
--
ALTER TABLE `artistacanciones`
  ADD CONSTRAINT `artistacanciones_ibfk_1` FOREIGN KEY (`artista_id`) REFERENCES `artistas` (`id`),
  ADD CONSTRAINT `artistacanciones_ibfk_2` FOREIGN KEY (`canciones_id`) REFERENCES `canciones` (`id`);

--
-- Filtros para la tabla `canciones`
--
ALTER TABLE `canciones`
  ADD CONSTRAINT `canciones_ibfk_1` FOREIGN KEY (`genero_id`) REFERENCES `generos` (`id`);

--
-- Filtros para la tabla `favoritos`
--
ALTER TABLE `favoritos`
  ADD CONSTRAINT `favoritos_ibfk_1` FOREIGN KEY (`canciones_id`) REFERENCES `canciones` (`id`),
  ADD CONSTRAINT `favoritos_ibfk_2` FOREIGN KEY (`usuario_id`) REFERENCES `usuarios` (`id`);

--
-- Filtros para la tabla `playlist`
--
ALTER TABLE `playlist`
  ADD CONSTRAINT `playlist_ibfk_1` FOREIGN KEY (`usuario_id`) REFERENCES `usuarios` (`id`);

--
-- Filtros para la tabla `playlistcanciones`
--
ALTER TABLE `playlistcanciones`
  ADD CONSTRAINT `playlistcanciones_ibfk_1` FOREIGN KEY (`playlist_id`) REFERENCES `playlist` (`id`),
  ADD CONSTRAINT `playlistcanciones_ibfk_2` FOREIGN KEY (`usuario_id`) REFERENCES `usuarios` (`id`),
  ADD CONSTRAINT `playlistcanciones_ibfk_3` FOREIGN KEY (`canciones_id`) REFERENCES `canciones` (`id`);

--
-- Filtros para la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD CONSTRAINT `usuarios_ibfk_1` FOREIGN KEY (`membresia_id`) REFERENCES `membresias` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
