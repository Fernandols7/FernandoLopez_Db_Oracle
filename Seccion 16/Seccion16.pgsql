/*Sección 16 - Secuencias y Sinónimos

Objeto Sequence*/

CREATE SEQUENCE sequence
INCREMENT 1
START 1
MINVALUE 1
MAXVALUE 10000
CYCLE
CACHE 5;


CREATE SEQUENCE runner_id_seq
INCREMENT 1
START 1
MAXVALUE 50000
CACHE 1;


SELECT sequence_name, 
       start_value, 
       minimum_value AS min_value,
       maximum_value AS max_value,
       increment AS increment_by,
       cycle_option
FROM information_schema.sequences
WHERE sequence_schema = 'public';


/*Obtener el siguiente valor de una secuencia*/

CREATE SEQUENCE departments_seq
  MINVALUE 1
  MAXVALUE 9990
  INCREMENT 10
  START 280
  CACHE 1;


INSERT INTO departments
(department_id, department_name, location_id)
VALUES (nextval('departments_seq'), 'Support', 2500);


/*Creacion de tabla runners*/

CREATE TABLE runners (
  runner_id INTEGER CONSTRAINT runners_id_pk PRIMARY KEY,
  first_name VARCHAR(30),
  last_name VARCHAR(30)
);

INSERT INTO runners (runner_id, first_name, last_name)
VALUES (nextval('runner_id_seq'), 'Joanne', 'Everely');

INSERT INTO runners (runner_id, first_name, last_name)
VALUES (nextval('runner_id_seq'), 'Adam', 'Curtis');


CREATE SEQUENCE runner_id_seq
INCREMENT 1
START 1
MAXVALUE 50000
CACHE 1;

/*Uso de una secuencia*/

SELECT runner_id, first_name, last_name
FROM runners;

SELECT nextval('runner_id_seq');

SELECT currval('runner_id_seq');

/*Numeros no secuencuales*/

SELECT sequence_name,
       minimum_value AS min_value,
       maximum_value AS max_value,
       increment AS increment_by,
       start_value
FROM information_schema.sequences
WHERE sequence_name = 'runner_id_seq';


ALTER SEQUENCE runner_id_seq
INCREMENT 1
MAXVALUE 999999
CACHE 1;


/*Uso de una secuencia en una tabla*/

DROP SEQUENCE runner_id_seq;


/*Indices y sinonimos*/

CREATE INDEX wf_cont_reg_id_idx
ON wf_countries(region_id);


SELECT DISTINCT
    i.relname AS index_name,
    a.attname AS column_name,
    (s.n) AS column_position,
    ix.indisunique AS uniqueness
FROM
    pg_class t
JOIN pg_index ix ON t.oid = ix.indrelid
JOIN pg_class i ON i.oid = ix.indexrelid
JOIN LATERAL unnest(ix.indkey) WITH ORDINALITY AS s(attnum, n) ON true
JOIN pg_attribute a ON a.attrelid = t.oid AND a.attnum = s.attnum
WHERE
    t.relname = 'employees'
ORDER BY index_name, column_position;


CREATE INDEX upper_last_name_idx
ON employees (UPPER(last_name));


SELECT * FROM employees
WHERE UPPER(last_name) = 'KING';

/*Índices Basados en Funciones*/

SELECT * FROM employees
WHERE UPPER (last_name) IS NOT NULL
ORDER BY UPPER (last_name);


SELECT first_name, last_name, hire_date
FROM employees
WHERE TO_CHAR(hire_date, 'YYYY') = '1987';


CREATE INDEX emp_hire_year_idx
ON employees (EXTRACT(YEAR FROM hire_date));


SELECT first_name, last_name
FROM employees
WHERE EXTRACT(YEAR FROM hire_date) = 1987;

/*Eliminación de Índices*/

DROP INDEX upper_last_name_idx;

DROP INDEX emps_name_idx;

DROP INDEX emp_hire_year_idx;