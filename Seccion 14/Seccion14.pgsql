/*Seccion 14 - Restricciones

Creación de Restricciones*/

CREATE TABLE clients (
  client_number NUMERIC(4) CONSTRAINT clients_client_num_pk PRIMARY KEY,
  first_name    VARCHAR(14),
  last_name     VARCHAR(13)
);


CREATE TABLE clients (
  client_number NUMERIC(4) CONSTRAINT clients_client_num_pk PRIMARY KEY,
  last_name     VARCHAR(13) CONSTRAINT clients_last_name_nn NOT NULL,
  email         VARCHAR(80) CONSTRAINT clients_email_uk UNIQUE
);


/*Restricción de Nomenclatura*/

CREATE TABLE clients (
  client_number NUMERIC(4) CONSTRAINT clients_client_num_pk PRIMARY KEY,
  last_name     VARCHAR(13) NOT NULL,
  email         VARCHAR(80)
);

/*Restricciones en el Nivel de Tabla*/

CREATE TABLE clients (
  client_number NUMERIC(6) NOT NULL,
  first_name    VARCHAR(20),
  last_name     VARCHAR(20),
  phone         VARCHAR(20),
  email         VARCHAR(10) NOT NULL,
  CONSTRAINT clients_phone_email_uk UNIQUE (email, phone)
);


/*Restricciones PRIMARY KEY*/

CREATE TABLE clients (
  client_number NUMERIC(4) CONSTRAINT clients_client_num_pk PRIMARY KEY,
  first_name    VARCHAR(14),
  last_name     VARCHAR(13)
);


CREATE TABLE clients (
  client_number NUMERIC(4),
  first_name    VARCHAR(14),
  last_name     VARCHAR(13),
  CONSTRAINT clients_client_num_pk PRIMARY KEY (client_number)
);


/*FOREIGN KEY (INTEGRIDAD REFERENCIAL) Restricciones*/

CREATE TABLE copy_employees (
  employee_id   INTEGER CONSTRAINT copy_emp_pk PRIMARY KEY,
  first_name    VARCHAR(20),
  last_name     VARCHAR(25),
  department_id SMALLINT CONSTRAINT c_emps_dept_id_fk
                REFERENCES departments(department_id),
  email         VARCHAR(25)
);


/*ON DELETE CASCADE*/


ALTER TABLE copy_departments
ADD CONSTRAINT copy_dept_pk PRIMARY KEY (department_id);


CREATE TABLE copy_employees (
    employee_id INTEGER PRIMARY KEY,
    first_name VARCHAR(20),
    last_name VARCHAR(25),
    department_id INTEGER,
    email VARCHAR(25),
    CONSTRAINT cdept_dept_id_fk FOREIGN KEY (department_id)
        REFERENCES copy_departments(department_id)
);


CREATE TABLE copy_employees (
    employee_id INTEGER CONSTRAINT copy_emp_pk PRIMARY KEY,
    first_name VARCHAR(20),
    last_name VARCHAR(25),
    department_id INTEGER,
    email VARCHAR(25),
    CONSTRAINT cdept_dept_id_fk FOREIGN KEY (department_id)
        REFERENCES copy_departments(department_id)
        ON DELETE CASCADE
);


/*ON DELETE SET NULL*/

CREATE TABLE copy_employees (
    employee_id INTEGER CONSTRAINT copy_emp_pk PRIMARY KEY,
    first_name VARCHAR(20),
    last_name VARCHAR(25),
    department_id INTEGER,
    email VARCHAR(25),
    CONSTRAINT cdept_dept_id_fk FOREIGN KEY (department_id)
        REFERENCES copy_departments(department_id)
        ON DELETE SET NULL
);


/*CHECK CONSTRAINTS - Equivalente en PostgreSQL*/

CREATE TABLE copy_job_history (
    employee_id INTEGER,
    start_date DATE,
    end_date DATE,
    job_id VARCHAR(10),
    department_id INTEGER,
    CONSTRAINT cjhist_emp_id_st_date_pk PRIMARY KEY (employee_id, start_date),
    CONSTRAINT cjhist_end_ck CHECK (end_date > start_date)
);


/*Sentencia ALTER*/

ALTER TABLE employees
ADD CONSTRAINT emp_id_pk PRIMARY KEY (employee_id);


ALTER TABLE employees
ADD CONSTRAINT emp_dept_fk FOREIGN KEY (department_id)
REFERENCES departments (department_id) ON DELETE CASCADE;


ALTER TABLE employees
ALTER COLUMN email SET NOT NULL;


/*Borrado de Restricciones*/

ALTER TABLE copy_departments
DROP CONSTRAINT copy_dept_pk CASCADE;


/*Visualizacion de restricciones*/

SELECT
  con.conname AS constraint_name,
  tbl.relname AS table_name,
  CASE con.contype
    WHEN 'p' THEN 'PRIMARY KEY'
    WHEN 'f' THEN 'FOREIGN KEY'
    WHEN 'u' THEN 'UNIQUE'
    WHEN 'c' THEN 'CHECK'
    ELSE con.contype
  END AS constraint_type,
  CASE con.convalidated
    WHEN true THEN 'ENABLED'
    ELSE 'DISABLED'
  END AS status
FROM pg_constraint con
JOIN pg_class tbl ON con.conrelid = tbl.oid
JOIN pg_namespace nsp ON tbl.relnamespace = nsp.oid
WHERE tbl.relname = 'copy_employees'
  AND nsp.nspname = 'public';