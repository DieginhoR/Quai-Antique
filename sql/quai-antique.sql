CREATE DATABASE IF NOT EXISTS quai-antique

CREATE TABLE Client
(
    id INT PRIMARY KEY NOT NULL,
    nom VARCHAR(100) NOT NULL,
    prenom VARCHAR(100) NOT NULL,
    email VARCHAR(255) NOT NULL,
    allergies VARCHAR(255),
    accompagnant INT 
);

CREATE TABLE Tables 
(
    id INT PRIMARY KEY NOT NULL,
    nbrCouvert INT NOT NULL
);

CREATE TABLE Reservation
(
    id INT PRIMARY KEY NOT NULL,
    date DATE,
    heure INT,
    nbrCouvert INT NOT NULL,
    idclient INT NOT NULL,
    FOREIGN KEY (idclient) REFERENCES Client(id)
);

CREATE TABLE Plat
(
    id INT PRIMARY KEY NOT NULL,
    type VARCHAR(20) NOT NULL,
    nom VARCHAR(50) NOT NULL,
    prix INT NOT NULL
);

CREATE TABLE Menu
(
    id INT PRIMARY KEY NOT NULL,
    descriptif VARCHAR(255),
    prix INT NOT NULL
);

CREATE TABLE Horaire
(
    jour DATE,
    heure INT
);