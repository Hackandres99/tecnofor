-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 10-09-2022 a las 21:22:30
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
-- Estructura de tabla para la tabla `comments`
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `student_email` varchar(40) NOT NULL,
  `comment` text NOT NULL,
  `creation_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `comments`
--

INSERT INTO `comments` (`id`, `student_email`, `comment`, `creation_date`) VALUES
(1, 'jennifercali86@gmail.com', 'Bien', '2022-08-20 15:07:42'),
(2, 'jennifercali86@gmail.com', 'Bien', '2022-08-20 15:44:21');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `students`
--

CREATE TABLE `students` (
  `email` varchar(40) NOT NULL,
  `account_pass` varchar(250) NOT NULL,
  `creation_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `update_date` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `students`
--

INSERT INTO `students` (`email`, `account_pass`, `creation_date`, `update_date`) VALUES
('ali.ruizr@gmail.com', '$2y$10$a9QoZQuUTvwJLxWhDEl28.rx/iOIZU/LFGJ7d4rByjsosLofhLBI2', '2022-08-17 23:07:44', NULL),
('csmm2651@gmail.com', '$2y$10$17n.5RipLBCWFOPIsRXRiua9vWm/RYcy0grTWMDBB.vnho0Is.LTW', '2022-08-29 21:53:03', NULL),
('jamilpulley@gmail.com', '$2y$10$HG90ydFf1LOka7aqC47xpOchqg92HNeuGXvvTqS1B7Hn2Dz9f1hka', '2022-08-17 15:04:13', NULL),
('jennifercali86@gmail.com', '$2y$10$15/65fIUzmd72Vqc7pDv9Onl1xOtAGdNDnzF2MglifljjhgJ5OTQe', '2022-08-17 19:52:32', NULL),
('jsdiana13@hotmail.com', '$2y$10$IP79sfUxCFqvWaZOXd/TpuBJ4khqExiiG6oV5lH5IwDyiapTkjbhq', '2022-08-29 22:36:45', NULL),
('jsdianacastro13@gmail.com', '$2y$10$yKeVc4AOIZylMePQY1eiDO/0rzOeyq.e2hp6YMc2/tX6ssr6wvoR.', '2022-08-17 15:35:17', NULL),
('opticakapvision@gmail.com', '$2y$10$LZmp9viw10hAGt5F9lCoXe5icVlyC5qs081wVgAqJfe6ESipz90Pa', '2022-08-23 20:48:13', NULL),
('segundo.saavedrac@ug.edu.ec', '$2y$10$cJ4tVaRo9/ywSC6GS/tKHOXEib9DGzeFhGsf5ZO84dCFWM7CLvAe6', '2022-08-16 19:16:35', '2022-08-28 14:17:39'),
('test@gmail.com', '$2y$10$lX6svvCGFAbmz2BELC8qsO8Bd.0uSJ5acltl5PbUehDCmtCEGGn6K', '2022-08-17 15:41:15', '2022-09-09 23:42:06');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `thumbnails`
--

