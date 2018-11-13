-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 07-11-2018 a las 14:09:57
-- Versión del servidor: 10.1.34-MariaDB
-- Versión de PHP: 5.6.37

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `proyecto_T5`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Erabiltzailea`
--

CREATE TABLE `Erabiltzailea` (
  `Nick` varchar(20) CHARACTER SET utf8 NOT NULL,
  `PostaElectronicoa` varchar(50) CHARACTER SET utf8 NOT NULL,
  `Izena` varchar(15) CHARACTER SET utf8 NOT NULL,
  `Abizena` varchar(20) CHARACTER SET utf8 NOT NULL,
  `Adina` int(11) NOT NULL,
  `Pasahitza` varchar(100) CHARACTER SET utf8 NOT NULL,
  `Permisuak` int(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `Erabiltzailea`
--

INSERT INTO `Erabiltzailea` (`Nick`, `PostaElectronicoa`, `Izena`, `Abizena`, `Adina`, `Pasahitza`, `Permisuak`) VALUES
('', '', '', '', 0, '', 0),
('', 'dsg', '', '', 0, '', 0),
('asdad', '', '', '', 0, '', 0),
('benja', 'jonbenja2@gmail.com', 'jon', 'ahedo', 18, 'jon', 0),
('jbenja', 'jonbenja@gmail.com', 'jon', 'ahedo', 19, 'kpyVmaOgmKKb', 1),
('jon', 'jonbenja2@gmail.com', 'jon', 'ahedo', 18, 'jon', 0),
('ruedaslcas', 'ruedaslocas@pp.com', 'alex', 'mendi', 22, '1234', 0),
('samael', 'samuel@gmail.com', 'samuel', 'Hidalgo', 25, 'pauYo5aZn6WS', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Iruzkinak`
--

