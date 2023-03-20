USE store;

SHOW tables;

SELECT*
FROM customers;

SELECT*
FROM customers
ORDER BY first_name DESC;


SELECT 1,2;

SELECT 1+2;

SELECT 100-50/2;

SELECT 100-50/2 AS value;

SELECT 100-50/2 AS 'answer value';

USE store;


SELECT first_name,last_name,points,points + 10 AS 'new points'
FROM customers;



SELECT 171*214+625;

USE exercise_hr;


SELECT first_name  AS 'first Name', last_name AS 'last Name'
FROM employees;

SELECT first_name ,last_name,salary,salary*15/100 AS 'PF'
FROM employees;

SELECT DISTINCT department_id
FROM employees;

USE store;
SELECT*
FROM customers
WHERE state='FL';

SELECT*
FROM customers
WHERE points>3000;

SELECT*-- 
FROM customers
WHERE birth_date>'1990-01-01';

SELECT*
FROM customers
WHERE state!='FL';

SELECT*
FROM customers
WHERE POINTS>3000 AND birth_date >'1990-01-01';

SELECT*
FROM customers
WHERE points>3000 OR birth_date>'1990-01-01';

SELECT*
FROM customers
WHERE points>1000 OR birth_date>'1889-01-01' AND  state>'live in Virginia';

USE store;
SELECT*
FROM customers
WHERE birth_date >'1989-01-01' AND points>'1000' OR state='va';

SELECT  FIRST_NAME AS "first_name",LAST_NAME AS "last_name",DEPARTMENT_ID
FROM employees
WHERE (DEPARTMENT_ID=30 OR DEPARTMENT_ID =100);

SELECT  FIRST_NAME AS "first_name",LAST_NAME AS "last_name", SALARY,DEPARTMENT_ID
FROM employees
WHERE  (SALARY <10000 OR SALARY >15000) AND (DEPARTMENT_ID=30 OR DEPARTMENT_ID =100);

SELECT  *
FROM employees
WHERE  (last_name ='BLAKE' OR last_name ='SCOTT' OR last_name = 'KING' OR last_name='FORD');

SELECT   FIRST_NAME AS "first_name",LAST_NAME AS "last_name",HIRE_DATE AS "hire_date"
FROM employees;

SELECT *
FROM customers
WHERE state IN ('FL' ,'VA', 'GA');

SELECT*
FROM PRODUCTS
WHERE quantity_in_stock IN( 49,38,72);

SELECT*
FROM products
WHERE quantity_in_stock != 72;

SELECT*
FROM CUSTOMERS
WHERE birth_date>1/1/1990 and 1/1/2000 ;

select*
from customers
where points BETWEEN 3000 AND 10000;

SELECT*
FROM CUSTOMERS
where last_name LIKE '%y';

SELECT*
FROM customers
WHERE LAST_NAME LIKE '%BA%';


SELECT*
from customers
WHERE address like '%TRaiL' OR '%AVENUE';

use exercise_hr;

-- 1.
SELECT first_name
FROM employees   
WHERE first_name LIKE '%b%' AND first_name LIKE '%c%'; 

-- 2.
SELECT last_name 
FROM employees
WHERE last_name LIKE '______';

-- 3.
SELECT last_name
FROM employees 
WHERE last_name LIKE '__e%';

SELECT last_name
from employees
WHERE last_name like ' _____';

use store;
SELECT *
FROM  customers
WHERE last_name LIKE "_____y";
SELECT *
FROM  customers
WHERE last_name LIKE "b____y";

SELECT *
FROM customers
WHERE last_name REGEXP'%age%';

SELECT*
FROM CUSTOMERS
WHERE LAST_NAME REGEXP 'FIELD$';

SELECT*
from customers
Where last_name REGEXP '^Mac|fiels$';

select*
from customers
WHERE last_name REGEXP 'ae|be|ce|de|ee|fe|ge|he|';

select*
from customers
where last_name REGEXP '[a-h]e';



USE STORE;
SELECT*
FROM customers
WHERE last_name REGEXP  '[gim]e';

SELECT*
FROM customers
where last_name REGEXP 'EY$|ON$';

SELECT*
FROM customers
WHERE last_name REGEXP '^MY|SE';

SELECT*
from customers
WHERE last_name REGEXP 'b[ru]';

SELECT*
FROM customers
WHERE last_name REGEXP 'br|bu';

select*
from customers
where phone is null;
select*
from customers
where phone is not null;


select*
from orders
where shipper_id is null;


use exercise_hr;
select employee_id,first_name,department_id
from employees
order by department_id DESC ,first_name;

use store;
select*
FROM customers
limit 3;

select*
from customers
order by points DESC
limit 3;


use exercise_hr;
select*
FROM employees inner join departments
ON employees.department_id=departments.department_id;

SELECT employee_id,first_name,last_name,e.department_id,department_name
FROM employees AS e INNER JOIN departments AS d
ON e.department_id = d.department_id
WHERE department_name = 'it';











