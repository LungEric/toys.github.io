-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le :  Dim 03 mai 2020 à 21:48
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
(102, 'marc@outlook.com', '$2y$10$An2kJP5w138JcezMooQHmOwOkR0dkoZFUj1M5z0aOwxOzGy2iuAme', 'marc');

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
(49, 100, 10159.7, '2020-05-02 21:13:05'),
(50, 100, 610, '2020-05-02 21:13:25'),
(51, 102, 681.75, '2020-05-02 21:21:38'),
(52, 102, 965.9, '2020-05-02 21:21:51');

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
(61, 100, 155.99, 8, 30, 'gundamMA', '2020-05-02 21:13:05'),
(62, 100, 89, 6, 14, 'gundam6500', '2020-05-02 21:13:05'),
(63, 100, 1000, 8, 28, 'marc', '2020-05-02 21:13:05'),
(64, 100, 75.55, 5, 6, 'GundamOmega', '2020-05-02 21:13:05'),
(65, 100, 29.55, 6, 2, 'Gundam88', '2020-05-02 21:13:25'),
(66, 100, 56.99, 5, 7, 'GundamAzel', '2020-05-02 21:13:25'),
(67, 100, 29.55, 5, 1, 'Gundam9630', '2020-05-02 21:13:25'),
(68, 102, 29.55, 5, 1, 'Gundam9630', '2020-05-02 21:21:38'),
(69, 102, 89, 6, 14, 'gundam6500', '2020-05-02 21:21:38'),
(70, 102, 155.99, 4, 30, 'gundamMA', '2020-05-02 21:21:51'),
(71, 102, 56.99, 6, 7, 'GundamAzel', '2020-05-02 21:21:51');

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
(3, 'JOE', 'gundamJOE.jpg'),
(10, 'AZE', 'AZE.jpg'),
(11, 'Gundam066scale.jpg', 'Gundam066scale.jpg'),
(12, 'Gundam88', 'Gundam88.jpg'),
(13, 'Gundam100scale', 'Gundam100scale.jpg'),
(14, 'Gundam222', 'Gundam222.jpg'),
(15, 'gundam6500', 'gundam6500.jpg'),
(16, 'GundamAzel', 'GundamAzel.jpg'),
(17, 'Gundamlimited', 'Gundamlimited.jpg'),
(18, 'gundamMA', 'gundamMA.jpg'),
(19, 'GundamOmega', 'GundamOmega.jpg'),
(20, 'GundamZelot', 'GundamZelot.jpg'),
(21, 'marc', 'marc.jpg'),
(22, 'Gundam9630', 'Gundam9630.jpg');

-- --------------------------------------------------------

--
-- Structure de la table `produit`
--

CREATE TABLE `produit` (
  `id_produit` int(11) NOT NULL,
  `produit_name` varchar(255) NOT NULL,
  `produit_price` float NOT NULL,
  `produit_description` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `produit`
--

INSERT INTO `produit` (`id_produit`, `produit_name`, `produit_price`, `produit_description`) VALUES
(1, 'Gundam9630', 29.55, 'Pellentesque pellentesque neque non mauris iaculis fringilla. Mauris pellentesque gravida nibh, quis vulputate urna molestie aliquam. Aenean in semper ipsum. Phasellus blandit orci ut diam commodo commodo. '),
(2, 'Gundam88', 29.55, ' Maecenas elementum lectus enim, varius venenatis nibh sollicitudin vel. Nam porttitor ultrices ex at pharetra. Curabitur eu augue porttitor, cursus urna in, ullamcorper mauris.'),
(3, 'Gundam222', 89.99, 'rtegrfgfgdgfdsdfgsgsd'),
(4, 'GundamZelot', 75.55, 'dsfdsvcxvdf'),
(5, 'Gundamlimited', 89.99, 'rtegrfgfgdgfdsdfgsgsd'),
(6, 'GundamOmega', 75.55, 'dsfdsvcxvdf'),
(7, 'GundamAzel', 56.99, 'bvcbxdffdsfdg '),
(8, 'Gundam100scale', 87.55, 'csxwcxwcsqdfdsq'),
(14, 'gundam6500', 89, 'dsfdsfdsfdsfds'),
(28, 'marc', 1000, 'il est beau'),
(29, 'AZE', 87, 'Phasellus convallis accumsan efficitur. Ut ac convallis magna, at auctor nisi. Maecenas sagittis ultricies orci, sit amet hendrerit quam lacinia ac. '),
(30, 'gundamMA', 155.99, 'rgfdgbvbfdfgfdgdffdbvvc');

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
  MODIFY `id_client` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=108;

--
-- AUTO_INCREMENT pour la table `commande`
--
ALTER TABLE `commande`
  MODIFY `id_commande` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT pour la table `commande_item`
--
ALTER TABLE `commande_item`
  MODIFY `id_commande_item` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74;

--
-- AUTO_INCREMENT pour la table `image`
--
ALTER TABLE `image`
  MODIFY `id_image` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

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
