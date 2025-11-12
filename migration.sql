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

iNSERT INTO competences (nom, niveau, description) VALUES
('HTML', 'Debutant', 'Frontend'),
('CSS', 'Avancé', 'Frontend'),
('JavaScript', 'Intermédiaire', 'Frontend'),
('Python', 'Debutant', 'Backend'),
('SQL', 'Intermédiaire', 'Database');