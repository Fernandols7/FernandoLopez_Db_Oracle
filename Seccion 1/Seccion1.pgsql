CREATE TABLE "employees" (
    "employee_id" SERIAL PRIMARY KEY,
    "first_name" VARCHAR(20),
    "last_name" VARCHAR(25) NOT NULL,
    "email" VARCHAR(25) NOT NULL UNIQUE,
    "phone_number" VARCHAR(20),
    "hire_date" DATE NOT NULL,
    "job_id" VARCHAR(10) NOT NULL,
    "salary" NUMERIC(8, 2) CHECK (salary > 0),
    "commission_pct" NUMERIC(2, 2),
    "manager_id" INTEGER,
    "department_id" INTEGER,
    "bonus" VARCHAR(5)
);


ALTER TABLE employees
ALTER COLUMN email TYPE VARCHAR(50);  -- O cualquier longitud que necesites



INSERT INTO employees(employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, commission_pct, manager_id, department_id, bonus)
VALUES 
(100, 'Steven', 'King', 'SKING', '515.123.4567', TO_DATE('1987-06-17', 'YYYY-MM-DD'), 'AD_PRES', 24000, NULL, NULL, 90, NULL),
(101, 'Neena', 'Kochhar', 'NKOCHHAR', '515.123.4568', TO_DATE('1989-09-21', 'YYYY-MM-DD'), 'AD_VP', 17000, NULL, 100, 90, NULL),
(102, 'Lex', 'De Haan', 'LDEHAAN', '515.123.4569', TO_DATE('1993-01-13', 'YYYY-MM-DD'), 'AD_VP', 17000, NULL, 100, 90, NULL),
(200, 'Jennifer', 'Whalen', 'JWHALEN', '515.123.4444', TO_DATE('1987-09-17', 'YYYY-MM-DD'), 'AD_ASST', 4400, NULL, 101, 10, NULL),
(205, 'Shelley', 'Higgins', 'SHIGGINS', '515.123.8080', TO_DATE('1994-06-07', 'YYYY-MM-DD'), 'AC_MGR', 12000, NULL, 101, 110, NULL),
(206, 'William', 'Gietz', 'WGIETZ', '515.123.8181', TO_DATE('1994-06-07', 'YYYY-MM-DD'), 'AC_ACCOUNT', 8300, NULL, 205, 110, NULL),
(149, 'Eleni', 'Zlotkey', 'EZLOTKEY', '011.44.1344.429018', TO_DATE('2000-01-29', 'YYYY-MM-DD'), 'SA_MAN', 10500, 0.2, 100, 80, '1500'),
(174, 'Ellen', 'Abel', 'EABEL', '011.44.1644.429267', TO_DATE('1996-05-11', 'YYYY-MM-DD'), 'SA_REP', 11000, 0.3, 149, 80, '1700'),
(176, 'Jonathon', 'Taylor', 'JTAYLOR', '011.44.1644.429265', TO_DATE('1998-03-24', 'YYYY-MM-DD'), 'SA_REP', 8600, 0.2, 149, 80, '1250'),
(178, 'Kimberely', 'Grant', 'KGRANT', '011.44.1644.429263', TO_DATE('1999-05-24', 'YYYY-MM-DD'), 'SA_REP', 7000, 0.15, 149, NULL, NULL),
(124, 'Kevin', 'Mourgos', 'KMOURGOS', '650.123.5234', TO_DATE('1999-11-16', 'YYYY-MM-DD'), 'ST_MAN', 5800, NULL, 100, 50, NULL),
(141, 'Trenna', 'Rajs', 'TRAJS', '650.121.8009', TO_DATE('1995-10-17', 'YYYY-MM-DD'), 'ST_CLERK', 3500, NULL, 124, 50, NULL),
(142, 'Curtis', 'Davies', 'CDAVIES', '650.121.2994', TO_DATE('1997-01-29', 'YYYY-MM-DD'), 'ST_CLERK', 3100, NULL, 124, 50, NULL),
(143, 'Randall', 'Matos', 'RMATOS', '650.121.2874', TO_DATE('1998-03-15', 'YYYY-MM-DD'), 'ST_CLERK', 2600, NULL, 124, 50, NULL),
(144, 'Peter', 'Vargas', 'PVARGAS', '650.121.2004', TO_DATE('1998-07-09', 'YYYY-MM-DD'), 'ST_CLERK', 2500, NULL, 124, 50, NULL),
(103, 'Alexander', 'Hunold', 'AHUNOLD', '590.423.4567', TO_DATE('1990-01-03', 'YYYY-MM-DD'), 'IT_PROG', 9000, NULL, 102, 60, NULL),
(104, 'Bruce', 'Ernst', 'BERNST', '590.423.4568', TO_DATE('1991-05-21', 'YYYY-MM-DD'), 'IT_PROG', 6000, NULL, 103, 60, NULL),
(107, 'Diana', 'Lorentz', 'DLORENTZ', '590.423.5567', TO_DATE('1999-02-07', 'YYYY-MM-DD'), 'IT_PROG', 4200, NULL, 103, 60, NULL),
(201, 'Michael', 'Hartstein', 'MHARTSTE', '515.123.5555', TO_DATE('1996-02-17', 'YYYY-MM-DD'), 'MK_MAN', 13000, NULL, 100, 20, NULL),
(202, 'Pat', 'Fay', 'PFAY', '603.123.6666', TO_DATE('1997-08-17', 'YYYY-MM-DD'), 'MK_REP', 6000, NULL, 201, 20, NULL);



