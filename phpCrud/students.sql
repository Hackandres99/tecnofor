-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 20-08-2022 a las 09:34:59
-- Versión del servidor: 10.4.24-MariaDB
-- Versión de PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `tecnofor`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `students`
--

CREATE TABLE `students` (
  `email` varchar(40) NOT NULL,
  `account_pass` varchar(250) NOT NULL,
  `creation_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `students`
--

INSERT INTO `students` (`email`, `account_pass`, `creation_date`) VALUES
('ali.ruizr@gmail.com', '$2y$10$a9QoZQuUTvwJLxWhDEl28.rx/iOIZU/LFGJ7d4rByjsosLofhLBI2', '2022-08-17 23:07:44'),
('jamilpulley@gmail.com', '$2y$10$HG90ydFf1LOka7aqC47xpOchqg92HNeuGXvvTqS1B7Hn2Dz9f1hka', '2022-08-17 15:04:13'),
('jennifercali86@gmail.com', '$2y$10$15/65fIUzmd72Vqc7pDv9Onl1xOtAGdNDnzF2MglifljjhgJ5OTQe', '2022-08-17 19:52:32'),
('jsdianacastro13@gmail.com', '$2y$10$yKeVc4AOIZylMePQY1eiDO/0rzOeyq.e2hp6YMc2/tX6ssr6wvoR.', '2022-08-17 15:35:17'),
('segundo.saavedrac@ug.edu.ec', '$2y$10$kKbjRMCih5FULC4zwVbi.eCveQ2lEiWywDhknOTjIv.4jeOJ.UO1q', '2022-08-16 19:16:35'),
('test@gmail.com', '$2y$10$WxZXBAT143Dr4BDq.XjiFu.I93ueC4AloE1V8UgxncA1XzytDUSxK', '2022-08-17 15:41:15');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `students`
--
ALTER TABLE `students`
  ADD UNIQUE KEY `email` (`email`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
