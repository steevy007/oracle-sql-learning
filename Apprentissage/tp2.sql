/*Suppression de la table Clients si elle existe*/
DROP TABLE Clients;

/* Création de la table Clients */
CREATE TABLE Clients (
  code      NUMBER PRIMARY KEY     ,
  prenom    varchar(25) NOT NULL   ,
  nom       varchar(25) NOT NULL   ,
  email     varchar(75) NOT NULL   ,
  ville     varchar(25) NOT NULL
);
/* Insertion des données dans la table Clients*/
INSERT ALL 
INTO Clients VALUES (100,'Susan Brown', 'Vespasien','Valentin@tutofacile.ma','Québec')
INTO Clients VALUES (200,'Valentin', 'Vespasien','Valentin@tutofacile.ma','Québec')
INTO Clients VALUES (300,'Gustave', 'Collin','Gustave@tutofacile.ma','Montréal')
INTO Clients VALUES (400,'Emilien', 'Camus','Emilien@tutofacile.ma','Toronto')
INTO Clients VALUES (500,'Firmin', 'Dubois','Marais@tutofacile.ma','Joliette')
INTO Clients VALUES (600,'Olivier', 'Franc','Riou@tutofacile.ma','Montréal')
INTO Clients VALUES (700,'Henri', 'Michel', 'Henri@tutofacile.ma','Montréal')
INTO Clients VALUES (800, 'Maurice','Huet','maurice.Québec@tutofacile.ma','Québec')
INTO Clients VALUES (900, 'Manon', 'Durand', 'm.durand.s.e@tutofacile.ma', 'Laval')
INTO Clients VALUES (1000, 'Joachim', 'Leon', 'joachim@tutofacile.ma', 'Laval')
INTO Clients VALUES (1100, 'Muriel', 'Dupuis', 'muriel@tutofacile.ma', 'Montréal')
INTO Clients VALUES (1200, 'Christiane', 'Riou', 'chritianelesabrets@tutofacile.ma', 'Montréal')
INTO Clients VALUES (1300, 'Jacinthe', 'Langlois', 'jacinthe.langlois@tutofacile.ma', 'Montréal')
INTO Clients VALUES (1400, 'Amaury', 'Payet', 'amaury@tutofacile.ma', 'Sherbrooke')
INTO Clients VALUES (1500, 'Maris', 'Buisson', 'maris@tutofacile.ma', 'Sherbrooke')
INTO Clients VALUES(1600, 'Fabrice', 'Foucher', 'fab.Sherbrooke@tutofacile.ma', 'Sherbrooke')
INTO Clients VALUES (1700, 'Patrick', 'Saunier', 'patrick.saunier@tutofacile.ma', 'montréal')
INTO Clients VALUES (1800, 'Emile', 'Ramos', 'emile@tutofacile.ma', 'montréal')
INTO Clients VALUES (1900, 'Armel', 'Vigneron', 'armel.Laval@tutofacile.ma', 'Laval')
INTO Clients VALUES (2000, 'Arnaude', 'Vallee', 'armaude.vallee@tutofacile.ma', 'Granby') 
SELECT * FROM DUAL;
 
/* Validation de la saisie*/
COMMIT;

/*Suppression de la table Produits si elle existe*/
DROP TABLE Produits;

/* Création de la table Produits*/
CREATE TABLE Produits (
refer       VARCHAR2(10) PRIMARY KEY,
Designation VARCHAR2(30),
Prix        NUMBER(7,2) ,
Qte_stock   NUMBER(5,2)
);

/* Insertion des données dans la table Produits*/
INSERT ALL 
INTO Produits VALUES ('A10','Lot de 10 Crayons',150.75,200)
INTO Produits VALUES ('A20','Lot de 5 Crayons',80.75,100)
INTO Produits VALUES ('A30','Lot de 20 Crayons',200.75,100)
INTO Produits VALUES ('A40','Papier A5',50,90)
INTO Produits VALUES ('A50','Papier A4',60,190)
INTO Produits VALUES ('A60','Papier A3',100,120)
INTO Produits VALUES ('A70','Lot de 10 Crayons',150,10)
INTO Produits VALUES ('A80','Lot de 5 Crayons',400,200)
INTO Produits VALUES ('A90','Chaise',20,20)
INTO Produits VALUES ('A100','Chaise Chef',80,10)
INTO Produits VALUES ('A120','Bureau noir',80,10)
INTO Produits VALUES ('A130','Bureau Blanc',80,10)
INTO Produits VALUES ('A140','Bureau rouge',80,10)
SELECT * FROM DUAL;

