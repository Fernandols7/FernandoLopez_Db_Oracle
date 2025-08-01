/*Seccion 18 - Transacciones de Base de Datos*/

UPDATE copy_departments
SET manager_id= 101
WHERE department_id = 60; 

SAVEPOINT one;


INSERT INTO copy_departments(department_id, department_name,
manager_id, location_id)
VALUES (130, 'Estate Management', 102, 1500);

UPDATE copy_departments
SET department_id = 140;

ROLLBACK TO SAVEPOINT one;

COMMIT;