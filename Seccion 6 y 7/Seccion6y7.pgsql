/*JOIN Parte 1*/

CREATE TABLE jobs (
    job_id VARCHAR(10) PRIMARY KEY,
    job_title VARCHAR(35) NOT NULL,
    min_salary NUMERIC(6,0),
    max_salary NUMERIC(6,0)
);

INSERT INTO jobs (job_id, job_title, min_salary, max_salary)
VALUES 
('AD_PRES','President',20000,40000),
('AD_VP','Administration Vice President',15000,30000),
('AD_ASST','Administration Assistant',3000,6000),
('AC_MGR','Accounting Manager',8200,16000),
('AC_ACCOUNT','Public Accountant',4200,9000),
('SA_MAN','Sales Manager',10000,20000),
('SA_REP','Sales Representative',6000,12000),
('ST_MAN','Stock Manager',5500,8500),
('ST_CLERK','Stock Clerk',2000,5000),
('IT_PROG','Programmer',4000,10000),
('MK_MAN','Marketing Manager',9000,15000),
('MK_REP','Marketing Representative',4000,9000);


/*Uniones*/

SELECT first_name, last_name, job_id, job_title
FROM employees NATURAL JOIN jobs
WHERE department_id > 80;


SELECT department_name, city
FROM departments NATURAL JOIN
locations;


SELECT last_name, department_name
FROM employees CROSS JOIN
departments;


/*Cláusula USING*/

SELECT first_name, last_name, department_id, department_name
FROM employees JOIN departments USING (department_id);


SELECT first_name, last_name, department_id, department_name
FROM employees JOIN departments USING (department_id)
WHERE last_name = 'Higgins';


/*Cláusula ON*/

SELECT last_name, job_title
FROM employees e JOIN jobs j
ON (e.job_id = j.job_id);


SELECT last_name, job_title
FROM employees e JOIN jobs j
ON (e.job_id = j.job_id)
WHERE last_name LIKE 'H%';

/*Creacion de tablas e insersion de datos*/

CREATE TABLE job_grades (
    grade_level VARCHAR(3),
    lowest_sal NUMERIC,
    highest_sal NUMERIC
);

--populate job_grades table
INSERT INTO job_grades(grade_level,lowest_sal,highest_sal)
VALUES('A',1000,2999);
INSERT INTO job_grades(grade_level,lowest_sal,highest_sal)
VALUES('B',3000,5999);
INSERT INTO job_grades(grade_level,lowest_sal,highest_sal)
VALUES('C',6000,9999);
INSERT INTO job_grades(grade_level,lowest_sal,highest_sal)
VALUES('D',10000,14999);
INSERT INTO job_grades(grade_level,lowest_sal,highest_sal)
VALUES('E',15000,24999);
INSERT INTO job_grades(grade_level,lowest_sal,highest_sal)
VALUES('F',25000,40000);


/*Cláusula ON con Operador Distinto de:*/

SELECT last_name, salary, grade_level, lowest_sal,
highest_sal
FROM employees JOIN job_grades
ON(salary BETWEEN lowest_sal AND highest_sal); 


/*Unión de Tres Tablas*/

SELECT last_name, department_name AS "Department", city
FROM employees JOIN departments USING (department_id)
JOIN locations USING (location_id);


/*Uniones Externas Izquierdas y Derechas*/

SELECT e.last_name, d.department_id,
d.department_name
FROM employees e LEFT OUTER JOIN
departments d
ON (e.department_id =
d.department_id);


/*FULL OUTER JOIN*/

SELECT e.last_name, d.department_id, d.department_name
FROM employees e FULL OUTER JOIN departments d
ON (e.department_id = d.department_id);


/*Caso de Unión*/

SELECT last_name, e.job_id AS "Job", jh.job_id AS "Old job",
end_date
FROM employees e LEFT OUTER JOIN job_history jh
ON(e.employee_id = jh.employee_id);


/*autounión*/

SELECT worker.last_name || ' works for ' || manager.last_name
AS "Works for"
FROM employees worker JOIN employees manager
ON (worker.manager_id = manager.employee_id);


SELECT worker.last_name, worker.manager_id, manager.last_name
AS "Manager name"
FROM employees worker JOIN employees manager
ON (worker.manager_id = manager.employee_id);


/*Consultas Jerárquicas*/

WITH RECURSIVE employee_hierarchy AS (
    SELECT employee_id, last_name, job_id, manager_id
    FROM employees
    WHERE employee_id = 100  -- Punto de partida (START WITH)

    UNION ALL

    SELECT e.employee_id, e.last_name, e.job_id, e.manager_id
    FROM employees e
    JOIN employee_hierarchy eh ON e.manager_id = eh.employee_id
)
SELECT * FROM employee_hierarchy;


WITH RECURSIVE org_chart AS (
    SELECT 
        employee_id,
        last_name,
        manager_id,
        1 AS level
    FROM employees
    WHERE last_name = 'King'  -- punto de inicio

    UNION ALL

    SELECT 
        e.employee_id,
        e.last_name,
        e.manager_id,
        oc.level + 1 AS level
    FROM employees e
    JOIN org_chart oc ON e.manager_id = oc.employee_id
)
SELECT 
    LPAD(last_name, LENGTH(last_name) + (level * 2) - 2, '_') AS "Org_Chart"
FROM org_chart;


SELECT employees.last_name, employees.job_id, jobs.job_title
FROM employees, jobs
WHERE employees.job_id = jobs.job_id;


SELECT employees.last_name, departments.department_name
FROM employees, departments
WHERE employees.department_id = departments.department_id;


/*Alias de Tabla*/

SELECT last_name, e.job_id, job_title
FROM employees e, jobs j
WHERE e.job_id = j.job_id
AND department_id = 80;


SELECT e.last_name, e.job_id, j.job_title
FROM employees e
JOIN jobs j ON e.job_id = j.job_id
WHERE e.department_id = 80;


/*Union de producto cartesiano*/

SELECT employees.last_name, departments.department_name
FROM employees, departments;


/*Restriccion de filas*/

SELECT employees.last_name, employees.job_id, jobs.job_title
FROM employees, jobs
WHERE employees.job_id = jobs.job_id
AND employees.department_id = 80;


SELECT last_name, city
FROM employees e, departments d,
locations l
WHERE e.department_id = d.department_id
AND d.location_id = l.location_id;


/*Uniones No Igualitarias y Uniones Externas*/

SELECT last_name, salary, grade_level, lowest_sal,
highest_sal
FROM employees, job_grades
WHERE (salary BETWEEN lowest_sal AND highest_sal);


/*Left Outer Join*/

SELECT e.last_name,
d.department_id,
d.department_name
FROM employees e
LEFT JOIN departments d ON e.department_id = d.department_id;


/*Right Outer Join*/

SELECT e.last_name,
d.department_id,
d.department_name
FROM employees e
RIGHT JOIN departments d ON e.department_id = d.department_id;


/*Full Outer Join*/

SELECT e.last_name, d.department_id, d.department_name
FROM employees e
FULL OUTER JOIN departments d ON e.department_id = d.department_id;