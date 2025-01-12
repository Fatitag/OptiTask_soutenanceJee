-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Server version: 8.3.0
-- PHP Version: 8.2.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";



--
-- Database: `pro_objectif`
--

-- --------------------------------------------------------

--
-- Table structure for table `objectifs`
--

DROP TABLE IF EXISTS `objectifs`;
CREATE TABLE IF NOT EXISTS `objectifs` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `priority` enum('Haute','Moyenne','Basse') DEFAULT NULL,
  `status` enum('En cours','Terminé','En retard') DEFAULT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_user_id` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=186 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
--  data for table `objectifs`
--

INSERT INTO `objectifs` (`id`, `title`, `start_date`, `end_date`, `priority`, `status`, `user_id`) VALUES
(182, 'réduire temps tel 2H', '2025-01-16', '2025-01-21', 'Moyenne', 'En cours', 24),
(180, 'réer un journal alimentaire', '2025-01-12', '2025-01-13', 'Haute', 'En cours', 24),
(185, 'lire 2 livres par mois', '2024-12-12', '2025-01-12', 'Haute', 'Terminé', 24),
(184, 'méditation 30 jours', '2025-01-05', '2025-02-05', 'Moyenne', 'En retard', 24),
(1, 'Adopter une routine de méditation', '2025-01-10', '2025-01-30', '', 'En cours', 1),
(2, 'Améliorer ma santé physique', '2025-02-01', '2025-03-01', '', 'En retard', 2),
(3, 'Établir un budget mensuel', '2025-01-15', '2025-02-15', '', 'En cours', 3),
(4, 'Créer un portfolio professionnel', '2025-01-20', '2025-03-20', '', 'En retard', 4),
(5, 'Lire un livre par mois', '2025-01-01', '2025-12-31', '', 'En cours', 5),
(6, 'Pratiquer la gratitude quotidienne', '2025-01-10', '2025-01-31', '', 'Terminé', 6),
(7, 'Apprendre à cuisiner des repas sains', '2025-02-01', '2025-02-28', '', 'En cours', 8),
(8, 'Développer mes compétences en codage', '2025-01-15', '2025-02-15', '', 'En cours', 9),
(9, 'Réorganiser mon espace de travail', '2025-01-10', '2025-01-20', '', 'Terminé', 10),
(10, 'Planifier un voyage détente', '2025-03-01', '2025-03-15', '', 'En retard', 11);

-- --------------------------------------------------------

--
-- Table structure for table `taches`
--

DROP TABLE IF EXISTS `taches`;
CREATE TABLE IF NOT EXISTS `taches` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `due_date` date DEFAULT NULL,
  `priority` enum('Urgente','Importante','Moins Importante') DEFAULT NULL,
  `status` enum('À faire','En cours','Terminée') DEFAULT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=66 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
--  data for table `taches`
--

INSERT INTO `taches` (`id`, `title`, `due_date`, `priority`, `status`, `user_id`) VALUES
(2, 'Apprendre des exercices de respiration', '2025-01-15', 'Importante', 'À faire', 1),
(1, 'Méditer 10 minutes chaque matin', '2025-01-11', 'Urgente', 'En cours', 1),
(3, 'S’inscrire à une salle de sport', '2025-02-05', 'Importante', 'À faire', 2),
(4, 'Suivre un cours de yoga en ligne', '2025-02-10', 'Importante', 'À faire', 2),
(5, 'Créer une feuille de calcul budgétaire', '2025-01-20', 'Urgente', 'En cours', 3),
(6, 'Analyser les dépenses mensuelles', '2025-02-05', 'Urgente', 'À faire', 3),
(7, 'Rédiger un CV professionnel', '2025-01-25', 'Urgente', 'À faire', 4),
(8, 'Créer une maquette pour le portfolio', '2025-02-15', 'Importante', 'À faire', 4),
(9, 'Choisir un livre inspirant à lire', '2025-01-05', 'Moins Importante', 'Terminée', 5),
(10, 'Lire 20 pages par jour', '2025-01-10', 'Moins Importante', 'En cours', 5),
(11, 'Noter 3 choses positives chaque jour', '2025-01-11', 'Urgente', 'Terminée', 6),
(12, 'Revoir les objectifs de la journée chaque soir', '2025-01-15', 'Importante', 'En cours', 6),
(13, 'Chercher des recettes de repas sains', '2025-02-05', 'Importante', 'En cours', 8),
(14, 'Cuisiner un repas équilibré chaque semaine', '2025-02-10', 'Importante', 'À faire', 8),
(15, 'Suivre un tutoriel Python', '2025-01-20', 'Urgente', 'En cours', 9),
(16, 'Créer un projet simple en Java', '2025-02-05', 'Urgente', 'À faire', 9),
(17, 'Acheter une lampe de bureau', '2025-01-11', 'Importante', 'Terminée', 10),
(18, 'Organiser les câbles et accessoires', '2025-01-15', 'Importante', 'En cours', 10),
(19, 'Choisir une destination de voyage', '2025-03-02', 'Moins Importante', 'À faire', 11),
(20, 'Réserver un hôtel', '2025-03-05', 'Moins Importante', 'À faire', 11),
(21, 'Faire une promenade de 30 minutes chaque jour', '2025-01-12', 'Importante', 'En cours', 2),
(22, 'Boire 2 litres d’eau par jour', '2025-01-15', 'Moins Importante', 'À faire', 3),
(23, 'Prendre des pauses pour des exercices de relaxation', '2025-01-20', 'Importante', 'À faire', 4),
(24, 'Suivre une routine de sommeil régulière', '2025-01-18', 'Importante', 'Terminée', 5),
(25, 'Préparer des repas équilibrés pour la semaine', '2025-01-14', 'Urgente', 'En cours', 6),
(26, 'Participer à un cours de fitness en ligne', '2025-01-25', 'Importante', 'À faire', 8),
(27, 'Essayer une nouvelle activité sportive', '2025-02-01', 'Moins Importante', 'À faire', 9),
(28, 'Tenir un journal de gratitude quotidien', '2025-01-30', 'Importante', 'Terminée', 10),
(29, 'Faire des étirements matinaux', '2025-01-12', 'Urgente', 'En cours', 11),
(30, 'Fixer des limites de temps pour l’utilisation des écrans', '2025-01-16', 'Importante', 'À faire', 12),
(31, 'Faire un bilan de santé général', '2025-01-20', 'Urgente', 'À faire', 15),
(32, 'Participer à un atelier de gestion du stress', '2025-01-22', 'Importante', 'À faire', 17),
(33, 'Adopter une posture correcte au travail', '2025-01-18', 'Moins Importante', 'Terminée', 18),
(34, 'Éviter les repas rapides et privilégier les aliments frais', '2025-01-19', 'Importante', 'En cours', 19),
(35, 'Suivre une méditation guidée quotidienne', '2025-01-21', 'Urgente', 'En cours', 20),
(63, 'sortie en nature', '2025-01-18', 'Moins Importante', 'À faire', 24),
(65, 'Boire 2 litres/j', '2025-01-12', 'Urgente', 'À faire', 24);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`),
  UNIQUE KEY `email` (`email`)
) ENGINE=MyISAM AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
--  data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `email`) VALUES
(1, 'nouhi', '24d4b96f58da6d4a8512313bbd02a28ebf0ca95dec6e4c86ef78ce7f01e788ac', 'azerty@gmail.com'),
(2, 'zerty', '24d4b96f58da6d4a8512313bbd02a28ebf0ca95dec6e4c86ef78ce7f01e788ac', 'Anwarsalmi39@gmail.com'),
(3, 'zahra30', '24d4b96f58da6d4a8512313bbd02a28ebf0ca95dec6e4c86ef78ce7f01e788ac', 'zizou@gmail'),
(4, 'tagfati88234', '24d4b96f58da6d4a8512313bbd02a28ebf0ca95dec6e4c86ef78ce7f01e788ac', 'fatitag@gmail.com'),
(5, 'nouha', '6b4a1673b225e8bf5f093b91be8c864427df32ca41b17cc0b82112b8f0185e41', 'nouha@gmail.com'),
(6, 'Fatima zahra tagmouti', 'tagmouti', 'slma@gmail.com'),
(8, 'naya', 'naya', 'naya@gmail.com'),
(9, 'mohammed', 'mohammed', 'mohammed@gmail.com'),
(10, 'nouri', 'nouri', 'nouri@gmail.com'),
(11, 'chimae', 'chimae', 'chimae@gmail.com'),
(12, 'zineb', 'zineb', 'zineb@gmail.com'),
(15, 'mery', 'mery', 'mery@gmail.com'),
(24, 'fati', 'tets', 'test@gmail.com'),
(17, 'kindo', 'kindo', 'kind@gmail.com'),
(18, 'hakou', 'hakou', 'hakou@gmail.com'),
(19, 'nouhira', 'nouhira', 'nouhira@gmail.com'),
(20, 'Fatima_zahra', 'tag', 'kindo@gmail.com');
COMMIT;

