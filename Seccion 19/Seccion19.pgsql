/* Seccion 19 - Proyecto final*/


/*Creacion de tablas*/

CREATE TABLE libros (
    id_libro SERIAL PRIMARY KEY,
    titulo VARCHAR(150) NOT NULL,
    anio_publicacion INT CHECK (anio_publicacion > 1400),
    disponible BOOLEAN DEFAULT TRUE
);

CREATE TABLE prestamos (
    id_prestamo SERIAL PRIMARY KEY,
    id_libro INT REFERENCES libros(id_libro),
    nombre_usuario VARCHAR(100) NOT NULL,
    fecha_prestamo DATE DEFAULT CURRENT_DATE,
    fecha_devolucion DATE
);


/*Aplicacion de restricciones*/

ALTER TABLE prestamos
ADD CONSTRAINT chk_fecha_devolucion_valida CHECK (
    fecha_devolucion IS NULL OR fecha_devolucion >= fecha_prestamo
);

ALTER TABLE libros
ADD CONSTRAINT chk_titulo_largo CHECK (char_length(titulo) >= 3);


/*Creacion de vistas*/

CREATE VIEW vista_prestamos_activos AS
SELECT 
    p.id_prestamo,
    l.titulo,
    p.nombre_usuario,
    p.fecha_prestamo
FROM prestamos p
JOIN libros l ON p.id_libro = l.id_libro
WHERE p.fecha_devolucion IS NULL;


/*Creacion de secuencias*/

CREATE SEQUENCE codigo_libro_seq START 1000;

SELECT nextval('codigo_libro_seq');


/*Insertar datos en tabla*/

INSERT INTO libros (titulo, anio_publicacion) VALUES
('El Quijote', 1605),
('Cien Anios de Soledad', 1967),
('Don Juan Tenorio', 1844);

INSERT INTO prestamos (id_libro, nombre_usuario) VALUES
(1, 'Carlos Ramirez'),
(2, 'Ana Gomez');


/*Creacion de indices*/

CREATE INDEX idx_libros_titulo ON libros(titulo);
CREATE INDEX idx_prestamos_usuario ON prestamos(nombre_usuario);


/*Consultas a las tablas*/

SELECT * FROM libros;

SELECT * FROM vista_prestamos_activos;

INSERT INTO libros (titulo, anio_publicacion) VALUES ('El', 2020);

INSERT INTO prestamos (id_libro, nombre_usuario) VALUES (3, 'Luis Perez');

SELECT * FROM prestamos WHERE nombre_usuario = 'Luis Perez';


/*Sintaxis Estándar ANSI SQL*/

/*Cross join*/
SELECT last_name, department_name
FROM employees CROSS JOIN departments;

/*Natural join*/
SELECT employee_id, last_name, department_name
FROM employees NATURAL JOIN departments;

/*Join on*/
SELECT e.employee_id, e.last_name, e.salary, j.grade_level
FROM employees e JOIN job_grades j
ON (e.salary BETWEEN j.lowest_sal AND j.highest_sal);

/*Join using*/
SELECT employee_id, last_name, department_name
FROM employees JOIN departments
USING (department_id);

/*Join on*/
SELECT e.employee_id, e.last_name, d.department_id,
d.location_id
FROM employees e JOIN departments d
ON (e.department_id = d.department_id);

/*•Right Outer Join*/
SELECT e.employee_id, e.last_name, e.department_id,
d.department_name
FROM employees e RIGHT OUTER JOIN departments d
ON (e.department_id = d.department_id);

/*Left Outer Join*/
SELECT e.employee_id, e.last_name, e.department_id,
d.department_name
FROM employees e LEFT OUTER JOIN departments d
ON (e.department_id = d.department_id);

/*Full Outer Join*/
SELECT e.employee_id, e.last_name, e.department_id,
d.department_name
FROM employees e FULL OUTER JOIN departments d
ON (e.department_id = d.department_id);