/* Validation de la saisie*/
COMMIT;

/*Suppression de la table Commandes si elle existe*/
DROP TABLE Commandes;

/* Création de la table Commandes*/
CREATE TABLE Commandes (
  Code          NUMBER PRIMARY KEY,
  CodeClt       NUMBER  NOT NULL,
  date_achat    DATE NOT NULL,
  cache_prix_total float NOT NULL,
  FOREIGN KEY (codeclt)REFERENCES Clients(code)
 );

/* Insertion des données dans la table Commandes*/
INSERT INTO Commandes VALUES(10,100,to_date('01-01-2022','dd/mm/yyyy'),0);
INSERT INTO Commandes VALUES(20,100,to_date('03-01-2022','dd/mm/yyyy'),0);
INSERT INTO Commandes VALUES(30,100,to_date('04-01-2022','dd/mm/yyyy'),0);
INSERT INTO Commandes VALUES(40,100,to_date('07-01-2022','dd/mm/yyyy'),0);
INSERT INTO Commandes VALUES(50,100,to_date('08-02-2022','dd/mm/yyyy'),0);
INSERT INTO Commandes VALUES(60,300,to_date('09-02-2022','dd/mm/yyyy'),0);
INSERT INTO Commandes VALUES(70,300,to_date('01-02-2022','dd/mm/yyyy'),0);
INSERT INTO Commandes VALUES(80,300,to_date('16-03-2022','dd/mm/yyyy'),0);
INSERT INTO Commandes VALUES(90,300,to_date('03-02-2022','dd/mm/yyyy'),0);
INSERT INTO Commandes VALUES(100,300,to_date('02-02-2022','dd/mm/yyyy'),0);
INSERT INTO Commandes VALUES(110,400,to_date('19-03-2022','dd/mm/yyyy'),0);
INSERT INTO Commandes VALUES(120,400,to_date('13-01-2022','dd/mm/yyyy'),0);
INSERT INTO Commandes VALUES(130,400,to_date('25-01-2022','dd/mm/yyyy'),0);
INSERT INTO Commandes VALUES(140,400,to_date('02-02-2022','dd/mm/yyyy'),0);
INSERT INTO Commandes VALUES(150,500,to_date('01-02-2022','dd/mm/yyyy'),0);
INSERT INTO Commandes VALUES(160,500,to_date('31-01-2022','dd/mm/yyyy'),0);
INSERT INTO Commandes VALUES(170,600,to_date('17-01-2022','dd/mm/yyyy'),0);
INSERT INTO Commandes VALUES(180,600,to_date('01-03-2022','dd/mm/yyyy'),0);
INSERT INTO Commandes VALUES(190,600,to_date('29-03-2022','dd/mm/yyyy'),0);
INSERT INTO Commandes VALUES(200,800,to_date('10-02-2022','dd/mm/yyyy'),0);
INSERT INTO Commandes VALUES(210,800,to_date('11-02-2022','dd/mm/yyyy'),0);
INSERT INTO Commandes VALUES(220,800,to_date('12-01-2022','dd/mm/yyyy'),0);
INSERT INTO Commandes VALUES(230,800,to_date('14-03-2022','dd/mm/yyyy'),0);
INSERT INTO Commandes VALUES(240,900,to_date('12-02-2022','dd/mm/yyyy'),0);
INSERT INTO Commandes VALUES(250,900,to_date('21-02-2022','dd/mm/yyyy'),0);
INSERT INTO Commandes VALUES(260,900,to_date('01-01-2022','dd/mm/yyyy'),0);
INSERT INTO Commandes VALUES(270,900, to_date('01-03-2022','dd/mm/yyyy'),0);
INSERT INTO Commandes VALUES(280,200,to_date('15-03-2022','dd/mm/yyyy'),0);
INSERT INTO Commandes VALUES(290,200,to_date('28-02-2022','dd/mm/yyyy'),0);
INSERT INTO Commandes VALUES(300,200,to_date('29-01-2022','dd/mm/yyyy'),0);
INSERT INTO Commandes VALUES(310,300,to_date('10-02-2022','dd/mm/yyyy'),0);
INSERT INTO Commandes VALUES(320,200,to_date('23-03-2022','dd/mm/yyyy'),0);
INSERT INTO Commandes VALUES(330,300,to_date('21-01-2022','dd/mm/yyyy'),0);
INSERT INTO Commandes VALUES(340,400,to_date('17-03-2022','dd/mm/yyyy'),0);
INSERT INTO Commandes VALUES(350,500,to_date('19-01-2022','dd/mm/yyyy'),0);
INSERT INTO Commandes VALUES(360,200,to_date('01-02-2022','dd/mm/yyyy'),0);
INSERT INTO Commandes VALUES(370,900,to_date('09-01-2022','dd/mm/yyyy'),0);
INSERT INTO Commandes VALUES(380,700,to_date('08-02-2022','dd/mm/yyyy'),0);
INSERT INTO Commandes VALUES(390,300,to_date('24-03-2022','dd/mm/yyyy'),0);
INSERT INTO Commandes VALUES(400,200,to_date('26-03-2022','dd/mm/yyyy'),0);
INSERT INTO Commandes VALUES(410,100,to_date('30-01-2022','dd/mm/yyyy'),0);
INSERT INTO Commandes VALUES(420,300,to_date('27-02-2022','dd/mm/yyyy'),0);
INSERT INTO Commandes VALUES(430,400,to_date('13-02-2022','dd/mm/yyyy'),0);
INSERT INTO Commandes VALUES(440,200,to_date('14-03-2022','dd/mm/yyyy'),0);
INSERT INTO Commandes VALUES(450,900,to_date('18-02-2022','dd/mm/yyyy'),0);
INSERT INTO Commandes VALUES(460,1200,to_date('15-01-2022','dd/mm/yyyy'),0);
INSERT INTO Commandes VALUES(470,1100,to_date('26-03-2022','dd/mm/yyyy'),0);
INSERT INTO Commandes VALUES(480,1100,to_date('10-01-2022','dd/mm/yyyy'),0);


