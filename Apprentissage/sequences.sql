--createion SEQUENCE
CREATE SEQUENCE sequence_etudiants
INCREMENT BY 1
START WITH 1
MINVALUE 1
MAXVALUE 100
CYCLE
CACHE 2;

--create table etudiant1
CREATE TABLE etudiants1(
    matricule NUMBER PRIMARY KEY,
    nom varchar2(25) NOT NULL
);

--use SEQUENCE
INSERT INTO etudiants1 VALUES(sequence_etudiants.NEXTVAL,'sanon steeve');


INSERT INTO etudiants1 VALUES(sequence_etudiants.NEXTVAL,'Jerry Merisca');
INSERT INTO etudiants1 VALUES(sequence_etudiants.NEXTVAL,'Lenicia Merisca');
INSERT INTO etudiants1 VALUES(sequence_etudiants.NEXTVAL,'sanon MarcKevyn Kerns');
INSERT INTO etudiants1 VALUES(sequence_etudiants.NEXTVAL,'Jimmy Gassant');
INSERT INTO etudiants1 VALUES(sequence_etudiants.NEXTVAL,'Chesly Boisreau');
INSERT INTO etudiants1 VALUES(sequence_etudiants.NEXTVAL,'Sanon Jean Pesnel');
INSERT INTO etudiants1 VALUES(sequence_etudiants.NEXTVAL,'Boisreau Gabriel');
INSERT INTO etudiants1 VALUES(sequence_etudiants.NEXTVAL,'Nadia Felix');
INSERT INTO etudiants1 VALUES(sequence_etudiants.NEXTVAL,'Merancien Rodney');


--valeur courrante sequente
SELECT sequence_etudiants.CURRVAL FROM DUAL;
--valeur suivante sequente
SELECT sequence_etudiants.NEXTVAL FROM DUAL;

--obtenir les valeur a plusieur reprise
SELECT sequence_etudiants.NEXTVAL FROM DUAL CONNECT BY LEVEL <=5;

--modification 
ALTER SEQUENCE sequence_etudiants 
INCREMENT BY 2
MAXVALUE 200
MINVALUE 5
CACHE 10;

--suppression
DROP SEQUENCE sequence_etudiants;