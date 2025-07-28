/*Funciones de Grupo Parte 1*/

select min(salary)
FROM employees;


SELECT MAX(salary)
FROM employees;


SELECT SUM(salary)
FROM employees;


SELECT AVG(salary)
FROM employees;


SELECT COUNT(salary)
FROM employees;


SELECT VARIANCE(salary)
FROM employees;


SELECT STDDEV(salary)
FROM employees;


SELECT MIN(life_expect_at_birth)
AS "Lowest Life Exp"
FROM wf_countries;


SELECT MIN(country_name)
FROM wf_countries;


SELECT MIN(hire_date)
FROM employees;


SELECT MAX(life_expect_at_birth)
AS "Highest Life Exp"
FROM wf_countries;


SELECT MAX(country_name)
FROM wf_countries;


SELECT MAX(hire_date)
FROM employees;


SELECT SUM(area)
FROM wf_countries
WHERE region_id = 29;


SELECT SUM(salary)
FROM employees
WHERE department_id = 90;


SELECT AVG(area)
FROM wf_countries;


SELECT AVG(salary)
FROM employees
WHERE department_id = 90;


SELECT AVG(commission_pct)
FROM employees;


SELECT MAX(salary), MIN(salary), MIN(employee_id)
FROM employees
WHERE department_id = 60;


/*COUNT, DISTINCT, NVL */

SELECT COUNT(job_id)
FROM employees;


SELECT commission_pct
FROM employees;


SELECT COUNT(commission_pct)
FROM employees;


SELECT COUNT(*)
FROM employees
WHERE hire_date < '01-Jan-1996';


SELECT job_id
FROM employees;


SELECT DISTINCT job_id
FROM employees;


SELECT DISTINCT job_id, department_id
FROM employees;


SELECT SUM(salary)
FROM employees
WHERE department_id = 90;


SELECT SUM(DISTINCT salary)
FROM employees
WHERE department_id = 90;


SELECT COUNT (DISTINCT job_id)
FROM employees;


SELECT COUNT (DISTINCT salary)
FROM employees;


/*Creacion de tabla F_CUSTOMERS y f_order_lines, f_promotional_menus, f_regular_menus,
f_food_items, f_staffs, f_orders, f_shifts, f_shift_assignments*/

CREATE TABLE F_CUSTOMERS (
    ID INTEGER,
    FIRST_NAME VARCHAR(25) NOT NULL,
    LAST_NAME VARCHAR(35) NOT NULL,
    ADDRESS VARCHAR(50) NOT NULL,
    CITY VARCHAR(30) NOT NULL,
    STATE VARCHAR(20) NOT NULL,
    ZIP BIGINT NOT NULL,
    PHONE_NUMBER VARCHAR(10) NOT NULL,
    CONSTRAINT F_CSR_ID_PK PRIMARY KEY (ID)
);

CREATE TABLE f_order_lines (
    order_number INTEGER,
    food_item_number INTEGER,
    quantity SMALLINT NOT NULL,
    CONSTRAINT f_ole_pk PRIMARY KEY (order_number, food_item_number)
);

CREATE TABLE f_promotional_menus (
    code VARCHAR(3) PRIMARY KEY,
    name VARCHAR(30) NOT NULL,
    start_date DATE NOT NULL,
    end_date DATE,
    give_away VARCHAR(80)
);

CREATE TABLE f_regular_menus (
    code VARCHAR(3) PRIMARY KEY,
    type VARCHAR(30) NOT NULL,
    hours_served VARCHAR(30) NOT NULL
);

-- Tabla F_FOOD_ITEMS
CREATE TABLE F_FOOD_ITEMS (
    FOOD_ITEM_NUMBER INTEGER PRIMARY KEY,
    DESCRIPTION VARCHAR(100) NOT NULL,
    PRICE NUMERIC(8,2) NOT NULL,
    REGULAR_CODE VARCHAR(3),
    PROMO_CODE VARCHAR(3)
);

