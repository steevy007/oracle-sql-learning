--sous requette
SELECT refer , designation , qte_stock FROM produits 
WHERE refer=(SELECT refer FROM produits WHERE prix=60);

SELECT * FROM produits WHERE prix > (SELECT AVG(prix) FROM produits);

--sous requette IN
CREATE TABLE clients_laval AS SELECT * FROM clients WHERE ville='Laval';
SELECT * FROM clients;

SELECT code , date_achat FROM commandes
WHERE codeclt IN (SELECT code FROM clients WHERE ville='Montréal');

--sous requette ALL

SELECT * FROM clients c JOIN commandes cd  ON c.code=cd.codeclt
AND date_achat > ALL (SELECT date_achat FROM commandes WHERE date_achat > TO_DATE('01-01-2022','dd-mm-yyyy') AND date_achat < TO_DATE('01-02-2022','dd-mm-yyyy'));


--exist
SELECT * FROM clients c 
WHERE 
EXISTS (SELECT * FROM commandes WHERE codeclt=c.code)
ORDER BY c.code;

--not exits
SELECT * FROM clients c 
WHERE 
NOT EXISTS (SELECT * FROM commandes WHERE codeclt=c.code)
ORDER BY c.code;

--exist avec INSERT
--creation table client 2022
CREATE TABLE clients_2022(
    id NUMERIC PRIMARY KEY,
    nom VARCHAR2(25),
    email VARCHAR2(75)
);

--insertion lignes
INSERT INTO clients_2022(id,nom,email) 
SELECT code,nom,email FROM clients c WHERE EXISTS
(SELECT * FROM commandes WHERE codeclt=c.code);

--exist avec UPDATE
UPDATE clients c set ville='PORT-AU-PRINCE'
WHERE 
EXISTS (SElECT 1 FROM commandes WHERE codeclt=c.code AND codeclt=100);

--INTERSECT 
--UNION
SELECT code,nom,ville FROM clients
UNION ALL
SELECT code,nom,ville FROM clients_laval;

SELECT code,nom,ville FROM clients WHERE code>1000
UNION 
SELECT code,nom,ville FROM clients_laval WHERE code>1000;

--creation nvl TABLE
INSERT INTO union_clients
SELECT * FROM
(SELECT code,nom,ville FROM clients
UNION 
SELECT code,nom,ville FROM clients_laval);

CREATE TABLE union_clients AS
SELECT * FROM
(SELECT code,nom,ville FROM clients
UNION 
SELECT code,nom,ville FROM clients_laval);

--INTERSECT
SELECT code,nom,ville FROM clients
INTERSECT
SELECT code,nom,ville FROM clients_laval;

--MINUS
SELECT code,nom,ville FROM clients
MINUS
SELECT code,nom,ville FROM clients_laval
ORDER BY ville;


