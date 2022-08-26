/*Suppression de la table Employes*/
DROP TABLE Employes;

/*Recréation de la table Employes*/
CREATE TABLE Employes
(
  eno       INT PRIMARY KEY,
  enom      VARCHAR(20),
  dateemb   DATE,
  tel       VARCHAR(14),
  comm      INT,
  dno       INT,
  emanger   INT,
 FOREIGN KEY (dno) REFERENCES Departements(dno)
);

/* Insertion de nouvelles lignes*/
/* Susan Brown employé et chef de departement 10*/
INSERT ALL
INTO Employes VALUES(201, 'Susan Brown',to_date('20-05-2005','dd/mm/yyyy'),'514-999-9999',2000,2,NULL)
INTO Employes VALUES(202, 'Jim Kern',to_date('02-05-2005','dd/mm/yyyy'),'514-888-9999',150,2,201)
INTO Employes VALUES(203, 'Martha Woods',to_date('08-01-2000','dd/mm/yyyy'),'514-666-7777',160,2,201)
SELECT 1 FROM DUAL;

/*Ellens Kowen employé et chef de departement 20 */
INSERT ALL
INTO Employes VALUES(204, 'Ellens Kowen',to_date('05-11-2003','dd/mm/yyyy'),'418-999-9999',1000,3,201)
INTO Employes VALUES(205, 'Henry Perkins',to_date('09-09-2000','dd/mm/yyyy'),'613-998-7891',200,3,204)
INTO Employes VALUES(206, 'Carol Rose',to_date('11-05-2005','dd/mm/yyyy'),'450-999-9999',200,3,204)
SELECT 1 FROM DUAL;

/*Nancy Hofman employé et chef de departement 30 */
INSERT ALL
INTO Employes VALUES(207, 'Nancy Hofman',to_date('20-05-2005','dd/mm/yyyy'),'514-999-9999',1500,4,201)
INTO Employes VALUES(208, 'Anne Marie',to_date('20-05-2005','dd/mm/yyyy'),'514-999-9999',200,4,207)
INTO Employes VALUES(209, 'Yves Leblanc',to_date('20-05-2005','dd/mm/yyyy'),'514-999-9999',200,4,207)
SELECT 1 FROM DUAL;

/*Employés sans départements*/
INSERT ALL
INTO Employes VALUES(210, 'Dan Smith',to_date('21-08-2001','dd/mm/yyyy'),'514-900-9000',100,null,null)
INTO Employes VALUES(211, 'Fred Camprel',to_date('20-11-2000','dd/mm/yyyy'),'514-333-4444',170,null,null)
INTO Employes VALUES(212, 'Paula Jacobs',to_date('20-05-2005','dd/mm/yyyy'),'514-999-9999',150,null,null)
SELECT 1 FROM DUAL;

/*Validation de la saisie*/
Commit;

/* Ancienne jointure*/
 SELECT e.enom AS Employes, m.enom AS Manager
 FROM Employes e, Employes m
 WHERE
 e.eno=m.emanger;

/* Inner Join*/
SELECT e.enom AS Employes, m.enom AS Manager
FROM Employes e
INNER JOIN Employes m
ON
e.eno=m.emanger;

/*Left Outer Join*/
SELECT e.enom AS Employes, m.enom AS Manager
FROM Employes e
LEFT OUTER JOIN Employes m
ON
e.eno=m.emanger;

/*Right Outer Join*/
SELECT e.enom AS Employes, m.enom AS Manager
FROM Employes e
right OUTER JOIN Employes m
ON
e.eno=m.emanger;

/* Full Join*/
SELECT e.enom AS Employes, m.enom AS Manager
FROM Employes e
FULL JOIN Employes m
ON
e.eno=m.emanger;

/* Cross Join*/
SELECT e.enom AS Employes, m.enom AS Manager
FROM Employes e
CROSS JOIN Employes m
;