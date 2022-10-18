-- ------------------------------- CONTENT ------------------------------------
-- 1. UNION CLAUSE
-- 2. Insert into tables
-- 3. Insert Multiple values into table
-- 4. Copy table
-- 5. Updating a row

USE SQL_STORE;
-- -------------------------- UNION CLAUSE --------------------------------------
-- Used to join rows from different queries (Combine result from different queries)
select order_id, order_date, 'ACTIVE' as status
from orders
where order_date >= "2019-01-01"
UNION
select order_id, order_date, 'ARCHIVED' as status
from orders
where order_date < "2019-01-01";


select customer_id, first_name, points, "BRONZE" as Type
from customers
where points < 2000
union
select customer_id, first_name, points, "SILVER" as Type
from customers
where points between 2000 and 3000
union
select customer_id, first_name, points, "GOLD" as Type
from customers
where points > 3000
order by points;

-- --------------------------------------- Insert into tables-----------------------------------

INSERT INTO CUSTOMERS (first_name, last_name, birth_date, address, city, state)
VALUES ("John", "Smith", "2016-08-03", "address", "city", "JH");

-- ------------------------------------- Insert multiple into tables-----------------------------------

INSERT INTO SHIPPERS (name)
values ("Shipper1"),
	("Shipper2"),
    ("Shipper3");
    
-- ----------------------------------- COPY TABLE ---------------------------------
USE sql_store;
CREATE TABLE orders_archieved AS
SELECT * FROM orders;

-- Inserting into table based on condition
INSERT INTO orders_archieved
SELECT *
FROM orders
WHERE order_date < "2019-01-01"; 

-- ------------------------- UPDATING A ROW ----------------------------------------
USE sql_invoicing;
UPDATE invoices
SET payment_total = 10, payment_date = "2013-08-03"
WHERE invoice_id = 1;
