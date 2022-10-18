-- -------------------------------CONTENT-----------------------------
-- 1. SELECT CLAUSE
-- 2. WHERE CLAUSE
-- 3. AND/OR/NOT OPERATOR
-- 4. IN OPERATOR
-- 5. BETWEEN OPERATOR
-- 6. LIKE OPERATOR

USE sql_store;

-- ----------------------------- SELECT CLAUSE -------------------------

SELECT * from customers;
SELECT first_name, address from customers LIMIT 5;

-- ----------------------------- WHERE CLAUSE -------------------------

Select * from customers where points > 1400;
select * from customers where birth_date < "1991-01-01";

-- ----------------------------- AND /OR/ NOT Operator -------------------
SELECT customer_id, first_name, points as Realtor from customers where points > 700 and points < 2200;
SELECT customer_id, birth_date, first_name, points as Realtor from customers where birth_date > "1990-01-01" or points > 1000;

SELECT customer_id, birth_date, first_name, points as Realtor from customers where NOT( birth_date > "1990-01-01" or points > 1000);
SELECT customer_id, birth_date, first_name, points as Realtor from customers where ( birth_date < "1990-01-01" AND points < 1000);

-- ---------- IN OPERATOR IS JUST THE SHORT FORM FOR MANY OR STATEMENTS-------------------
SELECT * FROM CUSTOMERS WHERE STATE IN ("Va","Co");
SELECT * FROM CUSTOMERS WHERE STATE NOT IN ("Va","Co");

-- ---------- BETWEEN OPERATOR IS JUST THE SHORT FORM FOR AND STATEMENTS-------------------
SELECT * FROM CUSTOMERS WHERE POINTS BETWEEN 400 AND 1000;


-- ----------------------------- LIKE OPERATORS--------------------------

-- To get last_names starting from character Bru
SELECT * FROM CUSTOMERS WHERE last_NAME LIKE "bru%";

-- -- To get last_names where character B comes anywhere in the name
SELECT * FROM CUSTOMERS WHERE last_NAME LIKE "%B%";