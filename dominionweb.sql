-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3306
-- Tiempo de generación: 09-09-2020 a las 16:45:08
-- Versión del servidor: 8.0.21
-- Versión de PHP: 7.2.24-0ubuntu0.18.04.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `dominionweb`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `juegos`
--

CREATE TABLE `juegos` (
  `idjuegos` int NOT NULL,
  `nombrejuegos` varchar(45) DEFAULT NULL,
  `precio` varchar(45) DEFAULT NULL,
  `descripcion` varchar(300) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `juegos`
--

INSERT INTO `juegos` (`idjuegos`, `nombrejuegos`, `precio`, `descripcion`) VALUES
(1, 'Coimbra', '40,95', 'Juego de mesa de gestión de dados en el que los jugadores viajarán a una de las más importantes ciudades de Portugal.'),
(2, 'Dixit Odissey', '26,99', 'Es una invitación a un recorrido por la mente de los jugadores, donde se esconden sorpresas y secretos. La idea es simple. Elegir una de las cartas de tu mano y buscar una frase que evoque su imagen.'),
(3, 'Virus', '12,99', 'Ambientado en el Hospital Nuestra Señora de Tranjis, donde los contenedores de muestras de un laboratorio se encuentran infectados con un virus que desatará los problemas, tú te encargarás de introducirte en esta dinámica para conseguir grandes dosis de diversión.'),
(4, 'Safranito', '35,99', 'Lleno de acción que desafía tanto la habilidad táctica como la destreza del jugador. ... Los jugadores pueden farolear y empujar las monedas de los oponentes a un lado, se trata de vender tus especias a un alto precio y comprar especias baratas.'),
(5, 'Las Mansiones de la Locura', '99,95', 'Las mansiones de la locura es un juego de tablero envolvente que brinda a los jugadores la posibilidad de vivir sus aventuras una y otra vez.'),
(6, 'Sushi Go Party', '22,50', 'Sushi Go Party incluye el juego básico y muchos más platos. Antes de empezar, los jugadores deberán escoger su propio menu entre 20 platos exquisitos.'),
(7, 'Catan', '35,90', 'Se trata de un juego que aúna la estrategia, la astucia y la capacidad para negociar y en el que los jugadores tratan de colonizar una isla, Catán, rica en recursos naturales.'),
(8, 'Ciudadelas', '14,95', 'Ciudadelas es un juego de cartas de estrategia en el cual tendremos que construir una ciudad con sus diferentes distritos y conseguir que sea la de mayor esplendor.');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `nombreusuarios` varchar(45) NOT NULL,
  `apellido` varchar(45) NOT NULL,
  `DNI` varchar(45) DEFAULT NULL,
  `tlf` varchar(45) DEFAULT NULL,
  `codigoPostal` varchar(45) DEFAULT NULL,
  `ciudad` varchar(45) DEFAULT NULL,
  `email` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  `rol` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`nombreusuarios`, `apellido`, `DNI`, `tlf`, `codigoPostal`, `ciudad`, `email`, `password`, `rol`) VALUES
('Alicia', 'Pizzarro', '12345678Q', '613123039', '03203', 'Elche', 'alicia@gmail.com', '1234', 'admin'),
('Juan', 'Perez', '15425663M', '666999777', '03340', 'Elche', 'juan@gmail.com', '1234', 'visitante');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `juegos`
--
ALTER TABLE `juegos`
  ADD PRIMARY KEY (`idjuegos`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`email`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
