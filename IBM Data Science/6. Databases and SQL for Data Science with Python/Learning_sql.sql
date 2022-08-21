
/* To display a table */
SELECT * FROM EMp;

/* To count the number of rows of a table */
SELECT COUNT(*) FROM EMp;

/* To count the number of rows of a specific column in a table */
SELECT COUNT(dept) FROM EMp where dept='JAVA';

/* DISTINCT is used to remove duplicate values from a result set */
SELECT DISTINCT Dept FROM EMp;

/*  TOP is used for restricting the number of rows retrieved from the database. */
SELECT TOP 10 * FROM EMp;

SELECT TOP 10 * FROM EMp WHERE dept='JAVA';

/*INSERT command to insert data in a table*/
INSERT INTO EMp (Empno, nam, dept, desig, basic) VALUES(69, 'Ravan', 'PYTHON', 'Expert', 69000);

/* To insert more than one rows at a time*/
INSERT INTO EMp (Empno, nam, dept, desig, basic) VALUES(70, 'Ram', 'PYTHON', 'Programmer', 70000), (71, 'Sita', 'PYTHON', 'Begineer', 5000);

/*UPDATE command syntax*/
UPDATE EMp SET nam='Ruchi', dept ='JAVA' where nam='kalyan';

/*DELETE command syntax*/
DELETE FROM EMp WHERE nam='Rohit';