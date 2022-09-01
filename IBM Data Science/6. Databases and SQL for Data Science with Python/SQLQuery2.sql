select * from EMp;

/* LIKE Operator*/

select nam from EMp where nam like 'R%';
select nam from EMp where nam like '%h';
select nam from EMp where nam like '%is%';

/* AND operator */
select * from EMp where basic >= 30000 and basic <=50000;
select * from EMp where basic between 30000 and 50000;

/* OR operator */
select * from EMp where dept='DOTNET' or dept='JAVA';
select * from EMp where dept IN ('DOTNET', 'JAVA');

/*ORDER BY clause*/
select * from EMp order by nam;

select * from EMp order by nam desc;

/* GROUP BY clause */
select dept , count(dept) as count from EMp group by dept

select dept , count(dept) as count from EMp group by dept having count(dept) >=4

/* Built in database functions */

select SUM(basic) as sum_of_sal from EMp;

select MIN(basic) as min_of_sal from EMp where dept='JAVA';

select MAX(basic) as max_of_sal from EMp;


