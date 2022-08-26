--modifier TABLE
ALTER TABLE membres MODIFY telephone VARCHAR2(40);
ALTER TABLE ouvrages ADD CONSTRAINT FK_ID_AUT FOREIGN KEY(id_aut) REFERENCES auteurs(id_aut);
ALTER TABLE ouvrages ADD CONSTRAINT FK_ID_CAT FOREIGN KEY(id_cat) REFERENCES categories(id_cat);

ALTER TABLE emprunts ADD CONSTRAINT FK_ID_MEM FOREIGN KEY(id_mem) REFERENCES membres(id_mem);
ALTER TABLE emprunts ADD CONSTRAINT FK_ID_OUV FOREIGN KEY(id_ouv) REFERENCES ouvrages(id_ouv);
