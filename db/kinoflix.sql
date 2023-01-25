-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 22/01/2023 às 02:23
-- Versão do servidor: 10.4.27-MariaDB
-- Versão do PHP: 8.1.12

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
-- Estrutura para tabela `cliente`
--

CREATE TABLE `cliente` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `email` varchar(255) NOT NULL,
  `nome` varchar(25) NOT NULL,
  `senha` varchar(15) NOT NULL,
  `data_nasc` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `elenco`
--

CREATE TABLE `elenco` (
  `IdDiretor` int(11) NOT NULL,
  `Diretor` text NOT NULL,
  `Atores` int(11) NOT NULL,
  `Image_Diretor` int(11) NOT NULL,
  `image_Atores` int(11) NOT NULL,
  `Estudio` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `faixa etaria`
--

CREATE TABLE `faixa etaria` (
  `ID` int(11) NOT NULL,
  `classificação` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `filmes`
--

CREATE TABLE `filmes` (
  `id` int(5) NOT NULL,
  `nomebr` varchar(150) NOT NULL,
  `NomeEN` varchar(150) NOT NULL,
  `anoLançamento` date NOT NULL,
  `idDiretor` int(11) NOT NULL,
  `idGenero` int(3) NOT NULL,
  `sinopse` varchar(800) NOT NULL,
  `Imagem` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `filmes`
--

INSERT INTO `filmes` (`id`, `nomebr`, `NomeEN`, `anoLançamento`, `idDiretor`, `idGenero`, `sinopse`, `Imagem`) VALUES
(1, 'Jogada de Amor', '', '0000-00-00', 0, 0, '', 'https://drive.google.com/file/d/1EiSMPFJa8LhitKXtAWNGwJYBn71hKjD4/view?usp=sharing'),
(2, 'A forma da Água', '', '0000-00-00', 0, 0, '', 'https://drive.google.com/file/d/1v1QHrQdWrYjaF_tzrr_mQs5BAZX3yTJU/view?usp=share_link'),
(3, 'La la land', '', '0000-00-00', 0, 0, '', 'https://drive.google.com/file/d/1QtNyn76WZhEsYYxljtrw1uFSkpbBLIrV/view?usp=share_link'),
(4, 'Ghost do outro lado da vida', '', '0000-00-00', 0, 0, '', 'https://drive.google.com/file/d/13mc2hzTDnrISX-gVjhshdxYOzQhECCUm/view?usp=share_link'),
(5, 'A teoria de Tudo', '', '0000-00-00', 0, 0, '', 'https://drive.google.com/file/d/1YTXcS_g7Xm4YxsZ_LKGPaBJx874JNEly/view?usp=share_link'),
(6, 'O lado bom da vida', '', '0000-00-00', 0, 0, '', 'https://drive.google.com/file/d/1gX3KHoxn2P8neBYwW73wCwzCsQka3_dN/view?usp=share_link'),
(7, 'A star is born', '', '0000-00-00', 0, 0, '', 'https://drive.google.com/file/d/1gRdqabvfiA1tFTiO--hkfzC7jbAgjE6B/view?usp=share_link'),
(8, 'Como eu era antes de você', '', '0000-00-00', 0, 0, '', 'https://drive.google.com/file/d/1ujXPUf_dHX4NaZsmVHg43fZwYMmvdicX/view?usp=share_link'),
(9, 'Redeeming Love', '', '0000-00-00', 0, 0, '', 'https://drive.google.com/file/d/1WwA3alHVfcGV-6r218tO3E5xCKT3S54O/view?usp=share_link'),
(10, 'A proposta', '', '0000-00-00', 0, 0, '', 'https://drive.google.com/file/d/1WxD1s-8hx1gI-r0mWqymzE6ZO8NKM3lW/view?usp=share_link'),
(11, 'The lost pirate Kingdom', '', '0000-00-00', 0, 0, '', 'https://drive.google.com/file/d/1Aq3fwR8sAu294dbubDM86c67PSw0rfVr/view?usp=share_link'),
(12, 'Batman the Dark Knight', '', '0000-00-00', 0, 0, '', 'https://drive.google.com/file/d/1axdyBfCZxKCnWNORdgS5HrQtFKYFO91N/view?usp=share_link'),
(13, 'A Lista De Schindler', '', '0000-00-00', 0, 0, '', 'https://drive.google.com/file/d/13Wr_xnN2xIA_n7shMPYzUHr-T4qEpgeE/view?usp=share_link'),
(14, 'Putin poder sem limites', '', '0000-00-00', 0, 0, '', 'https://drive.google.com/file/d/1R0FbMq_r4IOr0yt_c8MIKxsFkEn2bgje/view?usp=share_link'),
(15, 'Cracolândia', '', '0000-00-00', 0, 0, '', 'https://drive.google.com/file/d/1MN_AVy5oLLy5BMcdR4ShpaCT5x1r8RGV/view?usp=share_link'),
(16, 'A culpa é das estrelas', '', '0000-00-00', 0, 0, '', 'https://drive.google.com/file/d/10O4PSy1MoO70fxIB1nhEK856b3TfbO7_/view?usp=share_link'),
(17, 'O Regresso', '', '0000-00-00', 0, 0, '', 'https://drive.google.com/file/d/1LSMkG7SLesoPrLZOMReoegbjKd4ZkKDc/view?usp=share_link'),
(18, 'Á Espera de um milagre', '', '0000-00-00', 0, 0, '', 'https://drive.google.com/file/d/1SjT3Ks34GlBFIuJJVgaEOG78GaCUuVfE/view?usp=share_link'),
(19, 'Heleno', '', '0000-00-00', 0, 0, '', 'https://drive.google.com/file/d/1RPDuUDy0UY9K2r4l5tUNMYmKnj41tLaS/view?usp=share_link'),
(20, 'Maradona La mano de Dios', '', '0000-00-00', 0, 0, '', 'https://drive.google.com/file/d/1RPDuUDy0UY9K2r4l5tUNMYmKnj41tLaS/view?usp=share_link'),
(21, '12 anos de escravidão', '', '0000-00-00', 0, 0, '', 'https://drive.google.com/file/d/1QzCrzAxTxmkbOjVmbVVYcMtlQfYMow4n/view?usp=share_link'),
(22, 'à procura da felicidade', '', '0000-00-00', 0, 0, '', 'https://drive.google.com/file/d/1ZoENfTnVV1mIhycsNQ8OvpKM4y_uB9mS/view?usp=share_link'),
(23, 'A vida é bela', '', '0000-00-00', 0, 0, '', 'https://drive.google.com/file/d/1yRFyxBj4hxGAs4qyCG2FNJqg_ZnsUzZ_/view?usp=share_link'),
(24, 'Rogai por nos', '', '0000-00-00', 0, 0, '', 'https://drive.google.com/file/d/1m082ec5oRsf6fFY4QZHq7Q0Rs9OzraeX/view?usp=share_link'),
(25, 'Rec', '', '0000-00-00', 0, 0, '', 'https://drive.google.com/file/d/1TQ3PQs3c7whziDM-W4MJ5cdUOJpjzf-T/view?usp=share_link'),
(26, 'A bruxa', '', '0000-00-00', 0, 0, '', 'https://drive.google.com/file/d/1olzXP11ZMoDELeal_MY8y852OIiyXoob/view?usp=share_link'),
(27, 'A entidade 3', '', '0000-00-00', 0, 0, '', 'https://drive.google.com/file/d/1ldCXXX59vpjCr78S2VPjapPxOXBA0-G_/view?usp=share_link'),
(28, 'Parasite', '', '0000-00-00', 0, 0, '', 'https://drive.google.com/file/d/1ijnZPa47hwzsVprEX9S4lDwmeKOmAJdR/view?usp=share_link'),
(29, 'A luz do Diabo', '', '0000-00-00', 0, 0, '', 'https://drive.google.com/file/d/1mdTTLYShmm-rqjRb4f57DPyeZhfr6CeB/view?usp=share_link'),
(30, 'Quero matar meu chefe 2', '', '0000-00-00', 0, 0, '', 'https://drive.google.com/file/d/1_6-RNFPcw8R6CyzWclFc-o-1rUiAbKyD/view?usp=share_link\r\n'),
(31, 'Democracia em vertigem', '', '0000-00-00', 0, 0, '', 'https://drive.google.com/file/d/1_df6WAA5nqSnIQNLAswB6XS4bAAH6hP3/view?usp=share_link'),
(32, 'SCREAMERS', '', '0000-00-00', 0, 0, '', 'https://drive.google.com/file/d/125-YdcVttvvldbebaNS4wVvubWyNA0aP/view?usp=share_link'),
(33, 'A morte do demonio', '', '0000-00-00', 0, 0, '', 'https://drive.google.com/file/d/1RMaZf4gus8UhWJcvhXl77eIf8XusjaS-/view?usp=share_link'),
(34, 'Sobrenatural', '', '0000-00-00', 0, 0, '', 'https://drive.google.com/file/d/1AQ_JiC8K2srzMEYBLKR3Q4zMVXTk1PwA/view?usp=share_link'),
(35, 'Até que a sorte nos separe', '', '0000-00-00', 0, 0, '', 'https://drive.google.com/file/d/1pvENShNd4RuoFiZSkgyT6iw8E_e-Sf3W/view?usp=share_link'),
(36, 'It a coisa', '', '0000-00-00', 0, 0, '', 'https://drive.google.com/file/d/1f8WLWnWqycSqLVNka2ihkxnE5NAoFdye/view?usp=share_link'),
(37, 'Spider-man No way Home', '', '0000-00-00', 0, 0, '', 'https://drive.google.com/file/d/16hm5Kp85-V0z1wN2e6Ru9xFfZZSsJJgT/view?usp=share_link'),
(38, 'V for vendetta', '', '0000-00-00', 0, 0, '', 'https://drive.google.com/file/d/1O--VqMHir1ECDqhYism3p-O307kJZWww/view?usp=share_link'),
(39, 'O filho do máscara', '', '0000-00-00', 0, 0, '', 'https://drive.google.com/file/d/1Meap_YKHEK9gJd8WDItn5UWEWp8N6mGz/view?usp=share_link'),
(40, 'As branquelas', '', '0000-00-00', 0, 0, '', 'https://drive.google.com/file/d/17XaY2EcLcehYbdfSgMgbBb1KlZTcJ5eS/view?usp=share_link'),
(41, 'Pantera Negra Wakanda para sempre', '', '0000-00-00', 0, 0, '', 'https://drive.google.com/file/d/11X2lu_OzaqRvpJ1AgvsRqabOp42SCmD9/view?usp=share_link'),
(42, 'Se beber, não case', '', '0000-00-00', 0, 0, '', 'https://drive.google.com/file/d/1w2yXj4miEvsb-BvZ4sqtshNs3FQ5WBqN/view?usp=share_link'),
(43, 'American Pie', '', '0000-00-00', 0, 0, '', 'https://drive.google.com/file/d/1tnX3Fi7eoZE1HXpPHcwOPaqBQHxm51uk/view?usp=share_link'),
(44, 'Adão Negro', '', '0000-00-00', 0, 0, '', 'https://drive.google.com/file/d/11jSIWLekPdaDqwnP8_QqMFDuOfMkoQ7X/view?usp=share_link'),
(45, 'sniper americano', '', '0000-00-00', 0, 0, '', 'https://drive.google.com/file/d/1x76aA7Kwa25KYCYeMGRTn9hJUsWfJDbO/view?usp=share_link'),
(46, 'Rastros de um sequestro', '', '0000-00-00', 0, 0, '', 'https://drive.google.com/file/d/1LFKGKPhnBXuQXVWMUigFw64d8tp2aeLs/view?usp=share_link'),
(47, 'O ovo da serpente', '', '0000-00-00', 0, 0, '', 'https://drive.google.com/file/d/1ZCqDk2T9ncwfvzj6Q6H0eLWy00RyFI0C/view?usp=share_link'),
(48, '007 Die another day', '', '0000-00-00', 0, 0, '', 'https://drive.google.com/file/d/1ZCqDk2T9ncwfvzj6Q6H0eLWy00RyFI0C/view?usp=share_link'),
(49, 'Missão: Impossível 3', '', '0000-00-00', 0, 0, '', 'https://drive.google.com/file/d/1Lps6iaovvRn17SXwbD1r-uAfnEiENHE6/view?usp=share_link'),
(50, 'Os pinguins do papai', '', '0000-00-00', 0, 0, '', 'https://drive.google.com/file/d/15g3V-KXiqtfnk4uOb_zcKy-d3mEYL_H1/view?usp=share_link');

-- --------------------------------------------------------

--
-- Estrutura para tabela `genero`
--

CREATE TABLE `genero` (
  `IdGenero` int(3) NOT NULL,
  `Genero` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `series`
--

CREATE TABLE `series` (
  `IdSerie` int(11) NOT NULL,
  `NomeBR` int(11) NOT NULL,
  `NomeEN` int(11) NOT NULL,
  `anoLançamento` int(11) NOT NULL,
  `Diretor_idDiretor` int(11) NOT NULL,
  `genero_idGenero` int(11) NOT NULL,
  `Faixa_FE` int(11) NOT NULL,
  `sinopse` int(11) NOT NULL,
  `imagem` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `elenco`
--
ALTER TABLE `elenco`
  ADD PRIMARY KEY (`IdDiretor`);

--
-- Índices de tabela `filmes`
--
ALTER TABLE `filmes`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `genero`
--
ALTER TABLE `genero`
  ADD PRIMARY KEY (`IdGenero`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `cliente`
--
ALTER TABLE `cliente`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de tabela `elenco`
--
ALTER TABLE `elenco`
  MODIFY `IdDiretor` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `filmes`
--
ALTER TABLE `filmes`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=179;

--
-- AUTO_INCREMENT de tabela `genero`
--
ALTER TABLE `genero`
  MODIFY `IdGenero` int(3) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
