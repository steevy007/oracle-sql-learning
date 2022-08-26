--creation INDEX
CREATE INDEX index_auteurs
ON auteurs(nom);

CREATE INDEX index_categories
ON categories(libelle);

CREATE INDEX index_membres
ON membres(prenom,nom);

CREATE INDEX index_ouvrages
ON ouvrages(titre);


CREATE INDEX index_emprunts
ON emprunts(id_mem,id_ouv);
