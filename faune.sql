-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : mer. 03 mai 2023 à 16:10
-- Version du serveur : 10.4.28-MariaDB
-- Version de PHP : 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `faune`
--
CREATE DATABASE IF NOT EXISTS `faune1` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `faune1`;

-- --------------------------------------------------------

--
-- Structure de la table `oiseaux`
--

CREATE TABLE `oiseaux` (
  `nom` varchar(40) NOT NULL,
  `régions` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `oiseaux`
--

INSERT INTO `oiseaux` (`nom`, `régions`) VALUES
('martinet noir', 2),
('Accenteur mouchet', 4),
('Bergeronnette grise', 4),
('Bouvreuil pivoine', 4),
('Chardonneret élégant', 4),
('Choucas des tours', 4),
('Corneille noire', 4),
('Epervier d \'Europe', 4),
('Etourneau sansonnet', 4),
('Faucon crécerelle', 4),
('Geai des chênes', 4),
('Gobemouche gris', 4),
('Grive draine', 4),
('Grive mauvis', 4),
('Grive musicienne', 4),
('Grosbec casse-noyaux', 4),
('Hirondelle de fenêtre', 4),
('Hirondelle de rustique', 4),
('Mésange à longue queue', 4),
('Mésange bleue', 4),
('Mésange charbonnière', 4),
('Mésange huppée', 4),
('Mésange noire', 4),
('Mésange nonnette', 4),
('Moineau domestique', 4),
('moineau friquet ', 4),
('Pie bavarde', 4),
('Pigeon biset domestique', 4),
('Pigeon ramier', 4),
('Pinson des arbres', 4),
('Pinson du nord', 4),
('Pouillot véloce', 4),
('Rougegorge familier', 4),
('Rougequeue à front blanc', 4),
('Rougequeue noire', 4),
('Serin cini', 4),
('Sittelle torchepot', 4),
('Tarin des aulnes', 4),
('Tourterelle turque', 4),
('Troglodyte mignon', 4),
('Verdier d\'europe', 4),
('cigogne blanche ', 6);

-- --------------------------------------------------------

--
-- Structure de la table `régions`
--

CREATE TABLE `régions` (
  `id` int(11) NOT NULL,
  `nom` varchar(30) NOT NULL,
  `paris` varchar(30) NOT NULL,
  `normandie` varchar(30) NOT NULL,
  `grand est` varchar(30) NOT NULL,
  `hauts de france` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `régions`
--

INSERT INTO `régions` (`id`, `nom`, `paris`, `normandie`, `grand est`, `hauts de france`) VALUES
(2, 'paris', '', '', '', ''),
(4, 'hauts de france', '', '', '', ''),
(5, 'normandie ', '', '', '', ''),
(6, 'grand-est', '', '', '', '');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `oiseaux`
--
ALTER TABLE `oiseaux`
  ADD PRIMARY KEY (`nom`),
  ADD KEY `regions` (`régions`);

--
-- Index pour la table `régions`
--
ALTER TABLE `régions`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `régions`
--
ALTER TABLE `régions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `oiseaux`
--
ALTER TABLE `oiseaux`
  ADD CONSTRAINT `regions` FOREIGN KEY (`régions`) REFERENCES `régions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
