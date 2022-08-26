--creation premier table
CREATE TABLE COMPAGNIE(
    comp VARCHAR(4),
    rue VARCHAR2(20),
    ville VARCHAR2(20) DEFAULT 'Paris',
    nomComp VARCHAR2(15) NOT NULL
);

--creation table etudiants
CREATE TABLE ETUDIANTS(
    CLI_NUM INTEGER PRIMARY KEY,
    CLI_NOM VARCHAR2(32)
);