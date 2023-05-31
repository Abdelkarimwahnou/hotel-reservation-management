-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : mer. 31 mai 2023 à 08:24
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
-- Base de données : `hotelreservation`
--

-- --------------------------------------------------------

--
-- Structure de la table `entries`
--

CREATE TABLE `entries` (
  `id` int(11) NOT NULL,
  `Booking_ID` varchar(255) NOT NULL,
  `no_of_adults` int(11) NOT NULL,
  `no_of_children` int(11) NOT NULL,
  `no_of_week_nights` int(11) NOT NULL,
  `room_type_reserved` int(11) NOT NULL,
  `arrival_year` int(11) NOT NULL,
  `arrival_month` int(11) NOT NULL,
  `arrival_day` int(11) NOT NULL,
  `booking_status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `entries`
--

INSERT INTO `entries` (`id`, `Booking_ID`, `no_of_adults`, `no_of_children`, `no_of_week_nights`, `room_type_reserved`, `arrival_year`, `arrival_month`, `arrival_day`, `booking_status`) VALUES
(1, 'INN00001', 2, 0, 2, 1, 2017, 3, 2, 'Not_Canceled'),
(2, 'INN00002', 1, 1, 5, 4, 2018, 6, 14, 'Canceled'),
(3, 'INN00003', 1, 3, 3, 2, 2020, 10, 23, 'Not_Canceled'),
(4, 'INN00004', 2, 1, 3, 3, 2021, 11, 8, 'Canceled'),
(5, 'INN00005', 1, 2, 4, 1, 2022, 5, 16, 'Canceled'),
(6, 'INN00006', 2, 0, 3, 2, 2023, 2, 23, 'Not_Canceled'),
(7, 'INN00007', 1, 0, 6, 4, 2023, 5, 2, 'Not_Canceled'),
(8, 'INN00008', 3, 2, 5, 1, 2023, 5, 19, 'Not_Canceled'),
(9, 'INN00009', 2, 0, 3, 2, 2023, 7, 1, 'Not_Canceled');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `entries`
--
ALTER TABLE `entries`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `entries`
--
ALTER TABLE `entries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
