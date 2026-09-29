-- CREATE TABLE

CREATE TABLE employee (
    emp_id NUMBER,
    emp_name VARCHAR2(30),
    salary NUMBER,
    dept_id NUMBER
);

-- INSERT VALUES

INSERT INTO employee VALUES (1, 'Priya', 30000, 101);
INSERT INTO employee VALUES (2, 'Arun', 40000, 102);
INSERT INTO employee VALUES (3, 'Ravi', 50000, 101);
INSERT INTO employee VALUES (4, 'Kumar', 35000, 103);
INSERT INTO employee VALUES (5, 'Anu', 45000, 102);

COMMIT;

-- DISPLAY TABLE

SELECT * FROM employee;


-- 1. COUNT
SELECT COUNT(*) AS total_employees
FROM employee;


-- 2. SUM
SELECT SUM(salary) AS total_salary
FROM employee;


-- 3. AVG
SELECT AVG(salary) AS average_salary
FROM employee;


-- 4. MAX
SELECT MAX(salary) AS highest_salary
FROM employee;


-- 5. MIN
SELECT MIN(salary) AS lowest_salary
FROM employee;


-- 6. ALL AGGREGATE FUNCTIONS TOGETHER

SELECT COUNT(*) AS total_employees,
       SUM(salary) AS total_salary,
       AVG(salary) AS average_salary,
       MAX(salary) AS highest_salary,
       MIN(salary) AS lowest_salary
FROM employee;