CREATE TABLE `Iruzkinak` (
  `IdIruzkina` int(255) NOT NULL,
  `Nick` varchar(15) CHARACTER SET utf8 NOT NULL,
  `Iritzia` varchar(25) CHARACTER SET utf8 NOT NULL,
  `Data` date NOT NULL,
  `IdSarrera` int(15) NOT NULL,
  `Edukia` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `Iruzkinak`
--

INSERT INTO `Iruzkinak` (`IdIruzkina`, `Nick`, `Iritzia`, `Data`, `IdSarrera`, `Edukia`) VALUES
(0, 'samael', '4', '0000-00-00', 10, ' fg'),
(1, 'samael', '', '0000-00-00', 10, ''),
(2, 'samael', '', '0000-00-00', 10, ''),
(3, 'samael', '', '0000-00-00', 10, ''),
(4, 'samael', '', '0000-00-00', 10, ''),
(5, 'samael', '', '0000-00-00', 10, ''),
(6, 'samael', '', '0000-00-00', 10, ''),
(7, 'samael', '', '0000-00-00', 10, ''),
(8, 'samael', '1', '0000-00-00', 10, ' fff'),
(9, 'samael', '3', '0000-00-00', 10, ' aaaa'),
(10, 'samael', '3', '0000-00-00', 10, ' aaaa'),
(11, 'samael', '4', '0000-00-00', 10, ' g'),
(12, 'samael', '4', '0000-00-00', 10, ' g'),
(13, 'samael', '3', '0000-00-00', 10, ' aaaa'),
(14, 'samael', '', '0000-00-00', 10, ' '),
(15, 'samael', '4', '0000-00-00', 10, ' goal'),
(16, 'samael', '1', '0000-00-00', 10, ' fff'),
(17, 'samael', '', '0000-00-00', 10, ''),
(18, 'samael', '', '0000-00-00', 10, ''),
(19, 'samael', '', '0000-00-00', 10, ''),
(20, 'samael', '', '0000-00-00', 10, ''),
(21, 'samael', '', '0000-00-00', 10, '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Sarrerak`
--

CREATE TABLE `Sarrerak` (
  `IdSarrera` int(15) NOT NULL,
  `Tituloak` varchar(30) CHARACTER SET utf8 NOT NULL,
  `Gaia` varchar(30) CHARACTER SET utf8 NOT NULL,
  `Describapena` mediumtext CHARACTER SET utf8 NOT NULL,
  `Bisitak` int(255) NOT NULL,
  `Data` date NOT NULL,
  `Especialidades` mediumtext NOT NULL,
  `Jefe_de_cocina` varchar(80) CHARACTER SET utf8 NOT NULL,
  `Localizacion` varchar(100) CHARACTER SET utf8 NOT NULL,
  `Medios_de_pago` varchar(100) CHARACTER SET utf8 NOT NULL,
  `Precios_medios` varchar(100) CHARACTER SET utf8 NOT NULL,
  `Servicios` varchar(100) CHARACTER SET utf8 NOT NULL,
  `Estrellas` varchar(100) CHARACTER SET utf8 NOT NULL,
  `Contacto` varchar(100) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `Sarrerak`
--

INSERT INTO `Sarrerak` (`IdSarrera`, `Tituloak`, `Gaia`, `Describapena`, `Bisitak`, `Data`, `Especialidades`, `Jefe_de_cocina`, `Localizacion`, `Medios_de_pago`, `Precios_medios`, `Servicios`, `Estrellas`, `Contacto`) VALUES
(10, 'DiverXO', 'comida contemporanea', 'Abra su mente y viaje al personalÃ­simo mundo de este chef, un \"PaÃ­s de Nunca JamÃ¡s\" transgresor y sorprendente en lo gastronÃ³mico. En un espacio de rompedor diseÃ±o moderno plantea una cocina viajera y divertida que no deja indiferente, pues intensifica las sensaciones y alcanza la plenitud en sus famosos platos-lienzo.', 0, '2018-11-06', 'Cocido Pho vietnamita de chuleta de vaca roja gallega madurada con guisantes del Maresme 	y ali oli de humo. Spicy bolognesa de carabineros con gamba roja atemperada, rocoto, hojas 	de curry, mostaza picante y dulce japonesa. Petit suisse de fresas silvestres, mascarpone de 	leche de oveja requemada, pimienta rosa, flores, aceite de oliva y crema helada de galanga-	lima.', 'David MuÃ±oz', 'Padre DamiÃ¡n 23, 28036 Madrid', 'Amex-Mastercard-Visa', '195 â‚¬ - 250 â‚¬', 'Aire acondicionado- No se admiten perros-No fumador', '3 estrellas Michelin', 'â—¦ +34915700766:  http://www.diverxo.com'),
(11, 'El Celler de Can Roca ', 'comida contemporanea', 'La increÃ­ble evoluciÃ³n de esta casa familiar estÃ¡ vinculada al singular triÃ¡ngulo formado por los hermanos Roca, pues con la maestrÃ­a demostrada en sus respectivos campos llevan la experiencia culinaria a niveles de excepciÃ³n. Descubra texturas, matices, contrastes... y una sorprendente bodega con espacios sensoriales.', 0, '2018-11-06', 'Memoria de un bar-Toda la gamba-Cromatismo Naranja', 'Joan y Jordi Roca', 'Can Sunyer 48, 17007 Girona', '        â—¦ Amex-Diners club-Mastercard-Visa', '130 â‚¬ - 205 â‚¬', '        â—¦ ire acondicionAire acondicionado-Acceso para minusvÃ¡lidos-Parking-No fumador', '3 estrellas Michelin', '+34972222157: http://www.cellercanroca.com'),
(12, 'DSTAgE ', 'comida contemporanea', 'Un restaurante de estÃ©tica urbana e industrial que refleja, en un ambiente desenfadado, la personalidad del chef; de hecho, hasta el nombre del local juega con su filosofÃ­a vital. Descubra una cocina que fusiona culturas, productos y sabores tan dispares como los ibÃ©ricos, los mexicanos o los propios del mundo nipÃ³n.', 0, '2018-11-06', 'Aguacate asado, mole y masato-Merluza al natural , proteÃ­na y angula-MaÃ­z.', 'Diego Guerrero', 'Can Sunyer 48, 17007 Girona', 'Amex-Mastercard-Visa', '90 â‚¬ - 148 â‚¬', '        â—¦ ire acondicionAire acondicionado-No fumador-Salones privados-No se admiten perros', '2 estrellas Michelin', '      +34917021586: http://www.dstageconcept.comrcanroca.com'),
(13, 'Fogony ', 'comida contemporanea', 'El matrimonio propietario, con Ã©l en la sala y ella atenta a los fogones, apuesta claramente por la cocina actual... eso sÃ­, siempre elaborada con productos de la comarca, ecolÃ³gicos o de proximidad. Buen menÃº Km. 0 y platos ya clÃ¡sicos, como su deliciosa Paletilla de lechazo \"Xisqueta\", con bombÃ³n de queso y almendra.', 0, '2018-11-06', 'Colmenillas de foie-gras de pato, Armagnac y Oporto-Guisado de meloso de ternera de los Pirineos, conguitos y salsifins-SablÃ© de frutos secos, chocolate y helado de avellanas de Reus', 'Zaraida Cotonat', 'av. Generalitat 45, 25560 Sort', 'Amex-Mastercard-Visa-Diners club', '38 â‚¬ - 75 â‚¬', '        â—¦ ire acondicionAire acondicionado-No fumador-No se admiten perros', '1 estrellas Michelin', '             â—¦ +34973621225: http://www.fogony.comgeconcept.comrcanroca.com'),
(14, 'Kabuki', 'Comida Japonesa', 'Un restaurante japonÃ©s de sencilla estÃ©tica minimalista, con lo que intentan dar aÃºn mÃ¡s protagonismo a la cocina. Lo mejor en esta casa es dejarse llevar por las recomendaciones del dÃ­a, que podrÃ¡ degustar como si se tratara de un menÃº Omakase. Suele llenarse a diario, asÃ­ que... Â¡aconsejamos reservar!', 0, '2018-11-06', 'Tartar de toro con angulas-Costillas de buey en teriyaki-Cremoso de yuzu.', 'Ricardo Sanz', 'av. Presidente Carmona 2, 28020 Madrid', 'Amex-Mastercard-Visa-Diners club', '65 â‚¬ - 92 â‚¬', 'Aire acondicionado-Acceso para minusvÃ¡lidos-No fumador', '1 estrellas Michelin', '        â—¦ +34914176415: http://www.grupokabuki.com'),
(15, 'Arzak', 'comida contemporanea', 'Descubra las excelencias de esta casa, una instituciÃ³n acostumbrada a vivir entre la historia y la mÃ¡s compleja modernidad. Padre e hija trabajan, como un perfecto tÃ¡ndem, para que nos maravillemos ante la bondad de sus materias primas; no en vano, aquÃ­ la creatividad solo se construye en base a los mejores productos.', 0, '2018-11-06', 'Txangurro encendido-Merluza con pinturas de garbanzos-\"Chut\" de chocolate.', 'Elena y Juan Mari Arzak', 'av. Presidente Carmona 2, 28020 Madrid', 'Amex-Mastercard-Visa-Diners club', '162 â‚¬ - 215 â‚¬', 'Aire acondicionado-Parking- Salones privados-No se admiten perros-No fumador', '3 estrellas Michelin', '        â—¦ +34943278465: http://www.arzak.es'),
(16, 'Kokotxa', 'comida contemporanea', 'Restaurante de estÃ©tica actual ubicado en pleno casco viejo. AquÃ­, con un servicio especialmente amable a la par que profesional, le propondrÃ¡n una cocina tradicional actualizada y varios menÃºs, uno de mercado y otro tipo degustaciÃ³n.', 0, '2018-11-06', 'Cangrejo crujiente, kimchi y coco-Lubina, aguacate, daikon y lima-Regaliz, mango, cacao y fruta de la pasiÃ³n', 'Daniel LÃ³pez', 'Kanpandegi 11, 20003 Donostia / San SebastiÃ¡n', 'Mastercard-Visa', '55 â‚¬ - 91 â‚¬', 'Aire acondicionado-Parking- Salones privados-No se admiten perros-No fumador', '1 estrellas Michelin', '+34943421904: http://www.restaurantekokotxa.com');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `Erabiltzailea`
--
ALTER TABLE `Erabiltzailea`
  ADD PRIMARY KEY (`Nick`,`PostaElectronicoa`);

--
-- Indices de la tabla `Iruzkinak`
--
ALTER TABLE `Iruzkinak`
  ADD PRIMARY KEY (`IdIruzkina`),
  ADD KEY `Nick` (`Nick`),
  ADD KEY `IdSarrera` (`IdSarrera`);

--
-- Indices de la tabla `Sarrerak`
--
ALTER TABLE `Sarrerak`
  ADD PRIMARY KEY (`IdSarrera`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `Sarrerak`
--
ALTER TABLE `Sarrerak`
  MODIFY `IdSarrera` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `Iruzkinak`
--
ALTER TABLE `Iruzkinak`
  ADD CONSTRAINT `Iruzkinak_ibfk_2` FOREIGN KEY (`Nick`) REFERENCES `Erabiltzailea` (`Nick`),
  ADD CONSTRAINT `Iruzkinak_ibfk_3` FOREIGN KEY (`IdSarrera`) REFERENCES `Sarrerak` (`IdSarrera`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
