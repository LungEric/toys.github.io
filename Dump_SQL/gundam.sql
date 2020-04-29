-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le :  mer. 22 avr. 2020 à 17:34
-- Version du serveur :  10.4.11-MariaDB
-- Version de PHP :  7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `gundam`
--

-- --------------------------------------------------------

--
-- Structure de la table `client`
--

CREATE TABLE `client` (
  `id_client` int(11) NOT NULL,
  `client_email` varchar(255) NOT NULL,
  `client_password` varchar(255) NOT NULL,
  `client_login` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `client`
--

INSERT INTO `client` (`id_client`, `client_email`, `client_password`, `client_login`) VALUES
(100, 'LUNGSZEHOERIC@OUTLOOK.COM', '$2y$10$CtX3F.pX6w9MSUkPODLxJOMxMw5cz/.pjt5NLzrnWodumilzj48BO', 'eric2'),
(101, 'admin@001', '$2y$10$IeLHdzxU2MXNLtHv8ZsvFeYjA/N/KyveVOGqTrL64vsRvfplwjODW', 'admin'),
(102, 'marc@outlook.com', '$2y$10$An2kJP5w138JcezMooQHmOwOkR0dkoZFUj1M5z0aOwxOzGy2iuAme', 'marc'),
(103, 'client@outlook.com', '$2y$10$0DYeYy2npDES5Cg7yOMOq.pqQvQb34M/vrJehZFuVNAsWSlSTnG.q', 'client');

-- --------------------------------------------------------

--
-- Structure de la table `commande`
--

CREATE TABLE `commande` (
  `id_commande` int(11) NOT NULL,
  `id_c` int(11) NOT NULL,
  `total` float NOT NULL,
  `date_commande` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `commande`
--

INSERT INTO `commande` (`id_commande`, `id_c`, `total`, `date_commande`) VALUES
(34, 100, 5184.3, '2020-04-20 13:12:05'),
(35, 100, 9431.25, '2020-04-20 13:12:40'),
(36, 100, 1715.89, '2020-04-20 13:42:27'),
(37, 100, 2009.85, '2020-04-20 13:42:48'),
(38, 102, 786.25, '2020-04-20 22:55:53'),
(39, 102, 1157.7, '2020-04-20 22:56:05'),
(40, 102, 1061.86, '2020-04-20 23:32:10'),
(41, 100, 899.9, '2020-04-20 23:58:11'),
(42, 103, 1218.65, '2020-04-21 14:09:31'),
(43, 103, 11060.2, '2020-04-21 14:09:48'),
(44, 103, 1083.69, '2020-04-21 14:10:03'),
(45, 103, 8764.1, '2020-04-21 14:12:11');

-- --------------------------------------------------------

--
-- Structure de la table `commande_item`
--

CREATE TABLE `commande_item` (
  `id_commande_item` int(11) NOT NULL,
  `id_client_item` int(11) NOT NULL,
  `prix` float NOT NULL,
  `quantite` int(11) NOT NULL,
  `ref` int(11) NOT NULL,
  `nom_produit` varchar(255) NOT NULL,
  `date_achat` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `commande_item`
--

INSERT INTO `commande_item` (`id_commande_item`, `id_client_item`, `prix`, `quantite`, `ref`, `nom_produit`, `date_achat`) VALUES
(29, 100, 78.55, 66, 9, 'Gundam066scale', '2020-04-20 13:12:05'),
(30, 100, 78.55, 99, 9, 'Gundam066scale', '2020-04-20 13:12:40'),
(31, 100, 29.55, 56, 1, 'Gundam9', '2020-04-20 13:12:40'),
(32, 100, 155.99, 11, 31, 'gundamMA', '2020-04-20 13:42:27'),
(33, 100, 155.99, 10, 32, 'gundamMA', '2020-04-20 13:42:48'),
(34, 100, 89.99, 5, 5, 'Gundamlimited', '2020-04-20 13:42:48'),
(35, 102, 29.55, 8, 1, 'Gundam9', '2020-04-20 22:55:53'),
(36, 102, 78.55, 7, 9, 'Gundam066scale', '2020-04-20 22:55:53'),
(37, 102, 75.55, 5, 6, 'GundamOmega', '2020-04-20 22:56:05'),
(38, 102, 155.99, 5, 32, 'gundamMA', '2020-04-20 22:56:05'),
(39, 102, 89.99, 8, 5, 'Gundamlimited', '2020-04-20 23:32:10'),
(40, 102, 56.99, 6, 7, 'GundamAzel', '2020-04-20 23:32:10'),
(41, 100, 75.55, 8, 6, 'GundamOmega', '2020-04-20 23:58:11'),
(42, 100, 29.55, 10, 1, 'Gundam9', '2020-04-20 23:58:11'),
(43, 103, 29.55, 12, 1, 'Gundam9', '2020-04-21 14:09:31'),
(44, 103, 78.55, 11, 9, 'Gundam066scale', '2020-04-21 14:09:31'),
(45, 103, 89.99, 25, 3, 'Gundam222', '2020-04-21 14:09:48'),
(46, 103, 75.55, 65, 4, 'GundamZelot', '2020-04-21 14:09:48'),
(47, 103, 155.99, 25, 32, 'gundamMA', '2020-04-21 14:09:48'),
(48, 103, 155.99, 6, 31, 'gundamMA', '2020-04-21 14:10:03'),
(49, 103, 29.55, 5, 1, 'Gundam9', '2020-04-21 14:10:03'),
(50, 103, 87.55, 7, 8, 'Gundam100scale', '2020-04-21 14:12:11'),
(51, 103, 78.55, 6, 9, 'Gundam066scale', '2020-04-21 14:12:11'),
(52, 103, 75.55, 9, 6, 'GundamOmega', '2020-04-21 14:12:11'),
(53, 103, 1000, 7, 28, 'marc', '2020-04-21 14:12:11');

-- --------------------------------------------------------

--
-- Structure de la table `image`
--

CREATE TABLE `image` (
  `id_image` int(11) NOT NULL,
  `nom` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `image`
--

INSERT INTO `image` (`id_image`, `nom`, `image`) VALUES
(3, 'JOE', 'gundamJOE.jpg');

-- --------------------------------------------------------

--
-- Structure de la table `produit`
--

CREATE TABLE `produit` (
  `id_produit` int(11) NOT NULL,
  `produit_name` varchar(255) NOT NULL,
  `produit_price` float NOT NULL,
  `produit_description` varchar(255) NOT NULL,
  `produit_image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `produit`
--

INSERT INTO `produit` (`id_produit`, `produit_name`, `produit_price`, `produit_description`, `produit_image`) VALUES
(1, 'Gundam9', 29.55, 'dsfsdfdsfqsfqsdf', 'Gundam9.jpg'),
(2, 'Gundam88', 29.55, 'dsfsdfdsfqsfqsdf', 'Gundam88.jpg'),
(3, 'Gundam222', 89.99, 'rtegrfgfgdgfdsdfgsgsd', 'Gundam222.jpg'),
(4, 'GundamZelot', 75.55, 'dsfdsvcxvdf', 'GundamZelot.jpg'),
(5, 'Gundamlimited', 89.99, 'rtegrfgfgdgfdsdfgsgsd', 'Gundamlimited.jpg'),
(6, 'GundamOmega', 75.55, 'dsfdsvcxvdf', 'GundamOmega.jpg'),
(7, 'GundamAzel', 56.99, 'bvcbxdffdsfdg ', 'GundamAzel.jpg'),
(8, 'Gundam100scale', 87.55, 'csxwcxwcsqdfdsq', 'Gundam100scale.jpg'),
(9, 'Gundam066scale', 78.55, 'fdsfdsffdsfddsfsdfdsfds', 'Gundam066scale.jpg'),
(14, 'gundam6500', 89, 'dsfdsfdsfdsfds', ''),
(28, 'marc', 1000, 'il est beau', ''),
(29, 'AZE', 87, 'FDFFGFDGFD', ''),
(30, 'gundamMA', 155.99, 'rgfdgbvbfdfgfdgdffdbvvc', ''),
(31, 'gundamMA', 155.99, 'rgfdgbvbfdfgfdgdffdbvvc', ''),
(32, 'gundamMA', 155.99, 'rgfdgbvbfdfgfdgdffdbvvc', '');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `client`
--
ALTER TABLE `client`
  ADD PRIMARY KEY (`id_client`);

--
-- Index pour la table `commande`
--
ALTER TABLE `commande`
  ADD PRIMARY KEY (`id_commande`),
  ADD KEY `id_c` (`id_c`);

--
-- Index pour la table `commande_item`
--
ALTER TABLE `commande_item`
  ADD PRIMARY KEY (`id_commande_item`),
  ADD KEY `id_client_item` (`id_client_item`);

--
-- Index pour la table `image`
--
ALTER TABLE `image`
  ADD PRIMARY KEY (`id_image`);

--
-- Index pour la table `produit`
--
ALTER TABLE `produit`
  ADD PRIMARY KEY (`id_produit`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `client`
--
ALTER TABLE `client`
  MODIFY `id_client` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=104;

--
-- AUTO_INCREMENT pour la table `commande`
--
ALTER TABLE `commande`
  MODIFY `id_commande` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT pour la table `commande_item`
--
ALTER TABLE `commande_item`
  MODIFY `id_commande_item` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT pour la table `image`
--
ALTER TABLE `image`
  MODIFY `id_image` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `produit`
--
ALTER TABLE `produit`
  MODIFY `id_produit` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `commande`
--
ALTER TABLE `commande`
  ADD CONSTRAINT `commande_ibfk_1` FOREIGN KEY (`id_c`) REFERENCES `client` (`id_client`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `commande_item`
--
ALTER TABLE `commande_item`
  ADD CONSTRAINT `commande_item_ibfk_1` FOREIGN KEY (`id_client_item`) REFERENCES `client` (`id_client`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
