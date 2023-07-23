DROP DATABASE IF EXISTS `musicando`;
CREATE DATABASE `musicando`;
USE `musicando`;

-- ALBUMES *******************************************************************************************************

CREATE TABLE `albumes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) DEFAULT NULL,
  `duracion` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `albumes` VALUES
(default, 'Monster', 40),
(default, 'Mini buda', 37);

-- ARTISTAS *******************************************************************************************************

CREATE TABLE `artistas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) DEFAULT NULL,
  `apellido` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `artistas` VALUES
(default, 'Nicolas', 'Sorin'),
(default, 'Francisco', 'Huici'),
(default, 'Leo', 'Paganini'),
(default, 'Hernan', 'Rupolo'),
(default, 'Alan', 'Fritzler'),
(default, 'Mariano', 'Bonadío'),
(default, 'Leo', 'Jurel Costa'),
(default, 'Ezequiel', 'Piazza');

-- GENEROS *******************************************************************************************************

CREATE TABLE `generos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `generos` VALUES
(default, 'Rock'),
(default, 'Pop'),
(default, 'Jazz'),
(default, 'Electro'),
(default, 'Punk'),
(default, 'Música clásica');

-- CANCIONES *******************************************************************************************************

CREATE TABLE `canciones` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `titulo` varchar(45) DEFAULT NULL,
  `duracion` int(11) DEFAULT NULL,
  `genero_id` int(11) NOT NULL,
  `album_id` int(11) NOT NULL,
  `artista_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `canciones_generos_idx` (`genero_id`),
  KEY `canciones_albumes_idx` (`album_id`),
  KEY `canciones_artistas_idx` (`artista_id`),
  CONSTRAINT `canciones_albumes` FOREIGN KEY (`album_id`) REFERENCES `albumes` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `canciones_artistas` FOREIGN KEY (`artista_id`) REFERENCES `artistas` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `canciones_generos` FOREIGN KEY (`genero_id`) REFERENCES `generos` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `canciones` VALUES
(default, 'Monster', 208, 2, 1, 3),
(default, 'Plastic', 260, 1, 1, 2),
(default, 'Love', 228, 3, 1, 1),
(default, 'Mistifying', 249, 1, 1, 5),
(default, 'Wheels', 227, 4, 1, 2),
(default, 'Waving Batons', 157, 5, 1, 2),
(default, 'Whisky eyes', 217, 4, 1, 2),
(default, 'I´m sorry', 244, 3, 1, 2),
(default, 'You can take', 210, 2, 1, 2),
(default, 'Fool moon', 206, 2, 1, 2);