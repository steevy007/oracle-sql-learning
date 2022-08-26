--temporaire TABLE
CREATE GLOBAL TEMPORARY TABLE empproductions(
    eno INTEGER,
    enom VARCHAR(30),
    dateemb VARCHAR2(12),
    salaire NUMBER(7,2),
    dno INTEGER,
    comm NUMBER(5,2)
);

--insertion
INSERT INTO empproductions
SELECT e.eno,e.enom,e.dateemb,e.salaire,d.dno,e.comm FROM
employees e, departements d
WHERE e.dno=d.dno;
