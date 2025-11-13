-- Active: 1762954456653@@127.0.0.1@3306@portfolio_db
---Portofolio Migration Script---

CREATE DATABASE IF NOT EXISTS portfolio_db;
USE portfolio_db;

---Table Compétences---

CREATE TABLE competences (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nom VARCHAR(255) NOT NULL,
    niveau VARCHAR(100) NOT NULL,
    description VARCHAR(100) NOT NULL
);

---Table Projets---

CREATE TABLE projets (
    id INT AUTO_INCREMENT PRIMARY KEY,
    titre VARCHAR(255) NOT NULL,
    description TEXT NOT NULL,
    url VARCHAR(255),
    date_creation DATE NOT NULL
);

---Table Expériences Professionnelles---

CREATE TABLE experiences_professionnelles (
    id INT AUTO_INCREMENT PRIMARY KEY,
    entreprise VARCHAR(255) NOT NULL,
    poste VARCHAR(255) NOT NULL,
    date_debut DATE NOT NULL,
    date_fin DATE,
    description TEXT
);

---Table Formations--- 

CREATE TABLE formations (
    id INT AUTO_INCREMENT PRIMARY KEY,
    institution VARCHAR(255) NOT NULL,
    diplome VARCHAR(255) NOT NULL,
    date_obtention DATE NOT NULL,
    description TEXT
);

---Table Loisirs---

CREATE TABLE loisirs (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nom VARCHAR(255) NOT NULL,
    description TEXT
);


---Insertion dans la table competences---
iNSERT INTO competences (nom, niveau, description) VALUES
('HTML', 'Debutant', 'Frontend'),
('CSS', 'Avancé', 'Frontend'),
('JavaScript', 'Intermédiaire', 'Frontend'),
('Python', 'Debutant', 'Backend'),
('SQL', 'Intermédiaire', 'Database');

---Insertion dans experiences professionneles---
INSERT INTO experiences_professionnelles (entreprise, poste, date_debut, date_fin, description) VALUES
('Tech Solutions', 'Développeur Web Junior', '2021-06-01', '2022-08-31', 'Développement de sites web pour divers clients.'),
('Innovatech', 'Stagiaire en Développement', '2020-01-15', '2020-06-15', 'Participation au développement d\'applications internes.');

---Insertion dans formations---
INSERT INTO formations (institution, diplome, date_obtention, description) VALUES
('Université de la Tech', 'Licence Informatique', '2022-05-20', 'Formation axée sur le développement web et les bases de données.'),
('Lycée Jean Moulin', 'Baccalauréat Scientifique', '2019-06-15', 'Spécialisation en mathématiques et sciences.');   

---Insertion dans loisirs---
INSERT INTO loisirs (nom, description) VALUES
('Photographie', 'Passion pour la capture de moments et la retouche photo.'),
('Randonnée', 'Exploration de la nature et des paysages.'), 
('Lecture', 'Lecture de romans de science-fiction et de développement personnel.'); 

---Insertion dans projets---
INSERT INTO projets (titre, description, url, date_creation) VALUES
('Portfolio en Ligne', 'Création d\'un site web personnel pour présenter mes compétences et projets.', 'http://monportfolio.com', '2023-03-15'),
('Application de Gestion de Tâches', 'Développement d\'une application web pour gérer les tâches quotidiennes.', 'http://taskmanager.com', '2023-06-10');   


---Fin de la migration---  