SELECT * FROM employees;

SELECT first_name, last_name, job_id
FROM employees
WHERE job_id = 'SA_REP';


CREATE TABLE wf_countries (
    country_id INT PRIMARY KEY, 
    region_id INT NOT NULL, 
    country_name VARCHAR(70) NOT NULL, 
    country_translated_name VARCHAR(40), 
    location VARCHAR(90), 
    capitol VARCHAR(50), 
    area BIGINT, 
    coastline INT, 
    lowest_elevation INT, 
    lowest_elev_name VARCHAR(70), 
    highest_elevation INT, 
    highest_elev_name VARCHAR(50), 
    date_of_independence VARCHAR(30), 
    national_holiday_name VARCHAR(200), 
    national_holiday_date VARCHAR(30), 
    population BIGINT, 
    population_growth_rate VARCHAR(10), 
    life_expect_at_birth NUMERIC(6, 2), 
    median_age NUMERIC(6, 2), 
    airports INT, 
    climate TEXT, 
    fips_id CHAR(2), 
    internet_extension VARCHAR(3), 
    flag BYTEA, 
    currency_code VARCHAR(7) NOT NULL
);

INSERT INTO wf_countries (
    country_id, region_id, country_name, country_translated_name, location, capitol, area, coastline,
    lowest_elevation, lowest_elev_name, highest_elevation, highest_elev_name, date_of_independence,
    national_holiday_name, national_holiday_date, population, population_growth_rate, life_expect_at_birth,
    median_age, airports, climate, fips_id, internet_extension, flag, currency_code
) VALUES
(1, 1, 'Argentina', 'Argentina', 'Southern South America', 'Buenos Aires', 2780400, 4980, -105, 'Valdes Peninsula', 6960, 'Aconcagua', '9 July 1816', 'Independence Day', '9 July', 45195777, '1.1%', 76.1, 32.3, 30, 'Temperate', 'AR', '.ar', NULL, 'ARS'),
(2, 1, 'Australia', 'Australia', 'Oceania', 'Canberra', 7692024, 25760, -15, 'Lake Eyre', 2228, 'Mount Kosciuszko', '1 January 1901', 'Australia Day', '26 January', 25499884, '1.3%', 82.0, 38.1, 13, 'Desert', 'AU', '.au', NULL, 'AUD'),
(3, 2, 'Brazil', 'Brasil', 'Eastern South America', 'Brasília', 8515767, 7491, -105, 'Jacuí River', 2995, 'Pico da Neblina', '7 September 1822', 'Independence Day', '7 September', 211049527, '0.8%', 75.5, 30.3, 32, 'Tropical', 'BR', '.br', NULL, 'BRL'),
(4, 3, 'Canada', 'Canada', 'North America', 'Ottawa', 9984670, 202080, -247, 'Great Slave Lake', 5949, 'Mount Logan', '1 July 1867', 'Canada Day', '1 July', 37742154, '1.0%', 81.5, 41.3, 50, 'Temperate', 'CA', '.ca', NULL, 'CAD'),
(5, 4, 'China', 'China', 'Eastern Asia', 'Beijing', 9596961, 14643, -154, 'Tibetan Plateau', 8848, 'Mount Everest', '1 October 1949', 'National Day', '1 October', 1395380000, '0.5%', 76.7, 38.4, 230, 'Continental', 'CN', '.cn', NULL, 'CNY'),
(6, 5, 'France', 'France', 'Western Europe', 'Paris', 551695, 3428, -71, 'Rhône River', 4810, 'Mont Blanc', '14 July 1789', 'Bastille Day', '14 July', 67204681, '0.3%', 82.6, 41.1, 100, 'Temperate', 'FR', '.fr', NULL, 'EUR'),
(7, 6, 'Germany', 'Deutschland', 'Central Europe', 'Berlin', 357022, 2389, -3, 'North Sea', 2962, 'Zugspitze', '3 October 1990', 'German Unity Day', '3 October', 83019200, '0.1%', 81.0, 45.0, 90, 'Temperate', 'DE', '.de', NULL, 'EUR'),
(8, 7, 'India', 'India', 'Southern Asia', 'New Delhi', 3287263, 7517, -2, 'Sundarbans', 8848, 'Kangchenjunga', '15 August 1947', 'Independence Day', '15 August', 1366400000, '1.0%', 68.4, 28.4, 450, 'Tropical', 'IN', '.in', NULL, 'INR'),
(9, 8, 'Japan', '日本', 'Eastern Asia', 'Tokyo', 377975, 2976, -133, 'Hokkaido', 3776, 'Mount Fuji', '3 May 1947', 'Constitution Memorial Day', '3 May', 126860000, '0.2%', 84.0, 48.0, 100, 'Temperate', 'JP', '.jp', NULL, 'JPY'),
(10, 9, 'Mexico', 'México', 'Southern North America', 'Mexico City', 1964375, 9330, -10, 'Laguna Salada', 5640, 'Pico de Orizaba', '16 September 1810', 'Independence Day', '16 September', 128933000, '1.2%', 79.0, 27.1, 100, 'Tropical', 'MX', '.mx', NULL, 'MXN'),
(11, 10, 'United Kingdom', 'United Kingdom', 'Western Europe', 'London', 243610, 12500, -4, 'Cairngorms', 1345, 'Ben Nevis', '1 January 1801', 'St. George''s Day', '23 April', 67886011, '0.3%', 81.2, 40.0, 400, 'Temperate', 'GB', '.uk', NULL, 'GBP'),
(12, 11, 'Russia', 'Россия', 'Eastern Europe', 'Moscow', 17098242, 37653, -28, 'Caspian Sea', 5642, 'Mount Elbrus', '12 June 1990', 'Russia Day', '12 June', 145805947, '0.0%', 72.5, 39.7, 230, 'Continental', 'RU', '.ru', NULL, 'RUB'),
(13, 12, 'South Africa', 'South Africa', 'Southern Africa', 'Pretoria', 1219090, 2798, -1485, 'Badplaas', 3482, 'Table Mountain', '31 May 1910', 'Freedom Day', '27 April', 59308690, '1.0%', 59.4, 26.1, 150, 'Semi-arid', 'ZA', '.za', NULL, 'ZAR'),
(14, 13, 'Italy', 'Italia', 'Southern Europe', 'Rome', 301340, 7500, -2, 'Po River Delta', 4769, 'Gran Paradiso', '17 March 1861', 'Republic Day', '2 June', 60262770, '0.1%', 82.5, 44.6, 75, 'Mediterranean', 'IT', '.it', NULL, 'EUR'),
(15, 14, 'Spain', 'España', 'Southern Europe', 'Madrid', 505992, 4964, 0, 'Mediterranean Sea', 3718, 'Teide', '12 October 1492', 'National Day', '12 October', 46719142, '0.1%', 83.3, 45.0, 80, 'Mediterranean', 'ES', '.es', NULL, 'EUR'),
(16, 15, 'United States', 'United States', 'North America', 'Washington, D.C.', 9833517, 19924, -86, 'Death Valley', 6190, 'Denali', '4 July 1776', 'Independence Day', '4 July', 331002651, '0.7%', 79.8, 38.2, 350, 'Varied', 'US', '.us', NULL, 'USD'),
(17, 16, 'Egypt', 'مصر', 'Northern Africa', 'Cairo', 1002450, 2400, -133, 'Qattara Depression', 2670, 'Mount Catherine', '28 February 1922', 'Revolution Day', '25 January', 91250000, '1.0%', 72.5, 24.7, 70, 'Desert', 'EG', '.eg', NULL, 'EGP'),
(18, 17, 'Sweden', 'Sverige', 'Northern Europe', 'Stockholm', 450295, 3700, 2, 'Lake Väddöviken', 2104, 'Kebnekaise', '6 June 1809', 'National Day', '6 June', 10327589, '0.3%', 82.5, 41.2, 150, 'Temperate', 'SE', '.se', NULL, 'SEK'),
(19, 18, 'Turkey', 'Türkiye', 'Western Asia', 'Ankara', 783356, 7221, -105, 'Cappadocia', 5134, 'Mount Ararat', '29 October 1923', 'Republic Day', '29 October', 83870000, '1.1%', 79.1, 31.0, 120, 'Continental', 'TR', '.tr', NULL, 'TRY'),
(20, 19, 'Saudi Arabia', 'المملكة العربية السعودية', 'Middle East', 'Riyadh', 2149690, 2640, -133, 'Rub'' al Khali', 3025, 'Jabal Sawda', '23 September 1932', 'National Day', '23 September', 34813871, '1.5%', 75.5, 30.7, 60, 'Desert', 'SA', '.sa', NULL, 'SAR');


