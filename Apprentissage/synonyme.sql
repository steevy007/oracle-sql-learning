--synonymes
--creation SYNONYM
CREATE OR REPLACE SYNONYM syn_articles FOR produits;
--afficher sysnonym
SELECT * FROM produits;
SELECT * FROM syn_articles;
--inserer enregistrement
INSERT INTO produits VALUES('A150','Ramette Papier A4',4,250);
COMMIT;
--suppression SYNONYM
DROP SYNONYM  syn_articles FORCE;