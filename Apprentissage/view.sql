--creation
CREATE OR REPLACE VIEW Tuto(nom)
AS SELECT 'Bienvenue'
FROM DUAL;

CREATE OR REPLACE VIEW vue_clients 
AS SELECT * FROM clients;

SELECT * FROM vue_clients;

--creation vue conditionelle
CREATE OR REPLACE VIEW vue_clients_montreal 
AS SELECT * FROM clients 
WHERE ville='Montréal';

SELECT * FROM vue_clients_montreal;

--modification ligne
UPDATE vue_clients SET ville='Laval' WHERE code=100;

--suppression
DELETE FROM vue_clients WHERE code=100;--violation contraint integrite
DELETE FROM vue_clients WHERE code=2000;

--recuperation
ROLLBACK;

--insertion lignes dans vue
INSERT INTO vue_clients VALUES(2010,'Sanon','Steeve','sanon@gmail.com','Toronto');
COMMIT;

--controle ointegrite check OPTION
CREATE OR REPLACE VIEW vue_clients_montreal
AS
SELECT * FROM clients
WHERE 
ville='Montréal'
WITH CHECK OPTION;

INSERT INTO vue_clients_montreal VALUES(2011,'Marck','Kevyn','kevyn@gmail.com','Laval');--violation contrainte
INSERT INTO vue_clients_montreal VALUES(2011,'Marck','Kevyn','kevyn@gmail.com','Montréal');

UPDATE vue_clients_montreal SET ville='Laval' WHERE code=2011;--violation contrainte


--controle integrite avec read ONLY
CREATE OR REPLACE VIEW vue_clients 
AS 
SELECT * FROM clients
WITH READ ONLY;

UPDATE vue_clients SET ville='Toronto' WHERE code=100;--ORA-42399: cannot perform a DML operation on a read-only view

--Gestion view
--structure VIEW
DESC vue_clients;
--renommer une VIEW
RENAME vue_clients TO vue_clients_nvl;
--suppression VIEW
DROP VIEW vue_clients_nvl;


--view avec jointure
CREATE OR REPLACE VIEW commande_ferme
AS 
SELECT d.code AS numero_commande, c.code AS code_client, p.refer AS reference , p.designation , d.date_achat , l.quantite , p.prix, (p.prix*l.quantite) AS montant_hors_taxe
FROM clients c , produits p, commandes d, ligne_commandes l
WHERE 
c.code=d.codeclt
AND
d.code=l.code
AND
l.refer=p.refer
ORDER BY d.code;

SELECT * FROM commande_ferme;


--view materialise ou concrete
CREATE  MATERIALIZED VIEW produit_mv
AS 
SELECT * FROM produits;

SELECT * FROM produit_mv;





