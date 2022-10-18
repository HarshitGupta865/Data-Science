-- ------------------------------------CONTENT---------------------------------
-- 1. REGEX EXPRESSION
-- 2. ORDER BY CLAUSE
-- 3. LIMIT OPERATOR
-- 4. INNER JOIN

USE sql_store;
 ---------------------------- REGEXP EXPRESSIONS------------------------------------------

SELECT * FROM sql_store.customers;

SELECT * FROM SQL_STORE.CUSTOMERS WHERE FIRST_NAME REGEXP 'ba|ra|ra' ;

SELECT * FROM SQL_STORE.CUSTOMERS WHERE FIRST_NAME REGEXP '[bar]a';

SELECT * FROM SQL_STORE.CUSTOMERS WHERE FIRST_NAME REGEXP '[a-r]a';

-- $ used for end
-- ^ used for beginning
-- | used for logical OR
-- [] used for alternate characters
-- [-] used for range of characters


-- GET CUSTOMERS WHOSE FIRST NAME STARTS WITH ELKA OR AMBUR

SELECT * FROM sql_store.customers where first_name regexp "^ELKA|^AMBUR";

-- GET CUSTOMERS WHOSE LAST NAME ENDS WITH EY OR ON
SELECT * FROM sql_store.customers where last_name regexp "EY$" OR last_name REGEXP "ON$";
SELECT * FROM sql_store.customers where last_name regexp "EY$|ON$";

-- GET CUSTOMERS WHOSE LAST NAME starts WITH MY OR contains SE
SELECT * FROM sql_store.customers where last_name regexp "^MY|SE";

-- GET CUSTOMERS WHOSE LAST NAME contains B followed by R or U
SELECT * FROM sql_store.customers where last_name regexp "B[RU]";

-- ------------------------------- IS NULL OPERATOR------------------------------------------

SELECT * FROM sql_store.customers WHERE PHONE IS NULL;
SELECT * FROM sql_store.customers WHERE PHONE IS NOT NULL;


-- ------------------------------- ORDER BY CLAUSE------------------------------------------

SELECT * FROM CUSTOMERS order by FIRST_NAME;

select order_id, product_id, quantity, unit_price, quantity * unit_price as total_price from order_items where order_id=2
order by total_price desc ;

-- ------------------------------- limit CLAUSE------------------------------------------

select * from customers limit 3;

-- SELECT THE 3 MOST LOYAL CUSTOMERS

select * from customers order by points desc limit 3;