-- Tabla F_STAFFS
CREATE TABLE F_STAFFS (
    ID INTEGER PRIMARY KEY,
    FIRST_NAME VARCHAR(25) NOT NULL,
    LAST_NAME VARCHAR(35) NOT NULL,
    BIRTHDATE DATE NOT NULL,
    SALARY NUMERIC(8,2) NOT NULL,
    OVERTIME_RATE NUMERIC(5,2),
    TRAINING VARCHAR(50),
    STAFF_TYPE VARCHAR(20) NOT NULL,
    MANAGER_ID INTEGER,
    MANAGER_BUDGET NUMERIC(8,2),
    MANAGER_TARGET NUMERIC(8,2)
);

-- Tabla F_ORDERS
CREATE TABLE F_ORDERS (
    ORDER_NUMBER INTEGER PRIMARY KEY,
    ORDER_DATE DATE NOT NULL,
    ORDER_TOTAL NUMERIC(8,2),
    CUST_ID INTEGER NOT NULL,
    STAFF_ID INTEGER NOT NULL
);

-- Tabla F_ORDER_LINES
CREATE TABLE F_ORDER_LINES (
    ORDER_NUMBER INTEGER,
    FOOD_ITEM_NUMBER INTEGER,
    QUANTITY SMALLINT NOT NULL,
    PRIMARY KEY (ORDER_NUMBER, FOOD_ITEM_NUMBER)
);

-- Tabla F_SHIFTS
CREATE TABLE F_SHIFTS (
    CODE INTEGER PRIMARY KEY,
    DESCRIPTION VARCHAR(100) NOT NULL
);

-- Tabla F_SHIFT_ASSIGNMENTS
CREATE TABLE F_SHIFT_ASSIGNMENTS (
    CODE INTEGER,
    ID INTEGER,
    SHIFT_ASSIGN_DATE DATE NOT NULL,
    PRIMARY KEY (CODE, ID)
);

/*Insertar datos en las tablas*/

-- f_customers
INSERT INTO f_customers(id, first_name, last_name, address, city, state, zip, phone_number)
VALUES (123, 'Cole', 'Bee', '123 Main Street', 'Orlando', 'FL', 32838, '4075558234');

INSERT INTO f_customers(id, first_name, last_name, address, city, state, zip, phone_number)
VALUES (456, 'Zoe', 'Twee', '1009 Oliver Avenue', 'Boston', 'MA', 12889, '7098675309');

-- f_promotional_menus
INSERT INTO f_promotional_menus(code, name, start_date, end_date, give_away)
VALUES ('100', 'Back to School', DATE '2004-09-01', DATE '2004-09-30', 'ballpen and highlighter');

INSERT INTO f_promotional_menus(code, name, start_date, end_date, give_away)
VALUES ('110', 'Valentines Special', DATE '2004-02-10', DATE '2004-02-15', 'small box of chocolates');

-- f_regular_menus
INSERT INTO f_regular_menus(code, type, hours_served)
VALUES ('10', 'Breakfast', '6-11am');

INSERT INTO f_regular_menus(code, type, hours_served)
VALUES ('20', 'Lunch/Dinner', '11-9pm');

-- f_food_items
INSERT INTO f_food_items(food_item_number, description, price, regular_code, promo_code)
VALUES (90, 'Fries', 1.09, '20', NULL);

INSERT INTO f_food_items(food_item_number, description, price, regular_code, promo_code)
VALUES (93, 'Strawberry Shake', 3.59, NULL, '110');

-- f_staffs
INSERT INTO f_staffs(id, first_name, last_name, birthdate, salary, overtime_rate, training, staff_type, manager_id, manager_budget, manager_target)
VALUES (12, 'Sue', 'Doe', DATE '1980-07-01', 6.75, 10.25, NULL, 'Order Taker', 19, NULL, NULL);

