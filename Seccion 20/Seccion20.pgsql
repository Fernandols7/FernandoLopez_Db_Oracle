/*Seccion 20 - Garantía de Resultados de Consultas de Calidad

Crear tablas*/

CREATE TABLE emp
AS select * FROM employees;


CREATE TABLE dept
AS select * FROM departments;


/*Consulta y restricciones*/
SELECT 
    con.conname AS constraint_name,
    CASE 
        WHEN con.contype = 'p' THEN 'PRIMARY KEY'
        WHEN con.contype = 'u' THEN 'UNIQUE'
        WHEN con.contype = 'f' THEN 'FOREIGN KEY'
        WHEN con.contype = 'c' THEN 'CHECK'
        ELSE con.contype
    END AS constraint_type,
    att.attname AS column_name,
    cols.ordinal_position AS column_position
FROM 
    pg_constraint con
JOIN 
    pg_class rel ON rel.oid = con.conrelid
JOIN 
    pg_namespace nsp ON nsp.oid = rel.relnamespace
LEFT JOIN 
    unnest(con.conkey) WITH ORDINALITY AS cols(attnum, ordinal_position)
    ON TRUE
LEFT JOIN 
    pg_attribute att ON att.attrelid = rel.oid AND att.attnum = cols.attnum
WHERE 
    rel.relname = 'job_history'
    AND nsp.nspname = 'public'
ORDER BY 
    constraint_name, column_position;


/*Sentencias*/
ALTER TABLE emp
ADD CONSTRAINT emp_pk PRIMARY KEY (employee_id);

ALTER TABLE dept
ADD CONSTRAINT dept_pk PRIMARY KEY (department_id);


/*Correccion de errores*/
ALTER TABLE emp
ADD CONSTRAINT emp_dept_fk
FOREIGN KEY (department_id)
REFERENCES dept(department_id)
ON DELETE CASCADE;

SELECT COUNT(*) AS "Num emps"
FROM emp;

DELETE FROM dept
WHERE department_id = 10;

SELECT COUNT(*) AS "Num emps"
FROM emp;


/*Genere un informe que devuelva el apellido, el salario, el
número de departamento y el salario medio de todos los
departamentos en los que el salario es mayor que el salario
medio*/
SELECT 
    e.last_name,
    e.salary,
    e.department_id,
    dept_avg.avg_salary
FROM 
    employees e
JOIN 
    (
        SELECT 
            department_id, 
            AVG(salary) AS avg_salary
        FROM employees
        GROUP BY department_id
    ) dept_avg
    ON e.department_id = dept_avg.department_id
WHERE 
    e.salary > dept_avg.avg_salary ORDER BY avg_salary;


/*−Cree una vista denominada V2 que devuelve el salario más
alto, el salario más bajo, el salario medio y el nombre del
departamento*/
CREATE OR REPLACE VIEW V2 AS
SELECT
    d.department_name,
    MAX(e.salary) AS max_salary,
    MIN(e.salary) AS min_salary,
    AVG(e.salary) AS avg_salary
FROM
    emp e
JOIN
    dept d ON e.department_id = d.department_id
GROUP BY
    d.department_name;

SELECT * FROM v2;

/*Cree una vista denominada Dept_Managers_view que
devuelva una lista de nombres de departamento junto con las
iniciales y el apellido del jefe para dicho departamento*/
CREATE OR REPLACE VIEW Dept_Managers_view AS
SELECT
    d.department_name,
    LEFT(e.first_name, 1) AS manager_initial,
    e.last_name AS manager_last_name
FROM
    departments d
JOIN
    employees e ON d.manager_id = e.employee_id;

SELECT * FROM Dept_Managers_view;


/*Corrija el codigo*/

DROP VIEW V3;

CREATE SEQUENCE ct_seq;

SELECT nextval('ct_seq');
SELECT currval('ct_seq');

INSERT INTO emp
(employee_id, first_name, last_name, email, phone_number,
hire_date, job_id, salary, commission_pct, manager_id, department_id)
VALUES
(
  nextval('ct_seq'), 
  'Kaare','Hansen','KHANSEN','4496583212',
  CURRENT_DATE,
  'Manager',6500, 
  NULL, 
  100,10
);

/*Crear indice*/

CREATE INDEX emp_indx ON emp (
    employee_id DESC,
    UPPER(SUBSTRING(first_name FROM 1 FOR 1) || ' ' || last_name)
);

/*Escriba la sentencia SQL para mostrar todas las tablas
de usuario que contienen el nombre PRIV*/

SELECT table_name
FROM information_schema.tables
WHERE table_schema = current_schema()
  AND table_name ILIKE '%priv%';

/*Corregir codigo*/

GRANT SELECT ON emp TO PUBLIC;

SELECT * FROM information_schema.role_table_grants
WHERE table_name = 'emp';

/*employee_id unidos a todos los department_names*/
SELECT e.employee_id, d.department_name
FROM employees e
CROSS JOIN departments d;

SELECT e.employee_id, d.department_name
FROM employees e
JOIN departments d ON e.department_id = d.department_id;


/*Crear una consulta que muestre el apellido de los empleados, el nombre de
departamento, el salario y el nombre del país de todos los empleados*/

SELECT 
    e.last_name,
    d.department_name,
    e.salary,
    c.country_name
FROM 
    employees e
JOIN 
    departments d ON e.department_id = d.department_id
JOIN 
    locations l ON d.location_id = l.location_id
JOIN 
    wf_countries c ON l.country_id = c.fips_id
ORDER BY 
    e.last_name;


SELECT 
    e.last_name,
    NULL AS department_name,
    e.salary,
    NULL AS country_name
FROM 
    employees e
WHERE 
    e.department_id IS NULL
    AND e.last_name = 'Grant'