/*Seccion 15 - Creación de Vistas*/
/*Creacion de tabla*/

CREATE TABLE wf_world_regions (
    region_id     INTEGER PRIMARY KEY,
    region_name   VARCHAR(35) NOT NULL
);

INSERT INTO wf_world_regions (region_id, region_name) VALUES (14, 'Eastern Africa');
INSERT INTO wf_world_regions (region_id, region_name) VALUES (17, 'Middle Africa');
INSERT INTO wf_world_regions (region_id, region_name) VALUES (15, 'Northern Africa');
INSERT INTO wf_world_regions (region_id, region_name) VALUES (18, 'Southern Africa');
INSERT INTO wf_world_regions (region_id, region_name) VALUES (11, 'Western Africa');
INSERT INTO wf_world_regions (region_id, region_name) VALUES (29, 'Caribbean');
INSERT INTO wf_world_regions (region_id, region_name) VALUES (13, 'Central America');
INSERT INTO wf_world_regions (region_id, region_name) VALUES (5, 'South America');
INSERT INTO wf_world_regions (region_id, region_name) VALUES (21, 'Northern America');
INSERT INTO wf_world_regions (region_id, region_name) VALUES (143, 'Central Asia');
INSERT INTO wf_world_regions (region_id, region_name) VALUES (30, 'Eastern Asia');
INSERT INTO wf_world_regions (region_id, region_name) VALUES (34, 'Southern Asia');
INSERT INTO wf_world_regions (region_id, region_name) VALUES (35, 'South-Eastern Asia');
INSERT INTO wf_world_regions (region_id, region_name) VALUES (145, 'Western Asia');
INSERT INTO wf_world_regions (region_id, region_name) VALUES (151, 'Eastern Europe');
INSERT INTO wf_world_regions (region_id, region_name) VALUES (154, 'Northern Europe');
INSERT INTO wf_world_regions (region_id, region_name) VALUES (39, 'Southern Europe');
INSERT INTO wf_world_regions (region_id, region_name) VALUES (155, 'Western Europe');
INSERT INTO wf_world_regions (region_id, region_name) VALUES (9, 'Oceania');


/*Creacion de vistas*/

CREATE VIEW view_employees
AS SELECT employee_id, first_name, last_name, email
FROM employees
WHERE employee_id BETWEEN 100 and 124;


SELECT * FROM view_employees;


CREATE OR REPLACE VIEW view_euro_countries
AS SELECT country_id, region_id, country_name, capitol
FROM wf_countries
WHERE location LIKE '%Europe';


SELECT * FROM view_euro_countries
ORDER BY country_name;


/*Vista simple*/

CREATE OR REPLACE VIEW view_euro_countries
AS SELECT country_id AS "ID", country_name AS "Country",
capitol AS "Capitol City"
FROM wf_countries
WHERE location LIKE '%Europe';


CREATE OR REPLACE VIEW view_euro_countries("ID", "Country",
"Capitol City")
AS SELECT country_id, country_name, capitol
FROM wf_countries
WHERE location LIKE '%Europe';


/*Vista Compleja*/

CREATE OR REPLACE VIEW view_euro_countries
("ID", "Country", "Capitol City", "Region")
AS SELECT c.country_id, c.country_name, c.capitol,
r.region_name
FROM wf_countries c JOIN wf_world_regions r
USING (region_id)
WHERE location LIKE '%Europe';

SELECT * FROM view_euro_countries;


CREATE OR REPLACE VIEW view_high_pop
("Region ID", "Highest
population")
AS SELECT region_id, MAX(population)
FROM wf_countries
GROUP BY region_id;

SELECT * FROM view_high_pop ORDER BY "Region ID";


/*Operadores DML*/

CREATE VIEW view_dept50
AS SELECT department_id,
employee_id, first_name, last_name,
salary
FROM copy_employees
WHERE department_id = 50;

SELECT * FROM view_dept50;


/*Vistas con la Opción CHECK*/

UPDATE view_dept50
SET department_id = 90
WHERE employee_id = 124;

CREATE OR REPLACE VIEW view_dept50 AS
SELECT 
department_id, 
employee_id, 
first_name, 
last_name,
salary
FROM employees
WHERE department_id = 50;


/*Vistas en Línea*/

SELECT e.last_name, e.salary, e.department_id, d.maxsal
FROM employees e,
(SELECT department_id, max(salary) maxsal
FROM employees
GROUP BY department_id) d
WHERE e.department_id = d.department_id
AND e.salary = d.maxsal;


/*ANÁLISIS DE N PRINCIPALES*/

SELECT 
ROW_NUMBER() OVER (ORDER BY hire_date) AS "Longest employed",
last_name,
hire_date
FROM employees
ORDER BY hire_date
LIMIT 5;