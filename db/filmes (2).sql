-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 02-Fev-2023 às 18:10
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
  `nota` varchar(3) NOT NULL,
  `trailer` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `filmes`
--

INSERT INTO `filmes` (`id`, `titulo`, `anoLancamento`, `idGenero`, `sinopse`, `Imagem`, `Classificacao`, `nota`, `trailer`) VALUES
(1, 'Jogada de Amor', '2022', 0, 'Gianni, mulherengo incurável, aceita o desafio dos amigos e finge ser deficiente para sair com Chiara, uma tenista paraplégica. Pressionado pela irmã a confessar a verdade, o homem descobre que está apaixonado por ela.', 'jogada.jfif', '14', '3,2', 'https://youtu.be/zZPeGRZcSis'),
(2, 'A forma da agua', '2017', 0, 'Década de 60. Em meio aos grandes conflitos políticos e transformações sociais dos Estados Unidos da Guerra Fria, a muda Elisa, zeladora em um laboratório experimental secreto do governo, se encanta com uma criatura fantástica mantida presa e maltratada no local. Para executar um arriscado e apaixonado resgate, ela recorre ao melhor amigo Giles e à colega de turno Zelda, em uma aventura que pode custar muito mais do que o seu emprego.', 'Agua.jpeg', '16', '4,4', 'https://youtu.be/-DTVuQTZr3E'),
(3, 'La La Land: Cantando Estações', '2016', 0, 'O pianista Sebastian conhece a atriz Mia, e os dois se apaixonam perdidamente. Em busca de oportunidades para suas carreiras na competitiva Los Angeles, os jovens tentam fazer o relacionamento amoroso dar certo, enquanto perseguem fama e sucesso.', 'laland.jfif', '12', '4,3', 'https://youtu.be/UD-Cb2yeAPA'),
(4, 'Ghost do outro lado da vida', '1990', 0, 'Sam Wheat é um jovem executivo apaixonado por sua namorada, Molly. Ele acaba morto em um assalto, mas seu espírito não vai para o outro plano e descobre que Molly também corre perigo. Para salvá-la, Sam pede ajuda a uma médium que consegue ouvi-lo.', 'ghost.jfif', '12', '4,4', 'https://youtu.be/-hWluAo0D-Y'),
(5, 'A Teoria de Tudo ', '2014', 0, 'Baseado na história de Stephen Hawking, o filme expõe como o astrofísico fez descobertas relevantes para o mundo da ciência, inclusive relacionadas ao tempo. Também retrata seu romance com Jane Wilde, uma estudante de Cambridge que viria a se tornar sua esposa. Aos 21 anos de idade, Hawking descobriu que sofria de uma doença motora degenerativa, mas isso não o impediu de se tornar um dos maiores cientistas da atualidade.', 'teoria.jfif', '10', '3,1', 'https://youtu.be/SbUVNHdPE4w'),
(6, 'O Lado Bom da Vida', '2012', 0, 'Depois de uma fase difícil de sua vida, Pat Solitano Jr. está disposto a seguir em frente e reconquistar sua ex-mulher. Através de amigos, ele conhece Tiffany, que lhe promete ajuda na tarefa da reconquista. Uma inesperada ligação começa a uni-los.', 'vida.jpeg', '12', '3,3', 'https://youtu.be/h2xb_rkbAU8'),
(7, 'Nasce Uma Estrela', '2018', 0, 'Jackson Maine é um cantor no auge da fama. Um dia, após deixar uma apresentação, ele para em um bar para beber. Lá, Jackson conhece Ally, uma insegura cantora que ganha a vida trabalhando em um restaurante. Ele se encanta por ela e seu talento. Mais tarde, os dois acabam se casando. Ao mesmo tempo em que Ally desponta para o estrelato, Jackson vive uma crise pessoal e profissional devido aos problemas com o álcool. Os momentos opostos acabam por minar o relacionamento amoroso do casal.', 'star.jpeg', '16', '3,7', 'https://youtu.be/WGsA2aXYBGo'),
(8, 'Como Eu era Antes de Você', '2016', 0, 'De origem modesta e sem grandes aspirações, a peculiar Louisa Clark é contratada para ser cuidadora de Will, um jovem tetraplégico depressivo e cínico.', 'antes.jpeg', '12', '3,1', 'https://youtu.be/PnqUs3xiAVI'),
(9, 'Amor de Redenção', '2022', 0, 'O relacionamento de um jovem casal se choca com as duras realidades da Corrida do Ouro na Califórnia de 1850. Angel, experimentando o amor pela primeira vez e enfrentando demônios que parecem insuperáveis, foge da nova vida que ela acha que não merece. No entanto, durante a busca de Michael pela sua amada, Angel descobre que ela tem o poder de escolher a vida que quer.', 'Love.jpeg', '16', '4,1', 'https://youtu.be/gyZYHZS1qZE'),
(10, 'A proposta', '2009', 0, 'Margaret Tate é uma poderosa editora de livros que corre o risco de ser deportada para o Canadá, seu país natal. Para poder permanecer em Nova York, ela diz estar noiva de Andrew, seu assistente. O jovem aceita ajudá-la, mas impõe algumas condições, entre elas ir para o Alasca e conhecer sua família excêntrica. Com um oficial da imigração sempre à espreita, Margaret e Andrew têm que seguir o plano de casamento apesar de diversos problemas.', 'proposta.jpeg', '14', '4,3', 'https://youtu.be/a5X3u5G3Z7k'),
(11, 'O Reino Perdido dos Piratas', '2021', 0, 'O Reino Perdido dos Piratas é uma série documental centrada nos verdadeiros piratas do Caribe, que, no início do século 18, tinham como missão oficial saquear as riquezas do mundo inteiro.', 'Pirate.jpeg', '16', '3,4', 'https://youtu.be/ni-AG2VMMos'),
(12, 'Batman: O Cavaleiro das Trevas', '2008', 0, 'Com a ajuda de Jim Gordon e Harvey Dent, Batman tem mantido a ordem na cidade de Gotham. Mas um jovem e anárquico criminoso conhecido como Coringa ganha força e decide instaurar um verdadeiro caos na cidade. O justiceiro será testado psicologicamente e fisicamente como nunca fora antes em um confronto bastante pessoal. Cabe a Batman encontrar uma maneira de deter o sádico vilão antes que mais vidas sejam perdidas.', 'Batman.jpeg', 'Livre', '4,7', 'https://youtu.be/a-PVBsmiB0Y'),
(13, 'A Lista De Schindler', '1993', 0, 'O alemão Oskar Schindler viu na mão de obra judia uma solução barata e viável para lucrar com negócios durante a guerra. Com sua forte influência dentro do partido nazista, foi fácil conseguir as autorizações e abrir uma fábrica. O que poderia parecer uma atitude de um homem não muito bondoso, transformou-se em um dos maiores casos de amor à vida da História, pois este alemão abdicou de toda sua fortuna para salvar a vida de mais de mil judeus em plena luta contra o extermínio alemão.', 'lista.jfif', '14', '3,9', 'https://youtu.be/GAf0nGq_FXQ'),
(14, 'Putin poder sem limites', '2018', 0, 'Como um menino de São Petersburgo se tornou um poderoso líder mundial? A história da impressionante ascensão de Vladimir Putin ao poder - de coronel da KGB a presidente.', 'Putin.jpeg', '12', '2,5', 'https://youtu.be/euqDGUq2yFg'),
(15, 'Cracolândia', '2020', 0, 'A partir de uma intensa pesquisa, o filme abre um debate a respeito da maior e mais impactante cena de uso aberto de crack do mundo: a \"Cracolândia\" de São Paulo. A obra analisa as causas desse mal e suas progressões, além das táticas de combate já realizadas em São Paulo, abrindo um paralelo com as estratégias usadas em outros países.', 'Cracolandia.jpeg', '12', '3,6', 'https://youtu.be/CBBPbzJyeag'),
(16, 'A culpa é das estrelas', '2014', 0, 'Hazel Grace Lancaster e Augustus Waters são dois adolescentes que se conhecem em um grupo de apoio para pacientes com câncer. Por causa da doença, Hazel sempre descartou a ideia de se envolver amorosamente, mas acaba cedendo ao se apaixonar por Augustus. Juntos, eles viajam para Amsterdã, onde embarcam em uma jornada inesquecível.', 'Estrelas.jpeg', '12', '3,4', 'https://youtu.be/lFOOZJ1UChg'),
(17, 'O Regresso', '2015', 0, 'Após ser atacado por um urso, o caçador Hugh Glass é abandonado na floresta por seu companheiro John Fitzgerald. Apesar de muito ferido, Glass consegue sobreviver e vai em busca de vingança.', 'Regresso.jpeg', '16', '3,6', 'https://youtu.be/S4PpYv9n0ko'),
(18, 'À Espera de um milagre', '1999', 0, 'Um carcereiro tem um relacionamento incomum e comovente com um preso que está no corredor na morte: Coffey, um negro enorme, condenado por ter matado brutalmente duas gêmeas de nove anos. Ele tem tamanho e força para matar qualquer um, mas seu comportamento é completamente oposto à sua aparência. Além de ser simples, ingênuo e ter pavor do escuro, ele possui um dom sobrenatural. Com o passar do tempo, o carcereiro aprende que, às vezes, os milagres acontecem nos lugares mais inesperados.', 'Milagre.jpeg', '14', '4,7', 'https://youtu.be/EIc_wJtm6AU'),
(19, 'Heleno', '2011', 0, 'O jogador de futebol Heleno de Freitas (Rodrigo Santoro) era considerado o príncipe do Rio de Janeiro dos anos 40, numa época em que a cidade era um cenário de sonhos e promessas. Sendo ao mesmo tempo um gênio explosivo e apaixonado nos campos de futebol, além de galã charmoso nos salões da sociedade carioca, tinha certeza de que seria o maior jogador brasileiro de todos os tempos. Mas seu comportamento arredio, sua indisciplina e a doença (sífilis) foram minando o que poderia ser uma grande jornada de glória, transformando-a numa trágica história. Baseado no livro “Nunca Houve um Homem como Heleno”, de Marcos Eduardo Novaes.', 'Heleno.jpeg', '14', '3,2', 'https://youtu.be/tIZy1QbBipY'),
(20, 'Maradona a Mão de Deus', '2007', 0, 'Indicado ao Oscar de melhor filme internacional, o autobiográfico \'A Mão de Deus\', do italiano Paolo Sorrentino, acompanha a tumultuada jornada de um adolescente e sua família, tomando a passagem de Diego Maradona por Nápoles como pano de fundo histórico.', 'Maradona.jpeg', 'Livre', '3,7', 'https://youtu.be/9q0vJ3betXw'),
(21, '12 Anos de escravidão', '2013', 0, 'Em 1841, Solomon Northup é um negro livre, que vive em paz ao lado da esposa e filhos. Um dia, após aceitar um trabalho que o leva a outra cidade, ele é sequestrado e acorrentado. Vendido como se fosse um escravo, Solomon precisa superar humilhações físicas e emocionais para sobreviver. Ao longo de 12 anos, ele passa por dois senhores, Ford e Edwin Epps, que exploram seus serviços.', 'Escravidao.jpeg', '14', '4,3', 'https://youtu.be/xSL_sCHDsHc'),
(22, 'À Procura da Felicidade', '2006', 0, 'Chris enfrenta sérios problemas financeiros e Linda, sua esposa, decide partir. Ele agora é pai solteiro e precisa cuidar de Christopher, seu filho de 5 anos. Chris tenta usar sua habilidade como vendedor para conseguir um emprego melhor, mas só consegue um estágio não remunerado. Seus problemas financeiros não podem esperar uma promoção e eles acabam despejados. Chris e Christopher passam a dormir em abrigos ou onde quer que consigam um refúgio, mantendo a esperança de que dias melhores virão.', 'Felicidade.jpeg', '18', '4,2', 'https://youtu.be/yHgiEADa5M8'),
(23, 'A vida é Bela', '1997', 0, 'Durante a Segunda Guerra Mundial na Itália, o judeu Guido e seu filho Giosué são levados para um campo de concentração nazista. Afastado da mulher, ele precisa usar sua imaginação para fazer o menino acreditar que estão participando de uma grande brincadeira, com o intuito de protegê-lo do terror e da violência ao redor.', 'Bela.jpeg', 'L', '4,5', 'https://youtu.be/iimUiHXmvIg'),
(24, 'Rogai por Nós', '2021', 0, 'Jornalista investiga uma jovem com deficiência auditiva que foi visitada pela Virgem Maria e, repentinamente, passa a ouvir, falar e curar os enfermos.', 'Rogai.jpeg', '14', '2,3', 'https://youtu.be/5OKXI2Q-AnM'),
(25, '', '2007', 0, 'Uma jornalista e seu cinegrafista filmam o surto de uma doença que transforma humanos em canibais perversos.', 'Rec.jpeg', '16', '0', 'https://youtu.be/qXAThYwe7Ic'),
(26, 'A Bruxa', '2015', 0, 'Em uma fazenda no século 17, uma histeria religiosa toma conta de uma família que acusa a filha mais velha pelo desaparecimento do seu irmão ainda bebê.', 'Bruxa.jpeg', '16', '0', 'https://youtu.be/FE-u6RznkGQ'),
(27, 'A Entidade', '2012', 0, 'Ellison é um escritor de romances policias que acaba de se mudar com a família. No sótão da nova casa ele descobre antigos rolos de filme, que trazem imagens de pessoas sendo mortas. Intrigado com o que elas representam e com um estranho símbolo presente nas imagens, ele e sua família logo passam a correr sério risco de morte.', 'Entidade.jpeg', '16', '0', 'https://youtu.be/-Q_dwLGd2Rs'),
(28, 'Parasita', '2019', 0, 'Toda a família de Ki-taek está desempregada, vivendo em um porão sujo e apertado. Por obra do acaso, ele começa a dar aulas de inglês para uma garota de família rica. Fascinados com a vida luxuosa destas pessoas, pai, mãe e filhos bolam um plano para se infiltrar também na abastada família, um a um. No entanto, os segredos e mentiras necessários à ascensão social cobram o seu preço.', 'Parasita.jfif', '16', '0', 'https://youtu.be/m4jfE-TxC24'),
(29, 'A Luz do Demônio', '2022', 0, 'Lançada na linha de frente espiritual, uma jovem freira se encontra em uma batalha pela alma de uma garota que está possuída pelo mesmo demônio que atormentou sua própria mãe anos antes.', 'LuzdoDiabo.jfif', '14', '0', 'https://youtu.be/vmVlPiTS3oo'),
(30, 'Quero Matar Meu Chefe 2 ', '2014', 0, 'Nick, Kurt e Dale estão cansados de receber ordens e abrem seu próprio negócio, de forma que eles mesmos sejam seus chefes. No entanto, quando a companhia começa a deslanchar, um investidor os engana e rouba a empresa. Sem ter como recorrer por meios legais, o trio decide partir para um ato desesperado: sequestrar o filho do investidor e, com o dinheiro do resgate, pagar a dívida contraída e manter a empresa.', 'chefe.jfif', '14', '0', 'https://youtu.be/ycxwilawL6o'),
(31, 'Democracia em Vertigem', '2019', 0, 'A cineasta Petra Costa testemunha a ascensão e queda de um grupo político e a polarização do Brasil.', 'democracia.jfif', '12', '0', 'https://youtu.be/vwZ5m10y1rQ'),
(32, 'Screamers', '2006', 0, 'Tom e Chris, dois gurus da internet, recebem um vídeo de uma menina num túmulo. Ao perceberem que a jovem é muito parecida com alguém que está desaparecida há alguns anos, eles decidem investigar o caso. Mas o que não esperavam é que seriam confrontados pelo caos.', 'Screamers.jfif', '14', '0', 'https://youtu.be/2FqD6ReQHNQ'),
(33, 'A Morte do Demônio ', '2013', 0, 'Mia é uma viciada em drogas que, para vencer seus demônios pessoais, vai com seu irmão David, a namorada do irmão, Natalie, e os amigos de infância Olivia e Eric até uma cabana rústica, que pertence à família. Assim que chegam, descobrem que a cabana foi invadida e que o porão parece uma espécie de altar, rodeado por animais mumificados, onde a descoberta de um Livro dos Mortos invoca forças demoníacas. A presença do mal os possui até que apenas um é deixado a lutar pela sobrevivência.\r\n', 'Demonio.jfif', '18', '0', 'https://youtu.be/JBfub8SbtvU'),
(34, 'Sobrenatural', '2010', 0, 'Josh e Renai se mudam com a família para uma casa maior. Lá, o filho Dalton sofre um estranho acidente e entra em coma. Enquanto eles tentam salvar o menino, entidades malignas atormentam a família.', 'sobrenatural.jfif', '14', '0', 'https://youtu.be/0AHVW_yenRs'),
(35, 'Até que a sorte nos separe', '2012', 0, 'Tino é um pai de família que tem sua rotina transformada ao ganhar na loteria. Em dez anos, o fanfarrão e sua mulher Jane gastam todo o dinheiro com uma vida de ostentação. Ao descobrir que está falido, ele é obrigado a aceitar a ajuda de Amauri, seu vizinho, um consultor financeiro nada divertido e extremamente econômico. Quando Jane engravida do terceiro filho, Tino faz de tudo para esconder da esposa que estão na lona, pois a recomendação médica é que a grávida evite fortes emoções.', 'Sorte.jfif', '12', '0', 'https://youtu.be/dAnzuTb-A8k'),
(36, 'It a coisa', '2017', 0, 'Um grupo de crianças se une para investigar o misterioso desaparecimento de vários jovens em sua cidade. Eles descobrem que o culpado é Pennywise, um palhaço cruel que se alimenta de seus medos e cuja violência teve origem há vários séculos.', 'it.jfif', '16', '0', 'https://youtu.be/dD264ZjfKlk'),
(37, 'Homem-Aranha: Sem Volta para Casa', '2021', 0, 'Peter Parker tem a sua identidade secreta revelada e pede ajuda ao Doutor Estranho. Quando um feitiço para reverter o evento não sai como o esperado, o Homem-Aranha e seu companheiro dos Vingadores precisam enfrentar inimigos de todo o multiverso.', 'Nowayhome.jfif', '12', '0', 'https://youtu.be/FDNNHh7TRN0'),
(38, 'V de Vingança', '2005', 0, 'Após uma guerra mundial, a Inglaterra é ocupada por um governo fascista e vive sob um regime totalitário. Na luta pela liberdade, um vigilante, conhecido apenas como V, utiliza-se de táticas terroristas para enfrentar os opressores da sociedade. V salva uma jovem chamada Evey da polícia secreta e encontra nela uma nova aliada em busca de liberdade e justiça para o seu país.', 'vendetta.jfif', '16', '0', 'https://youtu.be/E8XzibXYMWk'),
(39, 'O Filho do Máskara', '2005', 0, 'Tim Avery, um caricaturista aspirante, se vê em um predicamento quando seu cachorro Otis tromba com a máscara de Loki, que estava dada como perdida. Depois de conceber um filho \"nascido de uma máscara\", ele se dá conta da loucura de criar uma criança.', 'maskara.jfif', 'L', '0', 'https://youtu.be/gzpr1kPFO3o'),
(40, 'As Branquelas', '2004', 0, 'Dois irmãos agentes do FBI, Marcus e Kevin Copeland, acidentalmente evitam que bandidos sejam presos em uma apreensão de drogas. Como castigo, eles são forçados a escoltar um par de socialites nos Hamptons. Porém, quando as meninas descobrem o plano da agência, se recusam a ir. Sem opções, Marcus e Kevin decidem posar como as irmãs, transformando-se de homens afro-americanos em um par de loiras.', 'Branquelas.jfif', '18', '0', 'https://youtu.be/seoJIPLLWp0'),
(41, 'Pantera Negra Wakanda para sempre', '2022', 0, 'Rainha Ramonda, Shuri, M\'Baku, Okoye e Dora Milaje lutam para proteger sua nação das potências mundiais intervenientes após a morte do rei T\'Challa.', 'wakanda.jfif', '14', '0', 'https://youtu.be/oHDi01Yn4tY'),
(42, 'Se Beber, Não Case', '2009', 0, 'Dois dias antes de seu casamento, Doug e três amigos vão de carro até Las Vegas para uma louca e memorável despedida de solteiro. Quando os três padrinhos acordam na manhã seguinte, eles não conseguem se lembrar de nada e notam que Doug desapareceu. Com pouco tempo de sobra, os amigos tentam refazer a noite anterior e encontrar Doug para que possam levá-lo de volta a Los Angeles a tempo de chegar ao altar.', 'case.jfif', '14', '0', 'https://youtu.be/jOQMBfWMMsU'),
(43, 'American Pie', '1999', 0, 'Jim Levenstein, Kevin Myers, Oz Ostreicher e Paul Finch são quatro amigos virgens às vésperas do baile de formatura. Em meio a suas tentativas frustradas de fazer sexo com as namoradas, olhar mulheres nuas na internet e até mesmo atacar uma torta recém-saída do forno, os rapazes fazem um pacto e prometem deixar a virgindade para trás antes do baile de formatura. Agora eles têm 24 horas para cumprir esse acordo.', 'pie.jfif', '16', '0', 'https://youtu.be/2x3oJ3TOZmk'),
(44, 'Adão Negro', '2022', 0, 'O poderoso Adão Negro é libertado de sua tumba para lançar sua justiça cruel sobre a Terra.', 'Adao.jfif', '14', '0', 'https://youtu.be/HluMG9tJXHM'),
(45, 'Sniper Americano', '2014', 0, 'Chris Kyle é um atirador de elite das forças especiais da marinha dos Estados Unidos. Durante a Guerra do Iraque, sua missão é proteger seus companheiros e seu dever faz dele um dos maiores atiradores da história norte-americana. Sua precisão salva inúmeras vidas, mas também o torna um alvo preferencial. Quando Kyle finalmente volta para casa, ele descobre que não tem como deixar a guerra para trás.', 'Sniper.jfif', '16', '0', 'https://youtu.be/ztUAnmhwCWU'),
(46, 'Rastros de um Sequestro', '2017', 0, 'Um homem é raptado e retorna depois de 19 dias sem nenhuma memória do que aconteceu. Então seu irmão, Jin-seok, tenta descobrir a verdade sobre seu desaparecimento.', 'sequestro.jfif', '16', '0', 'https://youtu.be/OSgX2EHAxOU'),
(47, 'O Ovo da Serpente ', '1977', 0, 'Berlim, novembro de 1923. Abel Rosenberg é um trapezista judeu desemprego, que descobriu recentemente que seu irmão, Max, se suicidou. Logo ele encontra Manuela, sua cunhada. Juntos eles sobrevivem com dificuldade à violenta recessão econômica pela qual o país passa. Sem compreender as transformações políticas em andamento, eles aceitam trabalhar em uma clínica clandestina que realiza experiências em seres humanos.', 'serpente.jfif', '16', '0', 'https://youtu.be/3Ibo99NwTJo'),
(48, '007: Um Novo Dia Para Morrer', '2002', 0, 'Após se libertar de uma prisão na Coreia do Norte, James Bond entra em ação para perseguir o maligno Gustav Graves, que está desenvolvendo uma arma de alta tecnologia capaz de colocar o mundo em risco.', '007.jfif', '12', '0', 'https://youtu.be/kCyjw0z-5KI'),
(49, 'Missão: Impossível 3', '2006', 0, 'Aposentado do serviço ativo e treinando recrutas para a Força Missão Impossível, o agente Ethan Hunt enfrenta o inimigo mais difícil de sua carreira: Owen Davian, um negociante internacional de armas e informação que é tão esperto quanto implacável. Davian surge para ameaçar Hunt e tudo o que ele mais estima, incluindo a mulher que tanto ama.', 'impossivel.jfif', '14', '0', 'https://youtu.be/0ypddYNLvvQ'),
(50, 'Os Pinguins do Papai ', '2011', 0, 'Popper é um executivo de sucesso que não tem muito tempo para a família. Mas seu destino muda quando ele recebe seis pinguins de herança do pai, transformando seu apartamento luxuoso em um habitat para os animais.', 'Pinguins.jfif', '10', '0', 'https://youtu.be/uAqriksZ81o'),
(51, 'Vingadores: Ultimato', '2019', 0, 'Após os eventos devastadores de Vingadores: Guerra Infinita, o Universo entrou em destruição por causa do Estalar de Dedos do Thanos, o Titã Louco. Com a ajuda dos heróis sobreviventes, os Vingadores devem se reunir mais uma vez para desfazer as ações de Thanos e restaurar a ordem do universo de uma vez por todas, não importa quais serão as consequências que os aguardam.', 'img/filmes-cards/avengers.jpg', '12', '4,3', 'https://www.youtube.com/embed/gosFJSkg-gk'),
(52, 'Avatar: O Caminho da Água', '2022', 0, 'Doze anos depois de explorar Pandora e se juntar aos Na\'vi, Jake Sully formou uma família com Neytiri e se estabeleceu entre os clãs do novo mundo. No entanto, o retorno de um antigo conhecido em busca de vingança faz com que seja necessária uma brusca mudança para o casal e seus filhos, agora que a guerra está declarada.', 'avatar2.jpg', '14', '4.1', 'https://www.youtube.com/embed/x5pZI-DmtrE '),
(53, 'Venom', '2018', 0, 'Eddie Brock (Tom Hardy) é um jornalista que investiga o misterioso trabalho de um cientista, suspeito de utilizar cobaias humanas em experimentos mortais. Quando ele acaba entrando em contato com um simbionte alienígena, Eddie se torna Venom, uma máquina de matar incontrolável, que nem ele pode conter.', 'venom.jpg', '14', '3,1', 'https://www.youtube.com/embed/EQxCycVTfcU');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `filmes`
--
ALTER TABLE `filmes`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `filmes`
--
ALTER TABLE `filmes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=185;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
