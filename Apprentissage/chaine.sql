--concat
SELECT eno , CONCAT(eno,enom) AS emp FROM employees;
SELECT CONCAT('SANON','STEEVE') AS NOMCOMPLET FROM DUAL;


--create table utilisateurs
CREATE TABLE utilisateurs(
    id INTEGER CONSTRAINT pk_id_user PRIMARY KEY,
    nom VARCHAR2(30) NOT NULL,
    prenom VARCHAR2(30) NOT NULL
);

--insertion
INSERT ALL
INTO utilisateurs VALUES(1,'SANON','STEEVE')
INTO utilisateurs VALUES(2,'SANON','MARCKEVYN')
INTO utilisateurs VALUES(3,'SANON','JEAN PESNEL')
INTO utilisateurs VALUES(4,'LENICIA','MERISCA')
INTO utilisateurs VALUES(5,'FELIX','NADIA')
INTO utilisateurs VALUES(6,'BOISREAU','CHESLY')
SELECT 1 FROM DUAL;

commit;

SELECT id , CONCAT(nom,prenom) AS nomcomplet FROM utilisateurs;
SELECT id , CONCAT(CONCAT(nom,' '),prenom) AS nomcomplet FROM utilisateurs;
SELECT nom || ' ' || prenom AS nomcomplet FROM utilisateurs;

--length
SELECT LENGTH('chaine de caractere') AS longueur_chaine FROM DUAL;
SELECT id,nom ,prenom,LENGTH(prenom) AS longueur_prenom FROM utilisateurs;
SELECT id ,nom,LENGTH(nom) AS longueur_nom FROM utilisateurs WHERE LENGTH(nom)>6;

--replace
SELECT REPLACE('bonjour tout le monde','bonjour','bonsoir') FROM DUAL;
UPDATE utilisateurs SET nom=REPLACE(nom,
                                     'SANON',
                                     'SANON REPLACE');
SELECT id,nom , REPLACE(nom,
                        'SANON REPLACE',
                        'SANON') FROM utilisateurs;
--Substring
SELECT SUBSTR('bonjour',
              1,
              3) FROM DUAL

SELECT SUBSTR(nom,
               1,
               2) || SUBSTR(prenom,
                             1,
                             2) || '@atalou.info' AS courriel FROM utilisateurs;

--trim
SELECT TRIM('   SANON STEEVE   ') AS nomcomplet FROM DUAL;
--supression specifice
SELECT TRIM(BOTH '*' FROM '****EXEMPLE****') FROM DUAL;
--supression caractere fin
SELECT TRIM(TRAILING '-' FROM '-----EXEMPLE----') FROM DUAL;
--supression au debut
SELECT TRIM('*' FROM '****EXEMPLE*****') FROM DUAL;

--ltrim

SELECT LTRIM('  Exemple  ') AS mot_sans_espace FROM DUAL;
SELECT LTRIM('****exemple****','*')AS mot_sans_espace FROM DUAL;

--rtrim
SELECT RTRIM('  Exemple  ') AS mot_sans_espace FROM DUAL;
SELECT RTRIM('****exemple****','*')AS mot_sans_espace FROM DUAL;

--lpad
SELECT LPAD('tech',7) FROM DUAL;
SELECT LPAD('tech',2) FROM DUAL;
SELECT LPAD('tech',8,0) FROM DUAL;


--upper
SELECT UPPER('je suis une chaine convertis en uppercase') FROM DUAL;
SELECT LOWER('JE SUIS UNE CHAINE CONVERTIS EN LOWERCASE') FROM DUAL;

--instr
SELECT INSTR('canada','d') FROM DUAL;