CREATE TABLE departments (
    department_id INTEGER,
    department_name VARCHAR(30) NOT NULL,
    manager_id INTEGER,
    location_id INTEGER,
    CONSTRAINT dept_id_pk PRIMARY KEY (department_id)
);


INSERT INTO departments (department_id, department_name, manager_id, location_id)
VALUES (10, 'Administration', 200, 1700);

INSERT INTO departments (department_id, department_name, manager_id, location_id)
VALUES (20, 'Marketing', 201, 1800);

INSERT INTO departments (department_id, department_name, manager_id, location_id)
VALUES (50, 'Shipping', 124, 1500);

INSERT INTO departments (department_id, department_name, manager_id, location_id)
VALUES (60, 'IT', 103, 1400);

INSERT INTO departments (department_id, department_name, manager_id, location_id)
VALUES (80, 'Sales', 149, 2500);

INSERT INTO departments (department_id, department_name, manager_id, location_id)
VALUES (90, 'Executive', 100, 1700);

INSERT INTO departments (department_id, department_name, manager_id, location_id)
VALUES (110, 'Accounting', 205, 1700);

INSERT INTO departments (department_id, department_name, manager_id, location_id)
VALUES (190, 'Contracting', NULL, 1700);



SELECT department_name
FROM departments;


SELECT department_name
FROM departments;

