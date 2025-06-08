INSERT INTO `caserne` (`ID_Caserne`, `Libellé`, `Adresse`, `Ville`, `CP`) VALUES ('EV', 'L\'Entente - Villers en plaine', NULL, NULL, NULL);
INSERT INTO `caserne` (`ID_Caserne`, `Libellé`, `Adresse`, `Ville`, `CP`) VALUES ('CY', 'Chauray', NULL, NULL, NULL);
INSERT INTO `caserne` (`ID_Caserne`, `Libellé`, `Adresse`, `Ville`, `CP`) VALUES ('CS', 'Caserne Sud', '30 boulevard du Maréchal Juin', 'Parthenay', '79200');

INSERT INTO `employeur` (`ID_Employeur`, `Nom`, `Adresse`, `Ville`, `CP`) VALUES ('SDIS_79', 'SDIS des Deux-Sèvres', '15 rue du Guesclin', 'Niort', '79000');
INSERT INTO `employeur` (`ID_Employeur`, `Nom`, `Adresse`, `Ville`, `CP`) VALUES ('Mairie_Niort', 'Mairie de Niort', '1 place Martin Bastard', 'Niort', '79000');
INSERT INTO `employeur` (`ID_Employeur`, `Nom`, `Adresse`, `Ville`, `CP`) VALUES ('Mairie_Bressuire', 'Mairie de Bressuire', '2 rue de l\'Hôtel de Ville', 'Bressuire', '79300');

INSERT INTO `habilitation` (`ID_Habilitation`, `Libellé`) VALUES ('PSE1', 'Premiers secours en équipe de niveau 1');
INSERT INTO `habilitation` (`ID_Habilitation`, `Libellé`) VALUES ('PSE2', 'Premiers secours en équipe de niveau 2');
INSERT INTO `habilitation` (`ID_Habilitation`, `Libellé`) VALUES ('FDF', 'Feux de forêts');

INSERT INTO `type_engin` (`ID_Type_Engin`, `Libellé`) VALUES ('CCGC', 'Camion-citerne grande capacité'), ('VLTT', 'Véhicule de liaison tout-terrain'), ('VDC', 'Véhicule de décontamination');

INSERT INTO `type_pompier` (`ID_TypePompier`, `Libellé`) VALUES ('SPP', 'Sapeur-pompier professionnel'), ('SPV', 'Sapeur-pompier volontaire');

INSERT INTO `type_sinistre` (`ID_Sinistre`, `Libellé`) VALUES ('INCE', 'Incendie'), ('ACCI', 'Accident de la circulation'), ('SECO', 'Secours à personne');

INSERT INTO `pompier` (`Matricule`, `Nom`, `Prenom`, `DateNaissance`, `Sexe`, `Telephone`, `NumBIP`, `Date_Embauche`, `Dernier_Indice_Traitement`, `ID_TypePompier`, `ID_Employeur`) VALUES ('123001', 'Dupont', 'Jean', '1990-01-01', 'Masculin', '0612345678', '123456', '2015-01-01', '13', 'SPP', 'SDIS_79'), ('123002', 'Durand', 'Sophie', '1995-05-15', 'Féminin', '0687654321', '234567', '2018-03-15', '11', 'SPV', 'Mairie_Niort'), ('123003', 'Martin', 'Pierre', '1985-10-20', 'Masculin', '0623456789', '345678', '2012-06-01', '15', 'SPP', 'Mairie_Bressuire'), ('123004', 'Persie', 'Robin', '1984-10-20', 'Masculin', '0623479789', '345078', '2012-06-01', '15', 'SPP', 'SDIS_79'), ('123005', 'Messi', 'Leo', '1984-10-20', 'Masculin', '0623479789', '345078', '2012-06-01', '15', 'SPP', 'SDIS_79');

INSERT INTO `engin` (`ID_Type_Engin`, `Numero_Ordre`, `ID_Caserne`) VALUES ('CCGC', '123', 'EV'), ('VLTT', '234', 'CY'), ('VDC', '345', 'CS');

INSERT INTO `posséder` (`Matricule`, `ID_Habilitation`, `Date_Obtention`) VALUES ('123001', 'PSE1', '2015-02-01'), ('123002', 'PSE2', '2018-04-01'), ('123003', 'FDF', '2013-07-01');

INSERT INTO `affecter` (`Matricule`, `Date_Affectation`, `ID_Caserne`) VALUES ('123001', '2022-01-01', 'EV'), ('123002', '2022-01-02', 'CY'), ('123003', '2022-01-03', 'CS');

INSERT INTO `lier` (`ID_Type_Engin`, `ID_Sinistre`) VALUES ('CCGC', 'INCE'), ('VLTT', 'ACCI'), ('VDC', 'SECO'), ('VLTT', 'SECO'), ('CCGC', 'SECO');

INSERT INTO `mobiliser` (`ID_Habilitation`, `ID_Type_Engin`, `Nb_Personnes`) VALUES ('PSE1', 'CCGC', '6'), ('PSE2', 'VLTT', '3'), ('FDF', 'VDC', '4');