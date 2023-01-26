-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 26-Jan-2023 às 18:11
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
-- Banco de dados: `kinoplay`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `cliente`
--

CREATE TABLE `cliente` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `email` varchar(255) NOT NULL,
  `nome` varchar(25) NOT NULL,
  `senha` varchar(15) NOT NULL,
  `data_nasc` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `elenco`
--

CREATE TABLE `elenco` (
  `IdDiretor` int(11) NOT NULL,
  `Diretor` text NOT NULL,
  `Atores` int(11) NOT NULL,
  `Image_Diretor` int(11) NOT NULL,
  `image_Atores` int(11) NOT NULL,
  `Estudio` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `faixa etaria`
--

CREATE TABLE `faixa etaria` (
  `ID` int(11) NOT NULL,
  `classificação` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `filmes`
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `filmes`
--

INSERT INTO `filmes` (`id`, `nomebr`, `NomeEN`, `anoLançamento`, `idDiretor`, `idGenero`, `sinopse`, `Imagem`) VALUES
(1, 'Jogada de Amor', '', '0000-00-00', 0, 0, 'Gianni, mulherengo incurável, aceita o desafio dos amigos e finge ser deficiente para sair com Chiara, uma tenista paraplégica. Pressionado pela irmã a confessar a verdade, o homem descobre que está apaixonado por ela.', 'jogada.jfif'),
(2, 'A forma da Água', 'Shape of Water', '0000-00-00', 0, 0, 'Década de 60. Em meio aos grandes conflitos políticos e transformações sociais dos Estados Unidos da Guerra Fria, a muda Elisa, zeladora em um laboratório experimental secreto do governo, se encanta com uma criatura fantástica mantida presa e maltratada no local. Para executar um arriscado e apaixonado resgate, ela recorre ao melhor amigo Giles e à colega de turno Zelda, em uma aventura que pode custar muito mais do que o seu emprego.', 'Agua.jpeg'),
(3, 'La La Land: Cantando Estações', 'La La Land', '0000-00-00', 0, 0, 'O pianista Sebastian conhece a atriz Mia, e os dois se apaixonam perdidamente. Em busca de oportunidades para suas carreiras na competitiva Los Angeles, os jovens tentam fazer o relacionamento amoroso dar certo, enquanto perseguem fama e sucesso.', 'laland.jfif'),
(4, 'Ghost do outro lado da vida', 'Ghost (1990)', '0000-00-00', 0, 0, 'Sam Wheat é um jovem executivo apaixonado por sua namorada, Molly. Ele acaba morto em um assalto, mas seu espírito não vai para o outro plano e descobre que Molly também corre perigo. Para salvá-la, Sam pede ajuda a uma médium que consegue ouvi-lo.', 'ghost.jfif'),
(5, 'A Teoria de Tudo ', 'The Theory of Everything', '0000-00-00', 0, 0, 'Baseado na história de Stephen Hawking, o filme expõe como o astrofísico fez descobertas relevantes para o mundo da ciência, inclusive relacionadas ao tempo. Também retrata seu romance com Jane Wilde, uma estudante de Cambridge que viria a se tornar sua esposa. Aos 21 anos de idade, Hawking descobriu que sofria de uma doença motora degenerativa, mas isso não o impediu de se tornar um dos maiores cientistas da atualidade.', 'teoria.jfif'),
(6, 'O Lado Bom da Vida', 'Silver Linings Playbook', '0000-00-00', 0, 0, 'Depois de uma fase difícil de sua vida, Pat Solitano Jr. está disposto a seguir em frente e reconquistar sua ex-mulher. Através de amigos, ele conhece Tiffany, que lhe promete ajuda na tarefa da reconquista. Uma inesperada ligação começa a uni-los.', 'vida.jpeg'),
(7, 'Nasce Uma Estrela', 'A Star is Born', '0000-00-00', 0, 0, 'Jackson Maine é um cantor no auge da fama. Um dia, após deixar uma apresentação, ele para em um bar para beber. Lá, Jackson conhece Ally, uma insegura cantora que ganha a vida trabalhando em um restaurante. Ele se encanta por ela e seu talento. Mais tarde, os dois acabam se casando. Ao mesmo tempo em que Ally desponta para o estrelato, Jackson vive uma crise pessoal e profissional devido aos problemas com o álcool. Os momentos opostos acabam por minar o relacionamento amoroso do casal.', 'star.jpeg'),
(8, 'Como Eu era Antes de Você', 'Me Before You', '0000-00-00', 0, 0, 'De origem modesta e sem grandes aspirações, a peculiar Louisa Clark é contratada para ser cuidadora de Will, um jovem tetraplégico depressivo e cínico.', 'antes.jpeg'),
(9, 'Amor de Redenção', 'Redeeming Love', '0000-00-00', 0, 0, 'O relacionamento de um jovem casal se choca com as duras realidades da Corrida do Ouro na Califórnia de 1850. Angel, experimentando o amor pela primeira vez e enfrentando demônios que parecem insuperáveis, foge da nova vida que ela acha que não merece. No entanto, durante a busca de Michael pela sua amada, Angel descobre que ela tem o poder de escolher a vida que quer.', 'Love.jpeg'),
(10, 'A proposta', 'the proposal', '0000-00-00', 0, 0, 'Margaret Tate é uma poderosa editora de livros que corre o risco de ser deportada para o Canadá, seu país natal. Para poder permanecer em Nova York, ela diz estar noiva de Andrew, seu assistente. O jovem aceita ajudá-la, mas impõe algumas condições, entre elas ir para o Alasca e conhecer sua família excêntrica. Com um oficial da imigração sempre à espreita, Margaret e Andrew têm que seguir o plano de casamento apesar de diversos problemas.', 'proposta.jpeg'),
(11, 'O Reino Perdido dos Piratas', 'The lost pirate Kingdom', '0000-00-00', 0, 0, 'O Reino Perdido dos Piratas é uma série documental centrada nos verdadeiros piratas do Caribe, que, no início do século 18, tinham como missão oficial saquear as riquezas do mundo inteiro.', 'Pirate.jpeg'),
(12, 'Batman: O Cavaleiro das Trevas', 'Batman the Dark Knight', '0000-00-00', 0, 0, 'Com a ajuda de Jim Gordon e Harvey Dent, Batman tem mantido a ordem na cidade de Gotham. Mas um jovem e anárquico criminoso conhecido como Coringa ganha força e decide instaurar um verdadeiro caos na cidade. O justiceiro será testado psicologicamente e fisicamente como nunca fora antes em um confronto bastante pessoal. Cabe a Batman encontrar uma maneira de deter o sádico vilão antes que mais vidas sejam perdidas.', 'Batman.jpeg'),
(13, 'A Lista De Schindler', 'Schindlers List', '0000-00-00', 0, 0, 'O alemão Oskar Schindler viu na mão de obra judia uma solução barata e viável para lucrar com negócios durante a guerra. Com sua forte influência dentro do partido nazista, foi fácil conseguir as autorizações e abrir uma fábrica. O que poderia parecer uma atitude de um homem não muito bondoso, transformou-se em um dos maiores casos de amor à vida da História, pois este alemão abdicou de toda sua fortuna para salvar a vida de mais de mil judeus em plena luta contra o extermínio alemão.', 'lista.jfif'),
(14, 'Putin poder sem limites', '', '0000-00-00', 0, 0, 'Como um menino de São Petersburgo se tornou um poderoso líder mundial? A história da impressionante ascensão de Vladimir Putin ao poder - de coronel da KGB a presidente.', 'https://drive.google.com/file/d/1R0FbMq_r4IOr0yt_c8MIKxsFkEn2bgje/view?usp=share_link'),
(15, 'Cracolândia', 'cracolândia', '0000-00-00', 0, 0, 'A partir de uma intensa pesquisa, o filme abre um debate a respeito da maior e mais impactante cena de uso aberto de crack do mundo: a \"Cracolândia\" de São Paulo. A obra analisa as causas desse mal e suas progressões, além das táticas de combate já realizadas em São Paulo, abrindo um paralelo com as estratégias usadas em outros países.', 'Cracolandia.jpeg'),
(16, 'A culpa é das estrelas', 'Stars Fault', '0000-00-00', 0, 0, 'Hazel Grace Lancaster e Augustus Waters são dois adolescentes que se conhecem em um grupo de apoio para pacientes com câncer. Por causa da doença, Hazel sempre descartou a ideia de se envolver amorosamente, mas acaba cedendo ao se apaixonar por Augustus. Juntos, eles viajam para Amsterdã, onde embarcam em uma jornada inesquecível.', 'Estrelas.jpeg'),
(17, 'O Regresso', 'The Revenant ', '0000-00-00', 0, 0, 'Após ser atacado por um urso, o caçador Hugh Glass é abandonado na floresta por seu companheiro John Fitzgerald. Apesar de muito ferido, Glass consegue sobreviver e vai em busca de vingança.', 'Regresso.jpeg'),
(18, 'Á Espera de um milagre', 'The Green Mile', '0000-00-00', 0, 0, 'Um carcereiro tem um relacionamento incomum e comovente com um preso que está no corredor na morte: Coffey, um negro enorme, condenado por ter matado brutalmente duas gêmeas de nove anos. Ele tem tamanho e força para matar qualquer um, mas seu comportamento é completamente oposto à sua aparência. Além de ser simples, ingênuo e ter pavor do escuro, ele possui um dom sobrenatural. Com o passar do tempo, o carcereiro aprende que, às vezes, os milagres acontecem nos lugares mais inesperados.', 'Milagre.jpeg'),
(19, 'Heleno', 'Heleno', '0000-00-00', 0, 0, 'O jogador de futebol Heleno de Freitas (Rodrigo Santoro) era considerado o príncipe do Rio de Janeiro dos anos 40, numa época em que a cidade era um cenário de sonhos e promessas. Sendo ao mesmo tempo um gênio explosivo e apaixonado nos campos de futebol, além de galã charmoso nos salões da sociedade carioca, tinha certeza de que seria o maior jogador brasileiro de todos os tempos. Mas seu comportamento arredio, sua indisciplina e a doença (sífilis) foram minando o que poderia ser uma grande jornada de glória, transformando-a numa trágica história. Baseado no livro “Nunca Houve um Homem como Heleno”, de Marcos Eduardo Novaes.', 'Heleno.jpeg'),
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
(38, 'V for vendetta', '', '0000-00-00', 0, 0, '', 'https://drive.google.com/file/d/1O-VqMHir1ECDqhYism3p-O307kJZWww/view?usp=share_link'),
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
  `IdSerie` int(11) NOT NULL,
  `NomeBR` int(11) NOT NULL,
  `NomeEN` int(11) NOT NULL,
  `anoLançamento` int(11) NOT NULL,
  `Diretor_idDiretor` int(11) NOT NULL,
  `genero_idGenero` int(11) NOT NULL,
  `Faixa_FE` int(11) NOT NULL,
  `sinopse` int(11) NOT NULL,
  `imagem` int(11) NOT NULL
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
  ADD PRIMARY KEY (`IdDiretor`);

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
-- AUTO_INCREMENT de tabelas despejadas
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
