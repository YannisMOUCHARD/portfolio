
SELECT p.Matricule, p.Nom, p.Prenom, a.ID_Caserne, a.Date_Affectation
FROM Pompier p
JOIN Affecter a ON p.Matricule = a.Matricule
JOIN Type_Pompier tp ON p.ID_TypePompier = tp.ID_TypePompier
WHERE tp.Libellé = 'Sapeur-pompier professionnel'
ORDER BY a.Date_Affectation DESC;

SELECT c.ID_Caserne, c.Libellé, COUNT(a.Matricule) as Nombre_Pompiers
FROM Caserne c
JOIN Affecter a ON c.ID_Caserne = a.ID_Caserne
JOIN Pompier p ON a.Matricule = p.Matricule
JOIN Type_Pompier tp ON p.ID_TypePompier = tp.ID_TypePompier
WHERE tp.Libellé = 'Sapeur-pompier volontaire'
GROUP BY c.ID_Caserne, c.Libellé;


SELECT e.ID_Employeur, e.Nom, COUNT(p.Matricule) as Nombre_Pompiers
FROM Employeur e
JOIN Pompier p ON e.ID_Employeur = p.ID_Employeur
JOIN Type_Pompier tp ON p.ID_TypePompier = tp.ID_TypePompier
WHERE tp.Libellé = 'Sapeur-pompier professionnel'
GROUP BY e.ID_Employeur, e.Nom
HAVING COUNT(p.Matricule) > 2;


SELECT p.Matricule, p.Nom, p.Prenom, h.ID_Habilitation, h.Libellé, po.Date_Obtention
FROM Pompier p
JOIN Posséder po ON p.Matricule = po.Matricule
JOIN Habilitation h ON po.ID_Habilitation = h.ID_Habilitation;


SELECT c.ID_Caserne, c.Libellé, e.ID_Type_Engin, e.Numero_Ordre, t.Libellé as Type_Engin
FROM Caserne c
JOIN Engin e ON c.ID_Caserne = e.ID_Caserne
JOIN Type_Engin t ON e.ID_Type_Engin = t.ID_Type_Engin;


SELECT s.ID_Sinistre, s.Libellé, COUNT(l.ID_Type_Engin) as Nombre_Engins
FROM Type_Sinistre s
JOIN Lier l ON s.ID_Sinistre = l.ID_Sinistre
GROUP BY s.ID_Sinistre, s.Libellé
HAVING COUNT(l.ID_Type_Engin) > 2;


SELECT tp.Libellé, COUNT(p.Matricule) as Nombre_Pompiers
FROM Pompier p
JOIN Type_Pompier tp ON p.ID_TypePompier = tp.ID_TypePompier
GROUP BY tp.Libellé;


SELECT p.Matricule, p.Nom, p.Prenom, a.ID_Caserne, a.Date_Affectation
FROM Pompier p
JOIN Affecter a ON p.Matricule = a.Matricule
WHERE a.Date_Affectation >= DATE_SUB(CURRENT_DATE, INTERVAL 30 DAY);


INSERT INTO Engin (ID_Type_Engin, Numero_Ordre, ID_Caserne)
VALUES ('VSAV', 57, 'CS');

DELETE FROM Affecter
WHERE Matricule = '123321' AND Date_Affectation = '2021-06-19';

CREATE VIEW vue_nombre_pompiers_par_caserne AS
SELECT c.ID_Caserne, c.Libellé,
       COUNT(CASE WHEN tp.Libellé = 'Sapeur' THEN p.Matricule END) AS nombre_sapeur
FROM Caserne c
LEFT JOIN Affecter a ON c.ID_Caserne = a.ID_Caserne
LEFT JOIN Pompier p ON a.Matricule = p.Matricule
LEFT JOIN Type_Pompier tp ON p.ID_TypePompier = tp.ID_TypePompier
GROUP BY c.ID_Caserne, c.Libellé;

SELECT ID_Caserne, Libellé, nombre_sapeur AS total_pompiers
FROM vue_nombre_pompiers_par_caserne
WHERE nombre_sapeur > 2
ORDER BY total_pompiers DESC;