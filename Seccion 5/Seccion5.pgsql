/*Funciones de Una Sola Fila Parte 2*/

SELECT TO_CHAR(hire_date, 'Month dd, YYYY')
FROM employees;


SELECT TO_CHAR(hire_date, 'fmMonth dd, YYYY')
FROM employees;


SELECT TO_CHAR(hire_date, 'fmMonth ddth, YYYY')
FROM employees;

/*Conversión de Datos de Fecha en Datos de Caracteres*/

SELECT TO_CHAR(hire_date, 'fmDay ddth Mon, YYYY')
FROM employees;


SELECT TO_CHAR(hire_date, 'fmDay ddthsp Mon, YYYY')
FROM employees;


SELECT TO_CHAR(hire_date, 'fmDay, ddthsp "of" Month, Year')
FROM employees;

/*Conversión de Datos Numéricos en Datos de Caracteres (VARCHAR2)*/

SELECT TO_CHAR(salary,
'$99,999') AS "Salary"
FROM employees;


SELECT TO_CHAR(3000, 'L99999.99');

SELECT TO_CHAR(4500, '99,999');

SELECT TO_CHAR(9000, '99,999.99');

SELECT TO_CHAR(4422, '0,009,999');


/*Conversión de Caracteres en Números*/

SELECT TO_NUMBER('5,320', '9,999') AS "Number";


SELECT last_name, TO_NUMBER(bonus,
'999')
FROM employees
WHERE department_id = 80;


SELECT last_name, TO_NUMBER(bonus,
'9999')
AS "Bonus"
FROM employees
WHERE department_id = 80;


/*Conversión de Caracteres en Fechas*/

SELECT TO_DATE('May10,1989', 'MonDD,YYYY') AS "Convert";

SELECT TO_DATE('Sep 07, 1965', 'Mon DD, YYYY') AS "Date";

SELECT TO_DATE('July312004', 'MonthDDYYYY') AS "Date";

SELECT TO_DATE('June 19, 1990', 'FMMonth DD, YYYY') AS "Date";

SELECT TO_DATE('27-Oct-95', 'DD-Mon-YY') AS "Date";

SELECT last_name, TO_CHAR(hire_date, 'DD-Mon-YY')
FROM employees
WHERE hire_date < TO_DATE('01-Jan-90','DD-Mon-YY');

/*Funciones de Una Sola Fila Parte 2*/

SELECT TO_CHAR(
    hire_date + INTERVAL '6 months' + 
    ((5 - EXTRACT(DOW FROM hire_date + INTERVAL '6 months') + 7) % 7) * INTERVAL '1 day',
    'FMDay, Month DDth, YYYY'
) AS "Next Evaluation"
FROM employees
WHERE employee_id = 100;


SELECT country_name, COALESCE(internet_extension, 'None') AS "Internet extn"
FROM wf_countries
WHERE location = 'Southern Africa'
ORDER BY internet_extension DESC;


SELECT last_name,
COALESCE(commission_pct, 0) * 250 AS "Commission"
FROM employees
WHERE department_id IN (80, 90);


SELECT last_name, salary,
  CASE 
    WHEN commission_pct IS NOT NULL THEN salary + (salary * commission_pct)
    ELSE salary
  END AS income
FROM employees
WHERE department_id IN (80, 90);


SELECT first_name, LENGTH(first_name) AS "Length FN", last_name,
       LENGTH(last_name) AS "Length LN", 
       NULLIF(LENGTH(first_name), LENGTH(last_name)) AS "Compare Them"
FROM employees;


/*Función COALESCE*/

SELECT last_name,
COALESCE(commission_pct, salary, 10)
AS "Comm"
FROM employees
ORDER BY commission_pct;

/*Expresiones Condicionales*/

SELECT employee_id, department_id,
  CASE department_id
    WHEN 10 THEN 'Accounting'
    WHEN 20 THEN 'Sales'
    WHEN 30 THEN 'IT'
    ELSE 'Other'
  END AS department_name
FROM employees;


SELECT last_name,
    CASE department_id
        WHEN 90 THEN 'Management'
        WHEN 80 THEN 'Sales'
        WHEN 60 THEN 'It'
        ELSE 'Other dept.'
    END AS "Department"
FROM employees;


SELECT last_name,
  CASE department_id
    WHEN 90 THEN 'Management'
    WHEN 80 THEN 'Sales'
    WHEN 60 THEN 'It'
    ELSE 'Other dept.'
  END AS "Department"
FROM employees;