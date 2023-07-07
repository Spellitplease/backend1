-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : ven. 07 juil. 2023 à 08:25
-- Version du serveur : 8.0.31
-- Version de PHP : 8.0.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `souhait`
--

-- --------------------------------------------------------

--
-- Structure de la table `article`
--

DROP TABLE IF EXISTS `article`;
CREATE TABLE IF NOT EXISTS `article` (
  `idarticle` int NOT NULL AUTO_INCREMENT,
  `nom` varchar(45) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `description` varchar(500) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  PRIMARY KEY (`idarticle`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb3;

--
-- Déchargement des données de la table `article`
--

INSERT INTO `article` (`idarticle`, `nom`, `description`) VALUES
(1, 'Epluche-Mouton', 'Pour les moutons haineux, laineux et mauvaise haleine!'),
(2, 'pèse-personne', 'Comme son nom l\'indique, il ne sert à rien! '),
(3, 'Chien', 'Si vous avez un chat un peu chiant, c\'est la solution pour le calmer!'),
(4, 'Crayon de bois', '30cm environ, pas facile d\'écrire avec mais il est joli'),
(5, 'Livre de cuisine', 'Si votre cuisine ne sait pas lire tant pis!'),
(6, 'Râpe à fromage', 'Sauf si votre fromage préfère le rock fort!'),
(7, 'Bonbons au poivre', 'Pour faire des farces(marchent mieux sur les belles mères!)'),
(8, 'Ordinateur portable', 'Solide, très solide( la brouette pour le transporter est fournie.)'),
(9, 'Couteau suisse', 'A n\'utiliser que si vous n\'êtes pas dans l\'urgence sinon ca va être long! '),
(10, 'Feutre effaçable', 'Tellement efficace qu\'il s\'efface pendant que vous écrivez (autant acheter un stylo sans encre qui est tout aussi efficace!)');

-- --------------------------------------------------------

--
-- Structure de la table `commentaire`
--

DROP TABLE IF EXISTS `commentaire`;
CREATE TABLE IF NOT EXISTS `commentaire` (
  `idcommentaire` int NOT NULL AUTO_INCREMENT,
  `description` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci,
  `createdAt` datetime DEFAULT NULL,
  `Utilisateur_idUtilisateur` int NOT NULL,
  `listeSouhait_idlisteSouhait` int NOT NULL,
  PRIMARY KEY (`idcommentaire`),
  KEY `fk_commentaire_Utilisateur1_idx` (`Utilisateur_idUtilisateur`),
  KEY `fk_commentaire_listeSouhait1_idx` (`listeSouhait_idlisteSouhait`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Structure de la table `listesouhait`
--

DROP TABLE IF EXISTS `listesouhait`;
CREATE TABLE IF NOT EXISTS `listesouhait` (
  `idlisteSouhait` int NOT NULL AUTO_INCREMENT,
  `nom` varchar(45) DEFAULT NULL,
  `description` text,
  `createdAt` datetime DEFAULT NULL,
  `Utilisateur_idUtilisateur` int NOT NULL,
  PRIMARY KEY (`idlisteSouhait`),
  KEY `fk_listeSouhait_Utilisateur_idx` (`Utilisateur_idUtilisateur`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb3;

--
-- Déchargement des données de la table `listesouhait`
--

INSERT INTO `listesouhait` (`idlisteSouhait`, `nom`, `description`, `createdAt`, `Utilisateur_idUtilisateur`) VALUES
(1, 'Foutoir', 'aaaaaaaaaaaaaaaaaaaa aaaaaaaaaaaaaaaaaaa aaaaaaaaaaaaaaaaaaaaaaaaaa aaaaaaaaaaaaaaaa aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa', '2023-07-06 15:10:19', 1),
(2, 'Bazar', 'bbbbbbbbbbbbbbbbbbbbbbbbb bbbbbbbbbbbbb bbbbbbbbbbbbbbbbbbbbbbbbbb bbbbbbbbbbbbbbbbbb bbbbbbbbbbbbbbbbbbbbbbbb', '2023-07-06 15:10:19', 2),
(3, 'Souk', 'CCCCCCCCccccccccccccccccccc ccccccccccccccc cccccccccccccccc ccccccccccccccccc ccccccccccccccccccccccccccccccccccccccccccc', '2023-07-06 15:10:19', 3),
(4, 'Capharnaum', 'dddddddddddddddddddddddd dddddddddddddd ddddddddddddddddddddddddd ddddddddddddddddddd ddddddddddddddddddddddd', '2023-07-06 15:10:19', 4),
(13, 'Foutoir', 'essai', '2023-07-06 15:48:25', 1),
(14, 'NNNNNNN', 'Pourquoi tant de haine', '2023-07-06 15:56:59', 1),
(15, 'Mais ...', 'bon sang!', '2023-07-06 15:58:01', 1),
(16, 'rhaaaaaa', 'gurkmljamd=c', '2023-07-06 15:59:26', 1),
(17, 'gloulglou', 'blopblop', '2023-07-06 16:01:58', 1);

-- --------------------------------------------------------

--
-- Structure de la table `listesouhait_has_article`
--

DROP TABLE IF EXISTS `listesouhait_has_article`;
CREATE TABLE IF NOT EXISTS `listesouhait_has_article` (
  `listeSouhait_idlisteSouhait` int NOT NULL,
  `article_idarticle` int NOT NULL,
  KEY `fk_listeSouhait_has_article_listeSouhait1_idx` (`listeSouhait_idlisteSouhait`),
  KEY `fk_listeSouhait_has_article_article1_idx` (`article_idarticle`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Déchargement des données de la table `listesouhait_has_article`
--

INSERT INTO `listesouhait_has_article` (`listeSouhait_idlisteSouhait`, `article_idarticle`) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(1, 5),
(13, 4),
(14, 5),
(15, 6),
(16, 3),
(17, 10);

-- --------------------------------------------------------

--
-- Structure de la table `utilisateur`
--

DROP TABLE IF EXISTS `utilisateur`;
CREATE TABLE IF NOT EXISTS `utilisateur` (
  `idutilisateur` int NOT NULL AUTO_INCREMENT,
  `nom` varchar(45) DEFAULT NULL,
  `mail` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `mp` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci,
  `role` int DEFAULT '0',
  `isActive` tinyint DEFAULT NULL,
  `avatar` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  PRIMARY KEY (`idutilisateur`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3;

--
-- Déchargement des données de la table `utilisateur`
--

INSERT INTO `utilisateur` (`idutilisateur`, `nom`, `mail`, `mp`, `role`, `isActive`, `avatar`) VALUES
(1, 'tata', 'tata@gmail.com', '$2y$10$cQ6ncuYSfL6TUdSS2szVI.gs772WCpqC2.UyuyLPmmrly535miJyy', 0, 1, NULL),
(2, 'toto', 'toto@gmail.com', '$2y$10$hBA9Nb1XXEURhcztcDOxZueMy//5PdPveB9VUp0LusF3qNapliu.C', 0, 1, 'https://static.vecteezy.com/ti/photos-gratuite/p1/8933189-avatar-homme-homme-rendu-3d-avec-costume-noir-et-ruban-papillon-rouge-photo.jpg'),
(3, 'thom', 'thom@gmail.com', '$2y$10$OCfrXjQSQYqKCO1AHBP7KOsQ6580PDII9tvmxpl4h.27kuhc7rJLW', 1, 1, 'https://img.freepik.com/photos-premium/adolescent-asiatique-drole-3d-style-manga_183364-78790.jpg?w=360'),
(4, 'tutu', 'tutu@gmail.com', '$2y$10$rj5qdMUDqo98DeJED0ZqEebUDvjZ/F1Cxjak7oQ6uA8s6Tt8w/c6i', 0, 1, 'https://img.freepik.com/photos-premium/homme-jaune-amusant_183364-25106.jpg?w=360');

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `commentaire`
--
ALTER TABLE `commentaire`
  ADD CONSTRAINT `fk_commentaire_listeSouhait1` FOREIGN KEY (`listeSouhait_idlisteSouhait`) REFERENCES `listesouhait` (`idlisteSouhait`),
  ADD CONSTRAINT `fk_commentaire_Utilisateur1` FOREIGN KEY (`Utilisateur_idUtilisateur`) REFERENCES `utilisateur` (`idutilisateur`);

--
-- Contraintes pour la table `listesouhait`
--
ALTER TABLE `listesouhait`
  ADD CONSTRAINT `fk_listeSouhait_Utilisateur` FOREIGN KEY (`Utilisateur_idUtilisateur`) REFERENCES `utilisateur` (`idutilisateur`);

--
-- Contraintes pour la table `listesouhait_has_article`
--
ALTER TABLE `listesouhait_has_article`
  ADD CONSTRAINT `fk_listeSouhait_has_article_article1` FOREIGN KEY (`article_idarticle`) REFERENCES `article` (`idarticle`),
  ADD CONSTRAINT `fk_listeSouhait_has_article_listeSouhait1` FOREIGN KEY (`listeSouhait_idlisteSouhait`) REFERENCES `listesouhait` (`idlisteSouhait`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
