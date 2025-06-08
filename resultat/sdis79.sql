CREATE TABLE Caserne(
   ID_Caserne VARCHAR(50),
   Libellé VARCHAR(50) NOT NULL,
   Adresse VARCHAR(50),
   Ville VARCHAR(50),
   CP VARCHAR(5),
   PRIMARY KEY(ID_Caserne)
)ENGINE=INNODB;

CREATE TABLE Employeur(
   ID_Employeur VARCHAR(50),
   Nom VARCHAR(50) NOT NULL,
   Adresse VARCHAR(50) NOT NULL,
   Ville VARCHAR(50) NOT NULL,
   CP VARCHAR(5) NOT NULL,
   PRIMARY KEY(ID_Employeur)
)ENGINE=INNODB;

CREATE TABLE Habilitation(
   ID_Habilitation VARCHAR(50),
   Libellé VARCHAR(50) NOT NULL,
   PRIMARY KEY(ID_Habilitation)
)ENGINE=INNODB;

CREATE TABLE Type_Engin(
   ID_Type_Engin VARCHAR(50),
   Libellé VARCHAR(255) NOT NULL,
   PRIMARY KEY(ID_Type_Engin)
)ENGINE=INNODB;

CREATE TABLE Engin(
   ID_Type_Engin VARCHAR(50),
   Numero_Ordre INT NOT NULL,
   ID_Caserne VARCHAR(50),
   PRIMARY KEY(ID_Type_Engin, Numero_Ordre),
   FOREIGN KEY(ID_Type_Engin) REFERENCES Type_Engin(ID_Type_Engin),
   FOREIGN KEY(ID_Caserne) REFERENCES Caserne(ID_Caserne)
)ENGINE=INNODB;

CREATE TABLE Type_Pompier(
   ID_TypePompier VARCHAR(50),
   Libellé VARCHAR(50) NOT NULL,
   PRIMARY KEY(ID_TypePompier)
)ENGINE=INNODB;

CREATE TABLE Type_Sinistre(
   ID_Sinistre VARCHAR(50),
   Libellé VARCHAR(50) NOT NULL,
   PRIMARY KEY(ID_Sinistre)
)ENGINE=INNODB;

CREATE TABLE Pompier(
   Matricule VARCHAR(50),
   Nom VARCHAR(50) NOT NULL,
   Prenom VARCHAR(50) NOT NULL,
   DateNaissance DATE NOT NULL,
   Sexe VARCHAR(50) NOT NULL,
   Telephone VARCHAR(10) NOT NULL,
   NumBIP INT NOT NULL,
   Date_Embauche DATE,
   Dernier_Indice_Traitement SMALLINT,
   ID_TypePompier VARCHAR(50),
   ID_Employeur VARCHAR(50),
   PRIMARY KEY(Matricule),
   FOREIGN KEY(ID_TypePompier) REFERENCES Type_Pompier(ID_TypePompier),
   FOREIGN KEY(ID_Employeur) REFERENCES Employeur(ID_Employeur)
)ENGINE=INNODB;

CREATE TABLE Posséder(
   Matricule VARCHAR(50),
   ID_Habilitation VARCHAR(50),
   Date_Obtention DATE NOT NULL,
   PRIMARY KEY(Matricule, ID_Habilitation, Date_Obtention),
   FOREIGN KEY(Matricule) REFERENCES Pompier(Matricule),
   FOREIGN KEY(ID_Habilitation) REFERENCES Habilitation(ID_Habilitation)
)ENGINE=INNODB;

CREATE TABLE Affecter(
   Matricule VARCHAR(50),
   Date_Affectation DATE,
   ID_Caserne VARCHAR(50),
   PRIMARY KEY(Matricule, Date_Affectation),
   FOREIGN KEY(Matricule) REFERENCES Pompier(Matricule),
   FOREIGN KEY(ID_Caserne) REFERENCES Caserne(ID_Caserne)
)ENGINE=INNODB;

CREATE TABLE Mobiliser(
   ID_Habilitation VARCHAR(50),
   ID_Type_Engin VARCHAR(50),
   Nb_Personnes INT NOT NULL,
   PRIMARY KEY(ID_Habilitation, ID_Type_Engin),
   FOREIGN KEY(ID_Habilitation) REFERENCES Habilitation(ID_Habilitation),
   FOREIGN KEY(ID_Type_Engin) REFERENCES Type_Engin(ID_Type_Engin)
)ENGINE=INNODB;

CREATE TABLE Lier(
   ID_Type_Engin VARCHAR(50) NULL,
   ID_Sinistre VARCHAR(50) NULL ,
   PRIMARY KEY(ID_Type_Engin, ID_Sinistre),
   FOREIGN KEY(ID_Type_Engin) REFERENCES Type_Engin(ID_Type_Engin),
   FOREIGN KEY(ID_Sinistre) REFERENCES Type_Sinistre(ID_Sinistre)
)ENGINE=INNODB;
