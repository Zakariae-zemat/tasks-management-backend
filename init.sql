-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3307
-- Généré le : dim. 22 juin 2025 à 19:20
-- Version du serveur : 10.4.32-MariaDB
-- Version de PHP : 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `tasksmanagement`
--

-- --------------------------------------------------------

--
-- Structure de la table `tasks`
--

CREATE TABLE `tasks` (
  `id` bigint(20) NOT NULL,
  `description` varchar(500) DEFAULT NULL,
  `due_date` date DEFAULT NULL,
  `priority` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `user_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `tasks`
--

INSERT INTO `tasks` (`id`, `description`, `due_date`, `priority`, `status`, `title`, `user_id`) VALUES
(1, 'Develop and test the login functionality.', '2025-02-10', 'HIGH', 'COMPLETED', 'Implement Login', 1),
(2, 'Create tables and configure relationships.', '2025-02-12', 'MEDIUM', 'COMPLETED', 'Setup Database', 1),
(3, 'Create a responsive design for the application.', '2025-02-05', 'LOW', 'COMPLETED', 'Design UI', 1),
(4, 'Resolve critical issues from user feedback.', '2025-02-05', 'HIGH', 'IN_PROGRESS', 'Fix Bugs', 1),
(8, 'Create CRUD operations for tasks.', '2025-03-01', 'MEDIUM', 'COMPLETED', 'Develop Task Management', 1),
(10, 'Send email alerts for task deadlines.', '2025-03-05', 'HIGH', 'IN_PROGRESS', 'Implement Notifications', 1),
(11, 'Add JWT authentication and role-based access control.', '2025-03-10', 'HIGH', 'IN_PROGRESS', 'Enhance Security', 1),
(12, 'Write unit and integration tests for the backend.', '2025-02-19', 'MEDIUM', 'TO_DO', 'Test API Endpoints', 1),
(13, 'Launch the application for end users.', '2025-03-15', 'HIGH', 'TO_DO', 'Deploy to Production', 1),
(14, 'Develop an admin panel for managing users.', '2025-03-18', 'MEDIUM', 'COMPLETED', 'Create Admin Dashboard', 1),
(15, 'Collect insights from beta testers.', '2025-03-20', 'LOW', 'COMPLETED', 'Gather User Feedback', 1);

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `email`, `password`, `username`) VALUES
(1, 'zakar@gm.com', '$2a$12$3W6B3WFid5D8eZVZWEu1BufsZMPtP6ayr7u9IKJz.uTScxrAOMBZ.', 'zakar'),
(3, 'yasser@gm.com', '$2a$10$MkF3YXiT5j/mhlCPlZXhXecrUkBIcFrwEAZ/CJBbplMvdklYVnxtW', 'yasser');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `tasks`
--
ALTER TABLE `tasks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK6s1ob9k4ihi75xbxe2w0ylsdh` (`user_id`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UK6dotkott2kjsp8vw4d0m25fb7` (`email`),
  ADD UNIQUE KEY `UKr43af9ap4edm43mmtq01oddj6` (`username`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `tasks`
--
ALTER TABLE `tasks`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `tasks`
--
ALTER TABLE `tasks`
  ADD CONSTRAINT `FK6s1ob9k4ihi75xbxe2w0ylsdh` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