/* Validation de la saisie*/
COMMIT;

/*Suppression de la table Ligne_commandes*/
DROP TABLE ligne_commandes;

/* Création de la table Commandes lignes*/
CREATE TABLE Ligne_commandes(
  id        NUMBER PRIMARY KEY,
  code      NUMBER  NOT NULL,
  quantite  NUMBER  NOT NULL,
  refer     VARCHAR2(10) NOT NULL,
  FOREIGN KEY (refer)REFERENCES Produits(refer),
  FOREIGN KEY (code) REFERENCES Commandes (code)  
);

/* Insertion des données dans la table ligne_commandes*/
INSERT INTO Ligne_Commandes  VALUES (10,10,3,'A10');
INSERT INTO Ligne_Commandes  VALUES (20,10,8,'A20');
INSERT INTO Ligne_Commandes  VALUES (30,10,10,'A40');
INSERT INTO Ligne_Commandes  VALUES (40,20,5,'A70');
INSERT INTO Ligne_Commandes  VALUES (50,20,4,'A10');
INSERT INTO Ligne_Commandes  VALUES (60,30,3,'A90');
INSERT INTO Ligne_Commandes  VALUES (70,40,1,'A100');
INSERT INTO Ligne_Commandes  VALUES (80,40,9,'A10');
INSERT INTO Ligne_Commandes  VALUES (90,40,7,'A20');
INSERT INTO Ligne_Commandes  VALUES (100,40,4,'A80');
INSERT INTO Ligne_Commandes  VALUES (110,40,2,'A20');
INSERT INTO Ligne_Commandes  VALUES (120,50,3,'A50');
INSERT INTO Ligne_Commandes  VALUES (130,50,2,'A60');
INSERT INTO Ligne_Commandes  VALUES (150,70,8,'A10');
INSERT INTO Ligne_Commandes  VALUES (160,70,2,'A80');
INSERT INTO Ligne_Commandes  VALUES (170,70,1,'A40');
INSERT INTO Ligne_Commandes  VALUES (180,80,6,'A30');
INSERT INTO Ligne_Commandes  VALUES (190,90,5,'A10');
INSERT INTO Ligne_Commandes  VALUES (200,100,6,'A40');
INSERT INTO Ligne_Commandes  VALUES (210,100,5,'A20');
INSERT INTO Ligne_Commandes  VALUES (220,100,2,'A50');
INSERT INTO Ligne_Commandes  VALUES (230,100,1,'A60');
INSERT INTO Ligne_Commandes  VALUES (240,110,1,'A40');
INSERT INTO Ligne_Commandes  VALUES (250,120,1,'A20');
INSERT INTO Ligne_Commandes  VALUES (260,120,1,'A30');
INSERT INTO Ligne_Commandes  VALUES (270,130,10,'A70');
INSERT INTO Ligne_Commandes  VALUES (280,130,1,'A50');
INSERT INTO Ligne_Commandes  VALUES (290,140,2,'A60');
INSERT INTO Ligne_Commandes  VALUES (300,140,3,'A100');
INSERT INTO Ligne_Commandes  VALUES (310,150,2,'A20');
INSERT INTO Ligne_Commandes  VALUES (330,160,1,'A10');
INSERT INTO Ligne_Commandes  VALUES (340,170,2,'A70');
INSERT INTO Ligne_Commandes  VALUES (350,170,1,'A50');
INSERT INTO Ligne_Commandes  VALUES (360,170,1,'A20');
INSERT INTO Ligne_Commandes  VALUES (370,170,1,'A90');
INSERT INTO Ligne_Commandes  VALUES (380,180,3,'A20');
INSERT INTO Ligne_Commandes  VALUES (380,190,4,'A80');
INSERT INTO Ligne_Commandes  VALUES (390,180,4,'A60');
INSERT INTO Ligne_Commandes  VALUES (400,180,5,'A50');
INSERT INTO Ligne_Commandes  VALUES (410,180,6,'A40');
INSERT INTO Ligne_Commandes  VALUES (420,190,4,'A30');
INSERT INTO Ligne_Commandes  VALUES (430,200,1,'A10');
INSERT INTO Ligne_Commandes  VALUES (440,200,1,'A30');
INSERT INTO Ligne_Commandes  VALUES (450,200,2,'A40');
INSERT INTO Ligne_Commandes  VALUES (460,210,3,'A80');
INSERT INTO Ligne_Commandes  VALUES (470,210,2,'A20');
INSERT INTO Ligne_Commandes  VALUES (480,220,2,'A100');
INSERT INTO Ligne_Commandes  VALUES (490,220,1,'A40');
INSERT INTO Ligne_Commandes  VALUES (500,220,1,'A50');
INSERT INTO Ligne_Commandes  VALUES (510,220,2,'A70');
INSERT INTO Ligne_Commandes  VALUES (520,220,3,'A100');
INSERT INTO Ligne_Commandes  VALUES (530,230,7,'A30');
INSERT INTO Ligne_Commandes  VALUES (540,230,6,'A40');
INSERT INTO Ligne_Commandes  VALUES (550,230,2,'A70');
INSERT INTO Ligne_Commandes  VALUES (570,240,2,'A20');
INSERT INTO Ligne_Commandes  VALUES (580,240,1,'A100');
INSERT INTO Ligne_Commandes  VALUES (590,250,3,'A10');
INSERT INTO Ligne_Commandes  VALUES (600,250,2,'A20');
INSERT INTO Ligne_Commandes  VALUES (610,260,4,'A30');
INSERT INTO Ligne_Commandes  VALUES (620,270,8,'A40');
INSERT INTO Ligne_Commandes  VALUES (630,270,4,'A50');
INSERT INTO Ligne_Commandes  VALUES (640,280,1,'A60');
INSERT INTO Ligne_Commandes  VALUES (650,280,3,'A70');
INSERT INTO Ligne_Commandes  VALUES (660,290,7,'A80');
INSERT INTO Ligne_Commandes  VALUES (670,290,9,'A90');
INSERT INTO Ligne_Commandes  VALUES (680,290,8,'A100');
INSERT INTO Ligne_Commandes  VALUES (690,300,7,'A90');
INSERT INTO Ligne_Commandes  VALUES (720,320,3,'A80');
INSERT INTO Ligne_Commandes  VALUES (730,320,7,'A70');
INSERT INTO Ligne_Commandes  VALUES (740,320,4,'A60');
INSERT INTO Ligne_Commandes  VALUES (750,320,7,'A50');
INSERT INTO Ligne_Commandes  VALUES (760,330,3,'A40');
INSERT INTO Ligne_Commandes  VALUES (770,330,2,'A30');
INSERT INTO Ligne_Commandes  VALUES (780,330,7,'A10');
INSERT INTO Ligne_Commandes  VALUES (790,340,9,'A20');
INSERT INTO Ligne_Commandes  VALUES (800,350,7,'A30');
INSERT INTO Ligne_Commandes  VALUES (820,370,2,'A40');
INSERT INTO Ligne_Commandes  VALUES (830,370,7,'A50');
INSERT INTO Ligne_Commandes  VALUES (840,380,5,'A60');
INSERT INTO Ligne_Commandes  VALUES (850,380,5,'A70');
INSERT INTO Ligne_Commandes  VALUES (860,390,1,'A80');
INSERT INTO Ligne_Commandes  VALUES (870,390,1,'A90');
INSERT INTO Ligne_Commandes  VALUES (880,400,3,'A70');
INSERT INTO Ligne_Commandes  VALUES (890,400,4,'A60');
INSERT INTO Ligne_Commandes  VALUES (900,410,7,'A50');
INSERT INTO Ligne_Commandes  VALUES (910,410,7,'A40');
INSERT INTO Ligne_Commandes  VALUES (920,420,3,'A50');
INSERT INTO Ligne_Commandes  VALUES (930,420,4,'A60');
INSERT INTO Ligne_Commandes  VALUES (940,430,1,'A70');
INSERT INTO Ligne_Commandes  VALUES (950,430,3,'A80');
INSERT INTO Ligne_Commandes  VALUES (960,440,3,'A90');
INSERT INTO Ligne_Commandes  VALUES (970,440,1,'A100');
INSERT INTO Ligne_Commandes  VALUES (980,440,4,'A90');
INSERT INTO Ligne_Commandes  VALUES (990,440,4,'A80');
INSERT INTO Ligne_Commandes  VALUES (1000,440,2,'A70');
INSERT INTO Ligne_Commandes  VALUES (1010,450,1,'A60');
INSERT INTO Ligne_Commandes  VALUES (1020,450,1,'A50');
INSERT INTO Ligne_Commandes  VALUES (1030,450,1,'A40');
INSERT INTO Ligne_Commandes  VALUES (1040,450,2,'A30');
INSERT INTO Ligne_Commandes  VALUES (1050,460,4,'A20');
INSERT INTO Ligne_Commandes  VALUES (1060,460,3,'A10');
INSERT INTO Ligne_Commandes  VALUES (1070,460,3,'A20');
INSERT INTO Ligne_Commandes  VALUES (1080,460,5,'A30');
INSERT INTO Ligne_Commandes  VALUES (1090,460,2,'A40');
INSERT INTO Ligne_Commandes  VALUES (1100,470,2,'A50');
INSERT INTO Ligne_Commandes  VALUES (1110,470,2,'A60');
INSERT INTO Ligne_Commandes  VALUES (1120,470,1,'A70');
INSERT INTO Ligne_Commandes  VALUES (1130,470,3,'A80');
INSERT INTO Ligne_Commandes  VALUES (1140,470,6,'A90');
INSERT INTO Ligne_Commandes  VALUES (1150,480,5,'A100');
INSERT INTO Ligne_Commandes  VALUES (1160,480,1,'A90');
INSERT INTO Ligne_Commandes  VALUES (1170,480,4,'A80');
INSERT INTO Ligne_Commandes  VALUES (1180,480,7,'A70');
INSERT INTO Ligne_Commandes  VALUES (1190,480,2,'A50');
INSERT INTO Ligne_Commandes  VALUES (1200,480,1,'A10');

