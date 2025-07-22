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



INSERT INTO "employees" ("first_name", "last_name", "email", "phone_number", "hire_date", "job_id", "salary", "commission_pct", "manager_id", "department_id", "bonus")
VALUES
('John', 'Doe', 'johndoe@example.com', '555-1234', '2020-01-15', 'IT_PROG', 60000, 0.05, 101, 10, '500'),
('Jane', 'Smith', 'janesmith@example.com', '555-5678', '2019-02-20', 'HR_REP', 55000, 0.04, 102, 20, '450'),
('Michael', 'Johnson', 'mjohnson@example.com', '555-8765', '2021-03-10', 'FI_ACCOUNT', 70000, 0.06, 103, 30, '600'),
('Emily', 'Davis', 'emilydavis@example.com', '555-4321', '2018-05-25', 'IT_PROG', 65000, 0.05, 104, 40, '550'),
('Chris', 'Taylor', 'chris.taylor@example.com', '555-1122', '2022-07-18', 'MK_REP', 52000, 0.04, 105, 50, '500'),
('Lisa', 'Moore', 'lisa.moore@example.com', '555-3344', '2017-11-03', 'AD_ASST', 45000, 0.03, 106, 60, '480'),
('David', 'Wilson', 'david.wilson@example.com', '555-2233', '2020-10-12', 'AC_ACCOUNT', 72000, 0.07, 107, 10, '700'),
('Karen', 'Brown', 'karen.brown@example.com', '555-9988', '2021-09-28', 'FI_ACCOUNT', 68000, 0.05, 108, 20, '550'),
('James', 'Garcia', 'james.garcia@example.com', '555-6677', '2019-06-15', 'AD_ASST', 46000, 0.04, 109, 30, '500'),
('Olivia', 'Martinez', 'olivia.martinez@example.com', '555-8899', '2021-01-09', 'IT_PROG', 62000, 0.05, 110, 40, '520'),
('Ethan', 'Miller', 'ethan.miller@example.com', '555-5566', '2022-04-07', 'HR_REP', 53000, 0.04, 111, 50, '480'),
('Sophia', 'Hernandez', 'sophia.hernandez@example.com', '555-7788', '2018-08-25', 'FI_ACCOUNT', 70000, 0.06, 112, 60, '600'),
('Daniel', 'Lee', 'daniel.lee@example.com', '555-4455', '2020-02-14', 'MK_REP', 51000, 0.04, 113, 10, '460'),
('Charlotte', 'Lopez', 'charlotte.lopez@example.com', '555-2234', '2019-04-30', 'AC_ACCOUNT', 73000, 0.07, 114, 20, '700'),
('Amelia', 'Walker', 'amelia.walker@example.com', '555-8891', '2022-03-22', 'AD_ASST', 45500, 0.03, 115, 30, '490'),
('William', 'Hall', 'william.hall@example.com', '555-1123', '2020-08-19', 'IT_PROG', 61000, 0.05, 116, 40, '540'),
('Isabella', 'Allen', 'isabella.allen@example.com', '555-6655', '2021-06-05', 'HR_REP', 54500, 0.04, 117, 50, '510'),
('Lucas', 'Young', 'lucas.young@example.com', '555-3345', '2021-12-01', 'FI_ACCOUNT', 75000, 0.07, 118, 60, '720'),
('Mia', 'King', 'mia.king@example.com', '555-7789', '2019-09-30', 'MK_REP', 49500, 0.04, 119, 10, '480'),
('Benjamin', 'Scott', 'benjamin.scott@example.com', '555-2236', '2020-07-12', 'AC_ACCOUNT', 76000, 0.08, 120, 20, '750'),
('Charlotte', 'Green', 'charlotte.green@example.com', '555-3347', '2021-02-18', 'AD_ASST', 47000, 0.03, 121, 30, '500'),
('Henry', 'Adams', 'henry.adams@example.com', '555-5567', '2020-03-03', 'IT_PROG', 63000, 0.05, 122, 40, '560'),
('Jack', 'Baker', 'jack.baker@example.com', '555-6678', '2022-01-15', 'HR_REP', 54000, 0.04, 123, 50, '490'),
('Zoe', 'Carter', 'zoe.carter@example.com', '555-2234', '2018-10-11', 'FI_ACCOUNT', 69000, 0.06, 124, 60, '650'),
('Matthew', 'Nelson', 'matthew.nelson@example.com', '555-4456', '2019-12-25', 'MK_REP', 51500, 0.04, 125, 10, '470'),
('Liam', 'Perez', 'liam.perez@example.com', '555-2235', '2021-08-20', 'AC_ACCOUNT', 74000, 0.07, 126, 20, '720'),
('Ava', 'Roberts', 'ava.roberts@example.com', '555-5568', '2020-04-05', 'AD_ASST', 46000, 0.03, 127, 30, '480'),
('Jacob', 'Murphy', 'jacob.murphy@example.com', '555-6679', '2021-11-12', 'IT_PROG', 64000, 0.05, 128, 40, '550'),
('Madison', 'James', 'madison.james@example.com', '555-7781', '2022-09-01', 'HR_REP', 53000, 0.04, 129, 50, '470'),
('Samuel', 'Harris', 'samuel.harris@example.com', '555-2237', '2020-01-22', 'FI_ACCOUNT', 71000, 0.07, 130, 60, '690'),
('Ella', 'Clark', 'ella.clark@example.com', '555-3348', '2021-05-18', 'MK_REP', 50000, 0.04, 131, 10, '490'),
('David', 'Rodriguez', 'david.rodriguez@example.com', '555-5569', '2020-09-28', 'AC_ACCOUNT', 75000, 0.07, 132, 20, '710'),
('Sebastian', 'Lewis', 'sebastian.lewis@example.com', '555-6670', '2022-03-15', 'AD_ASST', 45000, 0.03, 133, 30, '460'),
('Henry', 'Walker', 'henry.walker@example.com', '555-2238', '2021-04-22', 'IT_PROG', 62000, 0.05, 134, 40, '530'),
('Ella', 'Allen', 'ella.allen@example.com', '555-3349', '2022-10-10', 'HR_REP', 51000, 0.04, 135, 50, '480'),
('Mason', 'King', 'mason.king@example.com', '555-4457', '2019-07-07', 'FI_ACCOUNT', 68000, 0.06, 136, 60, '600'),
('Scarlett', 'Young', 'scarlett.young@example.com', '555-5560', '2021-08-09', 'MK_REP', 52500, 0.04, 137, 10, '500'),
('Wyatt', 'White', 'wyatt.white@example.com', '555-6671', '2020-11-10', 'AC_ACCOUNT', 76000, 0.08, 138, 20, '740'),
('Grayson', 'Scott', 'grayson.scott@example.com', '555-7782', '2021-03-05', 'AD_ASST', 47500, 0.03, 139, 30, '490'),
('Jack', 'Taylor', 'jack.taylor@example.com', '555-2239', '2022-05-12', 'IT_PROG', 65000, 0.05, 140, 40, '560'),
('Maya', 'Moore', 'maya.moore@example.com', '555-8893', '2019-08-30', 'HR_REP', 54000, 0.04, 141, 50, '500'),
('Lily', 'Davis', 'lily.davis@example.com', '555-3340', '2020-12-15', 'FI_ACCOUNT', 70000, 0.07, 142, 60, '650'),
('Samuel', 'Wilson', 'samuel.wilson@example.com', '555-5561', '2021-09-18', 'MK_REP', 51000, 0.04, 143, 10, '480'),
('Benjamin', 'White', 'benjamin.white@example.com', '555-6672', '2022-01-22', 'AC_ACCOUNT', 74000, 0.07, 144, 20, '720'),
('Zara', 'Hughes', 'zara.hughes@example.com', '555-7783', '2020-06-30', 'AD_ASST', 48000, 0.03, 145, 30, '470'),
('Ryan', 'Lewis', 'ryan.lewis@example.com', '555-2230', '2021-04-10', 'IT_PROG', 63000, 0.05, 146, 40, '550'),
('Victoria', 'Martinez', 'victoria.martinez@example.com', '555-3342', '2022-07-28', 'HR_REP', 52000, 0.04, 147, 50, '490'),
('Hunter', 'Thompson', 'hunter.thompson@example.com', '555-5562', '2020-11-20', 'FI_ACCOUNT', 69000, 0.06, 148, 60, '640'),
('Daniel', 'Gonzalez', 'daniel.gonzalez@example.com', '555-6673', '2019-10-19', 'MK_REP', 51500, 0.04, 149, 10, '500');



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


