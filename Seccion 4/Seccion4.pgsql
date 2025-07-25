/*Funciones de Una Sola Fila Parte 1
Manipulación de Mayúsculas/Minúsculas y de Caracteres*/

SELECT (319 / 29) + 12;


SELECT last_name
FROM employees
WHERE LOWER(last_name) = 'abel';

/*UPPER(columna | expresión) convierte los caracteres alfabéticos en mayuscula*/
SELECT last_name
FROM employees
WHERE UPPER(last_name) = 'ABEL';


/*INITCAP(columna | expresión) convierte los valores de caracteres alfabéticos en mayúscula para la primera letra de cada palabra*/

SELECT last_name
FROM employees
WHERE INITCAP(last_name) = 'Abel';


/* Funcion CONCAT: Toma 2 argumentos de cadena de caracteres y une la segunda cadena a la primera. */

SELECT CONCAT(first_name, last_name)
FROM employees;

/*SUBSTR: extrae una cadena de una longitud determinada*/

SELECT SUBSTR(last_name,1,3)
FROM employees;

SELECT SUBSTR(last_name,2,5)
FROM employees;

/*LENGTH: muestra la longitud de una cadena como un valor numérico*/

SELECT LENGTH(last_name)
FROM employees;

/*Funcion position*/

SELECT last_name, POSITION('a' IN last_name)
FROM employees;

/*Funcion LPAD  rellena la parte izquierda de una cadena de caracteres, dando lugar a un valor justificado a la derecha*/

SELECT LPAD(last_name, 10,'*')
FROM employees;

/*•RPAD: rellena la parte derecha de una cadena de caracteres*/

SELECT RPAD(last_name, 10,'*')
FROM employees;

/*• TRIM: elimina todos los caracteres especificados, ya sea del principio, del final, o de ambos de una cadena*/

SELECT TRIM(BOTH 'a' FROM 'abcba');
SELECT TRIM(LEADING 'a' FROM 'abcba');

/*REPLACE: sustituye una secuencia de caracteres de una cadena por otro juego de caracteres */

SELECT REPLACE('Hello World', 'World', 'Universe') AS new_string;


SELECT REPLACE(last_name,'a','*')
FROM employees;

/*Uso de Alias de Columna con Funciones*/

SELECT LOWER(last_name)||
LOWER(SUBSTR(first_name,1,1))
AS "User Name"
FROM employees;

/*Variables de sustitucion*/

SELECT first_name, last_name, salary, department_id
FROM employees
WHERE department_id= 10;

SELECT *
FROM employees
WHERE last_name = 'Smith';

/*Funciones de Una Sola Fila*/

SELECT country_name, MOD(airports,2)
AS "Mod Demo"
FROM wf_countries;

/*Trabajar con fechas*/

SELECT last_name, hire_date + 60
FROM employees;

/* Tabla job_history*/

CREATE TABLE job_history (
    employee_id     INTEGER NOT NULL,
    start_date      DATE NOT NULL,
    end_date        DATE NOT NULL,
    job_id          VARCHAR(10) NOT NULL,
    department_id   INTEGER,

    CONSTRAINT jhist_date_interval CHECK (end_date > start_date),
    CONSTRAINT jhist_emp_id_st_date_pk PRIMARY KEY (employee_id, start_date)
);


INSERT INTO job_history(employee_id, start_date, end_date, job_id, department_id)
VALUES (200, '1987-09-17', '1993-06-17', 'AD_ASST', 90);

INSERT INTO job_history(employee_id, start_date, end_date, job_id, department_id)
VALUES (101, '1993-10-28', '1997-03-15', 'AC_MGR', 110);

INSERT INTO job_history(employee_id, start_date, end_date, job_id, department_id)
VALUES (200, '1994-07-01', '1998-12-31', 'AC_ACCOUNT', 90);

INSERT INTO job_history(employee_id, start_date, end_date, job_id, department_id)
VALUES (101, '1989-09-21', '1993-10-27', 'AC_ACCOUNT', 110);

INSERT INTO job_history(employee_id, start_date, end_date, job_id, department_id)
VALUES (176, '1999-01-01', '1999-12-31', 'SA_MAN', 80);

INSERT INTO job_history(employee_id, start_date, end_date, job_id, department_id)
VALUES (176, '1998-03-24', '1998-12-31', 'SA_REP', 80);

INSERT INTO job_history(employee_id, start_date, end_date, job_id, department_id)
VALUES (122, '1999-01-01', '1999-12-31', 'ST_CLERK', 50);

INSERT INTO job_history(employee_id, start_date, end_date, job_id, department_id)
VALUES (114, '1998-03-24', '1999-12-31', 'ST_CLERK', 50);

INSERT INTO job_history(employee_id, start_date, end_date, job_id, department_id)
VALUES (102, '1993-01-13', '1998-07-24', 'IT_PROG', 60);

INSERT INTO job_history(employee_id, start_date, end_date, job_id, department_id)
VALUES (201, '1996-02-17', '1999-12-19', 'MK_REP', 20);


SELECT employee_id, (end_date -
start_date)/365
AS "Tenure in last job"
FROM job_history;

/*Funciones de fechas*/

SELECT hire_date,
       DATE_TRUNC('month', hire_date) AS month_start
FROM employees
WHERE department_id = 50;


SELECT hire_date,
       DATE_TRUNC('year', hire_date) AS year_start
FROM employees
WHERE department_id = 50;


SELECT last_name, hire_date + 60
FROM employees;


SELECT employee_id, (end_date -
start_date)/365
AS "Tenure in last job"
FROM job_history;


SELECT
  employee_id,
  hire_date,
  ROUND(
    EXTRACT(YEAR FROM AGE(CURRENT_DATE, hire_date)) * 12 +
    EXTRACT(MONTH FROM AGE(CURRENT_DATE, hire_date))
  ) AS tenure,
  hire_date + INTERVAL '6 months' AS review,
  -- Calcular próximo viernes después de hire_date
  hire_date + ((5 - EXTRACT(DOW FROM hire_date) + 7) % 7) * INTERVAL '1 day' AS next_friday,
  -- Último día del mes de hire_date
  (date_trunc('month', hire_date) + INTERVAL '1 month' - INTERVAL '1 day')::date AS last_day
FROM employees
WHERE
  (EXTRACT(YEAR FROM AGE(CURRENT_DATE, hire_date)) * 12 +
   EXTRACT(MONTH FROM AGE(CURRENT_DATE, hire_date))) > 36;