/*Validation de la saisie*/
COMMIT;

/* Ecrire une requête permettant d'afficher :
 -- le code et le nom du client                         ------> Table clients
 -- la référence, la désignation et le prix du produit  ------> Table produits
 -- Le numéro de la commande et la date d'achat         ------> Tabble commandes    
 -- La quantité acheté                                  ------> Table Ligne_commandes
 -- le prix HHT                                         ------> Champ à calculer
 */
 SELECT c.code AS CodeClt, c.nom, p.refer AS Reference, p.designation,
 d.code AS NumCommande, d.date_achat, l.quantite, p.prix, (p.prix * quantite) AS MontantHT
 FROM Clients c, Produits p, Commandes d, Ligne_commandes l
 WHERE
 c.code = d.codeclt
 AND
 d.code = l.code
 AND
 l.refer=p.refer
 ORDER BY c.code;

/* Requete avec Join*/
 SELECT c.code AS CodeClt, c.nom, p.refer AS Reference, p.designation,
 d.code AS NumCommande, d.date_achat, l.quantite, p.prix, (p.prix * quantite) AS MontantHT
 FROM Clients c
 RIGHT OUTER JOIN Commandes d
 ON c.code = d.codeclt
 RIGHT OUTER JOIN Ligne_commandes l
 ON d.code = l.code
 RIGHT OUTER JOIN Produits p
 ON l.refer = p.refer
 ORDER BY C.code;
     