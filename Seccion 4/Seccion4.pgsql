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


