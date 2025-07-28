/*Garantía de Resultados de Consultas de Calidad*/

SELECT table_name
FROM information_schema.tables
WHERE table_schema = 'public'
  AND table_type = 'BASE TABLE'
  AND LEFT(table_name, 2) = 'jo';


SELECT 
  LEFT(first_name, 1) || ' ' || last_name AS nombre_formateado
FROM 
  employees;
  
  
  SELECT 
  first_name || ' ' || last_name || ' - ' || email AS empleado_info
FROM 
  employees
WHERE 
  email LIKE '%IN%';


SELECT 
  MIN(last_name) AS First_Last_Name,
  MAX(last_name) AS Last_Last_Name
FROM 
  employees;


SELECT 
  TO_CHAR(salary / 4, '$9999.99') AS Salario_semanal
FROM 
  employees
WHERE 
  salary / 4 BETWEEN 700 AND 3000;


SELECT 
  e.first_name || ' ' || e.last_name AS empleado,
  j.job_title AS Puesto
FROM 
  employees e
JOIN 
  jobs j ON e.job_id = j.job_id
ORDER BY 
  j.job_title;


SELECT 
  j.job_title,
  j.min_salary || ' - ' || j.max_salary AS rango_salarial,
  e.salary AS salario_empleado
FROM 
  employees e
JOIN 
  jobs j ON e.job_id = j.job_id
ORDER BY 
  j.job_title;


SELECT 
  LEFT(e.first_name, 1) || ' ' || e.last_name AS empleado,
  d.department_name AS departamento
FROM 
  employees e
JOIN 
  departments d ON e.department_id = d.department_id
ORDER BY 
  d.department_name;


SELECT 
  LEFT(e.first_name, 1) || ' ' || e.last_name AS empleado,
  d.department_name AS departamento
FROM 
  employees e
JOIN 
  departments d ON e.department_id = d.department_id
ORDER BY 
  d.department_name;


SELECT last_name,
  CASE 
    WHEN manager_id IS NULL THEN 'nobody'
    ELSE 'somebody'
  END AS tiene_jefe
FROM 
  employees;


SELECT 
  SUBSTRING(first_name, 1, 1) || ' ' || last_name AS "Employee Name",
  salary AS "Salary",
  CASE 
    WHEN commission_pct IS NULL THEN 'No'
    ELSE 'Yes'
  END AS "Commission"
FROM 
  employees;


SELECT 
  e.last_name,
  d.department_name,
  l.city,
  l.state_province
FROM 
  departments d
LEFT JOIN 
  employees e ON d.department_id = e.department_id
LEFT JOIN 
  locations l ON d.location_id = l.location_id
ORDER BY 
   e.last_name;


SELECT
  first_name,
  last_name,
  COALESCE(
    commission_pct::text,
    manager_id::text,
    '-1'
  ) AS comision_o_jefe_o_minus1
FROM
  employees;


SELECT
  e.last_name,
  e.salary,
  jg.grade_level
FROM
  employees e
JOIN
  job_grades jg ON e.salary BETWEEN jg.lowest_sal AND jg.highest_sal
WHERE
  e.department_id > 50
ORDER BY
  e.salary;


SELECT
  e.last_name,
  d.department_name
FROM
  employees e
FULL OUTER JOIN
  departments d ON e.department_id = d.department_id
ORDER BY
  d.department_name;


SELECT
  MIN(hire_date) AS primera_fecha_contratacion,
  MAX(hire_date) AS ultima_fecha_contratacion,
  COUNT(*) AS numero_empleados
FROM
  employees;


SELECT
  d.department_name,
  SUM(e.salary) AS costo_total
FROM
  employees e
JOIN
  departments d ON e.department_id = d.department_id
GROUP BY
  d.department_name
HAVING
  SUM(e.salary) BETWEEN 15000 AND 31000
ORDER BY
  costo_total;


SELECT
  departments.department_name,
  departments.manager_id,
  employees.last_name AS manager_name,
  ROUND(AVG(empleados_por_departamento.salary), 2) AS AVG_DEPT_SALARY
FROM
  departments
LEFT JOIN employees ON departments.manager_id = employees.employee_id
LEFT JOIN employees AS empleados_por_departamento ON departments.department_id = empleados_por_departamento.department_id
GROUP BY
  departments.department_name,
  departments.manager_id,
  employees.last_name
ORDER BY
  AVG_DEPT_SALARY;


SELECT
  ROUND(MAX(salario_medio)) AS highest_avg_salary_for_depts
FROM (
  SELECT
    AVG(salary) AS salario_medio
  FROM
    employees
  GROUP BY
    department_id
) AS promedios_por_departamento;


SELECT
  departments.department_name AS nombre_departamento,
  SUM(employees.salary) AS costo_mensual
FROM
  employees
JOIN
  departments ON employees.department_id = departments.department_id
GROUP BY
  departments.department_name;


SELECT
  departments.department_name AS nombre_departamento,
  employees.job_id,
  SUM(employees.salary) AS costo_mensual
FROM
  employees
JOIN
  departments ON employees.department_id = departments.department_id
GROUP BY
  GROUPING SETS (
    (departments.department_name, employees.job_id),
    (departments.department_name),
    (employees.job_id),
    () 
)
ORDER BY
  departments.department_name NULLS LAST,
  employees.job_id NULLS LAST;


SELECT
  departments.department_name AS nombre_departamento,
  employees.job_id,
  SUM(employees.salary) AS costo_mensual
FROM
  employees
JOIN
  departments ON employees.department_id = departments.department_id
GROUP BY
  CUBE (departments.department_name, employees.job_id)
ORDER BY
  departments.department_name NULLS LAST,
  employees.job_id NULLS LAST;


SELECT
  COALESCE(departments.department_name, 'TOTAL DEPARTAMENTO') AS nombre_departamento,
  COALESCE(employees.job_id, 'TOTAL JOB_ID') AS job_id,
  SUM(employees.salary) AS costo_mensual,
  GROUPING(departments.department_name) AS es_subtotal_departamento,
  GROUPING(employees.job_id) AS es_subtotal_job_id
FROM
  employees
JOIN
  departments ON employees.department_id = departments.department_id
GROUP BY
  CUBE (departments.department_name, employees.job_id)
ORDER BY
  department_name,
  job_id;


SELECT
  departments.department_name,
  employees.job_id,
  locations.city,
  SUM(employees.salary) AS costo_mensual
FROM
  employees
JOIN
  departments ON employees.department_id = departments.department_id
JOIN
  locations ON departments.location_id = locations.location_id
GROUP BY
  GROUPING SETS (
    (departments.department_name, employees.job_id),
    (locations.city)  
  )
ORDER BY
  departments.department_name NULLS LAST,
  employees.job_id NULLS LAST,
  locations.city NULLS LAST;


SELECT
  SUBSTR(employees.first_name, 1, 1) || '. ' || employees.last_name AS Empleado,
  employees.salary AS Salario,
  departments.department_name AS Departamento
FROM
  employees
JOIN
  departments ON employees.department_id = departments.department_id
WHERE
  employees.salary > (
    SELECT AVG(salary)
    FROM employees AS emp_promedio
    WHERE emp_promedio.department_id = employees.department_id
  )
ORDER BY
  departments.department_name,
  employees.salary DESC;