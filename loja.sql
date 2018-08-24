-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Aug 24, 2018 at 06:47 PM
-- Server version: 5.7.22-log
-- PHP Version: 5.6.35

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `loja`
--

-- --------------------------------------------------------

--
-- Table structure for table `categorias`
--

DROP TABLE IF EXISTS `categorias`;
CREATE TABLE IF NOT EXISTS `categorias` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `categorias`
--

INSERT INTO `categorias` (`id`, `nome`) VALUES
(1, 'Transporte'),
(2, 'Educacao'),
(3, 'Lazer');

-- --------------------------------------------------------

--
-- Table structure for table `produtos`
--

DROP TABLE IF EXISTS `produtos`;
CREATE TABLE IF NOT EXISTS `produtos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(255) DEFAULT NULL,
  `preco` decimal(10,2) DEFAULT NULL,
  `descricao` text NOT NULL,
  `usado` tinyint(1) NOT NULL,
  `categoria_id` int(11) DEFAULT NULL,
  `isbn` varchar(255) DEFAULT NULL,
  `tipoProduto` varchar(255) DEFAULT NULL,
  `taxaImpressao` varchar(255) DEFAULT NULL,
  `waterMark` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `produtos`
--

INSERT INTO `produtos` (`id`, `nome`, `preco`, `descricao`, `usado`, `categoria_id`, `isbn`, `tipoProduto`, `taxaImpressao`, `waterMark`) VALUES
(1, 'Livro de PHP da Casa do Codigo completo', '39.90', 'Desenvolvimento web com PHP e MySQL', 0, 2, '6558497', 'Livro', NULL, NULL),
(2, 'Livro de HTML da Casa do Codigo', '39.90', 'HTML5 e CSS3 - Domine a web do futuro', 0, 2, NULL, NULL, NULL, NULL),
(3, 'Livro de TDD PHP da Casa do Codigo', '49.00', 'Teste e Design no Mundo Real com PHP', 0, 2, NULL, NULL, NULL, NULL),
(4, 'Livro PHP', '50.00', 'Livro de PHP do futuro', 0, 2, NULL, NULL, NULL, NULL),
(5, 'livro de PHP avanÃ§ado', '40.00', 'livro para curso avanÃ§ado', 0, 2, NULL, NULL, NULL, NULL),
(6, 'livro de PHP e MySQL', '50.00', 'livro de PHP e MySQL avanÃ§ado', 0, 2, '123456789', 'Livro', NULL, NULL),
(7, 'Livro qualquer', '15.00', 'livro ', 1, 3, '123456	', 'Livro', NULL, NULL),
(8, 'bola', '5.00', 'bola de futebol', 1, 3, '', 'bola: R$ 5.00', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
CREATE TABLE IF NOT EXISTS `usuarios` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) DEFAULT NULL,
  `senha` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `usuarios`
--

INSERT INTO `usuarios` (`id`, `email`, `senha`) VALUES
(1, 'arthur@oi.com', 'e10adc3949ba59abbe56e057f20f883e');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
