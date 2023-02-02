-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 02-Fev-2023 às 17:56
-- Versão do servidor: 10.4.24-MariaDB
-- versão do PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `kinoflix`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `cliente`
--

CREATE TABLE `cliente` (
  `id` int(11) NOT NULL,
  `nome` int(150) NOT NULL,
  `e-mail` varchar(150) NOT NULL,
  `senha` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `elenco`
--

CREATE TABLE `elenco` (
  `id` int(11) NOT NULL,
  `Ator` text NOT NULL,
  `image_Ator` text NOT NULL,
  `Apareceem` text NOT NULL,
  `idFilmes` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `favoritos`
--

CREATE TABLE `favoritos` (
  `Id` int(11) NOT NULL,
  `id_cliente` int(11) NOT NULL,
  `id_filmes` int(11) DEFAULT NULL,
  `id_series` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `filmes`
--

CREATE TABLE `filmes` (
  `id` int(11) NOT NULL,
  `titulo` varchar(150) NOT NULL,
  `anoLancamento` text NOT NULL,
  `idGenero` int(3) NOT NULL,
  `sinopse` varchar(800) NOT NULL,
  `Imagem` text NOT NULL,
  `Classificacao` text NOT NULL,
  `nota` decimal(3,0) NOT NULL,
  `trailer` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `genero`
--

CREATE TABLE `genero` (
  `id` int(3) NOT NULL,
  `tipo` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `genero`
--

INSERT INTO `genero` (`id`, `tipo`) VALUES
(1, 'Ação'),
(2, 'Aventura'),
(3, 'Comédia'),
(4, 'Documentário'),
(5, 'Drama'),
(6, 'Fantasia'),
(7, 'Mistério'),
(8, 'Romance'),
(9, 'Terror'),
(10, 'Thriller');

-- --------------------------------------------------------

--
-- Estrutura da tabela `series`
--

CREATE TABLE `series` (
  `id` int(11) NOT NULL,
  `titulo` text NOT NULL,
  `anoLancamento` text NOT NULL,
  `idGenero` int(3) NOT NULL,
  `sinopse` text NOT NULL,
  `Imagem` text NOT NULL,
  `Classificacao` text NOT NULL,
  `nota` decimal(3,0) NOT NULL,
  `trailer` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `elenco`
--
ALTER TABLE `elenco`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_id_FilmeGenero` (`idFilmes`);

--
-- Índices para tabela `favoritos`
--
ALTER TABLE `favoritos`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `fk_id_filmes` (`id_filmes`),
  ADD KEY `fk_id_series` (`id_series`),
  ADD KEY `fk_id_cliente` (`id_cliente`) USING BTREE;

--
-- Índices para tabela `filmes`
--
ALTER TABLE `filmes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_id_generoFilmes` (`idGenero`);

--
-- Índices para tabela `genero`
--
ALTER TABLE `genero`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `series`
--
ALTER TABLE `series`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_id_generoSeries` (`idGenero`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `cliente`
--
ALTER TABLE `cliente`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `elenco`
--
ALTER TABLE `elenco`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `favoritos`
--
ALTER TABLE `favoritos`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `filmes`
--
ALTER TABLE `filmes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `genero`
--
ALTER TABLE `genero`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de tabela `series`
--
ALTER TABLE `series`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `elenco`
--
ALTER TABLE `elenco`
  ADD CONSTRAINT `fk_id_FilmeGenero` FOREIGN KEY (`idFilmes`) REFERENCES `filmes` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `favoritos`
--
ALTER TABLE `favoritos`
  ADD CONSTRAINT `fk_id_filmes` FOREIGN KEY (`id_filmes`) REFERENCES `filmes` (`id`) ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_id_series` FOREIGN KEY (`id_series`) REFERENCES `series` (`id`) ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_id_usuario` FOREIGN KEY (`id_cliente`) REFERENCES `cliente` (`id`) ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `filmes`
--
ALTER TABLE `filmes`
  ADD CONSTRAINT `fk_id_generoFilmes` FOREIGN KEY (`idGenero`) REFERENCES `genero` (`id`);

--
-- Limitadores para a tabela `series`
--
ALTER TABLE `series`
  ADD CONSTRAINT `fk_id_generoSeries` FOREIGN KEY (`idGenero`) REFERENCES `genero` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
