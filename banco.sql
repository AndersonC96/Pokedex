-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 28-Fev-2021 às 03:42
-- Versão do servidor: 10.4.17-MariaDB
-- versão do PHP: 8.0.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `pokedex`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `pokemons`
--

CREATE TABLE `pokemons` (
  `numero_dex` int(11) NOT NULL,
  `nome` varchar(100) DEFAULT '',
  `anterior` int(11) DEFAULT NULL,
  `img` varchar(259) DEFAULT NULL,
  `descricao` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `pokemons`
--

INSERT INTO `pokemons` (`numero_dex`, `nome`, `anterior`, `img`, `descricao`) VALUES
(1, 'Bulbasaur', NULL, '001.png', 'O bulbo em suas costas está cheio de nutrientes. Nele, Bulbasaur armazena suas energias. O bulbo vai crescendo à medida que envelhece porque ele absorve os raios de sol.'),
(2, 'Ivysaur', 1, '002.png', 'A luz solar fará a flor em suas costas crescer. Conforme Ivysaur for crescendo, essa flor irá desabrochar. Ela irá soltar um doce aroma quando florescer.'),
(3, 'Venusaur', 2, '003.png', 'A luz solar que a flor de suas costas absorve produz energia para seu corpo. Por esta razão, ele fica mais forte no verão. O aroma dessa flor pode acalmar as emoções das pessoas.'),
(4, 'Charmander', NULL, '004.png', 'A chama que possui na ponta de seu rabo mostra a força de sua vida. Se ele estiver fraco, a chama irá diminuir. Quando está saudável, a chama brilhará intensamente.'),
(5, 'Charmeleon', 4, '005.png', 'Gosta muito de brigas, por isso busca constantemente por adversários. Ele ataca com suas garras afiadas e usando sua cauda como chicote de fogo. Pode soltar chamas azuis quando muito animado.'),
(6, 'Charizard', 5, '006.png', 'Seu fogo é quente o suficiente para derreter rochas. Quando nervoso, a chama em sua cauda queimará intensamente. É orgulhoso e voa pelos céus em busca de adversários poderosos.'),
(7, 'Squirtle', NULL, '007.png', 'Quando nasce, seu casco é mole, mas logo endurece. Cutucando com o dedo fará os pedaços de seu casco saltar. Ele entra dentro do casco quando se sente ameaçado.'),
(8, 'Wartortle', 7, '008.png', 'É muito inteligente, sabe controlar as orelhas e o rabo para manter o equilíbrio na água e nadar em altas velocidades. Seu rabo felpudo é símbolo de longevidade'),
(9, 'Blastoise', 8, '009.png', 'O casco em suas costas possuem canhões que jorram água pressurizada forte o suficiente para perfurar uma parede de concreto. Também usa o seu casco pesado para atacar.'),
(10, 'Caterpie', NULL, '010.png', 'Como forma de proteção, Caterpie libera um cheiro horrível através de suas antenas. Suas patas pegajosas são capazes de andar em qualquer tipo de superfície.'),
(11, 'Metapod', 10, '011.png', 'Este pokémon é totalmente vulnerável a ataques enquanto seu casulo é mole, correndo risco de expor seu corpo frágil e sensível. Por isso, fica endurecendo o seu casulo para se proteger.'),
(12, 'Butterfree', 11, '012.png', 'Gosta de coletar mel das plantas. Suas asas batem tão rapidamente que acaba deixando um rastro de poeira tóxica pelo ar. As asas resistem a água, permitindo-o voar em fortes chuvas.'),
(13, 'Weedle', NULL, '013.png', 'É frequentemente encontrado em florestas, comendo folhas. Em sua cabeça existe um ferrão afiado e venenoso. Qualquer um pode se machucar com ele se não tomar cuidado onde pisa.'),
(14, 'Kakuna', 13, '014.png', 'Enquanto aguarda sua evolução, os Kakunas vivem agarrados em árvores para se esconder dos predadores. Embora ainda seja um casulo, consegue se mexer um pouco.'),
(15, 'Beedrill', 14, '015.png', 'Possui dois grandes ferrões nos braços e um em seu rabo. O ferrão de seu rabo é o mais venenos. Costumam voar em altas velocidades e atacar em enxame.'),
(16, 'Pidgey', NULL, '016.png', 'Não gosta muito de lutar. Em vez disso, prefere bater as asas próximo ao chão para levantar uma poeira de areia e com isso afastar o inimigo. Possui um ótimo senso de direção.'),
(17, 'Pidgeotto', 16, '017.png', 'Ele é muito protetor de seu território, sempre irá atacar brutalmente qualquer intruso. Possui uma ótima visão e garras bastante desenvolvidas, essenciais para caçar suas presas.'),
(18, 'Pidgeot', 17, '018.png', 'É capaz de voar numa rapidez incrível, sendo mais veloz que a velocidade do som. Com seus músculos bem desenvolvidos, consegue fazer fortes furacões ao bater suas asas.'),
(19, 'Rattata', NULL, '019.png', 'Morde qualquer coisa quando está atacando. Vive procurando objetos duros para roer. Consegue viver em qualquer lugar e reproduzir muito depressa.'),
(20, 'Raticate', 19, '020.png', 'Para assustar os adversários, ele posiciona-se de pé e mostra as presas de sua boca. Suas presas são fortes, capazes até mesmo de roer uma parede de concreto.'),
(21, 'Spearow', NULL, '021.png', 'Ele bate suas asas sobre a grama para encontrar insetos. Quando encontra, puxa-os do chão com o seu bico. Suas asas são curtas, por isso não pode voar por longas distâncias.'),
(22, 'Fearow', 21, '022.png', 'Fearow é famoso por seu pesçoco longo e bico comprido. Eles foram desenvolvidos especialmente para ajudá-lo a apanhar presas no solo ou na água. Consegue manter-se voando no céu por bastante tempo sem pousar.'),
(23, 'Ekans', NULL, '023.png', 'Rasteja silenciosamente pelo chão. Alimenta-se de ovos nos ninhos de pokémons pássaros. Ele sente o cheiro com sua língua. Suas mandíbulas são capazes de devorar seres bem maiores que ele.'),
(24, 'Arbok', 23, '024.png', 'As marcas no pescoço de Arbok podem ser diferentes de região para região. Elas indicam o quão venenoso este pokémon é. Ele também pode sufocar suas vítimas enrolando-se em torno delas.'),
(25, 'Pikachu', NULL, '025.png', 'Para ter uma melhor percepção de tudo o que está em sua volta, mantém o seu rabo levantado. Ele armazena energia elétrica dentro de suas bochechas vermelhas.'),
(26, 'Raichu', 25, '026.png', 'Pode tornar-se agressivo caso acumule muita eletricidade no corpo. Pode dar choques de até dez mil volts. Ele mantém o seu longo rabo no solo para controlar seus raios elétricos.'),
(27, 'Sandshrew', NULL, '027.png', 'Faz sua toca no subterrâneo, longe de água. Geralmente sai apenas para caçar. Se ele cair de uma grande altura, consegue se salvar enrolando o corpo e rolando como uma bola.'),
(28, 'Sandslash', 27, '028.png', 'É habilidoso para fazer arranhões com suas garras. Se elas quebrarem, irão crescer de novo em um dia. Suas costas possuem espinhos muito duros, usados como sua defesa.'),
(29, 'Nidoran♀', NULL, '029.png', 'As fêmeas de Nidoran possuem chifres menores. Embora pequena, deve se ter muito cuidado com os espinhos venenosos de seu corpo. Ela não gosta muito de lutar.'),
(30, 'Nidorina', 29, '030.png', 'O chifre em sua cabeça desenvolve-se lentamente. Ela prefere golpear com ataque físicos, como mordidas e arranhões. É dócil, mas não hesita em atacar quando perturbada.'),
(31, 'Nidoqueen', 30, '031.png', 'Duras escamas crescem no corpo robusto deste pokémon. Isso lhe permite realizar movimentos brutais. Ela defende a sua cria com sua própria vida.'),
(32, 'Nidoran♂', NULL, '032.png', 'Ele endurece suas orelhas para sentir o perigo. Com elas, consegue escutar o mais leve dos sons. Quanto maior for o seu chifre, mais venenoso ele será.'),
(33, 'Nidorino', 32, '033.png', 'Possui um chifre mais duro que diamante. Caso ele sinta alguma presença hostil, todas as farpas de suas costas irão erguer-se de uma só vez. Suas picadas podem ser fatais.'),
(34, 'Nidoking', 33, '034.png', 'Utiliza-se de sua cauda poderosa para bater e enrolar seus oponentes. Combates corpo a corpo são a sua especialidade. Seu chifre é capaz de perfurar diamantes.'),
(35, 'Clefairy', NULL, '035.png', 'A luz lunar que pode absorver com suas asas aparentemente lhe dá a capacidade de voar. Raramente é encontrado, vive em locais específicos. Costumam sair de seus esconderijos em noites de lua cheia para dançar.'),
(36, 'Clefable', 35, '036.png', 'Um pokémon muito tímido, foge sempre que percebe estar sendo observado. Possui uma audição bem aguçada. Ele dá leves saltos para se locomover, permitindo-o passear sobre lagos em noites de luar.'),
(37, 'Vulpix', NULL, '037.png', 'Quando nasce, possui apenas um rabo. Ele vai se dividindo conforme for envelhecendo. Astuto, para fugir do perigo, finge estar debilitado e engana o adversário.'),
(38, 'Ninetales', 37, '038.png', 'É extremamente vingativo. Dizem que cairá uma maldição de mil anos sobre aquele que puxar uma de suas caudas por brincadeira. Acredita-se que cada uma de suas nove caudas possui um poder místico especial.'),
(39, 'Jigglypuff', NULL, '039.png', 'Seus grandes olhos são usados para encatar o inimigo. Depois, canta uma bela melodia que coloca o adversário para dormir. Ele pode inflar o corpo como um balão e sair flutuando.'),
(40, 'Wigglytuff', 39, '040.png', 'Sua pele é macia e seu corpo é bastante flexível. Quando está com raiva, consegue inalar o ar repetidas vezes, inflando seu corpo cada vez mais.'),
(41, 'Zubat', NULL, '041.png', 'Sua audição é bem apurada. Para identificar aquilo que estiver em seu caminho, Zubat solta ondas ultra-sônicas. Isso lhe permite voar com segurança mesmo em locais escuros.'),
(42, 'Golbat', 41, '042.png', 'Com os dentes bastante afiados, morde suas vítimas para sugar o sangue. Ele não irá parar de drenar a energia da vítima até estar satisfeito. Se chupa muito sangue, fica pesado e voa desajeitadamente.'),
(43, 'Oddish', NULL, '043.png', 'Durante o dia costuma ficar enterrado no chão, deixando apenas as suas folhas expostas. Ele irá berrar caso alguém tente arrancá-lo de lá. À noite sai para espalhar suas sementes.'),
(44, 'Gloom', 43, '044.png', 'O fedor proveniente da flor de sua cabeça pode ser sentido à distância. Ele fede mais ainda quando se sente ameaçado. A baba que escorre de sua boca na verdade é um néctar.'),
(45, 'Vileplume', 44, '045.png', 'Quanto maiores forem as suas pétalas, mais tóxico será o pólen contido nelas. Elas são tão pesadas que é difícil de aguentar. Ao sacudir as pétalas, o ar ao seu redor fica amarelo.'),
(46, 'Paras', NULL, '046.png', 'Cogumelos parasita crescem nas costas de Paras. Eles absorvem nutrientes deste hospedeiro. São altamente valorizados como remédios para prolongar a vida.'),
(47, 'Parasect', 46, '047.png', 'Parasect é controlado pelo cogumelo que cresceu em suas costas. Graças a ele, vive em locais úmidos e escuros. Ele solta esporos venenosos por onde passa.'),
(48, 'Venonat', NULL, '048.png', 'Seus olhos grandes podem atuar como radares. Eles são compostos por diversos outros olhos menores. São ótimos para enxergar no escuro ou ver coisas minúsculas.'),
(49, 'Venomoth', 48, '049.png', 'Quando ele ataca, bate suas grandes asas escuras violentamente para espalhar seu pó venenoso por todos os lados. Se suas asas tiverem uma coloração mais clara, seu pó é paralisante.'),
(50, 'Diglett', NULL, '050.png', 'Passa a maior parte do tempo enterrado no subsolo. Seu método de escavação pode deixar um campo perfeito para o cultivo. Ele se alimenta das raízes das árvores.'),
(51, 'Dugtrio', 50, '051.png', 'Dugtrio são realmente trigêmeos que surgiram de um corpo. Como resultado, cada trigêmeo pensa exatamente como os outros dois trigêmeos. Eles trabalham cooperativamente para escavar sem parar. Ele desencadeia terremotos gigantes cavando a 96 km abaixo da terra.'),
(52, 'Meowth', NULL, '052.png', 'Meowth retira suas garras afiadas das patas para silenciosamente esgueirar-se furtivamente sem deixar nenhum rastro. Por alguma razão, este pokémon ama moedas brilhantes.'),
(53, 'Persian', 52, '053.png', 'Tem um temperamento vicioso. Cuidado se ele levanta a cauda . É um sinal de que ele está prestes a atacar e morder. Embora seu pelo tenha muitos admiradores, é difícil criar como um animal de estimação por causa de sua mesquinhez.'),
(54, 'Psyduck', NULL, '054.png', 'Oprimido por habilidades enigmáticas, ele sofre uma dor de cabeça constante. Quando sua dor de cabeça chega ao ápice, ele usa seus misteriosos poderes psíquicos para mandar pra longe o que está o irritando.'),
(55, 'Golduck', 54, '055.png', 'Ele é visto nadando de forma dinâmica e elegante usando seus membros e nadadeiras bem desenvolvidos. É constantemente confundido com o Kappa, um assassino monstro japonês.'),
(56, 'Mankey', NULL, '056.png', 'Vive em colônias nas copas das árvores. Se você enfurecer um deles, vai ter que lidar com um bando furioso de Mankey. Não é seguro se aproximar dele quando está violento e furioso por nenhum motivo, pois quando isso acontece, ele não consegue distinguir amigos de inimigos.'),
(57, 'Primeape', 56, '057.png', 'Se você se aproximar enquanto ele dorme você pode acabar acordando-o, começando assim uma furiosa caçada com esse primata bêbado de sono. Ele persegue qualquer um que faça contato visual.'),
(58, 'Growlithe', NULL, '058.png', 'Um pokémon naturalmente leal, fiel e obediente. Ele permanece imóvel até receber ordem de seu treinador. Se ordenado, ele não hesitará em atacar inimigos maiores e mais fortes, porém seu senso de justiça impede que ele ataque imediatamente oponentes mais fracos e menores.'),
(59, 'Arcanine', 58, '059.png', 'Este lendário pokémon chinês é considerado magnífico. Muitas pessoas se encantam por sua enorme juba. Seu imponente latido transmite uma ideia de líder. Todos que ouvem não podem fazer nada além de se ajoelhar para sua majestade.'),
(60, 'Poliwag', NULL, '060.png', 'Sua pele é tão fina que se você prestar bastante atenção você consegue enxergar seus órgãos internos. Tem dificuldade para andar com seus pés recém-crescidos e por isso ele tropeça frequentemente.'),
(61, 'Poliwhirl', 60, '061.png', 'A espiral na sua barriga gira sutilmente. Olhar para essa espiral pode te deixar desde sonolento até, no máximo, hipnotizado. Suas duas pernas são bem desenvolvidas, logo ele não tropeça mais. Pode viver tranquilamente na terra, mas ele prefere viver na água.'),
(62, 'Poliwrath', 61, '062.png', 'Poliwrath tem um corpo altamente desenvolvido e não importa o quão exaustivo é o trabalho, seus músculos nunca ficam cansados. É tão incansavelmente forte que ele pode nadar de um lado ao outro do Oceano Pacífico sem fazer muito esforço.'),
(63, 'Abra', NULL, '063.png', 'Usar poderes psíquicos causa tanta tensão em seu cérebro que ele precisa dormir 18 horas por dia. Por essa razão, é difícil ver um Abra usando qualquer golpe diferente do Teleportar.'),
(64, 'Kadabra', 63, '064.png', 'Logo após evoluir seu poder mental aumenta deixando ele utilizar vários golpes psíquicos poderosos, porém que precisam de maior concentração. Ele olha para a sua colher de prata para esvaziar sua mente e acaba emitindo mais ondas alfa.'),
(65, 'Alakazam', 64, '065.png', 'Dizem que as colheres em suas mãos são frutos de seus poderes psíquicos. Seu cérebro é tão grande que dizem que é o pokémon mais inteligente que já existiu.'),
(66, 'Machop', NULL, '066.png', 'Embora seja baixinho, ele é forte o suficiente para levantar e arremessar uma série de Geodudes de uma só vez. Para ficar mais forte, ele ergue repetidamente um Graveler usando uma mão só.'),
(67, 'Machoke', 66, '067.png', 'O poder ilimitado de Machoke é muito perigoso, por isso usa um cinto que suprime a sua energia. Usando esse poder, ele ajuda as pessoas com trabalhos pesados. Ele é muito procurado por pedreiros e engenheiros.'),
(68, 'Machamp', 67, '068.png', 'Seus quatro braços musculosos acertam seus inimigos com socos potentes e cortes em uma velocidade estonteante. Ele pode dar até mil socos em apenas dois segundos.'),
(69, 'Bellsprout', NULL, '069.png', 'Ele planta seus pés profundamente no subsolo para se reabastecer com água. Prefere ambientes quentes e úmidos. Ele rapidamente captura sua presa com suas vinhas.'),
(70, 'Weepinbell', 69, '070.png', 'Um pokémon que parece ser uma planta para capturar presas desavisadas nocauteando-as com um pó venenoso. Os músculos de sua boca são bastante desenvolvidos.'),
(71, 'Victreebel', 70, '071.png', 'Ele tem uma “piscina” em sua boca com um fluido com cheiro de mel que é na verdade um ácido que digere qualquer coisa. O ácido que se dissolveu muitas presas se torna mais doce, tornando ainda mais eficiente para atrai-las.'),
(72, 'Tentacool', NULL, '072.png', 'Seu corpo é praticamente composto de água. Ele dispara feixes estranhos de seus olhos que parecem cristais. Incontáveis pescadores são feridos por seu ferrão todo dia.'),
(73, 'Tentacruel', 72, '073.png', 'Ele estende seus 80 tentáculos para formar redes de cerco venenoso que é difícil escapar. Seus tentáculos absorvem a água e esticam quase infinitamente para prender suas presas e inimigos.'),
(74, 'Geodude', NULL, '074.png', 'Muitos vivem por trilhas das montanhas e permanecem semi-enterrados, mantendo um olho em escaladores. Essa atitude faz com que sejam confundidos por pedras na maioria das vezes.'),
(75, 'Graveler', 74, '075.png', 'Ele caminha muito devagar, logo ele rola para se locomover. Ele não presta atenção em nenhum objeto que passa em seu caminho. Com uma natureza livre e indiferente, ele não se importaria se pedaços quebram enquanto ele desce montanhas.'),
(76, 'Golem', 75, '076.png', 'Nem dinamite pode explodir seu resistente corpo de pedra. Quando está rolando, nada pode pará-lo e ele não para por nada. Ele pode facilmente rolar por cima da lava sem se queimar ou afundar.'),
(77, 'Ponyta', NULL, '077.png', 'Exímios corredores, eles sempre ganham corridas de velocidade. Porém se competir com um Ponyta bebê dificilmente irá perder. Seu fogo só queima quem com ele teima.'),
(78, 'Rapidash', 77, '078.png', 'Com uma grande aceleração, ele alcança sua velocidade máxima, 67 m/s, em apenas 10 passos. Com a sua juba flamejando ferozmente, ele corre como se fosse uma flecha.'),
(79, 'Slowpoke', NULL, '079.png', 'Ele é tão inteligente quanto um Wobbuffet e tão veloz quanto um Caterpie. Apesar de lerdo, ele é muito habilidoso com sua cauda. Não sente dor se alguém morder sua cauda.'),
(80, 'Slowbro', 79, '080.png', 'Quando um Shellder morde a cauda de Slowpoke ele se torna um lesado Slowbro, se o Shellder é retirado durante uma batalha ele volta a ser um Slowpoke.'),
(81, 'Magnemite', NULL, '081.png', 'Ele usa ondas eletromagnéticas para flutuar, porém isso não impede que ele receba um enorme dano de golpes terrestres. Alimenta-se de eletricidade.'),
(82, 'Magneton', 81, '082.png', 'Algumas lendas dizem que ele é resultado de uma junção de três Magnemite nível 30 unidos pelo magnetismo da Pedra do Trovão. Um grupo de Magneton pode causar uma tempestade magnética. Evolui ao entrar em contato com o magnetismo de certos lugares.'),
(83, 'Farfetch\'d', NULL, '083.png', 'Seu alho-poró o permite usar golpes como Furry Cutter, Poison Jab e Leaf Blade. Ele nunca vai a luta sem seu fiel toco de alho-poró. Ele só come seu alho-poró em casos de emergência e mesmo assim logo acha um substituto.'),
(84, 'Doduo', NULL, '084.png', 'Os cérebros de sua cabeça compartilham emoções por telepatia. Eles também compartilham a fome e estão constantemente brigando entre si por comida.'),
(85, 'Dodrio', 84, '085.png', 'Quando Doduo evolui, uma de suas cabeças se divide em duas. Essas duas cabeças compartilham as mesmas memórias. Ele pode correr até uns 18 m/s. Suas cabeças representam alegria, fúria e tristeza.'),
(86, 'Seel', NULL, '086.png', 'O chifre de sua cabeça é bastante duro, capaz de perfurar o mar congelado. Adora viver num clima frio. Não consegue andar bem em terra, porém é um ótimo nadador.'),
(87, 'Dewgong', 86, '087.png', 'Armazena uma energia térmica em seu corpo. Mesmo num frio intenso permanece ileso, conseguindo nadar poderosamente em águas geladas. Consegue se camuflar bem na neve.'),
(88, 'Grimer', NULL, '088.png', 'As plantas deixarão de nascer por onde passar. Enquanto caminha, pedaços de seu corpo podem ficar para trás, formando novos Grimers. Gosta de viver nos esgotos das cidades.'),
(89, 'Muk', 88, '089.png', 'Um pokémon sujo e feito de lama. É tão tóxico que mesmo suas pegadas contém veneno. Seu cheiro é tão horrível que pode causar desmaios.'),
(90, 'Shellder', NULL, '090.png', 'Sua concha dura repele qualquer tipo de ataque. É vulnerável somente quando sua concha é aberta. Grãos de areia que caem em sua concha podem se tornar pérolas com os fluídos de seu corpo.'),
(91, 'Cloyster', 90, '091.png', 'Sua concha é tão dura quanto diamante, ele a utiliza como forma de defesa. Ele agarra seus inimigos fechando a concha. Pode lançar vários espinhos a partir dela. Ninguém nunca viu como são suas entranhas.'),
(92, 'Gastly', NULL, '092.png', 'Seu corpo é todo feito de gás. Nunca irão surgir quando venta muito. Sua pele é venenosa e pode enfraquecer qualquer um que entrar em contato.'),
(93, 'Haunter', 92, '093.png', 'Consegue atravessar paredes e usar sua língua para paralizar os outros. Se você tropeçar do nada ou escutar um ruído quando ninguém está por perto, pode ser um Haunter aprontando.'),
(94, 'Gengar', 93, '094.png', 'Em noites de lua cheia, este pokémon sai para imitar as sombras das pessoas e assustá-las. Caso você sinta um calafrio repentino, quer dizer que há um Gengar por perto.'),
(95, 'Onix', NULL, '095.png', 'Conforme vai crescendo, seu corpo rochoso vai ficando cada vez mais duro. Ele consegue cavar no solo em uma alta velocidade, girando e contorcendo as pedras de seu corpo para isso.'),
(96, 'Drowzee', NULL, '096.png', 'Coloca seus oponentes para dormir e em seguida come os seus sonhos. Algumas vezes acaba ficando doente por comer sonhos ruins.'),
(97, 'Hypno', 96, '097.png', 'Caso você encontrar um desses, evite o contato olho a olho. Ele vai tentar fazer dormir usando seu pêndulo. Seus poderes hipnóticos são bastante desenvolvidos.'),
(98, 'Krabby', NULL, '098.png', 'Suas pinças, além de serem uma arma poderosa, servem de equilíbrio para andar de lado. Se uma pinça cair, irá nascer uma nova e mais resistente. Ele fica espumando a boca quando se sente ameaçado.'),
(99, 'Kingler', 98, '099.png', 'Sua garra cresceu maciçamente e tão duro quanto aço. Porém, por ser muito pesada, é difícil manuseá-la. Ela tem uma potência de dez mil cavalos.'),
(100, 'Voltorb', NULL, '100.png', 'Normalmente encontrados em usinas de energia. Muitas vezes é confundido com uma pokébola e acaba dando choque em pessoas. Ele pode até explodir em alguns casos.'),
(101, 'Electrode', 100, '101.png', 'Ele armazena uma quantidade abundante de energia elétrica dentro de seu corpo. Mesmo um pequeno choque pode fazê-lo explodir. São muito usados como geradores de energia em usinas de força.'),
(102, 'Exeggcute', NULL, '102.png', 'Este pokémon é formado por seis ovos comunicam-se entre si por telepatia. Quando aparecem cada vez mais rachaduras nos ovos, é sinal que Exeggcute está para evoluir.'),
(103, 'Exeggutor', 102, '103.png', 'Exeggutor pode ter de 3 a 6 cabeças, dependendo do ambiente onde vive. Apesar de pensarem independentemente, suas cabeças nunca vão brigar. Se uma de suas cabeças crescer muito, ela cai e se torna um Exeggcute.'),
(104, 'Cubone', NULL, '104.png', 'Sua cabeça é coberta pelo crânio de sua falecida mãe. Ele chora sempre que se lembra se sua mãe. As marcas desse crânio foram causadas pelas lágrimas de Cubone que escorreram.'),
(105, 'Marowak', 104, '105.png', 'Este pokémon guarda ossos desde que nasceu. Possui uma grande habilidade para usá-los como armas. Manda mensagens para outros de sua espécie dando marretadas em pedras com o osso que carrega.'),
(106, 'Hitmonlee', NULL, '106.png', 'Suas pernas podem se esticar para o dobro do tamanho. Quando está com pressa, pode correr dando passos bem largos. Consegue dar vários chutes consecutivos sem sair do lugar. Pode aprender qualquer tipo de chute.'),
(107, 'Hitmonchan', NULL, '107.png', 'Seus socos são tão velozes que rasgam o ar. Possui um espírito indomável de nunca desistir perante as adversidades. Precisa de um tempo para descansar a cada 3 minutos de batalha. Pode aprender qualquer tipo de soco.'),
(108, 'Lickitung', NULL, '108.png', 'Sua língua tem mais de dois metros de comprimento. Quando ele a estica por completo, sua cauda balança. Acredita-se que língua e cauda estão de alguma forma conectados.'),
(109, 'Koffing', NULL, '109.png', 'Este pokémon consegue soltar gases explosivos. O seu gás venenoso é mais leve que o ar, o que mantém ele flutuando. Seu gás é ainda mais tóxico em ambientes quentes.'),
(110, 'Weezing', 109, '110.png', 'Onde dois tipos de gases venenosos se encontram, dois Koffings podem se fundir em um Weezing durante muitos anos. Quando uma cabeça infla, a outra murcha. Ele mistura substâncias tóxicas em seu corpo.'),
(111, 'Rhyhorn', NULL, '111.png', 'Ele é lento e tem dificuldade para virar o corpo para o lado devido às suas patas curtas. Seus ossos são mil vezes mais duros do que os dos homens. Não é muito cauteloso, podendo destruir o que estiver em seu caminho.'),
(112, 'Rhydon', 111, '112.png', 'Seu cérebro se desenvolveu depois que passou a andar sobre duas patas. A pele grossa que possui pode protegê-lo ainda que esteja sob o magma. Seu chifre pode girar como uma broca, sendo capaz de quebrar até mesmo diamantes.'),
(113, 'Chansey', NULL, '113.png', 'Sendo raros e de difícil captura, é dito que ela traz felicidade para o treinador que a pega. Seus ovos são nutritivos e recomendados para uma alimentação balanceada. Anda com cautela para evitar ter seu ovo quebrado.'),
(114, 'Tangela', NULL, '114.png', 'Seu corpo é coberto por um emaranhado de vinhas. Elas são compostas por finos fios de cabelo. Sua tática é enrolar os adversários com suas vinhas.'),
(115, 'Kangaskhan', NULL, '115.png', 'Este pokémon guarda seus filhotes em sua bolsa marsupial. Ela fará de tudo para proteger o bebê, ainda que judiada em batalha. Raramente o bebê sai da bolsa, eles permanecem lá até completarem 3 anos de idade.'),
(116, 'Horsea', NULL, '116.png', 'Ele faz o seu ninho entre corais. Quando está assustado, esguicha um jato de tinta. Se cai em uma correnteza, enrola sua cauda numa pedra ou planta para não ser levado. Consegue nadar de costas com a sua nadadeira dorsal.'),
(117, 'Seadra', 116, '117.png', 'A barriga dele possui grossas cerdas que são venenosas, responsáveis por fornece-lhe proteção. Geralmente são os machos da espécie que cuidam dos filhotes. Ossos e nadadeiras deste pokémon são ingredientes de uma medicina caseira.'),
(118, 'Goldeen', NULL, '118.png', 'Em época de desova, eles são vistos nadando em rios e cachoeiras em grandes grupos. São ótimos e belos nadadores. Se colocados em um grande aquário de vidros resistentes, irão quebrá-lo com a força de seu chifre para escapar.'),
(119, 'Seaking', 118, '119.png', 'Com o seu poderoso chifre, faz buracos nas pedras dos leitos dos rios para fazer o ninho de seus ovos. Ele dá a própria vida para defender seus ovos.'),
(120, 'Staryu', NULL, '120.png', 'Mesmo que seus membros sejam cortados, Staryu conseguirá regenerá-los desde que a jóia no centro de seu corpo não tenha sido danificada. Quando está muito fraco, a jóia de Staryu começa a piscar.'),
(121, 'Starmie', 120, '121.png', 'Seu corpo se desenvolve num formato geometricamente simétrico. Ela se movimenta nas águas girando o corpo como uma hélice. A jóia no núcleo de seu corpo brilha nas sete cores do arco-íris.'),
(122, 'Mr. Mime', NULL, '122.png', 'Ele cria paredes invisíveis vibrando os seus dedos minuciosamente para parar as moléculas no ar. Seus gestos de mímico acabam enganando os outros que pensam que não há nada no caminho.'),
(123, 'Scyther', NULL, '123.png', 'As foices afiadas em seus braços ficam ainda mais afiadas quando cortam objetos duros. Ele é tão rápido e veloz quanto um ninja. Ele se esconde pelo gramado pois a cor de seu corpo ajuda a camuflá-lo.'),
(124, 'Jynx', NULL, '124.png', 'Ela fala uma linguagem semelhante à dos seres humanos. No entanto, ela parece usar a dança para se comunicar. Ela rebola os quadris enquanto anda.'),
(125, 'Electabuzz', NULL, '125.png', 'O corpo dele descarrega energia constante mente. Ao chegar perto dele, os cabelos de uma pessoa irão se arrepiar. Electabuzz gosta de se alimentar da energia de usinas de força, causando grandes apagões nas cidades.'),
(126, 'Magmar', NULL, '126.png', 'Magmar não gosta de lugares frios, por isso, sopra um fogo abrasador para tornar o ambiente adequado para si. Quando respira profundamente, emana ondas de calor de seu corpo. Vive próximo às bocas de vulcões, seu corpo resiste a lava.'),
(127, 'Pinsir', NULL, '127.png', 'Pinsir possui grandes chifres com espinhos. Com eles, agarra seus adversários como uma pinça e aperta-os. Também utiliza os chifres para cavar buracos onde dorme à noite. Além disso, Pinsir detesta o frio.'),
(128, 'Tauros', NULL, '128.png', 'É um pokémon de natureza violenta. Ele chicoteia a si mesmo usando seus três rabos para incentivá-lo a batalhar. Quando corre junto com a manada, não para até colidir com algo.'),
(129, 'Magikarp', NULL, '129.png', 'Dizem que este é um dos pokémons mais fracos que existem. Seu golpe de respingar água é simplesmente inútil. Tem dificuldade mesmo para nadar. Em raras ocasiões, consegue dar grandes saltos.'),
(130, 'Gyarados', 129, '130.png', 'Uma vez que fique irado, não irá se acalmar até ter destruído tudo que estiver pelo seu caminho. Ele tem um instinto agressivo. É conhecido por ter incendiado cidades com seus raios.'),
(131, 'Lapras', NULL, '131.png', 'Adora atravessar os mares carregando pessoas e pokémons em suas costas. Lapras é capaz de entender a fala humana. Ele é gentil e tem o hábito de cantar graciosamente quando está de bom humor.'),
(132, 'Ditto', NULL, '132.png', 'Tem a capacidade de reconstituir sua estrutura celular para se transformar em qualquer coisa que esteja vendo. Se tentar se transformar em algo baseando-se no que tem na memória, acaba errando vários detalhes.'),
(133, 'Eevee', NULL, '133.png', 'Por possuir uma composição genética irregular, Eevee pode evoluir seu corpo para as mais diversificadas formas, dependendo daquilo que o cerca. Por esta razão, consegue adaptar-se facilmente a qualquer tipo de ambiente.'),
(134, 'Vaporeon', 133, '134.png', 'Sua composição celular é semelhante às moléculas de água. Quando suas barbatanas começam a vibrar, é sinal que uma chuva está para cair. Ele pode fundir o seu corpo na água, ficando completamente invisível.'),
(135, 'Jolteon', 133, '135.png', 'Ele pode descarregar uma força de dez mil volts. Os pelos de seu corpo são tão espetados quanto uma agulha afiada. Ele arruma sua pelugem com eletricidade.'),
(136, 'Flareon', 133, '136.png', 'As chamas que ele dispara são tão quentes que podem chegar a mais de 1600ºC. Sua temperatura corporal ultrapassa os 800ºC. Ele afofa sua pelugem com a temperatura do corpo.'),
(137, 'Porygon', NULL, '137.png', 'Este pokémon artificial foi criado por tecnologias científicas avançadas. Ele pode mover-se livremente no ciberespaço. Está programado apenas com emoções básicas e não precisa respirar para sobreviver.'),
(138, 'Omanyte', NULL, '138.png', 'Este pokémon nadava pelos mares torcendo os seus dez tentáculos desde os tempos antigos. Ele usa o ar armazenado em sua concha para emergir e submergir na água. Eles são revividos de fósseis por cientistas.'),
(139, 'Omastar', 138, '139.png', 'Acredita-se que este pokémon tenha se extinguido por sua concha espiral ter crescido muito e ficado pesado demais para suportar. Ele agarra suas vítimas com seus tentáculos e as tritura com seus dentes.'),
(140, 'Kabuto', NULL, '140.png', 'Acredita-se que ele tenha habitado praias 300 anos atrás. Seu corpo é protegido por um duro casco. Ele também possui olhos nesse casco. Já foram encontrados alguns exemplares de seu fóssil ainda vivos.'),
(141, 'Kabutops', 140, '141.png', 'Estudos dizem que esse pokémon deixou os mares porque suas presas adaptaram-se a viver em terra firme. Ele ataca suas presas cortando-as com as lâminas de suas garras afiadas.'),
(142, 'Aerodactyl', NULL, '142.png', 'O extinto pokémon percorria os céus na era dos dinossauros. Seus dentes se movem como uma serra ao mastigar. Cientistas conseguem ressuscitá-lo a partir de um material genético de dinossauro extraído de um velho âmbar.'),
(143, 'Snorlax', NULL, '143.png', 'Se torna muito preguiçoso quando está de estômago cheio. Sua barriga se torna elástica, fazendo pular qualquer coisa que cair sobre ela. Seu estômago pode digerir qualquer tipo de veneno. Dorme por um longo período após comer bastante.'),
(144, 'Articuno', NULL, '144.png', 'Pode criar nevascas congelando a umidade do ar. Dizem que suas asas são feitas de gelo. Com uma cauda longa e brilhante, sua forma de voar é magnífica. Ele aparece para pessoas perdidas em montanhas congeladas.'),
(145, 'Zapdos', NULL, '145.png', 'É dito que este pokémon vive em nuvens de trovão. Ele consegue controlar livremente os relâmpagos. Ganha forças quando é atingido por um raio. Costuma soltar alguns estrondos enquanto voa.'),
(146, 'Moltres', NULL, '146.png', 'A aparição de Moltres indica a chegada da primavera. Quando ele é ferido, mergulha seu corpo no magma de um vulcão para queimar e curar o seu corpo. Atletas carregam uma tocha com sua chama em algumas Ligas Pokémon.'),
(147, 'Dratini', NULL, '147.png', 'É conhecido como \"pokémon miragem\" pois poucos já o viram. Ele troca de pele continuamente e fica cada vez maior. Ele faz isso porque sua energia vital aumenta constantemente, atingindo níveis incontroláveis.'),
(148, 'Dragonair', 147, '148.png', 'Se o seu corpo adquire uma aura, o tempo muda instantaneamente. As jóias cristalinas que possui dão a ele o poder de controlar o clima. Diz-se que vive em mares e lagos, mas também é visto voando.'),
(149, 'Dragonite', 148, '149.png', 'Ele constrói sua casa em algum lugar do oceano. O formato de seu corpo permite que consiga voar tranquilamente sobre mares agitados. Ele ajuda os navios a encontrar terra firme em tempestades. Ele é capaz de dar a volta ao mundo em 16 horas.'),
(150, 'Mewtwo', NULL, '150.png', 'Um pokémon que foi clonado geneticamente de Mew. O poder científico dos humanos não conseguiu dar a ele um coração compassivo. Geralmente ele permanece imóvel para conservar sua energia, de forma que possa liberar seu poder total em batalha.'),
(151, 'Mew', NULL, '151.png', 'Se mostra apenas para pessoas de coração puro. Seu DNA contém códigos genéticos de todos os pokémons. Como é capaz de aprender qualquer tipo de golpe, muitos cientistas acreditam que ele é o antepassado de todos os pokémons.');

-- --------------------------------------------------------

--
-- Estrutura da tabela `pokemons_tipos`
--

CREATE TABLE `pokemons_tipos` (
  `id_pokemon` int(11) NOT NULL,
  `id_tipo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `pokemons_tipos`
--

INSERT INTO `pokemons_tipos` (`id_pokemon`, `id_tipo`) VALUES
(1, 14),
(2, 14),
(3, 14),
(4, 7),
(5, 7),
(6, 7),
(7, 1),
(8, 1),
(9, 1),
(10, 10),
(11, 10),
(12, 10),
(13, 10),
(14, 10),
(15, 10),
(16, 2),
(17, 2),
(18, 2),
(19, 12),
(20, 12),
(21, 2),
(22, 2),
(23, 17),
(24, 17),
(25, 4),
(26, 4),
(27, 16),
(28, 16),
(29, 17),
(30, 17),
(31, 17),
(32, 17),
(33, 17),
(34, 17),
(35, 5),
(36, 5),
(37, 7),
(38, 7),
(39, 5),
(40, 5),
(41, 17),
(42, 17),
(43, 14),
(44, 14),
(45, 14),
(46, 10),
(47, 10),
(48, 17),
(49, 17),
(50, 16),
(51, 16),
(52, 12),
(53, 12),
(54, 1),
(55, 1),
(56, 11),
(57, 11),
(58, 7),
(59, 7),
(60, 1),
(61, 1),
(62, 1),
(63, 15),
(64, 15),
(65, 15),
(66, 11),
(67, 11),
(68, 11),
(69, 14),
(70, 14),
(71, 14),
(72, 1),
(73, 1),
(74, 13),
(75, 13),
(76, 13),
(77, 7),
(78, 7),
(79, 1),
(80, 1),
(81, 4),
(82, 4),
(83, 2),
(84, 2),
(85, 2),
(86, 9),
(87, 9),
(88, 17),
(89, 17),
(90, 1),
(91, 9),
(92, 6),
(93, 6),
(94, 6),
(95, 13),
(96, 15),
(97, 15),
(98, 1),
(99, 1),
(100, 4),
(101, 4),
(102, 15),
(103, 15),
(104, 16),
(105, 16),
(106, 11),
(107, 11),
(108, 12),
(109, 17),
(110, 17),
(111, 12),
(112, 12),
(113, 12),
(114, 14),
(115, 12),
(116, 1),
(117, 1),
(118, 1),
(119, 1),
(120, 1),
(121, 1),
(122, 15),
(123, 14),
(124, 9),
(125, 4),
(126, 7),
(127, 10),
(128, 12),
(129, 1),
(130, 3),
(131, 1),
(132, 12),
(133, 12),
(134, 1),
(135, 4),
(136, 7),
(137, 15),
(138, 8),
(139, 8),
(140, 8),
(141, 8),
(142, 8),
(143, 12),
(144, 2),
(145, 2),
(146, 2),
(147, 3),
(148, 3),
(149, 3),
(150, 15),
(151, 15),
(130, 1),
(144, 9),
(146, 7),
(145, 4),
(103, 14),
(125, 11),
(13, 17),
(14, 17),
(15, 17),
(29, 12),
(30, 12),
(31, 12),
(32, 12),
(33, 12),
(34, 12),
(41, 2),
(42, 2),
(6, 2),
(91, 1),
(102, 14),
(138, 13),
(138, 1),
(139, 1),
(139, 13),
(140, 1),
(140, 13),
(142, 13),
(142, 2),
(147, 1),
(148, 1),
(149, 2);

-- --------------------------------------------------------

--
-- Estrutura da tabela `tipos`
--

CREATE TABLE `tipos` (
  `id` int(11) NOT NULL,
  `nome` varchar(50) DEFAULT NULL,
  `cor` char(7) DEFAULT NULL,
  `corTexto` char(7) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `tipos`
--

INSERT INTO `tipos` (`id`, `nome`, `cor`, `corTexto`) VALUES
(1, 'Agua', '#7878f9', NULL),
(2, 'Voador', '#6a9bee', NULL),
(3, 'Dragao', '#6200a5', NULL),
(4, 'Eletrico', 'yellow', 'black'),
(5, 'Fada', '#e401e1', NULL),
(6, 'Fantasma', 'black', 'yellow'),
(7, 'Fogo', 'red', NULL),
(8, 'Fossil', NULL, NULL),
(9, 'Gelo', '#cbcbff', 'black'),
(10, 'Inseto', '#75bd0d', NULL),
(11, 'Lutador', '#af0000', NULL),
(12, 'Normal', '#bdb9a9', NULL),
(13, 'Pedra', '#6d6d6d', NULL),
(14, 'Planta', '#53b54b', NULL),
(15, 'Psiquico', 'white', 'black'),
(16, 'Terra', 'brown', NULL),
(17, 'Veneno', '#2c52a9', NULL);

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `pokemons`
--
ALTER TABLE `pokemons`
  ADD PRIMARY KEY (`numero_dex`),
  ADD UNIQUE KEY `Index 2` (`numero_dex`,`nome`),
  ADD KEY `FK_pokemons_pokemons` (`anterior`);

--
-- Índices para tabela `pokemons_tipos`
--
ALTER TABLE `pokemons_tipos`
  ADD KEY `Index 1` (`id_pokemon`),
  ADD KEY `FK_pokemons_tipos_tipos` (`id_tipo`);

--
-- Índices para tabela `tipos`
--
ALTER TABLE `tipos`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `Index 3` (`nome`),
  ADD KEY `Index 2` (`nome`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `tipos`
--
ALTER TABLE `tipos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `pokemons`
--
ALTER TABLE `pokemons`
  ADD CONSTRAINT `FK_pokemons_pokemons` FOREIGN KEY (`anterior`) REFERENCES `pokemons` (`numero_dex`);

--
-- Limitadores para a tabela `pokemons_tipos`
--
ALTER TABLE `pokemons_tipos`
  ADD CONSTRAINT `FK_pokemons_tipos_pokemons` FOREIGN KEY (`id_pokemon`) REFERENCES `pokemons` (`numero_dex`),
  ADD CONSTRAINT `FK_pokemons_tipos_tipos` FOREIGN KEY (`id_tipo`) REFERENCES `tipos` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
