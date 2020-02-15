-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le :  ven. 29 nov. 2019 à 14:08
-- Version du serveur :  5.7.26
-- Version de PHP :  7.2.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `cinema`
--

-- --------------------------------------------------------

--
-- Structure de la table `acteur`
--

DROP TABLE IF EXISTS `acteur`;
CREATE TABLE IF NOT EXISTS `acteur` (
  `id_acteur` int(11) NOT NULL AUTO_INCREMENT,
  `nom_acteur` varchar(250) NOT NULL,
  `prenom_acteur` varchar(250) NOT NULL,
  `naissance_acteur` date NOT NULL,
  `nationalite_acteur` varchar(250) NOT NULL,
  `nombre_films_acteur` int(11) NOT NULL,
  `biographie_acteur` text NOT NULL,
  `acteur_img` varchar(255) NOT NULL,
  PRIMARY KEY (`id_acteur`)
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `acteur`
--

INSERT INTO `acteur` (`id_acteur`, `nom_acteur`, `prenom_acteur`, `naissance_acteur`, `nationalite_acteur`, `nombre_films_acteur`, `biographie_acteur`, `acteur_img`) VALUES
(35, 'GREEN', 'Eva', '1980-07-06', 'Française', 20, 'Elle fait ses débuts au théâtre au début des années 2000 et décroche une nomination aux Molières. Elle se fait remarquer en 2003 dans le film Innocents: The Dreamers. Elle alterne par la suite superproductions (Casino Royale Kingdom of Heaven ou 300 : La Naissance d\'un empire), et films. Elle a également joué dans la série Penny Dreadful de 2014 à 2016.  Elle a tourné à trois reprises sous  la direction de Tim Burton (Dark Shadows, Miss Peregrine et les Enfants particuliers, Dumbo).', 'acteurs/green_eva.jpg'),
(36, 'JACKSON', 'Samuel', '1948-12-21', 'Américaine', 152, 'Acteur et producteur de cinéma américain, né à Washington le 21 décembre 1948. Il fait des études d\'architecture puis passe un diplôme d\'art dramatique obtenu en 1972,où il joue son premier film au cinéma. Il débute avec des petits rôles jusqu\'en 1989 où il rencontre Spike Lee. Son rôle dans Pulp Fiction avec John Travolta en 1994 fait de lui une star planétaire. Il va enchaîner les films à gros budget (Une journée en Enfer, Les Affranchis, Jeux de Guerre ou encore Shaft). On le retrouve également dans la trilogie prequelle de la saga Star Wars, et participe à partir de 2008 aux films de la licence Marvel Comics où il incarne le rôle de Nick Fury.\r\n', 'acteurs/jackson_samuel.jpg'),
(37, 'DEPP', 'Johnny', '1963-06-09', 'Américain', 89, 'Acteur, réalisateur, guitariste, chanteur, scénariste et producteur de cinéma américain, né le 9 juin 1963 à Owensboro (Kentucky). Il devient célèbre dans les années 1980 avec son rôle dans la série télévisée 21 Jump Street. Il se consacre ensuite principalement à l\'interprétation de personnages originaux et excentriques  dans un bon nombres de films de Tim Burton  ou comme le Capitaine Jack Sparrow dans la saga Pirates des Caraïbes et est choisi pour incarner le personnage de Gellert Grindelwald, mage noir de l\'univers de J. K. Rowling dans la saga des films Les Animaux fantastiques.', 'acteurs/depp_Jhonny.jpg'),
(38, 'RICCI', 'Christina', '1980-02-12', 'Américaine', 66, 'Révélée à l\'âge de onze ans par son rôle de Mercredi Addams dans la comédie horrifique La Famille Addams, et reste dans un registre similaire pour le film pour enfants Casper (1995). Elle parvient ensuite à conclure la décennie 1990 avec des rôles plus mûrs (Ice Storm, Sleepy Hollow), mais les années 2000 sont marquées pour elle par des échecs critiques successifs excepté Monster et Black Snake Moan. Elle finit par faire des apparitions dans des séries télévisées à succès.', 'acteurs/ricci_christina.jpg'),
(39, 'WALKEN', 'Christopher', '1943-03-31', 'Américain', 108, 'Commençant sa carrière au théâtre, il devient célèbre au cinéma avec Voyage au bout de l\'enfer pour lequel il remporte l\'Oscar du meilleur acteur dans un second rôle. On peut le voir dans de nombreux films, dont Annie Hall (1977), La Porte du paradis (1980), Dead Zone (1983), Dangereusement vôtre (1985), The King of New York (1990), Batman : Le Défi (1992), Pulp Fiction (1994), Sleepy Hollow (1999), Arrête-moi si tu peux (2002), Serial noceurs (2005) et Hairspray (2007).\r\n\r\n', 'acteurs/walken_christopher.jpg'),
(40, 'TRAVOLTA', 'John', '1954-02-18', 'Américain', 72, 'Acteur mais aussi chanteur, danseur et producteur de cinéma.\r\nIl devient célèbre grâce aux films musicaux La Fièvre du samedi soir et Grease. Il retrouve la notoriété dans les années 1990 avec Allô maman, ici bébé! et surtout Pulp Fiction qui lui vaut une nomination à l\'Oscar du meilleur acteur en 1995, puis enchaîne les succès tels que Get Shorty et Volte-face.\r\n', 'acteurs/travolta_john.jpg'),
(41, 'THURMAN ', 'Uma', '1970-04-29', 'Américaine', 63, 'Actrice, scénariste, productrice et ancienne mannequin américaine, elle s\'impose auprès du grand public avec Les Aventures du baron de Münchhausen, puis grâce au drame en costumes Les Liaisons dangereuses où elle incarne la naïve Cécile de Volanges.\r\nElle est surtout connue pour ses rôles dans des films écrits et réalisés par Quentin Tarantino : Pulp Fiction (1994) et le diptyque Kill Bill (2003-2004).\r\n', 'acteurs/thurman_uma.jpg'),
(42, 'DI CAPRIO', 'Leonardo', '1974-11-11', 'Américain', 73, 'L’acteur  a commencé sa carrière jeune, avec des rôles à la télévision (« Quoi de neuf docteur? »), et au cinéma. Il se fait notamment remarquer dans la film « Gilbert Grape », film dans lequel il jouera le rôle d’un petit garçon déficient intellectuel, ce qui lui vaudra un Oscar du meilleur acteur dans un second rôle, alors âgé de 19 ans.\r\nIl ne sera découvert par le grand public qu’en 1996, lors d’une adaptation de « Roméo + Juliette ». Sa véritable ascension aura lieu avec l’apparition du film Titanic.\r\nSa carrière prend alors un nouveau tournant dans les années 2000 durant lesquelles il travaille pour les plus grands réalisateurs dont (Gangs of New York, Aviator, Les Infiltrés, Shutter Island …) et remporte de nombreuses récompenses tout au long de sa carrière. \r\n', 'acteurs/dicaprio_leo.jpg'),
(43, 'PITT', 'Brad', '1963-12-18', 'Américain', 101, 'Acteur et producteur, il sort de l\'anonymat grâce à un petit rôle dans le film Thelma et Louise de Ridley Scott. Il devient une véritable star et sa collaboration avec le réalisateur David Fincher donne naissance aux films culte Seven, Fight Club et L\'Étrange Histoire de Benjamin Button. Il tourne dans de nombreux autres succès (Entretien avec un vampire de Neil Jordan, Ocean\'s Eleven et ses suites, Inglourious Basterds de Quentin Tarantino).', 'acteurs/pitt_brad.jpg'),
(44, 'HOPKINS', 'Anthony', '1937-12-31', 'Britanique', 104, 'Anthony Hopkins est un acteur britannique naturalisé américain en 2000.\r\nFigure majeure du cinéma britannique et américain, il est surtout connu pour son interprétation du psychopathe cannibale, le Dr Hannibal Lecter, dans le film Le Silence des agneaux (1991), et sera récompensé par le BAFTA Award et l\'Oscar du meilleur acteur. Acteur prolifique, il est connu pour être un caméléon, capable de se fondre dans n\'importe quel personnage ; il est réputé pour ses interprétations de nombreux personnages historiques et littéraires controversés, ainsi que pour ses rôles de méchant au cinéma ou à la télévision.Acteur largement récompensé par ses pairs, il est anobli en 1993 par la reine Élisabeth II pour ses services rendus aux arts britanniques.\r\n', 'acteurs/hopkins_anthony.jpg'),
(45, 'HURT', 'John', '1940-01-22', 'Britanique', 146, 'Cantonné au début de sa carrière aux seconds rôles, il accède à la célébrité en incarnant John Merrick dans le film Elephant Man, qui lui vaut une nomination à l\'Oscar du meilleur acteur en 1981, et à la télévision celui de Caligula dans la série Moi Claude empereur. Il a été également le conteur d\'histoire dans la série Monstres et Merveilles en 1987. Il incarne notamment Billy Irvine dans La Porte du paradis (Heaven\'s Gate), Winston Smith dans 1984, le dictateur Adam Sutler dans V pour Vendetta et Monsieur Ollivander dans  la saga Harry Potter. En 2013, pour les 50 ans de la célèbre série télévisée britannique de science-fiction, Doctor Who, John Hurt joue le rôle du Docteur Guerrier.Il meurt le 25 janvier 2017  d’un cancer d’un pancréas.', 'acteurs/hurt_jhon.jpg'),
(46, 'PORTMAN', 'Natalie', '1981-06-09', 'Israelienne', 53, 'Actrice et productrice israélo-américaine, elle fait ses débuts au cinéma en 1993, à douze ans, dans le film Léon de Luc Besson Elle devient une vedette internationale à part entière en 1999, lors de la sortie de Star Wars, épisode I : La Menace fantôme, dans lequel elle joue Padmé Amidala. Elle reprend ce rôle dans les épisodes II et III. Natalie Portman alterne des apparitions dans des blockbusters hollywoodiens avec des rôles dramatiques. Elle tourne avec de célèbres réalisateurs (Woody Allen, Tim Burton Darren Aronofsky (Black Swan). Elle a obtenu des récompenses pour certains de ses rôles (V pour Vendetta, Black Swan...) \r\n', 'acteurs/portman_natalie.jpg'),
(47, 'NEESON', 'Liam', '1952-06-07', 'Britanique', 116, 'Acteur britannico-américain, connu pour ses rôles d\'hommes courageux et révolutionnaires dans des films comme La Liste de Schindler, Michael Collins et Rob Roy ainsi que pour sa participation à des grosses productions telles que Star Wars, épisode I : La Menace fantôme, Taken et Batman Begins. Il a été dirigé par de grands réalisateurs comme George Lucas, Christopher Nolan, Steven Spielberg, Woody Allen, Ridley Scott ou encore Martin Scorsese.', 'acteurs/neeson_liam.jpg'),
(48, 'MC GREGOR', 'Ewan', '1971-03-31', 'Britanique', 70, 'Il est révélé durant les années 1990 par Danny Boyle (Petits meurtres entre amis, Trainspotting, Une vie moins ordinaire). Mais c\'est son interprétation d\'Obi-Wan Kenobi dans la prélogie Star Wars qui lui permet d\'accéder à une célébrité mondiale durant les années 2000. Il partage alors l\'affiche de plusieurs projets hollywoodiens (Moulin Rouge! The Island …). Durant les années 2010, il s\'éloigne quelque peu des projets des studios. L\'année 2016 est marquée par la sortie de sa première réalisation, American Pastoral, dont il tient aussi le premier rôle masculin, puis par ses retrouvailles avec Danny Boyle, pour l\'inattendu T2 Trainspotting. Il décide aussi de porter la troisième saison de l\'acclamée série Fargo, où il incarne deux personnages.', 'acteurs/mcgregor_ewan.jpg'),
(49, 'BALE', 'Christian', '1974-01-30', 'Britanique ', 50, 'Acteur britannico-américain  notamment connu pour jouer aussi bien dans des films à gros budget (trilogie Batman, Terminator, Exodus) que dans des films indépendants de petits producteurs (Fighter, Les Brasiers de la colère, Knight of Cups).\r\nBale a attiré l\'attention du public dès l\'âge de 13 ans,  avec le rôle principal du film de Steven Spielberg, Empire du soleil (1987).\r\nEn 2000, il reçoit des critiques élogieuses pour son interprétation du tueur en série Patrick Bateman dans American Psycho  Sa capacité à assurer d’importantes transformations physiques lui vaut d\'être un des acteurs les plus demandés de sa génération.\r\nIl obtient une reconnaissance commerciale et critique pour son interprétation de Bruce Wayne/Batman dans la trilogie de Christopher Nolan.\r\n\r\n', 'acteurs/bale_christian.jpg'),
(50, 'LEDGER', 'Heath', '1979-04-04', 'Australien', 22, 'Acteur australien né le 4 avril 1979 à Perth et mort le 22 janvier 2008 à New York (SoHo). Sa brève carrière est marquée par des succès internationaux, notamment pour son rôle d\'Ennis del Mar dans Le Secret de Brokeback Mountain et celui du Joker dans The Dark Knight. Il meurt à son domicile de Manhattan d\'une overdose de médicaments, liés à ses problèmes d\'insomnie. Son interprétation du Joker, ennemi juré de Batman lui permet de remporter une trentaine de prix, notamment l\'Oscar du meilleur acteur dans un second rôle en 2009 à titre posthume.', 'acteurs/ledger_heath.jpg'),
(51, 'COTILLARD', 'Marion', '1975-09-30', 'Française', 73, 'Active au cinéma depuis la fin des années 1990, elle est révélée au grand public par son rôle de compagne du héros dans la saga Taxi, qu\'elle incarne dans les trois premiers films de la franchise. En février 2005, elle reçoit le César de la meilleure actrice dans un second rôle, avec Un long dimanche de fiançailles de Jean-Pierre Jeunet. En 2008, son interprétation de la chanteuse Édith Piaf dans le film biographique La Môme lui attire de nombreuses récompenses. \r\nElle consacre une carrière internationale aux choix artistiques variés et collabore avec des réalisateurs renommés ( Tim Burton, Ridley Scott, Woody Allen, Christopher Nolan).\r\n', 'acteurs/cotillard_marion.jpg'),
(52, 'WOOD', 'Elijah ', '1981-01-28', 'Américain', 82, 'Acteur , producteur et DJ américain, né le 28 janvier 1981 à Cedar Rapids (Iowa)\r\nIl est principalement connu pour avoir interprété le hobbit Frodon Sacquet dans la trilogie Le Seigneur des anneaux de Peter Jackson. Il a depuis joué dans divers films tels que Eternal Sunshine of the Spotless Mind, Hooligans, Sin City ou encore Maniac. De 2011 à 2014, il incarne Ryan Newman dans la série télévisée Wilfred diffusée sur la chaîne FX.\r\n', 'acteurs/wood_elijah.jpg'),
(53, 'ASTIN', 'Sean', '1971-02-25', 'Americain', 85, 'Sean Astin est un acteur, réalisateur, producteur de cinéma et scénariste américain né le 25 février 1971 à Santa Monica, États-Unis. Découvert en 1985 en incarnant Mickey Walsh le chef de la bande des Goonies, il est connu pour avoir incarné Sam Gamegie dans la saga Seigneur des Anneaux. De plus, en 2017, Sean Astin interprète le rôle de Bob, dans la série américaine Stranger Things à partir de la saison 2.', 'acteurs/astin_sean.jpg'),
(54, 'MORTENSEN', 'Viggo', '1958-10-20', 'Américain', 57, 'Musicien, photographe et peintre américano-danois. De son rôle dans The Indian Runner de Sean Penn à celui de La Route de John Hillcoat, on a fait appel à lui dans une quarantaine de films, notamment Portrait de femme de Jane Campion, L\'Impasse de Brian De Palma, Meurtre parfait d\'Andrew Davis, ou Le Choix d\'une vie (A Walk on the Moon) de Tony Goldwyn. Mais c\'est la trilogie du Seigneur des Anneaux de Peter Jackson qui le révèle au monde entier grâce à l\'incarnation du personnage d\'Aragorn, puis trois collaborations avec David Cronenberg (A History of Violence, Les Promesses de l\'ombre et A Dangerous Method) qui lui valent une large reconnaissance critique.\r\n', 'acteurs/mortensen_viggo.jpg');

-- --------------------------------------------------------

--
-- Structure de la table `apartenir`
--

DROP TABLE IF EXISTS `apartenir`;
CREATE TABLE IF NOT EXISTS `apartenir` (
  `id_genre` int(11) NOT NULL,
  `id_film` int(11) NOT NULL,
  PRIMARY KEY (`id_genre`,`id_film`),
  KEY `apartenir_film0_FK` (`id_film`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `apartenir`
--

INSERT INTO `apartenir` (`id_genre`, `id_film`) VALUES
(1, 1),
(10, 1),
(11, 2),
(12, 2),
(2, 3),
(3, 3),
(3, 4),
(4, 4),
(5, 5),
(6, 5),
(5, 6),
(5, 7),
(8, 7),
(5, 8),
(8, 8),
(9, 9),
(10, 9),
(1, 10),
(10, 10),
(3, 11),
(11, 11),
(3, 12),
(9, 12);

-- --------------------------------------------------------

--
-- Structure de la table `film`
--

DROP TABLE IF EXISTS `film`;
CREATE TABLE IF NOT EXISTS `film` (
  `id_film` int(11) NOT NULL AUTO_INCREMENT,
  `titre` varchar(250) NOT NULL,
  `type` varchar(255) NOT NULL,
  `date_sortie` date NOT NULL,
  `duree` int(11) NOT NULL,
  `synopsis` text NOT NULL,
  `carousel_img` varchar(255) NOT NULL,
  `film_min_img` varchar(255) NOT NULL,
  `film_img` varchar(255) NOT NULL,
  `iframe` text NOT NULL,
  PRIMARY KEY (`id_film`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `film`
--

INSERT INTO `film` (`id_film`, `titre`, `type`, `date_sortie`, `duree`, `synopsis`, `carousel_img`, `film_min_img`, `film_img`, `iframe`) VALUES
(1, 'Miss Peregrine et les enfants particuliers', 'Film', '2016-10-05', 123, 'À la mort de son grand-père, Jacob découvre les indices et l’existence d’un monde mystérieux qui le mène dans un lieu magique : la Maison de Miss Peregrine pour Enfants Particuliers. Mais le mystère et le danger s’amplifient quand il apprend à connaître les résidents, leurs étranges pouvoirs …  \r\n', 'carousel/Missperigrine.jpg', 'film_min/miss_peregrine_min.jpg', 'films/miss_peregrine.jpg', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/i-TiNC3zpPw\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>'),
(2, 'Inglorious Basterds', 'Film', '2009-08-19', 153, 'Dans la France occupée de 1940, Shosanna Dreyfus assiste à l\'exécution de sa famille tombée entre les mains du colonel nazi Hans Landa.\r\nShosanna s\'échappe de justesse et s\'enfuit à Paris où elle se construit une nouvelle identité en devenant exploitante d\'une salle de cinéma.\r\n', 'carousel/ingloriousbasterds.jpg', 'film_min/iglorious_basterds_min.jpg', 'films/inglorious_basterds.jpg', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/BiPUoLI9eGM\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>'),
(3, 'Sleepy Hollow: la légende du cavalier sans tête', 'Film', '2000-02-09', 105, 'En 1799, dans une bourgade de La Nouvelle-Angleterre, plusieurs cadavres sont successivement retrouvés décapités. \r\nLes habitants sont persuadés que ces meurtres sont commis par un étrange et furieux cavalier lui-même sans tête. \r\nLes autorités new-yorkaises envoient alors Ichabod Crane, leur plus fin limier pour éclaircir ce mystère. \r\n', 'carousel/sleepyhollow.jpg', 'film_min/sleepy_hollow_min.jpg', 'films/sleepy_hollow.jpg', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/-P0aLlEgXj8\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>'),
(4, 'Pulp fiction', 'Film', '1994-10-26', 123, 'L\'odyssée sanglante et burlesque de petits malfrats dans la jungle de Hollywood à travers trois histoires qui s\'entremêlent. \r\n', 'n/a', 'film_min/pulp_fiction_min.jpg', 'films/pulp_fiction-jpg.jpg', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/gjAJnzTPltc\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>'),
(5, 'Once Upon a Time in Hollywood', 'Film', '2019-08-14', 181, 'En 1969, la star de télévision Rick Dalton et le cascadeur Cliff Booth, sa doublure de longue date, poursuivent leurs carrières au sein d’une industrie qu’ils ne reconnaissent plus. ', 'carousel/onceuponatime.jpg', 'film_min/once_upon_time_min.jpg', 'films/once_upon_time.jpg', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/Xe_ZQk_Rs98\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>'),
(6, 'Titanic', 'Film', '1998-01-07', 194, 'Southampton, 10 avril 1912. Le paquebot le plus grand et le plus moderne du monde, réputé pour son insubmersibilité, le \"Titanic\", appareille pour son premier voyage. Quatre jours plus tard, il heurte un iceberg. A son bord, un artiste pauvre et une grande bourgeoise tombent amoureux.\r\n', 'n/a', 'film_min/titanic_min.jpg', 'films/titanic.jpg', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/Quf4qIkD3KY\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>'),
(7, 'Elephant Man', 'Film', '1980-10-09', 125, 'Londres, 1884. Le chirurgien Frederick Treves découvre un homme complètement défiguré et difforme, devenu une attraction de foire. John Merrick. le Dr. Treves achète Merrick, l\'arrachant ainsi à la violence et à l\'humiliation quotidienne de son propriétaire.', 'n/a', 'film_min/elephant_man_min.jpg', 'films/elephant_man.jpg', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/HjMIQM66R3w\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>'),
(8, 'Jackie', 'Film', '2017-02-01', 100, 'John F. Kennedy,vient d’être assassiné à Dallas. Sa veuve, Jacqueline Bouvier Kennedy, décide de  mettre en lumière l’héritage politique du président et à célébrer l’homme qu’il fut.\r\n ', 'carousel/jackie.jpg', 'film_min/jackie_min.jpg', 'films/jackie.jpg', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/t0sK88CiSGU\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>'),
(9, 'Star Wars Episode I La Menace Fantôme', 'Film', '1999-10-13', 133, 'Avant de devenir un chevalier Jedi et de se révéler l’âme la plus noire de la galaxie, Anakin Skywalker est un jeune esclave sur la planète Tatooine. Le maître Jedi Qui-Gon Jinn le découvre et entrevoit alors son immense potentiel.', 'carousel/starwarsi.jpg', 'film_min/menace_fantome_min.jpg', 'films/menace_fantome.jpg', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/OEvI5HKwmnk\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>'),
(10, 'Le Seigneur des Anneaux : le retour du roi', 'Film', '2003-12-17', 201, 'Tandis que les ténèbres se répandent sur la Terre du Milieu, Aragorn se révèle être l\'héritier caché des rois antiques. Quant à Frodon, toujours tenté par l\'Anneau, il voyage à travers les contrées ennemies.', 'carousel/seigneuranneaux.jpg', 'film_min/retour_roi_min.jpg', 'films/retour_roi.jpg', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/3cqFDlUHAk8\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>'),
(11, 'The Dark Knight: Le Chevalier Noir', 'Film', '2008-08-13', 147, 'Dans ce nouveau volet, Batman augmente les mises dans sa guerre contre le crime.\r\nAvec l\'appui du lieutenant de police Jim Gordon et du procureur de Gotham, Harvey Dent, Batman vise à éradiquer le crime organisé qui pullule dans la ville.\r\nLeur association est très efficace mais elle sera bientôt bouleversée par le chaos déclenché par un criminel extraordinaire que les citoyens de Gotham connaissent sous le nom de Joker.\r\n', 'n/a', 'film_min/dark_knight_min.jpg', 'films/dark_knight.jpg', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/UMgb3hQCb08\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>'),
(12, 'Inception', 'Film', '2010-07-21', 148, 'Dom Cobb est un voleur expérimenté – le meilleur qui soit dans l’art périlleux de l’extraction : sa spécialité consiste à s’approprier les secrets les plus précieux d’un individu, enfouis au plus profond de son subconscient, pendant qu’il rêve et que son esprit est particulièrement vulnérable.\r\nTrès recherché pour ses talents dans l’univers trouble de l’espionnage industriel, Cobb est aussi devenu un fugitif traqué dans le monde entier qui a perdu tout ce qui lui est cher. Mais une ultime mission pourrait lui permettre de retrouver sa vie d’avant à condition qu’il puisse accomplir l’impossible : l’inception.\r\n', 'carousel/inception.jpg', 'film_min/inception_min.jpg', 'films/inception.jpg', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/CPTIgILtna8\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>');

-- --------------------------------------------------------

--
-- Structure de la table `genre`
--

DROP TABLE IF EXISTS `genre`;
CREATE TABLE IF NOT EXISTS `genre` (
  `id_genre` int(11) NOT NULL AUTO_INCREMENT,
  `type_genre` varchar(255) NOT NULL,
  PRIMARY KEY (`id_genre`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `genre`
--

INSERT INTO `genre` (`id_genre`, `type_genre`) VALUES
(1, 'Fantastique'),
(2, 'Epouvante horreur'),
(3, 'Thriller'),
(4, 'Policier'),
(5, 'Drame'),
(6, 'Comédie'),
(7, 'Comédie musicale'),
(8, 'Biopic'),
(9, 'Science fiction'),
(10, 'Aventure'),
(11, 'Action'),
(12, 'Guerre');

-- --------------------------------------------------------

--
-- Structure de la table `jouer`
--

DROP TABLE IF EXISTS `jouer`;
CREATE TABLE IF NOT EXISTS `jouer` (
  `id_film` int(11) NOT NULL,
  `id_acteur` int(11) NOT NULL,
  PRIMARY KEY (`id_film`,`id_acteur`),
  KEY `JOUER_ACTEUR0_FK` (`id_acteur`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `jouer`
--

INSERT INTO `jouer` (`id_film`, `id_acteur`) VALUES
(1, 35),
(1, 36),
(4, 36),
(9, 36),
(3, 37),
(3, 38),
(3, 39),
(4, 40),
(4, 41),
(5, 42),
(6, 42),
(12, 42),
(2, 43),
(5, 43),
(7, 44),
(7, 45),
(8, 45),
(8, 46),
(9, 46),
(9, 47),
(9, 48),
(11, 49),
(11, 50),
(12, 51),
(10, 52),
(10, 53),
(10, 54);

-- --------------------------------------------------------

--
-- Structure de la table `realisateurs`
--

DROP TABLE IF EXISTS `realisateurs`;
CREATE TABLE IF NOT EXISTS `realisateurs` (
  `id_realisateur` int(11) NOT NULL AUTO_INCREMENT,
  `Nom_realisateur` varchar(250) NOT NULL,
  `prenom_realisateurs` varchar(250) NOT NULL,
  `naisance_realisateur` date NOT NULL,
  `nationalite_realisateur` varchar(250) NOT NULL,
  `nombre_films` int(11) NOT NULL,
  `biographie_realisateur` text NOT NULL,
  `img_realisateur` varchar(255) NOT NULL,
  PRIMARY KEY (`id_realisateur`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `realisateurs`
--

INSERT INTO `realisateurs` (`id_realisateur`, `Nom_realisateur`, `prenom_realisateurs`, `naisance_realisateur`, `nationalite_realisateur`, `nombre_films`, `biographie_realisateur`, `img_realisateur`) VALUES
(1, 'BURTON', 'Tim', '1958-08-25', 'Americain', 57, 'Réalisateur, producteur et scénariste américain né le 25 août 1958 dans la ville de Burbank, en Californie.\r\nIl a réalisé de nombreux films, souvent, il aborde le thème de la mort dans une atmosphère macabre mais empreinte d\'humour. Cependant, dans ses films, elle n\'est pas toujours une chose triste. Nombreux sont ceux qui apprécient ses films pour leur beauté et leur poésie. Ils mettent la plupart du temps en scène un individu excentrique, mis de côté par d\'autres personnes « normales ».\r\n', 'realisateurs/burton_tim.jpg'),
(2, 'TARANTINO', 'Quentin', '1963-03-23', 'Américain', 59, 'Né le 27 mars 1963 à Knoxville dans le Tennessee, aux États-Unis, Quentin Tarantino est un réalisateur, scénariste, producteur et acteur américain. Ayant reçu une formation d\'acteur, il interprète fréquemment de petits rôles dans ses propres films. Il acquiert une célébrité internationale dans les années 1990, en tant que réalisateur de films indépendants avec ses deux premiers longs métrages: Reservoir Dogs (1992) et Pulp Fiction (1994, Palme d\'or à Cannes). Ses plus grands succès commerciaux internationaux sont Django Unchained (2012) et Once Upon a Time in Hollywood (2019).\r\nLe style très cinéphile de Quentin Tarantino se reconnaît entre autres par sa narration postmoderne et non linéaire, ses dialogues émaillés de références à la culture populaire, et ses scènes inspirées de films d\'exploitation, d\'arts martiaux ou de western spaghetti.\r\n', 'realisateurs/tarantino_quentin.jpg'),
(3, 'LYNCH', 'David', '1946-01-30', 'Americain', 42, 'Auteur de 10 longs-métrages, sortis entre 1977 et 2006. Nommé aux Oscars du cinéma comme meilleur réalisateur pour Elephant Man (1980), Blue Velvet (1986) et Mulholland Drive (2001), il a reçu la Palme d\'or au Festival de Cannes en 1990 et un Lion d\'or d\'honneur à la Mostra de Venise en 2006.\r\nSon style novateur et surréaliste se caractérise par son imagerie onirique et sa conception sonore méticuleuse. L\'imagerie parfois violente de ses films lui confère la réputation de « déranger, d\'offenser ou de mystifier » son public. Il donne par la suite de nouvelles orientations à sa carrière artistique, se faisant connaître comme peintre, musicien ou designer.\r\n', 'realisateurs/lynch_david.jpg'),
(4, 'LARRAIN', 'Pablo', '1976-08-19', 'Chilien', 16, 'Fils d\'un sénateur ancien professeur de droit et d\'une future ministre d\'État, Pablo Larraín baigne dès son plus jeune âge dans la politique. Il démontre rapidement un intérêt pour les images et la communication, qu\'il choisit d\'étudier à l\'université de Santiago du Chili. À 27 ans, il confonde sa propre société de production, Fabula, aux côtés de son frère. Deux ans plus tard, il passe derrière la caméra avec Fuga sur l\'histoire d\'un musicien médiocre qui décide d’achever la composition d\'un autre. Le film se fait déjà remarquer dans plusieurs festivals internationaux. ', 'realisateurs/larrain_pablo.jpg'),
(5, 'LUCAS', 'Georges', '1944-05-14', 'Américain', 68, 'Issu de l\'école de cinéma de l\'université de Californie du Sud à Los Angeles, il cofonde avec Francis Ford Coppola le studio American Zoetrope puis crée sa propre société de production : Lucasfilm. Il réalise THX 1138 en 1971 et American Graffiti en 1973 puis Star Wars, saga galactique qui fait de lui un des cinéastes les plus reconnus du cinéma américain. Il est aussi le créateur et scénariste de la saga Indiana Jones, réalisée par Spielberg,  et producteur de Labyrinthe (1986) et Willow (1988), des séries télévisées(Star Wars: The Clone Wars). En 2012, il vend sa société de production au groupe The Walt Disney Company et annonce qu\'il prend officiellement sa retraite.', 'realisateurs/lucas_george.jpg'),
(6, 'JACKSON', 'Peter', '1961-10-31', 'Néo-Zélandais', 32, 'Peter Jackson est un réalisateur, scénariste et producteur néo-zélandais, né le 31 octobre 1961 à Pukerua Bay. Il est surtout connu pour avoir réalisé la trilogie du Seigneur des anneaux, d\'après l\'œuvre de J.R.R. Tolkien, et un remake de King Kong. Il réalise ensuite Le Hobbit, l\'adaptation cinématographique en trois volets du roman de Tolkien.Il est membre de l\'Ordre de Nouvelle-Zélande, chevalier de l\'Ordre du Mérite de Nouvelle-Zélande et Officier des Arts et des Lettres.', 'realisateurs/jackson_peter.jpg'),
(7, 'NOLAN', 'Christopher', '1970-07-30', 'Britanique', 19, 'Réalisateur, scénariste, monteur et producteur de cinéma britanno-américain, né le 30 juillet 1970 à Westminster, il se fait connaître à la fin des années 1990 par un premier long métrage, Following (1998), tourné en noir et blanc. Son deuxième film, Memento (2000), lui apporte sa renommée. Il est choisi ensuite pour réaliser la trilogie des Batman (Begins ,The Dark Knight : Le Chevalier noir ,et The Dark Knight Rises) avec Christian Bale dans le rôle-titre. Il met également en scène Le Prestige (2006) et deux films de science-fiction : Inception (2010) et Interstellar (2014).', 'realisateurs/nolan_christopher.jpg'),
(8, 'CAMERON', 'James', '1954-08-16', 'Canadien', 50, 'James Cameron débute sa carrière en tant que directeur artistique, maquettiste, et projectionniste d\'un film produit par Roger Corman, Les Mercenaires de l\'espace, en 1980. Il passe à la réalisation de son premier film qu\'en 1981 avec Piranha 2 - Les Tueurs volants. Cinéaste peu prolifique, il parvient tout de même à donner au cinéma de science-fiction ses lettres de noblesse à grands renforts d\'effets spéciaux révolutionnaires, et ce en seulement quatre films dont il rédige également les scripts : Terminator (1984), Aliens le retour (1986), Abyss (1989), et Terminator 2 (1991).', 'realisateurs/james_cameron.jpg');

-- --------------------------------------------------------

--
-- Structure de la table `realiser`
--

DROP TABLE IF EXISTS `realiser`;
CREATE TABLE IF NOT EXISTS `realiser` (
  `id_film` int(11) NOT NULL,
  `id_realisateur` int(11) NOT NULL,
  PRIMARY KEY (`id_film`,`id_realisateur`),
  KEY `REALISER_Realisateurs0_FK` (`id_realisateur`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `realiser`
--

INSERT INTO `realiser` (`id_film`, `id_realisateur`) VALUES
(1, 1),
(3, 1),
(2, 2),
(4, 2),
(5, 2),
(7, 3),
(8, 4),
(9, 5),
(10, 6),
(11, 7),
(12, 7),
(6, 8);

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `apartenir`
--
ALTER TABLE `apartenir`
  ADD CONSTRAINT `apartenir_GENRE_FK` FOREIGN KEY (`id_genre`) REFERENCES `genre` (`id_genre`),
  ADD CONSTRAINT `apartenir_film0_FK` FOREIGN KEY (`id_film`) REFERENCES `film` (`id_film`);

--
-- Contraintes pour la table `jouer`
--
ALTER TABLE `jouer`
  ADD CONSTRAINT `JOUER_ACTEUR0_FK` FOREIGN KEY (`id_acteur`) REFERENCES `acteur` (`id_acteur`),
  ADD CONSTRAINT `JOUER_film_FK` FOREIGN KEY (`id_film`) REFERENCES `film` (`id_film`);

--
-- Contraintes pour la table `realiser`
--
ALTER TABLE `realiser`
  ADD CONSTRAINT `REALISER_Realisateurs0_FK` FOREIGN KEY (`id_realisateur`) REFERENCES `realisateurs` (`id_realisateur`),
  ADD CONSTRAINT `REALISER_film_FK` FOREIGN KEY (`id_film`) REFERENCES `film` (`id_film`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
