/*Subconsultas*/

SELECT first_name, last_name,
hire_date FROM employees
WHERE hire_date >
(SELECT hire_date
FROM employees
WHERE last_name = 'Vargas');


SELECT last_name
FROM employees
WHERE department_id =
(SELECT department_id
FROM employees
WHERE last_name = 'Grant');


SELECT last_name, job_id, department_id
FROM employees
WHERE department_id =
(SELECT department_id
FROM departments
WHERE department_name = 'Marketing')
ORDER BY job_id;


/*Subconsultas de diferentes tablas*/

SELECT last_name, job_id, salary, department_id
FROM employees
WHERE job_id =
(SELECT job_id
FROM employees
WHERE employee_id = 141)
AND department_id =
(SELECT department_id
FROM departments
WHERE location_id = 1500);


SELECT last_name, salary
FROM employees
WHERE salary <
(SELECT AVG(salary)
FROM employees);


SELECT department_id, MIN(salary)
FROM employees
GROUP BY department_id
HAVING MIN(salary) >
(SELECT MIN(salary)
FROM employees
WHERE department_id = 50);


SELECT first_name, last_name
FROM employees
WHERE salary =
(SELECT salary
FROM employees
WHERE department_id = 20);


/*IN, ANY y ALL*/

SELECT last_name, hire_date
FROM employees
WHERE EXTRACT(YEAR FROM hire_date) IN
(SELECT EXTRACT(YEAR FROM hire_date)
FROM employees
WHERE department_id=90);


SELECT last_name, hire_date
FROM employees
WHERE EXTRACT(YEAR FROM hire_date) < ANY
(SELECT EXTRACT(YEAR FROM hire_date)
FROM employees
WHERE department_id=90);


SELECT last_name, hire_date FROM employees
WHERE EXTRACT(YEAR FROM hire_date) < ALL
(SELECT EXTRACT(YEAR FROM hire_date)
FROM employees
WHERE department_id=90);

/*Valores NULL*/

SELECT last_name,
employee_id
FROM employees
WHERE employee_id IN
(SELECT manager_id
FROM employees);


SELECT last_name, employee_id
FROM employees
WHERE employee_id <= ALL
(SELECT manager_id
FROM employees);


/*GROUP BY y HAVING*/

SELECT department_id, MIN(salary)
FROM employees
GROUP BY department_id
HAVING MIN(salary) < ANY
(SELECT salary
FROM employees
WHERE department_id IN (10,20))
ORDER BY department_id;

/*Subconsultas de Varias Columnas*/

SELECT employee_id, manager_id, department_id
FROM employees
WHERE(manager_id,department_id) IN
(SELECT manager_id,department_id
FROM employees
WHERE employee_id IN (149,174))
AND employee_id NOT IN (149,174);


SELECT employee_id,
manager_id,
department_id
FROM employees
WHERE manager_id IN
(SELECT manager_id
FROM employees
WHERE employee_id IN
(149,174))
AND department_id IN
(SELECT department_id
FROM employees
WHERE employee_id IN
(149,174))
AND employee_id NOT IN(149,174);


SELECT first_name, last_name,
job_id
FROM employees
WHERE job_id =
(SELECT job_id
FROM employees
WHERE last_name = 'Ernst');


SELECT first_name, last_name,
job_id
FROM employees
WHERE job_id IN
(SELECT job_id
FROM employees
WHERE last_name = 'Ernst');

/*Subconsultas Correlacionadas*/    

SELECT o.first_name,o.last_name,
o.salary
FROM employees o
WHERE o.salary >
(SELECT AVG(i.salary)
FROM employees i
WHERE i.department_id =
o.department_id);


/*EXISTS Y NOT EXISTS en Subconsultas*/

SELECT last_name AS "Not a Manager"
FROM employees emp
WHERE NOT EXISTS
(SELECT *
FROM employees mgr
WHERE mgr.manager_id = emp.employee_id);


SELECT last_name AS "Not a Manager"
FROM employees emp
WHERE emp.employee_id NOT IN
(SELECT mgr.manager_id
FROM employees mgr);