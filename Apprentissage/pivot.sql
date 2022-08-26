--tableau croise
CREATE TABLE vendeurs(
    codevend NUMBER PRIMARY KEY,
    nom VARCHAR2(25) NOT NULL,
    annee DATE,
    mtvente DECIMAL(7,2),
    ville VARCHAR2(25)
);

--create sequence
CREATE SEQUENCE vendeur_seq
START WITH 100
INCREMENT BY 10
NOCACHE
NOCYCLE;

--insertion
INSERT INTO vendeurs VALUES(vendeur_seq.NEXTVAL,'steevy',to_date('01-01-2010','dd/mm/yyyy'),2500.90,'JACMEL');
INSERT INTO vendeurs VALUES(vendeur_seq.NEXTVAL,'kevyn',to_date('01-02-2012','dd/mm/yyyy'),2700.60,'JEREMIE');
INSERT INTO vendeurs VALUES(vendeur_seq.NEXTVAL,'chesly',to_date('01-03-2000','dd/mm/yyyy'),3500.90,'OKAY');
INSERT INTO vendeurs VALUES(vendeur_seq.NEXTVAL,'valeri',to_date('04-01-2011','dd/mm/yyyy'),4500.90,'OKAP');
INSERT INTO vendeurs VALUES(vendeur_seq.NEXTVAL,'caleb',to_date('01-11-2015','dd/mm/yyyy'),5500.90,'HINCHE');
INSERT INTO vendeurs VALUES(vendeur_seq.NEXTVAL,'jhonny',to_date('01-11-2001','dd/mm/yyyy'),6500.90,'MIRBALAIS');
INSERT INTO vendeurs VALUES(vendeur_seq.NEXTVAL,'sloane',to_date('10-06-2017','dd/mm/yyyy'),7500.90,'CARREFOUR');
INSERT INTO vendeurs VALUES(vendeur_seq.NEXTVAL,'jacob',to_date('06-06-2016','dd/mm/yyyy'),8500.90,'TABARRE');
INSERT INTO vendeurs VALUES(vendeur_seq.NEXTVAL,'nahomie',to_date('07-07-2017','dd/mm/yyyy'),9500.90,'TORCELLE');
INSERT INTO vendeurs VALUES(vendeur_seq.NEXTVAL,'jimmy',to_date('08-08-2018','dd/mm/yyyy'),25900.90,'MIRAGOANE');

commit;

SELECT * FROM vendeurs ORDER BY codevend;

--creation de pivot
--regroupement par ville
SELECT * FROM (
    SELECT nom,mtvente,ville FROM vendeurs
)
PIVOT
(SUM(mtvente) FOR ville IN('JACMEL','JERMIE','OKAP','OKAY'))
ORDER BY nom;
