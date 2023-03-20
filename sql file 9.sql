USE exercise_hr;
SELECT first_name,last_name,e.department_id, d.department_name
FROM employees AS e INNER JOIN departments AS d
ON e.department_id = d.department_id;






SELECT job_title, first_name, salary-min_salary 'Salary - Min_Salary' 
FROM employees 
 INNER JOIN jobs;
 
 SELECT employee_id, job_title, end_date-start_date Days FROM job_history
NATURAL JOIN jobs
WHERE department_id=90;
 
 

SELECT  first_name,last_name,salary,min_salary,job_title
FROM employees AS e INNER JOIN jobs AS J
ON e.job_id = J.job_id;

SELECT department_name AS 'Department Name', AVG(salary) AS 'Average Salary'
FROM departments
JOIN employees USING (department_id)
GROUP BY department_name;


SELECT d.department_name, e.first_name, l.city

FROM departments as d INNER JOIN employees as e
ON (d.manager_id = e.employee_id)
JOIN locations l USING (location_id);

sELECT department_id, COUNT(*) as 'number of employees'
FROM employees
GROUP BY department_id;








 


