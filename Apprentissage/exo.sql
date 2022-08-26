--creation de la table produit
CREATE TABLE produits(
    ref VARCHAR2(4),
    desig VARCHAR2(40) NOT NULL,
    prix NUMBER(7,2) CONSTRAINT chk_price CHECK (prix>0),
    qte_stock NUMBER(5),
    tva NUMBER(2),
    CONSTRAINT pk_produit PRIMARY KEY (ref)
);

--creation de la table client
CREATE TABLE clients(
    code_clt NUMBER(4) PRIMARY KEY,
    nom VARCHAR2(2) NOT NULL,
    tel VARCHAR2(12) UNIQUE NOT NULL,
    email VARCHAR2(30) UNIQUE NOT NULL,
    cp NUMBER(5) CONSTRAINT ch_cp CHECK (cp BETWEEN 1000 AND 99999 ),
    ville VARCHAR2(25) DEFAULT 'MONTREAL',
    CONSTRAINT cp_check_positive CHECK (cp>0)
);

--creation table commandes
CREATE TABLE commandes(
    ncode NUMBER(4),
    cde_clt NUMBER(4),
    date_clt DATE,
    CONSTRAINT pk_commande PRIMARY KEY(ncode),
    CONSTRAINT fk_cde_clt FOREIGN KEY (cde_clt) REFERENCES clients(code_clt)
);

--creation de la table ligne commande
CREATE TABLE lignescommandes(
    ncode NUMBER(4) CONSTRAINT fk_ligcodes REFERENCES commandes(ncode),
    nolig NUMBER(4),
    ref VARCHAR2(4) CONSTRAINT fk_ligcdes REFERENCES produits(ref),
    qtecde NUMBER(5),
    CONSTRAINT pk_ligcdes PRIMARY KEY(ncode,nolig)
);

--INSERTION

INSERT ALL
INTO produits VALUES('pd01','LAIT',2000.9,10,10)
INTO produits VALUES('pd02','RIZ',2500.9,15,10)
INTO produits VALUES('pd03','MAIS',5000.9,30,10)
INTO produits VALUES('pd04','NETSLE',2800.9,40,10)
INTO produits VALUES('pd05','CAFE',1000.9,50,10)
INTO produits VALUES('pd06','POULE',2070.9,100,10)
INTO produits VALUES('pd07','JAMBOM',2370.9,110,10)
INTO produits VALUES('pd08','POID BLANC',2106.9,8,10)
INTO produits VALUES('pd09','ORDINATEUR',9000.9,17,10)
INTO produits VALUES('pd10','KETCHUP',1200.9,105,10)
SELECT 1 FROM DUAL;

commits;

INSERT ALL
INTO clients VALUES(1000,'SANON STEEVE','50910000000','steevesanon6@gmail.com',50000,'DELMAS')
INTO clients VALUES(1001,'CHESLY BOISREAU','50912300000','steevesanon555@gmail.com',40000,'PV')
INTO clients VALUES(1002,'JEAN PESNEL','50914500000','ingsanonsteeve@gmail.com',35000,'KENSKOF')
INTO clients VALUES(1003,'MERISCA LENICIA','50910000123','lenicia@gmail.com',70000,'CARREFOUR')
INTO clients VALUES(1004,'JOHNNY GABRIEL','50910012300','steevesanon@gmail.com',55000,'LEOGANE')
SELECT 1 FROM DUAL;

commit;

INSERT ALL
INTO commandes VALUES(2000,1000,SYSDATE)
INTO commandes VALUES(2001,1001,SYSDATE)
INTO commandes VALUES(2002,1002,SYSDATE)
INTO commandes VALUES(2003,1003,SYSDATE)
INTO commandes VALUES(2004,1004,SYSDATE)
SELECT 1 FROM DUAL;

commit;

INSERT ALL
INTO lignescommandes VALUES(2000,1,'pd01',4)
INTO lignescommandes VALUES(2001,2,'pd02',10)
INTO lignescommandes VALUES(2002,3,'pd03',11)
INTO lignescommandes VALUES(2003,4,'pd04',40)
INTO lignescommandes VALUES(2004,5,'pd05',15)
INTO lignescommandes VALUES(2000,6,'pd05',24)
INTO lignescommandes VALUES(2001,7,'pd06',34)
INTO lignescommandes VALUES(2003,8,'pd07',67)
INTO lignescommandes VALUES(2002,9,'pd08',26)
INTO lignescommandes VALUES(2004,10,'pd09',77)
SELECT 1 FROM DUAL;

commit;


--add email column to etudiants
ALTER TABLE etudiants ADD email VARCHAR2(15) UNIQUE;
--modifier
ALTER TABLE etudiants MODIFY email VARCHAR2(15) NOT NULL;
--supprimer
ALTER TABLE etudiants DROP COLUMN email;
--renommer TABLE
RENAME  etudiants TO professeurs;

--creation table classes
CREATE TABLE classes(
    num_cl NUMBER(3) PRIMARY KEY,
    localite VARCHAR2(25)
);

--alter professuer
ALTER TABLE professeurs ADD num_cl NUMBER(3);

--add fk_numcl
ALTER TABLE professeurs ADD CONSTRAINT fk_num_cl FOREIGN KEY(num_cl) REFERENCES classes(num_cl);

--drop table classes
DROP TABLE classes;--pa pase
DROP TABLE professeurs;
DROP TABLE classes;

--update ligne table clients
UPDATE clients SET ville='VILLE EDIT' WHERE code_clt=1004;

--exo
ALTER TABLE etudiants ADD prenom VARCHAR2(25);
ALTER TABLE etudiants ADD email VARCHAR2(40);
ALTER TABLE etudiants ADD dateNaissance DATE;