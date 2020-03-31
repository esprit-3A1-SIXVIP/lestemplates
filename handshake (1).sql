-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le :  mar. 31 mars 2020 à 13:23
-- Version du serveur :  10.4.11-MariaDB
-- Version de PHP :  5.6.40

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `handshake`
--

-- --------------------------------------------------------

--
-- Structure de la table `aide`
--

CREATE TABLE `aide` (
  `aideId` int(11) NOT NULL,
  `descriptionAide` varchar(250) NOT NULL,
  `localisationAide` varchar(250) NOT NULL,
  `categorieAide` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `aide`
--

INSERT INTO `aide` (`aideId`, `descriptionAide`, `localisationAide`, `categorieAide`) VALUES
(1, 'malek', 'tunis', 'malek'),
(2, 'desc', 'local', 'categ'),
(3, 'DACCORD', 'JE FAIS CA', 'MERCI BERTIN'),
(4, 'OKOKOK', 'OKOKOKOK', 'OKOKOKOK');

-- --------------------------------------------------------

--
-- Structure de la table `article`
--

CREATE TABLE `article` (
  `articleId` int(11) NOT NULL,
  `auteur` varchar(250) DEFAULT NULL,
  `titre` varchar(250) DEFAULT NULL,
  `descriptionArticle` varchar(250) NOT NULL,
  `datePublication` date NOT NULL,
  `img` varchar(250) DEFAULT NULL,
  `userId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `beneficiaire`
--

CREATE TABLE `beneficiaire` (
  `beneficiaireId` int(11) NOT NULL,
  `userId` int(11) DEFAULT NULL,
  `nomBeneficiaire` varchar(250) NOT NULL,
  `prenomBeneficiaire` varchar(250) NOT NULL,
  `email` varchar(250) NOT NULL,
  `dateNaissance` date NOT NULL,
  `ville` varchar(250) NOT NULL,
  `telephone` int(11) NOT NULL,
  `adresseGPS` varchar(250) NOT NULL,
  `role` varchar(250) DEFAULT NULL,
  `besoin` varchar(250) DEFAULT NULL,
  `nationalite` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `beneficiaire`
--

INSERT INTO `beneficiaire` (`beneficiaireId`, `userId`, `nomBeneficiaire`, `prenomBeneficiaire`, `email`, `dateNaissance`, `ville`, `telephone`, `adresseGPS`, `role`, `besoin`, `nationalite`) VALUES
(9, 1, 'Moussa', 'Oumarou', 'ouedraogoamisamyra@gmail.com', '2015-01-01', 'tunis', 27025468, 'petite Ariana', 'refugié', 'logement', 'nigérien'),
(10, 1, 'OUEDRAOGO', 'samyra', 'ouedraogoamisamyra@gmail.com', '2015-01-01', 'tunis', 4568, 'petite Ariana', 'beneficiare', 'NULL', 'NULL'),
(11, NULL, 'tt', 'tt', 'ouedraogoamisamyra@gmail.com', '2015-01-01', 'tunis', 8524758, 'petite Ariana', 'refugié', 'NULL', 'NULL');

-- --------------------------------------------------------

--
-- Structure de la table `commentaire`
--

CREATE TABLE `commentaire` (
  `userId` int(11) NOT NULL,
  `questionId` int(11) NOT NULL,
  `texteCommentaire` varchar(250) NOT NULL,
  `score` int(11) NOT NULL DEFAULT 0,
  `dateCommentaire` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `don`
--

CREATE TABLE `don` (
  `donId` int(11) NOT NULL,
  `userId` int(11) DEFAULT NULL,
  `typeDon` varchar(250) NOT NULL,
  `montantDon` int(11) DEFAULT NULL,
  `cibleDon` varchar(250) DEFAULT NULL,
  `libelleDonNature` varchar(250) DEFAULT NULL,
  `categorieDonNature` varchar(250) DEFAULT NULL,
  `rueRefuge` varchar(250) DEFAULT NULL,
  `villeRefuge` varchar(250) DEFAULT NULL,
  `paysRefuge` varchar(250) DEFAULT NULL,
  `longitude` double DEFAULT NULL,
  `latitude` double DEFAULT NULL,
  `disponibiliteRefuge` varchar(250) DEFAULT NULL,
  `capaciteRefuge` int(11) DEFAULT NULL,
  `quantiteDonNature` int(11) DEFAULT NULL,
  `dateDon` date DEFAULT NULL,
  `dateDebutRefuge` date DEFAULT NULL,
  `dateFinRefuge` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `don`
--

INSERT INTO `don` (`donId`, `userId`, `typeDon`, `montantDon`, `cibleDon`, `libelleDonNature`, `categorieDonNature`, `rueRefuge`, `villeRefuge`, `paysRefuge`, `longitude`, `latitude`, `disponibiliteRefuge`, `capaciteRefuge`, `quantiteDonNature`, `dateDon`, `dateDebutRefuge`, `dateFinRefuge`) VALUES
(23, 23, 'Refuge', NULL, NULL, NULL, NULL, 'GGG', 'GG', 'GG', 23.7654, 77.009, '0', 12, NULL, NULL, '2020-02-28', '2020-02-29');

-- --------------------------------------------------------

--
-- Structure de la table `evenement`
--

CREATE TABLE `evenement` (
  `evenementId` int(11) NOT NULL,
  `descriptionEvenement` varchar(250) NOT NULL,
  `lieuEvenement` varchar(250) NOT NULL,
  `dateEvenement` date NOT NULL,
  `heureEvenement` time NOT NULL,
  `porteeEvenement` varchar(250) NOT NULL,
  `prixEvenement` int(11) NOT NULL,
  `image` varchar(250) NOT NULL,
  `userId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `participation`
--

CREATE TABLE `participation` (
  `userId` int(11) NOT NULL,
  `evenementId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `question`
--

CREATE TABLE `question` (
  `questionId` int(11) NOT NULL,
  `texteQuestion` varchar(255) NOT NULL,
  `dateQuestion` date NOT NULL,
  `score` int(11) NOT NULL DEFAULT 0,
  `userId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `reponse`
--

CREATE TABLE `reponse` (
  `donId` int(11) NOT NULL,
  `aideId` int(11) NOT NULL,
  `dateReponse` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(180) COLLATE utf8_unicode_ci NOT NULL,
  `username_canonical` varchar(180) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(180) COLLATE utf8_unicode_ci NOT NULL,
  `email_canonical` varchar(180) COLLATE utf8_unicode_ci NOT NULL,
  `enabled` tinyint(1) NOT NULL,
  `salt` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `last_login` datetime DEFAULT NULL,
  `confirmation_token` varchar(180) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password_requested_at` datetime DEFAULT NULL,
  `roles` longtext COLLATE utf8_unicode_ci NOT NULL COMMENT '(DC2Type:array)',
  `profil` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `nomUser` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `prenomUser` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `telephone` int(11) DEFAULT NULL,
  `nomOrganisation` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ville` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `rue` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pays` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `domaine` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `accesShakeHub` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `user`
--

INSERT INTO `user` (`id`, `username`, `username_canonical`, `email`, `email_canonical`, `enabled`, `salt`, `password`, `last_login`, `confirmation_token`, `password_requested_at`, `roles`, `profil`, `nomUser`, `prenomUser`, `telephone`, `nomOrganisation`, `ville`, `rue`, `pays`, `domaine`, `accesShakeHub`) VALUES
(1, 'samyra', 'samyra', 'ouedraogoamisamyra@gmail.com', 'ouedraogoamisamyra@gmail.com', 1, 'ZreFeLwmsO2xL7rsvUqolWrO.cUbQZK04L8oN0mEtL0', 'kQ+n1/p4z7OSqJKC8Ou9OLXwtnNneKTd4AKmT5yz2tNrtfsdb4JlRQmXF8T7i4v+kkLcMjv+0p2mb6Tsk6Cy7Q==', '2020-03-22 23:24:27', NULL, NULL, 'a:1:{i:0;s:5:\"ADMIN\";}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(2, 'teacher', 'teacher', 'ouedraogoamisamyra33@gmail.com', 'ouedraogoamisamyra33@gmail.com', 1, 'OEmdhh60ExEygMD/s4bP3Af.ONaQ..4v6mQdPnNtp2A', 'P8TJCYm5OKgdF0+3Uy8meyY3Ht3S19diJ4FPKc+kM3CHRp6BYLWm7LiFRuyao1Y+kYD6mwqZM7Ni0goK0++KIw==', '2020-03-19 20:28:44', NULL, NULL, 'a:0:{}', 'NULL', 'NULL', 'NULL', 0, 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 1);

-- --------------------------------------------------------

--
-- Structure de la table `utilisationrefuge`
--

CREATE TABLE `utilisationrefuge` (
  `beneficiaireId` int(11) NOT NULL,
  `donId` int(11) NOT NULL,
  `dateDebut` date NOT NULL,
  `dateFin` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `aide`
--
ALTER TABLE `aide`
  ADD PRIMARY KEY (`aideId`);

--
-- Index pour la table `article`
--
ALTER TABLE `article`
  ADD PRIMARY KEY (`articleId`),
  ADD KEY `fk_useridarticle` (`userId`);

--
-- Index pour la table `beneficiaire`
--
ALTER TABLE `beneficiaire`
  ADD PRIMARY KEY (`beneficiaireId`),
  ADD KEY `IDX_A97103FA64B64DCC` (`userId`);

--
-- Index pour la table `commentaire`
--
ALTER TABLE `commentaire`
  ADD PRIMARY KEY (`userId`,`questionId`,`dateCommentaire`),
  ADD KEY `fk_commentairequestionId` (`questionId`),
  ADD KEY `userId` (`userId`);

--
-- Index pour la table `don`
--
ALTER TABLE `don`
  ADD PRIMARY KEY (`donId`);

--
-- Index pour la table `evenement`
--
ALTER TABLE `evenement`
  ADD PRIMARY KEY (`evenementId`),
  ADD KEY `fk_evenement` (`userId`);

--
-- Index pour la table `participation`
--
ALTER TABLE `participation`
  ADD PRIMARY KEY (`userId`,`evenementId`),
  ADD KEY `fk_paticipevent` (`evenementId`),
  ADD KEY `userId` (`userId`);

--
-- Index pour la table `question`
--
ALTER TABLE `question`
  ADD PRIMARY KEY (`questionId`),
  ADD KEY `userId` (`userId`);

--
-- Index pour la table `reponse`
--
ALTER TABLE `reponse`
  ADD PRIMARY KEY (`donId`,`aideId`,`dateReponse`),
  ADD KEY `donId` (`donId`),
  ADD KEY `aideId` (`aideId`);

--
-- Index pour la table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_957A647992FC23A8` (`username_canonical`),
  ADD UNIQUE KEY `UNIQ_957A6479A0D96FBF` (`email_canonical`),
  ADD UNIQUE KEY `UNIQ_957A6479C05FB297` (`confirmation_token`);

--
-- Index pour la table `utilisationrefuge`
--
ALTER TABLE `utilisationrefuge`
  ADD PRIMARY KEY (`beneficiaireId`,`donId`,`dateDebut`),
  ADD KEY `fk_utilisadonId` (`donId`),
  ADD KEY `beneficiaireId` (`beneficiaireId`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `aide`
--
ALTER TABLE `aide`
  MODIFY `aideId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `article`
--
ALTER TABLE `article`
  MODIFY `articleId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `beneficiaire`
--
ALTER TABLE `beneficiaire`
  MODIFY `beneficiaireId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT pour la table `don`
--
ALTER TABLE `don`
  MODIFY `donId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT pour la table `evenement`
--
ALTER TABLE `evenement`
  MODIFY `evenementId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `question`
--
ALTER TABLE `question`
  MODIFY `questionId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT pour la table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `article`
--
ALTER TABLE `article`
  ADD CONSTRAINT `	fk_useridarticle` FOREIGN KEY (`userId`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `beneficiaire`
--
ALTER TABLE `beneficiaire`
  ADD CONSTRAINT `fk_userid` FOREIGN KEY (`userId`) REFERENCES `user` (`id`);

--
-- Contraintes pour la table `commentaire`
--
ALTER TABLE `commentaire`
  ADD CONSTRAINT `fk_commentairequestionId` FOREIGN KEY (`questionId`) REFERENCES `question` (`questionId`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_commentaireuserId` FOREIGN KEY (`userId`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `evenement`
--
ALTER TABLE `evenement`
  ADD CONSTRAINT `fk_evenement` FOREIGN KEY (`userId`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `participation`
--
ALTER TABLE `participation`
  ADD CONSTRAINT `fk_participuser` FOREIGN KEY (`userId`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_paticipevent` FOREIGN KEY (`evenementId`) REFERENCES `evenement` (`evenementId`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `reponse`
--
ALTER TABLE `reponse`
  ADD CONSTRAINT `fk_aide` FOREIGN KEY (`aideId`) REFERENCES `aide` (`aideId`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_don` FOREIGN KEY (`donId`) REFERENCES `don` (`donId`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `utilisationrefuge`
--
ALTER TABLE `utilisationrefuge`
  ADD CONSTRAINT `fk_utilisabId` FOREIGN KEY (`beneficiaireId`) REFERENCES `beneficiaire` (`beneficiaireId`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_utilisadonId` FOREIGN KEY (`donId`) REFERENCES `don` (`donId`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
