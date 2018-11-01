-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost
-- Généré le :  jeu. 01 nov. 2018 à 05:53
-- Version du serveur :  5.7.20-18-log
-- Version de PHP :  7.2.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `prouve`
--

-- --------------------------------------------------------

--
-- Structure de la table `mobilier`
--

CREATE TABLE `mobilier` (
  `id_mobilier` tinyint(2) NOT NULL,
  `nom` varchar(50) NOT NULL,
  `date` int(4) NOT NULL,
  `description` varchar(2000) NOT NULL,
  `imageSmall` text NOT NULL,
  `imageBig` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `mobilier`
--

INSERT INTO `mobilier` (`id_mobilier`, `nom`, `date`, `description`, `imageSmall`, `imageBig`) VALUES
(1, 'Fauteuil Cité', 1930, 'Le fauteuil Cité, conçu dans le cadre d’un concours pour l’ameublement des chambres de la cité universitaire de Nancy, compte parmi les premiers chefs-d’oeuvre de Prouvé. Ce fauteuil confort est devenu célèbre pour ses lignes dynamiques, ses patins caractéristiques en tôle revêtue par poudre et ses accoudoirs formés par de larges courroies de cuir.', 'cite125X125.jpg', 'cite400X400.jpg'),
(2, 'Chaise Standard', 1934, 'Une icône du design ! Les forces les plus élevées qui s\'exercent sur une chaise sont portées par les pieds arrière, car ce sont eux qui supportent le poids du haut du corps. Une notion simple que Jean Prouvé a mis en application avec brio en concevant la chaise Standard : tandis qu\'un tube d\'acier suffit pour les deux pieds avant moins sollicités, les pieds arrière de la chaise sont constitués de corps creux volumineux qui transmettent la charge au sol.', 'standard125X125.jpg', 'standard400X400.jpg'),
(3, 'Fauteuil Direction', 1951, '\r\nLe Fauteuil Direction est une création typique du style de Jean Prouvé, dont la sensibilité d\'ingénieur l\'amenait à privilégier l\'exposition des éléments de structure, à rebours de toutes les tendances décoratives alors dominantes. Contrairement à ce que son nom pourrait laisser croire, le Fauteuil Direction n\'a pas été dessiné pour les bureaux de dirigeant mais pour des salles à manger.', 'direction125X125.jpg', 'direction400X400.jpg'),
(4, 'Table Compas', 1953, 'Vers 1950, Jean Prouvé crée la table Compas dans différentes versions qui s\'orientent aux principes constructeurs typiques de sa personnalité. Leur point commun sont les pieds métalliques fins, ouverts en diagonale, qui rappellent l\'ouverture des branches d\'un compas. \r\n', 'compas125X125.jpg', 'compas400X400.jpg'),
(5, 'Table Solvay', 1941, 'Pendant les années 1941 et 1942, les ateliers de Jean Prouvé ont planifié et réalisé différents projets de design d\'intérieur pour l\'entreprise de chimie Solvay. Ce contexte donne naissance à de nombreux concepts, parmi lesquels une table en bois qui se veut emblématique de la création Jean Prouvé : ses impératifs en termes de statique et de propagation des forces se retrouvent clairement dans les détails de conception. La pénurie de métal durant la Seconde Guerre mondiale fit que les pieds de la Table Solvay furent fabriqués en bois.', 'solvay125X125.jpg', 'solvay400X400.jpg'),
(6, 'Fauteuil Antony', 1955, 'Ce modèle destiné à la Cité universitaire d’Antony est l\'une des dernières oeuvres de Jean Prouvé dans le domaine du design mobilier. L’ossature métallique est conçue en trois parties, un tube d’entretoise de fort diamètre sur lequel sont soudés quatre pieds et deux consoles soutenant l’assise en contreplaqué de hêtre fixée par des pastilles métalliques.', 'antony125X125.jpg', 'antony400X400.jpg');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `mobilier`
--
ALTER TABLE `mobilier`
  ADD PRIMARY KEY (`id_mobilier`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `mobilier`
--
ALTER TABLE `mobilier`
  MODIFY `id_mobilier` tinyint(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
