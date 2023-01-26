-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 26-Jan-2023 às 19:15
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
  `id` int(5) NOT NULL,
  `nomebr` varchar(150) NOT NULL,
  `anoLançamento` date NOT NULL,
  `idDiretor` int(11) NOT NULL,
  `idGenero` int(3) NOT NULL,
  `sinopse` varchar(800) NOT NULL,
  `Imagem` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela img/film-cards/
--

INSERT INTO `filmes` (`id`, `nomebr`, `anoLançamento`, `idDiretor`, `idGenero`, `sinopse`, `Imagem`) VALUES
(1, 'Jogada de Amor', '0000-00-00', 0, 0, 'Gianni, mulherengo incurável, aceita o desafio dos amigos e finge ser deficiente para sair com Chiara, uma tenista paraplégica. Pressionado pela irmã a confessar a verdade, o homem descobre que está apaixonado por ela.', 'img/film-cards/jogada.jfif'),
(2, 'A forma da Água', '0000-00-00', 0, 0, 'Década de 60. Em meio aos grandes conflitos políticos e transformações sociais dos Estados Unidos da Guerra Fria, a muda Elisa, zeladora em um laboratório experimental secreto do governo, se encanta com uma criatura fantástica mantida presa e maltratada no local. Para executar um arriscado e apaixonado resgate, ela recorre ao melhor amigo Giles e à colega de turno Zelda, em uma aventura que pode custar muito mais do que o seu emprego.', 'img/film-cards/Agua.jpeg'),
(3, 'La La Land: Cantando Estações', '0000-00-00', 0, 0, 'O pianista Sebastian conhece a atriz Mia, e os dois se apaixonam perdidamente. Em busca de oportunidades para suas carreiras na competitiva Los Angeles, os jovens tentam fazer o relacionamento amoroso dar certo, enquanto perseguem fama e sucesso.', 'img/film-cards/laland.jfif'),
(4, 'Ghost do outro lado da vida', '0000-00-00', 0, 0, 'Sam Wheat é um jovem executivo apaixonado por sua namorada, Molly. Ele acaba morto em um assalto, mas seu espírito não vai para o outro plano e descobre que Molly também corre perigo. Para salvá-la, Sam pede ajuda a uma médium que consegue ouvi-lo.', 'img/film-cards/ghost.jfif'),
(5, 'A Teoria de Tudo ', '0000-00-00', 0, 0, 'Baseado na história de Stephen Hawking, o filme expõe como o astrofísico fez descobertas relevantes para o mundo da ciência, inclusive relacionadas ao tempo. Também retrata seu romance com Jane Wilde, uma estudante de Cambridge que viria a se tornar sua esposa. Aos 21 anos de idade, Hawking descobriu que sofria de uma doença motora degenerativa, mas isso não o impediu de se tornar um dos maiores cientistas da atualidade.', 'img/film-cards/teoria.jfif'),
(6, 'O Lado Bom da Vida', '0000-00-00', 0, 0, 'Depois de uma fase difícil de sua vida, Pat Solitano Jr. está disposto a seguir em frente e reconquistar sua ex-mulher. Através de amigos, ele conhece Tiffany, que lhe promete ajuda na tarefa da reconquista. Uma inesperada ligação começa a uni-los.', 'img/film-cards/vida.jpeg'),
(7, 'Nasce Uma Estrela', '0000-00-00', 0, 0, 'Jackson Maine é um cantor no auge da fama. Um dia, após deixar uma apresentação, ele para em um bar para beber. Lá, Jackson conhece Ally, uma insegura cantora que ganha a vida trabalhando em um restaurante. Ele se encanta por ela e seu talento. Mais tarde, os dois acabam se casando. Ao mesmo tempo em que Ally desponta para o estrelato, Jackson vive uma crise pessoal e profissional devido aos problemas com o álcool. Os momentos opostos acabam por minar o relacionamento amoroso do casal.', 'img/film-cards/star.jpeg'),
(8, 'Como Eu era Antes de Você', '0000-00-00', 0, 0, 'De origem modesta e sem grandes aspirações, a peculiar Louisa Clark é contratada para ser cuidadora de Will, um jovem tetraplégico depressivo e cínico.', 'img/film-cards/antes.jpeg'),
(9, 'Amor de Redenção', '0000-00-00', 0, 0, 'O relacionamento de um jovem casal se choca com as duras realidades da Corrida do Ouro na Califórnia de 1850. Angel, experimentando o amor pela primeira vez e enfrentando demônios que parecem insuperáveis, foge da nova vida que ela acha que não merece. No entanto, durante a busca de Michael pela sua amada, Angel descobre que ela tem o poder de escolher a vida que quer.', 'img/film-cards/Love.jpeg'),
(10, 'A proposta', '0000-00-00', 0, 0, 'Margaret Tate é uma poderosa editora de livros que corre o risco de ser deportada para o Canadá, seu país natal. Para poder permanecer em Nova York, ela diz estar noiva de Andrew, seu assistente. O jovem aceita ajudá-la, mas impõe algumas condições, entre elas ir para o Alasca e conhecer sua família excêntrica. Com um oficial da imigração sempre à espreita, Margaret e Andrew têm que seguir o plano de casamento apesar de diversos problemas.', 'img/film-cards/proposta.jpeg'),
(11, 'O Reino Perdido dos Piratas', '0000-00-00', 0, 0, 'O Reino Perdido dos Piratas é uma série documental centrada nos verdadeiros piratas do Caribe, que, no início do século 18, tinham como missão oficial saquear as riquezas do mundo inteiro.', 'img/film-cards/Pirate.jpeg'),
(12, 'Batman: O Cavaleiro das Trevas', '0000-00-00', 0, 0, 'Com a ajuda de Jim Gordon e Harvey Dent, Batman tem mantido a ordem na cidade de Gotham. Mas um jovem e anárquico criminoso conhecido como Coringa ganha força e decide instaurar um verdadeiro caos na cidade. O justiceiro será testado psicologicamente e fisicamente como nunca fora antes em um confronto bastante pessoal. Cabe a Batman encontrar uma maneira de deter o sádico vilão antes que mais vidas sejam perdidas.', 'img/film-cards/Batman.jpeg'),
(13, 'A Lista De Schindler', '0000-00-00', 0, 0, 'O alemão Oskar Schindler viu na mão de obra judia uma solução barata e viável para lucrar com negócios durante a guerra. Com sua forte influência dentro do partido nazista, foi fácil conseguir as autorizações e abrir uma fábrica. O que poderia parecer uma atitude de um homem não muito bondoso, transformou-se em um dos maiores casos de amor à vida da História, pois este alemão abdicou de toda sua fortuna para salvar a vida de mais de mil judeus em plena luta contra o extermínio alemão.', 'img/film-cards/lista.jfif'),
(14, 'Putin poder sem limites', '0000-00-00', 0, 0, 'Como um menino de São Petersburgo se tornou um poderoso líder mundial? A história da impressionante ascensão de Vladimir Putin ao poder - de coronel da KGB a presidente.', 'img/film-cards/Putin.jpeg'),
(15, 'Cracolândia', '0000-00-00', 0, 0, 'A partir de uma intensa pesquisa, o filme abre um debate a respeito da maior e mais impactante cena de uso aberto de crack do mundo: a \"Cracolândia\" de São Paulo. A obra analisa as causas desse mal e suas progressões, além das táticas de combate já realizadas em São Paulo, abrindo um paralelo com as estratégias usadas em outros países.', 'img/film-cards/Cracolandia.jpeg'),
(16, 'A culpa é das estrelas', '0000-00-00', 0, 0, 'Hazel Grace Lancaster e Augustus Waters são dois adolescentes que se conhecem em um grupo de apoio para pacientes com câncer. Por causa da doença, Hazel sempre descartou a ideia de se envolver amorosamente, mas acaba cedendo ao se apaixonar por Augustus. Juntos, eles viajam para Amsterdã, onde embarcam em uma jornada inesquecível.', 'img/film-cards/Estrelas.jpeg'),
(17, 'O Regresso', '0000-00-00', 0, 0, 'Após ser atacado por um urso, o caçador Hugh Glass é abandonado na floresta por seu companheiro John Fitzgerald. Apesar de muito ferido, Glass consegue sobreviver e vai em busca de vingança.', 'img/film-cards/Regresso.jpeg'),
(18, 'Á Espera de um milagre', '0000-00-00', 0, 0, 'Um carcereiro tem um relacionamento incomum e comovente com um preso que está no corredor na morte: Coffey, um negro enorme, condenado por ter matado brutalmente duas gêmeas de nove anos. Ele tem tamanho e força para matar qualquer um, mas seu comportamento é completamente oposto à sua aparência. Além de ser simples, ingênuo e ter pavor do escuro, ele possui um dom sobrenatural. Com o passar do tempo, o carcereiro aprende que, às vezes, os milagres acontecem nos lugares mais inesperados.', 'img/film-cards/Milagre.jpeg'),
(19, 'Heleno', '0000-00-00', 0, 0, 'O jogador de futebol Heleno de Freitas (Rodrigo Santoro) era considerado o príncipe do Rio de Janeiro dos anos 40, numa época em que a cidade era um cenário de sonhos e promessas. Sendo ao mesmo tempo um gênio explosivo e apaixonado nos campos de futebol, além de galã charmoso nos salões da sociedade carioca, tinha certeza de que seria o maior jogador brasileiro de todos os tempos. Mas seu comportamento arredio, sua indisciplina e a doença (sífilis) foram minando o que poderia ser uma grande jornada de glória, transformando-a numa trágica história. Baseado no livro “Nunca Houve um Homem como Heleno”, de Marcos Eduardo Novaes.', 'img/film-cards/Heleno.jpeg'),
(20, 'Maradona a Mão de Deus', '0000-00-00', 0, 0, 'Indicado ao Oscar de melhor filme internacional, o autobiográfico \'A Mão de Deus\', do italiano Paolo Sorrentino, acompanha a tumultuada jornada de um adolescente e sua família, tomando a passagem de Diego Maradona por Nápoles como pano de fundo histórico.', 'img/film-cards/Maradona.jpeg'),
(21, '12 Anos de escravidão', '0000-00-00', 0, 0, 'Em 1841, Solomon Northup é um negro livre, que vive em paz ao lado da esposa e filhos. Um dia, após aceitar um trabalho que o leva a outra cidade, ele é sequestrado e acorrentado. Vendido como se fosse um escravo, Solomon precisa superar humilhações físicas e emocionais para sobreviver. Ao longo de 12 anos, ele passa por dois senhores, Ford e Edwin Epps, que exploram seus serviços.', 'img/film-cards/Escravidao.jpeg'),
(22, 'À Procura da Felicidade', '0000-00-00', 0, 0, 'Chris enfrenta sérios problemas financeiros e Linda, sua esposa, decide partir. Ele agora é pai solteiro e precisa cuidar de Christopher, seu filho de 5 anos. Chris tenta usar sua habilidade como vendedor para conseguir um emprego melhor, mas só consegue um estágio não remunerado. Seus problemas financeiros não podem esperar uma promoção e eles acabam despejados. Chris e Christopher passam a dormir em abrigos ou onde quer que consigam um refúgio, mantendo a esperança de que dias melhores virão.', 'img/film-cards/Felicidade.jpeg'),
(23, 'A vida é Bela', '0000-00-00', 0, 0, 'Durante a Segunda Guerra Mundial na Itália, o judeu Guido e seu filho Giosué são levados para um campo de concentração nazista. Afastado da mulher, ele precisa usar sua imaginação para fazer o menino acreditar que estão participando de uma grande brincadeira, com o intuito de protegê-lo do terror e da violência ao redor.', 'img/film-cards/Bela.jpeg'),
(24, 'Rogai por nos', '0000-00-00', 0, 0, 'Jornalista investiga uma jovem com deficiência auditiva que foi visitada pela Virgem Maria e, repentinamente, passa a ouvir, falar e curar os enfermos.', 'img/film-cards/Rogai.jpeg'),
(25, 'Rec', '0000-00-00', 0, 0, 'Uma jornalista e seu cinegrafista filmam o surto de uma doença que transforma humanos em canibais perversos.', 'img/film-cards/Rec.jpeg'),
(26, 'A Bruxa', '0000-00-00', 0, 0, 'Em uma fazenda no século 17, uma histeria religiosa toma conta de uma família que acusa a filha mais velha pelo desaparecimento do seu irmão ainda bebê.', 'img/film-cards/Bruxa.jpeg'),
(27, 'A Entidade 3', '0000-00-00', 0, 0, 'No sótão da nova casa ele descobre antigos rolos de filme, que trazem imagens de pessoas sendo mortas. Intrigado com o que elas representam e com um estranho símbolo presente nas imagens, ele e sua família logo passam a correr sério risco de morte.', 'img/film-cards/Entidade.jpeg'),
(28, 'Parasita', '0000-00-00', 0, 0, 'Toda a família de Ki-taek está desempregada, vivendo em um porão sujo e apertado. Por obra do acaso, ele começa a dar aulas de inglês para uma garota de família rica. Fascinados com a vida luxuosa destas pessoas, pai, mãe e filhos bolam um plano para se infiltrar também na abastada família, um a um. No entanto, os segredos e mentiras necessários à ascensão social cobram o seu preço.', 'img/film-cards/Parasita.jfif'),
(29, 'A luz do Diabo', '0000-00-00', 0, 0, 'Lançada na linha de frente espiritual, uma jovem freira se encontra em uma batalha pela alma de uma garota que está possuída pelo mesmo demônio que atormentou sua própria mãe anos antes.', 'img/film-cards/LuzdoDiabo.jfif'),
(30, 'Quero matar meu chefe 2', '0000-00-00', 0, 0, 'Nick, Kurt e Dale estão cansados de receber ordens e abrem seu próprio negócio, de forma que eles mesmos sejam seus chefes. No entanto, quando a companhia começa a deslanchar, um investidor os engana e rouba a empresa. Sem ter como recorrer por meios legais, o trio decide partir para um ato desesperado: sequestrar o filho do investidor e, com o dinheiro do resgate, pagar a dívida contraída e manter a empresa.', 'img/film-cards/chefe.jfif'),
(31, 'Democracia em vertigem', '0000-00-00', 0, 0, 'A cineasta Petra Costa testemunha a ascensão e queda de um grupo político e a polarização do Brasil.', 'img/film-cards/democracia.jfif'),
(32, 'SCREAMERS', '0000-00-00', 0, 0, 'Tom e Chris, dois gurus da internet, recebem um vídeo de uma menina num túmulo. Ao perceberem que a jovem é muito parecida com alguém que está desaparecida há alguns anos, eles decidem investigar o caso. Mas o que não esperavam é que seriam confrontados pelo caos.', 'img/film-cards/Screamers.jfif'),
(33, 'A morte do demonio', '0000-00-00', 0, 0, 'Mia é uma viciada em drogas que, para vencer seus demônios pessoais, vai com seu irmão David, a namorada do irmão, Natalie, e os amigos de infância Olivia e Eric até uma cabana rústica, que pertence à família. Assim que chegam, descobrem que a cabana foi invadida e que o porão parece uma espécie de altar, rodeado por animais mumificados, onde a descoberta de um Livro dos Mortos invoca forças demoníacas. A presença do mal os possui até que apenas um é deixado a lutar pela sobrevivência.\r\n', 'img/film-cards/Demonio.jfif'),
(34, 'Sobrenatural', '0000-00-00', 0, 0, 'Josh e Renai se mudam com a família para uma casa maior. Lá, o filho Dalton sofre um estranho acidente e entra em coma. Enquanto eles tentam salvar o menino, entidades malignas atormentam a família.', 'img/film-cards/sobrenatural.jfif'),
(35, 'Até que a sorte nos separe', '0000-00-00', 0, 0, 'Tino é um pai de família que tem sua rotina transformada ao ganhar na loteria. Em dez anos, o fanfarrão e sua mulher Jane gastam todo o dinheiro com uma vida de ostentação. Ao descobrir que está falido, ele é obrigado a aceitar a ajuda de Amauri, seu vizinho, um consultor financeiro nada divertido e extremamente econômico. Quando Jane engravida do terceiro filho, Tino faz de tudo para esconder da esposa que estão na lona, pois a recomendação médica é que a grávida evite fortes emoções.', 'img/film-cards/Sorte.jfif'),
(36, 'It a coisa', '0000-00-00', 0, 0, 'Um grupo de crianças se une para investigar o misterioso desaparecimento de vários jovens em sua cidade. Eles descobrem que o culpado é Pennywise, um palhaço cruel que se alimenta de seus medos e cuja violência teve origem há vários séculos.', 'img/film-cards/it.jfif'),
(37, 'Homem-Aranha: Sem Volta para Casa', '0000-00-00', 0, 0, 'Peter Parker tem a sua identidade secreta revelada e pede ajuda ao Doutor Estranho. Quando um feitiço para reverter o evento não sai como o esperado, o Homem-Aranha e seu companheiro dos Vingadores precisam enfrentar inimigos de todo o multiverso.', 'img/film-cards/Nowayhome.jfif'),
(38, 'V de Vingança', '0000-00-00', 0, 0, 'Após uma guerra mundial, a Inglaterra é ocupada por um governo fascista e vive sob um regime totalitário. Na luta pela liberdade, um vigilante, conhecido apenas como V, utiliza-se de táticas terroristas para enfrentar os opressores da sociedade. V salva uma jovem chamada Evey da polícia secreta e encontra nela uma nova aliada em busca de liberdade e justiça para o seu país.', 'img/film-cards/vendetta.jfif'),
(39, 'O filho do máscara', '0000-00-00', 0, 0, 'Tim Avery, um caricaturista aspirante, se vê em um predicamento quando seu cachorro Otis tromba com a máscara de Loki, que estava dada como perdida. Depois de conceber um filho \"nascido de uma máscara\", ele se dá conta da loucura de criar uma criança.', 'img/film-cards/maskara.jfif'),
(40, 'As branquelas', '0000-00-00', 0, 0, 'Dois irmãos agentes do FBI, Marcus e Kevin Copeland, acidentalmente evitam que bandidos sejam presos em uma apreensão de drogas. Como castigo, eles são forçados a escoltar um par de socialites nos Hamptons. Porém, quando as meninas descobrem o plano da agência, se recusam a ir. Sem opções, Marcus e Kevin decidem posar como as irmãs, transformando-se de homens afro-americanos em um par de loiras.', 'img/film-cards/Branquelas.jfif'),
(41, 'Pantera Negra Wakanda para sempre', '0000-00-00', 0, 0, 'Rainha Ramonda, Shuri, M\'Baku, Okoye e Dora Milaje lutam para proteger sua nação das potências mundiais intervenientes após a morte do rei T\'Challa.', 'img/film-cards/wakanda.jfif'),
(42, 'Se Beber, Não Case', '0000-00-00', 0, 0, 'Dois dias antes de seu casamento, Doug e três amigos vão de carro até Las Vegas para uma louca e memorável despedida de solteiro. Quando os três padrinhos acordam na manhã seguinte, eles não conseguem se lembrar de nada e notam que Doug desapareceu. Com pouco tempo de sobra, os amigos tentam refazer a noite anterior e encontrar Doug para que possam levá-lo de volta a Los Angeles a tempo de chegar ao altar.', 'img/film-cards/case.jfif'),
(43, 'American Pie', '0000-00-00', 0, 0, 'Jim Levenstein, Kevin Myers, Oz Ostreicher e Paul Finch são quatro amigos virgens às vésperas do baile de formatura. Em meio a suas tentativas frustradas de fazer sexo com as namoradas, olhar mulheres nuas na internet e até mesmo atacar uma torta recém-saída do forno, os rapazes fazem um pacto e prometem deixar a virgindade para trás antes do baile de formatura. Agora eles têm 24 horas para cumprir esse acordo.', 'img/film-cards/pie.jfif'),
(44, 'Adão Negro', '0000-00-00', 0, 0, 'O poderoso Adão Negro é libertado de sua tumba para lançar sua justiça cruel sobre a Terra.', 'img/film-cards/Adao.jfif'),
(45, 'sniper americano', '0000-00-00', 0, 0, 'Chris Kyle é um atirador de elite das forças especiais da marinha dos Estados Unidos. Durante a Guerra do Iraque, sua missão é proteger seus companheiros e seu dever faz dele um dos maiores atiradores da história norte-americana. Sua precisão salva inúmeras vidas, mas também o torna um alvo preferencial. Quando Kyle finalmente volta para casa, ele descobre que não tem como deixar a guerra para trás.', 'img/film-cards/Sniper.jfif'),
(46, 'Rastros de um sequestro', '0000-00-00', 0, 0, 'Um homem é raptado e retorna depois de 19 dias sem nenhuma memória do que aconteceu. Então seu irmão, Jin-seok, tenta descobrir a verdade sobre seu desaparecimento.', 'img/film-cards/sequestro.jfif'),
(47, 'O ovo da serpente', '0000-00-00', 0, 0, 'Berlim, novembro de 1923. Abel Rosenberg é um trapezista judeu desemprego, que descobriu recentemente que seu irmão, Max, se suicidou. Logo ele encontra Manuela, sua cunhada. Juntos eles sobrevivem com dificuldade à violenta recessão econômica pela qual o país passa. Sem compreender as transformações políticas em andamento, eles aceitam trabalhar em uma clínica clandestina que realiza experiências em seres humanos.', 'img/film-cards/serpente.jfif'),
(48, '007 - Um Novo Dia Para Morrer', '0000-00-00', 0, 0, 'Após se libertar de uma prisão na Coreia do Norte, James Bond entra em ação para perseguir o maligno Gustav Graves, que está desenvolvendo uma arma de alta tecnologia capaz de colocar o mundo em risco.', 'img/film-cards/007.jfif'),
(49, 'Missão: Impossível 3', '0000-00-00', 0, 0, 'Aposentado do serviço ativo e treinando recrutas para a Força Missão Impossível, o agente Ethan Hunt enfrenta o inimigo mais difícil de sua carreira: Owen Davian, um negociante internacional de armas e informação que é tão esperto quanto implacável. Davian surge para ameaçar Hunt e tudo o que ele mais estima, incluindo a mulher que tanto ama.', 'img/film-cards/impossivel.jfif'),
(50, 'Os pinguins do papai', '0000-00-00', 0, 0, 'Popper é um executivo de sucesso que não tem muito tempo para a família. Mas seu destino muda quando ele recebe seis pinguins de herança do pai, transformando seu apartamento luxuoso em um habitat para os animais.', 'img/film-cards/Pinguins.jfif');

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
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=179;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;