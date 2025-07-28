/*Sentencias INSERT*/

/*Copia de Tablas antes de la Inserción*/

CREATE TABLE copy_employees
AS (SELECT * FROM employees);


CREATE TABLE copy_departments
AS (SELECT * FROM departments);


/*Inserción de Datos en la Tabla copy_employees*/

INSERT INTO copy_departments
(department_id, department_name, manager_id, location_id)
VALUES (200, 'Human Resources', 205, 1500);


INSERT INTO copy_departments
VALUES
(210,'Estate Management', 102, 1700);


/*Inserción de Filas con Valores Nulos*/

INSERT INTO copy_employees
(employee_id, first_name, last_name, phone_number,
hire_date,
job_id, salary)
VALUES
(302,'Grigorz','Polanski', '8586667641', '15-Jun-2017',
'IT_PROG',4200);


/*Inserción de Valores de Fecha Específicos*/

SELECT first_name, TO_CHAR(hire_date,'Month, fmdd, yyyy')
FROM employees
WHERE employee_id = 101;


INSERT INTO copy_employees
(employee_id, first_name, last_name, email, phone_number,
hire_date,job_id, salary)
VALUES
(301,'Katie','Hernandez', 'khernandez','8586667641',
TO_DATE('July 8, 2017', 'Month fmdd, yyyy'),
'MK_REP',4200); 


/*Sentencia UPDATE*/

UPDATE copy_employees
SET phone_number = '123456'
WHERE employee_id = 303;


UPDATE copy_employees
SET phone_number = '654321', last_name = 'Jones'
WHERE employee_id >= 303;


UPDATE copy_employees
SET salary = (SELECT salary
FROM copy_employees
WHERE employee_id = 100)
WHERE employee_id = 101;


UPDATE copy_employees
SET salary = (SELECT salary
FROM copy_employees
WHERE employee_id = 205),
job_id = (SELECT job_id
FROM copy_employees
WHERE employee_id = 205)
WHERE employee_id = 206;


UPDATE copy_employees
SET salary = (SELECT salary
FROM employees
WHERE employee_id = 205)
WHERE employee_id = 202;


/*Sentencia DELETE*/

DELETE from copy_employees
WHERE employee_id = 202;


DELETE FROM copy_employees
WHERE department_id =
(SELECT department_id
FROM departments
WHERE department_name = 'Shipping');


/*Cláusula FOR UPDATE en una Sentencia SELECT*/

SELECT e.employee_id, e.salary, d.department_name
FROM employees e
JOIN departments d USING (department_id)
WHERE job_id = 'ST_CLERK' AND location_id = 1500
ORDER BY e.employee_id
FOR UPDATE;


/*Ejemplo de DEFAULT*/

CREATE TABLE my_employees (
  hire_date DATE DEFAULT CURRENT_DATE,
  first_name VARCHAR(15),
  last_name VARCHAR(15)
);


INSERT INTO my_employees
(hire_date, first_name, last_name)
VALUES
(DEFAULT, 'Angelina','Wright');


/*DEFAULT explícito con UPDATE*/

UPDATE my_employees
SET hire_date = DEFAULT
WHERE last_name = 'Wright';