CREATE TABLE `thumbnails` (
  `id` int(11) NOT NULL,
  `intro_video` varchar(100) NOT NULL,
  `image_src` varchar(100) NOT NULL,
  `video_src` varchar(100) NOT NULL,
  `title` varchar(100) NOT NULL,
  `theme` varchar(100) NOT NULL,
  `creation_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `excerpt` text NOT NULL,
  `tag` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `thumbnails`
--

INSERT INTO `thumbnails` (`id`, `intro_video`, `image_src`, `video_src`, `title`, `theme`, `creation_date`, `excerpt`, `tag`) VALUES
(1, 'https://www.youtube.com/embed/uSLLqUsTF8Y?autoplay=true\r\n', '/img/unidades/matematicas1.jpg', 'https://www.youtube.com/embed/3GGlwCmyNdc', 'Propiedades de los números reales y medidas de tendencia central y dispersión.', 'Potenciación con exponentes enteros. Propiedades\r\n', '2022-08-17 03:16:13', 'La potencia de exponente natural de un número entero positivo, es igual a multiplicar dicho número por...', 'Unidad#1'),
(2, 'https://www.youtube.com/embed/ajMVdUe6qoc?autoplay=true', '/img/unidades/matematicas2.jpg', 'https://www.youtube.com/embed/WMIbvHAF4ig\r\n', 'Vectores geométricos en el plano y funciones reales', 'Operaciones con vectores en el plano', '2022-08-17 03:16:31', 'Un vector es un segmento orientado. No es más que un trazo de recta, en el que...', 'Unidad#2'),
(3, 'https://www.youtube.com/embed/uwjSpFyy8eE?autoplay=true', '/img/unidades/matematicas3.jpg', 'https://www.youtube.com/embed/RvT2BInmoHM', 'Función cuadrática y el espacio vectorial en R2', 'Sistemas de dos ecuaciones con dos incógnitas en forma analítica', '2022-08-17 03:17:43', 'Un sistema lineal de ecuaciones, o sistema de ecuaciones lineales o, incluso, por brevedad, sistema de ecuaciones, es un conjunto de...', 'Unidad#3'),
(4, 'https://www.youtube.com/embed/PKfMIzSrlQw', '/img/unidades/matematicas4.jpg', 'https://www.youtube.com/embed/7bzhgwe9mvo', 'Rectas en R2 y derivada de la función cuadrática', 'Ecuación Vectorial de la Recta', '2022-08-17 03:17:55', 'Recordemos que la definición matemática de una recta es un conjunto de puntos consecutivos que...', 'Unidad#4'),
(5, 'https://www.youtube.com/embed/NjW7IP6ZEFk', '/img/unidades/matematicas5.jpg', 'https://www.youtube.com/embed/M63XSEGvwxc', 'Polinomios reales con coeficientes en R y distacia de un punto a una recta', 'Multiplicación con polinomios', '2022-08-17 03:18:08', 'Las propiedades del producto de números reales, así como la potenciación de números reales con exponentes naturales nos da...', 'Unidad#5'),
(6, 'https://www.youtube.com/embed/FYegJky6_7Q?autoplay=true', '/img/unidades/matematicas6.jpg', 'https://www.youtube.com/embed/hIuBi3DwdO0', 'División de polinomios reales con coeficientes en R. Probabilidad', 'División de polinomios. Teorema del residuo', '2022-08-17 03:18:20', 'La división de polinomios se encuentra entre una gran cantidad de operaciones algebraicas, y entre ellas podemos...', 'Unidad#6');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `visits`
--

CREATE TABLE `visits` (
  `id` int(11) NOT NULL,
  `student_email` varchar(40) NOT NULL,
  `visit_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `visits`
--

INSERT INTO `visits` (`id`, `student_email`, `visit_date`) VALUES
(1, 'segundo.saavedrac@ug.edu.ec', '2022-08-16 19:16:35'),
(2, 'jamilpulley@gmail.com', '2022-08-17 15:04:13'),
(3, 'jsdianacastro13@gmail.com', '2022-08-17 15:35:17'),
(4, 'test@gmail.com', '2022-08-17 15:41:15'),
(5, 'jennifercali86@gmail.com', '2022-08-17 19:52:32'),
(6, 'test@gmail.com', '2022-08-17 20:12:01'),
(7, 'test@gmail.com', '2022-08-17 20:12:20'),
(8, 'ali.ruizr@gmail.com', '2022-08-17 23:07:44'),
(9, 'jsdianacastro13@gmail.com', '2022-08-18 13:37:02'),
(10, 'test@gmail.com', '2022-08-20 08:07:04'),
(11, 'jsdianacastro13@gmail.com', '2022-08-20 14:01:19'),
(12, 'jennifercali86@gmail.com', '2022-08-20 14:04:16'),
(13, 'jennifercali86@gmail.com', '2022-08-20 15:07:22'),
(14, 'segundo.saavedrac@ug.edu.ec', '2022-08-20 19:45:43'),
(15, 'jennifercali86@gmail.com', '2022-08-22 16:17:30'),
(16, 'jsdianacastro13@gmail.com', '2022-08-23 20:29:38'),
(17, 'opticakapvision@gmail.com', '2022-08-23 20:48:13'),
(18, 'jsdianacastro13@gmail.com', '2022-08-24 14:28:00'),
(19, 'jennifercali86@gmail.com', '2022-08-24 15:42:45'),
(20, 'segundo.saavedrac@ug.edu.ec', '2022-08-24 16:12:20'),
(21, 'jennifercali86@gmail.com', '2022-08-24 16:22:12'),
(22, 'jsdianacastro13@gmail.com', '2022-08-26 05:19:35'),
(23, 'jsdianacastro13@gmail.com', '2022-08-26 15:19:43'),
(24, 'jennifercali86@gmail.com', '2022-08-26 21:31:25'),
(25, 'segundo.saavedrac@ug.edu.ec', '2022-08-26 22:37:47'),
(26, 'jsdianacastro13@gmail.com', '2022-08-27 15:09:09'),
(27, 'segundo.saavedrac@ug.edu.ec', '2022-08-27 15:37:43'),
(28, 'segundo.saavedrac@ug.edu.ec', '2022-08-27 15:52:59'),
(29, 'segundo.saavedrac@ug.edu.ec', '2022-08-27 16:12:38'),
(30, 'jennifercali86@gmail.com', '2022-08-27 16:30:37'),
(31, 'segundo.saavedrac@ug.edu.ec', '2022-08-27 16:38:40'),
(32, 'segundo.saavedrac@ug.edu.ec', '2022-08-27 16:47:02'),
(33, 'jsdianacastro13@gmail.com', '2022-08-27 19:36:10'),
(34, 'jennifercali86@gmail.com', '2022-08-27 20:17:01'),
(35, 'segundo.saavedrac@ug.edu.ec', '2022-08-28 19:17:45'),
(36, 'jsdianacastro13@gmail.com', '2022-08-28 21:56:05'),
(37, 'jennifercali86@gmail.com', '2022-08-28 22:02:03'),
(38, 'jennifercali86@gmail.com', '2022-08-29 07:52:33'),
(39, 'jennifercali86@gmail.com', '2022-08-29 09:24:29'),
(40, 'jsdianacastro13@gmail.com', '2022-08-29 14:40:38'),
(41, 'jennifercali86@gmail.com', '2022-08-29 16:47:28'),
(42, 'jennifercali86@gmail.com', '2022-08-29 17:41:35'),
(43, 'jennifercali86@gmail.com', '2022-08-29 18:15:31'),
(44, 'csmm2651@gmail.com', '2022-08-29 21:53:03'),
(45, 'jsdiana13@hotmail.com', '2022-08-29 22:36:45'),
(46, 'jsdiana13@hotmail.com', '2022-08-29 22:45:51'),
(47, 'jsdianacastro13@gmail.com', '2022-08-30 01:26:55'),
(48, 'jsdiana13@hotmail.com', '2022-08-30 22:03:57'),
(49, 'jennifercali86@gmail.com', '2022-08-31 19:21:57'),
(50, 'jsdiana13@hotmail.com', '2022-09-01 16:01:02'),
(51, 'jsdianacastro13@gmail.com', '2022-09-01 16:03:56'),
(52, 'jennifercali86@gmail.com', '2022-09-01 16:45:09'),
(53, 'jsdianacastro13@gmail.com', '2022-09-01 18:06:28'),
(54, 'jsdianacastro13@gmail.com', '2022-09-01 18:22:40'),
(55, 'jennifercali86@gmail.com', '2022-09-01 19:40:11'),
(56, 'jennifercali86@gmail.com', '2022-09-01 22:04:04'),
(57, 'jennifercali86@gmail.com', '2022-09-01 22:07:40'),
(58, 'jennifercali86@gmail.com', '2022-09-02 16:32:54'),
(59, 'jennifercali86@gmail.com', '2022-09-03 17:10:20'),
(60, 'jsdianacastro13@gmail.com', '2022-09-04 19:09:19'),
(61, 'jsdianacastro13@gmail.com', '2022-09-04 19:09:29'),
(62, 'jsdianacastro13@gmail.com', '2022-09-05 00:18:12'),
(63, 'jennifercali86@gmail.com', '2022-09-05 16:00:42'),
(64, 'jennifercali86@gmail.com', '2022-09-07 15:38:04'),
(65, 'jsdianacastro13@gmail.com', '2022-09-08 16:00:03'),
(66, 'jsdianacastro13@gmail.com', '2022-09-08 16:00:07'),
(67, 'jsdianacastro13@gmail.com', '2022-09-09 16:15:09'),
(68, 'test@gmail.com', '2022-09-10 04:42:24'),
(69, 'jennifercali86@gmail.com', '2022-09-10 08:02:56'),
(70, 'jsdianacastro13@gmail.com', '2022-09-10 16:01:09'),
(71, 'jsdianacastro13@gmail.com', '2022-09-10 16:27:22'),
(72, 'jsdianacastro13@gmail.com', '2022-09-10 17:05:33'),
(73, 'jennifercali86@gmail.com', '2022-09-10 17:11:51');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `student_email` (`student_email`);

--
-- Indices de la tabla `students`
--
ALTER TABLE `students`
  ADD UNIQUE KEY `email` (`email`);

--
-- Indices de la tabla `thumbnails`
--
ALTER TABLE `thumbnails`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `visits`
--
ALTER TABLE `visits`
  ADD PRIMARY KEY (`id`),
  ADD KEY `email_estudiante` (`student_email`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `thumbnails`
--
ALTER TABLE `thumbnails`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `visits`
--
ALTER TABLE `visits`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_ibfk_1` FOREIGN KEY (`student_email`) REFERENCES `students` (`email`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `visits`
--
ALTER TABLE `visits`
  ADD CONSTRAINT `visits_ibfk_1` FOREIGN KEY (`student_email`) REFERENCES `students` (`email`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