INSERT INTO f_staffs(id, first_name, last_name, birthdate, salary, overtime_rate, training, staff_type, manager_id, manager_budget, manager_target)
VALUES (9, 'Bob', 'Miller', DATE '1979-03-19', 10, NULL, 'Grill', 'Cook', 19, NULL, NULL);

INSERT INTO f_staffs(id, first_name, last_name, birthdate, salary, overtime_rate, training, staff_type, manager_id, manager_budget, manager_target)
VALUES (19, 'Monique', 'Tuttle', DATE '1969-03-30', 60, NULL, NULL, 'Manager', NULL, 50000, 70000);

-- f_orders
INSERT INTO f_orders(order_number, order_date, order_total, cust_id, staff_id)
VALUES (5678, DATE '2002-12-10', 103.02, 123, 12);

-- f_order_lines
INSERT INTO f_order_lines(order_number, food_item_number, quantity)
VALUES (5678, 90, 2);

-- f_shifts
INSERT INTO f_shifts(code, description)
VALUES (1, '8am to 12pm');

INSERT INTO f_shifts(code, description)
VALUES (2, '6pm to 10pm');

-- f_shift_assignments
INSERT INTO f_shift_assignments(code, id, shift_assign_date)
VALUES (1, 12, DATE '2004-05-06');


/*Modificacion de estructura de tablas*/

-- F_FOOD_ITEMS → F_PROMOTIONAL_MENUS
ALTER TABLE F_FOOD_ITEMS
ADD CONSTRAINT F_FIM_PROMO_CODE_FK
FOREIGN KEY (PROMO_CODE)
REFERENCES F_PROMOTIONAL_MENUS (CODE);

-- F_FOOD_ITEMS → F_REGULAR_MENUS
ALTER TABLE F_FOOD_ITEMS
ADD CONSTRAINT F_FIM_REGULAR_CODE_FK
FOREIGN KEY (REGULAR_CODE)
REFERENCES F_REGULAR_MENUS (CODE);

-- F_ORDERS → F_CUSTOMERS
ALTER TABLE F_ORDERS
ADD CONSTRAINT F_ODR_CUST_ID_FK
FOREIGN KEY (CUST_ID)
REFERENCES F_CUSTOMERS (ID);

-- F_ORDERS → F_STAFFS
ALTER TABLE F_ORDERS
ADD CONSTRAINT F_ODR_STAFF_ID_FK
FOREIGN KEY (STAFF_ID)
REFERENCES F_STAFFS (ID);

-- F_ORDER_LINES → F_FOOD_ITEMS
ALTER TABLE F_ORDER_LINES
ADD CONSTRAINT F_OLE_FOOD_ITEM_NUMBER_FK
FOREIGN KEY (FOOD_ITEM_NUMBER)
REFERENCES F_FOOD_ITEMS (FOOD_ITEM_NUMBER);

-- F_ORDER_LINES → F_ORDERS
ALTER TABLE F_ORDER_LINES
ADD CONSTRAINT F_OLE_ORDER_NUMBER_FK
FOREIGN KEY (ORDER_NUMBER)
REFERENCES F_ORDERS (ORDER_NUMBER);

-- F_SHIFT_ASSIGNMENTS → F_SHIFTS
ALTER TABLE F_SHIFT_ASSIGNMENTS
ADD CONSTRAINT F_SAT_CODE_FK
FOREIGN KEY (CODE)
REFERENCES F_SHIFTS (CODE);

-- F_SHIFT_ASSIGNMENTS → F_STAFFS
ALTER TABLE F_SHIFT_ASSIGNMENTS
ADD CONSTRAINT F_SAT_ID_FK
FOREIGN KEY (ID)
REFERENCES F_STAFFS (ID);


/*Funcion NVL (COALESCE en PostgreSQL)*/

SELECT AVG(commission_pct)
FROM employees;


SELECT AVG(COALESCE(commission_pct, 0))
FROM employees;