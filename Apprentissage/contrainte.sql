--create table employees
CREATE TABLE EMPLOYEES(
    Id INT NOT NULL,
    Age INT NOT NULL,
    Nom Varchar2(15) NOT NULL UNIQUE,
    Salaire DECIMAL(7,2) CHECK (Salaire>0),
    Ville VARCHAR2(15) DEFAULT 'Montreal',
    CONSTRAINT pk_employes PRIMARY KEY(Id)
);

--insertion
INSERT INTO EMPLOYEES (Id,Age,Nom,Salaire) VALUES(1,25,'SANON',2500.10);
INSERT INTO EMPLOYEES (Id,Age,Nom,Salaire) VALUES(2,25,'SANON',-2500.10);

--ajouter champ
ALTER TABLE EMPLOYEES ADD comm NUMBER(5,2) ;
ALTER TABLE EMPLOYEES ADD CONSTRAINT chk_comm CHECK(comm>0);
--modifier champ salaire
ALTER TABLE EMPLOYEES MODIFY Salaire NUMBER(9,2);
--supprimer champ ville
ALTER TABLE EMPLOYEES DROP COLUMN Ville;

--supprimer table employees
DROP TABLE EMPLOYEES;


--creation TABLE
CREATE TABLE departements(
    dno INT CONSTRAINT pk_dep PRIMARY KEY,
    dnom VARCHAR2(30) NOT NULL,
    ville VARCHAR2(30) NOT NULL
);

--create table employees
CREATE TABLE EMPLOYEES(
    eno INT CONSTRAINT pk_emp PRIMARY KEY,
    enom VARCHAR2(30) NOT NULL,
    dateemp DATE,
    salaire NUMBER(7,2) CHECK(salaire>0),
    dno INT NOT NULL,
    CONSTRAINT fk_emp FOREIGN KEY(dno) REFERENCES departements(dno)
);

--insertion table departement
INSERT INTO departements VALUES(2,'CAP-HAITIEN','DELMAS');

INSERT INTO departements VALUES(3,'JACMEL','JACMEL VILLE');

INSERT INTO departements VALUES(4,'JEREMEIE','JEREMIE VILLE');

--insertion multiple
INSERT ALL
INTO employees VALUES(3,'Sanon',TO_DATE('2022/10/10','yyyy/mm/dd'),5000.5,2)
INTO employees VALUES(4,'Sanon',TO_DATE('2022/10/10','yyyy/mm/dd'),5000.5,2)
INTO employees VALUES(5,'Sanon',TO_DATE('2022/10/10','yyyy/mm/dd'),5000.5,2)
INTO employees VALUES(6,'Sanon',TO_DATE('2022/10/10','yyyy/mm/dd'),5000.5,2)
INTO employees VALUES(7,'Sanon',TO_DATE('2022/10/10','yyyy/mm/dd'),5000.5,2)
INTO employees VALUES(8,'Sanon',TO_DATE('2022/10/10','yyyy/mm/dd'),5000.5,2)
INTO employees VALUES(9,'Sanon',TO_DATE('2022/10/10','yyyy/mm/dd'),5000.5,2)
INTO employees VALUES(10,'Sanon',TO_DATE('2022/10/10','yyyy/mm/dd'),5000.5,2)
SELECT 1 FROM DUAL;

--selection
SELECT * FROM departements;
SELECT * FROM employees;

COMMIT;

--somme 1+1
SELECT 1+1 AS SOMME FROM DUAL;
--calcul avec puissance
SELECT POWER(2,4) AS PUISSANCE FROM DUAL;
--afficher user connecter
SELECT USER AS UTILISATEUR FROM DUAL;
--afficher date du jour
 SELECT TO_CHAR(SYSDATE,'DD/MM/YYYY') FROM DUAL;
 --afficher employees departements 30
 SELECT * FROM employees WHERE dno=30;
 --employe nom commence par SAMPLE
 SELECT * FROM employees where enom LIKE 'Sa%';
