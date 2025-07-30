/* Seccion 13 - lenguaje de definición de datos (DDL)/

/*DESCRIBE jobs; --- Se usa equivalente en postgreSQL*/

SELECT column_name, data_type, column_default
FROM information_schema.columns
WHERE table_name = 'jobs';


CREATE TABLE my_cd_collection (
    cd_number NUMERIC(3),
    title VARCHAR(20),
    artist VARCHAR(20),
    purchase_date DATE DEFAULT CURRENT_DATE
);


CREATE TABLE my_friends (
    first_name VARCHAR(20),
    last_name VARCHAR(30),
    email VARCHAR(30),
    phone_num VARCHAR(12),
    birth_date DATE
);


SELECT tablename
FROM pg_tables
WHERE schemaname = 'public';


SELECT schemaname, tablename
FROM pg_tables
WHERE schemaname NOT IN ('pg_catalog', 'information_schema');


SELECT *
FROM pg_indexes
WHERE schemaname = 'public';


SELECT sequence_schema, sequence_name
FROM information_schema.sequences
WHERE sequence_schema = 'public';


/*Uso de tipos de datos*/

CREATE TABLE time_ex1
(exact_time TIMESTAMP);

INSERT INTO time_ex1 VALUES ('2017-06-10 10:52:29.123456');

INSERT INTO time_ex1 VALUES (CURRENT_TIMESTAMP);

SELECT * FROM time_ex1;


CREATE TABLE time_ex2 (
  time_with_offset TIMESTAMPTZ
);

INSERT INTO time_ex2 VALUES (CURRENT_TIMESTAMP);

INSERT INTO time_ex2 VALUES ('2017-06-10 10:52:29.123456+02');

SELECT * FROM time_ex2;


CREATE TABLE time_ex3 (
  first_column TIMESTAMPTZ,
  second_column TIMESTAMP  -- sin zona horaria
);

INSERT INTO time_ex3 (first_column, second_column)
VALUES
('2017-07-15 08:00:00-07', '2007-11-15 08:00:00');

SELECT * FROM time_ex3;


CREATE TABLE time_ex4 (
  loan_duration1 INTERVAL,
  loan_duration2 INTERVAL
);

INSERT INTO time_ex4 (loan_duration1, loan_duration2)
VALUES 
  (INTERVAL '120 months', INTERVAL '3 years 6 months');


SELECT 
  CURRENT_DATE + loan_duration1 AS "120 months from now",
  CURRENT_DATE + loan_duration2 AS "3 years 6 months from now"
FROM time_ex4;


CREATE TABLE time_ex5 (
  day_duration1 INTERVAL,
  day_duration2 INTERVAL
);


SELECT 
  CURRENT_DATE + day_duration1 AS "25 Days from now",
  TO_CHAR(CURRENT_TIMESTAMP + day_duration2, 'DD-Mon-YYYY HH12:MI:SS') AS "precise days and time from now"
FROM time_ex5;


/*Modificación de una Tabla ALTER TABLE*/


CREATE TABLE mod_emp (
  last_name VARCHAR(20),
  salary NUMERIC(8,2)
);

ALTER TABLE mod_emp
ALTER COLUMN last_name TYPE VARCHAR(30);

ALTER TABLE mod_emp
ALTER COLUMN salary TYPE NUMERIC(10,2);

ALTER TABLE mod_emp
ALTER COLUMN salary SET DEFAULT 50;

ALTER TABLE mod_emp
ALTER COLUMN last_name TYPE VARCHAR(10);

ALTER TABLE mod_emp
ALTER COLUMN last_name TYPE VARCHAR(30);

ALTER TABLE mod_emp
ALTER COLUMN salary TYPE NUMERIC(8,2);

ALTER TABLE mod_emp
ALTER COLUMN salary SET DEFAULT 50;

/*Comando DROP TABLE*/

ALTER TABLE copy_employees
DROP COLUMN email;

DROP TABLE copy_employees;


/*COMMENT ON TABLE*/

COMMENT ON TABLE employees IS 'Western Region only';

SELECT employee_id, salary
FROM copy_employees
WHERE employee_id = 1;