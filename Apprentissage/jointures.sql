--jointire
SELECT e.eno,e.enom,d.dno FROM employees e, departements d WHERE e.dno=d.dno;

--inner JOIN
SELECT * FROM departements INNER JOIN employees ON departements.dno=employees.dno;
SELECT * FROM departements d INNER JOIN employees e ON d.dno=e.dno;

--left OUTER JOIN
SELECT * FROM departements d LEFT OUTER JOIN employees e ON d.dno=employees.d;

--right OUTER JOIN
SELECT * FROM departements d RIGHT OUTER JOIN employees e ON d.dno=e.dno;

--full OUTER JOIN
SELECT * FROM departements d FULL OUTER JOIN employees e ON d.dno=e.dno;

--CROSS JOIN
SELECT * FROM employees e CROSS JOIN departements d  WHERE d.dnom='JACMEL';

--NATURAL JOIN
SELECT * FROM employes NATURAL JOIN departements;

--EQUI JOIN
--jointure n TABLE