SELECT salary
FROM employees
WHERE last_name LIKE
'Smith';


SELECT *
FROM wf_countries;


SELECT country_id, country_name, region_id
FROM wf_countries;


CREATE TABLE locations (
    location_id INTEGER,
    street_address VARCHAR(40),
    postal_code VARCHAR(12),
    city VARCHAR(30) NOT NULL,
    state_province VARCHAR(25),
    country_id CHAR(2),
    CONSTRAINT loc_id_pk PRIMARY KEY (location_id)
);


INSERT INTO locations (location_id, street_address, postal_code, city, state_province, country_id)
VALUES (1800, '460 Bloor St. W.', 'ON M5S 1X8', 'Toronto', 'Ontario', 'CA');

INSERT INTO locations (location_id, street_address, postal_code, city, state_province, country_id)
VALUES (2500, 'Magdalen Centre, The Oxford Science Park', 'OX9 9ZB', 'Oxford', 'Oxford', 'UK');

INSERT INTO locations (location_id, street_address, postal_code, city, state_province, country_id)
VALUES (1400, '2014 Jabberwocky Rd', '26192', 'Southlake', 'Texas', 'US');

INSERT INTO locations (location_id, street_address, postal_code, city, state_province, country_id)
VALUES (1500, '2011 Interiors Blvd', '99236', 'South San Francisco', 'California', 'US');

INSERT INTO locations (location_id, street_address, postal_code, city, state_province, country_id)
VALUES (1700, '2004 Charade Rd', '98199', 'Seattle', 'Washington', 'US');



SELECT location_id, city, state_province
FROM locations;

SELECT last_name, salary,
salary + 300
FROM employees;


SELECT last_name, salary,
12*salary +100
FROM employees;

SELECT last_name, salary,
12*(salary +100)
FROM employees;


SELECT last_name, job_id, salary, commission_pct,
salary*commission_pct
FROM employees;


SELECT last_name AS name,
commission_pct AS comm
FROM employees;


SELECT last_name "Name",
salary*12 "Annual Salary"
FROM employees;