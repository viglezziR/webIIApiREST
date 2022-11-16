-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 17-10-2022 a las 15:41:28
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
-- Base de datos: `db_products`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `brands`
--

CREATE TABLE `brands` (
  `brand_id` int(11) NOT NULL,
  `brand` varchar(50) NOT NULL,
  `contact` bigint(20) NOT NULL,
  `origin` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `brands`
--

INSERT INTO `brands` (`brand_id`, `brand`, `contact`, `origin`) VALUES
(5, 'Estampa', 8002221795, 'CABA'),
(8, 'Excellent', 8009993747, 'CABA'),
(7, 'Sieger', 3584950425, 'Parque Ind. Alcira Gigena, Córdoba, Argentina.'),
(6, 'VitalCan', 8006668226, 'Villa Martelli, Francisco N. de Laprida 3163');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `products`
--

CREATE TABLE `products` (
  `id_products` int(11) NOT NULL,
  `animal` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `brand` varchar(50) NOT NULL,
  `price` double NOT NULL,
  `productWeight` varchar(50) NOT NULL,
  `animalAge` varchar(50) NOT NULL,
  `animalSize` varchar(50) NOT NULL,
  `image` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `products`
--

INSERT INTO `products` (`id_products`, `animal`, `name`, `brand`, `price`, `productWeight`, `animalAge`, `animalSize`, `image`) VALUES
(67, 'Perro', 'Criadores', 'Estampa', 2500, '8 kg', 'Adulto', 'Tamaño unico', 'images/6349dc28a7495.jpg'),
(68, 'Perro', 'Criadores', 'Estampa', 5000, '15 kg', 'Adulto', 'Tamaño unico', 'images/6349dc50c7ae4.jpg'),
(69, 'Perro', 'Criadores', 'Estampa', 6300, '20 kg', 'Adulto', 'Tamaño unico', 'images/6349dc6be14aa.jpg'),
(70, 'Perro', 'Plus', 'Estampa', 6000, '15 kg', 'Adulto', 'Mordida Grande', 'images/6349dcd76267c.jpg'),
(71, 'Perro', 'Plus', 'Estampa', 7300, '20 kg', 'Adulto', 'Mordida Grande', 'images/6349dcfcc305b.jpg'),
(72, 'Perro', 'Plus', 'Estampa', 5000, '8 kg', 'Adulto', 'Mordida Chica', 'images/6349dd531bfd4.jpg'),
(73, 'Perro', 'Plus', 'Estampa', 6000, '15 kg', 'Cachorro', 'Tamaño unico', 'images/6349dd8027640.jpg'),
(74, 'Perro', 'Plus', 'Estampa', 7300, '20 kg', 'Cachorro', 'Tamaño unico', 'images/6349dd963e7c8.jpg'),
(75, 'Gato', 'Plus', 'Estampa', 6000, '8 kg', 'Adulto', 'Tamaño unico', 'images/6349dde74e4b2.jpg'),
(76, 'Gato', 'Plus', 'Estampa', 7300, '15 kg', 'Adulto', 'Tamaño unico', 'images/6349de01f30a1.jpg'),
(78, 'Perro', 'Pollo y Arroz', 'Excellent', 5000, '15 kg', 'Cachorro', 'Mordida Chica', 'images/634b49c0ee74a.jpg'),
(79, 'Perro', 'Pollo y Arroz', 'Excellent', 6000, '15 kg', 'Cachorro', 'Mordida Grande', 'images/634b49fae77cc.jpg'),
(80, 'Perro', 'Pollo y Arroz', 'Excellent', 7300, '20 kg', 'Adulto', 'Mordida Chica', 'images/634b4a403673f.jpg'),
(81, 'Perro', 'Pollo y Arroz', 'Excellent', 7300, '20 kg', 'Adulto', 'Mordida Grande', 'images/634b4a68c091f.jpg'),
(82, 'Perro', 'Skin Care', 'Excellent', 9800, '15 kg', 'Adulto', 'Tamaño unico', 'images/634b4ab442d30.jpg'),
(83, 'Gato', 'Pollo y Arroz', 'Excellent', 5000, '15 kg', 'Cachorro', 'Tamaño unico', 'images/634b4c0771952.jpg'),
(84, 'Gato', 'Pollo y Arroz', 'Excellent', 6000, '15 kg', 'Adulto', 'Tamaño unico', 'images/634b4c2e3ce29.jpg'),
(85, 'Gato', 'Urinary', 'Excellent', 4500, '7.5 kg', 'Adulto', 'Tamaño unico', 'images/634b4c6746f2a.jpg'),
(86, 'Perro', 'Puppy Small', 'Sieger', 7300, '8 kg', 'Cachorro', 'Mordida Chica', 'images/634b4cd8601ae.jpg'),
(87, 'Perro', 'Puppy Big', 'Sieger', 6300, '8 kg', 'Cachorro', 'Mordida Grande', 'images/634b4d4fbf873.jpg'),
(88, 'Perro', 'Adults Mini & Small', 'Sieger', 4200, '3 kg', 'Adulto', 'Mordida Chica', 'images/634c6076a564d.jpg'),
(89, 'Perro', 'Adults Mini & Small', 'Sieger', 6300, '15 kg', 'Adulto', 'Mordida Chica', NULL),
(90, 'Perro', 'Adults Medium & Large', 'Sieger', 5000, '7.5 kg', 'Adulto', 'Mordida Grande', 'images/634c60c9d4719.jpg'),
(91, 'Perro', 'Adults Medium & Large', 'Sieger', 9800, '20 kg', 'Adulto', 'Mordida Grande', 'images/634c60f34b76d.jpg'),
(92, 'Gato', 'Kitten', 'Sieger', 5000, '7.5 kg', 'Cachorro', 'Tamaño unico', 'images/634c611d8948f.jpg'),
(93, 'Gato', 'Adult', 'Sieger', 6300, '7.5 kg', 'Adulto', 'Tamaño unico', 'images/634c614681c7d.jpg'),
(94, 'Perro', 'Premium', 'VitalCan', 5000, '15 kg', 'Cachorro', 'Tamaño unico', 'images/634c61a486dcd.jpg'),
(95, 'Perro', 'Premium', 'VitalCan', 9800, '20 kg', 'Adulto', 'Mordida Chica', 'images/634c61e9e31cb.jpg'),
(96, 'Perro', 'Premium', 'VitalCan', 9800, '20 kg', 'Adulto', 'Mordida Grande', 'images/634c620a5b0cd.jpg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`user_id`, `email`, `password`) VALUES
(1, 'admin@admin.com', '$2a$12$DQhHumbyjxxRZYs0A6VjXuWvz1yTUqzAjKsypvuhMu0H1Akw/dNyq');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`brand`),
  ADD UNIQUE KEY `brand_id` (`brand_id`);

--
-- Indices de la tabla `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id_products`),
  ADD KEY `brand_id` (`brand`),
  ADD KEY `brand` (`brand`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `brands`
--
ALTER TABLE `brands`
  MODIFY `brand_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `products`
--
ALTER TABLE `products`
  MODIFY `id_products` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=100;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_ibfk_1` FOREIGN KEY (`brand`) REFERENCES `brands` (`brand`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
