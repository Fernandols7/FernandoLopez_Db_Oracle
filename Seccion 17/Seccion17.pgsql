/*Sección 17 - Privilegios y Expresiones Regulares

Privilegios del Sistema*/

CREATE ROLE scott WITH
    LOGIN
    PASSWORD 'ur35scott';

/*ALTER Para cambiar la contraseña de usuario*/

ALTER ROLE scott WITH PASSWORD 'imscott35';


/*Privilegios del Sistema de Usuario*/

GRANT CREATE ON SCHEMA public TO scott;

/*Privilegios de objeto*/

GRANT UPDATE (salary)
ON employees
TO steven_king;

/*Palabra Clave PUBLIC (Otorgar permisos a otros usuarios)*/

GRANT SELECT ON alice.departments TO PUBLIC;


/* Creación y Revocación de Privilegios de Objeto - Funciones (Crear Rol)*/

CREATE ROLE manager;
CREATE ROLE jennifer_cho WITH LOGIN PASSWORD 'jennifer';

GRANT CREATE ON SCHEMA public TO manager;

GRANT manager TO jennifer_cho;


/*Asignación de Privilegios de Objeto*/

GRANT SELECT ON clients TO PUBLIC;

GRANT UPDATE (first_name, last_name) ON clients TO jennifer_cho, manager;

CREATE VIEW clients AS
SELECT * FROM scott_king.clients;

SELECT * FROM clients;

/*Palabra Clave PUBLIC*/

CREATE SCHEMA jason_tsang;

CREATE TABLE jason_tsang.clients (
    id SERIAL PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50)
);

GRANT SELECT
ON jason_tsang.clients
TO PUBLIC;


/*Expresiones Regulares*/

/*Ejemplos de Funciones de Expresiones Regulares*/

SELECT first_name, last_name
FROM employees
WHERE first_name ~ '^Ste(v|ph)en$';


SELECT last_name,
       REGEXP_REPLACE(last_name, '^H(a|e|i|o|u)', '**')
       AS "Name changed"
FROM employees;


SELECT country_name, match_count AS "Count of 'ab'"
FROM (
    SELECT country_name,
           cardinality(regexp_matches(country_name, '(ab)', 'gi')) AS match_count
    FROM wf_countries
) AS sub
WHERE match_count > 0;


/*Expresiones Regulares en Restricciones de Control*/

ALTER TABLE employees
ADD CONSTRAINT email_addr_chk
CHECK (email ~ '@');


CREATE TABLE my_contacts (
    first_name VARCHAR(15),
    last_name VARCHAR(15),
    email VARCHAR(30)
        CHECK (email ~ '.+@.+\..+')
);