-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 31-Jan-2023 às 18:51
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
-- Estrutura da tabela `assinatura`
--

CREATE TABLE `assinatura` (
  `IdAssinatura` int(7) NOT NULL,
  `client_cpf` text NOT NULL,
  `tipo` text NOT NULL,
  `Custo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `cliente`
--

CREATE TABLE `cliente` (
  `nome` int(150) NOT NULL,
  `e-mail` varchar(150) NOT NULL,
  `senha` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `elenco`
--

CREATE TABLE `elenco` (
  `IdElenco` int(11) NOT NULL,
  `Ator` text NOT NULL,
  `image_Ator` text NOT NULL,
  `Apareceem` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `elenco`
--

INSERT INTO `elenco` (`IdElenco`, `Ator`, `image_Ator`, `Apareceem`) VALUES
(1, 'Yoon Chan-Young', 'img/ator-cards/Yoon Chan-Young.jpg', 'All of us are Dead\r\n'),
(2, 'Yoo in-soo', 'img/ator-cards/Yoo in-soo.jpg', 'All of us are Dead'),
(3, 'Park Solomon', 'img/ator-cards/Park Solomon.jpg\r\n', 'All of us Are Dead'),
(4, 'Park Ji-hoo', 'img/ator-cards/Park Ji-hoo.jpg', 'All of us are dead'),
(5, 'Cho Yi-Hyun', 'img/ator-cards/Cho Yi-Hyun.jpg', 'All of us Are Dead'),
(6, 'Emily Browning', 'img/ator-cards/Emily Browning.jpg', 'American Gods'),
(7, 'Ian McShane', 'img/ator-cards/Ian McShane.jpg', 'American Gods'),
(8, 'Orlando jones', 'img/ator-cards/Orlando jones.jpg', 'American Gods'),
(9, 'Ricky Whittle', 'img/ator-cards/Ricky Whittle.jpg', 'American Gods'),
(10, 'Yetide Badaki', 'img/ator-cards/Yetide Badaki.jpg', 'American Gods'),
(11, 'Emma Roberts.jpg', 'img/ator-cards/Emma Roberts.jpg', 'American Horror Story'),
(12, 'Evans Peters', 'img/ator-cards/Evans Peters.jpg', 'American Horror Story'),
(13, 'Jessina Lange', 'img/ator-cards/Jessina Lange.jpg', 'American Horror Story'),
(14, 'Sarah Paulson', 'img/ator-cards/Sarah Paulson.jpg', 'American Horror Story'),
(15, 'Taissa Farmiga.', 'img/ator-cards/Taissa Farmiga.jpeg', 'American Horror Story'),
(16, 'Bob Odenikirk', 'img/ator-cards/Bob Odenikirk.jpg', 'Better Call Saul'),
(17, 'Jonathan Banks', 'img/ator-cards/Jonathan Banks', 'Better Call Saul'),
(18, 'Michael Mando', 'img/ator-cards/Michael Mando.jpg', 'Better Call Saul'),
(19, 'Patrick Fabian', 'img/ator-cards/Patrick Fabian.jpg', 'Better Call Saul'),
(20, 'Rhea Seehorn', 'img/ator-cards/Rhea Seehorn.jpg', 'Better Call Saul'),
(21, 'Aaron Paul', 'img/ator-cards/Aaron Paul.jpg', 'Breaking Bad'),
(22, 'Anna Gunn', 'img/ator-cards/Anna Gunn.jpg', 'Breaking Bad'),
(23, 'Bryan Cranston', 'img/ator-cards/Bryan Cranston.jpg', 'Breaking Bad'),
(24, 'Dean Norris', 'img/ator-cards/Dean Norris.jpg', 'Breaking Bad'),
(25, 'RJ Mitte', 'img/ator-cards/RJ Mitte.jpg', 'Breaking Bad'),
(26, 'Andy Samberg', 'img/ator-cards/Andy Samberg.jpg', 'Brooklyn Nine Nine'),
(27, 'Chelsea Peretti', 'img/ator-cards/Chelsea Peretti.jpg', 'Brooklyn Nine Nine'),
(28, 'Melissa Fumero', 'img/ator-cards/Melissa Fumero.jpg', 'Brooklyn Nine Nine'),
(29, 'Sthephanie Beatriz', 'img/ator-cards/Sthephanie Beatriz.jpg', 'Brooklyn Nine Nine'),
(30, 'Terry Crews', 'img/ator-cards/Terry Crews.jpg', 'Brooklyn Nine Nine'),
(31, 'Adrian Grenier', 'img/ator-cards/Adrian Grenier.png', 'ClickBait'),
(32, 'Betty Gabriel', 'img/ator-cards/Betty Gabriel.png', 'ClickBait'),
(33, 'Jessie Collins', 'img/ator-cards/Jessie Collins.png', 'ClickBait'),
(34, 'Phenix Raei', 'img/ator-cards/Phenix Raei.png', 'ClickBait'),
(35, 'Zoe Kazan', 'img/ator-cards/Zoe Kazan.png', 'ClickBait\r\nYoung Sheldon'),
(36, 'Eric Szmanda', 'img/ator-cards/Eric Szmanda.jpg', 'Csi'),
(37, 'George Eads', 'img/ator-cards/George Eads.jpg', 'Csi'),
(38, 'Jarja Fox', 'img/ator-cards/Jarja Fox.jpg', 'Csi'),
(39, 'Marg Helgenberger', 'img/ator-cards/Marg Helgenberger.jpg', 'Csi'),
(40, 'William Petersen', 'img/ator-cards/William Petersen.jpg', 'Csi'),
(41, 'Frank Todaro', 'img/ator-cards/Frank Todaro.jpg', 'Cuphead'),
(42, 'Grey Delisle', 'img/ator-cards/Grey Delisle.jpg', 'Cuphead'),
(43, 'Luke Millington Drake', 'img/ator-cards/Luke Millington Drake.jpg', 'Cuphead'),
(44, 'Natasia Demetriou', 'img/ator-cards/Natasia Demetriou.jpg', 'Cuphead'),
(45, 'Tru Valentino', 'img/ator-cards/Tru Valentino.jpg', 'Cuphead'),
(46, 'Gina Stiebitz', 'img/ator-cards/Gina Stiebitz.jpg', 'Dark'),
(47, 'Lisa Vicari', 'img/ator-cards/Lisa Vicari.jpg', 'Dark'),
(48, 'Louins Hoffmann', 'img/ator-cards/Louins Hoffmann.jpg', 'Dark'),
(49, 'Moritz Jahn', 'img/ator-cards/Moritz Jahn.jpg', 'Dark'),
(50, 'Oliver Masucci', 'img/ator-cards/Oliver Masucci.jpg', 'Dark'),
(51, 'Elfo - Gustavo Nader', 'img/ator-cards/Elfo - Gustavo Nader.jpg', 'Des(encanto)'),
(52, 'Luci - Francisco Junior', 'img/ator-cards/Luci - Francisco Junior.jpg', 'Des(encanto)'),
(53, 'Princesa Bean - Luisa Palomanes', 'img/ator-cards/Princesa Bean - Luisa Palomanes.jpg', 'Des(encanto)'),
(54, 'Rainha Oona - Mariangela Cantú', 'img/ator-cards/Rainha Oona - Mariangela Cantú.jpg', 'Des(encanto)'),
(55, 'Rei Zog - Guilherme Lopes', 'img/ator-cards/Rei Zog - Guilherme Lopes.jpg', 'Des(encanto)'),
(56, 'Hugh Laurie', 'img/ator-cards/Hugh Laurie.jpg', 'DR House'),
(57, 'Jeniffer Morrison', 'img/ator-cards/Jeniffer Morrison.jpg', 'DR House'),
(58, 'Lisa Edelsten', 'img/ator-cards/Lisa Edelsten.jpg', 'DR House'),
(59, 'Omar Epps', 'img/ator-cards/Omar Epps.jpg', 'DR House'),
(60, 'Robert Sean Leonard', 'img/ator-cards/Robert Sean Leonard.jpg', 'DR House'),
(61, 'Arón Piper', 'img/ator-cards/Arón Piper.jpg', 'Elite'),
(62, 'Ester Expósito', 'img/ator-cards/Ester Expósito.jpg', 'Elite'),
(63, 'Itzan Escamila.jpg', 'img/ator-cards/Itzan Escamila.jpg', 'Elite'),
(64, 'Miguel Bernardeau', 'img/ator-cards/Miguel Bernardeau.jpg', 'Elite'),
(65, 'Mina El Hammani', 'img/ator-cards/Mina El Hammani.jpg', 'Elite'),
(66, 'Angus Cloud', 'img/ator-cards/Angus Cloud.jpg', 'Euphoria'),
(67, 'Hunter Schafer', 'img/ator-cards/Hunter Schafer.jpg', 'Euphoria'),
(68, 'Jacob Elordi', 'img/ator-cards/Jacob Elordi.jpg', 'Euphoria'),
(69, 'Sydney Sweeney', 'img/ator-cards/Sydney Sweeney.jpg', 'Euphoria'),
(70, 'Zendaya', 'img/ator-cards/Zendaya.jpg', 'Euphoria'),
(71, 'Carol Daronch.jpg', 'img/ator-cards/Carol Daronch.jpg', 'Falando com um serial killer teddy bundy'),
(72, 'Hugh Ayneswoth', 'img/ator-cards/Hugh Ayneswoth.jpg', 'Falando com um serial killer teddy bundy'),
(73, 'stephen michaud', 'img/ator-cards/stephen michaud.jpg', 'Falando com um serial killer teddy bundy'),
(74, 'Teddy Bundy', 'img/ator-cards/Teddy Bundy.jpg', 'Falando com um serial killer teddy bundy'),
(75, 'Ward lucas', 'img/ator-cards/Ward lucas.jpg', 'Falando com um serial killer teddy bundy'),
(76, 'David Schwimmer.jpg', 'img/ator-cards/David Schwimmer.jpg', 'Friends'),
(77, 'Jennifer anniston', 'img/ator-cards/Jennifer anniston.jpg', 'Friends'),
(78, 'Lisa Kudrow', 'img/ator-cards/Lisa Kudrow.jpg', 'Friends'),
(79, 'Matt LeBlanc', 'img/ator-cards/Matt LeBlanc.jpg', 'Friends'),
(80, 'Matthew Perry', 'img/ator-cards/Matthew Perry.jpg', 'Friends'),
(81, 'Emilia Clarke', 'img/ator-cards/Emilia Clarke.jpg', 'Game of thrones'),
(82, 'Jason Momoa', 'img/ator-cards/Jason Momoa.jpg', 'Game of thrones'),
(83, 'Kit Harrington', 'img/ator-cards/Kit Harrington.jpg', 'Game of thrones'),
(84, 'Pedro Pascal', 'img/ator-cards/Pedro Pascal.png', 'Game of thrones\r\nNarcos\r\nthe last of us'),
(85, 'Sophie Turner', 'img/ator-cards/Sophie Turner.jpg', 'Game of thrones'),
(86, 'Benedict Cumberbatch', 'img/ator-cards/Benedict Cumberbatch.jpg', 'Good Omens'),
(87, 'David Tennant', 'img/ator-cards/David Tennant.jpg', 'Good Omens'),
(88, 'Jom Hamm', 'img/ator-cards/Jom Hamm.jpg', 'Good Omens'),
(89, 'Michael Sheen', 'img/ator-cards/Michael Sheen.jpg', 'Good Omens'),
(90, 'Sam Taylor Buck', 'img/ator-cards/Sam Taylor Buck.jpg', 'Good Omens'),
(91, 'Chandra Wilson', 'img/ator-cards/Chandra Wilson.jpg', 'Grey_s Anatomy'),
(92, 'Ellen Pompeo', 'img/ator-cards/Ellen Pompeo.jpg', 'Grey_s Anatomy'),
(93, 'Justin Chambers', 'img/ator-cards/Justin Chambers.jpg', 'Grey_s Anatomy'),
(94, 'Patrick Dempsey', 'img/ator-cards/Patrick Dempsey.jpg', 'Grey_s Anatomy'),
(95, 'Sandra Oh', 'img/ator-cards/Sandra Oh.jpg', 'Grey_s Anatomy'),
(96, 'Emma Darcy', 'img/ator-cards/Emma Darcy.jpg', 'House of the Dragon'),
(97, 'Matt Smith', 'img/ator-cards/Matt Smith.jpg', 'House of the Dragon'),
(98, 'Milly Alcock', 'img/ator-cards/Milly Alcock.jpg', 'House of the Dragon'),
(99, 'Olivia Cooke', 'img/ator-cards/Olivia Cooke.jpg', 'House of the Dragon'),
(100, 'Paddy Considini', 'img/ator-cards/Paddy Considini.jpg', 'House of the Dragon'),
(101, 'Domhnall Gleeson', 'img/ator-cards/Domhnall Gleeson.jpg', 'Invencivel'),
(102, 'Finn Wittrock', 'img/ator-cards/Finn Wittrock.jpg', 'Invencivel\r\nRatched'),
(103, 'Garrett Hedlund', 'img/ator-cards/Garrett Hedlund.jpg', 'Invencivel'),
(104, 'John Magaro', 'img/ator-cards/John Magaro.jpg', 'Invencivel'),
(105, 'Miyavi', 'img/ator-cards/Miyavi.jpg', 'Invencivel'),
(109, 'John Magaro', 'img/ator-cards/John Magaro.jpg', 'Invencivel'),
(110, 'Miyavi', 'img/ator-cards/Miyavi.jpg', 'Invencivel'),
(111, 'Alba Flores', 'img/ator-cards/Alba Flores.jpg', 'La casa de papel'),
(112, 'Álvaro Morte', 'img/ator-cards/Álvaro Morte.jpg', 'La casa de papel'),
(113, 'Esther Acebo', 'img/ator-cards/Esther Acebo.jpg', 'La casa de papel'),
(114, 'Pedro Alonso', 'img/ator-cards/Pedro Alonso.jpg', 'La casa de papel'),
(115, 'Úrsula Corberó', 'img/ator-cards/Úrsula Corberó.png', 'La casa de papel'),
(121, 'Daniel Dae Kim', 'img/ator-cards/Daniel Dae Kim.jpg', 'Lost'),
(122, 'Evangeline Lily', 'img/ator-cards/Evangeline Lily.jpg', 'Lost'),
(123, 'Jorge Garcia', 'img/ator-cards/Jorge Garcia.jpg', 'Lost'),
(124, 'Josh Holloway', 'img/ator-cards/Josh Holloway.jpg', 'Lost'),
(125, 'Matthew Fox', 'img/ator-cards/Matthew Fox.jpg', 'Lost'),
(128, 'Jorge Garcia', 'img/ator-cards/Jorge Garcia.jpg', 'Lost'),
(129, 'Josh Holloway', 'img/ator-cards/Josh Holloway.jpg', 'Lost'),
(130, 'Matthew Fox', 'img/ator-cards/Matthew Fox.jpg', 'Lost'),
(131, 'D.B Woodside', 'img/ator-cards/D.B Woodside.jpg', 'Lucifer'),
(132, 'Kevin Alejandro', 'img/ator-cards/Kevin Alejandro.jpg', 'Lucifer'),
(133, 'Lauren German', 'img/ator-cards/Lauren German.jpg', 'Lucifer'),
(134, 'Lesley-Ann Brandt', 'img/ator-cards/Lesley-Ann Brandt.jpg', 'Lucifer'),
(135, 'Tom Ellis', 'img/ator-cards/Tom Ellis.jpg', 'Lucifer'),
(136, 'Clotilde Hesme', 'img/ator-cards/Clotilde Hesme.png', 'Lupin'),
(137, 'Ludivine Sagnier', 'img/ator-cards/Ludivine Sagnier.png', 'Lupin'),
(138, 'Ludmila Makowski', 'img/ator-cards/Ludmila Makowski.jpg', 'Lupin'),
(139, 'Omar Sy', 'img/ator-cards/Omar Sy.png', 'Lupin'),
(140, 'Shirine Boutella', 'img/ator-cards/Shirine Boutella.png', 'Lupin'),
(141, 'Eric Stonestreet', 'img/ator-cards/Eric Stonestreet.jpg', 'Modern Family'),
(142, 'Julie Bowen', 'img/ator-cards/Julie Bowen.jpg', 'Modern Family'),
(143, 'Nolan Gould', 'img/ator-cards/Nolan Gould.jpg', 'Modern Family'),
(144, 'Sarah Hyland', 'img/ator-cards/Sarah Hyland.jpg', 'Modern Family'),
(145, 'Ty Burrell', 'img/ator-cards/Ty Burrell.jpg', 'Modern Family'),
(146, 'Agnes Gobbleblobber - Barbara Goodson', 'img/ator-cards/Agnes Gobbleblobber - Barbara Goodson.jpg', 'Mr. Pickles'),
(147, 'Mrs. Goodman - Brooke Shields', 'img/ator-cards/Mrs. Goodman - Brooke Shields.jpg', 'Mr. Pickles'),
(148, 'Stanley Goodman - Jay Johnston', 'img/ator-cards/Stanley Goodman - Jay Johnston.jpg', 'Mr. Pickles'),
(149, 'Superhero Guy - Will Carsola', 'img/ator-cards/Superhero Guy - Will Carsola.jpg', 'Mr. Pickles'),
(150, 'Tommy Goodman - Kaitlyn Robrock', 'img/ator-cards/Tommy Goodman - Kaitlyn Robrock.jpg', 'Mr. Pickles'),
(151, 'Alberto Ammann', 'img/ator-cards/Alberto Ammann.jpg', 'Narcos'),
(152, 'Boyd Holbrook', 'img/ator-cards/Boyd Holbrook.jpg', 'Narcos'),
(153, 'Paulina Gaitán', 'img/ator-cards/Paulina Gaitán.jpg', 'Narcos'),
(155, 'Wagner Moura', 'img/ator-cards/Wagner Moura.jpg', 'Narcos'),
(156, 'Alison Araya', 'img/ator-cards/Alison Araya.png', 'O Pacificador'),
(157, 'Danielle Brooks', 'img/ator-cards/Danielle Brooks.png', 'O Pacificador\r\nOrange is the new black'),
(158, 'Freddie Stroma', 'img/ator-cards/Freddie Stroma.png', 'O Pacificador'),
(159, 'Jennifer Holland', 'img/ator-cards/Jennifer Holland.png', 'O Pacificador'),
(160, 'John Cena', 'img/ator-cards/John Cena.png', 'O Pacificador'),
(161, 'Choi Buyung-Chan', 'img/ator-cards/Choi Buyung-Chan.png', 'O rei de porcelana'),
(162, 'Jung Chae-yeon', 'img/ator-cards/Jung Chae-yeon.png', 'O rei de porcelana'),
(163, 'Nam Yoon-su', 'img/ator-cards/Nam Yoon-su.png', 'O rei de porcelana'),
(164, 'Park Eun-Bin', 'img/ator-cards/Park Eun-Bin.png', 'O rei de porcelana'),
(165, 'Ro Woon', 'img/ator-cards/Ro Woon.png', 'O rei de porcelana'),
(166, 'Danai Gurira', 'img/ator-cards/Danai Gurira.jpg', 'Orage is the new black'),
(168, 'Natasha Lyonne', 'img/ator-cards/Natasha Lyonne.jpg', 'Orage is the new black'),
(169, 'Taylor Schilling', 'img/ator-cards/Taylor Schilling.jpg', 'Orage is the new black'),
(170, 'Uzo Aduba', 'img/ator-cards/Uzo Aduba2.jpg', 'Orage is the new black'),
(171, 'Caitriona Balde', 'img/ator-cards/Caitriona Balde.jpg', 'Outlander'),
(172, 'Richard Rankin', 'img/ator-cards/Richard Rankin.jpg', 'Outlander'),
(173, 'Sam Heughan', 'img/ator-cards/Sam Heughan.jpg', 'Outlander'),
(174, 'Sophie Skelton', 'img/ator-cards/Sophie Skelton.jpg', 'Outlander'),
(175, 'Tobia Menizies', 'img/ator-cards/Tobia Menizies.jpg', 'Outlander'),
(176, 'Cillian Murphy', 'img/ator-cards/Cillian Murphy.png', 'Peaky Blinders'),
(177, 'Finn Cole', 'img/ator-cards/Finn Cole.png', 'Peaky Blinders'),
(178, 'Joe Cole', 'img/ator-cards/Joe Cole.png', 'Peaky Blinders'),
(179, 'Paul Anderson', 'img/ator-cards/Paul Anderson.png', 'Peaky Blinders'),
(180, 'Tom Hardy', 'img/ator-cards/Tom Hardy.png', 'Peaky Blinders'),
(181, 'Cynthia Nixon', 'img/ator-cards/Cynthia Nixon.jpg', 'Ratched'),
(183, 'Judy Davis', 'img/ator-cards/Judy Davis.jpg', 'Ratched'),
(184, 'Sarah Pauson', 'img/ator-cards/Sarah Pauson.jpg', 'Ratched'),
(185, 'Sharon Stone', 'img/ator-cards/Sharon Stone.jpg', 'Ratched'),
(188, 'Judy Davis', 'img/ator-cards/Judy Davis.jpg', 'Ratched'),
(191, 'Chris Parnell', 'img/ator-cards/Chris Parnell.png', 'Rick e Morty'),
(192, 'Dar Harmon', 'img/ator-cards/Dar Harmon.png', 'Rick e Morty'),
(193, 'Justin Riland', 'img/ator-cards/Justin Riland.png', 'Rick e Morty'),
(194, 'Sarah Chalke', 'img/ator-cards/Sarah Chalke.png', 'Rick e Morty'),
(195, 'Spencer Grammer', 'img/ator-cards/Spencer Grammer.png', 'Rick e Morty'),
(196, 'Max Baldry', 'img/ator-cards/Max Baldry.png', 'Senhor dos Anéis Os Anéis do poder'),
(197, 'Morfydd Clark', 'img/ator-cards/Morfydd Clark.png', 'Senhor dos Anéis Os Anéis do poder'),
(198, 'Robert Aramayo', 'img/ator-cards/Robert Aramayo.png', 'Senhor dos Anéis Os Anéis do poder'),
(199, 'Sophia Nomvete', 'img/ator-cards/Sophia Nomvete.png', 'Senhor dos Anéis Os Anéis do poder'),
(200, 'Tyroe Muhafidin', 'img/ator-cards/Tyroe Muhafidin.png', 'Senhor dos Anéis Os Anéis do poder'),
(201, 'Asa Buttlerfield', 'img/ator-cards/Asa Buttlerfield.jpg', 'Sex Education'),
(202, 'Emma Mackey', 'img/ator-cards/Emma Mackey.jpg', 'Sex Education'),
(203, 'Gillian Anderson', 'img/ator-cards/Gillian Anderson.jpg', 'Sex Education'),
(204, 'Ncuti Gatwa', 'img/ator-cards/Ncuti Gatwa.jpg', 'Sex Education'),
(205, 'Tanya Reynolds', 'img/ator-cards/Tanya Reynolds.jpg', 'Sex Education'),
(206, 'Jung ho-yeon', 'img/ator-cards/Jung ho-yeon.png', 'Squid Game - Round 6'),
(207, 'Lee Jung-Jae', 'img/ator-cards/Lee Jung-Jae.png', 'Squid Game - Round 6'),
(208, 'Lee Yoo-mi', 'img/ator-cards/Lee Yoo-mi.png', 'Squid Game - Round 6'),
(209, 'Park Hae-soo', 'img/ator-cards/Park Hae-soo.png', 'Squid Game - Round 6'),
(210, 'Wi Ha-joon', 'img/ator-cards/Wi Ha-joon.png', 'Squid Game - Round 6'),
(211, 'Caleb McLaughlin', 'img/ator-cards/Caleb McLaughlin.png', 'Strange Things'),
(212, 'David-Harbour', 'img/ator-cards/David-Harbour.png', 'Strange Things'),
(213, 'Finn Wolfhard', 'img/ator-cards/Finn Wolfhard.png', 'Strange Things'),
(214, 'Gaten Matarazzo', 'img/ator-cards/Gaten Matarazzo.png', 'Strange Things'),
(215, 'Joe Keery', 'img/ator-cards/Joe Keery.png', 'Strange Things'),
(216, 'Millie Bobby Brown', 'img/ator-cards/Millie Bobby Brown.png', 'Strange Things'),
(217, 'Noah Schanpp', 'img/ator-cards/Noah Schanpp.png', 'Strange Things'),
(218, 'Sadie Sink', 'img/ator-cards/Sadie Sink.png', 'Strange Things'),
(219, 'Jim Parson', 'img/ator-cards/Jim Parson.jpg', 'The big bang theory'),
(220, 'Jonnhny Galecki', 'img/ator-cards/Jonnhny Galecki.jpg', 'The big bang theory'),
(221, 'Kaley Cuoco', 'img/ator-cards/Kaley Cuoco.jpg', 'The big bang theory'),
(222, 'Kunal Knayyar', 'img/ator-cards/Kunal Knayyar.jpg', 'The big bang theory'),
(223, 'Simmon Helberg', 'img/ator-cards/Simmon Helberg.jpg', 'The big bang theory'),
(224, 'Antony Starr', 'img/ator-cards/Antony Starr.jpg', 'The boys'),
(225, 'Erin Moriaty', 'img/ator-cards/Erin Moriaty.jpg', 'The boys'),
(226, 'Jack Quaid', 'img/ator-cards/Jack Quaid.jpg', 'The boys'),
(227, 'Karen Fukuhara', 'img/ator-cards/Karen Fukuhara.jpg', 'The boys'),
(228, 'Karl Urban', 'img/ator-cards/Karl Urban.jpg', 'The boys'),
(229, 'Claire Foy', 'img/ator-cards/Claire Foy.png', 'The crown'),
(230, 'Elieen Atkins', 'img/ator-cards/Elieen Atkins.png', 'The crown'),
(231, 'John Lithgow', 'img/ator-cards/John Lithgow.png', 'The crown'),
(232, 'Matt Smith', 'img/ator-cards/Matt Smith.png', 'The crown'),
(233, 'Vanessa Kirby', 'img/ator-cards/Vanessa Kirby.png', 'The crown'),
(234, 'Emma Corrin', 'img/ator-cards/Emma Corrin2.jpg', 'The crown'),
(235, 'Helena Bohan Carter', 'img/ator-cards/Helena Bohan Carter.jpg', 'The crown'),
(236, 'Olivia Coleman.jpg', 'img/ator-cards/Olivia Coleman.jpg', 'The crown'),
(237, 'Tobias Meniezes', 'img/ator-cards/Tobias Meniezes.jpg', 'The crown'),
(238, 'Claudia Harrison', 'img/ator-cards/Claudia Harrison .jpg', 'The crown'),
(239, 'Imelda Staunton', 'img/ator-cards/Imelda Staunton.jpg', 'The crown'),
(240, 'Jonathan Pryce', 'img/ator-cards/Jonathan Pryce.jpg', 'The crown'),
(241, 'Lesley Manville', 'img/ator-cards/Lesley Manville.jpg', 'The crown'),
(242, 'Marcia Warren.jpg', 'img/ator-cards/Marcia Warren.jpg', 'The crown'),
(243, 'Pedro Pascal', 'img/ator-cards/Pedro Pascal.png', 'the last of us'),
(244, 'Anna Torv', 'img/ator-cards/Anna Torv.jpg', 'the last of us'),
(245, 'Ashley Johnson', 'img/ator-cards/Ashley Johnson.jpg', 'the last of us'),
(246, 'Bella Ramsey', 'img/ator-cards/Bella Ramsey.jpg', 'the last of us'),
(247, 'Gabriel Luna', 'img/ator-cards/Gabriel Luna.jpg', 'the last of us'),
(249, 'Carl Weathers', 'img/ator-cards/Carl Weathers.png', 'The mandalorian'),
(250, 'Dane Filoni', 'img/ator-cards/Dane Filoni.jpg', 'The mandalorian'),
(251, 'GianCarlo Esposito', 'img/ator-cards/GianCarlo Esposito.jpg', 'The mandalorian'),
(252, 'Gina Carano', 'img/ator-cards/Gina Carano.jpg', 'The mandalorian'),
(253, 'Aidan Gallagher', 'img/ator-cards/Aidan Gallagher.jpg', 'The Umbrella Academy'),
(254, 'Elliot Page', 'img/ator-cards/Elliot Page.jpg', 'The Umbrella Academy'),
(255, 'Javon Walton', 'img/ator-cards/Javon Walton.jpg', 'The Umbrella Academy'),
(256, 'Ritu Arya', 'img/ator-cards/Ritu Arya.jpg', 'The Umbrella Academy'),
(257, 'Tom Horpper', 'img/ator-cards/Tom Horpper.jpg', 'The Umbrella Academy'),
(258, 'Andrew Lincon', 'img/ator-cards/Andrew Lincon.jpg', 'The walking dead'),
(259, 'Jeffrey Dean Morgan', 'img/ator-cards/Jeffrey Dean Morgan.jpg', 'The walking dead'),
(260, 'Laura Prepon', 'img/ator-cards/Laura Prepon.jpg', 'The walking dead'),
(261, 'Lauren Cohan', 'img/ator-cards/Lauren Cohan.jpg', 'The walking dead'),
(262, 'Norman Reedus', 'img/ator-cards/Norman Reedus.jpg', 'The walking dead'),
(263, 'Anya Charlotra', 'img/ator-cards/Anya Charlotra.jpg', 'The witcher'),
(264, 'Freya Allan', 'img/ator-cards/Freya Allan.jpg', 'The witcher'),
(265, 'Henry Cavil', 'img/ator-cards/Henry Cavil.jpg', 'The witcher'),
(266, 'Joey Batey', 'img/ator-cards/Joey Batey.jpg', 'The witcher'),
(267, 'MyAnna Buring', 'img/ator-cards/MyAnna Buring.jpg', 'The witcher'),
(268, 'Alexander Ludwig', 'img/ator-cards/Alexander Ludwig.jpg', 'Vikings'),
(269, 'Clive Standen', 'img/ator-cards/Clive Standen.jpg', 'Vikings'),
(270, 'Gustaf Skarsgard', 'img/ator-cards/Gustaf Skarsgard2.jpg', 'Vikings'),
(271, 'Katheryn Winnick', 'img/ator-cards/Katheryn Winnick.jpg', 'Vikings'),
(272, 'Travis Fimmel', 'img/ator-cards/Travis Fimmel.jpg', 'Vikings'),
(273, 'Catherine Zeta-Jones', 'WandinhaCatherine Zeta-Jones.jpg', 'Wandinha'),
(274, 'Christina Ricci', 'img/ator-cards/Christina Ricci.jpg', 'Wandinha'),
(275, 'Gwendoline Christie', 'img/ator-cards/Gwendoline Christie.jpg', 'Wandinha'),
(276, 'Jenna Ortega', 'img/ator-cards/Jenna Ortega.jpg', 'Wandinha'),
(277, 'Luis Guzmán', 'img/ator-cards/Luis Guzmán.jpg', 'Wandinha'),
(278, 'Annie Potts', 'img/ator-cards/Annie Potts.jpg', 'Young Sheldon'),
(279, 'Ian Armitage', 'img/ator-cards/Ian Armitage.jpg', 'Young Sheldon'),
(280, 'Lance Barber', 'img/ator-cards/Lance Barber.jpg', 'Young Sheldon'),
(281, 'Montana Jordan', 'img/ator-cards/Montana Jordan.jpg', 'Young Sheldon');

-- --------------------------------------------------------

--
-- Estrutura da tabela `faixa etaria`
--

CREATE TABLE `faixa etaria` (
  `Id` int(11) NOT NULL,
  `classificação` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `favoritos`
--

CREATE TABLE `favoritos` (
  `Id` int(11) NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `id_filmes` int(11) NOT NULL,
  `id_series` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `filmes`
--

CREATE TABLE `filmes` (
  `id` int(5) NOT NULL,
  `titulo` varchar(150) NOT NULL,
  `anoLancamento` text NOT NULL,
  `idDiretor` int(11) NOT NULL,
  `idGenero` int(3) NOT NULL,
  `sinopse` varchar(800) NOT NULL,
  `Imagem` text NOT NULL,
  `Classificacao` text NOT NULL,
  `Trailer` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `filmes`
--

INSERT INTO `filmes` (`id`, `titulo`, `anoLancamento`, `idDiretor`, `idGenero`, `sinopse`, `Imagem`, `Classificacao`, `Trailer`) VALUES
(1, 'Jogada de Amor', '2022', 0, 0, 'Gianni, mulherengo incurável, aceita o desafio dos amigos e finge ser deficiente para sair com Chiara, uma tenista paraplégica. Pressionado pela irmã a confessar a verdade, o homem descobre que está apaixonado por ela.', 'jogada.jfif', '14', 'https://youtu.be/zZPeGRZcSis'),
(2, 'A forma da agua', '2017', 0, 0, 'Década de 60. Em meio aos grandes conflitos políticos e transformações sociais dos Estados Unidos da Guerra Fria, a muda Elisa, zeladora em um laboratório experimental secreto do governo, se encanta com uma criatura fantástica mantida presa e maltratada no local. Para executar um arriscado e apaixonado resgate, ela recorre ao melhor amigo Giles e à colega de turno Zelda, em uma aventura que pode custar muito mais do que o seu emprego.', 'Agua.jpeg', '16', 'https://youtu.be/-DTVuQTZr3E'),
(3, 'La La Land: Cantando Estações', '2016', 0, 0, 'O pianista Sebastian conhece a atriz Mia, e os dois se apaixonam perdidamente. Em busca de oportunidades para suas carreiras na competitiva Los Angeles, os jovens tentam fazer o relacionamento amoroso dar certo, enquanto perseguem fama e sucesso.', 'laland.jfif', '12', 'https://youtu.be/UD-Cb2yeAPA'),
(4, 'Ghost do outro lado da vida', '1990', 0, 0, 'Sam Wheat é um jovem executivo apaixonado por sua namorada, Molly. Ele acaba morto em um assalto, mas seu espírito não vai para o outro plano e descobre que Molly também corre perigo. Para salvá-la, Sam pede ajuda a uma médium que consegue ouvi-lo.', 'ghost.jfif', '12', 'https://youtu.be/-hWluAo0D-Y'),
(5, 'A Teoria de Tudo ', '2014', 0, 0, 'Baseado na história de Stephen Hawking, o filme expõe como o astrofísico fez descobertas relevantes para o mundo da ciência, inclusive relacionadas ao tempo. Também retrata seu romance com Jane Wilde, uma estudante de Cambridge que viria a se tornar sua esposa. Aos 21 anos de idade, Hawking descobriu que sofria de uma doença motora degenerativa, mas isso não o impediu de se tornar um dos maiores cientistas da atualidade.', 'teoria.jfif', '10', 'https://youtu.be/SbUVNHdPE4w'),
(6, 'O Lado Bom da Vida', '2012', 0, 0, 'Depois de uma fase difícil de sua vida, Pat Solitano Jr. está disposto a seguir em frente e reconquistar sua ex-mulher. Através de amigos, ele conhece Tiffany, que lhe promete ajuda na tarefa da reconquista. Uma inesperada ligação começa a uni-los.', 'vida.jpeg', '12', 'https://youtu.be/h2xb_rkbAU8'),
(7, 'Nasce Uma Estrela', '2018', 0, 0, 'Jackson Maine é um cantor no auge da fama. Um dia, após deixar uma apresentação, ele para em um bar para beber. Lá, Jackson conhece Ally, uma insegura cantora que ganha a vida trabalhando em um restaurante. Ele se encanta por ela e seu talento. Mais tarde, os dois acabam se casando. Ao mesmo tempo em que Ally desponta para o estrelato, Jackson vive uma crise pessoal e profissional devido aos problemas com o álcool. Os momentos opostos acabam por minar o relacionamento amoroso do casal.', 'star.jpeg', '16', 'https://youtu.be/WGsA2aXYBGo'),
(8, 'Como Eu era Antes de Você', '2016', 0, 0, 'De origem modesta e sem grandes aspirações, a peculiar Louisa Clark é contratada para ser cuidadora de Will, um jovem tetraplégico depressivo e cínico.', 'antes.jpeg', '12', 'https://youtu.be/PnqUs3xiAVI'),
(9, 'Amor de Redenção', '2022', 0, 0, 'O relacionamento de um jovem casal se choca com as duras realidades da Corrida do Ouro na Califórnia de 1850. Angel, experimentando o amor pela primeira vez e enfrentando demônios que parecem insuperáveis, foge da nova vida que ela acha que não merece. No entanto, durante a busca de Michael pela sua amada, Angel descobre que ela tem o poder de escolher a vida que quer.', 'Love.jpeg', '16', 'https://youtu.be/gyZYHZS1qZE'),
(10, 'A proposta', '2009', 0, 0, 'Margaret Tate é uma poderosa editora de livros que corre o risco de ser deportada para o Canadá, seu país natal. Para poder permanecer em Nova York, ela diz estar noiva de Andrew, seu assistente. O jovem aceita ajudá-la, mas impõe algumas condições, entre elas ir para o Alasca e conhecer sua família excêntrica. Com um oficial da imigração sempre à espreita, Margaret e Andrew têm que seguir o plano de casamento apesar de diversos problemas.', 'proposta.jpeg', '14', 'https://youtu.be/a5X3u5G3Z7k'),
(11, 'O Reino Perdido dos Piratas', '2021', 0, 0, 'O Reino Perdido dos Piratas é uma série documental centrada nos verdadeiros piratas do Caribe, que, no início do século 18, tinham como missão oficial saquear as riquezas do mundo inteiro.', 'Pirate.jpeg', '16', 'https://youtu.be/ni-AG2VMMos'),
(12, 'Batman: O Cavaleiro das Trevas', '2008', 0, 0, 'Com a ajuda de Jim Gordon e Harvey Dent, Batman tem mantido a ordem na cidade de Gotham. Mas um jovem e anárquico criminoso conhecido como Coringa ganha força e decide instaurar um verdadeiro caos na cidade. O justiceiro será testado psicologicamente e fisicamente como nunca fora antes em um confronto bastante pessoal. Cabe a Batman encontrar uma maneira de deter o sádico vilão antes que mais vidas sejam perdidas.', 'Batman.jpeg', 'Livre', 'https://youtu.be/a-PVBsmiB0Y'),
(13, 'A Lista De Schindler', '1993', 0, 0, 'O alemão Oskar Schindler viu na mão de obra judia uma solução barata e viável para lucrar com negócios durante a guerra. Com sua forte influência dentro do partido nazista, foi fácil conseguir as autorizações e abrir uma fábrica. O que poderia parecer uma atitude de um homem não muito bondoso, transformou-se em um dos maiores casos de amor à vida da História, pois este alemão abdicou de toda sua fortuna para salvar a vida de mais de mil judeus em plena luta contra o extermínio alemão.', 'lista.jfif', '14', 'https://youtu.be/GAf0nGq_FXQ'),
(14, 'Putin poder sem limites', '2018', 0, 0, 'Como um menino de São Petersburgo se tornou um poderoso líder mundial? A história da impressionante ascensão de Vladimir Putin ao poder - de coronel da KGB a presidente.', 'Putin.jpeg', '12', 'https://youtu.be/euqDGUq2yFg'),
(15, 'Cracolândia', '2020', 0, 0, 'A partir de uma intensa pesquisa, o filme abre um debate a respeito da maior e mais impactante cena de uso aberto de crack do mundo: a \"Cracolândia\" de São Paulo. A obra analisa as causas desse mal e suas progressões, além das táticas de combate já realizadas em São Paulo, abrindo um paralelo com as estratégias usadas em outros países.', 'Cracolandia.jpeg', '12', 'https://youtu.be/CBBPbzJyeag'),
(16, 'A culpa é das estrelas', '2014', 0, 0, 'Hazel Grace Lancaster e Augustus Waters são dois adolescentes que se conhecem em um grupo de apoio para pacientes com câncer. Por causa da doença, Hazel sempre descartou a ideia de se envolver amorosamente, mas acaba cedendo ao se apaixonar por Augustus. Juntos, eles viajam para Amsterdã, onde embarcam em uma jornada inesquecível.', 'Estrelas.jpeg', '12', 'https://youtu.be/lFOOZJ1UChg'),
(17, 'O Regresso', '2015', 0, 0, 'Após ser atacado por um urso, o caçador Hugh Glass é abandonado na floresta por seu companheiro John Fitzgerald. Apesar de muito ferido, Glass consegue sobreviver e vai em busca de vingança.', 'Regresso.jpeg', '16', 'https://youtu.be/S4PpYv9n0ko'),
(18, 'À Espera de um milagre', '1999', 0, 0, 'Um carcereiro tem um relacionamento incomum e comovente com um preso que está no corredor na morte: Coffey, um negro enorme, condenado por ter matado brutalmente duas gêmeas de nove anos. Ele tem tamanho e força para matar qualquer um, mas seu comportamento é completamente oposto à sua aparência. Além de ser simples, ingênuo e ter pavor do escuro, ele possui um dom sobrenatural. Com o passar do tempo, o carcereiro aprende que, às vezes, os milagres acontecem nos lugares mais inesperados.', 'Milagre.jpeg', '14', 'https://youtu.be/EIc_wJtm6AU'),
(19, 'Heleno', '2011', 0, 0, 'O jogador de futebol Heleno de Freitas (Rodrigo Santoro) era considerado o príncipe do Rio de Janeiro dos anos 40, numa época em que a cidade era um cenário de sonhos e promessas. Sendo ao mesmo tempo um gênio explosivo e apaixonado nos campos de futebol, além de galã charmoso nos salões da sociedade carioca, tinha certeza de que seria o maior jogador brasileiro de todos os tempos. Mas seu comportamento arredio, sua indisciplina e a doença (sífilis) foram minando o que poderia ser uma grande jornada de glória, transformando-a numa trágica história. Baseado no livro “Nunca Houve um Homem como Heleno”, de Marcos Eduardo Novaes.', 'Heleno.jpeg', '14', 'https://youtu.be/tIZy1QbBipY'),
(20, 'Maradona a Mão de Deus', '2007', 0, 0, 'Indicado ao Oscar de melhor filme internacional, o autobiográfico \'A Mão de Deus\', do italiano Paolo Sorrentino, acompanha a tumultuada jornada de um adolescente e sua família, tomando a passagem de Diego Maradona por Nápoles como pano de fundo histórico.', 'Maradona.jpeg', 'Livre', 'https://youtu.be/9q0vJ3betXw'),
(21, '12 Anos de escravidão', '2013', 0, 0, 'Em 1841, Solomon Northup é um negro livre, que vive em paz ao lado da esposa e filhos. Um dia, após aceitar um trabalho que o leva a outra cidade, ele é sequestrado e acorrentado. Vendido como se fosse um escravo, Solomon precisa superar humilhações físicas e emocionais para sobreviver. Ao longo de 12 anos, ele passa por dois senhores, Ford e Edwin Epps, que exploram seus serviços.', 'Escravidao.jpeg', '14', 'https://youtu.be/xSL_sCHDsHc'),
(22, 'À Procura da Felicidade', '2006', 0, 0, 'Chris enfrenta sérios problemas financeiros e Linda, sua esposa, decide partir. Ele agora é pai solteiro e precisa cuidar de Christopher, seu filho de 5 anos. Chris tenta usar sua habilidade como vendedor para conseguir um emprego melhor, mas só consegue um estágio não remunerado. Seus problemas financeiros não podem esperar uma promoção e eles acabam despejados. Chris e Christopher passam a dormir em abrigos ou onde quer que consigam um refúgio, mantendo a esperança de que dias melhores virão.', 'Felicidade.jpeg', '18', 'https://youtu.be/yHgiEADa5M8'),
(23, 'A vida é Bela', '1997', 0, 0, 'Durante a Segunda Guerra Mundial na Itália, o judeu Guido e seu filho Giosué são levados para um campo de concentração nazista. Afastado da mulher, ele precisa usar sua imaginação para fazer o menino acreditar que estão participando de uma grande brincadeira, com o intuito de protegê-lo do terror e da violência ao redor.', 'Bela.jpeg', 'L', 'https://youtu.be/iimUiHXmvIg'),
(24, 'Rogai por Nós', '2021', 0, 0, 'Jornalista investiga uma jovem com deficiência auditiva que foi visitada pela Virgem Maria e, repentinamente, passa a ouvir, falar e curar os enfermos.', 'Rogai.jpeg', '14', 'https://youtu.be/5OKXI2Q-AnM'),
(25, 'Rec', '2007', 0, 0, 'Uma jornalista e seu cinegrafista filmam o surto de uma doença que transforma humanos em canibais perversos.', 'Rec.jpeg', '16', 'https://youtu.be/qXAThYwe7Ic'),
(26, 'A Bruxa', '2015', 0, 0, 'Em uma fazenda no século 17, uma histeria religiosa toma conta de uma família que acusa a filha mais velha pelo desaparecimento do seu irmão ainda bebê.', 'Bruxa.jpeg', '16', 'https://youtu.be/FE-u6RznkGQ'),
(27, 'A Entidade', '2012', 0, 0, 'Ellison é um escritor de romances policias que acaba de se mudar com a família. No sótão da nova casa ele descobre antigos rolos de filme, que trazem imagens de pessoas sendo mortas. Intrigado com o que elas representam e com um estranho símbolo presente nas imagens, ele e sua família logo passam a correr sério risco de morte.', 'Entidade.jpeg', '16', 'https://youtu.be/-Q_dwLGd2Rs'),
(28, 'Parasita', '2019', 0, 0, 'Toda a família de Ki-taek está desempregada, vivendo em um porão sujo e apertado. Por obra do acaso, ele começa a dar aulas de inglês para uma garota de família rica. Fascinados com a vida luxuosa destas pessoas, pai, mãe e filhos bolam um plano para se infiltrar também na abastada família, um a um. No entanto, os segredos e mentiras necessários à ascensão social cobram o seu preço.', 'Parasita.jfif', '16', 'https://youtu.be/m4jfE-TxC24'),
(29, 'A Luz do Demônio', '2022', 0, 0, 'Lançada na linha de frente espiritual, uma jovem freira se encontra em uma batalha pela alma de uma garota que está possuída pelo mesmo demônio que atormentou sua própria mãe anos antes.', 'LuzdoDiabo.jfif', '14', 'https://youtu.be/vmVlPiTS3oo'),
(30, 'Quero Matar Meu Chefe 2 ', '2014', 0, 0, 'Nick, Kurt e Dale estão cansados de receber ordens e abrem seu próprio negócio, de forma que eles mesmos sejam seus chefes. No entanto, quando a companhia começa a deslanchar, um investidor os engana e rouba a empresa. Sem ter como recorrer por meios legais, o trio decide partir para um ato desesperado: sequestrar o filho do investidor e, com o dinheiro do resgate, pagar a dívida contraída e manter a empresa.', 'chefe.jfif', '14', 'https://youtu.be/ycxwilawL6o'),
(31, 'Democracia em Vertigem', '2019', 0, 0, 'A cineasta Petra Costa testemunha a ascensão e queda de um grupo político e a polarização do Brasil.', 'democracia.jfif', '12', 'https://youtu.be/vwZ5m10y1rQ'),
(32, 'Screamers', '2006', 0, 0, 'Tom e Chris, dois gurus da internet, recebem um vídeo de uma menina num túmulo. Ao perceberem que a jovem é muito parecida com alguém que está desaparecida há alguns anos, eles decidem investigar o caso. Mas o que não esperavam é que seriam confrontados pelo caos.', 'Screamers.jfif', '14', 'https://youtu.be/2FqD6ReQHNQ'),
(33, 'A Morte do Demônio ', '2013', 0, 0, 'Mia é uma viciada em drogas que, para vencer seus demônios pessoais, vai com seu irmão David, a namorada do irmão, Natalie, e os amigos de infância Olivia e Eric até uma cabana rústica, que pertence à família. Assim que chegam, descobrem que a cabana foi invadida e que o porão parece uma espécie de altar, rodeado por animais mumificados, onde a descoberta de um Livro dos Mortos invoca forças demoníacas. A presença do mal os possui até que apenas um é deixado a lutar pela sobrevivência.\r\n', 'Demonio.jfif', '18', 'https://youtu.be/JBfub8SbtvU'),
(34, 'Sobrenatural', '2010', 0, 0, 'Josh e Renai se mudam com a família para uma casa maior. Lá, o filho Dalton sofre um estranho acidente e entra em coma. Enquanto eles tentam salvar o menino, entidades malignas atormentam a família.', 'sobrenatural.jfif', '14', 'https://youtu.be/0AHVW_yenRs'),
(35, 'Até que a sorte nos separe', '2012', 0, 0, 'Tino é um pai de família que tem sua rotina transformada ao ganhar na loteria. Em dez anos, o fanfarrão e sua mulher Jane gastam todo o dinheiro com uma vida de ostentação. Ao descobrir que está falido, ele é obrigado a aceitar a ajuda de Amauri, seu vizinho, um consultor financeiro nada divertido e extremamente econômico. Quando Jane engravida do terceiro filho, Tino faz de tudo para esconder da esposa que estão na lona, pois a recomendação médica é que a grávida evite fortes emoções.', 'Sorte.jfif', '12', 'https://youtu.be/dAnzuTb-A8k'),
(36, 'It a coisa', '2017', 0, 0, 'Um grupo de crianças se une para investigar o misterioso desaparecimento de vários jovens em sua cidade. Eles descobrem que o culpado é Pennywise, um palhaço cruel que se alimenta de seus medos e cuja violência teve origem há vários séculos.', 'it.jfif', '16', 'https://youtu.be/dD264ZjfKlk'),
(37, 'Homem-Aranha: Sem Volta para Casa', '2021', 0, 0, 'Peter Parker tem a sua identidade secreta revelada e pede ajuda ao Doutor Estranho. Quando um feitiço para reverter o evento não sai como o esperado, o Homem-Aranha e seu companheiro dos Vingadores precisam enfrentar inimigos de todo o multiverso.', 'Nowayhome.jfif', '12', 'https://youtu.be/FDNNHh7TRN0'),
(38, 'V de Vingança', '2005', 0, 0, 'Após uma guerra mundial, a Inglaterra é ocupada por um governo fascista e vive sob um regime totalitário. Na luta pela liberdade, um vigilante, conhecido apenas como V, utiliza-se de táticas terroristas para enfrentar os opressores da sociedade. V salva uma jovem chamada Evey da polícia secreta e encontra nela uma nova aliada em busca de liberdade e justiça para o seu país.', 'vendetta.jfif', '16', 'https://youtu.be/E8XzibXYMWk'),
(39, 'O Filho do Máskara', '2005', 0, 0, 'Tim Avery, um caricaturista aspirante, se vê em um predicamento quando seu cachorro Otis tromba com a máscara de Loki, que estava dada como perdida. Depois de conceber um filho \"nascido de uma máscara\", ele se dá conta da loucura de criar uma criança.', 'maskara.jfif', 'L', 'https://youtu.be/gzpr1kPFO3o'),
(40, 'As Branquelas', '2004', 0, 0, 'Dois irmãos agentes do FBI, Marcus e Kevin Copeland, acidentalmente evitam que bandidos sejam presos em uma apreensão de drogas. Como castigo, eles são forçados a escoltar um par de socialites nos Hamptons. Porém, quando as meninas descobrem o plano da agência, se recusam a ir. Sem opções, Marcus e Kevin decidem posar como as irmãs, transformando-se de homens afro-americanos em um par de loiras.', 'Branquelas.jfif', '18', 'https://youtu.be/seoJIPLLWp0'),
(41, 'Pantera Negra Wakanda para sempre', '2022', 0, 0, 'Rainha Ramonda, Shuri, M\'Baku, Okoye e Dora Milaje lutam para proteger sua nação das potências mundiais intervenientes após a morte do rei T\'Challa.', 'wakanda.jfif', '14', 'https://youtu.be/oHDi01Yn4tY'),
(42, 'Se Beber, Não Case', '2009', 0, 0, 'Dois dias antes de seu casamento, Doug e três amigos vão de carro até Las Vegas para uma louca e memorável despedida de solteiro. Quando os três padrinhos acordam na manhã seguinte, eles não conseguem se lembrar de nada e notam que Doug desapareceu. Com pouco tempo de sobra, os amigos tentam refazer a noite anterior e encontrar Doug para que possam levá-lo de volta a Los Angeles a tempo de chegar ao altar.', 'case.jfif', '14', 'https://youtu.be/jOQMBfWMMsU'),
(43, 'American Pie', '1999', 0, 0, 'Jim Levenstein, Kevin Myers, Oz Ostreicher e Paul Finch são quatro amigos virgens às vésperas do baile de formatura. Em meio a suas tentativas frustradas de fazer sexo com as namoradas, olhar mulheres nuas na internet e até mesmo atacar uma torta recém-saída do forno, os rapazes fazem um pacto e prometem deixar a virgindade para trás antes do baile de formatura. Agora eles têm 24 horas para cumprir esse acordo.', 'pie.jfif', '16', 'https://youtu.be/2x3oJ3TOZmk'),
(44, 'Adão Negro', '2022', 0, 0, 'O poderoso Adão Negro é libertado de sua tumba para lançar sua justiça cruel sobre a Terra.', 'Adao.jfif', '14', 'https://youtu.be/HluMG9tJXHM'),
(45, 'Sniper Americano', '2014', 0, 0, 'Chris Kyle é um atirador de elite das forças especiais da marinha dos Estados Unidos. Durante a Guerra do Iraque, sua missão é proteger seus companheiros e seu dever faz dele um dos maiores atiradores da história norte-americana. Sua precisão salva inúmeras vidas, mas também o torna um alvo preferencial. Quando Kyle finalmente volta para casa, ele descobre que não tem como deixar a guerra para trás.', 'Sniper.jfif', '16', 'https://youtu.be/ztUAnmhwCWU'),
(46, 'Rastros de um Sequestro', '2017', 0, 0, 'Um homem é raptado e retorna depois de 19 dias sem nenhuma memória do que aconteceu. Então seu irmão, Jin-seok, tenta descobrir a verdade sobre seu desaparecimento.', 'sequestro.jfif', '16', 'https://youtu.be/OSgX2EHAxOU'),
(47, 'O Ovo da Serpente ', '1977', 0, 0, 'Berlim, novembro de 1923. Abel Rosenberg é um trapezista judeu desemprego, que descobriu recentemente que seu irmão, Max, se suicidou. Logo ele encontra Manuela, sua cunhada. Juntos eles sobrevivem com dificuldade à violenta recessão econômica pela qual o país passa. Sem compreender as transformações políticas em andamento, eles aceitam trabalhar em uma clínica clandestina que realiza experiências em seres humanos.', 'serpente.jfif', '16', 'https://youtu.be/3Ibo99NwTJo'),
(48, '007: Um Novo Dia Para Morrer', '2002', 0, 0, 'Após se libertar de uma prisão na Coreia do Norte, James Bond entra em ação para perseguir o maligno Gustav Graves, que está desenvolvendo uma arma de alta tecnologia capaz de colocar o mundo em risco.', '007.jfif', '12', 'https://youtu.be/kCyjw0z-5KI'),
(49, 'Missão: Impossível 3', '2006', 0, 0, 'Aposentado do serviço ativo e treinando recrutas para a Força Missão Impossível, o agente Ethan Hunt enfrenta o inimigo mais difícil de sua carreira: Owen Davian, um negociante internacional de armas e informação que é tão esperto quanto implacável. Davian surge para ameaçar Hunt e tudo o que ele mais estima, incluindo a mulher que tanto ama.', 'impossivel.jfif', '14', 'https://youtu.be/0ypddYNLvvQ'),
(50, 'Os Pinguins do Papai ', '2011', 0, 0, 'Popper é um executivo de sucesso que não tem muito tempo para a família. Mas seu destino muda quando ele recebe seis pinguins de herança do pai, transformando seu apartamento luxuoso em um habitat para os animais.', 'Pinguins.jfif', '10', 'https://youtu.be/uAqriksZ81o');

-- --------------------------------------------------------

--
-- Estrutura da tabela `genero`
--

CREATE TABLE `genero` (
  `IdGenero` int(3) NOT NULL,
  `Genero` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `series`
--

CREATE TABLE `series` (
  `Id` int(11) NOT NULL,
  `NomeBR` text NOT NULL,
  `DataLancamento` text NOT NULL,
  `Diretor_idDiretor` text NOT NULL,
  `genero_idGenero` text NOT NULL,
  `sinopse` text NOT NULL,
  `imagem` text NOT NULL,
  `Classificação` text NOT NULL,
  `Trailer` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `series`
--

INSERT INTO `series` (`Id`, `NomeBR`, `DataLancamento`, `Diretor_idDiretor`, `genero_idGenero`, `sinopse`, `imagem`, `Classificação`, `Trailer`) VALUES
(1, 'Clickbait', '2021', '', '', 'Uma coleção de histórias que explora as maneiras pelas quais nossos impulsos mais perigosos e descontrolados são alimentados na era das mídias sociais e revela as fraturas cada vez maiores que encontramos entre nossas personalidades da vida virtual e da vida real.', 'img/series-cards/clickbait.jpeg', '16', 'https://www.youtube.com/embed/_-jXBimnRd4'),
(2, 'Falando com um serial killer: teddy bundy', '2019', '', '', 'Entrevistas atuais, material de arquivo e gravações de áudio feitas no corredor da morte traçam o perfil do notório serial killer Ted Bundy.', 'img/series-cards/Serial.jpeg', '14', 'https://www.youtube.com/embed/YbkB9hjJviI'),
(3, 'O Rei de Porcelana', '2021', '', '', 'Conta a história de um rei esquecido que não existe em nenhum lugar da história. Este trágico rei tem que esconder o fato de que ele é na verdade uma mulher. O drama retratará o romance apaixonado entre o rei, que é uma mulher, e os belos personagens que a cercam no contexto do perigoso e rígido palácio. Adaptado do manhwa \"Yeonmo\" de Lee So Young.', 'img/series-cards/Rei.png', '14', 'https://www.youtube.com/embed/oWfxsT2K-2A'),
(4, 'Wandinha', '2022', '', '', 'Segue os anos de Wandinha (Wednesday Addams) como estudante, quando ela tenta dominar sua habilidade psíquica emergente, frustrar e resolver o mistério que envolveu seus pais.', 'img/series-cards/wandinha.jpeg', '12', 'https://www.youtube.com/embed/xvJL6qQ249A'),
(5, 'O Senhor dos Anéis: Os Anéis de Poder', '2022', '', '', 'A série será situada na Segunda Era da Terra-Média e contará as histórias da criação dos Anéis do Poder, a ascensão de Sauron, o reino de Numenor e a Última Aliança de Elfos e Homens.', 'img/series-cards/Rings.jpg', '14', 'https://www.youtube.com/embed/m-CvfthZ4zg'),
(6, 'Peaky Blinders', '2013', '', '', 'Baseada em uma história real, a trama gira em torno de uma família de Birmingham que, em 1919, vive de assaltos, extorsões e apostas. Conhecida pelo apelido de Peaky Blinders, por utilizarem navalhas para atacar seus adversários, o grupo é liderado por Tommy, personagem de Murphy. A situação da família muda com o fim da Primeira Guerra Mundial, quando Tommy descobre que precisará enfrentar um novo chefe de polícia. Recém chegado de Belfast, o policial está determinado a limpar as ruas de Birmingham dos criminosos e revolucionários.\r\n\r\n', 'img/series-cards/Peaky.jpeg', '18', 'https://www.youtube.com/embed/IZFUxDKUKbw'),
(7, 'House of the Dragon', '2022', '', '', 'Por volta de 200 anos antes dos eventos de \"Game of Thrones\", a dinastia Targaryen encontra-se no ápice absoluto de seu poder, com mais de 15 dragões. A maioria dos impérios – reais e imaginários – desmorona de tais alturas. O rei Viserys Targaryen rompe com um século de tradição ao nomear sua filha Rhaenyra como herdeira do Trono de Ferro. Mas quando Viserys acaba tendo um filho, os nobres e plebeus de Westeros ficam chocados quando Rhaenyra mantém seu status de herdeira, e sementes de divisão semeiam atrito em todo o reino.', 'img/series-cards/Dragon.jpg', '16', 'https://www.youtube.com/embed/t3p4EPoo9ug'),
(8, 'Stranger Things', '2016', '', '', 'Situada no interior de Indiana, na década de 1980, a história inicia com o desaparecimento de Will, um menino de 12 anos. Enquanto a família e os amigos tentam entender o que aconteceu, o chefe de polícia Hooper inicia uma investigação e se depara com experiências secretas conduzidas pelo governo numa base militar no subúrbio da cidade. Ao mesmo tempo, os amigos de Will - Mike, Dustin e Lucas - tentam localizá-lo por conta própria, mas acabam encontrando Eleven, uma menina misteriosa, com estranhos poderes.', 'img/series-cards/strangerthings.jpeg', '16', 'https://www.youtube.com/embed/yTX0HxTq9wo'),
(9, 'Euphoria', '2019', '', '', 'O dia-a-dia de um grupo de estudantes do ensino médio, a medida que eles exploram novos amores e amizades em um mundo de sexo, drogas, traumas e mídias sociais.', 'img/series-cards/euphoria.jpeg', '18', 'https://www.youtube.com/embed/6XGnv7Zgbeg'),
(10, 'Squid Game - Round 6', '2021', '', '', 'Por meio um convite misterioso, um grupo de 456 pessoas, falidas e fracassadas na vida, recebem uma tentadora chance em participar da competição onde apenas um vai ganhar o prêmio milionário. O jogo é inspirado em brincadeiras infantis, mas com consequências mortais que nem imaginam.', 'img/series-cards/round6.jpeg', '18', 'https://youtu.be/xqkmwzZMy7Q'),
(11, 'La casa de Papel', '2017', '', '', 'Oito ladrões se trancam com reféns na Casa da Moeda da Espanha. Seu líder manipula a polícia para realizar um plano. Será o maior roubo da história, ou uma missão em vão?', 'img/series-cards/lacasadepapel.jpeg', '16', 'https://youtu.be/iS5xXr-GOnM'),
(12, 'Pacificador', '2022', '', '', 'A série explorará as origens do Pacificador, um homem que acredita na paz a qualquer custo – não importa quantas pessoas ele tenha que matar para obtê-la.', 'img/series-cards/peacemaker.jpeg', '18', 'https://youtu.be/mlhXY6XUWBE'),
(13, 'Lupin', '2021', '', '', '25 anos atrás, Assane Diop (Omar Sy) viu sua vida virar de cabeça para baixo com a morte de seu pai, então acusado injustamente de um crime. Agora, ele está em busca de vingança e, para isso, se inspira em Arsène Lupin, o famoso \"ladrão de casaca\" da literatura francesa. Conhecido como \"Robin Hood da Belle Époque\", Lupin se tornou um gênio do crime na Paris do início do século 20 - e Diop vai seguir seus passos nos dias de hoje.', 'img/series-cards/lupin.jpeg', '16', 'https://youtu.be/FoiQ-Xr8NDI'),
(14, 'Rick e Morty', '2022', '', '', 'Uma série animada que acompanha as aventuras e os descobrimentos de um super cientista e seu neto não muito brilhante.', 'img/series-cards/rickemorty.jpeg', '16', 'https://youtu.be/6Zt15L7Gy3U'),
(15, 'Elite', '2018', '', '', 'Após um terremoto destruir uma escola pública, o governo envia três adolescentes de classe operária para Las Encinas, uma das melhores e mais caras escolas do país, frequentada pelos filhos da elite espanhola. O confronto entre aqueles que têm tudo e aqueles que não têm nada a perder cria uma atmosfera carregada e acaba levando a um assassinato. Quem estará por trás do crime?', 'img/series-cards/elite.jpeg', '18', 'https://youtu.be/Oqv81BdRs7w'),
(16, 'The Crown', '2016', '', '', 'Filha do rei George VI (Jared Harris), Elizabeth II (Claire Foy) sempre soube que não teria uma vida comum. Após a morte do seu pai em 1952, ela dá seus primeiros passos em direção ao trono inglês, a começar pelas audiências semanais com os primeiro-ministros ingleses. Ela assume a coroa com apenas 25 anos de idade, mas com grandes compromissos, vêm grandes responsabilidades.', 'img/series-cards/thecrown.jpeg', '14', 'https://youtu.be/45qeTXa0P-c'),
(17, 'American Horror Story', '2011', '', '', 'A história apresenta Ben Harmon, um terapeuta que, após ter uma relação extraconjugal, decide salvar seu casamento. Assim, ele se muda com a esposa Vivien e a filha Violet para uma nova casa. Mas logo eles se envolvem com os estranhos personagens que fazem parte do lugar. Entre eles, Moira O’Hara, a governanta, que é vista por cada um como duas pessoas diferentes. Tem também Constance, uma vizinha intrometida; e o esquisito Larry. Para desespero do pai, Violet se envolve com Tate, um de seus pacientes, que ele acredita ter tendências homicidas.', 'img/series-cards/American.jpeg', '18', 'https://youtu.be/xBo1KPQl0Gg'),
(18, 'The Mandalorian', '2019', '', '', 'Após as histórias de Jango e Boba Fett, outro guerreiro emerge do universo Star Wars. The Mandalorian é situado 5 anos após a queda do Império e antes da ascensão da Primeira Ordem. Nós seguimos as viagens de um pistoleiro solitário nos confins mais profundos da galáxia, longe da autoridade da Nova República.', 'img/series-cards/Mandalorian.jpeg', '14', 'https://youtu.be/tN7fnIOVYLI'),
(19, 'Lucifer', '2016', '', '', 'Entediado e infeliz como o Senhor do inferno, Lúcifer (Tom Ellis) abdica seu trono e abandona seu reinado para viver na atordoada Los Angeles. Lá, ele dá início a outro empreendimento: um Piano-Bar chamado Lux.', 'img/series-cards/Lucifer.jpeg', '16', 'https://youtu.be/Nu5z3AT2jv8'),
(20, 'Vikings', '2013', '', '', 'A história acompanha as aventuras do guerreiro nórdico Ragnar Lodbrok, figura histórica que viveu no período Medieval. Considerando-se descendente de Odin, Ragnar busca dominar vários territórios da Europa. Com isso, ele enfrenta a oposição de Earl Haraldson, ex-guerreiro e agora líder de seu povo, casado com Siggy, uma jovem que tem sua lealdade dividida.', 'img/series-cards/Vikings.jpeg', '16', 'https://youtu.be/9GgxinPwAGc'),
(21, 'Game of thrones', '2011', '', '', 'Game of Thrones, se passa em Westeros, uma terra remanescente da Europa Medieval, onde as estações duram por anos ou até mesmo décadas. A história gira em torno de uma batalha entre os Sete Reinos, onde duas famílias dominantes estão lutando pelo controle do Trono de Ferro, cuja posse assegura a sobrevivência durante o inverno de 40 anos que está por vir.', 'img/series-cards/goty.jpeg', '16', 'https://youtu.be/KPLWWIOCOOQ'),
(22, 'DR House', '2004', '', '', 'O Dr. Gregory House (Hugh Laurie), é um brilhante profissional da área médica, desprovido de boas maneiras e nem ao menos falaria com os seus pacientes se não fosse preciso. Tendo que lidar com sua própria dor física constante, ele utiliza uma bengala que parece acentuar sua acidez, comportamento rude e brutalmente honesto. Embora a sua conduta possa ser taxada de extremamente antisocial, House é um especialista cujo raciocínio não é nada convencional e possui instinto certeiro que permite que ele seja respeitado por todos. É especialista em doenças infecciosas, que realiza diagnósticos brilhantes e ama os desafios do quebra-cabeça médico. Em cada episódio, House encara um novo paciente, com sintomas inexplicáveis, e junto de sua equipe de médicos dedicados e enfermeiras, ele deve descobrir misteriosos diagnósticos...antes que seja tarde!', 'img/series-cards/house.jpeg', '14', 'https://youtu.be/dVlQJO4HZj0'),
(23, 'The big bang theory', '2007', '', '', 'Leonard e Sheldon são físicos brilhantes que entendem como o universo funciona. Mas nada dessa inteligência ajuda os dois a interagir com as pessoas. Tudo isso começa a mudar quando uma jovem bela e liberal chamada Penny se muda para o apartamento ao lado.\r\n\r\nSheldon, o colega de quarto de Leonard, contenta-se a passar as noites jogando com os amigos socialmente disfuncionais dos dois, os cientistas Wolowitz e Koothrappali. Mas Leonard vê em Penny todo um novo universo de possibilidades... incluindo o amor.', 'img/series-cards/TBBT.jpeg', '12', 'https://youtu.be/rCj-Fb1OmXg'),
(24, 'Young Sheldon', '2017', '', '', 'Prequel de The Big Bang Theory que acompanha a vida de Sheldon Cooper aos 9 anos de idade, vivendo com sua família no leste do Texas e entrando no Ensino Médio.', 'img/series-cards/Young.jpeg', '12', 'https://youtu.be/Kwf2_kpOUvs'),
(25, 'Modern Family', '2009', '', '', 'Você consegue acreditar que todos eles são parentes? Nem eles! Com um elenco de astros e estrelas encabeçando por Ed O\'Neill, Sofia Vergara, Julie Bowen e Ty Burrell, \"Modern Family\" nos traz uma divertida e inovadora visão do que significa criar uma família nesta época doida em que vivemos. Relacionamentos multiculturais, adoção e casamento de pessoas do mesmo sexo são apenas alguns dos assuntos atuais abordados por esta série que os analisa de modo divertido e sensível. Não importa o tamanho ou a formação, a família sempre vem no primeiro neste hilário modo de olhar \"moderno\" que foca a vida, o amor e as gargalhadas.', 'img/series-cards/Modern.jpeg', '10', 'https://youtu.be/Ub_lfN2VMIo'),
(26, 'The Walking Dead', '2010', '', '', 'O mundo vive momentos de caos, quando o xerife Rick Grimes (Andrew Lincoln) acorda, depois de passar muito tempo em coma num hospital. Mal sabe ele que nada mais é como costumava ser. Assustadoramente, o improvável aconteceu e o apocalipse chegou com uma assustadora invasão de mortos-vivos.', 'img/series-cards/TWD.jpeg', '16', 'https://youtu.be/R1v0uFms68U'),
(27, 'Orange is the new black', '2013', '', '', 'Da mesma criadora de \"Weeds\" chega uma nova série sobre a vida em uma prisão feminina e seus momentos hilários e de cortar o coração. O passado de Piper Chapman bate à porta. Ela é detida e condenada a cumprir pena numa penitenciária federal. Para pagar por seus crimes, Piper troca uma vida confortável em Nova York pela prisão, onde encontra tensão e companheirismo num grupo de detentas desbocadas.', 'img/series-cards/Orange.jpeg', '18', 'https://youtu.be/vY0qzXi5oJg'),
(28, 'Grey\'s Anatomy', '2005', '', '', 'Grey\'s Anatomy é um drama médico norte-americano . O folhetim é protagonizado Dra. Meredith Grey, residente do fictício hospital cirúrgico Seattle Grace, em Seattle, Washington, o mais rígido programa cirúrgico de Harvard. A série é focada nela e seus colegas, também internos: Cristina, Izzie, George e Alex, mostrando suas vidas amorosas e as dificuldades pelas quais passam no trabalho.\r\nA temporada mostra os primeiros meses das personagens como internos e como é seu dia-a-dia. Entre as tramas, destacam-se os esforços de Meredith para manter em segredo seu relacionamento com o Dr. Shepherd e o fato de que sua mãe possui Alzheimer, assim como a rivalidade entre Burke e Shepherd pela futura direção do hospital.', 'img/series-cards/Grey\'s Anatomy.jpeg', '14', 'https://youtu.be/2wqzcLyaU8c'),
(29, 'Csi', '2000', '', '', 'CSI é uma série dramática muito popular do canal norte-americano CBS. A série é centrada nas investigações do grupo de cientistas forenses do departamento de criminalística da polícia de Las Vegas, Nevada. Estes cientistas, designados CSI\'s (Crime Scene Investigators), desvendam crimes e mortes em circunstâncias misteriosas e pouco comuns.\r\nA série, criada por Anthony E. Zuiker, estreou em Outubro de 2000 nos Estados Unidos e em Abril de 2001 no Brasil. Foram criados dois spin-offs da série: CSI: Miami e CSI: NY.\r\nÉ a série dramática de maior sucesso nos Estados Unidos. Seus roteiros inteligentes e casos sensacionais fazem com que CSI seja para muitos a melhor série do género policial.\r\nA abertura da décima temporada foi a mais cara da história da TV, custando cerca de 400 mil dolares.', 'img/series-cards/Csi.jpeg', '16', 'https://youtu.be/Y8IYh8pzXGo'),
(30, 'Lost', '2004', '', '', 'O vôo 815 da companhia aérea Oceanic Airlines, cai na costa do que aparenta ser uma ilha tropical deserta, forçando o grupo de estranhos a trabalhar em conjunto para se manterem vivos. No entanto, a sua sobrevivência é ameaçada por vários mistérios, incluindo uma escotilha metálica enterrada no solo, uma criatura que vagueia pela selva e os habitantes da ilha conhecidos como \"Os Outros\". Os sobreviventes descobrem que um dos seus não é quem parece ser e encontram uma mulher francesa chamada Danielle Rousseau, cuja equipe naufragou há 16 anos.', 'img/series-cards/Lost.jpeg', '16', 'https://youtu.be/oOCaBPbm7KE'),
(31, 'Friends', '1995', '', '', 'Ross, Rachel, Mônica, Chandler, Joey e Phoebe formam um grupo de seis amigos que lutam para se sobressair e progredir na competitiva vida de Manhattan. Seu humor inteligente e apoio mútuo incondicional fazem com sua amizade seja cada vez mais forte, superando assim todos os obstáculos que a vida lhes apresenta.', 'img/series-cards/Friends.jpeg', '12', 'https://youtu.be/IEEbUzffzrk'),
(32, 'Brooklyn Nine-Nine', '2013', '', '', 'Jake Peralta é o talentoso e despreocupado detetive do 99º distrito do Brooklyn que, junto ao seu grupo eclético de colegas, lidava com um capitão relaxado no escritório. Tudo muda quando o novo e cronicamente tenso capitão Ray Holt chega à delegacia disposto a fazer com que esse grupo disfuncional de detetives se torne o que há de melhor no Brooklyn.', 'img/series-cards/B99.jpeg', '14', 'https://youtu.be/sEOuJ4z5aTc'),
(33, 'Dark', '2017', '', '', 'O desaparecimento de duas crianças expõe as vidas duplas e as relações fraturadas entre quatro famílias da pequena cidade alemã de Winden. A busca por respostas e por um culpado revela os pecados e os segredos da comunidade, enquanto uma reviravolta sobrenatural remonta o caso à mesma cidade em 1986. A questão não é quem sequestrou as crianças… mas quando.', 'img/series-cards/Dark.jpeg', '16', 'https://youtu.be/JCCssUOtn2E'),
(34, 'Narcos', '2015', '', '', '\"Narcos\" é a história real dos esforços dos Estados Unidos e Colômbia para combater o temido cartel de Medellín, uma das organizações criminosas mais ricas e impiedosas da história. A trama gira em torno no traficante Pablo Escobar (Wagner Moura), retratando a ascensão dele de um criminoso comum para um dos homens mais perigosos, procurados e ricos do mundo.', 'img/series-cards/narcos.jpeg', '16', 'https://youtu.be/xl8zdCY-abw'),
(35, 'Outlander', '2014', '', '', 'Claire Randall é uma enfermeira em combate em 1945. Ela é misteriosamente transportada através do tempo e mandada para 1743, e sua vida passa a correr riscos que ela desconhece. Forçada a se casar com Jamie Fraser, um cortês e nobre guerreiro escocês. Um relacionamento apaixonado se acende, e deixa o coração de Claire dividido entre dois homens completamente diferentes, em duas vidas que não podem ser conciliadas.', 'img/series-cards/Outlander.jpeg', '16', 'https://youtu.be/XJdWOkyXdXs'),
(36, 'Better call saul', '2015', '', '', 'Em maio de 2002, James Morgan McGill (Bob Odenkirk), ou Jimmy, como é mais conhecido, é um defensor público com dificuldades em Albuquerque, Novo México. De multas de estacionamento a assassinatos, de acidentes de carro a fraudes públicas, o advogado faz de tudo ao mesmo tempo em que cuida do irmão Chuck (Michael McKean), um importante advogado sócio de uma das maiores empresas da cidade que atualmente sofre de hipersensibilidade eletromagnética.\r\nEsse é o início da carreira de Saul Goodman, anos antes de ser contratado por Walter White nos acontecimentos da série Breaking Bad (AMC, 2008-2013).', 'img/series-cards/Saul.jpeg', '14', 'https://youtu.be/zzy6wWjFONY'),
(37, 'Cuphead Show', '2022', '', '', 'Acompanhe as desventuras do impulso Xicrinho e seu ingênuo irmão Caneco nesta série animação baseada no famoso videogame', 'img/series-cards/Cuphead.jpeg', '10', 'https://youtu.be/Sel3fjl6uyo'),
(38, 'The Boys', '2019', '', '', 'Hughie Campbell (Jack Quaid) fica traumatizado depois que sua namorada Robin (Jess Salgueiro) é morta em um impacto de alta velocidade com o super-herói Trem-Bala (Jessie Usher). Quando conhece Billy Bruto (Karl Urban), um vigilante que odeia qualquer um com poderes, Hughie vê a chance de expor a corrupção dos super-heróis, mas, para isso, ele precisará plantar uma escuta na torre da Vought - a empresa responsável pelos Sete, o principal time de super-heróis dos Estados Unidos, do qual Trem-Bala faz parte.\r\nO plano sai de controle quando Hughie é descoberto por Translúcido (Alex Hassell), que resolve segui-lo e confrontá-lo; assim, Hughie e Billy são obrigados a sequestrar e manter o herói em cativeiro. Para isso, os rapazes vão contar com a ajuda de Leitinho (Laz Alonso) e Francês (Tomer Kapon), dois antigos companheiros de Billy que sabem de sua obsessão em combater super-heróis e, sobretudo, em se vingar daquele que é o mais amado pela população: Capitão Pátria (Antony Starr), o líder dos Sete que, 8 anos antes, estuprou sua esposa Becca (Shantel VanSanten) - de quem Billy nunca mais teve notícias desde então.\r\nBaseada na HQ homônima de Garth Ennis.', 'img/series-cards/Boys.jpeg', '18', 'https://youtu.be/BxmSk_pv8tE'),
(39, 'Invencivel', '2021', '', '', 'A trama gira em torno de Mark Grayson (Steven Yeun), um adolescente de 17 anos que é exatamente como qualquer outro garoto da sua idade – exceto que seu pai é o super-herói mais poderoso do planeta, Omni-Man (J.K. Simmons). Mas quando Mark descobre que tem seus próprios poderes, ele percebe que o legado do seu pai não é tão heroico quanto parece.', 'img/series-cards/Invencivel.jpeg', '18', 'https://youtu.be/chcPVeszoUo'),
(40, 'Des(encanto)', '0000-00-00', '', '', 'Esta série de animação de Matt Groenign acompanha as malucas aventuras de uma princesa boa de copo em um reino medieval repleto de criaturas míticas.', 'img/series-cards/Des(encanto).jpeg', '10', 'https://youtu.be/Dkgw8A-XiO0'),
(41, 'All of us are Dead', '2022', '', '', 'All of Us Are Dead é sobre um grupo de estudantes do ensino médio que enfrentam uma situação extrema de crise quando ficam presos na escola, enquanto um vírus zumbi se espalha como um incêndio. Adaptado do webtoon coreano chamado Now at Our School', 'img/series-cards/Dead.jpeg', '16', 'https://youtu.be/bmbl65oiUgA'),
(42, 'The Umbrella Academy', '2019', '', '', 'Baseada na premiada série de quadrinhos com roteiro de Gerard Way e arte do brasileiro Gabriel Bá. A série acompanha um grupo superpoderoso de integrantes criados quando crianças para se tornarem heróis, pelo enigmático Sir Reginald Hargreeves. Nos dias de hoje, adultos, eles se encontram divididos e têm que se reunir para enfrentar um dos seus.', 'img/series-cards/Academy.jpeg', '16', 'https://youtu.be/5_4SW8HHfUs'),
(43, 'Sex Education', '2019', '', '', 'Otis Thompson (Asa Butterfield) é um virgem com ansiedade social que é filho de uma terapeuta sexual (Gillian Anderson). Por ter crescido cercado por manuais, vídeos e conversas abertas sobre sexualidade, ele torna-se um expert no assunto - mesmo que contra sua vontade. Com a ajuda de Maeve (Emma Mackey), ele inicia uma clínica clandestina dentro da escola, ajudando os colegas com problemas sexuais em troca de dinheiro.', 'img/series-cards/Sex Education.jpeg', '16', 'https://youtu.be/Jv46AlQUto4'),
(44, 'American Gods', '2017', '', '', 'Baseada no romance homônimo (Deus Americanos, no Brasil) de Neil Gaiman, a série será produzida para o canal a cabo Starz por Bryan Fuller (Pushing Daisies) e Michael Green (Heroes).\r\nCentrado em uma guerra entre os velhos e os novos deuses. Os seres bíblicos e mitológicos estão perdendo cada vez mais fiéis para novos deuses, que refletem o amor da sociedade por dinheiro, tecnologia, celebridades e drogas. Shadow Moon é um ex-vigarista que agora serve como segurança e companheiro de viagem para o Sr. Wednesday, um homem fraudulento que é, na verdade, um dos velhos deuses, e está na Terra em uma missão: reunir forças para lutar contra as novas entidades.', 'img/series-cards/Gods.jpeg', '16', 'https://youtu.be/SHozrkt4Yt8'),
(45, 'Ratched', '2020', '', '', 'Em 1947, Mildred Ratched (Sarah Paulson) chega na Califórnia do Norte em busca de emprego em um crescente hospital psiquiátrico que lidera com novas experiências na mente humana. Numa missão clandestina, Mildred se apresenta como a enfermeira perfeita, mas à medida que ela se infiltra no sistema de saúde mental, o exterior carismático de Mildred começa a esconder uma escuridão, provando que monstros reais são feitos.', 'img/series-cards/Ratched.jpeg', '16', 'https://youtu.be/eE8HtX0GwfI'),
(46, 'Good Omens', '2019', '', '', 'No ano de 2018, a humanidade está à beira de um apocalipse e pronta para enfrentar o julgamento final quando Aziraphale (Michael Sheen), um anjo um tanto inquieto, e Crowley (David Tennant), um demônio, não tão entusiasmados com o fim do mundo, decidem encontrar o Anticristo.', 'img/series-cards/Good Omens.jpeg', '14', 'https://youtu.be/7pAMFMabzSo\r\n'),
(47, 'The Witcher', '2019', '', '', 'Geralt de Rívia (Henry Cavill), um solitário caçador de monstros, luta para achar seu lugar num mundo onde pessoas se provam mais perversas do que criaturas. Mas quando o destino o leva à uma poderosa feiticeira (Anya Chalotra) e uma jovem princesa (Freya Allan) com um segredo perigoso, os três precisam aprender a navegar pelo Continente juntos.', 'img/series-cards/Witcher.jpeg', '16', 'https://youtu.be/tjujvMkqWe4'),
(48, 'Breaking Bad', '2008', '', '', 'Bryan Cranston, premiado com o Emmy®, é a estrela da série no papel de Walter White, um professor de química que leva uma vida difícil e luta para pagar as contas sustentando a esposa (Anna Gunn) e o filho, que tem dificuldades físicas (RJ Mitte). Sua vida inteira muda diante de um diagnóstico perturbador: câncer do pulmão sem possibilidade de cura. Com poucos anos de vida e nada mais a perder, Walter usa seus conhecimentos de química para fazer e vender metanfetamina com um dos seus ex-alunos (Aaron Paul). Seus negócios crescem e as mentiras também, mas nada detém Walter em sua missão de assegurar o futuro da família após a sua morte, mesmo que ele tenha que arriscar a vida da família toda.\r\n\r\nMenos ', 'img/series-cards/BB.jpeg', '16', 'https://youtu.be/2-W6_6gJda0'),
(49, 'The Last of Us', '2023', '', '', 'Vinte anos após a destruição da civilização moderna, Joel, um sobrevivente, é contratado para contrabandear Ellie, uma garota de 14 anos, para fora de uma zona opressiva de quarentena. O que começa como um pequeno trabalho logo se torna uma jornada brutal e de partir o coração, já que ambos devem atravessar os EUA e dependem um do outro para sobreviver.', 'img/series-cards/TLOU.jpeg\r\n', '16', 'https://youtu.be/uLtkt8BonwM'),
(50, 'Mr. Pickles', '2013', '', '', 'Mr. Pickles mostra o cotidiano da família Goodman e de seu border Collier demoníaco Mr. Pickles. A série gira em torno do avô que sabe da natureza do cachorro e tenta alertar a sua família, mas suas histórias são tão surreais e estapafúrdias que é dado como gagá, sem falar que o Mr. Pickles sempre arranja um jeito de desacreditar o senhor de idade. A série é focada em um forte humor negro e sem economizar na violência.', 'img/series-cards/Pickles.jpeg', '16', 'https://www.youtube.com/embed/TMF9xgQ_nSU');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `assinatura`
--
ALTER TABLE `assinatura`
  ADD PRIMARY KEY (`IdAssinatura`);

--
-- Índices para tabela `elenco`
--
ALTER TABLE `elenco`
  ADD PRIMARY KEY (`IdElenco`);

--
-- Índices para tabela `faixa etaria`
--
ALTER TABLE `faixa etaria`
  ADD PRIMARY KEY (`Id`);

--
-- Índices para tabela `favoritos`
--
ALTER TABLE `favoritos`
  ADD PRIMARY KEY (`Id`);

--
-- Índices para tabela `filmes`
--
ALTER TABLE `filmes`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `genero`
--
ALTER TABLE `genero`
  ADD PRIMARY KEY (`IdGenero`);

--
-- Índices para tabela `series`
--
ALTER TABLE `series`
  ADD PRIMARY KEY (`Id`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `assinatura`
--
ALTER TABLE `assinatura`
  MODIFY `IdAssinatura` int(7) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `elenco`
--
ALTER TABLE `elenco`
  MODIFY `IdElenco` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=283;

--
-- AUTO_INCREMENT de tabela `faixa etaria`
--
ALTER TABLE `faixa etaria`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `favoritos`
--
ALTER TABLE `favoritos`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;

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

--
-- AUTO_INCREMENT de tabela `series`
--
ALTER TABLE `series`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
