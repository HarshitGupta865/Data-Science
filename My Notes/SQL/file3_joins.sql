-- ---------------------------------------CONTENT----------------------------------
-- 1. Inner Join
-- 2. Self Join
-- 3. Joining multiple tables
-- 4. Compound Join condition
-- 5. Implicit Join Syntax
-- 6. Outer Join (Left Join, Right Join)
-- 7. Using clause
-- 8. Cross Join

USE sql_store;

-- ------------------------------- INNER JOIN------------------------------------------

SELECT *
FROM ORDERS
JOIN CUSTOMERS 
ON ORDERS.CUSTOMER_ID = CUSTOMERS.CUSTOMER_ID;

-- below code gives error. This is because since we have customer id in both tables mysql server is confused from which table
-- it should choose customer_id data
SELECT ORDER_ID, CUSTOMER_ID, FIRST_NAME, LAST_NAME
FROM ORDERS
JOIN CUSTOMERS 
ON ORDERS.CUSTOMER_ID = CUSTOMERS.CUSTOMER_ID;

-- To rectify above code we need to tell server from which table it should take customer_id data
SELECT ORDER_ID, orders.CUSTOMER_ID, FIRST_NAME, LAST_NAME
FROM ORDERS
JOIN CUSTOMERS 
ON ORDERS.CUSTOMER_ID = CUSTOMERS.CUSTOMER_ID;

-- Other way of writing codes
SELECT ORDER_ID, O.CUSTOMER_ID, FIRST_NAME, LAST_NAME
FROM ORDERS O
JOIN CUSTOMERS C
ON O.CUSTOMER_ID = C.CUSTOMER_ID;


-- To join tables across databases
SELECT *
FROM order_items oi
JOIN sql_inventory.products p
ON oi.product_id = p.product_id;

-- ---------------------------------------SELF JOIN----------------------------------
USE SQL_HR;

SELECT *
FROM EMPLOYEES e
JOIN EMPLOYEES m
ON e.reports_to = m.employee_id;

SELECT * FROM EMPLOYEES;

SELECT e.employee_id, e.first_name, m.first_name as manager
from employees e
join employees m
ON e.reports_to = m.employee_id;

-- -------------------------------------- JOINING MULTIPLE TABLES --------------------------------
use sql_store;

select o.order_id, c.first_name, c.last_name, o.status, os.name
from orders o
join customers c
	on o.customer_id = c.customer_id
join order_statuses os
	on o.status = os.order_status_id;
    

-- Another Example

USE SQL_INVOICING;

SELECT c.name, c.city, c.state, p.amount, pm.name
FROM payments p
JOIN clients c
	ON p.client_id = c.client_id
JOIN payment_methods pm
	ON p.payment_method = pm.payment_method_id;
    
-- -----------------------------------Compound Join condition--------------------------------------

USE SQL_STORE;
select *
from order_items oi
join order_item_notes oin
	on oi.order_id = oin.order_Id
    AND oi.product_id = oin.product_id;

-- ------------------------------------ IMPLICIT JOIN SYNTAX ----------------------------------
Select *
from orders o, customers c
where o.customer_id = c.customer_id;
-- Above code is same as inner join. However this syntax is not a good practice and hence not recommended.


-- -------------------------------OUTER JOIN------------------------------------------

-- For example we want to get the list of all the customers whether ordered anything or not.
Select c.customer_id, c.first_name, o.order_id
from customers c
left join orders o
on c.customer_id = o.customer_id
order by c.customer_id;

-- Print the list of all the product_ids and quantity ordered
select p.product_id, p.name, oi.quantity
from products p
inner join order_items oi
	on p.product_id = oi.product_id;
    

-- -------------------------- OUTER JOIN BETWEEN MULTIPLE TABLES------------------------------------
Select c.customer_id, c.first_name, o.order_id, sh.name as shipper
from customers c
left join orders o
on c.customer_id = o.customer_id
left join shippers sh
on o.shipper_id = sh.shipper_id
order by c.customer_id;

-- ------------------------------- USING CLAUSE------------------------
-- Using clause can be used in place of ON when the column name is same.

select o.order_id, c.first_name, sh.name as shipper
from orders o
join customers c
	-- on o.customer_id = c.customer_id
    using (customer_id)
left join shippers sh
	-- on o.shipper_id = sh.shipper_id
	using (shipper_id);
    
-- ---------------------------- CROSS  JOIN ------------------------------------

select p.name as product, sh.name as shipper
from shippers sh
cross join products p
order by sh.name;


