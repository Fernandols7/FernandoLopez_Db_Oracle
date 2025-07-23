SELECT department_id ||
department_name
FROM departments;

SELECT department_id ||' '||department_name
FROM departments;

SELECT department_id ||' '||
department_name AS " Department Info "
FROM departments;

SELECT first_name ||' '||
last_name AS "Employee Name"
FROM employees;

SELECT last_name || ' tiene un salario mensual de ' || salary || '
dolares.' AS Pay
FROM employees;

SELECT last_name ||' tiene '|| 1 ||' año de salario de '||
salary*12 || ' dolares.' AS Pay
FROM employees;

SELECT department_id
FROM employees;

SELECT DISTINCT department_id
FROM employees;

/*CLAUSULA WHERE*/

SELECT employee_id, first_name,
last_name
FROM employees;

SELECT employee_id, first_name,
last_name
FROM employees
WHERE employee_id = 36;

SELECT employee_id, last_name, department_id
FROM employees
WHERE department_id = 50;

SELECT first_name, last_name
FROM employees
WHERE last_name = 'Taylor';

SELECT last_name, salary
FROM employees
WHERE salary <= 50000;

/* Operadores de Comparación */

SELECT last_name, salary
FROM employees
WHERE salary BETWEEN 50000 AND 65000;

SELECT city, state_province,
country_id
FROM locations
WHERE country_id IN('UK', 'CA');

SELECT city, state_province, country_id
FROM locations
WHERE country_id = 'UK' OR country_id = 'CA';

SELECT last_name
FROM employees
WHERE last_name LIKE '_o%';


SELECT last_name, job_id
FROM EMPLOYEES
WHERE job_id LIKE '%_R%';

SELECT last_name, manager_id
FROM employees
WHERE manager_id IS NULL;

SELECT last_name, commission_pct
FROM employees
WHERE commission_pct IS NOT NULL;