INSERT INTO departments (department_id, department_name, manager_id, location_id) VALUES
(1, 'Human Resources', 101, 1001),
(2, 'Sales', 102, 1002),
(3, 'Marketing', 103, 1003),
(4, 'Finance', 104, 1004),
(5, 'IT', 105, 1005),
(6, 'Operations', 106, 1006),
(7, 'Legal', 107, 1007),
(8, 'Customer Service', 108, 1008),
(9, 'Product Development', 109, 1009),
(10, 'R&D', 110, 1010);


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


INSERT INTO locations (location_id, street_address, postal_code, city, state_province, country_id) VALUES
(1, '1234 Elm St', '12345', 'New York', 'New York', 'US'),
(2, '5678 Oak Rd', '67890', 'Los Angeles', 'California', 'US'),
(3, '9876 Pine Ave', '54321', 'Chicago', 'Illinois', 'US'),
(4, '1357 Maple Blvd', '11223', 'Houston', 'Texas', 'US'),
(5, '2468 Birch Ln', '99887', 'Phoenix', 'Arizona', 'US'),
(6, '1920 Cedar St', '44556', 'Dallas', 'Texas', 'US'),
(7, '3690 Willow Dr', '33445', 'San Francisco', 'California', 'US'),
(8, '4567 Redwood Way', '22334', 'Seattle', 'Washington', 'US'),
(9, '6543 Fir Ave', '66778', 'Boston', 'Massachusetts', 'US'),
(10, '7890 Chestnut St', '55667', 'Denver', 'Colorado', 'US'),
(11, '3210 Walnut St', '77555', 'Toronto', 'Ontario', 'CA'),
(12, '4321 Pinecrest Rd', '66888', 'Vancouver', 'British Columbia', 'CA'),
(13, '5432 Birchwood Ln', '66777', 'Montreal', 'Quebec', 'CA'),
(14, '6543 Oakmont Dr', '44333', 'Calgary', 'Alberta', 'CA'),
(15, '7654 Cedar Point', '11222', 'Ottawa', 'Ontario', 'CA'),
(16, '8765 Maple Hill', '66766', 'London', 'England', 'GB'),
(17, '9876 Elm Road', '55444', 'Manchester', 'England', 'GB'),
(18, '1357 Ash St', '11333', 'Edinburgh', 'Scotland', 'GB'),
(19, '2468 Cedar Ave', '33455', 'Sydney', 'New South Wales', 'AU'),
(20, '3690 Willow Rd', '66789', 'Melbourne', 'Victoria', 'AU');


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



