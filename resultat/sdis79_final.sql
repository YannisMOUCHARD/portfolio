-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : dim. 05 mai 2024 à 17:27
-- Version du serveur : 10.4.32-MariaDB
-- Version de PHP : 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `sdis79`
--

-- --------------------------------------------------------

--
-- Structure de la table `affecter`
--

CREATE TABLE `affecter` (
  `Matricule` varchar(50) NOT NULL,
  `Date_Affectation` date NOT NULL,
  `ID_Caserne` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `affecter`
--

INSERT INTO `affecter` (`Matricule`, `Date_Affectation`, `ID_Caserne`) VALUES
('123321', '2021-06-19', NULL),
('123473', '2020-09-02', NULL),
('123482', '2021-03-24', NULL),
('567654', '2000-11-12', NULL),
('123006', '2018-09-30', 'AI'),
('123309', '1989-02-01', 'AI'),
('456345', '2021-02-20', 'AI'),
('123465', '2018-05-09', 'AL'),
('456666', '2017-09-07', 'AL'),
('12361', '2001-01-21', 'AM'),
('1221298', '1992-08-19', 'AR'),
('123399', '2021-06-25', 'AS'),
('123466', '2020-12-07', 'BB'),
('456111', '2020-11-20', 'BB'),
('123463', '2011-06-30', 'BL'),
('123458', '2017-05-22', 'BN'),
('456234', '2023-09-12', 'BN'),
('123467', '2000-05-21', 'BO'),
('456773', '2024-01-01', 'BO'),
('123007', '2000-02-17', 'BR'),
('123309', '1985-02-20', 'BR'),
('123449', '2001-09-10', 'BR'),
('123449', '2011-05-19', 'BR'),
('456090', '2024-01-23', 'BR'),
('456345', '2020-03-04', 'BR'),
('123567', '2012-01-19', 'CB'),
('123408', '2008-04-25', 'CE'),
('456505', '2024-04-22', 'CE'),
('986993', '1990-09-17', 'CE'),
('123009', '2019-09-30', 'CH'),
('123490', '2001-01-31', 'CH'),
('456550', '2009-08-22', 'CH'),
('123304', '2021-05-09', 'CO'),
('123391', '2002-03-20', 'CO'),
('123404', '2018-03-30', 'CO'),
('123473', '2009-12-04', 'CO'),
('123473', '2012-09-09', 'CO'),
('456020', '2023-08-28', 'CO'),
('123003', '2022-01-03', 'CS'),
('123488', '1989-05-24', 'CV'),
('123002', '2022-01-02', 'CY'),
('123456', '2011-11-24', 'CZ'),
('123001', '2022-01-01', 'EV'),
('123398', '2019-04-28', 'FE'),
('123391', '2009-12-10', 'LA'),
('456004', '2010-04-21', 'LA'),
('123544', '2021-04-03', 'LC'),
('123471', '1995-03-06', 'LE'),
('456000', '2023-06-24', 'LE'),
('123620', '1993-11-20', 'LL'),
('456600', '2023-10-13', 'LL'),
('123550', '2010-01-17', 'LP'),
('123000', '1993-09-30', 'MA'),
('123468', '1996-04-20', 'ME'),
('123567', '2001-10-11', 'ME'),
('456334', '2023-01-20', 'ME'),
('123401', '1999-10-27', 'MG'),
('456222', '2015-02-04', 'MG'),
('123459', '2003-09-12', 'MM'),
('123460', '2009-01-29', 'MM'),
('123008', '2011-09-22', 'MO'),
('123449', '2018-12-04', 'MO'),
('456333', '2020-06-11', 'MO'),
('456345', '2020-06-05', 'MO'),
('456555', '2021-04-30', 'MO'),
('123473', '2024-02-12', 'MP'),
('456228', '2024-01-01', 'MP'),
('123708', '2018-10-13', 'MZ'),
('123305', '1988-07-24', 'NA'),
('456707', '2019-01-01', 'NA'),
('123123', '2004-09-20', 'NI'),
('123124', '1993-07-21', 'NI'),
('123304', '2011-09-29', 'NI'),
('123321', '1998-04-23', 'NI'),
('123391', '1999-09-25', 'NI'),
('123459', '1993-03-22', 'NI'),
('123466', '2007-08-22', 'NI'),
('123473', '2001-05-21', 'NI'),
('123473', '2018-06-20', 'NI'),
('123490', '1995-09-02', 'NI'),
('456004', '2006-02-14', 'NI'),
('456477', '2021-03-31', 'NI'),
('456770', '2022-12-12', 'NI'),
('986995', '1999-12-12', 'NI'),
('986996', '2024-03-15', 'NI'),
('123089', '2005-02-23', 'PA'),
('123449', '2001-12-07', 'PA'),
('123489', '1997-05-04', 'PA'),
('123490', '2015-11-26', 'PA'),
('123692', '2000-06-23', 'PA'),
('123692', '2012-07-31', 'PA'),
('123908', '1994-04-23', 'PA'),
('123464', '2014-05-21', 'PR'),
('123481', '2020-09-24', 'SA'),
('456001', '2024-01-22', 'SA'),
('123473', '2011-09-06', 'SC'),
('123478', '2019-08-22', 'SC'),
('455678', '2021-08-12', 'SC'),
('123304', '2023-11-02', 'SE'),
('123544', '2011-03-27', 'SE'),
('123303', '2009-09-21', 'SM'),
('123401', '1986-06-02', 'SM'),
('456770', '2024-02-01', 'SM'),
('123309', '1991-04-20', 'SS'),
('123667', '1989-06-23', 'SV'),
('456760', '2020-01-24', 'SV'),
('123457', '1997-06-04', 'SZ'),
('432567', '2022-03-28', 'SZ'),
('123309', '1983-12-21', 'TH'),
('123449', '2021-09-10', 'TH'),
('123620', '1990-09-22', 'TH'),
('123908', '2005-04-23', 'TZ'),
('123089', '2009-07-02', 'VA'),
('123692', '2004-12-04', 'VA'),
('123123', '1993-05-23', 'VV'),
('123462', '1999-02-02', 'VV');

-- --------------------------------------------------------

--
-- Structure de la table `caserne`
--

CREATE TABLE `caserne` (
  `ID_Caserne` varchar(50) NOT NULL,
  `Libellé` varchar(50) NOT NULL,
  `Adresse` varchar(50) DEFAULT NULL,
  `Ville` varchar(50) DEFAULT NULL,
  `CP` varchar(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `caserne`
--

INSERT INTO `caserne` (`ID_Caserne`, `Libellé`, `Adresse`, `Ville`, `CP`) VALUES
('AI', 'Airvault', NULL, NULL, NULL),
('AL', 'Aigondigné - Le Lambon', NULL, NULL, NULL),
('AM', 'La Courance - Amuré', NULL, NULL, NULL),
('AR', 'Argentonnay', NULL, NULL, NULL),
('AS', 'Assais les Jumeaux', NULL, NULL, NULL),
('BB', 'Brioux sur Boutonne', NULL, NULL, NULL),
('BE', 'Béceleuf', NULL, NULL, NULL),
('BL', 'Brulain', NULL, NULL, NULL),
('BN', 'Beauvoir sur Niort', NULL, NULL, NULL),
('BO', 'Chef-Boutonne', NULL, NULL, NULL),
('BR', 'Bressuire', NULL, NULL, NULL),
('CB', 'Celles sur Belle', NULL, NULL, NULL),
('CE', 'Cerizay', NULL, NULL, NULL),
('CH', 'Champdeniers', NULL, NULL, NULL),
('CO', 'Coulonges sur l\'Autize', NULL, NULL, NULL),
('CS', 'Caserne Sud', '30 boulevard du Maréchal Juin', 'Parthenay', '79200'),
('CV', 'Cherveux', NULL, NULL, NULL),
('CY', 'Chauray', NULL, NULL, NULL),
('CZ', 'Chizé', NULL, NULL, NULL),
('DD', 'Dicection Départementale - Chauray', NULL, NULL, NULL),
('EV', 'L\'Entente - Villers en plaine', NULL, NULL, NULL),
('FE', 'Fenioux', NULL, NULL, NULL),
('LA', 'L\'Absie', NULL, NULL, NULL),
('LC', 'La Chapelle Saint-Laurent', NULL, NULL, NULL),
('LE', 'Lezay', NULL, NULL, NULL),
('LL', 'Les Landes - Bouillé Loretz', NULL, NULL, NULL),
('LP', 'La Plaine - Plaine et Vallées', NULL, NULL, NULL),
('MA', 'Mauléon', NULL, NULL, NULL),
('ME', 'Melle', NULL, NULL, NULL),
('MG', 'Ménigoute', NULL, NULL, NULL),
('MM', 'Mauzé-sur-le-Mignon', NULL, NULL, NULL),
('MO', 'Moncoutant', NULL, NULL, NULL),
('MP', 'La Mothe St Héray /Pamproux', NULL, NULL, NULL),
('MZ', 'Mazières en Gâtine', NULL, NULL, NULL),
('NA', 'Nueil-les-Aubiers', NULL, NULL, NULL),
('NI', 'Niort', NULL, NULL, NULL),
('PA', 'Parthenay', NULL, NULL, NULL),
('PR', 'Prahecq', NULL, NULL, NULL),
('SA', 'Echiré - Sèvre Amont', NULL, NULL, NULL),
('SC', 'Arc en Sèvre - La Crèche', NULL, NULL, NULL),
('SE', 'Secondigny', NULL, NULL, NULL),
('SM', 'St Maixent l\'école', NULL, NULL, NULL),
('SS', 'Saint-Martin de Sanzay', NULL, NULL, NULL),
('SV', 'Saint-Varent', NULL, NULL, NULL),
('SZ', 'Sauzé-Vaussais', NULL, NULL, NULL),
('TH', 'Thouars', NULL, NULL, NULL),
('TZ', 'Thénezay', NULL, NULL, NULL),
('VA', 'Vasles', NULL, NULL, NULL),
('VP', 'L’Entente - Villers en plaine', NULL, NULL, NULL),
('VV', 'Venise Verte - Arcais', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `employeur`
--

CREATE TABLE `employeur` (
  `ID_Employeur` varchar(50) NOT NULL,
  `Nom` varchar(50) NOT NULL,
  `Adresse` varchar(50) NOT NULL,
  `Ville` varchar(50) NOT NULL,
  `CP` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `employeur`
--

INSERT INTO `employeur` (`ID_Employeur`, `Nom`, `Adresse`, `Ville`, `CP`) VALUES
('Mairie_Bressuire', 'Mairie de Bressuire', '2 rue de l\'Hôtel de Ville', 'Bressuire', '79300'),
('Mairie_Niort', 'Mairie de Niort', '1 place Martin Bastard', 'Niort', '79000'),
('SDIS_79', 'SDIS des Deux-Sèvres', '15 rue du Guesclin', 'Niort', '79000');

-- --------------------------------------------------------

--
-- Structure de la table `engin`
--

CREATE TABLE `engin` (
  `ID_Type_Engin` varchar(50) NOT NULL,
  `Numero_Ordre` int(11) NOT NULL,
  `ID_Caserne` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `engin`
--

INSERT INTO `engin` (`ID_Type_Engin`, `Numero_Ordre`, `ID_Caserne`) VALUES
('VSAV', 55, NULL),
('VSR', 47, NULL),
('VSAV', 1, 'AI'),
('VSR', 1, 'AI'),
('VSR', 2, 'AI'),
('VSR', 68, 'AI'),
('VSR', 102, 'AI'),
('EPA', 9, 'AL'),
('VSAV', 2, 'AL'),
('VSR', 3, 'AL'),
('VSR', 103, 'AL'),
('VSAV', 3, 'AM'),
('VSR', 4, 'AM'),
('VSR', 87, 'AM'),
('VSAV', 4, 'AR'),
('VSR', 5, 'AR'),
('VSAV', 5, 'AS'),
('VSR', 6, 'AS'),
('VSR', 88, 'AS'),
('VSR', 89, 'AS'),
('VSAV', 6, 'BB'),
('VSR', 7, 'BB'),
('VSR', 99, 'BB'),
('EPA', 8, 'BE'),
('VSAV', 7, 'BE'),
('VSR', 8, 'BE'),
('VSR', 110, 'BE'),
('VSAV', 8, 'BL'),
('VSR', 9, 'BL'),
('VSR', 100, 'BL'),
('VSAV', 9, 'BN'),
('VSR', 10, 'BN'),
('VSR', 101, 'BN'),
('VSAV', 10, 'BO'),
('VSR', 11, 'BO'),
('VSR', 109, 'BO'),
('EPA', 7, 'BR'),
('FPT', 4, 'BR'),
('VSAV', 11, 'BR'),
('VSAV', 12, 'BR'),
('VSR', 12, 'BR'),
('VSR', 56, 'BR'),
('VSR', 57, 'BR'),
('VSR', 86, 'BR'),
('VSR', 97, 'BR'),
('VSR', 98, 'BR'),
('VSAV', 13, 'CB'),
('VSR', 13, 'CB'),
('VSR', 80, 'CB'),
('VSR', 81, 'CB'),
('CCF', 4, 'CE'),
('VSAV', 14, 'CE'),
('VSR', 14, 'CE'),
('VSAV', 15, 'CH'),
('VSAV', 38, 'CH'),
('VSR', 15, 'CH'),
('VSR', 84, 'CH'),
('VSR', 85, 'CH'),
('EPA', 10, 'CO'),
('VSAV', 16, 'CO'),
('VSR', 16, 'CO'),
('VSR', 78, 'CO'),
('VSR', 79, 'CO'),
('VDC', 345, 'CS'),
('VSAV', 17, 'CV'),
('VSR', 17, 'CV'),
('VLTT', 234, 'CY'),
('VSAV', 18, 'CZ'),
('VSR', 18, 'CZ'),
('VSR', 76, 'CZ'),
('VSAV', 19, 'DD'),
('VSR', 19, 'DD'),
('VSR', 77, 'DD'),
('CCGC', 123, 'EV'),
('VSAV', 20, 'FE'),
('VSR', 20, 'FE'),
('VSAV', 21, 'LA'),
('VSR', 21, 'LA'),
('VSAV', 22, 'LC'),
('VSR', 22, 'LC'),
('VSAV', 23, 'LE'),
('VSR', 23, 'LE'),
('VSR', 74, 'LE'),
('VSR', 75, 'LE'),
('VSAV', 24, 'LL'),
('VSR', 24, 'LL'),
('VSR', 72, 'LL'),
('VSAV', 25, 'LP'),
('VSR', 25, 'LP'),
('VSR', 73, 'LP'),
('VSAV', 26, 'MA'),
('VSR', 26, 'MA'),
('CCF', 3, 'ME'),
('EPA', 11, 'ME'),
('VSAV', 27, 'ME'),
('VSAV', 28, 'ME'),
('VSR', 27, 'ME'),
('VSR', 61, 'ME'),
('VSR', 62, 'ME'),
('VSR', 82, 'ME'),
('VSR', 112, 'ME'),
('VSR', 28, 'MG'),
('VSR', 66, 'MG'),
('VSAV', 29, 'MM'),
('VSR', 29, 'MM'),
('VSAV', 30, 'MO'),
('VSAV', 31, 'MO'),
('VSR', 30, 'MO'),
('VSR', 90, 'MO'),
('VSAV', 32, 'MP'),
('VSR', 31, 'MP'),
('VSAV', 33, 'MZ'),
('VSR', 32, 'MZ'),
('VSR', 71, 'MZ'),
('VSAV', 34, 'NA'),
('VSR', 33, 'NA'),
('VSR', 104, 'NA'),
('CCF', 1, 'NI'),
('EPA', 3, 'NI'),
('EPA', 4, 'NI'),
('EPA', 5, 'NI'),
('FPT', 2, 'NI'),
('VSAV', 35, 'NI'),
('VSAV', 36, 'NI'),
('VSAV', 37, 'NI'),
('VSR', 34, 'NI'),
('VSR', 49, 'NI'),
('VSR', 50, 'NI'),
('VSR', 51, 'NI'),
('VSR', 52, 'NI'),
('VSR', 53, 'NI'),
('VSR', 83, 'NI'),
('VSR', 93, 'NI'),
('VSR', 111, 'NI'),
('EPA', 1, 'PA'),
('EPA', 2, 'PA'),
('FPT', 1, 'PA'),
('VSAV', 39, 'PA'),
('VSAV', 40, 'PA'),
('VSAV', 41, 'PA'),
('VSR', 35, 'PA'),
('VSR', 54, 'PA'),
('VSR', 55, 'PA'),
('VSR', 94, 'PA'),
('VSR', 95, 'PA'),
('VSAV', 42, 'PR'),
('VSR', 36, 'PR'),
('VSAV', 43, 'SA'),
('VSR', 37, 'SA'),
('VSR', 69, 'SA'),
('VSR', 105, 'SA'),
('VSAV', 44, 'SC'),
('VSR', 38, 'SC'),
('VSR', 70, 'SC'),
('VSAV', 45, 'SE'),
('VSR', 39, 'SE'),
('VSR', 67, 'SE'),
('EPA', 12, 'SM'),
('VSAV', 46, 'SM'),
('VSAV', 47, 'SM'),
('VSR', 40, 'SM'),
('VSR', 63, 'SM'),
('VSR', 64, 'SM'),
('VSR', 65, 'SM'),
('VSR', 108, 'SM'),
('FPT', 5, 'SS'),
('VSAV', 48, 'SS'),
('VSR', 41, 'SS'),
('VSR', 106, 'SS'),
('VSAV', 49, 'SV'),
('VSR', 42, 'SV'),
('VSAV', 50, 'SZ'),
('VSR', 43, 'SZ'),
('VSR', 91, 'SZ'),
('VSR', 92, 'SZ'),
('VSR', 107, 'SZ'),
('CCF', 2, 'TH'),
('EPA', 6, 'TH'),
('FPT', 3, 'TH'),
('VSAV', 51, 'TH'),
('VSAV', 52, 'TH'),
('VSR', 44, 'TH'),
('VSR', 58, 'TH'),
('VSR', 96, 'TH'),
('EPA', 13, 'TZ'),
('VSAV', 53, 'TZ'),
('VSR', 45, 'TZ'),
('VSR', 59, 'TZ'),
('VSR', 60, 'TZ'),
('VSAV', 54, 'VA'),
('VSR', 46, 'VA'),
('VSAV', 56, 'VV'),
('VSR', 48, 'VV');

-- --------------------------------------------------------

--
-- Structure de la table `habilitation`
--

CREATE TABLE `habilitation` (
  `ID_Habilitation` varchar(50) NOT NULL,
  `Libellé` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `habilitation`
--

INSERT INTO `habilitation` (`ID_Habilitation`, `Libellé`) VALUES
('CHCYN', '\"Chef équipe cynotechnique\"'),
('CHFPT', '\"Chef d\'agrès fourgon pompe-tonne\"'),
('CHIMP', '\"Chef d\'intervention en milieu périlleux\"'),
('COCHI', '\"Conducteur de chiens\"'),
('COCMC', '\"Conducteur camion citerne\"'),
('COFPT', '\"Conducteur fourgon pompe-tonne\"'),
('COVSA', '\"Conducteur secours et d\'assistance aux victimes\"'),
('COVSR', '\"Conducteur véhicule de secours routier\"'),
('EQCMC', '\"Equipier camion citerne\"'),
('EQEPA', '\"Equiper échelle pivotante automatique\"'),
('EQFEF', '\"Equipier feu en fôret\"'),
('EQGRI', '\"Equipier en milieu périlleux\"'),
('EQINC', '\"Equiper incendie\"'),
('EQRCB', '\"Equipier en risque chimique et biologique\"'),
('EQSOU', '\"Equipier site souterrrain\"'),
('FDF', 'Feux de forêts'),
('NSAQU', '\"Nageur sauveteur aquatique\"'),
('PSE1', 'Premiers secours en équipe de niveau 1'),
('PSE2', 'Premiers secours en équipe de niveau 2'),
('SPPLG', '\"Sapeur pompier plongeur\"');

-- --------------------------------------------------------

--
-- Structure de la table `lier`
--

CREATE TABLE `lier` (
  `ID_Type_Engin` varchar(50) NOT NULL,
  `ID_Sinistre` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `lier`
--

INSERT INTO `lier` (`ID_Type_Engin`, `ID_Sinistre`) VALUES
('CCF', 'FBRO'),
('CCF', 'FLOC'),
('CCGC', 'INCE'),
('CCGC', 'SECO'),
('EPA', 'ANIC'),
('EPA', 'ANIS'),
('EPA', 'BACT'),
('EPA', 'GRIM'),
('FPT', 'ABLO'),
('FPT', 'FAPP'),
('FPT', 'FBRO'),
('FPT', 'FLOC'),
('FPT', 'FVEH'),
('VDC', 'SECO'),
('VLTT', 'ACCI'),
('VLTT', 'SECO'),
('VSAV', 'ABLO'),
('VSAV', 'ACVP'),
('VSAV', 'FAPP'),
('VSAV', 'FVEH'),
('VSAV', 'GRIM'),
('VSAV', 'SDE'),
('VSAV', 'SPUR'),
('VSAV', 'SVE'),
('VSR', 'ACVP'),
('VSR', 'ANIC'),
('VSR', 'ANIS'),
('VSR', 'BACT'),
('VSR', 'INON'),
('VSR', 'POLE'),
('VSR', 'RCB'),
('VSR', 'RR'),
('VSR', 'SDE'),
('VSR', 'SS'),
('VSR', 'SVE'),
('VSR', 'TROC');

-- --------------------------------------------------------

--
-- Structure de la table `mobiliser`
--

CREATE TABLE `mobiliser` (
  `ID_Habilitation` varchar(50) NOT NULL,
  `ID_Type_Engin` varchar(50) NOT NULL,
  `Nb_Personnes` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `mobiliser`
--

INSERT INTO `mobiliser` (`ID_Habilitation`, `ID_Type_Engin`, `Nb_Personnes`) VALUES
('CHFPT', 'FPT', 1),
('COCMC', 'CCF', 1),
('COFPT', 'FPT', 1),
('COVSA', 'VSAV', 1),
('COVSR', 'VSR', 1),
('EQEPA', 'EPA', 3),
('EQFEF', 'CCF', 5),
('EQGRI', 'CCF', 2),
('EQINC', 'CCF', 3),
('EQINC', 'EPA', 2),
('EQINC', 'FPT', 2),
('EQINC', 'VSAV', 2),
('EQINC', 'VSR', 2),
('FDF', 'VDC', 4),
('PSE1', 'CCGC', 6),
('PSE2', 'VLTT', 3);

-- --------------------------------------------------------

--
-- Structure de la table `pompier`
--

CREATE TABLE `pompier` (
  `Matricule` varchar(50) NOT NULL,
  `Nom` varchar(50) NOT NULL,
  `Prenom` varchar(50) NOT NULL,
  `DateNaissance` date NOT NULL,
  `Sexe` varchar(50) NOT NULL,
  `Telephone` varchar(10) NOT NULL,
  `NumBIP` int(11) NOT NULL,
  `Date_Embauche` date DEFAULT NULL,
  `Dernier_Indice_Traitement` smallint(6) DEFAULT NULL,
  `ID_TypePompier` varchar(50) DEFAULT NULL,
  `ID_Employeur` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `pompier`
--

INSERT INTO `pompier` (`Matricule`, `Nom`, `Prenom`, `DateNaissance`, `Sexe`, `Telephone`, `NumBIP`, `Date_Embauche`, `Dernier_Indice_Traitement`, `ID_TypePompier`, `ID_Employeur`) VALUES
('1221298', 'Tata', 'Jacques', '1970-04-23', 'masculin', '782070345', 73, '1992-08-19', 303, 'LI', NULL),
('123000', 'Thibaudeau', 'Jérôme', '1968-02-03', 'masculin', '637021526', 49, '1993-09-30', 305, 'CA', NULL),
('123001', 'Dupont', 'Jean', '1990-01-01', 'Masculin', '0612345678', 123456, '2015-01-01', 13, 'SPP', 'SDIS_79'),
('123002', 'Durand', 'Sophie', '1995-05-15', 'Féminin', '0687654321', 234567, '2018-03-15', 11, 'SPV', 'Mairie_Niort'),
('123003', 'Martin', 'Pierre', '1985-10-20', 'Masculin', '0623456789', 345678, '2012-06-01', 15, 'SPP', 'Mairie_Bressuire'),
('123004', 'Persie', 'Robin', '1984-10-20', 'Masculin', '0623479789', 345078, '2012-06-01', 15, 'SPP', 'SDIS_79'),
('123005', 'Messi', 'Leo', '1984-10-20', 'Masculin', '0623479789', 345078, '2012-06-01', 15, 'SPP', 'SDIS_79'),
('123006', 'Moreau', 'Manuel', '1990-05-17', 'masculin', '649868890', 38, '2018-09-30', 198, 'LI', NULL),
('123007', 'Montecot', 'Maxime', '1977-09-30', 'masculin', '788832649', 68, '2000-02-17', 283, 'CA', NULL),
('123008', 'Drochon', 'Sébastien', '1977-09-24', 'masculin', '615314508', 80, '2011-09-22', 209, 'LI', NULL),
('123009', 'Bluteau', 'Damien', '1993-09-27', 'masculin', '686222115', 105, '2019-09-30', 145, 'LI', NULL),
('123089', 'Bouet', 'Nicolas', '1983-09-24', 'masculin', '634363898', 60, '2005-02-23', 278, 'LI', NULL),
('123123', 'Niderlender', 'Thibault', '1972-09-23', 'masculin', '549081818', 1, '1993-05-23', 389, 'CO', NULL),
('123124', 'Beauvais', 'Patrick', '1965-09-21', 'masculin', '549241292', 2, '1993-07-21', 335, 'CO', NULL),
('123303', 'Biga', 'Julien', '1989-03-21', 'masculin', '770166915', 6, '2009-09-21', 167, 'CA', NULL),
('123304', 'Pied-Didier', 'Florence', '1983-03-01', 'féminin', '684154477', 135, '2011-09-29', 188, 'LI', NULL),
('123305', 'Gabard', 'Daniel', '1959-09-10', 'masculin', '618543063', 21, '1988-07-24', 388, 'LI', NULL),
('123309', 'Herbillon', 'Patrice', '1961-08-24', 'masculin', '680760184', 51, '1983-12-21', 377, 'LI', NULL),
('123321', 'Camus', 'Olivier', '1991-10-08', 'masculin', '660066011', 10, '1998-04-23', 228, 'CO', NULL),
('123391', 'Giraud', 'Mickaël', '1981-09-09', 'masculin', '622974411', 39, '1999-09-25', 188, 'LI', NULL),
('123398', 'Boutin', 'Yohan', '1988-10-13', 'masculin', '618140464', 69, '2019-04-28', 112, 'LI', NULL),
('123399', 'Rousseau', 'Damien', '1998-04-24', 'masculin', '670894972', 204, '2021-06-25', 98, 'AD', NULL),
('123401', 'Pautrot', 'Olivier', '1960-01-28', 'masculin', '623707150', 27, '1986-06-02', 356, 'LI', NULL),
('123404', 'Devault', 'Damien', '1988-09-24', 'masculin', '613713634', 36, '2018-03-30', 109, 'LI', NULL),
('123408', 'Launay', 'Jacky', '1970-05-22', 'masculin', '781551562', 58, '2008-04-25', 298, 'LI', NULL),
('123449', 'Muzzolini', 'Fabrice', '1979-04-23', 'masculin', '655666666', 29, '2001-09-10', 205, 'CA', NULL),
('123456', 'Martin', 'Kévin', '1985-12-21', 'masculin', '661796469', 23, '2011-11-24', 201, 'LI', NULL),
('123457', 'Porcheron', 'Patrice', '1971-03-05', 'masculin', '630863801', 54, '1997-06-04', 301, 'LI', NULL),
('123458', 'Franki', 'Eric', '1991-07-08', 'masculin', '684484535', 35, '2017-05-22', 145, 'LI', NULL),
('123459', 'Bergeron', 'Mickaël', '1969-12-03', 'masculin', '688549764', 26, '1993-03-22', 300, 'LI', NULL),
('123460', 'Rivet', 'Olivier', '1989-09-02', 'masculin', '654786778', 140, NULL, 0, 'SA', NULL),
('123462', 'Monchaux', 'Mickaël', '1975-02-28', 'masculin', '661425298', 77, '1999-02-02', 244, 'LI', NULL),
('123463', 'Bouchereau', 'Julien', '1987-11-04', 'mas', '673776785', 112, '2011-06-30', 107, 'AD', NULL),
('123464', 'Piat', 'Christophe', '1991-05-21', 'masculin', '652796002', 42, '2014-05-21', 124, 'LI', NULL),
('123465', 'Fouquet', 'Christophe', '1986-03-21', 'masculin', '667695462', 29, '2018-05-09', 103, 'AD', NULL),
('123466', 'Lacassagne', 'Valérie', '1981-09-22', 'féminin', '785248100', 18, '2007-08-22', 144, 'LI', NULL),
('123467', 'Thiburce', 'Damien', '1978-02-21', 'masculin', '689589553', 57, '2000-05-21', 198, 'LI', NULL),
('123468', 'Laurencier', 'Sophie', '1970-02-22', 'féminin', '683078975', 20, '1996-04-20', 328, 'CA', NULL),
('123471', 'Tribot', 'Michaël', '1967-09-30', 'masculin', '607651222', 116, '1995-03-06', 331, 'LI', NULL),
('123473', 'Menand', 'Claude', '1980-11-22', 'masculin', '688480025', 100, '2001-05-21', 244, 'LI', NULL),
('123478', 'Petit-Poupard', 'Angélique', '1994-12-07', 'féminin', '666666669', 55, '2019-08-22', 116, 'LI', NULL),
('123481', 'Benazet', 'Laurent', '1972-09-09', 'masculin', '608930465', 164, '2020-09-24', 101, 'LI', NULL),
('123482', 'Gautier', 'Richard', '1991-09-21', 'masculin', '626748268', 202, '2021-03-24', 99, 'LI', NULL),
('123488', 'Roger', 'Christian', '1961-06-23', 'masculin', '670609584', 90, '1989-05-24', 330, 'LI', NULL),
('123489', 'Fichet', 'Ludovic', '1973-12-31', 'masculin', '620012330', 7, '1997-05-04', 288, 'CO', NULL),
('123490', 'Albrecht', 'Mickaël', '1976-09-23', 'masculin', '612332123', 8, '1995-09-08', 290, 'CO', NULL),
('123544', 'Charrier', 'Cyril', '1978-03-29', 'masculin', '630589002', 92, '2011-03-27', 209, 'LI', NULL),
('123550', 'Lunet', 'Sébastien', '1980-04-11', 'ma', '648631998', 67, '2010-01-17', 200, 'LI', NULL),
('123567', 'Mercier', 'Etienne', '1983-11-06', 'masculin', '650079674', 5, '2001-10-11', 203, 'LI', NULL),
('12361', 'Barbier', 'Damien', '1979-12-22', 'masculin', '626341107', 111, '2001-01-21', 188, 'LI', NULL),
('123620', 'Roy', 'Daniel', '1965-08-28', 'masculin', '673063360', 49, '1990-09-22', 290, 'LI', NULL),
('123667', 'Mathe', 'Christophe', '1963-07-31', 'masculin', '656334455', 109, '1989-06-23', 345, 'CA', NULL),
('123692', 'Messager', 'Emmanuel', '1960-12-26', 'masculin', '630332748', 84, '2000-06-23', 205, 'CA', NULL),
('123708', 'Pintaud', 'Julien', '1989-09-23', 'masculin', '616425373', 209, '2018-10-13', 109, 'LI', NULL),
('123908', 'Rocheteau', 'Stéphane', '1968-05-27', 'masculin', '688462560', 93, '1994-04-23', 302, 'LI', NULL),
('432567', 'Bastin', 'Thomas', '1999-09-30', 'masculin', '665432345', 67, NULL, 0, 'SA', NULL),
('455678', 'Laurent', 'Arnaud', '2001-03-12', 'masculin', '787879703', 116, NULL, 0, 'SA', NULL),
('456000', 'Veillon', 'Lucas', '2005-06-24', 'masculin', '603040908', 299, NULL, 0, 'SA', NULL),
('456001', 'Alliot', 'David', '2000-12-07', 'masculin', '710111214', 110, NULL, 0, 'SA', NULL),
('456004', 'Chauveau', 'Kévin', '1996-04-16', 'masculin', '713242678', 44, NULL, 0, 'SA', NULL),
('456020', 'Bourdeau', 'Barbara', '2004-12-25', 'féminin', '644090803', 288, NULL, 0, 'SA', NULL),
('456090', 'Savarit', 'Yohan', '2006-01-23', 'masculin', '790912303', 190, NULL, 0, 'SA', NULL),
('456111', 'Arias', 'Samuel', '1998-12-20', 'masculin', '788112233', 200, NULL, 0, 'SA', NULL),
('456222', 'Normand', 'Sébastien', '1994-11-06', 'masculin', '788332255', 128, NULL, 0, 'SA', NULL),
('456228', 'Petrault', 'David', '2005-12-31', 'masculin', '608799034', 356, NULL, 0, 'SA', NULL),
('456234', 'Olivier', 'Romain', '2003-04-30', 'masculin', '756789087', 229, NULL, 0, 'SA', NULL),
('456333', 'Moreau', 'Camille', '2000-09-30', 'masculin', '623242800', 280, NULL, 0, 'SA', NULL),
('456334', 'Belli', 'Elodie', '2001-12-21', 'féminin', '7400234', 310, NULL, 0, 'SA', NULL),
('456345', 'Desette', 'Kévin', '2002-11-11', 'masc', '788992200', 208, NULL, 0, 'SA', NULL),
('456477', 'Trouchon', 'Aurélien', '2003-12-04', 'masculin', '654100304', 66, NULL, 0, 'SA', NULL),
('456505', 'Bachelery', 'Pierre', '2005-12-01', 'masculin', '701020304', 300, NULL, 0, 'SA', NULL),
('456550', 'Bluteau', 'Sébastien', '1991-02-28', 'masculin', '649733910', 204, NULL, 0, 'SA', NULL),
('456555', 'Bodet', 'Clément', '2001-09-24', 'masculin', '644553001', 183, NULL, 0, 'SA', NULL),
('456600', 'Guillet', 'Xavier', '2005-09-24', 'masculin', '653245611', 201, NULL, 0, 'SA', NULL),
('456666', 'Couturier', 'Cédric', '1998-02-23', 'masculin', '654494903', 255, NULL, 0, 'SA', NULL),
('456707', 'Chapas', 'Jérémy', '1999-01-13', 'masculin', '606070809', 134, NULL, 0, 'SA', NULL),
('456760', 'Gouget', 'Dimitri', '1996-05-09', 'masculin', '654565456', 104, NULL, 0, 'SA', NULL),
('456770', 'Deurre', 'Céline', '2002-03-26', 'féminin', '702030405', 229, NULL, 0, 'SA', NULL),
('456773', 'Vaie', 'Fabien', '2003-12-27', 'masculin', '7293845', 229, NULL, 0, 'SA', NULL),
('567654', 'Charron', 'Jean-Michel', '1956-09-23', 'masculin', '634291802', 51, NULL, 0, 'SA', NULL),
('986993', 'Canonne', 'Sylvia', '1961-03-11', 'féminin', '612345678', 11, '1990-09-17', 380, 'CO', NULL),
('986995', 'Dumontel', 'Robert', '1969-01-10', 'masculin', '698568542', 15, '1999-12-12', 240, 'CA', NULL),
('986996', 'Garnier', 'FranÃ§ois', '1988-12-13', 'masculin', '666554444', 18, NULL, 0, 'AD', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `posséder`
--

CREATE TABLE `posséder` (
  `Matricule` varchar(50) NOT NULL,
  `ID_Habilitation` varchar(50) NOT NULL,
  `Date_Obtention` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `posséder`
--

INSERT INTO `posséder` (`Matricule`, `ID_Habilitation`, `Date_Obtention`) VALUES
('1221298', 'CHFPT', '0000-00-00'),
('1221298', 'COVSA', '2023-09-24'),
('1221298', 'COVSR', '2019-03-12'),
('1221298', 'EQGRI', '2019-05-12'),
('1221298', 'EQINC', '2001-09-21'),
('1221298', 'EQSOU', '2020-01-20'),
('123000', 'CHFPT', '2021-06-02'),
('123000', 'CHIMP', '2009-12-24'),
('123000', 'COCMC', '2013-02-20'),
('123000', 'COVSR', '1999-12-03'),
('123000', 'EQCMC', '2019-12-12'),
('123000', 'EQEPA', '1999-12-12'),
('123000', 'EQEPA', '2015-04-09'),
('123001', 'PSE1', '2015-02-01'),
('123002', 'PSE2', '2018-04-01'),
('123003', 'FDF', '2013-07-01'),
('123006', 'COVSR', '2023-09-21'),
('123006', 'EQINC', '0000-00-00'),
('123006', 'NSAQU', '2020-05-01'),
('123007', 'CHCYN', '2009-08-12'),
('123007', 'CHIMP', '2010-09-21'),
('123007', 'COFPT', '2014-09-12'),
('123007', 'COVSR', '2015-05-23'),
('123007', 'EQCMC', '2019-05-05'),
('123007', 'EQEPA', '2005-02-19'),
('123007', 'EQINC', '2003-01-14'),
('123007', 'EQSOU', '2018-06-01'),
('123008', 'CHFPT', '2021-11-12'),
('123008', 'COVSR', '2014-02-25'),
('123008', 'EQCMC', '2019-09-09'),
('123008', 'EQEPA', '2018-09-02'),
('123008', 'EQINC', '2012-10-22'),
('123009', 'EQEPA', '2020-01-24'),
('123009', 'EQEPA', '2023-09-12'),
('123009', 'EQFEF', '2020-04-25'),
('123009', 'EQGRI', '2021-09-28'),
('123009', 'EQINC', '2019-11-23'),
('123009', 'EQRCB', '2022-01-31'),
('123009', 'EQSOU', '2022-09-07'),
('123089', 'CHFPT', '2011-10-21'),
('123089', 'EQEPA', '2009-11-09'),
('123089', 'EQEPA', '2010-03-12'),
('123089', 'EQINC', '2008-10-26'),
('123089', 'EQRCB', '2021-09-15'),
('123123', 'CHIMP', '2002-09-20'),
('123123', 'COVSR', '1998-10-15'),
('123123', 'EQGRI', '2004-11-16'),
('123123', 'EQINC', '1994-05-13'),
('123123', 'EQSOU', '2012-09-21'),
('123124', 'CHFPT', '2011-09-28'),
('123124', 'COVSR', '1995-09-15'),
('123124', 'EQCMC', '2005-04-23'),
('123124', 'EQINC', '1994-05-13'),
('123124', 'NSAQU', '2004-09-21'),
('123303', 'COVSR', '2012-04-02'),
('123303', 'EQEPA', '2017-03-16'),
('123303', 'EQFEF', '2014-05-01'),
('123303', 'EQGRI', '2016-03-04'),
('123303', 'EQINC', '2011-09-24'),
('123303', 'NSAQU', '2015-11-13'),
('123304', 'CHFPT', '2022-04-28'),
('123304', 'COVSA', '2020-03-25'),
('123304', 'EQEPA', '2015-03-31'),
('123304', 'EQINC', '2013-03-30'),
('123305', 'CHFPT', '2023-12-15'),
('123305', 'CHIMP', '2021-09-12'),
('123305', 'COCMC', '2013-12-08'),
('123305', 'COVSA', '2004-03-21'),
('123305', 'EQINC', '2000-07-20'),
('123305', 'NSAQU', '2022-12-01'),
('123309', 'CHFPT', '2020-09-04'),
('123309', 'COVSA', '2011-09-12'),
('123309', 'EQEPA', '2000-11-21'),
('123309', 'EQFEF', '2012-04-03'),
('123321', 'CHFPT', '2023-09-21'),
('123321', 'CHIMP', '2009-01-04'),
('123321', 'COCHI', '2023-12-23'),
('123321', 'COCMC', '2008-03-21'),
('123321', 'COVSA', '1999-12-21'),
('123321', 'COVSR', '2006-10-02'),
('123321', 'EQEPA', '2021-05-13'),
('123321', 'NSAQU', '2020-05-01'),
('123391', 'COVSR', '2003-09-23'),
('123391', 'EQCMC', '2022-12-12'),
('123391', 'EQINC', '2000-02-20'),
('123391', 'NSAQU', '2020-05-01'),
('123398', 'CHFPT', '2023-04-03'),
('123398', 'COCMC', '2022-07-07'),
('123398', 'COFPT', '2021-12-05'),
('123398', 'COVSA', '2021-09-03'),
('123398', 'COVSR', '2021-04-01'),
('123398', 'EQINC', '2020-03-31'),
('123399', 'COVSA', '2023-05-12'),
('123399', 'EQFEF', '2022-04-01'),
('123399', 'EQINC', '2022-01-31'),
('123399', 'EQRCB', '2022-09-01'),
('123399', 'EQSOU', '2022-11-09'),
('123401', 'COFPT', '2009-01-15'),
('123401', 'COVSR', '2000-09-13'),
('123401', 'EQINC', '1996-09-04'),
('123404', 'COCMC', '2024-03-04'),
('123404', 'COVSA', '2023-09-16'),
('123404', 'COVSR', '2020-07-22'),
('123404', 'EQCMC', '2023-03-03'),
('123404', 'EQEPA', '2022-09-24'),
('123404', 'EQINC', '2019-04-21'),
('123404', 'EQRCB', '2021-09-24'),
('123408', 'COVSA', '2024-02-01'),
('123408', 'EQEPA', '2022-09-24'),
('123408', 'EQFEF', '2013-10-12'),
('123408', 'EQINC', '2009-02-20'),
('123408', 'EQRCB', '2020-05-24'),
('123408', 'NSAQU', '2017-05-01'),
('123449', 'CHFPT', '2020-09-06'),
('123449', 'COFPT', '2011-11-09'),
('123449', 'COVSA', '2010-06-25'),
('123449', 'COVSR', '2009-09-12'),
('123449', 'EQINC', '2005-07-12'),
('123449', 'EQRCB', '2023-03-31'),
('123456', 'COVSR', '2016-05-31'),
('123456', 'EQINC', '2012-09-21'),
('123457', 'CHFPT', '2007-09-13'),
('123457', 'COCMC', '2016-01-01'),
('123457', 'COFPT', '2015-12-01'),
('123457', 'COVSA', '2009-07-31'),
('123457', 'EQINC', '2004-09-12'),
('123457', 'EQSOU', '2005-05-23'),
('123458', 'COVSR', '2020-07-31'),
('123458', 'EQEPA', '2023-03-31'),
('123458', 'EQINC', '2019-11-11'),
('123459', 'COCMC', '2014-01-25'),
('123459', 'EQEPA', '2011-09-01'),
('123459', 'EQINC', '2000-09-21'),
('123459', 'SPPLG', '2010-09-21'),
('123460', 'COFPT', '2023-08-02'),
('123460', 'COVSA', '2024-01-12'),
('123460', 'COVSR', '2022-10-21'),
('123460', 'EQINC', '2021-09-27'),
('123462', 'EQCMC', '2007-05-16'),
('123462', 'EQFEF', '2003-12-14'),
('123462', 'EQGRI', '2009-05-31'),
('123462', 'EQINC', '2000-12-12'),
('123462', 'EQSOU', '2005-01-15'),
('123463', 'EQCMC', '2023-03-21'),
('123463', 'EQFEF', '2013-07-31'),
('123463', 'EQINC', '2012-10-21'),
('123463', 'EQRCB', '2020-12-24'),
('123464', 'COCMC', '2023-12-23'),
('123464', 'COVSA', '2022-09-12'),
('123464', 'EQFEF', '2021-05-31'),
('123464', 'EQINC', '2018-03-31'),
('123465', 'COVSA', '2023-10-22'),
('123465', 'EQEPA', '2024-02-01'),
('123465', 'EQINC', '2019-05-21'),
('123465', 'NSAQU', '2020-05-01'),
('123466', 'COVSA', '2023-03-25'),
('123466', 'COVSR', '2009-03-31'),
('123466', 'EQGRI', '2015-03-31'),
('123466', 'EQINC', '2008-09-30'),
('123466', 'SPPLG', '2012-11-24'),
('123467', 'CHFPT', '2015-07-31'),
('123467', 'COCMC', '2009-03-31'),
('123467', 'COFPT', '2005-11-23'),
('123467', 'EQINC', '2004-08-09'),
('123468', 'COVSA', '2017-06-15'),
('123468', 'EQFEF', '1998-05-06'),
('123468', 'EQGRI', '1999-03-04'),
('123468', 'EQINC', '1996-05-01'),
('123468', 'NSAQU', '2006-03-22'),
('123468', 'SPPLG', '2005-10-21'),
('123471', 'COVSR', '1998-04-21'),
('123471', 'EQCMC', '2005-04-25'),
('123471', 'EQEPA', '2001-12-21'),
('123471', 'EQINC', '1996-03-01'),
('123471', 'NSAQU', '2000-09-30'),
('123473', 'COFPT', '2006-01-31'),
('123473', 'COVSA', '2018-05-14'),
('123473', 'COVSR', '2006-09-15'),
('123473', 'EQEPA', '2007-03-31'),
('123473', 'EQINC', '2003-03-13'),
('123473', 'EQRCB', '2009-12-28'),
('123478', 'EQINC', '2020-09-15'),
('123478', 'EQRCB', '2022-09-16'),
('123478', 'EQSOU', '2023-03-31'),
('123481', 'EQFEF', '2023-07-30'),
('123481', 'EQINC', '2021-03-31'),
('123482', 'COVSA', '0000-00-00'),
('123482', 'COVSR', '2022-09-12'),
('123482', 'EQINC', '2021-12-02'),
('123488', 'COVSR', '2000-10-17'),
('123488', 'EQCMC', '2021-03-31'),
('123488', 'EQINC', '1990-09-15'),
('123488', 'NSAQU', '2005-09-15'),
('123489', 'CHIMP', '2011-07-04'),
('123489', 'COVSA', '2005-01-04'),
('123489', 'EQCMC', '2000-12-19'),
('123489', 'EQEPA', '2000-04-15'),
('123489', 'EQINC', '1998-04-12'),
('123490', 'CHFPT', '2008-07-31'),
('123490', 'CHIMP', '2000-12-01'),
('123490', 'EQGRI', '2005-12-21'),
('123490', 'EQINC', '1998-02-21'),
('123490', 'SPPLG', '2006-05-31'),
('123544', 'COVSR', '2019-06-30'),
('123544', 'EQINC', '2013-12-21'),
('123550', 'CHFPT', '2020-09-30'),
('123550', 'EQFEF', '2015-03-31'),
('123550', 'EQINC', '2013-04-30'),
('123550', 'SPPLG', '0000-00-00'),
('123567', 'COFPT', '2018-03-24'),
('123567', 'EQFEF', '2007-12-23'),
('123567', 'EQINC', '2004-09-14'),
('123567', 'EQSOU', '2009-08-31'),
('12361', 'COVSA', '2006-09-15'),
('12361', 'COVSR', '2005-04-13'),
('12361', 'EQGRI', '2009-09-12'),
('12361', 'EQINC', '2002-09-14'),
('12361', 'SPPLG', '2007-08-13'),
('123620', 'COFPT', '2007-08-31'),
('123620', 'EQEPA', '2005-03-31'),
('123620', 'EQFEF', '1996-11-09'),
('123620', 'EQINC', '1993-12-02'),
('123620', 'NSAQU', '2000-11-11'),
('123667', 'COVSA', '2003-11-05'),
('123667', 'COVSR', '1998-12-02'),
('123667', 'EQGRI', '2009-12-05'),
('123667', 'EQINC', '1990-05-01'),
('123692', 'COVSR', '2005-10-19'),
('123692', 'EQCMC', '2013-11-21'),
('123692', 'EQGRI', '2012-09-24'),
('123692', 'EQINC', '2001-12-05'),
('123708', 'CHFPT', '2023-05-26'),
('123708', 'COCMC', '2022-09-04'),
('123708', 'COFPT', '2021-09-12'),
('123708', 'EQFEF', '2019-10-22'),
('123708', 'EQINC', '2018-09-21'),
('123708', 'EQSOU', '2021-04-01'),
('123708', 'SPPLG', '2020-08-24'),
('123908', 'COVSR', '2023-01-12'),
('123908', 'EQEPA', '2024-02-15'),
('123908', 'EQINC', '1995-05-14'),
('432567', 'EQFEF', '2024-03-22'),
('432567', 'EQINC', '2024-01-21'),
('455678', 'EQCMC', '2023-09-22'),
('455678', 'EQEPA', '2023-12-12'),
('455678', 'EQINC', '2023-01-20'),
('456000', 'EQFEF', '2024-03-13'),
('456000', 'EQINC', '2024-01-12'),
('456001', 'EQINC', '2024-01-12'),
('456004', 'COVSR', '2024-01-11'),
('456004', 'EQINC', '2023-05-14'),
('456020', 'EQINC', '2023-10-28'),
('456090', 'EQINC', '2024-01-12'),
('456111', 'COVSR', '2024-03-17'),
('456111', 'EQINC', '2023-10-28'),
('456222', 'EQINC', '2023-05-14'),
('456222', 'SPPLG', '2024-01-11'),
('456228', 'EQINC', '2023-04-14'),
('456234', 'COVSR', '2024-03-15'),
('456234', 'EQINC', '2024-01-12'),
('456333', 'EQGRI', '2024-01-19'),
('456333', 'EQINC', '2023-10-28'),
('456334', 'EQINC', '2023-04-14'),
('456345', 'EQINC', '2023-05-14'),
('456345', 'SPPLG', '2024-01-11'),
('456477', 'COVSR', '2024-01-12'),
('456477', 'EQINC', '2023-10-28'),
('456505', 'EQINC', '2023-05-26'),
('456550', 'COVSR', '2024-02-19'),
('456550', 'EQINC', '2024-01-12'),
('456555', 'EQINC', '2023-10-28'),
('456555', 'SPPLG', '2024-01-11'),
('456600', 'EQINC', '2024-01-12'),
('456666', 'COVSR', '2024-03-15'),
('456666', 'EQINC', '2023-05-14'),
('456707', 'EQGRI', '2024-03-17'),
('456707', 'EQINC', '2024-01-12'),
('456760', 'EQINC', '2023-02-02'),
('456760', 'SPPLG', '2024-03-05'),
('456770', 'EQGRI', '2023-12-19'),
('456770', 'EQINC', '2023-03-01'),
('456773', 'COVSA', '2024-02-06'),
('456773', 'COVSR', '2023-09-19'),
('456773', 'EQINC', '2022-06-13'),
('567654', 'COVSR', '2023-10-22'),
('567654', 'EQINC', '2023-09-21'),
('567654', 'SPPLG', '2024-01-04'),
('986993', 'CHCYN', '1999-09-21'),
('986993', 'CHIMP', '1998-12-09'),
('986995', 'CHCYN', '2012-12-12'),
('986995', 'CHFPT', '2019-03-21'),
('986995', 'EQINC', '2004-03-02'),
('986996', 'EQINC', '2023-04-21');

-- --------------------------------------------------------

--
-- Structure de la table `type_engin`
--

CREATE TABLE `type_engin` (
  `ID_Type_Engin` varchar(50) NOT NULL,
  `Libellé` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `type_engin`
--

INSERT INTO `type_engin` (`ID_Type_Engin`, `Libellé`) VALUES
('CCF', 'Le camion-citerne feux de forêts'),
('CCGC', 'Camion-citerne grande capacité'),
('EPA', 'Echelle pivotante automatique'),
('FPT', 'Fourgon pompe-tonne'),
('VDC', 'Véhicule de décontamination'),
('VLTT', 'Véhicule de liaison tout-terrain'),
('VSAV', 'Véhicule de secours aux victimes'),
('VSR', 'Véhicule secours routier');

-- --------------------------------------------------------

--
-- Structure de la table `type_pompier`
--

CREATE TABLE `type_pompier` (
  `ID_TypePompier` varchar(50) NOT NULL,
  `Libellé` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `type_pompier`
--

INSERT INTO `type_pompier` (`ID_TypePompier`, `Libellé`) VALUES
('AD', 'Adjudant'),
('CA', 'Capitaine'),
('CG', 'Contrôleur général'),
('CL', 'Colonel'),
('CO', 'Commandant'),
('CP', 'Caporal'),
('LC', 'Lieutenant-Colonel'),
('LI', 'Lieutenant'),
('SA', 'Sapeur'),
('SE', 'Sergent'),
('SPP', 'Sapeur-pompier professionnel'),
('SPV', 'Sapeur-pompier volontaire');

-- --------------------------------------------------------

--
-- Structure de la table `type_sinistre`
--

CREATE TABLE `type_sinistre` (
  `ID_Sinistre` varchar(50) NOT NULL,
  `Libellé` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `type_sinistre`
--

INSERT INTO `type_sinistre` (`ID_Sinistre`, `Libellé`) VALUES
('ABLO', 'Ascenseur bloqué'),
('ACCI', 'Accident de la circulation'),
('ACVP', 'Accident voie publique'),
('ANIC', 'Capture d\'animaux'),
('ANIS', 'Sauvetage d\'animaux'),
('BACT', 'Bâchage de toit'),
('FAPP', 'Feu dans un appartement'),
('FBRO', 'Feu de broussailles'),
('FLOC', 'Feu dans un local d\'entreprise'),
('FVEH', 'Feu dans un véhicule'),
('GRIM', 'Groupe d\'intervention en milieu périlleux'),
('INCE', 'Incendie'),
('INON', 'Inondation'),
('POLE', 'Pollution eau'),
('RCB', 'Risque chimique et biologique'),
('RR', 'Risque radiologique'),
('SDE', 'Sauvetage déblaiement évacuation'),
('SECO', 'Secours à personne'),
('SPUR', 'Secours urgence à la personne'),
('SS', 'Secours subaquatique'),
('SVE', 'Secours victimes de l\'eau'),
('TROC', 'Tronçonnage');

-- --------------------------------------------------------

--
-- Doublure de structure pour la vue `vue_nombre_pompiers_par_caserne`
-- (Voir ci-dessous la vue réelle)
--
CREATE TABLE `vue_nombre_pompiers_par_caserne` (
`ID_Caserne` varchar(50)
,`Libellé` varchar(50)
,`nombre_sapeur` bigint(21)
);

-- --------------------------------------------------------

--
-- Structure de la vue `vue_nombre_pompiers_par_caserne`
--
DROP TABLE IF EXISTS `vue_nombre_pompiers_par_caserne`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vue_nombre_pompiers_par_caserne`  AS SELECT `c`.`ID_Caserne` AS `ID_Caserne`, `c`.`Libellé` AS `Libellé`, count(case when `tp`.`Libellé` = 'Sapeur' then `p`.`Matricule` end) AS `nombre_sapeur` FROM (((`caserne` `c` left join `affecter` `a` on(`c`.`ID_Caserne` = `a`.`ID_Caserne`)) left join `pompier` `p` on(`a`.`Matricule` = `p`.`Matricule`)) left join `type_pompier` `tp` on(`p`.`ID_TypePompier` = `tp`.`ID_TypePompier`)) GROUP BY `c`.`ID_Caserne`, `c`.`Libellé` ;

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `affecter`
--
ALTER TABLE `affecter`
  ADD PRIMARY KEY (`Matricule`,`Date_Affectation`),
  ADD KEY `ID_Caserne` (`ID_Caserne`);

--
-- Index pour la table `caserne`
--
ALTER TABLE `caserne`
  ADD PRIMARY KEY (`ID_Caserne`);

--
-- Index pour la table `employeur`
--
ALTER TABLE `employeur`
  ADD PRIMARY KEY (`ID_Employeur`);

--
-- Index pour la table `engin`
--
ALTER TABLE `engin`
  ADD PRIMARY KEY (`ID_Type_Engin`,`Numero_Ordre`),
  ADD KEY `ID_Caserne` (`ID_Caserne`);

--
-- Index pour la table `habilitation`
--
ALTER TABLE `habilitation`
  ADD PRIMARY KEY (`ID_Habilitation`);

--
-- Index pour la table `lier`
--
ALTER TABLE `lier`
  ADD PRIMARY KEY (`ID_Type_Engin`,`ID_Sinistre`),
  ADD KEY `ID_Sinistre` (`ID_Sinistre`);

--
-- Index pour la table `mobiliser`
--
ALTER TABLE `mobiliser`
  ADD PRIMARY KEY (`ID_Habilitation`,`ID_Type_Engin`),
  ADD KEY `ID_Type_Engin` (`ID_Type_Engin`);

--
-- Index pour la table `pompier`
--
ALTER TABLE `pompier`
  ADD PRIMARY KEY (`Matricule`),
  ADD KEY `ID_TypePompier` (`ID_TypePompier`),
  ADD KEY `ID_Employeur` (`ID_Employeur`);

--
-- Index pour la table `posséder`
--
ALTER TABLE `posséder`
  ADD PRIMARY KEY (`Matricule`,`ID_Habilitation`,`Date_Obtention`),
  ADD KEY `ID_Habilitation` (`ID_Habilitation`);

--
-- Index pour la table `type_engin`
--
ALTER TABLE `type_engin`
  ADD PRIMARY KEY (`ID_Type_Engin`);

--
-- Index pour la table `type_pompier`
--
ALTER TABLE `type_pompier`
  ADD PRIMARY KEY (`ID_TypePompier`);

--
-- Index pour la table `type_sinistre`
--
ALTER TABLE `type_sinistre`
  ADD PRIMARY KEY (`ID_Sinistre`);

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `affecter`
--
ALTER TABLE `affecter`
  ADD CONSTRAINT `affecter_ibfk_1` FOREIGN KEY (`Matricule`) REFERENCES `pompier` (`Matricule`),
  ADD CONSTRAINT `affecter_ibfk_2` FOREIGN KEY (`ID_Caserne`) REFERENCES `caserne` (`ID_Caserne`);

--
-- Contraintes pour la table `engin`
--
ALTER TABLE `engin`
  ADD CONSTRAINT `engin_ibfk_1` FOREIGN KEY (`ID_Type_Engin`) REFERENCES `type_engin` (`ID_Type_Engin`),
  ADD CONSTRAINT `engin_ibfk_2` FOREIGN KEY (`ID_Caserne`) REFERENCES `caserne` (`ID_Caserne`);

--
-- Contraintes pour la table `lier`
--
ALTER TABLE `lier`
  ADD CONSTRAINT `lier_ibfk_1` FOREIGN KEY (`ID_Type_Engin`) REFERENCES `type_engin` (`ID_Type_Engin`),
  ADD CONSTRAINT `lier_ibfk_2` FOREIGN KEY (`ID_Sinistre`) REFERENCES `type_sinistre` (`ID_Sinistre`);

--
-- Contraintes pour la table `mobiliser`
--
ALTER TABLE `mobiliser`
  ADD CONSTRAINT `mobiliser_ibfk_1` FOREIGN KEY (`ID_Habilitation`) REFERENCES `habilitation` (`ID_Habilitation`),
  ADD CONSTRAINT `mobiliser_ibfk_2` FOREIGN KEY (`ID_Type_Engin`) REFERENCES `type_engin` (`ID_Type_Engin`);

--
-- Contraintes pour la table `pompier`
--
ALTER TABLE `pompier`
  ADD CONSTRAINT `pompier_ibfk_1` FOREIGN KEY (`ID_TypePompier`) REFERENCES `type_pompier` (`ID_TypePompier`),
  ADD CONSTRAINT `pompier_ibfk_2` FOREIGN KEY (`ID_Employeur`) REFERENCES `employeur` (`ID_Employeur`);

--
-- Contraintes pour la table `posséder`
--
ALTER TABLE `posséder`
  ADD CONSTRAINT `posséder_ibfk_1` FOREIGN KEY (`Matricule`) REFERENCES `pompier` (`Matricule`),
  ADD CONSTRAINT `posséder_ibfk_2` FOREIGN KEY (`ID_Habilitation`) REFERENCES `habilitation` (`ID_Habilitation`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
