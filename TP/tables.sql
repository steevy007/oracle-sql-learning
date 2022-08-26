--creation TABLE
CREATE TABLE categories(
    id_cat NUMBER PRIMARY KEY,
    libelle VARCHAR2(25) UNIQUE NOT NULL
);

CREATE TABLE auteurs(
    id_aut NUMBER PRIMARY KEY,
    nom VARCHAR2(25) UNIQUE NOT NULL,
    pays VARCHAR2(25) NOT NULL
);

CREATE TABLE membres(
    id_mem NUMBER PRIMARY KEY,
    prenom VARCHAR2(30) NOT NULL,
    nom VARCHAR2(30) NOT NULL,
    telephone NUMBER NOT NULL,
    email VARCHAR2(30) NOT NULL UNIQUE,
    ville VARCHAR2(25) NOT NULL
);

CREATE TABLE ouvrages(
    id_ouv NUMBER PRIMARY KEY,
    isbn NUMBER UNIQUE,
    titre VARCHAR2(30) NOT NULL,
    id_aut NUMBER,
    id_cat NUMBER
);

CREATE TABLE emprunts(
    id_emp NUMBER PRIMARY KEY,
    id_mem NUMBER,
    id_ouv NUMBER,
    date_emp DATE,
    date_echeance DATE
);

